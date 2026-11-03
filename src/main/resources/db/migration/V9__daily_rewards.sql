ALTER TABLE users
    ADD COLUMN IF NOT EXISTS last_daily_login_reward  TIMESTAMPTZ,
    ADD COLUMN IF NOT EXISTS last_daily_win_reward     TIMESTAMPTZ;
