package com.shonenquiz.api.adapter.out.persistence

import com.shonenquiz.api.adapter.out.persistence.entity.AnimeEntity
import com.shonenquiz.api.adapter.out.persistence.entity.UserAnimePreferenceEntity
import com.shonenquiz.api.adapter.out.persistence.entity.UserAnimePreferenceId
import com.shonenquiz.api.adapter.out.persistence.repository.AnimeJpaRepository
import com.shonenquiz.api.adapter.out.persistence.repository.UserAnimePreferenceJpaRepository
import com.shonenquiz.api.domain.model.Anime
import com.shonenquiz.api.domain.port.out.AnimePort
import org.springframework.stereotype.Component
import java.util.UUID

@Component
class AnimePersistenceAdapter(
    private val animeRepo: AnimeJpaRepository,
    private val preferenceRepo: UserAnimePreferenceJpaRepository,
) : AnimePort {

    override fun findAllActive(): List<Anime> =
        animeRepo.findByActiveTrue().map { it.toDomain() }

    override fun findByIds(ids: List<UUID>): List<Anime> =
        animeRepo.findAllById(ids).map { it.toDomain() }

    override fun findFixed(): List<Anime> =
        animeRepo.findByIsFixedTrue().map { it.toDomain() }

    override fun findPreferencesByUserId(userId: UUID): List<Anime> {
        val prefs = preferenceRepo.findByUserId(userId)
        if (prefs.isEmpty()) return emptyList()
        return animeRepo.findAllById(prefs.map { it.id.animeId }).map { it.toDomain() }
    }

    override fun replacePreferences(userId: UUID, animeIds: List<UUID>) {
        preferenceRepo.deleteByUserId(userId)
        val entities = animeIds.map { UserAnimePreferenceEntity(UserAnimePreferenceId(userId, it)) }
        preferenceRepo.saveAll(entities)
    }

    private fun AnimeEntity.toDomain() = Anime(
        id = id, name = name, slug = slug, category = category,
        isFixed = isFixed, coverUrl = coverUrl,
    )
}
