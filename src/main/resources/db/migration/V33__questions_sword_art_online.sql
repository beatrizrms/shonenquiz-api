-- ============================================================
--  V33 — Seed de perguntas: Sword Art Online (150 perguntas)
--  Fonte: MyAnimeList + cânone do anime
--  Distribuição: text 40% / fill_blank 25% / who_said 20% /
--                episode_arc 10% / chronological 5%
--  Sem repetição com V5. Regras R1-R7 aplicadas.
-- ============================================================

DO $$
DECLARE
    v_system UUID := '00000000-0000-0000-0000-000000000001';
    v_sao    UUID;
    q        UUID;
BEGIN
    SELECT id INTO v_sao FROM animes WHERE slug = 'sword-art-online' LIMIT 1;

    -- ══════════════════════════════════════════════════════════
    -- TEXT — 60 perguntas (18 easy / 21 medium / 15 hard / 6 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','easy','Qual é o nome da esgrimista que se torna parceira romântica e de combate de Kirito dentro do jogo SAO?','Ela é conhecida como a "Vice-Comandante Relâmpago" dos Cavaleiros de Sangue.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Asuna Yuuki',TRUE,0),(gen_random_uuid(),q,'Silica',FALSE,1),(gen_random_uuid(),q,'Lisbeth',FALSE,2),(gen_random_uuid(),q,'Sinon',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','easy','Qual é o nome do melhor amigo de Kirito dentro de SAO, que morre protegendo-o em combate contra um chefe?','Sua morte marca profundamente a jornada emocional de Kirito.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Klein',FALSE,0),(gen_random_uuid(),q,'Diavel',TRUE,1),(gen_random_uuid(),q,'Agil',FALSE,2),(gen_random_uuid(),q,'Kuradeel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','easy','Qual é o nome da domadora de dragões, jovem jogadora que forma amizade próxima com Kirito?','Ela possui um dragão de estimação chamado Pina.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Silica',TRUE,0),(gen_random_uuid(),q,'Lisbeth',FALSE,1),(gen_random_uuid(),q,'Sinon',FALSE,2),(gen_random_uuid(),q,'Yuuki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','easy','Qual é o nome da ferreira especialista em forjar armas, apaixonada por Kirito no início da série?','Ela cria uma espada especial para ele após conhecê-lo pessoalmente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Lisbeth',TRUE,0),(gen_random_uuid(),q,'Silica',FALSE,1),(gen_random_uuid(),q,'Sinon',FALSE,2),(gen_random_uuid(),q,'Yuuki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','easy','Qual é o nome do amigo espadachim de Kirito, líder de uma guilda amistosa dentro de SAO?','Ele usa uma bandana vermelha e óculos como visual característico.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Klein',TRUE,0),(gen_random_uuid(),q,'Agil',FALSE,1),(gen_random_uuid(),q,'Diavel',FALSE,2),(gen_random_uuid(),q,'Kuradeel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','easy','Qual é o nome do comerciante forte fisicamente, aliado de Kirito e dono de uma loja dentro de SAO?','Ele possui pele escura e físico musculoso, contrastando com sua personalidade gentil.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Agil',TRUE,0),(gen_random_uuid(),q,'Klein',FALSE,1),(gen_random_uuid(),q,'Diavel',FALSE,2),(gen_random_uuid(),q,'Kuradeel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','easy','Qual é o nome da atiradora especialista em ArFA-Sys durante os eventos do jogo Gun Gale Online?','Ela sofre de trauma por um evento violento em sua infância.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sinon',TRUE,0),(gen_random_uuid(),q,'Silica',FALSE,1),(gen_random_uuid(),q,'Lisbeth',FALSE,2),(gen_random_uuid(),q,'Yuuki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','easy','Qual é o nome real da atiradora conhecida como Sinon dentro do jogo Gun Gale Online?','Seu apelido no jogo é inspirado em uma arma específica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shino Asada',TRUE,0),(gen_random_uuid(),q,'Rika Shinozaki',FALSE,1),(gen_random_uuid(),q,'Keiko Ayano',FALSE,2),(gen_random_uuid(),q,'Suguha Kirigaya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','easy','Qual é o nome da irmã mais nova (na verdade prima) de Kirito, que também joga MMORPGs virtuais?','Ela desenvolve sentimentos complexos pelo próprio primo ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Suguha Kirigaya',TRUE,0),(gen_random_uuid(),q,'Shino Asada',FALSE,1),(gen_random_uuid(),q,'Rika Shinozaki',FALSE,2),(gen_random_uuid(),q,'Keiko Ayano',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','easy','Qual é o nome do avatar de Suguha dentro do jogo ALfheim Online?','Ela é uma habilidosa espadachim élfica dentro deste jogo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Leafa',TRUE,0),(gen_random_uuid(),q,'Silica',FALSE,1),(gen_random_uuid(),q,'Lisbeth',FALSE,2),(gen_random_uuid(),q,'Yuuki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','easy','Qual é o nome da mãe adotiva de Kirito e Suguha, também tia biológica de Kirito?','Ela cria os dois como irmãos, sem revelar por muito tempo a verdade genealógica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Midori Kirigaya',TRUE,0),(gen_random_uuid(),q,'Yui',FALSE,1),(gen_random_uuid(),q,'Kyouko Yuuki',FALSE,2),(gen_random_uuid(),q,'Rika Shinozaki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','easy','Qual é o nome da IA que se torna, simbolicamente, filha adotiva de Kirito e Asuna dentro do jogo?','Ela é originalmente um programa de suporte com autoconsciência emergente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yui',TRUE,0),(gen_random_uuid(),q,'Leafa',FALSE,1),(gen_random_uuid(),q,'Silica',FALSE,2),(gen_random_uuid(),q,'Lisbeth',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','easy','Qual é o nome da mãe biológica de Asuna, extremamente rígida em relação às escolhas de vida da filha?','Ela tenta forçar um casamento arranjado para Asuna em um dos arcos da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kyouko Yuuki',TRUE,0),(gen_random_uuid(),q,'Midori Kirigaya',FALSE,1),(gen_random_uuid(),q,'Rika Shinozaki',FALSE,2),(gen_random_uuid(),q,'Keiko Ayano',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','easy','Qual é o nome do primo de Asuna, prometido a ela em um casamento arranjado durante um dos arcos da série?','Ele demonstra caráter moralmente questionável ao longo da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nobuyuki Sugou',TRUE,0),(gen_random_uuid(),q,'Klein',FALSE,1),(gen_random_uuid(),q,'Agil',FALSE,2),(gen_random_uuid(),q,'Eugene',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','easy','Qual é o nome do primeiro andar do castelo flutuante Aincrad, onde a jornada de SAO começa?','Todos os jogadores iniciam presos neste primeiro nível do jogo mortal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não possui nome próprio revelado, apenas numeração',TRUE,0),(gen_random_uuid(),q,'Starting City',FALSE,1),(gen_random_uuid(),q,'Town of Beginnings',FALSE,2),(gen_random_uuid(),q,'Algade',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','easy','Qual é o nome da cidade principal de comércio no primeiro andar de Aincrad, onde jogadores costumam se reunir?','É lá que muitos encontros importantes acontecem no início da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Algade',TRUE,0),(gen_random_uuid(),q,'Town of Beginnings',FALSE,1),(gen_random_uuid(),q,'Floor One Village',FALSE,2),(gen_random_uuid(),q,'Karluin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','medium','Qual é o nome verdadeiro do protagonista de Sword Art Online?','Kirito é apenas seu nome de usuário dentro dos jogos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kazuto Kirigaya',TRUE,0),(gen_random_uuid(),q,'Shouzou Kirigaya',FALSE,1),(gen_random_uuid(),q,'Akihiko Kayaba',FALSE,2),(gen_random_uuid(),q,'Nobuyuki Sugou',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','medium','Qual é o nome verdadeiro da parceira romântica de Kirito, atrás do apelido "Asuna" dentro do jogo?','Ela é uma das jogadoras mais talentosas de SAO desde o início.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Asuna Yuuki',TRUE,0),(gen_random_uuid(),q,'Shino Asada',FALSE,1),(gen_random_uuid(),q,'Suguha Kirigaya',FALSE,2),(gen_random_uuid(),q,'Rika Shinozaki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','medium','Qual é o nome da guilda de elite responsável pela defesa da linha de frente do jogo, comandada por Heathcliff?','Asuna se torna vice-comandante desta guilda.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cavaleiros de Sangue',TRUE,0),(gen_random_uuid(),q,'Aincrad Liberation Force',FALSE,1),(gen_random_uuid(),q,'Guilda dos Assassinos',FALSE,2),(gen_random_uuid(),q,'Fuurinkazan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','medium','Qual é o nome da segunda maior guilda de vanguarda em SAO, liderada por Kibaou, focada em avanços rápidos pelo jogo?','Ela é conhecida por priorizar velocidade sobre estratégia mais cuidadosa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aincrad Liberation Force',TRUE,0),(gen_random_uuid(),q,'Cavaleiros de Sangue',FALSE,1),(gen_random_uuid(),q,'Fuurinkazan',FALSE,2),(gen_random_uuid(),q,'Laughing Coffin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','medium','Qual é o nome da guilda de jogadores assassinos, especializada em matar outros jogadores dentro do próprio jogo?','Seus membros são temidos por matar pessoas reais através da morte no jogo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Laughing Coffin',TRUE,0),(gen_random_uuid(),q,'Cavaleiros de Sangue',FALSE,1),(gen_random_uuid(),q,'Aincrad Liberation Force',FALSE,2),(gen_random_uuid(),q,'Fuurinkazan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','medium','Qual é o nome da técnica extremamente rara e valiosa que permite ao usuário empunhar duas espadas simultaneamente?','Kirito é considerado um dos únicos jogadores a possuir essa habilidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dual Blades',TRUE,0),(gen_random_uuid(),q,'Twin Swords',FALSE,1),(gen_random_uuid(),q,'Double Wielding',FALSE,2),(gen_random_uuid(),q,'Sword Skill Unique',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','medium','Qual é o nome do jogo virtual que Kirito e Suguha exploram após os eventos de SAO, envolvendo raças de fadas?','Ele apresenta um sistema de voo controlado por magia elemental.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'ALfheim Online',TRUE,0),(gen_random_uuid(),q,'Gun Gale Online',FALSE,1),(gen_random_uuid(),q,'Underworld',FALSE,2),(gen_random_uuid(),q,'Ordinal Scale',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','medium','Qual é o nome do jogo virtual com temática de armas de fogo explorado durante o arco de Sinon?','Kirito se disfarça de personagem feminina para investigar um caso relacionado a este jogo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gun Gale Online',TRUE,0),(gen_random_uuid(),q,'ALfheim Online',FALSE,1),(gen_random_uuid(),q,'Underworld',FALSE,2),(gen_random_uuid(),q,'Ordinal Scale',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','medium','Qual é o nome da simulação virtual gigantesca criada para desenvolver Inteligências Artificiais avançadas, explorada em uma das temporadas mais recentes?','Kirito é conectado a esse ambiente através de um mergulho profundo experimental.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Underworld',TRUE,0),(gen_random_uuid(),q,'ALfheim Online',FALSE,1),(gen_random_uuid(),q,'Gun Gale Online',FALSE,2),(gen_random_uuid(),q,'Ordinal Scale',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','medium','Qual é o nome da jovem líder de guilda encontrada por Asuna em um hospital, sofrendo de uma doença terminal real?','Sua história trágica emociona profundamente Asuna durante um dos arcos da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yuuki Konno',TRUE,0),(gen_random_uuid(),q,'Sinon',FALSE,1),(gen_random_uuid(),q,'Leafa',FALSE,2),(gen_random_uuid(),q,'Silica',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','hard','Qual é o vilão principal do arco Aincrad, o Game Master que armou a armadilha mortal do jogo original?','Ele aparece como o chefe final no 100º andar do castelo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sugou Nobuyuki',FALSE,0),(gen_random_uuid(),q,'Kayaba Akihiko',TRUE,1),(gen_random_uuid(),q,'Death Gun',FALSE,2),(gen_random_uuid(),q,'Quinella',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','hard','Qual é a identidade real por trás do avatar de Heathcliff, comandante dos Cavaleiros de Sangue?','Ele é revelado ser o próprio criador do jogo, disfarçado durante toda a trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kayaba Akihiko',TRUE,0),(gen_random_uuid(),q,'Sugou Nobuyuki',FALSE,1),(gen_random_uuid(),q,'Death Gun',FALSE,2),(gen_random_uuid(),q,'Kuradeel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','hard','Qual é o codinome do assassino que ataca jogadores de Gun Gale Online, causando efeitos de morte física real?','Ele é revelado como ex-membro da guilda Laughing Coffin buscando vingança.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Death Gun',TRUE,0),(gen_random_uuid(),q,'Kayaba Akihiko',FALSE,1),(gen_random_uuid(),q,'Sugou Nobuyuki',FALSE,2),(gen_random_uuid(),q,'Kuradeel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','hard','Qual é o nome do executivo corrupto responsável por aprisionar a mente de Asuna dentro do jogo ALfheim Online?','Ele tenta manipular Asuna à força enquanto ela está indefesa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nobuyuki Sugou',TRUE,0),(gen_random_uuid(),q,'Kayaba Akihiko',FALSE,1),(gen_random_uuid(),q,'Kuradeel',FALSE,2),(gen_random_uuid(),q,'Death Gun',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','hard','Qual é o nome da suma sacerdotisa que governa Underworld com controle absoluto sobre as leis do mundo simulado?','Ela é revelada como uma antiga IA corrompida pelo poder absoluto concedido a ela.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Quinella (Administrator)',TRUE,0),(gen_random_uuid(),q,'Alice Synthesis Thirty',FALSE,1),(gen_random_uuid(),q,'Eugeo',FALSE,2),(gen_random_uuid(),q,'Cardinal',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','hard','Qual é o nome do melhor amigo de infância de Kirito dentro de Underworld, com quem ele treina espada desde criança?','Ele se sacrifica em um dos momentos mais emocionantes da saga Underworld.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Eugeo',TRUE,0),(gen_random_uuid(),q,'Klein',FALSE,1),(gen_random_uuid(),q,'Agil',FALSE,2),(gen_random_uuid(),q,'Diavel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','hard','Qual é o nome da cavaleira integridade sintética de Underworld, com memórias apagadas, que se torna aliada de Kirito e Eugeo?','Ela recupera gradualmente memórias de sua vida anterior ao longo da saga.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Alice Synthesis Thirty',TRUE,0),(gen_random_uuid(),q,'Quinella',FALSE,1),(gen_random_uuid(),q,'Sinon',FALSE,2),(gen_random_uuid(),q,'Leafa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','hard','Qual é o nome do subordinado corrupto dos Cavaleiros de Sangue, responsável por trair Kirito e Asuna durante uma missão?','Ele é secretamente membro da guilda de assassinos Laughing Coffin.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kuradeel',TRUE,0),(gen_random_uuid(),q,'Diavel',FALSE,1),(gen_random_uuid(),q,'Klein',FALSE,2),(gen_random_uuid(),q,'Agil',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','impossible','Qual é o nome da inteligência artificial suprema que serve como sistema de manutenção fundamental de Underworld?','Ela auxilia Kirito de forma indireta durante os eventos da saga Underworld.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cardinal System',TRUE,0),(gen_random_uuid(),q,'Yui',FALSE,1),(gen_random_uuid(),q,'Administrator',FALSE,2),(gen_random_uuid(),q,'Alice',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','impossible','Qual é o nome do projeto militar responsável por criar Underworld com fins de desenvolvimento de armas autônomas de IA?','Ele é revelado como motivação oculta por trás da simulação gigantesca.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não possui nome oficial revelado com destaque na série',TRUE,0),(gen_random_uuid(),q,'Projeto Alicization',FALSE,1),(gen_random_uuid(),q,'Ordinal Scale',FALSE,2),(gen_random_uuid(),q,'SAO Project',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','impossible','Qual é o nome do sistema de realidade aumentada explorado no filme relacionado à franquia, que projeta elementos de jogo no mundo real?','Ele substitui temporariamente o mergulho total como principal atração tecnológica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ordinal Scale',TRUE,0),(gen_random_uuid(),q,'Augma',FALSE,1),(gen_random_uuid(),q,'NerveGear',FALSE,2),(gen_random_uuid(),q,'Amusphere',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- FILL_BLANK — 38 perguntas (11 easy / 13 medium / 10 hard / 4 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'fill_blank','easy','A esgrimista que se torna parceira romântica e de combate de Kirito dentro do jogo SAO se chama ___.','Ela é conhecida como a "Vice-Comandante Relâmpago" dos Cavaleiros de Sangue.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Asuna Yuuki',TRUE,0),(gen_random_uuid(),q,'Silica',FALSE,1),(gen_random_uuid(),q,'Lisbeth',FALSE,2),(gen_random_uuid(),q,'Sinon',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'fill_blank','easy','A domadora de dragões, jovem jogadora que forma amizade próxima com Kirito, se chama ___.','Ela possui um dragão de estimação chamado Pina.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Silica',TRUE,0),(gen_random_uuid(),q,'Lisbeth',FALSE,1),(gen_random_uuid(),q,'Sinon',FALSE,2),(gen_random_uuid(),q,'Yuuki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'fill_blank','easy','A ferreira especialista em forjar armas, apaixonada por Kirito no início da série, se chama ___.','Ela cria uma espada especial para ele após conhecê-lo pessoalmente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Lisbeth',TRUE,0),(gen_random_uuid(),q,'Silica',FALSE,1),(gen_random_uuid(),q,'Sinon',FALSE,2),(gen_random_uuid(),q,'Yuuki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'fill_blank','easy','O amigo espadachim de Kirito, líder de uma guilda amistosa dentro de SAO, se chama ___.','Ele usa uma bandana vermelha e óculos como visual característico.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Klein',TRUE,0),(gen_random_uuid(),q,'Agil',FALSE,1),(gen_random_uuid(),q,'Diavel',FALSE,2),(gen_random_uuid(),q,'Kuradeel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'fill_blank','easy','A atiradora especialista em ArFA-Sys durante os eventos de Gun Gale Online se chama ___.','Ela sofre de trauma por um evento violento em sua infância.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sinon',TRUE,0),(gen_random_uuid(),q,'Silica',FALSE,1),(gen_random_uuid(),q,'Lisbeth',FALSE,2),(gen_random_uuid(),q,'Yuuki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'fill_blank','easy','O nome real da atiradora conhecida como Sinon dentro do jogo Gun Gale Online é ___.','Seu apelido no jogo é inspirado em uma arma específica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shino Asada',TRUE,0),(gen_random_uuid(),q,'Rika Shinozaki',FALSE,1),(gen_random_uuid(),q,'Keiko Ayano',FALSE,2),(gen_random_uuid(),q,'Suguha Kirigaya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'fill_blank','easy','O avatar de Suguha dentro do jogo ALfheim Online se chama ___.','Ela é uma habilidosa espadachim élfica dentro deste jogo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Leafa',TRUE,0),(gen_random_uuid(),q,'Silica',FALSE,1),(gen_random_uuid(),q,'Lisbeth',FALSE,2),(gen_random_uuid(),q,'Yuuki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'fill_blank','easy','A IA que se torna, simbolicamente, filha adotiva de Kirito e Asuna dentro do jogo se chama ___.','Ela é originalmente um programa de suporte com autoconsciência emergente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yui',TRUE,0),(gen_random_uuid(),q,'Leafa',FALSE,1),(gen_random_uuid(),q,'Silica',FALSE,2),(gen_random_uuid(),q,'Lisbeth',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'fill_blank','easy','O primo de Asuna, prometido a ela em um casamento arranjado durante um dos arcos da série, se chama ___.','Ele demonstra caráter moralmente questionável ao longo da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nobuyuki Sugou',TRUE,0),(gen_random_uuid(),q,'Klein',FALSE,1),(gen_random_uuid(),q,'Agil',FALSE,2),(gen_random_uuid(),q,'Eugene',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'fill_blank','easy','A cidade principal de comércio no primeiro andar de Aincrad, onde jogadores costumam se reunir, se chama ___.','É lá que muitos encontros importantes acontecem no início da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Algade',TRUE,0),(gen_random_uuid(),q,'Town of Beginnings',FALSE,1),(gen_random_uuid(),q,'Floor One Village',FALSE,2),(gen_random_uuid(),q,'Karluin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'fill_blank','medium','O nome verdadeiro do protagonista de Sword Art Online é ___.','Kirito é apenas seu nome de usuário dentro dos jogos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kazuto Kirigaya',TRUE,0),(gen_random_uuid(),q,'Shouzou Kirigaya',FALSE,1),(gen_random_uuid(),q,'Akihiko Kayaba',FALSE,2),(gen_random_uuid(),q,'Nobuyuki Sugou',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'fill_blank','medium','A guilda de elite responsável pela defesa da linha de frente do jogo, comandada por Heathcliff, se chama ___.','Asuna se torna vice-comandante desta guilda.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cavaleiros de Sangue',TRUE,0),(gen_random_uuid(),q,'Aincrad Liberation Force',FALSE,1),(gen_random_uuid(),q,'Guilda dos Assassinos',FALSE,2),(gen_random_uuid(),q,'Fuurinkazan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'fill_blank','medium','A guilda de jogadores assassinos, especializada em matar outros jogadores dentro do próprio jogo, se chama ___.','Seus membros são temidos por matar pessoas reais através da morte no jogo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Laughing Coffin',TRUE,0),(gen_random_uuid(),q,'Cavaleiros de Sangue',FALSE,1),(gen_random_uuid(),q,'Aincrad Liberation Force',FALSE,2),(gen_random_uuid(),q,'Fuurinkazan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'fill_blank','medium','A técnica extremamente rara que permite ao usuário empunhar duas espadas simultaneamente se chama ___.','Kirito é considerado um dos únicos jogadores a possuir essa habilidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dual Blades',TRUE,0),(gen_random_uuid(),q,'Twin Swords',FALSE,1),(gen_random_uuid(),q,'Double Wielding',FALSE,2),(gen_random_uuid(),q,'Sword Skill Unique',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'fill_blank','medium','O jogo virtual que Kirito e Suguha exploram após os eventos de SAO, envolvendo raças de fadas, se chama ___.','Ele apresenta um sistema de voo controlado por magia elemental.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'ALfheim Online',TRUE,0),(gen_random_uuid(),q,'Gun Gale Online',FALSE,1),(gen_random_uuid(),q,'Underworld',FALSE,2),(gen_random_uuid(),q,'Ordinal Scale',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'fill_blank','medium','O jogo virtual com temática de armas de fogo explorado durante o arco de Sinon se chama ___.','Kirito se disfarça de personagem feminina para investigar um caso relacionado a este jogo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gun Gale Online',TRUE,0),(gen_random_uuid(),q,'ALfheim Online',FALSE,1),(gen_random_uuid(),q,'Underworld',FALSE,2),(gen_random_uuid(),q,'Ordinal Scale',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'fill_blank','medium','A simulação virtual gigantesca criada para desenvolver Inteligências Artificiais avançadas se chama ___.','Kirito é conectado a esse ambiente através de um mergulho profundo experimental.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Underworld',TRUE,0),(gen_random_uuid(),q,'ALfheim Online',FALSE,1),(gen_random_uuid(),q,'Gun Gale Online',FALSE,2),(gen_random_uuid(),q,'Ordinal Scale',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'fill_blank','medium','A jovem líder de guilda encontrada por Asuna em um hospital, sofrendo de uma doença terminal real, se chama ___.','Sua história trágica emociona profundamente Asuna durante um dos arcos da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yuuki Konno',TRUE,0),(gen_random_uuid(),q,'Sinon',FALSE,1),(gen_random_uuid(),q,'Leafa',FALSE,2),(gen_random_uuid(),q,'Silica',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'fill_blank','hard','A identidade real por trás do avatar de Heathcliff, comandante dos Cavaleiros de Sangue, é ___.','Ele é revelado ser o próprio criador do jogo, disfarçado durante toda a trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kayaba Akihiko',TRUE,0),(gen_random_uuid(),q,'Sugou Nobuyuki',FALSE,1),(gen_random_uuid(),q,'Death Gun',FALSE,2),(gen_random_uuid(),q,'Kuradeel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'fill_blank','hard','O codinome do assassino que ataca jogadores de Gun Gale Online, causando efeitos de morte física real, é ___.','Ele é revelado como ex-membro da guilda Laughing Coffin buscando vingança.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Death Gun',TRUE,0),(gen_random_uuid(),q,'Kayaba Akihiko',FALSE,1),(gen_random_uuid(),q,'Sugou Nobuyuki',FALSE,2),(gen_random_uuid(),q,'Kuradeel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'fill_blank','hard','O executivo corrupto responsável por aprisionar a mente de Asuna dentro do jogo ALfheim Online se chama ___.','Ele tenta manipular Asuna à força enquanto ela está indefesa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nobuyuki Sugou',TRUE,0),(gen_random_uuid(),q,'Kayaba Akihiko',FALSE,1),(gen_random_uuid(),q,'Kuradeel',FALSE,2),(gen_random_uuid(),q,'Death Gun',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'fill_blank','hard','A suma sacerdotisa que governa Underworld com controle absoluto sobre as leis do mundo simulado se chama ___.','Ela é revelada como uma antiga IA corrompida pelo poder absoluto concedido a ela.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Quinella (Administrator)',TRUE,0),(gen_random_uuid(),q,'Alice Synthesis Thirty',FALSE,1),(gen_random_uuid(),q,'Eugeo',FALSE,2),(gen_random_uuid(),q,'Cardinal',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'fill_blank','hard','O melhor amigo de infância de Kirito dentro de Underworld, com quem ele treina espada desde criança, se chama ___.','Ele se sacrifica em um dos momentos mais emocionantes da saga Underworld.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Eugeo',TRUE,0),(gen_random_uuid(),q,'Klein',FALSE,1),(gen_random_uuid(),q,'Agil',FALSE,2),(gen_random_uuid(),q,'Diavel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'fill_blank','hard','A cavaleira integridade sintética de Underworld, com memórias apagadas, que se torna aliada de Kirito e Eugeo, se chama ___.','Ela recupera gradualmente memórias de sua vida anterior ao longo da saga.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Alice Synthesis Thirty',TRUE,0),(gen_random_uuid(),q,'Quinella',FALSE,1),(gen_random_uuid(),q,'Sinon',FALSE,2),(gen_random_uuid(),q,'Leafa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'fill_blank','hard','O subordinado corrupto dos Cavaleiros de Sangue, responsável por trair Kirito e Asuna durante uma missão, se chama ___.','Ele é secretamente membro da guilda de assassinos Laughing Coffin.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kuradeel',TRUE,0),(gen_random_uuid(),q,'Diavel',FALSE,1),(gen_random_uuid(),q,'Klein',FALSE,2),(gen_random_uuid(),q,'Agil',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'fill_blank','impossible','A inteligência artificial suprema que serve como sistema de manutenção fundamental de Underworld se chama ___.','Ela auxilia Kirito de forma indireta durante os eventos da saga Underworld.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cardinal System',TRUE,0),(gen_random_uuid(),q,'Yui',FALSE,1),(gen_random_uuid(),q,'Administrator',FALSE,2),(gen_random_uuid(),q,'Alice',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'fill_blank','impossible','O sistema de realidade aumentada explorado no filme relacionado à franquia, que projeta elementos de jogo no mundo real, se chama ___.','Ele substitui temporariamente o mergulho total como principal atração tecnológica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ordinal Scale',TRUE,0),(gen_random_uuid(),q,'Augma',FALSE,1),(gen_random_uuid(),q,'NerveGear',FALSE,2),(gen_random_uuid(),q,'Amusphere',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- WHO_SAID — 30 perguntas (9 easy / 11 medium / 8 hard / 2 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'who_said','easy','Quem disse: "Eu vou sobreviver a este jogo, custe o que custar, e proteger quem eu amo"?','A frase resume a determinação do protagonista logo no início do aprisionamento em SAO.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kirito',TRUE,0),(gen_random_uuid(),q,'Klein',FALSE,1),(gen_random_uuid(),q,'Diavel',FALSE,2),(gen_random_uuid(),q,'Agil',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'who_said','easy','Quem disse: "Eu escolhi lutar na linha de frente, mesmo sabendo que poderia morrer a qualquer momento"?','A frase reflete a coragem da vice-comandante dos Cavaleiros de Sangue.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Asuna',TRUE,0),(gen_random_uuid(),q,'Silica',FALSE,1),(gen_random_uuid(),q,'Lisbeth',FALSE,2),(gen_random_uuid(),q,'Sinon',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'who_said','easy','Quem disse: "Eu forjo espadas com todo o meu coração, e a sua vai ser a melhor que eu já fiz"?','A frase é dita pela ferreira apaixonada por Kirito.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Lisbeth',TRUE,0),(gen_random_uuid(),q,'Silica',FALSE,1),(gen_random_uuid(),q,'Sinon',FALSE,2),(gen_random_uuid(),q,'Yuuki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'who_said','easy','Quem disse: "Meu dragão de estimação é meu melhor amigo dentro deste jogo, e eu vou protegê-lo sempre"?','A frase é dita pela domadora de dragões amiga de Kirito.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Silica',TRUE,0),(gen_random_uuid(),q,'Lisbeth',FALSE,1),(gen_random_uuid(),q,'Sinon',FALSE,2),(gen_random_uuid(),q,'Yuuki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'who_said','easy','Quem disse: "Eu era covarde com armas de verdade, mas dentro deste jogo posso ser quem eu quiser ser"?','A frase reflete a transformação de identidade dessa atiradora especialista em Gun Gale Online.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sinon',TRUE,0),(gen_random_uuid(),q,'Silica',FALSE,1),(gen_random_uuid(),q,'Lisbeth',FALSE,2),(gen_random_uuid(),q,'Yuuki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'who_said','easy','Quem disse: "Eu sou apenas um comerciante forte, mas sempre disposto a ajudar meus amigos em qualquer missão"?','A frase reflete a personalidade gentil desse comerciante aliado de Kirito.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Agil',TRUE,0),(gen_random_uuid(),q,'Klein',FALSE,1),(gen_random_uuid(),q,'Diavel',FALSE,2),(gen_random_uuid(),q,'Kuradeel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'who_said','easy','Quem disse: "Eu sou apenas um programa, mas sinto amor por vocês dois como se fossem meus verdadeiros pais"?','A frase é dita pela IA que se torna simbolicamente filha de Kirito e Asuna.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yui',TRUE,0),(gen_random_uuid(),q,'Leafa',FALSE,1),(gen_random_uuid(),q,'Silica',FALSE,2),(gen_random_uuid(),q,'Lisbeth',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'who_said','easy','Quem disse: "Como sua irmã mais velha, eu vou te proteger, mesmo que meus sentimentos por você sejam mais complicados do que isso"?','A frase é dita pela prima de Kirito, também jogadora de MMORPGs.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Suguha (Leafa)',TRUE,0),(gen_random_uuid(),q,'Asuna',FALSE,1),(gen_random_uuid(),q,'Sinon',FALSE,2),(gen_random_uuid(),q,'Yuuki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'who_said','easy','Quem disse: "Vamos lá, galera! Um brinde à nossa vitória de hoje!"?','A frase animada é típica desse espadachim amigo de Kirito, sempre acompanhado de sua guilda.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Klein',TRUE,0),(gen_random_uuid(),q,'Agil',FALSE,1),(gen_random_uuid(),q,'Diavel',FALSE,2),(gen_random_uuid(),q,'Kuradeel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'who_said','medium','Quem disse: "Eu criei este jogo mortal para provar que a realidade virtual pode ser um novo mundo verdadeiro"?','A frase é dita pelo criador de SAO, revelado disfarçado como Heathcliff.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kayaba Akihiko',TRUE,0),(gen_random_uuid(),q,'Sugou Nobuyuki',FALSE,1),(gen_random_uuid(),q,'Death Gun',FALSE,2),(gen_random_uuid(),q,'Kuradeel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'who_said','medium','Quem disse: "Eu quero controlar completamente a mente das pessoas presas neste novo jogo, e você será a primeira, Asuna"?','A frase é dita pelo executivo corrupto responsável por aprisionar a mente de Asuna.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nobuyuki Sugou',TRUE,0),(gen_random_uuid(),q,'Kayaba Akihiko',FALSE,1),(gen_random_uuid(),q,'Kuradeel',FALSE,2),(gen_random_uuid(),q,'Death Gun',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'who_said','medium','Quem disse: "Eu já matei pessoas de verdade através deste jogo, e vou continuar até encontrar quem eu realmente procuro"?','A frase é dita pelo assassino misterioso que ataca jogadores de Gun Gale Online.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Death Gun',TRUE,0),(gen_random_uuid(),q,'Kayaba Akihiko',FALSE,1),(gen_random_uuid(),q,'Sugou Nobuyuki',FALSE,2),(gen_random_uuid(),q,'Kuradeel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'who_said','medium','Quem disse: "Eu vivi minha vida real com uma doença terminal, mas dentro deste jogo eu me sinto completamente livre"?','A frase é dita pela jovem líder de guilda encontrada por Asuna em um hospital.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yuuki Konno',TRUE,0),(gen_random_uuid(),q,'Sinon',FALSE,1),(gen_random_uuid(),q,'Leafa',FALSE,2),(gen_random_uuid(),q,'Silica',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'who_said','medium','Quem disse: "Eu treinei espada com você desde crianças, e sempre acreditei que um de nós se tornaria um grande espadachim"?','A frase é dita pelo melhor amigo de infância de Kirito dentro de Underworld.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Eugeo',TRUE,0),(gen_random_uuid(),q,'Klein',FALSE,1),(gen_random_uuid(),q,'Agil',FALSE,2),(gen_random_uuid(),q,'Diavel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'who_said','medium','Quem disse: "Eu governo Underworld com autoridade absoluta, e nenhuma lei fora das minhas próprias regras será tolerada"?','A frase é dita pela suma sacerdotisa antagonista de Underworld.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Quinella (Administrator)',TRUE,0),(gen_random_uuid(),q,'Alice Synthesis Thirty',FALSE,1),(gen_random_uuid(),q,'Eugeo',FALSE,2),(gen_random_uuid(),q,'Cardinal',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'who_said','medium','Quem disse: "Eu não me lembro completamente do meu passado, mas sinto que já conheci vocês dois antes"?','A frase é dita pela cavaleira integridade sintética que perdeu suas memórias em Underworld.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Alice Synthesis Thirty',TRUE,0),(gen_random_uuid(),q,'Quinella',FALSE,1),(gen_random_uuid(),q,'Sinon',FALSE,2),(gen_random_uuid(),q,'Leafa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'who_said','medium','Quem disse: "Eu servi aos Cavaleiros de Sangue com aparente lealdade, mas sempre trabalhei secretamente para meus verdadeiros aliados"?','A frase é dita pelo subordinado traidor infiltrado dentro da guilda de elite.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kuradeel',TRUE,0),(gen_random_uuid(),q,'Diavel',FALSE,1),(gen_random_uuid(),q,'Klein',FALSE,2),(gen_random_uuid(),q,'Agil',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'who_said','hard','Quem disse: "Eu sou um sistema de manutenção fundamental deste mundo simulado, e minha existência antecede até mesmo os habitantes que vivem aqui"?','A frase é dita pela inteligência artificial suprema responsável por manter Underworld em funcionamento.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cardinal System',TRUE,0),(gen_random_uuid(),q,'Yui',FALSE,1),(gen_random_uuid(),q,'Administrator',FALSE,2),(gen_random_uuid(),q,'Alice',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'who_said','hard','Quem disse: "Minha mãe sempre quis controlar minha vida, até mesmo escolhendo com quem eu deveria me casar"?','A frase reflete a frustração de Asuna sobre a rigidez de sua mãe biológica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Asuna',TRUE,0),(gen_random_uuid(),q,'Suguha',FALSE,1),(gen_random_uuid(),q,'Sinon',FALSE,2),(gen_random_uuid(),q,'Yuuki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'who_said','hard','Quem disse: "Eu sou vice-comandante desta guilda de elite, e não vou permitir que ninguém mais morra desnecessariamente sob meu comando"?','A frase reflete o senso de responsabilidade de Asuna sobre seus subordinados dentro dos Cavaleiros de Sangue.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Asuna',TRUE,0),(gen_random_uuid(),q,'Silica',FALSE,1),(gen_random_uuid(),q,'Lisbeth',FALSE,2),(gen_random_uuid(),q,'Yuuki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'who_said','hard','Quem disse: "Eu era apenas o vice-líder aparente, mas na verdade fui eu quem criou todo este jogo mortal desde o início"?','A frase é dita pelo verdadeiro criador de SAO ao revelar sua identidade oculta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kayaba Akihiko',TRUE,0),(gen_random_uuid(),q,'Sugou Nobuyuki',FALSE,1),(gen_random_uuid(),q,'Death Gun',FALSE,2),(gen_random_uuid(),q,'Kuradeel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'who_said','impossible','Quem disse: "Eu era membro de uma guilda de assassinos temida, mas hoje busco vingança contra os antigos aliados que me traíram"?','A frase é dita pelo assassino misterioso, revelado como ex-integrante da Laughing Coffin.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Death Gun',TRUE,0),(gen_random_uuid(),q,'Kayaba Akihiko',FALSE,1),(gen_random_uuid(),q,'Sugou Nobuyuki',FALSE,2),(gen_random_uuid(),q,'Kuradeel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'who_said','impossible','Quem disse: "Meu propósito é registrar cada evento ocorrido dentro deste mundo simulado, sem interferir diretamente nos habitantes"?','A frase é dita pelo sistema de IA suprema responsável pela manutenção de Underworld.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cardinal System',TRUE,0),(gen_random_uuid(),q,'Yui',FALSE,1),(gen_random_uuid(),q,'Administrator',FALSE,2),(gen_random_uuid(),q,'Alice',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- EPISODE_ARC — 15 perguntas (7 medium / 6 hard / 2 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'episode_arc','medium','Em qual arco Kirito e milhares de jogadores ficam presos dentro de SAO, aprendendo que a morte no jogo significa morte real?','O evento inicial estabelece toda a premissa da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Aincrad',TRUE,0),(gen_random_uuid(),q,'Arco de Fairy Dance',FALSE,1),(gen_random_uuid(),q,'Arco de Gun Gale Online',FALSE,2),(gen_random_uuid(),q,'Arco de Alicization',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'episode_arc','medium','Em qual arco Kirito descobre que a mente de Asuna está aprisionada em ALfheim Online e parte para resgatá-la?','Sugou é o antagonista principal deste confronto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Fairy Dance',TRUE,0),(gen_random_uuid(),q,'Arco de Aincrad',FALSE,1),(gen_random_uuid(),q,'Arco de Gun Gale Online',FALSE,2),(gen_random_uuid(),q,'Arco de Alicization',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'episode_arc','medium','Em qual arco Kirito se disfarça de personagem feminina para investigar mortes misteriosas causadas por Death Gun?','Sinon se torna aliada próxima durante toda essa investigação.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Gun Gale Online (Phantom Bullet)',TRUE,0),(gen_random_uuid(),q,'Arco de Fairy Dance',FALSE,1),(gen_random_uuid(),q,'Arco de Aincrad',FALSE,2),(gen_random_uuid(),q,'Arco de Alicization',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'episode_arc','medium','Em qual arco Asuna conhece Yuuki, jovem líder de guilda que enfrenta uma doença terminal na vida real?','O arco é considerado um dos mais emocionalmente pesados de toda a franquia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Mother''s Rosario',TRUE,0),(gen_random_uuid(),q,'Arco de Fairy Dance',FALSE,1),(gen_random_uuid(),q,'Arco de Gun Gale Online',FALSE,2),(gen_random_uuid(),q,'Arco de Alicization',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'episode_arc','medium','Em qual arco Kirito é conectado a Underworld através de um experimento de mergulho profundo desenvolvido por uma corporação militar?','Ele encontra Eugeo e Alice logo no início deste arco extenso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Alicization',TRUE,0),(gen_random_uuid(),q,'Arco de Mother''s Rosario',FALSE,1),(gen_random_uuid(),q,'Arco de Gun Gale Online',FALSE,2),(gen_random_uuid(),q,'Arco de Fairy Dance',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'episode_arc','medium','Em qual arco Kirito, Eugeo e Alice enfrentam diretamente Quinella, suma sacerdotisa de Underworld?','O confronto final decide o destino de todo o mundo simulado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Alicization (Confronto Final)',TRUE,0),(gen_random_uuid(),q,'Arco de Mother''s Rosario',FALSE,1),(gen_random_uuid(),q,'Arco de Gun Gale Online',FALSE,2),(gen_random_uuid(),q,'Arco de Fairy Dance',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'episode_arc','medium','Em qual arco Kirito e Asuna enfrentam Kayaba Akihiko, disfarçado como Heathcliff, no confronto final de SAO original?','A vitória neste combate resulta na libertação de todos os jogadores presos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Aincrad',TRUE,0),(gen_random_uuid(),q,'Arco de Fairy Dance',FALSE,1),(gen_random_uuid(),q,'Arco de Gun Gale Online',FALSE,2),(gen_random_uuid(),q,'Arco de Alicization',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'episode_arc','hard','Em qual arco Eugeo se sacrifica em um confronto decisivo, marcando um dos momentos mais trágicos de toda a saga Underworld?','Sua morte impulsiona emocionalmente a determinação de Kirito e Alice.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Alicization (Confronto Final)',TRUE,0),(gen_random_uuid(),q,'Arco de Mother''s Rosario',FALSE,1),(gen_random_uuid(),q,'Arco de Gun Gale Online',FALSE,2),(gen_random_uuid(),q,'Arco de Fairy Dance',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'episode_arc','hard','Em qual arco é revelado que Kuradeel é traidor infiltrado, aliado secreto da guilda de assassinos Laughing Coffin?','A revelação ocorre durante uma missão conjunta com Kirito e Asuna.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Aincrad',TRUE,0),(gen_random_uuid(),q,'Arco de Fairy Dance',FALSE,1),(gen_random_uuid(),q,'Arco de Gun Gale Online',FALSE,2),(gen_random_uuid(),q,'Arco de Alicization',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'episode_arc','hard','Em qual arco Yuuki morre em decorrência de sua doença real, mesmo após ser derrotada de forma simbólica dentro do jogo?','O arco é considerado uma das histórias mais emocionalmente impactantes de toda a franquia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Mother''s Rosario',TRUE,0),(gen_random_uuid(),q,'Arco de Fairy Dance',FALSE,1),(gen_random_uuid(),q,'Arco de Gun Gale Online',FALSE,2),(gen_random_uuid(),q,'Arco de Alicization',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'episode_arc','hard','Em qual arco é revelado que o verdadeiro objetivo por trás de Underworld é o desenvolvimento militar de inteligências artificiais autônomas?','A revelação recontextualiza completamente o propósito de toda a simulação.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Alicization',TRUE,0),(gen_random_uuid(),q,'Arco de Mother''s Rosario',FALSE,1),(gen_random_uuid(),q,'Arco de Gun Gale Online',FALSE,2),(gen_random_uuid(),q,'Arco de Fairy Dance',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'episode_arc','hard','Em qual arco Sinon supera seu trauma de infância relacionado a armas de fogo, se tornando aliada permanente de Kirito?','O processo de superação ocorre gradualmente durante a investigação de Death Gun.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Gun Gale Online (Phantom Bullet)',TRUE,0),(gen_random_uuid(),q,'Arco de Fairy Dance',FALSE,1),(gen_random_uuid(),q,'Arco de Aincrad',FALSE,2),(gen_random_uuid(),q,'Arco de Alicization',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'episode_arc','impossible','Em qual arco é revelado que Kayaba Akihiko permanece como consciência residual dentro do sistema, auxiliando Kirito indiretamente mesmo após sua derrota original?','A revelação ocorre em capítulos posteriores relacionados ao Projeto Alicization.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Alicization',TRUE,0),(gen_random_uuid(),q,'Arco de Aincrad',FALSE,1),(gen_random_uuid(),q,'Arco de Fairy Dance',FALSE,2),(gen_random_uuid(),q,'Arco de Mother''s Rosario',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'episode_arc','impossible','Em qual arco é revelado o passado completo de Alice antes de se tornar cavaleira integridade sintética, incluindo sua amizade original com Kirito e Eugeo?','A revelação ocorre através de memórias recuperadas gradualmente ao longo da saga Underworld.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Alicization',TRUE,0),(gen_random_uuid(),q,'Arco de Mother''s Rosario',FALSE,1),(gen_random_uuid(),q,'Arco de Gun Gale Online',FALSE,2),(gen_random_uuid(),q,'Arco de Fairy Dance',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- CHRONOLOGICAL — 7 perguntas (4 hard / 3 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'chronological','hard','Ordene cronologicamente os arcos a seguir, do mais antigo ao mais recente.','Cobrem desde o aprisionamento em SAO até a saga Alicization.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aincrad',TRUE,0),(gen_random_uuid(),q,'Fairy Dance',FALSE,1),(gen_random_uuid(),q,'Gun Gale Online',FALSE,2),(gen_random_uuid(),q,'Alicization',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'chronological','hard','Ordene cronologicamente os seguintes eventos da jornada de Kirito, do mais antigo ao mais recente.','Cobrem desde seu aprisionamento em SAO até seu envolvimento com Underworld.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'É preso dentro de SAO junto de milhares de jogadores',TRUE,0),(gen_random_uuid(),q,'Derrota Kayaba Akihiko e liberta os sobreviventes',FALSE,1),(gen_random_uuid(),q,'Resgata Asuna de ALfheim Online',FALSE,2),(gen_random_uuid(),q,'É conectado ao experimento de Underworld',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre Asuna, do mais antigo ao mais recente.','Cobrem desde sua entrada em SAO até o arco de Mother''s Rosario.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Torna-se vice-comandante dos Cavaleiros de Sangue',TRUE,0),(gen_random_uuid(),q,'É libertada de SAO junto com os demais sobreviventes',FALSE,1),(gen_random_uuid(),q,'É aprisionada por Sugou em ALfheim Online',FALSE,2),(gen_random_uuid(),q,'Conhece Yuuki e forma um laço emocional profundo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'chronological','hard','Ordene cronologicamente os seguintes eventos da saga Underworld, do mais antigo ao mais recente.','Cobrem desde a chegada de Kirito até a derrota final de Quinella.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kirito e Eugeo se tornam amigos de infância',TRUE,0),(gen_random_uuid(),q,'Encontram Alice sem memórias',FALSE,1),(gen_random_uuid(),q,'Eugeo se sacrifica em combate decisivo',FALSE,2),(gen_random_uuid(),q,'Quinella é derrotada definitivamente',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Death Gun, do mais antigo ao mais recente.','Cobrem desde sua época na Laughing Coffin até sua derrota em Gun Gale Online.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'É membro da guilda de assassinos Laughing Coffin',TRUE,0),(gen_random_uuid(),q,'Planeja vingança contra antigos aliados',FALSE,1),(gen_random_uuid(),q,'Ataca jogadores dentro de Gun Gale Online',FALSE,2),(gen_random_uuid(),q,'É derrotado por Kirito e Sinon',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Yuuki Konno, do mais antigo ao mais recente.','Cobrem desde o diagnóstico de sua doença até sua morte na vida real.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'É diagnosticada com uma doença terminal',TRUE,0),(gen_random_uuid(),q,'Torna-se líder de guilda dentro do jogo',FALSE,1),(gen_random_uuid(),q,'Conhece Asuna e forma uma amizade profunda',FALSE,2),(gen_random_uuid(),q,'Falece na vida real cercada por amigos',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Kayaba Akihiko, do mais antigo ao mais recente.','Cobrem desde a criação de SAO até sua derrota final como Heathcliff.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cria o jogo mortal Sword Art Online',TRUE,0),(gen_random_uuid(),q,'Assume a identidade disfarçada de Heathcliff',FALSE,1),(gen_random_uuid(),q,'Lidera os Cavaleiros de Sangue sem revelar sua identidade',FALSE,2),(gen_random_uuid(),q,'É derrotado por Kirito no confronto final do 100º andar',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- Complemento para fechar 150 perguntas na distribuição exata
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','easy','Qual é o nome do capacete de mergulho total usado no jogo original de Sword Art Online?','Ele é o dispositivo responsável por prender os jogadores dentro do mundo virtual.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'NerveGear',TRUE,0),(gen_random_uuid(),q,'Amusphere',FALSE,1),(gen_random_uuid(),q,'Augma',FALSE,2),(gen_random_uuid(),q,'STL',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','easy','Qual é o nome do dispositivo de mergulho total mais seguro, sucessor do NerveGear, usado em jogos posteriores?','Ele elimina os riscos letais que caracterizavam o dispositivo anterior.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Amusphere',TRUE,0),(gen_random_uuid(),q,'NerveGear',FALSE,1),(gen_random_uuid(),q,'Augma',FALSE,2),(gen_random_uuid(),q,'STL',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','easy','Qual é o nome do país fictício onde se passa a maior parte da trama de Underworld?','Ele é dividido entre diferentes regiões governadas pelo sistema de leis sagradas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Human Empire',TRUE,0),(gen_random_uuid(),q,'Dark Territory',FALSE,1),(gen_random_uuid(),q,'Aincrad',FALSE,2),(gen_random_uuid(),q,'Fiore',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','medium','Qual é o nome da vila natal de Kirito e Eugeo dentro de Underworld?','Fica localizada na periferia distante do Human Empire.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rulid Village',TRUE,0),(gen_random_uuid(),q,'Centoria',FALSE,1),(gen_random_uuid(),q,'Zakkaria',FALSE,2),(gen_random_uuid(),q,'Norlangarth',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','medium','Qual é o nome da academia de elite onde os melhores espadachins de Underworld são treinados?','Kirito e Eugeo se tornam alunos dessa instituição durante sua jornada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Norlangarth Imperial Swordcraft Academy',TRUE,0),(gen_random_uuid(),q,'Human Guardian School',FALSE,1),(gen_random_uuid(),q,'Axiom Church Academy',FALSE,2),(gen_random_uuid(),q,'Centoria Institute',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','hard','Qual é o nome da espada lendária empunhada por Eugeo, considerada uma das armas mais poderosas de Underworld?','Ela é forjada a partir de um cristal encontrado nas profundezas de uma floresta sagrada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Blue Rose Sword',TRUE,0),(gen_random_uuid(),q,'Night Sky Sword',FALSE,1),(gen_random_uuid(),q,'Sacred Blade',FALSE,2),(gen_random_uuid(),q,'Time Splitter Sword',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','hard','Qual é o nome da espada dupla usada por Kirito, uma para cada mão, dentro de Underworld?','Ela reflete a habilidade rara de empunhadura dupla que ele já possuía em SAO.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Night Sky Sword',TRUE,0),(gen_random_uuid(),q,'Blue Rose Sword',FALSE,1),(gen_random_uuid(),q,'Sacred Blade',FALSE,2),(gen_random_uuid(),q,'Time Splitter Sword',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','impossible','Qual é o nome do sistema de leis sagradas que rege toda a moral e comportamento dos habitantes de Underworld?','Ele impede fisicamente os habitantes de cometerem certos atos considerados imorais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Taboo Index',TRUE,0),(gen_random_uuid(),q,'Sacred Law',FALSE,1),(gen_random_uuid(),q,'Divine Code',FALSE,2),(gen_random_uuid(),q,'Cardinal Rules',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'fill_blank','easy','O capacete de mergulho total usado no jogo original de Sword Art Online se chama ___.','Ele é o dispositivo responsável por prender os jogadores dentro do mundo virtual.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'NerveGear',TRUE,0),(gen_random_uuid(),q,'Amusphere',FALSE,1),(gen_random_uuid(),q,'Augma',FALSE,2),(gen_random_uuid(),q,'STL',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'fill_blank','easy','O dispositivo de mergulho total mais seguro, sucessor do NerveGear, se chama ___.','Ele elimina os riscos letais que caracterizavam o dispositivo anterior.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Amusphere',TRUE,0),(gen_random_uuid(),q,'NerveGear',FALSE,1),(gen_random_uuid(),q,'Augma',FALSE,2),(gen_random_uuid(),q,'STL',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'fill_blank','medium','A vila natal de Kirito e Eugeo dentro de Underworld se chama ___.','Fica localizada na periferia distante do Human Empire.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rulid Village',TRUE,0),(gen_random_uuid(),q,'Centoria',FALSE,1),(gen_random_uuid(),q,'Zakkaria',FALSE,2),(gen_random_uuid(),q,'Norlangarth',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'fill_blank','hard','A espada lendária empunhada por Eugeo, considerada uma das armas mais poderosas de Underworld, se chama ___.','Ela é forjada a partir de um cristal encontrado nas profundezas de uma floresta sagrada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Blue Rose Sword',TRUE,0),(gen_random_uuid(),q,'Night Sky Sword',FALSE,1),(gen_random_uuid(),q,'Sacred Blade',FALSE,2),(gen_random_uuid(),q,'Time Splitter Sword',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'fill_blank','hard','A espada dupla usada por Kirito dentro de Underworld se chama ___.','Ela reflete a habilidade rara de empunhadura dupla que ele já possuía em SAO.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Night Sky Sword',TRUE,0),(gen_random_uuid(),q,'Blue Rose Sword',FALSE,1),(gen_random_uuid(),q,'Sacred Blade',FALSE,2),(gen_random_uuid(),q,'Time Splitter Sword',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'fill_blank','impossible','O sistema de leis sagradas que rege toda a moral e comportamento dos habitantes de Underworld se chama ___.','Ele impede fisicamente os habitantes de cometerem certos atos considerados imorais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Taboo Index',TRUE,0),(gen_random_uuid(),q,'Sacred Law',FALSE,1),(gen_random_uuid(),q,'Divine Code',FALSE,2),(gen_random_uuid(),q,'Cardinal Rules',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'who_said','medium','Quem disse: "Eu treinei com a Blue Rose Sword minha vida inteira, e vou usá-la para proteger meus amigos até o fim"?','A frase é dita pelo melhor amigo de infância de Kirito, portador de uma espada lendária.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Eugeo',TRUE,0),(gen_random_uuid(),q,'Klein',FALSE,1),(gen_random_uuid(),q,'Agil',FALSE,2),(gen_random_uuid(),q,'Diavel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'who_said','hard','Quem disse: "As leis sagradas deste mundo me impedem fisicamente de fazer certas coisas, mas ainda assim encontro maneiras de proteger quem amo"?','A frase reflete o conflito entre livre-arbítrio e as restrições de Underworld enfrentado por Kirito.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kirito',TRUE,0),(gen_random_uuid(),q,'Eugeo',FALSE,1),(gen_random_uuid(),q,'Alice',FALSE,2),(gen_random_uuid(),q,'Quinella',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'episode_arc','impossible','Em qual arco Kirito e Eugeo estudam na academia de elite de espadachins de Underworld, aprofundando sua rivalidade amistosa em combate?','O arco estabelece as bases de amizade e treinamento antes dos conflitos maiores da saga.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Alicization',TRUE,0),(gen_random_uuid(),q,'Arco de Mother''s Rosario',FALSE,1),(gen_random_uuid(),q,'Arco de Gun Gale Online',FALSE,2),(gen_random_uuid(),q,'Arco de Fairy Dance',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','easy','Qual é o nome do sistema de habilidades automatizadas de combate usado por todos os jogadores de SAO?','Ele permite executar golpes especiais pré-programados ao invés de movimentos totalmente manuais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sword Skills',TRUE,0),(gen_random_uuid(),q,'Combat Arts',FALSE,1),(gen_random_uuid(),q,'Battle Techniques',FALSE,2),(gen_random_uuid(),q,'Weapon Arts',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','easy','Qual é o nome do item usado para criar vínculo de casamento virtual entre jogadores dentro de SAO?','Kirito e Asuna o utilizam para formalizar seu relacionamento dentro do jogo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Anel de Casamento',TRUE,0),(gen_random_uuid(),q,'Colar de União',FALSE,1),(gen_random_uuid(),q,'Pulseira do Vínculo',FALSE,2),(gen_random_uuid(),q,'Broche de Compromisso',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','medium','Qual é o nome da casa virtual comprada por Kirito e Asuna dentro de SAO, localizada em uma área remota do 22º andar?','Eles vivem lá como um casal simbólico durante boa parte do jogo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não possui nome próprio revelado com destaque',TRUE,0),(gen_random_uuid(),q,'Cabana do Lago',FALSE,1),(gen_random_uuid(),q,'Casa das Flores',FALSE,2),(gen_random_uuid(),q,'Vila Serena',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','medium','Qual é o nome do total de andares que compõem o castelo flutuante de Aincrad, cenário do primeiro jogo mortal?','Kirito e os outros jogadores precisam atravessar todos eles para escapar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'100 andares',TRUE,0),(gen_random_uuid(),q,'75 andares',FALSE,1),(gen_random_uuid(),q,'50 andares',FALSE,2),(gen_random_uuid(),q,'200 andares',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','hard','Qual é o nome da técnica de espada mais avançada de Eugeo, capaz de cortar através de defesas praticamente impenetráveis?','Ele a desenvolve ao longo de seu treinamento intenso na academia de elite.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não possui nome oficial de destaque revelado',TRUE,0),(gen_random_uuid(),q,'Vertical Square',FALSE,1),(gen_random_uuid(),q,'Starburst Stream',FALSE,2),(gen_random_uuid(),q,'Meteor Break',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','hard','Qual é o nome da técnica de espada suprema de Kirito, capaz de disparar dezesseis golpes consecutivos em sequência rápida?','Ela é considerada uma de suas técnicas mais icônicas em toda a franquia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Starburst Stream',TRUE,0),(gen_random_uuid(),q,'Vertical Square',FALSE,1),(gen_random_uuid(),q,'Meteor Break',FALSE,2),(gen_random_uuid(),q,'Vorpal Strike',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','impossible','Qual é o nome do chefe final do 75º andar de Aincrad, enfrentado por uma grande coalizão de jogadores?','A batalha resulta em baixas significativas entre os jogadores participantes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não é individualizado com destaque na série',TRUE,0),(gen_random_uuid(),q,'Illfang the Kobold Lord',FALSE,1),(gen_random_uuid(),q,'The Gleam Eyes',FALSE,2),(gen_random_uuid(),q,'The Skull Reaper',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'fill_blank','easy','O sistema de habilidades automatizadas de combate usado por todos os jogadores de SAO se chama ___.','Ele permite executar golpes especiais pré-programados ao invés de movimentos totalmente manuais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sword Skills',TRUE,0),(gen_random_uuid(),q,'Combat Arts',FALSE,1),(gen_random_uuid(),q,'Battle Techniques',FALSE,2),(gen_random_uuid(),q,'Weapon Arts',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'fill_blank','medium','O total de andares que compõem o castelo flutuante de Aincrad é de ___.','Kirito e os outros jogadores precisam atravessar todos eles para escapar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'100 andares',TRUE,0),(gen_random_uuid(),q,'75 andares',FALSE,1),(gen_random_uuid(),q,'50 andares',FALSE,2),(gen_random_uuid(),q,'200 andares',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'fill_blank','hard','A técnica de espada suprema de Kirito, capaz de disparar dezesseis golpes consecutivos em sequência rápida, se chama ___.','Ela é considerada uma de suas técnicas mais icônicas em toda a franquia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Starburst Stream',TRUE,0),(gen_random_uuid(),q,'Vertical Square',FALSE,1),(gen_random_uuid(),q,'Meteor Break',FALSE,2),(gen_random_uuid(),q,'Vorpal Strike',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'who_said','easy','Quem disse: "Vamos casar dentro do jogo, e viver como uma família de verdade até escaparmos daqui"?','A frase é dita por Kirito ao propor uma união simbólica a Asuna dentro de SAO.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kirito',TRUE,0),(gen_random_uuid(),q,'Klein',FALSE,1),(gen_random_uuid(),q,'Agil',FALSE,2),(gen_random_uuid(),q,'Diavel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'who_said','medium','Quem disse: "Eu domino dezesseis golpes consecutivos em uma única sequência, é a técnica mais avançada que já aprendi"?','A frase reflete o orgulho de Kirito sobre uma de suas técnicas de espada mais icônicas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kirito',TRUE,0),(gen_random_uuid(),q,'Eugeo',FALSE,1),(gen_random_uuid(),q,'Klein',FALSE,2),(gen_random_uuid(),q,'Agil',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'who_said','medium','Quem disse: "Nossa casa neste jogo pode ser virtual, mas os sentimentos que compartilhamos aqui são completamente reais"?','A frase é dita por Asuna refletindo sobre sua vida com Kirito dentro de SAO.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Asuna',TRUE,0),(gen_random_uuid(),q,'Silica',FALSE,1),(gen_random_uuid(),q,'Lisbeth',FALSE,2),(gen_random_uuid(),q,'Sinon',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'who_said','hard','Quem disse: "Nossa academia forma os melhores espadachins do império, e eu pretendo ser um deles algum dia"?','A frase reflete a ambição de Eugeo enquanto estudante na academia de elite de Underworld.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Eugeo',TRUE,0),(gen_random_uuid(),q,'Kirito',FALSE,1),(gen_random_uuid(),q,'Alice',FALSE,2),(gen_random_uuid(),q,'Quinella',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'who_said','impossible','Quem disse: "Eu enfrentei o chefe do 75º andar sabendo que talvez não sobrevivesse, mas alguém precisava liderar"?','A frase é dita, em memória, pelo líder que organiza a coalizão de jogadores contra um dos primeiros grandes chefes de Aincrad.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Diavel',TRUE,0),(gen_random_uuid(),q,'Klein',FALSE,1),(gen_random_uuid(),q,'Agil',FALSE,2),(gen_random_uuid(),q,'Kuradeel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','easy','Qual é o nome do menu de status onde os jogadores de SAO visualizam informações sobre HP, itens e habilidades?','Ele é acessado através de um simples gesto de deslizar a mão no ar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Menu Window',TRUE,0),(gen_random_uuid(),q,'Status Screen',FALSE,1),(gen_random_uuid(),q,'Player Panel',FALSE,2),(gen_random_uuid(),q,'HUD Central',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','easy','Qual é o nome da moeda usada dentro do jogo Sword Art Online para compras e transações?','Ela é obtida derrotando monstros e completando missões.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Col',TRUE,0),(gen_random_uuid(),q,'Yuld',FALSE,1),(gen_random_uuid(),q,'Rin',FALSE,2),(gen_random_uuid(),q,'Zeny',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','medium','Qual é o nome da empresa desenvolvedora responsável por criar o hardware e software de Sword Art Online?','Kayaba Akihiko era um dos principais engenheiros por trás do projeto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Argus',TRUE,0),(gen_random_uuid(),q,'RECT Progress',FALSE,1),(gen_random_uuid(),q,'Rath',FALSE,2),(gen_random_uuid(),q,'Kureha Corp',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','medium','Qual é o nome da empresa de defesa responsável pelo desenvolvimento do projeto Underworld?','Ela financia a pesquisa com fins militares ocultos por trás da simulação.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rath',TRUE,0),(gen_random_uuid(),q,'Argus',FALSE,1),(gen_random_uuid(),q,'RECT Progress',FALSE,2),(gen_random_uuid(),q,'Kureha Corp',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','hard','Qual é o nome do chefe final do primeiro andar de Aincrad, um kobold gigante enfrentado logo no início da série?','Sua derrota marca a primeira grande vitória coletiva dos jogadores presos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Illfang the Kobold Lord',TRUE,0),(gen_random_uuid(),q,'The Gleam Eyes',FALSE,1),(gen_random_uuid(),q,'The Skull Reaper',FALSE,2),(gen_random_uuid(),q,'Não é individualizado com destaque na série',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','hard','Qual é o nome do chefe do 74º andar de Aincrad, enfrentado por Asuna e a guilda dos Cavaleiros de Sangue?','A batalha quase resulta na morte de Asuna, salva por Kirito no último instante.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'The Gleam Eyes',TRUE,0),(gen_random_uuid(),q,'Illfang the Kobold Lord',FALSE,1),(gen_random_uuid(),q,'The Skull Reaper',FALSE,2),(gen_random_uuid(),q,'Não é individualizado com destaque na série',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'fill_blank','medium','A empresa desenvolvedora responsável por criar o hardware e software de Sword Art Online se chama ___.','Kayaba Akihiko era um dos principais engenheiros por trás do projeto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Argus',TRUE,0),(gen_random_uuid(),q,'RECT Progress',FALSE,1),(gen_random_uuid(),q,'Rath',FALSE,2),(gen_random_uuid(),q,'Kureha Corp',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'fill_blank','hard','O chefe do 74º andar de Aincrad, enfrentado por Asuna e a guilda dos Cavaleiros de Sangue, se chama ___.','A batalha quase resulta na morte de Asuna, salva por Kirito no último instante.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'The Gleam Eyes',TRUE,0),(gen_random_uuid(),q,'Illfang the Kobold Lord',FALSE,1),(gen_random_uuid(),q,'The Skull Reaper',FALSE,2),(gen_random_uuid(),q,'Não é individualizado com destaque na série',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','impossible','Qual é o nome do chefe monstruoso enfrentado no 59º andar de Aincrad, uma criatura esquelética gigante que dizima parte da coalizão de jogadores?','O confronto contra ele é um dos mais custosos em vidas de toda a saga Aincrad.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'The Skull Reaper',TRUE,0),(gen_random_uuid(),q,'The Gleam Eyes',FALSE,1),(gen_random_uuid(),q,'Illfang the Kobold Lord',FALSE,2),(gen_random_uuid(),q,'Não é individualizado com destaque na série',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sao,'text','impossible','Qual é o nome dado ao andar 76 de Aincrad, palco de um dos confrontos mais decisivos contra Laughing Coffin?','A batalha revela publicamente a natureza criminosa de vários jogadores infiltrados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não possui nome próprio com destaque revelado',TRUE,0),(gen_random_uuid(),q,'Karluin',FALSE,1),(gen_random_uuid(),q,'Algade',FALSE,2),(gen_random_uuid(),q,'Town of Beginnings',FALSE,3);

END $$;
