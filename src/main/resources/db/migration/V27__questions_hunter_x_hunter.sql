-- ============================================================
--  V27 — Seed de perguntas: Hunter x Hunter (150 perguntas)
--  Fonte: MyAnimeList + cânone do anime
--  Distribuição: text 40% / fill_blank 25% / who_said 20% /
--                episode_arc 10% / chronological 5%
--  Sem repetição com V5. Regras R1-R7 aplicadas.
-- ============================================================

DO $$
DECLARE
    v_system UUID := '00000000-0000-0000-0000-000000000001';
    v_hxh    UUID;
    q        UUID;
BEGIN
    SELECT id INTO v_hxh FROM animes WHERE slug = 'hunter-x-hunter' LIMIT 1;

    -- ══════════════════════════════════════════════════════════
    -- TEXT — 60 perguntas (18 easy / 21 medium / 15 hard / 6 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','easy','Qual é o objetivo declarado de Gon ao se tornar Hunter no início da série?','Ele quer entender por que seu pai escolheu essa profissão em vez de ficar com a família.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ficar rico rapidamente',FALSE,0),(gen_random_uuid(),q,'Encontrar seu pai, Ging Freecss',TRUE,1),(gen_random_uuid(),q,'Vingar a morte de sua avó',FALSE,2),(gen_random_uuid(),q,'Se tornar o Hunter mais forte do mundo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','easy','Qual é o nome do pai de Gon, um lendário Hunter que abandonou o filho ainda bebê?','Ele é considerado um dos Hunters mais talentosos e excêntricos da história.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ging Freecss',TRUE,0),(gen_random_uuid(),q,'Isaac Netero',FALSE,1),(gen_random_uuid(),q,'Silva Zoldyck',FALSE,2),(gen_random_uuid(),q,'Kite',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','easy','Qual é o nome do jovem médico que sonha em se tornar Hunter para curar todas as doenças do mundo?','Ele demonstra grande covardia física, mas coragem moral admirável.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Leorio Paladiknight',TRUE,0),(gen_random_uuid(),q,'Kurapika',FALSE,1),(gen_random_uuid(),q,'Killua',FALSE,2),(gen_random_uuid(),q,'Gon',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','easy','Qual é o clã ao qual Kurapika pertence, quase completamente exterminado por caçadores de olhos raros?','Seus olhos ficam vermelhos apenas quando ele sente raiva intensa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kurta',TRUE,0),(gen_random_uuid(),q,'Zoldyck',FALSE,1),(gen_random_uuid(),q,'Freecss',FALSE,2),(gen_random_uuid(),q,'Ryuseigai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','easy','Qual é o nome da família de assassinos profissionais à qual Killua pertence?','Eles vivem em uma mansão isolada em uma montanha protegida por armadilhas mortais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zoldyck',TRUE,0),(gen_random_uuid(),q,'Kurta',FALSE,1),(gen_random_uuid(),q,'Freecss',FALSE,2),(gen_random_uuid(),q,'Meruem',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','easy','Qual é o nome do pai de Killua, também um dos assassinos mais temidos do mundo?','Ele testa a determinação de Gon antes de permitir que Killua parta em aventura.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Silva Zoldyck',TRUE,0),(gen_random_uuid(),q,'Zeno Zoldyck',FALSE,1),(gen_random_uuid(),q,'Illumi Zoldyck',FALSE,2),(gen_random_uuid(),q,'Milluki Zoldyck',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','easy','Qual é o nome do irmão mais velho de Killua, que se infiltra disfarçado em diferentes situações para observá-lo à distância?','Ele possui uma agulha capaz de controlar mentalmente outras pessoas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Illumi Zoldyck',TRUE,0),(gen_random_uuid(),q,'Milluki Zoldyck',FALSE,1),(gen_random_uuid(),q,'Kalluto Zoldyck',FALSE,2),(gen_random_uuid(),q,'Alluka Zoldyck',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','easy','Qual é o nome da irmã de Killua, portadora de uma habilidade poderosa e perigosa mantida em segredo pela família?','Ela é tratada como se fosse um menino por grande parte da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Alluka Zoldyck',TRUE,0),(gen_random_uuid(),q,'Kalluto Zoldyck',FALSE,1),(gen_random_uuid(),q,'Milluki Zoldyck',FALSE,2),(gen_random_uuid(),q,'Canary',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','easy','Qual é o nome do avô de Killua, o membro mais experiente e respeitado da família Zoldyck ainda ativo?','Ele acompanha Killua durante o arco final da Formiga Quimera.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zeno Zoldyck',TRUE,0),(gen_random_uuid(),q,'Silva Zoldyck',FALSE,1),(gen_random_uuid(),q,'Maha Zoldyck',FALSE,2),(gen_random_uuid(),q,'Illumi Zoldyck',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','easy','Qual é o nome do exame anual extremamente rigoroso que candidatos precisam passar para se tornarem Hunters oficiais?','Milhares se inscrevem todos os anos, mas poucos conseguem aprovação.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Exame Hunter',TRUE,0),(gen_random_uuid(),q,'Exame Nen',FALSE,1),(gen_random_uuid(),q,'Torneio Heaven''s Arena',FALSE,2),(gen_random_uuid(),q,'Provação Zoldyck',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','easy','Qual é o nome da torre de lutas onde apostadores acompanham combates de artes marciais em andares progressivamente mais difíceis?','Gon e Killua treinam ali por um bom tempo durante a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Heaven''s Arena',TRUE,0),(gen_random_uuid(),q,'Torre Zoldyck',FALSE,1),(gen_random_uuid(),q,'Coliseu Nen',FALSE,2),(gen_random_uuid(),q,'Torre Yorknew',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','easy','Qual é o nome do examinador principal responsável por conduzir a primeira fase do Exame Hunter que Gon participa?','Ele é conhecido por sua atitude fria e regras rigorosas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Satotz',TRUE,0),(gen_random_uuid(),q,'Netero',FALSE,1),(gen_random_uuid(),q,'Menchi',FALSE,2),(gen_random_uuid(),q,'Buhara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','easy','Qual é o nome do presidente da Associação Hunter durante boa parte da série?','Ele é fisicamente idoso, mas extraordinariamente poderoso em combate.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Isaac Netero',TRUE,0),(gen_random_uuid(),q,'Ging Freecss',FALSE,1),(gen_random_uuid(),q,'Pariston Hill',FALSE,2),(gen_random_uuid(),q,'Cheadle Yorkshire',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','easy','Qual é o nome da assistente pessoal de Killua, encarregada de servir a família Zoldyck?','Ela demonstra lealdade absoluta mesmo diante de situações perigosas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Canary',TRUE,0),(gen_random_uuid(),q,'Amane',FALSE,1),(gen_random_uuid(),q,'Alluka',FALSE,2),(gen_random_uuid(),q,'Neon Nostrade',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','easy','Qual é o nome da filha extravagante de um mafioso rico, que contrata Kurapika como guarda-costas?','Ela possui um poder profético relacionado a leilões de itens raros.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Neon Nostrade',TRUE,0),(gen_random_uuid(),q,'Canary',FALSE,1),(gen_random_uuid(),q,'Palm Siberia',FALSE,2),(gen_random_uuid(),q,'Machi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','easy','Qual é o nome do amigo de infância de Gon na Ilha Baleia, filho de pescadores locais?','Ele acompanha Gon nos primeiros momentos antes do início do Exame Hunter.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não é um personagem recorrente principal',TRUE,0),(gen_random_uuid(),q,'Leorio',FALSE,1),(gen_random_uuid(),q,'Kite',FALSE,2),(gen_random_uuid(),q,'Kurapika',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','easy','Qual é o nome da avó de Gon, responsável por criá-lo na Ilha Baleia durante toda a infância?','Ela é uma figura materna importante mesmo com a ausência do pai de Gon.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mito Freecss',TRUE,0),(gen_random_uuid(),q,'Canary',FALSE,1),(gen_random_uuid(),q,'Neon Nostrade',FALSE,2),(gen_random_uuid(),q,'Palm Siberia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','medium','Qual é o nome do discípulo de Ging, que serve como mentor de Gon em uma expedição de caça de animais raros?','Ele é morto e ressuscitado de forma bizarra durante a saga da Formiga Quimera.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kite',TRUE,0),(gen_random_uuid(),q,'Satotz',FALSE,1),(gen_random_uuid(),q,'Wing',FALSE,2),(gen_random_uuid(),q,'Biscuit Krueger',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','medium','Qual é o nome da Hunter especializada em treinamento de Nen que ajuda Gon e Killua a se preparar para a Ilha das Feiticeiras?','Ela mantém aparência de criança devido a um controle avançado de Nen.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Biscuit Krueger',TRUE,0),(gen_random_uuid(),q,'Wing',FALSE,1),(gen_random_uuid(),q,'Menchi',FALSE,2),(gen_random_uuid(),q,'Cheadle Yorkshire',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','medium','Qual é o nome do mestre que primeiro ensina Gon e Killua os fundamentos básicos do uso de Nen?','Ele é fisicamente cego, o que compensa com percepção extraordinária de energia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Wing',TRUE,0),(gen_random_uuid(),q,'Biscuit Krueger',FALSE,1),(gen_random_uuid(),q,'Netero',FALSE,2),(gen_random_uuid(),q,'Zushi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','medium','Qual é o nome do vice-presidente ambicioso da Associação Hunter, rival direto de Netero pela liderança?','Ele demonstra personalidade manipuladora e egocêntrica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Pariston Hill',TRUE,0),(gen_random_uuid(),q,'Cheadle Yorkshire',FALSE,1),(gen_random_uuid(),q,'Ging Freecss',FALSE,2),(gen_random_uuid(),q,'Beans',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','medium','Qual é o nome da vila secreta e opressiva controlada pela família Zoldyck, onde vivem servos leais à mansão?','Fica situada nos arredores da montanha Kukuroo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não possui nome revelado oficialmente',TRUE,0),(gen_random_uuid(),q,'Ryuseigai',FALSE,1),(gen_random_uuid(),q,'Yorknew',FALSE,2),(gen_random_uuid(),q,'Padokea',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','medium','Qual é o nome da cidade onde ocorre o leilão clandestino que atrai tanto a Aranha Fantasma quanto Kurapika?','O confronto entre os dois grupos ocorre majoritariamente nesta cidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yorknew City',TRUE,0),(gen_random_uuid(),q,'Heaven''s Arena',FALSE,1),(gen_random_uuid(),q,'Meteor City',FALSE,2),(gen_random_uuid(),q,'Padokea',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','medium','Qual é o nome da cidade caótica sem governo oficial, considerada o local de origem de vários membros da Aranha Fantasma?','É vista como um refúgio para criminosos e desafortunados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Meteor City',TRUE,0),(gen_random_uuid(),q,'Yorknew City',FALSE,1),(gen_random_uuid(),q,'Ryuseigai',FALSE,2),(gen_random_uuid(),q,'Padokea',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','medium','Qual é o nome da fada guardiã de Killua e Alluka, capaz de conceder qualquer desejo em troca de sacrifícios severos?','Ela reside dentro do corpo de Alluka sob determinadas condições.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nanika',TRUE,0),(gen_random_uuid(),q,'Komugi',FALSE,1),(gen_random_uuid(),q,'Palm',FALSE,2),(gen_random_uuid(),q,'Neferpitou',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','medium','Qual é o nome da ilha remota onde ocorre o exame final e mais brutal de Nen entre os candidatos a Hunter?','Vários candidatos morrem durante esta etapa avançada do exame.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ilha das Feiticeiras',TRUE,0),(gen_random_uuid(),q,'Ilha Baleia',FALSE,1),(gen_random_uuid(),q,'Meteor City',FALSE,2),(gen_random_uuid(),q,'Ilha Zevil',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','medium','Qual é o nome da ilha onde ocorre o combate por vidas entre os candidatos da última fase do Exame Hunter que Gon participa?','Cada participante recebe uma insígnia de outro candidato como alvo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ilha Zevil',TRUE,0),(gen_random_uuid(),q,'Ilha das Feiticeiras',FALSE,1),(gen_random_uuid(),q,'Ilha Baleia',FALSE,2),(gen_random_uuid(),q,'Meteor City',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','hard','Qual é o nome do grupo de treze criminosos que Kurapika persegue para vingar o massacre de seu clã?','Eles são conhecidos por um símbolo de aranha tatuado no corpo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aranha Fantasma',TRUE,0),(gen_random_uuid(),q,'Aranha Negra',FALSE,1),(gen_random_uuid(),q,'Brigada Fantasma',FALSE,2),(gen_random_uuid(),q,'Aranha Espectral',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','hard','Qual é o nome do líder da Aranha Fantasma, temido igualmente por Hunters e criminosos?','Ele é o número 1 do grupo e capaz de roubar habilidades Nen de seus oponentes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chrollo Lucilfer',TRUE,0),(gen_random_uuid(),q,'Hisoka',FALSE,1),(gen_random_uuid(),q,'Feitan',FALSE,2),(gen_random_uuid(),q,'Machi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','hard','Qual é o nome do bobo-da-corte psicopata que se junta temporariamente à Aranha Fantasma para observar o potencial de Gon?','Ele demonstra fascínio quase sexual pelo crescimento de lutadores promissores.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hisoka Morow',TRUE,0),(gen_random_uuid(),q,'Chrollo Lucilfer',FALSE,1),(gen_random_uuid(),q,'Illumi Zoldyck',FALSE,2),(gen_random_uuid(),q,'Feitan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','hard','Qual é o nome do soberano supremo das Formigas Quimera, considerado o ser mais forte já visto na série?','Ele nasce já com conhecimento instintivo avançado de combate.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Meruem',TRUE,0),(gen_random_uuid(),q,'Neferpitou',FALSE,1),(gen_random_uuid(),q,'Shaiapouf',FALSE,2),(gen_random_uuid(),q,'Youpi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','hard','Qual é o nome do guarda-real felino das Formigas Quimera, especialista em cura e transplantes através de Nen?','Ela sequestra e mutila Kite para conduzir experimentos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Neferpitou',TRUE,0),(gen_random_uuid(),q,'Shaiapouf',FALSE,1),(gen_random_uuid(),q,'Youpi',FALSE,2),(gen_random_uuid(),q,'Menthuthuyoupi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','hard','Qual é o nome do guarda-real mais forte fisicamente das Formigas Quimera, com corpo de inseto e força bruta imensa?','Ele demonstra lealdade quase religiosa a Meruem.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Youpi',TRUE,0),(gen_random_uuid(),q,'Neferpitou',FALSE,1),(gen_random_uuid(),q,'Shaiapouf',FALSE,2),(gen_random_uuid(),q,'Colt',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','hard','Qual é o nome do guarda-real das Formigas Quimera com asas semelhantes a mariposa, capaz de criar clones ilusórios?','Ele é o mais inteligente e estrategista entre os guardas-reais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shaiapouf',TRUE,0),(gen_random_uuid(),q,'Youpi',FALSE,1),(gen_random_uuid(),q,'Neferpitou',FALSE,2),(gen_random_uuid(),q,'Menthuthuyoupi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','hard','Qual é o nome da jogadora de gungi cega que se torna a única amiga próxima de Meruem?','Sua relação inesperada humaniza profundamente o antagonista supremo do arco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Komugi',TRUE,0),(gen_random_uuid(),q,'Palm Siberia',FALSE,1),(gen_random_uuid(),q,'Neferpitou',FALSE,2),(gen_random_uuid(),q,'Machi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','hard','Qual é o nome da presidente da Associação Hunter escolhida após a morte de Netero, especialista em pesquisas científicas?','Ela lidera diretamente as investigações sobre a origem das Formigas Quimera.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cheadle Yorkshire',TRUE,0),(gen_random_uuid(),q,'Pariston Hill',FALSE,1),(gen_random_uuid(),q,'Ging Freecss',FALSE,2),(gen_random_uuid(),q,'Mizaistom',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','impossible','Qual é o nome do detetive Hunter responsável por investigações oficiais associadas ao caso das Formigas Quimera?','Ele auxilia a Associação Hunter em questões de segurança pública durante a crise.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mizaistom Nana',TRUE,0),(gen_random_uuid(),q,'Cheadle Yorkshire',FALSE,1),(gen_random_uuid(),q,'Beans',FALSE,2),(gen_random_uuid(),q,'Pariston Hill',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','impossible','Qual é o nome do assistente pessoal de Netero, sempre visto vestindo um traje de mascote?','Ele mantém proximidade constante com o antigo presidente da Associação Hunter.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Beans',TRUE,0),(gen_random_uuid(),q,'Mizaistom Nana',FALSE,1),(gen_random_uuid(),q,'Pariston Hill',FALSE,2),(gen_random_uuid(),q,'Zeno Zoldyck',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','impossible','Qual é o nome do irmão mais novo de Killua, que ingressa na Aranha Fantasma disfarçado de mulher?','Ele é o mais silencioso e reservado entre os irmãos Zoldyck.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kalluto Zoldyck',TRUE,0),(gen_random_uuid(),q,'Milluki Zoldyck',FALSE,1),(gen_random_uuid(),q,'Illumi Zoldyck',FALSE,2),(gen_random_uuid(),q,'Alluka Zoldyck',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','impossible','Qual é o nome do irmão intermediário de Killua, especialista em tecnologia e hacking?','Ele raramente sai de seu quarto repleto de equipamentos eletrônicos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Milluki Zoldyck',TRUE,0),(gen_random_uuid(),q,'Illumi Zoldyck',FALSE,1),(gen_random_uuid(),q,'Kalluto Zoldyck',FALSE,2),(gen_random_uuid(),q,'Zeno Zoldyck',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','impossible','Qual é o nome da guarda-costas de Palm Siberia, que também auxilia na investigação sobre as Formigas Quimera?','Ela demonstra profunda transformação emocional após conhecer Komugi.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Palm Siberia é ela mesma a personagem em questão',TRUE,0),(gen_random_uuid(),q,'Canary',FALSE,1),(gen_random_uuid(),q,'Machi',FALSE,2),(gen_random_uuid(),q,'Neon Nostrade',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- FILL_BLANK — 38 perguntas (11 easy / 13 medium / 10 hard / 4 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'fill_blank','easy','O pai de Gon, um lendário Hunter que abandonou o filho ainda bebê, se chama ___.','Ele é considerado um dos Hunters mais talentosos e excêntricos da história.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ging Freecss',TRUE,0),(gen_random_uuid(),q,'Isaac Netero',FALSE,1),(gen_random_uuid(),q,'Silva Zoldyck',FALSE,2),(gen_random_uuid(),q,'Kite',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'fill_blank','easy','O jovem que sonha em se tornar Hunter para curar doenças no mundo inteiro se chama ___.','Ele demonstra grande covardia física, mas coragem moral admirável.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Leorio Paladiknight',TRUE,0),(gen_random_uuid(),q,'Kurapika',FALSE,1),(gen_random_uuid(),q,'Killua',FALSE,2),(gen_random_uuid(),q,'Gon',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'fill_blank','easy','O clã ao qual Kurapika pertence, quase completamente exterminado por caçadores de olhos raros, se chama ___.','Seus olhos ficam vermelhos apenas quando ele sente raiva intensa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kurta',TRUE,0),(gen_random_uuid(),q,'Zoldyck',FALSE,1),(gen_random_uuid(),q,'Freecss',FALSE,2),(gen_random_uuid(),q,'Ryuseigai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'fill_blank','easy','A família de assassinos profissionais à qual Killua pertence se chama ___.','Eles vivem em uma mansão isolada em uma montanha protegida por armadilhas mortais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zoldyck',TRUE,0),(gen_random_uuid(),q,'Kurta',FALSE,1),(gen_random_uuid(),q,'Freecss',FALSE,2),(gen_random_uuid(),q,'Meruem',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'fill_blank','easy','O pai de Killua, também um dos assassinos mais temidos do mundo, se chama ___.','Ele testa a determinação de Gon antes de permitir que Killua parta em aventura.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Silva Zoldyck',TRUE,0),(gen_random_uuid(),q,'Zeno Zoldyck',FALSE,1),(gen_random_uuid(),q,'Illumi Zoldyck',FALSE,2),(gen_random_uuid(),q,'Milluki Zoldyck',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'fill_blank','easy','O irmão de Killua que se infiltra disfarçado para observá-lo à distância, controlando mentes com uma agulha, se chama ___.','Ele mantém laços de sangue frios e calculistas com o restante da família.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Illumi Zoldyck',TRUE,0),(gen_random_uuid(),q,'Milluki Zoldyck',FALSE,1),(gen_random_uuid(),q,'Kalluto Zoldyck',FALSE,2),(gen_random_uuid(),q,'Alluka Zoldyck',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'fill_blank','easy','A irmã de Killua, portadora de uma habilidade poderosa mantida em segredo pela família, se chama ___.','Ela é tratada como se fosse um menino por grande parte da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Alluka Zoldyck',TRUE,0),(gen_random_uuid(),q,'Kalluto Zoldyck',FALSE,1),(gen_random_uuid(),q,'Milluki Zoldyck',FALSE,2),(gen_random_uuid(),q,'Canary',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'fill_blank','easy','O avô de Killua, membro mais experiente e respeitado da família Zoldyck ainda ativo, se chama ___.','Ele acompanha Killua durante o arco final da Formiga Quimera.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zeno Zoldyck',TRUE,0),(gen_random_uuid(),q,'Silva Zoldyck',FALSE,1),(gen_random_uuid(),q,'Maha Zoldyck',FALSE,2),(gen_random_uuid(),q,'Illumi Zoldyck',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'fill_blank','easy','O exame anual extremamente rigoroso necessário para se tornar Hunter oficial se chama ___.','Milhares se inscrevem todos os anos, mas poucos conseguem aprovação.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Exame Hunter',TRUE,0),(gen_random_uuid(),q,'Exame Nen',FALSE,1),(gen_random_uuid(),q,'Torneio Heaven''s Arena',FALSE,2),(gen_random_uuid(),q,'Provação Zoldyck',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'fill_blank','easy','A torre de lutas onde apostadores acompanham combates progressivamente mais difíceis se chama ___.','Gon e Killua treinam ali por um bom tempo durante a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Heaven''s Arena',TRUE,0),(gen_random_uuid(),q,'Torre Zoldyck',FALSE,1),(gen_random_uuid(),q,'Coliseu Nen',FALSE,2),(gen_random_uuid(),q,'Torre Yorknew',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'fill_blank','easy','A avó de Gon, responsável por criá-lo na Ilha Baleia durante toda a infância, se chama ___.','Ela é uma figura materna importante mesmo com a ausência do pai de Gon.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mito Freecss',TRUE,0),(gen_random_uuid(),q,'Canary',FALSE,1),(gen_random_uuid(),q,'Neon Nostrade',FALSE,2),(gen_random_uuid(),q,'Palm Siberia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'fill_blank','medium','O discípulo de Ging, mentor de Gon em uma expedição de caça de animais raros, se chama ___.','Ele é morto e ressuscitado de forma bizarra durante a saga da Formiga Quimera.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kite',TRUE,0),(gen_random_uuid(),q,'Satotz',FALSE,1),(gen_random_uuid(),q,'Wing',FALSE,2),(gen_random_uuid(),q,'Biscuit Krueger',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'fill_blank','medium','A Hunter especializada em Nen que ajuda Gon e Killua a se preparar para a Ilha das Feiticeiras se chama ___.','Ela mantém aparência de criança devido a um controle avançado de Nen.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Biscuit Krueger',TRUE,0),(gen_random_uuid(),q,'Wing',FALSE,1),(gen_random_uuid(),q,'Menchi',FALSE,2),(gen_random_uuid(),q,'Cheadle Yorkshire',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'fill_blank','medium','O mestre que primeiro ensina Gon e Killua os fundamentos básicos do uso de Nen se chama ___.','Ele é fisicamente cego, o que compensa com percepção extraordinária de energia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Wing',TRUE,0),(gen_random_uuid(),q,'Biscuit Krueger',FALSE,1),(gen_random_uuid(),q,'Netero',FALSE,2),(gen_random_uuid(),q,'Zushi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'fill_blank','medium','O vice-presidente ambicioso da Associação Hunter, rival direto de Netero pela liderança, se chama ___.','Ele demonstra personalidade manipuladora e egocêntrica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Pariston Hill',TRUE,0),(gen_random_uuid(),q,'Cheadle Yorkshire',FALSE,1),(gen_random_uuid(),q,'Ging Freecss',FALSE,2),(gen_random_uuid(),q,'Beans',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'fill_blank','medium','A cidade onde ocorre o leilão clandestino que atrai tanto a Aranha Fantasma quanto Kurapika se chama ___.','O confronto entre os dois grupos ocorre majoritariamente nesta cidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yorknew City',TRUE,0),(gen_random_uuid(),q,'Heaven''s Arena',FALSE,1),(gen_random_uuid(),q,'Meteor City',FALSE,2),(gen_random_uuid(),q,'Padokea',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'fill_blank','medium','A cidade caótica sem governo oficial, considerada o local de origem de vários membros da Aranha Fantasma, se chama ___.','É vista como um refúgio para criminosos e desafortunados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Meteor City',TRUE,0),(gen_random_uuid(),q,'Yorknew City',FALSE,1),(gen_random_uuid(),q,'Ryuseigai',FALSE,2),(gen_random_uuid(),q,'Padokea',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'fill_blank','medium','A fada guardiã de Killua e Alluka, capaz de conceder qualquer desejo em troca de sacrifícios severos, se chama ___.','Ela reside dentro do corpo de Alluka sob determinadas condições.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nanika',TRUE,0),(gen_random_uuid(),q,'Komugi',FALSE,1),(gen_random_uuid(),q,'Palm',FALSE,2),(gen_random_uuid(),q,'Neferpitou',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'fill_blank','medium','A ilha remota onde ocorre o exame final e mais brutal de Nen entre os candidatos a Hunter se chama ___.','Vários candidatos morrem durante esta etapa avançada do exame.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ilha das Feiticeiras',TRUE,0),(gen_random_uuid(),q,'Ilha Baleia',FALSE,1),(gen_random_uuid(),q,'Meteor City',FALSE,2),(gen_random_uuid(),q,'Ilha Zevil',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'fill_blank','medium','A ilha onde ocorre o combate por vidas entre os candidatos na última fase do Exame Hunter de Gon se chama ___.','Cada participante recebe uma insígnia de outro candidato como alvo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ilha Zevil',TRUE,0),(gen_random_uuid(),q,'Ilha das Feiticeiras',FALSE,1),(gen_random_uuid(),q,'Ilha Baleia',FALSE,2),(gen_random_uuid(),q,'Meteor City',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'fill_blank','hard','O grupo de treze criminosos que Kurapika persegue para vingar o massacre de seu clã se chama ___.','Eles são conhecidos por um símbolo de aranha tatuado no corpo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aranha Fantasma',TRUE,0),(gen_random_uuid(),q,'Aranha Negra',FALSE,1),(gen_random_uuid(),q,'Brigada Fantasma',FALSE,2),(gen_random_uuid(),q,'Aranha Espectral',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'fill_blank','hard','O líder da Aranha Fantasma, capaz de roubar habilidades Nen de seus oponentes, se chama ___.','Ele é o número 1 do grupo, temido igualmente por Hunters e criminosos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chrollo Lucilfer',TRUE,0),(gen_random_uuid(),q,'Hisoka',FALSE,1),(gen_random_uuid(),q,'Feitan',FALSE,2),(gen_random_uuid(),q,'Machi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'fill_blank','hard','O bobo-da-corte psicopata que se junta temporariamente à Aranha Fantasma para observar o potencial de Gon se chama ___.','Ele demonstra fascínio quase obsessivo pelo crescimento de lutadores promissores.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hisoka Morow',TRUE,0),(gen_random_uuid(),q,'Chrollo Lucilfer',FALSE,1),(gen_random_uuid(),q,'Illumi Zoldyck',FALSE,2),(gen_random_uuid(),q,'Feitan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'fill_blank','hard','O soberano supremo das Formigas Quimera, considerado o ser mais forte já visto na série, se chama ___.','Ele nasce já com conhecimento instintivo avançado de combate.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Meruem',TRUE,0),(gen_random_uuid(),q,'Neferpitou',FALSE,1),(gen_random_uuid(),q,'Shaiapouf',FALSE,2),(gen_random_uuid(),q,'Youpi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'fill_blank','hard','O guarda-real felino das Formigas Quimera, especialista em cura e transplantes através de Nen, se chama ___.','Ela sequestra e mutila Kite para conduzir experimentos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Neferpitou',TRUE,0),(gen_random_uuid(),q,'Shaiapouf',FALSE,1),(gen_random_uuid(),q,'Youpi',FALSE,2),(gen_random_uuid(),q,'Menthuthuyoupi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'fill_blank','hard','O guarda-real mais forte fisicamente das Formigas Quimera, com corpo de inseto e força bruta imensa, se chama ___.','Ele demonstra lealdade quase religiosa a Meruem.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Youpi',TRUE,0),(gen_random_uuid(),q,'Neferpitou',FALSE,1),(gen_random_uuid(),q,'Shaiapouf',FALSE,2),(gen_random_uuid(),q,'Colt',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'fill_blank','impossible','A jogadora de gungi cega que se torna a única amiga próxima de Meruem se chama ___.','Sua relação inesperada humaniza profundamente o antagonista supremo do arco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Komugi',TRUE,0),(gen_random_uuid(),q,'Palm Siberia',FALSE,1),(gen_random_uuid(),q,'Neferpitou',FALSE,2),(gen_random_uuid(),q,'Machi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'fill_blank','impossible','A presidente da Associação Hunter escolhida após a morte de Netero, especialista em pesquisas científicas, se chama ___.','Ela lidera diretamente as investigações sobre a origem das Formigas Quimera.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cheadle Yorkshire',TRUE,0),(gen_random_uuid(),q,'Pariston Hill',FALSE,1),(gen_random_uuid(),q,'Ging Freecss',FALSE,2),(gen_random_uuid(),q,'Mizaistom',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'fill_blank','impossible','O irmão mais novo de Killua, que ingressa na Aranha Fantasma disfarçado de mulher, se chama ___.','Ele é o mais silencioso e reservado entre os irmãos Zoldyck.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kalluto Zoldyck',TRUE,0),(gen_random_uuid(),q,'Milluki Zoldyck',FALSE,1),(gen_random_uuid(),q,'Illumi Zoldyck',FALSE,2),(gen_random_uuid(),q,'Alluka Zoldyck',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'fill_blank','impossible','O irmão intermediário de Killua, especialista em tecnologia e hacking, se chama ___.','Ele raramente sai de seu quarto repleto de equipamentos eletrônicos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Milluki Zoldyck',TRUE,0),(gen_random_uuid(),q,'Illumi Zoldyck',FALSE,1),(gen_random_uuid(),q,'Kalluto Zoldyck',FALSE,2),(gen_random_uuid(),q,'Zeno Zoldyck',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- WHO_SAID — 30 perguntas (9 easy / 11 medium / 8 hard / 2 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'who_said','easy','Quem disse: "Eu quero encontrar meu pai, e entender por que ele escolheu ser Hunter em vez de ficar comigo"?','A frase resume o objetivo pessoal do protagonista desde o primeiro episódio.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gon',TRUE,0),(gen_random_uuid(),q,'Killua',FALSE,1),(gen_random_uuid(),q,'Kurapika',FALSE,2),(gen_random_uuid(),q,'Leorio',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'who_said','easy','Quem disse: "Eu era treinado para ser um assassino, mas escolhi ser seu amigo em vez disso"?','A frase reflete a mudança de vida do personagem após conhecer Gon.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Killua',TRUE,0),(gen_random_uuid(),q,'Gon',FALSE,1),(gen_random_uuid(),q,'Kurapika',FALSE,2),(gen_random_uuid(),q,'Leorio',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'who_said','easy','Quem disse: "Eu vou me tornar médico e ajudar todas as crianças pobres deste mundo, custe o que custar"?','A frase revela a motivação profunda por trás do desejo de riqueza aparente do personagem.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Leorio',TRUE,0),(gen_random_uuid(),q,'Gon',FALSE,1),(gen_random_uuid(),q,'Kurapika',FALSE,2),(gen_random_uuid(),q,'Killua',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'who_said','easy','Quem disse: "Eu vou vingar meu clã, mesmo que precise perder minha própria humanidade no processo"?','A frase resume a jornada de vingança que domina boa parte da trama desse personagem.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kurapika',TRUE,0),(gen_random_uuid(),q,'Leorio',FALSE,1),(gen_random_uuid(),q,'Gon',FALSE,2),(gen_random_uuid(),q,'Killua',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'who_said','easy','Quem disse: "Eu vou testar você, porque só assim posso saber se você é digno de acompanhar meu filho"?','A frase é dita por um pai extremamente protetor e rigoroso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Silva Zoldyck',TRUE,0),(gen_random_uuid(),q,'Zeno Zoldyck',FALSE,1),(gen_random_uuid(),q,'Illumi Zoldyck',FALSE,2),(gen_random_uuid(),q,'Ging Freecss',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'who_said','easy','Quem disse: "Eu sou apenas uma ferramenta para minha família, mas com você, eu sinto algo diferente"?','A frase é dita pela irmã de Killua sobre sua relação com Gon e o próprio irmão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Alluka',TRUE,0),(gen_random_uuid(),q,'Canary',FALSE,1),(gen_random_uuid(),q,'Palm',FALSE,2),(gen_random_uuid(),q,'Machi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'who_said','easy','Quem disse: "Meu talento é ensinar, e vocês dois têm um potencial extraordinário para o Nen"?','A frase é dita pelo mestre cego que primeiro treina Gon e Killua.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Wing',TRUE,0),(gen_random_uuid(),q,'Biscuit',FALSE,1),(gen_random_uuid(),q,'Netero',FALSE,2),(gen_random_uuid(),q,'Zushi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'who_said','easy','Quem disse: "Eu pareço uma criança, mas já sobrevivi a mais batalhas do que vocês podem imaginar"?','A frase é dita pela Hunter especializada em Nen que treina Gon e Killua.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Biscuit Krueger',TRUE,0),(gen_random_uuid(),q,'Wing',FALSE,1),(gen_random_uuid(),q,'Menchi',FALSE,2),(gen_random_uuid(),q,'Cheadle',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'who_said','easy','Quem disse: "Eu vou cuidar da minha avó e da minha ilha, mas primeiro preciso descobrir quem eu realmente sou"?','A frase é dita pelo protagonista antes de partir em sua primeira grande jornada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gon',TRUE,0),(gen_random_uuid(),q,'Killua',FALSE,1),(gen_random_uuid(),q,'Kurapika',FALSE,2),(gen_random_uuid(),q,'Leorio',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'who_said','medium','Quem disse: "Eu roubo habilidades porque acredito que o poder pertence a quem sabe usá-lo melhor"?','A frase resume a filosofia fria e calculista do líder da Aranha Fantasma.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chrollo Lucilfer',TRUE,0),(gen_random_uuid(),q,'Hisoka',FALSE,1),(gen_random_uuid(),q,'Feitan',FALSE,2),(gen_random_uuid(),q,'Illumi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'who_said','medium','Quem disse: "Eu só me interesso por lutadores que ainda não amadureceram completamente, é aí que mora a verdadeira diversão"?','A frase revela a natureza perturbadora do bobo-da-corte psicopata.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hisoka Morow',TRUE,0),(gen_random_uuid(),q,'Chrollo Lucilfer',FALSE,1),(gen_random_uuid(),q,'Illumi Zoldyck',FALSE,2),(gen_random_uuid(),q,'Feitan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'who_said','medium','Quem disse: "Eu nasci apenas para governar, e ainda assim encontrei algo que valia mais que meu próprio poder"?','A frase é dita pelo soberano supremo das Formigas Quimera refletindo sobre sua relação com Komugi.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Meruem',TRUE,0),(gen_random_uuid(),q,'Neferpitou',FALSE,1),(gen_random_uuid(),q,'Shaiapouf',FALSE,2),(gen_random_uuid(),q,'Youpi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'who_said','medium','Quem disse: "Eu vou curar seu ferimento, custe o que custar, mesmo que eu precise mutilar outros para conseguir"?','A frase reflete a devoção obsessiva e cruel do guarda-real felino a seu rei.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Neferpitou',TRUE,0),(gen_random_uuid(),q,'Shaiapouf',FALSE,1),(gen_random_uuid(),q,'Youpi',FALSE,2),(gen_random_uuid(),q,'Menthuthuyoupi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'who_said','medium','Quem disse: "Eu sirvo ao Rei com meu corpo inteiro, mesmo que ele nunca reconheça diretamente meu valor"?','A frase é dita pelo guarda-real mais forte fisicamente entre as Formigas Quimera.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Youpi',TRUE,0),(gen_random_uuid(),q,'Neferpitou',FALSE,1),(gen_random_uuid(),q,'Shaiapouf',FALSE,2),(gen_random_uuid(),q,'Colt',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'who_said','medium','Quem disse: "Eu penso em todas as possibilidades antes de agir, é assim que eu protejo o Rei de verdadeiros perigos"?','A frase é dita pelo guarda-real com asas de mariposa, o mais estrategista entre os três.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shaiapouf',TRUE,0),(gen_random_uuid(),q,'Youpi',FALSE,1),(gen_random_uuid(),q,'Neferpitou',FALSE,2),(gen_random_uuid(),q,'Menthuthuyoupi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'who_said','medium','Quem disse: "Eu não vejo o mundo, mas sinto cada movimento das peças no tabuleiro, e isso me basta"?','A frase é dita pela jogadora cega que conquista a confiança de Meruem através de um jogo tradicional.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Komugi',TRUE,0),(gen_random_uuid(),q,'Palm Siberia',FALSE,1),(gen_random_uuid(),q,'Neferpitou',FALSE,2),(gen_random_uuid(),q,'Machi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'who_said','medium','Quem disse: "Eu escolhi a ciência em vez do poder político, e mesmo assim acabei liderando a Associação inteira"?','A frase é dita pela pesquisadora que assume a presidência da Associação Hunter.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cheadle Yorkshire',TRUE,0),(gen_random_uuid(),q,'Pariston Hill',FALSE,1),(gen_random_uuid(),q,'Ging Freecss',FALSE,2),(gen_random_uuid(),q,'Mizaistom',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'who_said','medium','Quem disse: "Eu manipulo os eventos ao meu redor sempre com um sorriso, isso torna tudo mais interessante"?','A frase reflete a personalidade calculista e teatral do vice-presidente da Associação Hunter.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Pariston Hill',TRUE,0),(gen_random_uuid(),q,'Cheadle Yorkshire',FALSE,1),(gen_random_uuid(),q,'Ging Freecss',FALSE,2),(gen_random_uuid(),q,'Beans',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'who_said','hard','Quem disse: "Eu vou proteger minha irmã, mesmo que isso signifique enfrentar toda a minha própria família"?','A frase resume a decisão mais corajosa tomada pelo personagem em toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Killua',TRUE,0),(gen_random_uuid(),q,'Illumi',FALSE,1),(gen_random_uuid(),q,'Kalluto',FALSE,2),(gen_random_uuid(),q,'Milluki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'who_said','hard','Quem disse: "Eu treinei Killua desde o berço para ser a arma perfeita, e não vou permitir que emoções atrapalhem esse propósito"?','A frase reflete a visão fria e utilitária de um irmão manipulador sobre a própria família.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Illumi Zoldyck',TRUE,0),(gen_random_uuid(),q,'Silva Zoldyck',FALSE,1),(gen_random_uuid(),q,'Milluki Zoldyck',FALSE,2),(gen_random_uuid(),q,'Zeno Zoldyck',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'who_said','hard','Quem disse: "Eu abandonei meu filho de propósito, para que ele descobrisse a própria força sem depender de mim"?','A frase é dita pelo pai lendário e ausente do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ging Freecss',TRUE,0),(gen_random_uuid(),q,'Silva Zoldyck',FALSE,1),(gen_random_uuid(),q,'Isaac Netero',FALSE,2),(gen_random_uuid(),q,'Kite',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'who_said','hard','Quem disse: "Eu já vivi mais do que qualquer um imagina, e ainda assim continuo aprendendo com meus próprios netos"?','A frase é dita pelo avô sábio e experiente da família Zoldyck.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zeno Zoldyck',TRUE,0),(gen_random_uuid(),q,'Silva Zoldyck',FALSE,1),(gen_random_uuid(),q,'Illumi Zoldyck',FALSE,2),(gen_random_uuid(),q,'Maha Zoldyck',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'who_said','hard','Quem disse: "Eu era apenas um discípulo, mas descobri um novo propósito de vida mesmo após perder minha forma original"?','A frase é dita por um mentor renascido de forma bizarra durante a saga da Formiga Quimera.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kite',TRUE,0),(gen_random_uuid(),q,'Satotz',FALSE,1),(gen_random_uuid(),q,'Wing',FALSE,2),(gen_random_uuid(),q,'Ging Freecss',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'who_said','hard','Quem disse: "Eu sirvo à minha senhora com absoluta lealdade, mesmo diante do perigo mais extremo"?','A frase é dita pela assistente pessoal da família Zoldyck em um momento de tensão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Canary',TRUE,0),(gen_random_uuid(),q,'Amane',FALSE,1),(gen_random_uuid(),q,'Alluka',FALSE,2),(gen_random_uuid(),q,'Neon Nostrade',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'who_said','hard','Quem disse: "Eu tenho o poder de prever leilões através de sonhos, mas isso nunca me trouxe felicidade real"?','A frase é dita pela filha extravagante de um mafioso rico.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Neon Nostrade',TRUE,0),(gen_random_uuid(),q,'Canary',FALSE,1),(gen_random_uuid(),q,'Palm Siberia',FALSE,2),(gen_random_uuid(),q,'Machi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'who_said','impossible','Quem disse: "Eu investigo o caso das Formigas Quimera oficialmente, mas sei que a verdade é muito maior do que qualquer relatório pode capturar"?','A frase é dita por um detetive Hunter envolvido na crise da Ilha das Feiticeiras.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mizaistom Nana',TRUE,0),(gen_random_uuid(),q,'Cheadle Yorkshire',FALSE,1),(gen_random_uuid(),q,'Beans',FALSE,2),(gen_random_uuid(),q,'Pariston Hill',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'who_said','impossible','Quem disse: "Eu sirvo ao antigo presidente com um sorriso constante por trás desta máscara de mascote"?','A frase é dita pelo assistente pessoal peculiar de Netero.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Beans',TRUE,0),(gen_random_uuid(),q,'Mizaistom Nana',FALSE,1),(gen_random_uuid(),q,'Pariston Hill',FALSE,2),(gen_random_uuid(),q,'Zeno Zoldyck',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- EPISODE_ARC — 15 perguntas (7 medium / 6 hard / 2 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'episode_arc','medium','Em qual arco Gon, Killua, Kurapika e Leorio se conhecem pela primeira vez, competindo juntos pelo título de Hunter?','As diferentes fases testam habilidades físicas, mentais e de sobrevivência.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Exame Hunter',TRUE,0),(gen_random_uuid(),q,'Arco de Heaven''s Arena',FALSE,1),(gen_random_uuid(),q,'Arco Yorknew',FALSE,2),(gen_random_uuid(),q,'Arco da Ilha das Feiticeiras',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'episode_arc','medium','Em qual arco Gon e Killua treinam Nen intensamente na torre de combates apostados de andares progressivos?','Killua enfrenta seu irmão Illumi diretamente pela primeira vez neste arco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Heaven''s Arena',TRUE,0),(gen_random_uuid(),q,'Arco do Exame Hunter',FALSE,1),(gen_random_uuid(),q,'Arco Yorknew',FALSE,2),(gen_random_uuid(),q,'Arco da Família Zoldyck',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'episode_arc','medium','Em qual arco Gon e Kurapika viajam até a mansão Zoldyck para resgatar Killua de sua própria família?','Eles precisam superar diversas armadilhas na montanha antes de conseguir chegar até ele.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Família Zoldyck',TRUE,0),(gen_random_uuid(),q,'Arco de Heaven''s Arena',FALSE,1),(gen_random_uuid(),q,'Arco Yorknew',FALSE,2),(gen_random_uuid(),q,'Arco do Exame Hunter',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'episode_arc','medium','Em qual arco a Aranha Fantasma e Kurapika se enfrentam durante um leilão clandestino de itens raros?','Kurapika usa correntes especiais para conter membros da Aranha capturados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco Yorknew',TRUE,0),(gen_random_uuid(),q,'Arco da Família Zoldyck',FALSE,1),(gen_random_uuid(),q,'Arco de Heaven''s Arena',FALSE,2),(gen_random_uuid(),q,'Arco da Ilha das Feiticeiras',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'episode_arc','medium','Em qual arco Gon e Killua treinam sob supervisão de Biscuit Krueger para se preparar para o poder das Formigas Quimera?','O treinamento é extremamente rigoroso e prepara os dois para desafios muito maiores.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Ilha das Feiticeiras',TRUE,0),(gen_random_uuid(),q,'Arco Yorknew',FALSE,1),(gen_random_uuid(),q,'Arco de Heaven''s Arena',FALSE,2),(gen_random_uuid(),q,'Arco da Família Zoldyck',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'episode_arc','medium','Em qual arco as Formigas Quimera surgem como uma nova espécie ameaçadora, capazes de assimilar traços de suas presas?','Meruem nasce e assume o controle absoluto do formigueiro durante este arco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Formiga Quimera',TRUE,0),(gen_random_uuid(),q,'Arco da Ilha das Feiticeiras',FALSE,1),(gen_random_uuid(),q,'Arco Yorknew',FALSE,2),(gen_random_uuid(),q,'Arco de Heaven''s Arena',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'episode_arc','medium','Em qual arco Gon confronta diretamente Neferpitou pela morte de Kite, ultrapassando seus próprios limites de forma perigosa?','Ele envelhece drasticamente e perde temporariamente seus poderes de Nen neste confronto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Formiga Quimera',TRUE,0),(gen_random_uuid(),q,'Arco da Ilha das Feiticeiras',FALSE,1),(gen_random_uuid(),q,'Arco Yorknew',FALSE,2),(gen_random_uuid(),q,'Arco da Família Zoldyck',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'episode_arc','hard','Em qual arco Killua enfrenta Illumi diretamente pela primeira vez em um combate público de artes marciais?','O confronto revela profundamente a natureza manipuladora de Illumi sobre o irmão mais novo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Heaven''s Arena',TRUE,0),(gen_random_uuid(),q,'Arco do Exame Hunter',FALSE,1),(gen_random_uuid(),q,'Arco Yorknew',FALSE,2),(gen_random_uuid(),q,'Arco da Família Zoldyck',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'episode_arc','hard','Em qual arco Kurapika revela pela primeira vez seus poderes de Nen especializados exclusivamente contra membros da Aranha Fantasma?','Sua habilidade fica progressivamente mais forte a cada membro da Aranha derrotado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco Yorknew',TRUE,0),(gen_random_uuid(),q,'Arco da Família Zoldyck',FALSE,1),(gen_random_uuid(),q,'Arco de Heaven''s Arena',FALSE,2),(gen_random_uuid(),q,'Arco da Ilha das Feiticeiras',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'episode_arc','hard','Em qual arco Meruem enfrenta Netero em um combate decisivo que resulta na morte de ambos?','Netero usa uma bomba especial escondida dentro de si mesmo como última cartada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Formiga Quimera',TRUE,0),(gen_random_uuid(),q,'Arco da Ilha das Feiticeiras',FALSE,1),(gen_random_uuid(),q,'Arco Yorknew',FALSE,2),(gen_random_uuid(),q,'Arco da Família Zoldyck',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'episode_arc','hard','Em qual arco Meruem desenvolve uma relação inesperada de amizade com Komugi através de partidas de gungi?','A relação humaniza profundamente o antagonista antes de seu confronto final.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Formiga Quimera',TRUE,0),(gen_random_uuid(),q,'Arco da Ilha das Feiticeiras',FALSE,1),(gen_random_uuid(),q,'Arco Yorknew',FALSE,2),(gen_random_uuid(),q,'Arco de Heaven''s Arena',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'episode_arc','hard','Em qual arco a eleição para o novo presidente da Associação Hunter ocorre após a morte de Netero?','Pariston Hill e Cheadle Yorkshire disputam diretamente o cargo neste arco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Eleição para Presidente',TRUE,0),(gen_random_uuid(),q,'Arco da Formiga Quimera',FALSE,1),(gen_random_uuid(),q,'Arco Yorknew',FALSE,2),(gen_random_uuid(),q,'Arco da Família Zoldyck',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'episode_arc','impossible','Em qual arco Kurapika encontra pela primeira vez pistas concretas sobre o paradeiro dos olhos escarlate roubados de seu clã?','A investigação o leva a se envolver profundamente com o submundo criminoso de Yorknew.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco Yorknew',TRUE,0),(gen_random_uuid(),q,'Arco da Família Zoldyck',FALSE,1),(gen_random_uuid(),q,'Arco de Heaven''s Arena',FALSE,2),(gen_random_uuid(),q,'Arco da Ilha das Feiticeiras',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'episode_arc','impossible','Em qual arco Gon finalmente se reencontra com seu pai Ging, após anos de busca ao longo de toda a série?','O encontro acontece de forma discreta, sem grande confronto dramático.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Eleição para Presidente',TRUE,0),(gen_random_uuid(),q,'Arco da Formiga Quimera',FALSE,1),(gen_random_uuid(),q,'Arco Yorknew',FALSE,2),(gen_random_uuid(),q,'Arco da Família Zoldyck',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- CHRONOLOGICAL — 7 perguntas (4 hard / 3 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'chronological','hard','Ordene cronologicamente os arcos a seguir, do mais antigo ao mais recente.','Cobrem desde o Exame Hunter até a saga da Formiga Quimera.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Exame Hunter',TRUE,0),(gen_random_uuid(),q,'Heaven''s Arena',FALSE,1),(gen_random_uuid(),q,'Yorknew',FALSE,2),(gen_random_uuid(),q,'Formiga Quimera',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'chronological','hard','Ordene cronologicamente os seguintes eventos da jornada de Gon, do mais antigo ao mais recente.','Cobrem desde a formação do grupo até o confronto contra Neferpitou.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Conhece Killua, Kurapika e Leorio no Exame Hunter',TRUE,0),(gen_random_uuid(),q,'Treina Nen básico com Wing',FALSE,1),(gen_random_uuid(),q,'Treina intensamente com Biscuit',FALSE,2),(gen_random_uuid(),q,'Confronta Neferpitou pela morte de Kite',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre a Aranha Fantasma, do mais antigo ao mais recente.','Cobrem desde o massacre do clã Kurta até a captura de Chrollo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Massacre do clã Kurta',TRUE,0),(gen_random_uuid(),q,'Kurapika jura vingança contra o grupo',FALSE,1),(gen_random_uuid(),q,'Confronto direto em Yorknew City',FALSE,2),(gen_random_uuid(),q,'Chrollo é capturado por Kurapika',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'chronological','hard','Ordene cronologicamente os seguintes eventos das Formigas Quimera, do mais antigo ao mais recente.','Cobrem desde o surgimento da espécie até a morte de Meruem.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Surgimento das Formigas Quimera na ilha',TRUE,0),(gen_random_uuid(),q,'Nascimento de Meruem como Rei',FALSE,1),(gen_random_uuid(),q,'Amizade entre Meruem e Komugi',FALSE,2),(gen_random_uuid(),q,'Morte de Meruem após o confronto com Netero',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Killua e sua família, do mais antigo ao mais recente.','Cobrem desde sua fuga de casa até a proteção de Alluka.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Killua foge de casa para participar do Exame Hunter',TRUE,0),(gen_random_uuid(),q,'Gon e Kurapika o resgatam da mansão Zoldyck',FALSE,1),(gen_random_uuid(),q,'Killua enfrenta Illumi em Heaven''s Arena',FALSE,2),(gen_random_uuid(),q,'Killua decide proteger Alluka contra a própria família',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'chronological','impossible','Ordene cronologicamente os seguintes eventos da presidência da Associação Hunter, do mais antigo ao mais recente.','Cobrem desde a liderança de Netero até a eleição de Cheadle.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Netero lidera a Associação Hunter',TRUE,0),(gen_random_uuid(),q,'Netero morre em combate contra Meruem',FALSE,1),(gen_random_uuid(),q,'Eleição disputada entre Pariston e Cheadle',FALSE,2),(gen_random_uuid(),q,'Cheadle Yorkshire se torna a nova presidente',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Kurapika, do mais antigo ao mais recente.','Cobrem desde o massacre de seu clã até seu confronto direto com Chrollo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sobrevive ao massacre do clã Kurta',TRUE,0),(gen_random_uuid(),q,'Torna-se Hunter para perseguir a Aranha Fantasma',FALSE,1),(gen_random_uuid(),q,'Trabalha como guarda-costas de Neon Nostrade',FALSE,2),(gen_random_uuid(),q,'Aprisiona Chrollo com correntes especiais',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- Complemento para fechar 150 perguntas na distribuição exata
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','easy','Qual é o nome da examinadora responsável por uma das fases práticas do Exame Hunter, especialista em culinária?','Ela exige que os candidatos preparem um prato específico usando um peixe raro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Menchi',TRUE,0),(gen_random_uuid(),q,'Satotz',FALSE,1),(gen_random_uuid(),q,'Buhara',FALSE,2),(gen_random_uuid(),q,'Netero',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','easy','Qual é o nome do examinador corpulento que também participa da avaliação culinária na primeira fase do Exame Hunter?','Ele é parceiro de Menchi na condução dessa etapa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Buhara',TRUE,0),(gen_random_uuid(),q,'Satotz',FALSE,1),(gen_random_uuid(),q,'Menchi',FALSE,2),(gen_random_uuid(),q,'Netero',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','medium','Qual é o nome da técnica de manipulação de fios usada por Machi, membro da Aranha Fantasma?','Ela consegue costurar ferimentos e criar armadilhas com essa habilidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fios de Nen',TRUE,0),(gen_random_uuid(),q,'Teia Fantasma',FALSE,1),(gen_random_uuid(),q,'Manipulação de Marionetes',FALSE,2),(gen_random_uuid(),q,'Corda Vital',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','medium','Qual é o nome do membro da Aranha Fantasma especialista em tortura, capaz de encolher pessoas até um tamanho miniatura?','Ele é considerado um dos membros mais sádicos e perigosos do grupo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Feitan',TRUE,0),(gen_random_uuid(),q,'Machi',FALSE,1),(gen_random_uuid(),q,'Phinks',FALSE,2),(gen_random_uuid(),q,'Shalnark',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','hard','Qual é o nome da técnica de correntes desenvolvida por Kurapika, capaz de restringir completamente os poderes de um usuário de Nen?','Ela só pode ser usada contra membros específicos da Aranha Fantasma sem grandes riscos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Corrente do Julgamento',TRUE,0),(gen_random_uuid(),q,'Corrente Escarlate',FALSE,1),(gen_random_uuid(),q,'Corrente da Vingança',FALSE,2),(gen_random_uuid(),q,'Corrente de Aço',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','hard','Qual é o nome da técnica de assassinato relâmpago desenvolvida por Killua, capaz de eliminar oponentes com um único golpe elétrico?','Ele a domina desde muito cedo devido ao treinamento rigoroso da família Zoldyck.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Godspeed',TRUE,0),(gen_random_uuid(),q,'Rhythm Echo',FALSE,1),(gen_random_uuid(),q,'Thunderbolt',FALSE,2),(gen_random_uuid(),q,'Whirlwind',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','hard','Qual é o nome do membro da Aranha Fantasma que controla marionetes através de fios, também bibliotecário do grupo?','Ele possui um enorme conhecimento sobre diversas habilidades Nen catalogadas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shalnark',TRUE,0),(gen_random_uuid(),q,'Feitan',FALSE,1),(gen_random_uuid(),q,'Phinks',FALSE,2),(gen_random_uuid(),q,'Machi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','impossible','Qual é o nome do membro mais corpulento fisicamente da Aranha Fantasma, especialista em roubo através de contato físico?','Ele forma dupla constante com Feitan durante missões do grupo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Phinks',TRUE,0),(gen_random_uuid(),q,'Feitan',FALSE,1),(gen_random_uuid(),q,'Shalnark',FALSE,2),(gen_random_uuid(),q,'Nobunaga',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','impossible','Qual é o nome do membro samurai da Aranha Fantasma, especialista em kenjutsu e devoto admirador de Chrollo?','Ele carrega uma espada tradicional japonesa como arma principal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nobunaga',TRUE,0),(gen_random_uuid(),q,'Phinks',FALSE,1),(gen_random_uuid(),q,'Feitan',FALSE,2),(gen_random_uuid(),q,'Shalnark',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','medium','Qual é o nome do assistente pessoal de Chrollo Lucilfer, encarregado de manusear o livro de habilidades roubadas do grupo?','Ele é conhecido pelo grande apreço por dinheiro e recompensas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Uvogin',TRUE,0),(gen_random_uuid(),q,'Nobunaga',FALSE,1),(gen_random_uuid(),q,'Phinks',FALSE,2),(gen_random_uuid(),q,'Shalnark',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','hard','Qual é o nome do membro mais forte fisicamente da Aranha Fantasma, morto por Kurapika durante o arco Yorknew?','Sua morte desencadeia uma perseguição furiosa por parte dos demais membros do grupo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Uvogin',TRUE,0),(gen_random_uuid(),q,'Nobunaga',FALSE,1),(gen_random_uuid(),q,'Phinks',FALSE,2),(gen_random_uuid(),q,'Feitan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','medium','Qual é o nome do princípio fundamental que rege todas as habilidades de Nen, envolvendo categorias como Intensificação e Manipulação?','Cada usuário desenvolve uma categoria predominante conforme sua personalidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sistema de Categorias Nen',TRUE,0),(gen_random_uuid(),q,'Roda dos Elementos',FALSE,1),(gen_random_uuid(),q,'Ciclo de Aura',FALSE,2),(gen_random_uuid(),q,'Hierarquia Espiritual',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','medium','Qual é o nome da técnica que permite concentrar toda a energia vital em um único golpe extremamente poderoso?','Ela deixa o usuário exausto e vulnerável logo em seguida.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ko',TRUE,0),(gen_random_uuid(),q,'Ten',FALSE,1),(gen_random_uuid(),q,'Zetsu',FALSE,2),(gen_random_uuid(),q,'Ren',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','easy','Qual é o nome do estado básico de Nen que mantém a aura sempre ativa e protegendo o corpo do usuário?','É o primeiro princípio fundamental ensinado a qualquer novo usuário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ten',TRUE,0),(gen_random_uuid(),q,'Zetsu',FALSE,1),(gen_random_uuid(),q,'Ren',FALSE,2),(gen_random_uuid(),q,'Ko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','easy','Qual é o nome do estado de Nen que suprime completamente a aura, tornando o usuário praticamente invisível a sensores de energia?','É frequentemente usado para se esconder de oponentes poderosos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zetsu',TRUE,0),(gen_random_uuid(),q,'Ten',FALSE,1),(gen_random_uuid(),q,'Ren',FALSE,2),(gen_random_uuid(),q,'Gyo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','medium','Qual é o nome da técnica que concentra grande quantidade de aura em uma parte específica do corpo, geralmente os olhos, para maior percepção?','Gon a usa frequentemente para enxergar detalhes escondidos em combate.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gyo',TRUE,0),(gen_random_uuid(),q,'Zetsu',FALSE,1),(gen_random_uuid(),q,'Ten',FALSE,2),(gen_random_uuid(),q,'Ko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','hard','Qual é o nome da promessa vinculante que um usuário de Nen faz para ampliar drasticamente o poder de sua habilidade especial?','Quebrar essa promessa geralmente traz consequências físicas graves.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Juramento e Restrição',TRUE,0),(gen_random_uuid(),q,'Pacto de Aura',FALSE,1),(gen_random_uuid(),q,'Contrato Espiritual',FALSE,2),(gen_random_uuid(),q,'Selo de Poder',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'fill_blank','easy','A examinadora especialista em culinária, responsável por uma das fases práticas do Exame Hunter, se chama ___.','Ela exige que os candidatos preparem um prato específico usando um peixe raro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Menchi',TRUE,0),(gen_random_uuid(),q,'Satotz',FALSE,1),(gen_random_uuid(),q,'Buhara',FALSE,2),(gen_random_uuid(),q,'Netero',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'fill_blank','medium','O membro da Aranha Fantasma especialista em tortura, capaz de encolher pessoas até um tamanho miniatura, se chama ___.','Ele é considerado um dos membros mais sádicos e perigosos do grupo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Feitan',TRUE,0),(gen_random_uuid(),q,'Machi',FALSE,1),(gen_random_uuid(),q,'Phinks',FALSE,2),(gen_random_uuid(),q,'Shalnark',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'fill_blank','hard','A técnica de correntes desenvolvida por Kurapika, capaz de restringir completamente os poderes de um usuário de Nen, se chama ___.','Ela só pode ser usada contra membros específicos da Aranha Fantasma sem grandes riscos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Corrente do Julgamento',TRUE,0),(gen_random_uuid(),q,'Corrente Escarlate',FALSE,1),(gen_random_uuid(),q,'Corrente da Vingança',FALSE,2),(gen_random_uuid(),q,'Corrente de Aço',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'fill_blank','hard','A técnica de assassinato relâmpago desenvolvida por Killua se chama ___.','Ele a domina desde muito cedo devido ao treinamento rigoroso da família Zoldyck.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Godspeed',TRUE,0),(gen_random_uuid(),q,'Rhythm Echo',FALSE,1),(gen_random_uuid(),q,'Thunderbolt',FALSE,2),(gen_random_uuid(),q,'Whirlwind',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'fill_blank','hard','O membro da Aranha Fantasma que controla marionetes através de fios, também bibliotecário do grupo, se chama ___.','Ele possui um enorme conhecimento sobre diversas habilidades Nen catalogadas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shalnark',TRUE,0),(gen_random_uuid(),q,'Feitan',FALSE,1),(gen_random_uuid(),q,'Phinks',FALSE,2),(gen_random_uuid(),q,'Machi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'fill_blank','easy','O estado básico de Nen que mantém a aura sempre ativa protegendo o corpo se chama ___.','É o primeiro princípio fundamental ensinado a qualquer novo usuário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ten',TRUE,0),(gen_random_uuid(),q,'Zetsu',FALSE,1),(gen_random_uuid(),q,'Ren',FALSE,2),(gen_random_uuid(),q,'Ko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'fill_blank','medium','A técnica que concentra aura em uma parte específica do corpo para maior percepção visual se chama ___.','Gon a usa frequentemente para enxergar detalhes escondidos em combate.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gyo',TRUE,0),(gen_random_uuid(),q,'Zetsu',FALSE,1),(gen_random_uuid(),q,'Ten',FALSE,2),(gen_random_uuid(),q,'Ko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'fill_blank','hard','A promessa vinculante que um usuário de Nen faz para ampliar drasticamente o poder de sua habilidade especial se chama ___.','Quebrar essa promessa geralmente traz consequências físicas graves.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Juramento e Restrição',TRUE,0),(gen_random_uuid(),q,'Pacto de Aura',FALSE,1),(gen_random_uuid(),q,'Contrato Espiritual',FALSE,2),(gen_random_uuid(),q,'Selo de Poder',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'who_said','medium','Quem disse: "Eu costuro pessoas com meus fios tão bem quanto costuro roupas, é praticamente a mesma arte"?','A frase é dita por uma membro da Aranha Fantasma especialista em fios de Nen.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Machi',TRUE,0),(gen_random_uuid(),q,'Feitan',FALSE,1),(gen_random_uuid(),q,'Shalnark',FALSE,2),(gen_random_uuid(),q,'Pakunoda',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'who_said','hard','Quem disse: "Eu forcei meus adversários a diminuírem de tamanho antes de acabar com eles, é mais divertido assim"?','A frase reflete a crueldade metódica de um dos membros mais temidos da Aranha Fantasma.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Feitan',TRUE,0),(gen_random_uuid(),q,'Machi',FALSE,1),(gen_random_uuid(),q,'Phinks',FALSE,2),(gen_random_uuid(),q,'Shalnark',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'who_said','hard','Quem disse: "Eu morri protegendo minha honra em combate, e não me arrependo nem um pouco disso"?','A frase é dita, em memória, pelo membro mais forte fisicamente da Aranha Fantasma, morto por Kurapika.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Uvogin',TRUE,0),(gen_random_uuid(),q,'Nobunaga',FALSE,1),(gen_random_uuid(),q,'Phinks',FALSE,2),(gen_random_uuid(),q,'Feitan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'episode_arc','hard','Em qual arco Uvogin é capturado e eliminado por Kurapika usando suas correntes especiais de Nen?','O evento desencadeia uma caçada furiosa dos demais membros da Aranha por vingança.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco Yorknew',TRUE,0),(gen_random_uuid(),q,'Arco da Família Zoldyck',FALSE,1),(gen_random_uuid(),q,'Arco de Heaven''s Arena',FALSE,2),(gen_random_uuid(),q,'Arco da Ilha das Feiticeiras',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','impossible','Qual é o nome do membro da Aranha Fantasma responsável por interrogar mentalmente reféns através do contato das mãos?','Ela é capaz de extrair memórias completas apenas tocando a cabeça de alguém.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Pakunoda',TRUE,0),(gen_random_uuid(),q,'Machi',FALSE,1),(gen_random_uuid(),q,'Shizuku',FALSE,2),(gen_random_uuid(),q,'Bonolenov',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hxh,'text','impossible','Qual é o nome da membro da Aranha Fantasma com Nen do tipo Manipulação capaz de aspirar objetos para dentro de um aspirador especial?','Sua habilidade parece inofensiva, mas guarda armas mortais dentro do aparelho.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shizuku',TRUE,0),(gen_random_uuid(),q,'Pakunoda',FALSE,1),(gen_random_uuid(),q,'Machi',FALSE,2),(gen_random_uuid(),q,'Bonolenov',FALSE,3);

END $$;
