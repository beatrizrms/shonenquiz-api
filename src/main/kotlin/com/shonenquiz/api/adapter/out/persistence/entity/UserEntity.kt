package com.shonenquiz.api.adapter.out.persistence.entity

import jakarta.persistence.*
import java.time.OffsetDateTime
import java.util.UUID

@Entity
@Table(name = "users")
class UserEntity(
    @Id
    val id: UUID = UUID.randomUUID(),

    @Column(unique = true, nullable = false, length = 30)
    var username: String,

    @Column(unique = true, nullable = false, length = 255)
    val email: String,

    @Column(name = "avatar_cat_id")
    var avatarCatId: UUID? = null,

    @Column(nullable = false)
    var level: Short = 1,

    @Column(nullable = false)
    var xp: Int = 0,

    @Column(nullable = false)
    var nekocoins: Int = 0,

    @Column(nullable = false)
    var gems: Int = 0,

    @Column(nullable = false)
    var lives: Short = 3,

    @Column(name = "lives_last_regen")
    var livesLastRegen: OffsetDateTime? = null,

    @Column(nullable = false, length = 20)
    var league: String = "bronze",

    @Column(name = "league_points", nullable = false)
    var leaguePoints: Int = 0,

    @Column(name = "friend_code", unique = true, length = 8)
    var friendCode: String? = null,

    @Column(name = "created_at", nullable = false, updatable = false)
    val createdAt: OffsetDateTime = OffsetDateTime.now(),

    @Column(name = "updated_at", nullable = false)
    var updatedAt: OffsetDateTime = OffsetDateTime.now(),
)
