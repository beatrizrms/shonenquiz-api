-- ============================================================
--  Seed — Perguntas de teste (modo Clássico)
-- ============================================================

DO $$
DECLARE
    v_dbz      UUID;
    v_naruto   UUID;
    v_op       UUID;
    v_hxh      UUID;
    v_system   UUID := '00000000-0000-0000-0000-000000000001';

    q1 UUID; q2 UUID; q3 UUID; q4 UUID; q5 UUID;
    q6 UUID; q7 UUID; q8 UUID; q9 UUID; q10 UUID;
BEGIN
    SELECT id INTO v_dbz    FROM animes WHERE slug = 'dragon-ball-z'  LIMIT 1;
    SELECT id INTO v_naruto FROM animes WHERE slug = 'naruto'          LIMIT 1;
    SELECT id INTO v_op     FROM animes WHERE slug = 'one-piece'       LIMIT 1;
    SELECT id INTO v_hxh    FROM animes WHERE slug = 'hunter-x-hunter' LIMIT 1;

    -- Garantir que o usuário sistema existe para created_by
    INSERT INTO users (id, username, email, level, xp, nekocoins, gems, lives, league, league_points)
    VALUES (v_system, 'system', 'system@shonenquiz.internal', 1, 0, 0, 0, 3, 'bronze', 0)
    ON CONFLICT (id) DO NOTHING;

    -- ── Perguntas ──────────────────────────────────────────
    q1  := gen_random_uuid();
    q2  := gen_random_uuid();
    q3  := gen_random_uuid();
    q4  := gen_random_uuid();
    q5  := gen_random_uuid();
    q6  := gen_random_uuid();
    q7  := gen_random_uuid();
    q8  := gen_random_uuid();
    q9  := gen_random_uuid();
    q10 := gen_random_uuid();

    INSERT INTO questions (id, anime_id, type, difficulty, question_text, detail_text, active, created_by) VALUES
    (q1,  v_dbz,   'text', 'easy',   'Qual é o nível máximo de Super Saiyajin que Goku alcança em Dragon Ball Z?',             'Considere apenas as transformações canônicas do anime original.',         TRUE, v_system),
    (q2,  v_dbz,   'text', 'easy',   'Qual é o nome do planeta natal de Goku?',                                                 'Goku foi enviado para a Terra como bebê.',                                TRUE, v_system),
    (q3,  v_naruto,'text', 'easy',   'Qual é o nome da técnica mais famosa de Naruto?',                                         'Ele usa esta técnica logo no início do anime.',                           TRUE, v_system),
    (q4,  v_naruto,'text', 'easy',   'Qual é o nome do sensei de Naruto no time 7?',                                            'Ele usa um bandana cobrindo um olho.',                                    TRUE, v_system),
    (q5,  v_op,    'text', 'easy',   'Qual é o sonho de Monkey D. Luffy?',                                                      'É o objetivo central de toda a série.',                                   TRUE, v_system),
    (q6,  v_op,    'text', 'medium', 'Qual fruta do diabo Luffy comeu?',                                                        'Ela transforma seu corpo em borracha.',                                   TRUE, v_system),
    (q7,  v_naruto,'text', 'medium', 'Qual é o nome da vila onde Naruto cresceu?',                                              'Fica no País do Fogo.',                                                   TRUE, v_system),
    (q8,  v_dbz,   'text', 'medium', 'Quem treinou Gohan para enfrentar Cell?',                                                 'O treinamento ocorreu na Sala do Tempo e do Espírito.',                   TRUE, v_system),
    (q9,  v_hxh,   'text', 'medium', 'Qual é o nome do sistema de poderes utilizado em Hunter x Hunter?',                       'Divide os usuários em 6 categorias.',                                     TRUE, v_system),
    (q10, v_op,    'text', 'hard',   'Qual é o nome completo da técnica de espada usada por Zoro que cria ilusão de três corpos?', 'É uma de suas técnicas mais icônicas com três espadas.',              TRUE, v_system);

    -- ── Opções ─────────────────────────────────────────────
    -- Q1: SSJ máximo em DBZ → SSJ3
    INSERT INTO question_options (id, question_id, option_text, is_correct, sort_order) VALUES
    (gen_random_uuid(), q1, 'Super Saiyajin 2', FALSE, 0),
    (gen_random_uuid(), q1, 'Super Saiyajin 3', TRUE,  1),
    (gen_random_uuid(), q1, 'Super Saiyajin 4', FALSE, 2),
    (gen_random_uuid(), q1, 'Super Saiyajin God', FALSE, 3);

    -- Q2: Planeta natal de Goku → Planeta Vegeta
    INSERT INTO question_options (id, question_id, option_text, is_correct, sort_order) VALUES
    (gen_random_uuid(), q2, 'Namekusei', FALSE, 0),
    (gen_random_uuid(), q2, 'Planeta Vegeta', TRUE, 1),
    (gen_random_uuid(), q2, 'Terra', FALSE, 2),
    (gen_random_uuid(), q2, 'Planeta Kaio', FALSE, 3);

    -- Q3: Técnica famosa de Naruto → Rasengan
    INSERT INTO question_options (id, question_id, option_text, is_correct, sort_order) VALUES
    (gen_random_uuid(), q3, 'Chidori', FALSE, 0),
    (gen_random_uuid(), q3, 'Rasengan', TRUE, 1),
    (gen_random_uuid(), q3, 'Kage Bunshin', FALSE, 2),
    (gen_random_uuid(), q3, 'Sharingan', FALSE, 3);

    -- Q4: Sensei do time 7 → Kakashi
    INSERT INTO question_options (id, question_id, option_text, is_correct, sort_order) VALUES
    (gen_random_uuid(), q4, 'Jiraiya', FALSE, 0),
    (gen_random_uuid(), q4, 'Iruka', FALSE, 1),
    (gen_random_uuid(), q4, 'Kakashi Hatake', TRUE, 2),
    (gen_random_uuid(), q4, 'Minato Namikaze', FALSE, 3);

    -- Q5: Sonho de Luffy → Rei dos Piratas
    INSERT INTO question_options (id, question_id, option_text, is_correct, sort_order) VALUES
    (gen_random_uuid(), q5, 'Ser o maior espadachim do mundo', FALSE, 0),
    (gen_random_uuid(), q5, 'Encontrar o One Piece e se tornar o Rei dos Piratas', TRUE, 1),
    (gen_random_uuid(), q5, 'Vingar a morte de Ace', FALSE, 2),
    (gen_random_uuid(), q5, 'Derrotar o Governo Mundial', FALSE, 3);

    -- Q6: Fruta de Luffy → Gomu Gomu no Mi
    INSERT INTO question_options (id, question_id, option_text, is_correct, sort_order) VALUES
    (gen_random_uuid(), q6, 'Mera Mera no Mi', FALSE, 0),
    (gen_random_uuid(), q6, 'Ope Ope no Mi', FALSE, 1),
    (gen_random_uuid(), q6, 'Gomu Gomu no Mi', TRUE, 2),
    (gen_random_uuid(), q6, 'Hito Hito no Mi', FALSE, 3);

    -- Q7: Vila de Naruto → Vila Oculta das Folhas
    INSERT INTO question_options (id, question_id, option_text, is_correct, sort_order) VALUES
    (gen_random_uuid(), q7, 'Vila Oculta da Areia', FALSE, 0),
    (gen_random_uuid(), q7, 'Vila Oculta das Folhas', TRUE, 1),
    (gen_random_uuid(), q7, 'Vila Oculta da Névoa', FALSE, 2),
    (gen_random_uuid(), q7, 'Vila Oculta das Nuvens', FALSE, 3);

    -- Q8: Quem treinou Gohan → Goku
    INSERT INTO question_options (id, question_id, option_text, is_correct, sort_order) VALUES
    (gen_random_uuid(), q8, 'Piccolo', FALSE, 0),
    (gen_random_uuid(), q8, 'Vegeta', FALSE, 1),
    (gen_random_uuid(), q8, 'Goku', TRUE, 2),
    (gen_random_uuid(), q8, 'Trunks do Futuro', FALSE, 3);

    -- Q9: Sistema de poderes HxH → Nen
    INSERT INTO question_options (id, question_id, option_text, is_correct, sort_order) VALUES
    (gen_random_uuid(), q9, 'Haki', FALSE, 0),
    (gen_random_uuid(), q9, 'Chakra', FALSE, 1),
    (gen_random_uuid(), q9, 'Ki', FALSE, 2),
    (gen_random_uuid(), q9, 'Nen', TRUE, 3);

    -- Q10: Técnica de Zoro → Santoryu: Oni Giri
    INSERT INTO question_options (id, question_id, option_text, is_correct, sort_order) VALUES
    (gen_random_uuid(), q10, 'Hiryu Kaen', FALSE, 0),
    (gen_random_uuid(), q10, 'Santoryu: Oni Giri', TRUE, 1),
    (gen_random_uuid(), q10, 'Tatsumaki', FALSE, 2),
    (gen_random_uuid(), q10, 'Ittoryu: Iai', FALSE, 3);

END $$;
