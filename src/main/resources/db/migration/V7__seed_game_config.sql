-- ============================================================
--  SHONEN QUIZ — Seed Game Config (Estado Final)
--  Consolida: V27, V28, V29, V53
--  Inclui: game_mode_configs, level_thresholds, feature_toggles
-- ============================================================

-- ── Modos de jogo ────────────────────────────────────────────
INSERT INTO game_mode_configs (
    mode, display_name, description,
    questions_total, timer_seconds, lives, sort_order,
    base_points, max_speed_multiplier, question_time_limit_ms
) VALUES
    ('classic',  'Clássico',       '20 perguntas, 3 vidas, timer de 30s por pergunta.',               20, 30, 3, 0, 5, 3.0, 30000),
    ('timed',    'Contrarrelógio', 'Máximo de acertos em 60 segundos por pergunta.',                  20, 60, 3, 1, 5, 3.0, 60000),
    ('survival', 'Sobrevivência',  'Game over no primeiro erro. Timer de 30s por pergunta.',          20, 30, 1, 2, 5, 3.0, 30000),
    ('daily',    'Desafio Diário', 'Desafio especial do dia com recompensa garantida. 20 perguntas.', 20, 30, 3, 3, 5, 3.0, 30000)
ON CONFLICT (mode) DO NOTHING;

-- ── Thresholds de nível ──────────────────────────────────────
INSERT INTO level_thresholds (level, title, min_xp) VALUES
    (1,  'Espectador',       0),
    (2,  'Iniciante',        2000),
    (3,  'Fã',               4000),
    (4,  'Otaku',            6000),
    (5,  'Senpai',           8000),
    (6,  'Sensei',          10000),
    (7,  'Mestre',          12000),
    (8,  'Elite',           14000),
    (9,  'Rei dos Piratas', 16000),
    (10, 'Lendário',        18000)
ON CONFLICT (level) DO NOTHING;

-- ── Feature toggles ──────────────────────────────────────────
INSERT INTO feature_toggles (key, enabled, description) VALUES
    ('no_repeat_questions', TRUE, 'Exclui perguntas respondidas nas últimas 5 sessões finalizadas do usuário')
ON CONFLICT (key) DO NOTHING;
