package com.shonenquiz.api.domain.port.out

import com.shonenquiz.api.domain.model.GoogleUserInfo

interface GoogleAuthPort {
    fun verifyIdToken(idToken: String): GoogleUserInfo
}
