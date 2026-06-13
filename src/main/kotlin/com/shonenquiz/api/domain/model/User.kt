package com.shonenquiz.api.domain.model

import java.time.OffsetDateTime
import java.util.UUID

data class User(
    val id: UUID,
    val username: String,
    val email: String,
    val level: Short,
    val xp: Int,
    val nekocoins: Int,
    val gems: Int,
    val lives: Short,
    val livesLastRegen: OffsetDateTime?,
    val league: String,
    val leaguePoints: Int,
    val avatarCatId: UUID?,
    val createdAt: OffsetDateTime,
)
