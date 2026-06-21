package com.shonenquiz.api.domain.port.out

import com.shonenquiz.api.domain.model.AppleUserInfo
import com.shonenquiz.api.domain.model.AuthUser
import com.shonenquiz.api.domain.model.GoogleUserInfo

interface UserAuthPort {
    fun findOrCreateUser(googleUserInfo: GoogleUserInfo): AuthUser
    fun findOrCreateUserFromApple(appleUserInfo: AppleUserInfo): AuthUser
}
