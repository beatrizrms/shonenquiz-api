package com.shonenquiz.api.adapter.out.persistence.entity

import jakarta.persistence.*
import java.time.OffsetDateTime
import java.util.UUID

@Entity
@Table(name = "game_rules")
class GameRuleEntity(
    @Id val id: UUID = UUID.randomUUID(),

    @Column(nullable = false, length = 100)
    val name: String,

    @Column(nullable = false, length = 200)
    val label: String,

    @Column(columnDefinition = "TEXT")
    val description: String?,

    @Column(name = "trigger_type", nullable = false, length = 50)
    val triggerType: String,

    @Column(name = "trigger_value", nullable = false)
    val triggerValue: Int,

    @Column(name = "effect_type", nullable = false, length = 50)
    val effectType: String,

    @Column(name = "effect_value")
    val effectValue: Double?,

    @Column(name = "trigger_threshold")
    val triggerThreshold: Int? = null,

    @Column(name = "bonus_metric", nullable = false, length = 20)
    val bonusMetric: String = "score",

    @Column(nullable = false)
    val active: Boolean = true,

    @Column(name = "created_at", nullable = false, updatable = false)
    val createdAt: OffsetDateTime = OffsetDateTime.now(),

    @ElementCollection(fetch = FetchType.EAGER)
    @CollectionTable(name = "game_rule_modes", joinColumns = [JoinColumn(name = "rule_id")])
    @Column(name = "mode")
    val modes: Set<String> = emptySet(),
)
