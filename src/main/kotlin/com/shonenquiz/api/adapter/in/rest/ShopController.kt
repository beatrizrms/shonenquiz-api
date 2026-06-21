package com.shonenquiz.api.adapter.`in`.rest

import com.shonenquiz.api.adapter.`in`.rest.dto.*
import com.shonenquiz.api.domain.model.ShopItem
import com.shonenquiz.api.domain.port.`in`.PurchaseCommand
import com.shonenquiz.api.domain.port.`in`.ShopUseCase
import org.springframework.http.HttpStatus
import org.springframework.http.ResponseEntity
import org.springframework.security.core.annotation.AuthenticationPrincipal
import org.springframework.web.bind.annotation.*
import java.util.UUID

@RestController
@RequestMapping("/shop")
class ShopController(private val shopUseCase: ShopUseCase) {

    @GetMapping("/items")
    fun listItems(
        @RequestParam(required = false) category: String?,
    ): ResponseEntity<List<ShopItemResponse>> =
        ResponseEntity.ok(shopUseCase.listItems(category).map { it.toResponse() })

    @GetMapping("/items/ability-sets")
    fun listAbilitySets(
        @AuthenticationPrincipal userId: UUID?,
    ): ResponseEntity<List<AbilitySetResponse>> {
        val allItems = shopUseCase.listItems(null)
        val owned = if (userId != null) shopUseCase.listOwned(userId).map { it.itemRef }.toSet() else emptySet()

        val sets = allItems.filter { it.category == "ability_set" }
        val accessories = allItems.filter { it.category == "accessory" && it.setRef != null }
            .groupBy { it.setRef!! }
        val abilitiesById = allItems.filter { it.category == "ability" }.associateBy { it.id }

        val response = sets.map { set ->
            val setAccessories = accessories[set.itemRef] ?: emptyList()
            val ownedCount = setAccessories.count { it.itemRef in owned }
            val abilityItem = set.abilityItemId?.let { abilitiesById[it] }
            AbilitySetResponse(
                itemRef = set.itemRef,
                name = set.name,
                description = set.description,
                emoji = set.emoji,
                priceCoins = set.priceCoins,
                priceGems = set.priceGems,
                accessories = setAccessories.map { it.toResponse() },
                ownedCount = ownedCount,
                totalCount = setAccessories.size,
                abilityName = abilityItem?.name,
                abilityDescription = abilityItem?.description,
                abilityType = abilityItem?.itemRef
                    ?.removePrefix("ability_")
                    ?.replace("-", "_"),
                abilityEmoji = abilityItem?.emoji,
                abilityCategory = abilityItem?.abilityCategory,
                abilityCooldown = abilityItem?.cooldownQuestions ?: 3,
            )
        }
        return ResponseEntity.ok(response)
    }

    @GetMapping("/featured")
    fun listFeatured(): ResponseEntity<List<ShopItemResponse>> =
        ResponseEntity.ok(shopUseCase.listFeatured().map { it.toResponse() })

    @GetMapping("/owned")
    fun listOwned(
        @AuthenticationPrincipal userId: UUID?,
    ): ResponseEntity<List<OwnedItemResponse>> {
        if (userId == null) return ResponseEntity.status(HttpStatus.UNAUTHORIZED).build()
        return ResponseEntity.ok(shopUseCase.listOwned(userId).map {
            OwnedItemResponse(itemRef = it.itemRef, source = it.source, acquiredAt = it.acquiredAt)
        })
    }

    @PostMapping("/purchase")
    fun purchase(
        @AuthenticationPrincipal userId: UUID?,
        @RequestBody request: PurchaseRequest,
    ): ResponseEntity<PurchaseResponse> {
        if (userId == null) return ResponseEntity.status(HttpStatus.UNAUTHORIZED).build()
        val result = shopUseCase.purchase(
            PurchaseCommand(userId = userId, itemRef = request.itemRef, currency = request.currency)
        )
        return ResponseEntity.ok(
            PurchaseResponse(
                itemRef = result.itemRef,
                acquiredAt = result.acquiredAt,
                message = "Item adquirido com sucesso!",
            )
        )
    }

    private fun ShopItem.toResponse() = ShopItemResponse(
        id = id, name = name, description = description, category = category,
        itemRef = itemRef, setRef = setRef, emoji = emoji,
        priceCoins = priceCoins, priceGems = priceGems, priceBrl = priceBrl,
        isRotating = isRotating, availableUntil = availableUntil, sortOrder = sortOrder,
    )
}
