-- ============================================================
--  V20 — Seed de perguntas: Dragon Ball Z (150 perguntas)
--  Fonte: MyAnimeList + cânone do anime
--  Distribuição: text 40% / fill_blank 25% / who_said 20% /
--                episode_arc 10% / chronological 5%
--  Sem repetição com V5. Regras R1-R7 aplicadas.
-- ============================================================

DO $$
DECLARE
    v_system UUID := '00000000-0000-0000-0000-000000000001';
    v_dbz    UUID;
    q        UUID;
BEGIN
    SELECT id INTO v_dbz FROM animes WHERE slug = 'dragon-ball-z' LIMIT 1;

    -- ══════════════════════════════════════════════════════════
    -- TEXT — 60 perguntas (18 easy / 21 medium / 15 hard / 6 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','easy','Qual é o nome do avô adotivo que encontrou Goku quando ele era bebê?','Foi quem deu o nome "Goku" à criança encontrada na floresta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mestre Kame',FALSE,0),(gen_random_uuid(),q,'Son Gohan',TRUE,1),(gen_random_uuid(),q,'Kaio-sama',FALSE,2),(gen_random_uuid(),q,'Mutenroshi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','easy','Quantas Esferas do Dragão são necessárias para invocar Shenlong?','Cada esfera contém uma quantidade diferente de estrelas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cinco',FALSE,0),(gen_random_uuid(),q,'Seis',FALSE,1),(gen_random_uuid(),q,'Sete',TRUE,2),(gen_random_uuid(),q,'Nove',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','easy','Qual é o nome do filho de Vegeta e Bulma?','Ele viaja ao passado em uma das fases da saga dos Androides.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Trunks',TRUE,0),(gen_random_uuid(),q,'Goten',FALSE,1),(gen_random_uuid(),q,'Tarble',FALSE,2),(gen_random_uuid(),q,'Bulla',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','easy','Qual é o nome do time de artes marciais formado por Kuririn na infância, sob o Mestre Kame?','Ele treinou ao lado de Goku desde criança.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Escola da Tartaruga',TRUE,0),(gen_random_uuid(),q,'Escola do Guindaste',FALSE,1),(gen_random_uuid(),q,'Escola do Dragão',FALSE,2),(gen_random_uuid(),q,'Escola da Fênix',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','easy','Qual é o nome do robô cientista que criou os Androides?','Ele foi morto pelo próprio Androide 17.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dr. Myuu',FALSE,0),(gen_random_uuid(),q,'Dr. Gero',TRUE,1),(gen_random_uuid(),q,'Dr. Wheelo',FALSE,2),(gen_random_uuid(),q,'Dr. Brief',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','easy','Qual é o nome do planeta onde vivem os Namekusei-jin?','É para lá que Goku viaja em busca das esferas do dragão namekusei.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Namekusei',TRUE,0),(gen_random_uuid(),q,'Planeta Vegeta',FALSE,1),(gen_random_uuid(),q,'Planeta Kaio',FALSE,2),(gen_random_uuid(),q,'Yardrat',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','easy','Qual é o nome do aparelho usado pelos guerreiros do espaço para medir o nível de poder dos oponentes?','Ele explode quando detecta um poder alto demais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Scouter',TRUE,0),(gen_random_uuid(),q,'Dragon Radar',FALSE,1),(gen_random_uuid(),q,'Ki Detector',FALSE,2),(gen_random_uuid(),q,'Power Meter',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','easy','Qual é o nome do feijão mágico que cura ferimentos e recupera energia instantaneamente?','Cultivado por Karin, é essencial nas batalhas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Feijão Mágico',FALSE,0),(gen_random_uuid(),q,'Senzu',TRUE,1),(gen_random_uuid(),q,'Feijão Sagrado',FALSE,2),(gen_random_uuid(),q,'Semente de Karin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','easy','Quem é o mordomo robô que serve a família de Bulma na Corporação Cápsula?','Ele aparece cuidando da casa dos Brief.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'C-3PO',FALSE,0),(gen_random_uuid(),q,'Robô Mordomo',TRUE,1),(gen_random_uuid(),q,'Giru',FALSE,2),(gen_random_uuid(),q,'Pilaf Machine',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','easy','Qual é o nome da esposa de Goku?','Ela é filha do Rei Chinchou, treinada em artes marciais na infância.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bulma',FALSE,0),(gen_random_uuid(),q,'Chichi',TRUE,1),(gen_random_uuid(),q,'Videl',FALSE,2),(gen_random_uuid(),q,'Lunch',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','easy','Qual é o nome do filho mais novo de Goku, nascido após a saga Freeza?','Ele treina com Trunks e forma o Gotenks.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gohan',FALSE,0),(gen_random_uuid(),q,'Goten',TRUE,1),(gen_random_uuid(),q,'Pan',FALSE,2),(gen_random_uuid(),q,'Trunks',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','easy','Qual é o nome do rei responsável por convocar os melhores lutadores da Terra em torneios?','Ele organiza o Torneio de Artes Marciais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rei Kai',FALSE,0),(gen_random_uuid(),q,'Rei do Mundo',TRUE,1),(gen_random_uuid(),q,'Rei Vegeta',FALSE,2),(gen_random_uuid(),q,'Rei Cold',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','easy','Qual é o nome do irmão mais velho de Goku que chega à Terra no início de Dragon Ball Z?','Ele é morto por Piccolo e pelo próprio Goku.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Turles',FALSE,0),(gen_random_uuid(),q,'Raditz',TRUE,1),(gen_random_uuid(),q,'Broly',FALSE,2),(gen_random_uuid(),q,'Bardock',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','easy','Qual é o nome do gato branco que guarda a Torre de Karin?','Ele oferece os feijões mágicos aos guerreiros dignos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Korin',TRUE,0),(gen_random_uuid(),q,'Puar',FALSE,1),(gen_random_uuid(),q,'Nyoibo',FALSE,2),(gen_random_uuid(),q,'Baba',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','easy','Qual é o nome da irmã caçula de Vegeta que aparece apenas em conteúdo posterior?','Ela é revelada como personagem em Dragon Ball Super.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bulla',FALSE,0),(gen_random_uuid(),q,'Tarble',FALSE,1),(gen_random_uuid(),q,'Caulifla',FALSE,2),(gen_random_uuid(),q,'Fasha',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','easy','Qual é a profissão de Bulma, criadora de diversas invenções da série?','Ela é herdeira da Corporação Cápsula.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cientista',TRUE,0),(gen_random_uuid(),q,'Médica',FALSE,1),(gen_random_uuid(),q,'Guerreira',FALSE,2),(gen_random_uuid(),q,'Professora',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','easy','Quem é o melhor amigo humano de Goku desde a infância, treinado na Escola da Tartaruga?','Ele perde a capacidade de sentir medo após um treinamento com Kaio-sama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yamcha',FALSE,0),(gen_random_uuid(),q,'Kuririn',TRUE,1),(gen_random_uuid(),q,'Ten Shin Han',FALSE,2),(gen_random_uuid(),q,'Chaoz',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','easy','Qual é o nome do planeta destruído por Freeza no início da vida de Vegeta?','Era o lar original de toda a raça guerreira de Goku e Vegeta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Planeta Namekusei',FALSE,0),(gen_random_uuid(),q,'Planeta Vegeta',TRUE,1),(gen_random_uuid(),q,'Planeta Cold',FALSE,2),(gen_random_uuid(),q,'Planeta Kanassa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','medium','Em qual planeta Goku treina sob gravidade dez vezes maior, orientado por Kaio-sama?','É o mesmo lugar onde ele aprende o Kaioken e a Genki Dama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Planeta Namekusei',FALSE,0),(gen_random_uuid(),q,'Planeta de Kaio-sama',TRUE,1),(gen_random_uuid(),q,'Planeta Vegeta',FALSE,2),(gen_random_uuid(),q,'Planeta Yardrat',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','medium','Qual é o nome da forma de Freeza com poder total, sem transformações restantes?','Ele a revela ao perceber que precisava de mais força contra Goku.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Freeza Final Form',TRUE,0),(gen_random_uuid(),q,'Freeza Golden Form',FALSE,1),(gen_random_uuid(),q,'Freeza Mecha Form',FALSE,2),(gen_random_uuid(),q,'Freeza Perfect Form',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','medium','Qual é o nome do técnica de Krilin que cria um disco de energia cortante?','É capaz de decapitar oponentes com facilidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kienzan',TRUE,0),(gen_random_uuid(),q,'Kamehameha',FALSE,1),(gen_random_uuid(),q,'Taiyoken',FALSE,2),(gen_random_uuid(),q,'Destructo Disc Beam',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','medium','Qual é o nome do primeiro guerreiro Ginyu a lutar contra Vegeta e Goku em Namekusei?','Ele é conhecido por seu extremo orgulho e força bruta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ginyu',FALSE,0),(gen_random_uuid(),q,'Recoome',TRUE,1),(gen_random_uuid(),q,'Burter',FALSE,2),(gen_random_uuid(),q,'Jeice',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','medium','Qual é o nome da técnica que permite ao Capitão Ginyu trocar de corpo com o oponente?','Ele a usa para tentar roubar o corpo de Goku.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Body Change',TRUE,0),(gen_random_uuid(),q,'Body Swap Beam',FALSE,1),(gen_random_uuid(),q,'Soul Exchange',FALSE,2),(gen_random_uuid(),q,'Mind Transfer',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','medium','Qual é o nome do ancião que governava Namekusei e criou as esferas do dragão de lá?','Ele morre ao ser atacado por Freeza.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nail',FALSE,0),(gen_random_uuid(),q,'Grande Patriarca Guru',TRUE,1),(gen_random_uuid(),q,'Dende',FALSE,2),(gen_random_uuid(),q,'Moori',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','medium','Qual jovem namekuseijin se torna o novo Guardião da Terra após a morte de Kami?','Ele possui a habilidade de curar ferimentos com um toque.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dende',TRUE,0),(gen_random_uuid(),q,'Nail',FALSE,1),(gen_random_uuid(),q,'Moori',FALSE,2),(gen_random_uuid(),q,'Cargo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','medium','Qual é o nome do técnico usado por Ten Shin Han que cria cópias reais de si mesmo?','Ele consome uma grande quantidade de energia vital.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bunshin no Jutsu',FALSE,0),(gen_random_uuid(),q,'Zanzoken',FALSE,1),(gen_random_uuid(),q,'Multi-Form',TRUE,2),(gen_random_uuid(),q,'Kikoho',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','medium','Qual é o nome do robô que Bulma e Dr. Brief usam para localizar as esferas do dragão?','Ele emite um sinal sonoro quando uma esfera está próxima.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Scouter',FALSE,0),(gen_random_uuid(),q,'Dragon Radar',TRUE,1),(gen_random_uuid(),q,'Capsule Corp Tracker',FALSE,2),(gen_random_uuid(),q,'Ki Sensor',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','medium','Qual é o nome da técnica que permite a Goku multiplicar temporariamente seu poder, com o risco de danificar o corpo?','A cor da aura muda para vermelho durante seu uso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaioken',TRUE,0),(gen_random_uuid(),q,'Zenkai Boost',FALSE,1),(gen_random_uuid(),q,'Full Power',FALSE,2),(gen_random_uuid(),q,'Max Power',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','medium','Qual é o nome do vilão que aprisiona Piccolo e Kami dentro de um objeto mágico no início de Dragon Ball Z?','Ele reaparece décadas depois de sua primeira derrota.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rei Piccolo',FALSE,0),(gen_random_uuid(),q,'Garlic Jr.',TRUE,1),(gen_random_uuid(),q,'Dr. Wheelo',FALSE,2),(gen_random_uuid(),q,'Slug',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','medium','Quantos filhos biológicos Vegeta tem ao longo da série clássica de Dragon Ball Z?','Um menino e uma menina, ambos com Bulma.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Um',FALSE,0),(gen_random_uuid(),q,'Dois',TRUE,1),(gen_random_uuid(),q,'Três',FALSE,2),(gen_random_uuid(),q,'Nenhum',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','medium','Qual é o nome da vila japonesa onde vive a família de Goku?','Fica próxima ao Monte Paozu.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Monte Paozu',TRUE,0),(gen_random_uuid(),q,'Vila Cápsula',FALSE,1),(gen_random_uuid(),q,'Vila Kame',FALSE,2),(gen_random_uuid(),q,'West City',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','medium','Qual é o nome do namekuseijin guerreiro que ajuda Goku a lutar contra as forças de Freeza?','Ele empresta parte de sua energia vital a Goku antes de morrer.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nail',TRUE,0),(gen_random_uuid(),q,'Dende',FALSE,1),(gen_random_uuid(),q,'Moori',FALSE,2),(gen_random_uuid(),q,'Cargo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','medium','Qual é o nome da cidade onde Bulma e sua família moram, sede da Corporação Cápsula?','É uma grande metrópole tecnológica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'East City',FALSE,0),(gen_random_uuid(),q,'West City',TRUE,1),(gen_random_uuid(),q,'South City',FALSE,2),(gen_random_uuid(),q,'Satan City',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','hard','Quem foi o primeiro personagem da série a alcançar o Super Saiyajin 3?','Ele demonstra a transformação durante a saga Majin Boo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Goku',TRUE,0),(gen_random_uuid(),q,'Gotenks',FALSE,1),(gen_random_uuid(),q,'Vegeta',FALSE,2),(gen_random_uuid(),q,'Gohan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','hard','Qual é o nome do ataque de autodestruição usado pelos Saibamen contra seus oponentes?','Eles explodem ao se enrolar no adversário durante a saga Saiyajin.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Suicide Bomber',TRUE,0),(gen_random_uuid(),q,'Crash Bomber',FALSE,1),(gen_random_uuid(),q,'Self Destruction',FALSE,2),(gen_random_uuid(),q,'Death Bomber',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','hard','Qual é o nome do irmão biológico de Freeza, comandante do exército de Frost Demons?','Ele aparece derrotado facilmente por Vegeta em Namekusei.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'King Cold',FALSE,0),(gen_random_uuid(),q,'Cooler',TRUE,1),(gen_random_uuid(),q,'Chilled',FALSE,2),(gen_random_uuid(),q,'Meta-Cooler',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','hard','Qual é o nome do pai de Goku, guerreiro Saiyajin que enfrenta Freeza sozinho?','Ele aparece em flashbacks e especiais sobre a destruição do Planeta Vegeta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bardock',TRUE,0),(gen_random_uuid(),q,'Turles',FALSE,1),(gen_random_uuid(),q,'Paragus',FALSE,2),(gen_random_uuid(),q,'Nappa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','hard','Qual é o nome da forma imperfeita de Cell antes de absorver o Androide 18?','Ele possui uma cauda com a qual suga energia de suas vítimas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cell Semi-Perfect',TRUE,0),(gen_random_uuid(),q,'Cell Imperfect Form',FALSE,1),(gen_random_uuid(),q,'Cell Larva Form',FALSE,2),(gen_random_uuid(),q,'Cell Base Form',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','hard','Quem venceu o Torneio de Cell, o "Cell Games", ao derrotar o vilão principal?','Ele usa uma Genki Dama reforçada pela energia de todos os habitantes da Terra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Goku',FALSE,0),(gen_random_uuid(),q,'Gohan',TRUE,1),(gen_random_uuid(),q,'Vegeta',FALSE,2),(gen_random_uuid(),q,'Trunks',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','hard','Qual é o nome do mago responsável por selar Majin Boo há milhares de anos?','Ele reaparece na Terra para tentar controlar o monstro novamente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Babidi',TRUE,0),(gen_random_uuid(),q,'Bibidi',FALSE,1),(gen_random_uuid(),q,'Dabura',FALSE,2),(gen_random_uuid(),q,'Pui Pui',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','hard','Qual é o nome do rei dos demônios que serve Babidi na saga Majin Boo?','Ele governa o Reino Demoníaco e possui a habilidade de transformar seres em pedra com a saliva.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dabura',TRUE,0),(gen_random_uuid(),q,'Yakon',FALSE,1),(gen_random_uuid(),q,'Pui Pui',FALSE,2),(gen_random_uuid(),q,'Spopovich',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','hard','Qual é o nome da fusão entre Goten e Trunks realizada pela dança da fusão?','Ele é famoso por sua atitude brincalhona apesar do poder imenso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gotenks',TRUE,0),(gen_random_uuid(),q,'Gogeta',FALSE,1),(gen_random_uuid(),q,'Vegetto',FALSE,2),(gen_random_uuid(),q,'Trunksten',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','hard','Qual é o nome da forma final e mais pura de Majin Boo, a versão original antes de se dividir?','Ele absorve o Gohan Ultimate e se torna a maior ameaça da saga.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Boo Gordo',FALSE,0),(gen_random_uuid(),q,'Boo Kid (Puro Mal)',TRUE,1),(gen_random_uuid(),q,'Boo Bonito',FALSE,2),(gen_random_uuid(),q,'Super Boo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','hard','Qual técnica Vegeta usa contra Boo Gordo que consiste em uma explosão final sacrificando sua própria vida?','Foi uma tentativa desesperada de deter o monstro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Final Explosion',TRUE,0),(gen_random_uuid(),q,'Final Flash',FALSE,1),(gen_random_uuid(),q,'Galick Gun',FALSE,2),(gen_random_uuid(),q,'Big Bang Attack',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','hard','Qual é o nome do treinamento espiritual que permite treinar sem envelhecer o corpo, usado por Goku e Gohan antes de Cell?','Fica isolado em outra dimensão dentro do Templo Sagrado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sala do Espírito e do Tempo',TRUE,0),(gen_random_uuid(),q,'Sala do Tempo Sagrado',FALSE,1),(gen_random_uuid(),q,'Câmara Dimensional',FALSE,2),(gen_random_uuid(),q,'Portal do Tempo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','hard','Quem é o guerreiro do futuro alternativo que aparece para avisar sobre os Androides antes de sua chegada original?','Ele viaja em uma máquina do tempo criada por Bulma.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Trunks do Futuro',TRUE,0),(gen_random_uuid(),q,'Gohan do Futuro',FALSE,1),(gen_random_uuid(),q,'Goten do Futuro',FALSE,2),(gen_random_uuid(),q,'Vegeta do Futuro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','impossible','Qual era a contagem exata de dias que Goku e Gohan passaram na Sala do Espírito e do Tempo antes dos Androides aparecerem?','O limite máximo de permanência no local é o dobro desse valor.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Um dia',FALSE,0),(gen_random_uuid(),q,'Um ano',TRUE,1),(gen_random_uuid(),q,'Uma semana',FALSE,2),(gen_random_uuid(),q,'Um mês',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','impossible','Qual é o nome do torneio anual disputado entre lutadores de todo o mundo, do qual Goku participa quando criança pela primeira vez?','Foi lá que Goku conheceu Kuririn como rival.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tenkaichi Budokai',TRUE,0),(gen_random_uuid(),q,'Cell Games',FALSE,1),(gen_random_uuid(),q,'World Tournament Junior',FALSE,2),(gen_random_uuid(),q,'Otherworld Tournament',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','impossible','Quantas vezes o Torneio de Artes Marciais (Tenkaichi Budokai) é vencido por Goku ao longo da série clássica?','Ele fica marcado nas primeiras edições antes de se tornar Super Saiyajin.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Uma vez',FALSE,0),(gen_random_uuid(),q,'Duas vezes',FALSE,1),(gen_random_uuid(),q,'Três vezes',TRUE,2),(gen_random_uuid(),q,'Cinco vezes',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','impossible','Qual é o nome do guerreiro do esquadrão Ginyu especializado em velocidade extrema?','Ele é considerado o mais rápido do grupo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Jeice',FALSE,0),(gen_random_uuid(),q,'Burter',TRUE,1),(gen_random_uuid(),q,'Recoome',FALSE,2),(gen_random_uuid(),q,'Guldo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','impossible','Qual é o nome do membro do esquadrão Ginyu capaz de parar o tempo por alguns segundos?','Sua habilidade quase permite que ele derrote Vegeta sozinho.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Guldo',TRUE,0),(gen_random_uuid(),q,'Jeice',FALSE,1),(gen_random_uuid(),q,'Burter',FALSE,2),(gen_random_uuid(),q,'Recoome',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','impossible','Qual é o nome do juiz do Outro Mundo que guia as almas dos mortos até seu destino final?','Ele decide se uma alma vai para o Inferno ou o Paraíso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Enma Daiô',TRUE,0),(gen_random_uuid(),q,'Kaio-sama',FALSE,1),(gen_random_uuid(),q,'Kaioshin',FALSE,2),(gen_random_uuid(),q,'Baba',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- FILL_BLANK — 38 perguntas (11 easy / 13 medium / 10 hard / 4 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'fill_blank','easy','Vegeta é o príncipe da raça ___.','Ele governava o que restou de seu povo após a destruição do planeta natal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saiyajin',TRUE,0),(gen_random_uuid(),q,'Namekuseijin',FALSE,1),(gen_random_uuid(),q,'Tsufurujin',FALSE,2),(gen_random_uuid(),q,'Yardratjin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'fill_blank','easy','A técnica mais famosa de Goku, disparada com as duas mãos unidas, chama-se ___.','Foi ensinada pelo Mestre Kame.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kamehameha',TRUE,0),(gen_random_uuid(),q,'Kienzan',FALSE,1),(gen_random_uuid(),q,'Masenko',FALSE,2),(gen_random_uuid(),q,'Taiyoken',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'fill_blank','easy','O veículo voador usado por Bulma e Goku no início da série se chama ___.','É a aeronave que leva o grupo em busca das esferas do dragão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cápsula Voadora',TRUE,0),(gen_random_uuid(),q,'Nimbus',FALSE,1),(gen_random_uuid(),q,'Aero Jet',FALSE,2),(gen_random_uuid(),q,'Sky Cruiser',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'fill_blank','easy','A nuvem voadora que só carrega pessoas de coração puro se chama ___.','Goku recebeu este presente do Mestre Kame ainda criança.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kinto Un',TRUE,0),(gen_random_uuid(),q,'Shenron Cloud',FALSE,1),(gen_random_uuid(),q,'Cloud Nine',FALSE,2),(gen_random_uuid(),q,'Nyoibo Cloud',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'fill_blank','easy','O dragão que concede desejos ao ser invocado pelas Esferas do Dragão se chama ___.','Ele surge do céu quando as sete esferas são reunidas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shenron',TRUE,0),(gen_random_uuid(),q,'Porunga',FALSE,1),(gen_random_uuid(),q,'Ryuu',FALSE,2),(gen_random_uuid(),q,'Divine Dragon',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'fill_blank','easy','O dragão invocado pelas Esferas de Namekusei se chama ___.','É maior e mais poderoso que Shenron, podendo conceder três desejos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Porunga',TRUE,0),(gen_random_uuid(),q,'Shenron',FALSE,1),(gen_random_uuid(),q,'Nameku Dragon',FALSE,2),(gen_random_uuid(),q,'Guardian Dragon',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'fill_blank','medium','Freeza destruiu o Planeta ___ ao temer a lenda do Super Saiyajin.','O evento ocorreu décadas antes do início da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vegeta',TRUE,0),(gen_random_uuid(),q,'Namekusei',FALSE,1),(gen_random_uuid(),q,'Kanassa',FALSE,2),(gen_random_uuid(),q,'Tsufuru',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'fill_blank','medium','Cell atinge sua forma perfeita ao absorver os Androides ___ e ___.','Ele precisava de ambos para completar sua evolução genética.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'17 e 18',TRUE,0),(gen_random_uuid(),q,'16 e 19',FALSE,1),(gen_random_uuid(),q,'18 e 19',FALSE,2),(gen_random_uuid(),q,'16 e 17',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'fill_blank','medium','Piccolo se funde com ___ para aumentar seu poder antes da saga Cell.','A fusão lhe devolve memórias e habilidades antigas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kami-sama',TRUE,0),(gen_random_uuid(),q,'Nail',FALSE,1),(gen_random_uuid(),q,'Kaio-sama',FALSE,2),(gen_random_uuid(),q,'Guru',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'fill_blank','medium','A técnica que concentra energia de várias pessoas em uma esfera gigante se chama ___.','Foi ensinada por Kaio-sama e usada contra Vegeta e Cell.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Genki Dama',TRUE,0),(gen_random_uuid(),q,'Kienzan',FALSE,1),(gen_random_uuid(),q,'Big Bang Attack',FALSE,2),(gen_random_uuid(),q,'Final Flash',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'fill_blank','medium','O golpe mais poderoso de Vegeta na forma Super Saiyajin, disparado com as duas mãos à frente, se chama ___.','Ele o usa contra Cell na tentativa de destruí-lo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Final Flash',TRUE,0),(gen_random_uuid(),q,'Galick Gun',FALSE,1),(gen_random_uuid(),q,'Big Bang Attack',FALSE,2),(gen_random_uuid(),q,'Final Explosion',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'fill_blank','medium','A primeira técnica de assinatura de Vegeta, um raio de energia roxo disparado com uma mão, se chama ___.','Ele a usa desde sua primeira aparição contra Goku.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Galick Gun',TRUE,0),(gen_random_uuid(),q,'Final Flash',FALSE,1),(gen_random_uuid(),q,'Big Bang Attack',FALSE,2),(gen_random_uuid(),q,'Garlic Cannon',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'fill_blank','medium','A técnica de Gohan que concentra energia amarela em formato de disco sobre a cabeça se chama ___.','Ele aprende a técnica com Piccolo ainda criança.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Masenko',TRUE,0),(gen_random_uuid(),q,'Special Beam Cannon',FALSE,1),(gen_random_uuid(),q,'Makankosappo',FALSE,2),(gen_random_uuid(),q,'Kienzan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'fill_blank','medium','A técnica ofensiva de Ten Shin Han que dispara múltiplos raios de energia dos dedos se chama ___.','O uso repetido dessa técnica reduz drasticamente sua vida útil.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kikoho',TRUE,0),(gen_random_uuid(),q,'Dodon Ray',FALSE,1),(gen_random_uuid(),q,'Taiyoken',FALSE,2),(gen_random_uuid(),q,'Shin Kikoho',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'fill_blank','medium','A técnica de luz ofuscante usada para cegar temporariamente o adversário se chama ___.','Kuririn e Ten Shin Han costumam usá-la para escapar de perigo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Taiyoken',TRUE,0),(gen_random_uuid(),q,'Solar Flare Cannon',FALSE,1),(gen_random_uuid(),q,'Kienzan',FALSE,2),(gen_random_uuid(),q,'Zanzoken',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'fill_blank','medium','A técnica de desaparecimento instantâneo usada em combate, criando afterimages, se chama ___.','Ela cria a ilusão de que o lutador está em dois lugares ao mesmo tempo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zanzoken',TRUE,0),(gen_random_uuid(),q,'Shunkan Ido',FALSE,1),(gen_random_uuid(),q,'Bukujutsu',FALSE,2),(gen_random_uuid(),q,'Kaioken',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'fill_blank','medium','A habilidade que permite aos personagens de Dragon Ball flutuar e voar livremente se chama ___.','É ensinada nos primeiros treinamentos com Kaio-sama e Mestre Kame.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bukujutsu',TRUE,0),(gen_random_uuid(),q,'Zanzoken',FALSE,1),(gen_random_uuid(),q,'Shunkan Ido',FALSE,2),(gen_random_uuid(),q,'Kaioken',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'fill_blank','medium','O golpe de energia mais poderoso de Piccolo, disparado com dois dedos, se chama ___.','Foi usado para matar Raditz no início da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Makankosappo',TRUE,0),(gen_random_uuid(),q,'Masenko',FALSE,1),(gen_random_uuid(),q,'Special Beam',FALSE,2),(gen_random_uuid(),q,'Demon Ray',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'fill_blank','hard','A dança usada por Goten e Trunks para se fundirem em um único guerreiro se chama ___.','Exige sincronia perfeita entre os dois participantes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fusão',TRUE,0),(gen_random_uuid(),q,'Potara',FALSE,1),(gen_random_uuid(),q,'Kaioken',FALSE,2),(gen_random_uuid(),q,'Zenkai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'fill_blank','hard','Os brincos que permitem fusão permanente entre dois lutadores se chamam ___.','Foram usados por Goku e Vegeta na saga Majin Boo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Potara',TRUE,0),(gen_random_uuid(),q,'Fusion Rings',FALSE,1),(gen_random_uuid(),q,'Kaioshin Earrings',FALSE,2),(gen_random_uuid(),q,'Namek Earrings',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'fill_blank','hard','O fenômeno biológico que aumenta o poder de um Saiyajin após quase morrer em batalha se chama ___.','É a base do crescimento exponencial de força da raça.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zenkai',TRUE,0),(gen_random_uuid(),q,'Kaioken',FALSE,1),(gen_random_uuid(),q,'Awakening',FALSE,2),(gen_random_uuid(),q,'Power Surge',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'fill_blank','hard','O clã Saiyajin era originalmente inimigo de um povo nativo do Planeta Vegeta chamado ___.','Os Saiyajins tomaram o planeta à força deste povo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tsufurujin',TRUE,0),(gen_random_uuid(),q,'Namekuseijin',FALSE,1),(gen_random_uuid(),q,'Yardratjin',FALSE,2),(gen_random_uuid(),q,'Kanassajin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'fill_blank','hard','O primeiro guerreiro Ginyu, líder do esquadrão, tem o nome de ___.','Ele usa poses teatrais antes de cada combate.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ginyu',TRUE,0),(gen_random_uuid(),q,'Recoome',FALSE,1),(gen_random_uuid(),q,'Zarbon',FALSE,2),(gen_random_uuid(),q,'Dodoria',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'fill_blank','hard','O guerreiro esteticista de Freeza, capaz de se transformar em um monstro verde, se chama ___.','Ele é responsável por perseguir Vegeta em Namekusei.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zarbon',TRUE,0),(gen_random_uuid(),q,'Dodoria',FALSE,1),(gen_random_uuid(),q,'Cui',FALSE,2),(gen_random_uuid(),q,'Appule',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'fill_blank','hard','O soldado corpulento e rosado que serve Freeza diretamente, temido por sua crueldade, se chama ___.','Ele mata vários namekuseijins em busca de informações sobre as esferas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dodoria',TRUE,0),(gen_random_uuid(),q,'Zarbon',FALSE,1),(gen_random_uuid(),q,'Cui',FALSE,2),(gen_random_uuid(),q,'Recoome',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'fill_blank','hard','O parceiro Saiyajin de Vegeta, morto por Goku na saga Saiyajin, se chama ___.','Ele é conhecido por sua força bruta e falta de tática.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nappa',TRUE,0),(gen_random_uuid(),q,'Raditz',FALSE,1),(gen_random_uuid(),q,'Turles',FALSE,2),(gen_random_uuid(),q,'Broly',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'fill_blank','impossible','O nome do pai de Freeza, imperador de todo o exército de Frost Demons, é ___.','Ele aparece brevemente no início da saga dos Androides.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'King Cold',TRUE,0),(gen_random_uuid(),q,'Cooler',FALSE,1),(gen_random_uuid(),q,'Chilled',FALSE,2),(gen_random_uuid(),q,'Frost',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'fill_blank','impossible','O nome da bruxa idosa que atravessa dimensões para levar competidores ao torneio do Outro Mundo é ___.','Ela é irmã do Mestre Kame.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Baba',TRUE,0),(gen_random_uuid(),q,'Urabe',FALSE,1),(gen_random_uuid(),q,'Korin',FALSE,2),(gen_random_uuid(),q,'Kaiko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'fill_blank','impossible','O guerreiro do esquadrão Ginyu com quatro braços, especialista em técnicas de suporte, se chama ___.','Ele possui uma inteligência tática elevada apesar da aparência estranha.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Guldo',TRUE,0),(gen_random_uuid(),q,'Jeice',FALSE,1),(gen_random_uuid(),q,'Burter',FALSE,2),(gen_random_uuid(),q,'Recoome',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'fill_blank','impossible','O planeta de onde vêm os habitantes capazes de ensinar a teletransportação a Goku se chama ___.','Goku aterrissa lá acidentalmente após escapar da explosão de Namekusei.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yardrat',TRUE,0),(gen_random_uuid(),q,'Kanassa',FALSE,1),(gen_random_uuid(),q,'Tsufuru',FALSE,2),(gen_random_uuid(),q,'Konatsu',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- WHO_SAID — 30 perguntas (9 easy / 11 medium / 8 hard / 2 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'who_said','easy','Quem disse: "Eu sou o príncipe Vegeta, não vou perder para um Saiyajin de classe baixa!"?','A frase reflete o orgulho de sua linhagem real.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vegeta',TRUE,0),(gen_random_uuid(),q,'Nappa',FALSE,1),(gen_random_uuid(),q,'Raditz',FALSE,2),(gen_random_uuid(),q,'Freeza',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'who_said','easy','Quem disse: "Kakarotto... eu sou seu irmão mais velho, Raditz"?','A frase é dita logo na chegada à Terra, revelando a origem de Goku.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Raditz',TRUE,0),(gen_random_uuid(),q,'Nappa',FALSE,1),(gen_random_uuid(),q,'Vegeta',FALSE,2),(gen_random_uuid(),q,'Freeza',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'who_said','easy','Quem disse: "Eu sempre quis lutar contra um adversário assim tão forte!"? Ele sorri mesmo prestes a enfrentar um inimigo poderoso.','A frase mostra o gosto do personagem por bons desafios em batalha.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Goku',TRUE,0),(gen_random_uuid(),q,'Piccolo',FALSE,1),(gen_random_uuid(),q,'Kuririn',FALSE,2),(gen_random_uuid(),q,'Ten Shin Han',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'who_said','easy','Quem disse: "Eu vou proteger a Terra, custe o que custar, mesmo sem os poderes de um Saiyajin"?','A frase reflete a determinação de um guerreiro puramente humano.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kuririn',TRUE,0),(gen_random_uuid(),q,'Yamcha',FALSE,1),(gen_random_uuid(),q,'Ten Shin Han',FALSE,2),(gen_random_uuid(),q,'Chaoz',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'who_said','easy','Quem disse: "Eu não sou mais o mesmo garoto fraco de antes, agora eu tenho algo para proteger"?','A fala marca o crescimento de um jovem herói em batalha.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gohan',TRUE,0),(gen_random_uuid(),q,'Goten',FALSE,1),(gen_random_uuid(),q,'Trunks',FALSE,2),(gen_random_uuid(),q,'Videl',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'who_said','easy','Quem disse: "Eu vim do futuro para avisar sobre um perigo terrível que ainda vai chegar"?','Ele revela a existência dos Androides antes da data prevista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Trunks do Futuro',TRUE,0),(gen_random_uuid(),q,'Goten',FALSE,1),(gen_random_uuid(),q,'Gohan',FALSE,2),(gen_random_uuid(),q,'Vegeta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'who_said','easy','Quem disse: "Eu sou um monge, mas também sou um dos guerreiros mais fortes da Terra"?','Ele treinou desde criança junto de Goku sob o Mestre Kame.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kuririn',TRUE,0),(gen_random_uuid(),q,'Ten Shin Han',FALSE,1),(gen_random_uuid(),q,'Yamcha',FALSE,2),(gen_random_uuid(),q,'Chaoz',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'who_said','easy','Quem disse: "Bulma, se você não achar as esferas do dragão logo, eu vou perder a paciência"?','A frase mostra a impaciência típica do personagem no início da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Oolong',TRUE,0),(gen_random_uuid(),q,'Yamcha',FALSE,1),(gen_random_uuid(),q,'Puar',FALSE,2),(gen_random_uuid(),q,'Kame Sennin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'who_said','easy','Quem disse: "Papai, eu quero ser forte como você algum dia"?','A frase é dita por um dos filhos de Goku ainda criança.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Goten',TRUE,0),(gen_random_uuid(),q,'Gohan',FALSE,1),(gen_random_uuid(),q,'Trunks',FALSE,2),(gen_random_uuid(),q,'Pan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'who_said','medium','Quem disse: "Eu sou Cell, a criatura perfeita criada a partir das células dos maiores guerreiros do universo"?','A frase é dita ao se apresentar pela primeira vez a seus inimigos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cell',TRUE,0),(gen_random_uuid(),q,'Androide 16',FALSE,1),(gen_random_uuid(),q,'Dr. Gero',FALSE,2),(gen_random_uuid(),q,'Freeza',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'who_said','medium','Quem disse: "Eu não preciso de ajuda de ninguém, vou derrotá-lo sozinho e provar que sou o mais forte"?','A frase reflete o orgulho ferido do personagem diante de Cell.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vegeta',TRUE,0),(gen_random_uuid(),q,'Trunks do Futuro',FALSE,1),(gen_random_uuid(),q,'Piccolo',FALSE,2),(gen_random_uuid(),q,'Goku',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'who_said','medium','Quem disse: "Eu prefiro morrer a viver com vergonha de ter fugido de uma batalha"?','A fala reflete o código de honra guerreira do personagem.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vegeta',TRUE,0),(gen_random_uuid(),q,'Nappa',FALSE,1),(gen_random_uuid(),q,'Ginyu',FALSE,2),(gen_random_uuid(),q,'Dodoria',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'who_said','medium','Quem disse: "Eu sou o guardião da Terra, e vou protegê-la mesmo que custe minha vida"?','A frase é dita pouco antes de um sacrifício importante na saga Saiyajin.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Piccolo',TRUE,0),(gen_random_uuid(),q,'Kami-sama',FALSE,1),(gen_random_uuid(),q,'Dende',FALSE,2),(gen_random_uuid(),q,'Nail',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'who_said','medium','Quem disse: "Vocês, terráqueos, não fazem ideia do poder verdadeiro do universo"?','A frase é dita com desdém por um tirano intergaláctico.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Freeza',TRUE,0),(gen_random_uuid(),q,'Cooler',FALSE,1),(gen_random_uuid(),q,'King Cold',FALSE,2),(gen_random_uuid(),q,'Cell',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'who_said','medium','Quem disse: "Eu criei os Androides com um único propósito: destruir Goku"?','A frase resume a motivação de vingança do cientista responsável pelos Androides.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dr. Gero',TRUE,0),(gen_random_uuid(),q,'Dr. Myuu',FALSE,1),(gen_random_uuid(),q,'Babidi',FALSE,2),(gen_random_uuid(),q,'Bibidi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'who_said','medium','Quem disse: "Eu só quero me divertir, não importa quanta destruição eu cause pelo caminho"?','A frase reflete a personalidade caótica e infantil do personagem.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Androide 18',FALSE,0),(gen_random_uuid(),q,'Androide 17',TRUE,1),(gen_random_uuid(),q,'Androide 16',FALSE,2),(gen_random_uuid(),q,'Cell',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'who_said','medium','Quem disse: "Eu fui criado com um único desejo dentro de mim: proteger a natureza"?','A frase é dita por um Androide com uma programação diferente dos demais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Androide 16',TRUE,0),(gen_random_uuid(),q,'Androide 17',FALSE,1),(gen_random_uuid(),q,'Androide 18',FALSE,2),(gen_random_uuid(),q,'Androide 19',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'who_said','medium','Quem disse: "Eu vou selar você de volta, nem que seja a última coisa que eu faça neste mundo"?','A frase é dita por um mago prestes a lutar contra o próprio monstro que criou séculos atrás.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Babidi',TRUE,0),(gen_random_uuid(),q,'Bibidi',FALSE,1),(gen_random_uuid(),q,'Dabura',FALSE,2),(gen_random_uuid(),q,'Kaioshin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'who_said','medium','Quem disse: "Um Saiyajin de sangue puro jamais aceitaria ajuda de um mestiço"?','A frase reflete o preconceito racial saiyajin dentro da própria série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vegeta',TRUE,0),(gen_random_uuid(),q,'Nappa',FALSE,1),(gen_random_uuid(),q,'Raditz',FALSE,2),(gen_random_uuid(),q,'Bardock',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'who_said','hard','Quem disse: "Eu abri mão do meu orgulho de guerreiro para proteger minha família, e não me arrependo"?','A frase marca uma mudança emocional importante do personagem após anos de arrogância.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vegeta',TRUE,0),(gen_random_uuid(),q,'Goku',FALSE,1),(gen_random_uuid(),q,'Piccolo',FALSE,2),(gen_random_uuid(),q,'Trunks do Futuro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'who_said','hard','Quem disse: "Vocês não passam de insetos perto do poder que eu escondi este tempo todo"?','A frase é dita ao revelar uma forma final ainda mais poderosa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Freeza',TRUE,0),(gen_random_uuid(),q,'Cell',FALSE,1),(gen_random_uuid(),q,'Cooler',FALSE,2),(gen_random_uuid(),q,'King Cold',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'who_said','hard','Quem disse: "Eu sinto muito, mas não posso permitir que você tome o corpo de outra pessoa"?','A frase é dita durante uma batalha contra um capitão capaz de trocar de corpo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Goku',TRUE,0),(gen_random_uuid(),q,'Vegeta',FALSE,1),(gen_random_uuid(),q,'Kuririn',FALSE,2),(gen_random_uuid(),q,'Gohan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'who_said','hard','Quem disse: "Eu prefiro ser destruído a servir de escravo para qualquer tirano do universo"?','A fala é de um guerreiro namekuseijin diante das forças de Freeza.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nail',TRUE,0),(gen_random_uuid(),q,'Dende',FALSE,1),(gen_random_uuid(),q,'Moori',FALSE,2),(gen_random_uuid(),q,'Guru',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'who_said','hard','Quem disse: "Eu vou provar que um guerreiro do futuro também pode mudar seu próprio destino"?','A frase é dita antes de um confronto direto contra os Androides que destruíram sua linha temporal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Trunks do Futuro',TRUE,0),(gen_random_uuid(),q,'Gohan',FALSE,1),(gen_random_uuid(),q,'Vegeta',FALSE,2),(gen_random_uuid(),q,'Goku',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'who_said','hard','Quem disse: "Eu sirvo ao meu mestre com lealdade absoluta, mesmo que isso signifique minha própria destruição"?','A fala é dita por um demônio poderoso que serve a um mago malígno.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dabura',TRUE,0),(gen_random_uuid(),q,'Yakon',FALSE,1),(gen_random_uuid(),q,'Pui Pui',FALSE,2),(gen_random_uuid(),q,'Spopovich',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'who_said','hard','Quem disse: "Eu não sou páreo para ele sozinho, mas juntos, talvez tenhamos uma chance"?','A frase reflete um raro momento de humildade tática do personagem.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Piccolo',TRUE,0),(gen_random_uuid(),q,'Vegeta',FALSE,1),(gen_random_uuid(),q,'Ten Shin Han',FALSE,2),(gen_random_uuid(),q,'Yamcha',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'who_said','impossible','Quem disse: "Um Kaioshin nunca deveria intervir diretamente, mas desta vez não tenho escolha"?','A frase é dita por uma divindade responsável por proteger o universo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaioshin',TRUE,0),(gen_random_uuid(),q,'Kaio-sama',FALSE,1),(gen_random_uuid(),q,'Kibito',FALSE,2),(gen_random_uuid(),q,'Dende',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'who_said','impossible','Quem disse: "Eu sirvo ao Kaioshin Supremo há eras, e vou protegê-lo com minha vida"?','A frase é dita por um assistente leal de uma das divindades do universo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kibito',TRUE,0),(gen_random_uuid(),q,'Kaioshin',FALSE,1),(gen_random_uuid(),q,'Elder Kai',FALSE,2),(gen_random_uuid(),q,'Kaio-sama',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- EPISODE_ARC — 15 perguntas (7 medium / 6 hard / 2 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'episode_arc','medium','Em qual saga Goku enfrenta Vegeta e Nappa pela primeira vez na Terra?','Kuririn, Ten Shin Han e Piccolo morrem defendendo o planeta neste arco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga Saiyajin',TRUE,0),(gen_random_uuid(),q,'Saga Freeza',FALSE,1),(gen_random_uuid(),q,'Saga Cell',FALSE,2),(gen_random_uuid(),q,'Saga Majin Boo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'episode_arc','medium','Em qual saga Goku viaja até Namekusei em busca das esferas do dragão daquele planeta?','É lá que ele se transforma em Super Saiyajin pela primeira vez.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga Freeza',TRUE,0),(gen_random_uuid(),q,'Saga Saiyajin',FALSE,1),(gen_random_uuid(),q,'Saga Cell',FALSE,2),(gen_random_uuid(),q,'Saga Androides',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'episode_arc','medium','Em qual saga os Androides 17 e 18 são revelados pela primeira vez?','Eles foram criados pelo Dr. Gero para destruir Goku.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga dos Androides',TRUE,0),(gen_random_uuid(),q,'Saga Cell',FALSE,1),(gen_random_uuid(),q,'Saga Freeza',FALSE,2),(gen_random_uuid(),q,'Saga Majin Boo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'episode_arc','medium','Em qual saga acontece o torneio conhecido como "Cell Games", promovido pelo próprio vilão?','Gohan derrota o vilão principal transformando-se além do Super Saiyajin 2.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga Cell',TRUE,0),(gen_random_uuid(),q,'Saga dos Androides',FALSE,1),(gen_random_uuid(),q,'Saga Majin Boo',FALSE,2),(gen_random_uuid(),q,'Saga Freeza',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'episode_arc','medium','Em qual saga Babidi liberta Majin Boo após séculos de selamento?','O Torneio de Artes Marciais serve como isca para reunir energia para o ritual.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga Majin Boo',TRUE,0),(gen_random_uuid(),q,'Saga Cell',FALSE,1),(gen_random_uuid(),q,'Saga dos Androides',FALSE,2),(gen_random_uuid(),q,'Saga Freeza',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'episode_arc','medium','Em qual saga Trunks do Futuro viaja pela primeira vez ao passado para alertar sobre os Androides?','Ele revela também a verdade sobre a morte de Goku em sua linha temporal original.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga Trunks do Futuro',TRUE,0),(gen_random_uuid(),q,'Saga Cell',FALSE,1),(gen_random_uuid(),q,'Saga Majin Boo',FALSE,2),(gen_random_uuid(),q,'Saga Freeza',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'episode_arc','medium','Em qual saga Goku treina no Outro Mundo, já falecido, sob supervisão de Kaio-sama?','É a primeira vez que a série explora o pós-vida como cenário de treinamento.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga do Treinamento com Kaio-sama',TRUE,0),(gen_random_uuid(),q,'Saga Namekusei',FALSE,1),(gen_random_uuid(),q,'Saga Cell',FALSE,2),(gen_random_uuid(),q,'Saga Majin Boo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'episode_arc','hard','Em qual saga Vegeta e Nappa destroem completamente uma cidade a caminho da Terra?','Ainda não haviam encontrado Goku e seus aliados naquele momento.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga Saiyajin',TRUE,0),(gen_random_uuid(),q,'Saga Freeza',FALSE,1),(gen_random_uuid(),q,'Saga Cell',FALSE,2),(gen_random_uuid(),q,'Saga dos Androides',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'episode_arc','hard','Em qual saga o esquadrão Ginyu chega a Namekusei para reforçar as tropas de Freeza?','Eles são derrotados um a um pelos heróis, exceto pelo líder, que troca de corpo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga Freeza',TRUE,0),(gen_random_uuid(),q,'Saga Saiyajin',FALSE,1),(gen_random_uuid(),q,'Saga Cell',FALSE,2),(gen_random_uuid(),q,'Saga Majin Boo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'episode_arc','hard','Em qual saga Piccolo se funde com Kami-sama, aumentando drasticamente seu poder?','Isso ocorre pouco antes da chegada dos Androides à linha temporal principal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga dos Androides',TRUE,0),(gen_random_uuid(),q,'Saga Cell',FALSE,1),(gen_random_uuid(),q,'Saga Freeza',FALSE,2),(gen_random_uuid(),q,'Saga Majin Boo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'episode_arc','hard','Em qual saga Gohan atinge pela primeira vez o nível conhecido como Gohan Ultimate?','Old Kai desbloqueia seu potencial escondido antes do confronto final.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga Majin Boo',TRUE,0),(gen_random_uuid(),q,'Saga Cell',FALSE,1),(gen_random_uuid(),q,'Saga dos Androides',FALSE,2),(gen_random_uuid(),q,'Saga Freeza',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'episode_arc','hard','Em qual saga Goku e Vegeta se fundem pela primeira vez usando os brincos Potara?','A fusão resulta em um guerreiro chamado Vegetto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga Majin Boo',TRUE,0),(gen_random_uuid(),q,'Saga Cell',FALSE,1),(gen_random_uuid(),q,'Saga Freeza',FALSE,2),(gen_random_uuid(),q,'Saga dos Androides',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'episode_arc','impossible','Em qual saga Goku enfrenta Pikkon, um lutador do Outro Mundo, em um torneio pós-morte?','O confronto ocorre enquanto o resto do elenco luta contra Majin Boo na Terra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga Majin Boo',TRUE,0),(gen_random_uuid(),q,'Saga Cell',FALSE,1),(gen_random_uuid(),q,'Saga Freeza',FALSE,2),(gen_random_uuid(),q,'Saga dos Androides',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'episode_arc','impossible','Em qual saga Garlic Jr. tenta usar as Esferas do Dragão para se tornar imortal?','Ele aprisiona Kami e Piccolo dentro de um recipiente mágico neste arco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga Garlic Jr.',TRUE,0),(gen_random_uuid(),q,'Saga Saiyajin',FALSE,1),(gen_random_uuid(),q,'Saga Freeza',FALSE,2),(gen_random_uuid(),q,'Saga Cell',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- CHRONOLOGICAL — 7 perguntas (4 hard / 3 impossible)
    -- Para cada uma, sort_order define a posição cronológica correta.
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'chronological','hard','Ordene cronologicamente as sagas principais de Dragon Ball Z, da primeira à última.','São quatro grandes arcos que definem toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga Saiyajin',TRUE,0),(gen_random_uuid(),q,'Saga Freeza',FALSE,1),(gen_random_uuid(),q,'Saga Cell',FALSE,2),(gen_random_uuid(),q,'Saga Majin Boo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'chronological','hard','Ordene cronologicamente as transformações de Goku a seguir, da mais fraca à mais forte.','Todas ocorrem dentro do período clássico de Dragon Ball Z.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaioken',TRUE,0),(gen_random_uuid(),q,'Super Saiyajin',FALSE,1),(gen_random_uuid(),q,'Super Saiyajin 2',FALSE,2),(gen_random_uuid(),q,'Super Saiyajin 3',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'chronological','hard','Ordene cronologicamente os seguintes eventos da saga Cell, do mais antigo ao mais recente.','Cobrem desde a chegada dos Androides até a derrota final do vilão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chegada dos Androides 17 e 18',TRUE,0),(gen_random_uuid(),q,'Absorção do Androide 18 por Cell',FALSE,1),(gen_random_uuid(),q,'Cell Games',FALSE,2),(gen_random_uuid(),q,'Vitória de Gohan sobre Cell',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'chronological','hard','Ordene cronologicamente os confrontos de Goku em Namekusei, do primeiro ao último.','A força dos oponentes aumenta a cada etapa da saga.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Esquadrão Ginyu',TRUE,0),(gen_random_uuid(),q,'Freeza Segunda Forma',FALSE,1),(gen_random_uuid(),q,'Freeza Terceira Forma',FALSE,2),(gen_random_uuid(),q,'Freeza Forma Final',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'chronological','impossible','Ordene cronologicamente os seguintes eventos da saga Majin Boo, do mais antigo ao mais recente.','Cobrem desde a liberação do monstro até sua derrota definitiva.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Babidi liberta Majin Boo',TRUE,0),(gen_random_uuid(),q,'Boo absorve o Gohan Ultimate',FALSE,1),(gen_random_uuid(),q,'Goku e Vegeta se fundem em Vegetto',FALSE,2),(gen_random_uuid(),q,'Genki Dama final contra Boo Kid',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'chronological','impossible','Ordene cronologicamente as fusões e alianças a seguir, da primeira à mais recente na trama.','Envolvem personagens se unindo para enfrentar ameaças cada vez maiores.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Piccolo se funde com Kami-sama',TRUE,0),(gen_random_uuid(),q,'Goten e Trunks formam Gotenks',FALSE,1),(gen_random_uuid(),q,'Goku e Vegeta formam Vegetto',FALSE,2),(gen_random_uuid(),q,'Vegetto se funde definitivamente dentro de Boo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'chronological','impossible','Ordene cronologicamente os seguintes acontecimentos da vida de Vegeta, do mais antigo ao mais recente.','Cobrem desde sua chegada à Terra até sua evolução emocional na saga Majin Boo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chegada à Terra com Nappa',TRUE,0),(gen_random_uuid(),q,'Derrota para o esquadrão Ginyu em Namekusei',FALSE,1),(gen_random_uuid(),q,'Casamento com Bulma',FALSE,2),(gen_random_uuid(),q,'Sacrifício com Final Explosion contra Boo Gordo',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- Complemento para fechar 150 perguntas na distribuição exata
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','easy','Qual é o nome do torneio disputado apenas por crianças, no qual Goten e Trunks competem disfarçados de "Guerreiro Misterioso"?','Eles escondem a identidade para não chamar atenção do Sr. Satã.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Torneio Júnior de Artes Marciais',TRUE,0),(gen_random_uuid(),q,'Cell Games Júnior',FALSE,1),(gen_random_uuid(),q,'Copa das Crianças',FALSE,2),(gen_random_uuid(),q,'Torneio Kaioshin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','easy','Qual era a missão original de Kakarotto ao ser enviado ainda bebê para a Terra?','Um golpe na cabeça na infância mudou completamente sua personalidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Estudar a cultura terráquea',FALSE,0),(gen_random_uuid(),q,'Conquistar o planeta eliminando a população',TRUE,1),(gen_random_uuid(),q,'Proteger a Terra de invasores',FALSE,2),(gen_random_uuid(),q,'Encontrar as Esferas do Dragão',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','medium','O que Bulma remove do corpo do Androide 18 para impedir sua autodestruição?','O dispositivo foi instalado pelo Dr. Gero como último recurso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Um chip de controle mental',FALSE,0),(gen_random_uuid(),q,'Uma bomba de autodestruição',TRUE,1),(gen_random_uuid(),q,'Um limitador de energia',FALSE,2),(gen_random_uuid(),q,'Um núcleo de energia artificial',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','medium','Qual é o nome da habilidade que permite aos guerreiros localizar a energia vital de outras pessoas à distância?','É essencial para encontrar aliados e inimigos escondidos pelo mundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Detecção de Ki',TRUE,0),(gen_random_uuid(),q,'Scouter Sense',FALSE,1),(gen_random_uuid(),q,'Aura Vision',FALSE,2),(gen_random_uuid(),q,'Ki Radar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','medium','Com quem Kuririn se casa após o fim da saga Cell?','Ela era originalmente uma inimiga criada para destruir Goku.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Androide 18',TRUE,0),(gen_random_uuid(),q,'Maron',FALSE,1),(gen_random_uuid(),q,'Bulma',FALSE,2),(gen_random_uuid(),q,'Lunch',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','hard','Qual é o nome da nave espacial individual usada pelos Saiyajins para viajar entre planetas?','Vegeta e Nappa chegam à Terra dentro de uma dessas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cápsula Saiyajin',TRUE,0),(gen_random_uuid(),q,'Nave Cold',FALSE,1),(gen_random_uuid(),q,'Sonda Freeza',FALSE,2),(gen_random_uuid(),q,'Módulo Namek',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','hard','Qual é o nome da forma gigante de macaco que Saiyajins de cauda intacta assumem ao olhar para a lua cheia?','Vegeta usa essa forma em sua primeira luta contra Goku na Terra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Oozaru',TRUE,0),(gen_random_uuid(),q,'Great Saiyaman',FALSE,1),(gen_random_uuid(),q,'Golden Ape',FALSE,2),(gen_random_uuid(),q,'Saiyan Beast',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'text','hard','Qual treinamento faz Kuririn perder permanentemente a capacidade de sentir medo em combate?','Foi conduzido no Outro Mundo antes da chegada dos Saiyajins.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Treinamento com Kaio-sama',TRUE,0),(gen_random_uuid(),q,'Treinamento com Mestre Kame',FALSE,1),(gen_random_uuid(),q,'Treinamento com Piccolo',FALSE,2),(gen_random_uuid(),q,'Treinamento com Kami-sama',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'fill_blank','easy','O Templo Sagrado, onde vive o Guardião da Terra, fica no topo da Torre de ___.','É necessário voar ou escalar uma distância imensa para chegar lá.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Karin',TRUE,0),(gen_random_uuid(),q,'Kame',FALSE,1),(gen_random_uuid(),q,'Kaio',FALSE,2),(gen_random_uuid(),q,'Nyoibo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'fill_blank','easy','A forma gigante de macaco que Saiyajins de cauda intacta assumem sob lua cheia se chama ___.','Multiplica drasticamente o poder e o tamanho do guerreiro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Oozaru',TRUE,0),(gen_random_uuid(),q,'Great Saiyaman',FALSE,1),(gen_random_uuid(),q,'Golden Ape',FALSE,2),(gen_random_uuid(),q,'Saiyan Beast',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'fill_blank','medium','Bulma remove a bomba de autodestruição instalada no corpo do Androide ___ para salvá-lo.','A remoção acontece pouco antes de Cell absorver esse Androide.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'18',TRUE,0),(gen_random_uuid(),q,'17',FALSE,1),(gen_random_uuid(),q,'16',FALSE,2),(gen_random_uuid(),q,'19',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'fill_blank','medium','A nave espacial individual usada pelos guerreiros Saiyajins para viajar entre planetas é chamada de cápsula ___.','Nela, Vegeta e Nappa chegam à Terra no início da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saiyajin',TRUE,0),(gen_random_uuid(),q,'Namekuseijin',FALSE,1),(gen_random_uuid(),q,'Freeza',FALSE,2),(gen_random_uuid(),q,'Cold',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'fill_blank','medium','Kuririn se casa com o Androide ___ após o fim da saga Cell.','O casal tem uma filha chamada Marron.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'18',TRUE,0),(gen_random_uuid(),q,'17',FALSE,1),(gen_random_uuid(),q,'16',FALSE,2),(gen_random_uuid(),q,'19',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'fill_blank','hard','Kuririn perde permanentemente a capacidade de sentir medo em combate após treinar com ___.','O treinamento ocorre no Outro Mundo, antes da chegada dos Saiyajins à Terra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaio-sama',TRUE,0),(gen_random_uuid(),q,'Mestre Kame',FALSE,1),(gen_random_uuid(),q,'Piccolo',FALSE,2),(gen_random_uuid(),q,'Kami-sama',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'fill_blank','hard','O exército intergaláctico liderado por Freeza é conhecido como Exército ___.','Zarbon, Dodoria e o esquadrão Ginyu fazem parte dessa organização.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Freeza',TRUE,0),(gen_random_uuid(),q,'Cold',FALSE,1),(gen_random_uuid(),q,'Ginyu',FALSE,2),(gen_random_uuid(),q,'Saiyajin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'fill_blank','impossible','Zarbon se transforma em uma criatura monstruosa e verde ao ativar seu estado de ___.','Ele usa essa forma para intimidar e caçar Vegeta em Namekusei.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Poder Total',TRUE,0),(gen_random_uuid(),q,'Fúria Extrema',FALSE,1),(gen_random_uuid(),q,'Forma Verdadeira',FALSE,2),(gen_random_uuid(),q,'Modo Selvagem',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'who_said','medium','Quem disse: "Eu não vou fugir, mesmo que ele seja mil vezes mais forte do que eu"?','A frase é dita diante de um inimigo visivelmente esmagador em poder.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kuririn',TRUE,0),(gen_random_uuid(),q,'Yamcha',FALSE,1),(gen_random_uuid(),q,'Ten Shin Han',FALSE,2),(gen_random_uuid(),q,'Chaoz',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'who_said','hard','Quem disse: "Eu não luto para provar que sou forte, eu luto para proteger todos que eu amo"?','A frase resume a motivação central do protagonista em batalhas decisivas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Goku',TRUE,0),(gen_random_uuid(),q,'Gohan',FALSE,1),(gen_random_uuid(),q,'Piccolo',FALSE,2),(gen_random_uuid(),q,'Trunks do Futuro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbz,'episode_arc','medium','Em qual saga Kuririn é morto por Freeza e depois revivido pelas Esferas do Dragão de Namekusei?','Sua morte motiva a primeira transformação Super Saiyajin de Goku.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga Freeza',TRUE,0),(gen_random_uuid(),q,'Saga Saiyajin',FALSE,1),(gen_random_uuid(),q,'Saga Cell',FALSE,2),(gen_random_uuid(),q,'Saga dos Androides',FALSE,3);

END $$;
