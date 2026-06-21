package com.shonenquiz.api.scheduler

import com.shonenquiz.api.adapter.out.persistence.repository.GameSessionJpaRepository
import org.springframework.scheduling.annotation.Scheduled
import org.springframework.stereotype.Component
import org.springframework.transaction.annotation.Transactional
import java.time.OffsetDateTime

@Component
class SessionCleanupScheduler(
    private val sessionRepo: GameSessionJpaRepository,
) {
    @Scheduled(fixedDelay = 30 * 60 * 1000) // a cada 30 minutos
    @Transactional
    fun abandonStaleSessions() {
        val now = OffsetDateTime.now()
        val cutoff = now.minusHours(2)
        val count = sessionRepo.abandonStaleSessions(cutoff, now)
        if (count > 0) {
            println("SessionCleanup: $count sessões marcadas como abandoned (TTL 2h)")
        }
    }
}
