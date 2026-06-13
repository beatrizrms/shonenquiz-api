package com.shonenquiz.api.adapter.out.persistence.repository

import com.shonenquiz.api.adapter.out.persistence.entity.UserAuthProviderEntity
import org.springframework.data.jpa.repository.JpaRepository
import java.util.UUID

interface UserAuthProviderJpaRepository : JpaRepository<UserAuthProviderEntity, UUID> {
    fun findByProviderAndProviderUid(provider: String, providerUid: String): UserAuthProviderEntity?
}
