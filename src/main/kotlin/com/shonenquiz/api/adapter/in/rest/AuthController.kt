package com.shonenquiz.api.adapter.`in`.rest

import com.shonenquiz.api.adapter.`in`.rest.dto.AppleLoginRequest
import com.shonenquiz.api.adapter.`in`.rest.dto.AuthResponse
import com.shonenquiz.api.adapter.`in`.rest.dto.GoogleLoginRequest
import com.shonenquiz.api.adapter.`in`.rest.dto.LogoutRequest
import com.shonenquiz.api.adapter.`in`.rest.dto.RefreshTokenRequest
import com.shonenquiz.api.domain.port.`in`.AuthUseCase
import jakarta.validation.Valid
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping("/auth")
class AuthController(private val authUseCase: AuthUseCase) {

    @PostMapping("/google")
    fun loginWithGoogle(@Valid @RequestBody request: GoogleLoginRequest): ResponseEntity<AuthResponse> {
        val tokens = authUseCase.loginWithGoogle(request.idToken)
        return ResponseEntity.ok(
            AuthResponse(
                accessToken = tokens.accessToken,
                refreshToken = tokens.refreshToken,
                expiresIn = tokens.accessTokenExpiresIn,
            )
        )
    }

    @PostMapping("/apple")
    fun loginWithApple(@Valid @RequestBody request: AppleLoginRequest): ResponseEntity<AuthResponse> {
        val tokens = authUseCase.loginWithApple(request.identityToken)
        return ResponseEntity.ok(
            AuthResponse(
                accessToken = tokens.accessToken,
                refreshToken = tokens.refreshToken,
                expiresIn = tokens.accessTokenExpiresIn,
            )
        )
    }

    @PostMapping("/refresh")
    fun refresh(@Valid @RequestBody request: RefreshTokenRequest): ResponseEntity<AuthResponse> {
        val tokens = authUseCase.refresh(request.refreshToken)
        return ResponseEntity.ok(
            AuthResponse(
                accessToken = tokens.accessToken,
                refreshToken = tokens.refreshToken,
                expiresIn = tokens.accessTokenExpiresIn,
            )
        )
    }

    @PostMapping("/logout")
    fun logout(@Valid @RequestBody request: LogoutRequest): ResponseEntity<Void> {
        authUseCase.logout(request.refreshToken)
        return ResponseEntity.noContent().build()
    }
}
