-- ============================================================
--  V4 — Pacotes de moeda: colunas reward + seed de packs
-- ============================================================

ALTER TABLE shop_items
    ADD COLUMN IF NOT EXISTS reward_coins INT,
    ADD COLUMN IF NOT EXISTS reward_gems  INT;

-- ── Pacotes de Kōka ───────────────────────────────────────────────────────────
INSERT INTO shop_items (id, name, description, category, item_ref, emoji, price_brl, reward_coins, active, sort_order) VALUES
(gen_random_uuid(), '500 Kōka',   'Pacote iniciante',  'coin_pack', 'pack-coins-500',   '🪙', 4.99,  500,  TRUE, 200),
(gen_random_uuid(), '1500 Kōka',  '+20% bônus',        'coin_pack', 'pack-coins-1500',  '🪙', 12.99, 1500, TRUE, 201),
(gen_random_uuid(), '5000 Kōka',  '+50% bônus',        'coin_pack', 'pack-coins-5000',  '🪙', 34.99, 5000, TRUE, 202);

-- ── Pacotes de Gemas ──────────────────────────────────────────────────────────
INSERT INTO shop_items (id, name, description, category, item_ref, emoji, price_brl, reward_gems, active, sort_order) VALUES
(gen_random_uuid(), '30 Gemas',   'Pacote básico',     'gem_pack', 'pack-gems-30',   '💎', 9.99,  30,  TRUE, 210),
(gen_random_uuid(), '100 Gemas',  '+25% bônus',        'gem_pack', 'pack-gems-100',  '💎', 24.99, 100, TRUE, 211),
(gen_random_uuid(), '300 Gemas',  '+60% bônus',        'gem_pack', 'pack-gems-300',  '💎', 59.99, 300, TRUE, 212);
