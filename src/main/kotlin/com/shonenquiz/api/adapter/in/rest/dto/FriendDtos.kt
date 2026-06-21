package com.shonenquiz.api.adapter.`in`.rest.dto

import java.util.UUID

data class SendFriendRequestBody(val friendCode: String)

data class FriendCodeResponse(val friendCode: String)

data class FriendSummaryResponse(
    val friendshipId: UUID,
    val userId: UUID,
    val username: String,
    val level: Int,
    val league: String,
    val avatarCatId: UUID?,
)

data class FriendRequestResponse(
    val friendshipId: UUID,
    val requesterId: UUID,
    val requesterUsername: String,
    val requesterLevel: Int,
    val requesterLeague: String,
    val requesterAvatarCatId: UUID?,
)

data class FriendStatsResponse(
    val totalSessions: Long,
    val accuracy: Int,
    val maxCombo: Int,
    val totalScore: Long,
)

data class FriendProfileResponse(
    val userId: UUID,
    val username: String,
    val level: Int,
    val xp: Int,
    val league: String,
    val leaguePoints: Int,
    val lives: Int,
    val avatarCatId: UUID?,
    val friendCode: String,
    val friendshipStatus: String?,
    val stats: FriendStatsResponse,
)
