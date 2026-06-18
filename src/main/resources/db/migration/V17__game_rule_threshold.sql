-- Campo opcional para trigger com limiar secundário (ex: tempo em ms)
ALTER TABLE game_rules ADD COLUMN trigger_threshold INT;

-- Nova regra: 50%+ das respostas antes de 15s → +30% no score
INSERT INTO game_rules (id, name, label, description, trigger_type, trigger_value, trigger_threshold, effect_type, effect_value, bonus_metric)
VALUES (
    'a1b2c3d4-0004-0004-0004-000000000004',
    'fast_answers_50pct',
    '⚡ Velocista! 50%+ das respostas em menos de 15s',
    'Acionado ao final da sessão quando pelo menos 50% das respostas foram dadas em menos de 15 segundos.',
    'fast_answers_percent',
    50,
    15000,
    'bonus_percent',
    30.0,
    'score'
);

INSERT INTO game_rule_modes (rule_id, mode) VALUES
('a1b2c3d4-0004-0004-0004-000000000004', 'classic'),
('a1b2c3d4-0004-0004-0004-000000000004', 'daily');
