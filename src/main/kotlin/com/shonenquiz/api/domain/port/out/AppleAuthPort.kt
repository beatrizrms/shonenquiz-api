package com.shonenquiz.api.domain.port.out

import com.shonenquiz.api.domain.model.AppleUserInfo

interface AppleAuthPort {
    fun verifyIdentityToken(identityToken: String): AppleUserInfo
}
