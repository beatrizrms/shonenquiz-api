package com.shonenquiz.api.adapter.out.persistence.entity

import jakarta.persistence.*
import java.io.Serializable
import java.util.UUID

@Embeddable
data class UserAnimePreferenceId(
    val userId: UUID,
    val animeId: UUID,
) : Serializable

@Entity
@Table(name = "user_anime_preferences")
class UserAnimePreferenceEntity(
    @EmbeddedId
    val id: UserAnimePreferenceId,
)
