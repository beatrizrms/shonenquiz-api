package com.shonenquiz.api.domain.model

import java.util.UUID

data class Anime(
    val id: UUID,
    val name: String,
    val slug: String,
    val category: String,
    val isFixed: Boolean,
    val coverUrl: String?,
)
