package com.shonenquiz.api.domain.service

import com.shonenquiz.api.adapter.out.persistence.entity.BossPowerEntity
import com.shonenquiz.api.adapter.out.persistence.entity.GameModeConfigEntity
import com.shonenquiz.api.adapter.out.persistence.entity.GameRuleEntity
import com.shonenquiz.api.adapter.out.persistence.entity.GameSessionEntity
import com.shonenquiz.api.adapter.out.persistence.entity.QuestionEntity
import com.shonenquiz.api.adapter.out.persistence.entity.SessionAchievementEntity
import com.shonenquiz.api.adapter.out.persistence.entity.SessionAnswerEntity
import com.shonenquiz.api.adapter.out.persistence.repository.BossPowerJpaRepository
import com.shonenquiz.api.adapter.out.persistence.repository.FeatureToggleJpaRepository
import com.shonenquiz.api.adapter.out.persistence.repository.GameModeConfigJpaRepository
import com.shonenquiz.api.adapter.out.persistence.repository.GameRuleJpaRepository
import com.shonenquiz.api.adapter.out.persistence.repository.GameSessionJpaRepository
import com.shonenquiz.api.adapter.out.persistence.repository.LevelThresholdJpaRepository
import com.shonenquiz.api.adapter.out.persistence.repository.QuestionJpaRepository
import com.shonenquiz.api.adapter.out.persistence.repository.SessionAchievementJpaRepository
import com.shonenquiz.api.adapter.out.persistence.repository.SessionAnswerJpaRepository
import com.shonenquiz.api.adapter.out.persistence.repository.UserJpaRepository
import com.shonenquiz.api.domain.model.*
import com.shonenquiz.api.domain.port.`in`.GameUseCase
import org.springframework.data.domain.PageRequest
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
    private val modeConfigRepo: GameModeConfigJpaRepository,
    private val levelThresholdRepo: LevelThresholdJpaRepository,
    private val bossPowerRepo: BossPowerJpaRepository,
    private val featureToggleRepo: FeatureToggleJpaRepository,
) : GameUseCase {

    companion object {
        const val QUESTIONS_PER_SESSION = 20
        const val LIVES_PER_SESSION = 3
        const val BASE_POINTS = 5L
        const val MAX_SPEED_MULTIPLIER = 3.0
        const val QUESTION_TIME_LIMIT_MS = 30_000L
        const val ANTI_CHEAT_MIN_MS = 200L
        const val MAX_SESSION_COINS = 500

        val COIN_STAGES_PERCENT = listOf(0, 2, 4, 6, 9, 13, 18, 24, 31, 39, 48, 58, 69, 80, 90, 100)
        val SAFE_ZONE_STAGES = setOf(5, 10)
        val SHIELD_HELP_TYPES = setOf("haki", "izanagi", "full_counter")

        // Pesos de raridade para sorteio de boss (raro > epico > lendario)
        val RARITY_WEIGHTS = mapOf("raro" to 50, "epico" to 35, "lendario" to 15)

        // Efeitos de boss que são aplicados pelo servidor (não apenas pelo cliente)
        val SERVER_SIDE_BOSS_EFFECTS = setOf(
            "cancel_active_help", "wrong_answer", "extra_hard_question"
        )

        fun coinFloor(stage: Int): Int = when {
            stage >= 10 -> 10
            stage >= 5  -> 5
            else        -> 0
        }

        fun coinsForStage(stage: Int): Int =
            (MAX_SESSION_COINS * COIN_STAGES_PERCENT[stage.coerceIn(0, COIN_STAGES_PERCENT.lastIndex)] / 100.0).toInt()
    }

    // ── estrutura interna para pickQuestions com grupos ordenados ────────────

    private data class QuestionsResult(
        val questions: List<QuestionEntity>,
        val groupCounts: Map<String, Int>,   // difficulty -> quantas perguntas naquele grupo
        val impossiblePool: List<QuestionEntity>, // pool completo de impossible para boss extra_hard
    )

    override fun getGameModes(): List<GameModeConfigModel> =
        modeConfigRepo.findAllByActiveTrueOrderBySortOrder().map { it.toModel() }

    @Transactional
    override fun startSession(userId: UUID, mode: String): StartSessionResult {
        val user = userRepo.findById(userId).orElseThrow { IllegalArgumentException("User not found") }
        val modeConfig = modeConfigRepo.findByModeAndActiveTrue(mode)

        val total = modeConfig?.questionsTotal ?: QUESTIONS_PER_SESSION
        val picked = pickQuestionsStructured(userId, total)
        require(picked.questions.isNotEmpty()) { "No questions available for user" }

        // Identifica quais questões são boss (última de cada grupo de dificuldade, exceto impossible)
        val bossMap = assignBosses(picked.questions, picked.groupCounts, mode)

        // Se algum boss tem extra_hard_question, troca a pergunta daquele slot por uma impossible
        val finalQuestions = applyExtraHardBosses(picked.questions, bossMap, userId, picked.impossiblePool)

        val session = GameSessionEntity(
            userId = userId,
            mode = mode,
            league = user.league,
            questionsTotal = finalQuestions.size,
            maxLives = modeConfig?.lives ?: LIVES_PER_SESSION,
            questionIds = finalQuestions.joinToString(",") { it.id.toString() },
            bossAssignments = encodeBossAssignments(bossMap),
        )
        sessionRepo.save(session)

        return StartSessionResult(
            sessionId = session.id,
            firstQuestion = finalQuestions.first().toDomain(),
            questionsTotal = session.questionsTotal,
            timerSeconds = modeConfig?.timerSeconds ?: 30,
            lives = modeConfig?.lives ?: LIVES_PER_SESSION,
        )
    }

    override fun getNextQuestion(userId: UUID, sessionId: UUID): Question? {
        val session = sessionRepo.findByIdAndUserId(sessionId, userId)
            ?: throw IllegalArgumentException("Session not found")
        if (session.status != "active") return null

        val ids = parseIds(session.questionIds)
        val answeredIds = answerRepo.findBySessionId(sessionId).mapTo(mutableSetOf()) { it.questionId }
        val nextId = ids.firstOrNull { it !in answeredIds } ?: return null

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
        val selectedOption = question.options.firstOrNull { it.id == selectedOptionId }
            ?: throw IllegalArgumentException("Option not found")
        val correctOption = question.options.first { it.isCorrect }

        // ── boss da pergunta atual ───────────────────────────────────────────
        val bossMap = parseBossAssignments(session.bossAssignments)
        val currentBossPowerId = bossMap[questionId]
        val currentBoss = currentBossPowerId?.let { bossPowerRepo.findById(it).orElse(null) }

        // wrong_answer: inverte o resultado — acertar é errar, errar é acertar
        val isCorrect = if (currentBoss?.effectType == "wrong_answer")
            !selectedOption.isCorrect
        else
            selectedOption.isCorrect

        val modeConfig = modeConfigRepo.findByModeAndActiveTrue(session.mode)

        // ── aplicar efeitos de boss server-side na pergunta atual ────────────
        if (currentBoss != null) {
            applyServerSideBossEffect(session, currentBoss, isCorrect)
        }

        val rawPoints = if (isCorrect) calculatePoints(session, timeTakenMs, modeConfig) else 0L
        val points = if (isCorrect && session.pointMultiplier != 1.0) {
            val boosted = (rawPoints * session.pointMultiplier).toLong()
            session.pointMultiplier = 1.0
            boosted
        } else rawPoints

        if (isCorrect) {
            session.wrongStreak = 0
            session.currentCombo += 1
            if (session.currentCombo > session.maxCombo) session.maxCombo = session.currentCombo
            session.coinStage = minOf(session.coinStage + 1, COIN_STAGES_PERCENT.lastIndex)
        } else {
            session.wrongStreak += 1
            session.currentCombo = 0
            if (helpUsed !in SHIELD_HELP_TYPES) {
                session.livesUsed += 1
            }
            val floor = coinFloor(session.coinStage)
            session.coinStage = maxOf(floor, session.coinStage - 1)
        }

        session.score += points
        session.questionsAnswered += 1
        if (isCorrect) session.correctCount += 1

        // ── efeito boss persistente ──────────────────────────────────────────
        val activeBossEffect = decrementActiveBossEffect(session, currentBoss)

        val rules = ruleRepo.findActiveByMode(session.mode)
        evaluateMidSessionRules(session, rules)

        val livesRemaining = session.maxLives + session.bonusLives - session.livesUsed
        val allAnswered = session.questionsAnswered >= session.questionsTotal
        val outOfLives = livesRemaining <= 0

        if (allAnswered || outOfLives) {
            session.status = if (outOfLives) "lost" else "won"
            session.finishedAt = OffsetDateTime.now()
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

        // ── boss da próxima pergunta ─────────────────────────────────────────
        val upcomingBoss = if (nextQuestion != null) {
            val nextId = parseIds(session.questionIds)
                .firstOrNull { it !in answerRepo.findBySessionId(sessionId).map { a -> a.questionId }.toSet() + questionId }
            val nextBossId = nextId?.let { bossMap[it] }
            nextBossId?.let { bossPowerRepo.findById(it).orElse(null)?.toBossEncounter() }
        } else null

        return AnswerResult(
            isCorrect = isCorrect,
            correctOptionId = correctOption.id,
            pointsEarned = points,
            currentCombo = session.currentCombo,
            maxCombo = session.maxCombo,
            correctCount = session.correctCount,
            livesRemaining = livesRemaining.coerceAtLeast(0),
            sessionStatus = session.status,
            xpEarned = session.xpEarned,
            nekocoinsEarned = session.nekocoinsEarned,
            nextQuestion = nextQuestion,
            questionsAnswered = session.questionsAnswered,
            questionsTotal = session.questionsTotal,
            score = session.score,
            coinStage = session.coinStage,
            upcomingBoss = upcomingBoss,
            activeBossEffect = activeBossEffect,
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
            "sharingan", "nen_gon", "infinito", "bankai" -> {
                val wrongOptions = question.options.filter { !it.isCorrect }.shuffled()
                val count = if (helpType == "nen_gon") minOf(2, wrongOptions.size - 1).coerceAtLeast(1) else minOf(2, wrongOptions.size)
                HelpResult(effect = "eliminate_options", eliminatedOptionIds = wrongOptions.take(count).map { it.id })
            }
            "chidori", "explosion" -> {
                val wrongOptions = question.options.filter { !it.isCorrect }.shuffled()
                HelpResult(effect = "eliminate_options", eliminatedOptionIds = wrongOptions.take(1).map { it.id })
            }
            "eye_of_zeno", "mob_100", "geass" -> {
                val correct = question.options.first { it.isCorrect }
                HelpResult(effect = "reveal_correct", correctOptionId = correct.id)
            }
            "gear_second" -> HelpResult(effect = "add_seconds", secondsAdded = 10)
            "star_platinum" -> HelpResult(effect = "add_seconds", secondsAdded = 15)
            "za_warudo"   -> HelpResult(effect = "freeze_timer_seconds", freezeSeconds = 5)
            "reading_steiner" -> HelpResult(effect = "freeze_timer")
            "dr_stone", "respiracao" -> HelpResult(effect = "reveal_hint")
            "haki", "izanagi", "full_counter" -> HelpResult(effect = "shield")
            "phoenix", "crazy_diamond", "smash", "emperor_time" -> {
                session.bonusLives += 1
                sessionRepo.save(session)
                HelpResult(effect = "extra_life")
            }
            "requiem" -> {
                if (session.livesUsed > 0) {
                    session.livesUsed -= 1
                    session.wrongStreak = 0
                    session.coinStage = minOf(session.coinStage + 1, COIN_STAGES_PERCENT.lastIndex)
                    sessionRepo.save(session)
                    HelpResult(effect = "revert_wrong")
                } else HelpResult(effect = "no_op")
            }
            "final_flash", "one_for_all", "serious_punch" -> {
                session.pointMultiplier = 2.0
                sessionRepo.save(session)
                HelpResult(effect = "multiply_points", multiplier = 2.0)
            }
            "lua_superior" -> {
                session.pointMultiplier = 3.0
                sessionRepo.save(session)
                HelpResult(effect = "multiply_points", multiplier = 3.0)
            }
            "chama" -> {
                session.pointMultiplier = 1.5
                sessionRepo.save(session)
                HelpResult(effect = "multiply_points", multiplier = 1.5)
            }
            "teleport", "godspeed" -> {
                val ids = parseIds(session.questionIds).toMutableList()
                val answeredIds = answerRepo.findBySessionId(sessionId).mapTo(mutableSetOf()) { it.questionId }
                val currentIndex = ids.indexOfFirst { it == questionId }
                if (currentIndex >= 0) {
                    ids.removeAt(currentIndex)
                    session.questionIds = ids.joinToString(",")
                    session.questionsTotal = ids.size
                    sessionRepo.save(session)
                }
                val nextId = ids.firstOrNull { it !in answeredIds }
                val nextQ = nextId?.let { questionRepo.findById(it).orElse(null)?.toDomain() }
                if (nextQ != null) HelpResult(effect = "skip_question", newQuestion = nextQ)
                else HelpResult(effect = "no_op")
            }
            "death_note", "room" -> {
                val ids = parseIds(session.questionIds).toMutableList()
                val answeredIds = answerRepo.findBySessionId(sessionId).mapTo(mutableSetOf()) { it.questionId }
                val currentIndex = ids.indexOfFirst { it == questionId }
                val candidates = ids.filter { it != questionId && it !in answeredIds }
                val newId = candidates.randomOrNull()
                if (newId != null && currentIndex >= 0) {
                    ids.removeAt(currentIndex)
                    ids.remove(newId)
                    ids.add(currentIndex, newId)
                    ids.add(questionId)
                    session.questionIds = ids.joinToString(",")
                    sessionRepo.save(session)
                    val newQ = questionRepo.findById(newId).orElse(null)
                    HelpResult(effect = "swap_question", newQuestion = newQ?.toDomain())
                } else HelpResult(effect = "no_op")
            }
            else -> HelpResult(effect = "no_op")
        }
    }

    @Transactional
    override fun abandonSession(userId: UUID, sessionId: UUID) {
        val session = sessionRepo.findByIdAndUserId(sessionId, userId)
            ?: throw IllegalArgumentException("Session not found")
        if (session.status != "active") return
        session.status = "abandoned"
        session.finishedAt = OffsetDateTime.now()
        sessionRepo.save(session)
    }

    override fun getSessionSummary(userId: UUID, sessionId: UUID): SessionSummary {
        val session = sessionRepo.findByIdAndUserId(sessionId, userId)
            ?: throw IllegalArgumentException("Session not found")
        val achievementEntities = achievementRepo.findBySessionIdOrderByTriggeredAt(sessionId)
        val rulesById = ruleRepo.findAllById(achievementEntities.map { it.ruleId }).associateBy { it.id }
        val achievements = achievementEntities.mapNotNull { a ->
            val rule = rulesById[a.ruleId] ?: return@mapNotNull null
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

    // ── Boss helpers ──────────────────────────────────────────────────────────

    /**
     * Retorna perguntas em grupos ordenados por dificuldade (easy → medium → hard → impossible),
     * cada grupo internamente embaralhado.
     */
    private fun isToggleEnabled(key: String): Boolean =
        featureToggleRepo.findByKey(key)?.enabled ?: false

    private fun pickQuestionsStructured(userId: UUID, total: Int): QuestionsResult {
        val impossible = maxOf(1, total / 10)
        val remaining  = total - impossible
        val perDiff    = remaining / 3
        val easyCount  = perDiff + (remaining - perDiff * 3)

        val excludedIds: Set<UUID> = if (isToggleEnabled("no_repeat_questions")) {
            val recentSessions = sessionRepo.findTop5ByUserIdAndStatusInOrderByStartedAtDesc(
                userId, listOf("won")
            )
            recentSessions.flatMap { s -> answerRepo.findBySessionId(s.id).map { it.questionId } }.toSet()
        } else emptySet()

        fun fetchByDiff(diff: String, count: Int): List<QuestionEntity> {
            val ids = if (excludedIds.isEmpty())
                questionRepo.findRandomIdsByDifficulty(userId, diff, PageRequest.of(0, count))
            else
                questionRepo.findRandomIdsByDifficultyExcluding(userId, diff, excludedIds, PageRequest.of(0, count))
            return if (ids.isEmpty()) emptyList() else questionRepo.findWithDetailsByIds(ids)
        }

        val easy   = fetchByDiff("easy",       easyCount)
        val medium = fetchByDiff("medium",     perDiff)
        val hard   = fetchByDiff("hard",       perDiff)
        val imp    = fetchByDiff("impossible", impossible)

        // Se não há impossible suficiente, completa com hard não usado
        val impPhase = if (imp.size < impossible) {
            val hardUsedIds = hard.map { it.id }.toSet()
            val extraIds = if (excludedIds.isEmpty())
                questionRepo.findRandomIdsByDifficulty(userId, "hard", PageRequest.of(0, impossible - imp.size + hard.size))
            else
                questionRepo.findRandomIdsByDifficultyExcluding(userId, "hard", excludedIds, PageRequest.of(0, impossible - imp.size + hard.size))
            val extraHard = if (extraIds.isEmpty()) emptyList()
                else questionRepo.findWithDetailsByIds(extraIds).filter { it.id !in hardUsedIds }.take(impossible - imp.size)
            imp + extraHard
        } else imp

        val picked = easy + medium + hard + impPhase
        return QuestionsResult(
            questions = picked,
            groupCounts = mapOf(
                "easy"       to easy.size,
                "medium"     to medium.size,
                "hard"       to hard.size,
                "impossible" to impPhase.size,
            ),
            impossiblePool = impPhase,
        )
    }

    /**
     * Para cada grupo de dificuldade (exceto impossible), sorteia um boss.
     * Retorna mapa questionId -> BossPowerEntity para as perguntas boss.
     */
    private fun assignBosses(
        questions: List<QuestionEntity>,
        groupCounts: Map<String, Int>,
        mode: String,
    ): Map<UUID, BossPowerEntity> {
        val candidates = bossPowerRepo.findAllActiveForMode(mode)
        if (candidates.isEmpty()) return emptyMap()

        val result = mutableMapOf<UUID, BossPowerEntity>()
        var cursor = 0
        for (diff in listOf("easy", "medium", "hard")) {
            val count = groupCounts[diff] ?: 0
            if (count == 0) continue
            val lastIndex = cursor + count - 1
            if (lastIndex < questions.size) {
                selectBoss(candidates)?.let { boss ->
                    result[questions[lastIndex].id] = boss
                }
            }
            cursor += count
        }
        return result
    }

    /** Sorteio ponderado por raridade: raro=50, epico=35, lendario=15 */
    private fun selectBoss(candidates: List<BossPowerEntity>): BossPowerEntity? {
        val weighted = candidates.flatMap { boss ->
            val weight = RARITY_WEIGHTS[boss.raridade] ?: 10
            List(weight) { boss }
        }
        return weighted.randomOrNull()
    }

    /**
     * Se algum boss tem efeito extra_hard_question, troca a pergunta daquele slot
     * por uma do pool de impossível que ainda não esteja na sessão.
     */
    private fun applyExtraHardBosses(
        questions: List<QuestionEntity>,
        bossMap: Map<UUID, BossPowerEntity>,
        userId: UUID,
        impossiblePool: List<QuestionEntity>,
    ): List<QuestionEntity> {
        val extraHardBossIds = bossMap.entries
            .filter { it.value.effectType == "extra_hard_question" }
            .map { it.key }
            .toSet()

        if (extraHardBossIds.isEmpty()) return questions

        val currentIds = questions.map { it.id }.toSet()
        val extras = impossiblePool.filter { it.id !in currentIds }

        val mutable = questions.toMutableList()
        var poolCursor = 0
        for (i in mutable.indices) {
            if (mutable[i].id in extraHardBossIds && poolCursor < extras.size) {
                mutable[i] = extras[poolCursor++]
            }
        }
        return mutable
    }

    private fun applyServerSideBossEffect(session: GameSessionEntity, boss: BossPowerEntity, isCorrect: Boolean) {
        when (boss.effectType) {
            "cancel_active_help" -> session.pointMultiplier = 1.0
            // wrong_answer: isCorrect invertido acima; vidas aplicam naturalmente
            // extra_hard_question: tratado no startSession
        }
    }

    /**
     * Gerencia o efeito persistente de boss na sessão.
     * Retorna a string "effectType:roundsRemaining" a ser devolvida ao cliente,
     * ou null se não há efeito ativo.
     */
    private fun decrementActiveBossEffect(session: GameSessionEntity, currentBoss: BossPowerEntity?): String? {
        // Novo boss com duração > 1 inicia o efeito persistente
        if (currentBoss != null && currentBoss.effectDuration > 1) {
            val remaining = currentBoss.effectDuration - 1
            session.activeBossEffect = "${currentBoss.effectType}:$remaining"
            return session.activeBossEffect
        }

        // Decrementa efeito já ativo
        val current = session.activeBossEffect
        if (current != null) {
            val parts = current.split(":")
            val effectType = parts[0]
            val remaining = parts.getOrNull(1)?.toIntOrNull() ?: 0
            return if (remaining <= 1) {
                session.activeBossEffect = null
                null
            } else {
                val newEffect = "$effectType:${remaining - 1}"
                session.activeBossEffect = newEffect
                newEffect
            }
        }

        return null
    }

    private fun encodeBossAssignments(bossMap: Map<UUID, BossPowerEntity>): String =
        bossMap.entries.joinToString(",") { (questionId, boss) -> "$questionId:${boss.id}" }

    private fun parseBossAssignments(encoded: String): Map<UUID, UUID> {
        if (encoded.isBlank()) return emptyMap()
        return encoded.split(",").associate { pair ->
            val (qId, bId) = pair.split(":")
            UUID.fromString(qId) to UUID.fromString(bId)
        }
    }

    private fun BossPowerEntity.toBossEncounter() = BossEncounter(
        bossPowerId  = id,
        villainName  = villainName,
        powerName    = powerName,
        raridade     = raridade,
        effectType   = effectType,
        effectDuration = effectDuration,
        description  = description,
    )

    // ── Question helpers ──────────────────────────────────────────────────────

    private fun parseIds(csv: String): List<UUID> =
        if (csv.isBlank()) emptyList()
        else csv.split(",").map { UUID.fromString(it.trim()) }

    private fun calculatePoints(session: GameSessionEntity, timeTakenMs: Long, modeConfig: GameModeConfigEntity?): Long {
        val basePoints = modeConfig?.basePoints?.toLong() ?: BASE_POINTS
        val maxSpeed   = modeConfig?.maxSpeedMultiplier  ?: MAX_SPEED_MULTIPLIER
        val timeLimit  = modeConfig?.questionTimeLimitMs ?: QUESTION_TIME_LIMIT_MS
        val speedRatio = 1.0 - (timeTakenMs.toDouble() / timeLimit).coerceIn(0.0, 1.0)
        val speedMultiplier = 1.0 + speedRatio * (maxSpeed - 1.0)
        val comboMultiplier = 1.0 + (session.currentCombo * 0.1)
        val leagueMultiplier = leagueMultiplier(session.league)
        return (basePoints * speedMultiplier * comboMultiplier * leagueMultiplier).toLong()
    }

    private fun leagueMultiplier(league: String) = when (league) {
        "silver"  -> 1.3
        "gold"    -> 1.6
        "diamond" -> 2.0
        "master"  -> 2.5
        else      -> 1.0
    }

    private fun calculateRewards(session: GameSessionEntity): Pair<Int, Int> {
        val xp = (20 + (session.correctCount * 5) + (session.maxCombo * 2)).coerceAtLeast(0)
        val coins = coinsForStage(session.coinStage)
        return xp to coins
    }

    private fun applyRewardsToUser(userId: UUID, xp: Int, coins: Int) {
        val user = userRepo.findById(userId).orElse(null) ?: return
        user.xp += xp
        user.nekocoins += coins
        val newLevel = levelThresholdRepo.findFirstByMinXpLessThanEqualOrderByMinXpDesc(user.xp)?.level
            ?: 1.toShort()
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
                session.coinStage = 0
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
        animeName = anime?.name ?: "",
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
