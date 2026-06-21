package com.shonenquiz.api.adapter.`in`.rest.filter

import com.shonenquiz.api.config.JwtUtil
import com.shonenquiz.api.domain.port.out.TokenBlacklistPort
import jakarta.servlet.FilterChain
import jakarta.servlet.http.HttpServletRequest
import jakarta.servlet.http.HttpServletResponse
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken
import org.springframework.security.core.authority.SimpleGrantedAuthority
import org.springframework.security.core.context.SecurityContextHolder
import org.slf4j.LoggerFactory
import org.springframework.stereotype.Component
import org.springframework.web.filter.OncePerRequestFilter
import java.util.UUID

@Component
class JwtAuthFilter(
    private val jwtUtil: JwtUtil,
    private val tokenBlacklistPort: TokenBlacklistPort,
) : OncePerRequestFilter() {

    private val log = LoggerFactory.getLogger(javaClass)

    override fun doFilterInternal(
        request: HttpServletRequest,
        response: HttpServletResponse,
        filterChain: FilterChain,
    ) {
        try {
            val token = extractToken(request)
            if (token != null && !tokenBlacklistPort.isBlacklisted(token)) {
                val userIdStr = jwtUtil.validateAndExtractUserId(token)
                val userId = runCatching { userIdStr?.let { UUID.fromString(it) } }.getOrNull()
                if (userId != null) {
                    val auth = UsernamePasswordAuthenticationToken(
                        userId, null, listOf(SimpleGrantedAuthority("ROLE_USER"))
                    )
                    SecurityContextHolder.getContext().authentication = auth
                }
            }
        } catch (e: Exception) {
            log.warn("JWT filter error (proceeding unauthenticated): ${e.message}")
        }
        filterChain.doFilter(request, response)
    }

    private fun extractToken(request: HttpServletRequest): String? {
        val header = request.getHeader("Authorization") ?: return null
        if (!header.startsWith("Bearer ")) return null
        return header.removePrefix("Bearer ").trim()
    }
}
