package com.shonenquiz.api.domain.port.`in`

import com.shonenquiz.api.domain.model.AnswerResult
import com.shonenquiz.api.domain.model.GameModeConfigModel
import com.shonenquiz.api.domain.model.HelpResult
import com.shonenquiz.api.domain.model.Question
import com.shonenquiz.api.domain.model.SessionSummary
import com.shonenquiz.api.domain.model.StartSessionResult
import java.util.UUID

interface GameUseCase {
    fun startSession(userId: UUID, mode: String): StartSessionResult
    fun getGameModes(): List<GameModeConfigModel>
    fun getNextQuestion(userId: UUID, sessionId: UUID): Question?
    fun submitAnswer(userId: UUID, sessionId: UUID, questionId: UUID, selectedOptionId: UUID, timeTakenMs: Long, helpUsed: String? = null): AnswerResult
    fun useHelp(userId: UUID, sessionId: UUID, questionId: UUID, helpType: String): HelpResult
    fun getSessionSummary(userId: UUID, sessionId: UUID): SessionSummary
    fun abandonSession(userId: UUID, sessionId: UUID)
}
