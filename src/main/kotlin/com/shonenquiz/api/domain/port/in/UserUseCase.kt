package com.shonenquiz.api.domain.port.`in`

import com.shonenquiz.api.adapter.`in`.rest.dto.AchievementResponse
import com.shonenquiz.api.domain.model.Anime
import com.shonenquiz.api.domain.model.CatAvatar
import com.shonenquiz.api.domain.model.RecentSession
import com.shonenquiz.api.domain.model.User
import com.shonenquiz.api.domain.model.UserStats
import com.shonenquiz.api.domain.port.out.AbilitySlot
import java.util.UUID

data class DailyLoginResult(
    val claimed: Boolean,
    val nekocoinsClaimed: Int,
)

interface UserUseCase {
    fun getProfile(userId: UUID): User
    fun claimDailyLoginReward(userId: UUID): DailyLoginResult
    fun getStats(userId: UUID): UserStats
    fun getRecentSessions(userId: UUID): List<RecentSession>
    fun updateUsername(userId: UUID, username: String): User
    fun getAvatar(userId: UUID): CatAvatar
    fun saveAvatar(userId: UUID, command: SaveAvatarCommand): CatAvatar
    fun getAnimePreferences(userId: UUID): List<Anime>
    fun updateAnimePreferences(userId: UUID, animeIds: List<UUID>)
    fun getAchievements(userId: UUID): List<AchievementResponse>
    fun getEquippedItems(userId: UUID): List<String>
    fun equipItem(userId: UUID, itemRef: String)
    fun unequipItem(userId: UUID, itemRef: String)
    fun getAbilitySlots(userId: UUID): List<AbilitySlot>
    fun equipAbilitySlot(userId: UUID, slotIndex: Int, setRef: String)
    fun unequipAbilitySlot(userId: UUID, slotIndex: Int)
}

data class SaveAvatarCommand(
    val catName: String,
    val breed: String,
    val eyeColor: String,
    val expression: String,
    val accessory: String?,
    val background: String?,
)
