package com.shonenquiz.api.adapter.out.persistence.entity

import jakarta.persistence.*
import java.time.OffsetDateTime
import java.util.UUID

@Entity
@Table(name = "cat_avatars")
class CatAvatarEntity(
    @Id
    val id: UUID = UUID.randomUUID(),

    @Column(name = "user_id", unique = true)
    var userId: UUID? = null,

    @Column(nullable = false, length = 20)
    var breed: String,

    @Column(name = "eye_color", nullable = false, length = 20)
    var eyeColor: String,

    @Column(nullable = false, length = 20)
    var expression: String = "normal",

    @Column(length = 50)
    var accessory: String? = null,

    @Column(name = "background", length = 50)
    var background: String? = null,

    @Column(name = "cat_name", nullable = false, length = 30)
    var catName: String,

    @Column(name = "updated_at", nullable = false)
    var updatedAt: OffsetDateTime = OffsetDateTime.now(),
)
