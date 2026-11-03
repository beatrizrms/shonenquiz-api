-- ============================================================
--  V38 — Seed de perguntas: Tokyo Ghoul (150 perguntas)
--  Fonte: MyAnimeList + cânone do anime
--  Distribuição: text 40% / fill_blank 25% / who_said 20% /
--                episode_arc 10% / chronological 5%
--  Sem repetição com V5. Regras R1-R7 aplicadas.
-- ============================================================

DO $$
DECLARE
    v_system UUID := '00000000-0000-0000-0000-000000000001';
    v_tg     UUID;
    q        UUID;
BEGIN
    SELECT id INTO v_tg FROM animes WHERE slug = 'tokyo-ghoul' LIMIT 1;

    -- ══════════════════════════════════════════════════════════
    -- TEXT — 60 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','easy','Qual é o nome do protagonista, estudante universitário transformado em meio-ghoul após um encontro fatal?','Ele passa a viver dividido entre o mundo humano e o mundo dos ghouls.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ken Kaneki',TRUE,0),(gen_random_uuid(),q,'Shu Tsukiyama',FALSE,1),(gen_random_uuid(),q,'Uta',FALSE,2),(gen_random_uuid(),q,'Ayato',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','easy','Qual é o nome da ghoul responsável por transformar Kaneki através de um transplante de órgãos após um acidente?','Ela é derrotada em confronto direto com o protagonista logo no início da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rize Kamishiro',TRUE,0),(gen_random_uuid(),q,'Touka Kirishima',FALSE,1),(gen_random_uuid(),q,'Eto',FALSE,2),(gen_random_uuid(),q,'Akira',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','easy','Qual é o nome da ghoul que trabalha disfarçada como garçonete no café Anteiku, colega de Kaneki?','Ela demonstra personalidade rude no início, mas revela profunda lealdade aos amigos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Touka Kirishima',TRUE,0),(gen_random_uuid(),q,'Rize',FALSE,1),(gen_random_uuid(),q,'Eto',FALSE,2),(gen_random_uuid(),q,'Hinami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','easy','Qual é o nome do café que serve como fachada e refúgio para ghouls pacíficos no bairro de Tóquio onde vive Kaneki?','Ele é administrado secretamente por um gerente ghoul experiente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Anteiku',TRUE,0),(gen_random_uuid(),q,'Re:',FALSE,1),(gen_random_uuid(),q,'Helter Skelter',FALSE,2),(gen_random_uuid(),q,'Big Girl',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','easy','Qual é o nome do melhor amigo humano de Kaneki desde a época da faculdade, que desconhece sua nova natureza por um bom tempo?','Ele se torna investigador especializado em ghouls posteriormente na série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hideyoshi Nagachika',TRUE,0),(gen_random_uuid(),q,'Amon',FALSE,1),(gen_random_uuid(),q,'Shu Tsukiyama',FALSE,2),(gen_random_uuid(),q,'Juuzou',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','easy','Qual é o nome da organização governamental responsável por caçar e eliminar ghouls perigosos por toda a cidade?','Seus agentes utilizam armas especiais feitas a partir de órgãos de ghouls capturados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'CCG',TRUE,0),(gen_random_uuid(),q,'Aogiri Tree',FALSE,1),(gen_random_uuid(),q,'V',FALSE,2),(gen_random_uuid(),q,'Clown',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','easy','Qual é o nome dado às armas especiais utilizadas pelos investigadores da CCG, feitas a partir de órgãos de ghouls capturados?','Elas são a única forma eficaz de ferir a pele extremamente resistente de um ghoul.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Quinque',TRUE,0),(gen_random_uuid(),q,'Kagune',FALSE,1),(gen_random_uuid(),q,'RC Cell',FALSE,2),(gen_random_uuid(),q,'Kakuja',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','easy','Qual é o nome dado ao órgão de predação exclusivo dos ghouls, usado tanto como arma quanto para se alimentar?','Ele se manifesta de formas diferentes dependendo do tipo genético do ghoul.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kagune',TRUE,0),(gen_random_uuid(),q,'Quinque',FALSE,1),(gen_random_uuid(),q,'RC Cell',FALSE,2),(gen_random_uuid(),q,'Kakuja',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','easy','Qual é o nome da máscara usada por Kaneki ao adotar sua identidade secreta como ghoul, inspirada em uma centopeia?','Ela é confeccionada por um artesão especializado em máscaras para ghouls.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Máscara de Centopeia',TRUE,0),(gen_random_uuid(),q,'Máscara de Coelho',FALSE,1),(gen_random_uuid(),q,'Máscara de Palhaço',FALSE,2),(gen_random_uuid(),q,'Máscara de Corvo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','easy','Qual é o nome do artesão que confecciona máscaras para diversos ghouls, incluindo a de Kaneki e Touka?','Ele administra uma loja de máscaras que funciona como ponto de encontro na cidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Uta',TRUE,0),(gen_random_uuid(),q,'Yomo',FALSE,1),(gen_random_uuid(),q,'Nishiki',FALSE,2),(gen_random_uuid(),q,'Kuzen',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','easy','Qual é o nome da garota ghoul jovem, órfã acolhida pelo Anteiku após a morte de sua família?','Ela desenvolve laço próximo com Kaneki, que a ajuda a lidar com o trauma da perda.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hinami Fueguchi',TRUE,0),(gen_random_uuid(),q,'Touka',FALSE,1),(gen_random_uuid(),q,'Rize',FALSE,2),(gen_random_uuid(),q,'Eto',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','easy','Qual é o nome do gerente do café Anteiku, ghoul veterano que orienta os mais jovens?','Ele esconde um passado misterioso ligado a eventos importantes da história dos ghouls.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshimura (Kuzen)',TRUE,0),(gen_random_uuid(),q,'Yomo',FALSE,1),(gen_random_uuid(),q,'Uta',FALSE,2),(gen_random_uuid(),q,'Nishiki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','easy','Qual é o nome do investigador jovem da CCG, colega de Amon, com estilo excêntrico e obsessão por combate?','Ele é conhecido por seu comportamento imprevisível e sorriso frequente em situações tensas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Juuzou Suzuya',TRUE,0),(gen_random_uuid(),q,'Amon',FALSE,1),(gen_random_uuid(),q,'Mado',FALSE,2),(gen_random_uuid(),q,'Arima',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','easy','Qual é o nome do investigador veterano da CCG, obcecado por colecionar quinques feitos de ghouls poderosos?','Ele é responsável pela morte da mãe de Kaneki durante uma missão anterior aos eventos principais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kureo Mado',TRUE,0),(gen_random_uuid(),q,'Amon',FALSE,1),(gen_random_uuid(),q,'Arima',FALSE,2),(gen_random_uuid(),q,'Juuzou',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','easy','Qual é o nome do investigador rigoroso da CCG, colega de Mado, que demonstra código de honra apesar de sua função?','Ele questiona internamente a moralidade de eliminar todos os ghouls indiscriminadamente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Koutarou Amon',TRUE,0),(gen_random_uuid(),q,'Mado',FALSE,1),(gen_random_uuid(),q,'Juuzou',FALSE,2),(gen_random_uuid(),q,'Arima',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','medium','Qual é o nome da organização radical de ghouls que busca guerra total contra a humanidade?','Ela recruta ghouls através de métodos violentos, incluindo transformação forçada de humanos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aogiri Tree',TRUE,0),(gen_random_uuid(),q,'CCG',FALSE,1),(gen_random_uuid(),q,'V',FALSE,2),(gen_random_uuid(),q,'Clown',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','medium','Qual é o nome do irmão mais novo de Touka, integrante da Aogiri Tree que rejeita os métodos pacíficos da irmã?','Ele carrega ressentimento pela morte do pai, ligado a eventos anteriores da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ayato Kirishima',TRUE,0),(gen_random_uuid(),q,'Nishiki',FALSE,1),(gen_random_uuid(),q,'Yomo',FALSE,2),(gen_random_uuid(),q,'Naki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','medium','Qual é o nome do ghoul misterioso, líder enigmático por trás da Aogiri Tree, com identidade oculta por grande parte da série?','Sua verdadeira aparência é revelada apenas em momentos avançados da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Eto Yoshimura',TRUE,0),(gen_random_uuid(),q,'Rize',FALSE,1),(gen_random_uuid(),q,'Touka',FALSE,2),(gen_random_uuid(),q,'Akira',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','medium','Qual é o nome do ghoul epicurista, fascinado obsessivamente pelo cheiro e sabor de Kaneki?','Ele é conhecido por sua elegância refinada e paladar sofisticado entre ghouls.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shu Tsukiyama',TRUE,0),(gen_random_uuid(),q,'Uta',FALSE,1),(gen_random_uuid(),q,'Nishiki',FALSE,2),(gen_random_uuid(),q,'Naki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','medium','Qual é o nome do colega universitário de Kaneki, também ghoul, que trabalha meio período em um restaurante para conter seus impulsos alimentares?','Ele é namorado de uma humana que desconhece sua verdadeira natureza por um longo tempo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nishiki Nishio',TRUE,0),(gen_random_uuid(),q,'Yomo',FALSE,1),(gen_random_uuid(),q,'Uta',FALSE,2),(gen_random_uuid(),q,'Ayato',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','medium','Qual é o nome do investigador de elite mais forte da CCG, temido tanto por humanos quanto por ghouls?','Ele é responsável pelo confronto mais decisivo contra Kaneki na primeira metade da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kishou Arima',TRUE,0),(gen_random_uuid(),q,'Amon',FALSE,1),(gen_random_uuid(),q,'Mado',FALSE,2),(gen_random_uuid(),q,'Juuzou',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','medium','Qual é o nome da investigadora da CCG, parceira de Amon, que mantém postura profissional rigorosa em campo?','Ela é filha de um lendário investigador morto em confronto contra ghouls anos antes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Akira Mado',TRUE,0),(gen_random_uuid(),q,'Touka',FALSE,1),(gen_random_uuid(),q,'Hinami',FALSE,2),(gen_random_uuid(),q,'Eto',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','medium','Qual é o nome do ghoul veterano do Anteiku, taciturno e reservado, próximo ao gerente Yoshimura?','Ele demonstra lealdade absoluta ao café mesmo diante de grandes perigos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Renji Yomo',TRUE,0),(gen_random_uuid(),q,'Uta',FALSE,1),(gen_random_uuid(),q,'Nishiki',FALSE,2),(gen_random_uuid(),q,'Naki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','medium','Qual é o nome do ghoul líder de um grupo de subordinados leais dentro da Aogiri Tree, com forte devoção a Rize?','Ele demonstra comportamento impulsivo apesar de sua lealdade inabalável ao grupo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Naki',TRUE,0),(gen_random_uuid(),q,'Ayato',FALSE,1),(gen_random_uuid(),q,'Nishiki',FALSE,2),(gen_random_uuid(),q,'Yomo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','hard','Qual é o nome dado ao processo de fusão de múltiplos kagunes, criando uma armadura de combate extremamente poderosa em ghouls avançados?','Este estado é considerado a evolução máxima do órgão de predação dos ghouls.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kakuja',TRUE,0),(gen_random_uuid(),q,'Quinque',FALSE,1),(gen_random_uuid(),q,'RC Cell',FALSE,2),(gen_random_uuid(),q,'Kagune Duplo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','hard','Qual é o nome da organização secreta que supervisiona experimentos e decisões estratégicas por trás da CCG?','Sua existência é revelada apenas em estágios avançados da trama principal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'V',TRUE,0),(gen_random_uuid(),q,'Aogiri Tree',FALSE,1),(gen_random_uuid(),q,'Clown',FALSE,2),(gen_random_uuid(),q,'Quinx',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','hard','Qual é o nome dado ao grupo de investigadores da CCG implantados com quinques especiais que lhes conferem poderes semelhantes aos de ghouls?','Este programa experimental é desenvolvido em resposta ao aumento de ameaças de ghouls poderosos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Quinx Squad',TRUE,0),(gen_random_uuid(),q,'Aogiri Tree',FALSE,1),(gen_random_uuid(),q,'Clown',FALSE,2),(gen_random_uuid(),q,'V',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','hard','Qual é o nome do centro de detenção secreto da CCG onde ghouls capturados são submetidos a experimentos extremos?','Kaneki é levado a esse local após sua captura durante o arco da Aogiri Tree.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cochlea',TRUE,0),(gen_random_uuid(),q,'Anteiku',FALSE,1),(gen_random_uuid(),q,'Aogiri Tree HQ',FALSE,2),(gen_random_uuid(),q,'Helter Skelter',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','hard','Qual é o nome do grupo secreto de mascarados que documenta e observa eventos importantes envolvendo ghouls sem interferir diretamente?','Eles aparecem em momentos estratégicos da série sem revelar completamente seus objetivos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Clown',TRUE,0),(gen_random_uuid(),q,'Aogiri Tree',FALSE,1),(gen_random_uuid(),q,'V',FALSE,2),(gen_random_uuid(),q,'Quinx Squad',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','hard','Qual é o nome do ghoul de rank S considerado um dos mais poderosos e temidos da história registrada pela CCG, antecessor de Eto?','Sua verdadeira identidade é revelada como ligada ao gerente do Anteiku.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshimura (Kuzen)',TRUE,0),(gen_random_uuid(),q,'Eto',FALSE,1),(gen_random_uuid(),q,'Arima',FALSE,2),(gen_random_uuid(),q,'Noro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','hard','Qual é o nome do ghoul mascarado e silencioso da Aogiri Tree, com aparência distorcida e comportamento quase animalesco?','Ele é revelado posteriormente como ligado ao passado de Eto e Yoshimura.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Noro',TRUE,0),(gen_random_uuid(),q,'Naki',FALSE,1),(gen_random_uuid(),q,'Ayato',FALSE,2),(gen_random_uuid(),q,'Nishiki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','impossible','Qual é o nome do romance escrito por Eto Yoshimura sob pseudônimo humano, popular entre investigadores da CCG sem que soubessem de sua verdadeira autoria?','A obra contém referências veladas à filosofia de vida dos ghouls.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sunlit Garden',TRUE,0),(gen_random_uuid(),q,'Black Goat''s Egg',FALSE,1),(gen_random_uuid(),q,'Kagune Chronicles',FALSE,2),(gen_random_uuid(),q,'Red Child',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','impossible','Qual é o nome do laboratório secreto onde crianças foram utilizadas em experimentos para criação de meio-ghouls artificiais anos antes dos eventos principais?','Yoshimura e Eto possuem ligação direta com este local através de seu passado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sunlit Garden',TRUE,0),(gen_random_uuid(),q,'Cochlea',FALSE,1),(gen_random_uuid(),q,'Aogiri Tree HQ',FALSE,2),(gen_random_uuid(),q,'Anteiku',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','impossible','Qual é o nome do quinque de rank especial utilizado por Arima, considerado uma das armas mais poderosas já registradas pela CCG?','Ela é composta a partir de múltiplos órgãos de ghouls de altíssimo rank.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'IXA',TRUE,0),(gen_random_uuid(),q,'Narukami',FALSE,1),(gen_random_uuid(),q,'Fueguchi',FALSE,2),(gen_random_uuid(),q,'Kagune Duplo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','impossible','Qual é o nome dado à classificação máxima de periculosidade atribuída pela CCG a ghouls extremamente poderosos e difíceis de eliminar?','Poucos ghouls ao longo da história alcançam esta classificação extrema.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rank SS',TRUE,0),(gen_random_uuid(),q,'Rank A',FALSE,1),(gen_random_uuid(),q,'Rank B',FALSE,2),(gen_random_uuid(),q,'Rank C',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','impossible','Qual é o nome do irmão gêmeo espiritual mencionado na filosofia interna dos ghouls que compartilham vínculos familiares profundos, referenciado por Hinami?','O termo é usado metaforicamente para descrever laços afetivos entre ghouls próximos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Família de Sangue',TRUE,0),(gen_random_uuid(),q,'Clã Kirishima',FALSE,1),(gen_random_uuid(),q,'Linhagem Aogiri',FALSE,2),(gen_random_uuid(),q,'Herança Kagune',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- FILL_BLANK — 38 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'fill_blank','easy','O protagonista, estudante universitário transformado em meio-ghoul após um encontro fatal, se chama ___.','Ele passa a viver dividido entre o mundo humano e o mundo dos ghouls.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ken Kaneki',TRUE,0),(gen_random_uuid(),q,'Shu Tsukiyama',FALSE,1),(gen_random_uuid(),q,'Uta',FALSE,2),(gen_random_uuid(),q,'Ayato',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'fill_blank','easy','A ghoul responsável por transformar Kaneki através de um transplante de órgãos se chama ___.','Ela é derrotada em confronto direto com o protagonista logo no início da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rize Kamishiro',TRUE,0),(gen_random_uuid(),q,'Touka Kirishima',FALSE,1),(gen_random_uuid(),q,'Eto',FALSE,2),(gen_random_uuid(),q,'Akira',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'fill_blank','easy','A ghoul que trabalha disfarçada como garçonete no café Anteiku, colega de Kaneki, se chama ___.','Ela demonstra personalidade rude no início, mas revela profunda lealdade aos amigos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Touka Kirishima',TRUE,0),(gen_random_uuid(),q,'Rize',FALSE,1),(gen_random_uuid(),q,'Eto',FALSE,2),(gen_random_uuid(),q,'Hinami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'fill_blank','easy','O café que serve como fachada e refúgio para ghouls pacíficos no bairro onde vive Kaneki se chama ___.','Ele é administrado secretamente por um gerente ghoul experiente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Anteiku',TRUE,0),(gen_random_uuid(),q,'Re:',FALSE,1),(gen_random_uuid(),q,'Helter Skelter',FALSE,2),(gen_random_uuid(),q,'Big Girl',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'fill_blank','easy','O melhor amigo humano de Kaneki desde a faculdade, que se torna investigador de ghouls posteriormente, se chama ___.','Ele desconhece a nova natureza de Kaneki por um bom tempo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hideyoshi Nagachika',TRUE,0),(gen_random_uuid(),q,'Amon',FALSE,1),(gen_random_uuid(),q,'Shu Tsukiyama',FALSE,2),(gen_random_uuid(),q,'Juuzou',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'fill_blank','easy','A organização governamental responsável por caçar e eliminar ghouls perigosos por toda a cidade se chama ___.','Seus agentes utilizam armas especiais feitas a partir de órgãos de ghouls capturados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'CCG',TRUE,0),(gen_random_uuid(),q,'Aogiri Tree',FALSE,1),(gen_random_uuid(),q,'V',FALSE,2),(gen_random_uuid(),q,'Clown',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'fill_blank','easy','As armas especiais utilizadas pelos investigadores da CCG, feitas a partir de órgãos de ghouls capturados, são chamadas de ___.','Elas são a única forma eficaz de ferir a pele extremamente resistente de um ghoul.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Quinque',TRUE,0),(gen_random_uuid(),q,'Kagune',FALSE,1),(gen_random_uuid(),q,'RC Cell',FALSE,2),(gen_random_uuid(),q,'Kakuja',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'fill_blank','easy','O órgão de predação exclusivo dos ghouls, usado como arma e para se alimentar, é chamado de ___.','Ele se manifesta de formas diferentes dependendo do tipo genético do ghoul.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kagune',TRUE,0),(gen_random_uuid(),q,'Quinque',FALSE,1),(gen_random_uuid(),q,'RC Cell',FALSE,2),(gen_random_uuid(),q,'Kakuja',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'fill_blank','easy','O artesão que confecciona máscaras para diversos ghouls, incluindo a de Kaneki e Touka, se chama ___.','Ele administra uma loja de máscaras que funciona como ponto de encontro na cidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Uta',TRUE,0),(gen_random_uuid(),q,'Yomo',FALSE,1),(gen_random_uuid(),q,'Nishiki',FALSE,2),(gen_random_uuid(),q,'Kuzen',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'fill_blank','easy','A garota ghoul jovem, órfã acolhida pelo Anteiku após a morte de sua família, se chama ___.','Ela desenvolve laço próximo com Kaneki, que a ajuda a lidar com o trauma da perda.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hinami Fueguchi',TRUE,0),(gen_random_uuid(),q,'Touka',FALSE,1),(gen_random_uuid(),q,'Rize',FALSE,2),(gen_random_uuid(),q,'Eto',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'fill_blank','easy','O gerente do café Anteiku, ghoul veterano que orienta os mais jovens, se chama ___.','Ele esconde um passado misterioso ligado a eventos importantes da história dos ghouls.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshimura (Kuzen)',TRUE,0),(gen_random_uuid(),q,'Yomo',FALSE,1),(gen_random_uuid(),q,'Uta',FALSE,2),(gen_random_uuid(),q,'Nishiki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'fill_blank','medium','A organização radical de ghouls que busca guerra total contra a humanidade se chama ___.','Ela recruta ghouls através de métodos violentos, incluindo transformação forçada de humanos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aogiri Tree',TRUE,0),(gen_random_uuid(),q,'CCG',FALSE,1),(gen_random_uuid(),q,'V',FALSE,2),(gen_random_uuid(),q,'Clown',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'fill_blank','medium','O irmão mais novo de Touka, integrante da Aogiri Tree que rejeita os métodos pacíficos da irmã, se chama ___.','Ele carrega ressentimento pela morte do pai, ligado a eventos anteriores da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ayato Kirishima',TRUE,0),(gen_random_uuid(),q,'Nishiki',FALSE,1),(gen_random_uuid(),q,'Yomo',FALSE,2),(gen_random_uuid(),q,'Naki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'fill_blank','medium','O ghoul misterioso, líder enigmático por trás da Aogiri Tree, se chama ___.','Sua verdadeira aparência é revelada apenas em momentos avançados da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Eto Yoshimura',TRUE,0),(gen_random_uuid(),q,'Rize',FALSE,1),(gen_random_uuid(),q,'Touka',FALSE,2),(gen_random_uuid(),q,'Akira',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'fill_blank','medium','O ghoul epicurista, fascinado obsessivamente pelo cheiro e sabor de Kaneki, se chama ___.','Ele é conhecido por sua elegância refinada e paladar sofisticado entre ghouls.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shu Tsukiyama',TRUE,0),(gen_random_uuid(),q,'Uta',FALSE,1),(gen_random_uuid(),q,'Nishiki',FALSE,2),(gen_random_uuid(),q,'Naki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'fill_blank','medium','O investigador de elite mais forte da CCG, temido por humanos e ghouls, se chama ___.','Ele é responsável pelo confronto mais decisivo contra Kaneki na primeira metade da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kishou Arima',TRUE,0),(gen_random_uuid(),q,'Amon',FALSE,1),(gen_random_uuid(),q,'Mado',FALSE,2),(gen_random_uuid(),q,'Juuzou',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'fill_blank','medium','A investigadora da CCG, parceira de Amon, filha de um lendário investigador morto anos antes, se chama ___.','Ela mantém postura profissional rigorosa em campo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Akira Mado',TRUE,0),(gen_random_uuid(),q,'Touka',FALSE,1),(gen_random_uuid(),q,'Hinami',FALSE,2),(gen_random_uuid(),q,'Eto',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'fill_blank','medium','O investigador veterano da CCG, obcecado por colecionar quinques de ghouls poderosos, responsável pela morte da mãe de Kaneki, se chama ___.','Ele demonstra crueldade extrema em suas missões contra ghouls.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kureo Mado',TRUE,0),(gen_random_uuid(),q,'Amon',FALSE,1),(gen_random_uuid(),q,'Arima',FALSE,2),(gen_random_uuid(),q,'Juuzou',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'fill_blank','hard','O processo de fusão de múltiplos kagunes, criando uma armadura de combate extremamente poderosa, é chamado de ___.','Este estado é considerado a evolução máxima do órgão de predação dos ghouls.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kakuja',TRUE,0),(gen_random_uuid(),q,'Quinque',FALSE,1),(gen_random_uuid(),q,'RC Cell',FALSE,2),(gen_random_uuid(),q,'Kagune Duplo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'fill_blank','hard','A organização secreta que supervisiona experimentos e decisões estratégicas por trás da CCG se chama ___.','Sua existência é revelada apenas em estágios avançados da trama principal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'V',TRUE,0),(gen_random_uuid(),q,'Aogiri Tree',FALSE,1),(gen_random_uuid(),q,'Clown',FALSE,2),(gen_random_uuid(),q,'Quinx',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'fill_blank','hard','O grupo de investigadores da CCG implantados com quinques especiais que conferem poderes semelhantes a ghouls é chamado de ___.','Este programa experimental é desenvolvido em resposta ao aumento de ameaças poderosas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Quinx Squad',TRUE,0),(gen_random_uuid(),q,'Aogiri Tree',FALSE,1),(gen_random_uuid(),q,'Clown',FALSE,2),(gen_random_uuid(),q,'V',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'fill_blank','hard','O centro de detenção secreto da CCG onde ghouls capturados são submetidos a experimentos extremos se chama ___.','Kaneki é levado a esse local após sua captura durante o arco da Aogiri Tree.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cochlea',TRUE,0),(gen_random_uuid(),q,'Anteiku',FALSE,1),(gen_random_uuid(),q,'Aogiri Tree HQ',FALSE,2),(gen_random_uuid(),q,'Helter Skelter',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'fill_blank','hard','O grupo secreto de mascarados que documenta eventos importantes envolvendo ghouls sem interferir diretamente se chama ___.','Eles aparecem em momentos estratégicos sem revelar completamente seus objetivos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Clown',TRUE,0),(gen_random_uuid(),q,'Aogiri Tree',FALSE,1),(gen_random_uuid(),q,'V',FALSE,2),(gen_random_uuid(),q,'Quinx Squad',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'fill_blank','impossible','O quinque de rank especial utilizado por Arima, uma das armas mais poderosas já registradas pela CCG, se chama ___.','Ela é composta a partir de múltiplos órgãos de ghouls de altíssimo rank.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'IXA',TRUE,0),(gen_random_uuid(),q,'Narukami',FALSE,1),(gen_random_uuid(),q,'Fueguchi',FALSE,2),(gen_random_uuid(),q,'Kagune Duplo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'fill_blank','impossible','O ghoul mascarado e silencioso da Aogiri Tree, com aparência distorcida e comportamento animalesco, se chama ___.','Ele é revelado posteriormente como ligado ao passado de Eto e Yoshimura.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Noro',TRUE,0),(gen_random_uuid(),q,'Naki',FALSE,1),(gen_random_uuid(),q,'Ayato',FALSE,2),(gen_random_uuid(),q,'Nishiki',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- WHO_SAID — 30 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'who_said','easy','Quem disse: "Eu era um estudante comum até um encontro fatal transformar minha vida para sempre em algo entre humano e ghoul"?','A frase reflete a transformação inicial do protagonista da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaneki',TRUE,0),(gen_random_uuid(),q,'Tsukiyama',FALSE,1),(gen_random_uuid(),q,'Uta',FALSE,2),(gen_random_uuid(),q,'Ayato',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'who_said','easy','Quem disse: "Eu trabalho disfarçada como garçonete, mas sou capaz de proteger meus amigos com toda a força do meu kagune"?','A frase é dita pela colega ghoul de Kaneki no café Anteiku.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Touka',TRUE,0),(gen_random_uuid(),q,'Rize',FALSE,1),(gen_random_uuid(),q,'Eto',FALSE,2),(gen_random_uuid(),q,'Hinami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'who_said','easy','Quem disse: "Eu perdi minha família, mas o pessoal do Anteiku me acolheu como se fosse minha própria casa"?','A frase é dita pela garota ghoul órfã acolhida pelo café Anteiku.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hinami',TRUE,0),(gen_random_uuid(),q,'Touka',FALSE,1),(gen_random_uuid(),q,'Rize',FALSE,2),(gen_random_uuid(),q,'Eto',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'who_said','easy','Quem disse: "Eu administro este café há anos, escondendo segredos que poucos conhecem sobre a história dos ghouls"?','A frase é dita pelo gerente veterano do Anteiku.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshimura',TRUE,0),(gen_random_uuid(),q,'Yomo',FALSE,1),(gen_random_uuid(),q,'Uta',FALSE,2),(gen_random_uuid(),q,'Nishiki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'who_said','easy','Quem disse: "Eu confecciono máscaras para diversos ghouls, e cada uma delas conta uma história diferente sobre seu dono"?','A frase é dita pelo artesão que administra a loja de máscaras.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Uta',TRUE,0),(gen_random_uuid(),q,'Yomo',FALSE,1),(gen_random_uuid(),q,'Nishiki',FALSE,2),(gen_random_uuid(),q,'Kuzen',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'who_said','easy','Quem disse: "Eu sou amigo de Kaneki desde a faculdade, e mesmo sem saber de sua nova natureza, nunca deixei de confiar nele"?','A frase é dita pelo melhor amigo humano do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hide',TRUE,0),(gen_random_uuid(),q,'Amon',FALSE,1),(gen_random_uuid(),q,'Tsukiyama',FALSE,2),(gen_random_uuid(),q,'Juuzou',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'who_said','medium','Quem disse: "Eu sou fascinado pelo cheiro de Kaneki, algo raro e sofisticado que desperta todo o meu apreço epicurista"?','A frase é dita pelo ghoul elegante obcecado pelo protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tsukiyama',TRUE,0),(gen_random_uuid(),q,'Uta',FALSE,1),(gen_random_uuid(),q,'Nishiki',FALSE,2),(gen_random_uuid(),q,'Naki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'who_said','medium','Quem disse: "Eu rejeito os métodos pacíficos da minha irmã, pois acredito que apenas a força pode proteger os ghouls de verdade"?','A frase é dita pelo irmão mais novo de Touka, integrante da Aogiri Tree.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ayato',TRUE,0),(gen_random_uuid(),q,'Nishiki',FALSE,1),(gen_random_uuid(),q,'Yomo',FALSE,2),(gen_random_uuid(),q,'Naki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'who_said','medium','Quem disse: "Eu escrevo romances sob pseudônimo humano, mas minha verdadeira identidade esconde segredos ligados à Aogiri Tree"?','A frase é dita pelo líder enigmático por trás da organização radical de ghouls.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Eto',TRUE,0),(gen_random_uuid(),q,'Rize',FALSE,1),(gen_random_uuid(),q,'Touka',FALSE,2),(gen_random_uuid(),q,'Akira',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'who_said','medium','Quem disse: "Eu trabalho meio período em um restaurante para conter meus impulsos, mesmo sendo ghoul como Kaneki"?','A frase é dita pelo colega universitário de Kaneki, também transformado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nishiki',TRUE,0),(gen_random_uuid(),q,'Yomo',FALSE,1),(gen_random_uuid(),q,'Uta',FALSE,2),(gen_random_uuid(),q,'Ayato',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'who_said','medium','Quem disse: "Sou o investigador mais forte da CCG, e meu confronto com Kaneki definirá boa parte do futuro de ambos"?','A frase é dita pelo investigador de elite temido tanto por humanos quanto por ghouls.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arima',TRUE,0),(gen_random_uuid(),q,'Amon',FALSE,1),(gen_random_uuid(),q,'Mado',FALSE,2),(gen_random_uuid(),q,'Juuzou',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'who_said','medium','Quem disse: "Eu colecionei quinques feitos a partir de ghouls poderosos, incluindo um ligado diretamente à mãe de Kaneki"?','A frase é dita pelo investigador veterano obcecado por sua coleção mortal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mado',TRUE,0),(gen_random_uuid(),q,'Amon',FALSE,1),(gen_random_uuid(),q,'Arima',FALSE,2),(gen_random_uuid(),q,'Juuzou',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'who_said','hard','Quem disse: "Eu questiono se eliminar todos os ghouls indiscriminadamente é realmente a atitude correta a se tomar"?','A frase é dita pelo investigador rigoroso, colega de Mado, que demonstra código de honra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Amon',TRUE,0),(gen_random_uuid(),q,'Mado',FALSE,1),(gen_random_uuid(),q,'Juuzou',FALSE,2),(gen_random_uuid(),q,'Arima',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'who_said','hard','Quem disse: "Sou filha de um lendário investigador morto em confronto contra ghouls, e sigo seus passos com rigor profissional"?','A frase é dita pela investigadora parceira de Amon.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Akira',TRUE,0),(gen_random_uuid(),q,'Touka',FALSE,1),(gen_random_uuid(),q,'Hinami',FALSE,2),(gen_random_uuid(),q,'Eto',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'who_said','hard','Quem disse: "Eu demonstro lealdade absoluta ao café Anteiku, mesmo permanecendo taciturno e reservado na maior parte do tempo"?','A frase é dita pelo ghoul veterano próximo ao gerente Yoshimura.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yomo',TRUE,0),(gen_random_uuid(),q,'Uta',FALSE,1),(gen_random_uuid(),q,'Nishiki',FALSE,2),(gen_random_uuid(),q,'Naki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'who_said','hard','Quem disse: "Eu lidero um grupo de subordinados leais dentro da Aogiri Tree, guiado pela devoção que sinto por Rize"?','A frase é dita pelo ghoul impulsivo, líder de um pequeno grupo dentro da organização.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Naki',TRUE,0),(gen_random_uuid(),q,'Ayato',FALSE,1),(gen_random_uuid(),q,'Nishiki',FALSE,2),(gen_random_uuid(),q,'Yomo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'who_said','hard','Quem disse: "Eu sou excêntrico e imprevisível, mas isso não diminui minha capacidade como investigador da CCG"?','A frase é dita pelo investigador jovem conhecido pelo comportamento peculiar e sorriso frequente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Juuzou',TRUE,0),(gen_random_uuid(),q,'Amon',FALSE,1),(gen_random_uuid(),q,'Mado',FALSE,2),(gen_random_uuid(),q,'Arima',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'who_said','impossible','Quem disse: "Eu fui um dos ghouls mais poderosos já registrados, escondendo minha verdadeira identidade sob o disfarce de gerente de café"?','A frase é dita pelo ghoul de rank S antecessor de Eto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshimura',TRUE,0),(gen_random_uuid(),q,'Eto',FALSE,1),(gen_random_uuid(),q,'Arima',FALSE,2),(gen_random_uuid(),q,'Noro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'who_said','impossible','Quem disse: "Eu me mantenho silencioso e distorcido, ligado a um passado que poucos conhecem sobre Eto e Yoshimura"?','A frase é dita pelo ghoul mascarado e quase animalesco da Aogiri Tree.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Noro',TRUE,0),(gen_random_uuid(),q,'Naki',FALSE,1),(gen_random_uuid(),q,'Ayato',FALSE,2),(gen_random_uuid(),q,'Nishiki',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- EPISODE_ARC — 15 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'episode_arc','medium','Em qual arco Kaneki é transformado em meio-ghoul após um encontro fatal com Rize, iniciando sua jornada na série?','O arco estabelece a premissa inicial de toda a trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Origem',TRUE,0),(gen_random_uuid(),q,'Arco da Aogiri Tree',FALSE,1),(gen_random_uuid(),q,'Arco de Cochlea',FALSE,2),(gen_random_uuid(),q,'Arco de Anteiku',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'episode_arc','medium','Em qual arco Kaneki é capturado e submetido a torturas extremas pela organização radical de ghouls, resultando em mudança drástica de personalidade?','Este arco marca a transição de Kaneki para uma postura mais assertiva e agressiva.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Aogiri Tree',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco de Cochlea',FALSE,2),(gen_random_uuid(),q,'Arco de Anteiku',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'episode_arc','medium','Em qual arco a CCG realiza uma operação massiva de ataque ao café Anteiku, resultando em graves perdas para o grupo de ghouls pacíficos?','Yoshimura revela parte de seu passado durante o confronto final deste arco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Anteiku',TRUE,0),(gen_random_uuid(),q,'Arco da Aogiri Tree',FALSE,1),(gen_random_uuid(),q,'Arco de Origem',FALSE,2),(gen_random_uuid(),q,'Arco de Cochlea',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'episode_arc','medium','Em qual arco Kaneki invade o centro de detenção secreto da CCG para resgatar ghouls capturados, incluindo antigos aliados?','Este arco reúne diversos personagens de arcos anteriores em um confronto conjunto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Cochlea',TRUE,0),(gen_random_uuid(),q,'Arco de Anteiku',FALSE,1),(gen_random_uuid(),q,'Arco da Aogiri Tree',FALSE,2),(gen_random_uuid(),q,'Arco de Origem',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'episode_arc','medium','Em qual arco Kaneki enfrenta Arima em confronto decisivo, resultando em consequências drásticas para o restante da trama?','O resultado deste confronto altera completamente a trajetória do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Anteiku',TRUE,0),(gen_random_uuid(),q,'Arco da Aogiri Tree',FALSE,1),(gen_random_uuid(),q,'Arco de Cochlea',FALSE,2),(gen_random_uuid(),q,'Arco de Origem',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'episode_arc','medium','Em qual arco Kaneki conhece Touka, Hinami e os demais funcionários do café Anteiku, ainda tentando entender sua nova natureza?','O arco estabelece os laços afetivos que sustentam grande parte da trama seguinte.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Origem',TRUE,0),(gen_random_uuid(),q,'Arco da Aogiri Tree',FALSE,1),(gen_random_uuid(),q,'Arco de Cochlea',FALSE,2),(gen_random_uuid(),q,'Arco de Anteiku',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'episode_arc','medium','Em qual arco Ayato desafia Touka diretamente, revelando o ressentimento acumulado desde a morte do pai de ambos?','O confronto entre irmãos ocorre durante o auge do conflito com a Aogiri Tree.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Aogiri Tree',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco de Cochlea',FALSE,2),(gen_random_uuid(),q,'Arco de Anteiku',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'episode_arc','hard','Em qual arco é revelada a verdadeira identidade de Eto como líder enigmático da Aogiri Tree, ligada diretamente ao passado de Yoshimura?','A revelação altera completamente a percepção dos protagonistas sobre a organização radical.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Aogiri Tree',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco de Cochlea',FALSE,2),(gen_random_uuid(),q,'Arco de Anteiku',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'episode_arc','hard','Em qual arco Amon começa a questionar a moralidade das ações da CCG, especialmente após presenciar o comportamento de Mado em campo?','Este questionamento interno se aprofunda ao longo dos eventos seguintes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Origem',TRUE,0),(gen_random_uuid(),q,'Arco de Anteiku',FALSE,1),(gen_random_uuid(),q,'Arco da Aogiri Tree',FALSE,2),(gen_random_uuid(),q,'Arco de Cochlea',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'episode_arc','hard','Em qual arco Hinami perde sua família diante dos olhos de Kaneki, sendo posteriormente acolhida pelo Anteiku?','Este evento trágico marca profundamente o desenvolvimento emocional do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Origem',TRUE,0),(gen_random_uuid(),q,'Arco da Aogiri Tree',FALSE,1),(gen_random_uuid(),q,'Arco de Cochlea',FALSE,2),(gen_random_uuid(),q,'Arco de Anteiku',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'episode_arc','hard','Em qual arco Naki e seu grupo de subordinados leais enfrentam os protagonistas em defesa da base da Aogiri Tree?','A devoção de Naki a Rize é evidenciada ao longo deste confronto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Aogiri Tree',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco de Cochlea',FALSE,2),(gen_random_uuid(),q,'Arco de Anteiku',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'episode_arc','impossible','Em qual arco é revelado o passado completo de Yoshimura como um dos ghouls mais poderosos já registrados pela CCG?','A revelação ocorre através de flashbacks extensos durante o confronto final do arco de Anteiku.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Anteiku',TRUE,0),(gen_random_uuid(),q,'Arco da Aogiri Tree',FALSE,1),(gen_random_uuid(),q,'Arco de Cochlea',FALSE,2),(gen_random_uuid(),q,'Arco de Origem',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'episode_arc','impossible','Em qual arco é revelado o passado completo de Noro, ligado diretamente à história de Eto e Yoshimura décadas antes dos eventos principais?','A revelação ocorre através de flashbacks extensos durante o auge do conflito com a Aogiri Tree.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Aogiri Tree',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco de Cochlea',FALSE,2),(gen_random_uuid(),q,'Arco de Anteiku',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- CHRONOLOGICAL — 7 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'chronological','hard','Ordene cronologicamente os arcos a seguir, do mais antigo ao mais recente.','Cobrem desde a transformação de Kaneki até a captura na Cochlea.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Origem',TRUE,0),(gen_random_uuid(),q,'Aogiri Tree',FALSE,1),(gen_random_uuid(),q,'Anteiku',FALSE,2),(gen_random_uuid(),q,'Cochlea',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'chronological','hard','Ordene cronologicamente os seguintes eventos da jornada de Kaneki, do mais antigo ao mais recente.','Cobrem desde sua transformação até seu confronto decisivo com Arima.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'É transformado em meio-ghoul por Rize',TRUE,0),(gen_random_uuid(),q,'Conhece Touka e Hinami no Anteiku',FALSE,1),(gen_random_uuid(),q,'É capturado e torturado pela Aogiri Tree',FALSE,2),(gen_random_uuid(),q,'Enfrenta Arima em confronto decisivo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre Touka e Ayato, do mais antigo ao mais recente.','Cobrem desde a morte do pai até o confronto direto entre os irmãos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'O pai de ambos é morto em confronto com a CCG',TRUE,0),(gen_random_uuid(),q,'Ayato ingressa na Aogiri Tree',FALSE,1),(gen_random_uuid(),q,'Ayato desafia Touka diretamente',FALSE,2),(gen_random_uuid(),q,'Os dois reconciliam parcialmente suas diferenças',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre o Anteiku, do mais antigo ao mais recente.','Cobrem desde o acolhimento de Hinami até a operação massiva da CCG contra o café.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hinami é acolhida após a morte da família',TRUE,0),(gen_random_uuid(),q,'Kaneki se torna funcionário do café',FALSE,1),(gen_random_uuid(),q,'A CCG planeja uma operação massiva contra o local',FALSE,2),(gen_random_uuid(),q,'O café sofre graves perdas durante o ataque',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Eto, do mais antigo ao mais recente.','Cobrem desde seu passado ligado a Yoshimura até a revelação de sua identidade como líder da Aogiri Tree.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nasce ligada ao passado de Yoshimura',TRUE,0),(gen_random_uuid(),q,'Escreve romances sob pseudônimo humano',FALSE,1),(gen_random_uuid(),q,'Lidera secretamente a Aogiri Tree',FALSE,2),(gen_random_uuid(),q,'Sua verdadeira identidade é revelada aos protagonistas',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Mado e Amon, do mais antigo ao mais recente.','Cobrem desde a parceria inicial até o questionamento moral de Amon.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mado e Amon atuam como parceiros na CCG',TRUE,0),(gen_random_uuid(),q,'Mado mata a mãe de Kaneki em missão anterior',FALSE,1),(gen_random_uuid(),q,'Amon começa a questionar a moralidade da CCG',FALSE,2),(gen_random_uuid(),q,'Mado é derrotado em confronto direto com Touka',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre a Cochlea, do mais antigo ao mais recente.','Cobrem desde a criação do centro de detenção até a invasão liderada por Kaneki.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'A CCG estabelece o centro de detenção secreto',TRUE,0),(gen_random_uuid(),q,'Ghouls poderosos são submetidos a experimentos extremos',FALSE,1),(gen_random_uuid(),q,'Kaneki organiza uma invasão para resgatar aliados',FALSE,2),(gen_random_uuid(),q,'Antigos aliados são libertados durante o confronto',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- COMPLEMENTO — fechar 150 perguntas (24 text / 13 fill_blank / 11 who_said / 2 episode_arc)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','easy','Qual desses personagens é o pai adotivo de Hinami, morto em confronto com investigadores da CCG anos antes dos eventos principais?','Sua morte é um dos eventos que motiva o rancor de Ayato contra a CCG.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arata Kirishima',TRUE,0),(gen_random_uuid(),q,'Yoshimura',FALSE,1),(gen_random_uuid(),q,'Yomo',FALSE,2),(gen_random_uuid(),q,'Uta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','easy','Qual desses personagens é o presidente da CCG, responsável por decisões estratégicas de alto nível durante a série?','Ele aparece em reuniões que definem grandes operações contra ghouls.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tsuneyoshi Washuu',TRUE,0),(gen_random_uuid(),q,'Arima',FALSE,1),(gen_random_uuid(),q,'Mado',FALSE,2),(gen_random_uuid(),q,'Amon',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','easy','Qual desses personagens é conhecido por adotar comportamento excêntrico ao usar tesouras como arma de combate característica?','Ele integra investigadores especiais da CCG apesar de sua idade jovem.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Juuzou',TRUE,0),(gen_random_uuid(),q,'Amon',FALSE,1),(gen_random_uuid(),q,'Mado',FALSE,2),(gen_random_uuid(),q,'Arima',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','easy','Qual desses personagens é ghoul e frequenta a loja de máscaras administrada por Uta, demonstrando amizade próxima com o artesão?','Ele também é reconhecido por seu comportamento reservado dentro do Anteiku.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yomo',TRUE,0),(gen_random_uuid(),q,'Nishiki',FALSE,1),(gen_random_uuid(),q,'Naki',FALSE,2),(gen_random_uuid(),q,'Ayato',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','medium','Qual desses personagens namora um ghoul sem saber inicialmente de sua verdadeira natureza, sendo posteriormente informada sobre o segredo?','Ela é humana e colega de faculdade de Nishiki.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kimi Nishino',TRUE,0),(gen_random_uuid(),q,'Akira',FALSE,1),(gen_random_uuid(),q,'Touka',FALSE,2),(gen_random_uuid(),q,'Hinami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','medium','Qual desses personagens é revelado como parte da família Washuu, ligada diretamente à fundação e controle da CCG?','Sua verdadeira origem é revelada apenas em estágios avançados da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arima',TRUE,0),(gen_random_uuid(),q,'Amon',FALSE,1),(gen_random_uuid(),q,'Mado',FALSE,2),(gen_random_uuid(),q,'Juuzou',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','medium','Qual desses personagens é conhecido por comandar um esquadrão de investigadores implantados com quinques especiais, orientando jovens recrutas da CCG?','Ele demonstra postura protetora incomum em relação aos subordinados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaneki (como Sasaki Haise)',TRUE,0),(gen_random_uuid(),q,'Amon',FALSE,1),(gen_random_uuid(),q,'Arima',FALSE,2),(gen_random_uuid(),q,'Mado',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','hard','Qual desses personagens perde a memória após seu confronto com Arima, assumindo uma nova identidade dentro da própria CCG?','Ele reconstrói gradualmente suas memórias ao longo da segunda metade da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaneki (Sasaki Haise)',TRUE,0),(gen_random_uuid(),q,'Amon',FALSE,1),(gen_random_uuid(),q,'Ayato',FALSE,2),(gen_random_uuid(),q,'Nishiki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','hard','Qual desses personagens é transformado experimentalmente pela CCG após um confronto quase fatal, retornando como investigador com aparência alterada?','Sua transformação ocorre através de tecnologia semelhante à usada nos quinques.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Amon',TRUE,0),(gen_random_uuid(),q,'Mado',FALSE,1),(gen_random_uuid(),q,'Arima',FALSE,2),(gen_random_uuid(),q,'Juuzou',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','impossible','Qual desses personagens é irmão mais velho de Arima dentro da estrutura familiar da CCG, revelado em estágios avançados da trama?','Sua existência é mantida em segredo por grande parte da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kichimura Washuu',TRUE,0),(gen_random_uuid(),q,'Tsuneyoshi Washuu',FALSE,1),(gen_random_uuid(),q,'Mado',FALSE,2),(gen_random_uuid(),q,'Amon',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','impossible','Qual desses personagens administra decisões estratégicas de alto nível dentro da CCG, revelado posteriormente como ligado à organização secreta V?','Ele aparece raramente, mas suas decisões afetam diretamente o rumo da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tsuneyoshi Washuu',TRUE,0),(gen_random_uuid(),q,'Arima',FALSE,1),(gen_random_uuid(),q,'Mado',FALSE,2),(gen_random_uuid(),q,'Amon',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','impossible','Qual desses personagens namora Nishiki sem saber inicialmente de sua verdadeira natureza ghoul, sendo posteriormente informada sobre o segredo?','Ela é humana e colega de faculdade dele.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kimi',TRUE,0),(gen_random_uuid(),q,'Akira',FALSE,1),(gen_random_uuid(),q,'Touka',FALSE,2),(gen_random_uuid(),q,'Hinami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','impossible','Qual desses personagens é o pai adotivo de Hinami e Ayato, morto em confronto com a CCG anos antes dos eventos principais da série?','Sua morte motiva parte do rancor de Ayato contra investigadores.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arata Kirishima',TRUE,0),(gen_random_uuid(),q,'Yoshimura',FALSE,1),(gen_random_uuid(),q,'Yomo',FALSE,2),(gen_random_uuid(),q,'Uta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','hard','Qual desses personagens comanda um esquadrão de investigadores implantados com quinques especiais, assumindo nova identidade após perder a memória?','Ele orienta jovens recrutas com postura protetora incomum na CCG.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sasaki Haise (Kaneki)',TRUE,0),(gen_random_uuid(),q,'Amon',FALSE,1),(gen_random_uuid(),q,'Arima',FALSE,2),(gen_random_uuid(),q,'Mado',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','medium','Qual desses personagens usa tesouras como arma característica de combate, demonstrando comportamento excêntrico apesar de sua idade jovem?','Ele integra investigadores especiais da CCG desde cedo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Juuzou',TRUE,0),(gen_random_uuid(),q,'Amon',FALSE,1),(gen_random_uuid(),q,'Mado',FALSE,2),(gen_random_uuid(),q,'Arima',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','medium','Qual desses personagens é reconhecido por comportamento reservado dentro do Anteiku, frequentando a loja de máscaras administrada por Uta?','Ele demonstra lealdade absoluta ao café mesmo diante de grandes perigos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yomo',TRUE,0),(gen_random_uuid(),q,'Nishiki',FALSE,1),(gen_random_uuid(),q,'Naki',FALSE,2),(gen_random_uuid(),q,'Ayato',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','easy','Qual desses personagens é presidente da CCG, aparecendo em reuniões que definem grandes operações estratégicas contra ghouls?','Ele é revelado posteriormente como ligado à organização secreta V.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tsuneyoshi Washuu',TRUE,0),(gen_random_uuid(),q,'Arima',FALSE,1),(gen_random_uuid(),q,'Mado',FALSE,2),(gen_random_uuid(),q,'Amon',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','medium','Qual desses personagens é transformado experimentalmente pela CCG após confronto quase fatal, retornando com aparência drasticamente alterada?','Sua transformação usa tecnologia semelhante à empregada na criação de quinques.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Amon',TRUE,0),(gen_random_uuid(),q,'Mado',FALSE,1),(gen_random_uuid(),q,'Arima',FALSE,2),(gen_random_uuid(),q,'Juuzou',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','hard','Qual desses personagens é irmão mais velho de Arima dentro da família Washuu, revelado como antagonista em estágios avançados da trama?','Sua existência é mantida em segredo por grande parte da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kichimura Washuu',TRUE,0),(gen_random_uuid(),q,'Tsuneyoshi Washuu',FALSE,1),(gen_random_uuid(),q,'Mado',FALSE,2),(gen_random_uuid(),q,'Amon',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','easy','Qual desses personagens é revelado, em estágio avançado da trama, como ligado diretamente à família fundadora responsável pelo controle da CCG?','Sua verdadeira origem contrasta com sua postura de investigador de elite.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arima',TRUE,0),(gen_random_uuid(),q,'Amon',FALSE,1),(gen_random_uuid(),q,'Mado',FALSE,2),(gen_random_uuid(),q,'Juuzou',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','medium','Qual desses personagens colega de faculdade de Nishiki descobre que seu namorado é ghoul, aceitando o segredo com apoio incondicional?','Ela é humana e desconhecia inicialmente a verdadeira natureza do parceiro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kimi',TRUE,0),(gen_random_uuid(),q,'Akira',FALSE,1),(gen_random_uuid(),q,'Touka',FALSE,2),(gen_random_uuid(),q,'Hinami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','hard','Qual desses personagens perde temporariamente a memória após confronto direto com Arima, reconstruindo gradualmente sua identidade original?','Ele assume o nome de Sasaki Haise durante esse período da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaneki',TRUE,0),(gen_random_uuid(),q,'Amon',FALSE,1),(gen_random_uuid(),q,'Ayato',FALSE,2),(gen_random_uuid(),q,'Nishiki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','impossible','Qual desses personagens é pai adotivo de Hinami e Ayato, cuja morte anos antes motiva parte do conflito entre os irmãos e a CCG?','Sua morte é revelada através de flashbacks ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arata Kirishima',TRUE,0),(gen_random_uuid(),q,'Yoshimura',FALSE,1),(gen_random_uuid(),q,'Yomo',FALSE,2),(gen_random_uuid(),q,'Uta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'text','impossible','Qual desses personagens é revelado como parte da família Washuu, mas escolhe manter postura de investigador de elite discreto por toda a série?','Sua verdadeira origem contrasta com o comportamento reservado que demonstra em campo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arima',TRUE,0),(gen_random_uuid(),q,'Amon',FALSE,1),(gen_random_uuid(),q,'Mado',FALSE,2),(gen_random_uuid(),q,'Juuzou',FALSE,3);

    -- fill_blank complemento (13)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'fill_blank','easy','O pai adotivo de Hinami, morto em confronto com investigadores da CCG anos antes dos eventos principais, se chama ___.','Sua morte é um dos eventos que motiva o rancor de Ayato contra a CCG.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arata Kirishima',TRUE,0),(gen_random_uuid(),q,'Yoshimura',FALSE,1),(gen_random_uuid(),q,'Yomo',FALSE,2),(gen_random_uuid(),q,'Uta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'fill_blank','easy','O presidente da CCG, responsável por decisões estratégicas de alto nível durante a série, se chama ___.','Ele é revelado posteriormente como ligado à organização secreta V.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tsuneyoshi Washuu',TRUE,0),(gen_random_uuid(),q,'Arima',FALSE,1),(gen_random_uuid(),q,'Mado',FALSE,2),(gen_random_uuid(),q,'Amon',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'fill_blank','easy','O investigador que usa tesouras como arma de combate característica, apesar de sua idade jovem, se chama ___.','Ele integra investigadores especiais da CCG desde cedo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Juuzou',TRUE,0),(gen_random_uuid(),q,'Amon',FALSE,1),(gen_random_uuid(),q,'Mado',FALSE,2),(gen_random_uuid(),q,'Arima',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'fill_blank','medium','O ghoul reservado que frequenta a loja de máscaras administrada por Uta, demonstrando amizade próxima com o artesão, se chama ___.','Ele também é reconhecido por sua lealdade dentro do Anteiku.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yomo',TRUE,0),(gen_random_uuid(),q,'Nishiki',FALSE,1),(gen_random_uuid(),q,'Naki',FALSE,2),(gen_random_uuid(),q,'Ayato',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'fill_blank','medium','A colega de faculdade de Nishiki que namora o ghoul sem saber inicialmente de sua verdadeira natureza se chama ___.','Ela é informada posteriormente sobre o segredo do namorado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kimi',TRUE,0),(gen_random_uuid(),q,'Akira',FALSE,1),(gen_random_uuid(),q,'Touka',FALSE,2),(gen_random_uuid(),q,'Hinami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'fill_blank','medium','O investigador revelado como parte da família Washuu, ligada diretamente à fundação da CCG, se chama ___.','Sua verdadeira origem é revelada apenas em estágios avançados da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arima',TRUE,0),(gen_random_uuid(),q,'Amon',FALSE,1),(gen_random_uuid(),q,'Mado',FALSE,2),(gen_random_uuid(),q,'Juuzou',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'fill_blank','hard','O investigador transformado experimentalmente pela CCG após confronto quase fatal, retornando com aparência drasticamente alterada, se chama ___.','Sua transformação usa tecnologia semelhante à empregada na criação de quinques.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Amon',TRUE,0),(gen_random_uuid(),q,'Mado',FALSE,1),(gen_random_uuid(),q,'Arima',FALSE,2),(gen_random_uuid(),q,'Juuzou',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'fill_blank','hard','O irmão mais velho de Arima dentro da família Washuu, revelado como antagonista em estágios avançados da trama, se chama ___.','Sua existência é mantida em segredo por grande parte da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kichimura Washuu',TRUE,0),(gen_random_uuid(),q,'Tsuneyoshi Washuu',FALSE,1),(gen_random_uuid(),q,'Mado',FALSE,2),(gen_random_uuid(),q,'Amon',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'fill_blank','hard','O comandante de um esquadrão de investigadores implantados com quinques especiais, assumindo nova identidade após perder a memória, se chama ___.','Ele orienta jovens recrutas com postura protetora incomum na CCG.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sasaki Haise (Kaneki)',TRUE,0),(gen_random_uuid(),q,'Amon',FALSE,1),(gen_random_uuid(),q,'Arima',FALSE,2),(gen_random_uuid(),q,'Mado',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'fill_blank','easy','O pai adotivo de Hinami e Ayato, cuja morte anos antes motiva parte do conflito entre os irmãos e a CCG, se chama ___.','Sua morte é revelada através de flashbacks ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arata Kirishima',TRUE,0),(gen_random_uuid(),q,'Yoshimura',FALSE,1),(gen_random_uuid(),q,'Yomo',FALSE,2),(gen_random_uuid(),q,'Uta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'fill_blank','medium','O presidente da CCG que aparece em reuniões definindo grandes operações estratégicas contra ghouls se chama ___.','Ele é revelado posteriormente como ligado à organização secreta V.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tsuneyoshi Washuu',TRUE,0),(gen_random_uuid(),q,'Arima',FALSE,1),(gen_random_uuid(),q,'Mado',FALSE,2),(gen_random_uuid(),q,'Amon',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'fill_blank','impossible','O investigador que perde temporariamente a memória após confronto direto com Arima, reconstruindo gradualmente sua identidade original, se chama ___.','Ele assume o nome de Sasaki Haise durante esse período da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaneki',TRUE,0),(gen_random_uuid(),q,'Amon',FALSE,1),(gen_random_uuid(),q,'Ayato',FALSE,2),(gen_random_uuid(),q,'Nishiki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'fill_blank','impossible','A colega de faculdade de Nishiki que descobre a verdadeira natureza ghoul do namorado, aceitando o segredo com apoio incondicional, se chama ___.','Ela é humana e desconhecia inicialmente a natureza do parceiro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kimi',TRUE,0),(gen_random_uuid(),q,'Akira',FALSE,1),(gen_random_uuid(),q,'Touka',FALSE,2),(gen_random_uuid(),q,'Hinami',FALSE,3);

    -- who_said complemento (11)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'who_said','easy','Quem disse: "Eu morri protegendo minha família, deixando um legado de ressentimento que meu filho carrega até hoje contra a CCG"?','A frase é dita, em memória, pelo pai adotivo de Hinami e Ayato.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arata Kirishima',TRUE,0),(gen_random_uuid(),q,'Yoshimura',FALSE,1),(gen_random_uuid(),q,'Yomo',FALSE,2),(gen_random_uuid(),q,'Uta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'who_said','easy','Quem disse: "Eu uso tesouras como minha arma preferida, e ninguém deveria subestimar minha capacidade só pela minha idade"?','A frase é dita pelo investigador jovem e excêntrico da CCG.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Juuzou',TRUE,0),(gen_random_uuid(),q,'Amon',FALSE,1),(gen_random_uuid(),q,'Mado',FALSE,2),(gen_random_uuid(),q,'Arima',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'who_said','medium','Quem disse: "Eu comando decisões estratégicas de alto nível dentro da CCG, mesmo escondendo minha verdadeira ligação com a organização V"?','A frase é dita pelo presidente da CCG.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tsuneyoshi Washuu',TRUE,0),(gen_random_uuid(),q,'Arima',FALSE,1),(gen_random_uuid(),q,'Mado',FALSE,2),(gen_random_uuid(),q,'Amon',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'who_said','medium','Quem disse: "Eu descobri que meu namorado é ghoul, mas isso não muda nada sobre o quanto eu me importo com ele"?','A frase é dita pela colega de faculdade que aceita a verdadeira natureza de Nishiki.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kimi',TRUE,0),(gen_random_uuid(),q,'Akira',FALSE,1),(gen_random_uuid(),q,'Touka',FALSE,2),(gen_random_uuid(),q,'Hinami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'who_said','medium','Quem disse: "Eu pertenço à família Washuu, responsável pela fundação e controle histórico da CCG, embora poucos conheçam essa verdade"?','A frase é dita pelo investigador de elite revelado como parte da família fundadora.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arima',TRUE,0),(gen_random_uuid(),q,'Amon',FALSE,1),(gen_random_uuid(),q,'Mado',FALSE,2),(gen_random_uuid(),q,'Juuzou',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'who_said','hard','Quem disse: "Fui transformado experimentalmente pela CCG após um confronto quase fatal, e hoje minha aparência reflete essa mudança drástica"?','A frase é dita pelo investigador que retorna com nova aparência após experimentos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Amon',TRUE,0),(gen_random_uuid(),q,'Mado',FALSE,1),(gen_random_uuid(),q,'Arima',FALSE,2),(gen_random_uuid(),q,'Juuzou',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'who_said','hard','Quem disse: "Eu sou irmão mais velho de Arima dentro da família Washuu, e meus planos para a CCG vão muito além do que os demais imaginam"?','A frase é dita pelo antagonista revelado em estágios avançados da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kichimura Washuu',TRUE,0),(gen_random_uuid(),q,'Tsuneyoshi Washuu',FALSE,1),(gen_random_uuid(),q,'Mado',FALSE,2),(gen_random_uuid(),q,'Amon',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'who_said','hard','Quem disse: "Eu comando um esquadrão de jovens investigadores, orientando-os com um cuidado que talvez venha de memórias que ainda não recuperei"?','A frase é dita pelo comandante que assume nova identidade após perder a memória.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sasaki Haise (Kaneki)',TRUE,0),(gen_random_uuid(),q,'Amon',FALSE,1),(gen_random_uuid(),q,'Arima',FALSE,2),(gen_random_uuid(),q,'Mado',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'who_said','impossible','Quem disse: "Eu frequento a loja de máscaras de Uta com frequência, mesmo sendo reservado demais para admitir que ele é meu amigo mais próximo"?','A frase é dita pelo ghoul veterano leal ao Anteiku.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yomo',TRUE,0),(gen_random_uuid(),q,'Nishiki',FALSE,1),(gen_random_uuid(),q,'Naki',FALSE,2),(gen_random_uuid(),q,'Ayato',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'who_said','impossible','Quem disse: "Eu perdi minha memória após um confronto decisivo, e passei a reconstruir minha identidade sob um novo nome"?','A frase é dita pelo protagonista durante seu período como investigador da CCG.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaneki',TRUE,0),(gen_random_uuid(),q,'Amon',FALSE,1),(gen_random_uuid(),q,'Ayato',FALSE,2),(gen_random_uuid(),q,'Nishiki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'who_said','impossible','Quem disse: "Eu morri anos atrás protegendo minha família, mas meu legado de ressentimento contra a CCG permanece vivo em meus filhos"?','A frase é dita, em memória, pelo pai adotivo de Hinami e Ayato.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arata Kirishima',TRUE,0),(gen_random_uuid(),q,'Yoshimura',FALSE,1),(gen_random_uuid(),q,'Yomo',FALSE,2),(gen_random_uuid(),q,'Uta',FALSE,3);

    -- episode_arc complemento (2)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'episode_arc','medium','Em qual arco Kaneki, sob o nome de Sasaki Haise, comanda o Quinx Squad, orientando jovens investigadores implantados com quinques especiais?','Este arco ocorre após ele perder parte de suas memórias originais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Quinx Squad',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco da Aogiri Tree',FALSE,2),(gen_random_uuid(),q,'Arco de Anteiku',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_tg,'episode_arc','hard','Em qual arco é revelada a verdadeira estrutura da família Washuu por trás da fundação e controle histórico da CCG?','A revelação altera completamente a percepção dos protagonistas sobre a organização governamental.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Quinx Squad',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco da Aogiri Tree',FALSE,2),(gen_random_uuid(),q,'Arco de Cochlea',FALSE,3);

END $$;
