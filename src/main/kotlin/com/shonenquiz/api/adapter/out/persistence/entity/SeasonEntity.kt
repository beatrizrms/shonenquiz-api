package com.shonenquiz.api.adapter.out.persistence.entity

import jakarta.persistence.*
import java.time.OffsetDateTime
import java.util.UUID

@Entity
@Table(name = "seasons")
class SeasonEntity(
    @Id val id: UUID = UUID.randomUUID(),
    @Column(nullable = false, length = 50) val name: String,
    @Column(name = "starts_at", nullable = false) val startsAt: OffsetDateTime,
    @Column(name = "ends_at", nullable = false) val endsAt: OffsetDateTime,
    @Column(nullable = false) val active: Boolean = true,
)
