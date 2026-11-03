-- ============================================================
--  V28 — Seed de perguntas: Fullmetal Alchemist Brotherhood (150)
--  Fonte: MyAnimeList + cânone do anime
--  Distribuição: text 40% / fill_blank 25% / who_said 20% /
--                episode_arc 10% / chronological 5%
--  Sem repetição com V5. Regras R1-R7 aplicadas.
-- ============================================================

DO $$
DECLARE
    v_system UUID := '00000000-0000-0000-0000-000000000001';
    v_fmab   UUID;
    q        UUID;
BEGIN
    SELECT id INTO v_fmab FROM animes WHERE slug = 'fullmetal-alchemist-brotherhood' LIMIT 1;

    -- ══════════════════════════════════════════════════════════
    -- TEXT — 60 perguntas (18 easy / 21 medium / 15 hard / 6 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','easy','Qual é o nome da cidade natal dos irmãos Elric, onde tentam a transmutação humana proibida?','A cidade é conhecida por suas colinas verdes e proximidade com a fronteira leste.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Resembool',TRUE,0),(gen_random_uuid(),q,'Central City',FALSE,1),(gen_random_uuid(),q,'Rush Valley',FALSE,2),(gen_random_uuid(),q,'Dublith',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','easy','Qual é o nome da mecânica responsável por criar e consertar as próteses automail de Edward?','Ela cresceu junto com os irmãos Elric na mesma vila.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Winry Rockbell',TRUE,0),(gen_random_uuid(),q,'Riza Hawkeye',FALSE,1),(gen_random_uuid(),q,'Izumi Curtis',FALSE,2),(gen_random_uuid(),q,'May Chang',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','easy','Qual é o nome da mãe dos irmãos Elric, cuja tentativa de ressurreição desencadeia toda a trama principal?','Sua morte por doença motiva a decisão fatal dos filhos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Trisha Elric',TRUE,0),(gen_random_uuid(),q,'Izumi Curtis',FALSE,1),(gen_random_uuid(),q,'Pinako Rockbell',FALSE,2),(gen_random_uuid(),q,'Riza Hawkeye',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','easy','Qual é o nome da mestra alquimista que treinou Edward e Alphonse antes dos eventos principais da série?','Ela também perdeu órgãos em uma tentativa de transmutação humana no passado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Izumi Curtis',TRUE,0),(gen_random_uuid(),q,'Trisha Elric',FALSE,1),(gen_random_uuid(),q,'Pinako Rockbell',FALSE,2),(gen_random_uuid(),q,'Olivier Armstrong',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','easy','Qual é o nome da tenente fiel a Roy Mustang, especialista em atiradoria e estratégia militar?','Ela carrega tatuada nas costas parte da pesquisa sobre transmutação humana.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Riza Hawkeye',TRUE,0),(gen_random_uuid(),q,'Winry Rockbell',FALSE,1),(gen_random_uuid(),q,'Maria Ross',FALSE,2),(gen_random_uuid(),q,'Olivier Armstrong',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','easy','Qual é o nome do general de forte porte físico, conhecido por técnicas de alquimia baseadas em artes marciais transmitidas por gerações?','Ele possui um bigode característico e demonstra emoção com muita facilidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Alex Louis Armstrong',TRUE,0),(gen_random_uuid(),q,'Roy Mustang',FALSE,1),(gen_random_uuid(),q,'Basque Gran',FALSE,2),(gen_random_uuid(),q,'Kimblee',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','easy','Qual é o nome da irmã mais nova de Alex Louis Armstrong, comandante militar extremamente rigorosa no norte do país?','Ela demonstra desprezo por fraqueza e sentimentalismo excessivo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Olivier Mira Armstrong',TRUE,0),(gen_random_uuid(),q,'Riza Hawkeye',FALSE,1),(gen_random_uuid(),q,'Izumi Curtis',FALSE,2),(gen_random_uuid(),q,'May Chang',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','easy','Qual é o nome do cachorro de estimação de Winry, que acompanha os personagens em diversos momentos da série?','Ele é um cão de raça grande, extremamente leal à família Rockbell.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Den',TRUE,0),(gen_random_uuid(),q,'Alexander',FALSE,1),(gen_random_uuid(),q,'Black Hayate',FALSE,2),(gen_random_uuid(),q,'Comet',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','easy','Qual é o nome da avó de Winry, também responsável por criar próteses automail na vila de Resembool?','Ela é uma figura materna importante para os irmãos Elric após a morte da mãe deles.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Pinako Rockbell',TRUE,0),(gen_random_uuid(),q,'Izumi Curtis',FALSE,1),(gen_random_uuid(),q,'Trisha Elric',FALSE,2),(gen_random_uuid(),q,'Olivier Armstrong',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','easy','Qual é o nome da jovem princesa de Xing que viaja até Amestris em busca de conhecimento sobre imortalidade?','Ela tem interesse pessoal em conquistar o trono do próprio clã.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'May Chang',TRUE,0),(gen_random_uuid(),q,'Winry Rockbell',FALSE,1),(gen_random_uuid(),q,'Riza Hawkeye',FALSE,2),(gen_random_uuid(),q,'Lan Fan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','easy','Qual é o nome do príncipe de Xing que busca aprender alquimia de Amestris para trazer conhecimento à sua nação?','Ele é acompanhado por sua guarda-costas pessoal durante toda sua jornada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ling Yao',TRUE,0),(gen_random_uuid(),q,'May Chang',FALSE,1),(gen_random_uuid(),q,'Lan Fan',FALSE,2),(gen_random_uuid(),q,'Fu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','easy','Qual é o nome da guarda-costas pessoal de Ling Yao, extremamente leal e habilidosa em combate ninja?','Ela sacrifica parte do próprio braço durante a jornada em Amestris.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Lan Fan',TRUE,0),(gen_random_uuid(),q,'May Chang',FALSE,1),(gen_random_uuid(),q,'Riza Hawkeye',FALSE,2),(gen_random_uuid(),q,'Olivier Armstrong',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','easy','Qual é o nome do Führer supremo de Amestris durante a maior parte da série?','Ele governa o país com autoridade absoluta, escondendo segredos terríveis.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'King Bradley',TRUE,0),(gen_random_uuid(),q,'Roy Mustang',FALSE,1),(gen_random_uuid(),q,'Basque Gran',FALSE,2),(gen_random_uuid(),q,'Kimblee',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','easy','Qual é o nome do jovem alquimista responsável pela pesquisa de um exército de alquimistas sob comando de Roy Mustang?','Ele é próximo de Riza Hawkeye e morre em confronto durante a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Maes Hughes',TRUE,0),(gen_random_uuid(),q,'Jean Havoc',FALSE,1),(gen_random_uuid(),q,'Denny Brosh',FALSE,2),(gen_random_uuid(),q,'Vato Falman',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','easy','Qual é o nome da esposa de Maes Hughes, que se torna próxima da família Elric ao longo da série?','Ela e Maes têm uma filha chamada Elysia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gracia Hughes',TRUE,0),(gen_random_uuid(),q,'Riza Hawkeye',FALSE,1),(gen_random_uuid(),q,'Izumi Curtis',FALSE,2),(gen_random_uuid(),q,'Sheska',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','easy','Qual é o nome do cão da equipe de Roy Mustang, adotado por Riza Hawkeye durante a série?','Ele frequentemente aparece brincando com Riza fora de horário de trabalho.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Black Hayate',TRUE,0),(gen_random_uuid(),q,'Den',FALSE,1),(gen_random_uuid(),q,'Alexander',FALSE,2),(gen_random_uuid(),q,'Comet',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','easy','Qual é o nome do subordinado fumante da equipe de Roy Mustang, especialista em armas de fogo?','Ele perde temporariamente o uso das pernas durante um confronto crucial da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Jean Havoc',TRUE,0),(gen_random_uuid(),q,'Vato Falman',FALSE,1),(gen_random_uuid(),q,'Heymans Breda',FALSE,2),(gen_random_uuid(),q,'Denny Brosh',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','medium','Qual é o nome verdadeiro do antagonista principal de FMAB, criado a partir do sangue de Hohenheim?','Ele criou os sete pecados capitais como seus filhos artificiais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não possui nome próprio, é chamado apenas de "Father"',TRUE,0),(gen_random_uuid(),q,'Van Hohenheim',FALSE,1),(gen_random_uuid(),q,'King Bradley',FALSE,2),(gen_random_uuid(),q,'Envy',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','medium','Qual é o nome do pai biológico de Edward e Alphonse, com passado ligado à criação original de Father?','Ele desaparece de casa anos antes do início da série, deixando a família.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Van Hohenheim',TRUE,0),(gen_random_uuid(),q,'King Bradley',FALSE,1),(gen_random_uuid(),q,'Basque Gran',FALSE,2),(gen_random_uuid(),q,'Roy Mustang',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','medium','Qual é o Homunculus que representa o pecado capital do Orgulho, revelado como King Bradley?','Ele governa Amestris disfarçado de Führer, controlando o exército inteiro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Pride',TRUE,0),(gen_random_uuid(),q,'Wrath',FALSE,1),(gen_random_uuid(),q,'Greed',FALSE,2),(gen_random_uuid(),q,'Envy',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','medium','Qual é o Homunculus que representa o pecado capital da Inveja, capaz de se transformar em qualquer pessoa?','Ele é responsável por incitar guerras entre nações há décadas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Envy',TRUE,0),(gen_random_uuid(),q,'Greed',FALSE,1),(gen_random_uuid(),q,'Sloth',FALSE,2),(gen_random_uuid(),q,'Lust',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','medium','Qual é o Homunculus que representa o pecado capital da Preguiça, dotado de força bruta extraordinária?','Ele é usado como escavador em um projeto secreto de construção massiva.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sloth',TRUE,0),(gen_random_uuid(),q,'Greed',FALSE,1),(gen_random_uuid(),q,'Envy',FALSE,2),(gen_random_uuid(),q,'Wrath',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','medium','Qual é o Homunculus que representa o pecado capital da Luxúria, capaz de estender as unhas como lâminas mortais?','Ela seduz e manipula alvos antes de eliminá-los.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Lust',TRUE,0),(gen_random_uuid(),q,'Envy',FALSE,1),(gen_random_uuid(),q,'Sloth',FALSE,2),(gen_random_uuid(),q,'Gluttony',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','medium','Qual é o Homunculus que representa o pecado capital da Cobiça, com desejo obsessivo por posses e riqueza?','Ele deseja controlar seu próprio destino, distanciando-se dos planos de Father.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Greed',TRUE,0),(gen_random_uuid(),q,'Envy',FALSE,1),(gen_random_uuid(),q,'Sloth',FALSE,2),(gen_random_uuid(),q,'Pride',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','medium','Qual é o Homunculus que representa o pecado capital da Ira, revelado como o filho substituto adotado por Izumi Curtis?','Ele é criado a partir do fracasso da própria transmutação humana de Izumi.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Wrath',TRUE,0),(gen_random_uuid(),q,'Pride',FALSE,1),(gen_random_uuid(),q,'Greed',FALSE,2),(gen_random_uuid(),q,'Sloth',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','medium','Qual é o nome do alquimista estatal conhecido como "Alquimista Carmesim", especialista em explosões através de transmutação?','Ele é liberado da prisão para servir aos planos de Father contra Xing.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Solf J. Kimblee',TRUE,0),(gen_random_uuid(),q,'Basque Gran',FALSE,1),(gen_random_uuid(),q,'Alex Armstrong',FALSE,2),(gen_random_uuid(),q,'Roy Mustang',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','medium','Qual é o nome do vilão conhecido como "Alquimista Relâmpago", massacrador em Ishval durante a antiga guerra civil?','Ele é morto no início da série antes de aprofundar sua participação na trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Basque Gran',TRUE,0),(gen_random_uuid(),q,'Solf J. Kimblee',FALSE,1),(gen_random_uuid(),q,'Roy Mustang',FALSE,2),(gen_random_uuid(),q,'King Bradley',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','medium','Qual é o nome do bibliotecário militar especialista em memorização, capaz de recuperar registros destruídos usando apenas a própria memória?','Ela ajuda os irmãos Elric a reconstruir pesquisas queimadas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sheska',TRUE,0),(gen_random_uuid(),q,'Gracia Hughes',FALSE,1),(gen_random_uuid(),q,'May Chang',FALSE,2),(gen_random_uuid(),q,'Lan Fan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','hard','Qual é o nome do círculo de transmutação gigantesco que abrange todo o território de Amestris, criado como parte do plano de Father?','Ele é ativado durante um eclipse solar total.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Círculo de Transmutação Nacional',TRUE,0),(gen_random_uuid(),q,'Portão da Verdade Coletivo',FALSE,1),(gen_random_uuid(),q,'Selo dos Sete Pecados',FALSE,2),(gen_random_uuid(),q,'Círculo do Sacrifício',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','hard','Qual é o nome da entidade misteriosa que aparece durante transmutações humanas, cobrando conhecimento em troca de visões do além?','Ela é o guardião do limite entre o mundo material e o desconhecido.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'A Verdade',TRUE,0),(gen_random_uuid(),q,'Father',FALSE,1),(gen_random_uuid(),q,'O Portão',FALSE,2),(gen_random_uuid(),q,'O Guardião',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','hard','Qual é o nome do vilão que se torna o parceiro leal de Edward temporariamente, apesar de originalmente ser um Homunculus rebelde?','Ele acaba se sacrificando em uma batalha decisiva contra Father.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Greed',TRUE,0),(gen_random_uuid(),q,'Envy',FALSE,1),(gen_random_uuid(),q,'Wrath',FALSE,2),(gen_random_uuid(),q,'Sloth',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','hard','Qual é o nome do corpo original de Greed, um mafioso que oferece seu corpo temporariamente ao Homunculus para lutar contra Father?','A fusão entre os dois cria uma personalidade híbrida única.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ling Yao',TRUE,0),(gen_random_uuid(),q,'Kimblee',FALSE,1),(gen_random_uuid(),q,'Scar',FALSE,2),(gen_random_uuid(),q,'Bradley',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','hard','Qual é o nome do sobrevivente de Ishval que caça alquimistas estatais em vingança pelo massacre de seu povo?','Ele carrega uma cicatriz em forma de X no rosto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Scar',TRUE,0),(gen_random_uuid(),q,'Kimblee',FALSE,1),(gen_random_uuid(),q,'Basque Gran',FALSE,2),(gen_random_uuid(),q,'Ling Yao',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','hard','Qual é o nome do irmão mais velho de Scar, também alquimista, cuja pesquisa é usada por Scar em seu braço mecânico especial?','Sua morte durante o genocídio de Ishval motiva profundamente a jornada de vingança de Scar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não é nomeado explicitamente na série',TRUE,0),(gen_random_uuid(),q,'Basque Gran',FALSE,1),(gen_random_uuid(),q,'Kimblee',FALSE,2),(gen_random_uuid(),q,'Bradley',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','hard','Qual é o nome do general responsável por comandar as forças do norte de Amestris antes de Olivier Armstrong?','Ele mantém relação de confiança com os irmãos Elric durante o arco do norte.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Raven (impostor de Grumman)',FALSE,0),(gen_random_uuid(),q,'Olivier Armstrong é a comandante direta',TRUE,1),(gen_random_uuid(),q,'Basque Gran',FALSE,2),(gen_random_uuid(),q,'King Bradley',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','hard','Qual é o nome do general idoso e aliado secreto de Roy Mustang, que também disputa a liderança política de Amestris?','Ele mantém uma relação familiar oculta com Riza Hawkeye.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Grumman',TRUE,0),(gen_random_uuid(),q,'Basque Gran',FALSE,1),(gen_random_uuid(),q,'Raven',FALSE,2),(gen_random_uuid(),q,'Kimblee',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','impossible','Qual é o nome do vilarejo destruído durante o massacre de Ishval, cenário de flashbacks importantes sobre o passado de Scar?','O evento é considerado um dos crimes de guerra mais graves cometidos por Amestris.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não é nomeado especificamente, refere-se à região de Ishval como um todo',TRUE,0),(gen_random_uuid(),q,'Resembool',FALSE,1),(gen_random_uuid(),q,'Rush Valley',FALSE,2),(gen_random_uuid(),q,'Dublith',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','impossible','Qual é o nome do médico de Rush Valley, especializado em cirurgias de automail complexas, mentor técnico de Winry?','Ele possui grande reputação entre engenheiros de próteses de toda Amestris.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dominic LeCoulte',TRUE,0),(gen_random_uuid(),q,'Garfiel',FALSE,1),(gen_random_uuid(),q,'Paninya',FALSE,2),(gen_random_uuid(),q,'Ridel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','impossible','Qual é o nome da ladra com pernas automail que se torna amiga de Winry em Rush Valley?','Ela originalmente rouba objetos usando suas próprias próteses mecânicas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Paninya',TRUE,0),(gen_random_uuid(),q,'Sheska',FALSE,1),(gen_random_uuid(),q,'May Chang',FALSE,2),(gen_random_uuid(),q,'Lan Fan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','impossible','Qual é o nome do velho servo leal da família imperial de Xing, guarda pessoal experiente ao lado de Lan Fan?','Ele sacrifica o próprio braço para salvar Ling Yao durante a jornada em Amestris.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fu',TRUE,0),(gen_random_uuid(),q,'Ling Yao',FALSE,1),(gen_random_uuid(),q,'Dominic LeCoulte',FALSE,2),(gen_random_uuid(),q,'Garfiel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','impossible','Qual é o nome do soldado disfarçado que investiga secretamente a corrupção dentro do exército de Amestris, aliado de Maes Hughes?','Ela é injustamente acusada de assassinato e precisa se esconder por um tempo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Maria Ross',TRUE,0),(gen_random_uuid(),q,'Sheska',FALSE,1),(gen_random_uuid(),q,'Gracia Hughes',FALSE,2),(gen_random_uuid(),q,'Rebecca Catalina',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- FILL_BLANK — 38 perguntas (11 easy / 13 medium / 10 hard / 4 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'fill_blank','easy','A cidade natal dos irmãos Elric, onde tentam a transmutação humana proibida, se chama ___.','A cidade é conhecida por suas colinas verdes e proximidade com a fronteira leste.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Resembool',TRUE,0),(gen_random_uuid(),q,'Central City',FALSE,1),(gen_random_uuid(),q,'Rush Valley',FALSE,2),(gen_random_uuid(),q,'Dublith',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'fill_blank','easy','A mecânica responsável por criar e consertar as próteses automail de Edward se chama ___.','Ela cresceu junto com os irmãos Elric na mesma vila.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Winry Rockbell',TRUE,0),(gen_random_uuid(),q,'Riza Hawkeye',FALSE,1),(gen_random_uuid(),q,'Izumi Curtis',FALSE,2),(gen_random_uuid(),q,'May Chang',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'fill_blank','easy','A mãe dos irmãos Elric, cuja tentativa de ressurreição desencadeia toda a trama principal, se chama ___.','Sua morte por doença motiva a decisão fatal dos filhos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Trisha Elric',TRUE,0),(gen_random_uuid(),q,'Izumi Curtis',FALSE,1),(gen_random_uuid(),q,'Pinako Rockbell',FALSE,2),(gen_random_uuid(),q,'Riza Hawkeye',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'fill_blank','easy','A mestra alquimista que treinou Edward e Alphonse antes dos eventos principais da série se chama ___.','Ela também perdeu órgãos em uma tentativa de transmutação humana no passado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Izumi Curtis',TRUE,0),(gen_random_uuid(),q,'Trisha Elric',FALSE,1),(gen_random_uuid(),q,'Pinako Rockbell',FALSE,2),(gen_random_uuid(),q,'Olivier Armstrong',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'fill_blank','easy','A tenente fiel a Roy Mustang, especialista em atiradoria e estratégia militar, se chama ___.','Ela carrega tatuada nas costas parte da pesquisa sobre transmutação humana.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Riza Hawkeye',TRUE,0),(gen_random_uuid(),q,'Winry Rockbell',FALSE,1),(gen_random_uuid(),q,'Maria Ross',FALSE,2),(gen_random_uuid(),q,'Olivier Armstrong',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'fill_blank','easy','O general de forte porte físico, conhecido por técnicas de alquimia baseadas em artes marciais transmitidas por gerações, se chama ___.','Ele possui um bigode característico e demonstra emoção com muita facilidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Alex Louis Armstrong',TRUE,0),(gen_random_uuid(),q,'Roy Mustang',FALSE,1),(gen_random_uuid(),q,'Basque Gran',FALSE,2),(gen_random_uuid(),q,'Kimblee',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'fill_blank','easy','A irmã mais nova de Alex Louis Armstrong, comandante militar extremamente rigorosa no norte do país, se chama ___.','Ela demonstra desprezo por fraqueza e sentimentalismo excessivo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Olivier Mira Armstrong',TRUE,0),(gen_random_uuid(),q,'Riza Hawkeye',FALSE,1),(gen_random_uuid(),q,'Izumi Curtis',FALSE,2),(gen_random_uuid(),q,'May Chang',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'fill_blank','easy','A avó de Winry, também responsável por criar próteses automail na vila de Resembool, se chama ___.','Ela é uma figura materna importante para os irmãos Elric após a morte da mãe deles.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Pinako Rockbell',TRUE,0),(gen_random_uuid(),q,'Izumi Curtis',FALSE,1),(gen_random_uuid(),q,'Trisha Elric',FALSE,2),(gen_random_uuid(),q,'Olivier Armstrong',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'fill_blank','easy','A jovem princesa de Xing que viaja até Amestris em busca de conhecimento sobre imortalidade se chama ___.','Ela tem interesse pessoal em conquistar o trono do próprio clã.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'May Chang',TRUE,0),(gen_random_uuid(),q,'Winry Rockbell',FALSE,1),(gen_random_uuid(),q,'Riza Hawkeye',FALSE,2),(gen_random_uuid(),q,'Lan Fan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'fill_blank','easy','O Führer supremo de Amestris durante a maior parte da série se chama ___.','Ele governa o país com autoridade absoluta, escondendo segredos terríveis.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'King Bradley',TRUE,0),(gen_random_uuid(),q,'Roy Mustang',FALSE,1),(gen_random_uuid(),q,'Basque Gran',FALSE,2),(gen_random_uuid(),q,'Kimblee',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'fill_blank','medium','O nome pelo qual o antagonista principal de FMAB é conhecido, criado a partir do sangue de Hohenheim, é simplesmente ___.','Ele criou os sete pecados capitais como seus filhos artificiais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Father',TRUE,0),(gen_random_uuid(),q,'Hohenheim',FALSE,1),(gen_random_uuid(),q,'King Bradley',FALSE,2),(gen_random_uuid(),q,'Envy',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'fill_blank','medium','O pai biológico de Edward e Alphonse, com passado ligado à criação original de Father, se chama ___.','Ele desaparece de casa anos antes do início da série, deixando a família.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Van Hohenheim',TRUE,0),(gen_random_uuid(),q,'King Bradley',FALSE,1),(gen_random_uuid(),q,'Basque Gran',FALSE,2),(gen_random_uuid(),q,'Roy Mustang',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'fill_blank','medium','O Homunculus que representa o pecado do Orgulho, revelado como King Bradley, se chama ___.','Ele governa Amestris disfarçado de Führer, controlando o exército inteiro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Pride',TRUE,0),(gen_random_uuid(),q,'Wrath',FALSE,1),(gen_random_uuid(),q,'Greed',FALSE,2),(gen_random_uuid(),q,'Envy',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'fill_blank','medium','O Homunculus que representa a Inveja, capaz de se transformar em qualquer pessoa, se chama ___.','Ele é responsável por incitar guerras entre nações há décadas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Envy',TRUE,0),(gen_random_uuid(),q,'Greed',FALSE,1),(gen_random_uuid(),q,'Sloth',FALSE,2),(gen_random_uuid(),q,'Lust',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'fill_blank','medium','O Homunculus que representa a Preguiça, dotado de força bruta extraordinária, se chama ___.','Ele é usado como escavador em um projeto secreto de construção massiva.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sloth',TRUE,0),(gen_random_uuid(),q,'Greed',FALSE,1),(gen_random_uuid(),q,'Envy',FALSE,2),(gen_random_uuid(),q,'Wrath',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'fill_blank','medium','O Homunculus que representa a Luxúria, capaz de estender as unhas como lâminas mortais, se chama ___.','Ela seduz e manipula alvos antes de eliminá-los.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Lust',TRUE,0),(gen_random_uuid(),q,'Envy',FALSE,1),(gen_random_uuid(),q,'Sloth',FALSE,2),(gen_random_uuid(),q,'Gluttony',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'fill_blank','medium','O Homunculus que representa a Cobiça, com desejo obsessivo por posses e riqueza, se chama ___.','Ele deseja controlar seu próprio destino, distanciando-se dos planos de Father.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Greed',TRUE,0),(gen_random_uuid(),q,'Envy',FALSE,1),(gen_random_uuid(),q,'Sloth',FALSE,2),(gen_random_uuid(),q,'Pride',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'fill_blank','medium','O Homunculus que representa a Ira, revelado como o filho substituto adotado por Izumi Curtis, se chama ___.','Ele é criado a partir do fracasso da própria transmutação humana de Izumi.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Wrath',TRUE,0),(gen_random_uuid(),q,'Pride',FALSE,1),(gen_random_uuid(),q,'Greed',FALSE,2),(gen_random_uuid(),q,'Sloth',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'fill_blank','medium','O alquimista estatal conhecido como "Alquimista Carmesim", especialista em explosões através de transmutação, se chama ___.','Ele é liberado da prisão para servir aos planos de Father contra Xing.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Solf J. Kimblee',TRUE,0),(gen_random_uuid(),q,'Basque Gran',FALSE,1),(gen_random_uuid(),q,'Alex Armstrong',FALSE,2),(gen_random_uuid(),q,'Roy Mustang',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'fill_blank','hard','O círculo de transmutação gigantesco que abrange todo o território de Amestris, criado como parte do plano de Father, se chama ___.','Ele é ativado durante um eclipse solar total.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Círculo de Transmutação Nacional',TRUE,0),(gen_random_uuid(),q,'Portão da Verdade Coletivo',FALSE,1),(gen_random_uuid(),q,'Selo dos Sete Pecados',FALSE,2),(gen_random_uuid(),q,'Círculo do Sacrifício',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'fill_blank','hard','A entidade misteriosa que aparece durante transmutações humanas, cobrando conhecimento em troca de visões do além, se chama ___.','Ela é o guardião do limite entre o mundo material e o desconhecido.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'A Verdade',TRUE,0),(gen_random_uuid(),q,'Father',FALSE,1),(gen_random_uuid(),q,'O Portão',FALSE,2),(gen_random_uuid(),q,'O Guardião',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'fill_blank','hard','O corpo original de Greed, um mafioso que oferece seu corpo temporariamente ao Homunculus para lutar contra Father, se chama ___.','A fusão entre os dois cria uma personalidade híbrida única.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ling Yao',TRUE,0),(gen_random_uuid(),q,'Kimblee',FALSE,1),(gen_random_uuid(),q,'Scar',FALSE,2),(gen_random_uuid(),q,'Bradley',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'fill_blank','hard','O sobrevivente de Ishval que caça alquimistas estatais em vingança pelo massacre de seu povo se chama ___.','Ele carrega uma cicatriz em forma de X no rosto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Scar',TRUE,0),(gen_random_uuid(),q,'Kimblee',FALSE,1),(gen_random_uuid(),q,'Basque Gran',FALSE,2),(gen_random_uuid(),q,'Ling Yao',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'fill_blank','hard','O general idoso e aliado secreto de Roy Mustang, com relação familiar oculta com Riza Hawkeye, se chama ___.','Ele também disputa a liderança política de Amestris.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Grumman',TRUE,0),(gen_random_uuid(),q,'Basque Gran',FALSE,1),(gen_random_uuid(),q,'Raven',FALSE,2),(gen_random_uuid(),q,'Kimblee',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'fill_blank','impossible','O médico de Rush Valley, especializado em cirurgias de automail complexas, mentor técnico de Winry, se chama ___.','Ele possui grande reputação entre engenheiros de próteses de toda Amestris.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dominic LeCoulte',TRUE,0),(gen_random_uuid(),q,'Garfiel',FALSE,1),(gen_random_uuid(),q,'Paninya',FALSE,2),(gen_random_uuid(),q,'Ridel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'fill_blank','impossible','A ladra com pernas automail que se torna amiga de Winry em Rush Valley se chama ___.','Ela originalmente rouba objetos usando suas próprias próteses mecânicas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Paninya',TRUE,0),(gen_random_uuid(),q,'Sheska',FALSE,1),(gen_random_uuid(),q,'May Chang',FALSE,2),(gen_random_uuid(),q,'Lan Fan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'fill_blank','impossible','O velho servo leal da família imperial de Xing, guarda pessoal experiente ao lado de Lan Fan, se chama ___.','Ele sacrifica o próprio braço para salvar Ling Yao durante a jornada em Amestris.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fu',TRUE,0),(gen_random_uuid(),q,'Ling Yao',FALSE,1),(gen_random_uuid(),q,'Dominic LeCoulte',FALSE,2),(gen_random_uuid(),q,'Garfiel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'fill_blank','impossible','A soldado disfarçada que investiga secretamente a corrupção dentro do exército, aliada de Maes Hughes, se chama ___.','Ela é injustamente acusada de assassinato e precisa se esconder por um tempo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Maria Ross',TRUE,0),(gen_random_uuid(),q,'Sheska',FALSE,1),(gen_random_uuid(),q,'Gracia Hughes',FALSE,2),(gen_random_uuid(),q,'Rebecca Catalina',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- WHO_SAID — 30 perguntas (9 easy / 11 medium / 8 hard / 2 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'who_said','easy','Quem disse: "Um dia vou devolver seu corpo original, custe o que custar, irmão"?','A frase resume o objetivo de vida do protagonista logo após o acidente inicial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Edward Elric',TRUE,0),(gen_random_uuid(),q,'Alphonse Elric',FALSE,1),(gen_random_uuid(),q,'Roy Mustang',FALSE,2),(gen_random_uuid(),q,'Winry Rockbell',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'who_said','easy','Quem disse: "Mesmo sem sentir dor física, ainda sinto a dor de não ter mais um corpo humano"?','A frase reflete a condição peculiar do irmão mais novo, cuja alma foi selada em uma armadura.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Alphonse Elric',TRUE,0),(gen_random_uuid(),q,'Edward Elric',FALSE,1),(gen_random_uuid(),q,'Ling Yao',FALSE,2),(gen_random_uuid(),q,'Scar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'who_said','easy','Quem disse: "Eu conserto automail, não brinquedos, então trate bem sua prótese"?','A frase reflete o cuidado técnico e emocional dessa mecânica com seu trabalho.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Winry Rockbell',TRUE,0),(gen_random_uuid(),q,'Riza Hawkeye',FALSE,1),(gen_random_uuid(),q,'Izumi Curtis',FALSE,2),(gen_random_uuid(),q,'Sheska',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'who_said','easy','Quem disse: "Minha filha é a criança mais linda de todo o mundo, olhem esta foto!"?','A frase é repetida constantemente por esse personagem apaixonado pela própria família.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Maes Hughes',TRUE,0),(gen_random_uuid(),q,'Roy Mustang',FALSE,1),(gen_random_uuid(),q,'Jean Havoc',FALSE,2),(gen_random_uuid(),q,'Vato Falman',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'who_said','easy','Quem disse: "Este bigode e este físico representam gerações de técnica alquímica transmitida em minha família!"?','A frase reflete o orgulho excêntrico desse general musculoso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Alex Louis Armstrong',TRUE,0),(gen_random_uuid(),q,'Roy Mustang',FALSE,1),(gen_random_uuid(),q,'King Bradley',FALSE,2),(gen_random_uuid(),q,'Basque Gran',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'who_said','easy','Quem disse: "Fraqueza é um luxo que ninguém no exército do norte pode se dar"?','A frase reflete a disciplina implacável dessa comandante militar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Olivier Armstrong',TRUE,0),(gen_random_uuid(),q,'Riza Hawkeye',FALSE,1),(gen_random_uuid(),q,'Izumi Curtis',FALSE,2),(gen_random_uuid(),q,'May Chang',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'who_said','easy','Quem disse: "Eu vim de Xing em busca de conhecimento sobre imortalidade para meu clã"?','A frase reflete a motivação inicial dessa jovem princesa viajante.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'May Chang',TRUE,0),(gen_random_uuid(),q,'Lan Fan',FALSE,1),(gen_random_uuid(),q,'Winry Rockbell',FALSE,2),(gen_random_uuid(),q,'Riza Hawkeye',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'who_said','easy','Quem disse: "Comida é o caminho mais rápido para meu coração, e também para minha lealdade"?','A frase reflete a personalidade descontraída do príncipe de Xing em busca de aprendizado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ling Yao',TRUE,0),(gen_random_uuid(),q,'May Chang',FALSE,1),(gen_random_uuid(),q,'Lan Fan',FALSE,2),(gen_random_uuid(),q,'Fu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'who_said','easy','Quem disse: "Eu me lembro de cada palavra de cada livro que já li, e nunca esqueço nada"?','A frase reflete a habilidade extraordinária de memória fotográfica dessa bibliotecária.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sheska',TRUE,0),(gen_random_uuid(),q,'Gracia Hughes',FALSE,1),(gen_random_uuid(),q,'May Chang',FALSE,2),(gen_random_uuid(),q,'Maria Ross',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'who_said','medium','Quem disse: "Eu vou me tornar Führer, e mudar este país por dentro, de forma justa"?','A frase resume o objetivo político de longo prazo desse coronel ambicioso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Roy Mustang',TRUE,0),(gen_random_uuid(),q,'King Bradley',FALSE,1),(gen_random_uuid(),q,'Basque Gran',FALSE,2),(gen_random_uuid(),q,'Grumman',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'who_said','medium','Quem disse: "Eu criei os pecados capitais como meus próprios filhos, mas apenas como ferramentas para meu plano maior"?','A frase é dita pelo antagonista supremo da série, revelando sua verdadeira frieza.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Father',TRUE,0),(gen_random_uuid(),q,'Van Hohenheim',FALSE,1),(gen_random_uuid(),q,'King Bradley',FALSE,2),(gen_random_uuid(),q,'Envy',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'who_said','medium','Quem disse: "Eu abandonei minha família porque tinha medo do que meu próprio passado poderia trazer para eles"?','A frase é dita pelo pai ausente dos irmãos Elric, refletindo sobre suas próprias decisões.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Van Hohenheim',TRUE,0),(gen_random_uuid(),q,'King Bradley',FALSE,1),(gen_random_uuid(),q,'Roy Mustang',FALSE,2),(gen_random_uuid(),q,'Scar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'who_said','medium','Quem disse: "Eu invejo os humanos por poderem sentir amor verdadeiro, algo que eu nunca vou compreender completamente"?','A frase reflete o profundo ressentimento existencial de um Homunculus específico.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Envy',TRUE,0),(gen_random_uuid(),q,'Greed',FALSE,1),(gen_random_uuid(),q,'Sloth',FALSE,2),(gen_random_uuid(),q,'Lust',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'who_said','medium','Quem disse: "Eu quero tudo: dinheiro, poder, fama, e a liberdade de escolher meu próprio destino"?','A frase resume a ambição pessoal desse Homunculus rebelde.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Greed',TRUE,0),(gen_random_uuid(),q,'Envy',FALSE,1),(gen_random_uuid(),q,'Pride',FALSE,2),(gen_random_uuid(),q,'Wrath',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'who_said','medium','Quem disse: "Eu mato alquimistas porque a alquimia usada para prejudicar pessoas é uma blasfêmia contra a criação"?','A frase reflete a filosofia de vingança carregada de dor pessoal desse sobrevivente de Ishval.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Scar',TRUE,0),(gen_random_uuid(),q,'Kimblee',FALSE,1),(gen_random_uuid(),q,'Basque Gran',FALSE,2),(gen_random_uuid(),q,'Bradley',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'who_said','medium','Quem disse: "Eu sou soldado disfarçada, e vou provar minha inocência mesmo escondida das autoridades"?','A frase é dita pela soldado acusada injustamente de assassinato.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Maria Ross',TRUE,0),(gen_random_uuid(),q,'Riza Hawkeye',FALSE,1),(gen_random_uuid(),q,'Rebecca Catalina',FALSE,2),(gen_random_uuid(),q,'Sheska',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'who_said','medium','Quem disse: "Eu quero levar conhecimento alquímico de volta para minha nação, mesmo que isso custe minha própria vida"?','A frase reflete a missão pessoal do príncipe de Xing durante toda sua jornada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ling Yao',TRUE,0),(gen_random_uuid(),q,'May Chang',FALSE,1),(gen_random_uuid(),q,'Lan Fan',FALSE,2),(gen_random_uuid(),q,'Fu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'who_said','medium','Quem disse: "Eu perdi metade do braço protegendo meu jovem senhor, e faria isso de novo sem hesitar"?','A frase é dita pela guarda-costas leal de Ling Yao após um sacrifício pessoal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Lan Fan',TRUE,0),(gen_random_uuid(),q,'May Chang',FALSE,1),(gen_random_uuid(),q,'Fu',FALSE,2),(gen_random_uuid(),q,'Riza Hawkeye',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'who_said','hard','Quem disse: "Eu sou um alquimista explosivo, e considero minha arte uma forma de expressão artística"?','A frase reflete a personalidade perturbadora do "Alquimista Carmesim".',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Solf J. Kimblee',TRUE,0),(gen_random_uuid(),q,'Basque Gran',FALSE,1),(gen_random_uuid(),q,'Alex Armstrong',FALSE,2),(gen_random_uuid(),q,'Roy Mustang',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'who_said','hard','Quem disse: "Eu escondi minha verdadeira identidade como Führer por décadas, esperando o momento certo para agir"?','A frase é dita pelo Homunculus disfarçado como líder supremo de Amestris.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'King Bradley (Pride)',TRUE,0),(gen_random_uuid(),q,'Father',FALSE,1),(gen_random_uuid(),q,'Envy',FALSE,2),(gen_random_uuid(),q,'Greed',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'who_said','hard','Quem disse: "Eu fui feito para escavar sem descanso, mas ainda assim sinto algo parecido com cansaço emocional"?','A frase reflete um raro momento de humanidade do Homunculus preguiçoso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sloth',TRUE,0),(gen_random_uuid(),q,'Greed',FALSE,1),(gen_random_uuid(),q,'Envy',FALSE,2),(gen_random_uuid(),q,'Wrath',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'who_said','hard','Quem disse: "Eu era apenas um garoto criado por Izumi, até descobrir que sou, na verdade, uma criação artificial de Father"?','A frase é dita pelo Homunculus que representa a Ira, refletindo sobre sua origem.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Wrath',TRUE,0),(gen_random_uuid(),q,'Pride',FALSE,1),(gen_random_uuid(),q,'Greed',FALSE,2),(gen_random_uuid(),q,'Sloth',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'who_said','hard','Quem disse: "Eu sedução e morte andam juntas em minhas mãos, e ambas me trazem o mesmo prazer"?','A frase reflete a natureza manipuladora e perigosa do Homunculus da Luxúria.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Lust',TRUE,0),(gen_random_uuid(),q,'Envy',FALSE,1),(gen_random_uuid(),q,'Sloth',FALSE,2),(gen_random_uuid(),q,'Gluttony',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'who_said','hard','Quem disse: "Eu me tornei corpo emprestado a um Homunculus, mas minha própria vontade ainda governa parte das minhas decisões"?','A frase é dita pelo mafioso original cujo corpo é fundido com o Homunculus Greed.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ling Yao',TRUE,0),(gen_random_uuid(),q,'Scar',FALSE,1),(gen_random_uuid(),q,'Kimblee',FALSE,2),(gen_random_uuid(),q,'Bradley',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'who_said','hard','Quem disse: "Eu ainda tenho influência política suficiente para mudar o destino desta nação, mesmo sendo apenas um general aposentado"?','A frase é dita pelo general idoso, aliado secreto de Roy Mustang.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Grumman',TRUE,0),(gen_random_uuid(),q,'Basque Gran',FALSE,1),(gen_random_uuid(),q,'Raven',FALSE,2),(gen_random_uuid(),q,'Kimblee',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'who_said','impossible','Quem disse: "Eu ajudei a criar próteses para dezenas de veteranos de guerra, mesmo sem nunca sair de Rush Valley"?','A frase é dita pelo médico veterano especializado em automail complexo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dominic LeCoulte',TRUE,0),(gen_random_uuid(),q,'Garfiel',FALSE,1),(gen_random_uuid(),q,'Paninya',FALSE,2),(gen_random_uuid(),q,'Ridel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'who_said','impossible','Quem disse: "Eu já roubei muitas coisas com estas pernas mecânicas, mas nunca a amizade verdadeira de alguém"?','A frase é dita pela ex-ladra que se torna amiga próxima de Winry.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Paninya',TRUE,0),(gen_random_uuid(),q,'Sheska',FALSE,1),(gen_random_uuid(),q,'May Chang',FALSE,2),(gen_random_uuid(),q,'Lan Fan',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- EPISODE_ARC — 15 perguntas (7 medium / 6 hard / 2 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'episode_arc','medium','Em qual arco os irmãos Elric tentam a transmutação humana proibida, perdendo respectivamente um braço, uma perna e o corpo inteiro?','O evento é o ponto de partida de toda a jornada da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Transmutação Fracassada',TRUE,0),(gen_random_uuid(),q,'Arco de Liore',FALSE,1),(gen_random_uuid(),q,'Arco de Lab Cinco',FALSE,2),(gen_random_uuid(),q,'Arco do Norte',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'episode_arc','medium','Em qual arco Edward e Alphonse investigam um falso profeta religioso que promete milagres na cidade de Liore?','O evento revela pela primeira vez a existência de Homunculi na trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Liore',TRUE,0),(gen_random_uuid(),q,'Arco da Transmutação Fracassada',FALSE,1),(gen_random_uuid(),q,'Arco de Lab Cinco',FALSE,2),(gen_random_uuid(),q,'Arco do Norte',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'episode_arc','medium','Em qual arco os irmãos Elric descobrem experimentos secretos de criação de Homunculi em um laboratório escondido?','É lá que eles se encontram pela primeira vez diretamente com Homunculi mais poderosos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Lab Cinco',TRUE,0),(gen_random_uuid(),q,'Arco de Liore',FALSE,1),(gen_random_uuid(),q,'Arco do Norte',FALSE,2),(gen_random_uuid(),q,'Arco de Xing',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'episode_arc','medium','Em qual arco Edward e Alphonse viajam até o extremo norte de Amestris, encontrando Olivier Armstrong e o Fort Briggs?','O forte guarda segredos importantes sobre os planos de Father.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Norte',TRUE,0),(gen_random_uuid(),q,'Arco de Lab Cinco',FALSE,1),(gen_random_uuid(),q,'Arco de Liore',FALSE,2),(gen_random_uuid(),q,'Arco de Xing',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'episode_arc','medium','Em qual arco May Chang e Ling Yao chegam a Amestris vindos de Xing, dando início à trama envolvendo o Homunculus Greed?','A busca por conhecimento sobre imortalidade motiva ambos os personagens.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Xing',TRUE,0),(gen_random_uuid(),q,'Arco do Norte',FALSE,1),(gen_random_uuid(),q,'Arco de Liore',FALSE,2),(gen_random_uuid(),q,'Arco de Lab Cinco',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'episode_arc','medium','Em qual arco a verdadeira identidade de King Bradley como o Homunculus Pride é finalmente revelada aos protagonistas?','A revelação causa grande impacto na estrutura de poder de todo o exército.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Revelação de Pride',TRUE,0),(gen_random_uuid(),q,'Arco de Xing',FALSE,1),(gen_random_uuid(),q,'Arco do Norte',FALSE,2),(gen_random_uuid(),q,'Arco de Lab Cinco',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'episode_arc','medium','Em qual arco ocorre a batalha final entre os protagonistas e Father durante o eclipse solar?','É o clímax definitivo de toda a trama principal da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Batalha Final',TRUE,0),(gen_random_uuid(),q,'Arco da Revelação de Pride',FALSE,1),(gen_random_uuid(),q,'Arco de Xing',FALSE,2),(gen_random_uuid(),q,'Arco do Norte',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'episode_arc','hard','Em qual arco Scar mata Maes Hughes, um dos personagens mais queridos da série?','O evento marca um dos momentos mais impactantes emocionalmente de toda a trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Lab Cinco',TRUE,0),(gen_random_uuid(),q,'Arco de Liore',FALSE,1),(gen_random_uuid(),q,'Arco do Norte',FALSE,2),(gen_random_uuid(),q,'Arco de Xing',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'episode_arc','hard','Em qual arco Greed retorna à trama após ter sua alma reabsorvida por Father anteriormente, agora fundido com Ling Yao?','Ele acaba se aliando aos protagonistas contra os planos de Father neste arco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Norte',TRUE,0),(gen_random_uuid(),q,'Arco de Xing',FALSE,1),(gen_random_uuid(),q,'Arco de Lab Cinco',FALSE,2),(gen_random_uuid(),q,'Arco da Revelação de Pride',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'episode_arc','hard','Em qual arco Edward troca temporariamente sua capacidade de usar alquimia em uma barganha decisiva no Portão da Verdade?','A decisão é feita para salvar a vida de Alphonse no confronto final.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Batalha Final',TRUE,0),(gen_random_uuid(),q,'Arco da Revelação de Pride',FALSE,1),(gen_random_uuid(),q,'Arco de Xing',FALSE,2),(gen_random_uuid(),q,'Arco do Norte',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'episode_arc','hard','Em qual arco Roy Mustang enfrenta diretamente Envy, vingando a morte de Maes Hughes?','Riza Hawkeye intervém no último instante para evitar que Roy sacrifique sua própria visão de forma irreversível.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Batalha Final',TRUE,0),(gen_random_uuid(),q,'Arco de Lab Cinco',FALSE,1),(gen_random_uuid(),q,'Arco do Norte',FALSE,2),(gen_random_uuid(),q,'Arco de Xing',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'episode_arc','hard','Em qual arco Scar se une temporariamente aos protagonistas para lutar contra Father, apesar de sua história prévia de conflito com alquimistas do estado?','A aliança improvável reflete a complexidade moral construída ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Batalha Final',TRUE,0),(gen_random_uuid(),q,'Arco do Norte',FALSE,1),(gen_random_uuid(),q,'Arco de Xing',FALSE,2),(gen_random_uuid(),q,'Arco de Lab Cinco',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'episode_arc','impossible','Em qual arco é revelado, através de flashbacks extensos, o passado completo de Hohenheim como um dos primeiros seres criados por Father?','A revelação explica sua imortalidade e conexão profunda com a origem dos Homunculi.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Passado de Hohenheim',TRUE,0),(gen_random_uuid(),q,'Arco da Revelação de Pride',FALSE,1),(gen_random_uuid(),q,'Arco de Xing',FALSE,2),(gen_random_uuid(),q,'Arco do Norte',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'episode_arc','impossible','Em qual arco é revelada a verdadeira origem de Father como uma consciência criada dentro de um frasco, séculos antes dos eventos principais da série?','A revelação ocorre através de memórias compartilhadas por Hohenheim.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Passado de Hohenheim',TRUE,0),(gen_random_uuid(),q,'Arco da Batalha Final',FALSE,1),(gen_random_uuid(),q,'Arco de Lab Cinco',FALSE,2),(gen_random_uuid(),q,'Arco de Xing',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- CHRONOLOGICAL — 7 perguntas (4 hard / 3 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'chronological','hard','Ordene cronologicamente os arcos a seguir, do mais antigo ao mais recente.','Cobrem desde a transmutação fracassada até a batalha final contra Father.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Transmutação Fracassada',TRUE,0),(gen_random_uuid(),q,'Liore',FALSE,1),(gen_random_uuid(),q,'Lab Cinco',FALSE,2),(gen_random_uuid(),q,'Batalha Final',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'chronological','hard','Ordene cronologicamente os seguintes eventos da jornada de Edward, do mais antigo ao mais recente.','Cobrem desde a perda do braço e da perna até a barganha final no Portão da Verdade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Perde o braço e a perna na transmutação fracassada',TRUE,0),(gen_random_uuid(),q,'Torna-se Alquimista Estatal ainda jovem',FALSE,1),(gen_random_uuid(),q,'Descobre a verdadeira identidade de King Bradley',FALSE,2),(gen_random_uuid(),q,'Abre mão da própria alquimia para salvar Alphonse',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre a Aranha Fantasma de Homunculi, do mais antigo ao mais recente.','Cobrem desde a criação de Father até a batalha final durante o eclipse.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Father cria os sete Homunculi',TRUE,0),(gen_random_uuid(),q,'Envy incita a Guerra Civil de Ishval',FALSE,1),(gen_random_uuid(),q,'King Bradley é revelado como Pride',FALSE,2),(gen_random_uuid(),q,'Father tenta absorver o poder de Deus durante o eclipse',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre Greed, do mais antigo ao mais recente.','Cobrem desde sua primeira rebelião contra Father até sua aliança final com os protagonistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Greed se rebela contra Father pela primeira vez',TRUE,0),(gen_random_uuid(),q,'Sua alma original é reabsorvida por Father',FALSE,1),(gen_random_uuid(),q,'Renasce fundido ao corpo de Ling Yao',FALSE,2),(gen_random_uuid(),q,'Se alia aos protagonistas contra Father',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Scar, do mais antigo ao mais recente.','Cobrem desde o massacre de Ishval até sua aliança final com os Elric.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sobrevive ao massacre de Ishval',TRUE,0),(gen_random_uuid(),q,'Inicia sua caçada a alquimistas estatais',FALSE,1),(gen_random_uuid(),q,'Mata Maes Hughes por engano de identidade',FALSE,2),(gen_random_uuid(),q,'Se alia aos protagonistas contra Father',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Hohenheim, do mais antigo ao mais recente.','Cobrem desde sua criação original até sua morte no final da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'É criado como um dos primeiros seres artificiais de Father',TRUE,0),(gen_random_uuid(),q,'Escapa e vive séculos como imortal',FALSE,1),(gen_random_uuid(),q,'Casa-se com Trisha e tem os filhos Edward e Alphonse',FALSE,2),(gen_random_uuid(),q,'Sacrifica sua vida para deter Father',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Ling Yao e Greed, do mais antigo ao mais recente.','Cobrem desde a chegada de Ling a Amestris até sua aliança final contra Father.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ling Yao chega a Amestris em busca de imortalidade',TRUE,0),(gen_random_uuid(),q,'Torna-se hospedeiro voluntário de Greed',FALSE,1),(gen_random_uuid(),q,'Luta ao lado dos Elric contra outros Homunculi',FALSE,2),(gen_random_uuid(),q,'Retorna a Xing como novo imperador',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- Complemento para fechar 150 perguntas na distribuição exata
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','easy','Qual é o nome do Homunculus que representa o pecado da Gula, capaz de devorar praticamente qualquer coisa?','Ele possui inteligência limitada, mas força de mordida devastadora.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gluttony',TRUE,0),(gen_random_uuid(),q,'Lust',FALSE,1),(gen_random_uuid(),q,'Envy',FALSE,2),(gen_random_uuid(),q,'Sloth',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','easy','Qual é o nome da cidade portuária conhecida por sua grande população de imigrantes e vida noturna agitada?','Izumi Curtis mora nessa cidade junto com seu marido.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dublith',TRUE,0),(gen_random_uuid(),q,'Rush Valley',FALSE,1),(gen_random_uuid(),q,'Central City',FALSE,2),(gen_random_uuid(),q,'Resembool',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','easy','Qual é o nome da cidade conhecida por sua indústria voltada para engenharia de próteses automail?','Winry viaja até lá para aprimorar suas habilidades técnicas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rush Valley',TRUE,0),(gen_random_uuid(),q,'Dublith',FALSE,1),(gen_random_uuid(),q,'Central City',FALSE,2),(gen_random_uuid(),q,'Resembool',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','medium','Qual é o nome do marido de Izumi Curtis, açougueiro que a acompanha em Dublith?','Ele apoia incondicionalmente sua esposa apesar dos riscos à saúde dela.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sig Curtis',TRUE,0),(gen_random_uuid(),q,'Van Hohenheim',FALSE,1),(gen_random_uuid(),q,'Roy Mustang',FALSE,2),(gen_random_uuid(),q,'Grumman',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','medium','Qual é o nome do subordinado calmo e observador da equipe de Roy Mustang, especialista em memória e registros?','Ele frequentemente serve como conselheiro estratégico silencioso do grupo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vato Falman',TRUE,0),(gen_random_uuid(),q,'Jean Havoc',FALSE,1),(gen_random_uuid(),q,'Heymans Breda',FALSE,2),(gen_random_uuid(),q,'Denny Brosh',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','medium','Qual é o nome do soldado corpulento da equipe de Roy Mustang, hábil em xadrez e estratégia?','Ele costuma dar conselhos práticos durante missões complicadas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Heymans Breda',TRUE,0),(gen_random_uuid(),q,'Jean Havoc',FALSE,1),(gen_random_uuid(),q,'Vato Falman',FALSE,2),(gen_random_uuid(),q,'Denny Brosh',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','hard','Qual é o nome da fortaleza militar no extremo norte de Amestris, comandada por Olivier Armstrong?','Ela é famosa por abrigar soldados extremamente resistentes ao frio extremo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fort Briggs',TRUE,0),(gen_random_uuid(),q,'Central Command',FALSE,1),(gen_random_uuid(),q,'Ishval Outpost',FALSE,2),(gen_random_uuid(),q,'Lab Cinco',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','hard','Qual é o nome da parceira de armas de Riza Hawkeye, também soldado do exército de Amestris?','Ela auxilia investigações internas e mantém amizade próxima com Riza.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rebecca Catalina',TRUE,0),(gen_random_uuid(),q,'Maria Ross',FALSE,1),(gen_random_uuid(),q,'Sheska',FALSE,2),(gen_random_uuid(),q,'Gracia Hughes',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','impossible','Qual é o nome do soldado da Guarnição de Briggs, responsável pela manutenção de equipamentos do forte, que se torna aliado de Edward?','Ele desenvolve profunda admiração pela liderança de Olivier Armstrong.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não é individualizado com destaque na série',TRUE,0),(gen_random_uuid(),q,'Miles',FALSE,1),(gen_random_uuid(),q,'Buccaneer',FALSE,2),(gen_random_uuid(),q,'Falman',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','hard','Qual é o nome do oficial de descendência Ishvalita que serve como imediato de Olivier Armstrong em Fort Briggs?','Ele demonstra grande respeito pela liderança justa da comandante, apesar do histórico de conflito entre Ishval e Amestris.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Miles',TRUE,0),(gen_random_uuid(),q,'Buccaneer',FALSE,1),(gen_random_uuid(),q,'Falman',FALSE,2),(gen_random_uuid(),q,'Havoc',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'fill_blank','easy','O Homunculus que representa a Gula, capaz de devorar praticamente qualquer coisa, se chama ___.','Ele possui inteligência limitada, mas força de mordida devastadora.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gluttony',TRUE,0),(gen_random_uuid(),q,'Lust',FALSE,1),(gen_random_uuid(),q,'Envy',FALSE,2),(gen_random_uuid(),q,'Sloth',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'fill_blank','easy','A cidade portuária conhecida por sua grande população de imigrantes, onde Izumi Curtis mora, se chama ___.','Ela vive lá junto com seu marido açougueiro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dublith',TRUE,0),(gen_random_uuid(),q,'Rush Valley',FALSE,1),(gen_random_uuid(),q,'Central City',FALSE,2),(gen_random_uuid(),q,'Resembool',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'fill_blank','medium','O marido de Izumi Curtis, açougueiro que a acompanha em Dublith, se chama ___.','Ele apoia incondicionalmente sua esposa apesar dos riscos à saúde dela.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sig Curtis',TRUE,0),(gen_random_uuid(),q,'Van Hohenheim',FALSE,1),(gen_random_uuid(),q,'Roy Mustang',FALSE,2),(gen_random_uuid(),q,'Grumman',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'fill_blank','medium','O subordinado calmo e observador da equipe de Roy Mustang, especialista em memória e registros, se chama ___.','Ele frequentemente serve como conselheiro estratégico silencioso do grupo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vato Falman',TRUE,0),(gen_random_uuid(),q,'Jean Havoc',FALSE,1),(gen_random_uuid(),q,'Heymans Breda',FALSE,2),(gen_random_uuid(),q,'Denny Brosh',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'fill_blank','hard','A fortaleza militar no extremo norte de Amestris, comandada por Olivier Armstrong, se chama ___.','Ela é famosa por abrigar soldados extremamente resistentes ao frio extremo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fort Briggs',TRUE,0),(gen_random_uuid(),q,'Central Command',FALSE,1),(gen_random_uuid(),q,'Ishval Outpost',FALSE,2),(gen_random_uuid(),q,'Lab Cinco',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'fill_blank','hard','A parceira de armas de Riza Hawkeye, também soldado do exército de Amestris, se chama ___.','Ela auxilia investigações internas e mantém amizade próxima com Riza.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rebecca Catalina',TRUE,0),(gen_random_uuid(),q,'Maria Ross',FALSE,1),(gen_random_uuid(),q,'Sheska',FALSE,2),(gen_random_uuid(),q,'Gracia Hughes',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'fill_blank','hard','O oficial de descendência Ishvalita que serve como imediato de Olivier Armstrong em Fort Briggs se chama ___.','Ele demonstra grande respeito pela liderança justa da comandante.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Miles',TRUE,0),(gen_random_uuid(),q,'Buccaneer',FALSE,1),(gen_random_uuid(),q,'Falman',FALSE,2),(gen_random_uuid(),q,'Havoc',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'who_said','medium','Quem disse: "Eu treinei os irmãos Elric com dureza, porque a alquimia exige respeito absoluto pela vida"?','A frase reflete a filosofia rígida da mestra de Edward e Alphonse.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Izumi Curtis',TRUE,0),(gen_random_uuid(),q,'Olivier Armstrong',FALSE,1),(gen_random_uuid(),q,'Riza Hawkeye',FALSE,2),(gen_random_uuid(),q,'Pinako Rockbell',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'who_said','hard','Quem disse: "Eu comando este forte gelado com mão de ferro, porque fraqueza aqui significa morte certa"?','A frase reflete a filosofia militar implacável da comandante do extremo norte.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Olivier Armstrong',TRUE,0),(gen_random_uuid(),q,'Izumi Curtis',FALSE,1),(gen_random_uuid(),q,'King Bradley',FALSE,2),(gen_random_uuid(),q,'Riza Hawkeye',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'who_said','hard','Quem disse: "Eu sirvo a Fort Briggs com orgulho, mesmo carregando o peso da história entre Ishval e Amestris"?','A frase é dita pelo oficial ishvalita imediato de Olivier Armstrong.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Miles',TRUE,0),(gen_random_uuid(),q,'Buccaneer',FALSE,1),(gen_random_uuid(),q,'Falman',FALSE,2),(gen_random_uuid(),q,'Scar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'episode_arc','hard','Em qual arco Edward visita Fort Briggs pela primeira vez, conhecendo o oficial Miles e a rigorosa disciplina do exército do norte?','O arco aprofunda a relação entre Amestris e a etnia ishvalita.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Norte',TRUE,0),(gen_random_uuid(),q,'Arco de Lab Cinco',FALSE,1),(gen_random_uuid(),q,'Arco de Liore',FALSE,2),(gen_random_uuid(),q,'Arco de Xing',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','easy','Qual é o nome do soldado de Fort Briggs, corpulento e leal, que auxilia diretamente Olivier Armstrong em combate?','Ele demonstra força bruta impressionante mesmo sem usar alquimia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Buccaneer',TRUE,0),(gen_random_uuid(),q,'Miles',FALSE,1),(gen_random_uuid(),q,'Falman',FALSE,2),(gen_random_uuid(),q,'Havoc',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','medium','Qual é o nome do soldado jovem da equipe de Maes Hughes, parceiro de investigações em Central City?','Ele auxilia na proteção de Maria Ross durante seu período escondida.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Denny Brosh',TRUE,0),(gen_random_uuid(),q,'Jean Havoc',FALSE,1),(gen_random_uuid(),q,'Vato Falman',FALSE,2),(gen_random_uuid(),q,'Heymans Breda',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','medium','Qual é o nome da técnica de alquimia sem círculo de transmutação, dominada apenas por poucos alquimistas excepcionais como Edward?','Ela exige compreensão profunda das proporções e materiais envolvidos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Alquimia sem Círculo',TRUE,0),(gen_random_uuid(),q,'Transmutação Livre',FALSE,1),(gen_random_uuid(),q,'Alquimia Instintiva',FALSE,2),(gen_random_uuid(),q,'Fusão Direta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','hard','Qual é o nome do braço mecânico especial de Scar, criado a partir da pesquisa alquímica de seu irmão morto?','Ele combina destruição e reconstrução em um único movimento.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Braço de destruição e reconstrução',TRUE,0),(gen_random_uuid(),q,'Automail de Combate',FALSE,1),(gen_random_uuid(),q,'Braço da Vingança',FALSE,2),(gen_random_uuid(),q,'Prótese Sagrada',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','hard','Qual é o nome do processo pelo qual uma alma é selada em uma armadura vazia, usado para salvar Alphonse após o acidente?','O processo exige um círculo de transmutação de sangue no interior do objeto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Selamento de Alma por Sangue',TRUE,0),(gen_random_uuid(),q,'Transferência Espiritual',FALSE,1),(gen_random_uuid(),q,'Vínculo de Armadura',FALSE,2),(gen_random_uuid(),q,'Ancoragem Vital',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','impossible','Qual é o nome do exame estatal que candidatos precisam prestar para se tornarem Alquimistas Estatais reconhecidos pelo governo?','Edward se torna o mais jovem aprovado da história ao passar por ele ainda criança.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Exame de Alquimista Estatal',TRUE,0),(gen_random_uuid(),q,'Certificação Militar de Amestris',FALSE,1),(gen_random_uuid(),q,'Prova de Ishval',FALSE,2),(gen_random_uuid(),q,'Seleção de Central',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','impossible','Qual é o apelido dado a Edward Elric por ser o mais jovem alquimista estatal certificado da história de Amestris?','Ele recebe o título aos apenas doze anos de idade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Prodígio de Amestris',TRUE,0),(gen_random_uuid(),q,'Alquimista de Aço',FALSE,1),(gen_random_uuid(),q,'Herói de Resembool',FALSE,2),(gen_random_uuid(),q,'Gênio Precoce',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'fill_blank','medium','O soldado jovem da equipe de Maes Hughes, parceiro de investigações em Central City, se chama ___.','Ele auxilia na proteção de Maria Ross durante seu período escondida.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Denny Brosh',TRUE,0),(gen_random_uuid(),q,'Jean Havoc',FALSE,1),(gen_random_uuid(),q,'Vato Falman',FALSE,2),(gen_random_uuid(),q,'Heymans Breda',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'fill_blank','hard','O processo pelo qual uma alma é selada em uma armadura vazia, usado para salvar Alphonse após o acidente, se chama ___.','O processo exige um círculo de transmutação de sangue no interior do objeto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Selamento de Alma por Sangue',TRUE,0),(gen_random_uuid(),q,'Transferência Espiritual',FALSE,1),(gen_random_uuid(),q,'Vínculo de Armadura',FALSE,2),(gen_random_uuid(),q,'Ancoragem Vital',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'fill_blank','impossible','O exame estatal que candidatos precisam prestar para se tornarem Alquimistas Estatais reconhecidos pelo governo se chama ___.','Edward se torna o mais jovem aprovado da história ao passar por ele ainda criança.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Exame de Alquimista Estatal',TRUE,0),(gen_random_uuid(),q,'Certificação Militar de Amestris',FALSE,1),(gen_random_uuid(),q,'Prova de Ishval',FALSE,2),(gen_random_uuid(),q,'Seleção de Central',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','impossible','Qual é o nome do título honorário dado a Riza Hawkeye por sua precisão excepcional com armas de fogo?','Ela é conhecida informalmente por esse apelido entre os soldados de Central.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Olho de Falcão',TRUE,0),(gen_random_uuid(),q,'Atiradora de Elite',FALSE,1),(gen_random_uuid(),q,'Sombra Silenciosa',FALSE,2),(gen_random_uuid(),q,'Guardiã de Central',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_fmab,'text','impossible','Qual é o título honorário dado a Alex Louis Armstrong por sua técnica de alquimia baseada em artes marciais de família?','O apelido reflete o estilo de combate transmitido por gerações em sua linhagem.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Alquimista Forte',TRUE,0),(gen_random_uuid(),q,'Punho de Aço',FALSE,1),(gen_random_uuid(),q,'Guerreiro de Armstrong',FALSE,2),(gen_random_uuid(),q,'Titã de Central',FALSE,3);

END $$;
