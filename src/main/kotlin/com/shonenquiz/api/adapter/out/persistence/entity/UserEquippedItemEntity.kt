package com.shonenquiz.api.adapter.out.persistence.entity

import jakarta.persistence.*
import java.io.Serializable
import java.time.OffsetDateTime
import java.util.UUID

@Embeddable
data class UserEquippedItemId(
    val userId: UUID,
    val itemRef: String,
) : Serializable

@Entity
@Table(name = "user_equipped_items")
class UserEquippedItemEntity(
    @EmbeddedId val id: UserEquippedItemId,

    @Column(name = "equipped_at", nullable = false) val equippedAt: OffsetDateTime = OffsetDateTime.now(),
)
