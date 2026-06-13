package com.shonenquiz.api.adapter.out.persistence.repository

import com.shonenquiz.api.adapter.out.persistence.entity.AnimeEntity
import org.springframework.data.jpa.repository.JpaRepository
import java.util.UUID

interface AnimeJpaRepository : JpaRepository<AnimeEntity, UUID> {
    fun findByActiveTrue(): List<AnimeEntity>
    fun findByIsFixedTrue(): List<AnimeEntity>
}
