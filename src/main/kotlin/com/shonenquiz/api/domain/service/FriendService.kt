package com.shonenquiz.api.domain.service

import com.shonenquiz.api.adapter.out.persistence.entity.FriendshipEntity
import com.shonenquiz.api.adapter.out.persistence.entity.UserEntity
import com.shonenquiz.api.adapter.out.persistence.repository.FriendshipJpaRepository
import com.shonenquiz.api.adapter.out.persistence.repository.GameSessionJpaRepository
import com.shonenquiz.api.adapter.out.persistence.repository.SeasonJpaRepository
import com.shonenquiz.api.adapter.out.persistence.repository.SeasonRankingJpaRepository
import com.shonenquiz.api.adapter.out.persistence.repository.UserJpaRepository
import com.shonenquiz.api.domain.model.*
import com.shonenquiz.api.domain.port.`in`.FriendUseCase
import org.springframework.http.HttpStatus
import org.springframework.stereotype.Service
import org.springframework.web.server.ResponseStatusException
import java.util.UUID

@Service
class FriendService(
    private val userRepo: UserJpaRepository,
    private val friendshipRepo: FriendshipJpaRepository,
    private val sessionRepo: GameSessionJpaRepository,
    private val seasonRepo: SeasonJpaRepository,
    private val rankingRepo: SeasonRankingJpaRepository,
) : FriendUseCase {

    override fun getMyFriendCode(userId: UUID): String =
        userRepo.findById(userId).orElseThrow { ResponseStatusException(HttpStatus.NOT_FOUND) }.friendCode
            ?: throw ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR, "friend_code não gerado")

    override fun searchByFriendCode(code: String, currentUserId: UUID): FriendProfile {
        val target = userRepo.findByFriendCode(code.uppercase())
            ?: throw ResponseStatusException(HttpStatus.NOT_FOUND, "Código não encontrado")
        if (target.id == currentUserId)
            throw ResponseStatusException(HttpStatus.BAD_REQUEST, "Não é possível adicionar a si mesmo")
        val status = friendshipRepo.findBetween(currentUserId, target.id)?.status
        return target.toProfile(status, sessionRepo)
    }

    override fun sendRequest(requesterId: UUID, friendCode: String) {
        val addressee = userRepo.findByFriendCode(friendCode.uppercase())
            ?: throw ResponseStatusException(HttpStatus.NOT_FOUND, "Código não encontrado")
        if (addressee.id == requesterId)
            throw ResponseStatusException(HttpStatus.BAD_REQUEST, "Não é possível adicionar a si mesmo")

        val existing = friendshipRepo.findBetween(requesterId, addressee.id)
        when (existing?.status) {
            "accepted" -> throw ResponseStatusException(HttpStatus.CONFLICT, "Já são amigos")
            "pending"  -> throw ResponseStatusException(HttpStatus.CONFLICT, "Solicitação já enviada")
            "blocked"  -> throw ResponseStatusException(HttpStatus.FORBIDDEN, "Ação não permitida")
            "removed"  -> { existing.status = "pending"; friendshipRepo.save(existing) }
            null -> friendshipRepo.save(FriendshipEntity(requesterId = requesterId, addresseeId = addressee.id))
        }
    }

    override fun acceptRequest(userId: UUID, friendshipId: UUID) {
        val f = friendshipRepo.findById(friendshipId)
            .orElseThrow { ResponseStatusException(HttpStatus.NOT_FOUND) }
        if (f.addresseeId != userId)
            throw ResponseStatusException(HttpStatus.FORBIDDEN)
        if (f.status != "pending")
            throw ResponseStatusException(HttpStatus.CONFLICT, "Solicitação não está pendente")
        f.status = "accepted"
        friendshipRepo.save(f)
    }

    override fun removeFriend(userId: UUID, friendshipId: UUID) {
        val f = friendshipRepo.findById(friendshipId)
            .orElseThrow { ResponseStatusException(HttpStatus.NOT_FOUND) }
        if (f.requesterId != userId && f.addresseeId != userId)
            throw ResponseStatusException(HttpStatus.FORBIDDEN)
        f.status = "removed"
        friendshipRepo.save(f)
    }

    override fun listFriends(userId: UUID): List<FriendSummary> {
        val friendships = friendshipRepo.findAccepted(userId)
        if (friendships.isEmpty()) return emptyList()
        val friendIds = friendships.map { if (it.requesterId == userId) it.addresseeId else it.requesterId }
        val users = userRepo.findAllById(friendIds).associateBy { it.id }
        return friendships.mapNotNull { f ->
            val friendId = if (f.requesterId == userId) f.addresseeId else f.requesterId
            val u = users[friendId] ?: return@mapNotNull null
            FriendSummary(
                friendshipId = f.id,
                userId = u.id,
                username = u.username,
                level = u.level.toInt(),
                league = u.league,
                avatarCatId = u.avatarCatId,
            )
        }
    }

    override fun listPendingRequests(userId: UUID): List<FriendRequest> {
        val pending = friendshipRepo.findPendingReceived(userId)
        if (pending.isEmpty()) return emptyList()
        val users = userRepo.findAllById(pending.map { it.requesterId }).associateBy { it.id }
        return pending.mapNotNull { f ->
            val u = users[f.requesterId] ?: return@mapNotNull null
            FriendRequest(
                friendshipId = f.id,
                requesterId = u.id,
                requesterUsername = u.username,
                requesterLevel = u.level.toInt(),
                requesterLeague = u.league,
                requesterAvatarCatId = u.avatarCatId,
            )
        }
    }

    override fun getFriendProfile(currentUserId: UUID, friendUserId: UUID): FriendProfile {
        val friendship = friendshipRepo.findBetween(currentUserId, friendUserId)
        if (friendship?.status == "removed" || friendship?.status == "blocked")
            throw ResponseStatusException(HttpStatus.FORBIDDEN, "Perfil não disponível")
        val target = userRepo.findById(friendUserId)
            .orElseThrow { ResponseStatusException(HttpStatus.NOT_FOUND) }
        return target.toProfile(friendship?.status, sessionRepo)
    }

    override fun getFriendRanking(userId: UUID): List<RankingEntry> {
        val season = seasonRepo.findByActiveTrue() ?: return emptyList()
        val friendIds = friendshipRepo.findAccepted(userId)
            .map { if (it.requesterId == userId) it.addresseeId else it.requesterId }
            .toMutableList()
            .also { it.add(userId) }  // inclui o próprio usuário
        if (friendIds.isEmpty()) return emptyList()

        val scores = rankingRepo.findBySeasonIdAndUserIdIn(season.id, friendIds)
            .sortedByDescending { it.score }
        val users = userRepo.findAllById(scores.map { it.userId }).associateBy { it.id }

        return scores.mapIndexed { idx, r ->
            val u = users[r.userId] ?: return@mapIndexed null
            RankingEntry(
                position = idx + 1,
                userId = r.userId,
                username = u.username,
                level = u.level.toInt(),
                league = u.league,
                score = r.score,
                isCurrentUser = r.userId == userId,
            )
        }.filterNotNull()
    }

    // ── helpers ──────────────────────────────────────────────────────────────

    private fun UserEntity.toProfile(friendshipStatus: String?, sessionRepo: GameSessionJpaRepository): FriendProfile {
        val sessions = sessionRepo.findFinishedByUserId(this.id)
        val total = sessions.size.toLong()
        val correct = sessions.sumOf { it.correctCount }
        val answered = sessions.sumOf { it.questionsAnswered }.coerceAtLeast(1)
        val maxCombo = sessions.maxOfOrNull { it.maxCombo } ?: 0
        val totalScore = sessions.sumOf { it.score }
        return FriendProfile(
            userId = this.id,
            username = this.username,
            level = this.level.toInt(),
            xp = this.xp,
            league = this.league,
            leaguePoints = this.leaguePoints,
            lives = this.lives.toInt(),
            avatarCatId = this.avatarCatId,
            friendCode = this.friendCode ?: "",
            friendshipStatus = friendshipStatus,
            stats = FriendStats(
                totalSessions = total,
                accuracy = if (total == 0L) 0 else (correct * 100 / answered),
                maxCombo = maxCombo,
                totalScore = totalScore,
            ),
        )
    }
}
