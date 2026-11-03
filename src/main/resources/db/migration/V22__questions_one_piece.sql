-- ============================================================
--  V22 — Seed de perguntas: One Piece (150 perguntas)
--  Fonte: MyAnimeList + cânone do anime
--  Distribuição: text 40% / fill_blank 25% / who_said 20% /
--                episode_arc 10% / chronological 5%
--  Sem repetição com V5. Regras R1-R7 aplicadas.
-- ============================================================

DO $$
DECLARE
    v_system UUID := '00000000-0000-0000-0000-000000000001';
    v_op     UUID;
    q        UUID;
BEGIN
    SELECT id INTO v_op FROM animes WHERE slug = 'one-piece' LIMIT 1;

    -- ══════════════════════════════════════════════════════════
    -- TEXT — 60 perguntas (18 easy / 21 medium / 15 hard / 6 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','easy','Qual é o nome do espadachim caçador de piratas que se junta à tripulação de Luffy?','Ele sonha em se tornar o maior espadachim do mundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sanji',FALSE,0),(gen_random_uuid(),q,'Roronoa Zoro',TRUE,1),(gen_random_uuid(),q,'Usopp',FALSE,2),(gen_random_uuid(),q,'Brook',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','easy','Qual é o nome da navegadora da tripulação Chapéu de Palha?','Ela sonha em desenhar um mapa completo do mundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Robin',FALSE,0),(gen_random_uuid(),q,'Nami',TRUE,1),(gen_random_uuid(),q,'Vivi',FALSE,2),(gen_random_uuid(),q,'Carrot',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','easy','Qual é o título dado aos quatro piratas mais poderosos do Novo Mundo?','Eles dividem o controle do Novo Mundo com a Marinha.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shichibukai',FALSE,0),(gen_random_uuid(),q,'Yonkou',TRUE,1),(gen_random_uuid(),q,'Cipher Pol',FALSE,2),(gen_random_uuid(),q,'Gorousei',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','easy','Em qual vilarejo Luffy cresceu antes de se tornar pirata?','Fica na Ilha de Dawn, no East Blue.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fuusha Village',TRUE,0),(gen_random_uuid(),q,'Syrup Village',FALSE,1),(gen_random_uuid(),q,'Cocoyashi Village',FALSE,2),(gen_random_uuid(),q,'Loguetown',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','easy','Qual é o nome do atirador de elite e contador de histórias da tripulação?','Ele sonha em se tornar um bravo guerreiro dos mares.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Usopp',TRUE,0),(gen_random_uuid(),q,'Sanji',FALSE,1),(gen_random_uuid(),q,'Franky',FALSE,2),(gen_random_uuid(),q,'Brook',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','easy','Qual é o nome do cozinheiro da tripulação, especialista em chutes?','Ele sonha em encontrar o lendário mar All Blue.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sanji',TRUE,0),(gen_random_uuid(),q,'Zoro',FALSE,1),(gen_random_uuid(),q,'Franky',FALSE,2),(gen_random_uuid(),q,'Jinbe',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','easy','Qual é o nome do esqueleto músico que se junta à tripulação em Thriller Bark?','Ele morreu há décadas, mas sua alma retornou ao próprio corpo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Brook',TRUE,0),(gen_random_uuid(),q,'Franky',FALSE,1),(gen_random_uuid(),q,'Chopper',FALSE,2),(gen_random_uuid(),q,'Robin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','easy','Qual é o nome do ciborgue construtor de navios que se junta à tripulação em Water Seven?','Ele reconstrói o navio dos Chapéus de Palha praticamente do zero.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Franky',TRUE,0),(gen_random_uuid(),q,'Usopp',FALSE,1),(gen_random_uuid(),q,'Jinbe',FALSE,2),(gen_random_uuid(),q,'Brook',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','easy','Qual é o nome da arqueóloga que se junta à tripulação após a saga Alabasta?','Ela é a única sobrevivente conhecida de sua ilha natal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nico Robin',TRUE,0),(gen_random_uuid(),q,'Nami',FALSE,1),(gen_random_uuid(),q,'Vivi',FALSE,2),(gen_random_uuid(),q,'Carrot',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','easy','Qual é o nome do peixe-homem timoneiro que se junta à tripulação após a Guerra de Marineford?','Ele é um dos ex-Shichibukai da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Jinbe',TRUE,0),(gen_random_uuid(),q,'Arlong',FALSE,1),(gen_random_uuid(),q,'Hody Jones',FALSE,2),(gen_random_uuid(),q,'Fisher Tiger',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','easy','Qual é o nome do irmão mais velho adotivo de Luffy, que morre na Guerra de Marineford?','Ele era filho biológico do antigo Rei dos Piratas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Portgas D. Ace',TRUE,0),(gen_random_uuid(),q,'Sabo',FALSE,1),(gen_random_uuid(),q,'Shanks',FALSE,2),(gen_random_uuid(),q,'Marco',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','easy','Qual é o nome do terceiro irmão de Luffy, revelado vivo mais tarde na série?','Ele se torna um dos líderes do Exército Revolucionário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sabo',TRUE,0),(gen_random_uuid(),q,'Ace',FALSE,1),(gen_random_uuid(),q,'Koala',FALSE,2),(gen_random_uuid(),q,'Dragon',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','easy','Qual é o nome do pirata que deu seu chapéu de palha para Luffy quando ele era criança?','Ele é um dos quatro Yonkou mais respeitados dos mares.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shanks',TRUE,0),(gen_random_uuid(),q,'Barba Branca',FALSE,1),(gen_random_uuid(),q,'Barba Negra',FALSE,2),(gen_random_uuid(),q,'Kaido',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','easy','Qual é o nome do avô de Luffy, vice-almirante lendário da Marinha?','Ele tentou, sem sucesso, criar Luffy para ser um Marine.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Monkey D. Garp',TRUE,0),(gen_random_uuid(),q,'Sengoku',FALSE,1),(gen_random_uuid(),q,'Monkey D. Dragon',FALSE,2),(gen_random_uuid(),q,'Kong',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','easy','Como é chamado o mar perigoso e imprevisível que corta o centro do mundo de One Piece?','É considerado o mar mais difícil de navegar do planeta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Grand Line',TRUE,0),(gen_random_uuid(),q,'Red Line',FALSE,1),(gen_random_uuid(),q,'Calm Belt',FALSE,2),(gen_random_uuid(),q,'New World Sea',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','easy','Qual é o nome da organização responsável por comandar a Marinha e governar o mundo?','Sua sede fica na ilha sagrada de Mary Geoise.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Governo Mundial',TRUE,0),(gen_random_uuid(),q,'Conselho dos Reis',FALSE,1),(gen_random_uuid(),q,'Ordem Celestial',FALSE,2),(gen_random_uuid(),q,'Aliança Naval',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','easy','Qual é o título mais alto que um pirata pode alcançar, ostentado pelo lendário Gol D. Roger?','É o objetivo declarado de Luffy desde o início da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rei dos Piratas',TRUE,0),(gen_random_uuid(),q,'Imperador dos Mares',FALSE,1),(gen_random_uuid(),q,'Senhor do Grand Line',FALSE,2),(gen_random_uuid(),q,'Comandante Supremo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','easy','Como se chamam as frutas que concedem poderes sobrenaturais, mas retiram a habilidade de nadar de quem as come?','Existem três categorias: Paramecia, Zoan e Logia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Akuma no Mi',TRUE,0),(gen_random_uuid(),q,'Kami no Mi',FALSE,1),(gen_random_uuid(),q,'Youkai no Mi',FALSE,2),(gen_random_uuid(),q,'Chikara no Mi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','medium','Qual é o nome do navio atual da tripulação Chapéu de Palha, construído por Franky?','Substituiu o Going Merry após sua perda na saga Water Seven.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Moby Dick',FALSE,0),(gen_random_uuid(),q,'Thousand Sunny',TRUE,1),(gen_random_uuid(),q,'Oro Jackson',FALSE,2),(gen_random_uuid(),q,'Red Force',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','medium','Qual é o nome do arquipélago onde os Chapéus de Palha se separam para treinar por dois anos?','É repleto de bolhas de ar que permitem mergulhar nas profundezas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sabaody Archipelago',TRUE,0),(gen_random_uuid(),q,'Skypiea',FALSE,1),(gen_random_uuid(),q,'Amazon Lily',FALSE,2),(gen_random_uuid(),q,'Fishman Island',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','medium','Qual é o nome da organização secreta de assassinos liderada por Crocodile em Alabasta?','Seu objetivo era tomar o reino do deserto pela força.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Baroque Works',TRUE,0),(gen_random_uuid(),q,'Cipher Pol',FALSE,1),(gen_random_uuid(),q,'Revolutionary Army',FALSE,2),(gen_random_uuid(),q,'Donquixote Family',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','medium','Qual é o nome do reino desértico governado pela princesa Nefertari Vivi?','Foi quase destruído por uma guerra civil provocada por Crocodile.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Alabasta',TRUE,0),(gen_random_uuid(),q,'Drum Kingdom',FALSE,1),(gen_random_uuid(),q,'Dressrosa',FALSE,2),(gen_random_uuid(),q,'Zou',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','medium','Qual é o nome da técnica de Sanji baseada em chutes flamejantes?','Ele a desenvolve para compensar a recusa em usar as mãos em combate.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Diable Jambe',TRUE,0),(gen_random_uuid(),q,'Sky Walk',FALSE,1),(gen_random_uuid(),q,'Party Table Kick',FALSE,2),(gen_random_uuid(),q,'Black Leg',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','medium','Qual é o nome da ilha no céu visitada pelos Chapéus de Palha através de uma corrente de ar?','Enel governa o local se autoproclamando um deus.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Skypiea',TRUE,0),(gen_random_uuid(),q,'Zou',FALSE,1),(gen_random_uuid(),q,'Punk Hazard',FALSE,2),(gen_random_uuid(),q,'Green Bit',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','medium','Qual é o nome da baleia gigante que espera há décadas pelo retorno de um bando de piratas em Reverse Mountain?','Ela se torna amiga da tripulação de Luffy.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Laboon',TRUE,0),(gen_random_uuid(),q,'Moby Dick',FALSE,1),(gen_random_uuid(),q,'Zunesha',FALSE,2),(gen_random_uuid(),q,'Surume',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','medium','Qual é o nome do reino subaquático visitado pela tripulação após Sabaody?','Fica no fundo do mar, próximo à raiz do Red Line.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fishman Island',TRUE,0),(gen_random_uuid(),q,'Skypiea',FALSE,1),(gen_random_uuid(),q,'Amazon Lily',FALSE,2),(gen_random_uuid(),q,'Punk Hazard',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','medium','Qual é o nome da prisão de segurança máxima do Governo Mundial?','Luffy invade o local para resgatar seu irmão Ace.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Impel Down',TRUE,0),(gen_random_uuid(),q,'Enies Lobby',FALSE,1),(gen_random_uuid(),q,'Marineford',FALSE,2),(gen_random_uuid(),q,'Mary Geoise',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','medium','Qual é o nome da base principal da Marinha, palco da Guerra dos Maiores?','É lá que Ace é executado publicamente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Marineford',TRUE,0),(gen_random_uuid(),q,'Enies Lobby',FALSE,1),(gen_random_uuid(),q,'Impel Down',FALSE,2),(gen_random_uuid(),q,'Loguetown',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','medium','Qual é o nome do país isolado governado por samurais em One Piece?','Fica escondido atrás de uma barreira de névoa permanente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Wano',TRUE,0),(gen_random_uuid(),q,'Zou',FALSE,1),(gen_random_uuid(),q,'Dressrosa',FALSE,2),(gen_random_uuid(),q,'Whole Cake Island',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','medium','Qual é o nome do xogum fantoche que governa Wano sob o controle de Kaido?','Ele trai o legado da família Kozuki em troca de poder.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kurozumi Orochi',TRUE,0),(gen_random_uuid(),q,'Kozuki Oden',FALSE,1),(gen_random_uuid(),q,'Kaido',FALSE,2),(gen_random_uuid(),q,'Yamato',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','medium','Qual é o nome do Yonkou que controla Wano antes de sua derrota final?','Ele é conhecido pela alcunha de "a criatura mais forte do mundo".',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaido',TRUE,0),(gen_random_uuid(),q,'Big Mom',FALSE,1),(gen_random_uuid(),q,'Barba Negra',FALSE,2),(gen_random_uuid(),q,'Shanks',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','medium','Qual é o nome do porto onde Gol D. Roger foi executado publicamente antes do início da Grande Era dos Piratas?','A cidade também é conhecida como a "Vila do Começo e do Fim".',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Loguetown',TRUE,0),(gen_random_uuid(),q,'Water Seven',FALSE,1),(gen_random_uuid(),q,'Shells Town',FALSE,2),(gen_random_uuid(),q,'Baratie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','medium','Qual é o nome do dojo onde Zoro treinou artes marciais quando criança?','Foi lá que ele conheceu Kuina, sua maior rival de infância.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dojo Shimotsuki',TRUE,0),(gen_random_uuid(),q,'Dojo Baratie',FALSE,1),(gen_random_uuid(),q,'Dojo Wano',FALSE,2),(gen_random_uuid(),q,'Dojo Marineford',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','medium','Qual é o nome da transformação de Luffy que aumenta drasticamente sua velocidade temporariamente?','Ele bombeia sangue de forma acelerada para os músculos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gear Second',TRUE,0),(gen_random_uuid(),q,'Gear Third',FALSE,1),(gen_random_uuid(),q,'Gear Fourth',FALSE,2),(gen_random_uuid(),q,'Gear Fifth',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','medium','Qual é o nome da transformação de Luffy que infla seus ossos, aumentando o tamanho dos membros?','Ele fica com aparência de gigante durante o uso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gear Third',TRUE,0),(gen_random_uuid(),q,'Gear Second',FALSE,1),(gen_random_uuid(),q,'Gear Fourth',FALSE,2),(gen_random_uuid(),q,'Gear Fifth',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','medium','Como se chama o tipo de haki que permite prever ataques do oponente antes que aconteçam?','É essencial para lutar contra adversários muito mais rápidos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Haki da Percepção',TRUE,0),(gen_random_uuid(),q,'Haki do Armamento',FALSE,1),(gen_random_uuid(),q,'Haki do Rei',FALSE,2),(gen_random_uuid(),q,'Haki Elemental',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','medium','Como se chama o tipo de haki que permite atacar diretamente usuários de frutas Logia?','Reveste o corpo do usuário com uma armadura invisível de energia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Haki do Armamento',TRUE,0),(gen_random_uuid(),q,'Haki da Percepção',FALSE,1),(gen_random_uuid(),q,'Haki do Rei',FALSE,2),(gen_random_uuid(),q,'Haki Elemental',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','hard','Qual é o nome verdadeiro do pai de Luffy, líder do Exército Revolucionário?','Ele é considerado o homem mais procurado do mundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Monkey D. Dragon',TRUE,0),(gen_random_uuid(),q,'Monkey D. Garp',FALSE,1),(gen_random_uuid(),q,'Monkey D. Sora',FALSE,2),(gen_random_uuid(),q,'Monkey D. Luffy',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','hard','Como se chama o haki raro que permite dominar diretamente a vontade de outras pessoas?','Apenas uma pequena fração dos seres humanos nasce capaz de usá-lo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Haki do Rei',TRUE,0),(gen_random_uuid(),q,'Haki do Armamento',FALSE,1),(gen_random_uuid(),q,'Haki da Percepção',FALSE,2),(gen_random_uuid(),q,'Haki Ancestral',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','hard','Qual é o nome do almirante de frota da Marinha durante a Guerra de Marineford?','Ele comanda toda a operação para impedir o resgate de Ace.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sengoku',TRUE,0),(gen_random_uuid(),q,'Akainu',FALSE,1),(gen_random_uuid(),q,'Kizaru',FALSE,2),(gen_random_uuid(),q,'Kong',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','hard','Qual é o nome da espada negra lendária empunhada por Dracule Mihawk?','É considerada a melhor lâmina do mundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoru',TRUE,0),(gen_random_uuid(),q,'Shusui',FALSE,1),(gen_random_uuid(),q,'Enma',FALSE,2),(gen_random_uuid(),q,'Wado Ichimonji',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','hard','Quem detinha o título de maior espadachim do mundo antes de Zoro assumi-lo?','Ele enfrenta Zoro em duelo amistoso na saga East Blue.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dracule Mihawk',TRUE,0),(gen_random_uuid(),q,'Shanks',FALSE,1),(gen_random_uuid(),q,'Rayleigh',FALSE,2),(gen_random_uuid(),q,'Barba Branca',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','hard','Qual é o nome do braço direito de Shanks, imediato de seu bando pirata?','Ele é conhecido por sua inteligência estratégica e calma incomum.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Benn Beckman',TRUE,0),(gen_random_uuid(),q,'Yasopp',FALSE,1),(gen_random_uuid(),q,'Lucky Roux',FALSE,2),(gen_random_uuid(),q,'Rockstar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','hard','Qual é o nome do Yonkou conhecido como "Barba Branca", considerado o homem mais forte do mundo?','Ele morre defendendo Ace durante a Guerra de Marineford.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Edward Newgate',TRUE,0),(gen_random_uuid(),q,'Kaido',FALSE,1),(gen_random_uuid(),q,'Shanks',FALSE,2),(gen_random_uuid(),q,'Marshall D. Teach',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','hard','Qual é o nome da fruta que concede a Marco a capacidade de regeneração através de fogo azul fênix?','Ele é o comandante da Primeira Divisão de Barba Branca.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tori Tori no Mi: Modelo Fênix',TRUE,0),(gen_random_uuid(),q,'Mera Mera no Mi',FALSE,1),(gen_random_uuid(),q,'Yami Yami no Mi',FALSE,2),(gen_random_uuid(),q,'Hana Hana no Mi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','hard','Qual é o nome do Shichibukai conhecido por controlar sombras e exércitos de zumbis?','Ele governa Thriller Bark, uma ilha em formato de navio gigante.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gecko Moria',TRUE,0),(gen_random_uuid(),q,'Boa Hancock',FALSE,1),(gen_random_uuid(),q,'Jinbe',FALSE,2),(gen_random_uuid(),q,'Doflamingo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','hard','Qual é o nome do Shogun de Wano que se rebelou contra o antigo regime, símbolo da resistência samurai?','Sua execução pública marca um dos momentos mais trágicos da saga Wano.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kozuki Oden',TRUE,0),(gen_random_uuid(),q,'Kurozumi Orochi',FALSE,1),(gen_random_uuid(),q,'Kaido',FALSE,2),(gen_random_uuid(),q,'Yamato',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','hard','Qual é o nome da filha de Kozuki Oden, que lidera disfarçadamente a resistência samurai em Wano?','Ela é mais conhecida publicamente pelo nome artístico de Komurasaki.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kozuki Hiyori',TRUE,0),(gen_random_uuid(),q,'Kozuki Toki',FALSE,1),(gen_random_uuid(),q,'Yamato',FALSE,2),(gen_random_uuid(),q,'Otoko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','hard','Qual é o nome do filho de Kozuki Oden que luta ao lado de Luffy na Batalha de Onigashima?','Ele possui a habilidade de se transformar em dragão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kozuki Momonosuke',TRUE,0),(gen_random_uuid(),q,'Kozuki Sukiyaki',FALSE,1),(gen_random_uuid(),q,'Kin''emon',FALSE,2),(gen_random_uuid(),q,'Yamato',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','impossible','Qual é o nome do navio usado por Gol D. Roger em sua jornada pelo Grand Line?','Foi construído pelo mesmo estaleiro que mais tarde constrói o Thousand Sunny.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Oro Jackson',TRUE,0),(gen_random_uuid(),q,'Moby Dick',FALSE,1),(gen_random_uuid(),q,'Red Force',FALSE,2),(gen_random_uuid(),q,'Sea Cat',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','impossible','Qual é o nome verdadeiro do pirata conhecido como Barba Negra?','Ele trai e mata seu próprio capitão para roubar sua fruta do diabo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Marshall D. Teach',TRUE,0),(gen_random_uuid(),q,'Marshall D. Kaido',FALSE,1),(gen_random_uuid(),q,'Edward D. Teach',FALSE,2),(gen_random_uuid(),q,'Blackbeard D. Marco',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','impossible','Qual é o nome da organização de agentes secretos do governo que persegue Nico Robin durante anos?','Seus membros se disfarçam como cidadãos comuns antes de agir.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cipher Pol Nove',TRUE,0),(gen_random_uuid(),q,'Baroque Works',FALSE,1),(gen_random_uuid(),q,'SWORD',FALSE,2),(gen_random_uuid(),q,'Revolutionary Army',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','impossible','Qual é o nome do líder do CP9 que luta diretamente contra Luffy em Enies Lobby?','Ele possui uma fruta Zoan mítica que o transforma em leopardo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rob Lucci',TRUE,0),(gen_random_uuid(),q,'Spandam',FALSE,1),(gen_random_uuid(),q,'Kaku',FALSE,2),(gen_random_uuid(),q,'Jabra',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','impossible','Qual é o nome da ilha onde fica a sede da justiça do Governo Mundial, palco da batalha contra o CP9?','Robin é levada até lá para ser julgada e executada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Enies Lobby',TRUE,0),(gen_random_uuid(),q,'Marineford',FALSE,1),(gen_random_uuid(),q,'Impel Down',FALSE,2),(gen_random_uuid(),q,'Mary Geoise',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- FILL_BLANK — 38 perguntas (11 easy / 13 medium / 10 hard / 4 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'fill_blank','easy','Luffy comeu a Akuma no Mi conhecida como ___.','Ela transforma seu corpo em borracha.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gomu Gomu no Mi',TRUE,0),(gen_random_uuid(),q,'Mera Mera no Mi',FALSE,1),(gen_random_uuid(),q,'Bara Bara no Mi',FALSE,2),(gen_random_uuid(),q,'Suna Suna no Mi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'fill_blank','easy','Zoro pratica o estilo de combate com três espadas chamado ___.','Ele segura uma das lâminas com a boca.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Santoryu',TRUE,0),(gen_random_uuid(),q,'Nitoryu',FALSE,1),(gen_random_uuid(),q,'Ittoryu',FALSE,2),(gen_random_uuid(),q,'Kyutoryu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'fill_blank','easy','O bando de Luffy é conhecido como Piratas do ___.','O nome vem do item mais icônico usado pelo capitão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chapéu de Palha',TRUE,0),(gen_random_uuid(),q,'Sol Nascente',FALSE,1),(gen_random_uuid(),q,'Mar Vermelho',FALSE,2),(gen_random_uuid(),q,'Punho de Borracha',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'fill_blank','easy','A bandeira pirata da tripulação de Luffy é uma caveira usando um ___.','O item foi desenhado por Usopp como símbolo do grupo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chapéu de Palha',TRUE,0),(gen_random_uuid(),q,'Bandana',FALSE,1),(gen_random_uuid(),q,'Óculos',FALSE,2),(gen_random_uuid(),q,'Coroa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'fill_blank','easy','Nami sonha em desenhar um mapa completo do ___.','É um objetivo que ela carrega desde a infância, marcada pela opressão de Arlong.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mundo',TRUE,0),(gen_random_uuid(),q,'Grand Line',FALSE,1),(gen_random_uuid(),q,'Novo Mundo',FALSE,2),(gen_random_uuid(),q,'East Blue',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'fill_blank','easy','Sanji sonha em encontrar o lendário mar chamado ___.','Diz-se que ali é possível pescar peixes de todos os oceanos ao mesmo tempo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'All Blue',TRUE,0),(gen_random_uuid(),q,'Grand Line',FALSE,1),(gen_random_uuid(),q,'Red Line',FALSE,2),(gen_random_uuid(),q,'New World',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'fill_blank','easy','Chopper é um ___ que comeu uma Akuma no Mi e ganhou inteligência humana.','Ele pode assumir diversas formas híbridas entre animal e humano.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rena',TRUE,0),(gen_random_uuid(),q,'Urso',FALSE,1),(gen_random_uuid(),q,'Lobo',FALSE,2),(gen_random_uuid(),q,'Raposa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'fill_blank','easy','O chapéu de palha usado por Luffy foi um presente de ___.','Ele prometeu devolvê-lo um dia, depois de se tornar um grande pirata.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shanks',TRUE,0),(gen_random_uuid(),q,'Garp',FALSE,1),(gen_random_uuid(),q,'Ace',FALSE,2),(gen_random_uuid(),q,'Roger',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'fill_blank','easy','O Governo Mundial sedia sua capital na ilha sagrada de ___.','Lá ficam os Cinco Anciões e o Rei Celestial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mary Geoise',TRUE,0),(gen_random_uuid(),q,'Enies Lobby',FALSE,1),(gen_random_uuid(),q,'Marineford',FALSE,2),(gen_random_uuid(),q,'Impel Down',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'fill_blank','easy','Robin é a única sobrevivente conhecida da destruição da ilha de ___.','Os estudiosos de lá pesquisavam o verdadeiro Século Vazio.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ohara',TRUE,0),(gen_random_uuid(),q,'Alabasta',FALSE,1),(gen_random_uuid(),q,'Water Seven',FALSE,2),(gen_random_uuid(),q,'Dressrosa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'fill_blank','easy','Usopp sonha em se tornar um bravo ___ dos mares, seguindo os passos de seu pai.','Seu pai é membro da tripulação de Shanks.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Guerreiro',TRUE,0),(gen_random_uuid(),q,'Comandante',FALSE,1),(gen_random_uuid(),q,'Almirante',FALSE,2),(gen_random_uuid(),q,'Rei',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'fill_blank','medium','A espada mais valiosa de Zoro, herdada de sua falecida amiga de infância Kuina, se chama ___.','Ele promete a si mesmo se tornar o maior espadachim do mundo em memória dela.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Wado Ichimonji',TRUE,0),(gen_random_uuid(),q,'Sandai Kitetsu',FALSE,1),(gen_random_uuid(),q,'Shusui',FALSE,2),(gen_random_uuid(),q,'Enma',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'fill_blank','medium','A prisão de segurança máxima do Governo Mundial se chama ___.','Fica em uma ilha submersa, dividida em níveis cada vez mais perigosos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Impel Down',TRUE,0),(gen_random_uuid(),q,'Enies Lobby',FALSE,1),(gen_random_uuid(),q,'Marineford',FALSE,2),(gen_random_uuid(),q,'Mary Geoise',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'fill_blank','medium','A base principal da Marinha, palco da Guerra dos Maiores, se chama ___.','É lá que ocorre a execução pública de Portgas D. Ace.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Marineford',TRUE,0),(gen_random_uuid(),q,'Enies Lobby',FALSE,1),(gen_random_uuid(),q,'Impel Down',FALSE,2),(gen_random_uuid(),q,'Loguetown',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'fill_blank','medium','O país isolado governado por samurais em One Piece se chama ___.','Fica protegido por uma barreira de névoa permanente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Wano',TRUE,0),(gen_random_uuid(),q,'Zou',FALSE,1),(gen_random_uuid(),q,'Dressrosa',FALSE,2),(gen_random_uuid(),q,'Whole Cake Island',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'fill_blank','medium','A ilha subaquática visitada pela tripulação de Luffy após Sabaody se chama ___.','Fica próxima à raiz da grande muralha que corta o mundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fishman Island',TRUE,0),(gen_random_uuid(),q,'Skypiea',FALSE,1),(gen_random_uuid(),q,'Amazon Lily',FALSE,2),(gen_random_uuid(),q,'Punk Hazard',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'fill_blank','medium','A ilha no céu, alcançada através de uma corrente de ar chamada Knock Up Stream, se chama ___.','Enel governa o local se autoproclamando um deus.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Skypiea',TRUE,0),(gen_random_uuid(),q,'Zou',FALSE,1),(gen_random_uuid(),q,'Punk Hazard',FALSE,2),(gen_random_uuid(),q,'Green Bit',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'fill_blank','medium','A técnica de Sanji baseada em chutes flamejantes se chama ___.','Ele passa a usá-la após treinar em Kamabakka Kingdom.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Diable Jambe',TRUE,0),(gen_random_uuid(),q,'Sky Walk',FALSE,1),(gen_random_uuid(),q,'Party Table Kick',FALSE,2),(gen_random_uuid(),q,'Black Leg',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'fill_blank','medium','A transformação de Luffy que aumenta drasticamente sua velocidade se chama ___.','Deixa sua pele avermelhada durante o uso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gear Second',TRUE,0),(gen_random_uuid(),q,'Gear Third',FALSE,1),(gen_random_uuid(),q,'Gear Fourth',FALSE,2),(gen_random_uuid(),q,'Gear Fifth',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'fill_blank','medium','A transformação de Luffy que infla seus ossos, aumentando o tamanho dos membros, se chama ___.','Ele fica com aparência gigante enquanto a mantém ativa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gear Third',TRUE,0),(gen_random_uuid(),q,'Gear Second',FALSE,1),(gen_random_uuid(),q,'Gear Fourth',FALSE,2),(gen_random_uuid(),q,'Gear Fifth',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'fill_blank','medium','O haki que permite prever ataques antes que aconteçam se chama Haki da ___.','É essencial para lutar contra adversários muito mais rápidos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Percepção',TRUE,0),(gen_random_uuid(),q,'Armamento',FALSE,1),(gen_random_uuid(),q,'Realeza',FALSE,2),(gen_random_uuid(),q,'Intuição',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'fill_blank','medium','O haki que permite atacar diretamente usuários de frutas Logia se chama Haki do ___.','Reveste o corpo do usuário com uma armadura invisível de energia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Armamento',TRUE,0),(gen_random_uuid(),q,'Percepção',FALSE,1),(gen_random_uuid(),q,'Rei',FALSE,2),(gen_random_uuid(),q,'Elemento',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'fill_blank','medium','A organização secreta liderada por Crocodile em Alabasta se chama ___.','Seu objetivo era tomar o reino do deserto pela força.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Baroque Works',TRUE,0),(gen_random_uuid(),q,'Cipher Pol',FALSE,1),(gen_random_uuid(),q,'Revolutionary Army',FALSE,2),(gen_random_uuid(),q,'Donquixote Family',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'fill_blank','medium','O reino desértico governado pela princesa Vivi se chama ___.','Foi quase destruído por uma guerra civil provocada por Crocodile.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Alabasta',TRUE,0),(gen_random_uuid(),q,'Drum Kingdom',FALSE,1),(gen_random_uuid(),q,'Dressrosa',FALSE,2),(gen_random_uuid(),q,'Zou',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'fill_blank','hard','O haki raro que permite dominar diretamente a vontade de outras pessoas se chama Haki do ___.','Apenas uma pequena fração dos seres humanos consegue usá-lo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rei',TRUE,0),(gen_random_uuid(),q,'Armamento',FALSE,1),(gen_random_uuid(),q,'Percepção',FALSE,2),(gen_random_uuid(),q,'Ancestral',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'fill_blank','hard','O almirante de frota da Marinha durante a Guerra de Marineford se chama ___.','Ele comanda toda a operação para impedir o resgate de Ace.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sengoku',TRUE,0),(gen_random_uuid(),q,'Akainu',FALSE,1),(gen_random_uuid(),q,'Kizaru',FALSE,2),(gen_random_uuid(),q,'Kong',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'fill_blank','hard','A espada negra lendária empunhada por Dracule Mihawk se chama ___.','É considerada a melhor lâmina do mundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoru',TRUE,0),(gen_random_uuid(),q,'Shusui',FALSE,1),(gen_random_uuid(),q,'Enma',FALSE,2),(gen_random_uuid(),q,'Wado Ichimonji',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'fill_blank','hard','O braço direito de Shanks, imediato de seu bando pirata, se chama ___.','Ele é conhecido por sua inteligência estratégica e calma incomum.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Benn Beckman',TRUE,0),(gen_random_uuid(),q,'Yasopp',FALSE,1),(gen_random_uuid(),q,'Lucky Roux',FALSE,2),(gen_random_uuid(),q,'Rockstar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'fill_blank','hard','O Yonkou conhecido como Barba Branca, considerado o homem mais forte do mundo, se chama ___.','Ele morre defendendo Ace durante a Guerra de Marineford.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Edward Newgate',TRUE,0),(gen_random_uuid(),q,'Kaido',FALSE,1),(gen_random_uuid(),q,'Shanks',FALSE,2),(gen_random_uuid(),q,'Marshall D. Teach',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'fill_blank','hard','A fruta que concede a Marco a regeneração através de fogo azul fênix se chama ___.','Ele é comandante da Primeira Divisão de Barba Branca.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tori Tori no Mi: Modelo Fênix',TRUE,0),(gen_random_uuid(),q,'Mera Mera no Mi',FALSE,1),(gen_random_uuid(),q,'Yami Yami no Mi',FALSE,2),(gen_random_uuid(),q,'Hana Hana no Mi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'fill_blank','hard','O Shichibukai que controla sombras e exércitos de zumbis se chama ___.','Ele governa Thriller Bark, ilha em formato de navio gigante.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gecko Moria',TRUE,0),(gen_random_uuid(),q,'Boa Hancock',FALSE,1),(gen_random_uuid(),q,'Jinbe',FALSE,2),(gen_random_uuid(),q,'Doflamingo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'fill_blank','hard','O primeiro Shogun de Wano a se rebelar contra o antigo regime, símbolo da resistência, se chama Kozuki ___.','Sua execução pública marca um dos momentos mais trágicos da saga.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Oden',TRUE,0),(gen_random_uuid(),q,'Hiyori',FALSE,1),(gen_random_uuid(),q,'Momonosuke',FALSE,2),(gen_random_uuid(),q,'Toki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'fill_blank','hard','A filha de Kozuki Oden, líder disfarçada da resistência samurai em Wano, se chama Kozuki ___.','Ela é mais conhecida publicamente como a cortesã Komurasaki.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hiyori',TRUE,0),(gen_random_uuid(),q,'Toki',FALSE,1),(gen_random_uuid(),q,'Momonosuke',FALSE,2),(gen_random_uuid(),q,'Yamato',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'fill_blank','impossible','O navio usado por Gol D. Roger em sua jornada pelo Grand Line se chamava ___.','Foi construído pelo mesmo estaleiro que mais tarde constrói o Thousand Sunny.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Oro Jackson',TRUE,0),(gen_random_uuid(),q,'Moby Dick',FALSE,1),(gen_random_uuid(),q,'Red Force',FALSE,2),(gen_random_uuid(),q,'Sea Cat',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'fill_blank','impossible','O verdadeiro nome do pirata conhecido como Barba Negra é Marshall D. ___.','Ele trai e mata seu próprio capitão para roubar sua fruta do diabo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Teach',TRUE,0),(gen_random_uuid(),q,'Kaido',FALSE,1),(gen_random_uuid(),q,'Marco',FALSE,2),(gen_random_uuid(),q,'Roger',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'fill_blank','impossible','A organização de agentes secretos do governo que persegue Robin se chama Cipher Pol ___.','Seus membros se disfarçam como cidadãos comuns antes de agir.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nove',TRUE,0),(gen_random_uuid(),q,'Cinco',FALSE,1),(gen_random_uuid(),q,'Sete',FALSE,2),(gen_random_uuid(),q,'Três',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'fill_blank','impossible','A ilha onde fica a sede da justiça do Governo Mundial, palco da batalha contra o CP9, se chama ___.','Robin é levada até lá para ser julgada e executada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Enies Lobby',TRUE,0),(gen_random_uuid(),q,'Marineford',FALSE,1),(gen_random_uuid(),q,'Impel Down',FALSE,2),(gen_random_uuid(),q,'Mary Geoise',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- WHO_SAID — 30 perguntas (9 easy / 11 medium / 8 hard / 2 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'who_said','easy','Quem disse: "Eu serei o Rei dos Piratas!"?','É o objetivo declarado pelo protagonista logo no início da jornada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Monkey D. Luffy',TRUE,0),(gen_random_uuid(),q,'Roronoa Zoro',FALSE,1),(gen_random_uuid(),q,'Portgas D. Ace',FALSE,2),(gen_random_uuid(),q,'Shanks',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'who_said','easy','Quem disse: "Se eu perder de novo, não tenho mais o direito de te chamar de capitão"?','É um juramento feito após uma derrota humilhante no East Blue.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Roronoa Zoro',TRUE,0),(gen_random_uuid(),q,'Sanji',FALSE,1),(gen_random_uuid(),q,'Usopp',FALSE,2),(gen_random_uuid(),q,'Jinbe',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'who_said','easy','Quem disse: "Eu quero desenhar um mapa do mundo inteiro, com meus próprios olhos"?','A frase revela o sonho pessoal por trás da habilidade de navegação do personagem.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nami',TRUE,0),(gen_random_uuid(),q,'Robin',FALSE,1),(gen_random_uuid(),q,'Vivi',FALSE,2),(gen_random_uuid(),q,'Carrot',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'who_said','easy','Quem disse: "Eu sou um covarde, mas nunca vou mentir sobre meus sonhos"?','A frase reflete a autoconsciência bem-humorada do personagem sobre seus próprios medos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Usopp',TRUE,0),(gen_random_uuid(),q,'Chopper',FALSE,1),(gen_random_uuid(),q,'Brook',FALSE,2),(gen_random_uuid(),q,'Franky',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'who_said','easy','Quem disse: "Um homem não deveria chorar... mas às vezes é impossível segurar as lágrimas"?','A frase é dita em um raro momento de vulnerabilidade emocional do cozinheiro do bando.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sanji',TRUE,0),(gen_random_uuid(),q,'Zoro',FALSE,1),(gen_random_uuid(),q,'Franky',FALSE,2),(gen_random_uuid(),q,'Jinbe',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'who_said','easy','Quem disse: "Eu só quero ser útil para meus amigos, mesmo sendo apenas uma rena"?','A frase reflete a insegurança inicial do médico da tripulação.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chopper',TRUE,0),(gen_random_uuid(),q,'Usopp',FALSE,1),(gen_random_uuid(),q,'Brook',FALSE,2),(gen_random_uuid(),q,'Robin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'who_said','easy','Quem disse: "O passado não pode ser mudado, mas o futuro ainda está em nossas mãos"?','A frase reflete a superação pessoal de um trauma ligado à destruição de sua ilha natal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nico Robin',TRUE,0),(gen_random_uuid(),q,'Nami',FALSE,1),(gen_random_uuid(),q,'Vivi',FALSE,2),(gen_random_uuid(),q,'Perona',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'who_said','easy','Quem disse: "Yohoho! Mesmo sem olhos para chorar, minhas lágrimas não param"?','É a piada característica de um personagem que já morreu uma vez.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Brook',TRUE,0),(gen_random_uuid(),q,'Franky',FALSE,1),(gen_random_uuid(),q,'Chopper',FALSE,2),(gen_random_uuid(),q,'Jinbe',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'who_said','easy','Quem disse: "Eu sou super, super, SUPER feliz de estar nesta tripulação!"?','É a expressão típica de entusiasmo desse ciborgue construtor de navios.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Franky',TRUE,0),(gen_random_uuid(),q,'Brook',FALSE,1),(gen_random_uuid(),q,'Usopp',FALSE,2),(gen_random_uuid(),q,'Jinbe',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'who_said','medium','Quem disse: "Eu não vou deixar ninguém tocar nos meus nakama, custe o que custar"?','A frase resume a prioridade máxima do protagonista em qualquer batalha.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Luffy',TRUE,0),(gen_random_uuid(),q,'Zoro',FALSE,1),(gen_random_uuid(),q,'Sanji',FALSE,2),(gen_random_uuid(),q,'Ace',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'who_said','medium','Quem disse: "Eu escolhi seguir o caminho da espada, e vou até o fim dele"?','A frase reflete a determinação inabalável do espadachim do bando.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zoro',TRUE,0),(gen_random_uuid(),q,'Mihawk',FALSE,1),(gen_random_uuid(),q,'Sanji',FALSE,2),(gen_random_uuid(),q,'Ace',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'who_said','medium','Quem disse: "Eu criei esta organização para conquistar Alabasta usando meus próprios agentes disfarçados"?','A frase é dita pelo verdadeiro líder por trás de uma rebelião civil planejada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Crocodile',TRUE,0),(gen_random_uuid(),q,'Doflamingo',FALSE,1),(gen_random_uuid(),q,'Moria',FALSE,2),(gen_random_uuid(),q,'Akainu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'who_said','medium','Quem disse: "Eu vou proteger este reino, mesmo que precise abrir mão do meu título de princesa"?','A frase é dita por uma princesa disposta a se infiltrar disfarçada para salvar seu povo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vivi',TRUE,0),(gen_random_uuid(),q,'Nami',FALSE,1),(gen_random_uuid(),q,'Robin',FALSE,2),(gen_random_uuid(),q,'Hancock',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'who_said','medium','Quem disse: "Eu sou o homem mais forte do mundo, e ainda assim não consegui proteger meus filhos"?','A frase é dita por um Yonkou lendário em seus últimos momentos de vida.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Barba Branca',TRUE,0),(gen_random_uuid(),q,'Kaido',FALSE,1),(gen_random_uuid(),q,'Shanks',FALSE,2),(gen_random_uuid(),q,'Barba Negra',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'who_said','medium','Quem disse: "Eu escolhi seguir Barba Branca porque ele me deu algo que eu nunca tive: uma família"?','A frase é dita pelo irmão adotivo de Luffy, comandante da Segunda Divisão de Barba Branca.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ace',TRUE,0),(gen_random_uuid(),q,'Sabo',FALSE,1),(gen_random_uuid(),q,'Marco',FALSE,2),(gen_random_uuid(),q,'Jozu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'who_said','medium','Quem disse: "Eu vim até aqui para provar que sou digno de ser chamado de seu irmão"?','A frase é dita pelo terceiro irmão de Luffy, membro do Exército Revolucionário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sabo',TRUE,0),(gen_random_uuid(),q,'Ace',FALSE,1),(gen_random_uuid(),q,'Koala',FALSE,2),(gen_random_uuid(),q,'Dragon',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'who_said','medium','Quem disse: "Eu dei meu chapéu para um garoto corajoso, e um dia ele vai se tornar um grande pirata"?','A frase é dita anos depois de um encontro marcante com Luffy ainda criança.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shanks',TRUE,0),(gen_random_uuid(),q,'Rayleigh',FALSE,1),(gen_random_uuid(),q,'Garp',FALSE,2),(gen_random_uuid(),q,'Roger',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'who_said','medium','Quem disse: "Eu sou um revolucionário porque acredito que este mundo precisa mudar"?','A frase é dita pelo líder do Exército Revolucionário, pai de Luffy.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Monkey D. Dragon',TRUE,0),(gen_random_uuid(),q,'Sabo',FALSE,1),(gen_random_uuid(),q,'Ivankov',FALSE,2),(gen_random_uuid(),q,'Koala',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'who_said','medium','Quem disse: "Eu treinei meu neto para ser um Marine, mas ele escolheu ser pirata mesmo assim"?','A frase reflete a frustração bem-humorada de um vice-almirante lendário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Garp',TRUE,0),(gen_random_uuid(),q,'Sengoku',FALSE,1),(gen_random_uuid(),q,'Kong',FALSE,2),(gen_random_uuid(),q,'Zephyr',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'who_said','hard','Quem disse: "Eu não acredito em piedade quando o assunto é justiça"?','A frase reflete a visão extremista de um almirante da Marinha.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Akainu',TRUE,0),(gen_random_uuid(),q,'Aokiji',FALSE,1),(gen_random_uuid(),q,'Kizaru',FALSE,2),(gen_random_uuid(),q,'Fujitora',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'who_said','hard','Quem disse: "Eu sou o maior espadachim do mundo, e pretendo continuar sendo por muito tempo"?','A frase é dita com desdém após um duelo amistoso contra um jovem espadachim promissor.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dracule Mihawk',TRUE,0),(gen_random_uuid(),q,'Shanks',FALSE,1),(gen_random_uuid(),q,'Rayleigh',FALSE,2),(gen_random_uuid(),q,'Zoro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'who_said','hard','Quem disse: "Eu controlo exércitos de zumbis porque perdi minha própria sombra para Barba Branca"?','A frase revela a motivação de vingança de um dos ex-Shichibukai.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gecko Moria',TRUE,0),(gen_random_uuid(),q,'Doflamingo',FALSE,1),(gen_random_uuid(),q,'Crocodile',FALSE,2),(gen_random_uuid(),q,'Hancock',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'who_said','hard','Quem disse: "Eu governei Wano com mão de ferro, e ninguém teve coragem de me desafiar até agora"?','A frase é dita por um Yonkou conhecido como a "criatura mais forte do mundo".',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaido',TRUE,0),(gen_random_uuid(),q,'Big Mom',FALSE,1),(gen_random_uuid(),q,'Barba Negra',FALSE,2),(gen_random_uuid(),q,'Orochi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'who_said','hard','Quem disse: "Eu sou o xogum títere que trai meu próprio povo em troca de poder"?','A frase é dita com desprezo por si mesmo pelo governante fantoche de Wano.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kurozumi Orochi',TRUE,0),(gen_random_uuid(),q,'Kaido',FALSE,1),(gen_random_uuid(),q,'Kozuki Oden',FALSE,2),(gen_random_uuid(),q,'Yamato',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'who_said','hard','Quem disse: "Eu abri mão do meu título de Shogun para proteger meu filho e meu povo"?','A frase é dita por um antigo governante samurai antes de sua execução pública.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kozuki Oden',TRUE,0),(gen_random_uuid(),q,'Kurozumi Orochi',FALSE,1),(gen_random_uuid(),q,'Yamato',FALSE,2),(gen_random_uuid(),q,'Momonosuke',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'who_said','hard','Quem disse: "Eu escondi minha identidade por anos para liderar a resistência de Wano nas sombras"?','A frase é dita por uma cortesã que na verdade é a filha secreta do antigo Shogun.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kozuki Hiyori',TRUE,0),(gen_random_uuid(),q,'Kozuki Toki',FALSE,1),(gen_random_uuid(),q,'Yamato',FALSE,2),(gen_random_uuid(),q,'Otoko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'who_said','hard','Quem disse: "Eu sou o comandante da Segunda Divisão, e sirvo ao homem mais forte do mundo com orgulho"?','A frase é dita pelo irmão adotivo de Luffy antes de sua morte em Marineford.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Portgas D. Ace',TRUE,0),(gen_random_uuid(),q,'Marco',FALSE,1),(gen_random_uuid(),q,'Jozu',FALSE,2),(gen_random_uuid(),q,'Vista',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'who_said','impossible','Quem disse: "Eu era o imediato de Barba Branca, e vou continuar protegendo seus ideais mesmo após sua morte"?','A frase é dita pelo comandante da Primeira Divisão, dono de uma fruta fênix.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Marco',TRUE,0),(gen_random_uuid(),q,'Jozu',FALSE,1),(gen_random_uuid(),q,'Vista',FALSE,2),(gen_random_uuid(),q,'Ace',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'who_said','impossible','Quem disse: "Eu sirvo ao Governo Mundial como agente secreto, escondido atrás de uma fachada perfeita"?','A frase é dita por um assassino do CP9 disfarçado como funcionário comum.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rob Lucci',TRUE,0),(gen_random_uuid(),q,'Spandam',FALSE,1),(gen_random_uuid(),q,'Kaku',FALSE,2),(gen_random_uuid(),q,'Jabra',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- EPISODE_ARC — 15 perguntas (7 medium / 6 hard / 2 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'episode_arc','medium','Em qual saga Luffy reúne sua tripulação inicial, incluindo Zoro, Nami, Usopp e Sanji?','Termina com a partida definitiva rumo ao Grand Line.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga East Blue',TRUE,0),(gen_random_uuid(),q,'Saga Alabasta',FALSE,1),(gen_random_uuid(),q,'Saga Water Seven',FALSE,2),(gen_random_uuid(),q,'Saga Skypiea',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'episode_arc','medium','Em qual saga os Chapéus de Palha enfrentam Crocodile para salvar o reino de Alabasta de uma guerra civil?','Vivi se junta temporariamente à tripulação durante este arco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga Alabasta',TRUE,0),(gen_random_uuid(),q,'Saga East Blue',FALSE,1),(gen_random_uuid(),q,'Saga Skypiea',FALSE,2),(gen_random_uuid(),q,'Saga Water Seven',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'episode_arc','medium','Em qual saga ocorre o julgamento de Robin em Enies Lobby, palco da batalha contra o CP9?','Toda a tripulação declara guerra ao Governo Mundial para salvá-la.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga Water Seven / Enies Lobby',TRUE,0),(gen_random_uuid(),q,'Saga Alabasta',FALSE,1),(gen_random_uuid(),q,'Saga Thriller Bark',FALSE,2),(gen_random_uuid(),q,'Saga Skypiea',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'episode_arc','medium','Em qual saga a tripulação se separa por dois anos para treinar individualmente após a Guerra de Marineford?','Cada membro busca um mentor diferente para se fortalecer.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga Pós-Guerra (Timeskip)',TRUE,0),(gen_random_uuid(),q,'Saga Fishman Island',FALSE,1),(gen_random_uuid(),q,'Saga Wano',FALSE,2),(gen_random_uuid(),q,'Saga Dressrosa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'episode_arc','medium','Em qual saga os Chapéus de Palha visitam pela primeira vez a Ilha dos Homens-Peixe?','Jinbe se junta oficialmente à tripulação logo após este arco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga Fishman Island',TRUE,0),(gen_random_uuid(),q,'Saga Punk Hazard',FALSE,1),(gen_random_uuid(),q,'Saga Dressrosa',FALSE,2),(gen_random_uuid(),q,'Saga Skypiea',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'episode_arc','medium','Em qual saga ocorre a Guerra de Marineford, marcada pela morte de Ace?','É um dos pontos de virada mais marcantes da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga da Guerra dos Maiores',TRUE,0),(gen_random_uuid(),q,'Saga de Alabasta',FALSE,1),(gen_random_uuid(),q,'Saga de Wano',FALSE,2),(gen_random_uuid(),q,'Saga de Dressrosa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'episode_arc','medium','Em qual saga os Chapéus de Palha desafiam Kaido para libertar o País de Wano?','Termina com a queda de Onigashima e a derrota do Yonkou.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga Wano',TRUE,0),(gen_random_uuid(),q,'Saga Whole Cake Island',FALSE,1),(gen_random_uuid(),q,'Saga Dressrosa',FALSE,2),(gen_random_uuid(),q,'Saga Fishman Island',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'episode_arc','hard','Em qual saga Nami rouba o mapa do Grand Line dos piratas de Arlong, seu antigo capitão?','Este arco revela a trágica infância da navegadora.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga East Blue',TRUE,0),(gen_random_uuid(),q,'Saga Alabasta',FALSE,1),(gen_random_uuid(),q,'Saga Skypiea',FALSE,2),(gen_random_uuid(),q,'Saga Water Seven',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'episode_arc','hard','Em qual saga Luffy enfrenta Enel, um usuário de trovão que se autoproclama um deus?','O confronto acontece em uma ilha flutuante acima das nuvens.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga Skypiea',TRUE,0),(gen_random_uuid(),q,'Saga Alabasta',FALSE,1),(gen_random_uuid(),q,'Saga Water Seven',FALSE,2),(gen_random_uuid(),q,'Saga Thriller Bark',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'episode_arc','hard','Em qual saga Franky se junta oficialmente à tripulação como carpinteiro naval?','Ele reconstrói completamente o navio dos Chapéus de Palha neste arco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga Water Seven / Enies Lobby',TRUE,0),(gen_random_uuid(),q,'Saga Alabasta',FALSE,1),(gen_random_uuid(),q,'Saga Skypiea',FALSE,2),(gen_random_uuid(),q,'Saga Thriller Bark',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'episode_arc','hard','Em qual saga Brook é resgatado e se junta oficialmente à tripulação como músico?','A ilha visitada tem formato de um navio fantasma gigante.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga Thriller Bark',TRUE,0),(gen_random_uuid(),q,'Saga Water Seven',FALSE,1),(gen_random_uuid(),q,'Saga Fishman Island',FALSE,2),(gen_random_uuid(),q,'Saga Skypiea',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'episode_arc','hard','Em qual saga é revelado que a fruta de Luffy é, na verdade, a lendária Hito Hito no Mi: Modelo Nika?','A revelação acontece durante o auge da batalha contra Kaido.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga Wano',TRUE,0),(gen_random_uuid(),q,'Saga Dressrosa',FALSE,1),(gen_random_uuid(),q,'Saga Whole Cake Island',FALSE,2),(gen_random_uuid(),q,'Saga Fishman Island',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'episode_arc','hard','Em qual saga Sanji se reencontra com sua família biológica, a Família Vinsmoke?','Ele quase é forçado a um casamento arranjado neste arco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga Whole Cake Island',TRUE,0),(gen_random_uuid(),q,'Saga Dressrosa',FALSE,1),(gen_random_uuid(),q,'Saga Wano',FALSE,2),(gen_random_uuid(),q,'Saga Punk Hazard',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'episode_arc','impossible','Em qual saga Robin é forçada a se entregar ao CP9 para proteger seus companheiros?','A decisão dela motiva a tripulação inteira a declarar guerra ao Governo Mundial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga Water Seven / Enies Lobby',TRUE,0),(gen_random_uuid(),q,'Saga Alabasta',FALSE,1),(gen_random_uuid(),q,'Saga Thriller Bark',FALSE,2),(gen_random_uuid(),q,'Saga Skypiea',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'episode_arc','impossible','Em qual saga Luffy invade Impel Down para resgatar seu irmão Ace antes da execução?','Ele conta com aliados improváveis dentro da própria prisão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga Impel Down',TRUE,0),(gen_random_uuid(),q,'Saga da Guerra dos Maiores',FALSE,1),(gen_random_uuid(),q,'Saga Fishman Island',FALSE,2),(gen_random_uuid(),q,'Saga Water Seven',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- CHRONOLOGICAL — 7 perguntas (4 hard / 3 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'chronological','hard','Ordene cronologicamente as sagas a seguir, da mais antiga à mais recente.','Cobrem desde o início da jornada até os arcos mais recentes do Novo Mundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'East Blue',TRUE,0),(gen_random_uuid(),q,'Alabasta',FALSE,1),(gen_random_uuid(),q,'Marineford',FALSE,2),(gen_random_uuid(),q,'Wano',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'chronological','hard','Ordene cronologicamente a entrada dos seguintes membros na tripulação, do primeiro ao último.','Todos entram ainda durante a saga East Blue.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zoro',TRUE,0),(gen_random_uuid(),q,'Nami',FALSE,1),(gen_random_uuid(),q,'Usopp',FALSE,2),(gen_random_uuid(),q,'Sanji',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'chronological','hard','Ordene cronologicamente a entrada dos seguintes membros na tripulação, do primeiro ao último.','Cobrem desde a saga Drum Kingdom até a saga Thriller Bark.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chopper',TRUE,0),(gen_random_uuid(),q,'Robin',FALSE,1),(gen_random_uuid(),q,'Franky',FALSE,2),(gen_random_uuid(),q,'Brook',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'chronological','hard','Ordene cronologicamente os eventos da Guerra de Marineford, do primeiro ao último.','Cobrem desde a chegada de Luffy até a retirada final dos piratas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chegada de Luffy a Marineford',TRUE,0),(gen_random_uuid(),q,'Morte de Barba Branca',FALSE,1),(gen_random_uuid(),q,'Morte de Ace',FALSE,2),(gen_random_uuid(),q,'Retirada dos piratas do campo de batalha',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'chronological','impossible','Ordene cronologicamente os eventos a seguir da saga Alabasta e Water Seven, do mais antigo ao mais recente.','Cobrem desde a formação da Baroque Works até o início do timeskip.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Formação da Baroque Works',TRUE,0),(gen_random_uuid(),q,'Queda de Crocodile em Alabasta',FALSE,1),(gen_random_uuid(),q,'Julgamento de Robin em Enies Lobby',FALSE,2),(gen_random_uuid(),q,'Início do timeskip de dois anos',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'chronological','impossible','Ordene cronologicamente os seguintes eventos da vida de Luffy, do mais antigo ao mais recente.','Cobrem desde sua infância até a Guerra de Marineford.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Encontro com Shanks na infância',TRUE,0),(gen_random_uuid(),q,'Partida de Fuusha Village',FALSE,1),(gen_random_uuid(),q,'Formação da tripulação original',FALSE,2),(gen_random_uuid(),q,'Guerra de Marineford',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'chronological','impossible','Ordene cronologicamente os seguintes eventos da saga Wano, do mais antigo ao mais recente.','Cobrem desde a chegada dos Chapéus de Palha até a libertação do país.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chegada dos Chapéus de Palha a Wano',TRUE,0),(gen_random_uuid(),q,'Aliança com os samurais da resistência',FALSE,1),(gen_random_uuid(),q,'Derrota de Kaido em Onigashima',FALSE,2),(gen_random_uuid(),q,'Libertação oficial de Wano',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- Complemento para fechar 150 perguntas na distribuição exata
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','easy','Qual é o nome do professor de esgrima e mentor de Zoro durante o timeskip, ex-primeiro imediato de Roger?','Ele também é o responsável por ensinar Luffy a usar o haki.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Silvers Rayleigh',TRUE,0),(gen_random_uuid(),q,'Dracule Mihawk',FALSE,1),(gen_random_uuid(),q,'Sengoku',FALSE,2),(gen_random_uuid(),q,'Garp',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','medium','Qual é o nome da imperatriz Yonkou conhecida por sua obsessão por doces e bolos?','Ela governa a Whole Cake Island com dezenas de filhos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Big Mom',TRUE,0),(gen_random_uuid(),q,'Boa Hancock',FALSE,1),(gen_random_uuid(),q,'Nefertari Vivi',FALSE,2),(gen_random_uuid(),q,'Perona',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','medium','Qual é o nome do reino insular governado pelo antigo Shichibukai Donquixote Doflamingo?','Ele controla o local usando fios invisíveis para manipular pessoas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dressrosa',TRUE,0),(gen_random_uuid(),q,'Zou',FALSE,1),(gen_random_uuid(),q,'Punk Hazard',FALSE,2),(gen_random_uuid(),q,'Amazon Lily',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','hard','Qual é o nome da Imperatriz Pirata que governa a ilha das guerreiras Amazon Lily?','Ela é a única mulher a ostentar o título de Shichibukai na série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Boa Hancock',TRUE,0),(gen_random_uuid(),q,'Big Mom',FALSE,1),(gen_random_uuid(),q,'Nico Robin',FALSE,2),(gen_random_uuid(),q,'Perona',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','hard','Qual é o nome do médico responsável por curar Luffy após a Guerra de Marineford, especialista em transplantes proibidos?','Ele é o criador de diversas armas biológicas usadas em Punk Hazard.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Trafalgar Law',TRUE,0),(gen_random_uuid(),q,'Kureha',FALSE,1),(gen_random_uuid(),q,'Chopper',FALSE,2),(gen_random_uuid(),q,'Hogback',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'text','hard','Qual é o nome da fruta de Trafalgar Law, que lhe permite manipular o espaço dentro de uma esfera?','É considerada uma das frutas mais poderosas e táticas de toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ope Ope no Mi',TRUE,0),(gen_random_uuid(),q,'Nikyu Nikyu no Mi',FALSE,1),(gen_random_uuid(),q,'Gura Gura no Mi',FALSE,2),(gen_random_uuid(),q,'Ito Ito no Mi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'fill_blank','hard','A imperatriz Yonkou conhecida por sua obsessão por doces e bolos se chama ___.','Ela governa a Whole Cake Island com dezenas de filhos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Big Mom',TRUE,0),(gen_random_uuid(),q,'Boa Hancock',FALSE,1),(gen_random_uuid(),q,'Nefertari Vivi',FALSE,2),(gen_random_uuid(),q,'Perona',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_op,'who_said','hard','Quem disse: "Eu vou cortar qualquer um que ameace o equilíbrio deste mundo, mesmo que seja um deus"?','A frase é dita pelo maior espadachim do mundo antes de um confronto decisivo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dracule Mihawk',TRUE,0),(gen_random_uuid(),q,'Zoro',FALSE,1),(gen_random_uuid(),q,'Shanks',FALSE,2),(gen_random_uuid(),q,'Rayleigh',FALSE,3);

END $$;
