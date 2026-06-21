package com.shonenquiz.api.adapter.out.persistence.repository

import com.shonenquiz.api.adapter.out.persistence.entity.SessionAchievementEntity
import org.springframework.data.jpa.repository.JpaRepository
import java.util.UUID

interface SessionAchievementJpaRepository : JpaRepository<SessionAchievementEntity, UUID> {
    fun existsBySessionIdAndRuleId(sessionId: UUID, ruleId: UUID): Boolean
    fun findBySessionIdOrderByTriggeredAt(sessionId: UUID): List<SessionAchievementEntity>
}
