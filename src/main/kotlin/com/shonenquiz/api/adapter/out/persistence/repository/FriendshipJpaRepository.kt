package com.shonenquiz.api.adapter.out.persistence.repository

import com.shonenquiz.api.adapter.out.persistence.entity.FriendshipEntity
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.Query
import java.util.UUID

interface FriendshipJpaRepository : JpaRepository<FriendshipEntity, UUID> {

    @Query("""
        SELECT f FROM FriendshipEntity f
        WHERE f.status = 'accepted'
          AND (f.requesterId = :userId OR f.addresseeId = :userId)
    """)
    fun findAccepted(userId: UUID): List<FriendshipEntity>

    @Query("""
        SELECT f FROM FriendshipEntity f
        WHERE f.addresseeId = :userId AND f.status = 'pending'
    """)
    fun findPendingReceived(userId: UUID): List<FriendshipEntity>

    @Query("""
        SELECT f FROM FriendshipEntity f
        WHERE (f.requesterId = :a AND f.addresseeId = :b)
           OR (f.requesterId = :b AND f.addresseeId = :a)
    """)
    fun findBetween(a: UUID, b: UUID): FriendshipEntity?

    @Query("""
        SELECT r.userId FROM SeasonRankingEntity r
        WHERE r.seasonId = :seasonId
          AND r.userId IN :friendIds
        ORDER BY r.score DESC
    """)
    fun findFriendRankingUserIds(seasonId: UUID, friendIds: List<UUID>): List<UUID>
}
