package com.shonenquiz.api.adapter.out.persistence.entity

import jakarta.persistence.*
import java.time.OffsetDateTime
import java.util.UUID

@Entity
@Table(name = "session_achievements")
class SessionAchievementEntity(
    @Id val id: UUID = UUID.randomUUID(),

    @Column(name = "session_id", nullable = false)
    val sessionId: UUID,

    @Column(name = "rule_id", nullable = false)
    val ruleId: UUID,

    @Column(name = "triggered_at", nullable = false)
    val triggeredAt: OffsetDateTime = OffsetDateTime.now(),

    @Column(name = "bonus_applied")
    val bonusApplied: Double?,

    @Column(name = "question_number")
    val questionNumber: Int?,
)
