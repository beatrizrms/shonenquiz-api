package com.shonenquiz.api.adapter.out.persistence

import com.shonenquiz.api.adapter.out.persistence.entity.UserAuthProviderEntity
import com.shonenquiz.api.adapter.out.persistence.entity.UserEntity
import com.shonenquiz.api.adapter.out.persistence.repository.UserAuthProviderJpaRepository
import com.shonenquiz.api.adapter.out.persistence.repository.UserJpaRepository
import com.shonenquiz.api.domain.model.AuthUser
import com.shonenquiz.api.domain.model.GoogleUserInfo
import com.shonenquiz.api.domain.port.out.UserAuthPort
import org.springframework.stereotype.Component
import java.util.UUID

@Component
class UserAuthAdapter(
    private val userRepo: UserJpaRepository,
    private val authProviderRepo: UserAuthProviderJpaRepository,
) : UserAuthPort {

    override fun findOrCreateUser(googleUserInfo: GoogleUserInfo): AuthUser {
        val existing = authProviderRepo.findByProviderAndProviderUid("google", googleUserInfo.googleId)

        if (existing != null) {
            val user = userRepo.findById(existing.userId).orElseThrow()
            return user.toAuthUser(isNew = false)
        }

        val user = userRepo.findByEmail(googleUserInfo.email) ?: run {
            userRepo.save(
                UserEntity(
                    username = generateUsername(googleUserInfo),
                    email = googleUserInfo.email,
                )
            )
        }

        authProviderRepo.save(
            UserAuthProviderEntity(
                userId = user.id,
                provider = "google",
                providerUid = googleUserInfo.googleId,
            )
        )

        return user.toAuthUser(isNew = true)
    }

    private fun UserEntity.toAuthUser(isNew: Boolean = false) =
        AuthUser(id = id, email = email, username = username, isNewUser = isNew)

    private fun generateUsername(info: GoogleUserInfo): String {
        val base = info.name
            ?.lowercase()
            ?.replace(Regex("[^a-z0-9]"), "")
            ?.take(20)
            ?.ifBlank { null }
            ?: "user"
        return "${base}_${(1000..9999).random()}"
    }
}
