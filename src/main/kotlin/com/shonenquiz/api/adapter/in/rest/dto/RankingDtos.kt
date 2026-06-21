package com.shonenquiz.api.adapter.`in`.rest.dto

import java.time.OffsetDateTime
import java.util.UUID

data class SeasonResponse(
    val id: UUID,
    val name: String,
    val endsAt: OffsetDateTime,
    val active: Boolean,
)

data class RankingEntryResponse(
    val position: Int,
    val userId: UUID,
    val username: String,
    val level: Int,
    val league: String,
    val score: Long,
    val isCurrentUser: Boolean,
)

data class RankingResponse(
    val season: SeasonResponse?,
    val entries: List<RankingEntryResponse>,
    val currentUserEntry: RankingEntryResponse?,
)
