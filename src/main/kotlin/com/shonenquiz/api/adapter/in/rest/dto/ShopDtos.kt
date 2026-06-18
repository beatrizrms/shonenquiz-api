package com.shonenquiz.api.adapter.`in`.rest.dto

import java.math.BigDecimal
import java.time.OffsetDateTime
import java.util.UUID

data class ShopItemResponse(
    val id: UUID,
    val name: String,
    val description: String?,
    val category: String,
    val itemRef: String,
    val setRef: String?,
    val emoji: String?,
    val priceCoins: Int?,
    val priceGems: Int?,
    val priceBrl: BigDecimal?,
    val isRotating: Boolean,
    val availableUntil: OffsetDateTime?,
    val sortOrder: Int,
)

data class AbilitySetResponse(
    val itemRef: String,
    val name: String,
    val description: String?,
    val emoji: String?,
    val priceCoins: Int?,
    val priceGems: Int?,
    val accessories: List<ShopItemResponse>,
    val ownedCount: Int,
    val totalCount: Int,
    val abilityName: String?,
    val abilityDescription: String?,
    val abilityType: String?,     // chave de efeito: sharingan | eye_of_zeno | gear_second | etc.
    val abilityEmoji: String?,    // emoji da habilidade (do item ability)
    val abilityCategory: String?, // time | hint | question
)

data class OwnedItemResponse(
    val itemRef: String,
    val source: String,
    val acquiredAt: OffsetDateTime,
)

data class PurchaseRequest(
    val itemRef: String,
    val currency: String,         // coins | gems | brl
)

data class PurchaseResponse(
    val itemRef: String,
    val acquiredAt: OffsetDateTime,
    val message: String,
    val newCoins: Int? = null,
    val newGems: Int? = null,
)
