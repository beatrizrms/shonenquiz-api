package com.shonenquiz.api.domain.port.out

import com.shonenquiz.api.domain.model.Anime
import java.util.UUID

interface AnimePort {
    fun findAllActive(): List<Anime>
    fun findByIds(ids: List<UUID>): List<Anime>
    fun findFixed(): List<Anime>
    fun findPreferencesByUserId(userId: UUID): List<Anime>
    fun replacePreferences(userId: UUID, animeIds: List<UUID>)
}
