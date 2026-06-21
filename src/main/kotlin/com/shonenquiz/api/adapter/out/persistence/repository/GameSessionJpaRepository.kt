package com.shonenquiz.api.adapter.out.persistence.repository

import com.shonenquiz.api.adapter.out.persistence.entity.GameSessionEntity
import com.shonenquiz.api.adapter.out.persistence.entity.SessionAnswerEntity
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.Modifying
import org.springframework.data.jpa.repository.Query
import java.time.OffsetDateTime
import java.util.UUID

interface GameSessionJpaRepository : JpaRepository<GameSessionEntity, UUID> {
    fun findByIdAndUserId(id: UUID, userId: UUID): GameSessionEntity?
    fun findTop5ByUserIdAndStatusInOrderByStartedAtDesc(userId: UUID, statuses: List<String>): List<GameSessionEntity>

    @Query("SELECT COUNT(s) FROM GameSessionEntity s WHERE s.userId = :userId AND s.status IN ('won', 'lost')")
    fun countFinished(userId: UUID): Long

    @Query("SELECT COALESCE(SUM(s.correctCount), 0) FROM GameSessionEntity s WHERE s.userId = :userId AND s.status IN ('won', 'lost')")
    fun sumCorrectCount(userId: UUID): Long

    @Query("SELECT COALESCE(SUM(s.questionsAnswered), 0) FROM GameSessionEntity s WHERE s.userId = :userId AND s.status IN ('won', 'lost')")
    fun sumQuestionsAnswered(userId: UUID): Long

    @Query("SELECT COALESCE(MAX(s.maxCombo), 0) FROM GameSessionEntity s WHERE s.userId = :userId")
    fun maxCombo(userId: UUID): Int

    @Query("SELECT COALESCE(SUM(s.score), 0) FROM GameSessionEntity s WHERE s.userId = :userId AND s.status IN ('won', 'lost')")
    fun sumScore(userId: UUID): Long

    @Query("SELECT s FROM GameSessionEntity s WHERE s.userId = :userId AND s.status IN ('won', 'lost')")
    fun findFinishedByUserId(userId: UUID): List<GameSessionEntity>

    @Modifying
    @Query("""
        UPDATE GameSessionEntity s
        SET s.status = 'abandoned', s.finishedAt = :now
        WHERE s.status = 'active' AND s.startedAt < :cutoff
    """)
    fun abandonStaleSessions(cutoff: OffsetDateTime, now: OffsetDateTime): Int
}

interface SessionAnswerJpaRepository : JpaRepository<SessionAnswerEntity, UUID> {
    fun findBySessionId(sessionId: UUID): List<SessionAnswerEntity>
    fun existsBySessionIdAndQuestionId(sessionId: UUID, questionId: UUID): Boolean
    fun countBySessionIdAndTimeTakenMsLessThanEqual(sessionId: UUID, timeTakenMs: Long): Long
}
