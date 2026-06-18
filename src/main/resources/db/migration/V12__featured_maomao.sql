-- Novidades: apenas os acessórios da Maomao ficam como rotativos
UPDATE shop_items SET is_rotating = FALSE WHERE is_rotating = TRUE;

UPDATE shop_items SET is_rotating = TRUE
WHERE item_ref IN ('acc-cicatriz-maomao', 'acc-kimono-maomao', 'acc-ervas');
