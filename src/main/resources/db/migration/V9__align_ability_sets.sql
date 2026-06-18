-- ============================================================
--  V9 — Alinhar conjuntos com a arte disponível (store/sets)
--  Personagens com arte: naruto, itachi, luffy, zoro, kakashi,
--  hinata, orochimaru, dr-stone, maomao.
--  Goku permanece na base, porém desabilitado (sem arte por ora).
-- ============================================================

-- Desabilita o conjunto sem arte (e seus acessórios), mantendo os registros
UPDATE shop_items SET active = FALSE
WHERE item_ref = 'set-goku' OR set_ref = 'set-goku';

-- Novos conjuntos com arte
INSERT INTO shop_items (id, name, description, category, item_ref, emoji, price_coins, active, sort_order) VALUES
(gen_random_uuid(), 'Senku Ishigami', 'O gênio científico de Dr. Stone', 'ability_set', 'set-dr-stone', '🔬', 3000, TRUE, 18),
(gen_random_uuid(), 'Maomao',         'A boticária perspicaz',           'ability_set', 'set-maomao',   '💊', 3000, TRUE, 19);

-- Acessórios — Senku (Dr. Stone)
INSERT INTO shop_items (id, name, category, item_ref, set_ref, emoji, price_coins, active, sort_order) VALUES
(gen_random_uuid(), 'Cabelo Senku', 'accessory', 'acc-cabelo-senku', 'set-dr-stone', '🧪', 600, TRUE, 180),
(gen_random_uuid(), 'Lupa',         'accessory', 'acc-lupa',         'set-dr-stone', '🔍', 500, TRUE, 181),
(gen_random_uuid(), 'Jaleco',       'accessory', 'acc-jaleco',       'set-dr-stone', '🥼', 700, TRUE, 182);

-- Acessórios — Maomao
INSERT INTO shop_items (id, name, category, item_ref, set_ref, emoji, price_coins, active, sort_order) VALUES
(gen_random_uuid(), 'Cicatriz facial',   'accessory', 'acc-cicatriz-maomao', 'set-maomao', '🩹', 500, TRUE, 190),
(gen_random_uuid(), 'Kimono boticária',  'accessory', 'acc-kimono-maomao',   'set-maomao', '👘', 700, TRUE, 191),
(gen_random_uuid(), 'Ervas medicinais',  'accessory', 'acc-ervas',           'set-maomao', '🌿', 600, TRUE, 192);
