package com.shonenquiz.api.adapter.out.persistence.repository

import com.shonenquiz.api.adapter.out.persistence.entity.UserAchievementEntity
import org.springframework.data.jpa.repository.JpaRepository
import java.util.UUID

interface UserAchievementJpaRepository : JpaRepository<UserAchievementEntity, UUID> {
    fun findByUserId(userId: UUID): List<UserAchievementEntity>
    fun existsByUserIdAndAchievementId(userId: UUID, achievementId: String): Boolean
}
