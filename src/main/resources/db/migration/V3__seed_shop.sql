-- ============================================================
--  SHONEN QUIZ — Seed Shop (Estado Final)
--  Consolidado de V1, V3, V4, V9–V13, V22, V23, V24
--  Inclui: abilities, ability_sets, acessórios, packs de moeda
-- ============================================================

-- ── ABILITIES ────────────────────────────────────────────────────────────────
-- Estado final: Za Warudo presente (restaurado na V22), ability_za_warudo deletado na V11 e reinserido na V22
-- Cooldowns aplicados conforme V24

INSERT INTO shop_items (name, description, category, item_ref, emoji, price_coins, price_gems, active, sort_order, ability_category, cooldown_questions) VALUES
('Sharingan',         'Bloqueia 2 opções erradas',                                      'ability', 'ability_sharingan',       '👁️', 250, 7,  TRUE, 1,  'hint',     3),
('Teletransporte',    'Pula para a próxima pergunta',                                   'ability', 'ability_teleport',        '⚡', 250, 7,  TRUE, 2,  'question', 3),
('Análise Médica',    'Maomao analisa e elimina metade das opções erradas',              'ability', 'ability_nen_gon',         '🔬', NULL,10, TRUE, 4,  'hint',     5),
('Gear Second',       'Adiciona 10s no timer',                                          'ability', 'ability_gear_second',     '⚙️', NULL,10, TRUE, 5,  'time',     5),
('Ninja que Copia',   'Kakashi copia e descarta a pergunta por outra',                  'ability', 'ability_death_note',      '📖', NULL,10, TRUE, 6,  'question', 5),
('Haki de Armamento', 'Próximo erro não remove vida',                                   'ability', 'ability_haki',            '🖤', NULL,10, TRUE, 7,  NULL,       5),
('Edo Tensei',        'Orochimaru ressuscita uma vida perdida',                         'ability', 'ability_phoenix',         '🔥', NULL,15, TRUE, 9,  NULL,       7),
('Modo Sábio',        'Naruto entra no Modo Sábio e para o tempo',                     'ability', 'ability_reading_steiner', '⏳', NULL,10, TRUE, 10, 'time',     5),
('Byakugan',          'Byakugan da Hinata revela a resposta correta',                   'ability', 'ability_eye_of_zeno',     '👼', NULL,20, TRUE, 11, 'hint',     10),
('Dr. Stone',         'Revela uma dica no texto da pergunta',                           'ability', 'ability_dr_stone',        '🔭', 300, 8,  TRUE, 3,  'hint',     3),
('Za Warudo',         'DIO para o tempo por 5 segundos',                               'ability', 'ability_za_warudo',       '🕐', NULL,NULL,TRUE, 50, 'time',     7),
('Chidori',           'Sasuke elimina 1 alternativa errada com precisão cirúrgica',    'ability', 'ability_chidori',         '⚡', NULL,NULL,TRUE, 51, 'hint',     3),
('Explosão',          'Bakugo elimina 1 alternativa com uma explosão certeira',         'ability', 'ability_explosion',       '💥', NULL,NULL,TRUE, 52, 'hint',     3),
('Infinito',          'Gojo usa o Infinito para apagar 2 alternativas erradas',         'ability', 'ability_infinito',        '🔵', NULL,NULL,TRUE, 53, 'hint',     5),
('Bankai',            'O Bankai de Ichigo destrói 2 alternativas erradas',              'ability', 'ability_bankai',          '⚔️', NULL,NULL,TRUE, 54, 'hint',     5),
('Mob 100%',          'Mob libera 100% do poder e revela a resposta correta',           'ability', 'ability_mob_100',         '🌀', NULL,NULL,TRUE, 55, 'hint',     5),
('Geass',             'Lelouch usa o Geass para forçar a resposta correta',             'ability', 'ability_geass',           '👁️', NULL,NULL,TRUE, 56, 'hint',     5),
('Star Platinum',     'Jotaro usa Ora Ora e ganha 15 segundos extras',                 'ability', 'ability_star_platinum',   '👊', NULL,NULL,TRUE, 57, 'time',     5),
('Respiração da Água','Tanjiro usa a Respiração da Água para revelar uma pista',       'ability', 'ability_respiracao',      '💧', NULL,NULL,TRUE, 58, 'hint',     3),
('Izanagi',           'Obito usa o Izanagi para absorver o próximo erro sem perder vida','ability','ability_izanagi',         '👁️', NULL,NULL,TRUE, 59, NULL,       5),
('Full Counter',      'Meliodas devolve a penalidade — próximo erro não remove vida',  'ability', 'ability_full_counter',    '🐉', NULL,NULL,TRUE, 60, NULL,       5),
('Godspeed',          'Killua usa a velocidade máxima para pular a pergunta atual',    'ability', 'ability_godspeed',        '⚡', NULL,NULL,TRUE, 61, 'question', 5),
('ROOM',              'Law usa a ROOM para trocar a pergunta por outra',               'ability', 'ability_room',            '⚕️', NULL,NULL,TRUE, 62, 'question', 5),
('Crazy Diamond',     'Josuke restaura uma vida perdida com o Crazy Diamond',          'ability', 'ability_crazy_diamond',   '💖', NULL,NULL,TRUE, 63, NULL,       7),
('United States of Smash','All Might usa o último smash para recuperar uma vida',     'ability', 'ability_smash',           '💪', NULL,NULL,TRUE, 64, NULL,       7),
('Requiem',           'Giorno usa o Requiem para reverter o último erro',              'ability', 'ability_requiem',         '🌸', NULL,NULL,TRUE, 65, NULL,       7),
('Final Flash',       'Vegeta carrega o Final Flash — próxima resposta vale 2× mais', 'ability', 'ability_final_flash',     '👑', NULL,NULL,TRUE, 66, NULL,       7),
('One For All',       'Deku libera o One For All — próxima resposta vale 2× mais',    'ability', 'ability_one_for_all',     '💚', NULL,NULL,TRUE, 67, NULL,       7),
('Lua Superior',      'Kokushibo ativa a Lua Superior — próxima resposta vale 3× mais','ability','ability_lua_superior',    '🌙', NULL,NULL,TRUE, 68, NULL,       7),
('Chama',             'Ace usa o Chama-Chama — próxima resposta vale 1.5× mais',      'ability', 'ability_chama',           '🔥', NULL,NULL,TRUE, 69, NULL,       7),
('Soco Sério',        'Saitama usa o Soco Sério — próxima resposta vale 2× mais',     'ability', 'ability_serious_punch',   '👊', NULL,NULL,TRUE, 70, NULL,       7),
('Olhos Escarlates',  'Kurapika ativa os Olhos Escarlates e recupera uma vida perdida','ability','ability_emperor_time',    '🔴', NULL,NULL,TRUE, 71, NULL,       5);

-- ── ABILITY SETS ─────────────────────────────────────────────────────────────
INSERT INTO shop_items (name, description, category, item_ref, emoji, price_coins, price_gems, active, sort_order) VALUES
('Naruto Uzumaki',    'O Ninja das Folhas que nunca desiste',                     'ability_set', 'set-naruto',      '🍥', 3200, NULL, TRUE, 10),
('Itachi Uchiha',     'O espião sombrio da Akatsuki',                             'ability_set', 'set-itachi',      '🥷', NULL, 150,  TRUE, 11),
('Monkey D. Luffy',   'O futuro Rei dos Piratas',                                 'ability_set', 'set-luffy',       '🏴‍☠️', 2800, NULL, TRUE, 12),
('Goku',              'O Saiyan mais forte do universo',                          'ability_set', 'set-goku',        '✨', 3600, NULL, TRUE, 13),
('Roronoa Zoro',      'O espadachim que busca ser o mais forte',                  'ability_set', 'set-zoro',        '⚔️', 2600, NULL, TRUE, 14),
('Kakashi Hatake',    'O ninja da cópia — Sensei da equipe 7',                   'ability_set', 'set-kakashi',     '📖', 2400, NULL, TRUE, 15),
('Hinata Hyuga',      'A herdeira do clã Hyuga',                                 'ability_set', 'set-hinata',      '💜', 2200, NULL, TRUE, 16),
('Orochimaru',        'O lendário Sannin das serpentes',                          'ability_set', 'set-orochimaru',  '🐍', NULL, 120,  TRUE, 17),
('Senku Ishigami',    'O gênio científico de Dr. Stone',                         'ability_set', 'set-dr-stone',    '🔬', 3000, NULL, TRUE, 18),
('Maomao',            'A boticária perspicaz',                                    'ability_set', 'set-maomao',      '💊', 3000, NULL, TRUE, 19),
('DIO',               'O vilão mais icônico do JoJo — para o tempo com Za Warudo','ability_set','set-dio',         '🕐', NULL, 120,  TRUE, 20),
('Sasuke Uchiha',     'O rival eterno de Naruto — precisão letal com o Chidori', 'ability_set', 'set-sasuke',      '🔥', 2600, NULL, TRUE, 21),
('Gojo Satoru',       'O feiticeiro mais forte — o Infinito elimina o impossível','ability_set','set-gojo',        '🔵', NULL, 140,  TRUE, 22),
('Mob',               'Mob libera 100% e a resposta se torna inevitável',         'ability_set', 'set-mob',         '🌀', NULL, 130,  TRUE, 23),
('Josuke Higashikata','Crazy Diamond conserta tudo — inclusive erros',            'ability_set', 'set-josuke',      '💖', 2800, NULL, TRUE, 24),
('All Might',         'O símbolo da paz usa o último smash para recuperar uma vida','ability_set','set-all-might',  '💪', 3000, NULL, TRUE, 25),
('Obito Uchiha',      'O Izanagi permite existir além do erro — escudo perfeito', 'ability_set', 'set-obito',       '👁️', 2400, NULL, TRUE, 26),
('Trafalgar Law',     'A ROOM embaralha as cartas — troca a pergunta no ato',     'ability_set', 'set-law',         '⚕️', 2600, NULL, TRUE, 27),
('Jotaro Kujo',       'Star Platinum — Ora Ora Ora e mais 15 segundos para pensar','ability_set','set-jotaro',     '👊', 2800, NULL, TRUE, 28),
('Ichigo Kurosaki',   'O Bankai de Ichigo varre 2 alternativas erradas do caminho','ability_set','set-ichigo',     '⚔️', 3000, NULL, TRUE, 29),
('Killua Zoldyck',    'Godspeed permite pular qualquer pergunta na velocidade da luz','ability_set','set-killua',   '⚡', 2400, NULL, TRUE, 30),
('Meliodas',          'Full Counter devolve a penalidade — próximo erro não remove vida','ability_set','set-meliodas','🐉',2600, NULL, TRUE, 31),
('Bakugo',            'Explosão elimina uma alternativa errada com impacto máximo','ability_set', 'set-bakugo',     '💥', 2200, NULL, TRUE, 32),
('Tanjiro Kamado',    'A Respiração da Água revela a dica escondida da pergunta', 'ability_set', 'set-tanjiro',    '💧', 2400, NULL, TRUE, 33),
('Vegeta',            'Final Flash carregado — próxima resposta vale o dobro',    'ability_set', 'set-vegeta',      '👑', 3200, NULL, TRUE, 34),
('Deku',              'One For All liberado — próxima resposta multiplica os pontos','ability_set','set-deku',      '💚', NULL, 110,  TRUE, 35),
('Kokushibo',         'A Lua Superior triplica a recompensa da próxima resposta', 'ability_set', 'set-kokushibo',  '🌙', NULL, 160,  TRUE, 36),
('Portgas D. Ace',    'Chama-Chama ativa — próxima resposta aquece o multiplicador','ability_set','set-ace',       '🔥', 2800, NULL, TRUE, 37),
('Saitama',           'Um Soco Sério — próxima resposta correta vale 2× mais',   'ability_set', 'set-saitama',    '👊', 3400, NULL, TRUE, 38),
('Lelouch',           'O Geass de Lelouch força a resposta correta a se revelar','ability_set', 'set-lelouch',    '👁️', NULL, 150,  TRUE, 39),
('Giorno Giovanna',   'O Requiem de Giorno reverte o tempo — o erro simplesmente não aconteceu','ability_set','set-giorno','🌸',NULL,180,TRUE,40),
('Kurapika',          'Os Olhos Escarlates de Kurapika recuperam uma vida no momento certo','ability_set','set-kurapika','🔴',3000,NULL,TRUE,41);

-- ── ACESSÓRIOS — set-naruto ───────────────────────────────────────────────────
INSERT INTO shop_items (name, category, item_ref, set_ref, emoji, price_coins, active, sort_order) VALUES
('Bandana ninja',     'accessory', 'acc-bandana-folha',    'set-naruto',    '🎌', 600,  TRUE, 100),
('Colete laranja',    'accessory', 'acc-colete-laranja',   'set-naruto',    '🧡', 800,  TRUE, 101),
('Olhos azuis',       'accessory', 'acc-olhos-azuis',      'set-naruto',    '👁️', 500, TRUE, 102);

-- ── ACESSÓRIOS — set-itachi ───────────────────────────────────────────────────
INSERT INTO shop_items (name, category, item_ref, set_ref, emoji, price_gems, active, sort_order) VALUES
('Capa Akatsuki',     'accessory', 'acc-capa-akatsuki',    'set-itachi',    '🎭', 60,   TRUE, 110),
('Olhos Sharingan',   'accessory', 'acc-olhos-sharingan',  'set-itachi',    '👁️', 50,  TRUE, 111),
('Símbolo Akatsuki',  'accessory', 'acc-simbolo-akatsuki', 'set-itachi',    '⚫', 40,   TRUE, 112);

-- ── ACESSÓRIOS — set-luffy ────────────────────────────────────────────────────
INSERT INTO shop_items (name, category, item_ref, set_ref, emoji, price_coins, active, sort_order) VALUES
('Chapéu de palha',   'accessory', 'acc-chapeu-luffy',     'set-luffy',     '👒', 700,  TRUE, 120),
('Colete vermelho',   'accessory', 'acc-colete-vermelho',  'set-luffy',     '❤️', 600, TRUE, 121),
('Cicatriz do olho',  'accessory', 'acc-cicatriz-luffy',   'set-luffy',     '⚡', 500,  TRUE, 122);

-- ── ACESSÓRIOS — set-goku ─────────────────────────────────────────────────────
INSERT INTO shop_items (name, category, item_ref, set_ref, emoji, price_coins, active, sort_order) VALUES
('Gi laranja',        'accessory', 'acc-gi-laranja',       'set-goku',      '🥋', 700,  TRUE, 130),
('Cabelo SSJ',        'accessory', 'acc-cabelo-ssj',       'set-goku',      '⚡', 900,  TRUE, 131),
('Olhos SSJB',        'accessory', 'acc-olhos-ssjb',       'set-goku',      '💙', 800,  TRUE, 132);

-- ── ACESSÓRIOS — set-zoro ─────────────────────────────────────────────────────
INSERT INTO shop_items (name, category, item_ref, set_ref, emoji, price_coins, active, sort_order) VALUES
('Katana miniatura',  'accessory', 'acc-katana',           'set-zoro',      '⚔️', 500, TRUE, 140),
('Bandana verde',     'accessory', 'acc-bandana-verde',    'set-zoro',      '🟢', 400,  TRUE, 141),
('Olhos cinza frios', 'accessory', 'acc-olhos-zoro',       'set-zoro',      '🩶', 450,  TRUE, 142);

-- ── ACESSÓRIOS — set-kakashi ──────────────────────────────────────────────────
INSERT INTO shop_items (name, category, item_ref, set_ref, emoji, price_coins, active, sort_order) VALUES
('Óculos redondos',   'accessory', 'acc-oculos',           'set-kakashi',   '🤓', 400,  TRUE, 150),
('Máscara ninja',     'accessory', 'acc-mascara-ninja',    'set-kakashi',   '😷', 350,  TRUE, 151),
('Sharingan tampado', 'accessory', 'acc-sharingan-tampado','set-kakashi',   '👁️', 500, TRUE, 152);

-- ── ACESSÓRIOS — set-hinata ───────────────────────────────────────────────────
INSERT INTO shop_items (name, category, item_ref, set_ref, emoji, price_coins, active, sort_order) VALUES
('Olhos Byakugan',    'accessory', 'acc-byakugan',         'set-hinata',    '⚪', 500,  TRUE, 160),
('Jaqueta roxa',      'accessory', 'acc-jaqueta-roxa',     'set-hinata',    '💜', 450,  TRUE, 161),
('Bandana roxa',      'accessory', 'acc-bandana-roxa',     'set-hinata',    '🎀', 300,  TRUE, 162);

-- ── ACESSÓRIOS — set-orochimaru ───────────────────────────────────────────────
INSERT INTO shop_items (name, category, item_ref, set_ref, emoji, price_gems, active, sort_order) VALUES
('Olhos de serpente', 'accessory', 'acc-olhos-serpente',   'set-orochimaru','🐍', 45,   TRUE, 170),
('Kimono branco',     'accessory', 'acc-kimono-branco',    'set-orochimaru','⚪', 40,   TRUE, 171),
('Língua comprida',   'accessory', 'acc-lingua-serpente',  'set-orochimaru','👅', 35,   TRUE, 172);

-- ── ACESSÓRIOS — set-dr-stone ─────────────────────────────────────────────────
INSERT INTO shop_items (name, category, item_ref, set_ref, emoji, price_coins, active, sort_order) VALUES
('Cabelo Senku',      'accessory', 'acc-cabelo-senku',     'set-dr-stone',  '🧪', 600,  TRUE, 180),
('Lupa',              'accessory', 'acc-lupa',             'set-dr-stone',  '🔍', 500,  TRUE, 181),
('Jaleco',            'accessory', 'acc-jaleco',           'set-dr-stone',  '🥼', 700,  TRUE, 182);

-- ── ACESSÓRIOS — set-maomao ───────────────────────────────────────────────────
INSERT INTO shop_items (name, category, item_ref, set_ref, emoji, price_coins, active, sort_order) VALUES
('Cicatriz facial',   'accessory', 'acc-cicatriz-maomao',  'set-maomao',    '🩹', 500,  TRUE, 190),
('Kimono boticária',  'accessory', 'acc-kimono-maomao',    'set-maomao',    '👘', 700,  TRUE, 191),
('Ervas medicinais',  'accessory', 'acc-ervas',            'set-maomao',    '🌿', 600,  TRUE, 192);

-- ── ACESSÓRIOS — set-dio ─────────────────────────────────────────────────────
INSERT INTO shop_items (name, category, item_ref, set_ref, emoji, price_coins, active, sort_order) VALUES
('Chapéu de DIO',       'accessory', 'acc-chapeu-dio',       'set-dio',     '🎩', 700,  TRUE, 200),
('Stone Mask',           'accessory', 'acc-stone-mask',       'set-dio',     '🪨', 900,  TRUE, 201),
('Piercing de Vampiro',  'accessory', 'acc-piercing-dio',     'set-dio',     '💎', 600,  TRUE, 202);

-- ── ACESSÓRIOS — set-sasuke ───────────────────────────────────────────────────
INSERT INTO shop_items (name, category, item_ref, set_ref, emoji, price_coins, active, sort_order) VALUES
('Óculos do Sharingan', 'accessory', 'acc-oculos-sharingan', 'set-sasuke',  '👁️', 600, TRUE, 203),
('Manto da Akatsuki',   'accessory', 'acc-manto-akatsuki',   'set-sasuke',  '🌧️', 800, TRUE, 204),
('Espada de Sasuke',     'accessory', 'acc-espada-sasuke',    'set-sasuke',  '⚡', 700,  TRUE, 205);

-- ── ACESSÓRIOS — set-gojo ─────────────────────────────────────────────────────
INSERT INTO shop_items (name, category, item_ref, set_ref, emoji, price_coins, active, sort_order) VALUES
('Óculos de Gojo',     'accessory', 'acc-oculos-gojo',      'set-gojo',    '🕶️', 700, TRUE, 206),
('Faixa de Gojo',       'accessory', 'acc-faixa-gojo',       'set-gojo',    '🩵', 600,  TRUE, 207),
('Uniforme JJK',         'accessory', 'acc-uniforme-jjk',     'set-gojo',    '🖤', 800,  TRUE, 208);

-- ── ACESSÓRIOS — set-mob ─────────────────────────────────────────────────────
INSERT INTO shop_items (name, category, item_ref, set_ref, emoji, price_coins, active, sort_order) VALUES
('Chapéu do Mob',      'accessory', 'acc-chapeu-mob',       'set-mob',     '🎒', 500,  TRUE, 209),
('Uniforme do Mob',     'accessory', 'acc-uniforme-mob',     'set-mob',     '👕', 600,  TRUE, 210),
('Aura Psíquica',       'accessory', 'acc-aura-mob',         'set-mob',     '🌀', 700,  TRUE, 211);

-- ── ACESSÓRIOS — set-josuke ───────────────────────────────────────────────────
INSERT INTO shop_items (name, category, item_ref, set_ref, emoji, price_coins, active, sort_order) VALUES
('Pompadour do Josuke','accessory', 'acc-pompadour-josuke', 'set-josuke',  '💇', 600,  TRUE, 212),
('Uniforme do Josuke',  'accessory', 'acc-uniforme-josuke',  'set-josuke',  '💖', 700,  TRUE, 213),
('Emblema Morioh',      'accessory', 'acc-emblema-morioh',   'set-josuke',  '🌟', 500,  TRUE, 214);

-- ── ACESSÓRIOS — set-all-might ────────────────────────────────────────────────
INSERT INTO shop_items (name, category, item_ref, set_ref, emoji, price_coins, active, sort_order) VALUES
('Capa do All Might',  'accessory', 'acc-capa-all-might',   'set-all-might','🦸', 700,  TRUE, 215),
('Uniforme do All Might','accessory','acc-uniforme-allmight','set-all-might','💪', 800, TRUE, 216),
('Topete do All Might', 'accessory', 'acc-topete-all-might', 'set-all-might','👱', 500, TRUE, 217);

-- ── ACESSÓRIOS — set-obito ────────────────────────────────────────────────────
INSERT INTO shop_items (name, category, item_ref, set_ref, emoji, price_coins, active, sort_order) VALUES
('Máscara do Obito',   'accessory', 'acc-mascara-obito',    'set-obito',   '🎭', 700,  TRUE, 218),
('Robe da Akatsuki',   'accessory', 'acc-robe-akatsuki',    'set-obito',   '🌧️', 800, TRUE, 219),
('Cristal de Madara',  'accessory', 'acc-cristal-obito',    'set-obito',   '🔮', 600,  TRUE, 220);

-- ── ACESSÓRIOS — set-law ─────────────────────────────────────────────────────
INSERT INTO shop_items (name, category, item_ref, set_ref, emoji, price_coins, active, sort_order) VALUES
('Chapéu do Law',      'accessory', 'acc-chapeu-law',       'set-law',     '🩺', 600,  TRUE, 221),
('Abrigo do Law',      'accessory', 'acc-abrigo-law',       'set-law',     '⚕️', 700, TRUE, 222),
('Tatuagem Corazon',   'accessory', 'acc-tatuagem-corazon', 'set-law',     '♥️', 500, TRUE, 223);

-- ── ACESSÓRIOS — set-jotaro ───────────────────────────────────────────────────
INSERT INTO shop_items (name, category, item_ref, set_ref, emoji, price_coins, active, sort_order) VALUES
('Chapéu do Jotaro',   'accessory', 'acc-chapeu-jotaro',    'set-jotaro',  '🎓', 700,  TRUE, 224),
('Uniforme do Jotaro', 'accessory', 'acc-uniforme-jotaro',  'set-jotaro',  '🖤', 800,  TRUE, 225),
('Corrente do Stand',  'accessory', 'acc-corrente-jotaro',  'set-jotaro',  '⛓️', 600, TRUE, 226);

-- ── ACESSÓRIOS — set-ichigo ───────────────────────────────────────────────────
INSERT INTO shop_items (name, category, item_ref, set_ref, emoji, price_coins, active, sort_order) VALUES
('Kimono Shinigami',   'accessory', 'acc-kimono-shinigami', 'set-ichigo',  '⚫', 700,  TRUE, 227),
('Faixa do Bankai',    'accessory', 'acc-faixa-bankai',     'set-ichigo',  '⚔️', 800, TRUE, 228),
('Visto da Soul Society','accessory','acc-visto-soul',      'set-ichigo',  '📜', 500,  TRUE, 229);

-- ── ACESSÓRIOS — set-killua ───────────────────────────────────────────────────
INSERT INTO shop_items (name, category, item_ref, set_ref, emoji, price_coins, active, sort_order) VALUES
('Yo-yo do Killua',    'accessory', 'acc-yoyo-killua',      'set-killua',  '🪀', 700,  TRUE, 230),
('Uniforme do Killua', 'accessory', 'acc-uniforme-killua',  'set-killua',  '⚡', 600,  TRUE, 231),
('Agulha Anti-Nen',    'accessory', 'acc-agulha-killua',    'set-killua',  '📍', 500,  TRUE, 232);

-- ── ACESSÓRIOS — set-meliodas ─────────────────────────────────────────────────
INSERT INTO shop_items (name, category, item_ref, set_ref, emoji, price_coins, active, sort_order) VALUES
('Avental do Meliodas','accessory', 'acc-avental-meliodas', 'set-meliodas','🐉', 600,  TRUE, 233),
('Tatuagem do Dragão', 'accessory', 'acc-tatuagem-dragao',  'set-meliodas','🔱', 700,  TRUE, 234),
('Espada Lostvayne',   'accessory', 'acc-espada-meliodas',  'set-meliodas','🗡️', 800, TRUE, 235);

-- ── ACESSÓRIOS — set-bakugo ───────────────────────────────────────────────────
INSERT INTO shop_items (name, category, item_ref, set_ref, emoji, price_coins, active, sort_order) VALUES
('Luvas do Bakugo',    'accessory', 'acc-luvas-bakugo',     'set-bakugo',  '💥', 600,  TRUE, 236),
('Máscara do Bakugo',  'accessory', 'acc-mascara-bakugo',   'set-bakugo',  '😤', 700,  TRUE, 237),
('Colete de Suporte',  'accessory', 'acc-colete-bakugo',    'set-bakugo',  '🧤', 500,  TRUE, 238);

-- ── ACESSÓRIOS — set-tanjiro ──────────────────────────────────────────────────
INSERT INTO shop_items (name, category, item_ref, set_ref, emoji, price_coins, active, sort_order) VALUES
('Brinco do Tanjiro',  'accessory', 'acc-brinco-tanjiro',   'set-tanjiro', '🌸', 600,  TRUE, 239),
('Kimono do Tanjiro',  'accessory', 'acc-kimono-tanjiro',   'set-tanjiro', '🌊', 700,  TRUE, 240),
('Katana Nichirin',    'accessory', 'acc-katana-tanjiro',   'set-tanjiro', '🗡️', 800, TRUE, 241);

-- ── ACESSÓRIOS — set-vegeta ───────────────────────────────────────────────────
INSERT INTO shop_items (name, category, item_ref, set_ref, emoji, price_coins, active, sort_order) VALUES
('Armadura de Vegeta', 'accessory', 'acc-armadura-vegeta',  'set-vegeta',  '⚔️', 800, TRUE, 242),
('Viseira de Vegeta',  'accessory', 'acc-viseira-vegeta',   'set-vegeta',  '👑', 700,  TRUE, 243),
('Capa Saiyan',        'accessory', 'acc-capa-vegeta',      'set-vegeta',  '🌟', 600,  TRUE, 244);

-- ── ACESSÓRIOS — set-deku ─────────────────────────────────────────────────────
INSERT INTO shop_items (name, category, item_ref, set_ref, emoji, price_coins, active, sort_order) VALUES
('Traje do Deku',      'accessory', 'acc-traje-deku',       'set-deku',    '💚', 700,  TRUE, 245),
('Suporte do Deku',    'accessory', 'acc-suporte-deku',     'set-deku',    '🦾', 800,  TRUE, 246),
('Luvas do Deku',      'accessory', 'acc-luvas-deku',       'set-deku',    '🤜', 600,  TRUE, 247);

-- ── ACESSÓRIOS — set-kokushibo ────────────────────────────────────────────────
INSERT INTO shop_items (name, category, item_ref, set_ref, emoji, price_coins, active, sort_order) VALUES
('Katana da Lua',      'accessory', 'acc-katana-kokushibo', 'set-kokushibo','🌙', 900, TRUE, 248),
('Kimono Superior',    'accessory', 'acc-kimono-superior',  'set-kokushibo','🖤', 800, TRUE, 249),
('Máscara da Lua',     'accessory', 'acc-mascara-lua',      'set-kokushibo','🎭', 700, TRUE, 250);

-- ── ACESSÓRIOS — set-ace ─────────────────────────────────────────────────────
INSERT INTO shop_items (name, category, item_ref, set_ref, emoji, price_coins, active, sort_order) VALUES
('Chapéu do Ace',      'accessory', 'acc-chapeu-ace',       'set-ace',     '🔥', 700,  TRUE, 251),
('Tatuagem ASCE',      'accessory', 'acc-tatuagem-ace',     'set-ace',     '🏴‍☠️', 600, TRUE, 252),
('Colar do Ace',       'accessory', 'acc-colar-ace',        'set-ace',     '📿', 500,  TRUE, 253);

-- ── ACESSÓRIOS — set-saitama ──────────────────────────────────────────────────
INSERT INTO shop_items (name, category, item_ref, set_ref, emoji, price_coins, active, sort_order) VALUES
('Capa do Herói',      'accessory', 'acc-capa-saitama',     'set-saitama', '🦸', 700,  TRUE, 254),
('Luvas Amarelas',     'accessory', 'acc-luvas-saitama',    'set-saitama', '🥊', 600,  TRUE, 255),
('Uniforme S-Class',   'accessory', 'acc-uniforme-saitama', 'set-saitama', '⭐', 800,  TRUE, 256);

-- ── ACESSÓRIOS — set-lelouch ──────────────────────────────────────────────────
INSERT INTO shop_items (name, category, item_ref, set_ref, emoji, price_coins, active, sort_order) VALUES
('Máscara Zero',       'accessory', 'acc-mascara-zero',     'set-lelouch', '🎭', 800,  TRUE, 257),
('Uniforme de Lelouch','accessory', 'acc-uniforme-lelouch', 'set-lelouch', '♟️', 700, TRUE, 258),
('Tabuleiro de Xadrez','accessory', 'acc-chess-lelouch',   'set-lelouch', '♜',  600,  TRUE, 259);

-- ── ACESSÓRIOS — set-giorno ───────────────────────────────────────────────────
INSERT INTO shop_items (name, category, item_ref, set_ref, emoji, price_coins, active, sort_order) VALUES
('Broche de Giorno',   'accessory', 'acc-broche-giorno',    'set-giorno',  '🌸', 800,  TRUE, 260),
('Traje de Giorno',    'accessory', 'acc-traje-giorno',     'set-giorno',  '💛', 900,  TRUE, 261),
('Pino do Stand',      'accessory', 'acc-stand-giorno',     'set-giorno',  '🌟', 700,  TRUE, 262);

-- ── ACESSÓRIOS — set-kurapika ─────────────────────────────────────────────────
INSERT INTO shop_items (name, category, item_ref, set_ref, emoji, price_coins, active, sort_order) VALUES
('Correntes do Kurapika','accessory','acc-correntes-kurapika','set-kurapika','⛓️', 800, TRUE, 263),
('Olhos Escarlates',    'accessory', 'acc-olhos-kurapika',   'set-kurapika','🔴', 700, TRUE, 264),
('Uniforme dos Kurta',  'accessory', 'acc-uniforme-kurapika','set-kurapika','🧥', 600, TRUE, 265);

-- ── PACOTES DE MOEDA ─────────────────────────────────────────────────────────
INSERT INTO shop_items (name, description, category, item_ref, emoji, price_brl, reward_coins, active, sort_order) VALUES
('500 Kōka',   'Pacote iniciante',  'coin_pack', 'pack-coins-500',   '🪙', 4.99,  500,  TRUE, 200),
('1500 Kōka',  '+20% bônus',        'coin_pack', 'pack-coins-1500',  '🪙', 12.99, 1500, TRUE, 201),
('5000 Kōka',  '+50% bônus',        'coin_pack', 'pack-coins-5000',  '🪙', 34.99, 5000, TRUE, 202);

INSERT INTO shop_items (name, description, category, item_ref, emoji, price_brl, reward_gems, active, sort_order) VALUES
('30 Gemas',   'Pacote básico',     'gem_pack', 'pack-gems-30',   '💎', 9.99,  30,  TRUE, 210),
('100 Gemas',  '+25% bônus',        'gem_pack', 'pack-gems-100',  '💎', 24.99, 100, TRUE, 211),
('300 Gemas',  '+60% bônus',        'gem_pack', 'pack-gems-300',  '💎', 59.99, 300, TRUE, 212);

-- ── ITENS ROTATIVOS (estado final: set-maomao e 3 acessórios) ────────────────
UPDATE shop_items SET is_rotating = TRUE
WHERE item_ref IN (
    'set-maomao',
    'acc-cicatriz-maomao',
    'acc-kimono-maomao',
    'acc-ervas'
);

-- ── VINCULAR ability_item_id NOS SETS ────────────────────────────────────────
UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_sharingan')       WHERE item_ref = 'set-itachi';
UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_teleport')        WHERE item_ref = 'set-goku';
UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_dr_stone')        WHERE item_ref = 'set-dr-stone';
UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_gear_second')     WHERE item_ref = 'set-luffy';
UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_haki')            WHERE item_ref = 'set-zoro';
UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_reading_steiner') WHERE item_ref = 'set-naruto';
UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_death_note')      WHERE item_ref = 'set-kakashi';
UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_eye_of_zeno')     WHERE item_ref = 'set-hinata';
UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_phoenix')         WHERE item_ref = 'set-orochimaru';
UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_nen_gon')         WHERE item_ref = 'set-maomao';
UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_za_warudo')       WHERE item_ref = 'set-dio';
UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_chidori')         WHERE item_ref = 'set-sasuke';
UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_infinito')        WHERE item_ref = 'set-gojo';
UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_mob_100')         WHERE item_ref = 'set-mob';
UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_crazy_diamond')   WHERE item_ref = 'set-josuke';
UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_smash')           WHERE item_ref = 'set-all-might';
UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_izanagi')         WHERE item_ref = 'set-obito';
UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_room')            WHERE item_ref = 'set-law';
UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_star_platinum')   WHERE item_ref = 'set-jotaro';
UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_bankai')          WHERE item_ref = 'set-ichigo';
UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_godspeed')        WHERE item_ref = 'set-killua';
UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_full_counter')    WHERE item_ref = 'set-meliodas';
UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_explosion')       WHERE item_ref = 'set-bakugo';
UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_respiracao')      WHERE item_ref = 'set-tanjiro';
UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_final_flash')     WHERE item_ref = 'set-vegeta';
UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_one_for_all')     WHERE item_ref = 'set-deku';
UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_lua_superior')    WHERE item_ref = 'set-kokushibo';
UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_chama')           WHERE item_ref = 'set-ace';
UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_serious_punch')   WHERE item_ref = 'set-saitama';
UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_geass')           WHERE item_ref = 'set-lelouch';
UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_requiem')         WHERE item_ref = 'set-giorno';
UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_emperor_time')    WHERE item_ref = 'set-kurapika';
