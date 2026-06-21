package com.shonenquiz.api.domain.model

import java.util.UUID

data class FriendSummary(
    val friendshipId: UUID,
    val userId: UUID,
    val username: String,
    val level: Int,
    val league: String,
    val avatarCatId: UUID?,
)

data class FriendRequest(
    val friendshipId: UUID,
    val requesterId: UUID,
    val requesterUsername: String,
    val requesterLevel: Int,
    val requesterLeague: String,
    val requesterAvatarCatId: UUID?,
)

data class FriendProfile(
    val userId: UUID,
    val username: String,
    val level: Int,
    val xp: Int,
    val league: String,
    val leaguePoints: Int,
    val lives: Int,
    val avatarCatId: UUID?,
    val friendCode: String,
    val friendshipStatus: String?,  // null = não há relação
    val stats: FriendStats,
)

data class FriendStats(
    val totalSessions: Long,
    val accuracy: Int,
    val maxCombo: Int,
    val totalScore: Long,
)
