package com.shonenquiz.api.adapter.out.persistence.repository

import com.shonenquiz.api.adapter.out.persistence.entity.SeasonEntity
import org.springframework.data.jpa.repository.JpaRepository
import java.util.UUID

interface SeasonJpaRepository : JpaRepository<SeasonEntity, UUID> {
    fun findByActiveTrue(): SeasonEntity?
}
