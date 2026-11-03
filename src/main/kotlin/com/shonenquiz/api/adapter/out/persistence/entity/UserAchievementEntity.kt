package com.shonenquiz.api.adapter.out.persistence.entity

import jakarta.persistence.*
import java.time.OffsetDateTime
import java.util.UUID

@Entity
@Table(name = "user_achievements")
class UserAchievementEntity(
    @Id val id: UUID = UUID.randomUUID(),

    @Column(name = "user_id", nullable = false)
    val userId: UUID,

    @Column(name = "achievement_id", nullable = false, length = 50)
    val achievementId: String,

    @Column(name = "unlocked_at", nullable = false)
    val unlockedAt: OffsetDateTime = OffsetDateTime.now(),
)
