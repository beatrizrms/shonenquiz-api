package com.shonenquiz.api.domain.port.`in`

import com.shonenquiz.api.domain.model.RankingEntry
import com.shonenquiz.api.domain.model.Season
import java.util.UUID

interface RankingUseCase {
    fun getCurrentSeason(): Season?
    fun getGlobalRanking(currentUserId: UUID, limit: Int = 50): List<RankingEntry>
    fun getLeagueRanking(currentUserId: UUID, league: String, limit: Int = 50): List<RankingEntry>
}
