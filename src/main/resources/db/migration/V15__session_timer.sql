ALTER TABLE game_mode_configs ADD COLUMN IF NOT EXISTS session_timer_seconds INT;
UPDATE game_mode_configs SET session_timer_seconds = 60 WHERE mode = 'timed';
