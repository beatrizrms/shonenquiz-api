package com.shonenquiz.api.domain.model

import java.util.UUID

data class QuestionOption(
    val id: UUID,
    val optionText: String,
    val isCorrect: Boolean,
    val sortOrder: Int,
)

data class Question(
    val id: UUID,
    val animeId: UUID,
    val animeName: String,
    val type: String,
    val difficulty: String,
    val questionText: String,
    val detailText: String?,
    val mediaUrl: String?,
    val options: List<QuestionOption>,
)

data class GameModeConfigModel(
    val mode: String,
    val displayName: String,
    val description: String?,
    val questionsTotal: Int,
    val timerSeconds: Int,
    val lives: Int,
)

data class StartSessionResult(
    val sessionId: UUID,
    val firstQuestion: Question,
    val questionsTotal: Int,
    val timerSeconds: Int,
    val lives: Int,
)

data class AnswerResult(
    val isCorrect: Boolean,
    val correctOptionId: UUID,
    val pointsEarned: Long,
    val currentCombo: Int,
    val maxCombo: Int,
    val correctCount: Int,
    val livesRemaining: Int,
    val sessionStatus: String,   // active | won | lost
    val xpEarned: Int,
    val nekocoinsEarned: Int,
    val nextQuestion: Question?,
    val questionsAnswered: Int,
    val questionsTotal: Int,
    val score: Long,
    val coinStage: Int,
    val upcomingBoss: BossEncounter? = null,
    val activeBossEffect: String? = null,
)

data class SessionAchievement(
    val ruleId: UUID,
    val label: String,
    val bonusMetric: String,
    val effectType: String,
    val bonusApplied: Double?,
    val questionNumber: Int?,
)

data class UserStats(
    val totalSessions: Long,
    val accuracy: Int,
    val maxCombo: Int,
    val totalScore: Long,
)

data class RecentSession(
    val sessionId: UUID,
    val mode: String,
    val status: String,
    val score: Long,
    val questionsAnswered: Int,
    val questionsTotal: Int,
)

data class BossEncounter(
    val bossPowerId: UUID,
    val villainName: String,
    val powerName: String,
    val raridade: String,
    val effectType: String,
    val effectDuration: Int,
    val description: String,
)

data class HelpResult(
    val effect: String,                              // eliminate_options | reveal_correct | add_seconds | freeze_timer | freeze_timer_seconds | swap_question | skip_question | extra_life | reveal_hint | shield | multiply_points | revert_wrong | no_op
    val eliminatedOptionIds: List<UUID> = emptyList(),
    val correctOptionId: UUID? = null,
    val newQuestion: Question? = null,
    val secondsAdded: Int = 0,
    val freezeSeconds: Int? = null,
    val multiplier: Double? = null,
)

data class SessionSummary(
    val sessionId: UUID,
    val status: String,
    val score: Long,
    val questionsTotal: Int,
    val correctCount: Int,
    val maxCombo: Int,
    val xpEarned: Int,
    val nekocoinsEarned: Int,
    val achievements: List<SessionAchievement> = emptyList(),
)
