-- ============================================================
--  V8 — Itens equipados no avatar (vestuário)
-- ============================================================

CREATE TABLE user_equipped_items (
    user_id     UUID         NOT NULL,
    item_ref    VARCHAR(100) NOT NULL,
    equipped_at TIMESTAMPTZ  NOT NULL DEFAULT NOW(),
    PRIMARY KEY (user_id, item_ref)
);

CREATE INDEX idx_equipped_user ON user_equipped_items(user_id);
