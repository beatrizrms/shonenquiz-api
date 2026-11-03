-- ============================================================
--  V31 — Seed de perguntas: Black Clover (150 perguntas)
--  Fonte: MyAnimeList + cânone do anime
--  Distribuição: text 40% / fill_blank 25% / who_said 20% /
--                episode_arc 10% / chronological 5%
--  Sem repetição com V5. Regras R1-R7 aplicadas.
-- ============================================================

DO $$
DECLARE
    v_system UUID := '00000000-0000-0000-0000-000000000001';
    v_bc     UUID;
    q        UUID;
BEGIN
    SELECT id INTO v_bc FROM animes WHERE slug = 'black-clover' LIMIT 1;

    -- ══════════════════════════════════════════════════════════
    -- TEXT — 60 perguntas (18 easy / 21 medium / 15 hard / 6 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','easy','Qual é o nome do melhor amigo e rival de infância de Asta, também órfão criado no mesmo templo?','Ele possui magia de espadas e sonha em se tornar Rei Mago tanto quanto Asta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yuno',TRUE,0),(gen_random_uuid(),q,'Noelle',FALSE,1),(gen_random_uuid(),q,'Yami',FALSE,2),(gen_random_uuid(),q,'Finral',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','easy','Qual é o nome do capitão dos Touros Negros, esquadrão ao qual Asta se junta?','Ele possui magia de escuridão e aparência intimidadora, apesar do coração justo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yami Sukehiro',TRUE,0),(gen_random_uuid(),q,'Fuegoleon Vermillion',FALSE,1),(gen_random_uuid(),q,'Julius Novachrono',FALSE,2),(gen_random_uuid(),q,'Nozel Silva',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','easy','Qual é o nome da princesa exilada do reino vizinho de Diamond, que se junta aos Touros Negros com magia de água?','Ela luta com autoconfiança abalada devido à discriminação familiar sofrida no clã real.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Noelle Silva',TRUE,0),(gen_random_uuid(),q,'Mimosa Vermillion',FALSE,1),(gen_random_uuid(),q,'Vanessa Enoteca',FALSE,2),(gen_random_uuid(),q,'Charlotte Roselei',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','easy','Qual é o nome do teletransportador dos Touros Negros, membro descontraído da nobreza do Reino do Trevo?','Ele possui magia espacial capaz de criar portais entre locais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Finral Roulacase',TRUE,0),(gen_random_uuid(),q,'Gauche Adlai',FALSE,1),(gen_random_uuid(),q,'Luck Voltia',FALSE,2),(gen_random_uuid(),q,'Magna Swing',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','easy','Qual é o nome do membro dos Touros Negros obcecado com a irmã mais nova, capaz de usar magia de espelhos?','Ele demonstra evolução emocional significativa ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gauche Adlai',TRUE,0),(gen_random_uuid(),q,'Luck Voltia',FALSE,1),(gen_random_uuid(),q,'Magna Swing',FALSE,2),(gen_random_uuid(),q,'Finral Roulacase',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','easy','Qual é o nome do membro dos Touros Negros com magia de raio, extremamente animado por qualquer tipo de combate?','Ele demonstra dificuldade em expressar emoções de forma convencional.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Luck Voltia',TRUE,0),(gen_random_uuid(),q,'Magna Swing',FALSE,1),(gen_random_uuid(),q,'Gauche Adlai',FALSE,2),(gen_random_uuid(),q,'Finral',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','easy','Qual é o nome do membro dos Touros Negros com magia de fogo, orgulhoso de seu status como líder informal entre os plebeus do esquadrão?','Ele forma dupla frequente com Luck em batalhas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Magna Swing',TRUE,0),(gen_random_uuid(),q,'Luck Voltia',FALSE,1),(gen_random_uuid(),q,'Gauche Adlai',FALSE,2),(gen_random_uuid(),q,'Finral',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','easy','Qual é o nome da bruxa bêbada dos Touros Negros, especialista em magia de costura capaz de fortalecer aliados?','Ela costuma carregar uma garrafa de bebida alcoólica consigo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vanessa Enoteca',TRUE,0),(gen_random_uuid(),q,'Charmy Pappitson',FALSE,1),(gen_random_uuid(),q,'Noelle Silva',FALSE,2),(gen_random_uuid(),q,'Mimosa Vermillion',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','easy','Qual é o nome da membro dos Touros Negros obcecada por comida, capaz de usar magia de algodão-doce e criaturas?','Ela é fisicamente pequena, mas surpreendentemente poderosa quando provocada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Charmy Pappitson',TRUE,0),(gen_random_uuid(),q,'Vanessa Enoteca',FALSE,1),(gen_random_uuid(),q,'Noelle Silva',FALSE,2),(gen_random_uuid(),q,'Mimosa Vermillion',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','easy','Qual é o nome do Rei Mago supremo, líder de todos os Cavaleiros Mágicos do Reino do Trevo?','Ele possui magia de tempo, extremamente rara e poderosa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Julius Novachrono',TRUE,0),(gen_random_uuid(),q,'Yami Sukehiro',FALSE,1),(gen_random_uuid(),q,'Fuegoleon Vermillion',FALSE,2),(gen_random_uuid(),q,'William Vangeance',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','easy','Qual é o nome do capitão do esquadrão Leões Dourados, membro da nobre família Vermillion?','Ele possui magia de fogo poderosa e reputação de justiça implacável.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fuegoleon Vermillion',TRUE,0),(gen_random_uuid(),q,'Nozel Silva',FALSE,1),(gen_random_uuid(),q,'William Vangeance',FALSE,2),(gen_random_uuid(),q,'Yami Sukehiro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','easy','Qual é o nome do capitão do esquadrão Águias de Prata, irmão mais velho de Noelle?','Ele demonstra frieza extrema em relação à irmã por causa de um trauma familiar antigo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nozel Silva',TRUE,0),(gen_random_uuid(),q,'Fuegoleon Vermillion',FALSE,1),(gen_random_uuid(),q,'William Vangeance',FALSE,2),(gen_random_uuid(),q,'Yami Sukehiro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','easy','Qual é o nome do capitão do esquadrão Cervo Verde de Ferro, com passado misterioso ligado aos elfos?','Ele possui magia de floresta e demonstra grande consideração por Yuno.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'William Vangeance',TRUE,0),(gen_random_uuid(),q,'Nozel Silva',FALSE,1),(gen_random_uuid(),q,'Fuegoleon Vermillion',FALSE,2),(gen_random_uuid(),q,'Rill Boismortier',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','easy','Qual é o nome da irmã mais velha de Mimosa, prima de Noelle, membro do clã Vermillion?','Ela é conhecida por sua personalidade rígida e disciplinar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não é individualizada com destaque na série',TRUE,0),(gen_random_uuid(),q,'Mimosa Vermillion',FALSE,1),(gen_random_uuid(),q,'Charlotte Roselei',FALSE,2),(gen_random_uuid(),q,'Kirsch Vermillion',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','easy','Qual é o nome do irmão mais velho de Mimosa, membro extravagante do clã Vermillion, líder do esquadrão Rosas Azuis... na verdade capitão dos Coral Peacocks?','Ele demonstra grande vaidade e afeto exagerado por sua própria beleza.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kirsch Vermillion',TRUE,0),(gen_random_uuid(),q,'Fuegoleon Vermillion',FALSE,1),(gen_random_uuid(),q,'Leopold Vermillion',FALSE,2),(gen_random_uuid(),q,'Nozel Silva',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','easy','Qual é o nome da capitã do esquadrão Rosas Azuis, exclusivamente feminino?','Ela demonstra grande timidez emocional, apesar da força implacável em combate.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Charlotte Roselei',TRUE,0),(gen_random_uuid(),q,'Mimosa Vermillion',FALSE,1),(gen_random_uuid(),q,'Vanessa Enoteca',FALSE,2),(gen_random_uuid(),q,'Noelle Silva',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','medium','Qual é o tipo de grimório que Yuno recebe, extremamente raro e ligado a espíritos do vento?','Sua raridade sinaliza grande potencial mágico desde o início da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Grimório de 4 Trevos',TRUE,0),(gen_random_uuid(),q,'Grimório de 5 Trevos',FALSE,1),(gen_random_uuid(),q,'Grimório de 3 Trevos',FALSE,2),(gen_random_uuid(),q,'Grimório de 2 Trevos',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','medium','Qual é o nome do esquadrão de elite ao qual Yuno se junta desde o início da série?','É reconhecido como o esquadrão mais prestigiado entre os Cavaleiros Mágicos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cervo Verde de Ferro',TRUE,0),(gen_random_uuid(),q,'Touros Negros',FALSE,1),(gen_random_uuid(),q,'Leões Dourados',FALSE,2),(gen_random_uuid(),q,'Águias de Prata',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','medium','Qual é o nome do espírito do vento que reside dentro do grimório de Yuno, revelado mais tarde como um antigo elfo?','Sua verdadeira origem é ligada a um massacre histórico do Reino do Trevo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sylph',TRUE,0),(gen_random_uuid(),q,'Liebe',FALSE,1),(gen_random_uuid(),q,'Zagred',FALSE,2),(gen_random_uuid(),q,'Patry',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','medium','Qual é o nome da técnica de magia anti-mágica desenvolvida por Asta, capaz de anular quase qualquer feitiço adversário?','Ela é derivada diretamente do poder de seu grimório único.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Anti-Magia',TRUE,0),(gen_random_uuid(),q,'Magia Ki',FALSE,1),(gen_random_uuid(),q,'Magia de Escuridão',FALSE,2),(gen_random_uuid(),q,'Magia de Selamento',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','medium','Qual é o nome da vila onde Asta e Yuno cresceram, cuidados por freiras em um orfanato local?','O evento inicial da história ocorre logo após eles saírem dessa vila.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hage',TRUE,0),(gen_random_uuid(),q,'Kikka',FALSE,1),(gen_random_uuid(),q,'Raque',FALSE,2),(gen_random_uuid(),q,'Nean',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','medium','Qual é o nome da freira responsável por criar Asta e Yuno no orfanato de Hage?','Ela mantém contato emocional com os dois mesmo após sua partida.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sister Lily',TRUE,0),(gen_random_uuid(),q,'Sister Theresa',FALSE,1),(gen_random_uuid(),q,'Mother Mae',FALSE,2),(gen_random_uuid(),q,'Sister Anna',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','medium','Qual é o nome do grupo criminoso especializado em roubo de Esferas Amaldiçoadas e artefatos mágicos, envolvido em conflitos iniciais da série?','Rades e Valtos fazem parte deste grupo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ladrões da Esfera',TRUE,0),(gen_random_uuid(),q,'Olho do Sol da Meia-Noite',FALSE,1),(gen_random_uuid(),q,'Cavaleiros das Trevas',FALSE,2),(gen_random_uuid(),q,'Guilda dos Feiticeiros',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','medium','Qual é o nome da organização secreta de elfos revividos, responsável por planejar a vingança contra o Reino do Trevo?','Eles buscam reviver seus corpos originais através de possessão mágica de humanos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Olho do Sol da Meia-Noite',TRUE,0),(gen_random_uuid(),q,'Ladrões da Esfera',FALSE,1),(gen_random_uuid(),q,'Cavaleiros das Trevas',FALSE,2),(gen_random_uuid(),q,'Guilda dos Feiticeiros',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','medium','Qual é o nome do reino vizinho e rival do Reino do Trevo, com foco em magia de água e diamante?','Noelle é uma exilada da família real desse reino.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Reino de Diamond',TRUE,0),(gen_random_uuid(),q,'Reino de Spade',FALSE,1),(gen_random_uuid(),q,'Reino de Heart',FALSE,2),(gen_random_uuid(),q,'Reino de Clover',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','medium','Qual é o nome do reino vizinho especializado em magia de espadas e assassinato, envolvido em conflitos posteriores da série?','Ele é palco de um golpe de estado interno explorado em profundidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Reino de Spade',TRUE,0),(gen_random_uuid(),q,'Reino de Diamond',FALSE,1),(gen_random_uuid(),q,'Reino de Heart',FALSE,2),(gen_random_uuid(),q,'Reino de Clover',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','medium','Qual é o nome do reino especializado em magia curativa e de coração, aliado que auxilia durante a invasão dos elfos?','Sua rainha viaja pessoalmente para negociar apoio ao Reino do Trevo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Reino de Heart',TRUE,0),(gen_random_uuid(),q,'Reino de Diamond',FALSE,1),(gen_random_uuid(),q,'Reino de Spade',FALSE,2),(gen_random_uuid(),q,'Reino de Clover',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','hard','Qual é o nome do demônio que reside no grimório de Asta, revestido como sombra negra dentro das páginas em branco?','Ele aparece pela primeira vez em batalha contra o líder do Olho do Sol da Meia-Noite.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Liebe',TRUE,0),(gen_random_uuid(),q,'Zagred',FALSE,1),(gen_random_uuid(),q,'Megicula',FALSE,2),(gen_random_uuid(),q,'Lucifero',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','hard','Qual é o nome do demônio líder do Olho do Sol da Meia-Noite, antagonista principal da primeira parte da série?','Ele busca abrir uma passagem completa para o mundo dos demônios.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zagred',TRUE,0),(gen_random_uuid(),q,'Liebe',FALSE,1),(gen_random_uuid(),q,'Megicula',FALSE,2),(gen_random_uuid(),q,'Lucifero',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','hard','Qual é o nome do elfo líder da vingança contra o Reino do Trevo, reencarnado no corpo de William Vangeance?','Ele é o irmão gêmeo de Licht na vida original dos elfos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Patolli (Patry)',TRUE,0),(gen_random_uuid(),q,'Licht',FALSE,1),(gen_random_uuid(),q,'Zagred',FALSE,2),(gen_random_uuid(),q,'Rhya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','hard','Qual é o nome do elfo que reencarna no corpo de Yuno, considerado o guerreiro mais poderoso dos elfos originais?','Sua espada mágica é herdada diretamente por Yuno após os eventos do arco dos elfos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Licht',TRUE,0),(gen_random_uuid(),q,'Patolli',FALSE,1),(gen_random_uuid(),q,'Rhya',FALSE,2),(gen_random_uuid(),q,'Zagred',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','hard','Qual é o nome do demônio de nível superior que possui Vanica, antagonista das sagas mais avançadas da série?','Ele é considerado um dos demônios mais poderosos e antigos existentes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Megicula',TRUE,0),(gen_random_uuid(),q,'Zagred',FALSE,1),(gen_random_uuid(),q,'Liebe',FALSE,2),(gen_random_uuid(),q,'Lucifero',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','hard','Qual é o nome do demônio supremo, considerado o mais poderoso entre todos os demônios já vistos na série?','Ele possui conexão direta com o mundo dos demônios em sua forma mais elevada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Lucifero',TRUE,0),(gen_random_uuid(),q,'Megicula',FALSE,1),(gen_random_uuid(),q,'Zagred',FALSE,2),(gen_random_uuid(),q,'Liebe',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','hard','Qual é o nome do Rei Mago anterior a Julius, que sacrifica parte de sua vida para lhe transferir seu grimório?','Sua morte prematura acelera a ascensão de Julius ao trono.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não é individualizado com destaque na série',TRUE,0),(gen_random_uuid(),q,'Conrad Leto',FALSE,1),(gen_random_uuid(),q,'Edward Avalache',FALSE,2),(gen_random_uuid(),q,'William Vangeance',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','hard','Qual é o nome do príncipe traidor de Spade, responsável por um golpe de estado explorado durante o arco do reino vizinho?','Ele possui magia de escuridão comparável à de Yami Sukehiro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Conrad Leto',TRUE,0),(gen_random_uuid(),q,'Yuno',FALSE,1),(gen_random_uuid(),q,'Zenon Zogratis',FALSE,2),(gen_random_uuid(),q,'Dante Zogratis',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','impossible','Qual é o nome do irmão mais velho do trio de demônios que domina o Reino de Spade, especialista em magia de gravidade?','Ele demonstra fascínio obsessivo pela morte e pelo próprio corpo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zenon Zogratis',TRUE,0),(gen_random_uuid(),q,'Dante Zogratis',FALSE,1),(gen_random_uuid(),q,'Vanica Zogratis',FALSE,2),(gen_random_uuid(),q,'Conrad Leto',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','impossible','Qual é o nome do líder do trio de demônios que domina o Reino de Spade, possuído por Lucifero?','Ele é considerado o antagonista mais poderoso enfrentado até então na série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dante Zogratis',TRUE,0),(gen_random_uuid(),q,'Zenon Zogratis',FALSE,1),(gen_random_uuid(),q,'Vanica Zogratis',FALSE,2),(gen_random_uuid(),q,'Conrad Leto',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','impossible','Qual é o nome da irmã mais nova do trio de demônios que domina o Reino de Spade, possuída por Megicula?','Ela demonstra sadismo extremo em relação aos próprios subordinados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vanica Zogratis',TRUE,0),(gen_random_uuid(),q,'Zenon Zogratis',FALSE,1),(gen_random_uuid(),q,'Dante Zogratis',FALSE,2),(gen_random_uuid(),q,'Conrad Leto',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- FILL_BLANK — 38 perguntas (11 easy / 13 medium / 10 hard / 4 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'fill_blank','easy','O melhor amigo e rival de infância de Asta, também órfão criado no mesmo templo, se chama ___.','Ele possui magia de espadas e sonha em se tornar Rei Mago tanto quanto Asta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yuno',TRUE,0),(gen_random_uuid(),q,'Noelle',FALSE,1),(gen_random_uuid(),q,'Yami',FALSE,2),(gen_random_uuid(),q,'Finral',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'fill_blank','easy','O capitão dos Touros Negros, esquadrão ao qual Asta se junta, se chama ___.','Ele possui magia de escuridão e aparência intimidadora, apesar do coração justo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yami Sukehiro',TRUE,0),(gen_random_uuid(),q,'Fuegoleon Vermillion',FALSE,1),(gen_random_uuid(),q,'Julius Novachrono',FALSE,2),(gen_random_uuid(),q,'Nozel Silva',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'fill_blank','easy','A princesa exilada do reino vizinho de Diamond, que se junta aos Touros Negros com magia de água, se chama ___.','Ela luta com autoconfiança abalada devido à discriminação familiar sofrida no clã real.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Noelle Silva',TRUE,0),(gen_random_uuid(),q,'Mimosa Vermillion',FALSE,1),(gen_random_uuid(),q,'Vanessa Enoteca',FALSE,2),(gen_random_uuid(),q,'Charlotte Roselei',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'fill_blank','easy','O teletransportador dos Touros Negros, membro descontraído da nobreza do Reino do Trevo, se chama ___.','Ele possui magia espacial capaz de criar portais entre locais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Finral Roulacase',TRUE,0),(gen_random_uuid(),q,'Gauche Adlai',FALSE,1),(gen_random_uuid(),q,'Luck Voltia',FALSE,2),(gen_random_uuid(),q,'Magna Swing',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'fill_blank','easy','O membro dos Touros Negros obcecado com a irmã mais nova, capaz de usar magia de espelhos, se chama ___.','Ele demonstra evolução emocional significativa ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gauche Adlai',TRUE,0),(gen_random_uuid(),q,'Luck Voltia',FALSE,1),(gen_random_uuid(),q,'Magna Swing',FALSE,2),(gen_random_uuid(),q,'Finral Roulacase',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'fill_blank','easy','O membro dos Touros Negros com magia de raio, extremamente animado por qualquer tipo de combate, se chama ___.','Ele demonstra dificuldade em expressar emoções de forma convencional.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Luck Voltia',TRUE,0),(gen_random_uuid(),q,'Magna Swing',FALSE,1),(gen_random_uuid(),q,'Gauche Adlai',FALSE,2),(gen_random_uuid(),q,'Finral',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'fill_blank','easy','A bruxa bêbada dos Touros Negros, especialista em magia de costura, se chama ___.','Ela costuma carregar uma garrafa de bebida alcoólica consigo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vanessa Enoteca',TRUE,0),(gen_random_uuid(),q,'Charmy Pappitson',FALSE,1),(gen_random_uuid(),q,'Noelle Silva',FALSE,2),(gen_random_uuid(),q,'Mimosa Vermillion',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'fill_blank','easy','O Rei Mago supremo, líder de todos os Cavaleiros Mágicos do Reino do Trevo, se chama ___.','Ele possui magia de tempo, extremamente rara e poderosa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Julius Novachrono',TRUE,0),(gen_random_uuid(),q,'Yami Sukehiro',FALSE,1),(gen_random_uuid(),q,'Fuegoleon Vermillion',FALSE,2),(gen_random_uuid(),q,'William Vangeance',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'fill_blank','easy','O capitão do esquadrão Leões Dourados, membro da nobre família Vermillion, se chama ___.','Ele possui magia de fogo poderosa e reputação de justiça implacável.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fuegoleon Vermillion',TRUE,0),(gen_random_uuid(),q,'Nozel Silva',FALSE,1),(gen_random_uuid(),q,'William Vangeance',FALSE,2),(gen_random_uuid(),q,'Yami Sukehiro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'fill_blank','easy','O capitão do esquadrão Águias de Prata, irmão mais velho de Noelle, se chama ___.','Ele demonstra frieza extrema em relação à irmã por causa de um trauma familiar antigo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nozel Silva',TRUE,0),(gen_random_uuid(),q,'Fuegoleon Vermillion',FALSE,1),(gen_random_uuid(),q,'William Vangeance',FALSE,2),(gen_random_uuid(),q,'Yami Sukehiro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'fill_blank','easy','O capitão do esquadrão Cervo Verde de Ferro, com passado misterioso ligado aos elfos, se chama ___.','Ele possui magia de floresta e demonstra grande consideração por Yuno.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'William Vangeance',TRUE,0),(gen_random_uuid(),q,'Nozel Silva',FALSE,1),(gen_random_uuid(),q,'Fuegoleon Vermillion',FALSE,2),(gen_random_uuid(),q,'Rill Boismortier',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'fill_blank','medium','O tipo de grimório que Yuno recebe, extremamente raro e ligado a espíritos do vento, se chama Grimório de ___.','Sua raridade sinaliza grande potencial mágico desde o início da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'4 Trevos',TRUE,0),(gen_random_uuid(),q,'5 Trevos',FALSE,1),(gen_random_uuid(),q,'3 Trevos',FALSE,2),(gen_random_uuid(),q,'2 Trevos',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'fill_blank','medium','O esquadrão de elite ao qual Yuno se junta desde o início da série se chama ___.','É reconhecido como o esquadrão mais prestigiado entre os Cavaleiros Mágicos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cervo Verde de Ferro',TRUE,0),(gen_random_uuid(),q,'Touros Negros',FALSE,1),(gen_random_uuid(),q,'Leões Dourados',FALSE,2),(gen_random_uuid(),q,'Águias de Prata',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'fill_blank','medium','O espírito do vento que reside dentro do grimório de Yuno, revelado mais tarde como um antigo elfo, se chama ___.','Sua verdadeira origem é ligada a um massacre histórico do Reino do Trevo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sylph',TRUE,0),(gen_random_uuid(),q,'Liebe',FALSE,1),(gen_random_uuid(),q,'Zagred',FALSE,2),(gen_random_uuid(),q,'Patry',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'fill_blank','medium','A técnica de magia anti-mágica desenvolvida por Asta, capaz de anular quase qualquer feitiço adversário, se chama ___.','Ela é derivada diretamente do poder de seu grimório único.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Anti-Magia',TRUE,0),(gen_random_uuid(),q,'Magia Ki',FALSE,1),(gen_random_uuid(),q,'Magia de Escuridão',FALSE,2),(gen_random_uuid(),q,'Magia de Selamento',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'fill_blank','medium','A vila onde Asta e Yuno cresceram, cuidados por freiras em um orfanato local, se chama ___.','O evento inicial da história ocorre logo após eles saírem dessa vila.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hage',TRUE,0),(gen_random_uuid(),q,'Kikka',FALSE,1),(gen_random_uuid(),q,'Raque',FALSE,2),(gen_random_uuid(),q,'Nean',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'fill_blank','medium','A freira responsável por criar Asta e Yuno no orfanato de Hage se chama ___.','Ela mantém contato emocional com os dois mesmo após sua partida.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sister Lily',TRUE,0),(gen_random_uuid(),q,'Sister Theresa',FALSE,1),(gen_random_uuid(),q,'Mother Mae',FALSE,2),(gen_random_uuid(),q,'Sister Anna',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'fill_blank','medium','A organização secreta de elfos revividos, responsável por planejar a vingança contra o Reino do Trevo, se chama ___.','Eles buscam reviver seus corpos originais através de possessão mágica de humanos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Olho do Sol da Meia-Noite',TRUE,0),(gen_random_uuid(),q,'Ladrões da Esfera',FALSE,1),(gen_random_uuid(),q,'Cavaleiros das Trevas',FALSE,2),(gen_random_uuid(),q,'Guilda dos Feiticeiros',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'fill_blank','medium','O reino vizinho e rival do Reino do Trevo, com foco em magia de água e diamante, se chama ___.','Noelle é uma exilada da família real desse reino.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Reino de Diamond',TRUE,0),(gen_random_uuid(),q,'Reino de Spade',FALSE,1),(gen_random_uuid(),q,'Reino de Heart',FALSE,2),(gen_random_uuid(),q,'Reino de Clover',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'fill_blank','hard','O demônio que reside no grimório de Asta, revestido como sombra negra dentro das páginas em branco, se chama ___.','Ele aparece pela primeira vez em batalha contra o líder do Olho do Sol da Meia-Noite.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Liebe',TRUE,0),(gen_random_uuid(),q,'Zagred',FALSE,1),(gen_random_uuid(),q,'Megicula',FALSE,2),(gen_random_uuid(),q,'Lucifero',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'fill_blank','hard','O demônio líder do Olho do Sol da Meia-Noite, antagonista principal da primeira parte da série, se chama ___.','Ele busca abrir uma passagem completa para o mundo dos demônios.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zagred',TRUE,0),(gen_random_uuid(),q,'Liebe',FALSE,1),(gen_random_uuid(),q,'Megicula',FALSE,2),(gen_random_uuid(),q,'Lucifero',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'fill_blank','hard','O elfo líder da vingança contra o Reino do Trevo, reencarnado no corpo de William Vangeance, se chama ___.','Ele é o irmão gêmeo de Licht na vida original dos elfos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Patolli (Patry)',TRUE,0),(gen_random_uuid(),q,'Licht',FALSE,1),(gen_random_uuid(),q,'Zagred',FALSE,2),(gen_random_uuid(),q,'Rhya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'fill_blank','hard','O elfo que reencarna no corpo de Yuno, considerado o guerreiro mais poderoso dos elfos originais, se chama ___.','Sua espada mágica é herdada diretamente por Yuno após os eventos do arco dos elfos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Licht',TRUE,0),(gen_random_uuid(),q,'Patolli',FALSE,1),(gen_random_uuid(),q,'Rhya',FALSE,2),(gen_random_uuid(),q,'Zagred',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'fill_blank','hard','O demônio de nível superior que possui Vanica, antagonista das sagas mais avançadas da série, se chama ___.','Ele é considerado um dos demônios mais poderosos e antigos existentes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Megicula',TRUE,0),(gen_random_uuid(),q,'Zagred',FALSE,1),(gen_random_uuid(),q,'Liebe',FALSE,2),(gen_random_uuid(),q,'Lucifero',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'fill_blank','hard','O demônio supremo, considerado o mais poderoso entre todos os demônios já vistos na série, se chama ___.','Ele possui conexão direta com o mundo dos demônios em sua forma mais elevada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Lucifero',TRUE,0),(gen_random_uuid(),q,'Megicula',FALSE,1),(gen_random_uuid(),q,'Zagred',FALSE,2),(gen_random_uuid(),q,'Liebe',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'fill_blank','hard','O príncipe traidor de Spade, responsável por um golpe de estado explorado durante o arco do reino vizinho, se chama ___.','Ele possui magia de escuridão comparável à de Yami Sukehiro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Conrad Leto',TRUE,0),(gen_random_uuid(),q,'Yuno',FALSE,1),(gen_random_uuid(),q,'Zenon Zogratis',FALSE,2),(gen_random_uuid(),q,'Dante Zogratis',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'fill_blank','impossible','O irmão mais velho do trio de demônios que domina o Reino de Spade, especialista em magia de gravidade, se chama ___.','Ele demonstra fascínio obsessivo pela morte e pelo próprio corpo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zenon Zogratis',TRUE,0),(gen_random_uuid(),q,'Dante Zogratis',FALSE,1),(gen_random_uuid(),q,'Vanica Zogratis',FALSE,2),(gen_random_uuid(),q,'Conrad Leto',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'fill_blank','impossible','O líder do trio de demônios que domina o Reino de Spade, possuído por Lucifero, se chama ___.','Ele é considerado o antagonista mais poderoso enfrentado até então na série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dante Zogratis',TRUE,0),(gen_random_uuid(),q,'Zenon Zogratis',FALSE,1),(gen_random_uuid(),q,'Vanica Zogratis',FALSE,2),(gen_random_uuid(),q,'Conrad Leto',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'fill_blank','impossible','A irmã mais nova do trio de demônios que domina o Reino de Spade, possuída por Megicula, se chama ___.','Ela demonstra sadismo extremo em relação aos próprios subordinados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vanica Zogratis',TRUE,0),(gen_random_uuid(),q,'Zenon Zogratis',FALSE,1),(gen_random_uuid(),q,'Dante Zogratis',FALSE,2),(gen_random_uuid(),q,'Conrad Leto',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- WHO_SAID — 30 perguntas (9 easy / 11 medium / 8 hard / 2 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'who_said','easy','Quem disse: "Eu vou me tornar Rei Mago, mesmo sem nenhuma mágica, só com pura força de vontade"?','A frase resume o objetivo de vida do protagonista, apesar de sua condição rara.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Asta',TRUE,0),(gen_random_uuid(),q,'Yuno',FALSE,1),(gen_random_uuid(),q,'Noelle',FALSE,2),(gen_random_uuid(),q,'Yami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'who_said','easy','Quem disse: "Eu também vou me tornar Rei Mago, e não vou perder para você, Asta"?','A frase reflete a rivalidade amistosa entre os dois melhores amigos de infância.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yuno',TRUE,0),(gen_random_uuid(),q,'Asta',FALSE,1),(gen_random_uuid(),q,'Noelle',FALSE,2),(gen_random_uuid(),q,'Yami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'who_said','easy','Quem disse: "Eu não me importo com quem é nobre ou plebeu, o que importa é a força de vontade de cada um no meu esquadrão"?','A frase reflete a filosofia igualitária desse capitão dos Touros Negros.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yami Sukehiro',TRUE,0),(gen_random_uuid(),q,'Fuegoleon Vermillion',FALSE,1),(gen_random_uuid(),q,'Nozel Silva',FALSE,2),(gen_random_uuid(),q,'William Vangeance',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'who_said','easy','Quem disse: "Eu não sou uma imprestável, mesmo que minha própria família pense assim de mim"?','A frase reflete a insegurança inicial da princesa exilada do Reino de Diamond.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Noelle Silva',TRUE,0),(gen_random_uuid(),q,'Mimosa Vermillion',FALSE,1),(gen_random_uuid(),q,'Vanessa Enoteca',FALSE,2),(gen_random_uuid(),q,'Charlotte Roselei',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'who_said','easy','Quem disse: "Eu adoro minha irmã mais nova mais do que qualquer coisa neste mundo, e vou protegê-la sempre"?','A frase reflete a obsessão protetora do membro dos Touros Negros com magia de espelhos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gauche Adlai',TRUE,0),(gen_random_uuid(),q,'Luck Voltia',FALSE,1),(gen_random_uuid(),q,'Magna Swing',FALSE,2),(gen_random_uuid(),q,'Finral',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'who_said','easy','Quem disse: "Eu adoro uma boa luta, quanto mais forte o adversário, mais feliz eu fico"?','A frase reflete a paixão incomum desse membro dos Touros Negros por combates intensos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Luck Voltia',TRUE,0),(gen_random_uuid(),q,'Magna Swing',FALSE,1),(gen_random_uuid(),q,'Gauche Adlai',FALSE,2),(gen_random_uuid(),q,'Finral',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'who_said','easy','Quem disse: "Eu sou o mais forte entre os plebeus deste esquadrão, e vou provar isso todos os dias"?','A frase reflete o orgulho pessoal desse membro dos Touros Negros com magia de fogo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Magna Swing',TRUE,0),(gen_random_uuid(),q,'Luck Voltia',FALSE,1),(gen_random_uuid(),q,'Gauche Adlai',FALSE,2),(gen_random_uuid(),q,'Finral',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'who_said','easy','Quem disse: "Comida primeiro, batalhas depois, sempre nessa ordem"?','A frase reflete a prioridade máxima dessa membro dos Touros Negros obcecada por comida.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Charmy Pappitson',TRUE,0),(gen_random_uuid(),q,'Vanessa Enoteca',FALSE,1),(gen_random_uuid(),q,'Noelle Silva',FALSE,2),(gen_random_uuid(),q,'Mimosa Vermillion',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'who_said','easy','Quem disse: "Eu sou lindo demais para esse mundo, é uma verdadeira dádiva minha existência"?','A frase reflete a vaidade exagerada desse membro extravagante do clã Vermillion.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kirsch Vermillion',TRUE,0),(gen_random_uuid(),q,'Fuegoleon Vermillion',FALSE,1),(gen_random_uuid(),q,'Mimosa Vermillion',FALSE,2),(gen_random_uuid(),q,'Nozel Silva',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'who_said','medium','Quem disse: "Eu escolhi acreditar em vocês, meus subordinados, mesmo quando ninguém mais acreditava"?','A frase reflete a filosofia de liderança inclusiva do Rei Mago supremo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Julius Novachrono',TRUE,0),(gen_random_uuid(),q,'Yami Sukehiro',FALSE,1),(gen_random_uuid(),q,'Fuegoleon Vermillion',FALSE,2),(gen_random_uuid(),q,'William Vangeance',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'who_said','medium','Quem disse: "Eu carrego a culpa por ser reencarnação de um elfo, e vou fazer de tudo para proteger os humanos deste reino"?','A frase reflete o dilema moral profundo do capitão de Cervo Verde de Ferro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'William Vangeance',TRUE,0),(gen_random_uuid(),q,'Nozel Silva',FALSE,1),(gen_random_uuid(),q,'Fuegoleon Vermillion',FALSE,2),(gen_random_uuid(),q,'Julius Novachrono',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'who_said','medium','Quem disse: "Eu vou abrir uma passagem completa para o mundo dos demônios, e nada vai me impedir"?','A frase é dita pelo demônio líder do Olho do Sol da Meia-Noite.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zagred',TRUE,0),(gen_random_uuid(),q,'Liebe',FALSE,1),(gen_random_uuid(),q,'Megicula',FALSE,2),(gen_random_uuid(),q,'Lucifero',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'who_said','medium','Quem disse: "Eu era apenas uma sombra sem forma, até encontrar em você um parceiro digno de confiança"?','A frase é dita pelo demônio que reside no grimório de Asta, refletindo sobre sua relação com o protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Liebe',TRUE,0),(gen_random_uuid(),q,'Zagred',FALSE,1),(gen_random_uuid(),q,'Megicula',FALSE,2),(gen_random_uuid(),q,'Lucifero',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'who_said','medium','Quem disse: "Meu povo foi massacrado injustamente, e agora é hora dos humanos pagarem por isso"?','A frase é dita pelo elfo líder da vingança, reencarnado no corpo de William Vangeance.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Patolli (Patry)',TRUE,0),(gen_random_uuid(),q,'Licht',FALSE,1),(gen_random_uuid(),q,'Zagred',FALSE,2),(gen_random_uuid(),q,'Rhya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'who_said','medium','Quem disse: "Eu era o guerreiro mais forte entre os elfos, e continuo protegendo aqueles que amo mesmo reencarnado"?','A frase é dita pelo elfo reencarnado no corpo de Yuno.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Licht',TRUE,0),(gen_random_uuid(),q,'Patolli',FALSE,1),(gen_random_uuid(),q,'Rhya',FALSE,2),(gen_random_uuid(),q,'Zagred',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'who_said','medium','Quem disse: "Eu não perdôo ninguém que ameaça meu esquadrão, mesmo que sejam nobres poderosos"?','A frase reflete a lealdade fervorosa desse capitão pelo próprio esquadrão de nobres.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fuegoleon Vermillion',TRUE,0),(gen_random_uuid(),q,'Nozel Silva',FALSE,1),(gen_random_uuid(),q,'Yami Sukehiro',FALSE,2),(gen_random_uuid(),q,'William Vangeance',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'who_said','medium','Quem disse: "Eu não confio facilmente em ninguém, muito menos na minha própria irmã caçula"?','A frase reflete a frieza calculada desse capitão do esquadrão Águias de Prata.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nozel Silva',TRUE,0),(gen_random_uuid(),q,'Fuegoleon Vermillion',FALSE,1),(gen_random_uuid(),q,'William Vangeance',FALSE,2),(gen_random_uuid(),q,'Yami Sukehiro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'who_said','medium','Quem disse: "Eu prefiro ficar em segundo plano e apoiar meus companheiros, é assim que demonstro minha força"?','A frase é dita pela capitã tímida do esquadrão exclusivamente feminino.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Charlotte Roselei',TRUE,0),(gen_random_uuid(),q,'Mimosa Vermillion',FALSE,1),(gen_random_uuid(),q,'Vanessa Enoteca',FALSE,2),(gen_random_uuid(),q,'Noelle Silva',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'who_said','hard','Quem disse: "Eu sou o demônio de nível superior mais poderoso, e nenhum humano pode se comparar ao meu verdadeiro poder"?','A frase é dita pelo demônio supremo mencionado apenas em referências ainda maiores que Megicula e Zagred.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Lucifero',TRUE,0),(gen_random_uuid(),q,'Megicula',FALSE,1),(gen_random_uuid(),q,'Zagred',FALSE,2),(gen_random_uuid(),q,'Liebe',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'who_said','hard','Quem disse: "Eu curo os aliados usando magia de veneno reversa, é irônico, mas extremamente eficaz"?','A frase é dita pela demônia possuidora de Vanica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Megicula',TRUE,0),(gen_random_uuid(),q,'Zagred',FALSE,1),(gen_random_uuid(),q,'Liebe',FALSE,2),(gen_random_uuid(),q,'Lucifero',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'who_said','hard','Quem disse: "Eu traí meu próprio reino para conquistar poder através de magia de escuridão proibida"?','A frase é dita pelo príncipe traidor de Spade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Conrad Leto',TRUE,0),(gen_random_uuid(),q,'Yuno',FALSE,1),(gen_random_uuid(),q,'Zenon Zogratis',FALSE,2),(gen_random_uuid(),q,'Dante Zogratis',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'who_said','hard','Quem disse: "Eu domino o Reino de Spade porque possuo o corpo perfeito para abrigar o demônio supremo"?','A frase é dita pelo líder do trio de demônios que controla o Reino de Spade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dante Zogratis',TRUE,0),(gen_random_uuid(),q,'Zenon Zogratis',FALSE,1),(gen_random_uuid(),q,'Vanica Zogratis',FALSE,2),(gen_random_uuid(),q,'Conrad Leto',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'who_said','hard','Quem disse: "Eu manipulo gravidade e fascínio pela morte, é a única coisa que realmente me interessa neste mundo"?','A frase é dita pelo irmão do meio do trio de demônios de Spade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zenon Zogratis',TRUE,0),(gen_random_uuid(),q,'Dante Zogratis',FALSE,1),(gen_random_uuid(),q,'Vanica Zogratis',FALSE,2),(gen_random_uuid(),q,'Conrad Leto',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'who_said','hard','Quem disse: "Eu sacrifiquei parte da minha vida ao transferir meu grimório, mas confio plenamente no meu sucessor"?','A frase é dita, através de memórias, pelo Rei Mago anterior a Julius.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não é individualizado com nome próprio na série',TRUE,0),(gen_random_uuid(),q,'Julius Novachrono',FALSE,1),(gen_random_uuid(),q,'William Vangeance',FALSE,2),(gen_random_uuid(),q,'Yami Sukehiro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'who_said','impossible','Quem disse: "Eu sinto prazer sádico em torturar meus próprios subordinados, é a única alegria que sobrou em mim"?','A frase é dita pela irmã mais nova do trio de demônios que domina Spade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vanica Zogratis',TRUE,0),(gen_random_uuid(),q,'Zenon Zogratis',FALSE,1),(gen_random_uuid(),q,'Dante Zogratis',FALSE,2),(gen_random_uuid(),q,'Conrad Leto',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'who_said','impossible','Quem disse: "Eu era irmão gêmeo de Licht na vida original, e minha vingança contra os humanos é totalmente justificada"?','A frase é dita pelo elfo reencarnado no corpo de William Vangeance.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Patolli (Patry)',TRUE,0),(gen_random_uuid(),q,'Licht',FALSE,1),(gen_random_uuid(),q,'Rhya',FALSE,2),(gen_random_uuid(),q,'Zagred',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- EPISODE_ARC — 15 perguntas (7 medium / 6 hard / 2 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'episode_arc','medium','Em qual arco Asta recebe seu grimório único de cinco trevos, marcando o início oficial de sua jornada como Cavaleiro Mágico?','O evento ocorre durante a cerimônia anual de entrega de grimórios.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Introdução',TRUE,0),(gen_random_uuid(),q,'Arco dos Ladrões da Esfera',FALSE,1),(gen_random_uuid(),q,'Arco do Exame Real',FALSE,2),(gen_random_uuid(),q,'Arco dos Elfos',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'episode_arc','medium','Em qual arco os Touros Negros enfrentam pela primeira vez membros de um grupo criminoso especializado em roubo de artefatos mágicos?','Rades e Valtos são os antagonistas principais deste primeiro grande conflito.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco dos Ladrões da Esfera',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco do Exame Real',FALSE,2),(gen_random_uuid(),q,'Arco dos Elfos',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'episode_arc','medium','Em qual arco os melhores Cavaleiros Mágicos jovens competem por vagas em um esquadrão de elite selecionado pelo próprio Rei Mago?','Asta e Yuno se destacam entre os candidatos mais promissores deste torneio.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Exame Real',TRUE,0),(gen_random_uuid(),q,'Arco dos Ladrões da Esfera',FALSE,1),(gen_random_uuid(),q,'Arco dos Elfos',FALSE,2),(gen_random_uuid(),q,'Arco de Spade',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'episode_arc','medium','Em qual arco os elfos revividos atacam simultaneamente todos os esquadrões, possuindo diversos Cavaleiros Mágicos importantes?','Yuno e William Vangeance são possuídos pelos líderes elfos durante este confronto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco dos Elfos',TRUE,0),(gen_random_uuid(),q,'Arco do Exame Real',FALSE,1),(gen_random_uuid(),q,'Arco dos Ladrões da Esfera',FALSE,2),(gen_random_uuid(),q,'Arco de Spade',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'episode_arc','medium','Em qual arco Asta e Yami viajam até o Reino de Spade para investigar um golpe de estado interno?','Eles descobrem que o reino é controlado secretamente por demônios poderosos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Spade',TRUE,0),(gen_random_uuid(),q,'Arco dos Elfos',FALSE,1),(gen_random_uuid(),q,'Arco do Exame Real',FALSE,2),(gen_random_uuid(),q,'Arco dos Ladrões da Esfera',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'episode_arc','medium','Em qual arco Asta enfrenta diretamente Dante Zogratis, possuído pelo demônio supremo Lucifero?','O confronto é considerado um dos mais desafiadores enfrentados pelo protagonista até então.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Spade',TRUE,0),(gen_random_uuid(),q,'Arco dos Elfos',FALSE,1),(gen_random_uuid(),q,'Arco do Exame Real',FALSE,2),(gen_random_uuid(),q,'Arco de Introdução',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'episode_arc','medium','Em qual arco Yami Sukehiro é promovido a capitão substituto temporário do esquadrão Touros Negros na trama principal, refletido em flashbacks de sua origem?','O evento explica sua chegada como imigrante ao Reino do Trevo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Introdução',TRUE,0),(gen_random_uuid(),q,'Arco dos Ladrões da Esfera',FALSE,1),(gen_random_uuid(),q,'Arco do Exame Real',FALSE,2),(gen_random_uuid(),q,'Arco dos Elfos',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'episode_arc','hard','Em qual arco Noelle finalmente desperta seu potencial real de magia de água, superando sua insegurança familiar de longa data?','O momento ocorre durante um confronto direto contra os elfos possuídos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco dos Elfos',TRUE,0),(gen_random_uuid(),q,'Arco do Exame Real',FALSE,1),(gen_random_uuid(),q,'Arco dos Ladrões da Esfera',FALSE,2),(gen_random_uuid(),q,'Arco de Spade',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'episode_arc','hard','Em qual arco Fuegoleon Vermillion é gravemente ferido, sendo colocado em um sono induzido para preservar sua vida?','Sua irmã mais nova assume temporariamente a liderança do esquadrão Leões Dourados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco dos Elfos',TRUE,0),(gen_random_uuid(),q,'Arco do Exame Real',FALSE,1),(gen_random_uuid(),q,'Arco dos Ladrões da Esfera',FALSE,2),(gen_random_uuid(),q,'Arco de Spade',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'episode_arc','hard','Em qual arco Asta desperta pela primeira vez o poder do Modo Demônio, fundindo-se parcialmente com Liebe?','O poder representa um salto significativo em sua força de combate.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Spade',TRUE,0),(gen_random_uuid(),q,'Arco dos Elfos',FALSE,1),(gen_random_uuid(),q,'Arco do Exame Real',FALSE,2),(gen_random_uuid(),q,'Arco dos Ladrões da Esfera',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'episode_arc','hard','Em qual arco é revelado que William Vangeance é a reencarnação do elfo Patolli, líder da vingança contra o Reino do Trevo?','A revelação chocante ocorre durante o ataque coordenado dos elfos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco dos Elfos',TRUE,0),(gen_random_uuid(),q,'Arco do Exame Real',FALSE,1),(gen_random_uuid(),q,'Arco dos Ladrões da Esfera',FALSE,2),(gen_random_uuid(),q,'Arco de Spade',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'episode_arc','hard','Em qual arco os capitães dos esquadrões de Cavaleiros Mágicos se reúnem para negociar apoio militar com reinos vizinhos contra a ameaça dos elfos?','O Reino de Heart envia sua rainha pessoalmente para essa negociação.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco dos Elfos',TRUE,0),(gen_random_uuid(),q,'Arco do Exame Real',FALSE,1),(gen_random_uuid(),q,'Arco dos Ladrões da Esfera',FALSE,2),(gen_random_uuid(),q,'Arco de Spade',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'episode_arc','impossible','Em qual arco é revelado o verdadeiro passado de Yami Sukehiro como imigrante estrangeiro que chegou ao Reino do Trevo ainda jovem?','A revelação ocorre através de flashbacks extensos sobre sua chegada e ascensão como Cavaleiro Mágico.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Introdução',TRUE,0),(gen_random_uuid(),q,'Arco dos Elfos',FALSE,1),(gen_random_uuid(),q,'Arco do Exame Real',FALSE,2),(gen_random_uuid(),q,'Arco de Spade',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'episode_arc','impossible','Em qual arco é revelada a verdadeira origem do grimório de cinco trevos de Asta, ligado diretamente ao demônio Liebe?','A revelação conecta eventos do passado distante da história dos elfos e demônios.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco dos Elfos',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco do Exame Real',FALSE,2),(gen_random_uuid(),q,'Arco de Spade',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- CHRONOLOGICAL — 7 perguntas (4 hard / 3 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'chronological','hard','Ordene cronologicamente os arcos a seguir, do mais antigo ao mais recente.','Cobrem desde a introdução de Asta até o arco de Spade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Introdução',TRUE,0),(gen_random_uuid(),q,'Exame Real',FALSE,1),(gen_random_uuid(),q,'Elfos',FALSE,2),(gen_random_uuid(),q,'Spade',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'chronological','hard','Ordene cronologicamente os seguintes eventos da jornada de Asta, do mais antigo ao mais recente.','Cobrem desde receber o grimório único até despertar o Modo Demônio.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Recebe o grimório de cinco trevos',TRUE,0),(gen_random_uuid(),q,'Junta-se aos Touros Negros',FALSE,1),(gen_random_uuid(),q,'Enfrenta o líder do Olho do Sol da Meia-Noite',FALSE,2),(gen_random_uuid(),q,'Desperta o Modo Demônio em Spade',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre os elfos, do mais antigo ao mais recente.','Cobrem desde o massacre histórico até a derrota final de Patolli.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Massacre histórico dos elfos pelo Reino do Trevo',TRUE,0),(gen_random_uuid(),q,'Renascimento dos elfos através de possessão mágica',FALSE,1),(gen_random_uuid(),q,'Possessão de Yuno e William Vangeance',FALSE,2),(gen_random_uuid(),q,'Derrota final de Patolli e libertação dos possuídos',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre Noelle, do mais antigo ao mais recente.','Cobrem desde sua chegada aos Touros Negros até seu despertar total de poder.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chega aos Touros Negros como exilada de Diamond',TRUE,0),(gen_random_uuid(),q,'Aprende a controlar melhor sua magia de água',FALSE,1),(gen_random_uuid(),q,'Enfrenta os elfos possuídos em combate direto',FALSE,2),(gen_random_uuid(),q,'Desperta totalmente seu potencial mágico',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre o Reino de Spade, do mais antigo ao mais recente.','Cobrem desde o golpe de estado até a derrota do trio de demônios.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Golpe de estado liderado por Conrad Leto',TRUE,0),(gen_random_uuid(),q,'Revelação do trio de demônios controlando o reino',FALSE,1),(gen_random_uuid(),q,'Asta enfrenta Dante Zogratis diretamente',FALSE,2),(gen_random_uuid(),q,'Derrota final do trio de demônios',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Yami Sukehiro, do mais antigo ao mais recente.','Cobrem desde sua chegada ao Reino do Trevo até se tornar capitão dos Touros Negros.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chega ao Reino do Trevo como imigrante jovem',TRUE,0),(gen_random_uuid(),q,'Desenvolve sua magia de escuridão única',FALSE,1),(gen_random_uuid(),q,'Torna-se Cavaleiro Mágico oficial',FALSE,2),(gen_random_uuid(),q,'Assume o comando dos Touros Negros',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Licht e Patolli, do mais antigo ao mais recente.','Cobrem desde o nascimento dos irmãos gêmeos elfos até a reencarnação de ambos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Licht e Patolli nascem como irmãos gêmeos elfos',TRUE,0),(gen_random_uuid(),q,'Os elfos são massacrados pelo Reino do Trevo',FALSE,1),(gen_random_uuid(),q,'Reencarnam em Yuno e William Vangeance',FALSE,2),(gen_random_uuid(),q,'São finalmente libertados de seus corpos hospedeiros',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- Complemento para fechar 150 perguntas na distribuição exata
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','easy','Qual é o nome do capitão do esquadrão Coral Peacocks, primo de Noelle e Mimosa?','Ele demonstra grande vaidade em relação à própria aparência física.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kirsch Vermillion',TRUE,0),(gen_random_uuid(),q,'Leopold Vermillion',FALSE,1),(gen_random_uuid(),q,'Fuegoleon Vermillion',FALSE,2),(gen_random_uuid(),q,'Nozel Silva',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','easy','Qual é o nome do irmão mais novo de Fuegoleon, também membro do clã Vermillion, que assume temporariamente a liderança dos Leões Dourados?','Ele se esforça para provar seu valor apesar da sombra do irmão mais velho.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Leopold Vermillion',TRUE,0),(gen_random_uuid(),q,'Kirsch Vermillion',FALSE,1),(gen_random_uuid(),q,'Mimosa Vermillion',FALSE,2),(gen_random_uuid(),q,'Fuegoleon Vermillion',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','medium','Qual é o nome da capitã do esquadrão Falcões Verdes, especialista em magia de ilusão?','Ela participa ativamente do Exame Real ao lado de outros capitães avaliadores.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dorothy Unsworth',TRUE,0),(gen_random_uuid(),q,'Charlotte Roselei',FALSE,1),(gen_random_uuid(),q,'Rill Boismortier',FALSE,2),(gen_random_uuid(),q,'Gueldre Poizot',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','medium','Qual é o nome do capitão do esquadrão Águia Azul, especialista em magia de pintura, com personalidade tímida?','Ele desenvolve amizade com Asta durante o Exame Real.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rill Boismortier',TRUE,0),(gen_random_uuid(),q,'Dorothy Unsworth',FALSE,1),(gen_random_uuid(),q,'Gueldre Poizot',FALSE,2),(gen_random_uuid(),q,'Yami Sukehiro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','hard','Qual é o nome do antigo capitão do esquadrão Roxo Pavão, expulso por corrupção durante os eventos da série?','Ele explora seus próprios subordinados para benefício pessoal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gueldre Poizot',TRUE,0),(gen_random_uuid(),q,'Rill Boismortier',FALSE,1),(gen_random_uuid(),q,'Dorothy Unsworth',FALSE,2),(gen_random_uuid(),q,'Nozel Silva',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','hard','Qual é o nome da técnica de magia de tempo usada por Julius Novachrono, capaz de acelerar drasticamente seus próprios movimentos?','Ela consome grande parte de sua energia vital a cada uso prolongado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aceleração Temporal',TRUE,0),(gen_random_uuid(),q,'Parada do Tempo',FALSE,1),(gen_random_uuid(),q,'Reversão Cronológica',FALSE,2),(gen_random_uuid(),q,'Salto Dimensional',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','impossible','Qual é o nome do grimório de quatro folhas conhecido popularmente como o "grimório do azarado", associado a más notícias em lendas do Reino do Trevo?','Asta acaba recebendo, na verdade, um grimório com zero folhas visíveis, ainda mais raro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não existe essa lenda específica na série',TRUE,0),(gen_random_uuid(),q,'Grimório de 5 Trevos',FALSE,1),(gen_random_uuid(),q,'Grimório de 3 Trevos',FALSE,2),(gen_random_uuid(),q,'Grimório de 2 Trevos',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'fill_blank','easy','O capitão do esquadrão Coral Peacocks, primo de Noelle e Mimosa, se chama ___.','Ele demonstra grande vaidade em relação à própria aparência física.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kirsch Vermillion',TRUE,0),(gen_random_uuid(),q,'Leopold Vermillion',FALSE,1),(gen_random_uuid(),q,'Fuegoleon Vermillion',FALSE,2),(gen_random_uuid(),q,'Nozel Silva',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'fill_blank','easy','O irmão mais novo de Fuegoleon, que assume temporariamente a liderança dos Leões Dourados, se chama ___.','Ele se esforça para provar seu valor apesar da sombra do irmão mais velho.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Leopold Vermillion',TRUE,0),(gen_random_uuid(),q,'Kirsch Vermillion',FALSE,1),(gen_random_uuid(),q,'Mimosa Vermillion',FALSE,2),(gen_random_uuid(),q,'Fuegoleon Vermillion',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'fill_blank','medium','A capitã do esquadrão Falcões Verdes, especialista em magia de ilusão, se chama ___.','Ela participa ativamente do Exame Real ao lado de outros capitães avaliadores.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dorothy Unsworth',TRUE,0),(gen_random_uuid(),q,'Charlotte Roselei',FALSE,1),(gen_random_uuid(),q,'Rill Boismortier',FALSE,2),(gen_random_uuid(),q,'Gueldre Poizot',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'fill_blank','medium','O capitão do esquadrão Águia Azul, especialista em magia de pintura, se chama ___.','Ele desenvolve amizade com Asta durante o Exame Real.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rill Boismortier',TRUE,0),(gen_random_uuid(),q,'Dorothy Unsworth',FALSE,1),(gen_random_uuid(),q,'Gueldre Poizot',FALSE,2),(gen_random_uuid(),q,'Yami Sukehiro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'fill_blank','hard','O antigo capitão do esquadrão Roxo Pavão, expulso por corrupção durante os eventos da série, se chama ___.','Ele explora seus próprios subordinados para benefício pessoal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gueldre Poizot',TRUE,0),(gen_random_uuid(),q,'Rill Boismortier',FALSE,1),(gen_random_uuid(),q,'Dorothy Unsworth',FALSE,2),(gen_random_uuid(),q,'Nozel Silva',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'fill_blank','hard','A técnica de magia de tempo usada por Julius Novachrono, capaz de acelerar drasticamente seus próprios movimentos, se chama ___.','Ela consome grande parte de sua energia vital a cada uso prolongado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aceleração Temporal',TRUE,0),(gen_random_uuid(),q,'Parada do Tempo',FALSE,1),(gen_random_uuid(),q,'Reversão Cronológica',FALSE,2),(gen_random_uuid(),q,'Salto Dimensional',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'who_said','medium','Quem disse: "Eu domino magia de ilusão, e adoro confundir meus adversários antes mesmo que eles percebam o que está acontecendo"?','A frase é dita pela capitã do esquadrão Falcões Verdes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dorothy Unsworth',TRUE,0),(gen_random_uuid(),q,'Charlotte Roselei',FALSE,1),(gen_random_uuid(),q,'Rill Boismortier',FALSE,2),(gen_random_uuid(),q,'Vanessa Enoteca',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'who_said','medium','Quem disse: "Eu prefiro pintar meus sentimentos a expressá-los em palavras, é mais fácil para mim dessa forma"?','A frase é dita pelo capitão tímido do esquadrão Águia Azul.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rill Boismortier',TRUE,0),(gen_random_uuid(),q,'Dorothy Unsworth',FALSE,1),(gen_random_uuid(),q,'Gueldre Poizot',FALSE,2),(gen_random_uuid(),q,'Yami Sukehiro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'who_said','hard','Quem disse: "Eu explorava meus subordinados para meu próprio benefício, e não sinto arrependimento algum por isso"?','A frase é dita pelo capitão corrupto expulso do esquadrão Roxo Pavão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gueldre Poizot',TRUE,0),(gen_random_uuid(),q,'Rill Boismortier',FALSE,1),(gen_random_uuid(),q,'Dorothy Unsworth',FALSE,2),(gen_random_uuid(),q,'Nozel Silva',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'who_said','hard','Quem disse: "Eu me esforço todos os dias para sair da sombra do meu irmão mais velho, mesmo liderando temporariamente os Leões Dourados"?','A frase é dita pelo irmão mais novo de Fuegoleon Vermillion.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Leopold Vermillion',TRUE,0),(gen_random_uuid(),q,'Kirsch Vermillion',FALSE,1),(gen_random_uuid(),q,'Mimosa Vermillion',FALSE,2),(gen_random_uuid(),q,'Fuegoleon Vermillion',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'episode_arc','medium','Em qual arco os capitães avaliam os candidatos ao Exame Real, incluindo Dorothy, Rill e Gueldre como jurados?','Vários futuros aliados e rivais de Asta são apresentados formalmente neste arco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Exame Real',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco dos Elfos',FALSE,2),(gen_random_uuid(),q,'Arco de Spade',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','easy','Qual é o nome do braço direito de Yami Sukehiro, membro veterano dos Touros Negros com magia de fumaça?','Ele auxilia na administração diária do esquadrão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não é individualizado com destaque na série',TRUE,0),(gen_random_uuid(),q,'Finral Roulacase',FALSE,1),(gen_random_uuid(),q,'Magna Swing',FALSE,2),(gen_random_uuid(),q,'Gauche Adlai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','easy','Qual é o nome do reino onde se passa toda a história principal de Black Clover, governado pelo Rei Mago?','Sua capital é protegida por diversos esquadrões de Cavaleiros Mágicos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Reino do Trevo',TRUE,0),(gen_random_uuid(),q,'Reino de Diamond',FALSE,1),(gen_random_uuid(),q,'Reino de Spade',FALSE,2),(gen_random_uuid(),q,'Reino de Heart',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','medium','Qual é o nome do sistema hierárquico de esquadrões de elite dos Cavaleiros Mágicos, do qual fazem parte Touros Negros, Leões Dourados e Águias de Prata?','Existem nove esquadrões oficiais no total.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Esquadrões de Cavaleiros Mágicos',TRUE,0),(gen_random_uuid(),q,'Ordem dos Nove',FALSE,1),(gen_random_uuid(),q,'Guarda Real',FALSE,2),(gen_random_uuid(),q,'Elite do Trevo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','medium','Qual é o nome da técnica que permite fortalecer temporariamente as roupas e o corpo de um aliado, usada por Vanessa Enoteca?','Ela costura fios mágicos diretamente sobre o tecido do usuário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Magia de Costura',TRUE,0),(gen_random_uuid(),q,'Magia de Fio',FALSE,1),(gen_random_uuid(),q,'Magia de Tecido',FALSE,2),(gen_random_uuid(),q,'Magia de Reforço',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','hard','Qual é o nome da espada mágica herdada por Yuno após a derrota de Licht, capaz de amplificar drasticamente seu poder de vento?','Ela reage especificamente ao portador do espírito Sylph.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Espada de Licht',TRUE,0),(gen_random_uuid(),q,'Espada Demoníaca',FALSE,1),(gen_random_uuid(),q,'Espada de Patolli',FALSE,2),(gen_random_uuid(),q,'Espada Real',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','hard','Qual é o nome do título concedido ao Cavaleiro Mágico mais forte entre todos os esquadrões, disputado informalmente entre capitães?','Yami e Fuegoleon são frequentemente citados como candidatos a esse título.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não existe título oficial nomeado na série',TRUE,0),(gen_random_uuid(),q,'Espada Suprema',FALSE,1),(gen_random_uuid(),q,'Punho de Ferro',FALSE,2),(gen_random_uuid(),q,'Escudo do Trevo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','impossible','Qual é o nome do vice-capitão dos Touros Negros que auxilia Yami em decisões estratégicas mais delicadas?','O esquadrão não possui hierarquia formal de vice-capitão claramente estabelecida na série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não existe essa posição formal na série',TRUE,0),(gen_random_uuid(),q,'Vanessa Enoteca',FALSE,1),(gen_random_uuid(),q,'Finral Roulacase',FALSE,2),(gen_random_uuid(),q,'Gauche Adlai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'fill_blank','easy','O reino onde se passa toda a história principal de Black Clover, governado pelo Rei Mago, se chama ___.','Sua capital é protegida por diversos esquadrões de Cavaleiros Mágicos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Reino do Trevo',TRUE,0),(gen_random_uuid(),q,'Reino de Diamond',FALSE,1),(gen_random_uuid(),q,'Reino de Spade',FALSE,2),(gen_random_uuid(),q,'Reino de Heart',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'fill_blank','medium','A técnica que permite fortalecer temporariamente as roupas e o corpo de um aliado, usada por Vanessa Enoteca, se chama ___.','Ela costura fios mágicos diretamente sobre o tecido do usuário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Magia de Costura',TRUE,0),(gen_random_uuid(),q,'Magia de Fio',FALSE,1),(gen_random_uuid(),q,'Magia de Tecido',FALSE,2),(gen_random_uuid(),q,'Magia de Reforço',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'fill_blank','hard','A espada mágica herdada por Yuno após a derrota de Licht, capaz de amplificar drasticamente seu poder de vento, se chama ___.','Ela reage especificamente ao portador do espírito Sylph.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Espada de Licht',TRUE,0),(gen_random_uuid(),q,'Espada Demoníaca',FALSE,1),(gen_random_uuid(),q,'Espada de Patolli',FALSE,2),(gen_random_uuid(),q,'Espada Real',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','easy','Qual é o nome do capitão do esquadrão Panteras Cinzas, especialista em magia de sal?','Ele demonstra grande habilidade tática apesar de sua magia incomum.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não é individualizado com destaque na série',TRUE,0),(gen_random_uuid(),q,'Rill Boismortier',FALSE,1),(gen_random_uuid(),q,'Dorothy Unsworth',FALSE,2),(gen_random_uuid(),q,'Gueldre Poizot',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','easy','Qual é o nome do vilarejo natal de Yuno antes de sua adoção no orfanato de Hage?','Ele nasceu em uma comunidade destruída antes de ser levado ao orfanato.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não é individualizado com destaque na série',TRUE,0),(gen_random_uuid(),q,'Kikka',FALSE,1),(gen_random_uuid(),q,'Raque',FALSE,2),(gen_random_uuid(),q,'Nean',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','medium','Qual é o nome da técnica de magia de ferro usada por um dos criminosos enfrentados pelos Touros Negros no início da série?','Ele forma dupla com Rades durante os conflitos iniciais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Magia de Ferro (Valtos)',TRUE,0),(gen_random_uuid(),q,'Magia de Aço',FALSE,1),(gen_random_uuid(),q,'Magia de Metal Líquido',FALSE,2),(gen_random_uuid(),q,'Magia de Bronze',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','medium','Qual é o nome do criminoso especialista em magia de algodão-doce, primeiro grande antagonista enfrentado pelos Touros Negros?','Ele sequestra Asta e Noelle no início da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rades Spirito',TRUE,0),(gen_random_uuid(),q,'Valtos',FALSE,1),(gen_random_uuid(),q,'Gueldre Poizot',FALSE,2),(gen_random_uuid(),q,'Conrad Leto',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','hard','Qual é o nome da técnica de cura de Owen, médico oficial dos Touros Negros?','Ele trata ferimentos graves de todo o esquadrão em sua clínica particular.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Magia de Cura (Owen)',TRUE,0),(gen_random_uuid(),q,'Magia de Regeneração',FALSE,1),(gen_random_uuid(),q,'Magia Vital',FALSE,2),(gen_random_uuid(),q,'Magia de Restauração',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','impossible','Qual é o nome do assistente pessoal de Julius Novachrono, responsável por auxiliar em assuntos administrativos do castelo?','Ele aparece brevemente em cenas do castelo real.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não é individualizado com destaque na série',TRUE,0),(gen_random_uuid(),q,'Marx Francois',FALSE,1),(gen_random_uuid(),q,'Fana',FALSE,2),(gen_random_uuid(),q,'Owen',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','impossible','Qual é o nome do jovem com magia de sonhos que serve como assistente próximo de Julius Novachrono?','Ele possui a habilidade de projetar visões dentro de mentes alheias.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Marx Francois',TRUE,0),(gen_random_uuid(),q,'Owen',FALSE,1),(gen_random_uuid(),q,'Fana',FALSE,2),(gen_random_uuid(),q,'Gueldre Poizot',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bc,'text','hard','Qual é o nome da elfa possuidora de uma humana capturada pelos Touros Negros, guerreira de magia de chamas entre os elfos originais?','Sua alma elfa demonstra profundo ódio pelos humanos por causa do massacre histórico.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fana',TRUE,0),(gen_random_uuid(),q,'Charla',FALSE,1),(gen_random_uuid(),q,'Rhya',FALSE,2),(gen_random_uuid(),q,'Vetto',FALSE,3);

END $$;
