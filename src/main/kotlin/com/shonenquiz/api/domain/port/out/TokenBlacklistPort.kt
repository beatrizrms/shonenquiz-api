package com.shonenquiz.api.domain.port.out

interface TokenBlacklistPort {
    fun blacklist(token: String, ttlSeconds: Long)
    fun isBlacklisted(token: String): Boolean
    fun storeRefreshToken(hashedToken: String, userId: String, ttlSeconds: Long)
    fun getUserIdByRefreshToken(hashedToken: String): String?
    fun revokeRefreshToken(hashedToken: String)
}
