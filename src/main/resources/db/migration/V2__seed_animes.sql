-- ============================================================
--  Seed — Animes
-- ============================================================

INSERT INTO animes (id, name, slug, category, is_fixed, active) VALUES
-- Fixos obrigatórios
(gen_random_uuid(), 'Dragon Ball Z',                    'dragon-ball-z',                    'shonen',       TRUE,  TRUE),
(gen_random_uuid(), 'Naruto',                           'naruto',                            'shonen',       TRUE,  TRUE),
(gen_random_uuid(), 'One Piece',                        'one-piece',                         'shonen',       TRUE,  TRUE),

-- Shonen
(gen_random_uuid(), 'Bleach',                           'bleach',                            'shonen',       FALSE, TRUE),
(gen_random_uuid(), 'My Hero Academia',                 'my-hero-academia',                  'shonen',       FALSE, TRUE),
(gen_random_uuid(), 'Demon Slayer',                     'demon-slayer',                      'shonen',       FALSE, TRUE),
(gen_random_uuid(), 'Attack on Titan',                  'attack-on-titan',                   'shonen',       FALSE, TRUE),
(gen_random_uuid(), 'Hunter x Hunter',                  'hunter-x-hunter',                   'shonen',       FALSE, TRUE),
(gen_random_uuid(), 'Fullmetal Alchemist: Brotherhood', 'fullmetal-alchemist-brotherhood',   'shonen',       FALSE, TRUE),
(gen_random_uuid(), 'Jujutsu Kaisen',                   'jujutsu-kaisen',                    'shonen',       FALSE, TRUE),
(gen_random_uuid(), 'Dragon Ball Super',                'dragon-ball-super',                 'shonen',       FALSE, TRUE),
(gen_random_uuid(), 'Black Clover',                     'black-clover',                      'shonen',       FALSE, TRUE),
(gen_random_uuid(), 'Fairy Tail',                       'fairy-tail',                        'shonen',       FALSE, TRUE),
(gen_random_uuid(), 'Sword Art Online',                 'sword-art-online',                  'shonen',       FALSE, TRUE),
(gen_random_uuid(), 'Naruto Shippuden',                 'naruto-shippuden',                  'shonen',       FALSE, TRUE),
(gen_random_uuid(), 'Yu Yu Hakusho',                    'yu-yu-hakusho',                     'shonen',       FALSE, TRUE),
(gen_random_uuid(), 'Saint Seiya',                      'saint-seiya',                       'shonen',       FALSE, TRUE),
(gen_random_uuid(), 'Dragon Ball',                      'dragon-ball',                       'shonen',       FALSE, TRUE),

-- Seinen
(gen_random_uuid(), 'Tokyo Ghoul',                      'tokyo-ghoul',                       'seinen',       FALSE, TRUE),
(gen_random_uuid(), 'Vinland Saga',                     'vinland-saga',                      'seinen',       FALSE, TRUE),
(gen_random_uuid(), 'Berserk',                          'berserk',                           'seinen',       FALSE, TRUE),
(gen_random_uuid(), 'Chainsaw Man',                     'chainsaw-man',                      'seinen',       FALSE, TRUE),
(gen_random_uuid(), 'Mushishi',                         'mushishi',                          'seinen',       FALSE, TRUE),

-- Isekai
(gen_random_uuid(), 'Re:Zero',                          're-zero',                           'isekai',       FALSE, TRUE),
(gen_random_uuid(), 'Overlord',                         'overlord',                          'isekai',       FALSE, TRUE),
(gen_random_uuid(), 'That Time I Got Reincarnated as a Slime', 'tensura',                   'isekai',       FALSE, TRUE),
(gen_random_uuid(), 'No Game No Life',                  'no-game-no-life',                   'isekai',       FALSE, TRUE),
(gen_random_uuid(), 'Konosuba',                         'konosuba',                          'isekai',       FALSE, TRUE),

-- Mecha
(gen_random_uuid(), 'Neon Genesis Evangelion',          'neon-genesis-evangelion',           'mecha',        FALSE, TRUE),
(gen_random_uuid(), 'Code Geass',                       'code-geass',                        'mecha',        FALSE, TRUE),
(gen_random_uuid(), 'Gurren Lagann',                    'gurren-lagann',                     'mecha',        FALSE, TRUE),

-- Slice of Life
(gen_random_uuid(), 'Haikyuu!!',                        'haikyuu',                           'slice_of_life',FALSE, TRUE),
(gen_random_uuid(), 'Clannad',                          'clannad',                           'slice_of_life',FALSE, TRUE),
(gen_random_uuid(), 'Slam Dunk',                        'slam-dunk',                         'slice_of_life',FALSE, TRUE)

ON CONFLICT (slug) DO NOTHING;
