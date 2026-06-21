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
    var questionsTotal: Int = 20,

    @Column(name = "questions_answered", nullable = false)
    var questionsAnswered: Int = 0,

    @Column(name = "correct_count", nullable = false)
    var correctCount: Int = 0,

    @Column(name = "max_combo", nullable = false)
    var maxCombo: Int = 0,

    @Column(name = "current_combo", nullable = false)
    var currentCombo: Int = 0,

    // B1: vidas máximas vêm do modo de jogo — usadas no cálculo de fim de sessão
    @Column(name = "max_lives", nullable = false)
    val maxLives: Int = 3,

    @Column(name = "lives_used", nullable = false)
    var livesUsed: Int = 0,

    @Column(name = "bonus_lives", nullable = false)
    var bonusLives: Int = 0,

    @Column(name = "wrong_streak", nullable = false)
    var wrongStreak: Int = 0,

    @Column(name = "coin_stage", nullable = false)
    var coinStage: Int = 0,

    @Column(name = "point_multiplier", nullable = false)
    var pointMultiplier: Double = 1.0,

    @Column(name = "xp_earned", nullable = false)
    var xpEarned: Int = 0,

    @Column(name = "nekocoins_earned", nullable = false)
    var nekocoinsEarned: Int = 0,

    // B6: default vazio — parseIds trata blank como lista vazia sem explodir
    @Column(name = "question_ids", columnDefinition = "TEXT")
    var questionIds: String = "",

    // Boss: "questionId:bossPowerId,..." mapeado na criação da sessão
    @Column(name = "boss_assignments", columnDefinition = "TEXT")
    var bossAssignments: String = "",

    // Boss persistente: "effectType:roundsRemaining" ou null
    @Column(name = "active_boss_effect", columnDefinition = "TEXT")
    var activeBossEffect: String? = null,

    @Column(name = "started_at", nullable = false, updatable = false)
    val startedAt: OffsetDateTime = OffsetDateTime.now(),

    @Column(name = "finished_at")
    var finishedAt: OffsetDateTime? = null,
)
