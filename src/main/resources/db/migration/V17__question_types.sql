-- V17 — Suporte a novos tipos de pergunta
-- Adiciona selected_order para perguntas de tipo chronological
-- (armazena os IDs das opções na ordem escolhida pelo jogador)

ALTER TABLE session_answers
    ADD COLUMN IF NOT EXISTS selected_order TEXT;
