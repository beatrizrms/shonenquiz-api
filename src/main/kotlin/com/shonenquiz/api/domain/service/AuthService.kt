package com.shonenquiz.api.domain.service

import com.shonenquiz.api.config.JwtUtil
import com.shonenquiz.api.domain.model.AuthTokens
import com.shonenquiz.api.domain.port.`in`.AuthUseCase
import com.shonenquiz.api.domain.port.out.GoogleAuthPort
import com.shonenquiz.api.domain.port.out.TokenBlacklistPort
import com.shonenquiz.api.domain.port.out.UserAuthPort
import com.shonenquiz.api.exception.InvalidTokenException
import org.springframework.beans.factory.annotation.Value
import org.springframework.stereotype.Service
import java.security.MessageDigest
import java.util.Base64

@Service
class AuthService(
    private val googleAuthPort: GoogleAuthPort,
    private val userAuthPort: UserAuthPort,
    private val tokenBlacklistPort: TokenBlacklistPort,
    private val jwtUtil: JwtUtil,
    @Value("\${jwt.access-token-expiration}") private val accessTokenExpiration: Long,
    @Value("\${jwt.refresh-token-expiration}") private val refreshTokenExpiration: Long,
) : AuthUseCase {

    override fun loginWithGoogle(idToken: String): AuthTokens {
        val googleUser = googleAuthPort.verifyIdToken(idToken)
        val user = userAuthPort.findOrCreateUser(googleUser)
        return issueTokens(user.id.toString())
    }

    override fun refresh(refreshToken: String): AuthTokens {
        val hashed = hash(refreshToken)
        val userId = tokenBlacklistPort.getUserIdByRefreshToken(hashed)
            ?: throw InvalidTokenException("Refresh token inválido ou expirado")

        tokenBlacklistPort.revokeRefreshToken(hashed)
        return issueTokens(userId)
    }

    override fun logout(refreshToken: String) {
        val hashed = hash(refreshToken)
        tokenBlacklistPort.revokeRefreshToken(hashed)
    }

    private fun issueTokens(userId: String): AuthTokens {
        val accessToken = jwtUtil.generateAccessToken(userId)
        val refreshToken = jwtUtil.generateRefreshToken(userId)
        tokenBlacklistPort.storeRefreshToken(hash(refreshToken), userId, refreshTokenExpiration)
        return AuthTokens(
            accessToken = accessToken,
            refreshToken = refreshToken,
            accessTokenExpiresIn = accessTokenExpiration,
        )
    }

    private fun hash(value: String): String {
        val digest = MessageDigest.getInstance("SHA-256").digest(value.toByteArray())
        return Base64.getEncoder().encodeToString(digest)
    }
}
