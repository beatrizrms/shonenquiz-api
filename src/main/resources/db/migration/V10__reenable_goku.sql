-- ============================================================
--  V10 — Reabilita o conjunto do Goku (arte criada em store/sets/goku.png)
-- ============================================================

UPDATE shop_items SET active = TRUE
WHERE item_ref = 'set-goku' OR set_ref = 'set-goku';
