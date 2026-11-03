package com.shonenquiz.api.domain.service

import com.shonenquiz.api.adapter.`in`.rest.dto.AchievementResponse
import com.shonenquiz.api.adapter.out.persistence.entity.UserAchievementEntity
import com.shonenquiz.api.adapter.out.persistence.repository.GameSessionJpaRepository
import com.shonenquiz.api.adapter.out.persistence.repository.UserAchievementJpaRepository
import com.shonenquiz.api.adapter.out.persistence.repository.UserJpaRepository
import com.shonenquiz.api.domain.model.User
import com.shonenquiz.api.domain.model.UserStats
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional
import java.util.UUID

@Service
class AchievementService(
    private val achievementRepo: UserAchievementJpaRepository,
    private val sessionRepo: GameSessionJpaRepository,
    private val userRepo: UserJpaRepository,
) {
    data class AchievementDef(
        val id: String,
        val label: String,
        val emoji: String,
        val condition: (User, UserStats) -> Boolean,
    )

    val catalog = listOf(
        AchievementDef("combo_10",       "Combo ×10",       "🔥") { _, s -> s.maxCombo >= 10 },
        AchievementDef("accuracy_100",   "100% precisão",   "🎯") { _, s -> s.accuracy == 100 },
        AchievementDef("level_5",        "Nv 5",            "⭐") { u, _ -> u.level >= 5 },
        AchievementDef("level_9",        "Rei dos Piratas", "👑") { u, _ -> u.level >= 9 },
        AchievementDef("level_10",       "Lendário",        "✨") { u, _ -> u.level >= 10 },
        AchievementDef("league_diamond", "Diamante",        "💎") { u, _ -> u.league == "diamond" || u.league == "master" },
        AchievementDef("league_master",  "Mestre",          "⚔️") { u, _ -> u.league == "master" },
    )

    @Transactional
    fun unlockEarned(userId: UUID): List<AchievementResponse> {
        val userEntity = userRepo.findById(userId).orElse(null) ?: return emptyList()
        val user = User(
            id = userEntity.id,
            username = userEntity.username,
            email = userEntity.email,
            level = userEntity.level,
            xp = userEntity.xp,
            nekocoins = userEntity.nekocoins,
            gems = userEntity.gems,
            lives = userEntity.lives,
            livesLastRegen = userEntity.livesLastRegen,
            league = userEntity.league,
            leaguePoints = userEntity.leaguePoints,
            avatarCatId = userEntity.avatarCatId,
            createdAt = userEntity.createdAt,
        )
        val stats = computeStats(userId)
        val unlocked = achievementRepo.findByUserId(userId).associateBy { it.achievementId }

        return catalog.map { def ->
            val alreadyUnlocked = unlocked[def.id]
            val nowUnlocked = alreadyUnlocked != null || def.condition(user, stats)
            if (nowUnlocked && alreadyUnlocked == null) {
                achievementRepo.save(UserAchievementEntity(userId = userId, achievementId = def.id))
            }
            AchievementResponse(
                achievementId = def.id,
                label = def.label,
                emoji = def.emoji,
                unlocked = nowUnlocked,
                unlockedAt = alreadyUnlocked?.unlockedAt,
            )
        }
    }

    private fun computeStats(userId: UUID): UserStats {
        val total = sessionRepo.countFinished(userId)
        val correct = sessionRepo.sumCorrectCount(userId)
        val answered = sessionRepo.sumQuestionsAnswered(userId)
        val accuracy = if (answered > 0) ((correct * 100) / answered).toInt() else 0
        return UserStats(
            totalSessions = total,
            accuracy = accuracy,
            maxCombo = sessionRepo.maxCombo(userId),
            totalScore = sessionRepo.sumScore(userId),
        )
    }
}
