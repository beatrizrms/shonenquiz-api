-- ============================================================
--  V34 — Seed de perguntas: Naruto Shippuden (150 perguntas)
--  Fonte: MyAnimeList + cânone do anime
--  Distribuição: text 40% / fill_blank 25% / who_said 20% /
--                episode_arc 10% / chronological 5%
--  Sem repetição com V5. Regras R1-R7 aplicadas.
-- ============================================================

DO $$
DECLARE
    v_system    UUID := '00000000-0000-0000-0000-000000000001';
    v_shippuden UUID;
    q           UUID;
BEGIN
    SELECT id INTO v_shippuden FROM animes WHERE slug = 'naruto-shippuden' LIMIT 1;

    -- ══════════════════════════════════════════════════════════
    -- TEXT — 60 perguntas (18 easy / 21 medium / 15 hard / 6 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','easy','Qual é o nome do time formado especificamente para trazer Gaara de volta após seu sequestro pela Akatsuki?','Naruto, Sakura, Kakashi e outros participam ativamente dessa missão de resgate.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Time de Resgate de Gaara',TRUE,0),(gen_random_uuid(),q,'Time Hebi',FALSE,1),(gen_random_uuid(),q,'Time Taka',FALSE,2),(gen_random_uuid(),q,'ANBU Raiz',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','easy','Qual é o nome da irmã mais velha de Gaara, que se torna embaixadora da Vila da Areia em Konoha?','Ela demonstra grande preocupação com o bem-estar do irmão mais novo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Temari',TRUE,0),(gen_random_uuid(),q,'Karura',FALSE,1),(gen_random_uuid(),q,'Chiyo',FALSE,2),(gen_random_uuid(),q,'Konan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','easy','Qual é o nome da ninja médica veterana da Vila da Areia que sacrifica sua vida para reviver Gaara?','Ela é avó de Kankuro e especialista em técnicas de marionetes e venenos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chiyo',TRUE,0),(gen_random_uuid(),q,'Temari',FALSE,1),(gen_random_uuid(),q,'Konan',FALSE,2),(gen_random_uuid(),q,'Tsunade',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','easy','Qual é o nome do time formado por Sasuke após deixar a Vila da Folha, composto por ninjas de diferentes origens?','Suigetsu, Karin e Juugo fazem parte deste grupo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Time Hebi',TRUE,0),(gen_random_uuid(),q,'Time Taka',FALSE,1),(gen_random_uuid(),q,'Akatsuki',FALSE,2),(gen_random_uuid(),q,'ANBU Raiz',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','easy','Qual é o nome do espadachim membro do time de Sasuke, especialista em manipulação de água?','Ele possui dentes afiados semelhantes aos de um tubarão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Suigetsu Hozuki',TRUE,0),(gen_random_uuid(),q,'Juugo',FALSE,1),(gen_random_uuid(),q,'Karin',FALSE,2),(gen_random_uuid(),q,'Kimimaro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','easy','Qual é o nome da ninja médica sensitiva membro do time de Sasuke, apaixonada por ele?','Ela possui habilidade de detectar chakra a longas distâncias.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Karin',TRUE,0),(gen_random_uuid(),q,'Suigetsu',FALSE,1),(gen_random_uuid(),q,'Juugo',FALSE,2),(gen_random_uuid(),q,'Konan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','easy','Qual é o nome do ninja com transformações físicas descontroladas, membro do time de Sasuke, com personalidade normalmente gentil?','Ele se torna extremamente violento quando perde o controle emocional.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Juugo',TRUE,0),(gen_random_uuid(),q,'Suigetsu',FALSE,1),(gen_random_uuid(),q,'Karin',FALSE,2),(gen_random_uuid(),q,'Kimimaro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','easy','Qual é o nome da parceira feminina de Nagato dentro da Akatsuki, especialista em técnicas de papel?','Ela é considerada uma das figuras mais próximas emocionalmente de Nagato.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Konan',TRUE,0),(gen_random_uuid(),q,'Karin',FALSE,1),(gen_random_uuid(),q,'Temari',FALSE,2),(gen_random_uuid(),q,'Chiyo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','easy','Qual é o nome do membro da Akatsuki especialista em explosivos de argila, rival artístico de Sasori?','Ele acredita que a arte é uma explosão momentânea.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Deidara',TRUE,0),(gen_random_uuid(),q,'Sasori',FALSE,1),(gen_random_uuid(),q,'Kisame',FALSE,2),(gen_random_uuid(),q,'Itachi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','easy','Qual é o nome do membro da Akatsuki que se transforma em marionete humana, especialista em venenos?','Ele é neto de Chiyo e antigo aluno da Vila da Areia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sasori',TRUE,0),(gen_random_uuid(),q,'Deidara',FALSE,1),(gen_random_uuid(),q,'Kakuzu',FALSE,2),(gen_random_uuid(),q,'Hidan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','easy','Qual é o nome do membro da Akatsuki obcecado por dinheiro e recompensas, com múltiplos corações?','Ele forma dupla com Hidan durante boa parte da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kakuzu',TRUE,0),(gen_random_uuid(),q,'Hidan',FALSE,1),(gen_random_uuid(),q,'Sasori',FALSE,2),(gen_random_uuid(),q,'Deidara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','easy','Qual é o nome do membro imortal da Akatsuki, devoto de um culto religioso sacrificial?','Ele não pode morrer, mesmo sofrendo ferimentos catastróficos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hidan',TRUE,0),(gen_random_uuid(),q,'Kakuzu',FALSE,1),(gen_random_uuid(),q,'Sasori',FALSE,2),(gen_random_uuid(),q,'Deidara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','easy','Qual é o nome do professor responsável por treinar Naruto e Jiraiya nas artes senninato do Monte Myoboku?','Ele é um sapo ancião extremamente sábio e experiente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fukasaku',TRUE,0),(gen_random_uuid(),q,'Gamabunta',FALSE,1),(gen_random_uuid(),q,'Gamakichi',FALSE,2),(gen_random_uuid(),q,'Shima',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','easy','Qual é o nome da esposa do sapo ancião que também auxilia no treinamento senninato de Naruto?','Ela complementa o ensinamento de seu marido durante a jornada de treinamento.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shima',TRUE,0),(gen_random_uuid(),q,'Fukasaku',FALSE,1),(gen_random_uuid(),q,'Gamakichi',FALSE,2),(gen_random_uuid(),q,'Gamabunta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','easy','Qual é o nome do sexto Hokage de Konoha, sucessor de Tsunade após os eventos da Grande Guerra Ninja?','Ele é o antigo sensei de Naruto, Sasuke e Sakura.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kakashi Hatake',TRUE,0),(gen_random_uuid(),q,'Naruto Uzumaki',FALSE,1),(gen_random_uuid(),q,'Shikamaru Nara',FALSE,2),(gen_random_uuid(),q,'Might Guy',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','easy','Qual é o nome do irmão mais velho de Konan e Nagato durante a infância em Ame, também amigo próximo de Yahiko?','Ele forma um trio inseparável com Nagato e Konan quando crianças.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yahiko',TRUE,0),(gen_random_uuid(),q,'Nagato',FALSE,1),(gen_random_uuid(),q,'Jiraiya',FALSE,2),(gen_random_uuid(),q,'Hanzo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','easy','Qual é o nome da vila natal de Nagato, Konan e Yahiko, marcada por décadas de guerra civil?','Ela é reconstruída simbolicamente pela liderança de Pain e Konan.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Amegakure',TRUE,0),(gen_random_uuid(),q,'Konohagakure',FALSE,1),(gen_random_uuid(),q,'Sunagakure',FALSE,2),(gen_random_uuid(),q,'Kirigakure',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','medium','Qual é o nome da técnica de Naruto que combina Rasengan com natureza de vento, criada durante seu treinamento com Jiraiya?','Ela representa um avanço significativo em relação ao Rasengan tradicional.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fuuton: Rasenshuriken',TRUE,0),(gen_random_uuid(),q,'Kage Bunshin Rasengan',FALSE,1),(gen_random_uuid(),q,'Sennin Rasengan',FALSE,2),(gen_random_uuid(),q,'Oodama Rasengan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','medium','Qual é o nome do modo de combate que Naruto atinge combinando chakra da Kyuubi com senninato, aumentando drasticamente seus sentidos?','Ele o utiliza com frequência durante boa parte da Grande Guerra Ninja.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Modo Kyuubi Sennin',TRUE,0),(gen_random_uuid(),q,'Modo Sábio Puro',FALSE,1),(gen_random_uuid(),q,'Modo Chakra dos Nove',FALSE,2),(gen_random_uuid(),q,'Modo Biju Completo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','medium','Qual é o nome da técnica de Sasuke que invoca uma nuvem de tempestade capaz de disparar raios devastadores?','Ele a desenvolve após absorver parte do poder de Orochimaru.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kirin',TRUE,0),(gen_random_uuid(),q,'Chidori Nagashi',FALSE,1),(gen_random_uuid(),q,'Amaterasu',FALSE,2),(gen_random_uuid(),q,'Susanoo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','medium','Qual é o nome da armadura espiritual gigante manifestada por usuários avançados do Sharingan?','Sasuke e Itachi são exemplos de personagens capazes de manifestá-la.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Susanoo',TRUE,0),(gen_random_uuid(),q,'Kirin',FALSE,1),(gen_random_uuid(),q,'Amaterasu',FALSE,2),(gen_random_uuid(),q,'Tsukuyomi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','medium','Qual é o nome da técnica de chamas negras inextinguíveis usada por Itachi através do Mangekyo Sharingan?','Ela queima qualquer coisa que o usuário mire, sem possibilidade de ser apagada por meios convencionais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Amaterasu',TRUE,0),(gen_random_uuid(),q,'Tsukuyomi',FALSE,1),(gen_random_uuid(),q,'Susanoo',FALSE,2),(gen_random_uuid(),q,'Kirin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','medium','Qual é o nome da organização criminosa liderada por Pain, responsável pela caça sistemática às Bijuu?','Konan é uma de suas líderes remanescentes após a morte de Nagato.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Akatsuki',TRUE,0),(gen_random_uuid(),q,'Time Hebi',FALSE,1),(gen_random_uuid(),q,'ANBU Raiz',FALSE,2),(gen_random_uuid(),q,'Kara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','medium','Qual é o nome da técnica que permite a Pain controlar múltiplos corpos simultaneamente através de hastes metálicas de chakra?','Cada um de seus corpos possui uma habilidade especializada diferente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chikushodo (Caminhos de Pain)',TRUE,0),(gen_random_uuid(),q,'Rinnegan Puro',FALSE,1),(gen_random_uuid(),q,'Shinra Bunshin',FALSE,2),(gen_random_uuid(),q,'Gedo Rensa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','medium','Qual é o nome da técnica de ressurreição de mortos usada por Kabuto durante a Quarta Grande Guerra Ninja?','Ela reanima ninjas lendários com poder total, praticamente imortais em combate.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Edo Tensei',TRUE,0),(gen_random_uuid(),q,'Shiki Fujin',FALSE,1),(gen_random_uuid(),q,'Izanagi',FALSE,2),(gen_random_uuid(),q,'Rinne Tensei',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','medium','Qual é o nome do coelho de estimação de Sakura, mencionado brevemente durante alguns momentos de sua vida civil?','Ela cuida dele em casa entre missões ninja.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não é individualizado com destaque na série',TRUE,0),(gen_random_uuid(),q,'Akamaru',FALSE,1),(gen_random_uuid(),q,'Pakkun',FALSE,2),(gen_random_uuid(),q,'Kuchiyose Neko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','medium','Qual é o nome da técnica secreta desenvolvida por Sakura sob orientação de Tsunade, que fortalece drasticamente sua força física através de controle de chakra?','Ela permite golpes capazes de rachar o solo com facilidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Byakugou no Jutsu',TRUE,0),(gen_random_uuid(),q,'Sozo Saisei',FALSE,1),(gen_random_uuid(),q,'Chie no Ha',FALSE,2),(gen_random_uuid(),q,'Kaiten Taijutsu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','hard','Qual é o nome do lendário Uchiha que ressurge na Quarta Grande Guerra Ninja como inimigo supremo?','Ele é co-fundador de Konoha junto com Hashirama Senju.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Itachi Uchiha',FALSE,0),(gen_random_uuid(),q,'Sasuke Uchiha',FALSE,1),(gen_random_uuid(),q,'Obito Uchiha',FALSE,2),(gen_random_uuid(),q,'Madara Uchiha',TRUE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','hard','Qual é o nome verdadeiro por trás da máscara de Tobi, revelado como um antigo companheiro de time de Kakashi?','Ele foi considerado morto durante uma missão décadas antes dos eventos principais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Obito Uchiha',TRUE,0),(gen_random_uuid(),q,'Madara Uchiha',FALSE,1),(gen_random_uuid(),q,'Itachi Uchiha',FALSE,2),(gen_random_uuid(),q,'Danzo Shimura',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','hard','Qual é o nome da entidade divina cujo poder é dividido em nove Bijuu após sua derrota pelo Rikudou Sennin?','Ela é considerada a origem de todo o chakra existente no mundo shinobi.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Juubi',TRUE,0),(gen_random_uuid(),q,'Kaguya',FALSE,1),(gen_random_uuid(),q,'Kurama',FALSE,2),(gen_random_uuid(),q,'Shinju',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','hard','Qual é o nome da mãe ancestral de toda a linhagem shinobi, antagonista final revelada durante o clímax da Quarta Grande Guerra Ninja?','Ela é a origem tanto do clã Uchiha quanto do clã Senju.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaguya Otsutsuki',TRUE,0),(gen_random_uuid(),q,'Juubi',FALSE,1),(gen_random_uuid(),q,'Hagoromo',FALSE,2),(gen_random_uuid(),q,'Hamura',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','hard','Qual é o nome do sábio lendário, considerado o criador do ninjutsu, pai espiritual de Naruto através da reencarnação?','Ele sela Kaguya junto com seu irmão gêmeo há eras.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hagoromo Otsutsuki (Rikudou Sennin)',TRUE,0),(gen_random_uuid(),q,'Hamura Otsutsuki',FALSE,1),(gen_random_uuid(),q,'Kaguya Otsutsuki',FALSE,2),(gen_random_uuid(),q,'Madara Uchiha',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','hard','Qual é o nome do irmão gêmeo do Rikudou Sennin, ancestral direto do clã Hyuga?','Ele ajuda a selar Kaguya junto com o irmão, décadas antes dos eventos da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hamura Otsutsuki',TRUE,0),(gen_random_uuid(),q,'Hagoromo Otsutsuki',FALSE,1),(gen_random_uuid(),q,'Indra Otsutsuki',FALSE,2),(gen_random_uuid(),q,'Asura Otsutsuki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','hard','Qual é o nome do filho mais velho do Rikudou Sennin, ancestral espiritual direto de Sasuke Uchiha?','Sua rivalidade com o irmão mais novo reflete diretamente o conflito entre Sasuke e Naruto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Indra Otsutsuki',TRUE,0),(gen_random_uuid(),q,'Asura Otsutsuki',FALSE,1),(gen_random_uuid(),q,'Hamura Otsutsuki',FALSE,2),(gen_random_uuid(),q,'Hagoromo Otsutsuki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','hard','Qual é o nome do filho mais novo do Rikudou Sennin, ancestral espiritual direto de Naruto Uzumaki?','Ele herda o poder através do esforço e conexões com os outros, diferente de seu irmão mais talentoso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Asura Otsutsuki',TRUE,0),(gen_random_uuid(),q,'Indra Otsutsuki',FALSE,1),(gen_random_uuid(),q,'Hamura Otsutsuki',FALSE,2),(gen_random_uuid(),q,'Hagoromo Otsutsuki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','impossible','Qual é o nome do primeiro conselheiro de Danzo Shimura, líder secreto da ANBU Raiz?','Ele mantém controle absoluto sobre uma facção secreta dentro de Konoha por décadas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Danzo é ele mesmo o líder direto, sem intermediário nomeado',TRUE,0),(gen_random_uuid(),q,'Fu (Torune)',FALSE,1),(gen_random_uuid(),q,'Sai',FALSE,2),(gen_random_uuid(),q,'Homura Mitokado',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','impossible','Qual é o nome do jovem artista pertencente à ANBU Raiz, especialista em técnicas de tinta viva, que se junta ao time de Naruto?','Ele foi treinado emocionalmente para suprimir sentimentos pessoais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sai',TRUE,0),(gen_random_uuid(),q,'Fu (Torune)',FALSE,1),(gen_random_uuid(),q,'Yamato',FALSE,2),(gen_random_uuid(),q,'Sasuke',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','impossible','Qual é o nome do capitão substituto que acompanha o Time Kakashi durante sua ausência temporária, com habilidade de controlar madeira?','Ele foi implantado com células de Hashirama Senju em experimentos secretos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yamato',TRUE,0),(gen_random_uuid(),q,'Sai',FALSE,1),(gen_random_uuid(),q,'Danzo',FALSE,2),(gen_random_uuid(),q,'Fu (Torune)',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','impossible','Qual é o nome do conselheiro idoso de Konoha, ex-companheiro de time do Terceiro Hokage, que apoia Danzo internamente?','Ele desempenha papel de bastidor na política interna da vila por décadas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Homura Mitokado',TRUE,0),(gen_random_uuid(),q,'Danzo Shimura',FALSE,1),(gen_random_uuid(),q,'Koharu Utatane',FALSE,2),(gen_random_uuid(),q,'Hiruzen Sarutobi',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- FILL_BLANK — 38 perguntas (11 easy / 13 medium / 10 hard / 4 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'fill_blank','easy','A irmã mais velha de Gaara, que se torna embaixadora da Vila da Areia em Konoha, se chama ___.','Ela demonstra grande preocupação com o bem-estar do irmão mais novo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Temari',TRUE,0),(gen_random_uuid(),q,'Karura',FALSE,1),(gen_random_uuid(),q,'Chiyo',FALSE,2),(gen_random_uuid(),q,'Konan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'fill_blank','easy','A ninja médica veterana da Vila da Areia que sacrifica sua vida para reviver Gaara se chama ___.','Ela é avó de Kankuro e especialista em técnicas de marionetes e venenos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chiyo',TRUE,0),(gen_random_uuid(),q,'Temari',FALSE,1),(gen_random_uuid(),q,'Konan',FALSE,2),(gen_random_uuid(),q,'Tsunade',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'fill_blank','easy','O time formado por Sasuke após deixar a Vila da Folha se chama ___.','Suigetsu, Karin e Juugo fazem parte deste grupo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Time Hebi',TRUE,0),(gen_random_uuid(),q,'Time Taka',FALSE,1),(gen_random_uuid(),q,'Akatsuki',FALSE,2),(gen_random_uuid(),q,'ANBU Raiz',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'fill_blank','easy','O espadachim membro do time de Sasuke, especialista em manipulação de água, se chama ___.','Ele possui dentes afiados semelhantes aos de um tubarão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Suigetsu Hozuki',TRUE,0),(gen_random_uuid(),q,'Juugo',FALSE,1),(gen_random_uuid(),q,'Karin',FALSE,2),(gen_random_uuid(),q,'Kimimaro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'fill_blank','easy','A parceira feminina de Nagato dentro da Akatsuki, especialista em técnicas de papel, se chama ___.','Ela é considerada uma das figuras mais próximas emocionalmente de Nagato.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Konan',TRUE,0),(gen_random_uuid(),q,'Karin',FALSE,1),(gen_random_uuid(),q,'Temari',FALSE,2),(gen_random_uuid(),q,'Chiyo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'fill_blank','easy','O membro da Akatsuki especialista em explosivos de argila, rival artístico de Sasori, se chama ___.','Ele acredita que a arte é uma explosão momentânea.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Deidara',TRUE,0),(gen_random_uuid(),q,'Sasori',FALSE,1),(gen_random_uuid(),q,'Kisame',FALSE,2),(gen_random_uuid(),q,'Itachi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'fill_blank','easy','O membro da Akatsuki que se transforma em marionete humana, especialista em venenos, se chama ___.','Ele é neto de Chiyo e antigo aluno da Vila da Areia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sasori',TRUE,0),(gen_random_uuid(),q,'Deidara',FALSE,1),(gen_random_uuid(),q,'Kakuzu',FALSE,2),(gen_random_uuid(),q,'Hidan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'fill_blank','easy','O membro da Akatsuki obcecado por dinheiro e recompensas, com múltiplos corações, se chama ___.','Ele forma dupla com Hidan durante boa parte da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kakuzu',TRUE,0),(gen_random_uuid(),q,'Hidan',FALSE,1),(gen_random_uuid(),q,'Sasori',FALSE,2),(gen_random_uuid(),q,'Deidara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'fill_blank','easy','O membro imortal da Akatsuki, devoto de um culto religioso sacrificial, se chama ___.','Ele não pode morrer, mesmo sofrendo ferimentos catastróficos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hidan',TRUE,0),(gen_random_uuid(),q,'Kakuzu',FALSE,1),(gen_random_uuid(),q,'Sasori',FALSE,2),(gen_random_uuid(),q,'Deidara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'fill_blank','easy','O sexto Hokage de Konoha, sucessor de Tsunade após a Grande Guerra Ninja, se chama ___.','Ele é o antigo sensei de Naruto, Sasuke e Sakura.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kakashi Hatake',TRUE,0),(gen_random_uuid(),q,'Naruto Uzumaki',FALSE,1),(gen_random_uuid(),q,'Shikamaru Nara',FALSE,2),(gen_random_uuid(),q,'Might Guy',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'fill_blank','easy','A vila natal de Nagato, Konan e Yahiko, marcada por décadas de guerra civil, se chama ___.','Ela é reconstruída simbolicamente pela liderança de Pain e Konan.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Amegakure',TRUE,0),(gen_random_uuid(),q,'Konohagakure',FALSE,1),(gen_random_uuid(),q,'Sunagakure',FALSE,2),(gen_random_uuid(),q,'Kirigakure',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'fill_blank','medium','A técnica de Naruto que combina Rasengan com natureza de vento se chama ___.','Ela representa um avanço significativo em relação ao Rasengan tradicional.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fuuton: Rasenshuriken',TRUE,0),(gen_random_uuid(),q,'Kage Bunshin Rasengan',FALSE,1),(gen_random_uuid(),q,'Sennin Rasengan',FALSE,2),(gen_random_uuid(),q,'Oodama Rasengan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'fill_blank','medium','A técnica de Sasuke que invoca uma nuvem de tempestade capaz de disparar raios devastadores se chama ___.','Ele a desenvolve após absorver parte do poder de Orochimaru.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kirin',TRUE,0),(gen_random_uuid(),q,'Chidori Nagashi',FALSE,1),(gen_random_uuid(),q,'Amaterasu',FALSE,2),(gen_random_uuid(),q,'Susanoo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'fill_blank','medium','A armadura espiritual gigante manifestada por usuários avançados do Sharingan se chama ___.','Sasuke e Itachi são exemplos de personagens capazes de manifestá-la.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Susanoo',TRUE,0),(gen_random_uuid(),q,'Kirin',FALSE,1),(gen_random_uuid(),q,'Amaterasu',FALSE,2),(gen_random_uuid(),q,'Tsukuyomi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'fill_blank','medium','A técnica de chamas negras inextinguíveis usada por Itachi através do Mangekyo Sharingan se chama ___.','Ela queima qualquer coisa que o usuário mire, sem possibilidade de ser apagada por meios convencionais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Amaterasu',TRUE,0),(gen_random_uuid(),q,'Tsukuyomi',FALSE,1),(gen_random_uuid(),q,'Susanoo',FALSE,2),(gen_random_uuid(),q,'Kirin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'fill_blank','medium','A organização criminosa liderada por Pain, responsável pela caça sistemática às Bijuu, se chama ___.','Konan é uma de suas líderes remanescentes após a morte de Nagato.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Akatsuki',TRUE,0),(gen_random_uuid(),q,'Time Hebi',FALSE,1),(gen_random_uuid(),q,'ANBU Raiz',FALSE,2),(gen_random_uuid(),q,'Kara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'fill_blank','medium','A técnica que permite a Pain controlar múltiplos corpos simultaneamente através de hastes metálicas de chakra se chama ___.','Cada um de seus corpos possui uma habilidade especializada diferente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chikushodo (Caminhos de Pain)',TRUE,0),(gen_random_uuid(),q,'Rinnegan Puro',FALSE,1),(gen_random_uuid(),q,'Shinra Bunshin',FALSE,2),(gen_random_uuid(),q,'Gedo Rensa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'fill_blank','medium','A técnica de ressurreição de mortos usada por Kabuto durante a Quarta Grande Guerra Ninja se chama ___.','Ela reanima ninjas lendários com poder total, praticamente imortais em combate.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Edo Tensei',TRUE,0),(gen_random_uuid(),q,'Shiki Fujin',FALSE,1),(gen_random_uuid(),q,'Izanagi',FALSE,2),(gen_random_uuid(),q,'Rinne Tensei',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'fill_blank','medium','A técnica secreta de Sakura, que fortalece drasticamente sua força física através de controle de chakra acumulado, se chama ___.','Ela permite golpes capazes de rachar o solo com facilidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Byakugou no Jutsu',TRUE,0),(gen_random_uuid(),q,'Sozo Saisei',FALSE,1),(gen_random_uuid(),q,'Chie no Ha',FALSE,2),(gen_random_uuid(),q,'Kaiten Taijutsu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'fill_blank','hard','O lendário Uchiha que ressurge na Quarta Grande Guerra Ninja como inimigo supremo se chama ___.','Ele é co-fundador de Konoha junto com Hashirama Senju.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Madara Uchiha',TRUE,0),(gen_random_uuid(),q,'Itachi Uchiha',FALSE,1),(gen_random_uuid(),q,'Obito Uchiha',FALSE,2),(gen_random_uuid(),q,'Sasuke Uchiha',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'fill_blank','hard','O nome verdadeiro por trás da máscara de Tobi, revelado como antigo companheiro de time de Kakashi, é ___.','Ele foi considerado morto durante uma missão décadas antes dos eventos principais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Obito Uchiha',TRUE,0),(gen_random_uuid(),q,'Madara Uchiha',FALSE,1),(gen_random_uuid(),q,'Itachi Uchiha',FALSE,2),(gen_random_uuid(),q,'Danzo Shimura',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'fill_blank','hard','A entidade divina cujo poder é dividido em nove Bijuu após sua derrota pelo Rikudou Sennin se chama ___.','Ela é considerada a origem de todo o chakra existente no mundo shinobi.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Juubi',TRUE,0),(gen_random_uuid(),q,'Kaguya',FALSE,1),(gen_random_uuid(),q,'Kurama',FALSE,2),(gen_random_uuid(),q,'Shinju',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'fill_blank','hard','A mãe ancestral de toda a linhagem shinobi, antagonista final da Quarta Grande Guerra Ninja, se chama ___.','Ela é a origem tanto do clã Uchiha quanto do clã Senju.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaguya Otsutsuki',TRUE,0),(gen_random_uuid(),q,'Juubi',FALSE,1),(gen_random_uuid(),q,'Hagoromo',FALSE,2),(gen_random_uuid(),q,'Hamura',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'fill_blank','hard','O sábio lendário, criador do ninjutsu e pai espiritual de Naruto através da reencarnação, se chama ___.','Ele sela Kaguya junto com seu irmão gêmeo há eras.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hagoromo Otsutsuki (Rikudou Sennin)',TRUE,0),(gen_random_uuid(),q,'Hamura Otsutsuki',FALSE,1),(gen_random_uuid(),q,'Kaguya Otsutsuki',FALSE,2),(gen_random_uuid(),q,'Madara Uchiha',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'fill_blank','hard','O irmão gêmeo do Rikudou Sennin, ancestral direto do clã Hyuga, se chama ___.','Ele ajuda a selar Kaguya junto com o irmão, décadas antes dos eventos da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hamura Otsutsuki',TRUE,0),(gen_random_uuid(),q,'Hagoromo Otsutsuki',FALSE,1),(gen_random_uuid(),q,'Indra Otsutsuki',FALSE,2),(gen_random_uuid(),q,'Asura Otsutsuki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'fill_blank','impossible','O jovem artista pertencente à ANBU Raiz, especialista em técnicas de tinta viva, que se junta ao time de Naruto, se chama ___.','Ele foi treinado emocionalmente para suprimir sentimentos pessoais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sai',TRUE,0),(gen_random_uuid(),q,'Fu (Torune)',FALSE,1),(gen_random_uuid(),q,'Yamato',FALSE,2),(gen_random_uuid(),q,'Sasuke',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'fill_blank','impossible','O capitão substituto que acompanha o Time Kakashi, com habilidade de controlar madeira, se chama ___.','Ele foi implantado com células de Hashirama Senju em experimentos secretos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yamato',TRUE,0),(gen_random_uuid(),q,'Sai',FALSE,1),(gen_random_uuid(),q,'Danzo',FALSE,2),(gen_random_uuid(),q,'Fu (Torune)',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'fill_blank','impossible','O conselheiro idoso de Konoha, ex-companheiro de time do Terceiro Hokage, que apoia Danzo internamente, se chama ___.','Ele desempenha papel de bastidor na política interna da vila por décadas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Homura Mitokado',TRUE,0),(gen_random_uuid(),q,'Danzo Shimura',FALSE,1),(gen_random_uuid(),q,'Koharu Utatane',FALSE,2),(gen_random_uuid(),q,'Hiruzen Sarutobi',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- WHO_SAID — 30 perguntas (9 easy / 11 medium / 8 hard / 2 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'who_said','easy','Quem disse: "Eu vou trazer Sasuke de volta, mesmo que precise usar todo o poder da Kyuubi para isso"?','A frase resume a determinação renovada do protagonista após seu treinamento com Jiraiya.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Naruto',TRUE,0),(gen_random_uuid(),q,'Sakura',FALSE,1),(gen_random_uuid(),q,'Kakashi',FALSE,2),(gen_random_uuid(),q,'Sai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'who_said','easy','Quem disse: "Eu treinei anos para me tornar médica forte o suficiente para proteger meu time"?','A frase reflete o crescimento significativo da personagem sob orientação de Tsunade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sakura',TRUE,0),(gen_random_uuid(),q,'Ino',FALSE,1),(gen_random_uuid(),q,'Hinata',FALSE,2),(gen_random_uuid(),q,'Temari',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'who_said','easy','Quem disse: "Eu escolhi o caminho da vingança, e nada vai me fazer voltar atrás agora"?','A frase reflete a determinação sombria do personagem após deixar Konoha.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sasuke',TRUE,0),(gen_random_uuid(),q,'Naruto',FALSE,1),(gen_random_uuid(),q,'Gaara',FALSE,2),(gen_random_uuid(),q,'Itachi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'who_said','easy','Quem disse: "Eu sou Kazekage desta vila, e vou protegê-la com minha própria vida se for preciso"?','A frase reflete a transformação completa de caráter do antigo vilão em líder responsável.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gaara',TRUE,0),(gen_random_uuid(),q,'Kankuro',FALSE,1),(gen_random_uuid(),q,'Temari',FALSE,2),(gen_random_uuid(),q,'Chiyo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'who_said','easy','Quem disse: "Eu odeio horas extras, mas ainda assim vou proteger meus alunos com tudo o que tenho"?','A frase reflete a lealdade prática desse feiticeiro veterano com seus subordinados dentro do time.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kakashi',TRUE,0),(gen_random_uuid(),q,'Yamato',FALSE,1),(gen_random_uuid(),q,'Might Guy',FALSE,2),(gen_random_uuid(),q,'Asuma',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'who_said','easy','Quem disse: "Eu não sinto nada quando pinto, mas talvez esteja começando a entender o que significa ter amigos de verdade"?','A frase reflete a evolução emocional gradual desse artista treinado pela ANBU Raiz.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sai',TRUE,0),(gen_random_uuid(),q,'Yamato',FALSE,1),(gen_random_uuid(),q,'Danzo',FALSE,2),(gen_random_uuid(),q,'Sasuke',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'who_said','easy','Quem disse: "Eu sou capaz de controlar madeira graças a experimentos secretos, mas ainda assim escolho lutar pelo bem de Konoha"?','A frase é dita pelo capitão substituto que acompanha o Time Kakashi.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yamato',TRUE,0),(gen_random_uuid(),q,'Sai',FALSE,1),(gen_random_uuid(),q,'Danzo',FALSE,2),(gen_random_uuid(),q,'Kakashi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'who_said','easy','Quem disse: "Eu sirvo à minha irmã com lealdade absoluta, mesmo que ela pareça fria demais para muitos"?','A frase reflete a devoção fraternal desse ninja marionetista da Vila da Areia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kankuro',TRUE,0),(gen_random_uuid(),q,'Gaara',FALSE,1),(gen_random_uuid(),q,'Temari',FALSE,2),(gen_random_uuid(),q,'Chiyo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'who_said','easy','Quem disse: "Eu treinei minha vida inteira para me tornar Hokage, e nunca vou desistir desse sonho"?','A frase é dita, mais uma vez, pelo protagonista durante seu retorno triunfal a Konoha.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Naruto',TRUE,0),(gen_random_uuid(),q,'Sasuke',FALSE,1),(gen_random_uuid(),q,'Konohamaru',FALSE,2),(gen_random_uuid(),q,'Shikamaru',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'who_said','medium','Quem disse: "Eu vou levar toda a dor que sofri e transformá-la em uma nova era de paz para este mundo, mesmo que isso custe vidas"?','A frase resume a ideologia do líder da Akatsuki sobre paz através da dor.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nagato (Pain)',TRUE,0),(gen_random_uuid(),q,'Konan',FALSE,1),(gen_random_uuid(),q,'Obito',FALSE,2),(gen_random_uuid(),q,'Madara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'who_said','medium','Quem disse: "Eu escolhi me tornar um anjo de papel, protegendo os sonhos que Yahiko e Nagato deixaram para trás"?','A frase é dita pela parceira leal de Nagato dentro da Akatsuki.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Konan',TRUE,0),(gen_random_uuid(),q,'Karin',FALSE,1),(gen_random_uuid(),q,'Temari',FALSE,2),(gen_random_uuid(),q,'Chiyo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'who_said','medium','Quem disse: "A arte é uma explosão, um momento fugaz de beleza que desaparece instantaneamente"?','A frase reflete a filosofia artística única desse membro explosivo da Akatsuki.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Deidara',TRUE,0),(gen_random_uuid(),q,'Sasori',FALSE,1),(gen_random_uuid(),q,'Kisame',FALSE,2),(gen_random_uuid(),q,'Itachi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'who_said','medium','Quem disse: "A verdadeira arte é eterna, e minhas marionetes são a prova disso, diferente da sua arte passageira"?','A frase é dita pelo mestre marionetista, rival artístico de Deidara.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sasori',TRUE,0),(gen_random_uuid(),q,'Deidara',FALSE,1),(gen_random_uuid(),q,'Kakuzu',FALSE,2),(gen_random_uuid(),q,'Hidan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'who_said','medium','Quem disse: "Eu sou imortal, e nenhum de vocês vai conseguir me matar, não importa quantas vezes tentem"?','A frase reflete a arrogância do devoto religioso e imortal da Akatsuki.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hidan',TRUE,0),(gen_random_uuid(),q,'Kakuzu',FALSE,1),(gen_random_uuid(),q,'Sasori',FALSE,2),(gen_random_uuid(),q,'Deidara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'who_said','medium','Quem disse: "Dinheiro é a única coisa realmente confiável neste mundo cheio de traições e mentiras"?','A frase reflete a filosofia materialista desse membro da Akatsuki com múltiplos corações.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kakuzu',TRUE,0),(gen_random_uuid(),q,'Hidan',FALSE,1),(gen_random_uuid(),q,'Sasori',FALSE,2),(gen_random_uuid(),q,'Deidara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'who_said','medium','Quem disse: "Eu fingi minha própria morte por décadas, esperando o momento certo de revelar meu verdadeiro plano"?','A frase é dita pelo lendário Uchiha ressurgido durante a Quarta Grande Guerra Ninja.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Madara Uchiha',TRUE,0),(gen_random_uuid(),q,'Obito Uchiha',FALSE,1),(gen_random_uuid(),q,'Itachi Uchiha',FALSE,2),(gen_random_uuid(),q,'Danzo Shimura',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'who_said','medium','Quem disse: "Meu antigo time me considerava morto, mas na verdade eu sobrevivi apenas para ver o mundo desmoronar"?','A frase é dita pelo antigo companheiro de time de Kakashi, revelado por trás da máscara de Tobi.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Obito Uchiha',TRUE,0),(gen_random_uuid(),q,'Madara Uchiha',FALSE,1),(gen_random_uuid(),q,'Itachi Uchiha',FALSE,2),(gen_random_uuid(),q,'Danzo Shimura',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'who_said','medium','Quem disse: "Eu preciso apenas de mais um olho para completar meu Rinnegan verdadeiro, e vou consegui-lo custe o que custar"?','A frase é dita durante os planos finais de Obito para invocar a Lua Infinita.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Obito Uchiha',TRUE,0),(gen_random_uuid(),q,'Madara Uchiha',FALSE,1),(gen_random_uuid(),q,'Kabuto',FALSE,2),(gen_random_uuid(),q,'Sasuke',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'who_said','hard','Quem disse: "Eu governei este mundo há eras, e nenhuma reencarnação shinobi jamais vai me superar em poder verdadeiro"?','A frase é dita pela mãe ancestral de toda a linhagem shinobi durante o clímax da guerra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaguya Otsutsuki',TRUE,0),(gen_random_uuid(),q,'Juubi',FALSE,1),(gen_random_uuid(),q,'Hagoromo',FALSE,2),(gen_random_uuid(),q,'Hamura',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'who_said','hard','Quem disse: "Eu selei minha própria mãe há eras, e agora confio no futuro para terminar o que meu irmão e eu começamos"?','A frase é dita pelo sábio criador do ninjutsu, refletindo sobre seu legado espiritual.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hagoromo Otsutsuki',TRUE,0),(gen_random_uuid(),q,'Hamura Otsutsuki',FALSE,1),(gen_random_uuid(),q,'Madara Uchiha',FALSE,2),(gen_random_uuid(),q,'Kaguya Otsutsuki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'who_said','hard','Quem disse: "Eu manipulei corpos mortos por décadas, e considero a morte apenas mais uma ferramenta útil de pesquisa"?','A frase é dita pelo discípulo médico de Orochimaru, responsável pela técnica de reanimação usada na guerra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kabuto Yakushi',TRUE,0),(gen_random_uuid(),q,'Orochimaru',FALSE,1),(gen_random_uuid(),q,'Obito',FALSE,2),(gen_random_uuid(),q,'Madara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'who_said','hard','Quem disse: "Eu sacrifiquei meu clã inteiro para proteger a paz de Konoha, e carreguei esse fardo sozinho até o fim"?','A frase é dita, em memória, pelo irmão mais velho de Sasuke, revelando sua verdadeira motivação.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Itachi Uchiha',TRUE,0),(gen_random_uuid(),q,'Madara Uchiha',FALSE,1),(gen_random_uuid(),q,'Obito Uchiha',FALSE,2),(gen_random_uuid(),q,'Fugaku Uchiha',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'who_said','hard','Quem disse: "Eu comando este vilarejo secreto em nome da segurança de Konoha, mesmo que meus métodos sejam questionáveis"?','A frase é dita pelo líder secreto da ANBU Raiz.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Danzo Shimura',TRUE,0),(gen_random_uuid(),q,'Homura Mitokado',FALSE,1),(gen_random_uuid(),q,'Koharu Utatane',FALSE,2),(gen_random_uuid(),q,'Hiruzen Sarutobi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'who_said','hard','Quem disse: "Eu sou o ancestral direto de Sasuke, e nossa rivalidade eterna se repete a cada geração"?','A frase é dita pelo filho mais velho do Rikudou Sennin, refletindo sobre o ciclo de reencarnações.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Indra Otsutsuki',TRUE,0),(gen_random_uuid(),q,'Asura Otsutsuki',FALSE,1),(gen_random_uuid(),q,'Hamura Otsutsuki',FALSE,2),(gen_random_uuid(),q,'Hagoromo Otsutsuki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'who_said','impossible','Quem disse: "Eu era apenas um artista treinado pela ANBU Raiz, mas encontrei em Naruto algo que nunca conheci: amizade verdadeira"?','A frase é dita pelo jovem artista que se junta oficialmente ao Time Kakashi.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sai',TRUE,0),(gen_random_uuid(),q,'Fu (Torune)',FALSE,1),(gen_random_uuid(),q,'Yamato',FALSE,2),(gen_random_uuid(),q,'Sasuke',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'who_said','impossible','Quem disse: "Eu apoio Danzo nos bastidores há décadas, acreditando que decisões difíceis são necessárias para proteger a vila"?','A frase é dita pelo conselheiro idoso, ex-companheiro de time do Terceiro Hokage.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Homura Mitokado',TRUE,0),(gen_random_uuid(),q,'Danzo Shimura',FALSE,1),(gen_random_uuid(),q,'Koharu Utatane',FALSE,2),(gen_random_uuid(),q,'Hiruzen Sarutobi',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- EPISODE_ARC — 15 perguntas (7 medium / 6 hard / 2 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'episode_arc','medium','Em qual arco Naruto e o time de resgate partem para salvar Gaara, sequestrado pela Akatsuki logo no início da série?','Chiyo se sacrifica para reviver Gaara ao final deste arco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Resgate de Gaara',TRUE,0),(gen_random_uuid(),q,'Arco de Sasuke e Itachi',FALSE,1),(gen_random_uuid(),q,'Arco da Invasão de Pain',FALSE,2),(gen_random_uuid(),q,'Arco da Grande Guerra Ninja',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'episode_arc','medium','Em qual arco Sasuke finalmente confronta e derrota Itachi, descobrindo a verdade sobre o massacre de seu clã?','A revelação sobre a verdadeira motivação de Itachi muda completamente a trajetória de Sasuke.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Sasuke e Itachi',TRUE,0),(gen_random_uuid(),q,'Arco de Resgate de Gaara',FALSE,1),(gen_random_uuid(),q,'Arco da Invasão de Pain',FALSE,2),(gen_random_uuid(),q,'Arco da Grande Guerra Ninja',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'episode_arc','medium','Em qual arco Pain invade Konoha diretamente, destruindo grande parte da vila em busca de Naruto?','Naruto enfrenta Pain sozinho em um dos combates mais icônicos de toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Invasão de Pain',TRUE,0),(gen_random_uuid(),q,'Arco de Sasuke e Itachi',FALSE,1),(gen_random_uuid(),q,'Arco de Resgate de Gaara',FALSE,2),(gen_random_uuid(),q,'Arco da Grande Guerra Ninja',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'episode_arc','medium','Em qual arco todas as nações shinobi se unem para enfrentar o exército de Edo Tensei convocado por Kabuto e Madara?','É o maior conflito militar já mostrado em toda a franquia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Grande Guerra Ninja',TRUE,0),(gen_random_uuid(),q,'Arco da Invasão de Pain',FALSE,1),(gen_random_uuid(),q,'Arco de Sasuke e Itachi',FALSE,2),(gen_random_uuid(),q,'Arco de Resgate de Gaara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'episode_arc','medium','Em qual arco Naruto e Killer Bee treinam juntos para dominar completamente o poder de suas respectivas Bijuu?','O treinamento acontece paralelamente aos preparativos para a guerra que se aproxima.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Treinamento com Killer Bee',TRUE,0),(gen_random_uuid(),q,'Arco da Grande Guerra Ninja',FALSE,1),(gen_random_uuid(),q,'Arco da Invasão de Pain',FALSE,2),(gen_random_uuid(),q,'Arco de Sasuke e Itachi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'episode_arc','medium','Em qual arco Kaguya Otsutsuki é finalmente derrotada, encerrando o conflito da Quarta Grande Guerra Ninja?','Naruto e Sasuke se unem definitivamente para enfrentá-la neste confronto final.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Kaguya Otsutsuki',TRUE,0),(gen_random_uuid(),q,'Arco da Grande Guerra Ninja',FALSE,1),(gen_random_uuid(),q,'Arco da Invasão de Pain',FALSE,2),(gen_random_uuid(),q,'Arco de Sasuke e Itachi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'episode_arc','medium','Em qual arco Sasuke enfrenta diretamente Danzo, revelando parte da corrupção interna de Konoha?','Sai e Sakura também participam ativamente deste confronto complexo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Confronto com Danzo',TRUE,0),(gen_random_uuid(),q,'Arco de Sasuke e Itachi',FALSE,1),(gen_random_uuid(),q,'Arco da Invasão de Pain',FALSE,2),(gen_random_uuid(),q,'Arco de Resgate de Gaara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'episode_arc','hard','Em qual arco Naruto aprende a controlar completamente o chakra da Kyuubi através de um confronto interno simbólico?','Ele finalmente estabelece uma relação de parceria com a raposa selada dentro dele.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Treinamento com Killer Bee',TRUE,0),(gen_random_uuid(),q,'Arco da Grande Guerra Ninja',FALSE,1),(gen_random_uuid(),q,'Arco da Invasão de Pain',FALSE,2),(gen_random_uuid(),q,'Arco de Kaguya Otsutsuki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'episode_arc','hard','Em qual arco a verdadeira identidade de Tobi como Obito Uchiha é finalmente revelada aos demais personagens?','A revelação ocorre gradualmente durante os primeiros confrontos da Grande Guerra Ninja.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Grande Guerra Ninja',TRUE,0),(gen_random_uuid(),q,'Arco da Invasão de Pain',FALSE,1),(gen_random_uuid(),q,'Arco de Sasuke e Itachi',FALSE,2),(gen_random_uuid(),q,'Arco de Resgate de Gaara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'episode_arc','hard','Em qual arco Madara Uchiha finalmente ressurge fisicamente, assumindo controle direto do plano da Lua Infinita?','Ele rouba os poderes do próprio Obito para completar seus objetivos finais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Grande Guerra Ninja',TRUE,0),(gen_random_uuid(),q,'Arco de Kaguya Otsutsuki',FALSE,1),(gen_random_uuid(),q,'Arco da Invasão de Pain',FALSE,2),(gen_random_uuid(),q,'Arco de Sasuke e Itachi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'episode_arc','hard','Em qual arco Sasuke se torna temporariamente vilão absoluto, planejando destruir todas as vilas shinobi por vingança?','Ele reconsidera essa decisão apenas após conversar com os antigos Hokage revividos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Grande Guerra Ninja',TRUE,0),(gen_random_uuid(),q,'Arco de Kaguya Otsutsuki',FALSE,1),(gen_random_uuid(),q,'Arco da Invasão de Pain',FALSE,2),(gen_random_uuid(),q,'Arco de Sasuke e Itachi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'episode_arc','hard','Em qual arco Konan enfrenta diretamente Obito, sacrificando-se em uma última tentativa de detê-lo?','O confronto reflete sua lealdade final aos ideais de Nagato e Yahiko.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Grande Guerra Ninja',TRUE,0),(gen_random_uuid(),q,'Arco da Invasão de Pain',FALSE,1),(gen_random_uuid(),q,'Arco de Sasuke e Itachi',FALSE,2),(gen_random_uuid(),q,'Arco de Kaguya Otsutsuki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'episode_arc','impossible','Em qual arco é revelada a história completa dos irmãos Indra e Asura Otsutsuki, explicando a origem espiritual da rivalidade entre Sasuke e Naruto?','A revelação ocorre através de flashbacks transmitidos por Hagoromo durante a guerra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Grande Guerra Ninja',TRUE,0),(gen_random_uuid(),q,'Arco de Kaguya Otsutsuki',FALSE,1),(gen_random_uuid(),q,'Arco da Invasão de Pain',FALSE,2),(gen_random_uuid(),q,'Arco de Sasuke e Itachi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'episode_arc','impossible','Em qual arco é revelado que Danzo implantou o Sharingan de Shisui em seu próprio braço, obtendo poderes de manipulação absoluta?','A revelação ocorre durante o confronto direto entre Danzo e Sasuke.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Confronto com Danzo',TRUE,0),(gen_random_uuid(),q,'Arco de Sasuke e Itachi',FALSE,1),(gen_random_uuid(),q,'Arco da Invasão de Pain',FALSE,2),(gen_random_uuid(),q,'Arco de Resgate de Gaara',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- CHRONOLOGICAL — 7 perguntas (4 hard / 3 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'chronological','hard','Ordene cronologicamente os arcos a seguir, do mais antigo ao mais recente.','Cobrem desde o resgate de Gaara até a derrota de Kaguya.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Resgate de Gaara',TRUE,0),(gen_random_uuid(),q,'Sasuke e Itachi',FALSE,1),(gen_random_uuid(),q,'Invasão de Pain',FALSE,2),(gen_random_uuid(),q,'Kaguya Otsutsuki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'chronological','hard','Ordene cronologicamente os seguintes eventos da jornada de Naruto, do mais antigo ao mais recente.','Cobrem desde seu retorno a Konoha até se tornar Hokage.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Retorna a Konoha após treinamento com Jiraiya',TRUE,0),(gen_random_uuid(),q,'Enfrenta Pain sozinho para defender a vila',FALSE,1),(gen_random_uuid(),q,'Participa da Quarta Grande Guerra Ninja',FALSE,2),(gen_random_uuid(),q,'Torna-se Hokage anos depois',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre Sasuke, do mais antigo ao mais recente.','Cobrem desde a derrota de Itachi até seu retorno definitivo a Konoha.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Derrota Itachi em combate direto',TRUE,0),(gen_random_uuid(),q,'Descobre a verdade sobre o massacre do clã Uchiha',FALSE,1),(gen_random_uuid(),q,'Torna-se vilão temporário durante a guerra',FALSE,2),(gen_random_uuid(),q,'Retorna definitivamente a Konoha',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'chronological','hard','Ordene cronologicamente os seguintes eventos da Akatsuki, do mais antigo ao mais recente.','Cobrem desde a fundação do grupo até a morte de Nagato.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yahiko, Nagato e Konan fundam os ideais que originam a Akatsuki',TRUE,0),(gen_random_uuid(),q,'Yahiko morre nas mãos de Hanzo',FALSE,1),(gen_random_uuid(),q,'Nagato assume identidade de Pain e lidera invasões',FALSE,2),(gen_random_uuid(),q,'Nagato sacrifica sua vida para reviver Konoha',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre os Otsutsuki, do mais antigo ao mais recente.','Cobrem desde o nascimento de Kaguya até a derrota final na guerra moderna.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaguya consome o Fruto do Juubi e obtém poder divino',TRUE,0),(gen_random_uuid(),q,'Hagoromo e Hamura selam a própria mãe',FALSE,1),(gen_random_uuid(),q,'O chakra se divide entre as nove Bijuu',FALSE,2),(gen_random_uuid(),q,'Kaguya é derrotada definitivamente na era moderna',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Obito, do mais antigo ao mais recente.','Cobrem desde sua suposta morte até sua redenção final.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'É considerado morto em uma missão com Kakashi e Rin',TRUE,0),(gen_random_uuid(),q,'É resgatado e manipulado por Madara Uchiha',FALSE,1),(gen_random_uuid(),q,'Assume a identidade disfarçada de Tobi na Akatsuki',FALSE,2),(gen_random_uuid(),q,'Sacrifica-se em um ato final de redenção',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Danzo, do mais antigo ao mais recente.','Cobrem desde a fundação da ANBU Raiz até sua morte pelas mãos de Sasuke.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Funda a ANBU Raiz como facção secreta',TRUE,0),(gen_random_uuid(),q,'Implanta o Sharingan de Shisui em seu braço',FALSE,1),(gen_random_uuid(),q,'Torna-se Hokage temporário durante a crise de Konoha',FALSE,2),(gen_random_uuid(),q,'É derrotado por Sasuke em combate direto',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- Complemento para fechar 150 perguntas na distribuição exata
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','easy','Qual é o nome do irmão mais velho de Killer Bee, líder da Vila da Nuvem durante os eventos da guerra?','Ele participa ativamente da liderança da aliança shinobi.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'A (Raikage)',TRUE,0),(gen_random_uuid(),q,'Killer Bee',FALSE,1),(gen_random_uuid(),q,'Darui',FALSE,2),(gen_random_uuid(),q,'C',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','easy','Qual é o nome do jinchuriki da Bijuu de oito caudas, parceiro de treinamento de Naruto?','Ele se comunica através de rimas e versos improvisados constantemente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Killer Bee',TRUE,0),(gen_random_uuid(),q,'A (Raikage)',FALSE,1),(gen_random_uuid(),q,'Darui',FALSE,2),(gen_random_uuid(),q,'Yugito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','medium','Qual é o nome do Tsuchikage da Vila da Pedra, fisicamente pequeno mas extremamente poderoso, que participa da aliança shinobi?','Ele é um dos líderes mais antigos entre os cinco Kages.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Onoki',TRUE,0),(gen_random_uuid(),q,'Mei Terumi',FALSE,1),(gen_random_uuid(),q,'A (Raikage)',FALSE,2),(gen_random_uuid(),q,'Gaara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','medium','Qual é o nome da Mizukage da Vila da Névoa, especialista em técnicas de fusão de elementos como lava e vapor?','Ela é a primeira mulher a governar a Vila da Névoa como líder suprema.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mei Terumi',TRUE,0),(gen_random_uuid(),q,'Onoki',FALSE,1),(gen_random_uuid(),q,'Tsunade',FALSE,2),(gen_random_uuid(),q,'Chiyo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','hard','Qual é o nome do general supremo que comanda toda a Aliança Shinobi durante a Quarta Grande Guerra Ninja?','Ele coordena estrategicamente as forças de todas as cinco grandes nações.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não possui general único nomeado, é comando conjunto dos Kages',TRUE,0),(gen_random_uuid(),q,'Shikaku Nara',FALSE,1),(gen_random_uuid(),q,'Darui',FALSE,2),(gen_random_uuid(),q,'Kitsuchi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','hard','Qual é o nome do pai de Shikamaru, estrategista chefe responsável pelo planejamento tático da Aliança Shinobi?','Ele se sacrifica em combate durante a guerra para proteger a linha de frente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shikaku Nara',TRUE,0),(gen_random_uuid(),q,'Inoichi Yamanaka',FALSE,1),(gen_random_uuid(),q,'Choza Akimichi',FALSE,2),(gen_random_uuid(),q,'Asuma Sarutobi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','impossible','Qual é o nome do pai de Ino, membro do clã Yamanaka que auxilia em técnicas de interrogatório durante a guerra?','Ele também se sacrifica em combate junto com Shikaku e Choza.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Inoichi Yamanaka',TRUE,0),(gen_random_uuid(),q,'Shikaku Nara',FALSE,1),(gen_random_uuid(),q,'Choza Akimichi',FALSE,2),(gen_random_uuid(),q,'Asuma Sarutobi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'fill_blank','easy','O jinchuriki da Bijuu de oito caudas, parceiro de treinamento de Naruto, se chama ___.','Ele se comunica através de rimas e versos improvisados constantemente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Killer Bee',TRUE,0),(gen_random_uuid(),q,'A (Raikage)',FALSE,1),(gen_random_uuid(),q,'Darui',FALSE,2),(gen_random_uuid(),q,'Yugito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'fill_blank','medium','O Tsuchikage da Vila da Pedra, fisicamente pequeno mas extremamente poderoso, se chama ___.','Ele é um dos líderes mais antigos entre os cinco Kages.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Onoki',TRUE,0),(gen_random_uuid(),q,'Mei Terumi',FALSE,1),(gen_random_uuid(),q,'A (Raikage)',FALSE,2),(gen_random_uuid(),q,'Gaara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'fill_blank','medium','A Mizukage da Vila da Névoa, especialista em técnicas de fusão de elementos, se chama ___.','Ela é a primeira mulher a governar a Vila da Névoa como líder suprema.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mei Terumi',TRUE,0),(gen_random_uuid(),q,'Onoki',FALSE,1),(gen_random_uuid(),q,'Tsunade',FALSE,2),(gen_random_uuid(),q,'Chiyo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'fill_blank','hard','O pai de Shikamaru, estrategista chefe responsável pelo planejamento tático da Aliança Shinobi, se chama ___.','Ele se sacrifica em combate durante a guerra para proteger a linha de frente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shikaku Nara',TRUE,0),(gen_random_uuid(),q,'Inoichi Yamanaka',FALSE,1),(gen_random_uuid(),q,'Choza Akimichi',FALSE,2),(gen_random_uuid(),q,'Asuma Sarutobi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'fill_blank','impossible','O pai de Ino, membro do clã Yamanaka que auxilia em técnicas de interrogatório durante a guerra, se chama ___.','Ele também se sacrifica em combate junto com Shikaku e Choza.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Inoichi Yamanaka',TRUE,0),(gen_random_uuid(),q,'Shikaku Nara',FALSE,1),(gen_random_uuid(),q,'Choza Akimichi',FALSE,2),(gen_random_uuid(),q,'Asuma Sarutobi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'who_said','medium','Quem disse: "Eu rimo em qualquer situação, mesmo em plena batalha, é o meu jeito de manter a calma"?','A frase reflete a personalidade descontraída do jinchuriki de oito caudas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Killer Bee',TRUE,0),(gen_random_uuid(),q,'A (Raikage)',FALSE,1),(gen_random_uuid(),q,'Darui',FALSE,2),(gen_random_uuid(),q,'Naruto',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'who_said','hard','Quem disse: "Eu planejei cada movimento desta guerra com meu próprio filho em mente, e vou dar minha vida para protegê-lo"?','A frase é dita pelo estrategista chefe da Aliança Shinobi, pai de Shikamaru.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shikaku Nara',TRUE,0),(gen_random_uuid(),q,'Inoichi Yamanaka',FALSE,1),(gen_random_uuid(),q,'Choza Akimichi',FALSE,2),(gen_random_uuid(),q,'Asuma Sarutobi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'who_said','hard','Quem disse: "Eu sou pequeno de estatura, mas minha experiência como Tsuchikage supera qualquer desvantagem física"?','A frase reflete o orgulho do líder mais antigo entre os cinco Kages.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Onoki',TRUE,0),(gen_random_uuid(),q,'Mei Terumi',FALSE,1),(gen_random_uuid(),q,'A (Raikage)',FALSE,2),(gen_random_uuid(),q,'Gaara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'episode_arc','hard','Em qual arco os cinco Kages se reúnem em um encontro tenso para decidir o destino de Sasuke e a resposta coletiva à ameaça de Madara?','O evento antecede diretamente a formação da Aliança Shinobi.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Encontro dos Cinco Kages',TRUE,0),(gen_random_uuid(),q,'Arco da Grande Guerra Ninja',FALSE,1),(gen_random_uuid(),q,'Arco da Invasão de Pain',FALSE,2),(gen_random_uuid(),q,'Arco de Sasuke e Itachi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','easy','Qual é o nome do pai de Choji, membro do clã Akimichi que também luta na linha de frente durante a guerra?','Ele demonstra orgulho constante pelo crescimento do filho ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Choza Akimichi',TRUE,0),(gen_random_uuid(),q,'Shikaku Nara',FALSE,1),(gen_random_uuid(),q,'Inoichi Yamanaka',FALSE,2),(gen_random_uuid(),q,'Asuma Sarutobi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','easy','Qual é o nome do sensei de Ino, Shikamaru e Choji, morto em combate contra a Akatsuki antes da guerra?','Sua morte motiva profundamente o crescimento de Shikamaru como ninja.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Asuma Sarutobi',TRUE,0),(gen_random_uuid(),q,'Kakashi Hatake',FALSE,1),(gen_random_uuid(),q,'Might Guy',FALSE,2),(gen_random_uuid(),q,'Kurenai Yuhi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','medium','Qual é o nome da técnica exclusiva de Kakashi que combina Raikiri com natureza elemental de raio em formato de lâminas?','Ele a desenvolve ainda mais durante os eventos da Grande Guerra Ninja.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Raikiri',TRUE,0),(gen_random_uuid(),q,'Chidori',FALSE,1),(gen_random_uuid(),q,'Kamui',FALSE,2),(gen_random_uuid(),q,'Susanoo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','medium','Qual é o nome da técnica dimensional de Kakashi, herdada do Sharingan transplantado de Obito, capaz de teletransportar objetos e pessoas?','Ele a utiliza estrategicamente em diversos combates decisivos da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kamui',TRUE,0),(gen_random_uuid(),q,'Raikiri',FALSE,1),(gen_random_uuid(),q,'Chidori',FALSE,2),(gen_random_uuid(),q,'Amaterasu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','hard','Qual é o nome da técnica final combinada de Naruto e Sasuke usada para derrotar Kaguya Otsutsuki definitivamente?','Ela sela permanentemente o poder da divindade ancestral.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não possui nome específico revelado oficialmente',TRUE,0),(gen_random_uuid(),q,'Rasengan Duplo',FALSE,1),(gen_random_uuid(),q,'Susanoo Fundido',FALSE,2),(gen_random_uuid(),q,'Selo dos Seis Caminhos',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','hard','Qual é o nome do poder concedido por Hagoromo a Naruto e Sasuke antes da batalha final contra Kaguya?','Ele representa metade do próprio chakra do sábio criador do ninjutsu.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Poder dos Seis Caminhos',TRUE,0),(gen_random_uuid(),q,'Modo Sábio Duplo',FALSE,1),(gen_random_uuid(),q,'Chakra Ancestral',FALSE,2),(gen_random_uuid(),q,'Bênção de Kaguya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','impossible','Qual é o nome da técnica de selamento usada por Naruto e Sasuke, combinada com os poderes concedidos por Hagoromo, para aprisionar Kaguya em outra dimensão?','Ela é o desfecho definitivo do conflito com a divindade ancestral.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não possui nome específico revelado oficialmente',TRUE,0),(gen_random_uuid(),q,'Selo dos Seis Caminhos',FALSE,1),(gen_random_uuid(),q,'Rinne Tensei Duplo',FALSE,2),(gen_random_uuid(),q,'Portal Dimensional Final',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'fill_blank','easy','O sensei de Ino, Shikamaru e Choji, morto em combate contra a Akatsuki antes da guerra, se chama ___.','Sua morte motiva profundamente o crescimento de Shikamaru como ninja.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Asuma Sarutobi',TRUE,0),(gen_random_uuid(),q,'Kakashi Hatake',FALSE,1),(gen_random_uuid(),q,'Might Guy',FALSE,2),(gen_random_uuid(),q,'Kurenai Yuhi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'fill_blank','medium','A técnica exclusiva de Kakashi que combina Raikiri com natureza elemental de raio em formato de lâminas se chama ___.','Ele a desenvolve ainda mais durante os eventos da Grande Guerra Ninja.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Raikiri',TRUE,0),(gen_random_uuid(),q,'Chidori',FALSE,1),(gen_random_uuid(),q,'Kamui',FALSE,2),(gen_random_uuid(),q,'Susanoo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'fill_blank','medium','A técnica dimensional de Kakashi, herdada do Sharingan transplantado de Obito, se chama ___.','Ele a utiliza estrategicamente em diversos combates decisivos da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kamui',TRUE,0),(gen_random_uuid(),q,'Raikiri',FALSE,1),(gen_random_uuid(),q,'Chidori',FALSE,2),(gen_random_uuid(),q,'Amaterasu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'fill_blank','hard','O poder concedido por Hagoromo a Naruto e Sasuke antes da batalha final contra Kaguya se chama ___.','Ele representa metade do próprio chakra do sábio criador do ninjutsu.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Poder dos Seis Caminhos',TRUE,0),(gen_random_uuid(),q,'Modo Sábio Duplo',FALSE,1),(gen_random_uuid(),q,'Chakra Ancestral',FALSE,2),(gen_random_uuid(),q,'Bênção de Kaguya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'who_said','medium','Quem disse: "Eu perdi meu sensei em combate, e agora carrego a responsabilidade de proteger seus ideais de paz"?','A frase é dita por Shikamaru refletindo sobre a morte de Asuma.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shikamaru',TRUE,0),(gen_random_uuid(),q,'Ino',FALSE,1),(gen_random_uuid(),q,'Choji',FALSE,2),(gen_random_uuid(),q,'Naruto',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','easy','Qual é o nome do sensei de Rock Lee, Neji e Tenten, que enfrenta Madara diretamente durante a guerra?','Ele abre oito dos Portões Celestiais em um dos combates mais intensos da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Might Guy',TRUE,0),(gen_random_uuid(),q,'Kakashi Hatake',FALSE,1),(gen_random_uuid(),q,'Asuma Sarutobi',FALSE,2),(gen_random_uuid(),q,'Kurenai Yuhi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','medium','Qual é o nome da técnica final de Might Guy, ativada ao abrir todos os Oito Portões Celestiais simultaneamente?','Seu uso representa um risco extremo à própria vida do usuário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hachimon Tonko (Oito Portões)',TRUE,0),(gen_random_uuid(),q,'Kaimon Kaihou',FALSE,1),(gen_random_uuid(),q,'Asura Mode',FALSE,2),(gen_random_uuid(),q,'Dynamic Entry',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','hard','Qual é o nome do clone de sombra criado por Naruto que participa ativamente da Grande Guerra Ninja em diferentes frentes de batalha simultaneamente?','Essa estratégia permite que Naruto ajude múltiplos aliados ao mesmo tempo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kage Bunshin',TRUE,0),(gen_random_uuid(),q,'Tajuu Kage Bunshin',FALSE,1),(gen_random_uuid(),q,'Rasengan Bunshin',FALSE,2),(gen_random_uuid(),q,'Kyuubi Bunshin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','hard','Qual é o nome da técnica de golpes velozes usada por Might Guy ao abrir o Sexto Portão Celestial?','Ela demonstra velocidade capaz de rivalizar com técnicas de teletransporte.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não possui nome específico revelado com destaque',TRUE,0),(gen_random_uuid(),q,'Kaimon Kaihou',FALSE,1),(gen_random_uuid(),q,'Dynamic Entry',FALSE,2),(gen_random_uuid(),q,'Reverse Lotus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','impossible','Qual é o nome do golpe usado por Might Guy contra Madara, considerado o ataque físico mais poderoso já demonstrado por um humano comum na série?','Ele quase mata Madara, algo inédito para qualquer personagem sem poderes especiais dracônicos ou divinos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não possui nome específico revelado com destaque',TRUE,0),(gen_random_uuid(),q,'Reverse Lotus',FALSE,1),(gen_random_uuid(),q,'Dynamic Entry',FALSE,2),(gen_random_uuid(),q,'Asura Punch',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'fill_blank','medium','A técnica final de Might Guy, ativada ao abrir todos os Oito Portões Celestiais simultaneamente, se chama ___.','Seu uso representa um risco extremo à própria vida do usuário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hachimon Tonko (Oito Portões)',TRUE,0),(gen_random_uuid(),q,'Kaimon Kaihou',FALSE,1),(gen_random_uuid(),q,'Asura Mode',FALSE,2),(gen_random_uuid(),q,'Dynamic Entry',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','impossible','Qual é o nome do estado final de Naruto e Sasuke combinados com metade cada do chakra de Hagoromo, usados no confronto final contra Kaguya?','Naruto recebe o poder Yang e Sasuke o poder Yin do sábio ancestral.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não possui nome único revelado, referido apenas como poder dos Seis Caminhos',TRUE,0),(gen_random_uuid(),q,'Modo Sábio dos Seis Caminhos',FALSE,1),(gen_random_uuid(),q,'Chakra Yin-Yang Fundido',FALSE,2),(gen_random_uuid(),q,'Susanoo Ancestral',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','impossible','Qual é o nome do braço protético concedido a Naruto após perder seu braço direito durante o confronto contra Momoshiki, feito de células de Hashirama?','Ele é criado por Tsunade e Sakura logo após a guerra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não possui nome próprio revelado com destaque',TRUE,0),(gen_random_uuid(),q,'Braço de Hashirama',FALSE,1),(gen_random_uuid(),q,'Prótese Senju',FALSE,2),(gen_random_uuid(),q,'Braço Regenerativo',FALSE,3);

END $$;
