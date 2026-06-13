package com.shonenquiz.api.config

import io.jsonwebtoken.JwtException
import io.jsonwebtoken.Jwts
import io.jsonwebtoken.security.Keys
import org.springframework.beans.factory.annotation.Value
import org.springframework.stereotype.Component
import java.util.Date
import javax.crypto.SecretKey

@Component
class JwtUtil(
    @Value("\${jwt.secret}") secret: String,
    @Value("\${jwt.access-token-expiration}") private val accessExpiration: Long,
    @Value("\${jwt.refresh-token-expiration}") private val refreshExpiration: Long,
) {
    private val signingKey: SecretKey = Keys.hmacShaKeyFor(secret.toByteArray())

    fun generateAccessToken(userId: String): String = buildToken(userId, "access", accessExpiration)

    fun generateRefreshToken(userId: String): String = buildToken(userId, "refresh", refreshExpiration)

    fun validateAndExtractUserId(token: String): String? = runCatching {
        Jwts.parser()
            .verifyWith(signingKey)
            .build()
            .parseSignedClaims(token)
            .payload
            .subject
    }.getOrNull()

    fun getExpirationSeconds(token: String): Long = runCatching {
        val expiration = Jwts.parser()
            .verifyWith(signingKey)
            .build()
            .parseSignedClaims(token)
            .payload
            .expiration
        val remaining = (expiration.time - System.currentTimeMillis()) / 1000
        maxOf(remaining, 0L)
    }.getOrDefault(0L)

    private fun buildToken(userId: String, type: String, expirationSeconds: Long): String {
        val now = Date()
        return Jwts.builder()
            .subject(userId)
            .claim("type", type)
            .issuedAt(now)
            .expiration(Date(now.time + expirationSeconds * 1000))
            .signWith(signingKey)
            .compact()
    }
}
