package com.shonenquiz.api.adapter.out.persistence.entity

import jakarta.persistence.*
import java.io.Serializable
import java.time.OffsetDateTime
import java.util.UUID

@Embeddable
data class UserAbilitySlotId(
    val userId: UUID,
    val slotIndex: Short,
) : Serializable

@Entity
@Table(name = "user_ability_slots")
class UserAbilitySlotEntity(
    @EmbeddedId val id: UserAbilitySlotId,

    @Column(name = "set_ref", length = 100) val setRef: String? = null,
    @Column(nullable = false) val unlocked: Boolean = false,
    @Column(name = "unlocked_at") val unlockedAt: OffsetDateTime? = null,
    @Column(name = "equipped_at") val equippedAt: OffsetDateTime? = null,
)
