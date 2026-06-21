-- ============================================================
--  SHONEN QUIZ — Seed Game Rules, Season & Boss Powers (Estado Final)
--  Consolida: V14, V16, V17, V18, V30, V31, V33
-- ============================================================

-- ── Temporada inicial (Junho 2026) ────────────────────────────
INSERT INTO seasons (id, name, starts_at, ends_at, active)
VALUES (
    gen_random_uuid(),
    'Temporada de Junho',
    '2026-06-01T00:00:00Z',
    '2026-06-30T23:59:59Z',
    TRUE
)
ON CONFLICT DO NOTHING;

-- ── Game rules ───────────────────────────────────────────────
INSERT INTO game_rules (id, name, label, description, trigger_type, trigger_value, trigger_threshold, effect_type, effect_value, bonus_metric) VALUES
(
    'a1b2c3d4-0001-0001-0001-000000000001',
    'combo_5_correct',
    '🔥 Combo de 5! Bônus de +50% no score',
    'Acionado quando o jogador acerta 5 respostas consecutivas na mesma sessão. Só dispara uma vez por sessão.',
    'consecutive_correct', 5, NULL, 'bonus_percent', 50.0, 'score'
),
(
    'a1b2c3d4-0002-0002-0002-000000000002',
    'combo_5_wrong',
    '💀 5 erros seguidos — score zerado!',
    'Acionado quando o jogador erra 5 respostas consecutivas. Zera o score acumulado na sessão.',
    'consecutive_wrong', 5, NULL, 'zero', NULL, 'score'
),
(
    'a1b2c3d4-0003-0003-0003-000000000003',
    'perfect_accuracy',
    '⭐ Precisão Perfeita! Bônus de +100% no score',
    'Acionado ao final da sessão quando o jogador acerta 100% das perguntas.',
    'accuracy_final', 100, NULL, 'bonus_percent', 100.0, 'score'
),
(
    'a1b2c3d4-0004-0004-0004-000000000004',
    'fast_answers_50pct',
    '⚡ Velocista! 50%+ das respostas em menos de 15s',
    'Acionado ao final da sessão quando pelo menos 50% das respostas foram dadas em menos de 15 segundos.',
    'fast_answers_percent', 50, 15000, 'bonus_percent', 30.0, 'score'
)
ON CONFLICT (id) DO NOTHING;

INSERT INTO game_rule_modes (rule_id, mode) VALUES
('a1b2c3d4-0001-0001-0001-000000000001', 'classic'),
('a1b2c3d4-0001-0001-0001-000000000001', 'daily'),
('a1b2c3d4-0002-0002-0002-000000000002', 'classic'),
('a1b2c3d4-0002-0002-0002-000000000002', 'daily'),
('a1b2c3d4-0003-0003-0003-000000000003', 'classic'),
('a1b2c3d4-0003-0003-0003-000000000003', 'survival'),
('a1b2c3d4-0003-0003-0003-000000000003', 'daily'),
('a1b2c3d4-0004-0004-0004-000000000004', 'classic'),
('a1b2c3d4-0004-0004-0004-000000000004', 'daily')
ON CONFLICT DO NOTHING;

-- ── Boss powers ──────────────────────────────────────────────
-- effect_type values (final, after V33 cleanup):
--   wrong_answer, screen_distraction, cancel_active_help, fake_alternatives,
--   speed_timer, time_penalty, shuffle_alternatives, force_random,
--   extra_hard_question, hide_timer, blur_question, scramble_words,
--   hide_options_text
INSERT INTO boss_powers (villain_name, power_name, raridade, effect_type, effect_duration, allowed_modes, description) VALUES
    -- Naruto universe
    ('Kabuto',       'Izanami',                'lendario', 'wrong_answer',        1, 'classic,timed,daily', 'Perde a rodada automaticamente sem poder responder'),
    ('Madara',       'Limbo',                  'lendario', 'screen_distraction',  1, 'classic,timed,daily', 'Cria sombras que cobrem parte da tela'),
    ('Obito',        'Kamui',                  'epico',    'hide_options_text',   1, 'classic,timed,daily', 'As alternativas entram e saem da dimensão em loop'),
    ('Sasuke',       'Amaterasu',              'epico',    'cancel_active_help',  1, 'classic,timed,daily', 'Cancela qualquer ajuda ou bônus ativo'),
    ('Orochimaru',   'Genjutsu',               'raro',     'fake_alternatives',   1, 'classic,timed,daily', 'Marca alternativas erradas como suspeitas de corretas'),
    ('Pain',         'Chibaku Tensei',         'lendario', 'wrong_answer',        1, 'classic,timed,daily', 'Prende o jogador sem poder responder'),
    ('Aizen',        'Kyoka Suigetsu',         'lendario', 'hide_timer',          1, 'classic,timed,daily', 'Ilusão perfeita — o jogador não sabe quanto tempo resta'),
    ('Twice',        'Double',                 'epico',    'scramble_words',      1, 'classic,timed,daily', 'Duplica e embaralha as palavras até confundir'),
    ('Gentle',       'Elás',                   'raro',     'scramble_words',      1, 'classic,timed,daily', 'Dobra a realidade e mistura as letras das respostas'),
    ('Toga',         'Transformação',          'raro',     'scramble_words',      1, 'classic,timed,daily', 'Transforma as palavras em versões distorcidas de si mesmas'),
    -- One Piece universe
    ('Barba Branca',  'Gura Gura no Mi',       'lendario', 'screen_distraction',  1, 'classic,timed,daily', 'Abala a tela e dificulta a leitura'),
    ('Kizaru',        'Soru',                  'raro',     'speed_timer',         1, 'classic,timed,daily', 'Acelera o cronômetro'),
    ('Barba Negra',   'Yami Yami no Mi',       'lendario', 'cancel_active_help',  1, 'classic,timed,daily', 'Anula qualquer habilidade ou bônus ativo'),
    ('Magellan',      'Veneno',                'epico',    'time_penalty',        1, 'classic,timed,daily', 'Reduz o tempo restante em 10 segundos'),
    ('Katakuri',      'Mochi',                 'epico',    'hide_options_text',   1, 'classic,timed,daily', 'Envolve as alternativas em mochi — visíveis só por instantes'),
    ('Crocodile',     'Areia',                 'raro',     'fake_alternatives',   1, 'classic,timed,daily', 'Distorce o campo de areia confundindo as alternativas'),
    ('Madara',        'Mugen Tsukuyomi',       'lendario', 'force_random',        1, 'classic,timed,daily', 'Seleciona uma alternativa aleatória pelo jogador'),
    ('Doflamingo',    'Parasite',              'raro',     'blur_question',       1, 'classic,timed,daily', 'Envolve a tela em fios que distorcem a visão'),
    -- MHA universe
    ('Shigaraki',    'Explosão',               'epico',    'cancel_active_help',  1, 'classic,timed,daily', 'Desintegra e cancela qualquer poder ativo do jogador'),
    ('All For One',  'All For One',            'lendario', 'cancel_active_help',  1, 'classic,timed,daily', 'Rouba e cancela qualquer poder ativo do jogador'),
    ('Aizawa',       'Apagar Individualidade', 'epico',    'cancel_active_help',  1, 'classic,timed,daily', 'Desativa ajudas e bônus ativos'),
    ('Shinso',       'Controle Mental',        'raro',     'force_random',        1, 'classic,timed,daily', 'Controla o jogador para escolher aleatoriamente'),
    ('Overhaul',     'Kai Chisaki',            'epico',    'blur_question',       1, 'classic,timed,daily', 'Desintegra e reconstrói a pergunta diante dos seus olhos'),
    -- JJK universe
    ('Sukuna',       'Sukuna',                 'lendario', 'extra_hard_question', 1, 'classic,timed,daily', 'Substitui a pergunta por uma de dificuldade impossível'),
    ('Sukuna',       'Cleave',                 'epico',    'time_penalty',        1, 'classic,timed,daily', 'Corta o tempo restante pela metade'),
    ('Mahito',       'Idle Transfiguration',   'lendario', 'extra_hard_question', 1, 'classic,timed,daily', 'Transforma a pergunta em uma impossível'),
    ('Choso',        'Manipulação de Sangue',  'raro',     'speed_timer',         1, 'classic,timed,daily', 'Reduz o tempo de resposta disponível'),
    -- JoJo universe
    ('DIO',          'Za Warudo',              'lendario', 'speed_timer',         2, 'classic,timed,daily', 'Para o tempo a favor do vilão por 2 perguntas'),
    ('Okuyasu',      'The Hand',               'epico',    'shuffle_alternatives',1, 'classic,timed,daily', 'Embaralha as alternativas na tela'),
    ('Diavolo',      'King Crimson',           'lendario', 'wrong_answer',        1, 'classic,timed,daily', 'Apaga a rodada — o jogador perde sem responder'),
    -- AOT universe
    ('Eren',         'Titan Fundador',         'lendario', 'extra_hard_question', 1, 'classic,timed,daily', 'Muda completamente a pergunta para uma impossível'),
    ('Zeke',         'Titã Bestial',           'epico',    'screen_distraction',  1, 'classic,timed,daily', 'Lança bombardeio visual que atrapalha a leitura'),
    ('Reiner',       'Titã Blindado',          'raro',     'speed_timer',         1, 'classic,timed,daily', 'Pressão do Titã Blindado acelera o cronômetro'),
    -- Demon Slayer universe
    ('Muzan',        'Kibutsuji Blood',        'lendario', 'speed_timer',         3, 'classic,timed,daily', 'Efeito negativo contínuo por 3 perguntas'),
    ('Akaza',        'Arte Demoníaca',         'epico',    'screen_distraction',  1, 'classic,timed,daily', 'Explosão de artes demoníacas cobre a tela'),
    ('Kokushibo',    'Respiração Lunar',       'lendario', 'fake_alternatives',   1, 'classic,timed,daily', 'Cria ilusões de alternativas corretas'),
    -- DBZ/DBS universe
    ('Freeza',       'Death Beam',             'epico',    'time_penalty',        1, 'classic,timed,daily', 'Raio da morte reduz o tempo restante'),
    ('Cell',         'Cell Absorption',        'lendario', 'cancel_active_help',  1, 'classic,timed,daily', 'Absorve e cancela qualquer poder ativo'),
    -- Black Clover universe
    ('Liebe',        'Anti Magia',             'epico',    'cancel_active_help',  1, 'classic,timed,daily', 'Cancela completamente uma ajuda em uso'),
    ('Julius',       'Magia do Tempo',         'lendario', 'speed_timer',         2, 'classic,timed,daily', 'Manipula o tempo acelerando o cronômetro por 2 perguntas'),
    -- Code Geass universe
    ('Lelouch',      'Geass',                  'lendario', 'force_random',        1, 'classic,timed,daily', 'Força o jogador a escolher uma alternativa aleatória'),
    -- Bleach universe
    ('Yhwach',       'Allmighty',              'lendario', 'hide_timer',          2, 'classic,timed,daily', 'Apaga a percepção do tempo por 2 perguntas'),
    ('Sosuke Aizen', 'Hado 90',                'epico',    'hide_timer',          1, 'classic,timed,daily', 'Esconde o cronômetro com magia de ilusão'),
    -- Dr. Stone universe
    ('Tsukasa',      'Pedra do Tempo',         'epico',    'blur_question',       1, 'classic,timed,daily', 'Congela e turva a memória — a pergunta some temporariamente'),
    -- MHA universe (cont.)
    ('Tobi',         'Aparição',               'raro',     'hide_options_text',   1, 'classic,timed,daily', 'As alternativas piscam como fantasmas na tela')
ON CONFLICT DO NOTHING;
