package com.shonenquiz.api.domain.model

import java.util.UUID

data class CatAvatar(
    val id: UUID,
    val userId: UUID,
    val breed: String,
    val eyeColor: String,
    val expression: String,
    val accessory: String?,
    val background: String?,
    val catName: String,
)
