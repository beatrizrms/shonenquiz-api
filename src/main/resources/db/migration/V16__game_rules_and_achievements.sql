-- ── Game rules ────────────────────────────────────────────────────────────────
CREATE TABLE game_rules (
    id            UUID         NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
    name          VARCHAR(100) NOT NULL,
    label         VARCHAR(200) NOT NULL,
    description   TEXT,
    trigger_type  VARCHAR(50)  NOT NULL,
    trigger_value INT          NOT NULL,
    effect_type   VARCHAR(50)  NOT NULL,
    effect_value  DECIMAL(10,2),
    bonus_metric  VARCHAR(20)  NOT NULL DEFAULT 'score',
    active        BOOLEAN      NOT NULL DEFAULT TRUE,
    created_at    TIMESTAMPTZ  NOT NULL DEFAULT NOW()
);

-- Relação regra ↔ modo de jogo (1 regra pode valer para N modos)
CREATE TABLE game_rule_modes (
    rule_id UUID        NOT NULL REFERENCES game_rules(id) ON DELETE CASCADE,
    mode    VARCHAR(20) NOT NULL,
    PRIMARY KEY (rule_id, mode)
);

-- Conquistas obtidas por sessão (1x por regra por sessão)
CREATE TABLE session_achievements (
    id              UUID        NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
    session_id      UUID        NOT NULL REFERENCES game_sessions(id) ON DELETE CASCADE,
    rule_id         UUID        NOT NULL REFERENCES game_rules(id),
    triggered_at    TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    bonus_applied   DECIMAL(10,2),
    question_number INT,
    UNIQUE (session_id, rule_id)
);

-- Rastrear sequência de erros consecutivos na sessão
ALTER TABLE game_sessions
    ADD COLUMN wrong_streak INT NOT NULL DEFAULT 0;

-- ── Seeds ─────────────────────────────────────────────────────────────────────
INSERT INTO game_rules (id, name, label, description, trigger_type, trigger_value, effect_type, effect_value, bonus_metric) VALUES
(
    'a1b2c3d4-0001-0001-0001-000000000001',
    'combo_5_correct',
    '🔥 Combo de 5! Bônus de +50% no score',
    'Acionado quando o jogador acerta 5 respostas consecutivas na mesma sessão. Só dispara uma vez por sessão.',
    'consecutive_correct',
    5,
    'bonus_percent',
    50.0,
    'score'
),
(
    'a1b2c3d4-0002-0002-0002-000000000002',
    'combo_5_wrong',
    '💀 5 erros seguidos — score zerado!',
    'Acionado quando o jogador erra 5 respostas consecutivas. Zera o score acumulado na sessão.',
    'consecutive_wrong',
    5,
    'zero',
    NULL,
    'score'
),
(
    'a1b2c3d4-0003-0003-0003-000000000003',
    'perfect_accuracy',
    '⭐ Precisão Perfeita! Bônus de +100% no score',
    'Acionado ao final da sessão quando o jogador acerta 100% das perguntas.',
    'accuracy_final',
    100,
    'bonus_percent',
    100.0,
    'score'
);

INSERT INTO game_rule_modes (rule_id, mode) VALUES
('a1b2c3d4-0001-0001-0001-000000000001', 'classic'),
('a1b2c3d4-0001-0001-0001-000000000001', 'daily'),
('a1b2c3d4-0002-0002-0002-000000000002', 'classic'),
('a1b2c3d4-0002-0002-0002-000000000002', 'daily'),
('a1b2c3d4-0003-0003-0003-000000000003', 'classic'),
('a1b2c3d4-0003-0003-0003-000000000003', 'survival'),
('a1b2c3d4-0003-0003-0003-000000000003', 'daily');
