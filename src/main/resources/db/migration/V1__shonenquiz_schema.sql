-- ============================================================
--  NEKO QUIZ — Migration V1
--  Flyway: src/main/resources/db/migration/V1__nekoquiz_schema.sql
--  PostgreSQL 16
-- ============================================================

-- Extensão para geração de UUID
CREATE EXTENSION IF NOT EXISTS pgcrypto;


-- ============================================================
--  DOMÍNIO 1 — USUÁRIOS
-- ============================================================

-- Avatares de gato (declarada antes de users por ser referenciada)
CREATE TABLE cat_avatars (
                             id          UUID PRIMARY KEY DEFAULT gen_random_uuid(),
                             user_id     UUID UNIQUE,  -- FK adicionada após users
                             breed       VARCHAR(20)  NOT NULL
                                 CHECK (breed IN ('tabby','black','white','frajola','orange','siamese','mixed','tricolor')),
                             eye_color   VARCHAR(20)  NOT NULL
                                 CHECK (eye_color IN ('blue','purple','green','amber','pink','red')),
                             expression  VARCHAR(20)  NOT NULL DEFAULT 'normal'
                                 CHECK (expression IN ('normal','happy','fierce','cool')),
                             accessory   VARCHAR(50),
                             cosplay     VARCHAR(50),
                             cat_name    VARCHAR(30)  NOT NULL,
                             updated_at  TIMESTAMPTZ  NOT NULL DEFAULT NOW()
);

-- Usuários
CREATE TABLE users (
                       id                  UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
                       username            VARCHAR(30) UNIQUE NOT NULL,
                       email               VARCHAR(255) UNIQUE NOT NULL,
                       avatar_cat_id       UUID        REFERENCES cat_avatars(id) ON DELETE SET NULL,
                       level               SMALLINT    NOT NULL DEFAULT 1 CHECK (level BETWEEN 1 AND 10),
                       xp                  INT         NOT NULL DEFAULT 0 CHECK (xp >= 0),
                       nekocoins           INT         NOT NULL DEFAULT 0 CHECK (nekocoins >= 0),
                       gems                INT         NOT NULL DEFAULT 0 CHECK (gems >= 0),
                       lives               SMALLINT    NOT NULL DEFAULT 3 CHECK (lives BETWEEN 0 AND 3),
                       lives_last_regen    TIMESTAMPTZ,
                       league              VARCHAR(20) NOT NULL DEFAULT 'bronze'
                           CHECK (league IN ('bronze','silver','gold','diamond','master')),
                       league_points       INT         NOT NULL DEFAULT 0 CHECK (league_points >= 0),
                       created_at          TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                       updated_at          TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- FK reversa: cat_avatars.user_id → users
ALTER TABLE cat_avatars
    ADD CONSTRAINT fk_cat_avatars_user
        FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;

-- Provedores de autenticação (Google / Apple)
CREATE TABLE user_auth_providers (
                                     id           UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
                                     user_id      UUID        NOT NULL REFERENCES users(id) ON DELETE CASCADE,
                                     provider     VARCHAR(20) NOT NULL CHECK (provider IN ('google','apple')),
                                     provider_uid VARCHAR(255) NOT NULL,
                                     UNIQUE (provider, provider_uid)
);

-- Animes preferidos do jogador (preenchido no onboarding)
-- Declarada aqui porque precisa de users; animes vem logo abaixo
-- (FK para animes adicionada depois da criação de animes)
CREATE TABLE user_anime_preferences (
                                        user_id  UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
                                        anime_id UUID NOT NULL,   -- FK adicionada após animes
                                        PRIMARY KEY (user_id, anime_id)
);


-- ============================================================
--  DOMÍNIO 2 — PERGUNTAS
-- ============================================================

CREATE TABLE animes (
                        id        UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
                        name      VARCHAR(100) NOT NULL,
                        slug      VARCHAR(100) UNIQUE NOT NULL,
                        category  VARCHAR(30) NOT NULL
                            CHECK (category IN ('shonen','seinen','isekai','mecha','slice_of_life')),
                        is_fixed  BOOLEAN     NOT NULL DEFAULT FALSE,  -- Dragon Ball, Naruto, One Piece
                        cover_url TEXT,
                        active    BOOLEAN     NOT NULL DEFAULT TRUE,
                        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- FK que faltava em user_anime_preferences
ALTER TABLE user_anime_preferences
    ADD CONSTRAINT fk_uap_anime
        FOREIGN KEY (anime_id) REFERENCES animes(id) ON DELETE CASCADE;

CREATE TABLE questions (
                           id            UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
                           anime_id      UUID        REFERENCES animes(id) ON DELETE SET NULL,
                           type          VARCHAR(20) NOT NULL CHECK (type IN ('text','image','gif','audio')),
                           difficulty    VARCHAR(10) NOT NULL CHECK (difficulty IN ('easy','medium','hard')),
                           question_text TEXT        NOT NULL,
                           detail_text   TEXT,
                           media_url     TEXT,
                           highlight_x   SMALLINT,
                           highlight_y   SMALLINT,
                           highlight_w   SMALLINT,
                           highlight_h   SMALLINT,
                           active        BOOLEAN     NOT NULL DEFAULT TRUE,
                           created_by    UUID        REFERENCES users(id) ON DELETE SET NULL,
                           created_at    TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE question_options (
                                  id          UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
                                  question_id UUID        NOT NULL REFERENCES questions(id) ON DELETE CASCADE,
                                  option_text TEXT        NOT NULL,
                                  is_correct  BOOLEAN     NOT NULL DEFAULT FALSE,
                                  sort_order  SMALLINT    NOT NULL  -- A=0, B=1, C=2, D=3
);

-- Garante exatamente 1 opção correta por pergunta
CREATE UNIQUE INDEX uq_one_correct_per_question
    ON question_options (question_id)
    WHERE is_correct = TRUE;


-- ============================================================
--  DOMÍNIO 3 — JOGO / SESSÕES
-- ============================================================

CREATE TABLE game_sessions (
                               id                  UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
                               user_id             UUID        NOT NULL REFERENCES users(id) ON DELETE CASCADE,
                               mode                VARCHAR(20) NOT NULL
                                   CHECK (mode IN ('classic','timed','survival','daily')),
                               status              VARCHAR(20) NOT NULL DEFAULT 'active'
                                   CHECK (status IN ('active','won','lost','abandoned')),
                               league              VARCHAR(20) NOT NULL,
                               score               INT         NOT NULL DEFAULT 0 CHECK (score >= 0),
                               questions_total     SMALLINT    NOT NULL DEFAULT 15,
                               questions_answered  SMALLINT    NOT NULL DEFAULT 0,
                               correct_count       SMALLINT    NOT NULL DEFAULT 0,
                               max_combo           SMALLINT    NOT NULL DEFAULT 0,
                               lives_used          SMALLINT    NOT NULL DEFAULT 0,
                               xp_earned           INT         NOT NULL DEFAULT 0,
                               nekocoins_earned    INT         NOT NULL DEFAULT 0,
                               started_at          TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                               finished_at         TIMESTAMPTZ
);

CREATE TABLE session_answers (
                                 id                 UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
                                 session_id         UUID        NOT NULL REFERENCES game_sessions(id) ON DELETE CASCADE,
                                 question_id        UUID        NOT NULL REFERENCES questions(id),
                                 selected_option_id UUID        REFERENCES question_options(id) ON DELETE SET NULL,
                                 is_correct         BOOLEAN     NOT NULL,
                                 time_taken_ms      INT         CHECK (time_taken_ms IS NULL OR time_taken_ms >= 200), -- anti-cheat
                                 points_earned      INT         NOT NULL DEFAULT 0,
                                 help_used          VARCHAR(30),
                                 answered_at        TIMESTAMPTZ NOT NULL DEFAULT NOW()
);


-- ============================================================
--  DOMÍNIO 4 — PROGRESSÃO
-- ============================================================

CREATE TABLE user_helps_inventory (
                                      id        UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
                                      user_id   UUID        NOT NULL REFERENCES users(id) ON DELETE CASCADE,
                                      help_type VARCHAR(30) NOT NULL
                                          CHECK (help_type IN (
                                                               'sharingan','teleport','dr_stone','nen_gon',
                                                               'gear_second','death_note','haki','za_warudo',
                                                               'phoenix','reading_steiner','eye_of_zeno'
                                              )),
                                      quantity  SMALLINT    NOT NULL DEFAULT 0 CHECK (quantity >= 0),
                                      max_stock SMALLINT    NOT NULL,
                                      UNIQUE (user_id, help_type),
                                      CONSTRAINT chk_quantity_le_max CHECK (quantity <= max_stock)
);

CREATE TABLE user_achievements (
                                   id             UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
                                   user_id        UUID        NOT NULL REFERENCES users(id) ON DELETE CASCADE,
                                   achievement_id VARCHAR(50) NOT NULL,
                                   unlocked_at    TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                   UNIQUE (user_id, achievement_id)
);

CREATE TABLE daily_challenges (
                                  id           UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
                                  date         DATE        UNIQUE NOT NULL,
                                  mode         VARCHAR(20) NOT NULL CHECK (mode IN ('classic','timed','survival')),
                                  special_rule TEXT,
                                  reward_type  VARCHAR(30) NOT NULL CHECK (reward_type IN ('help','nekocoins','gems')),
                                  reward_value INT         NOT NULL CHECK (reward_value > 0),
                                  reward_help  VARCHAR(30)  -- preenchido quando reward_type = 'help'
);

CREATE TABLE user_daily_challenge_completions (
                                                  user_id      UUID        NOT NULL REFERENCES users(id) ON DELETE CASCADE,
                                                  challenge_id UUID        NOT NULL REFERENCES daily_challenges(id) ON DELETE CASCADE,
                                                  session_id   UUID        REFERENCES game_sessions(id) ON DELETE SET NULL,
                                                  completed_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                                  PRIMARY KEY (user_id, challenge_id)
);


-- ============================================================
--  DOMÍNIO 5 — SOCIAL E RANKING
-- ============================================================

CREATE TABLE seasons (
                         id        UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
                         name      VARCHAR(50) NOT NULL,
                         starts_at TIMESTAMPTZ NOT NULL,
                         ends_at   TIMESTAMPTZ NOT NULL,
                         active    BOOLEAN     NOT NULL DEFAULT TRUE,
                         CONSTRAINT chk_season_dates CHECK (ends_at > starts_at)
);

-- Apenas uma temporada ativa por vez
CREATE UNIQUE INDEX uq_one_active_season
    ON seasons (active)
    WHERE active = TRUE;

CREATE TABLE season_rankings (
                                 id        UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
                                 season_id UUID        NOT NULL REFERENCES seasons(id) ON DELETE CASCADE,
                                 user_id   UUID        NOT NULL REFERENCES users(id) ON DELETE CASCADE,
                                 score     BIGINT      NOT NULL DEFAULT 0 CHECK (score >= 0),
                                 position  INT,
                                 league    VARCHAR(20) NOT NULL
                                     CHECK (league IN ('bronze','silver','gold','diamond','master')),
                                 UNIQUE (season_id, user_id)
);

CREATE TABLE friendships (
                             id           UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
                             requester_id UUID        NOT NULL REFERENCES users(id) ON DELETE CASCADE,
                             addressee_id UUID        NOT NULL REFERENCES users(id) ON DELETE CASCADE,
                             status       VARCHAR(20) NOT NULL DEFAULT 'pending'
                                 CHECK (status IN ('pending','accepted','blocked')),
                             created_at   TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                             UNIQUE (requester_id, addressee_id),
                             CONSTRAINT chk_no_self_friendship CHECK (requester_id <> addressee_id)
);


-- ============================================================
--  DOMÍNIO 6 — ECONOMIA (LEDGERS)
-- ============================================================

CREATE TABLE coin_transactions (
                                   id            UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
                                   user_id       UUID        NOT NULL REFERENCES users(id) ON DELETE CASCADE,
                                   type          VARCHAR(30) NOT NULL
                                       CHECK (type IN (
                                                       'session_reward','daily_challenge','ranking_reward',
                                                       'season_reward','shop_purchase','help_purchase'
                                           )),
                                   amount        INT         NOT NULL,  -- positivo = ganho, negativo = gasto
                                   balance_after INT         NOT NULL CHECK (balance_after >= 0),
                                   ref_id        UUID,
                                   description   TEXT,
                                   created_at    TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE gem_transactions (
                                  id              UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
                                  user_id         UUID        NOT NULL REFERENCES users(id) ON DELETE CASCADE,
                                  type            VARCHAR(30) NOT NULL
                                      CHECK (type IN (
                                                      'iap_purchase','promotional',
                                                      'shop_purchase','help_purchase'
                                          )),
                                  amount          INT         NOT NULL,
                                  balance_after   INT         NOT NULL CHECK (balance_after >= 0),
                                  revenuecat_txn  VARCHAR(100),
                                  ref_id          UUID,
                                  created_at      TIMESTAMPTZ NOT NULL DEFAULT NOW()
);


-- ============================================================
--  DOMÍNIO 7 — LOJA
-- ============================================================

CREATE TABLE shop_items (
                            id              UUID           PRIMARY KEY DEFAULT gen_random_uuid(),
                            name            VARCHAR(100)   NOT NULL,
                            description     TEXT,
                            category        VARCHAR(30)    NOT NULL
                                CHECK (category IN (
                                                    'cosplay','accessory','eye_skin',
                                                    'help','coin_pack','gem_pack'
                                    )),
                            item_ref        VARCHAR(50),
                            price_coins     INT            CHECK (price_coins IS NULL OR price_coins > 0),
                            price_gems      INT            CHECK (price_gems  IS NULL OR price_gems  > 0),
                            price_brl       DECIMAL(10,2)  CHECK (price_brl   IS NULL OR price_brl   > 0),
                            is_rotating     BOOLEAN        NOT NULL DEFAULT FALSE,
                            available_from  TIMESTAMPTZ,
                            available_until TIMESTAMPTZ,
                            active          BOOLEAN        NOT NULL DEFAULT TRUE,
                            sort_order      SMALLINT       NOT NULL DEFAULT 0,
                            CONSTRAINT chk_item_has_price
                                CHECK (price_coins IS NOT NULL OR price_gems IS NOT NULL OR price_brl IS NOT NULL)
);

CREATE TABLE shop_orders (
                             id          UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
                             user_id     UUID        NOT NULL REFERENCES users(id) ON DELETE CASCADE,
                             item_id     UUID        NOT NULL REFERENCES shop_items(id),
                             currency    VARCHAR(10) NOT NULL CHECK (currency IN ('coins','gems','brl')),
                             amount_paid INT         NOT NULL CHECK (amount_paid > 0),
                             status      VARCHAR(20) NOT NULL DEFAULT 'completed'
                                 CHECK (status IN ('completed','refunded','failed')),
                             created_at  TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE user_owned_items (
                                  user_id     UUID        NOT NULL REFERENCES users(id) ON DELETE CASCADE,
                                  item_ref    VARCHAR(50) NOT NULL,
                                  source      VARCHAR(30) NOT NULL
                                      CHECK (source IN ('shop','ranking','level_up','season')),
                                  acquired_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
                                  PRIMARY KEY (user_id, item_ref)
);


-- ============================================================
--  ÍNDICES DE PERFORMANCE
-- ============================================================

-- Hot path: busca de perguntas por anime e dificuldade
CREATE INDEX idx_questions_anime_diff
    ON questions (anime_id, difficulty)
    WHERE active = TRUE;

-- Filtro de perguntas pelos animes do jogador
CREATE INDEX idx_user_anime_prefs
    ON user_anime_preferences (user_id);

-- Ranking por temporada e liga
CREATE INDEX idx_season_ranking
    ON season_rankings (season_id, league, score DESC);

-- Histórico de sessões do jogador
CREATE INDEX idx_sessions_user
    ON game_sessions (user_id, started_at DESC);

-- Sessões ativas (TTL anti-cheat, jobs de limpeza)
CREATE INDEX idx_sessions_active
    ON game_sessions (status, started_at)
    WHERE status = 'active';

-- Respostas por sessão
CREATE INDEX idx_answers_session
    ON session_answers (session_id, answered_at);

-- Ledgers por usuário
CREATE INDEX idx_coin_txn_user
    ON coin_transactions (user_id, created_at DESC);

CREATE INDEX idx_gem_txn_user
    ON gem_transactions (user_id, created_at DESC);

-- Itens da loja disponíveis
CREATE INDEX idx_shop_active
    ON shop_items (category, sort_order, active)
    WHERE active = TRUE;

-- Conquistas do jogador
CREATE INDEX idx_achievements_user
    ON user_achievements (user_id);

-- Amizades aceitas (ranking de amigos)
CREATE INDEX idx_friendships_accepted
    ON friendships (requester_id, status)
    WHERE status = 'accepted';

-- Desafio diário por data
CREATE INDEX idx_daily_challenge_date
    ON daily_challenges (date DESC);


-- ============================================================
--  FUNÇÃO UTILITÁRIA: atualiza updated_at automaticamente
-- ============================================================

CREATE OR REPLACE FUNCTION trigger_set_updated_at()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER set_updated_at_users
    BEFORE UPDATE ON users
    FOR EACH ROW EXECUTE FUNCTION trigger_set_updated_at();

CREATE TRIGGER set_updated_at_cat_avatars
    BEFORE UPDATE ON cat_avatars
    FOR EACH ROW EXECUTE FUNCTION trigger_set_updated_at();


-- ============================================================
--  DADOS INICIAIS (seed essencial)
-- ============================================================

-- Animes fixos (sempre ativos, não removíveis pelo jogador)
INSERT INTO animes (name, slug, category, is_fixed, active) VALUES
                                                                ('Dragon Ball Z',  'dragon-ball-z',  'shonen', TRUE, TRUE),
                                                                ('Naruto',         'naruto',         'shonen', TRUE, TRUE),
                                                                ('One Piece',      'one-piece',      'shonen', TRUE, TRUE);

-- Itens de ajuda na loja (preços de referência do UI Reference)
INSERT INTO shop_items (name, description, category, item_ref, price_coins, price_gems, sort_order) VALUES
                                                                                                        ('Sharingan',        'Bloqueia 2 opções erradas',            'help', 'help_sharingan',       250, 7,  1),
                                                                                                        ('Teletransporte',   'Pula para a próxima pergunta',         'help', 'help_teleport',        250, 7,  2),
                                                                                                        ('Dr. Stone',        'Revela uma dica no texto da pergunta', 'help', 'help_dr_stone',        300, 8,  3),
                                                                                                        ('Nen de Gon',       'Elimina metade das opções erradas',    'help', 'help_nen_gon',         NULL, 10, 4),
                                                                                                        ('Gear Second',      'Adiciona 10s no timer',                'help', 'help_gear_second',     NULL, 10, 5),
                                                                                                        ('Death Note',       'Troca a pergunta por outra',           'help', 'help_death_note',      NULL, 10, 6),
                                                                                                        ('Haki de Armamento','Próximo erro não remove vida',         'help', 'help_haki',            NULL, 10, 7),
                                                                                                        ('Za Warudo',        'Congela o timer por 5 segundos',       'help', 'help_za_warudo',       NULL, 15, 8),
                                                                                                        ('Fênix de Shura',   'Ganha uma vida extra',                 'help', 'help_phoenix',         NULL, 15, 9),
                                                                                                        ('Reading Steiner',  'Congela o timer completamente',        'help', 'help_reading_steiner', NULL, 10, 10),
                                                                                                        ('Olho de Zeno',     'Revela a resposta correta',            'help', 'help_eye_of_zeno',     NULL, 20, 11);

-- ============================================================
--  FIM DA MIGRATION V1
-- ============================================================