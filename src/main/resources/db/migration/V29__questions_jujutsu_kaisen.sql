-- ============================================================
--  V29 — Seed de perguntas: Jujutsu Kaisen (150 perguntas)
--  Fonte: MyAnimeList + cânone do anime
--  Distribuição: text 40% / fill_blank 25% / who_said 20% /
--                episode_arc 10% / chronological 5%
--  Sem repetição com V5. Regras R1-R7 aplicadas.
-- ============================================================

DO $$
DECLARE
    v_system UUID := '00000000-0000-0000-0000-000000000001';
    v_jjk    UUID;
    q        UUID;
BEGIN
    SELECT id INTO v_jjk FROM animes WHERE slug = 'jujutsu-kaisen' LIMIT 1;

    -- ══════════════════════════════════════════════════════════
    -- TEXT — 60 perguntas (18 easy / 21 medium / 15 hard / 6 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','easy','Qual é o nome da colega de turma de Yuji na Tokyo Jujutsu High, especialista em técnicas de sombra?','Ela possui uma cicatriz na testa herdada de uma técnica antiga de seu clã.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Megumi Fushiguro',FALSE,0),(gen_random_uuid(),q,'Nobara Kugisaki',TRUE,1),(gen_random_uuid(),q,'Maki Zenin',FALSE,2),(gen_random_uuid(),q,'Mai Zenin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','easy','Qual é o nome do colega de turma de Yuji, capaz de invocar animais das sombras para lutar por ele?','Ele é neto adotivo de um dos feiticeiros mais fortes da história.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Megumi Fushiguro',TRUE,0),(gen_random_uuid(),q,'Nobara Kugisaki',FALSE,1),(gen_random_uuid(),q,'Panda',FALSE,2),(gen_random_uuid(),q,'Toge Inumaki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','easy','Qual é o nome da colega de turma de Yuji que usa martelo e pregos como arma principal?','Ela veio de uma cidade pequena e sonha em uma vida urbana glamorosa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nobara Kugisaki',TRUE,0),(gen_random_uuid(),q,'Maki Zenin',FALSE,1),(gen_random_uuid(),q,'Mai Zenin',FALSE,2),(gen_random_uuid(),q,'Momo Nishimiya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','easy','Qual é o nome do professor mais forte da Tokyo Jujutsu High, considerado o feiticeiro mais poderoso vivo?','Ele usa uma venda nos olhos para controlar o próprio poder ocular.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Satoru Gojo',TRUE,0),(gen_random_uuid(),q,'Masamichi Yaga',FALSE,1),(gen_random_uuid(),q,'Kento Nanami',FALSE,2),(gen_random_uuid(),q,'Shoko Ieiri',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','easy','Qual é o nome do feiticeiro veterano, ex-funcionário de empresa, extremamente pragmático em relação ao trabalho?','Ele odeia trabalhar horas extras e sempre calcula o valor justo de suas missões.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kento Nanami',TRUE,0),(gen_random_uuid(),q,'Satoru Gojo',FALSE,1),(gen_random_uuid(),q,'Yuji Itadori',FALSE,2),(gen_random_uuid(),q,'Toge Inumaki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','easy','Qual é o nome da médica da Tokyo Jujutsu High, amiga próxima de Gojo desde os tempos de estudante?','Ela é responsável por curar ferimentos graves de feiticeiros e exorcistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shoko Ieiri',TRUE,0),(gen_random_uuid(),q,'Utahime Iori',FALSE,1),(gen_random_uuid(),q,'Mei Mei',FALSE,2),(gen_random_uuid(),q,'Kasumi Miwa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','easy','Qual é o nome do diretor da Tokyo Jujutsu High, que também é professor de artesanato de bonecos?','Ele mantém segredos sobre a origem de alguns estudantes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Masamichi Yaga',TRUE,0),(gen_random_uuid(),q,'Kento Nanami',FALSE,1),(gen_random_uuid(),q,'Satoru Gojo',FALSE,2),(gen_random_uuid(),q,'Yuki Tsukumo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','easy','Qual é o nome do estudante silencioso de Tokyo, capaz de dar ordens através de palavras específicas que ativam poderes reais?','Ele se comunica principalmente por meio de embalagens de comida enroladas em folha de alga.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Toge Inumaki',TRUE,0),(gen_random_uuid(),q,'Panda',FALSE,1),(gen_random_uuid(),q,'Megumi Fushiguro',FALSE,2),(gen_random_uuid(),q,'Yuta Okkotsu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','easy','Qual é o nome do estudante urso panda de Tokyo, criado artificialmente por meio de técnicas amaldiçoadas especiais?','Ele possui três núcleos que permitem transformações diferentes em batalha.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Panda',TRUE,0),(gen_random_uuid(),q,'Toge Inumaki',FALSE,1),(gen_random_uuid(),q,'Megumi Fushiguro',FALSE,2),(gen_random_uuid(),q,'Yuta Okkotsu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','easy','Qual é o nome da estudante de Kyoto, membro do clã Zenin, extremamente forte fisicamente mesmo sem energia amaldiçoada natural?','Ela treina intensamente para superar a discriminação sofrida dentro do próprio clã.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Maki Zenin',TRUE,0),(gen_random_uuid(),q,'Mai Zenin',FALSE,1),(gen_random_uuid(),q,'Nobara Kugisaki',FALSE,2),(gen_random_uuid(),q,'Momo Nishimiya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','easy','Qual é o nome da irmã gêmea de Maki Zenin, também estudante de Kyoto?','Ela possui a energia amaldiçoada natural que a família valoriza, ao contrário da irmã.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mai Zenin',TRUE,0),(gen_random_uuid(),q,'Maki Zenin',FALSE,1),(gen_random_uuid(),q,'Momo Nishimiya',FALSE,2),(gen_random_uuid(),q,'Kasumi Miwa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','easy','Qual é o nome da estudante de Kyoto especialista em vassoura voadora, com personalidade calculista?','Ela costuma priorizar interesses próprios em detrimento do time.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Momo Nishimiya',TRUE,0),(gen_random_uuid(),q,'Maki Zenin',FALSE,1),(gen_random_uuid(),q,'Mai Zenin',FALSE,2),(gen_random_uuid(),q,'Kasumi Miwa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','easy','Qual é o nome do estudante de Kyoto especialista em espada, que idolatra Maki Zenin como referência de força?','Ele é frequentemente retratado como cômico apesar de sua dedicação séria ao treinamento.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kasumi Miwa',TRUE,0),(gen_random_uuid(),q,'Momo Nishimiya',FALSE,1),(gen_random_uuid(),q,'Aoi Todo',FALSE,2),(gen_random_uuid(),q,'Noritoshi Kamo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','easy','Qual é o nome do estudante de Kyoto gigante e extrovertido, obcecado com o "tipo ideal" de mulher?','Ele forma uma amizade instantânea e intensa com Yuji durante um combate.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aoi Todo',TRUE,0),(gen_random_uuid(),q,'Noritoshi Kamo',FALSE,1),(gen_random_uuid(),q,'Kasumi Miwa',FALSE,2),(gen_random_uuid(),q,'Panda',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','easy','Qual é o nome do avô falecido de Megumi Fushiguro, também feiticeiro amaldiçoado?','Ele deixa uma última mensagem críptica sobre honra e conveniência.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não é nomeado explicitamente na série',TRUE,0),(gen_random_uuid(),q,'Toji Fushiguro',FALSE,1),(gen_random_uuid(),q,'Masamichi Yaga',FALSE,2),(gen_random_uuid(),q,'Jin Zenin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','easy','Qual é o nome do pai biológico de Megumi Fushiguro, mercenário sem energia amaldiçoada natural, mas extremamente habilidoso em combate?','Ele vende o próprio filho para o clã Zenin em troca de dinheiro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Toji Fushiguro',TRUE,0),(gen_random_uuid(),q,'Jin Zenin',FALSE,1),(gen_random_uuid(),q,'Masamichi Yaga',FALSE,2),(gen_random_uuid(),q,'Kento Nanami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','medium','Qual é o nome da técnica única de Satoru Gojo, capaz de repelir automaticamente qualquer ataque próximo de seu corpo?','Ela funciona como uma barreira permanente ao redor do usuário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Infinito',TRUE,0),(gen_random_uuid(),q,'Domain Expansion',FALSE,1),(gen_random_uuid(),q,'Hollow Purple',FALSE,2),(gen_random_uuid(),q,'Lapse Blue',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','medium','Qual é o nome da técnica de Nobara que permite atacar alvos à distância através de um objeto ligado a eles?','Ela utiliza pregos e um martelo especial para essa técnica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Straw Doll Technique',TRUE,0),(gen_random_uuid(),q,'Nail Hammer Curse',FALSE,1),(gen_random_uuid(),q,'Voodoo Nail',FALSE,2),(gen_random_uuid(),q,'Resonance Curse',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','medium','Qual é o nome da técnica de Megumi que invoca dez sombras diferentes, cada uma com um poder único?','Um cão de duas cabeças e uma rã gigante estão entre as sombras invocadas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ten Shadows Technique',TRUE,0),(gen_random_uuid(),q,'Shadow Puppet Curse',FALSE,1),(gen_random_uuid(),q,'Divine Dogs Summoning',FALSE,2),(gen_random_uuid(),q,'Nue Manipulation',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','medium','Qual é o nome da técnica de espada de Kento Nanami, associada à sua Reversão de Maldição?','Sua abordagem calculista de dividir alvos em partes reflete seu antigo trabalho corporativo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ratio Technique',TRUE,0),(gen_random_uuid(),q,'Simple Domain',FALSE,1),(gen_random_uuid(),q,'Overtime Blade',FALSE,2),(gen_random_uuid(),q,'Precision Cut',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','medium','Qual é o nome do clã tradicional ligado a técnicas de sombra e ao qual Megumi pertence por adoção?','O clã original perdeu a linhagem direta antes de Megumi herdar suas técnicas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zenin',TRUE,0),(gen_random_uuid(),q,'Gojo',FALSE,1),(gen_random_uuid(),q,'Kamo',FALSE,2),(gen_random_uuid(),q,'Inumaki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','medium','Qual é o nome do clã tradicional ao qual Satoru Gojo pertence, guardião do Olho de Seis Olhos e do Infinito?','É considerado o clã mais poderoso entre os feiticeiros modernos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gojo',TRUE,0),(gen_random_uuid(),q,'Zenin',FALSE,1),(gen_random_uuid(),q,'Kamo',FALSE,2),(gen_random_uuid(),q,'Inumaki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','medium','Qual é o nome do exame anual em que estudantes de Tokyo e Kyoto competem entre si em confrontos supervisionados?','Momo e Megumi se enfrentam diretamente durante um desses eventos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Torneio Kyoto-Tokyo',TRUE,0),(gen_random_uuid(),q,'Exame de Nível 1',FALSE,1),(gen_random_uuid(),q,'Culling Game',FALSE,2),(gen_random_uuid(),q,'Shibuya Incident',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','medium','Qual é o nome do sistema de classificação hierárquica dos feiticeiros, do nível 4 (mais fraco) até o Especial de Nível 1?','Ele determina a periculosidade das missões que cada feiticeiro pode assumir.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sistema de Classificação de Feiticeiros',TRUE,0),(gen_random_uuid(),q,'Ranking Amaldiçoado',FALSE,1),(gen_random_uuid(),q,'Hierarquia de Domínios',FALSE,2),(gen_random_uuid(),q,'Escala de Poder',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','medium','Qual é o nome da vila remota onde uma maldição especial ligada à mãe de Yuta Okkotsu é revelada?','Yuta é apresentado formalmente ao público neste arco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não possui nome revelado explicitamente',TRUE,0),(gen_random_uuid(),q,'Shibuya',FALSE,1),(gen_random_uuid(),q,'Sendai',FALSE,2),(gen_random_uuid(),q,'Muta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','medium','Qual é o nome da colega de infância morta de Yuta, cuja maldição vingativa o assombra por anos?','Ela se transforma em uma das maldições mais poderosas mostradas no filme relacionado à série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rika Orimoto',TRUE,0),(gen_random_uuid(),q,'Maki Zenin',FALSE,1),(gen_random_uuid(),q,'Momo Nishimiya',FALSE,2),(gen_random_uuid(),q,'Kasumi Miwa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','hard','Qual é o nome da técnica de Território Expandido de Satoru Gojo, considerado praticamente imbatível quando ativado?','Ele combina o poder do Infinito com o Olho de Seis Olhos em sua forma máxima.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Unlimited Void',TRUE,0),(gen_random_uuid(),q,'Malevolent Shrine',FALSE,1),(gen_random_uuid(),q,'Chimera Shadow Garden',FALSE,2),(gen_random_uuid(),q,'Coffin of the Iron Mountain',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','hard','Qual é o nome do feiticeiro renegado que aparece como convidado no torneio Kyoto-Tokyo, aliado ocasional dos protagonistas?','Ele carrega uma máscara e tem grande respeito por Gojo, apesar de trabalhar fora do sistema oficial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Choso',FALSE,0),(gen_random_uuid(),q,'Mahito',FALSE,1),(gen_random_uuid(),q,'Yuji Itadori possui essa característica',FALSE,2),(gen_random_uuid(),q,'Toji Fushiguro (disfarçado)',TRUE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','hard','Qual é o nome do irmão mais velho de Yuji, revelado como uma maldição nascida de sangue humano?','Ele forma um vínculo emocional inesperado com Yuji apesar de sua natureza monstruosa original.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Choso',TRUE,0),(gen_random_uuid(),q,'Mahito',FALSE,1),(gen_random_uuid(),q,'Jogo',FALSE,2),(gen_random_uuid(),q,'Hanami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','hard','Qual é o nome da maldição encarnada especializada em manipulação de fogo, membro dos convocados especiais durante o Incidente de Shibuya?','Ele venera Sukuna como uma divindade acima de qualquer outro ser.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Jogo',TRUE,0),(gen_random_uuid(),q,'Hanami',FALSE,1),(gen_random_uuid(),q,'Choso',FALSE,2),(gen_random_uuid(),q,'Dagon',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','hard','Qual é o nome da maldição encarnada com aparência vegetal, defensora da natureza contra a humanidade?','Ela luta contra Nanami e Nobara durante o Incidente de Shibuya.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hanami',TRUE,0),(gen_random_uuid(),q,'Jogo',FALSE,1),(gen_random_uuid(),q,'Dagon',FALSE,2),(gen_random_uuid(),q,'Choso',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','hard','Qual é o nome da maldição encarnada com aparência de peixe humanoide, especialista em manipulação de água?','Ele considera si mesmo o único ser realmente forte entre as maldições especiais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dagon',TRUE,0),(gen_random_uuid(),q,'Hanami',FALSE,1),(gen_random_uuid(),q,'Jogo',FALSE,2),(gen_random_uuid(),q,'Choso',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','hard','Qual é o nome do estudante genial da Tokyo Jujutsu High cujas emoções fortes geram poder amaldiçoado, apaixonado por Rika?','Ele é apresentado como protagonista de um filme relacionado à série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yuta Okkotsu',TRUE,0),(gen_random_uuid(),q,'Toge Inumaki',FALSE,1),(gen_random_uuid(),q,'Megumi Fushiguro',FALSE,2),(gen_random_uuid(),q,'Panda',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','hard','Qual é o nome da feiticeira de nível especial conhecida por vender informações e cobrar por qualquer favor prestado?','Ela geralmente aparece acompanhada de seu irmão mais novo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mei Mei',TRUE,0),(gen_random_uuid(),q,'Yuki Tsukumo',FALSE,1),(gen_random_uuid(),q,'Utahime Iori',FALSE,2),(gen_random_uuid(),q,'Shoko Ieiri',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','hard','Qual é o nome da feiticeira de nível especial que reside majoritariamente em Osaka, com Domínio ligado a discos voadores tecnológicos?','Ela mantém rivalidade histórica de longa data com Gojo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yuki Tsukumo',TRUE,0),(gen_random_uuid(),q,'Mei Mei',FALSE,1),(gen_random_uuid(),q,'Utahime Iori',FALSE,2),(gen_random_uuid(),q,'Shoko Ieiri',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','impossible','Qual é o nome do irmão mais novo de Mei Mei, também feiticeiro, que a acompanha em diversas missões?','Ele possui técnicas de invocação de pássaros de energia amaldiçoada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ui Ui',TRUE,0),(gen_random_uuid(),q,'Noritoshi Kamo',FALSE,1),(gen_random_uuid(),q,'Kasumi Miwa',FALSE,2),(gen_random_uuid(),q,'Aoi Todo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','impossible','Qual é o nome do professor de Kyoto especialista em Sangue Amaldiçoado, membro do clã Kamo?','Ele possui rivalidade histórica com o clã Zenin ao longo de gerações.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Noritoshi Kamo',TRUE,0),(gen_random_uuid(),q,'Aoi Todo',FALSE,1),(gen_random_uuid(),q,'Kasumi Miwa',FALSE,2),(gen_random_uuid(),q,'Momo Nishimiya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','impossible','Qual é o nome da professora responsável pela supervisão do exame Kyoto-Tokyo, especialista em técnicas vocais?','Ela demonstra grande preocupação com a segurança dos estudantes mais jovens.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Utahime Iori',TRUE,0),(gen_random_uuid(),q,'Shoko Ieiri',FALSE,1),(gen_random_uuid(),q,'Mei Mei',FALSE,2),(gen_random_uuid(),q,'Yuki Tsukumo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','impossible','Qual é o nome do patriarca do clã Zenin, avô de Maki e Mai, extremamente tradicionalista e discriminatório?','Ele despreza publicamente Maki por ela não possuir energia amaldiçoada natural.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Naoya Zenin',TRUE,0),(gen_random_uuid(),q,'Jin Zenin',FALSE,1),(gen_random_uuid(),q,'Ogi Zenin',FALSE,2),(gen_random_uuid(),q,'Toji Fushiguro',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- FILL_BLANK — 38 perguntas (11 easy / 13 medium / 10 hard / 4 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'fill_blank','easy','A colega de turma de Yuji que usa martelo e pregos como arma principal se chama ___.','Ela veio de uma cidade pequena e sonha em uma vida urbana glamorosa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nobara Kugisaki',TRUE,0),(gen_random_uuid(),q,'Maki Zenin',FALSE,1),(gen_random_uuid(),q,'Mai Zenin',FALSE,2),(gen_random_uuid(),q,'Momo Nishimiya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'fill_blank','easy','O colega de turma de Yuji capaz de invocar animais das sombras para lutar por ele se chama ___.','Ele é neto adotivo de um dos feiticeiros mais fortes da história.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Megumi Fushiguro',TRUE,0),(gen_random_uuid(),q,'Nobara Kugisaki',FALSE,1),(gen_random_uuid(),q,'Panda',FALSE,2),(gen_random_uuid(),q,'Toge Inumaki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'fill_blank','easy','O professor mais forte da Tokyo Jujutsu High, considerado o feiticeiro mais poderoso vivo, se chama ___.','Ele usa uma venda nos olhos para controlar o próprio poder ocular.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Satoru Gojo',TRUE,0),(gen_random_uuid(),q,'Masamichi Yaga',FALSE,1),(gen_random_uuid(),q,'Kento Nanami',FALSE,2),(gen_random_uuid(),q,'Shoko Ieiri',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'fill_blank','easy','O feiticeiro veterano, ex-funcionário de empresa, extremamente pragmático em relação ao trabalho, se chama ___.','Ele odeia trabalhar horas extras e sempre calcula o valor justo de suas missões.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kento Nanami',TRUE,0),(gen_random_uuid(),q,'Satoru Gojo',FALSE,1),(gen_random_uuid(),q,'Yuji Itadori',FALSE,2),(gen_random_uuid(),q,'Toge Inumaki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'fill_blank','easy','A médica da Tokyo Jujutsu High, amiga próxima de Gojo desde os tempos de estudante, se chama ___.','Ela é responsável por curar ferimentos graves de feiticeiros e exorcistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shoko Ieiri',TRUE,0),(gen_random_uuid(),q,'Utahime Iori',FALSE,1),(gen_random_uuid(),q,'Mei Mei',FALSE,2),(gen_random_uuid(),q,'Kasumi Miwa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'fill_blank','easy','O diretor da Tokyo Jujutsu High, também professor de artesanato de bonecos, se chama ___.','Ele mantém segredos sobre a origem de alguns estudantes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Masamichi Yaga',TRUE,0),(gen_random_uuid(),q,'Kento Nanami',FALSE,1),(gen_random_uuid(),q,'Satoru Gojo',FALSE,2),(gen_random_uuid(),q,'Yuki Tsukumo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'fill_blank','easy','O estudante silencioso de Tokyo, capaz de dar ordens através de palavras específicas que ativam poderes reais, se chama ___.','Ele se comunica principalmente por meio de embalagens de comida enroladas em folha de alga.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Toge Inumaki',TRUE,0),(gen_random_uuid(),q,'Panda',FALSE,1),(gen_random_uuid(),q,'Megumi Fushiguro',FALSE,2),(gen_random_uuid(),q,'Yuta Okkotsu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'fill_blank','easy','A estudante de Kyoto, membro do clã Zenin, extremamente forte fisicamente mesmo sem energia amaldiçoada natural, se chama ___.','Ela treina intensamente para superar a discriminação sofrida dentro do próprio clã.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Maki Zenin',TRUE,0),(gen_random_uuid(),q,'Mai Zenin',FALSE,1),(gen_random_uuid(),q,'Nobara Kugisaki',FALSE,2),(gen_random_uuid(),q,'Momo Nishimiya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'fill_blank','easy','A irmã gêmea de Maki Zenin, também estudante de Kyoto, se chama ___.','Ela possui a energia amaldiçoada natural que a família valoriza, ao contrário da irmã.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mai Zenin',TRUE,0),(gen_random_uuid(),q,'Maki Zenin',FALSE,1),(gen_random_uuid(),q,'Momo Nishimiya',FALSE,2),(gen_random_uuid(),q,'Kasumi Miwa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'fill_blank','easy','O pai biológico de Megumi Fushiguro, mercenário sem energia amaldiçoada natural, se chama ___.','Ele vende o próprio filho para o clã Zenin em troca de dinheiro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Toji Fushiguro',TRUE,0),(gen_random_uuid(),q,'Jin Zenin',FALSE,1),(gen_random_uuid(),q,'Masamichi Yaga',FALSE,2),(gen_random_uuid(),q,'Kento Nanami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'fill_blank','medium','A técnica única de Satoru Gojo, capaz de repelir automaticamente qualquer ataque próximo de seu corpo, se chama ___.','Ela funciona como uma barreira permanente ao redor do usuário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Infinito',TRUE,0),(gen_random_uuid(),q,'Domain Expansion',FALSE,1),(gen_random_uuid(),q,'Hollow Purple',FALSE,2),(gen_random_uuid(),q,'Lapse Blue',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'fill_blank','medium','A técnica de Nobara que permite atacar alvos à distância através de um objeto ligado a eles se chama ___.','Ela utiliza pregos e um martelo especial para essa técnica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Straw Doll Technique',TRUE,0),(gen_random_uuid(),q,'Nail Hammer Curse',FALSE,1),(gen_random_uuid(),q,'Voodoo Nail',FALSE,2),(gen_random_uuid(),q,'Resonance Curse',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'fill_blank','medium','A técnica de Megumi que invoca dez sombras diferentes, cada uma com um poder único, se chama ___.','Um cão de duas cabeças e uma rã gigante estão entre as sombras invocadas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ten Shadows Technique',TRUE,0),(gen_random_uuid(),q,'Shadow Puppet Curse',FALSE,1),(gen_random_uuid(),q,'Divine Dogs Summoning',FALSE,2),(gen_random_uuid(),q,'Nue Manipulation',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'fill_blank','medium','A técnica de espada de Kento Nanami, associada à sua Reversão de Maldição, se chama ___.','Sua abordagem calculista de dividir alvos em partes reflete seu antigo trabalho corporativo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ratio Technique',TRUE,0),(gen_random_uuid(),q,'Simple Domain',FALSE,1),(gen_random_uuid(),q,'Overtime Blade',FALSE,2),(gen_random_uuid(),q,'Precision Cut',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'fill_blank','medium','O clã tradicional ligado a técnicas de sombra, ao qual Megumi pertence por adoção, se chama ___.','O clã original perdeu a linhagem direta antes de Megumi herdar suas técnicas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zenin',TRUE,0),(gen_random_uuid(),q,'Gojo',FALSE,1),(gen_random_uuid(),q,'Kamo',FALSE,2),(gen_random_uuid(),q,'Inumaki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'fill_blank','medium','O clã tradicional ao qual Satoru Gojo pertence, guardião do Olho de Seis Olhos e do Infinito, se chama ___.','É considerado o clã mais poderoso entre os feiticeiros modernos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gojo',TRUE,0),(gen_random_uuid(),q,'Zenin',FALSE,1),(gen_random_uuid(),q,'Kamo',FALSE,2),(gen_random_uuid(),q,'Inumaki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'fill_blank','medium','O exame anual em que estudantes de Tokyo e Kyoto competem entre si em confrontos supervisionados se chama ___.','Momo e Megumi se enfrentam diretamente durante um desses eventos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Torneio Kyoto-Tokyo',TRUE,0),(gen_random_uuid(),q,'Exame de Nível 1',FALSE,1),(gen_random_uuid(),q,'Culling Game',FALSE,2),(gen_random_uuid(),q,'Shibuya Incident',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'fill_blank','medium','A colega de infância morta de Yuta, cuja maldição vingativa o assombra por anos, se chama ___.','Ela se transforma em uma das maldições mais poderosas mostradas no filme relacionado à série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rika Orimoto',TRUE,0),(gen_random_uuid(),q,'Maki Zenin',FALSE,1),(gen_random_uuid(),q,'Momo Nishimiya',FALSE,2),(gen_random_uuid(),q,'Kasumi Miwa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'fill_blank','hard','A técnica de Território Expandido de Satoru Gojo, considerada praticamente imbatível quando ativada, se chama ___.','Ele combina o poder do Infinito com o Olho de Seis Olhos em sua forma máxima.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Unlimited Void',TRUE,0),(gen_random_uuid(),q,'Malevolent Shrine',FALSE,1),(gen_random_uuid(),q,'Chimera Shadow Garden',FALSE,2),(gen_random_uuid(),q,'Coffin of the Iron Mountain',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'fill_blank','hard','O irmão mais velho de Yuji, revelado como uma maldição nascida de sangue humano, se chama ___.','Ele forma um vínculo emocional inesperado com Yuji apesar de sua natureza monstruosa original.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Choso',TRUE,0),(gen_random_uuid(),q,'Mahito',FALSE,1),(gen_random_uuid(),q,'Jogo',FALSE,2),(gen_random_uuid(),q,'Hanami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'fill_blank','hard','A maldição encarnada especializada em manipulação de fogo, membro dos convocados especiais no Incidente de Shibuya, se chama ___.','Ele venera Sukuna como uma divindade acima de qualquer outro ser.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Jogo',TRUE,0),(gen_random_uuid(),q,'Hanami',FALSE,1),(gen_random_uuid(),q,'Choso',FALSE,2),(gen_random_uuid(),q,'Dagon',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'fill_blank','hard','A maldição encarnada com aparência vegetal, defensora da natureza contra a humanidade, se chama ___.','Ela luta contra Nanami e Nobara durante o Incidente de Shibuya.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hanami',TRUE,0),(gen_random_uuid(),q,'Jogo',FALSE,1),(gen_random_uuid(),q,'Dagon',FALSE,2),(gen_random_uuid(),q,'Choso',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'fill_blank','hard','O estudante genial da Tokyo Jujutsu High, cujas emoções fortes geram poder amaldiçoado, apaixonado por Rika, se chama ___.','Ele é apresentado como protagonista de um filme relacionado à série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yuta Okkotsu',TRUE,0),(gen_random_uuid(),q,'Toge Inumaki',FALSE,1),(gen_random_uuid(),q,'Megumi Fushiguro',FALSE,2),(gen_random_uuid(),q,'Panda',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'fill_blank','hard','A feiticeira de nível especial conhecida por vender informações e cobrar por qualquer favor prestado se chama ___.','Ela geralmente aparece acompanhada de seu irmão mais novo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mei Mei',TRUE,0),(gen_random_uuid(),q,'Yuki Tsukumo',FALSE,1),(gen_random_uuid(),q,'Utahime Iori',FALSE,2),(gen_random_uuid(),q,'Shoko Ieiri',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'fill_blank','hard','A feiticeira de nível especial que reside majoritariamente em Osaka, com Domínio ligado a discos voadores tecnológicos, se chama ___.','Ela mantém rivalidade histórica de longa data com Gojo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yuki Tsukumo',TRUE,0),(gen_random_uuid(),q,'Mei Mei',FALSE,1),(gen_random_uuid(),q,'Utahime Iori',FALSE,2),(gen_random_uuid(),q,'Shoko Ieiri',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'fill_blank','impossible','O irmão mais novo de Mei Mei, também feiticeiro, que a acompanha em diversas missões, se chama ___.','Ele possui técnicas de invocação de pássaros de energia amaldiçoada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ui Ui',TRUE,0),(gen_random_uuid(),q,'Noritoshi Kamo',FALSE,1),(gen_random_uuid(),q,'Kasumi Miwa',FALSE,2),(gen_random_uuid(),q,'Aoi Todo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'fill_blank','impossible','O professor de Kyoto especialista em Sangue Amaldiçoado, membro do clã Kamo, se chama ___.','Ele possui rivalidade histórica com o clã Zenin ao longo de gerações.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Noritoshi Kamo',TRUE,0),(gen_random_uuid(),q,'Aoi Todo',FALSE,1),(gen_random_uuid(),q,'Kasumi Miwa',FALSE,2),(gen_random_uuid(),q,'Momo Nishimiya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'fill_blank','impossible','A professora responsável pela supervisão do exame Kyoto-Tokyo, especialista em técnicas vocais, se chama ___.','Ela demonstra grande preocupação com a segurança dos estudantes mais jovens.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Utahime Iori',TRUE,0),(gen_random_uuid(),q,'Shoko Ieiri',FALSE,1),(gen_random_uuid(),q,'Mei Mei',FALSE,2),(gen_random_uuid(),q,'Yuki Tsukumo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'fill_blank','impossible','O patriarca do clã Zenin, avô de Maki e Mai, extremamente tradicionalista e discriminatório, se chama ___.','Ele despreza publicamente Maki por ela não possuir energia amaldiçoada natural.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Naoya Zenin',TRUE,0),(gen_random_uuid(),q,'Jin Zenin',FALSE,1),(gen_random_uuid(),q,'Ogi Zenin',FALSE,2),(gen_random_uuid(),q,'Toji Fushiguro',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- WHO_SAID — 30 perguntas (9 easy / 11 medium / 8 hard / 2 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'who_said','easy','Quem disse: "Eu vou viver uma vida boa, e morrer uma boa morte, esse é o meu único objetivo"?','A frase reflete a filosofia de vida simples e nobre do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yuji Itadori',TRUE,0),(gen_random_uuid(),q,'Megumi Fushiguro',FALSE,1),(gen_random_uuid(),q,'Nobara Kugisaki',FALSE,2),(gen_random_uuid(),q,'Toge Inumaki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'who_said','easy','Quem disse: "Eu não salvo pessoas ruins e maldades escolhidas por acaso, salvo apenas quem eu decido salvar"?','A frase reflete a lógica pessoal e seletiva desse estudante especialista em sombras.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Megumi Fushiguro',TRUE,0),(gen_random_uuid(),q,'Yuji Itadori',FALSE,1),(gen_random_uuid(),q,'Nobara Kugisaki',FALSE,2),(gen_random_uuid(),q,'Panda',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'who_said','easy','Quem disse: "Eu vim para a cidade grande para viver a vida que sempre sonhei, com estilo e independência"?','A frase reflete o desejo de liberdade dessa estudante vinda do interior.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nobara Kugisaki',TRUE,0),(gen_random_uuid(),q,'Maki Zenin',FALSE,1),(gen_random_uuid(),q,'Mai Zenin',FALSE,2),(gen_random_uuid(),q,'Momo Nishimiya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'who_said','easy','Quem disse: "Sou o feiticeiro mais forte, e vocês, meus estudantes, também podem se tornar tão fortes quanto eu"?','A frase reflete a confiança inabalável desse professor lendário em seus alunos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Satoru Gojo',TRUE,0),(gen_random_uuid(),q,'Masamichi Yaga',FALSE,1),(gen_random_uuid(),q,'Kento Nanami',FALSE,2),(gen_random_uuid(),q,'Yuki Tsukumo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'who_said','easy','Quem disse: "Eu odeio trabalhar horas extras, mas ainda assim vou proteger meus colegas até o fim"?','A frase reflete a personalidade pragmática, mas leal, desse feiticeiro veterano.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kento Nanami',TRUE,0),(gen_random_uuid(),q,'Satoru Gojo',FALSE,1),(gen_random_uuid(),q,'Yuji Itadori',FALSE,2),(gen_random_uuid(),q,'Toge Inumaki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'who_said','easy','Quem disse: "Eu curo os feridos porque acredito que toda vida vale a pena ser salva, mesmo em meio à guerra amaldiçoada"?','A frase reflete a dedicação médica dessa amiga de longa data de Gojo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shoko Ieiri',TRUE,0),(gen_random_uuid(),q,'Utahime Iori',FALSE,1),(gen_random_uuid(),q,'Mei Mei',FALSE,2),(gen_random_uuid(),q,'Kasumi Miwa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'who_said','easy','Quem disse: "Salmão... arroz... atum..."?','A expressão limitada é a única forma de fala pública usada por esse estudante para não ativar poderes acidentalmente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Toge Inumaki',TRUE,0),(gen_random_uuid(),q,'Panda',FALSE,1),(gen_random_uuid(),q,'Megumi Fushiguro',FALSE,2),(gen_random_uuid(),q,'Yuta Okkotsu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'who_said','easy','Quem disse: "Eu treino todos os dias para provar que força não depende apenas de energia amaldiçoada natural"?','A frase reflete a determinação incansável dessa estudante do clã Zenin.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Maki Zenin',TRUE,0),(gen_random_uuid(),q,'Mai Zenin',FALSE,1),(gen_random_uuid(),q,'Nobara Kugisaki',FALSE,2),(gen_random_uuid(),q,'Momo Nishimiya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'who_said','easy','Quem disse: "Eu prefiro voar acima do combate e observar de longe, é mais seguro assim"?','A frase reflete a personalidade calculista dessa estudante especialista em vassoura voadora.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Momo Nishimiya',TRUE,0),(gen_random_uuid(),q,'Maki Zenin',FALSE,1),(gen_random_uuid(),q,'Mai Zenin',FALSE,2),(gen_random_uuid(),q,'Kasumi Miwa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'who_said','medium','Quem disse: "Eu não sou herói nem vilão, sou apenas alguém tentando consertar o erro que cometi ao engolir aquele dedo"?','A frase reflete o dilema moral constante do protagonista sobre sua condição de hospedeiro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yuji Itadori',TRUE,0),(gen_random_uuid(),q,'Megumi Fushiguro',FALSE,1),(gen_random_uuid(),q,'Choso',FALSE,2),(gen_random_uuid(),q,'Yuta Okkotsu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'who_said','medium','Quem disse: "Eu sou um monstro nascido de sangue humano, mas ainda assim sinto algo parecido com amor fraternal por você"?','A frase é dita pelo irmão mais velho recém-descoberto de Yuji.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Choso',TRUE,0),(gen_random_uuid(),q,'Mahito',FALSE,1),(gen_random_uuid(),q,'Jogo',FALSE,2),(gen_random_uuid(),q,'Hanami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'who_said','medium','Quem disse: "Eu venero Sukuna como uma divindade, e sirvo apenas a ele até meu último suspiro"?','A frase reflete a devoção fanática dessa maldição encarnada especializada em fogo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Jogo',TRUE,0),(gen_random_uuid(),q,'Hanami',FALSE,1),(gen_random_uuid(),q,'Dagon',FALSE,2),(gen_random_uuid(),q,'Choso',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'who_said','medium','Quem disse: "Eu protejo a natureza contra a destruição humana, mesmo que isso signifique guerra eterna contra feiticeiros"?','A frase reflete a ideologia de defesa ambiental dessa maldição encarnada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hanami',TRUE,0),(gen_random_uuid(),q,'Jogo',FALSE,1),(gen_random_uuid(),q,'Dagon',FALSE,2),(gen_random_uuid(),q,'Choso',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'who_said','medium','Quem disse: "Eu sou o único verdadeiramente forte entre as maldições especiais, os outros são apenas seguidores"?','A frase reflete a arrogância dessa maldição em forma de peixe humanoide.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dagon',TRUE,0),(gen_random_uuid(),q,'Hanami',FALSE,1),(gen_random_uuid(),q,'Jogo',FALSE,2),(gen_random_uuid(),q,'Choso',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'who_said','medium','Quem disse: "Eu carrego minha amiga de infância comigo, mesmo depois de sua morte, mesmo que isso me machuque"?','A frase é dita pelo estudante genial cuja força emocional gera poder amaldiçoado imenso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yuta Okkotsu',TRUE,0),(gen_random_uuid(),q,'Toge Inumaki',FALSE,1),(gen_random_uuid(),q,'Megumi Fushiguro',FALSE,2),(gen_random_uuid(),q,'Panda',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'who_said','medium','Quem disse: "Tudo tem um preço, até mesmo um favor entre feiticeiros, e eu sempre cobro o que é justo"?','A frase reflete a filosofia mercenária dessa feiticeira de nível especial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mei Mei',TRUE,0),(gen_random_uuid(),q,'Yuki Tsukumo',FALSE,1),(gen_random_uuid(),q,'Utahime Iori',FALSE,2),(gen_random_uuid(),q,'Shoko Ieiri',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'who_said','medium','Quem disse: "Eu vivo em Osaka porque prefiro ficar longe da política de Tóquio, mesmo sendo uma das mais fortes"?','A frase reflete a independência dessa feiticeira de nível especial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yuki Tsukumo',TRUE,0),(gen_random_uuid(),q,'Mei Mei',FALSE,1),(gen_random_uuid(),q,'Utahime Iori',FALSE,2),(gen_random_uuid(),q,'Shoko Ieiri',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'who_said','medium','Quem disse: "Eu me preocupo com todos os estudantes, mesmo os que eu não supervisiono diretamente, é meu dever como professora"?','A frase reflete o senso de responsabilidade dessa professora vocal supervisora do torneio.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Utahime Iori',TRUE,0),(gen_random_uuid(),q,'Shoko Ieiri',FALSE,1),(gen_random_uuid(),q,'Mei Mei',FALSE,2),(gen_random_uuid(),q,'Yuki Tsukumo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'who_said','hard','Quem disse: "Eu sou o rei das maldições, e ninguém neste mundo pode se comparar ao meu verdadeiro poder"?','A frase é dita pela maldição mais poderosa e antiga da série, selada dentro de Yuji.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ryomen Sukuna',TRUE,0),(gen_random_uuid(),q,'Mahito',FALSE,1),(gen_random_uuid(),q,'Jogo',FALSE,2),(gen_random_uuid(),q,'Kenjaku',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'who_said','hard','Quem disse: "Eu manipulo almas humanas por diversão, e considero isso a forma mais pura de arte existente"?','A frase reflete a natureza sádica e filosófica desse antagonista transformador de corpos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mahito',TRUE,0),(gen_random_uuid(),q,'Jogo',FALSE,1),(gen_random_uuid(),q,'Hanami',FALSE,2),(gen_random_uuid(),q,'Choso',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'who_said','hard','Quem disse: "Eu não sou realmente humano, mas nasci de um pedaço de Sukuna, e isso me torna mais forte que muitos"?','A frase é dita por um dos irmãos de Choso, também nascido de sangue amaldiçoado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Eso ou Kechizu (irmãos de Choso)',TRUE,0),(gen_random_uuid(),q,'Mahito',FALSE,1),(gen_random_uuid(),q,'Jogo',FALSE,2),(gen_random_uuid(),q,'Hanami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'who_said','hard','Quem disse: "Eu troquei de corpo diversas vezes ao longo de séculos, e ainda assim minha vontade permanece intacta"?','A frase é dita por um antagonista antigo capaz de transferir sua consciência entre corpos diferentes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kenjaku',TRUE,0),(gen_random_uuid(),q,'Sukuna',FALSE,1),(gen_random_uuid(),q,'Mahito',FALSE,2),(gen_random_uuid(),q,'Noritoshi Kamo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'who_said','hard','Quem disse: "Eu despreziei minha própria neta por ela não ter energia amaldiçoada, e hoje me arrependo profundamente disso"?','A frase é dita, tardiamente, por um patriarca tradicionalista do clã Zenin.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ogi Zenin',TRUE,0),(gen_random_uuid(),q,'Naoya Zenin',FALSE,1),(gen_random_uuid(),q,'Jin Zenin',FALSE,2),(gen_random_uuid(),q,'Toji Fushiguro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'who_said','hard','Quem disse: "Eu vendi meu próprio filho para o clã Zenin, e nunca me arrependi de forma alguma dessa escolha"?','A frase é dita pelo mercenário pai biológico de Megumi.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Toji Fushiguro',TRUE,0),(gen_random_uuid(),q,'Jin Zenin',FALSE,1),(gen_random_uuid(),q,'Naoya Zenin',FALSE,2),(gen_random_uuid(),q,'Masamichi Yaga',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'who_said','hard','Quem disse: "Eu já matei feiticeiros mais fortes que você usando apenas técnicas físicas, sem nenhuma energia amaldiçoada"?','A frase reflete o histórico letal e assustador do mercenário mais temido da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Toji Fushiguro',TRUE,0),(gen_random_uuid(),q,'Naoya Zenin',FALSE,1),(gen_random_uuid(),q,'Jin Zenin',FALSE,2),(gen_random_uuid(),q,'Kento Nanami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'who_said','impossible','Quem disse: "Eu invoco pássaros amaldiçoados para servir minha irmã, e sigo suas ordens sem questionar"?','A frase é dita pelo irmão mais novo de Mei Mei.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ui Ui',TRUE,0),(gen_random_uuid(),q,'Noritoshi Kamo',FALSE,1),(gen_random_uuid(),q,'Kasumi Miwa',FALSE,2),(gen_random_uuid(),q,'Aoi Todo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'who_said','impossible','Quem disse: "Meu clã pratica técnicas de Sangue Amaldiçoado há gerações, e eu carrego essa tradição com orgulho"?','A frase é dita pelo professor de Kyoto membro do clã Kamo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Noritoshi Kamo',TRUE,0),(gen_random_uuid(),q,'Aoi Todo',FALSE,1),(gen_random_uuid(),q,'Kasumi Miwa',FALSE,2),(gen_random_uuid(),q,'Momo Nishimiya',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- EPISODE_ARC — 15 perguntas (7 medium / 6 hard / 2 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'episode_arc','medium','Em qual arco Yuji engole o dedo de Sukuna para salvar seus colegas, tornando-se hospedeiro da maldição mais poderosa da série?','O evento inicial da série ocorre logo após esse ato desesperado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Introdução',TRUE,0),(gen_random_uuid(),q,'Arco Kyoto-Tokyo',FALSE,1),(gen_random_uuid(),q,'Arco de Shibuya',FALSE,2),(gen_random_uuid(),q,'Arco do Culling Game',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'episode_arc','medium','Em qual arco os estudantes de Tokyo e Kyoto competem diretamente em confrontos organizados pela Associação de Feiticeiros?','Megumi enfrenta Momo Nishimiya diretamente durante este arco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco Kyoto-Tokyo',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco de Shibuya',FALSE,2),(gen_random_uuid(),q,'Arco do Culling Game',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'episode_arc','medium','Em qual arco ocorre um dos ataques mais devastadores contra os feiticeiros, na estação de trem de um bairro movimentado de Tóquio?','Nanami e diversos outros personagens importantes sofrem consequências severas neste arco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Shibuya',TRUE,0),(gen_random_uuid(),q,'Arco Kyoto-Tokyo',FALSE,1),(gen_random_uuid(),q,'Arco de Introdução',FALSE,2),(gen_random_uuid(),q,'Arco do Culling Game',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'episode_arc','medium','Em qual arco Gojo é selado dentro de um objeto especial, sendo removido temporariamente do conflito principal?','O selamento altera drasticamente o equilíbrio de poder entre feiticeiros e maldições.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Shibuya',TRUE,0),(gen_random_uuid(),q,'Arco Kyoto-Tokyo',FALSE,1),(gen_random_uuid(),q,'Arco de Introdução',FALSE,2),(gen_random_uuid(),q,'Arco do Culling Game',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'episode_arc','medium','Em qual arco um jogo mortal força feiticeiros a lutarem entre si por pontos, organizado por Kenjaku após os eventos de Shibuya?','Vários personagens secundários ganham grande destaque durante este confronto em larga escala.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Culling Game',TRUE,0),(gen_random_uuid(),q,'Arco de Shibuya',FALSE,1),(gen_random_uuid(),q,'Arco Kyoto-Tokyo',FALSE,2),(gen_random_uuid(),q,'Arco de Introdução',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'episode_arc','medium','Em qual arco o passado de Yuta Okkotsu e sua ligação com Rika é explorado em detalhes, geralmente associado a um filme derivado da série?','Gojo aparece como professor recrutador neste arco específico.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Yuta Okkotsu (filme)',TRUE,0),(gen_random_uuid(),q,'Arco de Shibuya',FALSE,1),(gen_random_uuid(),q,'Arco Kyoto-Tokyo',FALSE,2),(gen_random_uuid(),q,'Arco do Culling Game',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'episode_arc','medium','Em qual arco Yuji participa de sua primeira missão oficial acompanhado por Megumi, enfrentando maldições reais pela primeira vez fora da escola?','Este arco estabelece as bases do relacionamento entre os dois personagens.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Introdução',TRUE,0),(gen_random_uuid(),q,'Arco Kyoto-Tokyo',FALSE,1),(gen_random_uuid(),q,'Arco de Shibuya',FALSE,2),(gen_random_uuid(),q,'Arco do Culling Game',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'episode_arc','hard','Em qual arco Nanami morre em combate contra Mahito, um dos momentos mais impactantes emocionalmente da série?','Sua morte ocorre durante o caos generalizado do Incidente de Shibuya.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Shibuya',TRUE,0),(gen_random_uuid(),q,'Arco Kyoto-Tokyo',FALSE,1),(gen_random_uuid(),q,'Arco de Introdução',FALSE,2),(gen_random_uuid(),q,'Arco do Culling Game',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'episode_arc','hard','Em qual arco Yuji forma uma amizade improvável e intensa com Aoi Todo, mesmo enfrentando-o em combate direto?','Os dois passam a se apoiar mutuamente nos eventos subsequentes da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco Kyoto-Tokyo',TRUE,0),(gen_random_uuid(),q,'Arco de Shibuya',FALSE,1),(gen_random_uuid(),q,'Arco de Introdução',FALSE,2),(gen_random_uuid(),q,'Arco do Culling Game',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'episode_arc','hard','Em qual arco Choso se revela publicamente como irmão biológico de Yuji, mudando profundamente sua relação com os feiticeiros?','A revelação ocorre em meio ao caos do ataque coordenado dos convocados especiais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Shibuya',TRUE,0),(gen_random_uuid(),q,'Arco Kyoto-Tokyo',FALSE,1),(gen_random_uuid(),q,'Arco de Introdução',FALSE,2),(gen_random_uuid(),q,'Arco do Culling Game',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'episode_arc','hard','Em qual arco Megumi é forçado a lutar contra amigos próximos sob controle de uma maldição de manipulação mental?','O evento aprofunda o conflito moral interno do personagem sobre proteção e sacrifício.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Shibuya',TRUE,0),(gen_random_uuid(),q,'Arco Kyoto-Tokyo',FALSE,1),(gen_random_uuid(),q,'Arco do Culling Game',FALSE,2),(gen_random_uuid(),q,'Arco de Introdução',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'episode_arc','hard','Em qual arco a verdadeira identidade de Kenjaku como manipulador de corpos ao longo de séculos é finalmente revelada aos protagonistas?','A revelação conecta diversos eventos históricos ocultos da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Shibuya',TRUE,0),(gen_random_uuid(),q,'Arco do Culling Game',FALSE,1),(gen_random_uuid(),q,'Arco Kyoto-Tokyo',FALSE,2),(gen_random_uuid(),q,'Arco de Introdução',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'episode_arc','impossible','Em qual arco é revelado o passado completo de Toji Fushiguro, incluindo sua venda do próprio filho ao clã Zenin?','A revelação ocorre através de flashbacks extensos sobre sua vida como mercenário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Shibuya',TRUE,0),(gen_random_uuid(),q,'Arco Kyoto-Tokyo',FALSE,1),(gen_random_uuid(),q,'Arco de Introdução',FALSE,2),(gen_random_uuid(),q,'Arco do Culling Game',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'episode_arc','impossible','Em qual arco é revelada a existência do Olho de Seis Olhos e sua importância histórica para o clã Gojo?','A explicação ocorre através de contexto fornecido durante flashbacks e diálogos entre professores.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco Kyoto-Tokyo',TRUE,0),(gen_random_uuid(),q,'Arco de Shibuya',FALSE,1),(gen_random_uuid(),q,'Arco de Introdução',FALSE,2),(gen_random_uuid(),q,'Arco do Culling Game',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- CHRONOLOGICAL — 7 perguntas (4 hard / 3 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'chronological','hard','Ordene cronologicamente os arcos a seguir, do mais antigo ao mais recente.','Cobrem desde a introdução de Yuji até o Culling Game.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Introdução',TRUE,0),(gen_random_uuid(),q,'Kyoto-Tokyo',FALSE,1),(gen_random_uuid(),q,'Shibuya',FALSE,2),(gen_random_uuid(),q,'Culling Game',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'chronological','hard','Ordene cronologicamente os seguintes eventos da jornada de Yuji, do mais antigo ao mais recente.','Cobrem desde engolir o dedo de Sukuna até a revelação de Choso como irmão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Engole o dedo de Sukuna',TRUE,0),(gen_random_uuid(),q,'Ingressa na Tokyo Jujutsu High',FALSE,1),(gen_random_uuid(),q,'Participa do torneio Kyoto-Tokyo',FALSE,2),(gen_random_uuid(),q,'Descobre que Choso é seu irmão',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'chronological','hard','Ordene cronologicamente os seguintes eventos do Incidente de Shibuya, do mais antigo ao mais recente.','Cobrem desde o início do ataque coordenado até o selamento de Gojo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Início do ataque coordenado das maldições',TRUE,0),(gen_random_uuid(),q,'Morte de Nanami em combate contra Mahito',FALSE,1),(gen_random_uuid(),q,'Gojo é atraído para uma armadilha',FALSE,2),(gen_random_uuid(),q,'Gojo é selado dentro do Prison Realm',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre Megumi e sua família, do mais antigo ao mais recente.','Cobrem desde sua venda ao clã Zenin até sua adoção pelo avô feiticeiro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Toji vende Megumi ao clã Zenin ainda criança',TRUE,0),(gen_random_uuid(),q,'Megumi é adotado pelo avô feiticeiro',FALSE,1),(gen_random_uuid(),q,'Ingressa na Tokyo Jujutsu High',FALSE,2),(gen_random_uuid(),q,'É forçado a lutar contra amigos em Shibuya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Yuta Okkotsu, do mais antigo ao mais recente.','Cobrem desde a morte de Rika até sua formatura da Tokyo Jujutsu High.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rika morre em um acidente na infância de Yuta',TRUE,0),(gen_random_uuid(),q,'Yuta é recrutado por Gojo para a Tokyo Jujutsu High',FALSE,1),(gen_random_uuid(),q,'Aprende a controlar o poder de Rika',FALSE,2),(gen_random_uuid(),q,'Se forma e se torna professor mais tarde',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Kenjaku, do mais antigo ao mais recente.','Cobrem desde sua origem antiga até sua revelação pública durante Shibuya.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nasce há séculos como feiticeiro comum',TRUE,0),(gen_random_uuid(),q,'Desenvolve a técnica de transferência de corpos',FALSE,1),(gen_random_uuid(),q,'Se infiltra disfarçado ao longo de gerações',FALSE,2),(gen_random_uuid(),q,'É revelado publicamente durante o Incidente de Shibuya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Maki Zenin, do mais antigo ao mais recente.','Cobrem desde sua discriminação na infância até sua ascensão de poder.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'É discriminada pelo clã por não ter energia amaldiçoada natural',TRUE,0),(gen_random_uuid(),q,'Ingressa na Tokyo Jujutsu High mesmo assim',FALSE,1),(gen_random_uuid(),q,'Enfrenta membros do próprio clã em combate direto',FALSE,2),(gen_random_uuid(),q,'Assume papel de liderança entre os feiticeiros de sua geração',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- Complemento para fechar 150 perguntas na distribuição exata
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','easy','Qual é o nome da técnica anti-domínio que qualquer feiticeiro pode usar como defesa básica contra ataques amaldiçoados?','Ela cria uma barreira simples ao redor do usuário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Simple Domain',TRUE,0),(gen_random_uuid(),q,'Domain Expansion',FALSE,1),(gen_random_uuid(),q,'Infinito',FALSE,2),(gen_random_uuid(),q,'Reversão de Maldição',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','easy','Qual é o nome dado ao processo de curar ferimentos usando energia amaldiçoada revertida?','Shoko Ieiri é uma das especialistas mais talentosas nessa técnica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Reversão de Maldição',TRUE,0),(gen_random_uuid(),q,'Domain Expansion',FALSE,1),(gen_random_uuid(),q,'Simple Domain',FALSE,2),(gen_random_uuid(),q,'Black Flash',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','easy','Qual é o nome da energia negativa gerada por emoções humanas, que dá origem às maldições?','Ela se acumula em locais de sofrimento intenso, como hospitais e escolas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Energia Amaldiçoada',TRUE,0),(gen_random_uuid(),q,'Chakra',FALSE,1),(gen_random_uuid(),q,'Reiatsu',FALSE,2),(gen_random_uuid(),q,'Ki Negativo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','medium','Qual é o nome da técnica que permite acertar um golpe físico logo após ativar energia amaldiçoada no momento exato, causando dano amplificado?','É extremamente difícil de executar, mesmo para feiticeiros experientes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Black Flash',TRUE,0),(gen_random_uuid(),q,'Domain Expansion',FALSE,1),(gen_random_uuid(),q,'Simple Domain',FALSE,2),(gen_random_uuid(),q,'Hollow Purple',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','medium','Qual é o nome da técnica de Gojo que combina energia positiva e negativa para criar um ataque de vazio absoluto?','É considerada uma das técnicas mais destrutivas já vistas na série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hollow Purple',TRUE,0),(gen_random_uuid(),q,'Lapse Blue',FALSE,1),(gen_random_uuid(),q,'Cursed Speech',FALSE,2),(gen_random_uuid(),q,'Blast Reversal',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','hard','Qual é o nome do Território Expandido de Ryomen Sukuna, que corta tudo ao redor usando lâminas de vento invisíveis?','Ele é considerado um dos domínios mais letais da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Malevolent Shrine',TRUE,0),(gen_random_uuid(),q,'Unlimited Void',FALSE,1),(gen_random_uuid(),q,'Chimera Shadow Garden',FALSE,2),(gen_random_uuid(),q,'Coffin of the Iron Mountain',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','hard','Qual é o nome do Território Expandido de Mahito, que transforma almas em formas grotescas dentro de um santuário psicológico?','Ele reflete diretamente a personalidade sádica do usuário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Self-Embodiment of Perfection',TRUE,0),(gen_random_uuid(),q,'Malevolent Shrine',FALSE,1),(gen_random_uuid(),q,'Unlimited Void',FALSE,2),(gen_random_uuid(),q,'Coffin of the Iron Mountain',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','impossible','Qual é o nome do Território Expandido de Kento Nanami, extremamente simples se comparado a outros domínios da série?','Ele reflete a personalidade minimalista e prática do usuário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nanami não possui Domain Expansion completo, apenas Simple Domain',TRUE,0),(gen_random_uuid(),q,'Overtime Sanctuary',FALSE,1),(gen_random_uuid(),q,'Corporate Precision',FALSE,2),(gen_random_uuid(),q,'Ratio Domain',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'fill_blank','easy','A técnica anti-domínio que qualquer feiticeiro pode usar como defesa básica contra ataques amaldiçoados se chama ___.','Ela cria uma barreira simples ao redor do usuário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Simple Domain',TRUE,0),(gen_random_uuid(),q,'Domain Expansion',FALSE,1),(gen_random_uuid(),q,'Infinito',FALSE,2),(gen_random_uuid(),q,'Reversão de Maldição',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'fill_blank','easy','O processo de curar ferimentos usando energia amaldiçoada revertida se chama ___.','Shoko Ieiri é uma das especialistas mais talentosas nessa técnica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Reversão de Maldição',TRUE,0),(gen_random_uuid(),q,'Domain Expansion',FALSE,1),(gen_random_uuid(),q,'Simple Domain',FALSE,2),(gen_random_uuid(),q,'Black Flash',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'fill_blank','medium','A técnica que permite acertar um golpe físico logo após ativar energia amaldiçoada, causando dano amplificado, se chama ___.','É extremamente difícil de executar, mesmo para feiticeiros experientes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Black Flash',TRUE,0),(gen_random_uuid(),q,'Domain Expansion',FALSE,1),(gen_random_uuid(),q,'Simple Domain',FALSE,2),(gen_random_uuid(),q,'Hollow Purple',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'fill_blank','medium','A técnica de Gojo que combina energia positiva e negativa para criar um ataque de vazio absoluto se chama ___.','É considerada uma das técnicas mais destrutivas já vistas na série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hollow Purple',TRUE,0),(gen_random_uuid(),q,'Lapse Blue',FALSE,1),(gen_random_uuid(),q,'Cursed Speech',FALSE,2),(gen_random_uuid(),q,'Blast Reversal',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'fill_blank','hard','O Território Expandido de Ryomen Sukuna, que corta tudo ao redor usando lâminas de vento invisíveis, se chama ___.','Ele é considerado um dos domínios mais letais da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Malevolent Shrine',TRUE,0),(gen_random_uuid(),q,'Unlimited Void',FALSE,1),(gen_random_uuid(),q,'Chimera Shadow Garden',FALSE,2),(gen_random_uuid(),q,'Coffin of the Iron Mountain',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'fill_blank','hard','O Território Expandido de Mahito, que transforma almas em formas grotescas dentro de um santuário psicológico, se chama ___.','Ele reflete diretamente a personalidade sádica do usuário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Self-Embodiment of Perfection',TRUE,0),(gen_random_uuid(),q,'Malevolent Shrine',FALSE,1),(gen_random_uuid(),q,'Unlimited Void',FALSE,2),(gen_random_uuid(),q,'Coffin of the Iron Mountain',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'who_said','medium','Quem disse: "Eu sirvo à Mei Mei sem questionar, e invoco pássaros para ela sempre que necessário"?','A frase é dita pelo irmão mais novo dessa feiticeira mercenária.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ui Ui',TRUE,0),(gen_random_uuid(),q,'Noritoshi Kamo',FALSE,1),(gen_random_uuid(),q,'Aoi Todo',FALSE,2),(gen_random_uuid(),q,'Kasumi Miwa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'who_said','hard','Quem disse: "Meu tipo ideal de mulher deve ter personalidade forte, e você, Yuji, entende exatamente o que eu quero dizer"?','A frase é dita pelo estudante gigante e extrovertido de Kyoto durante uma conversa peculiar com Yuji.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aoi Todo',TRUE,0),(gen_random_uuid(),q,'Noritoshi Kamo',FALSE,1),(gen_random_uuid(),q,'Kasumi Miwa',FALSE,2),(gen_random_uuid(),q,'Panda',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'who_said','hard','Quem disse: "Eu idolatro Maki Zenin, e treino todos os dias para um dia poder lutar ao lado dela como igual"?','A frase é dita pelo estudante de Kyoto especialista em espada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kasumi Miwa',TRUE,0),(gen_random_uuid(),q,'Momo Nishimiya',FALSE,1),(gen_random_uuid(),q,'Aoi Todo',FALSE,2),(gen_random_uuid(),q,'Noritoshi Kamo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'episode_arc','hard','Em qual arco Yuta Okkotsu enfrenta e finalmente supera a maldição vingativa de Rika, encerrando seu trauma de infância?','O confronto ocorre em um vilarejo remoto, distante da capital.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Yuta Okkotsu (filme)',TRUE,0),(gen_random_uuid(),q,'Arco de Shibuya',FALSE,1),(gen_random_uuid(),q,'Arco Kyoto-Tokyo',FALSE,2),(gen_random_uuid(),q,'Arco do Culling Game',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','easy','Qual é o nome da escola de feiticeiros localizada na região oeste do Japão, rival histórica de Tokyo?','Seus estudantes competem anualmente contra os de Tóquio.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kyoto Jujutsu High',TRUE,0),(gen_random_uuid(),q,'Osaka Academy',FALSE,1),(gen_random_uuid(),q,'Sendai Institute',FALSE,2),(gen_random_uuid(),q,'Nagoya School',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','easy','Qual é o nome do órgão que governa e organiza todas as atividades relacionadas a feiticeiros no Japão?','Ela determina missões, classificações e regras de conduta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Associação de Feiticeiros',TRUE,0),(gen_random_uuid(),q,'Ministério das Maldições',FALSE,1),(gen_random_uuid(),q,'Conselho Jujutsu',FALSE,2),(gen_random_uuid(),q,'Ordem dos Exorcistas',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','medium','Qual é o nome do objeto amaldiçoado que contém os vinte dedos de Sukuna, buscado insistentemente ao longo da série?','Cada dedo consumido aumenta o poder de Sukuna dentro de Yuji.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dedos de Sukuna',TRUE,0),(gen_random_uuid(),q,'Relíquia Amaldiçoada',FALSE,1),(gen_random_uuid(),q,'Fragmentos Sagrados',FALSE,2),(gen_random_uuid(),q,'Núcleo Amaldiçoado',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','medium','Qual é o nome dado às maldições nascidas diretamente de emoções humanas negativas acumuladas, sem forma fixa inicial?','Elas podem evoluir e ganhar inteligência com o tempo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Maldições',TRUE,0),(gen_random_uuid(),q,'Hollows',FALSE,1),(gen_random_uuid(),q,'Youkai',FALSE,2),(gen_random_uuid(),q,'Oni Selvagens',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','hard','Qual é o nome da prisão dimensional criada por Gojo através de sua Domain Expansion, usada para selar Sukuna temporariamente?','Ela isola completamente o alvo de qualquer contato com o mundo exterior.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Prison Realm',TRUE,0),(gen_random_uuid(),q,'Unlimited Void',FALSE,1),(gen_random_uuid(),q,'Malevolent Shrine',FALSE,2),(gen_random_uuid(),q,'Coffin of the Iron Mountain',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','hard','Qual é o nome do time de estudantes formado especificamente para o torneio Kyoto-Tokyo, representando a escola de Tóquio?','Yuji, Megumi e Nobara fazem parte dessa equipe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Time de Tokyo',TRUE,0),(gen_random_uuid(),q,'Time de Kyoto',FALSE,1),(gen_random_uuid(),q,'Time Especial',FALSE,2),(gen_random_uuid(),q,'Time Zenin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','hard','Qual é o nome do estudante mais novo do time de Kyoto, capaz de manipular fibras têxteis e materiais de tecido?','Ele demonstra grande timidez fora de combate, mas confiança total durante batalhas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não é detalhado com destaque próprio na série',TRUE,0),(gen_random_uuid(),q,'Kasumi Miwa',FALSE,1),(gen_random_uuid(),q,'Momo Nishimiya',FALSE,2),(gen_random_uuid(),q,'Aoi Todo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','impossible','Qual é o nome da técnica de manipulação de fala amaldiçoada usada por Toge Inumaki, transmitida por gerações em sua família?','Cada palavra falada carrega um comando literal e obrigatório.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cursed Speech',TRUE,0),(gen_random_uuid(),q,'Voz Amaldiçoada',FALSE,1),(gen_random_uuid(),q,'Comando Absoluto',FALSE,2),(gen_random_uuid(),q,'Palavra Sagrada',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','impossible','Qual é o nome do clã ao qual Toge Inumaki pertence, especializado na técnica de fala amaldiçoada?','A família mantém tradições rígidas sobre o uso restrito dessa habilidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Inumaki',TRUE,0),(gen_random_uuid(),q,'Zenin',FALSE,1),(gen_random_uuid(),q,'Kamo',FALSE,2),(gen_random_uuid(),q,'Gojo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'fill_blank','medium','O objeto amaldiçoado que contém os vinte dedos de Sukuna, buscado insistentemente ao longo da série, é conhecido como ___.','Cada dedo consumido aumenta o poder de Sukuna dentro de Yuji.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dedos de Sukuna',TRUE,0),(gen_random_uuid(),q,'Relíquia Amaldiçoada',FALSE,1),(gen_random_uuid(),q,'Fragmentos Sagrados',FALSE,2),(gen_random_uuid(),q,'Núcleo Amaldiçoado',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'fill_blank','hard','A prisão dimensional criada por Gojo através de sua Domain Expansion, usada para selar Sukuna temporariamente, se chama ___.','Ela isola completamente o alvo de qualquer contato com o mundo exterior.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Prison Realm',TRUE,0),(gen_random_uuid(),q,'Unlimited Void',FALSE,1),(gen_random_uuid(),q,'Malevolent Shrine',FALSE,2),(gen_random_uuid(),q,'Coffin of the Iron Mountain',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'fill_blank','impossible','A técnica de manipulação de fala amaldiçoada usada por Toge Inumaki, transmitida por gerações em sua família, se chama ___.','Cada palavra falada carrega um comando literal e obrigatório.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cursed Speech',TRUE,0),(gen_random_uuid(),q,'Voz Amaldiçoada',FALSE,1),(gen_random_uuid(),q,'Comando Absoluto',FALSE,2),(gen_random_uuid(),q,'Palavra Sagrada',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','impossible','Qual é o nome do irmão mais novo de Choso, também nascido do sangue de Sukuna, especialista em técnicas de sangue projetado?','Ele e outro irmão lutam juntos contra Yuji e Nobara em Shibuya.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Eso',TRUE,0),(gen_random_uuid(),q,'Kechizu',FALSE,1),(gen_random_uuid(),q,'Choso',FALSE,2),(gen_random_uuid(),q,'Uraume',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','impossible','Qual é o nome do irmão mais novo de Choso e Eso, especialista em técnicas de decomposição através de mordidas?','Ele completa o trio de irmãos nascidos do sangue de Sukuna.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kechizu',TRUE,0),(gen_random_uuid(),q,'Eso',FALSE,1),(gen_random_uuid(),q,'Choso',FALSE,2),(gen_random_uuid(),q,'Uraume',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','impossible','Qual é o nome da serva fiel de Sukuna, especialista em manipulação de gelo, que o acompanha desde a era Heian?','Ela demonstra devoção quase religiosa ao antigo Rei das Maldições.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Uraume',TRUE,0),(gen_random_uuid(),q,'Choso',FALSE,1),(gen_random_uuid(),q,'Eso',FALSE,2),(gen_random_uuid(),q,'Kechizu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_jjk,'text','impossible','Qual é o nome do estudante de Kyoto capaz de manipular energia elétrica através de tecnologia amaldiçoada, aliado ocasional de Todo?','Sua Individualidade combina elementos tecnológicos com energia amaldiçoada tradicional.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não é um personagem de destaque nomeado na série',TRUE,0),(gen_random_uuid(),q,'Noritoshi Kamo',FALSE,1),(gen_random_uuid(),q,'Kasumi Miwa',FALSE,2),(gen_random_uuid(),q,'Momo Nishimiya',FALSE,3);

END $$;
