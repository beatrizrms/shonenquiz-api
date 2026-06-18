-- Temporada inicial (Junho 2026)
INSERT INTO seasons (id, name, starts_at, ends_at, active)
VALUES (
    gen_random_uuid(),
    'Temporada de Junho',
    '2026-06-01T00:00:00Z',
    '2026-06-30T23:59:59Z',
    TRUE
)
ON CONFLICT DO NOTHING;
