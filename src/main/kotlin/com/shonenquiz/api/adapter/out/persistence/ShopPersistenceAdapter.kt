package com.shonenquiz.api.adapter.out.persistence

import com.shonenquiz.api.adapter.out.persistence.entity.ShopOrderEntity
import com.shonenquiz.api.adapter.out.persistence.entity.UserOwnedItemEntity
import com.shonenquiz.api.adapter.out.persistence.entity.UserOwnedItemId
import com.shonenquiz.api.adapter.out.persistence.entity.ShopItemEntity
import com.shonenquiz.api.adapter.out.persistence.repository.ShopItemJpaRepository
import com.shonenquiz.api.adapter.out.persistence.repository.ShopOrderJpaRepository
import com.shonenquiz.api.adapter.out.persistence.repository.UserOwnedItemJpaRepository
import com.shonenquiz.api.domain.model.ShopItem
import com.shonenquiz.api.domain.model.UserOwnedItem
import com.shonenquiz.api.domain.port.out.ShopPort
import org.springframework.stereotype.Component
import java.util.UUID

@Component
class ShopPersistenceAdapter(
    private val shopItemRepo: ShopItemJpaRepository,
    private val ownedRepo: UserOwnedItemJpaRepository,
    private val orderRepo: ShopOrderJpaRepository,
) : ShopPort {

    override fun findActiveItems(category: String?): List<ShopItem> =
        if (category != null) shopItemRepo.findByCategoryAndActiveTrue(category).map { it.toDomain() }
        else shopItemRepo.findByActiveTrue().map { it.toDomain() }

    override fun findFeatured(): List<ShopItem> =
        shopItemRepo.findByIsRotatingTrueAndActiveTrue().map { it.toDomain() }

    override fun findByItemRef(itemRef: String): ShopItem? =
        shopItemRepo.findByItemRef(itemRef)?.toDomain()

    override fun findOwnedByUser(userId: UUID): List<UserOwnedItem> =
        ownedRepo.findByIdUserId(userId).map { it.toDomain() }

    override fun isOwned(userId: UUID, itemRef: String): Boolean =
        ownedRepo.existsByIdUserIdAndIdItemRef(userId, itemRef)

    override fun saveOwned(owned: UserOwnedItem): UserOwnedItem {
        val entity = UserOwnedItemEntity(
            id = UserOwnedItemId(userId = owned.userId, itemRef = owned.itemRef),
            source = owned.source,
            acquiredAt = owned.acquiredAt,
        )
        return ownedRepo.save(entity).toDomain()
    }

    override fun createOrder(userId: UUID, itemId: UUID, currency: String, amountPaid: Int): UUID {
        val order = ShopOrderEntity(userId = userId, itemId = itemId, currency = currency, amountPaid = amountPaid)
        return orderRepo.save(order).id
    }

    private fun ShopItemEntity.toDomain() = ShopItem(
        id = id, name = name, description = description, category = category,
        itemRef = itemRef, setRef = setRef, emoji = emoji,
        priceCoins = priceCoins, priceGems = priceGems, priceBrl = priceBrl,
        rewardCoins = rewardCoins, rewardGems = rewardGems,
        isRotating = isRotating, availableFrom = availableFrom, availableUntil = availableUntil,
        active = active, sortOrder = sortOrder, abilityItemId = abilityItemId,
        abilityCategory = abilityCategory,
    )

    private fun UserOwnedItemEntity.toDomain() = UserOwnedItem(
        userId = id.userId, itemRef = id.itemRef, source = source, acquiredAt = acquiredAt,
    )
}
