package com.shonenquiz.api.adapter.out.persistence.repository

import com.shonenquiz.api.adapter.out.persistence.entity.UserAnimePreferenceEntity
import com.shonenquiz.api.adapter.out.persistence.entity.UserAnimePreferenceId
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.Modifying
import org.springframework.data.jpa.repository.Query
import java.util.UUID

interface UserAnimePreferenceJpaRepository : JpaRepository<UserAnimePreferenceEntity, UserAnimePreferenceId> {

    @Query("SELECT p FROM UserAnimePreferenceEntity p WHERE p.id.userId = :userId")
    fun findByUserId(userId: UUID): List<UserAnimePreferenceEntity>

    @Modifying
    @Query("DELETE FROM UserAnimePreferenceEntity p WHERE p.id.userId = :userId")
    fun deleteByUserId(userId: UUID)
}
