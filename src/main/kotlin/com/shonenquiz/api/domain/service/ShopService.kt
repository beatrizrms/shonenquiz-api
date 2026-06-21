package com.shonenquiz.api.domain.service

import com.shonenquiz.api.domain.model.ShopItem
import com.shonenquiz.api.domain.model.UserOwnedItem
import com.shonenquiz.api.domain.port.`in`.PurchaseCommand
import com.shonenquiz.api.domain.port.`in`.ShopUseCase
import com.shonenquiz.api.domain.port.out.ShopPort
import com.shonenquiz.api.domain.port.out.UserPort
import com.shonenquiz.api.exception.BusinessException
import com.shonenquiz.api.exception.ResourceNotFoundException
import org.springframework.dao.DataIntegrityViolationException
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional
import java.time.OffsetDateTime
import java.util.UUID

@Service
class ShopService(
    private val shopPort: ShopPort,
    private val userPort: UserPort,
) : ShopUseCase {

    override fun listItems(category: String?): List<ShopItem> =
        shopPort.findActiveItems(category)

    override fun listFeatured(): List<ShopItem> =
        shopPort.findFeatured()

    override fun listOwned(userId: UUID): List<UserOwnedItem> =
        shopPort.findOwnedByUser(userId)

    @Transactional
    override fun purchase(command: PurchaseCommand): UserOwnedItem {
        val item = shopPort.findByItemRef(command.itemRef)
            ?: throw ResourceNotFoundException("Item '${command.itemRef}' não encontrado")

        // Pacotes de moeda: credita saldo sem registrar em user_owned_items
        if (item.category == "coin_pack" || item.category == "gem_pack") {
            return purchaseCurrencyPack(command, item)
        }

        if (shopPort.isOwned(command.userId, command.itemRef)) {
            throw BusinessException("Você já possui este item")
        }

        when (command.currency) {
            "coins" -> {
                val price = item.priceCoins ?: throw BusinessException("Este item não pode ser comprado com Kōka")
                userPort.deductCoins(command.userId, price)
                shopPort.createOrder(command.userId, item.id, "coins", price)
            }
            "gems" -> {
                val price = item.priceGems ?: throw BusinessException("Este item não pode ser comprado com Gemas")
                userPort.deductGems(command.userId, price)
                shopPort.createOrder(command.userId, item.id, "gems", price)
            }
            else -> throw BusinessException("Moeda inválida: ${command.currency}")
        }

        val owned = UserOwnedItem(
            userId = command.userId,
            itemRef = command.itemRef,
            source = "shop",
            acquiredAt = OffsetDateTime.now(),
        )
        try {
            return shopPort.saveOwned(owned)
        } catch (e: DataIntegrityViolationException) {
            throw BusinessException("Você já possui este item")
        }
    }

    private fun purchaseCurrencyPack(command: PurchaseCommand, item: ShopItem): UserOwnedItem {
        // TODO: integrar RevenueCat — validar recibo e criar order com amountPaid real antes de creditar
        when (item.category) {
            "coin_pack" -> {
                val reward = item.rewardCoins ?: throw BusinessException("Pacote sem valor configurado")
                userPort.addCoins(command.userId, reward)
            }
            "gem_pack" -> {
                val reward = item.rewardGems ?: throw BusinessException("Pacote sem valor configurado")
                userPort.addGems(command.userId, reward)
            }
        }
        // Retorna um UserOwnedItem sintético — sem persistir, pois packs são consumíveis
        return UserOwnedItem(
            userId = command.userId,
            itemRef = command.itemRef,
            source = "shop",
            acquiredAt = OffsetDateTime.now(),
        )
    }
}
