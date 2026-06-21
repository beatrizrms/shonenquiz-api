package com.shonenquiz.api.adapter.out.persistence.entity

import com.shonenquiz.api.domain.model.GameModeConfigModel
import jakarta.persistence.*
import java.time.OffsetDateTime
import java.util.UUID

@Entity
@Table(name = "game_mode_configs")
data class GameModeConfigEntity(
    @Id val id: UUID = UUID.randomUUID(),
    @Column(nullable = false, unique = true) val mode: String = "",
    @Column(name = "display_name", nullable = false) val displayName: String = "",
    @Column val description: String? = null,
    @Column(name = "questions_total", nullable = false) val questionsTotal: Int = 20,
    @Column(name = "timer_seconds", nullable = false) val timerSeconds: Int = 30,
    @Column(nullable = false) val lives: Int = 3,
    @Column(nullable = false) val active: Boolean = true,
    @Column(name = "sort_order", nullable = false) val sortOrder: Int = 0,
    @Column(name = "base_points", nullable = false) val basePoints: Int = 5,
    @Column(name = "max_speed_multiplier", nullable = false) val maxSpeedMultiplier: Double = 3.0,
    @Column(name = "question_time_limit_ms", nullable = false) val questionTimeLimitMs: Long = 30_000L,
    @Column(name = "created_at", nullable = false) val createdAt: OffsetDateTime = OffsetDateTime.now(),
) {
    fun toModel() = GameModeConfigModel(
        mode = mode,
        displayName = displayName,
        description = description,
        questionsTotal = questionsTotal,
        timerSeconds = timerSeconds,
        lives = lives,
    )
}
