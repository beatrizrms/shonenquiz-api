package com.shonenquiz.api.adapter.out.persistence.repository

import com.shonenquiz.api.adapter.out.persistence.entity.FeatureToggleEntity
import org.springframework.data.jpa.repository.JpaRepository

interface FeatureToggleJpaRepository : JpaRepository<FeatureToggleEntity, String> {
    fun findByKey(key: String): FeatureToggleEntity?
}
