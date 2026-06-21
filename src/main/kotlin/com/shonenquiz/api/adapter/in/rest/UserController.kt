package com.shonenquiz.api.adapter.`in`.rest

import com.shonenquiz.api.adapter.`in`.rest.dto.*
import com.shonenquiz.api.domain.model.Anime
import com.shonenquiz.api.domain.model.CatAvatar
import com.shonenquiz.api.domain.model.User
import com.shonenquiz.api.domain.port.`in`.SaveAvatarCommand
import com.shonenquiz.api.domain.port.`in`.UserUseCase
import com.shonenquiz.api.domain.port.out.AbilitySlot
import jakarta.validation.Valid
import org.springframework.http.ResponseEntity
import org.springframework.security.core.annotation.AuthenticationPrincipal
import org.springframework.web.bind.annotation.*
import java.util.UUID

@RestController
@RequestMapping("/users/me")
class UserController(private val userUseCase: UserUseCase) {

    @GetMapping
    fun getProfile(@AuthenticationPrincipal userId: UUID?): ResponseEntity<UserProfileResponse> {
        if (userId == null) return ResponseEntity.status(401).build()
        return ResponseEntity.ok(userUseCase.getProfile(userId).toResponse())
    }

    @PatchMapping
    fun updateUsername(
        @AuthenticationPrincipal userId: UUID?,
        @Valid @RequestBody request: UpdateUsernameRequest,
    ): ResponseEntity<UserProfileResponse> {
        if (userId == null) return ResponseEntity.status(401).build()
        return ResponseEntity.ok(userUseCase.updateUsername(userId, request.username).toResponse())
    }

    @GetMapping("/avatar")
    fun getAvatar(@AuthenticationPrincipal userId: UUID?): ResponseEntity<AvatarResponse> {
        if (userId == null) return ResponseEntity.status(401).build()
        return ResponseEntity.ok(userUseCase.getAvatar(userId).toResponse())
    }

    @PutMapping("/avatar")
    fun saveAvatar(
        @AuthenticationPrincipal userId: UUID?,
        @Valid @RequestBody request: SaveAvatarRequest,
    ): ResponseEntity<AvatarResponse> {
        if (userId == null) return ResponseEntity.status(401).build()
        val command = SaveAvatarCommand(
            catName = request.catName,
            breed = request.breed,
            eyeColor = request.eyeColor,
            expression = request.expression,
            accessory = request.accessory,
            background = request.background,
        )
        return ResponseEntity.ok(userUseCase.saveAvatar(userId, command).toResponse())
    }

    @GetMapping("/animes")
    fun getAnimePreferences(@AuthenticationPrincipal userId: UUID?): ResponseEntity<List<AnimeResponse>> {
        if (userId == null) return ResponseEntity.status(401).build()
        return ResponseEntity.ok(userUseCase.getAnimePreferences(userId).map { it.toResponse() })
    }

    @PutMapping("/animes")
    fun updateAnimePreferences(
        @AuthenticationPrincipal userId: UUID?,
        @RequestBody request: UpdateAnimePreferencesRequest,
    ): ResponseEntity<Void> {
        if (userId == null) return ResponseEntity.status(401).build()
        userUseCase.updateAnimePreferences(userId, request.animeIds)
        return ResponseEntity.noContent().build()
    }

    @GetMapping("/stats")
    fun getStats(@AuthenticationPrincipal userId: UUID?): ResponseEntity<UserStatsResponse> {
        if (userId == null) return ResponseEntity.status(401).build()
        val s = userUseCase.getStats(userId)
        return ResponseEntity.ok(UserStatsResponse(
            totalSessions = s.totalSessions,
            accuracy = s.accuracy,
            maxCombo = s.maxCombo,
            totalScore = s.totalScore,
        ))
    }

    @GetMapping("/sessions/recent")
    fun getRecentSessions(@AuthenticationPrincipal userId: UUID?): ResponseEntity<List<RecentSessionResponse>> {
        if (userId == null) return ResponseEntity.status(401).build()
        return ResponseEntity.ok(userUseCase.getRecentSessions(userId).map { s ->
            RecentSessionResponse(
                sessionId = s.sessionId,
                mode = s.mode,
                status = s.status,
                score = s.score,
                questionsAnswered = s.questionsAnswered,
                questionsTotal = s.questionsTotal,
            )
        })
    }

    @GetMapping("/equipment")
    fun getEquipment(@AuthenticationPrincipal userId: UUID?): ResponseEntity<List<String>> {
        if (userId == null) return ResponseEntity.status(401).build()
        return ResponseEntity.ok(userUseCase.getEquippedItems(userId))
    }

    @PutMapping("/equipment/{itemRef}")
    fun equipItem(
        @AuthenticationPrincipal userId: UUID?,
        @PathVariable itemRef: String,
    ): ResponseEntity<Void> {
        if (userId == null) return ResponseEntity.status(401).build()
        userUseCase.equipItem(userId, itemRef)
        return ResponseEntity.noContent().build()
    }

    @DeleteMapping("/equipment/{itemRef}")
    fun unequipItem(
        @AuthenticationPrincipal userId: UUID?,
        @PathVariable itemRef: String,
    ): ResponseEntity<Void> {
        if (userId == null) return ResponseEntity.status(401).build()
        userUseCase.unequipItem(userId, itemRef)
        return ResponseEntity.noContent().build()
    }

    @GetMapping("/ability-slots")
    fun getAbilitySlots(@AuthenticationPrincipal userId: UUID?): ResponseEntity<List<AbilitySlotResponse>> {
        if (userId == null) return ResponseEntity.status(401).build()
        return ResponseEntity.ok(userUseCase.getAbilitySlots(userId).map { it.toResponse() })
    }

    @PutMapping("/ability-slots/{slotIndex}")
    fun equipAbilitySlot(
        @AuthenticationPrincipal userId: UUID?,
        @PathVariable slotIndex: Int,
        @RequestBody request: EquipAbilitySlotRequest,
    ): ResponseEntity<Void> {
        if (userId == null) return ResponseEntity.status(401).build()
        userUseCase.equipAbilitySlot(userId, slotIndex, request.setRef)
        return ResponseEntity.noContent().build()
    }

    @DeleteMapping("/ability-slots/{slotIndex}")
    fun unequipAbilitySlot(
        @AuthenticationPrincipal userId: UUID?,
        @PathVariable slotIndex: Int,
    ): ResponseEntity<Void> {
        if (userId == null) return ResponseEntity.status(401).build()
        userUseCase.unequipAbilitySlot(userId, slotIndex)
        return ResponseEntity.noContent().build()
    }

    private fun User.toResponse() = UserProfileResponse(
        id = id, username = username, email = email, level = level, xp = xp,
        nekocoins = nekocoins, gems = gems, lives = lives, livesLastRegen = livesLastRegen,
        league = league, leaguePoints = leaguePoints, avatarCatId = avatarCatId, createdAt = createdAt,
    )

    private fun CatAvatar.toResponse() = AvatarResponse(
        id = id, catName = catName, breed = breed, eyeColor = eyeColor,
        expression = expression, accessory = accessory, background = background,
    )

    private fun Anime.toResponse() = AnimeResponse(
        id = id, name = name, slug = slug, category = category,
        isFixed = isFixed, coverUrl = coverUrl,
    )

    private fun AbilitySlot.toResponse() = AbilitySlotResponse(
        slotIndex = slotIndex, setRef = setRef, unlocked = unlocked,
    )
}
