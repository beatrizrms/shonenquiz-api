package com.shonenquiz.api.domain.port.out

import java.util.UUID

interface EquipmentPort {
    fun findEquipped(userId: UUID): List<String>
    fun equip(userId: UUID, itemRef: String)
    fun unequip(userId: UUID, itemRef: String)
}
