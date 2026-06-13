package com.shonenquiz.api.adapter.out.persistence

import com.shonenquiz.api.adapter.out.persistence.entity.CatAvatarEntity
import com.shonenquiz.api.adapter.out.persistence.repository.CatAvatarJpaRepository
import com.shonenquiz.api.domain.model.CatAvatar
import com.shonenquiz.api.domain.port.out.AvatarPort
import org.springframework.stereotype.Component
import java.time.OffsetDateTime
import java.util.UUID

@Component
class AvatarPersistenceAdapter(private val repo: CatAvatarJpaRepository) : AvatarPort {

    override fun findByUserId(userId: UUID): CatAvatar? =
        repo.findByUserId(userId)?.toDomain()

    override fun save(avatar: CatAvatar): CatAvatar {
        val existing = repo.findById(avatar.id).orElse(null)
        val entity = if (existing != null) {
            existing.apply {
                userId = avatar.userId
                catName = avatar.catName
                breed = avatar.breed
                eyeColor = avatar.eyeColor
                expression = avatar.expression
                accessory = avatar.accessory
                cosplay = avatar.cosplay
                updatedAt = OffsetDateTime.now()
            }
        } else {
            CatAvatarEntity(
                id = avatar.id,
                userId = avatar.userId,
                catName = avatar.catName,
                breed = avatar.breed,
                eyeColor = avatar.eyeColor,
                expression = avatar.expression,
                accessory = avatar.accessory,
                cosplay = avatar.cosplay,
            )
        }
        return repo.save(entity).toDomain()
    }

    private fun CatAvatarEntity.toDomain() = CatAvatar(
        id = id, userId = userId!!, catName = catName, breed = breed,
        eyeColor = eyeColor, expression = expression, accessory = accessory, cosplay = cosplay,
    )
}
