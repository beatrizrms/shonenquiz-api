package com.shonenquiz.api.domain.service

import com.shonenquiz.api.domain.port.out.UserPort
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional
import java.util.UUID

@Service
class LivesService(private val userPort: UserPort) {

    @Transactional
    fun deductLives(userId: UUID, amount: Int) {
        if (amount <= 0) return
        userPort.deductLives(userId, amount)
    }

    @Transactional
    fun regenIfReady(userId: UUID) {
        userPort.regenLivesIfReady(userId)
    }

    @Transactional
    fun recoverLives(userId: UUID) {
        userPort.recoverLives(userId)
    }
}
