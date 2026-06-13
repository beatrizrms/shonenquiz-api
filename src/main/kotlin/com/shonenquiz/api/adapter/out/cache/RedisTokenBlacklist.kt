package com.shonenquiz.api.adapter.out.cache

import com.shonenquiz.api.domain.port.out.TokenBlacklistPort
import org.springframework.beans.factory.annotation.Value
import org.springframework.data.redis.core.StringRedisTemplate
import org.springframework.stereotype.Component
import java.time.Duration

@Component
class RedisTokenBlacklist(
    private val redis: StringRedisTemplate,
    @Value("\${spring.profiles.active:dev}") private val profile: String,
) : TokenBlacklistPort {

    private val ns = if (profile == "prod") "prod" else "staging"

    override fun blacklist(token: String, ttlSeconds: Long) {
        redis.opsForValue().set("$ns:blacklist:$token", "1", Duration.ofSeconds(ttlSeconds))
    }

    override fun isBlacklisted(token: String): Boolean =
        redis.hasKey("$ns:blacklist:$token") == true

    override fun storeRefreshToken(hashedToken: String, userId: String, ttlSeconds: Long) {
        redis.opsForValue().set("$ns:refresh:$hashedToken", userId, Duration.ofSeconds(ttlSeconds))
    }

    override fun getUserIdByRefreshToken(hashedToken: String): String? =
        redis.opsForValue().get("$ns:refresh:$hashedToken")

    override fun revokeRefreshToken(hashedToken: String) {
        redis.delete("$ns:refresh:$hashedToken")
    }
}
