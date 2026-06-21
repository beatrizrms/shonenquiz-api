package com.shonenquiz.api.adapter.out.persistence.repository

import com.shonenquiz.api.adapter.out.persistence.entity.LevelThresholdEntity
import org.springframework.data.jpa.repository.JpaRepository

interface LevelThresholdJpaRepository : JpaRepository<LevelThresholdEntity, Short> {

    // P3: retorna o único threshold mais alto cujo minXp <= xp do usuário
    fun findFirstByMinXpLessThanEqualOrderByMinXpDesc(xp: Int): LevelThresholdEntity?

    fun findAllByOrderByLevelAsc(): List<LevelThresholdEntity>
}
