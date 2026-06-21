package com.shonenquiz.api.adapter.out.persistence.repository

import com.shonenquiz.api.adapter.out.persistence.entity.UserEquippedItemEntity
import com.shonenquiz.api.adapter.out.persistence.entity.UserEquippedItemId
import org.springframework.data.jpa.repository.JpaRepository
import java.util.UUID

interface UserEquippedItemJpaRepository : JpaRepository<UserEquippedItemEntity, UserEquippedItemId> {
    fun findByIdUserId(userId: UUID): List<UserEquippedItemEntity>
    fun existsByIdUserIdAndIdItemRef(userId: UUID, itemRef: String): Boolean
    fun deleteByIdUserIdAndIdItemRef(userId: UUID, itemRef: String)
}
