package com.shonenquiz.api.domain.model

import java.util.UUID

data class AuthUser(
    val id: UUID,
    val email: String,
    val username: String,
    val isNewUser: Boolean = false,
)
