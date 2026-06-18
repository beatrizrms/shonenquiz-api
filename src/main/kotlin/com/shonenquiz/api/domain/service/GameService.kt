package com.shonenquiz.api.domain.service

import com.shonenquiz.api.adapter.out.persistence.entity.GameRuleEntity
import com.shonenquiz.api.adapter.out.persistence.entity.GameSessionEntity
import com.shonenquiz.api.adapter.out.persistence.entity.QuestionEntity
import com.shonenquiz.api.adapter.out.persistence.entity.SessionAchievementEntity
import com.shonenquiz.api.adapter.out.persistence.entity.SessionAnswerEntity
import com.shonenquiz.api.adapter.out.persistence.repository.GameRuleJpaRepository
import com.shonenquiz.api.adapter.out.persistence.repository.GameSessionJpaRepository
import com.shonenquiz.api.adapter.out.persistence.repository.QuestionJpaRepository
import com.shonenquiz.api.adapter.out.persistence.repository.SessionAchievementJpaRepository
import com.shonenquiz.api.adapter.out.persistence.repository.SessionAnswerJpaRepository
import com.shonenquiz.api.adapter.out.persistence.repository.UserJpaRepository
import com.shonenquiz.api.domain.model.*
import kotlin.random.Random
import com.shonenquiz.api.domain.port.`in`.GameUseCase
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional
import java.time.OffsetDateTime
import java.util.UUID

@Service
class GameService(
    private val sessionRepo: GameSessionJpaRepository,
    private val answerRepo: SessionAnswerJpaRepository,
    private val questionRepo: QuestionJpaRepository,
    private val userRepo: UserJpaRepository,
    private val ruleRepo: GameRuleJpaRepository,
    private val achievementRepo: SessionAchievementJpaRepository,
) : GameUseCase {

    companion object {
        const val QUESTIONS_PER_SESSION = 15
        const val LIVES_PER_SESSION = 3
        const val BASE_POINTS = 5L
        const val MAX_SPEED_MULTIPLIER = 3.0
        const val QUESTION_TIME_LIMIT_MS = 30_000L
        const val ANTI_CHEAT_MIN_MS = 200L
        const val MAX_SESSION_COINS = 500

        // % do MAX_SESSION_COINS por estágio (índice = nº de acertos consecutivos acumulados)
        val COIN_STAGES_PERCENT = listOf(0, 2, 4, 6, 9, 13, 18, 24, 31, 39, 48, 58, 69, 80, 90, 100)
        val SAFE_ZONE_STAGES = setOf(5, 10)

        fun coinFloor(stage: Int): Int = when {
            stage >= 10 -> 10
            stage >= 5  -> 5
            else        -> 0
        }

        fun coinsForStage(stage: Int): Int =
            (MAX_SESSION_COINS * COIN_STAGES_PERCENT[stage.coerceIn(0, COIN_STAGES_PERCENT.lastIndex)] / 100.0).toInt()
    }

    @Transactional
    override fun startSession(userId: UUID, mode: String): Pair<UUID, Question> {
        val user = userRepo.findById(userId).orElseThrow { IllegalArgumentException("User not found") }

        val questions = pickQuestions(userId)
        require(questions.isNotEmpty()) { "No questions available for user" }

        val session = GameSessionEntity(
            userId = userId,
            mode = mode,
            league = user.league,
            questionsTotal = minOf(QUESTIONS_PER_SESSION, questions.size),
            questionIds = questions.joinToString(",") { q -> q.id.toString() },
        )
        sessionRepo.save(session)

        return session.id to questions.first().toDomain()
    }

    override fun getNextQuestion(userId: UUID, sessionId: UUID): Question? {
        val session = sessionRepo.findByIdAndUserId(sessionId, userId)
            ?: throw IllegalArgumentException("Session not found")
        if (session.status != "active") return null

        val ids = parseIds(session.questionIds)
        val answeredIds = answerRepo.findBySessionId(sessionId).mapTo(mutableSetOf()) { a -> a.questionId }
        val nextId = ids.firstOrNull { id -> id !in answeredIds } ?: return null

        return questionRepo.findById(nextId).orElse(null)?.toDomain()
    }

    @Transactional
    override fun submitAnswer(
        userId: UUID,
        sessionId: UUID,
        questionId: UUID,
        selectedOptionId: UUID,
        timeTakenMs: Long,
        helpUsed: String?,
    ): AnswerResult {
        require(timeTakenMs >= ANTI_CHEAT_MIN_MS) { "Response too fast" }

        val session = sessionRepo.findByIdAndUserId(sessionId, userId)
            ?: throw IllegalArgumentException("Session not found")
        require(session.status == "active") { "Session is not active" }

        val alreadyAnswered = answerRepo.existsBySessionIdAndQuestionId(sessionId, questionId)
        require(!alreadyAnswered) { "Question already answered" }

        val question = questionRepo.findById(questionId)
            .orElseThrow { IllegalArgumentException("Question not found") }
        val selectedOption = question.options.firstOrNull { opt -> opt.id == selectedOptionId }
            ?: throw IllegalArgumentException("Option not found")
        val correctOption = question.options.first { opt -> opt.isCorrect }

        val isCorrect = selectedOption.isCorrect
        val points = if (isCorrect) calculatePoints(session, timeTakenMs) else 0L

        if (isCorrect) {
            session.wrongStreak = 0
            session.currentCombo += 1
            if (session.currentCombo > session.maxCombo) session.maxCombo = session.currentCombo
            session.coinStage = minOf(session.coinStage + 1, COIN_STAGES_PERCENT.lastIndex)
        } else {
            session.wrongStreak += 1
            session.currentCombo = 0
            if (helpUsed != "haki") session.livesUsed += 1   // haki absorve o erro sem perder vida
            val floor = coinFloor(session.coinStage)
            session.coinStage = maxOf(floor, session.coinStage - 1)
        }

        session.score += points
        session.questionsAnswered += 1
        if (isCorrect) session.correctCount += 1

        // Avalia regras mid-session (consecutive_correct / consecutive_wrong)
        val rules = ruleRepo.findActiveByMode(session.mode)
        evaluateMidSessionRules(session, rules)

        val livesRemaining = LIVES_PER_SESSION + session.bonusLives - session.livesUsed
        val allAnswered = session.questionsAnswered >= session.questionsTotal
        val outOfLives = livesRemaining <= 0

        if (allAnswered || outOfLives) {
            session.status = if (outOfLives) "lost" else "won"
            session.finishedAt = OffsetDateTime.now()
            // Avalia regras de fim de sessão (accuracy_final)
            evaluateFinalRules(session, rules)
            val (xp, coins) = calculateRewards(session)
            session.xpEarned = xp
            session.nekocoinsEarned = coins
            applyRewardsToUser(userId, xp, coins)
        }

        sessionRepo.save(session)

        answerRepo.save(SessionAnswerEntity(
            sessionId = sessionId,
            questionId = questionId,
            selectedOptionId = selectedOptionId,
            isCorrect = isCorrect,
            timeTakenMs = timeTakenMs,
            pointsEarned = points,
        ))

        val nextQuestion = if (session.status == "active") getNextQuestion(userId, sessionId) else null

        return AnswerResult(
            isCorrect = isCorrect,
            correctOptionId = correctOption.id,
            pointsEarned = points,
            currentCombo = session.currentCombo,
            livesRemaining = livesRemaining.coerceAtLeast(0),
            sessionStatus = session.status,
            xpEarned = session.xpEarned,
            nekocoinsEarned = session.nekocoinsEarned,
            nextQuestion = nextQuestion,
            questionsAnswered = session.questionsAnswered,
            questionsTotal = session.questionsTotal,
            score = session.score,
            coinStage = session.coinStage,
        )
    }

    @Transactional
    override fun useHelp(userId: UUID, sessionId: UUID, questionId: UUID, helpType: String): HelpResult {
        val session = sessionRepo.findByIdAndUserId(sessionId, userId)
            ?: throw IllegalArgumentException("Session not found")
        require(session.status == "active") { "Session is not active" }

        val question = questionRepo.findById(questionId)
            .orElseThrow { IllegalArgumentException("Question not found") }

        return when (helpType) {
            "sharingan", "nen_gon" -> {
                val wrongOptions = question.options.filter { !it.isCorrect }.shuffled()
                val count = if (helpType == "nen_gon") minOf(2, wrongOptions.size - 1).coerceAtLeast(1) else minOf(2, wrongOptions.size)
                HelpResult(effect = "eliminate_options", eliminatedOptionIds = wrongOptions.take(count).map { it.id })
            }
            "eye_of_zeno" -> {
                val correct = question.options.first { it.isCorrect }
                HelpResult(effect = "reveal_correct", correctOptionId = correct.id)
            }
            "gear_second" -> HelpResult(effect = "add_seconds", secondsAdded = 10)
            "za_warudo"   -> HelpResult(effect = "freeze_timer_seconds", freezeSeconds = 5)
            "reading_steiner" -> HelpResult(effect = "freeze_timer")
            "dr_stone"    -> HelpResult(effect = "reveal_hint")
            "haki"        -> HelpResult(effect = "shield")
            "phoenix"     -> {
                session.bonusLives += 1
                sessionRepo.save(session)
                HelpResult(effect = "extra_life")
            }
            "teleport" -> {
                val ids = parseIds(session.questionIds).toMutableList()
                val answeredIds = answerRepo.findBySessionId(sessionId).mapTo(mutableSetOf()) { it.questionId }
                val currentIndex = ids.indexOfFirst { it == questionId }
                if (currentIndex >= 0) {
                    ids.removeAt(currentIndex)
                    session.questionIds = ids.joinToString(",")
                    session.questionsTotal = maxOf(session.questionsAnswered + 1, ids.size)
                    sessionRepo.save(session)
                }
                val nextId = ids.firstOrNull { it !in answeredIds }
                val nextQ = nextId?.let { questionRepo.findById(it).orElse(null)?.toDomain() }
                if (nextQ != null) HelpResult(effect = "skip_question", newQuestion = nextQ)
                else HelpResult(effect = "no_op")
            }
            "death_note"  -> {
                val ids = parseIds(session.questionIds).toMutableList()
                val answeredIds = answerRepo.findBySessionId(sessionId).mapTo(mutableSetOf()) { it.questionId }
                val currentIndex = ids.indexOfFirst { it == questionId }
                val candidates = ids.filter { it != questionId && it !in answeredIds }
                val newId = candidates.randomOrNull()
                if (newId != null && currentIndex >= 0) {
                    val newIndex = ids.indexOf(newId)
                    ids[currentIndex] = newId
                    ids[newIndex] = questionId    // pergunta antiga vai para outra posição (será ignorada ou respondida depois)
                    session.questionIds = ids.joinToString(",")
                    sessionRepo.save(session)
                    val newQ = questionRepo.findById(newId).orElse(null)
                    HelpResult(effect = "swap_question", newQuestion = newQ?.toDomain())
                } else {
                    HelpResult(effect = "no_op")
                }
            }
            else -> HelpResult(effect = "no_op")
        }
    }

    override fun getSessionSummary(userId: UUID, sessionId: UUID): SessionSummary {
        val session = sessionRepo.findByIdAndUserId(sessionId, userId)
            ?: throw IllegalArgumentException("Session not found")
        val achievements = achievementRepo.findBySessionIdOrderByTriggeredAt(sessionId)
            .mapNotNull { a ->
                val rule = ruleRepo.findById(a.ruleId).orElse(null) ?: return@mapNotNull null
                SessionAchievement(
                    ruleId = rule.id,
                    label = rule.label,
                    bonusMetric = rule.bonusMetric,
                    effectType = rule.effectType,
                    bonusApplied = a.bonusApplied,
                    questionNumber = a.questionNumber,
                )
            }
        return SessionSummary(
            sessionId = session.id,
            status = session.status,
            score = session.score,
            questionsTotal = session.questionsTotal,
            correctCount = session.correctCount,
            maxCombo = session.maxCombo,
            xpEarned = session.xpEarned,
            nekocoinsEarned = session.nekocoinsEarned,
            achievements = achievements,
        )
    }

    // ── helpers ───────────────────────────────────────────────────────────────

    private fun parseIds(csv: String): List<UUID> =
        if (csv.isBlank()) emptyList()
        else csv.split(",").map { s -> UUID.fromString(s.trim()) }

    private fun pickQuestions(userId: UUID): List<QuestionEntity> =
        questionRepo.findRandomForUserNoExclusion(userId).take(QUESTIONS_PER_SESSION)

    private fun calculatePoints(session: GameSessionEntity, timeTakenMs: Long): Long {
        val speedRatio = 1.0 - (timeTakenMs.toDouble() / QUESTION_TIME_LIMIT_MS).coerceIn(0.0, 1.0)
        val speedMultiplier = 1.0 + speedRatio * (MAX_SPEED_MULTIPLIER - 1.0)
        val comboMultiplier = 1.0 + (session.currentCombo * 0.1)
        val leagueMultiplier = leagueMultiplier(session.league)
        return (BASE_POINTS * speedMultiplier * comboMultiplier * leagueMultiplier).toLong()
    }

    private fun leagueMultiplier(league: String) = when (league) {
        "silver"   -> 1.3
        "gold"     -> 1.6
        "diamond"  -> 2.0
        "master"   -> 2.5
        else       -> 1.0
    }

    private fun calculateRewards(session: GameSessionEntity): Pair<Int, Int> {
        val xp = (20 + (session.correctCount * 5) + (session.maxCombo * 2)).coerceAtLeast(0)
        val coins = coinsForStage(session.coinStage)
        return xp to coins
    }

    @Transactional
    private fun applyRewardsToUser(userId: UUID, xp: Int, coins: Int) {
        val user = userRepo.findById(userId).orElse(null) ?: return
        user.xp += xp
        user.nekocoins += coins
        val newLevel = (user.xp / 100 + 1).coerceAtMost(10).toShort()
        if (newLevel > user.level) user.level = newLevel
        userRepo.save(user)
    }

    // ── Rule evaluation ───────────────────────────────────────────────────────

    private fun evaluateMidSessionRules(session: GameSessionEntity, rules: List<GameRuleEntity>) {
        for (rule in rules) {
            if (rule.triggerType == "accuracy_final") continue
            if (achievementRepo.existsBySessionIdAndRuleId(session.id, rule.id)) continue
            val triggered = when (rule.triggerType) {
                "consecutive_correct" -> session.currentCombo >= rule.triggerValue
                "consecutive_wrong"   -> session.wrongStreak >= rule.triggerValue
                else -> false
            }
            if (triggered) triggerRule(session, rule)
        }
    }

    private fun evaluateFinalRules(session: GameSessionEntity, rules: List<GameRuleEntity>) {
        val accuracy = if (session.questionsAnswered > 0)
            (session.correctCount * 100) / session.questionsAnswered else 0

        for (rule in rules.filter { it.triggerType in listOf("accuracy_final", "fast_answers_percent") }) {
            if (achievementRepo.existsBySessionIdAndRuleId(session.id, rule.id)) continue
            val triggered = when (rule.triggerType) {
                "accuracy_final" -> accuracy >= rule.triggerValue
                "fast_answers_percent" -> {
                    val threshold = rule.triggerThreshold?.toLong() ?: continue
                    val fastCount = answerRepo.countBySessionIdAndTimeTakenMsLessThanEqual(session.id, threshold)
                    val percent = if (session.questionsAnswered > 0)
                        (fastCount * 100) / session.questionsAnswered else 0
                    percent >= rule.triggerValue
                }
                else -> false
            }
            if (triggered) triggerRule(session, rule)
        }
    }

    private fun triggerRule(session: GameSessionEntity, rule: GameRuleEntity) {
        val bonusApplied: Double? = when (rule.effectType) {
            "bonus_percent" -> {
                val bonus = (session.score * (rule.effectValue!! / 100.0))
                session.score += bonus.toLong()
                bonus
            }
            "zero" -> {
                session.score = 0
                session.coinStage = 0  // ignora zonas seguras
                null
            }
            else -> null
        }
        achievementRepo.save(
            SessionAchievementEntity(
                sessionId = session.id,
                ruleId = rule.id,
                bonusApplied = bonusApplied,
                questionNumber = session.questionsAnswered,
            )
        )
    }

    private fun QuestionEntity.toDomain() = Question(
        id = id,
        animeId = animeId,
        type = type,
        difficulty = difficulty,
        questionText = questionText,
        detailText = detailText,
        mediaUrl = mediaUrl,
        options = options.map { opt ->
            QuestionOption(id = opt.id, optionText = opt.optionText, isCorrect = opt.isCorrect, sortOrder = opt.sortOrder)
        }.shuffled(),
    )
}
