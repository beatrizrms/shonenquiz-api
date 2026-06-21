package com.shonenquiz.api.adapter.out.persistence.repository

import com.shonenquiz.api.adapter.out.persistence.entity.GameRuleEntity
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.Query
import java.util.UUID

interface GameRuleJpaRepository : JpaRepository<GameRuleEntity, UUID> {
    @Query("SELECT r FROM GameRuleEntity r JOIN r.modes m WHERE m = :mode AND r.active = true")
    fun findActiveByMode(mode: String): List<GameRuleEntity>
}
