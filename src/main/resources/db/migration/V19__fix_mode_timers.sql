-- Corrige timers dos modos especiais:
-- Contrarrelógio: 60s de sessão global, sem timer por pergunta (999s = ilimitado)
-- Sobrevivência:  30s de sessão global, sem timer por pergunta (999s = ilimitado)

UPDATE game_mode_configs
SET timer_seconds         = 999,
    session_timer_seconds = 60
WHERE mode = 'timed';

UPDATE game_mode_configs
SET timer_seconds         = 999,
    session_timer_seconds = 30
WHERE mode = 'survival';
