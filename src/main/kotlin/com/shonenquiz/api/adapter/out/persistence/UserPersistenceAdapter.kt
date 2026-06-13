package com.shonenquiz.api.adapter.out.persistence

import com.shonenquiz.api.adapter.out.persistence.entity.UserEntity
import com.shonenquiz.api.adapter.out.persistence.repository.UserJpaRepository
import com.shonenquiz.api.domain.model.User
import com.shonenquiz.api.domain.port.out.UserPort
import com.shonenquiz.api.exception.ResourceNotFoundException
import org.springframework.stereotype.Component
import java.time.OffsetDateTime
import java.util.UUID

@Component
class UserPersistenceAdapter(private val repo: UserJpaRepository) : UserPort {

    override fun findById(userId: UUID): User? =
        repo.findById(userId).map { it.toDomain() }.orElse(null)

    override fun updateUsername(userId: UUID, username: String): User {
        val entity = repo.findById(userId).orElseThrow { ResourceNotFoundException("Usuário não encontrado") }
        entity.username = username
        entity.updatedAt = OffsetDateTime.now()
        return repo.save(entity).toDomain()
    }

    override fun updateAvatarCatId(userId: UUID, avatarCatId: UUID) {
        val entity = repo.findById(userId).orElseThrow { ResourceNotFoundException("Usuário não encontrado") }
        entity.avatarCatId = avatarCatId
        entity.updatedAt = OffsetDateTime.now()
        repo.save(entity)
    }

    override fun existsByUsername(username: String): Boolean =
        repo.existsByUsername(username)

    private fun UserEntity.toDomain() = User(
        id = id, username = username, email = email, level = level, xp = xp,
        nekocoins = nekocoins, gems = gems, lives = lives, livesLastRegen = livesLastRegen,
        league = league, leaguePoints = leaguePoints, avatarCatId = avatarCatId, createdAt = createdAt,
    )
}
