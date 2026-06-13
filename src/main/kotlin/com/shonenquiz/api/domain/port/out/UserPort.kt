package com.shonenquiz.api.domain.port.out

import com.shonenquiz.api.domain.model.User
import java.util.UUID

interface UserPort {
    fun findById(userId: UUID): User?
    fun updateUsername(userId: UUID, username: String): User
    fun updateAvatarCatId(userId: UUID, avatarCatId: UUID)
    fun existsByUsername(username: String): Boolean
}
