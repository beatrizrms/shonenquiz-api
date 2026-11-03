package com.shonenquiz.api.adapter.out.persistence.entity

import jakarta.persistence.*
import java.io.Serializable
import java.time.LocalDate
import java.time.OffsetDateTime
import java.util.UUID

@Embeddable
data class UserDailyChallengeId(
    val userId: UUID = UUID.randomUUID(),
    val challengeDate: LocalDate = LocalDate.now(),
) : Serializable

@Entity
@Table(name = "user_daily_challenge_completions")
class UserDailyChallengeCompletionEntity(
    @EmbeddedId
    val id: UserDailyChallengeId = UserDailyChallengeId(),

    @Column(name = "challenge_id", nullable = false)
    val challengeId: UUID,

    @Column(name = "session_id")
    var sessionId: UUID? = null,

    @Column(name = "status", nullable = false, length = 20)
    var status: String = "completed",  // completed | failed

    @Column(name = "completed_at", nullable = false)
    val completedAt: OffsetDateTime = OffsetDateTime.now(),
)
