package com.shonenquiz.api.adapter.`in`.rest

import com.shonenquiz.api.adapter.`in`.rest.dto.AnimeResponse
import com.shonenquiz.api.domain.model.Anime
import com.shonenquiz.api.domain.port.out.AnimePort
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping("/animes")
class AnimeController(private val animePort: AnimePort) {

    @GetMapping
    fun listAll(): ResponseEntity<List<AnimeResponse>> =
        ResponseEntity.ok(animePort.findAllActive().map { it.toResponse() })

    private fun Anime.toResponse() = AnimeResponse(
        id = id, name = name, slug = slug, category = category,
        isFixed = isFixed, coverUrl = coverUrl,
    )
}
