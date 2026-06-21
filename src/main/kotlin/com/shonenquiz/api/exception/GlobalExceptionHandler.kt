package com.shonenquiz.api.exception

import org.slf4j.LoggerFactory
import org.springframework.http.HttpStatus
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.MethodArgumentNotValidException
import org.springframework.web.bind.annotation.ExceptionHandler
import org.springframework.web.bind.annotation.RestControllerAdvice
import java.time.OffsetDateTime

@RestControllerAdvice
class GlobalExceptionHandler {

    private val log = LoggerFactory.getLogger(javaClass)

    @ExceptionHandler(InvalidTokenException::class)
    fun handleInvalidToken(ex: InvalidTokenException) =
        errorResponse(HttpStatus.UNAUTHORIZED, ex.message ?: "Token inválido")

    @ExceptionHandler(ResourceNotFoundException::class)
    fun handleNotFound(ex: ResourceNotFoundException) =
        errorResponse(HttpStatus.NOT_FOUND, ex.message ?: "Recurso não encontrado")

    @ExceptionHandler(BusinessException::class)
    fun handleBusiness(ex: BusinessException) =
        errorResponse(HttpStatus.UNPROCESSABLE_ENTITY, ex.message ?: "Operação inválida")

    @ExceptionHandler(MethodArgumentNotValidException::class)
    fun handleValidation(ex: MethodArgumentNotValidException): ResponseEntity<ErrorResponse> {
        val message = ex.bindingResult.fieldErrors
            .joinToString(", ") { "${it.field}: ${it.defaultMessage}" }
        return errorResponse(HttpStatus.BAD_REQUEST, message)
    }

    @ExceptionHandler(Exception::class)
    fun handleGeneric(ex: Exception): ResponseEntity<ErrorResponse> {
        log.error("Erro interno não tratado: ${ex.message}", ex)
        return errorResponse(HttpStatus.INTERNAL_SERVER_ERROR, "Erro interno do servidor")
    }

    private fun errorResponse(status: HttpStatus, message: String) =
        ResponseEntity.status(status).body(ErrorResponse(status.value(), message))
}

data class ErrorResponse(
    val status: Int,
    val message: String,
    val timestamp: OffsetDateTime = OffsetDateTime.now(),
)
