-- ============================================================
--  V3 — Shop: colunas extras + seed completo de itens
--  Regra: todo acessório pertence a um set (set_ref NOT NULL)
-- ============================================================

-- Expande o check de categoria para incluir ability_set
ALTER TABLE shop_items DROP CONSTRAINT IF EXISTS shop_items_category_check;
ALTER TABLE shop_items ADD CONSTRAINT shop_items_category_check
    CHECK (category IN ('cosplay','accessory','eye_skin','help','coin_pack','gem_pack','ability_set'));

ALTER TABLE shop_items
    ADD COLUMN IF NOT EXISTS set_ref     VARCHAR(100),
    ADD COLUMN IF NOT EXISTS emoji       VARCHAR(10),
    ADD COLUMN IF NOT EXISTS source      VARCHAR(20);

ALTER TABLE user_owned_items
    ADD COLUMN IF NOT EXISTS source      VARCHAR(20) NOT NULL DEFAULT 'shop',
    ADD COLUMN IF NOT EXISTS acquired_at TIMESTAMPTZ NOT NULL DEFAULT NOW();

-- ── Ability sets (habilidades / personagens) ───────────────────────────────
INSERT INTO shop_items (id, name, description, category, item_ref, emoji, price_coins, price_gems, active, sort_order) VALUES
(gen_random_uuid(), 'Naruto Uzumaki',    'O Ninja das Folhas que nunca desiste',       'ability_set', 'set-naruto',      '🍥', 3200, NULL, TRUE, 10),
(gen_random_uuid(), 'Itachi Uchiha',     'O espião sombrio da Akatsuki',               'ability_set', 'set-itachi',      '🥷', NULL, 150,  TRUE, 11),
(gen_random_uuid(), 'Monkey D. Luffy',   'O futuro Rei dos Piratas',                   'ability_set', 'set-luffy',       '🏴‍☠️', 2800, NULL, TRUE, 12),
(gen_random_uuid(), 'Goku',              'O Saiyan mais forte do universo',            'ability_set', 'set-goku',        '✨', 3600, NULL,  TRUE, 13),
(gen_random_uuid(), 'Roronoa Zoro',      'O espadachim que busca ser o mais forte',    'ability_set', 'set-zoro',        '⚔️', 2600, NULL,  TRUE, 14),
(gen_random_uuid(), 'Kakashi Hatake',    'O ninja da cópia — Sensei da equipe 7',      'ability_set', 'set-kakashi',     '📖', 2400, NULL,  TRUE, 15),
(gen_random_uuid(), 'Hinata Hyuga',      'A herdeira do clã Hyuga',                   'ability_set', 'set-hinata',      '💜', 2200, NULL,  TRUE, 16),
(gen_random_uuid(), 'Orochimaru',        'O lendário Sannin das serpentes',            'ability_set', 'set-orochimaru',  '🐍', NULL, 120,  TRUE, 17);

-- ── Acessórios — set Naruto ────────────────────────────────────────────────
INSERT INTO shop_items (id, name, category, item_ref, set_ref, emoji, price_coins, active, sort_order) VALUES
(gen_random_uuid(), 'Bandana ninja',    'accessory', 'acc-bandana-folha',   'set-naruto', '🎌', 600,  TRUE, 100),
(gen_random_uuid(), 'Colete laranja',   'accessory', 'acc-colete-laranja',  'set-naruto', '🧡', 800,  TRUE, 101),
(gen_random_uuid(), 'Olhos azuis',      'accessory', 'acc-olhos-azuis',     'set-naruto', '👁️', 500,  TRUE, 102);

-- ── Acessórios — set Itachi ────────────────────────────────────────────────
INSERT INTO shop_items (id, name, category, item_ref, set_ref, emoji, price_gems, active, sort_order) VALUES
(gen_random_uuid(), 'Capa Akatsuki',     'accessory', 'acc-capa-akatsuki',   'set-itachi', '🎭', 60,  TRUE, 110),
(gen_random_uuid(), 'Olhos Sharingan',   'accessory', 'acc-olhos-sharingan', 'set-itachi', '👁️', 50,  TRUE, 111),
(gen_random_uuid(), 'Símbolo Akatsuki',  'accessory', 'acc-simbolo-akatsuki','set-itachi', '⚫', 40,  TRUE, 112);

-- ── Acessórios — set Luffy ─────────────────────────────────────────────────
INSERT INTO shop_items (id, name, category, item_ref, set_ref, emoji, price_coins, active, sort_order) VALUES
(gen_random_uuid(), 'Chapéu de palha',   'accessory', 'acc-chapeu-luffy',    'set-luffy',  '👒', 700, TRUE, 120),
(gen_random_uuid(), 'Colete vermelho',   'accessory', 'acc-colete-vermelho', 'set-luffy',  '❤️', 600, TRUE, 121),
(gen_random_uuid(), 'Cicatriz do olho',  'accessory', 'acc-cicatriz-luffy',  'set-luffy',  '⚡', 500, TRUE, 122);

-- ── Acessórios — set Goku ──────────────────────────────────────────────────
INSERT INTO shop_items (id, name, category, item_ref, set_ref, emoji, price_coins, active, sort_order) VALUES
(gen_random_uuid(), 'Gi laranja',        'accessory', 'acc-gi-laranja',      'set-goku',   '🥋', 700, TRUE, 130),
(gen_random_uuid(), 'Cabelo SSJ',        'accessory', 'acc-cabelo-ssj',      'set-goku',   '⚡', 900, TRUE, 131),
(gen_random_uuid(), 'Olhos SSJB',        'accessory', 'acc-olhos-ssjb',      'set-goku',   '💙', 800, TRUE, 132);

-- ── Acessórios — set Zoro ──────────────────────────────────────────────────
INSERT INTO shop_items (id, name, category, item_ref, set_ref, emoji, price_coins, active, sort_order) VALUES
(gen_random_uuid(), 'Katana miniatura',  'accessory', 'acc-katana',          'set-zoro',   '⚔️', 500, TRUE, 140),
(gen_random_uuid(), 'Bandana verde',     'accessory', 'acc-bandana-verde',   'set-zoro',   '🟢', 400, TRUE, 141),
(gen_random_uuid(), 'Olhos cinza frios', 'accessory', 'acc-olhos-zoro',      'set-zoro',   '🩶', 450, TRUE, 142);

-- ── Acessórios — set Kakashi ───────────────────────────────────────────────
INSERT INTO shop_items (id, name, category, item_ref, set_ref, emoji, price_coins, active, sort_order) VALUES
(gen_random_uuid(), 'Óculos redondos',   'accessory', 'acc-oculos',          'set-kakashi','🤓', 400, TRUE, 150),
(gen_random_uuid(), 'Máscara ninja',     'accessory', 'acc-mascara-ninja',   'set-kakashi','😷', 350, TRUE, 151),
(gen_random_uuid(), 'Sharingan tampado', 'accessory', 'acc-sharingan-tampado','set-kakashi','👁️', 500, TRUE, 152);

-- ── Acessórios — set Hinata ────────────────────────────────────────────────
INSERT INTO shop_items (id, name, category, item_ref, set_ref, emoji, price_coins, active, sort_order) VALUES
(gen_random_uuid(), 'Olhos Byakugan',    'accessory', 'acc-byakugan',        'set-hinata', '⚪', 500, TRUE, 160),
(gen_random_uuid(), 'Jaqueta roxa',      'accessory', 'acc-jaqueta-roxa',    'set-hinata', '💜', 450, TRUE, 161),
(gen_random_uuid(), 'Bandana roxa',      'accessory', 'acc-bandana-roxa',    'set-hinata', '🎀', 300, TRUE, 162);

-- ── Acessórios — set Orochimaru ────────────────────────────────────────────
INSERT INTO shop_items (id, name, category, item_ref, set_ref, emoji, price_gems, active, sort_order) VALUES
(gen_random_uuid(), 'Olhos de serpente', 'accessory', 'acc-olhos-serpente',  'set-orochimaru','🐍', 45, TRUE, 170),
(gen_random_uuid(), 'Kimono branco',     'accessory', 'acc-kimono-branco',   'set-orochimaru','⚪', 40, TRUE, 171),
(gen_random_uuid(), 'Língua comprida',   'accessory', 'acc-lingua-serpente', 'set-orochimaru','👅', 35, TRUE, 172);

-- ── Novidades (itens rotativos em destaque) ────────────────────────────────
UPDATE shop_items SET is_rotating = TRUE
WHERE item_ref IN ('acc-capa-akatsuki','acc-olhos-sharingan','acc-chapeu-luffy','acc-katana');
