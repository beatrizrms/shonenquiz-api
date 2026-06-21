-- ============================================================
--  SHONEN QUIZ — Seed Avatar Config (Estado Final)
--  Não há tabela de configuração de avatar — as raças e olhos
--  válidos são definidos como CHECK constraints na tabela cat_avatars.
--  Este arquivo documenta os valores aceitos e não tem INSERTs.
-- ============================================================

-- Raças disponíveis (CHECK constraint em cat_avatars.breed):
--   black, blue-point, malhado, malhado-orange, orange, red-point,
--   chocolate-point, tabby-brown, tabby-gray, tabby-orange, trica,
--   tuxedo, tuxedo-green, tuxedo-gray, tuxedo-spotted, white

-- Olhos disponíveis (CHECK constraint em cat_avatars.eye_color):
--   blue, green, pink, purple, yellow

-- Expressões disponíveis (CHECK constraint em cat_avatars.expression):
--   normal, happy, fierce, cool

-- Nota: este arquivo existe para cumprir a estrutura dos 7 arquivos de seed.
-- Nenhum dado de avatar padrão precisa ser inserido — avatares são criados
-- pelo jogador durante o onboarding.

SELECT 1; -- no-op para arquivo não ficar vazio
