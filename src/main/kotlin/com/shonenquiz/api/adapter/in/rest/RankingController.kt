package com.shonenquiz.api.adapter.`in`.rest

import com.shonenquiz.api.adapter.`in`.rest.dto.RankingEntryResponse
import com.shonenquiz.api.adapter.`in`.rest.dto.RankingResponse
import com.shonenquiz.api.adapter.`in`.rest.dto.SeasonResponse
import com.shonenquiz.api.domain.model.RankingEntry
import com.shonenquiz.api.domain.model.Season
import com.shonenquiz.api.domain.port.`in`.RankingUseCase
import org.springframework.http.ResponseEntity
import org.springframework.security.core.annotation.AuthenticationPrincipal
import org.springframework.web.bind.annotation.*
import java.util.UUID

@RestController
@RequestMapping("/ranking")
class RankingController(private val rankingUseCase: RankingUseCase) {

    @GetMapping("/global")
    fun global(@AuthenticationPrincipal userId: UUID?): ResponseEntity<RankingResponse> {
        val id = userId ?: return ResponseEntity.status(401).build()
        val season = rankingUseCase.getCurrentSeason()
        val entries = rankingUseCase.getGlobalRanking(id)
        return ResponseEntity.ok(buildResponse(season, entries, id))
    }

    @GetMapping("/league")
    fun league(
        @AuthenticationPrincipal userId: UUID?,
        @RequestParam(required = false) league: String?,
    ): ResponseEntity<RankingResponse> {
        val id = userId ?: return ResponseEntity.status(401).build()
        val resolvedLeague = league ?: "bronze"
        val season = rankingUseCase.getCurrentSeason()
        val entries = rankingUseCase.getLeagueRanking(id, resolvedLeague)
        return ResponseEntity.ok(buildResponse(season, entries, id))
    }

    private fun buildResponse(season: Season?, entries: List<RankingEntry>, currentUserId: UUID): RankingResponse {
        val mapped = entries.map { it.toResponse() }
        val currentUserEntry = mapped.firstOrNull { it.isCurrentUser }
            ?: entries.firstOrNull()?.let { null } // stays null if user not in list
        return RankingResponse(
            season = season?.let { SeasonResponse(it.id, it.name, it.endsAt, it.active) },
            entries = mapped,
            currentUserEntry = currentUserEntry,
        )
    }

    private fun RankingEntry.toResponse() = RankingEntryResponse(
        position = position,
        userId = userId,
        username = username,
        level = level,
        league = league,
        score = score,
        isCurrentUser = isCurrentUser,
    )
}
