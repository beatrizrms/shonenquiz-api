package com.shonenquiz.api.adapter.out.oauth

import com.fasterxml.jackson.annotation.JsonIgnoreProperties
import com.fasterxml.jackson.annotation.JsonProperty
import tools.jackson.databind.ObjectMapper
import com.shonenquiz.api.domain.model.AppleUserInfo
import com.shonenquiz.api.domain.port.out.AppleAuthPort
import com.shonenquiz.api.exception.InvalidTokenException
import io.jsonwebtoken.Jwts
import org.springframework.beans.factory.annotation.Value
import org.springframework.stereotype.Component
import org.springframework.web.client.RestClient
import java.math.BigInteger
import java.security.KeyFactory
import java.security.PublicKey
import java.security.spec.RSAPublicKeySpec
import java.util.Base64
import java.util.concurrent.ConcurrentHashMap

@Component
class AppleOAuthAdapter(
    @Value("\${apple.bundle-id}") private val bundleId: String,
) : AppleAuthPort {

    private val restClient = RestClient.create()
    private val objectMapper = ObjectMapper()

    // Cache das chaves públicas da Apple — rotacionadas raramente, mas não são fixas.
    private val keyCache = ConcurrentHashMap<String, PublicKey>()

    override fun verifyIdentityToken(identityToken: String): AppleUserInfo {
        val publicKey = resolvePublicKey(identityToken)

        val claims = try {
            Jwts.parser()
                .verifyWith(publicKey)
                .requireIssuer("https://appleid.apple.com")
                .requireAudience(bundleId)
                .build()
                .parseSignedClaims(identityToken)
                .payload
        } catch (e: Exception) {
            throw InvalidTokenException("Identity token Apple inválido: ${e.message}")
        }

        val appleId = claims.subject
            ?: throw InvalidTokenException("Identity token Apple sem subject")

        return AppleUserInfo(
            appleId = appleId,
            email = claims.get("email", String::class.java),
        )
    }

    private fun resolvePublicKey(token: String): PublicKey {
        val kid = extractKid(token)
        keyCache[kid]?.let { return it }

        // Busca as chaves públicas da Apple e atualiza o cache
        val jwks = fetchAppleJwks()
        jwks.keys.forEach { jwk ->
            val key = buildPublicKey(jwk)
            keyCache[jwk.kid] = key
        }

        return keyCache[kid]
            ?: throw InvalidTokenException("Chave pública Apple não encontrada para kid=$kid")
    }

    private fun extractKid(token: String): String {
        val headerJson = String(Base64.getUrlDecoder().decode(token.split(".")[0]))
        val header = objectMapper.readTree(headerJson)
        return header["kid"]?.asString()
            ?: throw InvalidTokenException("Identity token Apple sem kid no header")
    }

    private fun fetchAppleJwks(): AppleJwksResponse {
        return restClient.get()
            .uri("https://appleid.apple.com/auth/keys")
            .retrieve()
            .body(AppleJwksResponse::class.java)
            ?: throw InvalidTokenException("Falha ao buscar chaves públicas da Apple")
    }

    private fun buildPublicKey(jwk: AppleJwk): PublicKey {
        val decoder = Base64.getUrlDecoder()
        val modulus = BigInteger(1, decoder.decode(jwk.n))
        val exponent = BigInteger(1, decoder.decode(jwk.e))
        return KeyFactory.getInstance("RSA").generatePublic(RSAPublicKeySpec(modulus, exponent))
    }

    @JsonIgnoreProperties(ignoreUnknown = true)
    private data class AppleJwksResponse(val keys: List<AppleJwk> = emptyList())

    @JsonIgnoreProperties(ignoreUnknown = true)
    private data class AppleJwk(
        val kid: String,
        val n: String,
        val e: String,
    )
}
