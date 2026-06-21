package com.shonenquiz.api.adapter.out.persistence.repository

import com.shonenquiz.api.adapter.out.persistence.entity.QuestionEntity
import org.springframework.data.domain.Pageable
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.Query
import java.util.UUID

interface QuestionJpaRepository : JpaRepository<QuestionEntity, UUID> {

    @Query("""
        SELECT q.id FROM QuestionEntity q
        WHERE q.active = TRUE
          AND q.difficulty = :difficulty
          AND q.animeId IN (
              SELECT uap.id.animeId FROM UserAnimePreferenceEntity uap WHERE uap.id.userId = :userId
          )
        ORDER BY FUNCTION('RANDOM')
    """)
    fun findRandomIdsByDifficulty(userId: UUID, difficulty: String, pageable: Pageable): List<UUID>

    @Query("""
        SELECT q.id FROM QuestionEntity q
        WHERE q.active = TRUE
          AND q.difficulty = :difficulty
          AND q.id NOT IN :excludedIds
          AND q.animeId IN (
              SELECT uap.id.animeId FROM UserAnimePreferenceEntity uap WHERE uap.id.userId = :userId
          )
        ORDER BY FUNCTION('RANDOM')
    """)
    fun findRandomIdsByDifficultyExcluding(userId: UUID, difficulty: String, excludedIds: Collection<UUID>, pageable: Pageable): List<UUID>

    @Query("""
        SELECT DISTINCT q FROM QuestionEntity q
        LEFT JOIN FETCH q.options
        LEFT JOIN FETCH q.anime
        WHERE q.id IN :ids
    """)
    fun findWithDetailsByIds(ids: Collection<UUID>): List<QuestionEntity>
}
