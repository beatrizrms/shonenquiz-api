package com.shonenquiz.api.adapter.out.persistence.entity

import jakarta.persistence.*
import java.time.OffsetDateTime
import java.util.UUID

@Entity
@Table(name = "questions")
class QuestionEntity(
    @Id val id: UUID = UUID.randomUUID(),

    @Column(name = "anime_id", nullable = false)
    val animeId: UUID,

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "anime_id", insertable = false, updatable = false)
    val anime: AnimeEntity? = null,

    @Column(nullable = false, length = 20)
    val type: String = "text",

    @Column(nullable = false, length = 20)
    val difficulty: String,

    @Column(name = "question_text", nullable = false, columnDefinition = "TEXT")
    val questionText: String,

    @Column(name = "detail_text", columnDefinition = "TEXT")
    val detailText: String? = null,

    @Column(name = "media_url")
    val mediaUrl: String? = null,

    @Column(nullable = false)
    val active: Boolean = true,

    @Column(name = "created_at", nullable = false, updatable = false)
    val createdAt: OffsetDateTime = OffsetDateTime.now(),

    @OneToMany(mappedBy = "questionId", fetch = FetchType.EAGER)
    val options: List<QuestionOptionEntity> = emptyList(),
)

@Entity
@Table(name = "question_options")
class QuestionOptionEntity(
    @Id val id: UUID = UUID.randomUUID(),

    @Column(name = "question_id", nullable = false)
    val questionId: UUID,

    @Column(name = "option_text", nullable = false, columnDefinition = "TEXT")
    val optionText: String,

    @Column(name = "is_correct", nullable = false)
    val isCorrect: Boolean,

    @Column(name = "sort_order", nullable = false)
    val sortOrder: Int,
)
