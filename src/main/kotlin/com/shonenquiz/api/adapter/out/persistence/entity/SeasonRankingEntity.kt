package com.shonenquiz.api.adapter.out.persistence.entity

import jakarta.persistence.*
import java.util.UUID

@Entity
@Table(name = "season_rankings")
class SeasonRankingEntity(
    @Id val id: UUID = UUID.randomUUID(),
    @Column(name = "season_id", nullable = false) val seasonId: UUID,
    @Column(name = "user_id", nullable = false) val userId: UUID,
    @Column(nullable = false) val score: Long = 0,
    @Column val position: Int? = null,
    @Column(nullable = false, length = 20) val league: String,
)
