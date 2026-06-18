package com.shonenquiz.api.adapter.out.persistence.entity

import jakarta.persistence.*
import java.time.OffsetDateTime
import java.util.UUID

@Entity
@Table(name = "game_sessions")
class GameSessionEntity(
    @Id val id: UUID = UUID.randomUUID(),

    @Column(name = "user_id", nullable = false)
    val userId: UUID,

    @Column(nullable = false, length = 20)
    val mode: String,

    @Column(nullable = false, length = 20)
    var status: String = "active",

    @Column(nullable = false, length = 20)
    val league: String,

    @Column(nullable = false)
    var score: Long = 0,

    @Column(name = "questions_total", nullable = false)
    var questionsTotal: Int = 15,

    @Column(name = "questions_answered", nullable = false)
    var questionsAnswered: Int = 0,

    @Column(name = "correct_count", nullable = false)
    var correctCount: Int = 0,

    @Column(name = "max_combo", nullable = false)
    var maxCombo: Int = 0,

    @Column(name = "current_combo", nullable = false)
    var currentCombo: Int = 0,

    @Column(name = "lives_used", nullable = false)
    var livesUsed: Int = 0,

    @Column(name = "bonus_lives", nullable = false)
    var bonusLives: Int = 0,

    @Column(name = "wrong_streak", nullable = false)
    var wrongStreak: Int = 0,

    @Column(name = "coin_stage", nullable = false)
    var coinStage: Int = 0,

    @Column(name = "xp_earned", nullable = false)
    var xpEarned: Int = 0,

    @Column(name = "nekocoins_earned", nullable = false)
    var nekocoinsEarned: Int = 0,

    // JSON array de UUIDs das perguntas selecionadas para a sessão
    @Column(name = "question_ids", columnDefinition = "TEXT")
    var questionIds: String = "[]",

    @Column(name = "started_at", nullable = false, updatable = false)
    val startedAt: OffsetDateTime = OffsetDateTime.now(),

    @Column(name = "finished_at")
    var finishedAt: OffsetDateTime? = null,
)
