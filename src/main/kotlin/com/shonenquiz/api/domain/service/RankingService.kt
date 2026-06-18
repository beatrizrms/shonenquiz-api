package com.shonenquiz.api.domain.service

import com.shonenquiz.api.adapter.out.persistence.repository.SeasonJpaRepository
import com.shonenquiz.api.adapter.out.persistence.repository.SeasonRankingJpaRepository
import com.shonenquiz.api.adapter.out.persistence.repository.UserJpaRepository
import com.shonenquiz.api.domain.model.RankingEntry
import com.shonenquiz.api.domain.model.Season
import com.shonenquiz.api.domain.port.`in`.RankingUseCase
import org.springframework.stereotype.Service
import java.util.UUID

@Service
class RankingService(
    private val seasonRepo: SeasonJpaRepository,
    private val rankingRepo: SeasonRankingJpaRepository,
    private val userRepo: UserJpaRepository,
) : RankingUseCase {

    override fun getCurrentSeason(): Season? =
        seasonRepo.findByActiveTrue()?.let {
            Season(id = it.id, name = it.name, endsAt = it.endsAt, active = it.active)
        }

    override fun getGlobalRanking(currentUserId: UUID, limit: Int): List<RankingEntry> {
        val season = seasonRepo.findByActiveTrue() ?: return emptyList()
        val entries = rankingRepo.findTopBySeasonId(season.id, limit)
        return buildEntries(entries.map { it.userId to it.score }, currentUserId)
    }

    override fun getLeagueRanking(currentUserId: UUID, league: String, limit: Int): List<RankingEntry> {
        val season = seasonRepo.findByActiveTrue() ?: return emptyList()
        val entries = rankingRepo.findTopBySeasonIdAndLeague(season.id, league, limit)
        return buildEntries(entries.map { it.userId to it.score }, currentUserId)
    }

    private fun buildEntries(
        scores: List<Pair<UUID, Long>>,
        currentUserId: UUID,
    ): List<RankingEntry> {
        if (scores.isEmpty()) return emptyList()
        val userIds = scores.map { it.first }
        val users = userRepo.findAllById(userIds).associateBy { it.id }
        return scores.mapIndexed { idx, (userId, score) ->
            val user = users[userId] ?: return@mapIndexed null
            RankingEntry(
                position = idx + 1,
                userId = userId,
                username = user.username,
                level = user.level.toInt(),
                league = user.league,
                score = score,
                isCurrentUser = userId == currentUserId,
            )
        }.filterNotNull()
    }
}
