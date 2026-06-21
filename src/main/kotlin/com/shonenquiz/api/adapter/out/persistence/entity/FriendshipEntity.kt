package com.shonenquiz.api.adapter.out.persistence.entity

import jakarta.persistence.*
import java.time.OffsetDateTime
import java.util.UUID

@Entity
@Table(name = "friendships")
class FriendshipEntity(
    @Id
    val id: UUID = UUID.randomUUID(),

    @Column(name = "requester_id", nullable = false)
    val requesterId: UUID,

    @Column(name = "addressee_id", nullable = false)
    val addresseeId: UUID,

    @Column(nullable = false, length = 20)
    var status: String = "pending",

    @Column(name = "created_at", nullable = false, updatable = false)
    val createdAt: OffsetDateTime = OffsetDateTime.now(),
)
