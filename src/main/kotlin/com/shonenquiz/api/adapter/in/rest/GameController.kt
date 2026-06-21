package com.shonenquiz.api.adapter.`in`.rest

import com.shonenquiz.api.adapter.`in`.rest.dto.*
import com.shonenquiz.api.domain.model.Question
import com.shonenquiz.api.domain.port.`in`.GameUseCase
import org.springframework.http.ResponseEntity
import org.springframework.security.core.annotation.AuthenticationPrincipal
import org.springframework.web.bind.annotation.*
import java.util.UUID

@RestController
@RequestMapping("/game")
class GameController(private val gameUseCase: GameUseCase) {

    @GetMapping("/modes")
    fun getGameModes(): ResponseEntity<List<GameModeConfigResponse>> =
        ResponseEntity.ok(gameUseCase.getGameModes().map {
            GameModeConfigResponse(
                mode = it.mode,
                displayName = it.displayName,
                description = it.description,
                questionsTotal = it.questionsTotal,
                timerSeconds = it.timerSeconds,
                lives = it.lives,
            )
        })

    @PostMapping("/sessions")
    fun startSession(
        @AuthenticationPrincipal userId: UUID?,
        @RequestBody body: StartSessionRequest,
    ): ResponseEntity<StartSessionResponse> {
        val id = userId ?: return ResponseEntity.status(401).build()
        val result = gameUseCase.startSession(id, body.mode)
        return ResponseEntity.ok(
            StartSessionResponse(
                sessionId = result.sessionId,
                questionsTotal = result.questionsTotal,
                timerSeconds = result.timerSeconds,
                lives = result.lives,
                firstQuestion = result.firstQuestion.toResponse(),
            )
        )
    }

    @GetMapping("/sessions/{sessionId}/next")
    fun nextQuestion(
        @AuthenticationPrincipal userId: UUID?,
        @PathVariable sessionId: UUID,
    ): ResponseEntity<QuestionResponse> {
        val id = userId ?: return ResponseEntity.status(401).build()
        val q = gameUseCase.getNextQuestion(id, sessionId)
            ?: return ResponseEntity.noContent().build()
        return ResponseEntity.ok(q.toResponse())
    }

    @PostMapping("/sessions/{sessionId}/answer")
    fun submitAnswer(
        @AuthenticationPrincipal userId: UUID?,
        @PathVariable sessionId: UUID,
        @RequestBody body: SubmitAnswerRequest,
    ): ResponseEntity<AnswerResultResponse> {
        val id = userId ?: return ResponseEntity.status(401).build()
        val result = gameUseCase.submitAnswer(id, sessionId, body.questionId, body.selectedOptionId, body.timeTakenMs, body.helpUsed)
        return ResponseEntity.ok(
            AnswerResultResponse(
                isCorrect = result.isCorrect,
                correctOptionId = result.correctOptionId,
                pointsEarned = result.pointsEarned,
                currentCombo = result.currentCombo,
                maxCombo = result.maxCombo,
                correctCount = result.correctCount,
                livesRemaining = result.livesRemaining,
                sessionStatus = result.sessionStatus,
                score = result.score,
                questionsAnswered = result.questionsAnswered,
                questionsTotal = result.questionsTotal,
                xpEarned = result.xpEarned,
                nekocoinsEarned = result.nekocoinsEarned,
                coinStage = result.coinStage,
                nextQuestion = result.nextQuestion?.toResponse(),
                upcomingBoss = result.upcomingBoss?.let {
                    BossEncounterResponse(
                        bossPowerId = it.bossPowerId,
                        villainName = it.villainName,
                        powerName = it.powerName,
                        raridade = it.raridade,
                        effectType = it.effectType,
                        effectDuration = it.effectDuration,
                        description = it.description,
                    )
                },
                activeBossEffect = result.activeBossEffect,
            )
        )
    }

    @PostMapping("/sessions/{sessionId}/help")
    fun useHelp(
        @AuthenticationPrincipal userId: UUID?,
        @PathVariable sessionId: UUID,
        @RequestBody body: UseHelpRequest,
    ): ResponseEntity<HelpResultResponse> {
        val id = userId ?: return ResponseEntity.status(401).build()
        val result = gameUseCase.useHelp(id, sessionId, body.questionId, body.helpType)
        return ResponseEntity.ok(
            HelpResultResponse(
                effect = result.effect,
                eliminatedOptionIds = result.eliminatedOptionIds,
                correctOptionId = result.correctOptionId,
                newQuestion = result.newQuestion?.toResponse(),
                secondsAdded = result.secondsAdded,
                freezeSeconds = result.freezeSeconds,
                multiplier = result.multiplier,
            )
        )
    }

    @PostMapping("/sessions/{sessionId}/finish")
    fun finishSession(
        @AuthenticationPrincipal userId: UUID?,
        @PathVariable sessionId: UUID,
    ): ResponseEntity<Void> {
        val id = userId ?: return ResponseEntity.status(401).build()
        gameUseCase.abandonSession(id, sessionId)
        return ResponseEntity.noContent().build()
    }

    @GetMapping("/sessions/{sessionId}/summary")
    fun summary(
        @AuthenticationPrincipal userId: UUID?,
        @PathVariable sessionId: UUID,
    ): ResponseEntity<SessionSummaryResponse> {
        val id = userId ?: return ResponseEntity.status(401).build()
        val s = gameUseCase.getSessionSummary(id, sessionId)
        return ResponseEntity.ok(
            SessionSummaryResponse(
                sessionId = s.sessionId,
                status = s.status,
                score = s.score,
                questionsTotal = s.questionsTotal,
                correctCount = s.correctCount,
                maxCombo = s.maxCombo,
                xpEarned = s.xpEarned,
                nekocoinsEarned = s.nekocoinsEarned,
                achievements = s.achievements.map { a ->
                    SessionAchievementResponse(
                        ruleId = a.ruleId,
                        label = a.label,
                        bonusMetric = a.bonusMetric,
                        effectType = a.effectType,
                        bonusApplied = a.bonusApplied,
                        questionNumber = a.questionNumber,
                    )
                },
            )
        )
    }

    private fun Question.toResponse() = QuestionResponse(
        id = id,
        animeName = animeName,
        type = type,
        difficulty = difficulty,
        questionText = questionText,
        detailText = detailText,
        mediaUrl = mediaUrl,
        options = options.map { QuestionOptionResponse(id = it.id, optionText = it.optionText, sortOrder = it.sortOrder) },
    )
}
