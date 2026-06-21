package com.shonenquiz.api.adapter.out.persistence.entity

import jakarta.persistence.*
import java.time.OffsetDateTime
import java.util.UUID

@Entity
@Table(name = "shop_orders")
class ShopOrderEntity(
    @Id val id: UUID = UUID.randomUUID(),

    @Column(name = "user_id", nullable = false) val userId: UUID,
    @Column(name = "item_id", nullable = false) val itemId: UUID,
    @Column(nullable = false, length = 10) val currency: String,
    @Column(name = "amount_paid", nullable = false) val amountPaid: Int,
    @Column(nullable = false, length = 20) val status: String = "completed",
    @Column(name = "created_at", nullable = false) val createdAt: OffsetDateTime = OffsetDateTime.now(),
)
