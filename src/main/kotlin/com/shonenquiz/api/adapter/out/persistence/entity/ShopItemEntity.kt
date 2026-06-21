package com.shonenquiz.api.adapter.out.persistence.entity

import jakarta.persistence.*
import java.math.BigDecimal
import java.time.OffsetDateTime
import java.util.UUID

@Entity
@Table(name = "shop_items")
class ShopItemEntity(
    @Id val id: UUID = UUID.randomUUID(),

    @Column(nullable = false, length = 100) val name: String,
    @Column(length = 500) val description: String? = null,
    @Column(nullable = false, length = 30) val category: String,
    @Column(name = "item_ref", nullable = false, unique = true, length = 100) val itemRef: String,
    @Column(name = "set_ref", length = 100) val setRef: String? = null,
    @Column(length = 10) val emoji: String? = null,
    @Column(name = "price_coins") val priceCoins: Int? = null,
    @Column(name = "price_gems") val priceGems: Int? = null,
    @Column(name = "price_brl", precision = 8, scale = 2) val priceBrl: BigDecimal? = null,
    @Column(name = "reward_coins") val rewardCoins: Int? = null,
    @Column(name = "reward_gems") val rewardGems: Int? = null,
    @Column(name = "is_rotating", nullable = false) val isRotating: Boolean = false,
    @Column(name = "available_from") val availableFrom: OffsetDateTime? = null,
    @Column(name = "available_until") val availableUntil: OffsetDateTime? = null,
    @Column(nullable = false) val active: Boolean = true,
    @Column(name = "sort_order", nullable = false) val sortOrder: Int = 0,
    @Column(name = "ability_item_id") val abilityItemId: UUID? = null,
    @Column(name = "ability_category", length = 20) val abilityCategory: String? = null,
    @Column(name = "cooldown_questions", nullable = false) val cooldownQuestions: Int = 3,
)
