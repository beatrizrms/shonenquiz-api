package com.shonenquiz.api.domain.service

import com.shonenquiz.api.adapter.out.persistence.repository.GameSessionJpaRepository
import com.shonenquiz.api.domain.model.Anime
import com.shonenquiz.api.domain.model.CatAvatar
import com.shonenquiz.api.domain.model.RecentSession
import com.shonenquiz.api.domain.model.User
import com.shonenquiz.api.domain.model.UserStats
import com.shonenquiz.api.domain.port.`in`.SaveAvatarCommand
import com.shonenquiz.api.domain.port.`in`.UserUseCase
import com.shonenquiz.api.domain.port.out.AbilitySlot
import com.shonenquiz.api.domain.port.out.AbilitySlotPort
import com.shonenquiz.api.domain.port.out.AnimePort
import com.shonenquiz.api.domain.port.out.AvatarPort
import com.shonenquiz.api.domain.port.out.EquipmentPort
import com.shonenquiz.api.domain.port.out.ShopPort
import com.shonenquiz.api.domain.port.out.UserPort
import com.shonenquiz.api.exception.BusinessException
import com.shonenquiz.api.exception.ResourceNotFoundException
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional
import java.util.UUID

@Service
class UserService(
    private val userPort: UserPort,
    private val avatarPort: AvatarPort,
    private val animePort: AnimePort,
    private val equipmentPort: EquipmentPort,
    private val shopPort: ShopPort,
    private val abilitySlotPort: AbilitySlotPort,
    private val sessionRepo: GameSessionJpaRepository,
) : UserUseCase {

    override fun getProfile(userId: UUID): User =
        userPort.findById(userId) ?: throw ResourceNotFoundException("Usuário não encontrado")

    override fun getStats(userId: UUID): UserStats {
        val total = sessionRepo.countFinished(userId)
        val correct = sessionRepo.sumCorrectCount(userId)
        val answered = sessionRepo.sumQuestionsAnswered(userId)
        val accuracy = if (answered > 0) ((correct * 100) / answered).toInt() else 0
        return UserStats(
            totalSessions = total,
            accuracy = accuracy,
            maxCombo = sessionRepo.maxCombo(userId),
            totalScore = sessionRepo.sumScore(userId),
        )
    }

    override fun getRecentSessions(userId: UUID): List<RecentSession> =
        sessionRepo.findTop5ByUserIdAndStatusInOrderByStartedAtDesc(userId, listOf("won", "lost"))
            .map { s ->
                RecentSession(
                    sessionId = s.id,
                    mode = s.mode,
                    status = s.status,
                    score = s.score,
                    questionsAnswered = s.questionsAnswered,
                    questionsTotal = s.questionsTotal,
                )
            }

    @Transactional
    override fun updateUsername(userId: UUID, username: String): User {
        if (userPort.existsByUsername(username)) {
            throw BusinessException("Username '$username' já está em uso")
        }
        return userPort.updateUsername(userId, username)
    }

    override fun getAvatar(userId: UUID): CatAvatar =
        avatarPort.findByUserId(userId) ?: throw ResourceNotFoundException("Avatar não encontrado")

    @Transactional
    override fun saveAvatar(userId: UUID, command: SaveAvatarCommand): CatAvatar {
        val existing = avatarPort.findByUserId(userId)
        val avatar = CatAvatar(
            id = existing?.id ?: UUID.randomUUID(),
            userId = userId,
            catName = command.catName,
            breed = command.breed,
            eyeColor = command.eyeColor,
            expression = command.expression,
            accessory = command.accessory,
            background = command.background,
        )
        val saved = avatarPort.save(avatar)
        if (existing == null) {
            userPort.updateAvatarCatId(userId, saved.id)
        }
        return saved
    }

    override fun getAnimePreferences(userId: UUID): List<Anime> =
        animePort.findPreferencesByUserId(userId)

    @Transactional
    override fun updateAnimePreferences(userId: UUID, animeIds: List<UUID>) {
        if (animeIds.size < 3) {
            throw BusinessException("Selecione pelo menos 3 animes")
        }
        animePort.replacePreferences(userId, animeIds.distinct())
    }

    override fun getEquippedItems(userId: UUID): List<String> =
        equipmentPort.findEquipped(userId)

    @Transactional
    override fun equipItem(userId: UUID, itemRef: String) {
        // Conjuntos (set-*) são equipados como look; itens avulsos exigem posse.
        if (!itemRef.startsWith("set-") && !shopPort.isOwned(userId, itemRef)) {
            throw BusinessException("Você não possui este item")
        }
        equipmentPort.equip(userId, itemRef)
    }

    @Transactional
    override fun unequipItem(userId: UUID, itemRef: String) {
        equipmentPort.unequip(userId, itemRef)
    }

    override fun getAbilitySlots(userId: UUID): List<AbilitySlot> =
        abilitySlotPort.findSlots(userId)

    @Transactional
    override fun equipAbilitySlot(userId: UUID, slotIndex: Int, setRef: String) {
        val slots = abilitySlotPort.findSlots(userId)
        val target = slots.find { it.slotIndex == slotIndex }
            ?: throw BusinessException("Slot $slotIndex inválido")
        if (!target.unlocked) throw BusinessException("Slot $slotIndex ainda não desbloqueado")

        // Um mesmo set não pode ocupar dois slots
        if (slots.any { it.setRef == setRef && it.slotIndex != slotIndex }) {
            throw BusinessException("Este set já está equipado em outro slot")
        }
        abilitySlotPort.equipSlot(userId, slotIndex, setRef)
    }

    @Transactional
    override fun unequipAbilitySlot(userId: UUID, slotIndex: Int) {
        abilitySlotPort.unequipSlot(userId, slotIndex)
    }
}
