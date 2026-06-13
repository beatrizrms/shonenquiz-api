package com.shonenquiz.api.adapter.out.oauth

import com.fasterxml.jackson.annotation.JsonIgnoreProperties
import com.fasterxml.jackson.annotation.JsonProperty
import com.shonenquiz.api.domain.model.GoogleUserInfo
import com.shonenquiz.api.domain.port.out.GoogleAuthPort
import com.shonenquiz.api.exception.InvalidTokenException
import org.springframework.stereotype.Component
import org.springframework.web.client.RestClient
import org.springframework.web.client.RestClientException

@Component
class GoogleOAuthAdapter : GoogleAuthPort {

    private val restClient = RestClient.create()

    override fun verifyIdToken(idToken: String): GoogleUserInfo {
        val response = try {
            restClient.get()
                .uri("https://oauth2.googleapis.com/tokeninfo?id_token={token}", idToken)
                .retrieve()
                .body(GoogleTokenInfoResponse::class.java)
        } catch (e: RestClientException) {
            throw InvalidTokenException("Token Google inválido")
        } ?: throw InvalidTokenException("Token Google inválido")

        if (response.sub.isNullOrBlank() || response.email.isNullOrBlank()) {
            throw InvalidTokenException("Token Google inválido")
        }

        return GoogleUserInfo(
            googleId = response.sub,
            email = response.email,
            name = response.name,
        )
    }

    @JsonIgnoreProperties(ignoreUnknown = true)
    private data class GoogleTokenInfoResponse(
        val sub: String?,
        val email: String?,
        val name: String?,
        @JsonProperty("email_verified") val emailVerified: String?,
    )
}
