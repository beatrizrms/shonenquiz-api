package com.shonenquiz.api.adapter.out.persistence

import com.shonenquiz.api.adapter.out.persistence.entity.UserEquippedItemEntity
import com.shonenquiz.api.adapter.out.persistence.entity.UserEquippedItemId
import com.shonenquiz.api.adapter.out.persistence.repository.UserEquippedItemJpaRepository
import com.shonenquiz.api.domain.port.out.EquipmentPort
import org.springframework.stereotype.Component
import org.springframework.transaction.annotation.Transactional
import java.util.UUID

@Component
class EquipmentPersistenceAdapter(
    private val repo: UserEquippedItemJpaRepository,
) : EquipmentPort {

    override fun findEquipped(userId: UUID): List<String> =
        repo.findByIdUserId(userId).map { it.id.itemRef }

    override fun equip(userId: UUID, itemRef: String) {
        if (!repo.existsByIdUserIdAndIdItemRef(userId, itemRef)) {
            repo.save(UserEquippedItemEntity(UserEquippedItemId(userId, itemRef)))
        }
    }

    @Transactional
    override fun unequip(userId: UUID, itemRef: String) {
        repo.deleteByIdUserIdAndIdItemRef(userId, itemRef)
    }
}
