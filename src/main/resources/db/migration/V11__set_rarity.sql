-- ============================================================
--  V11 — Raridade dos ability_sets
--  Coluna rarity em shop_items + preços recalibrados por raridade
--  Raridade baseada no poder da habilidade concedida pelo set
-- ============================================================

ALTER TABLE shop_items
    ADD COLUMN IF NOT EXISTS rarity VARCHAR(10)
        CHECK (rarity IN ('comum', 'raro', 'epico', 'lendario'));

-- ── Comum (70 💎) — dica leve, 1 opção eliminada, timer +10s ──────────────────
UPDATE shop_items SET rarity = 'comum', price = 70 WHERE item_ref IN (
    'set-luffy',     -- Gear Second: +10s
    'set-sasuke',    -- Chidori: elimina 1 opção
    'set-tanjiro',   -- Respiração da Água: revela dica
    'set-dr-stone',  -- Dr. Stone: revela dica
    'set-bakugo'     -- Explosão: elimina 1 opção
);

-- ── Raro (110 💎) — 2 opções eliminadas, pular/trocar pergunta,
--                    escudo, timer +15s, multiplicador 1.5× ──────────────────
UPDATE shop_items SET rarity = 'raro', price = 110 WHERE item_ref IN (
    'set-itachi',    -- Sharingan: elimina 2 opções
    'set-goku',      -- Teletransporte: pula pergunta
    'set-zoro',      -- Haki: escudo
    'set-kakashi',   -- Ninja que Copia: troca pergunta
    'set-maomao',    -- Análise Médica: elimina 2 opções
    'set-dio',       -- Za Warudo: congela 5s
    'set-gojo',      -- Infinito: elimina 2 opções
    'set-obito',     -- Izanagi: escudo
    'set-law',       -- ROOM: troca pergunta
    'set-jotaro',    -- Star Platinum: +15s
    'set-ichigo',    -- Bankai: elimina 2 opções
    'set-killua',    -- Godspeed: pula pergunta
    'set-meliodas',  -- Full Counter: escudo
    'set-ace'        -- Chama: multiplicador 1.5×
);

-- ── Épico (160 💎) — vida extra, reverter erro, congelar timer, 2× ───────────
UPDATE shop_items SET rarity = 'epico', price = 160 WHERE item_ref IN (
    'set-naruto',    -- Modo Sábio: congela timer
    'set-orochimaru',-- Edo Tensei: vida extra
    'set-josuke',    -- Crazy Diamond: vida extra
    'set-all-might', -- United States of Smash: vida extra
    'set-vegeta',    -- Final Flash: 2×
    'set-deku',      -- One For All: 2×
    'set-saitama',   -- Soco Sério: 2×
    'set-giorno',    -- Requiem: reverte erro
    'set-kurapika'   -- Olhos Escarlates: vida extra
);

-- ── Lendário (220 💎) — revela resposta correta, multiplicador 3× ─────────────
UPDATE shop_items SET rarity = 'lendario', price = 220 WHERE item_ref IN (
    'set-hinata',    -- Byakugan: revela resposta
    'set-mob',       -- Mob 100%: revela resposta
    'set-kokushibo', -- Lua Superior: 3×
    'set-lelouch'    -- Geass: revela resposta
);
