package com.shonenquiz.api.adapter.out.persistence.entity

import jakarta.persistence.*
import java.time.OffsetDateTime
import java.util.UUID

@Entity
@Table(name = "boss_powers")
data class BossPowerEntity(
    @Id val id: UUID = UUID.randomUUID(),
    @Column(name = "villain_name", nullable = false) val villainName: String = "",
    @Column(name = "power_name", nullable = false) val powerName: String = "",
    @Column(nullable = false) val raridade: String = "raro",
    @Column(name = "effect_type", nullable = false) val effectType: String = "",
    @Column(name = "effect_duration", nullable = false) val effectDuration: Int = 1,
    @Column(name = "allowed_modes", nullable = false) val allowedModes: String = "classic,timed,daily",
    @Column(nullable = false) val description: String = "",
    @Column(nullable = false) val active: Boolean = true,
    @Column(name = "created_at", nullable = false) val createdAt: OffsetDateTime = OffsetDateTime.now(),
)
