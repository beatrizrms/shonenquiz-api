package com.shonenquiz.api.adapter.out.persistence.repository

import com.shonenquiz.api.adapter.out.persistence.entity.UserEntity
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.Modifying
import org.springframework.data.jpa.repository.Query
import java.util.UUID

interface UserJpaRepository : JpaRepository<UserEntity, UUID> {
    fun findByEmail(email: String): UserEntity?
    fun existsByUsername(username: String): Boolean
    fun findByFriendCode(friendCode: String): UserEntity?

    @Modifying
    @Query("UPDATE UserEntity u SET u.nekocoins = u.nekocoins - :amount WHERE u.id = :id AND u.nekocoins >= :amount")
    fun deductCoins(id: UUID, amount: Int): Int

    @Modifying
    @Query("UPDATE UserEntity u SET u.gems = u.gems - :amount WHERE u.id = :id AND u.gems >= :amount")
    fun deductGems(id: UUID, amount: Int): Int

    @Modifying
    @Query("UPDATE UserEntity u SET u.nekocoins = u.nekocoins + :amount WHERE u.id = :id")
    fun addCoins(id: UUID, amount: Int): Int

    @Modifying
    @Query("UPDATE UserEntity u SET u.gems = u.gems + :amount WHERE u.id = :id")
    fun addGems(id: UUID, amount: Int): Int
}
