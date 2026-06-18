-- ============================================================
--  V6 — Avatar: novas variantes de raça (tuxedo gray/spotted)
-- ============================================================

ALTER TABLE cat_avatars DROP CONSTRAINT IF EXISTS cat_avatars_breed_check;
ALTER TABLE cat_avatars ADD CONSTRAINT cat_avatars_breed_check
    CHECK (breed IN (
        'black','blue-point','malhado','malhado-orange','orange','red-point',
        'chocolate-point','tabby-brown','tabby-gray','tabby-orange','trica',
        'tuxedo','tuxedo-green','tuxedo-gray','tuxedo-spotted','white'
    ));
