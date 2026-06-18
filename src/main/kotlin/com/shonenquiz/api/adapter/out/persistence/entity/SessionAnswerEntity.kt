package com.shonenquiz.api.adapter.out.persistence.entity

import jakarta.persistence.*
import java.time.OffsetDateTime
import java.util.UUID

@Entity
@Table(name = "session_answers")
class SessionAnswerEntity(
    @Id val id: UUID = UUID.randomUUID(),

    @Column(name = "session_id", nullable = false)
    val sessionId: UUID,

    @Column(name = "question_id", nullable = false)
    val questionId: UUID,

    @Column(name = "selected_option_id", nullable = false)
    val selectedOptionId: UUID,

    @Column(name = "is_correct", nullable = false)
    val isCorrect: Boolean,

    @Column(name = "time_taken_ms", nullable = false)
    val timeTakenMs: Long,

    @Column(name = "points_earned", nullable = false)
    val pointsEarned: Long,

    @Column(name = "help_used")
    val helpUsed: String? = null,

    @Column(name = "answered_at", nullable = false, updatable = false)
    val answeredAt: OffsetDateTime = OffsetDateTime.now(),
)
