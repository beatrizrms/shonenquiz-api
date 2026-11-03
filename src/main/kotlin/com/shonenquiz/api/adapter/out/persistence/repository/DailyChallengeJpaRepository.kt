package com.shonenquiz.api.adapter.out.persistence.repository

import com.shonenquiz.api.adapter.out.persistence.entity.DailyChallengeEntity
import com.shonenquiz.api.adapter.out.persistence.entity.UserDailyChallengeCompletionEntity
import com.shonenquiz.api.adapter.out.persistence.entity.UserDailyChallengeId
import org.springframework.data.domain.Pageable
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.Query
import java.time.LocalDate
import java.util.UUID

interface DailyChallengeJpaRepository : JpaRepository<DailyChallengeEntity, UUID> {
    fun findAllByActiveTrueOrderBySortOrder(): List<DailyChallengeEntity>
}

interface UserDailyChallengeCompletionJpaRepository : JpaRepository<UserDailyChallengeCompletionEntity, UserDailyChallengeId> {
    fun findByIdUserIdAndIdChallengeDate(userId: UUID, date: LocalDate): UserDailyChallengeCompletionEntity?

    @Query("""
        SELECT uap.id.animeId FROM UserAnimePreferenceEntity uap
        WHERE uap.id.userId = :userId
        ORDER BY FUNCTION('RANDOM')
    """)
    fun findRandomAnimeIdByUserId(userId: UUID, pageable: Pageable): List<UUID>
}
