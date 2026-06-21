package com.shonenquiz.api.adapter.out.persistence.entity

import jakarta.persistence.*
import java.time.OffsetDateTime

@Entity
@Table(name = "level_thresholds")
data class LevelThresholdEntity(
    @Id val level: Short = 1,
    @Column(nullable = false) val title: String = "",
    @Column(name = "min_xp", nullable = false) val minXp: Int = 0,
    @Column(name = "created_at", nullable = false) val createdAt: OffsetDateTime = OffsetDateTime.now(),
)
