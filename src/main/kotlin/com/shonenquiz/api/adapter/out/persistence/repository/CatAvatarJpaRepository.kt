package com.shonenquiz.api.adapter.out.persistence.repository

import com.shonenquiz.api.adapter.out.persistence.entity.CatAvatarEntity
import org.springframework.data.jpa.repository.JpaRepository
import java.util.UUID

interface CatAvatarJpaRepository : JpaRepository<CatAvatarEntity, UUID> {
    fun findByUserId(userId: UUID): CatAvatarEntity?
}
