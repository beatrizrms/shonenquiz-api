package com.shonenquiz.api.adapter.`in`.rest

import com.shonenquiz.api.adapter.`in`.rest.dto.*
import com.shonenquiz.api.domain.model.Anime
import com.shonenquiz.api.domain.model.CatAvatar
import com.shonenquiz.api.domain.model.User
import com.shonenquiz.api.domain.port.`in`.SaveAvatarCommand
import com.shonenquiz.api.domain.port.`in`.UserUseCase
import jakarta.validation.Valid
import org.springframework.http.ResponseEntity
import org.springframework.security.core.annotation.AuthenticationPrincipal
import org.springframework.web.bind.annotation.*
import java.util.UUID

@RestController
@RequestMapping("/users/me")
class UserController(private val userUseCase: UserUseCase) {

    @GetMapping
    fun getProfile(@AuthenticationPrincipal userId: String): ResponseEntity<UserProfileResponse> =
        ResponseEntity.ok(userUseCase.getProfile(UUID.fromString(userId)).toResponse())

    @PatchMapping
    fun updateUsername(
        @AuthenticationPrincipal userId: String,
        @Valid @RequestBody request: UpdateUsernameRequest,
    ): ResponseEntity<UserProfileResponse> =
        ResponseEntity.ok(userUseCase.updateUsername(UUID.fromString(userId), request.username).toResponse())

    @GetMapping("/avatar")
    fun getAvatar(@AuthenticationPrincipal userId: String): ResponseEntity<AvatarResponse> =
        ResponseEntity.ok(userUseCase.getAvatar(UUID.fromString(userId)).toResponse())

    @PutMapping("/avatar")
    fun saveAvatar(
        @AuthenticationPrincipal userId: String,
        @Valid @RequestBody request: SaveAvatarRequest,
    ): ResponseEntity<AvatarResponse> {
        val command = SaveAvatarCommand(
            catName = request.catName,
            breed = request.breed,
            eyeColor = request.eyeColor,
            expression = request.expression,
            accessory = request.accessory,
            cosplay = request.cosplay,
        )
        return ResponseEntity.ok(userUseCase.saveAvatar(UUID.fromString(userId), command).toResponse())
    }

    @GetMapping("/animes")
    fun getAnimePreferences(@AuthenticationPrincipal userId: String): ResponseEntity<List<AnimeResponse>> =
        ResponseEntity.ok(userUseCase.getAnimePreferences(UUID.fromString(userId)).map { it.toResponse() })

    @PutMapping("/animes")
    fun updateAnimePreferences(
        @AuthenticationPrincipal userId: String,
        @RequestBody request: UpdateAnimePreferencesRequest,
    ): ResponseEntity<Void> {
        userUseCase.updateAnimePreferences(UUID.fromString(userId), request.animeIds)
        return ResponseEntity.noContent().build()
    }

    private fun User.toResponse() = UserProfileResponse(
        id = id, username = username, email = email, level = level, xp = xp,
        nekocoins = nekocoins, gems = gems, lives = lives, livesLastRegen = livesLastRegen,
        league = league, leaguePoints = leaguePoints, avatarCatId = avatarCatId, createdAt = createdAt,
    )

    private fun CatAvatar.toResponse() = AvatarResponse(
        id = id, catName = catName, breed = breed, eyeColor = eyeColor,
        expression = expression, accessory = accessory, cosplay = cosplay,
    )

    private fun Anime.toResponse() = AnimeResponse(
        id = id, name = name, slug = slug, category = category,
        isFixed = isFixed, coverUrl = coverUrl,
    )
}
