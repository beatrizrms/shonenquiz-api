-- ============================================================
--  V10 — Rebalanceamento da economia
--  1. XP thresholds — curva progressiva (primeiros níveis mais rápidos)
--  2. shop_items — colunas price_coins/price_gems → price + unity (coin|gem)
--  3. ability_sets com price_coins → convertidos para gems (1 gem = 20 coins)
--  4. Preços de acessórios e eye_skins dobrados
-- ============================================================

-- ── 1. XP thresholds ─────────────────────────────────────────────────────────
-- Acumulado: 400 + 700 + 1000 + 1400 + 1900 + 2500 + 3200 + 4000 + 5000 = 20100
UPDATE level_thresholds SET min_xp =   400 WHERE level = 2;
UPDATE level_thresholds SET min_xp =  1100 WHERE level = 3;
UPDATE level_thresholds SET min_xp =  2100 WHERE level = 4;
UPDATE level_thresholds SET min_xp =  3500 WHERE level = 5;
UPDATE level_thresholds SET min_xp =  5400 WHERE level = 6;
UPDATE level_thresholds SET min_xp =  7900 WHERE level = 7;
UPDATE level_thresholds SET min_xp = 11100 WHERE level = 8;
UPDATE level_thresholds SET min_xp = 15100 WHERE level = 9;
UPDATE level_thresholds SET min_xp = 20100 WHERE level = 10;

-- ── 2. Novas colunas price + unity ───────────────────────────────────────────
ALTER TABLE shop_items ADD COLUMN IF NOT EXISTS price INT;
ALTER TABLE shop_items ADD COLUMN IF NOT EXISTS unity VARCHAR(10)
    CHECK (unity IN ('coin', 'gem'));

-- Habilidades e acessórios com price_coins → unity=coin
UPDATE shop_items
SET price = price_coins, unity = 'coin'
WHERE price_coins IS NOT NULL
  AND category IN ('ability', 'accessory', 'eye_skin', 'cosplay');

-- Itens já precificados em gems (sets premium, eye_skins premium, etc.) → unity=gem
UPDATE shop_items
SET price = price_gems, unity = 'gem'
WHERE price_gems IS NOT NULL;

-- ── 3. ability_sets com price_coins → gems (÷20, arredondado para cima) ──────
UPDATE shop_items
SET price = CEILING(price_coins::FLOAT / 20)::INT,
    unity  = 'gem'
WHERE category = 'ability_set'
  AND price_coins IS NOT NULL;

-- ── 4. Dobrar preços de acessórios e eye_skins ───────────────────────────────
UPDATE shop_items
SET price = price * 2
WHERE category IN ('accessory', 'eye_skin')
  AND unity = 'coin';

-- ── 5. Remover colunas antigas e atualizar constraint ────────────────────────
ALTER TABLE shop_items DROP CONSTRAINT IF EXISTS chk_item_has_price;
ALTER TABLE shop_items DROP COLUMN IF EXISTS price_coins;
ALTER TABLE shop_items DROP COLUMN IF EXISTS price_gems;

-- Mantém exceção para abilities de set (não compráveis diretamente, preço NULL válido)
ALTER TABLE shop_items ADD CONSTRAINT chk_item_has_price CHECK (
    category = 'ability'
    OR (price IS NOT NULL AND unity IS NOT NULL)
    OR (price_brl IS NOT NULL)
);
