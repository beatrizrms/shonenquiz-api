package com.shonenquiz.api.adapter.out.persistence.entity

import jakarta.persistence.*
import java.time.OffsetDateTime
import java.util.UUID

@Entity
@Table(name = "animes")
class AnimeEntity(
    @Id
    val id: UUID = UUID.randomUUID(),

    @Column(nullable = false, length = 100)
    val name: String,

    @Column(unique = true, nullable = false, length = 100)
    val slug: String,

    @Column(nullable = false, length = 30)
    val category: String,

    @Column(name = "is_fixed", nullable = false)
    val isFixed: Boolean = false,

    @Column(name = "cover_url")
    val coverUrl: String? = null,

    @Column(nullable = false)
    val active: Boolean = true,

    @Column(name = "created_at", nullable = false, updatable = false)
    val createdAt: OffsetDateTime = OffsetDateTime.now(),
)
