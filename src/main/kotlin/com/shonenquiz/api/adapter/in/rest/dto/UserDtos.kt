package com.shonenquiz.api.adapter.`in`.rest.dto

import jakarta.validation.constraints.NotBlank
import jakarta.validation.constraints.Pattern
import jakarta.validation.constraints.Size
import java.time.OffsetDateTime
import java.util.UUID

data class UpdateUsernameRequest(
    @field:NotBlank
    @field:Size(min = 3, max = 30)
    @field:Pattern(regexp = "^[a-zA-Z0-9_]+$", message = "apenas letras, números e _")
    val username: String,
)

data class SaveAvatarRequest(
    @field:NotBlank @field:Size(max = 30) val catName: String,
    @field:NotBlank val breed: String,
    @field:NotBlank val eyeColor: String,
    @field:NotBlank val expression: String,
    val accessory: String? = null,
    val cosplay: String? = null,
)

data class UpdateAnimePreferencesRequest(
    val animeIds: List<UUID>,
)

data class UserProfileResponse(
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

data class AvatarResponse(
    val id: UUID,
    val catName: String,
    val breed: String,
    val eyeColor: String,
    val expression: String,
    val accessory: String?,
    val cosplay: String?,
)

data class AnimeResponse(
    val id: UUID,
    val name: String,
    val slug: String,
    val category: String,
    val isFixed: Boolean,
    val coverUrl: String?,
)
