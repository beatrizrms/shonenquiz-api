package com.shonenquiz.api.adapter.out.persistence.repository

import com.shonenquiz.api.adapter.out.persistence.entity.UserAbilitySlotEntity
import com.shonenquiz.api.adapter.out.persistence.entity.UserAbilitySlotId
import org.springframework.data.jpa.repository.JpaRepository
import java.util.UUID

interface UserAbilitySlotJpaRepository : JpaRepository<UserAbilitySlotEntity, UserAbilitySlotId> {
    fun findByIdUserIdOrderByIdSlotIndex(userId: UUID): List<UserAbilitySlotEntity>
}
