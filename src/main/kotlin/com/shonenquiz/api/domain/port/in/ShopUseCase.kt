package com.shonenquiz.api.domain.port.`in`

import com.shonenquiz.api.domain.model.ShopItem
import com.shonenquiz.api.domain.model.UserOwnedItem
import java.util.UUID

data class PurchaseCommand(
    val userId: UUID,
    val itemRef: String,
    val currency: String,         // coins | gems | brl
)

interface ShopUseCase {
    fun listItems(category: String?): List<ShopItem>
    fun listFeatured(): List<ShopItem>
    fun listOwned(userId: UUID): List<UserOwnedItem>
    fun purchase(command: PurchaseCommand): UserOwnedItem
}
