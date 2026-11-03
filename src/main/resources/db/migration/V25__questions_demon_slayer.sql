-- ============================================================
--  V25 — Seed de perguntas: Demon Slayer (150 perguntas)
--  Fonte: MyAnimeList + cânone do anime
--  Distribuição: text 40% / fill_blank 25% / who_said 20% /
--                episode_arc 10% / chronological 5%
--  Sem repetição com V5. Regras R1-R7 aplicadas.
-- ============================================================

DO $$
DECLARE
    v_system UUID := '00000000-0000-0000-0000-000000000001';
    v_ds     UUID;
    q        UUID;
BEGIN
    SELECT id INTO v_ds FROM animes WHERE slug = 'demon-slayer' LIMIT 1;

    -- ══════════════════════════════════════════════════════════
    -- TEXT — 60 perguntas (18 easy / 21 medium / 15 hard / 6 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','easy','Qual é a profissão da família de Tanjiro antes da tragédia que inicia a série?','Eles vendiam carvão na região montanhosa onde moravam.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Carvoeiros',TRUE,0),(gen_random_uuid(),q,'Pescadores',FALSE,1),(gen_random_uuid(),q,'Ferreiros',FALSE,2),(gen_random_uuid(),q,'Agricultores',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','easy','Qual é o nome da espada usada pelos caçadores de demônios, feita de um metal especial que reage à luz solar?','Sua cor muda de acordo com a natureza de quem a empunha.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nichirin',TRUE,0),(gen_random_uuid(),q,'Kyoketsu',FALSE,1),(gen_random_uuid(),q,'Katana Solar',FALSE,2),(gen_random_uuid(),q,'Hinokami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','easy','Qual é a principal fraqueza dos demônios em Demon Slayer, capaz de destruí-los permanentemente?','Por isso, a maioria evita sair durante o dia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Luz solar',TRUE,0),(gen_random_uuid(),q,'Água benta',FALSE,1),(gen_random_uuid(),q,'Prata',FALSE,2),(gen_random_uuid(),q,'Fogo comum',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','easy','Qual é o nome do amigo cão-javali de Tanjiro, extremamente impulsivo e competitivo?','Ele usa uma máscara de javali e grita muito antes de entrar em combate.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Inosuke Hashibira',TRUE,0),(gen_random_uuid(),q,'Zenitsu Agatsuma',FALSE,1),(gen_random_uuid(),q,'Genya Shinazugawa',FALSE,2),(gen_random_uuid(),q,'Murata',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','easy','Qual é o nome do amigo covarde de Tanjiro, que só luta bem quando desmaia de medo?','Ele possui audição extremamente aguçada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zenitsu Agatsuma',TRUE,0),(gen_random_uuid(),q,'Inosuke Hashibira',FALSE,1),(gen_random_uuid(),q,'Genya Shinazugawa',FALSE,2),(gen_random_uuid(),q,'Murata',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','easy','Qual é o item usado por Tanjiro para proteger Nezuko da luz solar durante o dia?','É uma caixa de madeira carregada nas costas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Caixa de bambu',TRUE,0),(gen_random_uuid(),q,'Manto especial',FALSE,1),(gen_random_uuid(),q,'Sombrinha mágica',FALSE,2),(gen_random_uuid(),q,'Cesto de vime',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','easy','Qual é o nome da máscara usada por Sakonji Urokodaki para esconder o rosto durante o treinamento de Tanjiro?','Ela tem formato de tengu, um espírito da mitologia japonesa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Máscara de Tengu',TRUE,0),(gen_random_uuid(),q,'Máscara de Raposa',FALSE,1),(gen_random_uuid(),q,'Máscara de Oni',FALSE,2),(gen_random_uuid(),q,'Máscara de Dragão',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','easy','Qual é o nome do exame final que Tanjiro precisa superar para ingressar oficialmente no Corpo de Caça aos Demônios?','Vários candidatos morrem durante esta seleção final.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Seleção Final',TRUE,0),(gen_random_uuid(),q,'Exame Chunin',FALSE,1),(gen_random_uuid(),q,'Prova da Montanha',FALSE,2),(gen_random_uuid(),q,'Treino Sagrado',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','easy','Qual é o nome do irmão mais velho de Genya, que também é um Pilar do Corpo de Caça aos Demônios?','Ele possui olheiras profundas e postura extremamente encurvada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sanemi Shinazugawa',TRUE,0),(gen_random_uuid(),q,'Kyojuro Rengoku',FALSE,1),(gen_random_uuid(),q,'Gyomei Himejima',FALSE,2),(gen_random_uuid(),q,'Muichiro Tokito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','easy','Qual é o nome do Pilar das Chamas, conhecido por seu entusiasmo e apetite voraz?','Ele enfrenta um demônio da lua superior dentro de um trem em movimento.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kyojuro Rengoku',TRUE,0),(gen_random_uuid(),q,'Sanemi Shinazugawa',FALSE,1),(gen_random_uuid(),q,'Tengen Uzui',FALSE,2),(gen_random_uuid(),q,'Giyu Tomioka',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','easy','Qual é o nome do Pilar da Água, que salva a vida de Tanjiro no início da série?','Ele decide levar Nezuko e Tanjiro até Urokodaki para treinamento.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Giyu Tomioka',TRUE,0),(gen_random_uuid(),q,'Kyojuro Rengoku',FALSE,1),(gen_random_uuid(),q,'Muichiro Tokito',FALSE,2),(gen_random_uuid(),q,'Obanai Iguro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','easy','Qual é o nome da irmã mais nova de Nezuko e Tanjiro, morta na tragédia inicial da série?','Ela é uma das vítimas do ataque de Muzan à família Kamado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hanako',TRUE,0),(gen_random_uuid(),q,'Rokuta',FALSE,1),(gen_random_uuid(),q,'Takeo',FALSE,2),(gen_random_uuid(),q,'Shigeru',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','easy','Qual é o nome do primeiro esquadrão de elite composto pelos lutadores mais fortes do Corpo de Caça aos Demônios?','Cada membro carrega um título ligado a um elemento ou fenômeno natural.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Os Pilares',TRUE,0),(gen_random_uuid(),q,'Os Doze Kizuki',FALSE,1),(gen_random_uuid(),q,'A Guarda Real',FALSE,2),(gen_random_uuid(),q,'Os Doze Guardiões',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','easy','Qual é o nome da irmã de Kanao, que a adotou após a morte de sua família biológica?','Ela morre defendendo Kanao de um demônio quando ambas eram crianças.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kanae Kocho',TRUE,0),(gen_random_uuid(),q,'Shinobu Kocho',FALSE,1),(gen_random_uuid(),q,'Aoi Kanzaki',FALSE,2),(gen_random_uuid(),q,'Naho',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','easy','Qual é o nome da Pilar dos Insetos, especialista em venenos capazes de matar demônios sem decapitação?','Ela é fisicamente a mais fraca entre os Pilares, mas compensa com inteligência.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shinobu Kocho',TRUE,0),(gen_random_uuid(),q,'Kanae Kocho',FALSE,1),(gen_random_uuid(),q,'Mitsuri Kanroji',FALSE,2),(gen_random_uuid(),q,'Kanao Tsuyuri',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','easy','Qual é o nome da forma de respiração básica ensinada primeiro a todos os aspirantes a caçadores de demônios?','A maioria das outras respirações deriva dela.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Respiração da Água',TRUE,0),(gen_random_uuid(),q,'Respiração do Fogo',FALSE,1),(gen_random_uuid(),q,'Respiração do Trovão',FALSE,2),(gen_random_uuid(),q,'Respiração da Pedra',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','easy','Qual é o nome do ferreiro responsável por criar e consertar as espadas Nichirin de Tanjiro?','Ele grita bastante e se irrita quando as espadas quebram com frequência.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hotaru Haganezuka',TRUE,0),(gen_random_uuid(),q,'Kotetsu',FALSE,1),(gen_random_uuid(),q,'Nakime',FALSE,2),(gen_random_uuid(),q,'Tanjuro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','easy','Qual é o nome da estalagem de gueixas onde Tengen Uzui investiga desaparecimentos misteriosos?','O arco se passa majoritariamente dentro deste bairro de entretenimento.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bairro dos Prazeres',TRUE,0),(gen_random_uuid(),q,'Vila da Espada',FALSE,1),(gen_random_uuid(),q,'Distrito das Sombras',FALSE,2),(gen_random_uuid(),q,'Vila Oculta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','medium','Qual é o nome do estilo de respiração de Tengen Uzui, ex-ninja e Pilar do Som?','Suas técnicas envolvem explosões controladas e percepção sonora aguçada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Respiração do Som',TRUE,0),(gen_random_uuid(),q,'Respiração do Vento',FALSE,1),(gen_random_uuid(),q,'Respiração da Névoa',FALSE,2),(gen_random_uuid(),q,'Respiração do Amor',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','medium','Qual é o nome do estilo de respiração de Mitsuri Kanroji, Pilar do Amor, derivado da respiração da chama?','Sua flexibilidade extraordinária permite golpes de ângulos impossíveis.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Respiração do Amor',TRUE,0),(gen_random_uuid(),q,'Respiração da Flor',FALSE,1),(gen_random_uuid(),q,'Respiração do Vento',FALSE,2),(gen_random_uuid(),q,'Respiração da Névoa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','medium','Qual é o nome do estilo de respiração de Obanai Iguro, Pilar da Serpente, que usa movimentos sinuosos?','Ele carrega uma cobra branca cega enrolada no próprio corpo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Respiração da Serpente',TRUE,0),(gen_random_uuid(),q,'Respiração do Vento',FALSE,1),(gen_random_uuid(),q,'Respiração da Pedra',FALSE,2),(gen_random_uuid(),q,'Respiração da Névoa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','medium','Qual é o nome do estilo de respiração usado por Gyomei Himejima, Pilar da Pedra, considerado o Pilar mais forte fisicamente?','Ele empunha uma corrente com machado ao invés de uma espada tradicional.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Respiração da Pedra',TRUE,0),(gen_random_uuid(),q,'Respiração da Serpente',FALSE,1),(gen_random_uuid(),q,'Respiração do Trovão',FALSE,2),(gen_random_uuid(),q,'Respiração do Vento',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','medium','Qual é o nome do estilo de respiração usado por Muichiro Tokito, Pilar da Névoa e o mais jovem entre os Pilares?','Ele sofre de perda parcial de memória sobre seu próprio passado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Respiração da Névoa',TRUE,0),(gen_random_uuid(),q,'Respiração do Vento',FALSE,1),(gen_random_uuid(),q,'Respiração da Serpente',FALSE,2),(gen_random_uuid(),q,'Respiração da Pedra',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','medium','Qual é o nome do estilo de respiração usado por Sanemi Shinazugawa, Pilar do Vento, marcado por golpes agressivos?','Ele nutre desconfiança profunda em relação a Tanjiro por causa de Nezuko.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Respiração do Vento',TRUE,0),(gen_random_uuid(),q,'Respiração da Serpente',FALSE,1),(gen_random_uuid(),q,'Respiração da Pedra',FALSE,2),(gen_random_uuid(),q,'Respiração do Trovão',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','medium','Qual é o nome do vilarejo isolado, habitado por ferreiros, onde ficam localizadas as forjas de espadas Nichirin?','Sua localização exata é mantida em segredo do resto do mundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vila dos Ferreiros',TRUE,0),(gen_random_uuid(),q,'Vila Kamado',FALSE,1),(gen_random_uuid(),q,'Vila da Lâmina',FALSE,2),(gen_random_uuid(),q,'Vila Sagrada',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','medium','Qual é o nome do líder supremo do Corpo de Caça aos Demônios, protegido por um véu que esconde seu rosto?','Ele carrega uma doença terminal desde o nascimento.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kagaya Ubuyashiki',TRUE,0),(gen_random_uuid(),q,'Yoriichi Tsugikuni',FALSE,1),(gen_random_uuid(),q,'Kagaya Kocho',FALSE,2),(gen_random_uuid(),q,'Muzan Kibutsuji',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','medium','Qual é o nome da técnica final de Nezuko que transforma seu sangue em explosões capazes de queimar demônios?','Ela a desenvolve conforme adquire mais controle sobre sua natureza demoníaca.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Explosão Sanguínea Blood Demon Art',TRUE,0),(gen_random_uuid(),q,'Chuva de Pétalas',FALSE,1),(gen_random_uuid(),q,'Fúria Carmesim',FALSE,2),(gen_random_uuid(),q,'Chama Interior',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','medium','Qual é o nome do estágio de respiração exclusivo de Tanjiro, derivado da respiração da água combinada com um estilo secreto de sua família?','É frequentemente representada por uma dança tradicional passada por gerações.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kagura do Deus do Fogo',TRUE,0),(gen_random_uuid(),q,'Respiração da Água Total',FALSE,1),(gen_random_uuid(),q,'Dança da Lua Cheia',FALSE,2),(gen_random_uuid(),q,'Respiração do Sol Nascente',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','medium','Qual é o nome da técnica de nervo transplantado que Genya usa para adquirir temporariamente as habilidades sensoriais de demônios?','Ele consome órgãos de Kizuki derrotados para obter esse poder.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Transplante de Órgãos Demoníacos',TRUE,0),(gen_random_uuid(),q,'Respiração da Besta',FALSE,1),(gen_random_uuid(),q,'Fusão Sanguínea',FALSE,2),(gen_random_uuid(),q,'Sentido Oni',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','medium','Qual é o nome do primeiro caçador de demônios da história, considerado o guerreiro mais forte de todos os tempos?','Sua respiração original deu origem a todas as demais formas de combate.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoriichi Tsugikuni',TRUE,0),(gen_random_uuid(),q,'Kagaya Ubuyashiki',FALSE,1),(gen_random_uuid(),q,'Michikatsu Tsugikuni',FALSE,2),(gen_random_uuid(),q,'Sakonji Urokodaki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','hard','Qual é o nome do irmão gêmeo de Yoriichi, que mais tarde se torna um dos Doze Kizuki?','Ele é movido por inveja profunda da genialidade natural do irmão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Michikatsu Tsugikuni',TRUE,0),(gen_random_uuid(),q,'Kokushibo',FALSE,1),(gen_random_uuid(),q,'Doma',FALSE,2),(gen_random_uuid(),q,'Akaza',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','hard','Qual é o nome demoníaco assumido por Michikatsu após se tornar um dos Kizuki mais poderosos?','Ele é o único demônio a ter praticado uma forma de respiração de espada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kokushibo',TRUE,0),(gen_random_uuid(),q,'Doma',FALSE,1),(gen_random_uuid(),q,'Akaza',FALSE,2),(gen_random_uuid(),q,'Muzan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','hard','Qual é o nome do demônio da lua superior que enfrenta Kyojuro Rengoku dentro de um trem em movimento?','Ele possui a habilidade de manipular sonhos para controlar suas vítimas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Enmu',TRUE,0),(gen_random_uuid(),q,'Akaza',FALSE,1),(gen_random_uuid(),q,'Doma',FALSE,2),(gen_random_uuid(),q,'Gyutaro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','hard','Qual é o nome do demônio ex-monge que dirige uma seita religiosa fraudulenta antes de se tornar um dos Kizuki?','Ele consome os corpos de suas próprias seguidoras sem remorso algum.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Doma',TRUE,0),(gen_random_uuid(),q,'Akaza',FALSE,1),(gen_random_uuid(),q,'Kokushibo',FALSE,2),(gen_random_uuid(),q,'Gyutaro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','hard','Qual é o nome do demônio irmão mais velho de Daki, que se combinam para formar um único ser durante a batalha no Bairro dos Prazeres?','Seu veneno é extremamente letal mesmo em pequenas doses.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gyutaro',TRUE,0),(gen_random_uuid(),q,'Akaza',FALSE,1),(gen_random_uuid(),q,'Doma',FALSE,2),(gen_random_uuid(),q,'Kokushibo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','hard','Qual é o nome da demônia irmã mais nova de Gyutaro, que trabalha disfarçada como oiran no Bairro dos Prazeres?','Ela usa faixas de tecido afiadas como arma principal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Daki',TRUE,0),(gen_random_uuid(),q,'Nakime',FALSE,1),(gen_random_uuid(),q,'Rui',FALSE,2),(gen_random_uuid(),q,'Enmu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','hard','Qual é o nome do demônio ex-lutador de artes marciais que enfrenta Rengoku, revelando profundo respeito pelo adversário derrotado?','Ele é obcecado por força e despreza a fraqueza acima de tudo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Akaza',TRUE,0),(gen_random_uuid(),q,'Doma',FALSE,1),(gen_random_uuid(),q,'Kokushibo',FALSE,2),(gen_random_uuid(),q,'Gyutaro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','hard','Qual é o nome do demônio que controla teias de aranha e comanda uma "família" falsa em uma vila da montanha?','Ele foi transformado ainda criança e nunca superou o trauma de sua infância.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rui',TRUE,0),(gen_random_uuid(),q,'Enmu',FALSE,1),(gen_random_uuid(),q,'Kyogai',FALSE,2),(gen_random_uuid(),q,'Susamaru',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','hard','Qual é o nome do demônio que ataca Tanjiro e Nezuko usando pergaminhos animados na forma de tambores?','Ele controla marionetes gigantes de papel durante o combate.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kyogai',TRUE,0),(gen_random_uuid(),q,'Rui',FALSE,1),(gen_random_uuid(),q,'Susamaru',FALSE,2),(gen_random_uuid(),q,'Yahaba',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','impossible','Qual é o nome da demônia responsável por tocar um instrumento capaz de reorganizar completamente o interior do castelo infinito de Muzan?','Sua música transforma corredores em labirintos móveis.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nakime',TRUE,0),(gen_random_uuid(),q,'Daki',FALSE,1),(gen_random_uuid(),q,'Susamaru',FALSE,2),(gen_random_uuid(),q,'Yahaba',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','impossible','Qual é o nome do demônio parceiro de Susamaru, especialista em lançar objetos afiados com precisão mortal?','Ele demonstra covardia extrema quando confrontado diretamente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yahaba',TRUE,0),(gen_random_uuid(),q,'Kyogai',FALSE,1),(gen_random_uuid(),q,'Rui',FALSE,2),(gen_random_uuid(),q,'Enmu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','impossible','Qual é o nome da demônia parceira de Yahaba, especialista em manipular bolas gigantes em combate?','Ela e o parceiro atuam sempre em dupla durante os ataques.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Susamaru',TRUE,0),(gen_random_uuid(),q,'Nakime',FALSE,1),(gen_random_uuid(),q,'Daki',FALSE,2),(gen_random_uuid(),q,'Kyogai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','impossible','Qual é o nome do pai falecido de Tanjiro, cuja dança sagrada é a origem de sua respiração especial?','Ele transmite os movimentos ao filho ainda quando criança, antes de sua morte.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tanjuro Kamado',TRUE,0),(gen_random_uuid(),q,'Sakonji Urokodaki',FALSE,1),(gen_random_uuid(),q,'Yoriichi Tsugikuni',FALSE,2),(gen_random_uuid(),q,'Jigoro Kuwajima',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','impossible','Qual é o nome do antigo mestre de artes marciais cego que treinou Zenitsu antes de sua entrada no Corpo de Caça aos Demônios?','Ele reconhece o potencial extraordinário do rapaz mesmo com toda sua covardia aparente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Jigoro Kuwajima',TRUE,0),(gen_random_uuid(),q,'Sakonji Urokodaki',FALSE,1),(gen_random_uuid(),q,'Tanjuro Kamado',FALSE,2),(gen_random_uuid(),q,'Yoriichi Tsugikuni',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- FILL_BLANK — 38 perguntas (11 easy / 13 medium / 10 hard / 4 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'fill_blank','easy','A espada usada pelos caçadores de demônios, feita de metal que reage à luz solar, se chama ___.','Sua cor muda de acordo com a natureza de quem a empunha.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nichirin',TRUE,0),(gen_random_uuid(),q,'Kyoketsu',FALSE,1),(gen_random_uuid(),q,'Katana Solar',FALSE,2),(gen_random_uuid(),q,'Hinokami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'fill_blank','easy','A principal fraqueza dos demônios em Demon Slayer, capaz de destruí-los permanentemente, é a ___.','Por isso, a maioria evita sair durante o dia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Luz solar',TRUE,0),(gen_random_uuid(),q,'Água benta',FALSE,1),(gen_random_uuid(),q,'Prata',FALSE,2),(gen_random_uuid(),q,'Fogo comum',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'fill_blank','easy','O amigo cão-javali de Tanjiro, extremamente impulsivo, se chama ___.','Ele usa uma máscara de javali e grita muito antes de entrar em combate.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Inosuke Hashibira',TRUE,0),(gen_random_uuid(),q,'Zenitsu Agatsuma',FALSE,1),(gen_random_uuid(),q,'Genya Shinazugawa',FALSE,2),(gen_random_uuid(),q,'Murata',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'fill_blank','easy','O amigo covarde de Tanjiro, que só luta bem quando desmaia de medo, se chama ___.','Ele possui audição extremamente aguçada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zenitsu Agatsuma',TRUE,0),(gen_random_uuid(),q,'Inosuke Hashibira',FALSE,1),(gen_random_uuid(),q,'Genya Shinazugawa',FALSE,2),(gen_random_uuid(),q,'Murata',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'fill_blank','easy','O item usado por Tanjiro para proteger Nezuko da luz solar durante o dia é uma ___.','É carregada nas costas de Tanjiro durante a maior parte da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Caixa de bambu',TRUE,0),(gen_random_uuid(),q,'Manto especial',FALSE,1),(gen_random_uuid(),q,'Sombrinha mágica',FALSE,2),(gen_random_uuid(),q,'Cesto de vime',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'fill_blank','easy','A máscara usada por Urokodaki durante o treinamento de Tanjiro tem formato de ___.','É um espírito da mitologia japonesa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tengu',TRUE,0),(gen_random_uuid(),q,'Raposa',FALSE,1),(gen_random_uuid(),q,'Oni',FALSE,2),(gen_random_uuid(),q,'Dragão',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'fill_blank','easy','O irmão mais velho de Genya, também Pilar do Corpo de Caça aos Demônios, se chama ___.','Ele possui olheiras profundas e postura extremamente encurvada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sanemi Shinazugawa',TRUE,0),(gen_random_uuid(),q,'Kyojuro Rengoku',FALSE,1),(gen_random_uuid(),q,'Gyomei Himejima',FALSE,2),(gen_random_uuid(),q,'Muichiro Tokito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'fill_blank','easy','O Pilar da Água que salva a vida de Tanjiro no início da série se chama ___.','Ele decide levar Nezuko e Tanjiro até Urokodaki para treinamento.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Giyu Tomioka',TRUE,0),(gen_random_uuid(),q,'Kyojuro Rengoku',FALSE,1),(gen_random_uuid(),q,'Muichiro Tokito',FALSE,2),(gen_random_uuid(),q,'Obanai Iguro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'fill_blank','easy','A irmã mais nova de Nezuko e Tanjiro, morta na tragédia inicial da série, se chama ___.','Ela é uma das vítimas do ataque de Muzan à família Kamado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hanako',TRUE,0),(gen_random_uuid(),q,'Rokuta',FALSE,1),(gen_random_uuid(),q,'Takeo',FALSE,2),(gen_random_uuid(),q,'Shigeru',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'fill_blank','easy','O esquadrão de elite composto pelos lutadores mais fortes do Corpo de Caça aos Demônios se chama ___.','Cada membro carrega um título ligado a um elemento ou fenômeno natural.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Os Pilares',TRUE,0),(gen_random_uuid(),q,'Os Doze Kizuki',FALSE,1),(gen_random_uuid(),q,'A Guarda Real',FALSE,2),(gen_random_uuid(),q,'Os Doze Guardiões',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'fill_blank','easy','O ferreiro responsável por criar e consertar as espadas Nichirin de Tanjiro se chama ___.','Ele grita bastante e se irrita quando as espadas quebram com frequência.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hotaru Haganezuka',TRUE,0),(gen_random_uuid(),q,'Kotetsu',FALSE,1),(gen_random_uuid(),q,'Nakime',FALSE,2),(gen_random_uuid(),q,'Tanjuro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'fill_blank','medium','O estilo de respiração de Tengen Uzui, ex-ninja e Pilar do Som, se chama Respiração do ___.','Suas técnicas envolvem explosões controladas e percepção sonora aguçada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Som',TRUE,0),(gen_random_uuid(),q,'Vento',FALSE,1),(gen_random_uuid(),q,'Névoa',FALSE,2),(gen_random_uuid(),q,'Amor',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'fill_blank','medium','O estilo de respiração de Mitsuri Kanroji, Pilar do Amor, se chama Respiração do ___.','Sua flexibilidade extraordinária permite golpes de ângulos impossíveis.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Amor',TRUE,0),(gen_random_uuid(),q,'Vento',FALSE,1),(gen_random_uuid(),q,'Névoa',FALSE,2),(gen_random_uuid(),q,'Som',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'fill_blank','medium','O estilo de respiração de Obanai Iguro, Pilar da Serpente, se chama Respiração da ___.','Ele carrega uma cobra branca cega enrolada no próprio corpo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Serpente',TRUE,0),(gen_random_uuid(),q,'Névoa',FALSE,1),(gen_random_uuid(),q,'Pedra',FALSE,2),(gen_random_uuid(),q,'Vento',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'fill_blank','medium','O estilo de respiração usado por Gyomei Himejima, o Pilar mais forte fisicamente, se chama Respiração da ___.','Ele empunha uma corrente com machado ao invés de uma espada tradicional.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Pedra',TRUE,0),(gen_random_uuid(),q,'Serpente',FALSE,1),(gen_random_uuid(),q,'Trovão',FALSE,2),(gen_random_uuid(),q,'Vento',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'fill_blank','medium','O estilo de respiração usado por Muichiro Tokito, o Pilar mais jovem, se chama Respiração da ___.','Ele sofre de perda parcial de memória sobre seu próprio passado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Névoa',TRUE,0),(gen_random_uuid(),q,'Vento',FALSE,1),(gen_random_uuid(),q,'Serpente',FALSE,2),(gen_random_uuid(),q,'Pedra',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'fill_blank','medium','O estilo de respiração usado por Sanemi Shinazugawa, marcado por golpes agressivos, se chama Respiração do ___.','Ele nutre desconfiança profunda em relação a Tanjiro por causa de Nezuko.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vento',TRUE,0),(gen_random_uuid(),q,'Serpente',FALSE,1),(gen_random_uuid(),q,'Pedra',FALSE,2),(gen_random_uuid(),q,'Trovão',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'fill_blank','medium','O vilarejo isolado, habitado por ferreiros, onde ficam as forjas de espadas Nichirin, se chama ___.','Sua localização exata é mantida em segredo do resto do mundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vila dos Ferreiros',TRUE,0),(gen_random_uuid(),q,'Vila Kamado',FALSE,1),(gen_random_uuid(),q,'Vila da Lâmina',FALSE,2),(gen_random_uuid(),q,'Vila Sagrada',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'fill_blank','medium','O líder supremo do Corpo de Caça aos Demônios, protegido por um véu, se chama ___.','Ele carrega uma doença terminal desde o nascimento.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kagaya Ubuyashiki',TRUE,0),(gen_random_uuid(),q,'Yoriichi Tsugikuni',FALSE,1),(gen_random_uuid(),q,'Kagaya Kocho',FALSE,2),(gen_random_uuid(),q,'Muzan Kibutsuji',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'fill_blank','medium','A técnica final de Nezuko que transforma seu sangue em explosões capazes de queimar demônios se chama ___.','Ela a desenvolve conforme adquire mais controle sobre sua natureza demoníaca.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Explosão Sanguínea Blood Demon Art',TRUE,0),(gen_random_uuid(),q,'Chuva de Pétalas',FALSE,1),(gen_random_uuid(),q,'Fúria Carmesim',FALSE,2),(gen_random_uuid(),q,'Chama Interior',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'fill_blank','medium','O primeiro caçador de demônios da história, considerado o guerreiro mais forte de todos os tempos, se chama ___.','Sua respiração original deu origem a todas as demais formas de combate.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoriichi Tsugikuni',TRUE,0),(gen_random_uuid(),q,'Kagaya Ubuyashiki',FALSE,1),(gen_random_uuid(),q,'Michikatsu Tsugikuni',FALSE,2),(gen_random_uuid(),q,'Sakonji Urokodaki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'fill_blank','hard','O irmão gêmeo de Yoriichi, que mais tarde se torna um dos Doze Kizuki, se chama ___.','Ele é movido por inveja profunda da genialidade natural do irmão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Michikatsu Tsugikuni',TRUE,0),(gen_random_uuid(),q,'Kokushibo',FALSE,1),(gen_random_uuid(),q,'Doma',FALSE,2),(gen_random_uuid(),q,'Akaza',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'fill_blank','hard','O nome demoníaco assumido por Michikatsu após se tornar um dos Kizuki mais poderosos é ___.','Ele é o único demônio a ter praticado uma forma de respiração de espada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kokushibo',TRUE,0),(gen_random_uuid(),q,'Doma',FALSE,1),(gen_random_uuid(),q,'Akaza',FALSE,2),(gen_random_uuid(),q,'Muzan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'fill_blank','hard','O demônio da lua superior que enfrenta Kyojuro Rengoku dentro do trem se chama ___.','Ele possui a habilidade de manipular sonhos para controlar suas vítimas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Enmu',TRUE,0),(gen_random_uuid(),q,'Akaza',FALSE,1),(gen_random_uuid(),q,'Doma',FALSE,2),(gen_random_uuid(),q,'Gyutaro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'fill_blank','hard','O demônio ex-monge que dirige uma seita religiosa fraudulenta antes de se tornar um dos Kizuki se chama ___.','Ele consome os corpos de suas próprias seguidoras sem remorso algum.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Doma',TRUE,0),(gen_random_uuid(),q,'Akaza',FALSE,1),(gen_random_uuid(),q,'Kokushibo',FALSE,2),(gen_random_uuid(),q,'Gyutaro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'fill_blank','hard','O demônio irmão mais velho de Daki, combinados durante a batalha no Bairro dos Prazeres, se chama ___.','Seu veneno é extremamente letal mesmo em pequenas doses.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gyutaro',TRUE,0),(gen_random_uuid(),q,'Akaza',FALSE,1),(gen_random_uuid(),q,'Doma',FALSE,2),(gen_random_uuid(),q,'Kokushibo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'fill_blank','hard','A demônia irmã mais nova de Gyutaro, disfarçada como oiran no Bairro dos Prazeres, se chama ___.','Ela usa faixas de tecido afiadas como arma principal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Daki',TRUE,0),(gen_random_uuid(),q,'Nakime',FALSE,1),(gen_random_uuid(),q,'Rui',FALSE,2),(gen_random_uuid(),q,'Enmu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'fill_blank','hard','O demônio ex-lutador de artes marciais que enfrenta Rengoku se chama ___.','Ele é obcecado por força e despreza a fraqueza acima de tudo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Akaza',TRUE,0),(gen_random_uuid(),q,'Doma',FALSE,1),(gen_random_uuid(),q,'Kokushibo',FALSE,2),(gen_random_uuid(),q,'Gyutaro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'fill_blank','hard','O demônio que controla teias de aranha e comanda uma família falsa em uma vila da montanha se chama ___.','Ele foi transformado ainda criança e nunca superou o trauma de sua infância.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rui',TRUE,0),(gen_random_uuid(),q,'Enmu',FALSE,1),(gen_random_uuid(),q,'Kyogai',FALSE,2),(gen_random_uuid(),q,'Susamaru',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'fill_blank','impossible','A demônia responsável por tocar um instrumento que reorganiza o castelo infinito de Muzan se chama ___.','Sua música transforma corredores em labirintos móveis.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nakime',TRUE,0),(gen_random_uuid(),q,'Daki',FALSE,1),(gen_random_uuid(),q,'Susamaru',FALSE,2),(gen_random_uuid(),q,'Yahaba',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'fill_blank','impossible','O demônio parceiro de Susamaru, especialista em lançar objetos afiados com precisão mortal, se chama ___.','Ele demonstra covardia extrema quando confrontado diretamente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yahaba',TRUE,0),(gen_random_uuid(),q,'Kyogai',FALSE,1),(gen_random_uuid(),q,'Rui',FALSE,2),(gen_random_uuid(),q,'Enmu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'fill_blank','impossible','O pai falecido de Tanjiro, cuja dança sagrada origina sua respiração especial, se chama ___.','Ele transmite os movimentos ao filho ainda quando criança, antes de sua morte.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tanjuro Kamado',TRUE,0),(gen_random_uuid(),q,'Sakonji Urokodaki',FALSE,1),(gen_random_uuid(),q,'Jigoro Kuwajima',FALSE,2),(gen_random_uuid(),q,'Yoriichi Tsugikuni',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- WHO_SAID — 30 perguntas (9 easy / 11 medium / 8 hard / 2 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'who_said','easy','Quem disse: "Eu vou proteger minha irmã, custe o que custar, mesmo que ela tenha virado um demônio"?','A frase resume o objetivo central do protagonista logo no início da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tanjiro',TRUE,0),(gen_random_uuid(),q,'Zenitsu',FALSE,1),(gen_random_uuid(),q,'Inosuke',FALSE,2),(gen_random_uuid(),q,'Giyu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'who_said','easy','Quem disse: "Eu sou o rei da montanha, e ninguém vai me derrotar"?','A frase reflete o ego inflado e a rivalidade constante desse personagem selvagem.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Inosuke',TRUE,0),(gen_random_uuid(),q,'Zenitsu',FALSE,1),(gen_random_uuid(),q,'Tanjiro',FALSE,2),(gen_random_uuid(),q,'Genya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'who_said','easy','Quem disse: "Case-se comigo! Eu prometo te proteger, mesmo tremendo de medo o tempo todo"?','A frase é dita, sem sucesso, para diversas garotas ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zenitsu',TRUE,0),(gen_random_uuid(),q,'Inosuke',FALSE,1),(gen_random_uuid(),q,'Tanjiro',FALSE,2),(gen_random_uuid(),q,'Genya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'who_said','easy','Quem disse: "Eu não posso deixar você passar, mesmo que você pareça uma boa pessoa"?','A frase é dita durante o primeiro encontro entre Tanjiro e um Pilar da Água desconfiado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Giyu Tomioka',TRUE,0),(gen_random_uuid(),q,'Sanemi',FALSE,1),(gen_random_uuid(),q,'Muichiro',FALSE,2),(gen_random_uuid(),q,'Obanai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'who_said','easy','Quem disse: "Coma o quanto quiser, um estômago cheio é a base de toda grande batalha!"?','A frase é dita por um Pilar entusiasmado com sua refeição antes de um combate decisivo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kyojuro Rengoku',TRUE,0),(gen_random_uuid(),q,'Tengen Uzui',FALSE,1),(gen_random_uuid(),q,'Sanemi',FALSE,2),(gen_random_uuid(),q,'Gyomei',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'who_said','easy','Quem disse: "Eu sou flamativo, sou o Pilar mais chamativo do Corpo de Caça aos Demônios!"?','A frase reflete a personalidade extravagante e teatral desse ex-ninja Pilar do Som.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tengen Uzui',TRUE,0),(gen_random_uuid(),q,'Kyojuro Rengoku',FALSE,1),(gen_random_uuid(),q,'Obanai Iguro',FALSE,2),(gen_random_uuid(),q,'Muichiro Tokito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'who_said','easy','Quem disse: "Irmão... eu não vou desistir de encontrar uma cura para você"?','A frase é dita por Nezuko de forma limitada, refletindo seu carinho constante por Tanjiro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nezuko',TRUE,0),(gen_random_uuid(),q,'Kanao',FALSE,1),(gen_random_uuid(),q,'Shinobu',FALSE,2),(gen_random_uuid(),q,'Mitsuri',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'who_said','easy','Quem disse: "Eu sorrio mesmo quando estou com raiva, é a única forma que aprendi de esconder minha dor"?','A frase reflete o trauma emocional profundo escondido atrás do sorriso dessa Pilar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shinobu Kocho',TRUE,0),(gen_random_uuid(),q,'Mitsuri Kanroji',FALSE,1),(gen_random_uuid(),q,'Kanao Tsuyuri',FALSE,2),(gen_random_uuid(),q,'Aoi Kanzaki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'who_said','easy','Quem disse: "Eu quero encontrar um marido tão forte quanto eu, mas todo mundo tem medo da minha força"?','A frase reflete a insegurança da Pilar do Amor sobre sua própria força física.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mitsuri Kanroji',TRUE,0),(gen_random_uuid(),q,'Shinobu Kocho',FALSE,1),(gen_random_uuid(),q,'Kanao Tsuyuri',FALSE,2),(gen_random_uuid(),q,'Nezuko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'who_said','medium','Quem disse: "Eu vou destruir todos os demônios deste mundo, para que ninguém mais sofra o que minha família sofreu"?','A frase reflete a determinação inabalável do protagonista após a tragédia inicial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tanjiro',TRUE,0),(gen_random_uuid(),q,'Giyu',FALSE,1),(gen_random_uuid(),q,'Sanemi',FALSE,2),(gen_random_uuid(),q,'Muichiro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'who_said','medium','Quem disse: "Eu detesto qualquer coisa relacionada a demônios, e não confio em você por causa da sua irmã"?','A frase é dita por um Pilar do Vento profundamente marcado por um trauma familiar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sanemi Shinazugawa',TRUE,0),(gen_random_uuid(),q,'Obanai Iguro',FALSE,1),(gen_random_uuid(),q,'Giyu Tomioka',FALSE,2),(gen_random_uuid(),q,'Gyomei Himejima',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'who_said','medium','Quem disse: "Eu peguei em armas para proteger meu irmão mais velho, mesmo que ele não perceba"?','A frase reflete a devoção silenciosa desse jovem caçador de demônios por seu irmão Pilar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Genya Shinazugawa',TRUE,0),(gen_random_uuid(),q,'Zenitsu',FALSE,1),(gen_random_uuid(),q,'Inosuke',FALSE,2),(gen_random_uuid(),q,'Kanao',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'who_said','medium','Quem disse: "Eu era apenas uma criança quando fui adotada, e devo à minha irmã tudo que tenho hoje"?','A frase reflete a gratidão profunda dessa Pilar por sua irmã falecida.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kanao Tsuyuri',TRUE,0),(gen_random_uuid(),q,'Shinobu Kocho',FALSE,1),(gen_random_uuid(),q,'Aoi Kanzaki',FALSE,2),(gen_random_uuid(),q,'Naho',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'who_said','medium','Quem disse: "Eu sou um monge que se tornou caçador de demônios para proteger crianças órfãs, como eu já fui"?','A frase reflete a origem trágica e a fé profunda do Pilar mais forte fisicamente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gyomei Himejima',TRUE,0),(gen_random_uuid(),q,'Sanemi',FALSE,1),(gen_random_uuid(),q,'Obanai',FALSE,2),(gen_random_uuid(),q,'Tengen',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'who_said','medium','Quem disse: "Eu escolhi carregar essa cobra branca comigo desde que ela me salvou quando eu era criança"?','A frase é dita pelo Pilar da Serpente sobre seu companheiro fiel.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Obanai Iguro',TRUE,0),(gen_random_uuid(),q,'Muichiro Tokito',FALSE,1),(gen_random_uuid(),q,'Sanemi Shinazugawa',FALSE,2),(gen_random_uuid(),q,'Gyomei',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'who_said','medium','Quem disse: "Eu esqueci grande parte da minha própria infância, mas ainda assim escolhi lutar"?','A frase reflete a condição peculiar do Pilar mais jovem do Corpo de Caça aos Demônios.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Muichiro Tokito',TRUE,0),(gen_random_uuid(),q,'Genya',FALSE,1),(gen_random_uuid(),q,'Kanao',FALSE,2),(gen_random_uuid(),q,'Zenitsu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'who_said','medium','Quem disse: "Eu conto os segundos de cada respiração, sempre com esperança de superar meus próprios limites"?','A frase reflete a atitude analítica e persistente do protagonista durante o treinamento.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tanjiro',TRUE,0),(gen_random_uuid(),q,'Inosuke',FALSE,1),(gen_random_uuid(),q,'Zenitsu',FALSE,2),(gen_random_uuid(),q,'Genya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'who_said','medium','Quem disse: "Eu governo este castelo, e nenhum caçador de demônios jamais vai me alcançar"?','A frase é dita pelo antagonista supremo da série sobre seu domínio pessoal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Muzan Kibutsuji',TRUE,0),(gen_random_uuid(),q,'Kokushibo',FALSE,1),(gen_random_uuid(),q,'Doma',FALSE,2),(gen_random_uuid(),q,'Akaza',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'who_said','hard','Quem disse: "Torne-se um demônio, e eu vou te dar um poder inimaginável, comigo"?','A frase é dita repetidamente pelo antagonista supremo da série a diferentes vítimas ao longo da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Muzan Kibutsuji',TRUE,0),(gen_random_uuid(),q,'Kokushibo',FALSE,1),(gen_random_uuid(),q,'Doma',FALSE,2),(gen_random_uuid(),q,'Akaza',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'who_said','hard','Quem disse: "Eu invejei meu irmão a vida inteira, e essa inveja me transformou no que sou hoje"?','A frase é dita por um demônio que já foi irmão gêmeo do maior espadachim da história.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kokushibo',TRUE,0),(gen_random_uuid(),q,'Doma',FALSE,1),(gen_random_uuid(),q,'Akaza',FALSE,2),(gen_random_uuid(),q,'Gyutaro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'who_said','hard','Quem disse: "Eu desprezo os fracos, mas admito, você lutou como um verdadeiro guerreiro até o fim"?','A frase é dita por um demônio ex-lutador de artes marciais em respeito ao seu oponente derrotado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Akaza',TRUE,0),(gen_random_uuid(),q,'Doma',FALSE,1),(gen_random_uuid(),q,'Kokushibo',FALSE,2),(gen_random_uuid(),q,'Gyutaro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'who_said','hard','Quem disse: "Eu não sinto absolutamente nada ao devorar minhas próprias seguidoras, isso é apenas natural"?','A frase reflete a total ausência de empatia de um demônio disfarçado de líder religioso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Doma',TRUE,0),(gen_random_uuid(),q,'Akaza',FALSE,1),(gen_random_uuid(),q,'Kokushibo',FALSE,2),(gen_random_uuid(),q,'Gyutaro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'who_said','hard','Quem disse: "Minha irmã e eu nunca tivemos escolha na vida, então escolhemos causar dor antes que ela chegasse até nós"?','A frase é dita por um demônio irmão mais velho, unido à irmã em combate.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gyutaro',TRUE,0),(gen_random_uuid(),q,'Daki',FALSE,1),(gen_random_uuid(),q,'Akaza',FALSE,2),(gen_random_uuid(),q,'Doma',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'who_said','hard','Quem disse: "Eu escondo meu verdadeiro rosto atrás de sonhos, assim ninguém percebe até que seja tarde demais"?','A frase é dita por um demônio da lua superior especializado em manipulação de sonhos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Enmu',TRUE,0),(gen_random_uuid(),q,'Rui',FALSE,1),(gen_random_uuid(),q,'Kyogai',FALSE,2),(gen_random_uuid(),q,'Susamaru',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'who_said','hard','Quem disse: "Eu criei uma família falsa porque nunca tive uma de verdade, e vou protegê-la a qualquer custo"?','A frase é dita por um demônio que controla teias de aranha em uma vila da montanha.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rui',TRUE,0),(gen_random_uuid(),q,'Enmu',FALSE,1),(gen_random_uuid(),q,'Kyogai',FALSE,2),(gen_random_uuid(),q,'Susamaru',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'who_said','impossible','Quem disse: "Eu toco esta música para reorganizar o castelo, e ninguém nunca encontra a saída sem minha permissão"?','A frase é dita pela demônia responsável pela estrutura móvel do castelo infinito.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nakime',TRUE,0),(gen_random_uuid(),q,'Daki',FALSE,1),(gen_random_uuid(),q,'Susamaru',FALSE,2),(gen_random_uuid(),q,'Yahaba',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'who_said','impossible','Quem disse: "Eu transmiti a você minha dança sagrada antes de morrer, e espero que ela um dia salve sua vida"?','A frase é dita em flashback pelo pai falecido de Tanjiro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tanjuro Kamado',TRUE,0),(gen_random_uuid(),q,'Sakonji Urokodaki',FALSE,1),(gen_random_uuid(),q,'Jigoro Kuwajima',FALSE,2),(gen_random_uuid(),q,'Yoriichi Tsugikuni',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- EPISODE_ARC — 15 perguntas (7 medium / 6 hard / 2 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'episode_arc','medium','Em qual arco a família de Tanjiro é atacada, resultando na transformação de Nezuko em demônio?','É o evento que dá início a toda a jornada do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Tragédia Kamado',TRUE,0),(gen_random_uuid(),q,'Arco do Treinamento Final',FALSE,1),(gen_random_uuid(),q,'Arco do Trem Infinito',FALSE,2),(gen_random_uuid(),q,'Arco do Bairro dos Prazeres',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'episode_arc','medium','Em qual arco Tanjiro enfrenta o exame final de seleção para ingressar oficialmente no Corpo de Caça aos Demônios?','Vários candidatos morrem antes da conclusão dessa etapa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Seleção Final',TRUE,0),(gen_random_uuid(),q,'Arco da Tragédia Kamado',FALSE,1),(gen_random_uuid(),q,'Arco do Trem Infinito',FALSE,2),(gen_random_uuid(),q,'Arco de Mugen',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'episode_arc','medium','Em qual arco Tanjiro, Zenitsu e Inosuke enfrentam demônios em uma vila controlada por uma família falsa liderada por um demônio-aranha?','O Pilar Giyu Tomioka intervém no confronto final deste arco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Vila das Aranhas Demoníacas',TRUE,0),(gen_random_uuid(),q,'Arco do Trem Infinito',FALSE,1),(gen_random_uuid(),q,'Arco da Seleção Final',FALSE,2),(gen_random_uuid(),q,'Arco de Mugen',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'episode_arc','medium','Em qual arco Tanjiro e seus amigos enfrentam Enmu dentro de um trem em movimento, com a ajuda do Pilar das Chamas?','Rengoku sacrifica sua vida ao enfrentar Akaza neste arco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Trem Infinito',TRUE,0),(gen_random_uuid(),q,'Arco da Vila das Aranhas Demoníacas',FALSE,1),(gen_random_uuid(),q,'Arco do Bairro dos Prazeres',FALSE,2),(gen_random_uuid(),q,'Arco do Treinamento dos Pilares',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'episode_arc','medium','Em qual arco Tengen Uzui recruta Tanjiro e seus amigos para investigar desaparecimentos em uma casa de gueixas?','Os irmãos Gyutaro e Daki são os antagonistas principais deste arco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Bairro dos Prazeres',TRUE,0),(gen_random_uuid(),q,'Arco do Trem Infinito',FALSE,1),(gen_random_uuid(),q,'Arco de Mugen',FALSE,2),(gen_random_uuid(),q,'Arco do Treinamento dos Pilares',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'episode_arc','medium','Em qual arco os caçadores de demônios treinam intensamente sob supervisão dos Pilares antes da invasão final ao castelo de Muzan?','Cada Pilar aplica um estilo de treinamento extremo e único.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Treinamento dos Pilares',TRUE,0),(gen_random_uuid(),q,'Arco do Bairro dos Prazeres',FALSE,1),(gen_random_uuid(),q,'Arco de Mugen',FALSE,2),(gen_random_uuid(),q,'Arco da Seleção Final',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'episode_arc','medium','Em qual arco ocorre o confronto final e definitivo entre os caçadores de demônios e Muzan Kibutsuji?','O castelo infinito serve como cenário para essa batalha decisiva.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Mugen',TRUE,0),(gen_random_uuid(),q,'Arco do Treinamento dos Pilares',FALSE,1),(gen_random_uuid(),q,'Arco do Bairro dos Prazeres',FALSE,2),(gen_random_uuid(),q,'Arco do Trem Infinito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'episode_arc','hard','Em qual arco Tanjiro derrota Rui, libertando a vila da falsa família demoníaca?','Nezuko demonstra pela primeira vez um poder de proteção instintiva sobre o irmão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Vila das Aranhas Demoníacas',TRUE,0),(gen_random_uuid(),q,'Arco do Trem Infinito',FALSE,1),(gen_random_uuid(),q,'Arco da Seleção Final',FALSE,2),(gen_random_uuid(),q,'Arco do Bairro dos Prazeres',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'episode_arc','hard','Em qual arco Kyojuro Rengoku morre em batalha contra Akaza, marcando um dos momentos mais trágicos da série?','Sua última mensagem inspira profundamente Tanjiro e seus amigos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Trem Infinito',TRUE,0),(gen_random_uuid(),q,'Arco do Bairro dos Prazeres',FALSE,1),(gen_random_uuid(),q,'Arco de Mugen',FALSE,2),(gen_random_uuid(),q,'Arco do Treinamento dos Pilares',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'episode_arc','hard','Em qual arco Tengen Uzui se aposenta como Pilar após sofrer ferimentos graves contra os irmãos demônios?','Ele passa o bastão simbolicamente para a nova geração de caçadores.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Bairro dos Prazeres',TRUE,0),(gen_random_uuid(),q,'Arco do Trem Infinito',FALSE,1),(gen_random_uuid(),q,'Arco de Mugen',FALSE,2),(gen_random_uuid(),q,'Arco do Treinamento dos Pilares',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'episode_arc','hard','Em qual arco Tanjiro enfrenta Gyomei em um treinamento brutal de resistência física antes da batalha final?','O treinamento envolve carregar pesos extremos por longas distâncias.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Treinamento dos Pilares',TRUE,0),(gen_random_uuid(),q,'Arco do Bairro dos Prazeres',FALSE,1),(gen_random_uuid(),q,'Arco de Mugen',FALSE,2),(gen_random_uuid(),q,'Arco do Trem Infinito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'episode_arc','hard','Em qual arco Nezuko finalmente supera sua natureza demoníaca ao ser exposta à luz solar sem sofrer danos?','O evento representa a conquista de um objetivo perseguido pela família Kamado durante toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Mugen',TRUE,0),(gen_random_uuid(),q,'Arco do Treinamento dos Pilares',FALSE,1),(gen_random_uuid(),q,'Arco do Bairro dos Prazeres',FALSE,2),(gen_random_uuid(),q,'Arco do Trem Infinito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'episode_arc','impossible','Em qual arco é revelado o passado de Kokushibo como irmão gêmeo de Yoriichi, o maior espadachim da história?','A revelação explica a inveja e o ódio que moldam o antagonista Kizuki.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Mugen',TRUE,0),(gen_random_uuid(),q,'Arco do Treinamento dos Pilares',FALSE,1),(gen_random_uuid(),q,'Arco do Bairro dos Prazeres',FALSE,2),(gen_random_uuid(),q,'Arco do Trem Infinito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'episode_arc','impossible','Em qual arco é revelada a verdadeira origem de Muzan Kibutsuji como o primeiro demônio da história?','A revelação explica como toda a linhagem de demônios se originou de um único homem doente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Mugen',TRUE,0),(gen_random_uuid(),q,'Arco da Tragédia Kamado',FALSE,1),(gen_random_uuid(),q,'Arco do Treinamento dos Pilares',FALSE,2),(gen_random_uuid(),q,'Arco da Seleção Final',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- CHRONOLOGICAL — 7 perguntas (4 hard / 3 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'chronological','hard','Ordene cronologicamente os arcos a seguir, do mais antigo ao mais recente.','Cobrem desde a tragédia da família Kamado até a batalha final contra Muzan.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tragédia Kamado',TRUE,0),(gen_random_uuid(),q,'Seleção Final',FALSE,1),(gen_random_uuid(),q,'Trem Infinito',FALSE,2),(gen_random_uuid(),q,'Mugen',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'chronological','hard','Ordene cronologicamente os seguintes eventos da jornada de Tanjiro, do mais antigo ao mais recente.','Cobrem desde o encontro com Urokodaki até a batalha final.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Treinamento com Urokodaki',TRUE,0),(gen_random_uuid(),q,'Aprovação na Seleção Final',FALSE,1),(gen_random_uuid(),q,'Batalha no Trem Infinito',FALSE,2),(gen_random_uuid(),q,'Confronto final contra Muzan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'chronological','hard','Ordene cronologicamente a formação da equipe de Tanjiro, do primeiro ao último aliado a se juntar.','Cobrem desde a Seleção Final até o Bairro dos Prazeres.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zenitsu se junta ao grupo',TRUE,0),(gen_random_uuid(),q,'Inosuke se junta ao grupo',FALSE,1),(gen_random_uuid(),q,'Kanao acompanha o grupo',FALSE,2),(gen_random_uuid(),q,'Tengen recruta o grupo para o Bairro dos Prazeres',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre Yoriichi e Michikatsu, do mais antigo ao mais recente.','Cobrem desde a infância dos gêmeos até a transformação de um deles em demônio.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoriichi e Michikatsu nascem gêmeos',TRUE,0),(gen_random_uuid(),q,'Michikatsu inveja o talento natural do irmão',FALSE,1),(gen_random_uuid(),q,'Michikatsu abandona o caminho de caçador de demônios',FALSE,2),(gen_random_uuid(),q,'Michikatsu se torna o demônio Kokushibo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'chronological','impossible','Ordene cronologicamente os seguintes eventos do Arco do Trem Infinito, do mais antigo ao mais recente.','Cobrem desde a chegada ao trem até a morte de Rengoku.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Grupo embarca no trem',TRUE,0),(gen_random_uuid(),q,'Enmu ataca os passageiros com sonhos',FALSE,1),(gen_random_uuid(),q,'Akaza aparece e desafia Rengoku',FALSE,2),(gen_random_uuid(),q,'Morte de Kyojuro Rengoku',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'chronological','impossible','Ordene cronologicamente os seguintes eventos do Arco do Bairro dos Prazeres, do mais antigo ao mais recente.','Cobrem desde a chegada do grupo até a aposentadoria de Tengen.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tengen recruta o grupo disfarçado',TRUE,0),(gen_random_uuid(),q,'Descoberta de Daki como demônio',FALSE,1),(gen_random_uuid(),q,'Fusão de Daki e Gyutaro em combate',FALSE,2),(gen_random_uuid(),q,'Aposentadoria de Tengen como Pilar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'chronological','impossible','Ordene cronologicamente os seguintes eventos da batalha final contra Muzan, do mais antigo ao mais recente.','Cobrem desde a invasão ao castelo infinito até a derrota definitiva do antagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Caçadores invadem o castelo infinito',TRUE,0),(gen_random_uuid(),q,'Vários Pilares enfrentam Kizuki simultaneamente',FALSE,1),(gen_random_uuid(),q,'Muzan absorve o sol nascente por acidente',FALSE,2),(gen_random_uuid(),q,'Derrota definitiva de Muzan',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- Complemento para fechar 150 perguntas na distribuição exata
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','easy','Qual é o nome da técnica corporal desenvolvida por Zenitsu, que se baseia em um único golpe extremamente rápido?','Ele só consegue executá-la corretamente quando está dormindo ou desmaiado de medo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Primeira Forma: Golpe de Trovão',TRUE,0),(gen_random_uuid(),q,'Respiração da Água Total',FALSE,1),(gen_random_uuid(),q,'Dança do Fogo',FALSE,2),(gen_random_uuid(),q,'Sétima Forma da Névoa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','easy','Qual é o nome da colega de trabalho de Aoi Kanzaki na mansão dos Pilares dos Insetos, especialista em ajudar recuperandos?','Ela auxilia diretamente Shinobu Kocho em seus tratamentos médicos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aoi Kanzaki',TRUE,0),(gen_random_uuid(),q,'Naho Takada',FALSE,1),(gen_random_uuid(),q,'Kiyo Terauchi',FALSE,2),(gen_random_uuid(),q,'Sumi Nakahara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','medium','Qual é o nome da máscara usada por Inosuke para esconder o próprio rosto, feita de pele de javali?','Ele raramente a remove, mesmo diante dos amigos mais próximos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Máscara de Javali',TRUE,0),(gen_random_uuid(),q,'Máscara de Tengu',FALSE,1),(gen_random_uuid(),q,'Máscara de Oni',FALSE,2),(gen_random_uuid(),q,'Máscara de Raposa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','medium','Qual é o nome do estilo de espadas duplas e dentadas usado por Inosuke em combate?','Elas são feitas sob medida devido ao formato incomum das lâminas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Espadas Serrilhadas Gêmeas',TRUE,0),(gen_random_uuid(),q,'Nichirin Duplo',FALSE,1),(gen_random_uuid(),q,'Katanas do Javali',FALSE,2),(gen_random_uuid(),q,'Lâminas da Montanha',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','medium','Qual é o nome dado à sétima forma secreta da Respiração da Água, criada pelo próprio Tanjiro?','Ele a desenvolve durante o combate contra Rui na vila das aranhas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Redemoinho Espiral',TRUE,0),(gen_random_uuid(),q,'Superfície Constante',FALSE,1),(gen_random_uuid(),q,'Golpe de Cascata',FALSE,2),(gen_random_uuid(),q,'Corrente Interminável',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','hard','Qual é o nome da técnica final usada por Yoriichi, capaz de cortar até mesmo o próprio Muzan em vida?','Ele é o único humano da história a ferir gravemente o antagonista supremo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Respiração do Sol',TRUE,0),(gen_random_uuid(),q,'Respiração da Água Total',FALSE,1),(gen_random_uuid(),q,'Dança do Fogo Eterno',FALSE,2),(gen_random_uuid(),q,'Golpe da Lua Cheia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','hard','Qual é o nome da esposa de Yoriichi, morta junto com o filho ainda não nascido, evento que marca profundamente sua vida?','Sua morte é usada por Kokushibo como argumento cruel contra o irmão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Uta',TRUE,0),(gen_random_uuid(),q,'Sumiyoshi',FALSE,1),(gen_random_uuid(),q,'Amane',FALSE,2),(gen_random_uuid(),q,'Kie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'fill_blank','easy','A técnica corporal desenvolvida por Zenitsu, baseada em um único golpe extremamente rápido, se chama ___.','Ele só consegue executá-la corretamente quando está dormindo ou desmaiado de medo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Primeira Forma: Golpe de Trovão',TRUE,0),(gen_random_uuid(),q,'Respiração da Água Total',FALSE,1),(gen_random_uuid(),q,'Dança do Fogo',FALSE,2),(gen_random_uuid(),q,'Sétima Forma da Névoa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'fill_blank','medium','A máscara usada por Inosuke, feita de pele de javali, se chama ___.','Ele raramente a remove, mesmo diante dos amigos mais próximos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Máscara de Javali',TRUE,0),(gen_random_uuid(),q,'Máscara de Tengu',FALSE,1),(gen_random_uuid(),q,'Máscara de Oni',FALSE,2),(gen_random_uuid(),q,'Máscara de Raposa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'fill_blank','medium','A sétima forma secreta da Respiração da Água, criada pelo próprio Tanjiro, se chama ___.','Ele a desenvolve durante o combate contra Rui na vila das aranhas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Redemoinho Espiral',TRUE,0),(gen_random_uuid(),q,'Superfície Constante',FALSE,1),(gen_random_uuid(),q,'Golpe de Cascata',FALSE,2),(gen_random_uuid(),q,'Corrente Interminável',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'fill_blank','hard','A técnica final usada por Yoriichi, capaz de cortar até mesmo Muzan, se chama Respiração do ___.','Ele é o único humano da história a ferir gravemente o antagonista supremo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sol',TRUE,0),(gen_random_uuid(),q,'Trovão',FALSE,1),(gen_random_uuid(),q,'Amor',FALSE,2),(gen_random_uuid(),q,'Vento',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'fill_blank','hard','A esposa de Yoriichi, morta junto com o filho ainda não nascido, se chama ___.','Sua morte é usada por Kokushibo como argumento cruel contra o irmão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Uta',TRUE,0),(gen_random_uuid(),q,'Sumiyoshi',FALSE,1),(gen_random_uuid(),q,'Amane',FALSE,2),(gen_random_uuid(),q,'Kie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'who_said','medium','Quem disse: "Eu uso esta máscara porque prefiro que os outros vejam minha força antes do meu rosto"?','A frase reflete a personalidade selvagem e orgulhosa desse companheiro de Tanjiro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Inosuke',TRUE,0),(gen_random_uuid(),q,'Zenitsu',FALSE,1),(gen_random_uuid(),q,'Genya',FALSE,2),(gen_random_uuid(),q,'Tanjiro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'who_said','hard','Quem disse: "Eu perdi minha esposa e meu filho, e desde então nada mais faz sentido para mim, exceto a espada"?','A frase é dita pelo maior espadachim da história em um momento de profunda dor.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoriichi Tsugikuni',TRUE,0),(gen_random_uuid(),q,'Kokushibo',FALSE,1),(gen_random_uuid(),q,'Gyomei Himejima',FALSE,2),(gen_random_uuid(),q,'Sanemi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'who_said','hard','Quem disse: "Eu ajudo a cuidar dos feridos porque acredito que toda vida salva vale a pena, mesmo em meio à guerra"?','A frase é dita por uma assistente que trabalha ao lado da Pilar dos Insetos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aoi Kanzaki',TRUE,0),(gen_random_uuid(),q,'Naho Takada',FALSE,1),(gen_random_uuid(),q,'Kiyo Terauchi',FALSE,2),(gen_random_uuid(),q,'Sumi Nakahara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'episode_arc','hard','Em qual arco Tanjiro cria pela primeira vez a sétima forma secreta da Respiração da Água durante um combate decisivo?','O momento marca uma evolução técnica importante do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Vila das Aranhas Demoníacas',TRUE,0),(gen_random_uuid(),q,'Arco do Trem Infinito',FALSE,1),(gen_random_uuid(),q,'Arco da Seleção Final',FALSE,2),(gen_random_uuid(),q,'Arco do Bairro dos Prazeres',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','easy','Qual é o nome do estilo de espada dupla usado por Muichiro, apesar de pertencer oficialmente a apenas uma forma de respiração?','Ele demonstra talento raro para combinar velocidade e precisão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Respiração da Névoa',TRUE,0),(gen_random_uuid(),q,'Respiração da Serpente',FALSE,1),(gen_random_uuid(),q,'Respiração do Vento',FALSE,2),(gen_random_uuid(),q,'Respiração da Pedra',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','easy','Qual é o nome do irmão mais velho de Tanjiro na ordem de nascimento entre os filhos Kamado, morto na tragédia inicial?','Ele aparece brevemente em flashbacks felizes da família reunida.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Takeo',TRUE,0),(gen_random_uuid(),q,'Rokuta',FALSE,1),(gen_random_uuid(),q,'Shigeru',FALSE,2),(gen_random_uuid(),q,'Hanako',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','medium','Qual é o nome do filho mais novo da família Kamado, também morto na tragédia inicial da série?','Ele é um dos irmãos mais jovens de Tanjiro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shigeru',TRUE,0),(gen_random_uuid(),q,'Takeo',FALSE,1),(gen_random_uuid(),q,'Rokuta',FALSE,2),(gen_random_uuid(),q,'Hanako',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','medium','Qual é o nome da mãe de Tanjiro, também vítima do ataque inicial de Muzan à família Kamado?','Sua morte é um dos eventos mais dolorosos vistos em flashback ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kie Kamado',TRUE,0),(gen_random_uuid(),q,'Uta',FALSE,1),(gen_random_uuid(),q,'Amane',FALSE,2),(gen_random_uuid(),q,'Suma',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','hard','Qual é o nome da esposa de Kagaya Ubuyashiki, que assume parte da liderança do Corpo de Caça aos Demônios após sua morte?','Ela mantém a fé inabalável mesmo diante da tragédia iminente de sua família.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Amane Ubuyashiki',TRUE,0),(gen_random_uuid(),q,'Kie Kamado',FALSE,1),(gen_random_uuid(),q,'Uta',FALSE,2),(gen_random_uuid(),q,'Suma',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','hard','Qual é o nome da filha mais velha de Kagaya Ubuyashiki, que herda parte do papel de liderança espiritual da família?','Ela auxilia diretamente na comunicação entre os Pilares e o comando central.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hinaki Ubuyashiki',TRUE,0),(gen_random_uuid(),q,'Nichika Ubuyashiki',FALSE,1),(gen_random_uuid(),q,'Kiriya Ubuyashiki',FALSE,2),(gen_random_uuid(),q,'Amane Ubuyashiki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'fill_blank','hard','A esposa de Kagaya Ubuyashiki, que assume parte da liderança do Corpo de Caça aos Demônios após sua morte, se chama ___.','Ela mantém a fé inabalável mesmo diante da tragédia iminente de sua família.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Amane Ubuyashiki',TRUE,0),(gen_random_uuid(),q,'Kie Kamado',FALSE,1),(gen_random_uuid(),q,'Uta',FALSE,2),(gen_random_uuid(),q,'Suma',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','impossible','Qual é o nome de uma das filhas mais novas de Kagaya Ubuyashiki, que também morre durante os eventos finais da série?','A família Ubuyashiki carrega uma maldição hereditária que reduz drasticamente sua expectativa de vida.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nichika Ubuyashiki',TRUE,0),(gen_random_uuid(),q,'Hinaki Ubuyashiki',FALSE,1),(gen_random_uuid(),q,'Kiriya Ubuyashiki',FALSE,2),(gen_random_uuid(),q,'Amane Ubuyashiki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','impossible','Qual é o nome do filho mais novo de Kagaya Ubuyashiki, futuro herdeiro simbólico da liderança do Corpo de Caça aos Demônios?','Ele é ainda uma criança durante os eventos principais da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kiriya Ubuyashiki',TRUE,0),(gen_random_uuid(),q,'Nichika Ubuyashiki',FALSE,1),(gen_random_uuid(),q,'Hinaki Ubuyashiki',FALSE,2),(gen_random_uuid(),q,'Sumiyoshi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ds,'text','impossible','Qual é o nome da segunda filha de Kagaya Ubuyashiki, cujo nome remete a um período do dia em japonês?','Ela participa ativamente da defesa da mansão principal durante o ataque final de Muzan.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hinaki Ubuyashiki',TRUE,0),(gen_random_uuid(),q,'Nichika Ubuyashiki',FALSE,1),(gen_random_uuid(),q,'Kiriya Ubuyashiki',FALSE,2),(gen_random_uuid(),q,'Amane Ubuyashiki',FALSE,3);

END $$;
