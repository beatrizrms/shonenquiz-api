package com.shonenquiz.api.domain.port.`in`

import com.shonenquiz.api.domain.model.FriendProfile
import com.shonenquiz.api.domain.model.FriendRequest
import com.shonenquiz.api.domain.model.FriendSummary
import com.shonenquiz.api.domain.model.RankingEntry
import java.util.UUID

interface FriendUseCase {
    fun getMyFriendCode(userId: UUID): String
    fun searchByFriendCode(code: String, currentUserId: UUID): FriendProfile
    fun sendRequest(requesterId: UUID, friendCode: String)
    fun acceptRequest(userId: UUID, friendshipId: UUID)
    fun removeFriend(userId: UUID, friendshipId: UUID)
    fun listFriends(userId: UUID): List<FriendSummary>
    fun listPendingRequests(userId: UUID): List<FriendRequest>
    fun getFriendProfile(currentUserId: UUID, friendUserId: UUID): FriendProfile
    fun getFriendRanking(userId: UUID): List<RankingEntry>
}
