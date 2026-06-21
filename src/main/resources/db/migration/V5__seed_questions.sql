-- ============================================================
--  V5 — Seed de perguntas (qualidade revisada)
--  Cobre: Dragon Ball Z, Naruto, One Piece, Bleach, MHA,
--         Demon Slayer, Attack on Titan, Hunter x Hunter,
--         FMA Brotherhood, Jujutsu Kaisen, Dragon Ball Super,
--         Naruto Shippuden, Yu Yu Hakusho, Code Geass,
--         Black Clover, Fairy Tail, Sword Art Online
--  ~119 perguntas — 7 por anime em média
--  Regras aplicadas: R1-R7, Quirk→Individualidade,
--  Eldians→Eldianos, Kuwabara Spirit Sword corrigida
-- ============================================================

DO $$
DECLARE
    v_system    UUID := '00000000-0000-0000-0000-000000000001';
    v_dbz       UUID;
    v_naruto    UUID;
    v_op        UUID;
    v_bleach    UUID;
    v_mha       UUID;
    v_ds        UUID;
    v_aot       UUID;
    v_hxh       UUID;
    v_fmab      UUID;
    v_jjk       UUID;
    v_dbs       UUID;
    v_shippuden UUID;
    v_yyh       UUID;
    v_cg        UUID;
    v_bc        UUID;
    v_ft        UUID;
    v_sao       UUID;
    q           UUID;
BEGIN
    INSERT INTO users (id, username, email, level, xp, nekocoins, gems, lives, league, league_points)
    VALUES (v_system, 'system', 'system@shonenquiz.internal', 1, 0, 0, 0, 3, 'bronze', 0)
    ON CONFLICT (id) DO NOTHING;

    SELECT id INTO v_dbz       FROM animes WHERE slug = 'dragon-ball-z'                  LIMIT 1;
    SELECT id INTO v_naruto    FROM animes WHERE slug = 'naruto'                          LIMIT 1;
    SELECT id INTO v_op        FROM animes WHERE slug = 'one-piece'                       LIMIT 1;
    SELECT id INTO v_bleach    FROM animes WHERE slug = 'bleach'                          LIMIT 1;
    SELECT id INTO v_mha       FROM animes WHERE slug = 'my-hero-academia'                LIMIT 1;
    SELECT id INTO v_ds        FROM animes WHERE slug = 'demon-slayer'                    LIMIT 1;
    SELECT id INTO v_aot       FROM animes WHERE slug = 'attack-on-titan'                 LIMIT 1;
    SELECT id INTO v_hxh       FROM animes WHERE slug = 'hunter-x-hunter'                LIMIT 1;
    SELECT id INTO v_fmab      FROM animes WHERE slug = 'fullmetal-alchemist-brotherhood' LIMIT 1;
    SELECT id INTO v_jjk       FROM animes WHERE slug = 'jujutsu-kaisen'                 LIMIT 1;
    SELECT id INTO v_dbs       FROM animes WHERE slug = 'dragon-ball-super'               LIMIT 1;
    SELECT id INTO v_shippuden FROM animes WHERE slug = 'naruto-shippuden'                LIMIT 1;
    SELECT id INTO v_yyh       FROM animes WHERE slug = 'yu-yu-hakusho'                  LIMIT 1;
    SELECT id INTO v_cg        FROM animes WHERE slug = 'code-geass'                      LIMIT 1;
    SELECT id INTO v_bc        FROM animes WHERE slug = 'black-clover'                    LIMIT 1;
    SELECT id INTO v_ft        FROM animes WHERE slug = 'fairy-tail'                      LIMIT 1;
    SELECT id INTO v_sao       FROM animes WHERE slug = 'sword-art-online'                LIMIT 1;

    -- ── DRAGON BALL Z ──────────────────────────────────────────────────────────

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','easy','Qual é o nome do filho mais velho de Goku?','Ele foi o primeiro meio-Saiyajin a atingir o Super Saiyajin 2.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Goten',FALSE,0),(gen_random_uuid(),q,'Trunks',FALSE,1),(gen_random_uuid(),q,'Gohan',TRUE,2),(gen_random_uuid(),q,'Raditz',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','easy','Qual androide se torna a namorada de Krilin?','Ela e seu irmão gêmeo foram criados pelo Dr. Gero.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Androide 16',FALSE,0),(gen_random_uuid(),q,'Androide 17',FALSE,1),(gen_random_uuid(),q,'Androide 18',TRUE,2),(gen_random_uuid(),q,'Androide 19',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','easy','Qual é o nome do planeta natal de Goku?','Goku foi enviado para a Terra como bebê.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Namekusei',FALSE,0),(gen_random_uuid(),q,'Planeta Vegeta',TRUE,1),(gen_random_uuid(),q,'Terra',FALSE,2),(gen_random_uuid(),q,'Planeta Kaio',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','easy','O que desencadeou a primeira transformação Super Saiyajin de Goku?','O evento aconteceu no planeta Namekusei durante a batalha final com Freeza.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'A derrota de Vegeta',FALSE,0),(gen_random_uuid(),q,'A morte de Krilin por Freeza',TRUE,1),(gen_random_uuid(),q,'A derrota de Piccolo',FALSE,2),(gen_random_uuid(),q,'A destruição do Planeta Namekusei',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','medium','Qual é o nome do guerreiro resultante da fusão permanente de Goku e Vegeta via brincos Potara?','Esta fusão foi usada para combater Majin Boo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gogeta',FALSE,0),(gen_random_uuid(),q,'Vegito',TRUE,1),(gen_random_uuid(),q,'Gotenks',FALSE,2),(gen_random_uuid(),q,'Gohan Ultimate',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','medium','Qual é o nome da técnica especial de Piccolo usada para matar Raditz?','É um raio de energia concentrado que perfura o alvo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Makankosatto',FALSE,0),(gen_random_uuid(),q,'Makankosappo',TRUE,1),(gen_random_uuid(),q,'Makankosapo',FALSE,2),(gen_random_uuid(),q,'Makinkosappo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','hard','Qual é o nome saiyajin de nascimento de Goku?','Este nome foi revelado por Raditz quando chegou à Terra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kakaroth',FALSE,0),(gen_random_uuid(),q,'Kakarot',TRUE,1),(gen_random_uuid(),q,'Kakaro',FALSE,2),(gen_random_uuid(),q,'Cararot',FALSE,3);

    -- ── NARUTO ─────────────────────────────────────────────────────────────────

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','easy','Qual é o nome do time genin de Naruto em Konoha?','Formado por Naruto, Sasuke e Sakura.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Time 10',FALSE,0),(gen_random_uuid(),q,'Time 7',TRUE,1),(gen_random_uuid(),q,'Time 8',FALSE,2),(gen_random_uuid(),q,'Time 9',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','easy','Qual Bijuu está selado dentro de Naruto?','É a Besta com Cauda mais poderosa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shukaku (1 Cauda)',FALSE,0),(gen_random_uuid(),q,'Matatabi (2 Caudas)',FALSE,1),(gen_random_uuid(),q,'Gyuki (8 Caudas)',FALSE,2),(gen_random_uuid(),q,'Kurama (9 Caudas)',TRUE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','easy','Quais são os três Sannin Lendários de Konoha?','Foram alunos do Terceiro Hokage.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kakashi, Guy e Asuma',FALSE,0),(gen_random_uuid(),q,'Jiraiya, Tsunade e Orochimaru',TRUE,1),(gen_random_uuid(),q,'Naruto, Sasuke e Sakura',FALSE,2),(gen_random_uuid(),q,'Minato, Kushina e Obito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','medium','Qual é o nome do pai de Naruto, o Hokage que morreu selando o Kurama?','Ele é famoso pelo Hiraishin no Jutsu, técnica de movimento instantâneo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Jiraiya',FALSE,0),(gen_random_uuid(),q,'Hiruzen Sarutobi',FALSE,1),(gen_random_uuid(),q,'Minato Namikaze',TRUE,2),(gen_random_uuid(),q,'Tobirama Senju',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','medium','Qual é o nome da técnica de repulsão gravitacional usada por Pain para destruir Konoha?','É uma das técnicas do Rinnegan de Pain.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shinra Tenshin',FALSE,0),(gen_random_uuid(),q,'Shinra Tensei',TRUE,1),(gen_random_uuid(),q,'Shinra Sosei',FALSE,2),(gen_random_uuid(),q,'Shinra Tensou',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','medium','Qual é o nome do jutsu de selamento que o Terceiro Hokage usa em sua batalha final contra Orochimaru?','Invoca o Rei da Morte para selar as almas dos inimigos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shiku Fujin',FALSE,0),(gen_random_uuid(),q,'Shiki Fujin',TRUE,1),(gen_random_uuid(),q,'Shiki Fujiru',FALSE,2),(gen_random_uuid(),q,'Shoki Fujin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','hard','Qual é o verdadeiro nome do líder da Akatsuki, conhecido como Pain?','Ele compartilha o mesmo sobrenome que Naruto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nagito Uzumaki',FALSE,0),(gen_random_uuid(),q,'Nagato Uzumaki',TRUE,1),(gen_random_uuid(),q,'Nagato Urameshi',FALSE,2),(gen_random_uuid(),q,'Nagato Uzumako',FALSE,3);

    -- ── ONE PIECE ───────────────────────────────────────────────────────────────

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','easy','Qual é o sonho de Monkey D. Luffy?','É o objetivo central de toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ser o maior espadachim do mundo',FALSE,0),(gen_random_uuid(),q,'Encontrar o One Piece e se tornar o Rei dos Piratas',TRUE,1),(gen_random_uuid(),q,'Vingar a morte de Ace',FALSE,2),(gen_random_uuid(),q,'Derrotar o Governo Mundial',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','easy','Qual é o nome do primeiro navio da tripulação Chapéu de Palha?','Foi destruído durante a saga Enies Lobby.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Thousand Sunny',FALSE,0),(gen_random_uuid(),q,'Going Merry',TRUE,1),(gen_random_uuid(),q,'Oro Jackson',FALSE,2),(gen_random_uuid(),q,'Moby Dick',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','easy','Quem é o médico da tripulação Chapéu de Palha?','Ele é o membro mais jovem e querido da tripulação.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Robin',FALSE,0),(gen_random_uuid(),q,'Nami',FALSE,1),(gen_random_uuid(),q,'Tony Tony Chopper',TRUE,2),(gen_random_uuid(),q,'Jinbe',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','medium','Qual é o nome da Akuma no Mi de Portgas D. Ace, que lhe concede poder sobre o fogo?','Esta fruta foi depois herdada por Sabo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hie Hie no Mi',FALSE,0),(gen_random_uuid(),q,'Magu Magu no Mi',FALSE,1),(gen_random_uuid(),q,'Mera Mera no Mi',TRUE,2),(gen_random_uuid(),q,'Pika Pika no Mi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','medium','Qual dos Almirantes da Marinha tem o poder do Magma?','Ele é o Almirante mais temido pela pirataria mundial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kizaru',FALSE,0),(gen_random_uuid(),q,'Fujitora',FALSE,1),(gen_random_uuid(),q,'Aokiji',FALSE,2),(gen_random_uuid(),q,'Akainu',TRUE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','medium','Qual é o verdadeiro nome da Akuma no Mi de Luffy, revelado na saga Wano?','Seu poder está ligado ao Sun God Nika.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gomu Gomu no Mi',FALSE,0),(gen_random_uuid(),q,'Hito Hito no Mi: Modelo Nika',TRUE,1),(gen_random_uuid(),q,'Magu Magu no Mi',FALSE,2),(gen_random_uuid(),q,'Ope Ope no Mi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','medium','O que torna o País de Wano diferente da maioria das nações em One Piece?','Wano é governado por samurais e mantém uma política de isolamento histórico.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'É a única nação que fabrica as melhores espadas do mundo',FALSE,0),(gen_random_uuid(),q,'É um país isolado e independente, fora do controle do Governo Mundial',TRUE,1),(gen_random_uuid(),q,'É a nação natal do Rei dos Piratas Gol D. Roger',FALSE,2),(gen_random_uuid(),q,'É a única ilha onde Akuma no Mi crescem naturalmente',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','medium','Qual é o nome completo da Akuma no Mi de Buggy, o palhaço pirata que permite separar partes do corpo?','As partes separadas continuam obedecendo ao portador à distância.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bara Bara no Mi',TRUE,0),(gen_random_uuid(),q,'Fura Fura no Mi',FALSE,1),(gen_random_uuid(),q,'Hana Hana no Mi',FALSE,2),(gen_random_uuid(),q,'Mero Mero no Mi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','hard','Qual é o nome completo do Rei dos Piratas que conquistou o Grand Line antes de Luffy?','Sua execução em público iniciou a Grande Era dos Piratas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gold D. Roger',FALSE,0),(gen_random_uuid(),q,'Gol D. Roger',TRUE,1),(gen_random_uuid(),q,'Gol D. Roja',FALSE,2),(gen_random_uuid(),q,'Gol D. Rojah',FALSE,3);

    -- ── BLEACH ─────────────────────────────────────────────────────────────────

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','easy','Qual é o nome da Zanpakuto de Ichigo Kurosaki?','É uma das espadas mais icônicas do anime.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Senbonzakura',FALSE,0),(gen_random_uuid(),q,'Zangetsu',TRUE,1),(gen_random_uuid(),q,'Ryujin Jakka',FALSE,2),(gen_random_uuid(),q,'Hyorinmaru',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','easy','Quem é o grande vilão da arc de Hueco Mundo em Bleach, o ex-Capitão que traiu a Soul Society?','Sua Zanpakuto cria ilusões perfeitas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yhwach',FALSE,0),(gen_random_uuid(),q,'Gin Ichimaru',FALSE,1),(gen_random_uuid(),q,'Sosuke Aizen',TRUE,2),(gen_random_uuid(),q,'Ulquiorra Cifer',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','medium','Qual é o nome do Bankai de Ichigo Kurosaki?','Transforma sua espada em uma forma compacta e aumenta drasticamente sua velocidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tensa Zengetsu',FALSE,0),(gen_random_uuid(),q,'Tensa Zangetsu',TRUE,1),(gen_random_uuid(),q,'Tensei Zangetsu',FALSE,2),(gen_random_uuid(),q,'Tenza Zangetsu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','hard','Qual é o nome da técnica de Aizen que cria hipnose perfeita ao mostrar a liberação da Zanpakuto?','Quem ver a libertação fica permanentemente sob ilusão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kyoka Mugetsu',FALSE,0),(gen_random_uuid(),q,'Kyoka Suigetsu',TRUE,1),(gen_random_uuid(),q,'Kyoka Zuigetsu',FALSE,2),(gen_random_uuid(),q,'Kyoka Suigetzu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','hard','Qual é o nome do rei dos Quincy e antagonista final de Bleach?','Ele existe antes mesmo da Soul Society ser fundada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ywach',FALSE,0),(gen_random_uuid(),q,'Yhwach',TRUE,1),(gen_random_uuid(),q,'Yhvach',FALSE,2),(gen_random_uuid(),q,'Ywhach',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','hard','Qual é o número de Espada de Ulquiorra Cifer na hierarquia dos Arrancar?','Apesar de parecer o mais forte, seu número não é o 1.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Primeira (1)',FALSE,0),(gen_random_uuid(),q,'Segunda (2)',FALSE,1),(gen_random_uuid(),q,'Terceira (3)',FALSE,2),(gen_random_uuid(),q,'Quarta (4)',TRUE,3);

    -- ── MY HERO ACADEMIA ───────────────────────────────────────────────────────

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','easy','Qual é o nome da Individualidade herdada por Izuku Midoriya (Deku)?','Foi passada de geração em geração entre heróis poderosos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Explosion',FALSE,0),(gen_random_uuid(),q,'Half-Cold Half-Hot',FALSE,1),(gen_random_uuid(),q,'One For All',TRUE,2),(gen_random_uuid(),q,'Zero Gravity',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','easy','Qual é o nome da escola de heróis onde Deku e Bakugo estudam?','É considerada a melhor escola de heróis do Japão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ketsubutsu Academy',FALSE,0),(gen_random_uuid(),q,'UA High School',TRUE,1),(gen_random_uuid(),q,'Shiketsu High',FALSE,2),(gen_random_uuid(),q,'Isamu Academy',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','easy','Qual é o nome da Individualidade de Katsuki Bakugo?','Ele secreta uma substância que pode explodir ao toque.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hellflame',FALSE,0),(gen_random_uuid(),q,'Explosion',TRUE,1),(gen_random_uuid(),q,'Engine',FALSE,2),(gen_random_uuid(),q,'Electrification',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','medium','Qual é o nome do vilão que possui a Individualidade oposta ao One For All, capaz de roubar poderes?','Ele é o antagonista supremo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tomura Shigaraki',FALSE,0),(gen_random_uuid(),q,'Dabi',FALSE,1),(gen_random_uuid(),q,'All For One',TRUE,2),(gen_random_uuid(),q,'Overhaul',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','medium','Qual é o nome do vilão que lidera a Liga dos Vilões e possui a Individualidade de Decomposição?','Ele é o herdeiro espiritual de All For One.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Himiko Toga',FALSE,0),(gen_random_uuid(),q,'Dabi',FALSE,1),(gen_random_uuid(),q,'Kurogiri',FALSE,2),(gen_random_uuid(),q,'Tomura Shigaraki',TRUE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','hard','Qual é o nome da Individualidade do terceiro usuário do One For All, herdada por Deku, que acumula energia cinética nos movimentos?','Deku a usa combinada com o Poder Máximo para aumentar a potência dos golpes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Danger Sense',FALSE,0),(gen_random_uuid(),q,'Fa Jin',TRUE,1),(gen_random_uuid(),q,'Blackwhip',FALSE,2),(gen_random_uuid(),q,'Float',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','easy','Qual é o apelido de All Might como símbolo da paz?','Ele é o herói número 1 e predecessor de Deku.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'O Herói das Chamas',FALSE,0),(gen_random_uuid(),q,'O Símbolo do Poder',FALSE,1),(gen_random_uuid(),q,'O Símbolo da Paz',TRUE,2),(gen_random_uuid(),q,'O Punho de Ação',FALSE,3);

    -- ── DEMON SLAYER ───────────────────────────────────────────────────────────

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','easy','Qual é o nome da irmã de Tanjiro que foi transformada em demônio?','Ela mantém sua humanidade e luta ao lado do irmão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aoi',FALSE,0),(gen_random_uuid(),q,'Kanao',FALSE,1),(gen_random_uuid(),q,'Nezuko',TRUE,2),(gen_random_uuid(),q,'Shinobu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','easy','Qual estilo de respiração Tanjiro aprende primeiro com o mestre Sakonji Urokodaki?','É uma das respirações derivadas da Respiração do Sol.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Respiração do Fogo',FALSE,0),(gen_random_uuid(),q,'Respiração da Água',TRUE,1),(gen_random_uuid(),q,'Respiração do Trovão',FALSE,2),(gen_random_uuid(),q,'Respiração da Pedra',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','easy','Como se chama o grupo secreto de caçadores de demônios ao qual Tanjiro se junta?','Existem há séculos combatendo demônios no Japão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Corpo de Exorcistas',FALSE,0),(gen_random_uuid(),q,'Corpo de Caça ao Demônio',TRUE,1),(gen_random_uuid(),q,'Guarda das Sombras',FALSE,2),(gen_random_uuid(),q,'Ordem dos Pilares',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','easy','Qual é o nome do demônio mais antigo e poderoso, o grande antagonista de Demon Slayer?','Ele transformou Nezuko em demônio.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Doma',FALSE,0),(gen_random_uuid(),q,'Akaza',FALSE,1),(gen_random_uuid(),q,'Kokushibo',FALSE,2),(gen_random_uuid(),q,'Muzan Kibutsuji',TRUE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','medium','Qual é o nome do Pilar do Som em Demon Slayer?','Ele luta com ferramentas especiais e possui três esposas ninja.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gyomei Himejima',FALSE,0),(gen_random_uuid(),q,'Sanemi Shinazugawa',FALSE,1),(gen_random_uuid(),q,'Tengen Uzui',TRUE,2),(gen_random_uuid(),q,'Mitsuri Kanroji',FALSE,3);

    -- ── ATTACK ON TITAN ────────────────────────────────────────────────────────

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','easy','Qual é o nome do ramo militar responsável por explorar fora das muralhas e combater Titãs?','Levi Ackerman é seu membro mais famoso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Guarnição',FALSE,0),(gen_random_uuid(),q,'Polícia Militar',FALSE,1),(gen_random_uuid(),q,'Corpo de Reconhecimento',TRUE,2),(gen_random_uuid(),q,'Brigada de Marulhan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','easy','Qual é o poder que Eren herda de seu pai e que lhe permite se transformar em Titã?','Mais tarde ele descobre outros poderes ligados à família real.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Titã Colossal',FALSE,0),(gen_random_uuid(),q,'Titã Blindado',FALSE,1),(gen_random_uuid(),q,'Titã de Ataque',TRUE,2),(gen_random_uuid(),q,'Titã Feminino',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','medium','Quem é revelado como o Titã Colossal que destruiu o Muro Maria no início da série?','Ele é o melhor amigo de Reiner.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Reiner Braun',FALSE,0),(gen_random_uuid(),q,'Bertholdt Hoover',TRUE,1),(gen_random_uuid(),q,'Annie Leonhart',FALSE,2),(gen_random_uuid(),q,'Zeke Yeager',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','medium','Qual é o nome do evento catastrófico que Eren desencadeia no final de Attack on Titan?','Ele libera todos os Titãs Colossais dos muros para destruir o mundo de fora.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'The Uprising',FALSE,0),(gen_random_uuid(),q,'The Rumbling',TRUE,1),(gen_random_uuid(),q,'The Founding',FALSE,2),(gen_random_uuid(),q,'The Final War',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','hard','Qual é o nome da família real que tem controle absoluto sobre o Titã Fundador dentro das muralhas?','Eles viviam escondidos como família comum dentro das muralhas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ackerman',FALSE,0),(gen_random_uuid(),q,'Reiss',TRUE,1),(gen_random_uuid(),q,'Fritz',FALSE,2),(gen_random_uuid(),q,'Tybur',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','hard','Como se chama o ser orgânico que Ymir Fritz encontrou no subsolo e que originou o poder dos Titãs?','Ele se fundiu com o corpo de Ymir, concedendo-lhe os poderes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'A Lenda dos Eldianos',FALSE,0),(gen_random_uuid(),q,'O Caminho que conecta Eldianos',FALSE,1),(gen_random_uuid(),q,'A Fonte de Toda a Vida Orgânica',TRUE,2),(gen_random_uuid(),q,'O Titã Fundador Original',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','medium','O que são os Eldianos em Attack on Titan?','Eles têm o poder de se transformar em Titãs.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Os habitantes de Paradis sem poderes',FALSE,0),(gen_random_uuid(),q,'O povo descendente de Ymir Fritz, capaz de se transformar em Titã',TRUE,1),(gen_random_uuid(),q,'Os habitantes de Marley que lutam contra Titãs',FALSE,2),(gen_random_uuid(),q,'Os humanos que vivem dentro dos muros',FALSE,3);

    -- ── HUNTER X HUNTER ────────────────────────────────────────────────────────

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','easy','Qual é o nome do sistema de poderes utilizado em Hunter x Hunter?','Divide os usuários em 6 categorias.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Haki',FALSE,0),(gen_random_uuid(),q,'Chakra',FALSE,1),(gen_random_uuid(),q,'Ki',FALSE,2),(gen_random_uuid(),q,'Nen',TRUE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','easy','Quem é o melhor amigo de Gon, que domina o poder do raio com Nen?','Ele vem de uma das famílias mais temidas no mundo dos Hunters.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kurapika',FALSE,0),(gen_random_uuid(),q,'Leorio',FALSE,1),(gen_random_uuid(),q,'Killua Zoldyck',TRUE,2),(gen_random_uuid(),q,'Hisoka',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','medium','Qual é o nome do grupo de 13 criminosos que Kurapika persegue para vingar seu clã?','Eles são conhecidos por um símbolo de aranha tatuado no corpo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aranha Negra',FALSE,0),(gen_random_uuid(),q,'Aranha Fantasma',TRUE,1),(gen_random_uuid(),q,'Aranha Espectral',FALSE,2),(gen_random_uuid(),q,'Brigada Fantasma',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','medium','Qual é o nome do líder da Aranha Fantasma?','Ele é o número 1 do grupo, temido igualmente por Hunters e criminosos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chrollo Lucifer',FALSE,0),(gen_random_uuid(),q,'Chrollo Lucilfer',TRUE,1),(gen_random_uuid(),q,'Krollo Lucilfer',FALSE,2),(gen_random_uuid(),q,'Chrollo Lucilford',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','hard','Qual é o nome da técnica de velocidade máxima de Killua que usa eletricidade transmutada?','Ele usa esta técnica para proteger Gon e outros.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kanmaru (Godspeed)',FALSE,0),(gen_random_uuid(),q,'Kanmuru (Godspeed)',TRUE,1),(gen_random_uuid(),q,'Kanmuro (Godspeed)',FALSE,2),(gen_random_uuid(),q,'Kamuru (Godspeed)',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','hard','Quantos membros numerados compõem a Aranha Fantasma, incluindo o líder?','Eles têm um número tatuado na aranha em seus corpos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'10 membros',FALSE,0),(gen_random_uuid(),q,'12 membros',FALSE,1),(gen_random_uuid(),q,'13 membros',TRUE,2),(gen_random_uuid(),q,'15 membros',FALSE,3);

    -- ── FULLMETAL ALCHEMIST: BROTHERHOOD ───────────────────────────────────────

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','easy','Qual é o nome do irmão mais novo de Edward Elric, cuja alma foi selada em uma armadura?','Eles tentam recuperar seus corpos com a Pedra Filosofal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Envy',FALSE,0),(gen_random_uuid(),q,'Alphonse Elric',TRUE,1),(gen_random_uuid(),q,'Roy Mustang',FALSE,2),(gen_random_uuid(),q,'Hohenheim',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','easy','Qual é o título oficial de Edward Elric como alquimista do Estado?','Refere-se à sua prótese de aço.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Alquimista das Chamas',FALSE,0),(gen_random_uuid(),q,'Alquimista de Aço',TRUE,1),(gen_random_uuid(),q,'Alquimista do Ferro',FALSE,2),(gen_random_uuid(),q,'Alquimista da Terra',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','easy','Qual é a lei fundamental da alquimia em Fullmetal Alchemist?','Sem isso, a alquimia não pode ser praticada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'A lei do poder absoluto',FALSE,0),(gen_random_uuid(),q,'Tudo que existe pode ser transmutado',FALSE,1),(gen_random_uuid(),q,'Lei da Equivalência de Troca',TRUE,2),(gen_random_uuid(),q,'A matéria nunca se perde',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','medium','Qual é o nome do antagonista principal de FMAB, criado a partir do sangue de Hohenheim?','Ele criou os sete pecados capitais como seus filhos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dante',FALSE,0),(gen_random_uuid(),q,'Envy',FALSE,1),(gen_random_uuid(),q,'Father',TRUE,2),(gen_random_uuid(),q,'Pride',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','medium','Qual é o nome do Alquimista das Chamas, coronel do exército que usa luvas especiais?','Seu objetivo é se tornar Führer para mudar o país por dentro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Roy Mustan',FALSE,0),(gen_random_uuid(),q,'Roy Mustang',TRUE,1),(gen_random_uuid(),q,'Ray Mustang',FALSE,2),(gen_random_uuid(),q,'Roy Mustung',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','hard','Qual Homunculus representa o pecado capital da Gula em Fullmetal Alchemist Brotherhood?','Ele devora tudo, inclusive outros Homunculi.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Greed',FALSE,0),(gen_random_uuid(),q,'Sloth',FALSE,1),(gen_random_uuid(),q,'Gluttony',TRUE,2),(gen_random_uuid(),q,'Envy',FALSE,3);

    -- ── JUJUTSU KAISEN ─────────────────────────────────────────────────────────

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','easy','Qual é o nome da maldição extremamente poderosa que Yuji Itadori ingere?','Ele tem 20 dedos espalhados pelo mundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mahito',FALSE,0),(gen_random_uuid(),q,'Jogo',FALSE,1),(gen_random_uuid(),q,'Ryomen Sukuna',TRUE,2),(gen_random_uuid(),q,'Hanami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','easy','Qual é o nome da escola de feiticeiros de Jujutsu localizada em Tóquio?','Yuji, Megumi e Nobara estudam lá.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Escola Kyoto de Jujutsu',FALSE,0),(gen_random_uuid(),q,'Tokyo Jujutsu High',TRUE,1),(gen_random_uuid(),q,'Academia de Feiticeiros Zenin',FALSE,2),(gen_random_uuid(),q,'Gakuganji Institute',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','medium','Qual é a técnica inata de Gojo Satoru que cria uma barreira de energia entre ele e o mundo?','Ela torna qualquer ataque impossível de atingi-lo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hollow Purple',FALSE,0),(gen_random_uuid(),q,'Domain Expansion',FALSE,1),(gen_random_uuid(),q,'Infinito',TRUE,2),(gen_random_uuid(),q,'Lapse Blue',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','medium','Qual é o nome do melhor amigo de Yuji que é morto tragicamente por Mahito?','Sua morte é um ponto de virada emocional na série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Junpei Yoshida',FALSE,0),(gen_random_uuid(),q,'Junpei Yoshino',TRUE,1),(gen_random_uuid(),q,'Junpei Yashino',FALSE,2),(gen_random_uuid(),q,'Jumpei Yoshino',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','hard','Qual é o nome do Território Expandido de Ryomen Sukuna?','Ele usa cortes de vento invisíveis para destruir tudo ao redor.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chimera Shadow Garden',FALSE,0),(gen_random_uuid(),q,'Coffin of the Iron Mountain',FALSE,1),(gen_random_uuid(),q,'Malevolent Shrine',TRUE,2),(gen_random_uuid(),q,'Self-Embodiment of Perfection',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','hard','Qual é o nome do feiticeiro ancestral que existe há séculos e manipula eventos de dentro de diferentes corpos hospedeiros?','Ele é responsável por muitos dos males no mundo de JJK.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kenjako',FALSE,0),(gen_random_uuid(),q,'Kenjaku',TRUE,1),(gen_random_uuid(),q,'Kenjatsu',FALSE,2),(gen_random_uuid(),q,'Kenjakuu',FALSE,3);

    -- ── DRAGON BALL SUPER ──────────────────────────────────────────────────────

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','easy','Qual é o nome do Deus da Destruição do Universo 7 em Dragon Ball Super?','Ele é quem desperta Goku para o poder de Super Saiyajin God.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Champa',FALSE,0),(gen_random_uuid(),q,'Beerus',TRUE,1),(gen_random_uuid(),q,'Belmod',FALSE,2),(gen_random_uuid(),q,'Heles',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','medium','Como é chamada a transformação que Goku atinge no Torneio do Poder, com cabelos brancos prateados?','É uma técnica normalmente exclusiva dos Deuses.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Super Saiyajin Blue',FALSE,0),(gen_random_uuid(),q,'Ultra Ego',FALSE,1),(gen_random_uuid(),q,'Ultra Instinto',TRUE,2),(gen_random_uuid(),q,'Super Saiyajin Rose',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','hard','De qual universo é o poderoso lutador Jiren, o principal adversário de Goku no Torneio do Poder?','Ele é o membro mais forte dos Orgulho Troopers.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Universo 6',FALSE,0),(gen_random_uuid(),q,'Universo 9',FALSE,1),(gen_random_uuid(),q,'Universo 11',TRUE,2),(gen_random_uuid(),q,'Universo 4',FALSE,3);

    -- ── NARUTO SHIPPUDEN ───────────────────────────────────────────────────────

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','easy','Qual é o nome da organização criminosa de Ninjas S-rank que coleta os Bijuu em Naruto Shippuden?','Seus membros usam mantos pretos com nuvens vermelhas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Root (ANBU)',FALSE,0),(gen_random_uuid(),q,'Akatsuki',TRUE,1),(gen_random_uuid(),q,'Kara',FALSE,2),(gen_random_uuid(),q,'Taka',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','easy','Qual é o nome do modo que Naruto aprende com os sapos de Myoboku que potencializa seu corpo e sentidos?','Ele aprendeu no Monte Myoboku.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Modo Biju',FALSE,0),(gen_random_uuid(),q,'Modo Sábio da Montanha',FALSE,1),(gen_random_uuid(),q,'Modo Sennin (Sábio)',TRUE,2),(gen_random_uuid(),q,'Modo Chakra Divino',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','easy','Qual é o nome do lendário Uchiha que ressurge na Quarta Grande Guerra Ninja como inimigo supremo?','Ele é co-fundador de Konoha junto com Hashirama Senju.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Itachi Uchiha',FALSE,0),(gen_random_uuid(),q,'Sasuke Uchiha',FALSE,1),(gen_random_uuid(),q,'Obito Uchiha',FALSE,2),(gen_random_uuid(),q,'Madara Uchiha',TRUE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_shippuden,'text','medium','Qual é o nome da técnica proibida que ressuscita os mortos com corpos imortais?','É usada por Kabuto para ressuscitar vários ninjas lendários.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shiki Fujin',FALSE,0),(gen_random_uuid(),q,'Izanami',FALSE,1),(gen_random_uuid(),q,'Edo Tensei',TRUE,2),(gen_random_uuid(),q,'Rinne Tensei',FALSE,3);

    -- ── YU YU HAKUSHO ──────────────────────────────────────────────────────────

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','easy','Qual é o nome do protagonista de Yu Yu Hakusho que se torna um Detetive do Além?','Ele morre salvando uma criança e é ressuscitado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kuwabara',FALSE,0),(gen_random_uuid(),q,'Kurama',FALSE,1),(gen_random_uuid(),q,'Yusuke Urameshi',TRUE,2),(gen_random_uuid(),q,'Hiei',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','easy','Qual é o nome do ataque mais famoso de Yusuke, disparado pelo dedo indicador?','É uma bala de energia espiritual.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Reigan Rendan',FALSE,0),(gen_random_uuid(),q,'Reigan',TRUE,1),(gen_random_uuid(),q,'Reigan Randan',FALSE,2),(gen_random_uuid(),q,'Rigan Otsu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','medium','Qual é o nome do olho extra na testa de Hiei que amplia seus poderes?','Foi implantado cirurgicamente por um mestre.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Byakugan',FALSE,0),(gen_random_uuid(),q,'Jagan Eye',TRUE,1),(gen_random_uuid(),q,'Rinnegan',FALSE,2),(gen_random_uuid(),q,'Sharingan',FALSE,3);

    -- Corrigido: Spirit Sword é a espada de energia básica de Kuwabara;
    -- no arco do Capítulo Negro, ele usa a "Rei Ken" (Dimensional Sword)
    -- que corta o próprio espaço. Pergunta reescrita para ser factualmente correta.
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','medium','No arco do Capítulo Negro, qual é a forma avançada da espada de Kuwabara que consegue cortar o próprio espaço dimensional?','É diferente da sua Spirit Sword (espada de energia espiritual padrão).',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Spirit Sword',FALSE,0),(gen_random_uuid(),q,'Rei Ken (Dimensional Sword)',TRUE,1),(gen_random_uuid(),q,'Reiki Blade',FALSE,2),(gen_random_uuid(),q,'Soul Katana',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','hard','Qual é a herança demoníaca de Yusuke revelada no arco final?','É uma surpresa da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ele é filho de Koenma',FALSE,0),(gen_random_uuid(),q,'Yusuke é descendente do demônio Raizen',TRUE,1),(gen_random_uuid(),q,'Ele é filho do Rei do Mundo Espiritual',FALSE,2),(gen_random_uuid(),q,'Ele é a reencarnação de um rei demônio antigo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','medium','Qual é o nome da raposa demoníaca que se reencarna em corpo humano como Shuichi Minamino?','Sua forma verdadeira é usada no Torneio das Trevas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kurama Humano',FALSE,0),(gen_random_uuid(),q,'Youko Kurama',TRUE,1),(gen_random_uuid(),q,'Raizen Fox',FALSE,2),(gen_random_uuid(),q,'Kurama Demoníaco',FALSE,3);

    -- ── CODE GEASS ─────────────────────────────────────────────────────────────

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','easy','Qual é o nome do poder de Lelouch que permite dar ordens absolutas através do contato visual?','Ele obteve este poder de C.C.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Geass',TRUE,0),(gen_random_uuid(),q,'Knightmare',FALSE,1),(gen_random_uuid(),q,'Britannia Power',FALSE,2),(gen_random_uuid(),q,'Code',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','easy','Qual é a identidade mascarada de Lelouch como líder da resistência?','Ele usa máscara branca e lidera os Cavaleiros Negros.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kallen',FALSE,0),(gen_random_uuid(),q,'Zero',TRUE,1),(gen_random_uuid(),q,'Black Knight',FALSE,2),(gen_random_uuid(),q,'Orange',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','medium','Como é chamado o plano final de Lelouch para trazer paz ao mundo, usando a si mesmo como inimigo supremo?','Ele faz o mundo inteiro odiar uma única pessoa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Plano Zero Requieum',FALSE,0),(gen_random_uuid(),q,'Plano Zero Requiem',TRUE,1),(gen_random_uuid(),q,'Plano Zero Réquiem',FALSE,2),(gen_random_uuid(),q,'Plano Zero Reqiem',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','medium','Como Lelouch acidentalmente mata Euphemia?','É o momento mais trágico da primeira temporada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ele a ataca com Geass de propósito',FALSE,0),(gen_random_uuid(),q,'Ao explicar o Geass como hipótese, ele se ativa sozinho ordenando Euphemia a matar japoneses',TRUE,1),(gen_random_uuid(),q,'Euphemia trai Lelouch e ele a mata em autodefesa',FALSE,2),(gen_random_uuid(),q,'Um acidente com arma de fogo durante a batalha',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','hard','Como Lelouch derrota Schneizel no final?','É uma solução elegante com o poder do Geass.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Em batalha física com Knightmare',FALSE,0),(gen_random_uuid(),q,'Lelouch usa Geass para dar a Schneizel a ordem "obedeça Zero"',TRUE,1),(gen_random_uuid(),q,'Kallen derrota Schneizel enquanto Lelouch usa Geass',FALSE,2),(gen_random_uuid(),q,'Jeremiah cancela o Geass de Schneizel',FALSE,3);

    -- ── BLACK CLOVER ───────────────────────────────────────────────────────────

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','easy','Qual é o tipo de grimório que Asta recebe, único em seu mundo?','Ele não tem magia, mas este grimório compensa isso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Grimório de 4 Trevos',FALSE,0),(gen_random_uuid(),q,'Grimório de 5 Trevos (Anti-Magia)',TRUE,1),(gen_random_uuid(),q,'Grimório de 3 Trevos',FALSE,2),(gen_random_uuid(),q,'Grimório sem Trevo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','medium','Qual é o nome do esquadrão de Cavaleiros Mágicos ao qual Asta se junta?','É considerado o pior esquadrão do reino.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Leões Dourados',FALSE,0),(gen_random_uuid(),q,'Touros Negros',TRUE,1),(gen_random_uuid(),q,'Ciganos do Coral',FALSE,2),(gen_random_uuid(),q,'Águias Reais',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','hard','Qual é o nome do demônio que habita no grimório de Asta e lhe concede poder de Anti-Magia?','Ele aparece como uma sombra negra dentro do grimório de 5 trevos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zagred',FALSE,0),(gen_random_uuid(),q,'Megicula',FALSE,1),(gen_random_uuid(),q,'Liebe',TRUE,2),(gen_random_uuid(),q,'Lucifero',FALSE,3);

    -- ── FAIRY TAIL ─────────────────────────────────────────────────────────────

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','easy','Qual é o nome do protagonista de Fairy Tail que usa a Magia do Matador de Dragão do Fogo?','Ele foi criado pelo dragão Igneel.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gray Fullbuster',FALSE,0),(gen_random_uuid(),q,'Natsu Dragneel',TRUE,1),(gen_random_uuid(),q,'Erza Scarlet',FALSE,2),(gen_random_uuid(),q,'Gajeel Redfox',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','medium','Qual é o nome da técnica mais poderosa e famosa de Natsu Dragneel?','Ela concentra fogo em seus punhos para um ataque devastador.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fire Dragon Iron Fist',FALSE,0),(gen_random_uuid(),q,'Fire Dragon Brilliant Flame',TRUE,1),(gen_random_uuid(),q,'Fire Dragon Wing Attack',FALSE,2),(gen_random_uuid(),q,'Roar of the Fire Dragon',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','hard','Qual é a relação entre Zeref, o Mago das Trevas, e Natsu Dragneel?','Esta revelação é um dos maiores twists da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Eles são rivais eternos sem laço de sangue',FALSE,0),(gen_random_uuid(),q,'Zeref criou Natsu como demônio E400',FALSE,1),(gen_random_uuid(),q,'Zeref é o irmão mais velho de Natsu',TRUE,2),(gen_random_uuid(),q,'Zeref é o pai adotivo de Natsu',FALSE,3);

    -- ── SWORD ART ONLINE ───────────────────────────────────────────────────────

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','easy','Qual é o nome do protagonista de Sword Art Online, o lendário espadachim que usa duas espadas?','Seu nome real é Kazuto Kirigaya.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Asuna',FALSE,0),(gen_random_uuid(),q,'Kirito',TRUE,1),(gen_random_uuid(),q,'Klein',FALSE,2),(gen_random_uuid(),q,'Agil',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','medium','Quantos andares compõem o castelo flutuante Aincrad em Sword Art Online?','Kirito e os outros jogadores precisam chegar ao topo para escapar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'50 andares',FALSE,0),(gen_random_uuid(),q,'75 andares',FALSE,1),(gen_random_uuid(),q,'100 andares',TRUE,2),(gen_random_uuid(),q,'200 andares',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','medium','Qual é o nome do vilão principal do arco Aincrad, o Game Master que armou a armadilha mortal?','Ele aparece como o chefe final no 100º andar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sugou Nobuyuki',FALSE,0),(gen_random_uuid(),q,'Kayaba Akihiko',TRUE,1),(gen_random_uuid(),q,'Death Gun',FALSE,2),(gen_random_uuid(),q,'Quinella',FALSE,3);

END $$;
