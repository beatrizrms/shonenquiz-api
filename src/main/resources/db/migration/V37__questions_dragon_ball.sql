-- ============================================================
--  V37 — Seed de perguntas: Dragon Ball (150 perguntas)
--  Fonte: MyAnimeList + cânone do anime
--  Distribuição: text 40% / fill_blank 25% / who_said 20% /
--                episode_arc 10% / chronological 5%
--  Sem repetição com V5. Regras R1-R7 aplicadas.
-- ============================================================

DO $$
DECLARE
    v_system UUID := '00000000-0000-0000-0000-000000000001';
    v_db     UUID;
    q        UUID;
BEGIN
    SELECT id INTO v_db FROM animes WHERE slug = 'dragon-ball' LIMIT 1;

    -- ══════════════════════════════════════════════════════════
    -- TEXT — 60 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','easy','Qual é o nome do protagonista, garoto de cauda de macaco encontrado por Bulma no início da série?','Ele é criado isolado nas montanhas por seu avô adotivo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Goku',TRUE,0),(gen_random_uuid(),q,'Krillin',FALSE,1),(gen_random_uuid(),q,'Yamcha',FALSE,2),(gen_random_uuid(),q,'Tien',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','easy','Qual é o nome da jovem cientista que encontra Goku enquanto procura as Esferas do Dragão?','Ela é herdeira da Cápsula Corporation, empresa tecnológica de sua família.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bulma',TRUE,0),(gen_random_uuid(),q,'Chichi',FALSE,1),(gen_random_uuid(),q,'Launch',FALSE,2),(gen_random_uuid(),q,'Maron',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','easy','Qual é o nome do avô adotivo que cria Goku isolado nas montanhas, ensinando-o artes marciais básicas?','Ele deixa a Bolinha de Cristal de quatro estrelas como herança para Goku.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Son Gohan',TRUE,0),(gen_random_uuid(),q,'Mestre Kame',FALSE,1),(gen_random_uuid(),q,'Rei Kaioh',FALSE,2),(gen_random_uuid(),q,'Korin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','easy','Qual é o nome do mestre de artes marciais careca que treina Goku e Krillin na Kame House?','Ele é conhecido por seu comportamento excêntrico e pervertido.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mestre Kame',TRUE,0),(gen_random_uuid(),q,'Korin',FALSE,1),(gen_random_uuid(),q,'Rei Kaioh',FALSE,2),(gen_random_uuid(),q,'Son Gohan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','easy','Qual é o nome do monge careca, melhor amigo de Goku desde o treinamento na Kame House?','Ele é o humano mais forte entre os protagonistas principais da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Krillin',TRUE,0),(gen_random_uuid(),q,'Yamcha',FALSE,1),(gen_random_uuid(),q,'Tien',FALSE,2),(gen_random_uuid(),q,'Chiaotzu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','easy','Qual é o nome do bandido do deserto que se torna aliado de Goku, com medo extremo de mulheres no início?','Ele é um lutador especializado em técnicas de artes marciais do deserto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yamcha',TRUE,0),(gen_random_uuid(),q,'Krillin',FALSE,1),(gen_random_uuid(),q,'Tien',FALSE,2),(gen_random_uuid(),q,'Puar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','easy','Qual é o nome do lutador de três olhos, rival de Goku nos torneios de artes marciais?','Ele treina sob a tradição da Escola da Grua antes de se tornar aliado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tien Shinhan',TRUE,0),(gen_random_uuid(),q,'Yamcha',FALSE,1),(gen_random_uuid(),q,'Krillin',FALSE,2),(gen_random_uuid(),q,'Chiaotzu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','easy','Qual é o nome da esposa de Goku, filha de um rei montanhês que se casa com ele após um torneio?','Ela conhece Goku ainda quando criança durante uma promessa feita à sua família.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chichi',TRUE,0),(gen_random_uuid(),q,'Bulma',FALSE,1),(gen_random_uuid(),q,'Launch',FALSE,2),(gen_random_uuid(),q,'Maron',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','easy','Qual é o nome das sete relíquias mágicas que, reunidas, invocam um dragão capaz de realizar um desejo?','Cada uma delas possui um número de estrelas diferente, de uma a sete.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Esferas do Dragão',TRUE,0),(gen_random_uuid(),q,'Cristais Sagrados',FALSE,1),(gen_random_uuid(),q,'Pérolas Celestiais',FALSE,2),(gen_random_uuid(),q,'Gemas do Destino',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','easy','Qual é o nome do dragão eterno invocado ao reunir as sete esferas mágicas?','Ele concede um desejo por invocação, dentro de certos limites de poder.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shenlong',TRUE,0),(gen_random_uuid(),q,'Porunga',FALSE,1),(gen_random_uuid(),q,'Shenron Negro',FALSE,2),(gen_random_uuid(),q,'Ryuu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','easy','Qual é o nome do torneio de artes marciais disputado periodicamente, cenário de diversos confrontos importantes da série?','Ele reúne os lutadores mais fortes do mundo a cada alguns anos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tenkaichi Budokai',TRUE,0),(gen_random_uuid(),q,'Torneio do Poder',FALSE,1),(gen_random_uuid(),q,'Copa Celestial',FALSE,2),(gen_random_uuid(),q,'Torneio dos Mestres',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','easy','Qual é o nome do gato voador azul, companheiro fiel de Yamcha desde o início da série?','Ele possui a habilidade de se transformar em diversos objetos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Puar',TRUE,0),(gen_random_uuid(),q,'Korin',FALSE,1),(gen_random_uuid(),q,'Oolong',FALSE,2),(gen_random_uuid(),q,'Karin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','easy','Qual é o nome do porco metamorfo que se junta ao grupo de Goku na busca inicial pelas esferas?','Ele possui a habilidade de se transformar em diversas formas e objetos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Oolong',TRUE,0),(gen_random_uuid(),q,'Puar',FALSE,1),(gen_random_uuid(),q,'Korin',FALSE,2),(gen_random_uuid(),q,'Emperor Pilaf',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','easy','Qual é o nome do gato branco que vive em uma torre alta, fornecedor de itens especiais de treinamento?','Ele guarda a Água Sagrada, capaz de multiplicar temporariamente o poder de quem a bebe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Korin',TRUE,0),(gen_random_uuid(),q,'Oolong',FALSE,1),(gen_random_uuid(),q,'Puar',FALSE,2),(gen_random_uuid(),q,'Kami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','easy','Qual é o nome do guardião da Terra que vive em um templo flutuante acima da torre de Korin?','Ele é responsável por manter as esferas do dragão em funcionamento no planeta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kami',TRUE,0),(gen_random_uuid(),q,'Korin',FALSE,1),(gen_random_uuid(),q,'Mestre Kame',FALSE,2),(gen_random_uuid(),q,'Popo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','medium','Qual é o nome do exército maligno que busca as Esferas do Dragão para dominar o mundo no início da série?','Eles usam uniformes militares e símbolos característicos em suas bases.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Exército Red Ribbon',TRUE,0),(gen_random_uuid(),q,'Exército de Piccolo',FALSE,1),(gen_random_uuid(),q,'Clã Saiyajin',FALSE,2),(gen_random_uuid(),q,'Guarda de Freeza',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','medium','Qual é o nome do rei demônio ancestral, antagonista da saga que precede diretamente o Torneio de Artes Marciais adulto?','Ele busca controlar o mundo através de terror e conquista territorial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Piccolo Daimao',TRUE,0),(gen_random_uuid(),q,'Rei Vegeta',FALSE,1),(gen_random_uuid(),q,'General Blue',FALSE,2),(gen_random_uuid(),q,'Tao Pai Pai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','medium','Qual é o nome do assassino profissional contratado pelo Red Ribbon para eliminar Goku?','Ele é revelado como mestre de Tien Shinhan antes dos eventos da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tao Pai Pai',TRUE,0),(gen_random_uuid(),q,'General Blue',FALSE,1),(gen_random_uuid(),q,'Piccolo Daimao',FALSE,2),(gen_random_uuid(),q,'General White',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','medium','Qual é o nome do técnica ofensiva mais icônica de Goku, uma onda de energia azul disparada das mãos?','Ela é ensinada por Mestre Kame após anos de treinamento rigoroso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kamehameha',TRUE,0),(gen_random_uuid(),q,'Makankosappo',FALSE,1),(gen_random_uuid(),q,'Kienzan',FALSE,2),(gen_random_uuid(),q,'Dodonpa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','medium','Qual é o nome do disco de energia cortante usado por Krillin como técnica ofensiva característica?','Ele é capaz de cortar praticamente qualquer material com precisão extrema.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kienzan',TRUE,0),(gen_random_uuid(),q,'Kamehameha',FALSE,1),(gen_random_uuid(),q,'Makankosappo',FALSE,2),(gen_random_uuid(),q,'Taiyoken',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','medium','Qual é o nome da técnica de luz ofuscante usada por Krillin para cegar temporariamente adversários?','Ela é frequentemente utilizada como recurso estratégico em combates desiguais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Taiyoken',TRUE,0),(gen_random_uuid(),q,'Kienzan',FALSE,1),(gen_random_uuid(),q,'Kamehameha',FALSE,2),(gen_random_uuid(),q,'Dodonpa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','medium','Qual é o nome do filho reencarnado de Piccolo Daimao, antagonista posteriormente aliado dos protagonistas?','Ele guarda a maior parte do poder e da maldade original de seu pai.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Piccolo (Ma Junior)',TRUE,0),(gen_random_uuid(),q,'Kami',FALSE,1),(gen_random_uuid(),q,'Popo',FALSE,2),(gen_random_uuid(),q,'Nail',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','medium','Qual é o nome do general do Red Ribbon obcecado por altura, especialista em manipular gelo em combate?','Ele é derrotado por Goku em confronto na base secreta do exército.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'General Blue',TRUE,0),(gen_random_uuid(),q,'General White',FALSE,1),(gen_random_uuid(),q,'Tao Pai Pai',FALSE,2),(gen_random_uuid(),q,'Commander Red',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','medium','Qual é o nome do líder supremo do exército Red Ribbon, obcecado por sua baixa estatura?','Ele comanda a organização em busca das Esferas do Dragão para realizar seu desejo pessoal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Commander Red',TRUE,0),(gen_random_uuid(),q,'General Blue',FALSE,1),(gen_random_uuid(),q,'General White',FALSE,2),(gen_random_uuid(),q,'Tao Pai Pai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','hard','Qual é o nome do filho de Goku, nascido durante o intervalo entre torneios de artes marciais na fase adulta da série?','Ele é criado com forte incentivo aos estudos por parte de sua mãe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gohan',TRUE,0),(gen_random_uuid(),q,'Goten',FALSE,1),(gen_random_uuid(),q,'Trunks',FALSE,2),(gen_random_uuid(),q,'Pan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','hard','Qual é o nome do rei demoníaco antigo, selado por gerações antes de ser libertado pelo Rei Piccolo?','Sua libertação é impedida através de um artefato mágico guardado pelo Santuário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Piccolo Daimao',TRUE,0),(gen_random_uuid(),q,'Garlic Jr.',FALSE,1),(gen_random_uuid(),q,'Slug',FALSE,2),(gen_random_uuid(),q,'Cell',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','hard','Qual é o nome do imperador celestial ancestral, derrotado por Mestre Kame décadas antes dos eventos principais?','Ele busca vingança contra o Mestre Kame ao longo de sua trama de retorno.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Garlic Jr.',TRUE,0),(gen_random_uuid(),q,'Piccolo Daimao',FALSE,1),(gen_random_uuid(),q,'Slug',FALSE,2),(gen_random_uuid(),q,'Lord Chilled',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','hard','Qual é o nome do artefato místico dentro do templo sagrado que concede imortalidade a quem o consome?','Sua existência é o motivo pelo qual Garlic Jr. invade o Santuário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fruta da Imortalidade',TRUE,0),(gen_random_uuid(),q,'Água Sagrada',FALSE,1),(gen_random_uuid(),q,'Semente do Ermitão',FALSE,2),(gen_random_uuid(),q,'Bolinha de Cristal',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','hard','Qual é o nome do dimensão sombria criada por Garlic Jr. onde tenta aprisionar seus inimigos permanentemente?','Ela é usada como arma estratégica durante seu confronto com os protagonistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Portal do Vazio Sombrio',TRUE,0),(gen_random_uuid(),q,'Sala do Espírito e do Tempo',FALSE,1),(gen_random_uuid(),q,'Dimensão de Kaioh',FALSE,2),(gen_random_uuid(),q,'Portal Kai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','hard','Qual é o nome do irmão biológico de Piccolo, invasor alienígena que também busca as Esferas do Dragão?','Ele possui poder muito superior ao de Piccolo em seu primeiro confronto contra os protagonistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Slug',TRUE,0),(gen_random_uuid(),q,'Garlic Jr.',FALSE,1),(gen_random_uuid(),q,'Lord Chilled',FALSE,2),(gen_random_uuid(),q,'Turles',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','hard','Qual é o nome do saiyajin renegado que tenta seduzir Gohan para o lado do mal usando uma fruta especial?','Ele cria uma árvore capaz de drenar a energia vital de todo um planeta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Turles',TRUE,0),(gen_random_uuid(),q,'Slug',FALSE,1),(gen_random_uuid(),q,'Lord Chilled',FALSE,2),(gen_random_uuid(),q,'Broly',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','hard','Qual é o nome do lutador cyborg contratado para eliminar Goku durante o vigésimo terceiro Tenkaichi Budokai?','Ele é revelado como criação de um cientista vingativo ligado ao Red Ribbon.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mercenary Tao (versão cyborg)',TRUE,0),(gen_random_uuid(),q,'General Blue',FALSE,1),(gen_random_uuid(),q,'General White',FALSE,2),(gen_random_uuid(),q,'Commander Red',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','impossible','Qual é o nome do imperador galáctico que enviou Lord Chilled ao planeta de Piccolo antes dos eventos principais da série?','Ele é mencionado como figura de poder muito superior aos demais vilões da fase clássica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Freeza',TRUE,0),(gen_random_uuid(),q,'Cooler',FALSE,1),(gen_random_uuid(),q,'Slug',FALSE,2),(gen_random_uuid(),q,'King Cold',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','impossible','Qual é o nome do príncipe alienígena enviado ao planeta de Piccolo, antecessor cronológico direto dos eventos da saga Freeza?','Ele demonstra crueldade extrema, sendo derrotado por Goku em sua primeira transformação especial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Lord Chilled',TRUE,0),(gen_random_uuid(),q,'Cooler',FALSE,1),(gen_random_uuid(),q,'Slug',FALSE,2),(gen_random_uuid(),q,'Freeza',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','impossible','Qual é o nome do assistente robô de Kami, sempre presente ao lado do guardião no templo sagrado?','Ele auxilia nas tarefas cotidianas do templo e na proteção da esfera de quatro estrelas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mr. Popo',TRUE,0),(gen_random_uuid(),q,'Nail',FALSE,1),(gen_random_uuid(),q,'Dende',FALSE,2),(gen_random_uuid(),q,'Korin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','impossible','Qual é o nome do policial que se junta brevemente ao grupo de Goku durante a fase de busca pelas esferas ainda na infância?','Ela participa da investigação contra o exército Red Ribbon.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Launch',TRUE,0),(gen_random_uuid(),q,'Chichi',FALSE,1),(gen_random_uuid(),q,'Bulma',FALSE,2),(gen_random_uuid(),q,'Maron',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','impossible','Qual é o nome do amigo bicudo de Krillin, integrante da Escola da Tartaruga que participa do Tenkaichi Budokai?','Ele é frequentemente retratado como alívio cômico entre os personagens secundários.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bacterian',FALSE,0),(gen_random_uuid(),q,'Chiaotzu',TRUE,1),(gen_random_uuid(),q,'Yajirobe',FALSE,2),(gen_random_uuid(),q,'Nam',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','impossible','Qual é o nome do samurai gordo que ajuda os protagonistas durante o confronto contra Piccolo Daimao, carregando uma espada afiada?','Ele vive isolado nas montanhas antes de se juntar brevemente ao grupo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yajirobe',TRUE,0),(gen_random_uuid(),q,'Chiaotzu',FALSE,1),(gen_random_uuid(),q,'Nam',FALSE,2),(gen_random_uuid(),q,'Bacterian',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- FILL_BLANK — 38 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'fill_blank','easy','O protagonista, garoto de cauda de macaco encontrado por Bulma no início da série, se chama ___.','Ele é criado isolado nas montanhas por seu avô adotivo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Goku',TRUE,0),(gen_random_uuid(),q,'Krillin',FALSE,1),(gen_random_uuid(),q,'Yamcha',FALSE,2),(gen_random_uuid(),q,'Tien',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'fill_blank','easy','A jovem cientista herdeira da Cápsula Corporation que encontra Goku no início da série se chama ___.','Ela busca as Esferas do Dragão para realizar um desejo pessoal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bulma',TRUE,0),(gen_random_uuid(),q,'Chichi',FALSE,1),(gen_random_uuid(),q,'Launch',FALSE,2),(gen_random_uuid(),q,'Maron',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'fill_blank','easy','O mestre de artes marciais careca que treina Goku e Krillin na Kame House se chama ___.','Ele é conhecido por seu comportamento excêntrico e pervertido.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mestre Kame',TRUE,0),(gen_random_uuid(),q,'Korin',FALSE,1),(gen_random_uuid(),q,'Rei Kaioh',FALSE,2),(gen_random_uuid(),q,'Son Gohan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'fill_blank','easy','O monge careca, melhor amigo de Goku desde o treinamento na Kame House, se chama ___.','Ele é o humano mais forte entre os protagonistas principais da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Krillin',TRUE,0),(gen_random_uuid(),q,'Yamcha',FALSE,1),(gen_random_uuid(),q,'Tien',FALSE,2),(gen_random_uuid(),q,'Chiaotzu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'fill_blank','easy','O bandido do deserto que se torna aliado de Goku, com medo extremo de mulheres, se chama ___.','Ele é um lutador especializado em técnicas de artes marciais do deserto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yamcha',TRUE,0),(gen_random_uuid(),q,'Krillin',FALSE,1),(gen_random_uuid(),q,'Tien',FALSE,2),(gen_random_uuid(),q,'Puar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'fill_blank','easy','O lutador de três olhos, rival de Goku nos torneios de artes marciais, se chama ___.','Ele treina sob a tradição da Escola da Grua antes de se tornar aliado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tien Shinhan',TRUE,0),(gen_random_uuid(),q,'Yamcha',FALSE,1),(gen_random_uuid(),q,'Krillin',FALSE,2),(gen_random_uuid(),q,'Chiaotzu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'fill_blank','easy','A esposa de Goku, filha de um rei montanhês, se chama ___.','Ela conhece Goku ainda quando criança durante uma promessa feita à sua família.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chichi',TRUE,0),(gen_random_uuid(),q,'Bulma',FALSE,1),(gen_random_uuid(),q,'Launch',FALSE,2),(gen_random_uuid(),q,'Maron',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'fill_blank','easy','As sete relíquias mágicas que, reunidas, invocam um dragão realizador de desejos são chamadas de ___.','Cada uma delas possui um número de estrelas diferente, de uma a sete.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Esferas do Dragão',TRUE,0),(gen_random_uuid(),q,'Cristais Sagrados',FALSE,1),(gen_random_uuid(),q,'Pérolas Celestiais',FALSE,2),(gen_random_uuid(),q,'Gemas do Destino',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'fill_blank','easy','O dragão eterno invocado ao reunir as sete esferas mágicas se chama ___.','Ele concede um desejo por invocação, dentro de certos limites de poder.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shenlong',TRUE,0),(gen_random_uuid(),q,'Porunga',FALSE,1),(gen_random_uuid(),q,'Shenron Negro',FALSE,2),(gen_random_uuid(),q,'Ryuu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'fill_blank','easy','O torneio de artes marciais disputado periodicamente na série se chama ___.','Ele reúne os lutadores mais fortes do mundo a cada alguns anos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tenkaichi Budokai',TRUE,0),(gen_random_uuid(),q,'Torneio do Poder',FALSE,1),(gen_random_uuid(),q,'Copa Celestial',FALSE,2),(gen_random_uuid(),q,'Torneio dos Mestres',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'fill_blank','medium','O exército maligno que busca as Esferas do Dragão para dominar o mundo no início da série se chama ___.','Eles usam uniformes militares e símbolos característicos em suas bases.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Exército Red Ribbon',TRUE,0),(gen_random_uuid(),q,'Exército de Piccolo',FALSE,1),(gen_random_uuid(),q,'Clã Saiyajin',FALSE,2),(gen_random_uuid(),q,'Guarda de Freeza',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'fill_blank','medium','O rei demônio ancestral, antagonista da saga que precede o Torneio de Artes Marciais adulto, se chama ___.','Ele busca controlar o mundo através de terror e conquista territorial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Piccolo Daimao',TRUE,0),(gen_random_uuid(),q,'Rei Vegeta',FALSE,1),(gen_random_uuid(),q,'General Blue',FALSE,2),(gen_random_uuid(),q,'Tao Pai Pai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'fill_blank','medium','O assassino profissional contratado pelo Red Ribbon para eliminar Goku se chama ___.','Ele é revelado como mestre de Tien Shinhan antes dos eventos da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tao Pai Pai',TRUE,0),(gen_random_uuid(),q,'General Blue',FALSE,1),(gen_random_uuid(),q,'Piccolo Daimao',FALSE,2),(gen_random_uuid(),q,'General White',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'fill_blank','medium','A técnica ofensiva mais icônica de Goku, uma onda de energia azul disparada das mãos, se chama ___.','Ela é ensinada por Mestre Kame após anos de treinamento rigoroso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kamehameha',TRUE,0),(gen_random_uuid(),q,'Makankosappo',FALSE,1),(gen_random_uuid(),q,'Kienzan',FALSE,2),(gen_random_uuid(),q,'Dodonpa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'fill_blank','medium','O disco de energia cortante usado por Krillin como técnica ofensiva característica se chama ___.','Ele é capaz de cortar praticamente qualquer material com precisão extrema.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kienzan',TRUE,0),(gen_random_uuid(),q,'Kamehameha',FALSE,1),(gen_random_uuid(),q,'Makankosappo',FALSE,2),(gen_random_uuid(),q,'Taiyoken',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'fill_blank','medium','O filho reencarnado de Piccolo Daimao, antagonista posteriormente aliado dos protagonistas, se chama ___.','Ele guarda a maior parte do poder e da maldade original de seu pai.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Piccolo (Ma Junior)',TRUE,0),(gen_random_uuid(),q,'Kami',FALSE,1),(gen_random_uuid(),q,'Popo',FALSE,2),(gen_random_uuid(),q,'Nail',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'fill_blank','medium','O general do Red Ribbon obcecado por altura, especialista em manipular gelo em combate, se chama ___.','Ele é derrotado por Goku em confronto na base secreta do exército.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'General Blue',TRUE,0),(gen_random_uuid(),q,'General White',FALSE,1),(gen_random_uuid(),q,'Tao Pai Pai',FALSE,2),(gen_random_uuid(),q,'Commander Red',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'fill_blank','medium','O líder supremo do exército Red Ribbon, obcecado por sua baixa estatura, se chama ___.','Ele comanda a organização em busca das Esferas do Dragão para realizar seu desejo pessoal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Commander Red',TRUE,0),(gen_random_uuid(),q,'General Blue',FALSE,1),(gen_random_uuid(),q,'General White',FALSE,2),(gen_random_uuid(),q,'Tao Pai Pai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'fill_blank','hard','O filho de Goku, nascido durante o intervalo entre torneios de artes marciais na fase adulta, se chama ___.','Ele é criado com forte incentivo aos estudos por parte de sua mãe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gohan',TRUE,0),(gen_random_uuid(),q,'Goten',FALSE,1),(gen_random_uuid(),q,'Trunks',FALSE,2),(gen_random_uuid(),q,'Pan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'fill_blank','hard','O imperador celestial ancestral, derrotado por Mestre Kame décadas antes dos eventos principais, se chama ___.','Ele busca vingança contra o Mestre Kame ao longo de sua trama de retorno.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Garlic Jr.',TRUE,0),(gen_random_uuid(),q,'Piccolo Daimao',FALSE,1),(gen_random_uuid(),q,'Slug',FALSE,2),(gen_random_uuid(),q,'Lord Chilled',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'fill_blank','hard','O irmão biológico de Piccolo, invasor alienígena que também busca as Esferas do Dragão, se chama ___.','Ele possui poder muito superior ao de Piccolo em seu primeiro confronto contra os protagonistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Slug',TRUE,0),(gen_random_uuid(),q,'Garlic Jr.',FALSE,1),(gen_random_uuid(),q,'Lord Chilled',FALSE,2),(gen_random_uuid(),q,'Turles',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'fill_blank','hard','O saiyajin renegado que tenta seduzir Gohan para o lado do mal usando uma fruta especial se chama ___.','Ele cria uma árvore capaz de drenar a energia vital de todo um planeta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Turles',TRUE,0),(gen_random_uuid(),q,'Slug',FALSE,1),(gen_random_uuid(),q,'Lord Chilled',FALSE,2),(gen_random_uuid(),q,'Broly',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'fill_blank','hard','O imperador galáctico que enviou Lord Chilled ao planeta de Piccolo antes dos eventos principais se chama ___.','Ele é mencionado como figura de poder muito superior aos demais vilões da fase clássica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Freeza',TRUE,0),(gen_random_uuid(),q,'Cooler',FALSE,1),(gen_random_uuid(),q,'Slug',FALSE,2),(gen_random_uuid(),q,'King Cold',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'fill_blank','impossible','O assistente robô de Kami, sempre presente ao lado do guardião no templo sagrado, se chama ___.','Ele auxilia nas tarefas cotidianas do templo e na proteção da esfera de quatro estrelas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mr. Popo',TRUE,0),(gen_random_uuid(),q,'Nail',FALSE,1),(gen_random_uuid(),q,'Dende',FALSE,2),(gen_random_uuid(),q,'Korin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'fill_blank','impossible','A policial que se junta brevemente ao grupo de Goku durante a fase de busca pelas esferas na infância se chama ___.','Ela participa da investigação contra o exército Red Ribbon.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Launch',TRUE,0),(gen_random_uuid(),q,'Chichi',FALSE,1),(gen_random_uuid(),q,'Bulma',FALSE,2),(gen_random_uuid(),q,'Maron',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'fill_blank','impossible','O samurai gordo que ajuda os protagonistas durante o confronto contra Piccolo Daimao se chama ___.','Ele vive isolado nas montanhas antes de se juntar brevemente ao grupo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yajirobe',TRUE,0),(gen_random_uuid(),q,'Chiaotzu',FALSE,1),(gen_random_uuid(),q,'Nam',FALSE,2),(gen_random_uuid(),q,'Bacterian',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- WHO_SAID — 30 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'who_said','easy','Quem disse: "Eu nunca vi uma esfera de cristal como essa antes; era a única lembrança que meu avô me deixou"?','A frase é dita pelo protagonista ao mostrar a Bolinha de Cristal de quatro estrelas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Goku',TRUE,0),(gen_random_uuid(),q,'Krillin',FALSE,1),(gen_random_uuid(),q,'Yamcha',FALSE,2),(gen_random_uuid(),q,'Tien',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'who_said','easy','Quem disse: "Eu sou herdeira da Cápsula Corporation, e minha família tem tecnologia capaz de rastrear qualquer uma dessas esferas"?','A frase é dita pela jovem cientista que acompanha Goku na busca inicial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bulma',TRUE,0),(gen_random_uuid(),q,'Chichi',FALSE,1),(gen_random_uuid(),q,'Launch',FALSE,2),(gen_random_uuid(),q,'Maron',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'who_said','easy','Quem disse: "Eu treino meus alunos com rigor na Kame House, mesmo sendo conhecido por meu comportamento excêntrico"?','A frase é dita pelo mestre careca que treina Goku e Krillin.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mestre Kame',TRUE,0),(gen_random_uuid(),q,'Korin',FALSE,1),(gen_random_uuid(),q,'Rei Kaioh',FALSE,2),(gen_random_uuid(),q,'Son Gohan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'who_said','easy','Quem disse: "Sou o humano mais forte entre meus companheiros, mesmo competindo constantemente contra um saiyajin"?','A frase é dita pelo monge careca, melhor amigo de Goku.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Krillin',TRUE,0),(gen_random_uuid(),q,'Yamcha',FALSE,1),(gen_random_uuid(),q,'Tien',FALSE,2),(gen_random_uuid(),q,'Chiaotzu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'who_said','easy','Quem disse: "Eu já fui bandido do deserto, mas superei meu medo de mulheres e me tornei um lutador respeitado"?','A frase é dita pelo aliado que se junta a Goku ainda no início da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yamcha',TRUE,0),(gen_random_uuid(),q,'Krillin',FALSE,1),(gen_random_uuid(),q,'Tien',FALSE,2),(gen_random_uuid(),q,'Puar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'who_said','easy','Quem disse: "Eu tenho três olhos e treino sob a tradição da Escola da Grua, mas escolhi lutar ao lado de Goku"?','A frase é dita pelo lutador rival que se torna aliado dos protagonistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tien Shinhan',TRUE,0),(gen_random_uuid(),q,'Yamcha',FALSE,1),(gen_random_uuid(),q,'Krillin',FALSE,2),(gen_random_uuid(),q,'Chiaotzu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'who_said','easy','Quem disse: "Eu me casei com Goku após um torneio, cumprindo uma promessa feita quando ainda éramos crianças"?','A frase é dita pela esposa de Goku, filha de um rei montanhês.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chichi',TRUE,0),(gen_random_uuid(),q,'Bulma',FALSE,1),(gen_random_uuid(),q,'Launch',FALSE,2),(gen_random_uuid(),q,'Maron',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'who_said','easy','Quem disse: "Eu guardo a Água Sagrada em minha torre, capaz de multiplicar temporariamente o poder de quem a bebe"?','A frase é dita pelo gato branco que vive na torre alta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Korin',TRUE,0),(gen_random_uuid(),q,'Oolong',FALSE,1),(gen_random_uuid(),q,'Puar',FALSE,2),(gen_random_uuid(),q,'Kami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'who_said','easy','Quem disse: "Eu vivo em um templo flutuante e sou responsável por manter as esferas do dragão em funcionamento neste planeta"?','A frase é dita pelo guardião da Terra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kami',TRUE,0),(gen_random_uuid(),q,'Korin',FALSE,1),(gen_random_uuid(),q,'Mestre Kame',FALSE,2),(gen_random_uuid(),q,'Popo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'who_said','medium','Quem disse: "Eu comando o exército Red Ribbon inteiro, e nada me impedirá de reunir todas as sete Esferas do Dragão"?','A frase é dita pelo líder supremo, obcecado por sua baixa estatura.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Commander Red',TRUE,0),(gen_random_uuid(),q,'General Blue',FALSE,1),(gen_random_uuid(),q,'General White',FALSE,2),(gen_random_uuid(),q,'Tao Pai Pai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'who_said','medium','Quem disse: "Minha altura sempre foi motivo de piada, mas meu domínio sobre técnicas de gelo compensa qualquer zombaria"?','A frase é dita pelo general do Red Ribbon derrotado por Goku na base secreta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'General Blue',TRUE,0),(gen_random_uuid(),q,'General White',FALSE,1),(gen_random_uuid(),q,'Tao Pai Pai',FALSE,2),(gen_random_uuid(),q,'Commander Red',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'who_said','medium','Quem disse: "Fui contratado como assassino profissional pelo Red Ribbon, e treinei Tien Shinhan antes desses eventos"?','A frase é dita pelo assassino profissional enviado para eliminar Goku.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tao Pai Pai',TRUE,0),(gen_random_uuid(),q,'General Blue',FALSE,1),(gen_random_uuid(),q,'Piccolo Daimao',FALSE,2),(gen_random_uuid(),q,'General White',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'who_said','medium','Quem disse: "Eu quero controlar o mundo através do terror, e nenhum guerreiro comum será capaz de me deter"?','A frase é dita pelo rei demônio ancestral, antagonista da saga anterior ao Torneio adulto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Piccolo Daimao',TRUE,0),(gen_random_uuid(),q,'Rei Vegeta',FALSE,1),(gen_random_uuid(),q,'General Blue',FALSE,2),(gen_random_uuid(),q,'Tao Pai Pai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'who_said','medium','Quem disse: "Eu herdei parte do poder e da maldade do meu pai, mas escolhi um caminho diferente ao longo do tempo"?','A frase é dita pelo filho reencarnado de Piccolo Daimao.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Piccolo (Ma Junior)',TRUE,0),(gen_random_uuid(),q,'Kami',FALSE,1),(gen_random_uuid(),q,'Popo',FALSE,2),(gen_random_uuid(),q,'Nail',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'who_said','medium','Quem disse: "Eu busco vingança contra o Mestre Kame, que me derrotou décadas atrás quando eu governava os céus"?','A frase é dita pelo imperador celestial ancestral que retorna para se vingar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Garlic Jr.',TRUE,0),(gen_random_uuid(),q,'Piccolo Daimao',FALSE,1),(gen_random_uuid(),q,'Slug',FALSE,2),(gen_random_uuid(),q,'Lord Chilled',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'who_said','medium','Quem disse: "Sou irmão biológico de Piccolo, e meu poder supera em muito o dele em nosso primeiro confronto"?','A frase é dita pelo invasor alienígena que busca as Esferas do Dragão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Slug',TRUE,0),(gen_random_uuid(),q,'Garlic Jr.',FALSE,1),(gen_random_uuid(),q,'Lord Chilled',FALSE,2),(gen_random_uuid(),q,'Turles',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'who_said','hard','Quem disse: "Eu ofereço uma fruta especial capaz de despertar todo o potencial saiyajin escondido dentro de você, Gohan"?','A frase é dita pelo saiyajin renegado que tenta corromper o jovem protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Turles',TRUE,0),(gen_random_uuid(),q,'Slug',FALSE,1),(gen_random_uuid(),q,'Lord Chilled',FALSE,2),(gen_random_uuid(),q,'Broly',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'who_said','hard','Quem disse: "Eu fui enviado por um imperador galáctico ao planeta de Piccolo, décadas antes dos eventos que vocês conhecem"?','A frase é dita pelo príncipe alienígena antecessor cronológico da saga Freeza.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Lord Chilled',TRUE,0),(gen_random_uuid(),q,'Cooler',FALSE,1),(gen_random_uuid(),q,'Slug',FALSE,2),(gen_random_uuid(),q,'Freeza',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'who_said','hard','Quem disse: "Eu criei uma dimensão sombria capaz de aprisionar meus inimigos para sempre, como parte de minha vingança"?','A frase é dita pelo imperador celestial que utiliza essa arma estratégica contra os protagonistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Garlic Jr.',TRUE,0),(gen_random_uuid(),q,'Piccolo Daimao',FALSE,1),(gen_random_uuid(),q,'Slug',FALSE,2),(gen_random_uuid(),q,'Turles',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'who_said','hard','Quem disse: "Eu auxilio Kami em suas tarefas no templo sagrado, protegendo a esfera de quatro estrelas com dedicação"?','A frase é dita pelo assistente robô presente ao lado do guardião da Terra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mr. Popo',TRUE,0),(gen_random_uuid(),q,'Nail',FALSE,1),(gen_random_uuid(),q,'Dende',FALSE,2),(gen_random_uuid(),q,'Korin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'who_said','hard','Quem disse: "Minha personalidade muda completamente quando espirro, alternando entre gentileza e ferocidade extrema"?','A frase é dita pela policial que se junta brevemente ao grupo de Goku.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Launch',TRUE,0),(gen_random_uuid(),q,'Chichi',FALSE,1),(gen_random_uuid(),q,'Bulma',FALSE,2),(gen_random_uuid(),q,'Maron',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'who_said','impossible','Quem disse: "Eu vivo isolado nas montanhas, mas decidi ajudar vocês contra o Rei Piccolo carregando minha espada afiada"?','A frase é dita pelo samurai gordo que se junta brevemente ao grupo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yajirobe',TRUE,0),(gen_random_uuid(),q,'Chiaotzu',FALSE,1),(gen_random_uuid(),q,'Nam',FALSE,2),(gen_random_uuid(),q,'Bacterian',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'who_said','impossible','Quem disse: "Eu me transformo em diversos objetos para ajudar meus amigos, mesmo sendo apenas um pequeno porco metamorfo"?','A frase é dita pelo personagem que se junta ao grupo de Goku na busca inicial pelas esferas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Oolong',TRUE,0),(gen_random_uuid(),q,'Puar',FALSE,1),(gen_random_uuid(),q,'Korin',FALSE,2),(gen_random_uuid(),q,'Emperor Pilaf',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- EPISODE_ARC — 15 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'episode_arc','medium','Em qual arco Goku conhece Bulma e inicia a busca pelas sete Esferas do Dragão pela primeira vez?','O arco estabelece a premissa inicial de toda a franquia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Busca Inicial pelas Esferas',TRUE,0),(gen_random_uuid(),q,'Arco do Red Ribbon',FALSE,1),(gen_random_uuid(),q,'Arco de Piccolo Daimao',FALSE,2),(gen_random_uuid(),q,'Arco de Garlic Jr.',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'episode_arc','medium','Em qual arco Goku enfrenta o exército Red Ribbon em busca das esferas roubadas, incluindo generais e assassinos profissionais?','Este arco introduz Tao Pai Pai como principal ameaça ao protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Red Ribbon',TRUE,0),(gen_random_uuid(),q,'Arco da Busca Inicial pelas Esferas',FALSE,1),(gen_random_uuid(),q,'Arco de Piccolo Daimao',FALSE,2),(gen_random_uuid(),q,'Arco de Garlic Jr.',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'episode_arc','medium','Em qual arco o Rei Demônio Piccolo é libertado de seu selo e ameaça dominar o mundo com terror absoluto?','Este arco culmina no nascimento de seu filho reencarnado, Piccolo Junior.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Piccolo Daimao',TRUE,0),(gen_random_uuid(),q,'Arco do Red Ribbon',FALSE,1),(gen_random_uuid(),q,'Arco da Busca Inicial pelas Esferas',FALSE,2),(gen_random_uuid(),q,'Arco de Garlic Jr.',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'episode_arc','medium','Em qual arco Garlic Jr. retorna décadas após ser derrotado pelo Mestre Kame, buscando vingança e a fruta da imortalidade?','O confronto ocorre majoritariamente dentro do templo sagrado de Kami.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Garlic Jr.',TRUE,0),(gen_random_uuid(),q,'Arco de Piccolo Daimao',FALSE,1),(gen_random_uuid(),q,'Arco do Red Ribbon',FALSE,2),(gen_random_uuid(),q,'Arco da Busca Inicial pelas Esferas',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'episode_arc','medium','Em qual arco Goku enfrenta o exército de Piccolo Junior no Tenkaichi Budokai, disputando o torneio como adulto?','Este torneio decide definitivamente o destino do mundo contra o Rei Piccolo reencarnado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Piccolo Daimao',TRUE,0),(gen_random_uuid(),q,'Arco do Red Ribbon',FALSE,1),(gen_random_uuid(),q,'Arco de Garlic Jr.',FALSE,2),(gen_random_uuid(),q,'Arco da Busca Inicial pelas Esferas',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'episode_arc','medium','Em qual arco Goku enfrenta Tien Shinhan pela primeira vez em um torneio, antes de se tornarem aliados?','O confronto ocorre durante um dos primeiros Tenkaichi Budokai disputados por Goku ainda jovem.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Busca Inicial pelas Esferas',TRUE,0),(gen_random_uuid(),q,'Arco do Red Ribbon',FALSE,1),(gen_random_uuid(),q,'Arco de Piccolo Daimao',FALSE,2),(gen_random_uuid(),q,'Arco de Garlic Jr.',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'episode_arc','medium','Em qual arco Turles surge como saiyajin renegado, criando uma árvore capaz de drenar a energia vital do planeta?','Goku desperta pela primeira vez uma transformação especial neste confronto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Turles (filme especial)',TRUE,0),(gen_random_uuid(),q,'Arco de Garlic Jr.',FALSE,1),(gen_random_uuid(),q,'Arco de Piccolo Daimao',FALSE,2),(gen_random_uuid(),q,'Arco do Red Ribbon',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'episode_arc','hard','Em qual arco Krillin desenvolve o Kienzan pela primeira vez, sendo treinado ao lado de Goku nas técnicas mais avançadas de Mestre Kame?','O treinamento ocorre em preparação para um dos torneios de artes marciais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Busca Inicial pelas Esferas',TRUE,0),(gen_random_uuid(),q,'Arco do Red Ribbon',FALSE,1),(gen_random_uuid(),q,'Arco de Piccolo Daimao',FALSE,2),(gen_random_uuid(),q,'Arco de Garlic Jr.',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'episode_arc','hard','Em qual arco é revelado que Piccolo Junior guarda a maior parte da maldade original de seu pai antes de sua redenção gradual?','A revelação ocorre progressivamente conforme ele interage com Goku e Gohan.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Piccolo Daimao',TRUE,0),(gen_random_uuid(),q,'Arco do Red Ribbon',FALSE,1),(gen_random_uuid(),q,'Arco de Garlic Jr.',FALSE,2),(gen_random_uuid(),q,'Arco da Busca Inicial pelas Esferas',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'episode_arc','hard','Em qual arco Goku enfrenta Commander Red e descobre a verdadeira motivação por trás da criação do exército Red Ribbon?','A base secreta do exército é destruída ao final deste confronto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Red Ribbon',TRUE,0),(gen_random_uuid(),q,'Arco da Busca Inicial pelas Esferas',FALSE,1),(gen_random_uuid(),q,'Arco de Piccolo Daimao',FALSE,2),(gen_random_uuid(),q,'Arco de Garlic Jr.',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'episode_arc','hard','Em qual arco Gohan nasce e Goku se ausenta temporariamente dos torneios de artes marciais para viver com sua nova família?','O intervalo entre torneios estabelece um salto temporal na trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Piccolo Daimao',TRUE,0),(gen_random_uuid(),q,'Arco do Red Ribbon',FALSE,1),(gen_random_uuid(),q,'Arco de Garlic Jr.',FALSE,2),(gen_random_uuid(),q,'Arco da Busca Inicial pelas Esferas',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'episode_arc','hard','Em qual arco Slug invade a Terra buscando as Esferas do Dragão, sendo revelado como irmão biológico de Piccolo?','O confronto ocorre majoritariamente em uma cidade ameaçada pela invasão alienígena.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Slug (filme especial)',TRUE,0),(gen_random_uuid(),q,'Arco de Garlic Jr.',FALSE,1),(gen_random_uuid(),q,'Arco de Turles',FALSE,2),(gen_random_uuid(),q,'Arco de Piccolo Daimao',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'episode_arc','impossible','Em qual arco é revelado o passado completo de Lord Chilled, enviado por um imperador galáctico ao planeta de Piccolo?','A revelação ocorre em um filme especial situado cronologicamente antes da saga Freeza.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Lord Chilled (filme especial)',TRUE,0),(gen_random_uuid(),q,'Arco de Slug',FALSE,1),(gen_random_uuid(),q,'Arco de Turles',FALSE,2),(gen_random_uuid(),q,'Arco de Garlic Jr.',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'episode_arc','impossible','Em qual arco é revelado que Mercenary Tao retorna como cyborg após sua primeira derrota, contratado para o vigésimo terceiro Tenkaichi Budokai?','A revelação ocorre através de flashbacks conectando-o ao Red Ribbon original.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Red Ribbon',TRUE,0),(gen_random_uuid(),q,'Arco de Piccolo Daimao',FALSE,1),(gen_random_uuid(),q,'Arco de Garlic Jr.',FALSE,2),(gen_random_uuid(),q,'Arco da Busca Inicial pelas Esferas',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- CHRONOLOGICAL — 7 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'chronological','hard','Ordene cronologicamente os arcos a seguir, do mais antigo ao mais recente.','Cobrem desde a busca inicial pelas esferas até o retorno de Garlic Jr.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Busca Inicial pelas Esferas',TRUE,0),(gen_random_uuid(),q,'Red Ribbon',FALSE,1),(gen_random_uuid(),q,'Piccolo Daimao',FALSE,2),(gen_random_uuid(),q,'Garlic Jr.',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'chronological','hard','Ordene cronologicamente os seguintes eventos da jornada de Goku, do mais antigo ao mais recente.','Cobrem desde o encontro com Bulma até o nascimento de Gohan.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Conhece Bulma e inicia a busca pelas esferas',TRUE,0),(gen_random_uuid(),q,'Enfrenta o exército Red Ribbon',FALSE,1),(gen_random_uuid(),q,'Derrota Piccolo Daimao no torneio',FALSE,2),(gen_random_uuid(),q,'Casa-se com Chichi e tem Gohan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre Piccolo, do mais antigo ao mais recente.','Cobrem desde o Rei Demônio original até a redenção gradual do filho reencarnado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rei Piccolo é libertado de seu selo',TRUE,0),(gen_random_uuid(),q,'Reencarna gerando um filho antes de morrer',FALSE,1),(gen_random_uuid(),q,'Piccolo Junior enfrenta Goku no torneio',FALSE,2),(gen_random_uuid(),q,'Inicia sua redenção gradual ao lado dos heróis',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre o Red Ribbon, do mais antigo ao mais recente.','Cobrem desde a formação do exército até sua queda definitiva.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Commander Red funda o exército em busca das esferas',TRUE,0),(gen_random_uuid(),q,'Generais Blue e White enfrentam Goku',FALSE,1),(gen_random_uuid(),q,'Tao Pai Pai é derrotado por Goku',FALSE,2),(gen_random_uuid(),q,'A base secreta do exército é destruída',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Garlic Jr., do mais antigo ao mais recente.','Cobrem desde sua derrota original até seu retorno décadas depois.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'É derrotado por Mestre Kame décadas antes',TRUE,0),(gen_random_uuid(),q,'Retorna para se vingar e buscar a fruta da imortalidade',FALSE,1),(gen_random_uuid(),q,'Cria uma dimensão sombria para aprisionar inimigos',FALSE,2),(gen_random_uuid(),q,'É derrotado definitivamente pelos protagonistas',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Lord Chilled, do mais antigo ao mais recente.','Cobrem desde seu envio ao planeta de Piccolo até sua derrota diante de Goku.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'É enviado por um imperador galáctico ao planeta de Piccolo',TRUE,0),(gen_random_uuid(),q,'Demonstra crueldade extrema contra os habitantes locais',FALSE,1),(gen_random_uuid(),q,'Enfrenta Goku em confronto direto',FALSE,2),(gen_random_uuid(),q,'É derrotado pela primeira transformação especial de Goku',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Turles, do mais antigo ao mais recente.','Cobrem desde sua chegada à Terra até sua derrota final.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chega à Terra como saiyajin renegado',TRUE,0),(gen_random_uuid(),q,'Oferece a fruta especial a Gohan',FALSE,1),(gen_random_uuid(),q,'Cria a árvore que drena energia do planeta',FALSE,2),(gen_random_uuid(),q,'É derrotado por Goku em sua transformação especial',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- COMPLEMENTO — fechar 150 perguntas (22 text / 12 fill_blank / 7 who_said / 1 episode_arc)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','easy','Qual desses personagens é filho biológico do Rei Piccolo, herdando parte de seu poder ao nascer?','Ele é derrotado por Goku no vigésimo terceiro Tenkaichi Budokai.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Piccolo (Ma Junior)',TRUE,0),(gen_random_uuid(),q,'Kami',FALSE,1),(gen_random_uuid(),q,'Nail',FALSE,2),(gen_random_uuid(),q,'Slug',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','easy','Qual desses personagens é conhecido por competir constantemente com Krillin em técnicas de artes marciais desde a infância?','Ele treina ao lado de Krillin sob a orientação de Mestre Kame.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Goku',TRUE,0),(gen_random_uuid(),q,'Yamcha',FALSE,1),(gen_random_uuid(),q,'Tien',FALSE,2),(gen_random_uuid(),q,'Chiaotzu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','easy','Qual desses personagens acompanha Tien Shinhan como parceiro constante em combates, possuindo habilidades telepáticas?','Ele é membro da Escola da Grua ao lado de Tien.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chiaotzu',TRUE,0),(gen_random_uuid(),q,'Yamcha',FALSE,1),(gen_random_uuid(),q,'Krillin',FALSE,2),(gen_random_uuid(),q,'Puar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','easy','Qual desses personagens é o rei de um pequeno território montanhês, pai de Chichi?','Ele aparece brevemente durante o casamento de sua filha com Goku.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ox Satan',TRUE,0),(gen_random_uuid(),q,'Mestre Kame',FALSE,1),(gen_random_uuid(),q,'Korin',FALSE,2),(gen_random_uuid(),q,'Kami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','medium','Qual desses personagens é o príncipe fraudulento que busca as Esferas do Dragão para conquistar o mundo no início da série, acompanhado de dois soldados desajeitados?','Ele é um dos primeiros antagonistas cômicos enfrentados por Goku.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Emperor Pilaf',TRUE,0),(gen_random_uuid(),q,'Commander Red',FALSE,1),(gen_random_uuid(),q,'General Blue',FALSE,2),(gen_random_uuid(),q,'Tao Pai Pai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','medium','Qual desses personagens organiza torneios de artes marciais e serve como mestre de cerimônias em diversos Tenkaichi Budokai?','Ele é reconhecido por sua figura carismática e comentários animados durante as lutas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mestre Kame',TRUE,0),(gen_random_uuid(),q,'Korin',FALSE,1),(gen_random_uuid(),q,'Kami',FALSE,2),(gen_random_uuid(),q,'Popo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','medium','Qual desses personagens guarda parte do poder de Piccolo Daimao, sendo o único capaz de restaurar as esferas após a morte de Kami?','Sua existência está intrinsecamente ligada à do guardião da Terra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Piccolo',TRUE,0),(gen_random_uuid(),q,'Nail',FALSE,1),(gen_random_uuid(),q,'Dende',FALSE,2),(gen_random_uuid(),q,'Slug',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','medium','Qual desses personagens desafia Goku em um confronto decisivo durante o vigésimo primeiro Tenkaichi Budokai, ainda jovens?','Este confronto acontece antes de Tien se tornar aliado permanente do grupo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tien Shinhan',TRUE,0),(gen_random_uuid(),q,'Yamcha',FALSE,1),(gen_random_uuid(),q,'Krillin',FALSE,2),(gen_random_uuid(),q,'Chiaotzu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','hard','Qual desses personagens governa os céus como imperador celestial antigo, retornando décadas depois para se vingar do Mestre Kame?','Ele é derrotado definitivamente pelos protagonistas dentro do templo sagrado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Garlic Jr.',TRUE,0),(gen_random_uuid(),q,'Piccolo Daimao',FALSE,1),(gen_random_uuid(),q,'Slug',FALSE,2),(gen_random_uuid(),q,'Turles',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','hard','Qual desses personagens invade a Terra em busca das Esferas do Dragão, sendo derrotado após revelar sua ligação familiar com Piccolo?','Seu confronto ocorre majoritariamente em uma cidade tomada pelo pânico.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Slug',TRUE,0),(gen_random_uuid(),q,'Garlic Jr.',FALSE,1),(gen_random_uuid(),q,'Lord Chilled',FALSE,2),(gen_random_uuid(),q,'Turles',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','hard','Qual desses personagens usa a Água Sagrada para multiplicar temporariamente seu poder antes de enfrentar adversários poderosos?','Ele obtém esse item na torre alta guardada por Korin.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Goku',TRUE,0),(gen_random_uuid(),q,'Krillin',FALSE,1),(gen_random_uuid(),q,'Yamcha',FALSE,2),(gen_random_uuid(),q,'Tien',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','impossible','Qual desses personagens é o pai de Chichi, aparecendo brevemente durante o casamento de sua filha com Goku?','Ele governa um pequeno território montanhês antes dos eventos principais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ox Satan',TRUE,0),(gen_random_uuid(),q,'Mestre Kame',FALSE,1),(gen_random_uuid(),q,'Korin',FALSE,2),(gen_random_uuid(),q,'Kami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','impossible','Qual desses personagens é o príncipe fraudulento acompanhado de dois soldados desajeitados, antagonista cômico do início da série?','Ele busca as Esferas do Dragão para conquistar o mundo de forma exagerada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Emperor Pilaf',TRUE,0),(gen_random_uuid(),q,'Commander Red',FALSE,1),(gen_random_uuid(),q,'General Blue',FALSE,2),(gen_random_uuid(),q,'Tao Pai Pai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','impossible','Qual desses personagens é o discípulo dedicado de Kami, sucessor natural do posto de guardião da Terra em gerações futuras?','Ele demonstra grande respeito pela tradição do templo sagrado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nail',TRUE,0),(gen_random_uuid(),q,'Dende',FALSE,1),(gen_random_uuid(),q,'Mr. Popo',FALSE,2),(gen_random_uuid(),q,'Korin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','impossible','Qual desses personagens organiza torneios como mestre de cerimônias, comentando animadamente as lutas do Tenkaichi Budokai?','Ele é reconhecido pela figura carismática ao microfone durante o evento.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mestre Kame',TRUE,0),(gen_random_uuid(),q,'Korin',FALSE,1),(gen_random_uuid(),q,'Kami',FALSE,2),(gen_random_uuid(),q,'Popo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','impossible','Qual desses personagens compete constantemente com Krillin em técnicas de artes marciais desde a infância na Kame House?','Ele treina ao lado de Krillin sob a orientação do mesmo mestre.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Goku',TRUE,0),(gen_random_uuid(),q,'Yamcha',FALSE,1),(gen_random_uuid(),q,'Tien',FALSE,2),(gen_random_uuid(),q,'Chiaotzu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','impossible','Qual desses personagens acompanha Tien Shinhan em combates, demonstrando habilidades telepáticas apesar de baixo poder de ataque?','Ele é membro da Escola da Grua ao lado de Tien Shinhan.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chiaotzu',TRUE,0),(gen_random_uuid(),q,'Yamcha',FALSE,1),(gen_random_uuid(),q,'Krillin',FALSE,2),(gen_random_uuid(),q,'Puar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','impossible','Qual desses personagens guarda parte do poder de Piccolo Daimao, sendo essencial para restaurar as esferas após a morte de Kami?','Sua existência está intrinsecamente ligada à do guardião da Terra falecido.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Piccolo',TRUE,0),(gen_random_uuid(),q,'Nail',FALSE,1),(gen_random_uuid(),q,'Dende',FALSE,2),(gen_random_uuid(),q,'Slug',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','hard','Qual desses personagens desafia Goku em um confronto decisivo durante um dos primeiros Tenkaichi Budokai, ainda jovens rivais?','Este confronto acontece antes de se tornar aliado permanente do grupo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tien Shinhan',TRUE,0),(gen_random_uuid(),q,'Yamcha',FALSE,1),(gen_random_uuid(),q,'Krillin',FALSE,2),(gen_random_uuid(),q,'Chiaotzu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','hard','Qual desses personagens usa a Água Sagrada da torre de Korin para multiplicar temporariamente seu poder antes de um combate decisivo?','Ele sobe centenas de degraus para conquistar esse treinamento especial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Goku',TRUE,0),(gen_random_uuid(),q,'Krillin',FALSE,1),(gen_random_uuid(),q,'Yamcha',FALSE,2),(gen_random_uuid(),q,'Tien',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','medium','Qual desses personagens invade a Terra em busca das Esferas do Dragão, revelando sua ligação familiar com Piccolo ao ser derrotado?','Seu confronto acontece majoritariamente em uma cidade tomada pelo pânico da invasão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Slug',TRUE,0),(gen_random_uuid(),q,'Garlic Jr.',FALSE,1),(gen_random_uuid(),q,'Lord Chilled',FALSE,2),(gen_random_uuid(),q,'Turles',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'text','medium','Qual desses personagens retorna décadas após ser derrotado pelo Mestre Kame, agora buscando vingança e a fruta da imortalidade guardada no templo sagrado?','Ele é derrotado definitivamente pelos protagonistas dentro do templo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Garlic Jr.',TRUE,0),(gen_random_uuid(),q,'Piccolo Daimao',FALSE,1),(gen_random_uuid(),q,'Slug',FALSE,2),(gen_random_uuid(),q,'Turles',FALSE,3);

    -- fill_blank complemento (12)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'fill_blank','easy','O filho biológico do Rei Piccolo, herdando parte de seu poder ao nascer, se chama ___.','Ele é derrotado por Goku no vigésimo terceiro Tenkaichi Budokai.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Piccolo (Ma Junior)',TRUE,0),(gen_random_uuid(),q,'Kami',FALSE,1),(gen_random_uuid(),q,'Nail',FALSE,2),(gen_random_uuid(),q,'Slug',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'fill_blank','easy','O pai de Chichi, que governa um pequeno território montanhês, se chama ___.','Ele aparece brevemente durante o casamento de sua filha com Goku.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ox Satan',TRUE,0),(gen_random_uuid(),q,'Mestre Kame',FALSE,1),(gen_random_uuid(),q,'Korin',FALSE,2),(gen_random_uuid(),q,'Kami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'fill_blank','easy','O parceiro constante de Tien Shinhan em combates, com habilidades telepáticas, se chama ___.','Ele é membro da Escola da Grua ao lado de Tien.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chiaotzu',TRUE,0),(gen_random_uuid(),q,'Yamcha',FALSE,1),(gen_random_uuid(),q,'Krillin',FALSE,2),(gen_random_uuid(),q,'Puar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'fill_blank','medium','O príncipe fraudulento que busca as Esferas do Dragão no início da série, acompanhado de soldados desajeitados, se chama ___.','Ele é um dos primeiros antagonistas cômicos enfrentados por Goku.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Emperor Pilaf',TRUE,0),(gen_random_uuid(),q,'Commander Red',FALSE,1),(gen_random_uuid(),q,'General Blue',FALSE,2),(gen_random_uuid(),q,'Tao Pai Pai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'fill_blank','medium','O guardião que sucede Kami após sua morte, essencial para restaurar as Esferas do Dragão, se chama ___.','Sua existência está intrinsecamente ligada à do guardião anterior.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dende',TRUE,0),(gen_random_uuid(),q,'Nail',FALSE,1),(gen_random_uuid(),q,'Piccolo',FALSE,2),(gen_random_uuid(),q,'Slug',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'fill_blank','medium','O discípulo dedicado de Kami, sucessor natural do posto de guardião da Terra, se chama ___.','Ele demonstra grande respeito pela tradição do templo sagrado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nail',TRUE,0),(gen_random_uuid(),q,'Dende',FALSE,1),(gen_random_uuid(),q,'Mr. Popo',FALSE,2),(gen_random_uuid(),q,'Korin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'fill_blank','hard','O imperador celestial que governa os céus, retornando décadas depois para se vingar do Mestre Kame, se chama ___.','Ele é derrotado definitivamente pelos protagonistas dentro do templo sagrado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Garlic Jr.',TRUE,0),(gen_random_uuid(),q,'Piccolo Daimao',FALSE,1),(gen_random_uuid(),q,'Slug',FALSE,2),(gen_random_uuid(),q,'Turles',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'fill_blank','hard','O invasor alienígena que revela ligação familiar com Piccolo ao ser derrotado durante sua invasão à Terra se chama ___.','Seu confronto ocorre majoritariamente em uma cidade tomada pelo pânico.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Slug',TRUE,0),(gen_random_uuid(),q,'Garlic Jr.',FALSE,1),(gen_random_uuid(),q,'Lord Chilled',FALSE,2),(gen_random_uuid(),q,'Turles',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'fill_blank','hard','O mestre de cerimônias que organiza e comenta animadamente as lutas do Tenkaichi Budokai se chama ___.','Ele é reconhecido por sua figura carismática ao microfone durante o evento.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mestre Kame',TRUE,0),(gen_random_uuid(),q,'Korin',FALSE,1),(gen_random_uuid(),q,'Kami',FALSE,2),(gen_random_uuid(),q,'Popo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'fill_blank','impossible','O rival que desafia Goku em confronto decisivo durante um dos primeiros Tenkaichi Budokai, antes de se tornar aliado, se chama ___.','Ele treina sob a tradição da Escola da Grua antes de mudar de lado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tien Shinhan',TRUE,0),(gen_random_uuid(),q,'Yamcha',FALSE,1),(gen_random_uuid(),q,'Krillin',FALSE,2),(gen_random_uuid(),q,'Chiaotzu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'fill_blank','impossible','O protagonista que sobe centenas de degraus na torre de Korin para conquistar treinamento especial com Água Sagrada se chama ___.','Ele busca esse item antes de um combate decisivo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Goku',TRUE,0),(gen_random_uuid(),q,'Krillin',FALSE,1),(gen_random_uuid(),q,'Yamcha',FALSE,2),(gen_random_uuid(),q,'Tien',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'fill_blank','impossible','O invasor alienígena que governa os céus antigos, retornando décadas depois para buscar a fruta da imortalidade no templo sagrado, se chama ___.','Ele é derrotado definitivamente pelos protagonistas dentro do templo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Garlic Jr.',TRUE,0),(gen_random_uuid(),q,'Piccolo Daimao',FALSE,1),(gen_random_uuid(),q,'Slug',FALSE,2),(gen_random_uuid(),q,'Turles',FALSE,3);

    -- who_said complemento (7)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'who_said','easy','Quem disse: "Eu governo um pequeno território montanhês, e hoje entrego minha filha em casamento a um guerreiro poderoso"?','A frase é dita pelo pai de Chichi durante a cerimônia de casamento.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ox Satan',TRUE,0),(gen_random_uuid(),q,'Mestre Kame',FALSE,1),(gen_random_uuid(),q,'Korin',FALSE,2),(gen_random_uuid(),q,'Kami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'who_said','easy','Quem disse: "Eu sou telepata e acompanho Tien em todos os combates, mesmo sendo fisicamente mais fraco que ele"?','A frase é dita pelo parceiro constante de Tien Shinhan, membro da Escola da Grua.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chiaotzu',TRUE,0),(gen_random_uuid(),q,'Yamcha',FALSE,1),(gen_random_uuid(),q,'Krillin',FALSE,2),(gen_random_uuid(),q,'Puar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'who_said','medium','Quem disse: "Eu busco as Esferas do Dragão para conquistar o mundo, mesmo sendo acompanhado por soldados desastrados"?','A frase é dita pelo príncipe fraudulento, antagonista cômico do início da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Emperor Pilaf',TRUE,0),(gen_random_uuid(),q,'Commander Red',FALSE,1),(gen_random_uuid(),q,'General Blue',FALSE,2),(gen_random_uuid(),q,'Tao Pai Pai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'who_said','medium','Quem disse: "Eu sucedo Kami como guardião da Terra, restaurando as Esferas do Dragão após sua morte"?','A frase é dita pelo jovem namekuseijin que assume o posto de guardião.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dende',TRUE,0),(gen_random_uuid(),q,'Nail',FALSE,1),(gen_random_uuid(),q,'Piccolo',FALSE,2),(gen_random_uuid(),q,'Slug',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'who_said','hard','Quem disse: "Eu demonstro respeito absoluto pela tradição do templo sagrado, esperando um dia me tornar guardião da Terra"?','A frase é dita pelo discípulo dedicado de Kami.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nail',TRUE,0),(gen_random_uuid(),q,'Dende',FALSE,1),(gen_random_uuid(),q,'Mr. Popo',FALSE,2),(gen_random_uuid(),q,'Korin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'who_said','hard','Quem disse: "Eu comento animadamente cada luta do Tenkaichi Budokai, sendo a voz mais reconhecível do torneio"?','A frase é dita pelo mestre de cerimônias que organiza os torneios de artes marciais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mestre Kame',TRUE,0),(gen_random_uuid(),q,'Korin',FALSE,1),(gen_random_uuid(),q,'Kami',FALSE,2),(gen_random_uuid(),q,'Popo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'who_said','impossible','Quem disse: "Eu invadi a Terra em busca das Esferas do Dragão, revelando minha ligação familiar com Piccolo ao ser derrotado"?','A frase é dita pelo invasor alienígena irmão biológico de Piccolo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Slug',TRUE,0),(gen_random_uuid(),q,'Garlic Jr.',FALSE,1),(gen_random_uuid(),q,'Lord Chilled',FALSE,2),(gen_random_uuid(),q,'Turles',FALSE,3);

    -- episode_arc complemento (1)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_db,'episode_arc','medium','Em qual arco Emperor Pilaf tenta usar as Esferas do Dragão para conquistar o mundo, sendo constantemente frustrado por Goku e seus amigos?','Este arco cômico estabelece o tom inicial da franquia antes das ameaças mais sérias.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Busca Inicial pelas Esferas',TRUE,0),(gen_random_uuid(),q,'Arco do Red Ribbon',FALSE,1),(gen_random_uuid(),q,'Arco de Piccolo Daimao',FALSE,2),(gen_random_uuid(),q,'Arco de Garlic Jr.',FALSE,3);

END $$;
