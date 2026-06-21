package com.shonenquiz.api.adapter.out.persistence.entity

import jakarta.persistence.*
import java.io.Serializable
import java.time.OffsetDateTime
import java.util.UUID

@Embeddable
data class UserOwnedItemId(
    val userId: UUID,
    val itemRef: String,
) : Serializable

@Entity
@Table(name = "user_owned_items")
class UserOwnedItemEntity(
    @EmbeddedId val id: UserOwnedItemId,

    @Column(nullable = false, length = 20) val source: String = "shop",
    @Column(name = "acquired_at", nullable = false) val acquiredAt: OffsetDateTime = OffsetDateTime.now(),
)
