-- V20 — Adiciona coluna ability_category nos itens de habilidade
-- Valores: time | hint | question

ALTER TABLE shop_items ADD COLUMN IF NOT EXISTS ability_category VARCHAR(20);

UPDATE shop_items SET ability_category = 'time'
WHERE item_ref IN ('ability_gear_second', 'ability_za_warudo', 'ability_reading_steiner');

UPDATE shop_items SET ability_category = 'hint'
WHERE item_ref IN ('ability_sharingan', 'ability_nen_gon', 'ability_eye_of_zeno', 'ability_dr_stone');

UPDATE shop_items SET ability_category = 'question'
WHERE item_ref IN ('ability_teleport', 'ability_death_note');
