package com.shonenquiz.api.adapter.out.persistence.repository

import com.shonenquiz.api.adapter.out.persistence.entity.ShopOrderEntity
import org.springframework.data.jpa.repository.JpaRepository
import java.util.UUID

interface ShopOrderJpaRepository : JpaRepository<ShopOrderEntity, UUID>
