package com.shonenquiz.api.domain.service

import com.shonenquiz.api.domain.model.Anime
import com.shonenquiz.api.domain.model.CatAvatar
import com.shonenquiz.api.domain.model.User
import com.shonenquiz.api.domain.port.`in`.SaveAvatarCommand
import com.shonenquiz.api.domain.port.`in`.UserUseCase
import com.shonenquiz.api.domain.port.out.AnimePort
import com.shonenquiz.api.domain.port.out.AvatarPort
import com.shonenquiz.api.domain.port.out.UserPort
import com.shonenquiz.api.exception.BusinessException
import com.shonenquiz.api.exception.ResourceNotFoundException
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional
import java.util.UUID

@Service
class UserService(
    private val userPort: UserPort,
    private val avatarPort: AvatarPort,
    private val animePort: AnimePort,
) : UserUseCase {

    override fun getProfile(userId: UUID): User =
        userPort.findById(userId) ?: throw ResourceNotFoundException("Usuário não encontrado")

    @Transactional
    override fun updateUsername(userId: UUID, username: String): User {
        if (userPort.existsByUsername(username)) {
            throw BusinessException("Username '$username' já está em uso")
        }
        return userPort.updateUsername(userId, username)
    }

    override fun getAvatar(userId: UUID): CatAvatar =
        avatarPort.findByUserId(userId) ?: throw ResourceNotFoundException("Avatar não encontrado")

    @Transactional
    override fun saveAvatar(userId: UUID, command: SaveAvatarCommand): CatAvatar {
        val existing = avatarPort.findByUserId(userId)
        val avatar = CatAvatar(
            id = existing?.id ?: UUID.randomUUID(),
            userId = userId,
            catName = command.catName,
            breed = command.breed,
            eyeColor = command.eyeColor,
            expression = command.expression,
            accessory = command.accessory,
            cosplay = command.cosplay,
        )
        val saved = avatarPort.save(avatar)
        if (existing == null) {
            userPort.updateAvatarCatId(userId, saved.id)
        }
        return saved
    }

    override fun getAnimePreferences(userId: UUID): List<Anime> =
        animePort.findPreferencesByUserId(userId)

    @Transactional
    override fun updateAnimePreferences(userId: UUID, animeIds: List<UUID>) {
        val fixed = animePort.findFixed()
        val fixedIds = fixed.map { it.id }.toSet()

        val nonFixedSelected = animeIds.filter { it !in fixedIds }
        if (nonFixedSelected.size < 5) {
            throw BusinessException("Selecione pelo menos 5 animes além dos 3 obrigatórios")
        }

        val allIds = (fixedIds + animeIds).distinct()
        animePort.replacePreferences(userId, allIds)
    }
}
