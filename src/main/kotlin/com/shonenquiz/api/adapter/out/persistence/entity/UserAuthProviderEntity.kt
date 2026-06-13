package com.shonenquiz.api.adapter.out.persistence.entity

import jakarta.persistence.*
import java.util.UUID

@Entity
@Table(
    name = "user_auth_providers",
    uniqueConstraints = [UniqueConstraint(columnNames = ["provider", "provider_uid"])],
)
class UserAuthProviderEntity(
    @Id
    val id: UUID = UUID.randomUUID(),

    @Column(name = "user_id", nullable = false)
    val userId: UUID,

    @Column(nullable = false, length = 20)
    val provider: String,

    @Column(name = "provider_uid", nullable = false, length = 255)
    val providerUid: String,
)
