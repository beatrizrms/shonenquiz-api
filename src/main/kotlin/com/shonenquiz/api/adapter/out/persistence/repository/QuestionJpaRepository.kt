package com.shonenquiz.api.adapter.out.persistence.repository

import com.shonenquiz.api.adapter.out.persistence.entity.QuestionEntity
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.Query
import java.util.UUID

interface QuestionJpaRepository : JpaRepository<QuestionEntity, UUID> {

    @Query("""
        SELECT q FROM QuestionEntity q
        WHERE q.active = TRUE
          AND q.animeId IN (
              SELECT uap.id.animeId FROM UserAnimePreferenceEntity uap WHERE uap.id.userId = :userId
          )
          AND q.id NOT IN :excludedIds
        ORDER BY FUNCTION('RANDOM')
    """)
    fun findRandomForUser(userId: UUID, excludedIds: List<UUID>): List<QuestionEntity>

    @Query("""
        SELECT q FROM QuestionEntity q
        WHERE q.active = TRUE
          AND q.animeId IN (
              SELECT uap.id.animeId FROM UserAnimePreferenceEntity uap WHERE uap.id.userId = :userId
          )
        ORDER BY FUNCTION('RANDOM')
    """)
    fun findRandomForUserNoExclusion(userId: UUID): List<QuestionEntity>
}
