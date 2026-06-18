package com.shonenquiz.api.adapter.out.persistence

import com.shonenquiz.api.adapter.out.persistence.entity.UserAbilitySlotEntity
import com.shonenquiz.api.adapter.out.persistence.entity.UserAbilitySlotId
import com.shonenquiz.api.adapter.out.persistence.repository.UserAbilitySlotJpaRepository
import com.shonenquiz.api.domain.port.out.AbilitySlot
import com.shonenquiz.api.domain.port.out.AbilitySlotPort
import org.springframework.stereotype.Component
import org.springframework.transaction.annotation.Transactional
import java.time.OffsetDateTime
import java.util.UUID

@Component
class AbilitySlotPersistenceAdapter(
    private val repo: UserAbilitySlotJpaRepository,
) : AbilitySlotPort {

    override fun findSlots(userId: UUID): List<AbilitySlot> =
        repo.findByIdUserIdOrderByIdSlotIndex(userId)
            .map { AbilitySlot(it.id.slotIndex.toInt(), it.setRef, it.unlocked) }

    @Transactional
    override fun equipSlot(userId: UUID, slotIndex: Int, setRef: String) {
        val id = UserAbilitySlotId(userId, slotIndex.toShort())
        val existing = repo.findById(id).orElse(null)
            ?: error("Slot $slotIndex não encontrado para o usuário")
        repo.save(UserAbilitySlotEntity(id, setRef = setRef, unlocked = existing.unlocked,
            unlockedAt = existing.unlockedAt, equippedAt = OffsetDateTime.now()))
    }

    @Transactional
    override fun unequipSlot(userId: UUID, slotIndex: Int) {
        val id = UserAbilitySlotId(userId, slotIndex.toShort())
        val existing = repo.findById(id).orElse(null) ?: return
        repo.save(UserAbilitySlotEntity(id, setRef = null, unlocked = existing.unlocked,
            unlockedAt = existing.unlockedAt, equippedAt = null))
    }

    @Transactional
    override fun unlockSlot(userId: UUID, slotIndex: Int) {
        val id = UserAbilitySlotId(userId, slotIndex.toShort())
        val existing = repo.findById(id).orElse(null)
        if (existing != null) {
            repo.save(UserAbilitySlotEntity(id, setRef = existing.setRef, unlocked = true,
                unlockedAt = OffsetDateTime.now(), equippedAt = existing.equippedAt))
        } else {
            repo.save(UserAbilitySlotEntity(id, unlocked = true, unlockedAt = OffsetDateTime.now()))
        }
    }

    @Transactional
    override fun initSlots(userId: UUID) {
        for (i in 0..3) {
            val id = UserAbilitySlotId(userId, i.toShort())
            if (!repo.existsById(id)) {
                repo.save(UserAbilitySlotEntity(id,
                    unlocked = (i == 0),
                    unlockedAt = if (i == 0) OffsetDateTime.now() else null,
                ))
            }
        }
    }
}
