package com.shonenquiz.api.adapter.out.persistence.entity

import jakarta.persistence.*
import java.util.UUID

@Entity
@Table(name = "daily_challenges")
data class DailyChallengeEntity(
    @Id val id: UUID = UUID.randomUUID(),
    @Column(nullable = false) val name: String = "",
    @Column(nullable = false, columnDefinition = "TEXT") val description: String = "",
    @Column(name = "questions_count", nullable = false) val questionsCount: Int = 10,
    @Column(name = "lives_count", nullable = false) val livesCount: Int = 3,
    @Column(name = "no_helps", nullable = false) val noHelps: Boolean = false,
    @Column(name = "difficulty_filter", nullable = false) val difficultyFilter: String = "all",
    @Column(name = "single_anime", nullable = false) val singleAnime: Boolean = false,
    @Column(name = "timer_seconds", nullable = false) val timerSeconds: Int = 30,
    @Column(name = "require_combo") val requireCombo: Int? = null,
    @Column(name = "reward_coins", nullable = false) val rewardCoins: Int = 500,
    @Column(name = "sort_order", nullable = false) val sortOrder: Int = 0,
    @Column(nullable = false) val active: Boolean = true,
)
