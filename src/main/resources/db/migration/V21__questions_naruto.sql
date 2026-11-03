-- ============================================================
--  V21 — Seed de perguntas: Naruto (150 perguntas)
--  Fonte: MyAnimeList + cânone do anime (foco na Parte 1,
--  pré-salto temporal — conteúdo de Naruto Shippuden fica
--  reservado para a migration do anime 'naruto-shippuden')
--  Distribuição: text 40% / fill_blank 25% / who_said 20% /
--                episode_arc 10% / chronological 5%
--  Sem repetição com V5. Regras R1-R7 aplicadas.
-- ============================================================

DO $$
DECLARE
    v_system UUID := '00000000-0000-0000-0000-000000000001';
    v_naruto UUID;
    q        UUID;
BEGIN
    SELECT id INTO v_naruto FROM animes WHERE slug = 'naruto' LIMIT 1;

    -- ══════════════════════════════════════════════════════════
    -- TEXT — 60 perguntas (18 easy / 21 medium / 15 hard / 6 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','easy','Qual é o nome do professor da Academia Ninja que treinou Naruto quando criança?','Ele é o primeiro a reconhecer o esforço de Naruto, entregando-lhe seu próprio protetor de testa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Iruka Umino',TRUE,0),(gen_random_uuid(),q,'Kakashi Hatake',FALSE,1),(gen_random_uuid(),q,'Asuma Sarutobi',FALSE,2),(gen_random_uuid(),q,'Might Guy',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','easy','Qual é o nome da colega de time de Naruto que é apaixonada por Sasuke?','Ela é uma das kunoichis mais talentosas em genjutsu do Time 7.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ino Yamanaka',FALSE,0),(gen_random_uuid(),q,'Sakura Haruno',TRUE,1),(gen_random_uuid(),q,'Hinata Hyuga',FALSE,2),(gen_random_uuid(),q,'Tenten',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','easy','A qual clã Hinata pertence, dotado do Byakugan?','O clã é uma das famílias mais tradicionais e poderosas de Konoha.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Uchiha',FALSE,0),(gen_random_uuid(),q,'Hyuga',TRUE,1),(gen_random_uuid(),q,'Senju',FALSE,2),(gen_random_uuid(),q,'Nara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','easy','Qual é o nome do cão farejador que acompanha Kiba Inuzuka em todas as missões?','Eles lutam de forma sincronizada, quase como uma única unidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Pakkun',FALSE,0),(gen_random_uuid(),q,'Akamaru',TRUE,1),(gen_random_uuid(),q,'Kuromaru',FALSE,2),(gen_random_uuid(),q,'Biscuit',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','easy','Qual é o nome do sensei responsável pelo Time 8, formado por Kiba, Hinata e Shino?','Ela é especialista em genjutsu e ilusões.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kurenai Yuhi',TRUE,0),(gen_random_uuid(),q,'Anko Mitarashi',FALSE,1),(gen_random_uuid(),q,'Shizune',FALSE,2),(gen_random_uuid(),q,'Yugao Uzuki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','easy','Qual é o nome do sensei responsável pelo Time 10, formado por Ino, Shikamaru e Choji?','Ele é fumante e possui lâminas de vento como arma característica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Asuma Sarutobi',TRUE,0),(gen_random_uuid(),q,'Kakashi Hatake',FALSE,1),(gen_random_uuid(),q,'Might Guy',FALSE,2),(gen_random_uuid(),q,'Iruka Umino',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','easy','Qual é o nome dos insetos usados por Shino Aburame em suas técnicas de combate?','Eles vivem dentro do corpo do usuário, se alimentando de chakra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kikaichu',TRUE,0),(gen_random_uuid(),q,'Doku Mushi',FALSE,1),(gen_random_uuid(),q,'Shikaku Mushi',FALSE,2),(gen_random_uuid(),q,'Kage Mushi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','easy','Qual é o nome do Terceiro Hokage de Konoha, mestre dos três Sannin lendários?','Ele retorna à liderança da vila após a morte do Quarto Hokage.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hiruzen Sarutobi',TRUE,0),(gen_random_uuid(),q,'Tobirama Senju',FALSE,1),(gen_random_uuid(),q,'Hashirama Senju',FALSE,2),(gen_random_uuid(),q,'Danzo Shimura',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','easy','Qual é o nome da vila oculta de origem de Gaara, Kankuro e Temari?','Fica em uma região desértica, aliada de Konoha.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kirigakure',FALSE,0),(gen_random_uuid(),q,'Sunagakure',TRUE,1),(gen_random_uuid(),q,'Kumogakure',FALSE,2),(gen_random_uuid(),q,'Iwagakure',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','easy','Qual é o nome do sensei de Rock Lee, Neji e Tenten, conhecido por seu entusiasmo extremo?','Ele veste um macacão verde e prega a filosofia da juventude.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Might Guy',TRUE,0),(gen_random_uuid(),q,'Asuma Sarutobi',FALSE,1),(gen_random_uuid(),q,'Kakashi Hatake',FALSE,2),(gen_random_uuid(),q,'Ebisu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','easy','Qual é o nome do cão-ninja falante, parceiro mais famoso de Kakashi?','Ele tem faro apurado e usa um colete azul.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Akamaru',FALSE,0),(gen_random_uuid(),q,'Pakkun',TRUE,1),(gen_random_uuid(),q,'Kuromaru',FALSE,2),(gen_random_uuid(),q,'Bisuke',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','easy','Qual é o nome do Sannin conhecido por suas invocações de sapos e por escrever romances adultos?','Ele se torna mentor pessoal de Naruto durante boa parte da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Jiraiya',TRUE,0),(gen_random_uuid(),q,'Orochimaru',FALSE,1),(gen_random_uuid(),q,'Tsunade',FALSE,2),(gen_random_uuid(),q,'Hiruzen',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','easy','Qual é o nome da Sannin médica, neta do Primeiro Hokage, que mais tarde se torna Hokage?','Ela é famosa por sua força monstruosa e habilidades de cura.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tsunade',TRUE,0),(gen_random_uuid(),q,'Shizune',FALSE,1),(gen_random_uuid(),q,'Kurenai',FALSE,2),(gen_random_uuid(),q,'Anko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','easy','Qual é o nome do Sannin traidor que deserta de Konoha em busca de poder proibido?','Ele é responsável por marcar Sasuke com um selo amaldiçoado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Orochimaru',TRUE,0),(gen_random_uuid(),q,'Jiraiya',FALSE,1),(gen_random_uuid(),q,'Danzo',FALSE,2),(gen_random_uuid(),q,'Kabuto',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','easy','Qual é o nome do ninja desertor da Névoa conhecido como o "Demônio da Névoa"?','Ele é contratado para assassinar um construtor de pontes na Terra das Ondas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zabuza Momochi',TRUE,0),(gen_random_uuid(),q,'Kisame Hoshigaki',FALSE,1),(gen_random_uuid(),q,'Raiga Kurosuki',FALSE,2),(gen_random_uuid(),q,'Ao',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','easy','Qual é o nome do garoto que protege Zabuza e possui controle sobre técnicas de gelo?','Ele é órfão e considera Zabuza como uma figura paterna.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Haku',TRUE,0),(gen_random_uuid(),q,'Suigetsu',FALSE,1),(gen_random_uuid(),q,'Yagura',FALSE,2),(gen_random_uuid(),q,'Chojuro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','easy','Qual é o nome do neto do Terceiro Hokage que idolatra Naruto como rival?','Ele costuma tentar armar pegadinhas contra o próprio avô.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Konohamaru Sarutobi',TRUE,0),(gen_random_uuid(),q,'Udon',FALSE,1),(gen_random_uuid(),q,'Moegi',FALSE,2),(gen_random_uuid(),q,'Ebisu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','easy','Qual é o sonho declarado de Naruto Uzumaki desde o início da série?','Ele quer ser reconhecido por toda a vila que antes o rejeitava.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Se tornar o ninja mais rico de Konoha',FALSE,0),(gen_random_uuid(),q,'Se tornar Hokage',TRUE,1),(gen_random_uuid(),q,'Derrotar Sasuke em duelo',FALSE,2),(gen_random_uuid(),q,'Viajar por todas as vilas ninjas',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','medium','Qual é o nome da floresta perigosa onde ocorre a segunda fase do Exame Chunin?','Está repleta de animais gigantes e armadilhas naturais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Floresta da Morte',TRUE,0),(gen_random_uuid(),q,'Floresta Sombria',FALSE,1),(gen_random_uuid(),q,'Bosque dos Kunais',FALSE,2),(gen_random_uuid(),q,'Vale das Sombras',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','medium','Qual é o nome do enorme chefe sapo invocado por Jiraiya em combates decisivos?','Ele é montado por Jiraiya e depois por Naruto em batalhas importantes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gamabunta',TRUE,0),(gen_random_uuid(),q,'Gamakichi',FALSE,1),(gen_random_uuid(),q,'Gamatatsu',FALSE,2),(gen_random_uuid(),q,'Gamahiro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','medium','Como é chamado o selo que Orochimaru aplica no pescoço de Sasuke durante o Exame Chunin?','Concede poder temporário, mas corrói o corpo do usuário aos poucos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Selo Amaldiçoado',TRUE,0),(gen_random_uuid(),q,'Selo do Dragão',FALSE,1),(gen_random_uuid(),q,'Marca da Serpente',FALSE,2),(gen_random_uuid(),q,'Selo de Sacrifício',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','medium','Qual é o nome do grupo de quatro ninjas do Som que escolta Sasuke até o esconderijo de Orochimaru?','Sakon é considerado o líder informal deste grupo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Som Quatro',TRUE,0),(gen_random_uuid(),q,'Akatsuki',FALSE,1),(gen_random_uuid(),q,'Sete Espadachins',FALSE,2),(gen_random_uuid(),q,'Raiz',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','medium','Qual é o nome da técnica de Kankuro que controla bonecos amaldiçoados em batalha?','Ele carrega os bonecos enrolados nas costas durante as missões.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kugutsu no Jutsu',TRUE,0),(gen_random_uuid(),q,'Ningyo no Jutsu',FALSE,1),(gen_random_uuid(),q,'Karakuri no Jutsu',FALSE,2),(gen_random_uuid(),q,'Kagerou no Jutsu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','medium','Qual é o nome da armadura de areia que protege automaticamente o corpo de Gaara?','Ela reage instintivamente sempre que ele corre perigo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Suna no Yoroi',TRUE,0),(gen_random_uuid(),q,'Suna Bunshin',FALSE,1),(gen_random_uuid(),q,'Sabaku Kyu',FALSE,2),(gen_random_uuid(),q,'Ryusa Bakuryu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','medium','Qual é o nome da técnica de Neji, baseada no Byakugan, que ataca 64 pontos de chakra do oponente?','É a técnica final e mais poderosa de sua linha de combate corpo a corpo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hakke Rokujuyon Sho',TRUE,0),(gen_random_uuid(),q,'Hakkesho Kaiten',FALSE,1),(gen_random_uuid(),q,'Juho Soshiken',FALSE,2),(gen_random_uuid(),q,'Hakke Kusho',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','medium','Qual é o nome dado ao estilo de combate corpo a corpo extremo praticado por Rock Lee e Might Guy?','É o único tipo de técnica que Rock Lee consegue usar, já que não tem talento para ninjutsu ou genjutsu.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Taijutsu',TRUE,0),(gen_random_uuid(),q,'Kenjutsu',FALSE,1),(gen_random_uuid(),q,'Bukijutsu',FALSE,2),(gen_random_uuid(),q,'Kobujutsu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','medium','Como se chama o exame que testa genins de diversas vilas para determinar sua promoção a chunin?','Konoha e Suna sediam uma edição conjunta desse exame durante o arco inicial da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Exame Jonin',FALSE,0),(gen_random_uuid(),q,'Exame Chunin',TRUE,1),(gen_random_uuid(),q,'Torneio dos Kages',FALSE,2),(gen_random_uuid(),q,'Prova de Genin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','medium','Qual é o nome verdadeiro do Kazekage assassinado e substituído por Orochimaru antes da invasão a Konoha?','Ele era o pai de Gaara, Kankuro e Temari.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rasa',TRUE,0),(gen_random_uuid(),q,'Yashamaru',FALSE,1),(gen_random_uuid(),q,'Baki',FALSE,2),(gen_random_uuid(),q,'Chiyo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','medium','O símbolo estampado no protetor de testa dos ninjas de Konoha representa qual vila?','É reconhecido por todo o continente shinobi.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vila Oculta da Folha',TRUE,0),(gen_random_uuid(),q,'Vila Oculta da Areia',FALSE,1),(gen_random_uuid(),q,'Vila Oculta da Névoa',FALSE,2),(gen_random_uuid(),q,'Vila Oculta da Nuvem',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','medium','Qual é o nome da técnica do clã Akimichi que expande partes do corpo para ataques físicos?','Choji é o principal usuário conhecido dessa técnica na série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Baika no Jutsu',TRUE,0),(gen_random_uuid(),q,'Bubun Baika',FALSE,1),(gen_random_uuid(),q,'Chogata Baika',FALSE,2),(gen_random_uuid(),q,'Nikudan Sensha',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','medium','Qual é o nome da técnica de sombras usada por Shikamaru para prender e controlar o inimigo?','Ele a estende usando qualquer sombra próxima disponível no terreno.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kagemane no Jutsu',TRUE,0),(gen_random_uuid(),q,'Kage Bunshin',FALSE,1),(gen_random_uuid(),q,'Kagenui no Jutsu',FALSE,2),(gen_random_uuid(),q,'Kagegui no Jutsu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','medium','Qual é o nome da técnica do clã Yamanaka, usada por Ino, que transfere sua mente para o corpo do oponente?','É extremamente arriscada, pois deixa o corpo original indefeso durante o uso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shintenshin no Jutsu',TRUE,0),(gen_random_uuid(),q,'Shinranshin no Jutsu',FALSE,1),(gen_random_uuid(),q,'Kokuangyo no Jutsu',FALSE,2),(gen_random_uuid(),q,'Nenrin no Jutsu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','medium','Qual é o nome do tio de Gaara que tenta assassiná-lo por ordem do próprio Kazekage?','O evento marca profundamente a infância solitária de Gaara.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yashamaru',TRUE,0),(gen_random_uuid(),q,'Baki',FALSE,1),(gen_random_uuid(),q,'Rasa',FALSE,2),(gen_random_uuid(),q,'Ebizo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','medium','Qual é o nome da Bijuu selada dentro de Gaara desde o seu nascimento?','Diferente de Naruto, Gaara nunca teve controle total sobre essa besta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shukaku',TRUE,0),(gen_random_uuid(),q,'Matatabi',FALSE,1),(gen_random_uuid(),q,'Isobu',FALSE,2),(gen_random_uuid(),q,'Son Goku',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','hard','A qual grupo de elite Zabuza Momochi pertencia antes de desertar de sua vila natal?','Eram os espadachins lendários de Kirigakure, cada um com uma lâmina única.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sete Espadachins da Névoa',TRUE,0),(gen_random_uuid(),q,'Guarda Real de Kiri',FALSE,1),(gen_random_uuid(),q,'Anbu da Névoa',FALSE,2),(gen_random_uuid(),q,'Caçadores de Kiri',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','hard','Qual é o nome da técnica de Sasuke que concentra eletricidade cortante na palma da mão?','Foi aprendida diretamente com Kakashi, adaptada do Raikiri original.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chidori',TRUE,0),(gen_random_uuid(),q,'Raikiri',FALSE,1),(gen_random_uuid(),q,'Rasengan',FALSE,2),(gen_random_uuid(),q,'Kirin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','hard','Qual é o nome da versão original da técnica de Sasuke, criada e usada por Kakashi?','O nome significa literalmente "Cortador Relâmpago".',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Raikiri',TRUE,0),(gen_random_uuid(),q,'Chidori',FALSE,1),(gen_random_uuid(),q,'Raiton Bunshin',FALSE,2),(gen_random_uuid(),q,'Denkou',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','hard','Qual é o nome do parceiro de Itachi na Akatsuki, um ex-ninja da Névoa com pele azulada?','Ele carrega uma espada capaz de absorver chakra ao cortar o inimigo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hoshigaki Kisame',TRUE,0),(gen_random_uuid(),q,'Deidara',FALSE,1),(gen_random_uuid(),q,'Kakuzu',FALSE,2),(gen_random_uuid(),q,'Zetsu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','hard','Qual é o nome da espada empunhada por Kisame, capaz de absorver chakra ao cortar oponentes?','A lâmina é revestida de escamas e destrói tecidos em vez de cortá-los limpo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Samehada',TRUE,0),(gen_random_uuid(),q,'Kubikiribocho',FALSE,1),(gen_random_uuid(),q,'Nuibari',FALSE,2),(gen_random_uuid(),q,'Kabutowari',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','hard','Qual é o nome da técnica de genjutsu de Itachi capaz de infligir 72 horas de tortura mental em poucos segundos?','Requer contato visual direto para ser ativada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tsukuyomi',TRUE,0),(gen_random_uuid(),q,'Amaterasu',FALSE,1),(gen_random_uuid(),q,'Izanami',FALSE,2),(gen_random_uuid(),q,'Kotoamatsukami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','hard','Quem é o irmão mais velho de Sasuke, responsável pelo massacre de todo o Clã Uchiha?','O evento trágico é o que motiva a busca de Sasuke por vingança.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Itachi Uchiha',TRUE,0),(gen_random_uuid(),q,'Shisui Uchiha',FALSE,1),(gen_random_uuid(),q,'Obito Uchiha',FALSE,2),(gen_random_uuid(),q,'Fugaku Uchiha',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','hard','Qual é o nome do ninja médico, discípulo de Orochimaru, que se infiltra disfarçado no Exame Chunin?','Ele usa óculos e carrega um pergaminho com informações detalhadas sobre os concorrentes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kabuto Yakushi',TRUE,0),(gen_random_uuid(),q,'Yoroi Akadou',FALSE,1),(gen_random_uuid(),q,'Misumi Tsurugi',FALSE,2),(gen_random_uuid(),q,'Dosu Kinuta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','hard','Qual é o nome do fundador de Konoha e Primeiro Hokage da vila?','Ele é lembrado por sua habilidade única de controlar madeira.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hashirama Senju',TRUE,0),(gen_random_uuid(),q,'Tobirama Senju',FALSE,1),(gen_random_uuid(),q,'Hiruzen Sarutobi',FALSE,2),(gen_random_uuid(),q,'Madara Uchiha',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','hard','Qual é o nome do rival histórico de Hashirama na fundação de Konoha, líder do Clã Uchiha?','Ele é mencionado como um dos maiores usuários do Sharingan da história.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Madara Uchiha',TRUE,0),(gen_random_uuid(),q,'Itachi Uchiha',FALSE,1),(gen_random_uuid(),q,'Fugaku Uchiha',FALSE,2),(gen_random_uuid(),q,'Obito Uchiha',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','hard','Qual é o nome da técnica de Choji que transforma seu corpo em uma bola gigante para rolar sobre inimigos?','É uma variação ofensiva das técnicas de expansão do Clã Akimichi.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nikudan Sensha',TRUE,0),(gen_random_uuid(),q,'Baika no Jutsu',FALSE,1),(gen_random_uuid(),q,'Chou Baika',FALSE,2),(gen_random_uuid(),q,'Bubun Baika',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','hard','Qual é o nome da técnica de Tenten que invoca dezenas de armas simultaneamente a partir de dois pergaminhos?','Ela gira no ar enquanto libera as armas em sequência.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Soshoryu',TRUE,0),(gen_random_uuid(),q,'Bunshin Buki',FALSE,1),(gen_random_uuid(),q,'Souguu Kai',FALSE,2),(gen_random_uuid(),q,'Kanshou Bakuha',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','hard','Qual clã de Konoha, ao qual Kushina pertencia, era historicamente responsável por técnicas avançadas de selamento?','Konoha absorveu boa parte de seus sobreviventes após a destruição de sua vila original.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Uzumaki',TRUE,0),(gen_random_uuid(),q,'Senju',FALSE,1),(gen_random_uuid(),q,'Uchiha',FALSE,2),(gen_random_uuid(),q,'Hyuga',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','hard','Após o massacre cometido por Itachi, quantos membros do Clã Uchiha restam vivos em Konoha?','Um deles é o próprio autor do massacre, que deixa Sasuke intencionalmente vivo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Apenas um: Sasuke',FALSE,0),(gen_random_uuid(),q,'Dois: Sasuke e Itachi',TRUE,1),(gen_random_uuid(),q,'Três, incluindo um primo distante',FALSE,2),(gen_random_uuid(),q,'Nenhum sobrevivente',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','impossible','Qual é o nome do time secreto de operações especiais de Konoha ao qual Kakashi pertenceu quando jovem?','Seus membros usam máscaras de animais durante as missões.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'ANBU',TRUE,0),(gen_random_uuid(),q,'Raiz',FALSE,1),(gen_random_uuid(),q,'Hunter-nin',FALSE,2),(gen_random_uuid(),q,'Guarda Real',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','impossible','Qual é o nome do pergaminho roubado por Naruto no início da série, contendo o Kage Bunshin no Jutsu?','Mizuki o convence a roubá-lo como parte de um plano de traição.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Pergaminho Proibido',TRUE,0),(gen_random_uuid(),q,'Pergaminho dos Sábios',FALSE,1),(gen_random_uuid(),q,'Pergaminho Uzumaki',FALSE,2),(gen_random_uuid(),q,'Pergaminho Hokage',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','impossible','Qual ninja idosa da Areia ensina Kankuro a controlar marionetes de batalha?','Ela também é uma das especialistas em venenos mais respeitadas da vila.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chiyo',TRUE,0),(gen_random_uuid(),q,'Baki',FALSE,1),(gen_random_uuid(),q,'Ebizo',FALSE,2),(gen_random_uuid(),q,'Karura',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','impossible','Quem foi o oponente de Naruto na primeira fase de combates individuais do Exame Chunin?','Os dois já haviam se enfrentado informalmente antes, no dia da formação das equipes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kiba Inuzuka',TRUE,0),(gen_random_uuid(),q,'Shino Aburame',FALSE,1),(gen_random_uuid(),q,'Choji Akimichi',FALSE,2),(gen_random_uuid(),q,'Neji Hyuga',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','impossible','Qual é o nome do ninja do Som derrotado por Sasuke no primeiro round dos combates individuais do Exame Chunin?','Ele tentava sugar o chakra de Sasuke através de um jutsu especial nas mãos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoroi Akadou',TRUE,0),(gen_random_uuid(),q,'Misumi Tsurugi',FALSE,1),(gen_random_uuid(),q,'Dosu Kinuta',FALSE,2),(gen_random_uuid(),q,'Zaku Abumi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','impossible','Qual foi o resultado da luta entre Rock Lee e Gaara durante o Exame Chunin?','Guy intervém no último instante para salvar a vida do próprio aluno.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Lee vence por desistência de Gaara',FALSE,0),(gen_random_uuid(),q,'Lee é derrotado, com braço e perna gravemente feridos',TRUE,1),(gen_random_uuid(),q,'A luta termina empatada',FALSE,2),(gen_random_uuid(),q,'Lee vence por nocaute técnico',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- FILL_BLANK — 38 perguntas (11 easy / 13 medium / 10 hard / 4 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'fill_blank','easy','Naruto sonha em se tornar ___ da Vila da Folha.','É o objetivo que ele declara desde o primeiro episódio da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hokage',TRUE,0),(gen_random_uuid(),q,'Kazekage',FALSE,1),(gen_random_uuid(),q,'Anbu',FALSE,2),(gen_random_uuid(),q,'Sannin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'fill_blank','easy','A montanha com os rostos esculpidos dos líderes de Konoha é chamada de Monumento dos ___.','Fica visível de praticamente qualquer ponto da vila.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hokage',TRUE,0),(gen_random_uuid(),q,'Sannin',FALSE,1),(gen_random_uuid(),q,'Fundadores',FALSE,2),(gen_random_uuid(),q,'Anciões',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'fill_blank','easy','Sasuke pertence ao clã ___, famoso pelo Sharingan.','O clã foi quase completamente exterminado antes do início da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Uchiha',TRUE,0),(gen_random_uuid(),q,'Hyuga',FALSE,1),(gen_random_uuid(),q,'Senju',FALSE,2),(gen_random_uuid(),q,'Uzumaki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'fill_blank','easy','Hinata pertence ao clã ___, portador do Byakugan.','É um dos clãs mais tradicionais e respeitados de Konoha.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hyuga',TRUE,0),(gen_random_uuid(),q,'Uchiha',FALSE,1),(gen_random_uuid(),q,'Nara',FALSE,2),(gen_random_uuid(),q,'Aburame',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'fill_blank','easy','O animal companheiro de Kiba Inuzuka se chama ___.','Ele cresce ao longo da série até se tornar do tamanho de um cavalo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Akamaru',TRUE,0),(gen_random_uuid(),q,'Pakkun',FALSE,1),(gen_random_uuid(),q,'Kuromaru',FALSE,2),(gen_random_uuid(),q,'Biscuit',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'fill_blank','easy','Shikamaru é membro do clã ___, especializado em manipular sombras.','Ele é considerado o gênio tático mais preguiçoso de sua geração.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nara',TRUE,0),(gen_random_uuid(),q,'Akimichi',FALSE,1),(gen_random_uuid(),q,'Yamanaka',FALSE,2),(gen_random_uuid(),q,'Aburame',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'fill_blank','easy','Choji é membro do clã ___, especializado em técnicas de expansão corporal.','Sua família também é conhecida pela paixão por comida.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Akimichi',TRUE,0),(gen_random_uuid(),q,'Nara',FALSE,1),(gen_random_uuid(),q,'Yamanaka',FALSE,2),(gen_random_uuid(),q,'Inuzuka',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'fill_blank','easy','Ino é membro do clã ___, especializado em técnicas de transferência de mente.','Ela forma, junto com Shikamaru e Choji, o trio conhecido como Ino-Shika-Cho.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yamanaka',TRUE,0),(gen_random_uuid(),q,'Nara',FALSE,1),(gen_random_uuid(),q,'Akimichi',FALSE,2),(gen_random_uuid(),q,'Hyuga',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'fill_blank','easy','O protetor de metal usado na testa pelos ninjas é chamado de ___.','Cada um exibe o símbolo da vila à qual o portador pertence.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hitai-ate',TRUE,0),(gen_random_uuid(),q,'Kunai Guard',FALSE,1),(gen_random_uuid(),q,'Shinobi Ate',FALSE,2),(gen_random_uuid(),q,'Konoha Ban',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'fill_blank','easy','Iruka Umino é o professor responsável por treinar Naruto na ___ antes de se tornar genin.','É o mesmo lugar onde Naruto arma diversas pegadinhas quando criança.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Academia Ninja',TRUE,0),(gen_random_uuid(),q,'Torre Hokage',FALSE,1),(gen_random_uuid(),q,'Floresta da Morte',FALSE,2),(gen_random_uuid(),q,'Sede da ANBU',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'fill_blank','easy','O símbolo estampado na testeira de Konoha representa a Vila Oculta da ___.','É a vila natal de Naruto, Sasuke e Sakura.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Folha',TRUE,0),(gen_random_uuid(),q,'Areia',FALSE,1),(gen_random_uuid(),q,'Névoa',FALSE,2),(gen_random_uuid(),q,'Nuvem',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'fill_blank','medium','Jiraiya invoca o grande chefe sapo chamado ___ em combates decisivos.','Ele é montado como uma espécie de veículo de guerra gigante.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gamabunta',TRUE,0),(gen_random_uuid(),q,'Gamakichi',FALSE,1),(gen_random_uuid(),q,'Gamahiro',FALSE,2),(gen_random_uuid(),q,'Gamaken',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'fill_blank','medium','Tsunade é neta do ___ Hokage, fundador de Konoha.','Ela herdou parte do chakra especial de cura de sua linhagem Senju.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Primeiro',TRUE,0),(gen_random_uuid(),q,'Segundo',FALSE,1),(gen_random_uuid(),q,'Terceiro',FALSE,2),(gen_random_uuid(),q,'Quarto',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'fill_blank','medium','Orochimaru marca Sasuke com o ___, um selo amaldiçoado aplicado no pescoço.','O selo desperta poder às custas da saúde física do portador.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Selo Amaldiçoado',TRUE,0),(gen_random_uuid(),q,'Selo do Dragão',FALSE,1),(gen_random_uuid(),q,'Marca da Serpente',FALSE,2),(gen_random_uuid(),q,'Selo de Sacrifício',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'fill_blank','medium','A segunda fase do Exame Chunin ocorre dentro da ___, uma floresta repleta de perigos.','Os times têm cinco dias para atravessá-la com pergaminhos completos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Floresta da Morte',TRUE,0),(gen_random_uuid(),q,'Floresta Sombria',FALSE,1),(gen_random_uuid(),q,'Bosque dos Kunais',FALSE,2),(gen_random_uuid(),q,'Vale das Sombras',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'fill_blank','medium','Kankuro controla bonecos de batalha usando a técnica chamada ___.','Ele carrega os bonecos enrolados em faixas nas costas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kugutsu no Jutsu',TRUE,0),(gen_random_uuid(),q,'Ningyo no Jutsu',FALSE,1),(gen_random_uuid(),q,'Karakuri no Jutsu',FALSE,2),(gen_random_uuid(),q,'Kagerou no Jutsu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'fill_blank','medium','A areia que protege automaticamente o corpo de Gaara é chamada de ___.','Ela reage instintivamente sempre que ele está em perigo, mesmo dormindo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Suna no Yoroi',TRUE,0),(gen_random_uuid(),q,'Suna Bunshin',FALSE,1),(gen_random_uuid(),q,'Sabaku Kyu',FALSE,2),(gen_random_uuid(),q,'Ryusa Bakuryu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'fill_blank','medium','Neji usa a técnica Hakke Rokujuyon Sho, que ataca ___ pontos de chakra do oponente.','O nome da técnica já indica esse número exato de golpes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'64',TRUE,0),(gen_random_uuid(),q,'32',FALSE,1),(gen_random_uuid(),q,'128',FALSE,2),(gen_random_uuid(),q,'16',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'fill_blank','medium','Rock Lee é treinado exclusivamente em ___, já que não consegue usar ninjutsu ou genjutsu.','Sua força bruta e velocidade compensam essa limitação.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Taijutsu',TRUE,0),(gen_random_uuid(),q,'Kenjutsu',FALSE,1),(gen_random_uuid(),q,'Bukijutsu',FALSE,2),(gen_random_uuid(),q,'Kobujutsu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'fill_blank','medium','Shikamaru prende o inimigo no lugar usando a técnica chamada ___.','Depois de imobilizado, o oponente é forçado a copiar cada movimento de Shikamaru.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kagemane no Jutsu',TRUE,0),(gen_random_uuid(),q,'Kage Bunshin',FALSE,1),(gen_random_uuid(),q,'Kagenui no Jutsu',FALSE,2),(gen_random_uuid(),q,'Kagegui no Jutsu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'fill_blank','medium','Ino usa a técnica Shintenshin no Jutsu para transferir sua ___ para o corpo do oponente.','Enquanto o jutsu dura, seu próprio corpo fica completamente indefeso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mente',TRUE,0),(gen_random_uuid(),q,'Alma',FALSE,1),(gen_random_uuid(),q,'Memória',FALSE,2),(gen_random_uuid(),q,'Energia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'fill_blank','hard','O tio de Gaara, responsável por tentar assassiná-lo na infância, se chama ___.','O ataque foi uma ordem secreta do próprio Kazekage, pai de Gaara.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yashamaru',TRUE,0),(gen_random_uuid(),q,'Baki',FALSE,1),(gen_random_uuid(),q,'Rasa',FALSE,2),(gen_random_uuid(),q,'Ebizo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'fill_blank','hard','A Bijuu selada em Gaara desde o nascimento é chamada de ___.','Diferente de Naruto, Gaara nunca conseguiu conviver em harmonia com a besta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shukaku',TRUE,0),(gen_random_uuid(),q,'Matatabi',FALSE,1),(gen_random_uuid(),q,'Isobu',FALSE,2),(gen_random_uuid(),q,'Son Goku',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'fill_blank','hard','A técnica que permite a um ninja transformar completamente sua aparência é chamada de ___.','É uma das primeiras habilidades ensinadas na Academia Ninja.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Henge no Jutsu',TRUE,0),(gen_random_uuid(),q,'Kawarimi no Jutsu',FALSE,1),(gen_random_uuid(),q,'Bunshin no Jutsu',FALSE,2),(gen_random_uuid(),q,'Genjutsu Kai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'fill_blank','hard','Zabuza Momochi pertencia ao grupo de elite chamado ___, os espadachins lendários de Kirigakure.','Cada membro do grupo empunha uma espada lendária diferente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sete Espadachins da Névoa',TRUE,0),(gen_random_uuid(),q,'Guarda Real de Kiri',FALSE,1),(gen_random_uuid(),q,'Anbu da Névoa',FALSE,2),(gen_random_uuid(),q,'Caçadores de Kiri',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'fill_blank','hard','A técnica de Sasuke que concentra eletricidade cortante na palma da mão se chama ___.','Foi ensinada por Kakashi, que possui sua própria versão dessa técnica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chidori',TRUE,0),(gen_random_uuid(),q,'Raikiri',FALSE,1),(gen_random_uuid(),q,'Rasengan',FALSE,2),(gen_random_uuid(),q,'Kirin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'fill_blank','hard','O parceiro de Itachi na Akatsuki, um ex-ninja da Névoa com pele azulada, se chama ___.','Ele carrega uma espada capaz de destruir chakra ao invés de apenas cortar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hoshigaki Kisame',TRUE,0),(gen_random_uuid(),q,'Deidara',FALSE,1),(gen_random_uuid(),q,'Kakuzu',FALSE,2),(gen_random_uuid(),q,'Zetsu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'fill_blank','hard','A espada de Kisame, capaz de absorver chakra ao cortar o oponente, se chama ___.','Ela é revestida de escamas afiadas ao invés de uma lâmina lisa tradicional.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Samehada',TRUE,0),(gen_random_uuid(),q,'Kubikiribocho',FALSE,1),(gen_random_uuid(),q,'Nuibari',FALSE,2),(gen_random_uuid(),q,'Kabutowari',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'fill_blank','hard','O fundador de Konoha e Primeiro Hokage se chama ___.','Ele firmou a paz com o Clã Uchiha para fundar a vila em conjunto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hashirama Senju',TRUE,0),(gen_random_uuid(),q,'Tobirama Senju',FALSE,1),(gen_random_uuid(),q,'Hiruzen Sarutobi',FALSE,2),(gen_random_uuid(),q,'Madara Uchiha',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'fill_blank','impossible','O pergaminho roubado por Naruto no início da série, contendo o Kage Bunshin no Jutsu, é chamado de ___.','Mizuki o engana para roubá-lo como parte de um plano de traição.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Pergaminho Proibido',TRUE,0),(gen_random_uuid(),q,'Pergaminho dos Sábios',FALSE,1),(gen_random_uuid(),q,'Pergaminho Uzumaki',FALSE,2),(gen_random_uuid(),q,'Pergaminho Hokage',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'fill_blank','impossible','A ninja idosa da Areia que ensina Kankuro a controlar marionetes se chama ___.','Ela também é especialista em técnicas de veneno.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chiyo',TRUE,0),(gen_random_uuid(),q,'Baki',FALSE,1),(gen_random_uuid(),q,'Ebizo',FALSE,2),(gen_random_uuid(),q,'Karura',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'fill_blank','impossible','O time de operações especiais de Konoha ao qual Kakashi pertenceu quando jovem se chama ___.','Seus integrantes atuam disfarçados com máscaras de animais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'ANBU',TRUE,0),(gen_random_uuid(),q,'Raiz',FALSE,1),(gen_random_uuid(),q,'Hunter-nin',FALSE,2),(gen_random_uuid(),q,'Guarda Real',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'fill_blank','impossible','O oponente de Naruto na primeira fase de combates individuais do Exame Chunin é ___.','Os dois já haviam brigado informalmente antes mesmo do início do exame.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kiba Inuzuka',TRUE,0),(gen_random_uuid(),q,'Shino Aburame',FALSE,1),(gen_random_uuid(),q,'Choji Akimichi',FALSE,2),(gen_random_uuid(),q,'Neji Hyuga',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- WHO_SAID — 30 perguntas (9 easy / 11 medium / 8 hard / 2 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'who_said','easy','Quem disse: "Eu nunca vou voltar atrás na minha palavra, esse é o meu jeito ninja!"?','É uma das frases mais repetidas pelo protagonista ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Naruto',TRUE,0),(gen_random_uuid(),q,'Sasuke',FALSE,1),(gen_random_uuid(),q,'Kiba',FALSE,2),(gen_random_uuid(),q,'Rock Lee',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'who_said','easy','Quem disse: "Dattebayo! Eu vou ser o próximo Hokage, custe o que custar!"?','A expressão típica ao final da frase se tornou uma marca registrada do personagem.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Naruto',TRUE,0),(gen_random_uuid(),q,'Konohamaru',FALSE,1),(gen_random_uuid(),q,'Rock Lee',FALSE,2),(gen_random_uuid(),q,'Kiba',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'who_said','easy','Quem disse: "Aqueles que quebram as regras são lixo, mas aqueles que abandonam os amigos são piores que lixo"?','A frase se torna uma das lições mais marcantes ensinadas ao Time 7.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kakashi Hatake',TRUE,0),(gen_random_uuid(),q,'Iruka Umino',FALSE,1),(gen_random_uuid(),q,'Might Guy',FALSE,2),(gen_random_uuid(),q,'Asuma Sarutobi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'who_said','easy','Quem disse: "Eu vou provar que o trabalho duro pode superar o talento natural"?','A frase reflete a filosofia de vida de um ninja que só domina taijutsu.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rock Lee',TRUE,0),(gen_random_uuid(),q,'Neji Hyuga',FALSE,1),(gen_random_uuid(),q,'Tenten',FALSE,2),(gen_random_uuid(),q,'Kiba',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'who_said','easy','Quem disse: "Você é meu melhor amigo, e é por isso que vou te trazer de volta, custe o que custar"?','A frase é dita antes do confronto decisivo no Vale do Fim.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Naruto',TRUE,0),(gen_random_uuid(),q,'Sakura',FALSE,1),(gen_random_uuid(),q,'Kakashi',FALSE,2),(gen_random_uuid(),q,'Sai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'who_said','easy','Quem costuma murmurar "Problemático..." antes de qualquer missão ou desafio?','É a expressão mais famosa desse ninja preguiçoso, porém genial em estratégia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shikamaru',TRUE,0),(gen_random_uuid(),q,'Choji',FALSE,1),(gen_random_uuid(),q,'Kiba',FALSE,2),(gen_random_uuid(),q,'Shino',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'who_said','easy','Quem disse: "Eu simplesmente adoro observar as pessoas crescerem através da dor"?','A frase revela a personalidade cruel e manipuladora do personagem.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Orochimaru',TRUE,0),(gen_random_uuid(),q,'Kabuto',FALSE,1),(gen_random_uuid(),q,'Jiraiya',FALSE,2),(gen_random_uuid(),q,'Zabuza',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'who_said','easy','Quem disse: "Eu escolhi o caminho da vingança, e não vou desviar dele"?','A frase resume o objetivo que domina a vida do personagem na primeira parte da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sasuke',TRUE,0),(gen_random_uuid(),q,'Naruto',FALSE,1),(gen_random_uuid(),q,'Gaara',FALSE,2),(gen_random_uuid(),q,'Neji',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'who_said','easy','Quem disse: "Eu sou a flor de lótus que floresce duas vezes"?','A frase, ensinada por seu mestre, se torna um símbolo de superação para o personagem.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rock Lee',TRUE,0),(gen_random_uuid(),q,'Neji',FALSE,1),(gen_random_uuid(),q,'Tenten',FALSE,2),(gen_random_uuid(),q,'Might Guy',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'who_said','medium','Quem disse: "Eu vou matar meu irmão e restaurar meu clã"?','A frase resume o objetivo de vingança que move o personagem por toda a primeira parte da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sasuke',TRUE,0),(gen_random_uuid(),q,'Itachi',FALSE,1),(gen_random_uuid(),q,'Naruto',FALSE,2),(gen_random_uuid(),q,'Madara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'who_said','medium','Quem disse: "Um ninja de verdade sabe suportar a dor por dentro e sorrir por fora"?','A frase reflete a filosofia de disfarçar sentimentos pessoais em nome da missão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kakashi',TRUE,0),(gen_random_uuid(),q,'Iruka',FALSE,1),(gen_random_uuid(),q,'Asuma',FALSE,2),(gen_random_uuid(),q,'Guy',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'who_said','medium','Quem disse: "Eu fui criado para ser uma arma, mas escolhi me tornar alguém que protege"?','A frase marca uma virada emocional importante na trajetória de um jovem antes solitário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gaara',TRUE,0),(gen_random_uuid(),q,'Sasuke',FALSE,1),(gen_random_uuid(),q,'Neji',FALSE,2),(gen_random_uuid(),q,'Haku',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'who_said','medium','Quem disse: "Eu já perdi um time inteiro por hesitar, não vou cometer o mesmo erro de novo"?','A frase revela um trauma antigo relacionado a companheiros perdidos em missão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kakashi',TRUE,0),(gen_random_uuid(),q,'Asuma',FALSE,1),(gen_random_uuid(),q,'Guy',FALSE,2),(gen_random_uuid(),q,'Iruka',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'who_said','medium','Quem disse: "Eu escolhi seguir o caminho ninja com meus próprios pés, não o caminho que o destino do meu clã escolheu para mim"?','A frase marca a superação de uma visão fatalista sobre o próprio futuro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Neji',TRUE,0),(gen_random_uuid(),q,'Hinata',FALSE,1),(gen_random_uuid(),q,'Sasuke',FALSE,2),(gen_random_uuid(),q,'Gaara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'who_said','medium','Quem disse: "A juventude é a chama que nunca se apaga"?','A frase é repetida constantemente por esse sensei entusiasmado com seus alunos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Might Guy',TRUE,0),(gen_random_uuid(),q,'Asuma',FALSE,1),(gen_random_uuid(),q,'Kakashi',FALSE,2),(gen_random_uuid(),q,'Iruka',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'who_said','medium','Quem disse: "Eu vou obter o corpo perfeito, custe o que custar, e viverei para sempre"?','A frase resume a busca obsessiva por imortalidade do personagem.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Orochimaru',TRUE,0),(gen_random_uuid(),q,'Kabuto',FALSE,1),(gen_random_uuid(),q,'Danzo',FALSE,2),(gen_random_uuid(),q,'Kisame',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'who_said','medium','Quem disse: "Eu vou treinar você pessoalmente, porque vejo em você o mesmo potencial do Quarto Hokage"?','A frase é dita a Naruto, sem que ele saiba do laço familiar real entre os dois personagens.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Jiraiya',TRUE,0),(gen_random_uuid(),q,'Kakashi',FALSE,1),(gen_random_uuid(),q,'Iruka',FALSE,2),(gen_random_uuid(),q,'Tsunade',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'who_said','medium','Quem disse: "Eu sou a Quinta Hokage, e vou proteger esta vila com todo o meu poder de cura"?','A frase é dita logo após aceitar oficialmente o cargo de liderança de Konoha.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tsunade',TRUE,0),(gen_random_uuid(),q,'Shizune',FALSE,1),(gen_random_uuid(),q,'Kurenai',FALSE,2),(gen_random_uuid(),q,'Sakura',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'who_said','medium','Quem disse: "Eu sou o ninja que copiou mil técnicas, mas ainda tenho muito a aprender"?','A frase mostra a humildade incomum de um ninja com reputação lendária.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kakashi',TRUE,0),(gen_random_uuid(),q,'Guy',FALSE,1),(gen_random_uuid(),q,'Asuma',FALSE,2),(gen_random_uuid(),q,'Jiraiya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'who_said','hard','Quem disse: "Vocês, da Vila da Folha, não sabem o que é verdadeira força"?','A frase é dita durante o confronto na ponte da Terra das Ondas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zabuza Momochi',TRUE,0),(gen_random_uuid(),q,'Haku',FALSE,1),(gen_random_uuid(),q,'Kisame',FALSE,2),(gen_random_uuid(),q,'Orochimaru',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'who_said','hard','Quem disse: "Eu protejo meu mestre porque ele é a única razão da minha existência"?','A frase reflete a devoção quase absoluta do personagem por quem o resgatou de uma vida solitária.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Haku',TRUE,0),(gen_random_uuid(),q,'Kabuto',FALSE,1),(gen_random_uuid(),q,'Kimimaro',FALSE,2),(gen_random_uuid(),q,'Karin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'who_said','hard','Quem disse: "Eu quero sentir de novo a dor de perder tudo, assim como eu senti quando era criança"?','A frase reflete o estado emocional do personagem antes de sua transformação.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gaara',TRUE,0),(gen_random_uuid(),q,'Sasuke',FALSE,1),(gen_random_uuid(),q,'Kimimaro',FALSE,2),(gen_random_uuid(),q,'Haku',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'who_said','hard','Quem disse: "Eu fiz o que fiz para testar meus limites, e vou continuar testando os do meu irmão mais novo"?','A frase esconde motivações muito mais profundas do que aparenta em um primeiro momento.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Itachi',TRUE,0),(gen_random_uuid(),q,'Kisame',FALSE,1),(gen_random_uuid(),q,'Orochimaru',FALSE,2),(gen_random_uuid(),q,'Madara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'who_said','hard','Quem disse: "Eu sirvo à Akatsuki porque acredito que existe algo maior por trás do nosso propósito"?','A frase reflete a lealdade do parceiro de Itachi ao grupo criminoso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kisame',TRUE,0),(gen_random_uuid(),q,'Deidara',FALSE,1),(gen_random_uuid(),q,'Kakuzu',FALSE,2),(gen_random_uuid(),q,'Zetsu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'who_said','hard','Quem disse: "Eu fui fraco demais para proteger meu time no passado, e isso é algo que nunca vou esquecer"?','A frase remete a um trauma que molda sua postura cautelosa como sensei.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kakashi',TRUE,0),(gen_random_uuid(),q,'Guy',FALSE,1),(gen_random_uuid(),q,'Asuma',FALSE,2),(gen_random_uuid(),q,'Iruka',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'who_said','hard','Quem disse: "Eu sacrifiquei meu braço para selar seu poder, e um dia alguém terminará o que eu comecei"?','A frase é dita após um duelo decisivo contra um antigo aluno rebelde.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hiruzen Sarutobi',TRUE,0),(gen_random_uuid(),q,'Jiraiya',FALSE,1),(gen_random_uuid(),q,'Tsunade',FALSE,2),(gen_random_uuid(),q,'Danzo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'who_said','hard','Quem disse: "Eu abandonei minha vila para buscar um poder que ninguém mais teria coragem de buscar"?','A frase reflete o desprezo do personagem pelas limitações impostas por Konoha.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Orochimaru',TRUE,0),(gen_random_uuid(),q,'Kabuto',FALSE,1),(gen_random_uuid(),q,'Sasuke',FALSE,2),(gen_random_uuid(),q,'Kimimaro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'who_said','impossible','Quem disse: "Eu sirvo como conselheiro do Kazekage desde que ele era apenas uma criança"?','A frase é dita por um sensei que acompanha de perto a família governante da Areia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Baki',TRUE,0),(gen_random_uuid(),q,'Chiyo',FALSE,1),(gen_random_uuid(),q,'Ebizo',FALSE,2),(gen_random_uuid(),q,'Yashamaru',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'who_said','impossible','Quem disse: "Eu ensinei tudo que sei sobre marionetes, e agora é hora do meu aluno superar sua mestra"?','A frase é dita por uma veterana especialista em técnicas de marionetes e venenos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chiyo',TRUE,0),(gen_random_uuid(),q,'Baki',FALSE,1),(gen_random_uuid(),q,'Ebizo',FALSE,2),(gen_random_uuid(),q,'Karura',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- EPISODE_ARC — 15 perguntas (7 medium / 6 hard / 2 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'episode_arc','medium','Em qual arco Naruto, Sasuke e Sakura se tornam oficialmente o Time 7, sob a liderança de Kakashi?','Eles precisam passar em um teste envolvendo dois sinos para provar seu valor.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Formação do Time 7',TRUE,0),(gen_random_uuid(),q,'Arco da Terra das Ondas',FALSE,1),(gen_random_uuid(),q,'Arco do Exame Chunin',FALSE,2),(gen_random_uuid(),q,'Arco de Resgate de Sasuke',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'episode_arc','medium','Em qual arco o Time 7 protege um construtor de pontes contra Zabuza e Haku?','É a primeira missão de alto risco enfrentada pelos genins recém-formados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Terra das Ondas',TRUE,0),(gen_random_uuid(),q,'Arco de Formação do Time 7',FALSE,1),(gen_random_uuid(),q,'Arco do Exame Chunin',FALSE,2),(gen_random_uuid(),q,'Arco da Invasão de Konoha',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'episode_arc','medium','Em qual arco genins de diversas vilas competem para se tornarem chunin, culminando em uma invasão?','As três fases do exame testam conhecimento, sobrevivência e combate direto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Exame Chunin',TRUE,0),(gen_random_uuid(),q,'Arco da Terra das Ondas',FALSE,1),(gen_random_uuid(),q,'Arco de Resgate de Sasuke',FALSE,2),(gen_random_uuid(),q,'Arco de Busca por Tsunade',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'episode_arc','medium','Em qual arco Konoha é invadida por Orochimaru e pela Vila da Areia, resultando na morte do Terceiro Hokage?','Aproveitando o caos do exame, os invasores atacam a vila diretamente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Invasão de Konoha',TRUE,0),(gen_random_uuid(),q,'Arco do Exame Chunin',FALSE,1),(gen_random_uuid(),q,'Arco de Resgate de Sasuke',FALSE,2),(gen_random_uuid(),q,'Arco de Busca por Tsunade',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'episode_arc','medium','Em qual arco um time é formado especificamente para tentar trazer Sasuke de volta antes que ele deserte para sempre?','Naruto lidera o grupo, mas acaba sendo o único a enfrentar Sasuke diretamente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Resgate de Sasuke',TRUE,0),(gen_random_uuid(),q,'Arco da Invasão de Konoha',FALSE,1),(gen_random_uuid(),q,'Arco de Busca por Tsunade',FALSE,2),(gen_random_uuid(),q,'Arco da Introdução da Akatsuki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'episode_arc','medium','Em qual arco Naruto e Jiraiya viajam em busca de Tsunade para que ela assuma o cargo de Hokage?','Naruto aprende o Rasengan durante essa jornada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Busca por Tsunade',TRUE,0),(gen_random_uuid(),q,'Arco de Resgate de Sasuke',FALSE,1),(gen_random_uuid(),q,'Arco da Invasão de Konoha',FALSE,2),(gen_random_uuid(),q,'Arco do Exame Chunin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'episode_arc','medium','Em qual arco a Akatsuki é apresentada pela primeira vez, através da invasão de Itachi e Kisame em Konoha?','Kakashi enfrenta diretamente os dois para proteger Naruto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Introdução da Akatsuki',TRUE,0),(gen_random_uuid(),q,'Arco de Busca por Tsunade',FALSE,1),(gen_random_uuid(),q,'Arco de Resgate de Sasuke',FALSE,2),(gen_random_uuid(),q,'Arco da Invasão de Konoha',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'episode_arc','hard','Em qual arco Rock Lee sofre uma derrota devastadora para Gaara, quase perdendo a capacidade de ser ninja?','Guy intervém no último instante para evitar um desfecho ainda pior.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Exame Chunin',TRUE,0),(gen_random_uuid(),q,'Arco da Invasão de Konoha',FALSE,1),(gen_random_uuid(),q,'Arco de Resgate de Sasuke',FALSE,2),(gen_random_uuid(),q,'Arco da Terra das Ondas',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'episode_arc','hard','Em qual arco Sasuke recebe o Selo Amaldiçoado diretamente de Orochimaru?','O ataque ocorre durante a segunda fase do Exame Chunin, dentro da Floresta da Morte.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Exame Chunin',TRUE,0),(gen_random_uuid(),q,'Arco da Invasão de Konoha',FALSE,1),(gen_random_uuid(),q,'Arco de Resgate de Sasuke',FALSE,2),(gen_random_uuid(),q,'Arco de Busca por Tsunade',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'episode_arc','hard','Em qual arco o Som Quatro escolta Sasuke até o esconderijo de Orochimaru?','Vários membros do Time 7 e aliados perseguem o grupo para impedir a fuga.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Resgate de Sasuke',TRUE,0),(gen_random_uuid(),q,'Arco do Exame Chunin',FALSE,1),(gen_random_uuid(),q,'Arco da Invasão de Konoha',FALSE,2),(gen_random_uuid(),q,'Arco de Busca por Tsunade',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'episode_arc','hard','Em qual arco é revelado que o líder mascarado por trás do ataque a Konoha era, na verdade, Orochimaru disfarçado de Kazekage?','A revelação acontece durante a terceira fase do exame, em pleno combate.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Invasão de Konoha',TRUE,0),(gen_random_uuid(),q,'Arco do Exame Chunin',FALSE,1),(gen_random_uuid(),q,'Arco de Resgate de Sasuke',FALSE,2),(gen_random_uuid(),q,'Arco de Busca por Tsunade',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'episode_arc','hard','Em qual arco Naruto aprende a técnica Rasengan diretamente com Jiraiya?','O treinamento acontece paralelamente à busca pela futura Quinta Hokage.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Busca por Tsunade',TRUE,0),(gen_random_uuid(),q,'Arco de Resgate de Sasuke',FALSE,1),(gen_random_uuid(),q,'Arco da Invasão de Konoha',FALSE,2),(gen_random_uuid(),q,'Arco do Exame Chunin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'episode_arc','hard','Em qual arco Gaara começa a passar por uma mudança de caráter após sua derrota para Naruto?','A conversa entre os dois após o combate marca o início de sua transformação.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Invasão de Konoha',TRUE,0),(gen_random_uuid(),q,'Arco do Exame Chunin',FALSE,1),(gen_random_uuid(),q,'Arco de Resgate de Sasuke',FALSE,2),(gen_random_uuid(),q,'Arco de Busca por Tsunade',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'episode_arc','impossible','Em qual arco Konohamaru aparece pela primeira vez, tentando desafiar Naruto para provar seu valor como rival?','Ele arma uma armadilha simples que acaba fracassando de forma cômica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Formação do Time 7',TRUE,0),(gen_random_uuid(),q,'Arco da Terra das Ondas',FALSE,1),(gen_random_uuid(),q,'Arco do Exame Chunin',FALSE,2),(gen_random_uuid(),q,'Arco de Busca por Tsunade',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'episode_arc','impossible','Em qual arco Naruto usa pela primeira vez, de forma descontrolada, parte do poder da Kyuubi durante um combate?','O evento assusta seus colegas de time, que veem seus olhos mudarem de cor.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Exame Chunin',TRUE,0),(gen_random_uuid(),q,'Arco da Terra das Ondas',FALSE,1),(gen_random_uuid(),q,'Arco de Formação do Time 7',FALSE,2),(gen_random_uuid(),q,'Arco de Busca por Tsunade',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- CHRONOLOGICAL — 7 perguntas (4 hard / 3 impossible)
    -- Para cada uma, sort_order define a posição cronológica correta.
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'chronological','hard','Ordene cronologicamente os arcos a seguir, do mais antigo ao mais recente.','Cobrem desde a formação do Time 7 até a invasão de Konoha.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Formação do Time 7',TRUE,0),(gen_random_uuid(),q,'Missão na Terra das Ondas',FALSE,1),(gen_random_uuid(),q,'Exame Chunin',FALSE,2),(gen_random_uuid(),q,'Invasão de Konoha',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'chronological','hard','Ordene cronologicamente os seguintes marcos da jornada de Naruto, do mais antigo ao mais recente.','Cobrem desde a revelação da Kyuubi até seu retorno à vila após dois anos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Naruto descobre a Kyuubi selada em si',TRUE,0),(gen_random_uuid(),q,'Naruto aprende o Rasengan com Jiraiya',FALSE,1),(gen_random_uuid(),q,'Naruto enfrenta Sasuke no Vale do Fim',FALSE,2),(gen_random_uuid(),q,'Naruto retorna a Konoha após dois anos de treinamento',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'chronological','hard','Ordene cronologicamente os eventos da missão na Terra das Ondas, do primeiro ao último.','Cobrem desde o primeiro encontro com Zabuza até o retorno do Time 7 a Konoha.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Primeiro confronto com Zabuza',TRUE,0),(gen_random_uuid(),q,'Encontro com Haku na floresta',FALSE,1),(gen_random_uuid(),q,'Morte de Zabuza e Haku',FALSE,2),(gen_random_uuid(),q,'Retorno do Time 7 a Konoha',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'chronological','hard','Ordene cronologicamente as fases do Exame Chunin, da primeira à última.','Cada fase elimina uma parte considerável dos candidatos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Primeira fase (prova escrita)',TRUE,0),(gen_random_uuid(),q,'Segunda fase (Floresta da Morte)',FALSE,1),(gen_random_uuid(),q,'Terceira fase (combates individuais)',FALSE,2),(gen_random_uuid(),q,'Invasão de Konoha',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'chronological','impossible','Ordene cronologicamente os eventos a seguir relacionados a Sasuke, do mais antigo ao mais recente.','Cobrem desde o Exame Chunin até sua deserção definitiva de Konoha.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sasuke recebe o Selo Amaldiçoado',TRUE,0),(gen_random_uuid(),q,'Sasuke luta contra Gaara',FALSE,1),(gen_random_uuid(),q,'Sasuke deserta de Konoha',FALSE,2),(gen_random_uuid(),q,'Time de Resgate parte atrás de Sasuke',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'chronological','impossible','Ordene cronologicamente os eventos a seguir da vida de Gaara, do mais antigo ao mais recente.','Cobrem desde sua infância traumática até sua mudança de caráter.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yashamaru tenta assassiná-lo ainda criança',TRUE,0),(gen_random_uuid(),q,'Gaara se torna um assassino solitário',FALSE,1),(gen_random_uuid(),q,'Gaara luta contra Naruto no Exame Chunin',FALSE,2),(gen_random_uuid(),q,'Gaara inicia sua mudança de caráter',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'chronological','impossible','Ordene cronologicamente os eventos da busca por Tsunade, do mais antigo ao mais recente.','Cobrem desde a partida de Naruto e Jiraiya até a posse oficial da nova Hokage.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Jiraiya e Naruto partem em busca de Tsunade',TRUE,0),(gen_random_uuid(),q,'Orochimaru e Kabuto tentam recrutar Tsunade',FALSE,1),(gen_random_uuid(),q,'Tsunade cura Kakashi e Naruto após a luta',FALSE,2),(gen_random_uuid(),q,'Tsunade assume oficialmente o cargo de Quinta Hokage',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- Complemento para fechar 150 perguntas na distribuição exata
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','easy','Qual é o nome da irmã mais velha de Gaara e Kankuro, especialista em técnicas de vento com leque?','Ela participa ativamente do time de invasão durante o Exame Chunin.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Temari',TRUE,0),(gen_random_uuid(),q,'Chiyo',FALSE,1),(gen_random_uuid(),q,'Karura',FALSE,2),(gen_random_uuid(),q,'Matsuri',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','easy','Qual é o nome da colega de time de Rock Lee e Neji, especialista em armas?','Ela é a única integrante feminina do Time Guy.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tenten',TRUE,0),(gen_random_uuid(),q,'Ino',FALSE,1),(gen_random_uuid(),q,'Hinata',FALSE,2),(gen_random_uuid(),q,'Sakura',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','medium','Qual é o nome do jovem que tenta ensinar Naruto a usar chakra elemental de vento, aparecendo em cenas de treinamento avançado?','Ele é apresentado como um ninja excêntrico que testa o controle de chakra do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ebisu',TRUE,0),(gen_random_uuid(),q,'Genma',FALSE,1),(gen_random_uuid(),q,'Raido',FALSE,2),(gen_random_uuid(),q,'Aoba',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','medium','Qual é o nome do juiz responsável por conduzir a terceira fase dos combates individuais do Exame Chunin?','Ele fuma constantemente um senbon na boca durante as lutas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Genma Shiranui',TRUE,0),(gen_random_uuid(),q,'Hayate Gekko',FALSE,1),(gen_random_uuid(),q,'Ibiki Morino',FALSE,2),(gen_random_uuid(),q,'Kotetsu Hagane',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','hard','Qual é o nome do examinador responsável pela primeira fase (prova escrita) do Exame Chunin?','Ele é famoso por seu rosto marcado por cicatrizes de tortura.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ibiki Morino',TRUE,0),(gen_random_uuid(),q,'Genma Shiranui',FALSE,1),(gen_random_uuid(),q,'Hayate Gekko',FALSE,2),(gen_random_uuid(),q,'Anko Mitarashi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'text','hard','Qual é o nome da examinadora responsável pela segunda fase (Floresta da Morte) do Exame Chunin?','Ela já foi discípula de Orochimaru antes de sua deserção.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Anko Mitarashi',TRUE,0),(gen_random_uuid(),q,'Kurenai Yuhi',FALSE,1),(gen_random_uuid(),q,'Shizune',FALSE,2),(gen_random_uuid(),q,'Yugao Uzuki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'fill_blank','easy','A irmã mais velha de Gaara e Kankuro, especialista em técnicas de vento, se chama ___.','Ela usa um grande leque de guerra como arma principal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Temari',TRUE,0),(gen_random_uuid(),q,'Chiyo',FALSE,1),(gen_random_uuid(),q,'Karura',FALSE,2),(gen_random_uuid(),q,'Matsuri',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'fill_blank','easy','A colega de time de Rock Lee e Neji, especialista em armas, se chama ___.','Ela é a única integrante feminina do Time Guy.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tenten',TRUE,0),(gen_random_uuid(),q,'Ino',FALSE,1),(gen_random_uuid(),q,'Hinata',FALSE,2),(gen_random_uuid(),q,'Sakura',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'fill_blank','medium','O ninja excêntrico que testa o controle de chakra elemental de Naruto se chama ___.','Ele costuma espiar mulheres nas termas, para irritação constante de seus colegas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ebisu',TRUE,0),(gen_random_uuid(),q,'Genma',FALSE,1),(gen_random_uuid(),q,'Raido',FALSE,2),(gen_random_uuid(),q,'Aoba',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'fill_blank','hard','O examinador responsável pela primeira fase (prova escrita) do Exame Chunin se chama ___.','Seu rosto marcado por cicatrizes intimida boa parte dos candidatos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ibiki Morino',TRUE,0),(gen_random_uuid(),q,'Genma Shiranui',FALSE,1),(gen_random_uuid(),q,'Hayate Gekko',FALSE,2),(gen_random_uuid(),q,'Kotetsu Hagane',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'who_said','medium','Quem disse: "Eu não permito ninguém falar mal do meu time, nem mesmo você"?','A frase é dita em defesa de seus alunos diante de uma provocação externa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kurenai',TRUE,0),(gen_random_uuid(),q,'Asuma',FALSE,1),(gen_random_uuid(),q,'Kakashi',FALSE,2),(gen_random_uuid(),q,'Guy',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_naruto,'fill_blank','impossible','A examinadora responsável pela segunda fase (Floresta da Morte) do Exame Chunin se chama ___.','Ela já foi discípula de Orochimaru antes de sua deserção de Konoha.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Anko Mitarashi',TRUE,0),(gen_random_uuid(),q,'Kurenai Yuhi',FALSE,1),(gen_random_uuid(),q,'Shizune',FALSE,2),(gen_random_uuid(),q,'Yugao Uzuki',FALSE,3);

END $$;
