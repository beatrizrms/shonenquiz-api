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
    val type: String,
    val difficulty: String,
    val questionText: String,
    val detailText: String?,
    val mediaUrl: String?,
    val options: List<QuestionOption>,
)

data class AnswerResult(
    val isCorrect: Boolean,
    val correctOptionId: UUID,
    val pointsEarned: Long,
    val currentCombo: Int,
    val livesRemaining: Int,
    val sessionStatus: String,   // active | won | lost
    val xpEarned: Int,
    val nekocoinsEarned: Int,
    val nextQuestion: Question?,
    val questionsAnswered: Int,
    val questionsTotal: Int,
    val score: Long,
    val coinStage: Int,
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

data class HelpResult(
    val effect: String,                              // eliminate_options | reveal_correct | add_seconds | freeze_timer | freeze_timer_seconds | swap_question | extra_life | reveal_hint | shield | no_op
    val eliminatedOptionIds: List<UUID> = emptyList(),
    val correctOptionId: UUID? = null,
    val newQuestion: Question? = null,
    val secondsAdded: Int = 0,
    val freezeSeconds: Int? = null,
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
