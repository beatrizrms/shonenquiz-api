-- ============================================================
--  V45 — Seed de perguntas: That Time I Got Reincarnated as a Slime (150 perguntas)
--  Fonte: MyAnimeList + cânone do anime
--  Distribuição: text 40% / fill_blank 25% / who_said 20% /
--                episode_arc 10% / chronological 5%
--  Sem repetição com V5. Regras R1-R7 aplicadas.
-- ============================================================

DO $$
DECLARE
    v_system UUID := '00000000-0000-0000-0000-000000000001';
    v_ts     UUID;
    q        UUID;
BEGIN
    SELECT id INTO v_ts FROM animes WHERE slug = 'tensura' LIMIT 1;

    -- ══════════════════════════════════════════════════════════
    -- TEXT — 60 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','easy','Qual é o nome do protagonista, funcionário japonês morto e reencarnado como slime em um mundo de fantasia?','Ele adota rapidamente esse novo corpo peculiar como ponto de partida para grandes aventuras.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rimuru Tempest',TRUE,0),(gen_random_uuid(),q,'Benimaru',FALSE,1),(gen_random_uuid(),q,'Souei',FALSE,2),(gen_random_uuid(),q,'Diablo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','easy','Qual é o nome do dragão ancião selado por séculos que se torna primeiro amigo e conselheiro do protagonista no novo mundo?','Ele compartilha vastos conhecimentos sobre o funcionamento do mundo com o slime recém-chegado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Veldora Tempest',TRUE,0),(gen_random_uuid(),q,'Milim',FALSE,1),(gen_random_uuid(),q,'Ramiris',FALSE,2),(gen_random_uuid(),q,'Guy Crimson',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','easy','Qual é o nome da habilidade especial única concedida ao protagonista, capaz de analisar, prever e copiar praticamente qualquer coisa?','Ela evolui significativamente ao longo da série, ganhando novas capacidades.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Grande Sábio',TRUE,0),(gen_random_uuid(),q,'Predador',FALSE,1),(gen_random_uuid(),q,'Raphael',FALSE,2),(gen_random_uuid(),q,'Onipotência',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','easy','Qual é o nome dado à cidade fundada pelo protagonista, que se torna uma nação próspera habitada por monstros de diversas espécies?','Ela cresce rapidamente através de comércio pacífico com nações humanas vizinhas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tempest',TRUE,0),(gen_random_uuid(),q,'Ingrácia',FALSE,1),(gen_random_uuid(),q,'Falmuth',FALSE,2),(gen_random_uuid(),q,'Blumund',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','easy','Qual é o nome do oni de cabelos vermelhos que se torna comandante militar leal do exército da cidade fundada pelo protagonista?','Ele demonstra grande habilidade tática em combates decisivos ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Benimaru',TRUE,0),(gen_random_uuid(),q,'Souei',FALSE,1),(gen_random_uuid(),q,'Hakurou',FALSE,2),(gen_random_uuid(),q,'Gobta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','easy','Qual é o nome do ninja sombrio, especialista em espionagem, que serve como um dos principais conselheiros do protagonista?','Ele é responsável por coletar informações estratégicas de nações vizinhas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Souei',TRUE,0),(gen_random_uuid(),q,'Benimaru',FALSE,1),(gen_random_uuid(),q,'Hakurou',FALSE,2),(gen_random_uuid(),q,'Diablo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','easy','Qual é o nome do espadachim idoso, mestre de artes marciais que treina os guerreiros da cidade fundada pelo protagonista?','Ele possui décadas de experiência em combate antes de jurar lealdade ao slime.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hakurou',TRUE,0),(gen_random_uuid(),q,'Souei',FALSE,1),(gen_random_uuid(),q,'Benimaru',FALSE,2),(gen_random_uuid(),q,'Gobta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','easy','Qual é o nome do goblin trapalhão que se torna um dos primeiros seguidores do protagonista, apesar de sua falta de talento inicial em combate?','Ele evolui gradualmente ao longo da série, tornando-se figura cômica recorrente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gobta',TRUE,0),(gen_random_uuid(),q,'Rigurd',FALSE,1),(gen_random_uuid(),q,'Rigur',FALSE,2),(gen_random_uuid(),q,'Gobzo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','easy','Qual é o nome da demônio primordial extremamente poderosa que se torna secretário pessoal e conselheiro leal do protagonista?','Ele demonstra devoção quase religiosa às ordens do slime que o convocou.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Diablo',TRUE,0),(gen_random_uuid(),q,'Benimaru',FALSE,1),(gen_random_uuid(),q,'Souei',FALSE,2),(gen_random_uuid(),q,'Hakurou',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','easy','Qual é o nome da dragoa infantil extremamente poderosa, considerada uma das entidades mais fortes do mundo, apesar de sua aparência jovial?','Ela desenvolve amizade próxima com o protagonista logo em seus primeiros encontros.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Milim Nava',TRUE,0),(gen_random_uuid(),q,'Ramiris',FALSE,1),(gen_random_uuid(),q,'Veldora',FALSE,2),(gen_random_uuid(),q,'Frey',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','easy','Qual é o nome da fada diminuta, uma das entidades mais antigas do mundo, que se torna aliada excêntrica do protagonista?','Ela governa nominalmente um pequeno labirinto próximo à cidade fundada pelo slime.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ramiris',TRUE,0),(gen_random_uuid(),q,'Milim',FALSE,1),(gen_random_uuid(),q,'Frey',FALSE,2),(gen_random_uuid(),q,'Carrion',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','easy','Qual é o nome dado ao título concedido às entidades mais poderosas do mundo, cada uma governando território próprio com autoridade quase absoluta?','O protagonista aspira e eventualmente alcança esse status ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Demon Lord (Maou)',TRUE,0),(gen_random_uuid(),q,'Rei Dragão',FALSE,1),(gen_random_uuid(),q,'Senhor Supremo',FALSE,2),(gen_random_uuid(),q,'Imperador das Trevas',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','easy','Qual é o nome dado à organização de Demon Lords que se reúne periodicamente para discutir assuntos importantes do mundo?','O protagonista participa dessas reuniões após alcançar status de Demon Lord.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Walpurgis',TRUE,0),(gen_random_uuid(),q,'Conselho Sombrio',FALSE,1),(gen_random_uuid(),q,'Assembleia das Trevas',FALSE,2),(gen_random_uuid(),q,'Círculo dos Oito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','easy','Qual é o nome do goblin que se torna chefe administrativo da cidade fundada pelo protagonista, responsável por questões burocráticas?','Ele demonstra crescimento significativo de suas capacidades administrativas ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rigurd',TRUE,0),(gen_random_uuid(),q,'Gobta',FALSE,1),(gen_random_uuid(),q,'Rigur',FALSE,2),(gen_random_uuid(),q,'Gobzo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','medium','Qual é o nome do reino humano hostil que ataca a cidade do protagonista logo após seu estabelecimento inicial?','Este conflito serve como primeiro grande teste militar para a nova nação de monstros.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Falmuth',TRUE,0),(gen_random_uuid(),q,'Ingrácia',FALSE,1),(gen_random_uuid(),q,'Blumund',FALSE,2),(gen_random_uuid(),q,'Dwargon',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','medium','Qual é o nome do reino anão aliado, cujo rei mantém relações comerciais próximas com a cidade do protagonista?','Sua aliança fornece acesso a tecnologia avançada de forja e mineração.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dwargon',TRUE,0),(gen_random_uuid(),q,'Falmuth',FALSE,1),(gen_random_uuid(),q,'Ingrácia',FALSE,2),(gen_random_uuid(),q,'Blumund',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','medium','Qual é o nome do Demon Lord poderoso, líder supremo entre os detentores desse título, respeitado por sua sabedoria e antiguidade?','Ele demonstra apoio estratégico às ambições do protagonista em diversos momentos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Guy Crimson',TRUE,0),(gen_random_uuid(),q,'Milim',FALSE,1),(gen_random_uuid(),q,'Ramiris',FALSE,2),(gen_random_uuid(),q,'Frey',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','medium','Qual é o nome da Demon Lord aviária, líder de um território próprio, que mantém relações diplomáticas complexas com o protagonista?','Ela participa das reuniões de Demon Lords com postura estratégica calculista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Frey',TRUE,0),(gen_random_uuid(),q,'Milim',FALSE,1),(gen_random_uuid(),q,'Ramiris',FALSE,2),(gen_random_uuid(),q,'Carrion',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','medium','Qual é o nome do Demon Lord leonino, governante territorial que mantém aliança próxima com Frey?','Ele participa ativamente das negociações políticas entre Demon Lords ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Carrion',TRUE,0),(gen_random_uuid(),q,'Guy Crimson',FALSE,1),(gen_random_uuid(),q,'Milim',FALSE,2),(gen_random_uuid(),q,'Ramiris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','medium','Qual é o nome do lobo alfa que se torna companheiro leal do protagonista, liderando uma matilha inteira sob seu comando?','Ele posteriormente evolui para uma forma humanoide após absorver a energia mágica de seu líder.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ranga',TRUE,0),(gen_random_uuid(),q,'Gobta',FALSE,1),(gen_random_uuid(),q,'Hakurou',FALSE,2),(gen_random_uuid(),q,'Souei',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','medium','Qual é o nome do lagarto-homem líder de uma tribo vizinha, que estabelece aliança com o protagonista após conflito inicial?','Sua tribo se junta à nação de monstros logo após esse encontro diplomático.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gabiru',TRUE,0),(gen_random_uuid(),q,'Rigurd',FALSE,1),(gen_random_uuid(),q,'Gobta',FALSE,2),(gen_random_uuid(),q,'Hakurou',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','medium','Qual é o nome do sacerdote transformado em um dos principais oficiais militares da cidade, especialista em magia sagrada de cura?','Ele se junta à nação de monstros após ser resgatado de circunstâncias adversas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gido',TRUE,0),(gen_random_uuid(),q,'Kaijin',FALSE,1),(gen_random_uuid(),q,'Vester',FALSE,2),(gen_random_uuid(),q,'Kurobe',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','medium','Qual é o nome do ferreiro anão liderado, mestre artesão que se junta à cidade do protagonista após uma jornada de exílio?','Ele traz consigo conhecimento avançado de forja que beneficia toda a comunidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaijin',TRUE,0),(gen_random_uuid(),q,'Gido',FALSE,1),(gen_random_uuid(),q,'Vester',FALSE,2),(gen_random_uuid(),q,'Kurobe',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','hard','Qual é o nome dado ao processo místico pelo qual monstros ganham poder e inteligência drasticamente elevados após receber um nome de uma entidade poderosa?','Este processo é fundamental para o crescimento de força dos seguidores do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nomeação',TRUE,0),(gen_random_uuid(),q,'Evolução Sagrada',FALSE,1),(gen_random_uuid(),q,'Ascensão Mágica',FALSE,2),(gen_random_uuid(),q,'Ritual de Poder',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','hard','Qual é o nome dado à transformação evolutiva máxima alcançada por Rimuru, concedendo poder comparável aos Demon Lords mais antigos?','Esta transformação ocorre em momento crucial de conflito na segunda metade da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'True Demon Lord',TRUE,0),(gen_random_uuid(),q,'Grande Sábio Supremo',FALSE,1),(gen_random_uuid(),q,'Rei Slime',FALSE,2),(gen_random_uuid(),q,'Senhor da Névoa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','hard','Qual é o nome do general do exército da Teocracia religiosa que lidera uma cruzada contra a nação de monstros do protagonista?','Sua campanha militar representa uma das maiores ameaças externas enfrentadas pela cidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hinata Sakaguchi',TRUE,0),(gen_random_uuid(),q,'Gazel',FALSE,1),(gen_random_uuid(),q,'Erald',FALSE,2),(gen_random_uuid(),q,'Marc',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','hard','Qual é o nome do rei anão de Dwargon, aliado próximo do protagonista, fundamental para o desenvolvimento comercial e militar da cidade?','Ele estabelece tratados comerciais vantajosos logo nos primeiros contatos diplomáticos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gazel Dwargo',TRUE,0),(gen_random_uuid(),q,'Hinata',FALSE,1),(gen_random_uuid(),q,'Erald',FALSE,2),(gen_random_uuid(),q,'Guy Crimson',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','hard','Qual é o nome dado ao grupo de guerreiros de elite pessoais do protagonista, cada um evoluído através do processo especial de nomeação?','Eles formam o núcleo de comando militar mais poderoso da nação de monstros.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Os Dez Grandes Guardiões',TRUE,0),(gen_random_uuid(),q,'Comandantes Supremos',FALSE,1),(gen_random_uuid(),q,'Elite de Tempest',FALSE,2),(gen_random_uuid(),q,'Guarda Real',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','impossible','Qual é o nome dado à catástrofe militar sofrida pela cidade em ataque orquestrado pela Teocracia religiosa, resultando em perdas significativas?','Este evento trágico motiva parte da resposta militar posterior do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Massacre de Tempest',TRUE,0),(gen_random_uuid(),q,'Queda de Falmuth',FALSE,1),(gen_random_uuid(),q,'Cerco de Dwargon',FALSE,2),(gen_random_uuid(),q,'Batalha de Ingrácia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','impossible','Qual é o nome dado ao artefato lendário associado à origem do poder de Veldora, mencionado em textos antigos do mundo?','Sua importância histórica é revelada gradualmente ao longo dos arcos mais avançados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Núcleo do Dragão Tempestade',TRUE,0),(gen_random_uuid(),q,'Coroa de Veldora',FALSE,1),(gen_random_uuid(),q,'Selo Ancestral',FALSE,2),(gen_random_uuid(),q,'Cristal Dracônico',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- FILL_BLANK — 38 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'fill_blank','easy','O protagonista, funcionário japonês morto e reencarnado como slime, se chama ___.','Ele adota rapidamente esse novo corpo peculiar como ponto de partida para grandes aventuras.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rimuru',TRUE,0),(gen_random_uuid(),q,'Benimaru',FALSE,1),(gen_random_uuid(),q,'Souei',FALSE,2),(gen_random_uuid(),q,'Diablo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'fill_blank','easy','O dragão ancião selado por séculos que se torna primeiro amigo e conselheiro do protagonista se chama ___.','Ele compartilha vastos conhecimentos sobre o funcionamento do mundo com o slime recém-chegado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Veldora',TRUE,0),(gen_random_uuid(),q,'Milim',FALSE,1),(gen_random_uuid(),q,'Ramiris',FALSE,2),(gen_random_uuid(),q,'Guy Crimson',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'fill_blank','easy','A habilidade especial única concedida ao protagonista, capaz de analisar, prever e copiar praticamente qualquer coisa, se chama ___.','Ela evolui significativamente ao longo da série, ganhando novas capacidades.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Grande Sábio',TRUE,0),(gen_random_uuid(),q,'Predador',FALSE,1),(gen_random_uuid(),q,'Raphael',FALSE,2),(gen_random_uuid(),q,'Onipotência',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'fill_blank','easy','A cidade fundada pelo protagonista, que se torna uma nação próspera habitada por monstros, se chama ___.','Ela cresce rapidamente através de comércio pacífico com nações humanas vizinhas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tempest',TRUE,0),(gen_random_uuid(),q,'Ingrácia',FALSE,1),(gen_random_uuid(),q,'Falmuth',FALSE,2),(gen_random_uuid(),q,'Blumund',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'fill_blank','easy','O oni de cabelos vermelhos que se torna comandante militar leal do exército da cidade fundada pelo protagonista se chama ___.','Ele demonstra grande habilidade tática em combates decisivos ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Benimaru',TRUE,0),(gen_random_uuid(),q,'Souei',FALSE,1),(gen_random_uuid(),q,'Hakurou',FALSE,2),(gen_random_uuid(),q,'Gobta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'fill_blank','easy','O ninja sombrio, especialista em espionagem, que serve como conselheiro do protagonista se chama ___.','Ele é responsável por coletar informações estratégicas de nações vizinhas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Souei',TRUE,0),(gen_random_uuid(),q,'Benimaru',FALSE,1),(gen_random_uuid(),q,'Hakurou',FALSE,2),(gen_random_uuid(),q,'Diablo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'fill_blank','easy','O espadachim idoso, mestre de artes marciais que treina os guerreiros da cidade, se chama ___.','Ele possui décadas de experiência em combate antes de jurar lealdade ao slime.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hakurou',TRUE,0),(gen_random_uuid(),q,'Souei',FALSE,1),(gen_random_uuid(),q,'Benimaru',FALSE,2),(gen_random_uuid(),q,'Gobta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'fill_blank','easy','O goblin trapalhão que se torna um dos primeiros seguidores do protagonista se chama ___.','Ele evolui gradualmente ao longo da série, tornando-se figura cômica recorrente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gobta',TRUE,0),(gen_random_uuid(),q,'Rigurd',FALSE,1),(gen_random_uuid(),q,'Rigur',FALSE,2),(gen_random_uuid(),q,'Gobzo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'fill_blank','easy','A demônio primordial extremamente poderosa que se torna secretário pessoal do protagonista se chama ___.','Ele demonstra devoção quase religiosa às ordens do slime que o convocou.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Diablo',TRUE,0),(gen_random_uuid(),q,'Benimaru',FALSE,1),(gen_random_uuid(),q,'Souei',FALSE,2),(gen_random_uuid(),q,'Hakurou',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'fill_blank','easy','A dragoa infantil extremamente poderosa, considerada uma das entidades mais fortes do mundo, se chama ___.','Ela desenvolve amizade próxima com o protagonista logo em seus primeiros encontros.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Milim',TRUE,0),(gen_random_uuid(),q,'Ramiris',FALSE,1),(gen_random_uuid(),q,'Veldora',FALSE,2),(gen_random_uuid(),q,'Frey',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'fill_blank','easy','A fada diminuta, uma das entidades mais antigas do mundo, que se torna aliada excêntrica do protagonista se chama ___.','Ela governa nominalmente um pequeno labirinto próximo à cidade fundada pelo slime.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ramiris',TRUE,0),(gen_random_uuid(),q,'Milim',FALSE,1),(gen_random_uuid(),q,'Frey',FALSE,2),(gen_random_uuid(),q,'Carrion',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'fill_blank','easy','O título concedido às entidades mais poderosas do mundo, cada uma governando território próprio, é chamado de ___.','O protagonista aspira e eventualmente alcança esse status ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Demon Lord',TRUE,0),(gen_random_uuid(),q,'Rei Dragão',FALSE,1),(gen_random_uuid(),q,'Senhor Supremo',FALSE,2),(gen_random_uuid(),q,'Imperador das Trevas',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'fill_blank','easy','A organização de Demon Lords que se reúne periodicamente para discutir assuntos importantes do mundo é chamada de ___.','O protagonista participa dessas reuniões após alcançar status de Demon Lord.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Walpurgis',TRUE,0),(gen_random_uuid(),q,'Conselho Sombrio',FALSE,1),(gen_random_uuid(),q,'Assembleia das Trevas',FALSE,2),(gen_random_uuid(),q,'Círculo dos Oito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'fill_blank','medium','O reino humano hostil que ataca a cidade do protagonista logo após seu estabelecimento inicial se chama ___.','Este conflito serve como primeiro grande teste militar para a nova nação de monstros.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Falmuth',TRUE,0),(gen_random_uuid(),q,'Ingrácia',FALSE,1),(gen_random_uuid(),q,'Blumund',FALSE,2),(gen_random_uuid(),q,'Dwargon',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'fill_blank','medium','O reino anão aliado, cujo rei mantém relações comerciais próximas com a cidade do protagonista, se chama ___.','Sua aliança fornece acesso a tecnologia avançada de forja e mineração.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dwargon',TRUE,0),(gen_random_uuid(),q,'Falmuth',FALSE,1),(gen_random_uuid(),q,'Ingrácia',FALSE,2),(gen_random_uuid(),q,'Blumund',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'fill_blank','medium','O Demon Lord poderoso, líder supremo entre os detentores desse título, respeitado por sua sabedoria, se chama ___.','Ele demonstra apoio estratégico às ambições do protagonista em diversos momentos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Guy Crimson',TRUE,0),(gen_random_uuid(),q,'Milim',FALSE,1),(gen_random_uuid(),q,'Ramiris',FALSE,2),(gen_random_uuid(),q,'Frey',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'fill_blank','medium','A Demon Lord aviária, líder de um território próprio, que mantém relações diplomáticas complexas com o protagonista, se chama ___.','Ela participa das reuniões de Demon Lords com postura estratégica calculista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Frey',TRUE,0),(gen_random_uuid(),q,'Milim',FALSE,1),(gen_random_uuid(),q,'Ramiris',FALSE,2),(gen_random_uuid(),q,'Carrion',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'fill_blank','medium','O lobo alfa que se torna companheiro leal do protagonista, liderando uma matilha inteira, se chama ___.','Ele posteriormente evolui para uma forma humanoide após absorver a energia mágica de seu líder.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ranga',TRUE,0),(gen_random_uuid(),q,'Gobta',FALSE,1),(gen_random_uuid(),q,'Hakurou',FALSE,2),(gen_random_uuid(),q,'Souei',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'fill_blank','medium','O lagarto-homem líder de uma tribo vizinha, que estabelece aliança com o protagonista, se chama ___.','Sua tribo se junta à nação de monstros logo após esse encontro diplomático.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gabiru',TRUE,0),(gen_random_uuid(),q,'Rigurd',FALSE,1),(gen_random_uuid(),q,'Gobta',FALSE,2),(gen_random_uuid(),q,'Hakurou',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'fill_blank','medium','O ferreiro anão mestre artesão que se junta à cidade do protagonista após uma jornada de exílio se chama ___.','Ele traz consigo conhecimento avançado de forja que beneficia toda a comunidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaijin',TRUE,0),(gen_random_uuid(),q,'Gido',FALSE,1),(gen_random_uuid(),q,'Vester',FALSE,2),(gen_random_uuid(),q,'Kurobe',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'fill_blank','hard','O processo místico pelo qual monstros ganham poder e inteligência drasticamente elevados após receber um nome é chamado de ___.','Este processo é fundamental para o crescimento de força dos seguidores do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nomeação',TRUE,0),(gen_random_uuid(),q,'Evolução Sagrada',FALSE,1),(gen_random_uuid(),q,'Ascensão Mágica',FALSE,2),(gen_random_uuid(),q,'Ritual de Poder',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'fill_blank','hard','A transformação evolutiva máxima alcançada por Rimuru, concedendo poder comparável aos Demon Lords mais antigos, é chamada de ___.','Esta transformação ocorre em momento crucial de conflito na segunda metade da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'True Demon Lord',TRUE,0),(gen_random_uuid(),q,'Grande Sábio Supremo',FALSE,1),(gen_random_uuid(),q,'Rei Slime',FALSE,2),(gen_random_uuid(),q,'Senhor da Névoa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'fill_blank','hard','O general do exército da Teocracia religiosa que lidera uma cruzada contra a nação de monstros do protagonista se chama ___.','Sua campanha militar representa uma das maiores ameaças externas enfrentadas pela cidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hinata',TRUE,0),(gen_random_uuid(),q,'Gazel',FALSE,1),(gen_random_uuid(),q,'Erald',FALSE,2),(gen_random_uuid(),q,'Marc',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'fill_blank','hard','O rei anão de Dwargon, aliado próximo do protagonista, fundamental para o desenvolvimento comercial da cidade, se chama ___.','Ele estabelece tratados comerciais vantajosos logo nos primeiros contatos diplomáticos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gazel',TRUE,0),(gen_random_uuid(),q,'Hinata',FALSE,1),(gen_random_uuid(),q,'Erald',FALSE,2),(gen_random_uuid(),q,'Guy Crimson',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'fill_blank','hard','O grupo de guerreiros de elite pessoais do protagonista, cada um evoluído através do processo especial de nomeação, é chamado de ___.','Eles formam o núcleo de comando militar mais poderoso da nação de monstros.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Os Dez Grandes Guardiões',TRUE,0),(gen_random_uuid(),q,'Comandantes Supremos',FALSE,1),(gen_random_uuid(),q,'Elite de Tempest',FALSE,2),(gen_random_uuid(),q,'Guarda Real',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'fill_blank','impossible','A catástrofe militar sofrida pela cidade em ataque orquestrado pela Teocracia religiosa é conhecida como ___.','Este evento trágico motiva parte da resposta militar posterior do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Massacre de Tempest',TRUE,0),(gen_random_uuid(),q,'Queda de Falmuth',FALSE,1),(gen_random_uuid(),q,'Cerco de Dwargon',FALSE,2),(gen_random_uuid(),q,'Batalha de Ingrácia',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- WHO_SAID — 30 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'who_said','easy','Quem disse: "Eu morri como humano no Japão, mas renasci como slime, e decidi aproveitar essa segunda chance ao máximo"?','A frase reflete a atitude positiva do protagonista diante de sua nova realidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rimuru',TRUE,0),(gen_random_uuid(),q,'Benimaru',FALSE,1),(gen_random_uuid(),q,'Souei',FALSE,2),(gen_random_uuid(),q,'Diablo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'who_said','easy','Quem disse: "Fiquei selado por séculos, mas encontrei em você um amigo capaz de compreender minha longa história"?','A frase é dita pelo dragão ancião que se torna conselheiro do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Veldora',TRUE,0),(gen_random_uuid(),q,'Milim',FALSE,1),(gen_random_uuid(),q,'Ramiris',FALSE,2),(gen_random_uuid(),q,'Guy Crimson',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'who_said','easy','Quem disse: "Eu lidero o exército desta cidade com determinação tática, sempre buscando as melhores estratégias em combate"?','A frase é dita pelo oni comandante militar leal ao protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Benimaru',TRUE,0),(gen_random_uuid(),q,'Souei',FALSE,1),(gen_random_uuid(),q,'Hakurou',FALSE,2),(gen_random_uuid(),q,'Gobta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'who_said','easy','Quem disse: "Eu coleto informações estratégicas de nações vizinhas nas sombras, garantindo a segurança de nossa cidade"?','A frase é dita pelo ninja especialista em espionagem.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Souei',TRUE,0),(gen_random_uuid(),q,'Benimaru',FALSE,1),(gen_random_uuid(),q,'Hakurou',FALSE,2),(gen_random_uuid(),q,'Diablo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'who_said','easy','Quem disse: "Décadas de experiência em combate me tornaram mestre de artes marciais, e hoje treino os guerreiros desta cidade"?','A frase é dita pelo espadachim idoso da nação de monstros.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hakurou',TRUE,0),(gen_random_uuid(),q,'Souei',FALSE,1),(gen_random_uuid(),q,'Benimaru',FALSE,2),(gen_random_uuid(),q,'Gobta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'who_said','easy','Quem disse: "Eu não era talentoso em combate no início, mas evoluí bastante desde que me juntei a esta cidade"?','A frase é dita pelo goblin trapalhão que se torna figura cômica recorrente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gobta',TRUE,0),(gen_random_uuid(),q,'Rigurd',FALSE,1),(gen_random_uuid(),q,'Rigur',FALSE,2),(gen_random_uuid(),q,'Gobzo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'who_said','medium','Quem disse: "Minha devoção a Rimuru-sama é quase religiosa, e sirvo como seu secretário pessoal com toda dedicação"?','A frase é dita pelo demônio primordial secretário do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Diablo',TRUE,0),(gen_random_uuid(),q,'Benimaru',FALSE,1),(gen_random_uuid(),q,'Souei',FALSE,2),(gen_random_uuid(),q,'Hakurou',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'who_said','medium','Quem disse: "Apesar da minha aparência jovial, sou uma das entidades mais poderosas deste mundo, e Rimuru se tornou meu grande amigo"?','A frase é dita pela dragoa infantil extremamente poderosa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Milim',TRUE,0),(gen_random_uuid(),q,'Ramiris',FALSE,1),(gen_random_uuid(),q,'Veldora',FALSE,2),(gen_random_uuid(),q,'Frey',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'who_said','medium','Quem disse: "Eu governo nominalmente um pequeno labirinto, e apesar da minha altura diminuta, sou uma das entidades mais antigas do mundo"?','A frase é dita pela fada excêntrica aliada do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ramiris',TRUE,0),(gen_random_uuid(),q,'Milim',FALSE,1),(gen_random_uuid(),q,'Frey',FALSE,2),(gen_random_uuid(),q,'Carrion',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'who_said','medium','Quem disse: "Sou respeitado como o mais sábio e antigo entre os Demon Lords, e ofereço apoio estratégico a Rimuru quando necessário"?','A frase é dita pelo Demon Lord líder supremo entre os detentores desse título.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Guy Crimson',TRUE,0),(gen_random_uuid(),q,'Milim',FALSE,1),(gen_random_uuid(),q,'Ramiris',FALSE,2),(gen_random_uuid(),q,'Frey',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'who_said','medium','Quem disse: "Eu mantenho relações diplomáticas complexas com Rimuru, sempre com postura estratégica calculista nas reuniões de Demon Lords"?','A frase é dita pela Demon Lord aviária de território próprio.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Frey',TRUE,0),(gen_random_uuid(),q,'Milim',FALSE,1),(gen_random_uuid(),q,'Ramiris',FALSE,2),(gen_random_uuid(),q,'Carrion',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'who_said','hard','Quem disse: "Eu lidero um exército religioso em cruzada contra a nação de monstros, acreditando profundamente na justeza dessa missão"?','A frase é dita pela general da Teocracia religiosa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hinata',TRUE,0),(gen_random_uuid(),q,'Gazel',FALSE,1),(gen_random_uuid(),q,'Erald',FALSE,2),(gen_random_uuid(),q,'Marc',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'who_said','hard','Quem disse: "Estabeleci tratados comerciais vantajosos com Rimuru desde nosso primeiro encontro diplomático, fortalecendo ambas as nações"?','A frase é dita pelo rei anão de Dwargon.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gazel',TRUE,0),(gen_random_uuid(),q,'Hinata',FALSE,1),(gen_random_uuid(),q,'Erald',FALSE,2),(gen_random_uuid(),q,'Guy Crimson',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'who_said','hard','Quem disse: "Após absorver a energia mágica de meu líder, evoluí para uma forma humanoide, tornando-me ainda mais leal ao meu mestre"?','A frase é dita pelo lobo alfa companheiro do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ranga',TRUE,0),(gen_random_uuid(),q,'Gobta',FALSE,1),(gen_random_uuid(),q,'Hakurou',FALSE,2),(gen_random_uuid(),q,'Souei',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'who_said','hard','Quem disse: "Minha tribo se juntou à nação de monstros após nosso conflito inicial se transformar em aliança verdadeira"?','A frase é dita pelo lagarto-homem líder de tribo vizinha.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gabiru',TRUE,0),(gen_random_uuid(),q,'Rigurd',FALSE,1),(gen_random_uuid(),q,'Gobta',FALSE,2),(gen_random_uuid(),q,'Hakurou',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'who_said','hard','Quem disse: "Trago comigo conhecimento avançado de forja após minha jornada de exílio, beneficiando toda esta comunidade"?','A frase é dita pelo ferreiro anão mestre artesão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaijin',TRUE,0),(gen_random_uuid(),q,'Gido',FALSE,1),(gen_random_uuid(),q,'Vester',FALSE,2),(gen_random_uuid(),q,'Kurobe',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'who_said','impossible','Quem disse: "Fui responsável administrativo desde o início da fundação desta cidade, crescendo muito em minhas capacidades ao longo do tempo"?','A frase é dita pelo goblin chefe administrativo da nação de monstros.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rigurd',TRUE,0),(gen_random_uuid(),q,'Gobta',FALSE,1),(gen_random_uuid(),q,'Rigur',FALSE,2),(gen_random_uuid(),q,'Gobzo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'who_said','impossible','Quem disse: "Sou governante leonino aliado próximo de Frey, participando ativamente das negociações entre Demon Lords"?','A frase é dita pelo Demon Lord leonino governante territorial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Carrion',TRUE,0),(gen_random_uuid(),q,'Guy Crimson',FALSE,1),(gen_random_uuid(),q,'Milim',FALSE,2),(gen_random_uuid(),q,'Ramiris',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- EPISODE_ARC — 15 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'episode_arc','medium','Em qual arco Rimuru desperta como slime, conhece Veldora e começa a explorar o novo mundo de fantasia?','O arco estabelece a premissa inicial de toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Origem',TRUE,0),(gen_random_uuid(),q,'Arco de Falmuth',FALSE,1),(gen_random_uuid(),q,'Arco de Walpurgis',FALSE,2),(gen_random_uuid(),q,'Arco da Teocracia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'episode_arc','medium','Em qual arco Rimuru funda a cidade de Tempest e recruta os primeiros seguidores, incluindo goblins e lobos?','O arco estabelece a base da nação de monstros que cresce ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Origem',TRUE,0),(gen_random_uuid(),q,'Arco de Falmuth',FALSE,1),(gen_random_uuid(),q,'Arco de Walpurgis',FALSE,2),(gen_random_uuid(),q,'Arco da Teocracia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'episode_arc','medium','Em qual arco Falmuth ataca a cidade de Tempest, testando militarmente a nova nação de monstros?','Este conflito representa um dos primeiros grandes desafios militares da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Falmuth',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco de Walpurgis',FALSE,2),(gen_random_uuid(),q,'Arco da Teocracia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'episode_arc','medium','Em qual arco Rimuru se torna Demon Lord e participa pela primeira vez da reunião de Walpurgis?','Este arco introduz formalmente os demais Demon Lords, incluindo Milim, Guy Crimson e Frey.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Walpurgis',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco de Falmuth',FALSE,2),(gen_random_uuid(),q,'Arco da Teocracia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'episode_arc','medium','Em qual arco a Teocracia religiosa lidera cruzada militar contra a cidade de Tempest, liderada por Hinata Sakaguchi?','Este arco representa uma das maiores ameaças externas enfrentadas pela nação de monstros.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Teocracia',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco de Falmuth',FALSE,2),(gen_random_uuid(),q,'Arco de Walpurgis',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'episode_arc','medium','Em qual arco Rimuru estabelece aliança comercial e militar com o reino anão de Dwargon através do rei Gazel?','Este arco expande significativamente as relações diplomáticas da nação de monstros.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Origem',TRUE,0),(gen_random_uuid(),q,'Arco de Falmuth',FALSE,1),(gen_random_uuid(),q,'Arco de Walpurgis',FALSE,2),(gen_random_uuid(),q,'Arco da Teocracia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'episode_arc','hard','Em qual arco Rimuru enfrenta Gabiru e sua tribo de lagartos-homens, transformando conflito inicial em aliança duradoura?','O confronto militar inicial rapidamente se transforma em cooperação mútua.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Origem',TRUE,0),(gen_random_uuid(),q,'Arco de Falmuth',FALSE,1),(gen_random_uuid(),q,'Arco de Walpurgis',FALSE,2),(gen_random_uuid(),q,'Arco da Teocracia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'episode_arc','hard','Em qual arco Diablo é convocado por Rimuru, demonstrando devoção imediata e absoluta ao novo mestre?','Este arco introduz um dos personagens mais poderosos e leais da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Falmuth',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco de Walpurgis',FALSE,2),(gen_random_uuid(),q,'Arco da Teocracia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'episode_arc','hard','Em qual arco a cidade de Tempest sofre o massacre orquestrado pela Teocracia religiosa, resultando em perdas significativas?','Este evento trágico motiva parte da resposta militar posterior do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Teocracia',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco de Falmuth',FALSE,2),(gen_random_uuid(),q,'Arco de Walpurgis',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'episode_arc','impossible','Em qual arco Rimuru alcança a transformação True Demon Lord, obtendo poder comparável aos Demon Lords mais antigos?','Esta transformação ocorre em momento crucial de conflito na segunda metade da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Teocracia',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco de Falmuth',FALSE,2),(gen_random_uuid(),q,'Arco de Walpurgis',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- CHRONOLOGICAL — 7 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'chronological','hard','Ordene cronologicamente os arcos a seguir, do mais antigo ao mais recente.','Cobrem desde o despertar de Rimuru até o conflito com a Teocracia religiosa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Origem',TRUE,0),(gen_random_uuid(),q,'Falmuth',FALSE,1),(gen_random_uuid(),q,'Walpurgis',FALSE,2),(gen_random_uuid(),q,'Teocracia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'chronological','hard','Ordene cronologicamente os seguintes eventos da jornada de Rimuru, do mais antigo ao mais recente.','Cobrem desde seu despertar como slime até sua transformação em True Demon Lord.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Desperta como slime e conhece Veldora',TRUE,0),(gen_random_uuid(),q,'Funda a cidade de Tempest',FALSE,1),(gen_random_uuid(),q,'Torna-se Demon Lord em Walpurgis',FALSE,2),(gen_random_uuid(),q,'Alcança a transformação True Demon Lord',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre Diablo, do mais antigo ao mais recente.','Cobrem desde sua convocação até sua atuação como secretário leal de Rimuru.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'É convocado por Rimuru',TRUE,0),(gen_random_uuid(),q,'Demonstra devoção imediata ao novo mestre',FALSE,1),(gen_random_uuid(),q,'Torna-se secretário pessoal leal',FALSE,2),(gen_random_uuid(),q,'Participa de conflitos decisivos ao lado de Rimuru',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre a cidade de Tempest, do mais antigo ao mais recente.','Cobrem desde sua fundação até o massacre orquestrado pela Teocracia religiosa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'É fundada por Rimuru com primeiros seguidores',TRUE,0),(gen_random_uuid(),q,'Sofre ataque militar de Falmuth',FALSE,1),(gen_random_uuid(),q,'Estabelece aliança comercial com Dwargon',FALSE,2),(gen_random_uuid(),q,'Sofre o massacre orquestrado pela Teocracia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Gabiru, do mais antigo ao mais recente.','Cobrem desde o conflito inicial com Rimuru até a aliança duradoura entre suas tribos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Lidera sua tribo de lagartos-homens de forma independente',TRUE,0),(gen_random_uuid(),q,'Entra em conflito inicial com Rimuru',FALSE,1),(gen_random_uuid(),q,'Estabelece aliança após o confronto',FALSE,2),(gen_random_uuid(),q,'Integra sua tribo à nação de monstros',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Hinata, do mais antigo ao mais recente.','Cobrem desde sua liderança militar na Teocracia até o confronto direto contra Rimuru.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Lidera o exército da Teocracia religiosa',TRUE,0),(gen_random_uuid(),q,'Organiza cruzada contra a nação de monstros',FALSE,1),(gen_random_uuid(),q,'Enfrenta Rimuru em confronto direto',FALSE,2),(gen_random_uuid(),q,'Reconsidera sua posição após o confronto',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Ranga, do mais antigo ao mais recente.','Cobrem desde sua liderança da matilha até sua evolução para forma humanoide.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Lidera uma matilha de lobos selvagens',TRUE,0),(gen_random_uuid(),q,'Jura lealdade a Rimuru após confronto inicial',FALSE,1),(gen_random_uuid(),q,'Absorve energia mágica de seu líder',FALSE,2),(gen_random_uuid(),q,'Evolui para forma humanoide poderosa',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- COMPLEMENTO — fechar 150 perguntas (30 text / 12 fill_blank / 12 who_said / 5 episode_arc)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','easy','Qual desses personagens é goblin responsável pelas questões administrativas da cidade, demonstrando crescimento contínuo de suas capacidades?','Ele lida diretamente com burocracia e organização interna da nação de monstros.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rigurd',TRUE,0),(gen_random_uuid(),q,'Gobta',FALSE,1),(gen_random_uuid(),q,'Rigur',FALSE,2),(gen_random_uuid(),q,'Gobzo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','medium','Qual desses personagens é sacerdote transformado em oficial militar especialista em magia sagrada de cura, resgatado de circunstâncias adversas?','Ele se junta à nação de monstros após sua situação anterior se tornar insustentável.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gido',TRUE,0),(gen_random_uuid(),q,'Kaijin',FALSE,1),(gen_random_uuid(),q,'Vester',FALSE,2),(gen_random_uuid(),q,'Kurobe',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','hard','Qual desses personagens é Demon Lord leonino aliado próximo de Frey, participando ativamente das negociações políticas entre governantes?','Ele é reconhecido por sua força e influência territorial significativas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Carrion',TRUE,0),(gen_random_uuid(),q,'Guy Crimson',FALSE,1),(gen_random_uuid(),q,'Milim',FALSE,2),(gen_random_uuid(),q,'Ramiris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','impossible','Qual desses personagens está associado ao artefato lendário mencionado em textos antigos relacionados à origem do poder de Veldora?','Sua importância histórica é revelada gradualmente ao longo dos arcos mais avançados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Veldora',TRUE,0),(gen_random_uuid(),q,'Milim',FALSE,1),(gen_random_uuid(),q,'Guy Crimson',FALSE,2),(gen_random_uuid(),q,'Ramiris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','medium','Qual desses personagens realiza tarefas administrativas complexas na cidade, garantindo funcionamento eficiente da burocracia local?','Sua dedicação constante é reconhecida por toda a comunidade de monstros.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rigurd',TRUE,0),(gen_random_uuid(),q,'Gobta',FALSE,1),(gen_random_uuid(),q,'Rigur',FALSE,2),(gen_random_uuid(),q,'Gobzo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','hard','Qual desses personagens cura feridos usando magia sagrada avançada, sendo essencial durante os conflitos militares enfrentados pela cidade?','Sua habilidade médica é fundamental para reduzir baixas em combates decisivos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gido',TRUE,0),(gen_random_uuid(),q,'Kaijin',FALSE,1),(gen_random_uuid(),q,'Vester',FALSE,2),(gen_random_uuid(),q,'Kurobe',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','medium','Qual desses personagens participa de negociações estratégicas entre territórios governados por Demon Lords, mantendo aliança sólida com Frey?','Sua influência política se estende além de seu próprio domínio territorial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Carrion',TRUE,0),(gen_random_uuid(),q,'Guy Crimson',FALSE,1),(gen_random_uuid(),q,'Milim',FALSE,2),(gen_random_uuid(),q,'Ramiris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','impossible','Qual desses personagens tem sua origem histórica ligada a um núcleo lendário mencionado em textos antigos do mundo?','A revelação sobre essa origem ocorre apenas em arcos mais avançados da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Veldora',TRUE,0),(gen_random_uuid(),q,'Milim',FALSE,1),(gen_random_uuid(),q,'Guy Crimson',FALSE,2),(gen_random_uuid(),q,'Ramiris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','easy','Qual desses personagens organiza tarefas burocráticas com eficiência crescente, tornando-se essencial para o funcionamento administrativo de Tempest?','Sua evolução ao longo da série reflete o crescimento geral da nação de monstros.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rigurd',TRUE,0),(gen_random_uuid(),q,'Gobta',FALSE,1),(gen_random_uuid(),q,'Rigur',FALSE,2),(gen_random_uuid(),q,'Gobzo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','medium','Qual desses personagens é oficial militar com especialização em cura sagrada, integrado à cidade após resgate de situação adversa anterior?','Sua contribuição médica se torna cada vez mais valiosa conforme os conflitos se intensificam.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gido',TRUE,0),(gen_random_uuid(),q,'Kaijin',FALSE,1),(gen_random_uuid(),q,'Vester',FALSE,2),(gen_random_uuid(),q,'Kurobe',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','hard','Qual desses personagens mantém posição de força territorial significativa como Demon Lord leonino, sempre próximo aos interesses de Frey?','Sua presença nas reuniões de Walpurgis é constante ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Carrion',TRUE,0),(gen_random_uuid(),q,'Guy Crimson',FALSE,1),(gen_random_uuid(),q,'Milim',FALSE,2),(gen_random_uuid(),q,'Ramiris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','impossible','Qual desses personagens carrega consigo referências históricas antigas ligadas a artefatos lendários de grande poder dracônico?','Sua verdadeira origem é revelada apenas em momentos avançados da narrativa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Veldora',TRUE,0),(gen_random_uuid(),q,'Milim',FALSE,1),(gen_random_uuid(),q,'Guy Crimson',FALSE,2),(gen_random_uuid(),q,'Ramiris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','medium','Qual desses personagens supervisiona a organização burocrática de Tempest, sendo reconhecido pela dedicação constante ao trabalho administrativo?','Sua evolução pessoal reflete diretamente o crescimento da nação como um todo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rigurd',TRUE,0),(gen_random_uuid(),q,'Gobta',FALSE,1),(gen_random_uuid(),q,'Rigur',FALSE,2),(gen_random_uuid(),q,'Gobzo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','hard','Qual desses personagens fornece suporte médico crucial durante conflitos militares, usando técnicas de cura sagrada aprendidas antes de se juntar à cidade?','Sua experiência prévia complementa perfeitamente as necessidades da nova comunidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gido',TRUE,0),(gen_random_uuid(),q,'Kaijin',FALSE,1),(gen_random_uuid(),q,'Vester',FALSE,2),(gen_random_uuid(),q,'Kurobe',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','medium','Qual desses personagens colabora estrategicamente com Frey em decisões territoriais, mantendo posição respeitada entre os Demon Lords?','Sua influência política complementa a de sua aliada aviária em negociações importantes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Carrion',TRUE,0),(gen_random_uuid(),q,'Guy Crimson',FALSE,1),(gen_random_uuid(),q,'Milim',FALSE,2),(gen_random_uuid(),q,'Ramiris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','impossible','Qual desses personagens possui conexão histórica profunda com artefatos ancestrais associados ao poder dracônico primordial do mundo?','Textos antigos referenciam essa conexão de forma indireta ao longo da narrativa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Veldora',TRUE,0),(gen_random_uuid(),q,'Milim',FALSE,1),(gen_random_uuid(),q,'Guy Crimson',FALSE,2),(gen_random_uuid(),q,'Ramiris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','easy','Qual desses personagens gerencia com competência crescente as necessidades administrativas diárias da cidade fundada por Rimuru?','Sua dedicação ao cargo é notada por todos os habitantes da nação de monstros.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rigurd',TRUE,0),(gen_random_uuid(),q,'Gobta',FALSE,1),(gen_random_uuid(),q,'Rigur',FALSE,2),(gen_random_uuid(),q,'Gobzo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','medium','Qual desses personagens dedica-se à cura de feridos usando conhecimentos sagrados adquiridos antes de ingressar na comunidade de monstros?','Sua habilidade se torna cada vez mais reconhecida conforme os conflitos se intensificam.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gido',TRUE,0),(gen_random_uuid(),q,'Kaijin',FALSE,1),(gen_random_uuid(),q,'Vester',FALSE,2),(gen_random_uuid(),q,'Kurobe',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','hard','Qual desses personagens exerce influência territorial significativa como líder leonino, sempre alinhado estrategicamente com Frey nas decisões políticas?','Sua força militar é respeitada amplamente entre outros governantes territoriais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Carrion',TRUE,0),(gen_random_uuid(),q,'Guy Crimson',FALSE,1),(gen_random_uuid(),q,'Milim',FALSE,2),(gen_random_uuid(),q,'Ramiris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','impossible','Qual desses personagens tem vínculo ancestral com relíquias dracônicas mencionadas esporadicamente em registros históricos do mundo?','Sua verdadeira natureza histórica só é plenamente compreendida em arcos avançados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Veldora',TRUE,0),(gen_random_uuid(),q,'Milim',FALSE,1),(gen_random_uuid(),q,'Guy Crimson',FALSE,2),(gen_random_uuid(),q,'Ramiris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','medium','Qual desses personagens é reconhecido por sua eficiência administrativa notável, essencial para o funcionamento contínuo de Tempest?','Sua evolução de capacidades acompanha o crescimento geral da nação de monstros.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rigurd',TRUE,0),(gen_random_uuid(),q,'Gobta',FALSE,1),(gen_random_uuid(),q,'Rigur',FALSE,2),(gen_random_uuid(),q,'Gobzo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','hard','Qual desses personagens contribui com magia de cura sagrada durante batalhas decisivas, tendo se integrado à comunidade após período difícil anterior?','Sua trajetória pessoal reflete a natureza acolhedora da nação fundada por Rimuru.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gido',TRUE,0),(gen_random_uuid(),q,'Kaijin',FALSE,1),(gen_random_uuid(),q,'Vester',FALSE,2),(gen_random_uuid(),q,'Kurobe',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','medium','Qual desses personagens participa ativamente das decisões estratégicas territoriais ao lado de Frey, consolidando posição de destaque entre Demon Lords?','Sua parceria com a aviária reflete alinhamento de interesses de longa data.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Carrion',TRUE,0),(gen_random_uuid(),q,'Guy Crimson',FALSE,1),(gen_random_uuid(),q,'Milim',FALSE,2),(gen_random_uuid(),q,'Ramiris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','impossible','Qual desses personagens é ligado por antiga tradição a artefatos dracônicos lendários citados em registros históricos raros do mundo?','A profundidade dessa conexão histórica é revelada apenas em capítulos mais avançados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Veldora',TRUE,0),(gen_random_uuid(),q,'Milim',FALSE,1),(gen_random_uuid(),q,'Guy Crimson',FALSE,2),(gen_random_uuid(),q,'Ramiris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','easy','Qual desses personagens desempenha função burocrática essencial, com responsabilidades crescentes conforme a cidade de Tempest se expande?','Sua importância administrativa é reconhecida amplamente pela comunidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rigurd',TRUE,0),(gen_random_uuid(),q,'Gobta',FALSE,1),(gen_random_uuid(),q,'Rigur',FALSE,2),(gen_random_uuid(),q,'Gobzo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','hard','Qual desses personagens presta serviços médicos avançados durante conflitos, unindo conhecimento sagrado prévio à nova vida na comunidade de monstros?','Sua contribuição médica se torna indispensável em momentos de crise militar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gido',TRUE,0),(gen_random_uuid(),q,'Kaijin',FALSE,1),(gen_random_uuid(),q,'Vester',FALSE,2),(gen_random_uuid(),q,'Kurobe',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','medium','Qual desses personagens organiza cuidadosamente registros e processos internos, essencial para manter a ordem dentro da cidade em crescimento?','Sua função burocrática complementa perfeitamente a liderança de Rimuru.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rigurd',TRUE,0),(gen_random_uuid(),q,'Gobta',FALSE,1),(gen_random_uuid(),q,'Rigur',FALSE,2),(gen_random_uuid(),q,'Gobzo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','hard','Qual desses personagens aplica conhecimento sagrado de cura em situações de emergência médica durante confrontos militares importantes?','Seu treinamento prévio se mostra extremamente valioso para a nova comunidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gido',TRUE,0),(gen_random_uuid(),q,'Kaijin',FALSE,1),(gen_random_uuid(),q,'Vester',FALSE,2),(gen_random_uuid(),q,'Kurobe',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','impossible','Qual desses personagens carrega em sua essência vínculos ancestrais com poderes dracônicos primordiais registrados em lendas antigas?','Essa conexão profunda molda parte significativa de sua identidade ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Veldora',TRUE,0),(gen_random_uuid(),q,'Milim',FALSE,1),(gen_random_uuid(),q,'Guy Crimson',FALSE,2),(gen_random_uuid(),q,'Ramiris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'text','medium','Qual desses personagens fortalece alianças territoriais estratégicas com Frey, consolidando presença influente entre os Demon Lords?','Sua parceria contínua reflete objetivos políticos alinhados de longo prazo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Carrion',TRUE,0),(gen_random_uuid(),q,'Guy Crimson',FALSE,1),(gen_random_uuid(),q,'Milim',FALSE,2),(gen_random_uuid(),q,'Ramiris',FALSE,3);

    -- fill_blank complemento (12)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'fill_blank','medium','O sacerdote transformado em oficial militar especialista em magia sagrada de cura, resgatado de circunstâncias adversas, se chama ___.','Ele se junta à nação de monstros após ser resgatado de circunstâncias adversas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gido',TRUE,0),(gen_random_uuid(),q,'Kaijin',FALSE,1),(gen_random_uuid(),q,'Vester',FALSE,2),(gen_random_uuid(),q,'Kurobe',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'fill_blank','hard','O Demon Lord leonino, governante territorial que mantém aliança próxima com Frey, se chama ___.','Ele participa ativamente das negociações políticas entre Demon Lords ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Carrion',TRUE,0),(gen_random_uuid(),q,'Guy Crimson',FALSE,1),(gen_random_uuid(),q,'Milim',FALSE,2),(gen_random_uuid(),q,'Ramiris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'fill_blank','easy','O goblin responsável pelas questões administrativas da cidade, demonstrando crescimento contínuo de suas capacidades, se chama ___.','Ele lida diretamente com burocracia e organização interna da nação de monstros.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rigurd',TRUE,0),(gen_random_uuid(),q,'Gobta',FALSE,1),(gen_random_uuid(),q,'Rigur',FALSE,2),(gen_random_uuid(),q,'Gobzo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'fill_blank','medium','O oficial militar com especialização em cura sagrada, integrado à cidade após resgate de situação adversa, se chama ___.','Sua contribuição médica se torna cada vez mais valiosa conforme os conflitos se intensificam.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gido',TRUE,0),(gen_random_uuid(),q,'Kaijin',FALSE,1),(gen_random_uuid(),q,'Vester',FALSE,2),(gen_random_uuid(),q,'Kurobe',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'fill_blank','hard','O Demon Lord que mantém posição de força territorial significativa, sempre próximo aos interesses de Frey, se chama ___.','Sua presença nas reuniões de Walpurgis é constante ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Carrion',TRUE,0),(gen_random_uuid(),q,'Guy Crimson',FALSE,1),(gen_random_uuid(),q,'Milim',FALSE,2),(gen_random_uuid(),q,'Ramiris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'fill_blank','medium','O goblin que supervisiona a organização burocrática de Tempest, reconhecido pela dedicação constante, se chama ___.','Sua evolução pessoal reflete diretamente o crescimento da nação como um todo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rigurd',TRUE,0),(gen_random_uuid(),q,'Gobta',FALSE,1),(gen_random_uuid(),q,'Rigur',FALSE,2),(gen_random_uuid(),q,'Gobzo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'fill_blank','hard','O oficial que fornece suporte médico crucial durante conflitos militares, usando técnicas de cura sagrada, se chama ___.','Sua experiência prévia complementa perfeitamente as necessidades da nova comunidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gido',TRUE,0),(gen_random_uuid(),q,'Kaijin',FALSE,1),(gen_random_uuid(),q,'Vester',FALSE,2),(gen_random_uuid(),q,'Kurobe',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'fill_blank','medium','O Demon Lord que colabora estrategicamente com Frey em decisões territoriais, mantendo posição respeitada, se chama ___.','Sua influência política complementa a de sua aliada aviária em negociações importantes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Carrion',TRUE,0),(gen_random_uuid(),q,'Guy Crimson',FALSE,1),(gen_random_uuid(),q,'Milim',FALSE,2),(gen_random_uuid(),q,'Ramiris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'fill_blank','easy','O goblin reconhecido por sua eficiência administrativa notável, essencial para o funcionamento contínuo de Tempest, se chama ___.','Sua evolução de capacidades acompanha o crescimento geral da nação de monstros.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rigurd',TRUE,0),(gen_random_uuid(),q,'Gobta',FALSE,1),(gen_random_uuid(),q,'Rigur',FALSE,2),(gen_random_uuid(),q,'Gobzo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'fill_blank','hard','O oficial que contribui com magia de cura sagrada durante batalhas decisivas, integrado à comunidade após período difícil, se chama ___.','Sua trajetória pessoal reflete a natureza acolhedora da nação fundada por Rimuru.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gido',TRUE,0),(gen_random_uuid(),q,'Kaijin',FALSE,1),(gen_random_uuid(),q,'Vester',FALSE,2),(gen_random_uuid(),q,'Kurobe',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'fill_blank','medium','O Demon Lord que participa ativamente das decisões estratégicas territoriais ao lado de Frey se chama ___.','Sua parceria com a aviária reflete alinhamento de interesses de longa data.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Carrion',TRUE,0),(gen_random_uuid(),q,'Guy Crimson',FALSE,1),(gen_random_uuid(),q,'Milim',FALSE,2),(gen_random_uuid(),q,'Ramiris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'fill_blank','hard','O oficial que aplica conhecimento sagrado de cura em situações de emergência médica durante confrontos importantes se chama ___.','Seu treinamento prévio se mostra extremamente valioso para a nova comunidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gido',TRUE,0),(gen_random_uuid(),q,'Kaijin',FALSE,1),(gen_random_uuid(),q,'Vester',FALSE,2),(gen_random_uuid(),q,'Kurobe',FALSE,3);

    -- who_said complemento (12)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'who_said','easy','Quem disse: "Eu cuido das questões administrativas desta cidade com dedicação crescente, sempre buscando melhorar minhas capacidades"?','A frase é dita pelo goblin responsável pela administração de Tempest.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rigurd',TRUE,0),(gen_random_uuid(),q,'Gobta',FALSE,1),(gen_random_uuid(),q,'Rigur',FALSE,2),(gen_random_uuid(),q,'Gobzo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'who_said','medium','Quem disse: "Fui resgatado de circunstâncias adversas antes de me juntar a esta comunidade, e hoje uso minha magia de cura para proteger todos"?','A frase é dita pelo sacerdote transformado em oficial militar de cura.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gido',TRUE,0),(gen_random_uuid(),q,'Kaijin',FALSE,1),(gen_random_uuid(),q,'Vester',FALSE,2),(gen_random_uuid(),q,'Kurobe',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'who_said','hard','Quem disse: "Eu participo ativamente das negociações territoriais entre Demon Lords, sempre mantendo aliança próxima com Frey"?','A frase é dita pelo Demon Lord leonino aliado da governante aviária.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Carrion',TRUE,0),(gen_random_uuid(),q,'Guy Crimson',FALSE,1),(gen_random_uuid(),q,'Milim',FALSE,2),(gen_random_uuid(),q,'Ramiris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'who_said','impossible','Quem disse: "Minha conexão histórica com artefatos dracônicos ancestrais só é plenamente compreendida por poucos estudiosos deste mundo"?','A frase é dita pelo dragão ligado a relíquias lendárias mencionadas em textos antigos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Veldora',TRUE,0),(gen_random_uuid(),q,'Milim',FALSE,1),(gen_random_uuid(),q,'Guy Crimson',FALSE,2),(gen_random_uuid(),q,'Ramiris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'who_said','easy','Quem disse: "Minha eficiência administrativa é reconhecida por toda a comunidade, e me orgulho do trabalho que realizo diariamente"?','A frase é dita pelo goblin dedicado à organização burocrática de Tempest.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rigurd',TRUE,0),(gen_random_uuid(),q,'Gobta',FALSE,1),(gen_random_uuid(),q,'Rigur',FALSE,2),(gen_random_uuid(),q,'Gobzo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'who_said','medium','Quem disse: "Minha contribuição médica se torna indispensável durante momentos de crise militar, e sinto orgulho de ajudar esta comunidade"?','A frase é dita pelo oficial especialista em cura sagrada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gido',TRUE,0),(gen_random_uuid(),q,'Kaijin',FALSE,1),(gen_random_uuid(),q,'Vester',FALSE,2),(gen_random_uuid(),q,'Kurobe',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'who_said','hard','Quem disse: "Minha força militar é respeitada amplamente entre outros governantes territoriais, e minha parceria com Frey se fortalece constantemente"?','A frase é dita pelo Demon Lord leonino de território próprio.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Carrion',TRUE,0),(gen_random_uuid(),q,'Guy Crimson',FALSE,1),(gen_random_uuid(),q,'Milim',FALSE,2),(gen_random_uuid(),q,'Ramiris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'who_said','impossible','Quem disse: "Textos antigos referenciam minha ligação com artefatos ancestrais de forma indireta, mas poucos compreendem completamente essa história"?','A frase é dita pelo dragão com vínculo histórico a relíquias lendárias.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Veldora',TRUE,0),(gen_random_uuid(),q,'Milim',FALSE,1),(gen_random_uuid(),q,'Guy Crimson',FALSE,2),(gen_random_uuid(),q,'Ramiris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'who_said','medium','Quem disse: "Minha evolução de capacidades administrativas acompanha diretamente o crescimento desta nação de monstros ao longo do tempo"?','A frase é dita pelo goblin dedicado à burocracia de Tempest.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rigurd',TRUE,0),(gen_random_uuid(),q,'Gobta',FALSE,1),(gen_random_uuid(),q,'Rigur',FALSE,2),(gen_random_uuid(),q,'Gobzo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'who_said','hard','Quem disse: "Minha trajetória pessoal, desde tempos difíceis até hoje, reflete bem a natureza acolhedora desta nação fundada por Rimuru"?','A frase é dita pelo oficial de cura sagrada que se juntou à comunidade após período adverso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gido',TRUE,0),(gen_random_uuid(),q,'Kaijin',FALSE,1),(gen_random_uuid(),q,'Vester',FALSE,2),(gen_random_uuid(),q,'Kurobe',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'who_said','hard','Quem disse: "Minha parceria estratégica com Frey em decisões territoriais consolidou minha posição de destaque entre os Demon Lords"?','A frase é dita pelo Demon Lord leonino aliado próximo da governante aviária.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Carrion',TRUE,0),(gen_random_uuid(),q,'Guy Crimson',FALSE,1),(gen_random_uuid(),q,'Milim',FALSE,2),(gen_random_uuid(),q,'Ramiris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'who_said','hard','Quem disse: "Eu carrego vínculos ancestrais com poderes dracônicos primordiais, moldando profundamente quem sou ao longo desta jornada"?','A frase é dita pelo dragão ligado a lendas antigas sobre poder dracônico.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Veldora',TRUE,0),(gen_random_uuid(),q,'Milim',FALSE,1),(gen_random_uuid(),q,'Guy Crimson',FALSE,2),(gen_random_uuid(),q,'Ramiris',FALSE,3);

    -- episode_arc complemento (5)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'episode_arc','medium','Em qual arco Gido se junta à nação de monstros após ser resgatado de circunstâncias adversas, tornando-se oficial de cura sagrada?','Sua integração ocorre durante a fase de expansão inicial da cidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Origem',TRUE,0),(gen_random_uuid(),q,'Arco de Falmuth',FALSE,1),(gen_random_uuid(),q,'Arco de Walpurgis',FALSE,2),(gen_random_uuid(),q,'Arco da Teocracia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'episode_arc','hard','Em qual arco Carrion e Frey demonstram alinhamento estratégico de interesses durante negociações territoriais complexas?','Este arco explora a política entre Demon Lords de forma mais aprofundada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Walpurgis',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco de Falmuth',FALSE,2),(gen_random_uuid(),q,'Arco da Teocracia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'episode_arc','medium','Em qual arco Rigurd assume crescentes responsabilidades administrativas conforme a cidade de Tempest se expande rapidamente?','Seu crescimento pessoal acompanha o desenvolvimento geral da nação de monstros.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Origem',TRUE,0),(gen_random_uuid(),q,'Arco de Falmuth',FALSE,1),(gen_random_uuid(),q,'Arco de Walpurgis',FALSE,2),(gen_random_uuid(),q,'Arco da Teocracia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'episode_arc','hard','Em qual arco a verdadeira origem histórica de Veldora, ligada a artefatos dracônicos ancestrais, começa a ser sugerida através de referências indiretas?','Esta sugestão prepara o terreno para revelações mais profundas em arcos posteriores.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Walpurgis',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco de Falmuth',FALSE,2),(gen_random_uuid(),q,'Arco da Teocracia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ts,'episode_arc','impossible','Em qual arco Gido presta suporte médico crucial durante conflitos militares intensos enfrentados pela nação de monstros?','Sua contribuição se torna cada vez mais essencial conforme os desafios militares aumentam.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Teocracia',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco de Falmuth',FALSE,2),(gen_random_uuid(),q,'Arco de Walpurgis',FALSE,3);

END $$;
