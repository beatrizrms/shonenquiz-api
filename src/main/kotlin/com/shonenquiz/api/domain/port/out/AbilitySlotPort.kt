package com.shonenquiz.api.domain.port.out

import java.util.UUID

data class AbilitySlot(
    val slotIndex: Int,
    val setRef: String?,
    val unlocked: Boolean,
)

interface AbilitySlotPort {
    fun findSlots(userId: UUID): List<AbilitySlot>
    fun equipSlot(userId: UUID, slotIndex: Int, setRef: String)
    fun unequipSlot(userId: UUID, slotIndex: Int)
    fun unlockSlot(userId: UUID, slotIndex: Int)
    fun initSlots(userId: UUID)
}
