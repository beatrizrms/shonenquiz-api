-- friend_code: código curto de 8 chars para compartilhar e adicionar amigos
ALTER TABLE users
    ADD COLUMN IF NOT EXISTS friend_code VARCHAR(8) UNIQUE;

-- Popula os existentes com os primeiros 8 chars do UUID em uppercase
UPDATE users
SET friend_code = UPPER(SUBSTRING(gen_random_uuid()::TEXT, 1, 8))
WHERE friend_code IS NULL;

ALTER TABLE users
    ALTER COLUMN friend_code SET NOT NULL;

CREATE INDEX IF NOT EXISTS idx_users_friend_code ON users (friend_code);

-- Índice para "solicitações recebidas" — ausente no schema original
CREATE INDEX IF NOT EXISTS idx_friendships_addressee
    ON friendships (addressee_id, status);

-- Adiciona status 'removed' ao check existente
ALTER TABLE friendships
    DROP CONSTRAINT IF EXISTS friendships_status_check;

ALTER TABLE friendships
    ADD CONSTRAINT friendships_status_check
    CHECK (status IN ('pending', 'accepted', 'blocked', 'removed'));
