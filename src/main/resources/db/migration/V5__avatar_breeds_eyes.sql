-- ============================================================
--  V5 — Avatar: novas raças (PNGs do CDN) e olhos disponíveis
-- ============================================================

-- Normaliza linhas antigas para valores válidos antes de trocar os CHECK
UPDATE cat_avatars
SET breed = 'white'
WHERE breed NOT IN (
    'black','blue-point','malhado','malhado-orange','orange','red-point',
    'chocolate-point','tabby-brown','tabby-gray','tabby-orange','trica',
    'tuxedo','tuxedo-green','white'
);

UPDATE cat_avatars
SET eye_color = 'green'
WHERE eye_color NOT IN ('blue','green','pink','purple','yellow');

-- Raças: cada valor corresponde a um PNG de gato no CDN ('white' = fallback)
ALTER TABLE cat_avatars DROP CONSTRAINT IF EXISTS cat_avatars_breed_check;
ALTER TABLE cat_avatars ADD CONSTRAINT cat_avatars_breed_check
    CHECK (breed IN (
        'black','blue-point','malhado','malhado-orange','orange','red-point',
        'chocolate-point','tabby-brown','tabby-gray','tabby-orange','trica',
        'tuxedo','tuxedo-green','white'
    ));

-- Olhos: overlay de PNG ('green' é o padrão já presente na imagem da raça)
ALTER TABLE cat_avatars DROP CONSTRAINT IF EXISTS cat_avatars_eye_color_check;
ALTER TABLE cat_avatars ADD CONSTRAINT cat_avatars_eye_color_check
    CHECK (eye_color IN ('blue','green','pink','purple','yellow'));
