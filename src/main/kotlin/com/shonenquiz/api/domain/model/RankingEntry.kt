package com.shonenquiz.api.domain.model

import java.util.UUID

data class Season(
    val id: UUID,
    val name: String,
    val endsAt: java.time.OffsetDateTime,
    val active: Boolean,
)

data class RankingEntry(
    val position: Int,
    val userId: UUID,
    val username: String,
    val level: Int,
    val league: String,
    val score: Long,
    val isCurrentUser: Boolean,
)
