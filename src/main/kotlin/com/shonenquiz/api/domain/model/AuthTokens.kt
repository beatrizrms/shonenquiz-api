package com.shonenquiz.api.domain.model

data class AuthTokens(
    val accessToken: String,
    val refreshToken: String,
    val accessTokenExpiresIn: Long,
)
