package com.shonenquiz.api.domain.model

import java.math.BigDecimal
import java.time.OffsetDateTime
import java.util.UUID

data class ShopItem(
    val id: UUID,
    val name: String,
    val description: String?,
    val category: String,         // accessory | eye_skin | ability_set | coin_pack | gem_pack
    val itemRef: String,          // slug único do item
    val setRef: String?,          // ref da ability_set à qual este acessório pertence (nullable)
    val emoji: String?,
    val priceCoins: Int?,
    val priceGems: Int?,
    val priceBrl: BigDecimal?,
    val rewardCoins: Int?,         // para coin_pack: quantidade creditada ao comprar
    val rewardGems: Int?,          // para gem_pack: quantidade creditada ao comprar
    val isRotating: Boolean,
    val availableFrom: OffsetDateTime?,
    val availableUntil: OffsetDateTime?,
    val active: Boolean,
    val sortOrder: Int,
    val abilityItemId: UUID? = null,
    val abilityCategory: String? = null,  // time | hint | question
    val cooldownQuestions: Int = 3,
)
