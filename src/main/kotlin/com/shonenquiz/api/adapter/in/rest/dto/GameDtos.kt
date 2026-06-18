package com.shonenquiz.api.adapter.`in`.rest.dto

import java.util.UUID

data class StartSessionRequest(
    val mode: String = "classic",
)

data class QuestionOptionResponse(
    val id: UUID,
    val optionText: String,
    val sortOrder: Int,
)

data class QuestionResponse(
    val id: UUID,
    val type: String,
    val difficulty: String,
    val questionText: String,
    val detailText: String?,
    val mediaUrl: String?,
    val options: List<QuestionOptionResponse>,
)

data class StartSessionResponse(
    val sessionId: UUID,
    val questionsTotal: Int,
    val firstQuestion: QuestionResponse,
)

data class SubmitAnswerRequest(
    val questionId: UUID,
    val selectedOptionId: UUID,
    val timeTakenMs: Long,
    val helpUsed: String? = null,
)

data class UseHelpRequest(
    val questionId: UUID,
    val helpType: String,
)

data class HelpResultResponse(
    val effect: String,
    val eliminatedOptionIds: List<UUID> = emptyList(),
    val correctOptionId: UUID? = null,
    val newQuestion: QuestionResponse? = null,
    val secondsAdded: Int = 0,
    val freezeSeconds: Int? = null,
)

data class AnswerResultResponse(
    val isCorrect: Boolean,
    val correctOptionId: UUID,
    val pointsEarned: Long,
    val currentCombo: Int,
    val livesRemaining: Int,
    val sessionStatus: String,
    val score: Long,
    val questionsAnswered: Int,
    val questionsTotal: Int,
    val xpEarned: Int,
    val nekocoinsEarned: Int,
    val coinStage: Int,
    val nextQuestion: QuestionResponse?,
)

data class SessionAchievementResponse(
    val ruleId: UUID,
    val label: String,
    val bonusMetric: String,
    val effectType: String,
    val bonusApplied: Double?,
    val questionNumber: Int?,
)

data class SessionSummaryResponse(
    val sessionId: UUID,
    val status: String,
    val score: Long,
    val questionsTotal: Int,
    val correctCount: Int,
    val maxCombo: Int,
    val xpEarned: Int,
    val nekocoinsEarned: Int,
    val achievements: List<SessionAchievementResponse>,
)
