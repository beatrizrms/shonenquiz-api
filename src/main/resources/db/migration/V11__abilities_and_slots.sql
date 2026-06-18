-- ============================================================
--  V11 — Sistema de habilidades (ability) e slots
--  1. Renomear category 'help' → 'ability' e item_refs help_* → ability_*
--  2. Renomear coluna help_type → ability_type em user_helps_inventory
--  3. Renomear acessórios pelos IDs fornecidos
--  4. Renomear 5 abilities para nomes temáticos dos personagens
--  5. Deletar Za Warudo
--  6. Adicionar ability_item_id nos shop_items (FK para a ability do set)
--  7. Criar user_ability_slots (4 slots por usuário)
-- ============================================================

-- ── 1. Dropar constraint antiga para permitir as alterações ──────────────────
ALTER TABLE shop_items DROP CONSTRAINT IF EXISTS shop_items_category_check;

-- ── 2. Renomear item_refs de help_* para ability_* ────────────────────────────
UPDATE shop_items SET item_ref = 'ability_sharingan'       WHERE item_ref = 'help_sharingan';
UPDATE shop_items SET item_ref = 'ability_teleport'        WHERE item_ref = 'help_teleport';
UPDATE shop_items SET item_ref = 'ability_dr_stone'        WHERE item_ref = 'help_dr_stone';
UPDATE shop_items SET item_ref = 'ability_nen_gon'         WHERE item_ref = 'help_nen_gon';
UPDATE shop_items SET item_ref = 'ability_gear_second'     WHERE item_ref = 'help_gear_second';
UPDATE shop_items SET item_ref = 'ability_death_note'      WHERE item_ref = 'help_death_note';
UPDATE shop_items SET item_ref = 'ability_haki'            WHERE item_ref = 'help_haki';
UPDATE shop_items SET item_ref = 'ability_za_warudo'       WHERE item_ref = 'help_za_warudo';
UPDATE shop_items SET item_ref = 'ability_phoenix'         WHERE item_ref = 'help_phoenix';
UPDATE shop_items SET item_ref = 'ability_reading_steiner' WHERE item_ref = 'help_reading_steiner';
UPDATE shop_items SET item_ref = 'ability_eye_of_zeno'     WHERE item_ref = 'help_eye_of_zeno';

-- ── 3. Renomear category 'help' → 'ability' nos itens da loja ────────────────
UPDATE shop_items SET category = 'ability' WHERE category = 'help';

-- ── Adicionar nova constraint com 'ability' no lugar de 'help' ───────────────
ALTER TABLE shop_items ADD CONSTRAINT shop_items_category_check
    CHECK (category IN ('cosplay','accessory','eye_skin','ability','coin_pack','gem_pack','ability_set'));

-- ── 4. Renomear coluna help_type → ability_type ───────────────────────────────
ALTER TABLE user_helps_inventory RENAME COLUMN help_type TO ability_type;
ALTER TABLE user_helps_inventory DROP CONSTRAINT IF EXISTS user_helps_inventory_help_type_check;
ALTER TABLE user_helps_inventory ADD CONSTRAINT user_helps_inventory_ability_type_check
    CHECK (ability_type IN (
        'sharingan','teleport','dr_stone','nen_gon',
        'gear_second','death_note','haki','za_warudo',
        'phoenix','reading_steiner','eye_of_zeno'
    ));

-- ── 5. Renomear 5 abilities com nomes temáticos dos personagens ───────────────
UPDATE shop_items SET name = 'Edo Tensei',      description = 'Orochimaru ressuscita uma vida perdida'              WHERE item_ref = 'ability_phoenix';
UPDATE shop_items SET name = 'Byakugan',        description = 'Byakugan da Hinata revela a resposta correta'        WHERE item_ref = 'ability_eye_of_zeno';
UPDATE shop_items SET name = 'Análise Médica',  description = 'Maomao analisa e elimina metade das opções erradas'  WHERE item_ref = 'ability_nen_gon';
UPDATE shop_items SET name = 'Ninja que Copia', description = 'Kakashi copia e descarta a pergunta por outra'       WHERE item_ref = 'ability_death_note';
UPDATE shop_items SET name = 'Modo Sábio',      description = 'Naruto entra no Modo Sábio e para o tempo'           WHERE item_ref = 'ability_reading_steiner';

-- ── 6. Deletar Za Warudo ──────────────────────────────────────────────────────
DELETE FROM shop_items WHERE item_ref = 'ability_za_warudo';

-- ── 7. Renomear 9 acessórios pelos IDs fornecidos ────────────────────────────
UPDATE shop_items SET name = 'Colete verde'     WHERE id = '11022bad-a20f-4f4f-b976-98a0ca8debb2';
UPDATE shop_items SET name = 'Bigode Kurama'    WHERE id = '970ccaf0-cbde-4a63-8fec-966107aeecee';
UPDATE shop_items SET name = 'Cabelo longo'     WHERE id = '863b3a5a-64f5-4188-9a41-c49ddb6c3d3d';
UPDATE shop_items SET name = 'Obi roxa'         WHERE id = 'e58c7836-a6eb-4244-9898-53576e2c82dd';
UPDATE shop_items SET name = 'Laço cabelo'      WHERE id = 'af41437e-bade-4381-8c50-c53a6e2071df';
UPDATE shop_items SET name = 'Cicatriz'         WHERE id = 'd62c8b4f-4759-441a-b852-e796c44aa1b5';
UPDATE shop_items SET name = 'Brincos'          WHERE id = 'e5256859-3150-4eee-8c8a-6ca059369c3a';
UPDATE shop_items SET name = 'Nuvem voadora'    WHERE id = 'e66ab83c-39f1-469f-ab3d-f3c505a6e279';
UPDATE shop_items SET name = 'Ki'               WHERE id = 'f3edaf4b-5d28-49af-b67f-f2b0f3d11f75';

-- ── 8. Coluna ability_item_id nos sets ────────────────────────────────────────
ALTER TABLE shop_items ADD COLUMN IF NOT EXISTS ability_item_id UUID REFERENCES shop_items(id);

UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_sharingan')
    WHERE item_ref = 'set-itachi';

UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_teleport')
    WHERE item_ref = 'set-goku';

UPDATE shop_items SET ability_item_id = '03950483-3b63-4bb5-a918-12088764867d'
    WHERE item_ref = 'set-dr-stone';

UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_gear_second')
    WHERE item_ref = 'set-luffy';

UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_haki')
    WHERE item_ref = 'set-zoro';

UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_reading_steiner')
    WHERE item_ref = 'set-naruto';

UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_death_note')
    WHERE item_ref = 'set-kakashi';

UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_eye_of_zeno')
    WHERE item_ref = 'set-hinata';

UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_phoenix')
    WHERE item_ref = 'set-orochimaru';

UPDATE shop_items SET ability_item_id = (SELECT id FROM shop_items WHERE item_ref = 'ability_nen_gon')
    WHERE item_ref = 'set-maomao';

-- ── 9. Tabela de slots de habilidade ─────────────────────────────────────────
CREATE TABLE user_ability_slots (
    user_id     UUID        NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    slot_index  SMALLINT    NOT NULL CHECK (slot_index BETWEEN 0 AND 3),
    set_ref     VARCHAR(100),           -- item_ref do set equipado (NULL = vazio)
    unlocked    BOOLEAN     NOT NULL DEFAULT FALSE,
    unlocked_at TIMESTAMPTZ,
    equipped_at TIMESTAMPTZ,
    PRIMARY KEY (user_id, slot_index)
);

CREATE INDEX idx_ability_slots_user ON user_ability_slots(user_id);

-- Slot 0 desbloqueado para usuários já existentes
INSERT INTO user_ability_slots (user_id, slot_index, unlocked, unlocked_at)
SELECT id, 0, TRUE, NOW()
FROM users
ON CONFLICT DO NOTHING;
