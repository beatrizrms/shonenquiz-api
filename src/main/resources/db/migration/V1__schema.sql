-- ============================================================
--  SHONEN QUIZ — Schema Consolidado (Estado Final)
--  Substitui V1 até V31 (DDL apenas)
--  PostgreSQL 16
-- ============================================================

CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- ============================================================
--  DOMÍNIO 1 — USUÁRIOS
-- ============================================================

CREATE TABLE IF NOT EXISTS cat_avatars (
    id          UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id     UUID        UNIQUE,
    breed       VARCHAR(30) NOT NULL
        CHECK (breed IN (
            'black','blue-point','malhado','malhado-orange','orange','red-point',
            'chocolate-point','tabby-brown','tabby-gray','tabby-orange','trica',
            'tuxedo','tuxedo-green','tuxedo-gray','tuxedo-spotted','white'
        )),
    eye_color   VARCHAR(20) NOT NULL
        CHECK (eye_color IN ('blue','green','pink','purple','yellow')),
    expression  VARCHAR(20) NOT NULL DEFAULT 'normal'
        CHECK (expression IN ('normal','happy','fierce','cool')),
    accessory   VARCHAR(50),
    background  VARCHAR(50),   -- renomeado de cosplay (V7)
    cat_name    VARCHAR(30)    NOT NULL,
    updated_at  TIMESTAMPTZ    NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS users (
    id                UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
    username          VARCHAR(30) UNIQUE NOT NULL,
    email             VARCHAR(255) UNIQUE NOT NULL,
    avatar_cat_id     UUID        REFERENCES cat_avatars(id) ON DELETE SET NULL,
    level             SMALLINT    NOT NULL DEFAULT 1 CHECK (level BETWEEN 1 AND 10),
    xp                INT         NOT NULL DEFAULT 0 CHECK (xp >= 0),
    nekocoins         INT         NOT NULL DEFAULT 0 CHECK (nekocoins >= 0),
    gems              INT         NOT NULL DEFAULT 0 CHECK (gems >= 0),
    lives             SMALLINT    NOT NULL DEFAULT 3 CHECK (lives BETWEEN 0 AND 3),
    lives_last_regen  TIMESTAMPTZ,
    league            VARCHAR(20) NOT NULL DEFAULT 'bronze'
        CHECK (league IN ('bronze','silver','gold','diamond','master')),
    league_points     INT         NOT NULL DEFAULT 0 CHECK (league_points >= 0),
    created_at        TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at        TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

ALTER TABLE cat_avatars
    ADD CONSTRAINT fk_cat_avatars_user
        FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
        NOT VALID;

CREATE TABLE IF NOT EXISTS user_auth_providers (
    id           UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id      UUID        NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    provider     VARCHAR(20) NOT NULL CHECK (provider IN ('google','apple')),
    provider_uid VARCHAR(255) NOT NULL,
    UNIQUE (provider, provider_uid)
);

CREATE TABLE IF NOT EXISTS animes (
    id         UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
    name       VARCHAR(100) NOT NULL,
    slug       VARCHAR(100) UNIQUE NOT NULL,
    category   VARCHAR(30) NOT NULL
        CHECK (category IN ('shonen','seinen','isekai','mecha','slice_of_life')),
    is_fixed   BOOLEAN     NOT NULL DEFAULT FALSE,
    cover_url  TEXT,
    active     BOOLEAN     NOT NULL DEFAULT TRUE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS user_anime_preferences (
    user_id  UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    anime_id UUID NOT NULL REFERENCES animes(id) ON DELETE CASCADE,
    PRIMARY KEY (user_id, anime_id)
);

-- ============================================================
--  DOMÍNIO 2 — PERGUNTAS
-- ============================================================

CREATE TABLE IF NOT EXISTS questions (
    id            UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
    anime_id      UUID        REFERENCES animes(id) ON DELETE SET NULL,
    type          VARCHAR(20) NOT NULL CHECK (type IN ('text','image','gif','audio')),
    difficulty    VARCHAR(10) NOT NULL
        CHECK (difficulty IN ('easy','medium','hard','impossible')),
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

CREATE TABLE IF NOT EXISTS question_options (
    id          UUID     PRIMARY KEY DEFAULT gen_random_uuid(),
    question_id UUID     NOT NULL REFERENCES questions(id) ON DELETE CASCADE,
    option_text TEXT     NOT NULL,
    is_correct  BOOLEAN  NOT NULL DEFAULT FALSE,
    sort_order  SMALLINT NOT NULL
);

CREATE UNIQUE INDEX IF NOT EXISTS uq_one_correct_per_question
    ON question_options (question_id)
    WHERE is_correct = TRUE;

-- ============================================================
--  DOMÍNIO 3 — JOGO / SESSÕES
-- ============================================================

CREATE TABLE IF NOT EXISTS game_sessions (
    id                 UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id            UUID        NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    mode               VARCHAR(20) NOT NULL
        CHECK (mode IN ('classic','timed','survival','daily')),
    status             VARCHAR(20) NOT NULL DEFAULT 'active'
        CHECK (status IN ('active','won','lost','abandoned')),
    league             VARCHAR(20) NOT NULL,
    score              INT         NOT NULL DEFAULT 0 CHECK (score >= 0),
    questions_total    SMALLINT    NOT NULL DEFAULT 20,
    questions_answered SMALLINT    NOT NULL DEFAULT 0,
    correct_count      SMALLINT    NOT NULL DEFAULT 0,
    max_combo          SMALLINT    NOT NULL DEFAULT 0,
    lives_used         SMALLINT    NOT NULL DEFAULT 0,
    xp_earned          INT         NOT NULL DEFAULT 0,
    nekocoins_earned   INT         NOT NULL DEFAULT 0,
    wrong_streak       INT         NOT NULL DEFAULT 0,    -- V16
    coin_stage         INT         NOT NULL DEFAULT 0,    -- V18
    bonus_lives        INT         NOT NULL DEFAULT 0,    -- V19
    point_multiplier   DOUBLE PRECISION NOT NULL DEFAULT 1.0,  -- V21
    boss_assignments   TEXT        NOT NULL DEFAULT '',   -- V31
    active_boss_effect TEXT,                              -- V31
    max_lives          INT         NOT NULL DEFAULT 3,    -- V29
    started_at         TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    finished_at        TIMESTAMPTZ
);

CREATE TABLE IF NOT EXISTS session_answers (
    id                 UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
    session_id         UUID        NOT NULL REFERENCES game_sessions(id) ON DELETE CASCADE,
    question_id        UUID        NOT NULL REFERENCES questions(id),
    selected_option_id UUID        REFERENCES question_options(id) ON DELETE SET NULL,
    is_correct         BOOLEAN     NOT NULL,
    time_taken_ms      INT         CHECK (time_taken_ms IS NULL OR time_taken_ms >= 200),
    points_earned      INT         NOT NULL DEFAULT 0,
    help_used          VARCHAR(30),
    answered_at        TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- ============================================================
--  DOMÍNIO 4 — PROGRESSÃO
-- ============================================================

CREATE TABLE IF NOT EXISTS user_helps_inventory (
    id           UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id      UUID        NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    ability_type VARCHAR(30) NOT NULL
        CHECK (ability_type IN (
            'sharingan','teleport','dr_stone','nen_gon',
            'gear_second','death_note','haki','za_warudo',
            'phoenix','reading_steiner','eye_of_zeno'
        )),
    quantity     SMALLINT    NOT NULL DEFAULT 0 CHECK (quantity >= 0),
    max_stock    SMALLINT    NOT NULL,
    UNIQUE (user_id, ability_type),
    CONSTRAINT chk_quantity_le_max CHECK (quantity <= max_stock)
);

CREATE TABLE IF NOT EXISTS user_achievements (
    id             UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id        UUID        NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    achievement_id VARCHAR(50) NOT NULL,
    unlocked_at    TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    UNIQUE (user_id, achievement_id)
);

CREATE TABLE IF NOT EXISTS daily_challenges (
    id           UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
    date         DATE        UNIQUE NOT NULL,
    mode         VARCHAR(20) NOT NULL CHECK (mode IN ('classic','timed','survival')),
    special_rule TEXT,
    reward_type  VARCHAR(30) NOT NULL CHECK (reward_type IN ('help','nekocoins','gems')),
    reward_value INT         NOT NULL CHECK (reward_value > 0),
    reward_help  VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS user_daily_challenge_completions (
    user_id      UUID        NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    challenge_id UUID        NOT NULL REFERENCES daily_challenges(id) ON DELETE CASCADE,
    session_id   UUID        REFERENCES game_sessions(id) ON DELETE SET NULL,
    completed_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    PRIMARY KEY (user_id, challenge_id)
);

-- ============================================================
--  DOMÍNIO 5 — SOCIAL E RANKING
-- ============================================================

CREATE TABLE IF NOT EXISTS seasons (
    id        UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
    name      VARCHAR(50) NOT NULL,
    starts_at TIMESTAMPTZ NOT NULL,
    ends_at   TIMESTAMPTZ NOT NULL,
    active    BOOLEAN     NOT NULL DEFAULT TRUE,
    CONSTRAINT chk_season_dates CHECK (ends_at > starts_at)
);

CREATE UNIQUE INDEX IF NOT EXISTS uq_one_active_season
    ON seasons (active)
    WHERE active = TRUE;

CREATE TABLE IF NOT EXISTS season_rankings (
    id        UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
    season_id UUID        NOT NULL REFERENCES seasons(id) ON DELETE CASCADE,
    user_id   UUID        NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    score     BIGINT      NOT NULL DEFAULT 0 CHECK (score >= 0),
    position  INT,
    league    VARCHAR(20) NOT NULL
        CHECK (league IN ('bronze','silver','gold','diamond','master')),
    UNIQUE (season_id, user_id)
);

CREATE TABLE IF NOT EXISTS friendships (
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

CREATE TABLE IF NOT EXISTS coin_transactions (
    id            UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id       UUID        NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    type          VARCHAR(30) NOT NULL
        CHECK (type IN (
            'session_reward','daily_challenge','ranking_reward',
            'season_reward','shop_purchase','help_purchase'
        )),
    amount        INT         NOT NULL,
    balance_after INT         NOT NULL CHECK (balance_after >= 0),
    ref_id        UUID,
    description   TEXT,
    created_at    TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS gem_transactions (
    id             UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id        UUID        NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    type           VARCHAR(30) NOT NULL
        CHECK (type IN ('iap_purchase','promotional','shop_purchase','help_purchase')),
    amount         INT         NOT NULL,
    balance_after  INT         NOT NULL CHECK (balance_after >= 0),
    revenuecat_txn VARCHAR(100),
    ref_id         UUID,
    created_at     TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- ============================================================
--  DOMÍNIO 7 — LOJA
-- ============================================================

CREATE TABLE IF NOT EXISTS shop_items (
    id                 UUID           PRIMARY KEY DEFAULT gen_random_uuid(),
    name               VARCHAR(100)   NOT NULL,
    description        TEXT,
    category           VARCHAR(30)    NOT NULL
        CHECK (category IN (
            'cosplay','accessory','eye_skin','ability',
            'coin_pack','gem_pack','ability_set'
        )),
    item_ref           VARCHAR(50),
    price_coins        INT            CHECK (price_coins IS NULL OR price_coins > 0),
    price_gems         INT            CHECK (price_gems  IS NULL OR price_gems  > 0),
    price_brl          DECIMAL(10,2)  CHECK (price_brl   IS NULL OR price_brl   > 0),
    is_rotating        BOOLEAN        NOT NULL DEFAULT FALSE,
    available_from     TIMESTAMPTZ,
    available_until    TIMESTAMPTZ,
    active             BOOLEAN        NOT NULL DEFAULT TRUE,
    sort_order         SMALLINT       NOT NULL DEFAULT 0,
    set_ref            VARCHAR(100),             -- V3
    emoji              VARCHAR(10),              -- V3
    source             VARCHAR(20),              -- V3
    reward_coins       INT,                      -- V4
    reward_gems        INT,                      -- V4
    ability_item_id    UUID REFERENCES shop_items(id), -- V11
    ability_category   VARCHAR(20),              -- V20
    cooldown_questions SMALLINT NOT NULL DEFAULT 3,    -- V24
    CONSTRAINT chk_item_has_price
        CHECK (
            category = 'ability'
            OR (price_coins IS NOT NULL OR price_gems IS NOT NULL OR price_brl IS NOT NULL)
        )
);

CREATE TABLE IF NOT EXISTS shop_orders (
    id          UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id     UUID        NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    item_id     UUID        NOT NULL REFERENCES shop_items(id),
    currency    VARCHAR(10) NOT NULL CHECK (currency IN ('coins','gems','brl')),
    amount_paid INT         NOT NULL CHECK (amount_paid > 0),
    status      VARCHAR(20) NOT NULL DEFAULT 'completed'
        CHECK (status IN ('completed','refunded','failed')),
    created_at  TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS user_owned_items (
    user_id     UUID        NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    item_ref    VARCHAR(50) NOT NULL,
    source      VARCHAR(30) NOT NULL DEFAULT 'shop'
        CHECK (source IN ('shop','ranking','level_up','season')),
    acquired_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    PRIMARY KEY (user_id, item_ref)
);

CREATE TABLE IF NOT EXISTS user_equipped_items (
    user_id     UUID         NOT NULL,
    item_ref    VARCHAR(100) NOT NULL,
    equipped_at TIMESTAMPTZ  NOT NULL DEFAULT NOW(),
    PRIMARY KEY (user_id, item_ref)
);

CREATE TABLE IF NOT EXISTS user_ability_slots (
    user_id     UUID        NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    slot_index  SMALLINT    NOT NULL CHECK (slot_index BETWEEN 0 AND 3),
    set_ref     VARCHAR(100),
    unlocked    BOOLEAN     NOT NULL DEFAULT FALSE,
    unlocked_at TIMESTAMPTZ,
    equipped_at TIMESTAMPTZ,
    PRIMARY KEY (user_id, slot_index)
);

-- ============================================================
--  DOMÍNIO 8 — REGRAS DE JOGO
-- ============================================================

CREATE TABLE IF NOT EXISTS game_rules (
    id              UUID         NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
    name            VARCHAR(100) NOT NULL,
    label           VARCHAR(200) NOT NULL,
    description     TEXT,
    trigger_type    VARCHAR(50)  NOT NULL,
    trigger_value   INT          NOT NULL,
    trigger_threshold INT,                    -- V17
    effect_type     VARCHAR(50)  NOT NULL,
    effect_value    DECIMAL(10,2),
    bonus_metric    VARCHAR(20)  NOT NULL DEFAULT 'score',
    active          BOOLEAN      NOT NULL DEFAULT TRUE,
    created_at      TIMESTAMPTZ  NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS game_rule_modes (
    rule_id UUID        NOT NULL REFERENCES game_rules(id) ON DELETE CASCADE,
    mode    VARCHAR(20) NOT NULL,
    PRIMARY KEY (rule_id, mode)
);

CREATE TABLE IF NOT EXISTS session_achievements (
    id              UUID        NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
    session_id      UUID        NOT NULL REFERENCES game_sessions(id) ON DELETE CASCADE,
    rule_id         UUID        NOT NULL REFERENCES game_rules(id),
    triggered_at    TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    bonus_applied   DECIMAL(10,2),
    question_number INT,
    UNIQUE (session_id, rule_id)
);

-- ============================================================
--  DOMÍNIO 9 — CONFIGURAÇÕES DE MODO E NÍVEIS
-- ============================================================

CREATE TABLE IF NOT EXISTS game_mode_configs (
    id                    UUID             PRIMARY KEY DEFAULT gen_random_uuid(),
    mode                  VARCHAR(30)      NOT NULL UNIQUE,
    display_name          VARCHAR(60)      NOT NULL,
    description           TEXT,
    questions_total       SMALLINT         NOT NULL,
    timer_seconds         SMALLINT         NOT NULL,
    lives                 SMALLINT         NOT NULL,
    base_points           INT              NOT NULL DEFAULT 5,            -- V28
    max_speed_multiplier  DOUBLE PRECISION NOT NULL DEFAULT 3.0,          -- V28
    question_time_limit_ms BIGINT          NOT NULL DEFAULT 30000,        -- V28
    active                BOOLEAN          NOT NULL DEFAULT TRUE,
    sort_order            SMALLINT         NOT NULL DEFAULT 0,
    created_at            TIMESTAMPTZ      NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS level_thresholds (
    level      SMALLINT    PRIMARY KEY,
    title      VARCHAR(40) NOT NULL,
    min_xp     INT         NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- ============================================================
--  DOMÍNIO 10 — BOSS POWERS
-- ============================================================

CREATE TABLE IF NOT EXISTS boss_powers (
    id              UUID         PRIMARY KEY DEFAULT gen_random_uuid(),
    villain_name    VARCHAR(100) NOT NULL,
    power_name      VARCHAR(100) NOT NULL,
    raridade        VARCHAR(20)  NOT NULL CHECK (raridade IN ('raro', 'epico', 'lendario')),
    effect_type     VARCHAR(50)  NOT NULL,
    effect_duration INT          NOT NULL DEFAULT 1,
    allowed_modes   TEXT         NOT NULL DEFAULT 'classic,timed,daily',
    description     TEXT         NOT NULL,
    active          BOOLEAN      NOT NULL DEFAULT TRUE,
    created_at      TIMESTAMPTZ  NOT NULL DEFAULT NOW()
);

-- ============================================================
--  DOMÍNIO 11 — FEATURE TOGGLES
-- ============================================================

CREATE TABLE IF NOT EXISTS feature_toggles (
    key         VARCHAR(100) PRIMARY KEY,
    enabled     BOOLEAN      NOT NULL DEFAULT TRUE,
    description TEXT,
    updated_at  TIMESTAMPTZ  NOT NULL DEFAULT NOW()
);

-- ============================================================
--  ÍNDICES DE PERFORMANCE
-- ============================================================

CREATE INDEX IF NOT EXISTS idx_questions_anime_diff
    ON questions (anime_id, difficulty)
    WHERE active = TRUE;

CREATE INDEX IF NOT EXISTS idx_user_anime_prefs
    ON user_anime_preferences (user_id);

CREATE INDEX IF NOT EXISTS idx_season_ranking
    ON season_rankings (season_id, league, score DESC);

CREATE INDEX IF NOT EXISTS idx_sessions_user
    ON game_sessions (user_id, started_at DESC);

CREATE INDEX IF NOT EXISTS idx_sessions_active
    ON game_sessions (status, started_at)
    WHERE status = 'active';

CREATE INDEX IF NOT EXISTS idx_answers_session
    ON session_answers (session_id, answered_at);

CREATE INDEX IF NOT EXISTS idx_coin_txn_user
    ON coin_transactions (user_id, created_at DESC);

CREATE INDEX IF NOT EXISTS idx_gem_txn_user
    ON gem_transactions (user_id, created_at DESC);

CREATE INDEX IF NOT EXISTS idx_shop_active
    ON shop_items (category, sort_order, active)
    WHERE active = TRUE;

CREATE INDEX IF NOT EXISTS idx_achievements_user
    ON user_achievements (user_id);

CREATE INDEX IF NOT EXISTS idx_friendships_accepted
    ON friendships (requester_id, status)
    WHERE status = 'accepted';

CREATE INDEX IF NOT EXISTS idx_daily_challenge_date
    ON daily_challenges (date DESC);

CREATE INDEX IF NOT EXISTS idx_equipped_user
    ON user_equipped_items (user_id);

CREATE INDEX IF NOT EXISTS idx_ability_slots_user
    ON user_ability_slots (user_id);

-- ============================================================
--  TRIGGERS updated_at
-- ============================================================

CREATE OR REPLACE FUNCTION trigger_set_updated_at()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER set_updated_at_users
    BEFORE UPDATE ON users
    FOR EACH ROW EXECUTE FUNCTION trigger_set_updated_at();

CREATE OR REPLACE TRIGGER set_updated_at_cat_avatars
    BEFORE UPDATE ON cat_avatars
    FOR EACH ROW EXECUTE FUNCTION trigger_set_updated_at();
