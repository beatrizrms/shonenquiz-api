-- ============================================================
--  V16 — Redesenho das tabelas de desafio diário
--  daily_challenges vira catálogo cíclico (sem coluna date)
--  user_daily_challenge_completions agora usa challenge_date como PK
-- ============================================================

DROP TABLE IF EXISTS user_daily_challenge_completions;
DROP TABLE IF EXISTS daily_challenges;

CREATE TABLE daily_challenges (
    id               UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
    name             VARCHAR(60) NOT NULL,
    description      TEXT        NOT NULL,
    questions_count  INT         NOT NULL DEFAULT 10,
    lives_count      INT         NOT NULL DEFAULT 3,
    no_helps         BOOLEAN     NOT NULL DEFAULT FALSE,
    difficulty_filter VARCHAR(20) NOT NULL DEFAULT 'all',   -- all | hard | impossible
    single_anime     BOOLEAN     NOT NULL DEFAULT FALSE,
    timer_seconds    INT         NOT NULL DEFAULT 30,
    require_combo    INT,                                    -- NULL = sem requisito
    reward_coins     INT         NOT NULL DEFAULT 500,
    sort_order       INT         NOT NULL DEFAULT 0,
    active           BOOLEAN     NOT NULL DEFAULT TRUE
);

CREATE TABLE user_daily_challenge_completions (
    user_id        UUID        NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    challenge_id   UUID        NOT NULL REFERENCES daily_challenges(id),
    challenge_date DATE        NOT NULL,
    session_id     UUID        REFERENCES game_sessions(id) ON DELETE SET NULL,
    status         VARCHAR(20) NOT NULL DEFAULT 'completed',  -- completed | failed
    completed_at   TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    PRIMARY KEY (user_id, challenge_date)
);

-- ── Catálogo de desafios ──────────────────────────────────────────────────────

INSERT INTO daily_challenges
    (name, description, questions_count, lives_count, no_helps, difficulty_filter, single_anime, timer_seconds, require_combo, reward_coins, sort_order)
VALUES
    -- 0: Sem Erros
    ('Sem Erros',
     '5 perguntas difíceis. Erre uma e acabou. Sem ajudas.',
     5, 1, TRUE, 'hard', FALSE, 30, NULL, 500, 0),

    -- 1: Velocidade Pura
    ('Velocidade Pura',
     '10 perguntas com apenas 8 segundos cada. Seja rápido.',
     10, 3, FALSE, 'all', FALSE, 8, NULL, 500, 1),

    -- 2: Anime Único
    ('Anime Único',
     '10 perguntas de um único anime sorteado da sua lista.',
     10, 3, FALSE, 'all', TRUE, 30, NULL, 500, 2),

    -- 3: Apenas Difíceis
    ('Apenas Difíceis',
     '10 perguntas hard. Sem moleza.',
     10, 3, FALSE, 'hard', FALSE, 30, NULL, 500, 3),

    -- 4: Precisão Total
    ('Precisão Total',
     '10 perguntas sem nenhuma ajuda disponível.',
     10, 3, TRUE, 'all', FALSE, 30, NULL, 500, 4),

    -- 5: Combo Master
    ('Combo Master',
     '10 perguntas. Alcance combo ≥ 8 para vencer.',
     10, 3, FALSE, 'all', FALSE, 30, 8, 500, 5),

    -- 6: Sniper
    ('Sniper',
     '5 perguntas impossíveis. 1 vida. Sem ajudas.',
     5, 1, TRUE, 'impossible', FALSE, 30, NULL, 500, 6),

    -- 7: Relâmpago
    ('Relâmpago',
     '10 perguntas com 10 segundos cada. Sem ajudas.',
     10, 3, TRUE, 'all', FALSE, 10, NULL, 500, 7),

    -- 8: Anime Difícil
    ('Anime Difícil',
     '8 perguntas hard de um anime da sua lista. Sem ajudas.',
     8, 2, TRUE, 'hard', TRUE, 30, NULL, 500, 8),

    -- 9: Perfeccionista
    ('Perfeccionista',
     '8 perguntas, 1 única vida, sem ajudas.',
     8, 1, TRUE, 'all', FALSE, 30, NULL, 500, 9),

    -- 10: Flash
    ('Flash',
     '8 perguntas com apenas 5 segundos cada.',
     8, 3, FALSE, 'all', FALSE, 5, NULL, 500, 10),

    -- 11: Especialista
    ('Especialista',
     '10 perguntas hard sem nenhuma ajuda. Só os melhores.',
     10, 2, TRUE, 'hard', FALSE, 30, NULL, 500, 11),

    -- 12: Anime Sem Falhas
    ('Anime Sem Falhas',
     '8 perguntas de um único anime. Erre uma e acabou.',
     8, 1, FALSE, 'all', TRUE, 30, NULL, 500, 12),

    -- 13: Turbo Difícil
    ('Turbo Difícil',
     '8 perguntas hard com apenas 10 segundos cada.',
     8, 3, FALSE, 'hard', FALSE, 10, NULL, 500, 13),

    -- 14: Modo Brutal
    ('Modo Brutal',
     '5 perguntas impossíveis. Sem ajudas. Tempo reduzido.',
     5, 3, TRUE, 'impossible', FALSE, 20, NULL, 500, 14),

    -- 15: Combo Veloz
    ('Combo Veloz',
     '10 perguntas com 15 segundos cada. Alcance combo ≥ 6.',
     10, 3, FALSE, 'all', FALSE, 15, 6, 500, 15),

    -- 16: Único e Difícil
    ('Único e Difícil',
     '8 perguntas hard de um anime da sua lista.',
     8, 2, FALSE, 'hard', TRUE, 30, NULL, 500, 16),

    -- 17: Sete Espadas
    ('Sete Espadas',
     '7 perguntas hard com 25 segundos cada. Sem ajudas e 1 vida.',
     7, 1, TRUE, 'hard', FALSE, 25, NULL, 500, 17);
