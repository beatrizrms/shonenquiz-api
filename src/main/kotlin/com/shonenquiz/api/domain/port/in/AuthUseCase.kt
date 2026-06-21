package com.shonenquiz.api.domain.port.`in`

import com.shonenquiz.api.domain.model.AuthTokens

interface AuthUseCase {
    fun loginWithGoogle(idToken: String): AuthTokens
    fun loginWithApple(identityToken: String): AuthTokens
    fun refresh(refreshToken: String): AuthTokens
    fun logout(refreshToken: String)
}
