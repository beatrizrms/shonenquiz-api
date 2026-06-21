package com.shonenquiz.api.adapter.out.persistence.repository

import com.shonenquiz.api.adapter.out.persistence.entity.BossPowerEntity
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.Query
import java.util.UUID

interface BossPowerJpaRepository : JpaRepository<BossPowerEntity, UUID> {

    @Query("SELECT b FROM BossPowerEntity b WHERE b.active = TRUE AND b.allowedModes LIKE %:mode%")
    fun findAllActiveForMode(mode: String): List<BossPowerEntity>
}
