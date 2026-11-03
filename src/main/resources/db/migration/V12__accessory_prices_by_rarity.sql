-- ============================================================
--  V12 — Preço dos acessórios proporcional à raridade do set
--  Multiplica os preços pós-V10 pelo fator de cada raridade
--  e arredonda para o múltiplo de 100 mais próximo.
--
--  Fatores por raridade:
--    comum    × 0.6  → acessórios baratos, set de entrada
--    raro     × 0.9  → levemente abaixo da base atual
--    epico    × 1.4  → distintamente mais caro
--    lendario × 2.2  → premium, difícil de colecionar individualmente
-- ============================================================

-- ── Acessórios pagos em Kōka (coin) ──────────────────────────────────────────
UPDATE shop_items acc
SET price = (
    ROUND(
        acc.price::NUMERIC * CASE s.rarity
            WHEN 'comum'    THEN 0.6
            WHEN 'raro'     THEN 0.9
            WHEN 'epico'    THEN 1.4
            WHEN 'lendario' THEN 2.2
            ELSE 1.0
        END / 100.0
    ) * 100
)::INT
FROM shop_items s
WHERE acc.category = 'accessory'
  AND acc.unity = 'coin'
  AND acc.set_ref IS NOT NULL
  AND acc.set_ref = s.item_ref
  AND s.rarity IS NOT NULL;

-- ── Acessórios pagos em Gemas (gem) — Itachi (raro) e Orochimaru (epico) ─────
UPDATE shop_items acc
SET price = (
    ROUND(
        acc.price::NUMERIC * CASE s.rarity
            WHEN 'raro'     THEN 1.2
            WHEN 'epico'    THEN 1.6
            WHEN 'lendario' THEN 2.5
            ELSE 1.0
        END
    )
)::INT
FROM shop_items s
WHERE acc.category = 'accessory'
  AND acc.unity = 'gem'
  AND acc.set_ref IS NOT NULL
  AND acc.set_ref = s.item_ref
  AND s.rarity IS NOT NULL;
