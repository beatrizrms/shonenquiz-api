package com.shonenquiz.api.adapter.out.persistence.repository

import com.shonenquiz.api.adapter.out.persistence.entity.SeasonRankingEntity
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.Query
import java.util.UUID

interface SeasonRankingJpaRepository : JpaRepository<SeasonRankingEntity, UUID> {

    @Query("""
        SELECT r FROM SeasonRankingEntity r
        WHERE r.seasonId = :seasonId
        ORDER BY r.score DESC
        LIMIT :limit
    """)
    fun findTopBySeasonId(seasonId: UUID, limit: Int): List<SeasonRankingEntity>

    @Query("""
        SELECT r FROM SeasonRankingEntity r
        WHERE r.seasonId = :seasonId AND r.league = :league
        ORDER BY r.score DESC
        LIMIT :limit
    """)
    fun findTopBySeasonIdAndLeague(seasonId: UUID, league: String, limit: Int): List<SeasonRankingEntity>

    fun findBySeasonIdAndUserId(seasonId: UUID, userId: UUID): SeasonRankingEntity?

    fun findBySeasonIdAndUserIdIn(seasonId: UUID, userIds: List<UUID>): List<SeasonRankingEntity>
}
