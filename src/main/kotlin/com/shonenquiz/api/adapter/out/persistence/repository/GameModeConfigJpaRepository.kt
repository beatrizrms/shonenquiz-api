package com.shonenquiz.api.adapter.out.persistence.repository

import com.shonenquiz.api.adapter.out.persistence.entity.GameModeConfigEntity
import org.springframework.data.jpa.repository.JpaRepository
import java.util.UUID

interface GameModeConfigJpaRepository : JpaRepository<GameModeConfigEntity, UUID> {
    fun findByModeAndActiveTrue(mode: String): GameModeConfigEntity?
    fun findAllByActiveTrueOrderBySortOrder(): List<GameModeConfigEntity>
}
