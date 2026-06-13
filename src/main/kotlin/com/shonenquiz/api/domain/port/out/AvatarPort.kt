package com.shonenquiz.api.domain.port.out

import com.shonenquiz.api.domain.model.CatAvatar
import java.util.UUID

interface AvatarPort {
    fun findByUserId(userId: UUID): CatAvatar?
    fun save(avatar: CatAvatar): CatAvatar
}
