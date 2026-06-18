package com.shonenquiz.api.domain.model

import java.time.OffsetDateTime
import java.util.UUID

data class UserOwnedItem(
    val userId: UUID,
    val itemRef: String,
    val source: String,           // shop | ranking | level_up | season
    val acquiredAt: OffsetDateTime,
)
