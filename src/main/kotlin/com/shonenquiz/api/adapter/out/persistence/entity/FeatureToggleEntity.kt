package com.shonenquiz.api.adapter.out.persistence.entity

import jakarta.persistence.*
import java.time.OffsetDateTime

@Entity
@Table(name = "feature_toggles")
class FeatureToggleEntity(
    @Id
    @Column(length = 100)
    val key: String,

    @Column(nullable = false)
    val enabled: Boolean = true,

    @Column(columnDefinition = "TEXT")
    val description: String? = null,

    @Column(name = "updated_at", nullable = false)
    val updatedAt: OffsetDateTime = OffsetDateTime.now(),
)
