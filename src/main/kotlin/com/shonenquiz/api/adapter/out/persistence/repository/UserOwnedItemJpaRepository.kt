package com.shonenquiz.api.adapter.out.persistence.repository

import com.shonenquiz.api.adapter.out.persistence.entity.UserOwnedItemEntity
import com.shonenquiz.api.adapter.out.persistence.entity.UserOwnedItemId
import org.springframework.data.jpa.repository.JpaRepository
import java.util.UUID

interface UserOwnedItemJpaRepository : JpaRepository<UserOwnedItemEntity, UserOwnedItemId> {
    fun findByIdUserId(userId: UUID): List<UserOwnedItemEntity>
    fun existsByIdUserIdAndIdItemRef(userId: UUID, itemRef: String): Boolean
}
