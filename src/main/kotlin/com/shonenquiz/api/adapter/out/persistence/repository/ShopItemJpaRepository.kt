package com.shonenquiz.api.adapter.out.persistence.repository

import com.shonenquiz.api.adapter.out.persistence.entity.ShopItemEntity
import org.springframework.data.jpa.repository.JpaRepository
import java.util.UUID

interface ShopItemJpaRepository : JpaRepository<ShopItemEntity, UUID> {
    fun findByActiveTrue(): List<ShopItemEntity>
    fun findByCategoryAndActiveTrue(category: String): List<ShopItemEntity>
    fun findByIsRotatingTrueAndActiveTrue(): List<ShopItemEntity>
    fun findByItemRef(itemRef: String): ShopItemEntity?
}
