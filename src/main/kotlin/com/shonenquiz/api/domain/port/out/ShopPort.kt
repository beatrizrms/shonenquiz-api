package com.shonenquiz.api.domain.port.out

import com.shonenquiz.api.domain.model.ShopItem
import com.shonenquiz.api.domain.model.UserOwnedItem
import java.util.UUID

interface ShopPort {
    fun findActiveItems(category: String?): List<ShopItem>
    fun findFeatured(): List<ShopItem>
    fun findByItemRef(itemRef: String): ShopItem?
    fun findOwnedByUser(userId: UUID): List<UserOwnedItem>
    fun isOwned(userId: UUID, itemRef: String): Boolean
    fun saveOwned(owned: UserOwnedItem): UserOwnedItem
    fun createOrder(userId: UUID, itemId: UUID, currency: String, amountPaid: Int): UUID
}
