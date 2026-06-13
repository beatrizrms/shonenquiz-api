package com.shonenquiz.api.exception

class InvalidTokenException(message: String) : RuntimeException(message)
class ResourceNotFoundException(message: String) : RuntimeException(message)
class BusinessException(message: String) : RuntimeException(message)
