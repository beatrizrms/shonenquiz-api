package com.shonenquiz.api.domain.port.`in`

import com.shonenquiz.api.domain.model.Anime
import com.shonenquiz.api.domain.model.CatAvatar
import com.shonenquiz.api.domain.model.User
import java.util.UUID

interface UserUseCase {
    fun getProfile(userId: UUID): User
    fun updateUsername(userId: UUID, username: String): User
    fun getAvatar(userId: UUID): CatAvatar
    fun saveAvatar(userId: UUID, command: SaveAvatarCommand): CatAvatar
    fun getAnimePreferences(userId: UUID): List<Anime>
    fun updateAnimePreferences(userId: UUID, animeIds: List<UUID>)
}

data class SaveAvatarCommand(
    val catName: String,
    val breed: String,
    val eyeColor: String,
    val expression: String,
    val accessory: String?,
    val cosplay: String?,
)
