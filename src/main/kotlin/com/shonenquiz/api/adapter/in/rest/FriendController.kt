package com.shonenquiz.api.adapter.`in`.rest

import com.shonenquiz.api.adapter.`in`.rest.dto.*
import com.shonenquiz.api.domain.model.FriendProfile
import com.shonenquiz.api.domain.model.FriendRequest
import com.shonenquiz.api.domain.model.FriendSummary
import com.shonenquiz.api.domain.model.RankingEntry
import com.shonenquiz.api.domain.port.`in`.FriendUseCase
import org.springframework.http.HttpStatus
import org.springframework.http.ResponseEntity
import org.springframework.security.core.annotation.AuthenticationPrincipal
import org.springframework.web.bind.annotation.*
import java.util.UUID

@RestController
@RequestMapping("/friends")
class FriendController(private val friendUseCase: FriendUseCase) {

    @GetMapping("/my-code")
    fun myCode(@AuthenticationPrincipal userId: UUID?): ResponseEntity<FriendCodeResponse> {
        val id = userId ?: return ResponseEntity.status(401).build()
        return ResponseEntity.ok(FriendCodeResponse(friendUseCase.getMyFriendCode(id)))
    }

    @GetMapping("/search")
    fun search(
        @AuthenticationPrincipal userId: UUID?,
        @RequestParam code: String,
    ): ResponseEntity<FriendProfileResponse> {
        val id = userId ?: return ResponseEntity.status(401).build()
        return ResponseEntity.ok(friendUseCase.searchByFriendCode(code, id).toResponse())
    }

    @PostMapping("/request")
    fun sendRequest(
        @AuthenticationPrincipal userId: UUID?,
        @RequestBody body: SendFriendRequestBody,
    ): ResponseEntity<Void> {
        val id = userId ?: return ResponseEntity.status(401).build()
        friendUseCase.sendRequest(id, body.friendCode)
        return ResponseEntity.status(HttpStatus.CREATED).build()
    }

    @PostMapping("/{friendshipId}/accept")
    fun accept(
        @AuthenticationPrincipal userId: UUID?,
        @PathVariable friendshipId: UUID,
    ): ResponseEntity<Void> {
        val id = userId ?: return ResponseEntity.status(401).build()
        friendUseCase.acceptRequest(id, friendshipId)
        return ResponseEntity.noContent().build()
    }

    @PostMapping("/{friendshipId}/remove")
    fun remove(
        @AuthenticationPrincipal userId: UUID?,
        @PathVariable friendshipId: UUID,
    ): ResponseEntity<Void> {
        val id = userId ?: return ResponseEntity.status(401).build()
        friendUseCase.removeFriend(id, friendshipId)
        return ResponseEntity.noContent().build()
    }

    @GetMapping
    fun list(@AuthenticationPrincipal userId: UUID?): ResponseEntity<List<FriendSummaryResponse>> {
        val id = userId ?: return ResponseEntity.status(401).build()
        return ResponseEntity.ok(friendUseCase.listFriends(id).map { it.toResponse() })
    }

    @GetMapping("/requests")
    fun requests(@AuthenticationPrincipal userId: UUID?): ResponseEntity<List<FriendRequestResponse>> {
        val id = userId ?: return ResponseEntity.status(401).build()
        return ResponseEntity.ok(friendUseCase.listPendingRequests(id).map { it.toResponse() })
    }

    @GetMapping("/{friendUserId}/profile")
    fun profile(
        @AuthenticationPrincipal userId: UUID?,
        @PathVariable friendUserId: UUID,
    ): ResponseEntity<FriendProfileResponse> {
        val id = userId ?: return ResponseEntity.status(401).build()
        return ResponseEntity.ok(friendUseCase.getFriendProfile(id, friendUserId).toResponse())
    }

    @GetMapping("/ranking")
    fun ranking(@AuthenticationPrincipal userId: UUID?): ResponseEntity<List<RankingEntryResponse>> {
        val id = userId ?: return ResponseEntity.status(401).build()
        return ResponseEntity.ok(friendUseCase.getFriendRanking(id).map { it.toResponse() })
    }

    // ── mappers ──────────────────────────────────────────────────────────────

    private fun FriendSummary.toResponse() = FriendSummaryResponse(
        friendshipId = friendshipId, userId = userId, username = username,
        level = level, league = league, avatarCatId = avatarCatId,
    )

    private fun FriendRequest.toResponse() = FriendRequestResponse(
        friendshipId = friendshipId, requesterId = requesterId,
        requesterUsername = requesterUsername, requesterLevel = requesterLevel,
        requesterLeague = requesterLeague, requesterAvatarCatId = requesterAvatarCatId,
    )

    private fun FriendProfile.toResponse() = FriendProfileResponse(
        userId = userId, username = username, level = level, xp = xp,
        league = league, leaguePoints = leaguePoints, lives = lives,
        avatarCatId = avatarCatId, friendCode = friendCode,
        friendshipStatus = friendshipStatus,
        stats = FriendStatsResponse(
            totalSessions = stats.totalSessions, accuracy = stats.accuracy,
            maxCombo = stats.maxCombo, totalScore = stats.totalScore,
        ),
    )

    private fun RankingEntry.toResponse() = RankingEntryResponse(
        position = position, userId = userId, username = username,
        level = level, league = league, score = score, isCurrentUser = isCurrentUser,
    )
}
