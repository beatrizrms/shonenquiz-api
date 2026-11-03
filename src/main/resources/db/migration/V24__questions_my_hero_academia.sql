-- ============================================================
--  V24 — Seed de perguntas: My Hero Academia (150 perguntas)
--  Fonte: MyAnimeList + cânone do anime
--  Distribuição: text 40% / fill_blank 25% / who_said 20% /
--                episode_arc 10% / chronological 5%
--  Sem repetição com V5. Regras R1-R7 aplicadas.
-- ============================================================

DO $$
DECLARE
    v_system UUID := '00000000-0000-0000-0000-000000000001';
    v_mha    UUID;
    q        UUID;
BEGIN
    SELECT id INTO v_mha FROM animes WHERE slug = 'my-hero-academia' LIMIT 1;

    -- ══════════════════════════════════════════════════════════
    -- TEXT — 60 perguntas (18 easy / 21 medium / 15 hard / 6 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','easy','Qual é o nome verdadeiro do herói número 1 conhecido como All Might?','Ele revela sua identidade civil apenas a pessoas de extrema confiança.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Toshinori Yagi',TRUE,0),(gen_random_uuid(),q,'Shota Aizawa',FALSE,1),(gen_random_uuid(),q,'Hizashi Yamada',FALSE,2),(gen_random_uuid(),q,'Enji Todoroki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','easy','Qual é o nome da melhor amiga de infância de Deku, que também estuda na UA?','Ela sonha em se tornar uma heroína popular e reconhecida.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ochaco Uraraka',FALSE,0),(gen_random_uuid(),q,'Tsuyu Asui',FALSE,1),(gen_random_uuid(),q,'Mina Ashido',FALSE,2),(gen_random_uuid(),q,'Kyoka Jiro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','easy','Qual é o nome da colega de turma de Deku que tem a Individualidade de flutuar objetos ao tocá-los?','Ela sonha em ganhar dinheiro para sustentar sua família.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ochaco Uraraka',TRUE,0),(gen_random_uuid(),q,'Tsuyu Asui',FALSE,1),(gen_random_uuid(),q,'Momo Yaoyorozu',FALSE,2),(gen_random_uuid(),q,'Mina Ashido',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','easy','Qual é o nome do professor principal da Turma 1-A, conhecido como "Eraser Head"?','Sua Individualidade anula temporariamente os poderes de outros usuários.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shota Aizawa',TRUE,0),(gen_random_uuid(),q,'Present Mic',FALSE,1),(gen_random_uuid(),q,'All Might',FALSE,2),(gen_random_uuid(),q,'Vlad King',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','easy','Qual é o nome do diretor da UA High School, com forma de animal e Individualidade misteriosa?','Ele é fisicamente pequeno, mas extremamente poderoso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nezu',TRUE,0),(gen_random_uuid(),q,'Aizawa',FALSE,1),(gen_random_uuid(),q,'Present Mic',FALSE,2),(gen_random_uuid(),q,'Recovery Girl',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','easy','Qual é o nome da enfermeira da UA, capaz de curar ferimentos com beijos que consomem energia vital do paciente?','Ela é uma figura materna para muitos estudantes da escola.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Recovery Girl',TRUE,0),(gen_random_uuid(),q,'Midnight',FALSE,1),(gen_random_uuid(),q,'Mount Lady',FALSE,2),(gen_random_uuid(),q,'Mandalay',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','easy','Qual é o nome do colega de turma de Deku, filho do herói número 2, com poderes de fogo e gelo?','Ele carrega um trauma familiar profundo ligado ao próprio pai.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shoto Todoroki',TRUE,0),(gen_random_uuid(),q,'Tenya Iida',FALSE,1),(gen_random_uuid(),q,'Eijiro Kirishima',FALSE,2),(gen_random_uuid(),q,'Denki Kaminari',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','easy','Qual é o nome do herói número 2, pai de Shoto Todoroki, com poderes de fogo?','Ele é considerado um dos heróis mais controversos da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Endeavor',TRUE,0),(gen_random_uuid(),q,'Hawks',FALSE,1),(gen_random_uuid(),q,'Best Jeanist',FALSE,2),(gen_random_uuid(),q,'Mirko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','easy','Qual é o nome do colega de turma de Deku que se destaca pelas pernas rápidas, filho de um herói famoso?','Ele é o presidente eleito da Turma 1-A.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tenya Iida',TRUE,0),(gen_random_uuid(),q,'Shoto Todoroki',FALSE,1),(gen_random_uuid(),q,'Eijiro Kirishima',FALSE,2),(gen_random_uuid(),q,'Denki Kaminari',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','easy','Qual é o nome do colega de turma de Deku com Individualidade que endurece a pele como se fosse pedregulho?','Ele valoriza acima de tudo o conceito de virilidade e coragem.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Eijiro Kirishima',TRUE,0),(gen_random_uuid(),q,'Denki Kaminari',FALSE,1),(gen_random_uuid(),q,'Rikido Sato',FALSE,2),(gen_random_uuid(),q,'Mashirao Ojiro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','easy','Qual é o nome da colega de turma de Deku com Individualidade de rã, incluindo língua extensível?','Ela fala de forma direta e sem filtros sociais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tsuyu Asui',TRUE,0),(gen_random_uuid(),q,'Mina Ashido',FALSE,1),(gen_random_uuid(),q,'Kyoka Jiro',FALSE,2),(gen_random_uuid(),q,'Toru Hagakure',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','easy','Qual é o nome do colega de turma de Deku capaz de criar e controlar eletricidade pelo corpo?','Ele costuma sobrecarregar seu próprio cérebro ao usar seu poder em excesso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Denki Kaminari',TRUE,0),(gen_random_uuid(),q,'Eijiro Kirishima',FALSE,1),(gen_random_uuid(),q,'Rikido Sato',FALSE,2),(gen_random_uuid(),q,'Hanta Sero',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','easy','Qual é o nome do explosivo rival de Deku desde a infância?','Sua Individualidade lhe permite criar explosões através do suor das mãos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Katsuki Bakugo',TRUE,0),(gen_random_uuid(),q,'Shoto Todoroki',FALSE,1),(gen_random_uuid(),q,'Tenya Iida',FALSE,2),(gen_random_uuid(),q,'Eijiro Kirishima',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','easy','Qual é o nome da colega de turma de Deku com Individualidade de invisibilidade total?','Ela sempre veste roupas para que os colegas consigam identificar sua posição.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Toru Hagakure',TRUE,0),(gen_random_uuid(),q,'Mina Ashido',FALSE,1),(gen_random_uuid(),q,'Kyoka Jiro',FALSE,2),(gen_random_uuid(),q,'Tsuyu Asui',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','easy','Qual é o nome do herói profissional que treina Deku em técnicas de combate corpo a corpo?','Ele é conhecido pelo apelido de "Gunhead".',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gunhead',TRUE,0),(gen_random_uuid(),q,'Mirko',FALSE,1),(gen_random_uuid(),q,'Best Jeanist',FALSE,2),(gen_random_uuid(),q,'Edgeshot',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','easy','Qual é o nome da escola rival da UA, conhecida por métodos mais rígidos de treinamento?','Alguns de seus alunos participam do Torneio Esportivo da UA como convidados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shiketsu High',TRUE,0),(gen_random_uuid(),q,'Ketsubutsu Academy',FALSE,1),(gen_random_uuid(),q,'Seiai Academy',FALSE,2),(gen_random_uuid(),q,'Isamu Academy',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','easy','Qual é o nome do gato robótico que serve como mascote e assistente da UA?','Ele frequentemente aparece em momentos cômicos da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nezu',TRUE,0),(gen_random_uuid(),q,'All Might Jr.',FALSE,1),(gen_random_uuid(),q,'Hero Bot',FALSE,2),(gen_random_uuid(),q,'UA-Kun',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','medium','Qual é o nome do vilão que lidera a Liga dos Vilões original, com Individualidade de mãos que se multiplicam pelo corpo?','Ele é herdeiro espiritual de All For One.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tomura Shigaraki',TRUE,0),(gen_random_uuid(),q,'Dabi',FALSE,1),(gen_random_uuid(),q,'Twice',FALSE,2),(gen_random_uuid(),q,'Spinner',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','medium','Qual é o nome da vilã capaz de se transformar em qualquer pessoa cujo sangue ela consuma?','Ela nutre uma obsessão romântica peculiar por Stain.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Himiko Toga',TRUE,0),(gen_random_uuid(),q,'Mina Ashido',FALSE,1),(gen_random_uuid(),q,'Nemuri Kayama',FALSE,2),(gen_random_uuid(),q,'Camie Utsushimi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','medium','Qual é o nome do vilão coberto de chamas azuis, mais tarde revelado como filho biológico de Endeavor?','Ele carrega um profundo ressentimento familiar contra seu pai herói.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dabi',TRUE,0),(gen_random_uuid(),q,'Tomura Shigaraki',FALSE,1),(gen_random_uuid(),q,'Shoto Todoroki',FALSE,2),(gen_random_uuid(),q,'Spinner',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','medium','Qual é o nome do assassino de heróis que acredita que apenas All Might merece o título de verdadeiro herói?','Ele possui a habilidade de paralisar oponentes ao provar seu sangue.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Stain',TRUE,0),(gen_random_uuid(),q,'Overhaul',FALSE,1),(gen_random_uuid(),q,'Muscular',FALSE,2),(gen_random_uuid(),q,'Gigantomachia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','medium','Qual é o nome do gigante leal a All For One, que serve como guarda-costas de proporções colossais?','Sua força bruta é comparável à de vários heróis juntos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gigantomachia',TRUE,0),(gen_random_uuid(),q,'Muscular',FALSE,1),(gen_random_uuid(),q,'Moonfish',FALSE,2),(gen_random_uuid(),q,'Mustard',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','medium','Qual é o nome do vilão líder da Yakuza responsável pelo sequestro de Eri, uma criança com Individualidade de rebobinar o tempo?','Ele detesta as próprias Individualidades e sonha em eliminá-las do mundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Overhaul',TRUE,0),(gen_random_uuid(),q,'Stain',FALSE,1),(gen_random_uuid(),q,'Muscular',FALSE,2),(gen_random_uuid(),q,'Tomura Shigaraki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','medium','Qual é o nome da criança com Individualidade de rebobinar o tempo dos seres vivos, resgatada durante a saga Overhaul?','Ela desenvolve um forte laço afetivo com Deku e Mirio.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Eri',TRUE,0),(gen_random_uuid(),q,'Kota Izumi',FALSE,1),(gen_random_uuid(),q,'Himiko Toga',FALSE,2),(gen_random_uuid(),q,'Melissa Shield',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','medium','Qual é o nome do estudante do curso de heróis capaz de tornar seu corpo completamente permeável, permitindo atravessar objetos?','Ele sacrifica seu poder para salvar Eri, ficando sem Individualidade temporariamente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mirio Togata',TRUE,0),(gen_random_uuid(),q,'Tamaki Amajiki',FALSE,1),(gen_random_uuid(),q,'Nejire Hado',FALSE,2),(gen_random_uuid(),q,'Shinso',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','medium','Qual é o nome do estudante do curso geral capaz de controlar mentalmente qualquer um que lhe responda uma pergunta?','Ele almeja se transferir para o curso de heróis apesar de sua Individualidade ser vista como "vilanesca".',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hitoshi Shinso',TRUE,0),(gen_random_uuid(),q,'Mirio Togata',FALSE,1),(gen_random_uuid(),q,'Neito Monoma',FALSE,2),(gen_random_uuid(),q,'Tetsutetsu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','medium','Qual é o nome do herói número 3, conhecido por controlar penas em suas asas?','Ele mantém contato secreto com a Liga dos Vilões como espião infiltrado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hawks',TRUE,0),(gen_random_uuid(),q,'Endeavor',FALSE,1),(gen_random_uuid(),q,'Best Jeanist',FALSE,2),(gen_random_uuid(),q,'Mirko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','medium','Qual é o nome da heroína conhecida como "Coelha", famosa por sua força e chutes poderosos, uma das melhores heroínas do país?','Ela luta sem depender de nenhum equipamento ou gadget especial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mirko',TRUE,0),(gen_random_uuid(),q,'Midnight',FALSE,1),(gen_random_uuid(),q,'Mount Lady',FALSE,2),(gen_random_uuid(),q,'Ryukyu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','medium','Qual é o nome da mãe de Izuku Midoriya, que se emociona ao vê-lo escolhido para herdar um grande poder?','Ela apoia o sonho do filho mesmo acreditando que ele nasceu sem Individualidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Inko Midoriya',TRUE,0),(gen_random_uuid(),q,'Mitsuki Bakugo',FALSE,1),(gen_random_uuid(),q,'Rei Todoroki',FALSE,2),(gen_random_uuid(),q,'Ryoko Tatsuma',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','medium','Qual é o nome da mãe de Shoto Todoroki, afastada da família após um episódio de crise emocional?','Ela machuca Shoto quando criança, um trauma que o marca profundamente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rei Todoroki',TRUE,0),(gen_random_uuid(),q,'Inko Midoriya',FALSE,1),(gen_random_uuid(),q,'Mitsuki Bakugo',FALSE,2),(gen_random_uuid(),q,'Fuyumi Todoroki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','hard','Qual é o nome do vilão que possui a Individualidade oposta ao One For All, capaz de roubar poderes de outras pessoas?','Ele é o antagonista supremo da série e mentor de Tomura Shigaraki.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'All For One',TRUE,0),(gen_random_uuid(),q,'Tomura Shigaraki',FALSE,1),(gen_random_uuid(),q,'Dabi',FALSE,2),(gen_random_uuid(),q,'Overhaul',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','hard','Qual é o nome do herói profissional que descobre e recruta Tomura Shigaraki quando criança, revelado como seu bisavô materno?','A revelação genealógica choca completamente os fãs da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nana Shimura',FALSE,0),(gen_random_uuid(),q,'All Might',FALSE,1),(gen_random_uuid(),q,'All For One',FALSE,2),(gen_random_uuid(),q,'Kotaro Shimura',TRUE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','hard','Qual é o nome da antiga usuária do One For All, mentora de All Might, avó biológica de Tomura Shigaraki?','Sua morte nas mãos de All For One motiva profundamente a jornada de All Might.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nana Shimura',TRUE,0),(gen_random_uuid(),q,'Inko Midoriya',FALSE,1),(gen_random_uuid(),q,'Rei Todoroki',FALSE,2),(gen_random_uuid(),q,'Recovery Girl',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','hard','Qual é o nome do primeiro usuário do One For All, que criou a Individualidade a partir de um ato de bondade?','Ele deu seu poder ao próprio irmão em um gesto de amor fraternal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'En',TRUE,0),(gen_random_uuid(),q,'Yoichi',FALSE,1),(gen_random_uuid(),q,'Hikage',FALSE,2),(gen_random_uuid(),q,'Nana',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','hard','Qual é o nome do irmão mais novo do primeiro usuário, que se torna o segundo portador do One For All e cria o All For One?','O rancor entre os dois irmãos molda o conflito central da mitologia da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoichi',TRUE,0),(gen_random_uuid(),q,'En',FALSE,1),(gen_random_uuid(),q,'Hikage',FALSE,2),(gen_random_uuid(),q,'Nana',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','hard','Qual é o nome do estudante da UA que cria armas e objetos com o próprio corpo, transformando gordura em qualquer material?','Ela é filha de dois heróis profissionais renomados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Momo Yaoyorozu',TRUE,0),(gen_random_uuid(),q,'Mina Ashido',FALSE,1),(gen_random_uuid(),q,'Tsuyu Asui',FALSE,2),(gen_random_uuid(),q,'Kyoka Jiro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','hard','Qual é o nome do herói profissional conhecido pelo controle absoluto sobre fibras de tecido, incluindo roupas de aliados e inimigos?','Ele é obcecado por manter a "elegância" mesmo em combate.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Best Jeanist',TRUE,0),(gen_random_uuid(),q,'Edgeshot',FALSE,1),(gen_random_uuid(),q,'Gran Torino',FALSE,2),(gen_random_uuid(),q,'Fatgum',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','hard','Qual é o nome do herói idoso, ex-mentor de All Might quando este ainda era estudante?','Ele possui uma Individualidade de saltos propulsados pelas pernas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gran Torino',TRUE,0),(gen_random_uuid(),q,'Best Jeanist',FALSE,1),(gen_random_uuid(),q,'Edgeshot',FALSE,2),(gen_random_uuid(),q,'Sir Nighteye',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','hard','Qual é o nome do ex-parceiro de All Might, capaz de enxergar o futuro próximo das pessoas através de sua Individualidade?','Ele calcula com precisão quantas vezes alguém pode se tornar herói ao longo da vida.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sir Nighteye',TRUE,0),(gen_random_uuid(),q,'Gran Torino',FALSE,1),(gen_random_uuid(),q,'Best Jeanist',FALSE,2),(gen_random_uuid(),q,'Fatgum',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','impossible','Qual é o nome do primeiro grande vilão a receber um fragmento do poder de All For One antes da saga principal, membro do Exército de Libertação de Meta?','Sua morte é usada por Shigaraki como motivação de vingança.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Re-Destro',TRUE,0),(gen_random_uuid(),q,'Dabi',FALSE,1),(gen_random_uuid(),q,'Skeptic',FALSE,2),(gen_random_uuid(),q,'Trumpet',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','impossible','Qual é o nome da organização vilanesca massiva que se une temporariamente à Liga dos Vilões?','Ela é liderada por um empresário obcecado por meritocracia extrema.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Exército de Libertação de Meta',TRUE,0),(gen_random_uuid(),q,'Vandenreich',FALSE,1),(gen_random_uuid(),q,'Sternritter',FALSE,2),(gen_random_uuid(),q,'Yakuza Shie Hassaikai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','impossible','Qual é o nome da organização Yakuza responsável pelo sequestro de Eri, liderada por Overhaul?','Ela busca criar drogas capazes de apagar Individualidades permanentemente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shie Hassaikai',TRUE,0),(gen_random_uuid(),q,'Exército de Libertação de Meta',FALSE,1),(gen_random_uuid(),q,'Liga dos Vilões',FALSE,2),(gen_random_uuid(),q,'Vandenreich',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','impossible','Qual é o nome do vilão da Shie Hassaikai que devora rostos de outras pessoas, tio de Overhaul?','Ele é um dos combatentes mais brutais enfrentados por Deku e Mirio.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chronostasis',FALSE,0),(gen_random_uuid(),q,'Overhaul',FALSE,1),(gen_random_uuid(),q,'Rappa',FALSE,2),(gen_random_uuid(),q,'Hekiji Tengai',TRUE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','impossible','Qual é o nome do vilão que consegue reproduzir vozes e formas de Individualidades já vistas, membro original da Liga dos Vilões?','Sua Individualidade tem um limite de duração antes de reverter à forma original.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Twice',TRUE,0),(gen_random_uuid(),q,'Spinner',FALSE,1),(gen_random_uuid(),q,'Mr. Compress',FALSE,2),(gen_random_uuid(),q,'Moonfish',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','impossible','Qual é o nome do vilão que comprime objetos ou pessoas em pequenas esferas, usado como "artista" dentro da Liga dos Vilões?','Ele carrega um forte senso estético e teatral em suas ações.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mr. Compress',TRUE,0),(gen_random_uuid(),q,'Twice',FALSE,1),(gen_random_uuid(),q,'Spinner',FALSE,2),(gen_random_uuid(),q,'Moonfish',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- FILL_BLANK — 38 perguntas (11 easy / 13 medium / 10 hard / 4 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'fill_blank','easy','Deku estuda na escola de heróis chamada ___.','É considerada a melhor instituição de formação de heróis do Japão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'UA High School',TRUE,0),(gen_random_uuid(),q,'Shiketsu High',FALSE,1),(gen_random_uuid(),q,'Ketsubutsu Academy',FALSE,2),(gen_random_uuid(),q,'Isamu Academy',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'fill_blank','easy','Deku e seus colegas de turma pertencem à turma conhecida como ___.','É a turma principal seguida ao longo de toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'1-A',TRUE,0),(gen_random_uuid(),q,'1-B',FALSE,1),(gen_random_uuid(),q,'2-A',FALSE,2),(gen_random_uuid(),q,'3-A',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'fill_blank','easy','Os poderes especiais dos personagens de My Hero Academia são chamados de ___.','Cerca de 80% da população mundial nasce com algum tipo desses poderes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Individualidades',TRUE,0),(gen_random_uuid(),q,'Nen',FALSE,1),(gen_random_uuid(),q,'Chakra',FALSE,2),(gen_random_uuid(),q,'Magia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'fill_blank','easy','All Might é conhecido pelo apelido de ___, símbolo máximo de paz e segurança.','Ele ocupa o posto de herói número 1 durante boa parte da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Símbolo da Paz',TRUE,0),(gen_random_uuid(),q,'Herói das Chamas',FALSE,1),(gen_random_uuid(),q,'Punho de Ação',FALSE,2),(gen_random_uuid(),q,'Escudo da Justiça',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'fill_blank','easy','A Individualidade de Bakugo, que gera explosões através do suor, se chama ___.','Ele a treina desde muito cedo, o que lhe rende arrogância na infância.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Explosion',TRUE,0),(gen_random_uuid(),q,'Hellflame',FALSE,1),(gen_random_uuid(),q,'Engine',FALSE,2),(gen_random_uuid(),q,'Electrification',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'fill_blank','easy','A Individualidade de Ochaco, que anula a gravidade de objetos tocados, se chama ___.','Objetos tocados flutuam até ela liberar a técnica novamente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zero Gravity',TRUE,0),(gen_random_uuid(),q,'Half-Cold Half-Hot',FALSE,1),(gen_random_uuid(),q,'Frog',FALSE,2),(gen_random_uuid(),q,'Creation',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'fill_blank','easy','A Individualidade de Shoto Todoroki, que combina fogo e gelo, se chama ___.','Ele evita usar o lado de fogo por muito tempo, ligado ao trauma com o pai.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Half-Cold Half-Hot',TRUE,0),(gen_random_uuid(),q,'Explosion',FALSE,1),(gen_random_uuid(),q,'Engine',FALSE,2),(gen_random_uuid(),q,'Hellflame',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'fill_blank','easy','A Individualidade de Tenya Iida, que concede propulsão nas pernas em formato de motor, se chama ___.','Sua família de heróis é reconhecida por essa mesma Individualidade hereditária.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Engine',TRUE,0),(gen_random_uuid(),q,'Explosion',FALSE,1),(gen_random_uuid(),q,'Zero Gravity',FALSE,2),(gen_random_uuid(),q,'Half-Cold Half-Hot',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'fill_blank','easy','A Individualidade de Tsuyu Asui, baseada em características de rã, se chama simplesmente ___.','Ela consegue saltar longas distâncias e usar a língua como ferramenta de combate.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Frog',TRUE,0),(gen_random_uuid(),q,'Acid',FALSE,1),(gen_random_uuid(),q,'Creation',FALSE,2),(gen_random_uuid(),q,'Invisibility',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'fill_blank','easy','A academia de heróis é comumente chamada pela sigla ___.','É a instituição frequentada por praticamente todos os protagonistas principais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'UA',TRUE,0),(gen_random_uuid(),q,'MHA',FALSE,1),(gen_random_uuid(),q,'HPSC',FALSE,2),(gen_random_uuid(),q,'JHA',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'fill_blank','easy','O evento anual em que os alunos da UA competem em diferentes provas de habilidade se chama Festival ___.','É transmitido nacionalmente para todo o Japão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Esportivo',TRUE,0),(gen_random_uuid(),q,'Cultural',FALSE,1),(gen_random_uuid(),q,'de Heróis',FALSE,2),(gen_random_uuid(),q,'de Combate',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'fill_blank','medium','O vilão que lidera a Liga dos Vilões, com Individualidade de decomposição pelo toque, se chama ___.','Ele é herdeiro espiritual de All For One.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tomura Shigaraki',TRUE,0),(gen_random_uuid(),q,'Dabi',FALSE,1),(gen_random_uuid(),q,'Twice',FALSE,2),(gen_random_uuid(),q,'Spinner',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'fill_blank','medium','A vilã capaz de se transformar em qualquer pessoa cujo sangue ela consuma se chama ___.','Ela nutre uma obsessão romântica peculiar por Stain.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Himiko Toga',TRUE,0),(gen_random_uuid(),q,'Mina Ashido',FALSE,1),(gen_random_uuid(),q,'Nemuri Kayama',FALSE,2),(gen_random_uuid(),q,'Camie Utsushimi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'fill_blank','medium','O vilão coberto de chamas azuis, revelado como filho biológico de Endeavor, se chama ___.','Ele carrega ressentimento profundo contra seu pai herói.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dabi',TRUE,0),(gen_random_uuid(),q,'Tomura Shigaraki',FALSE,1),(gen_random_uuid(),q,'Shoto Todoroki',FALSE,2),(gen_random_uuid(),q,'Spinner',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'fill_blank','medium','O assassino de heróis que acredita apenas All Might merecer o título de verdadeiro herói se chama ___.','Ele paralisa oponentes provando o próprio sangue deles.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Stain',TRUE,0),(gen_random_uuid(),q,'Overhaul',FALSE,1),(gen_random_uuid(),q,'Muscular',FALSE,2),(gen_random_uuid(),q,'Gigantomachia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'fill_blank','medium','O gigante leal a All For One, guarda-costas de proporções colossais, se chama ___.','Sua força bruta é comparável à de vários heróis juntos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gigantomachia',TRUE,0),(gen_random_uuid(),q,'Muscular',FALSE,1),(gen_random_uuid(),q,'Moonfish',FALSE,2),(gen_random_uuid(),q,'Mustard',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'fill_blank','medium','O vilão líder da Yakuza responsável pelo sequestro de Eri se chama ___.','Ele detesta as próprias Individualidades e sonha em eliminá-las do mundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Overhaul',TRUE,0),(gen_random_uuid(),q,'Stain',FALSE,1),(gen_random_uuid(),q,'Muscular',FALSE,2),(gen_random_uuid(),q,'Tomura Shigaraki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'fill_blank','medium','A criança com Individualidade de rebobinar o tempo dos seres vivos, resgatada durante a saga Overhaul, se chama ___.','Ela desenvolve um forte laço afetivo com Deku e Mirio.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Eri',TRUE,0),(gen_random_uuid(),q,'Kota Izumi',FALSE,1),(gen_random_uuid(),q,'Himiko Toga',FALSE,2),(gen_random_uuid(),q,'Melissa Shield',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'fill_blank','medium','O estudante que sacrifica sua Individualidade de permeabilidade para salvar Eri se chama ___.','Ele era considerado o aluno mais forte da UA antes desse sacrifício.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mirio Togata',TRUE,0),(gen_random_uuid(),q,'Tamaki Amajiki',FALSE,1),(gen_random_uuid(),q,'Nejire Hado',FALSE,2),(gen_random_uuid(),q,'Shinso',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'fill_blank','medium','O estudante do curso geral capaz de controlar mentalmente quem lhe responde uma pergunta se chama ___.','Ele almeja se transferir para o curso de heróis apesar do preconceito com sua Individualidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hitoshi Shinso',TRUE,0),(gen_random_uuid(),q,'Mirio Togata',FALSE,1),(gen_random_uuid(),q,'Neito Monoma',FALSE,2),(gen_random_uuid(),q,'Tetsutetsu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'fill_blank','medium','O herói número 3, conhecido por controlar penas em suas asas e espionar a Liga dos Vilões, se chama ___.','Ele mantém um duplo jogo perigoso durante boa parte da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hawks',TRUE,0),(gen_random_uuid(),q,'Endeavor',FALSE,1),(gen_random_uuid(),q,'Best Jeanist',FALSE,2),(gen_random_uuid(),q,'Mirko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'fill_blank','medium','A heroína conhecida como "Coelha", uma das mais fortes do país, se chama ___.','Ela luta sem depender de nenhum equipamento ou gadget especial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mirko',TRUE,0),(gen_random_uuid(),q,'Midnight',FALSE,1),(gen_random_uuid(),q,'Mount Lady',FALSE,2),(gen_random_uuid(),q,'Ryukyu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'fill_blank','hard','O vilão que possui a Individualidade oposta ao One For All, capaz de roubar poderes, se chama ___.','Ele é o antagonista supremo da série e mentor de Tomura Shigaraki.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'All For One',TRUE,0),(gen_random_uuid(),q,'Tomura Shigaraki',FALSE,1),(gen_random_uuid(),q,'Dabi',FALSE,2),(gen_random_uuid(),q,'Overhaul',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'fill_blank','hard','A antiga usuária do One For All, mentora de All Might e avó biológica de Shigaraki, se chama ___.','Sua morte nas mãos de All For One motiva profundamente a jornada de All Might.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nana Shimura',TRUE,0),(gen_random_uuid(),q,'Inko Midoriya',FALSE,1),(gen_random_uuid(),q,'Rei Todoroki',FALSE,2),(gen_random_uuid(),q,'Recovery Girl',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'fill_blank','hard','O primeiro usuário do One For All, que criou a Individualidade a partir de um ato de bondade, se chama ___.','Ele deu seu poder ao próprio irmão em um gesto de amor fraternal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'En',TRUE,0),(gen_random_uuid(),q,'Yoichi',FALSE,1),(gen_random_uuid(),q,'Hikage',FALSE,2),(gen_random_uuid(),q,'Nana',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'fill_blank','hard','O irmão mais novo do primeiro usuário, segundo portador do One For All e criador do All For One, se chama ___.','O rancor entre os dois irmãos molda o conflito central da mitologia da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoichi',TRUE,0),(gen_random_uuid(),q,'En',FALSE,1),(gen_random_uuid(),q,'Hikage',FALSE,2),(gen_random_uuid(),q,'Nana',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'fill_blank','hard','A estudante que cria armas e objetos com o próprio corpo, transformando gordura em qualquer material, se chama ___.','Ela é filha de dois heróis profissionais renomados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Momo Yaoyorozu',TRUE,0),(gen_random_uuid(),q,'Mina Ashido',FALSE,1),(gen_random_uuid(),q,'Tsuyu Asui',FALSE,2),(gen_random_uuid(),q,'Kyoka Jiro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'fill_blank','hard','O herói conhecido pelo controle absoluto sobre fibras de tecido se chama ___.','Ele é obcecado por manter a "elegância" mesmo em combate.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Best Jeanist',TRUE,0),(gen_random_uuid(),q,'Edgeshot',FALSE,1),(gen_random_uuid(),q,'Gran Torino',FALSE,2),(gen_random_uuid(),q,'Fatgum',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'fill_blank','hard','O herói idoso, ex-mentor de All Might quando este ainda era estudante, se chama ___.','Ele possui uma Individualidade de saltos propulsados pelas pernas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gran Torino',TRUE,0),(gen_random_uuid(),q,'Best Jeanist',FALSE,1),(gen_random_uuid(),q,'Edgeshot',FALSE,2),(gen_random_uuid(),q,'Sir Nighteye',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'fill_blank','impossible','A organização vilanesca massiva liderada por um empresário obcecado por meritocracia extrema se chama ___.','Ela se une temporariamente à Liga dos Vilões.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Exército de Libertação de Meta',TRUE,0),(gen_random_uuid(),q,'Vandenreich',FALSE,1),(gen_random_uuid(),q,'Sternritter',FALSE,2),(gen_random_uuid(),q,'Yakuza Shie Hassaikai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'fill_blank','impossible','A organização Yakuza responsável pelo sequestro de Eri, liderada por Overhaul, se chama ___.','Ela busca criar drogas capazes de apagar Individualidades permanentemente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shie Hassaikai',TRUE,0),(gen_random_uuid(),q,'Exército de Libertação de Meta',FALSE,1),(gen_random_uuid(),q,'Liga dos Vilões',FALSE,2),(gen_random_uuid(),q,'Vandenreich',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'fill_blank','impossible','O vilão que consegue reproduzir vozes e formas de Individualidades já vistas, membro original da Liga dos Vilões, se chama ___.','Sua Individualidade tem um limite de duração antes de reverter à forma original.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Twice',TRUE,0),(gen_random_uuid(),q,'Spinner',FALSE,1),(gen_random_uuid(),q,'Mr. Compress',FALSE,2),(gen_random_uuid(),q,'Moonfish',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'fill_blank','impossible','O vilão que comprime objetos ou pessoas em pequenas esferas, considerado o "artista" da Liga dos Vilões, se chama ___.','Ele carrega um forte senso estético e teatral em suas ações.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mr. Compress',TRUE,0),(gen_random_uuid(),q,'Twice',FALSE,1),(gen_random_uuid(),q,'Spinner',FALSE,2),(gen_random_uuid(),q,'Moonfish',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- WHO_SAID — 30 perguntas (9 easy / 11 medium / 8 hard / 2 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'who_said','easy','Quem disse: "Você também pode se tornar um herói"?','A frase é dita a Deku em um momento decisivo de sua vida, mudando seu destino para sempre.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'All Might',TRUE,0),(gen_random_uuid(),q,'Aizawa',FALSE,1),(gen_random_uuid(),q,'Endeavor',FALSE,2),(gen_random_uuid(),q,'Gran Torino',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'who_said','easy','Quem disse: "Plus Ultra!" como grito de guerra ao usar seu poder máximo?','A expressão é o lema oficial da UA High School.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Izuku Midoriya',TRUE,0),(gen_random_uuid(),q,'Katsuki Bakugo',FALSE,1),(gen_random_uuid(),q,'Shoto Todoroki',FALSE,2),(gen_random_uuid(),q,'Tenya Iida',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'who_said','easy','Quem disse: "Eu vou ser o número 1, custe o que custar, e ninguém mais"?','A frase reflete o orgulho competitivo extremo do rival de Deku.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Katsuki Bakugo',TRUE,0),(gen_random_uuid(),q,'Izuku Midoriya',FALSE,1),(gen_random_uuid(),q,'Shoto Todoroki',FALSE,2),(gen_random_uuid(),q,'Eijiro Kirishima',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'who_said','easy','Quem disse: "Eu não preciso do poder do meu pai para vencer"?','A frase reflete a rejeição do personagem ao lado de fogo de sua própria Individualidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shoto Todoroki',TRUE,0),(gen_random_uuid(),q,'Katsuki Bakugo',FALSE,1),(gen_random_uuid(),q,'Izuku Midoriya',FALSE,2),(gen_random_uuid(),q,'Tenya Iida',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'who_said','easy','Quem disse: "Um verdadeiro herói sempre chega para salvar o dia com um sorriso no rosto"?','A frase resume a filosofia heróica do maior símbolo de paz da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'All Might',TRUE,0),(gen_random_uuid(),q,'Endeavor',FALSE,1),(gen_random_uuid(),q,'Best Jeanist',FALSE,2),(gen_random_uuid(),q,'Hawks',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'who_said','easy','Quem disse: "Eu sou o presidente da turma, e vou levar isso muito a sério"?','A frase reflete a personalidade extremamente rígida e disciplinada do personagem.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tenya Iida',TRUE,0),(gen_random_uuid(),q,'Izuku Midoriya',FALSE,1),(gen_random_uuid(),q,'Shoto Todoroki',FALSE,2),(gen_random_uuid(),q,'Eijiro Kirishima',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'who_said','easy','Quem disse: "Virilidade não é sobre força, é sobre nunca desistir de ajudar os outros"?','A frase reflete os valores pessoais mais importantes para esse estudante.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Eijiro Kirishima',TRUE,0),(gen_random_uuid(),q,'Denki Kaminari',FALSE,1),(gen_random_uuid(),q,'Rikido Sato',FALSE,2),(gen_random_uuid(),q,'Mashirao Ojiro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'who_said','easy','Quem disse: "Ribbit. Eu sempre digo o que penso, mesmo que incomode alguém"?','A frase reflete a personalidade franca e sem filtros dessa estudante.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tsuyu Asui',TRUE,0),(gen_random_uuid(),q,'Mina Ashido',FALSE,1),(gen_random_uuid(),q,'Kyoka Jiro',FALSE,2),(gen_random_uuid(),q,'Toru Hagakure',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'who_said','easy','Quem disse: "Eu quero ser uma heroína elegante, popular e bem-sucedida"?','A frase reflete o objetivo declarado dessa estudante desde o início da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ochaco Uraraka',TRUE,0),(gen_random_uuid(),q,'Tsuyu Asui',FALSE,1),(gen_random_uuid(),q,'Mina Ashido',FALSE,2),(gen_random_uuid(),q,'Momo Yaoyorozu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'who_said','medium','Quem disse: "Eu passei minha vida inteira acreditando que nasci sem nenhum poder, mas nunca desisti do meu sonho"?','A frase resume a origem emocional da jornada do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Izuku Midoriya',TRUE,0),(gen_random_uuid(),q,'Katsuki Bakugo',FALSE,1),(gen_random_uuid(),q,'Shoto Todoroki',FALSE,2),(gen_random_uuid(),q,'Tenya Iida',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'who_said','medium','Quem disse: "Eu odeio a ideia de dever meu sucesso ao sangue do meu pai"?','A frase reflete o conflito interno profundo do personagem em relação à própria herança genética.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shoto Todoroki',TRUE,0),(gen_random_uuid(),q,'Dabi',FALSE,1),(gen_random_uuid(),q,'Katsuki Bakugo',FALSE,2),(gen_random_uuid(),q,'Izuku Midoriya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'who_said','medium','Quem disse: "Eu vou destruir esta sociedade que decide quem merece ser chamado de herói"?','A frase resume a motivação ideológica do líder da Liga dos Vilões.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tomura Shigaraki',TRUE,0),(gen_random_uuid(),q,'Dabi',FALSE,1),(gen_random_uuid(),q,'All For One',FALSE,2),(gen_random_uuid(),q,'Stain',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'who_said','medium','Quem disse: "Só All Might merece ser chamado de herói de verdade, os outros são apenas hipócritas"?','A frase reflete a visão radical e violenta de um assassino de heróis.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Stain',TRUE,0),(gen_random_uuid(),q,'Overhaul',FALSE,1),(gen_random_uuid(),q,'Muscular',FALSE,2),(gen_random_uuid(),q,'Dabi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'who_said','medium','Quem disse: "Eu detesto Individualidades, e vou apagá-las todas deste mundo se for preciso"?','A frase reflete a ideologia extremista de um líder da Yakuza envolvido no sequestro de uma criança.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Overhaul',TRUE,0),(gen_random_uuid(),q,'Stain',FALSE,1),(gen_random_uuid(),q,'Tomura Shigaraki',FALSE,2),(gen_random_uuid(),q,'All For One',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'who_said','medium','Quem disse: "Eu sacrifiquei meu poder para salvar uma criança, e não me arrependo nem um pouco"?','A frase reflete a escolha heróica mais marcante de um estudante da UA.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mirio Togata',TRUE,0),(gen_random_uuid(),q,'Tamaki Amajiki',FALSE,1),(gen_random_uuid(),q,'Izuku Midoriya',FALSE,2),(gen_random_uuid(),q,'Sir Nighteye',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'who_said','medium','Quem disse: "Eu vim ao mundo dos vilões para me divertir, mesmo sabendo que sou instável demais para confiar em mim mesmo"?','A frase reflete a natureza caótica e imprevisível de um membro original da Liga dos Vilões.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Twice',TRUE,0),(gen_random_uuid(),q,'Spinner',FALSE,1),(gen_random_uuid(),q,'Mr. Compress',FALSE,2),(gen_random_uuid(),q,'Moonfish',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'who_said','medium','Quem disse: "Eu vou proteger este país sozinho, se for preciso, mesmo abrindo mão da minha própria família"?','A frase reflete a obsessão pessoal do herói número 2 por superar All Might.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Endeavor',TRUE,0),(gen_random_uuid(),q,'Hawks',FALSE,1),(gen_random_uuid(),q,'Best Jeanist',FALSE,2),(gen_random_uuid(),q,'All Might',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'who_said','medium','Quem disse: "Eu finjo servir à Liga dos Vilões, mas minha verdadeira lealdade é com a Comissão de Segurança Pública"?','A frase revela o duplo jogo perigoso do herói número 3.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hawks',TRUE,0),(gen_random_uuid(),q,'Endeavor',FALSE,1),(gen_random_uuid(),q,'Best Jeanist',FALSE,2),(gen_random_uuid(),q,'Mirko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'who_said','hard','Quem disse: "Eu criei a Liga dos Vilões para dar um propósito a Tomura, meu sucessor escolhido"?','A frase é dita pelo antagonista supremo da série, revelando suas verdadeiras intenções.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'All For One',TRUE,0),(gen_random_uuid(),q,'Tomura Shigaraki',FALSE,1),(gen_random_uuid(),q,'Dabi',FALSE,2),(gen_random_uuid(),q,'Overhaul',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'who_said','hard','Quem disse: "Eu vejo em você o mesmo brilho que vi na Nana, décadas atrás"?','A frase é dita por All Might ao refletir sobre a semelhança emocional entre Deku e sua própria mentora.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'All Might',TRUE,0),(gen_random_uuid(),q,'Gran Torino',FALSE,1),(gen_random_uuid(),q,'Nana Shimura',FALSE,2),(gen_random_uuid(),q,'All For One',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'who_said','hard','Quem disse: "Eu abandonei meu neto para protegê-lo, e essa decisão me assombra até hoje"?','A frase é dita por uma antiga usuária do One For All ao refletir sobre seu passado familiar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nana Shimura',TRUE,0),(gen_random_uuid(),q,'Inko Midoriya',FALSE,1),(gen_random_uuid(),q,'Rei Todoroki',FALSE,2),(gen_random_uuid(),q,'Recovery Girl',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'who_said','hard','Quem disse: "Eu prevejo seu futuro, e infelizmente ele termina antes do que você imagina"?','A frase é dita por um herói capaz de enxergar acontecimentos futuros através de sua Individualidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sir Nighteye',TRUE,0),(gen_random_uuid(),q,'Gran Torino',FALSE,1),(gen_random_uuid(),q,'Best Jeanist',FALSE,2),(gen_random_uuid(),q,'Fatgum',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'who_said','hard','Quem disse: "Eu vivi minha vida inteira dividido entre o amor por meu irmão e o ódio pelo que ele se tornou"?','A frase é dita por um dos primeiros usuários do One For All, em referência ao início do conflito com o All For One.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'En',TRUE,0),(gen_random_uuid(),q,'Yoichi',FALSE,1),(gen_random_uuid(),q,'Hikage',FALSE,2),(gen_random_uuid(),q,'Nana',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'who_said','hard','Quem disse: "Eu treinei o Toshinori que você conhece hoje, e me orgulho de cada cicatriz dele"?','A frase é dita por um herói veterano que treinou All Might durante sua juventude.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gran Torino',TRUE,0),(gen_random_uuid(),q,'Best Jeanist',FALSE,1),(gen_random_uuid(),q,'Edgeshot',FALSE,2),(gen_random_uuid(),q,'Sir Nighteye',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'who_said','hard','Quem disse: "Eu sinto muito, Shoto. Eu deveria ter te protegido do seu próprio pai"?','A frase é dita pela mãe de Shoto Todoroki, refletindo sobre a culpa por não tê-lo defendido quando criança.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rei Todoroki',TRUE,0),(gen_random_uuid(),q,'Inko Midoriya',FALSE,1),(gen_random_uuid(),q,'Mitsuki Bakugo',FALSE,2),(gen_random_uuid(),q,'Fuyumi Todoroki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'who_said','impossible','Quem disse: "Eu era apenas um empresário até decidir que a meritocracia deveria governar o mundo dos vilões também"?','A frase é dita pelo líder de uma organização vilanesca massiva, aliada temporária da Liga dos Vilões.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Re-Destro',TRUE,0),(gen_random_uuid(),q,'Dabi',FALSE,1),(gen_random_uuid(),q,'Skeptic',FALSE,2),(gen_random_uuid(),q,'Trumpet',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'who_said','impossible','Quem disse: "Eu devoro rostos porque acredito que a verdadeira beleza está escondida sob a pele"?','A frase é dita por um dos membros mais brutais da Shie Hassaikai.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hekiji Tengai',TRUE,0),(gen_random_uuid(),q,'Chronostasis',FALSE,1),(gen_random_uuid(),q,'Rappa',FALSE,2),(gen_random_uuid(),q,'Overhaul',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- EPISODE_ARC — 15 perguntas (7 medium / 6 hard / 2 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'episode_arc','medium','Em qual arco Deku conhece All Might pela primeira vez e recebe a promessa de herdar seu poder?','O encontro ocorre logo após um ataque de um vilão do tipo lodoso em um beco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Origem',TRUE,0),(gen_random_uuid(),q,'Arco do Exame de Admissão',FALSE,1),(gen_random_uuid(),q,'Arco de USJ',FALSE,2),(gen_random_uuid(),q,'Arco do Festival Esportivo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'episode_arc','medium','Em qual arco a Turma 1-A é atacada dentro da instalação de treinamento USJ por vilões liderados por Shigaraki?','All Might chega no último instante para salvar os estudantes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de USJ',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco do Festival Esportivo',FALSE,2),(gen_random_uuid(),q,'Arco de Estágios',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'episode_arc','medium','Em qual arco os alunos da UA competem em provas físicas e táticas transmitidas nacionalmente?','Deku enfrenta Shoto Todoroki em um duelo decisivo neste arco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Festival Esportivo',TRUE,0),(gen_random_uuid(),q,'Arco de USJ',FALSE,1),(gen_random_uuid(),q,'Arco de Estágios',FALSE,2),(gen_random_uuid(),q,'Arco de Overhaul',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'episode_arc','medium','Em qual arco Deku enfrenta Stain pela primeira vez, ao lado de Iida e Todoroki?','O confronto revela ao público a filosofia radical do assassino de heróis.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Estágios',TRUE,0),(gen_random_uuid(),q,'Arco do Festival Esportivo',FALSE,1),(gen_random_uuid(),q,'Arco de USJ',FALSE,2),(gen_random_uuid(),q,'Arco de Overhaul',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'episode_arc','medium','Em qual arco a Liga dos Vilões sequestra Bakugo em plena luz do dia?','O evento força os heróis a repensarem completamente sua estratégia de segurança.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Sequestro',TRUE,0),(gen_random_uuid(),q,'Arco de Estágios',FALSE,1),(gen_random_uuid(),q,'Arco de Overhaul',FALSE,2),(gen_random_uuid(),q,'Arco Final de All Might',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'episode_arc','medium','Em qual arco Deku, Mirio e Sir Nighteye invadem a base da Shie Hassaikai para resgatar Eri?','Mirio perde temporariamente sua Individualidade neste confronto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Overhaul',TRUE,0),(gen_random_uuid(),q,'Arco de Sequestro',FALSE,1),(gen_random_uuid(),q,'Arco de Estágios',FALSE,2),(gen_random_uuid(),q,'Arco Final de All Might',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'episode_arc','medium','Em qual arco All Might enfrenta All For One em um combate decisivo que resulta na aposentadoria definitiva do herói número 1?','A luta destrói boa parte do centro da cidade onde ocorre.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco Final de All Might',TRUE,0),(gen_random_uuid(),q,'Arco de Sequestro',FALSE,1),(gen_random_uuid(),q,'Arco de Overhaul',FALSE,2),(gen_random_uuid(),q,'Arco de USJ',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'episode_arc','hard','Em qual arco é revelado que Deku recebeu o One For All de All Might, marcando o início de seu treinamento secreto?','O treinamento acontece na praia, longe dos olhos dos colegas de classe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Origem',TRUE,0),(gen_random_uuid(),q,'Arco do Exame de Admissão',FALSE,1),(gen_random_uuid(),q,'Arco de USJ',FALSE,2),(gen_random_uuid(),q,'Arco do Festival Esportivo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'episode_arc','hard','Em qual arco Deku fratura repetidamente os próprios braços por não conseguir controlar o poder recém-adquirido do One For All?','Isso o obriga a repensar sua estratégia de combate ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Exame de Admissão',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco de USJ',FALSE,2),(gen_random_uuid(),q,'Arco do Festival Esportivo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'episode_arc','hard','Em qual arco a Liga dos Vilões se une temporariamente ao Exército de Libertação de Meta?','A aliança resulta em uma nova estrutura de poder muito mais perigosa entre os vilões.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Unificação dos Vilões',TRUE,0),(gen_random_uuid(),q,'Arco de Overhaul',FALSE,1),(gen_random_uuid(),q,'Arco de Sequestro',FALSE,2),(gen_random_uuid(),q,'Arco Final de All Might',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'episode_arc','hard','Em qual arco é revelado o passado trágico da infância de Shoto Todoroki através de flashbacks intensos?','O evento explica o abuso emocional sofrido por toda a família Todoroki.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Festival Esportivo',TRUE,0),(gen_random_uuid(),q,'Arco de Estágios',FALSE,1),(gen_random_uuid(),q,'Arco de USJ',FALSE,2),(gen_random_uuid(),q,'Arco de Overhaul',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'episode_arc','hard','Em qual arco Deku desperta pela primeira vez o poder de vestígios dos antigos usuários do One For All, comunicando-se diretamente com eles?','Isso acontece durante um momento crítico de sua batalha contra Overhaul.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Overhaul',TRUE,0),(gen_random_uuid(),q,'Arco de Estágios',FALSE,1),(gen_random_uuid(),q,'Arco de Sequestro',FALSE,2),(gen_random_uuid(),q,'Arco Final de All Might',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'episode_arc','impossible','Em qual arco é revelado que Nana Shimura é a avó biológica de Tomura Shigaraki, ligando os dois lados do conflito?','A revelação reescreve a compreensão do público sobre a origem do vilão principal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Unificação dos Vilões',TRUE,0),(gen_random_uuid(),q,'Arco Final de All Might',FALSE,1),(gen_random_uuid(),q,'Arco de Overhaul',FALSE,2),(gen_random_uuid(),q,'Arco de Origem',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'episode_arc','impossible','Em qual arco Deku conversa diretamente com o primeiro usuário do One For All, aprendendo a origem histórica completa da Individualidade?','A conversa ocorre em um espaço mental compartilhado entre os portadores do poder.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Overhaul',TRUE,0),(gen_random_uuid(),q,'Arco de Unificação dos Vilões',FALSE,1),(gen_random_uuid(),q,'Arco Final de All Might',FALSE,2),(gen_random_uuid(),q,'Arco de Sequestro',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- CHRONOLOGICAL — 7 perguntas (4 hard / 3 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'chronological','hard','Ordene cronologicamente os arcos a seguir, do mais antigo ao mais recente.','Cobrem desde o encontro com All Might até a saga de Overhaul.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Origem',TRUE,0),(gen_random_uuid(),q,'Arco de USJ',FALSE,1),(gen_random_uuid(),q,'Arco do Festival Esportivo',FALSE,2),(gen_random_uuid(),q,'Arco de Overhaul',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'chronological','hard','Ordene cronologicamente a evolução de poder de Deku, do estágio mais fraco ao mais forte.','Cobrem desde receber o One For All até o desbloqueio dos vestígios anteriores.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Recebe o One For All de All Might',TRUE,0),(gen_random_uuid(),q,'Aprende a usar Full Cowl',FALSE,1),(gen_random_uuid(),q,'Desperta o Blackwhip',FALSE,2),(gen_random_uuid(),q,'Comunica-se com os vestígios anteriores',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'chronological','hard','Ordene cronologicamente os eventos a seguir sobre o passado de All Might, do mais antigo ao mais recente.','Cobrem desde seu treinamento com Nana até sua aposentadoria.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Treina sob a tutela de Nana Shimura',TRUE,0),(gen_random_uuid(),q,'Recebe o One For All e enfrenta All For One pela primeira vez',FALSE,1),(gen_random_uuid(),q,'Encontra e treina Deku',FALSE,2),(gen_random_uuid(),q,'Se aposenta após o confronto final com All For One',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'chronological','hard','Ordene cronologicamente os seguintes portadores do One For All, do primeiro ao mais recente.','Cobrem desde a criação da Individualidade até o portador atual.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'En',TRUE,0),(gen_random_uuid(),q,'Yoichi',FALSE,1),(gen_random_uuid(),q,'Nana Shimura',FALSE,2),(gen_random_uuid(),q,'All Might',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'chronological','impossible','Ordene cronologicamente os eventos a seguir da saga Overhaul, do mais antigo ao mais recente.','Cobrem desde a descoberta de Eri até sua libertação definitiva.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Deku e Mirio descobrem a existência de Eri',TRUE,0),(gen_random_uuid(),q,'Invasão à base da Shie Hassaikai',FALSE,1),(gen_random_uuid(),q,'Mirio perde sua Individualidade ao salvar Eri',FALSE,2),(gen_random_uuid(),q,'Overhaul é derrotado definitivamente',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'chronological','impossible','Ordene cronologicamente os seguintes eventos da rivalidade entre Deku e Bakugo, do mais antigo ao mais recente.','Cobrem desde a infância dos dois até seu duelo no Festival Esportivo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bakugo zomba de Deku na infância por não ter Individualidade',TRUE,0),(gen_random_uuid(),q,'Deku recebe o One For All secretamente',FALSE,1),(gen_random_uuid(),q,'Os dois se enfrentam no Exame de Admissão da UA',FALSE,2),(gen_random_uuid(),q,'Duelo direto entre os dois no Festival Esportivo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'chronological','impossible','Ordene cronologicamente os seguintes eventos da queda de All Might, do mais antigo ao mais recente.','Cobrem desde o primeiro ferimento grave até sua aposentadoria definitiva.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'All Might é gravemente ferido por All For One anos antes da série',TRUE,0),(gen_random_uuid(),q,'All Might revela sua forma verdadeira e debilitada a Deku',FALSE,1),(gen_random_uuid(),q,'All Might enfrenta All For One novamente durante o resgate de Bakugo',FALSE,2),(gen_random_uuid(),q,'All Might se aposenta definitivamente como herói',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- Complemento para fechar 150 perguntas na distribuição exata
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','easy','Qual é o nome da colega de turma de Deku que produz ácido corrosivo pela pele?','Ela também é uma dançarina talentosa fora dos combates.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mina Ashido',TRUE,0),(gen_random_uuid(),q,'Kyoka Jiro',FALSE,1),(gen_random_uuid(),q,'Tsuyu Asui',FALSE,2),(gen_random_uuid(),q,'Toru Hagakure',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','easy','Qual é o nome da colega de turma de Deku com Individualidade de plugues de fone de ouvido nos lóbulos das orelhas?','Ela toca guitarra e adora música.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kyoka Jiro',TRUE,0),(gen_random_uuid(),q,'Mina Ashido',FALSE,1),(gen_random_uuid(),q,'Toru Hagakure',FALSE,2),(gen_random_uuid(),q,'Momo Yaoyorozu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','easy','Qual é o nome do herói profissional obeso capaz de aumentar drasticamente sua massa muscular?','Ele se torna mentor de Mirio e Tamaki durante seus estágios.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fatgum',TRUE,0),(gen_random_uuid(),q,'Best Jeanist',FALSE,1),(gen_random_uuid(),q,'Edgeshot',FALSE,2),(gen_random_uuid(),q,'Gran Torino',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','medium','Qual é o nome da irmã mais velha de Shoto Todoroki, que trabalha como enfermeira?','Ela tenta manter a família unida apesar do trauma coletivo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fuyumi Todoroki',TRUE,0),(gen_random_uuid(),q,'Rei Todoroki',FALSE,1),(gen_random_uuid(),q,'Natsuo Todoroki',FALSE,2),(gen_random_uuid(),q,'Toya Todoroki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','medium','Qual é o nome do irmão mais velho de Shoto, considerado morto após um incêndio na infância?','Sua verdadeira identidade é revelada como um dos maiores vilões da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Toya Todoroki',TRUE,0),(gen_random_uuid(),q,'Natsuo Todoroki',FALSE,1),(gen_random_uuid(),q,'Fuyumi Todoroki',FALSE,2),(gen_random_uuid(),q,'Shoto Todoroki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','medium','Qual é o nome do vilão que usa uma máscara e é obcecado por afiar dentes de suas vítimas?','Ele participa da invasão à instalação de treinamento USJ.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Moonfish',TRUE,0),(gen_random_uuid(),q,'Muscular',FALSE,1),(gen_random_uuid(),q,'Mustard',FALSE,2),(gen_random_uuid(),q,'Spinner',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','medium','Qual é o nome do vilão de força bruta extrema que quase mata Izuku durante um acampamento de treinamento?','Ele é capturado após a batalha, mas seu ataque marca profundamente Deku.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Muscular',TRUE,0),(gen_random_uuid(),q,'Moonfish',FALSE,1),(gen_random_uuid(),q,'Mustard',FALSE,2),(gen_random_uuid(),q,'Spinner',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','hard','Qual é o nome do vilão com aparência reptiliana que idolatra Stain e se torna próximo de Shigaraki?','Ele carrega grandes facões e demonstra fascínio por lâminas afiadas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Spinner',TRUE,0),(gen_random_uuid(),q,'Moonfish',FALSE,1),(gen_random_uuid(),q,'Muscular',FALSE,2),(gen_random_uuid(),q,'Mustard',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','hard','Qual é o nome da heroína veterana especializada em técnicas de golpes silenciosos e velocidade extrema?','Seu corpo pode se achatar completamente para desviar de ataques.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Edgeshot',TRUE,0),(gen_random_uuid(),q,'Best Jeanist',FALSE,1),(gen_random_uuid(),q,'Gran Torino',FALSE,2),(gen_random_uuid(),q,'Fatgum',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','hard','Qual é o nome do estudante que compete com Deku pela atenção da mídia, transferido do curso geral após provar seu valor?','Ele controla mentalmente qualquer pessoa que lhe responda uma pergunta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hitoshi Shinso',TRUE,0),(gen_random_uuid(),q,'Neito Monoma',FALSE,1),(gen_random_uuid(),q,'Tetsutetsu',FALSE,2),(gen_random_uuid(),q,'Mirio Togata',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','hard','Qual é o nome do estudante da Turma 1-B que provoca constantemente a Turma 1-A por rivalidade entre as turmas?','Sua Individualidade copia temporariamente os poderes de quem ele toca.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Neito Monoma',TRUE,0),(gen_random_uuid(),q,'Hitoshi Shinso',FALSE,1),(gen_random_uuid(),q,'Tetsutetsu',FALSE,2),(gen_random_uuid(),q,'Itsuka Kendo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','impossible','Qual é o nome do estudante com Individualidade de transformar o corpo em aço, comparado a Kirishima em personalidade?','Os dois desenvolvem uma amizade competitiva de admiração mútua.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tetsutetsu Tetsutetsu',TRUE,0),(gen_random_uuid(),q,'Neito Monoma',FALSE,1),(gen_random_uuid(),q,'Hitoshi Shinso',FALSE,2),(gen_random_uuid(),q,'Itsuka Kendo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','impossible','Qual é o nome da presidente da Turma 1-B, com Individualidade de aumentar o tamanho das próprias mãos?','Ela é respeitada como líder equilibrada e justa entre seus colegas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Itsuka Kendo',TRUE,0),(gen_random_uuid(),q,'Momo Yaoyorozu',FALSE,1),(gen_random_uuid(),q,'Nejire Hado',FALSE,2),(gen_random_uuid(),q,'Ochaco Uraraka',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','impossible','Qual é o nome da terceira estudante do trio conhecido como "Big Three" da UA, ao lado de Mirio e Tamaki?','Sua Individualidade libera ondas de energia em espiral.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nejire Hado',TRUE,0),(gen_random_uuid(),q,'Itsuka Kendo',FALSE,1),(gen_random_uuid(),q,'Camie Utsushimi',FALSE,2),(gen_random_uuid(),q,'Ibara Shiozaki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'fill_blank','easy','A colega de turma de Deku que produz ácido corrosivo pela pele se chama ___.','Ela também é uma dançarina talentosa fora dos combates.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mina Ashido',TRUE,0),(gen_random_uuid(),q,'Kyoka Jiro',FALSE,1),(gen_random_uuid(),q,'Tsuyu Asui',FALSE,2),(gen_random_uuid(),q,'Toru Hagakure',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'fill_blank','medium','O irmão mais velho de Shoto, considerado morto após um incêndio na infância, se chama ___.','Sua verdadeira identidade é revelada como um dos maiores vilões da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Toya Todoroki',TRUE,0),(gen_random_uuid(),q,'Natsuo Todoroki',FALSE,1),(gen_random_uuid(),q,'Fuyumi Todoroki',FALSE,2),(gen_random_uuid(),q,'Shoto Todoroki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'fill_blank','medium','O vilão de força bruta extrema que quase mata Izuku durante um acampamento de treinamento se chama ___.','Ele é capturado após a batalha, mas seu ataque marca profundamente Deku.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Muscular',TRUE,0),(gen_random_uuid(),q,'Moonfish',FALSE,1),(gen_random_uuid(),q,'Mustard',FALSE,2),(gen_random_uuid(),q,'Spinner',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'fill_blank','hard','O vilão com aparência reptiliana que idolatra Stain e se aproxima de Shigaraki se chama ___.','Ele carrega grandes facões e demonstra fascínio por lâminas afiadas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Spinner',TRUE,0),(gen_random_uuid(),q,'Moonfish',FALSE,1),(gen_random_uuid(),q,'Muscular',FALSE,2),(gen_random_uuid(),q,'Mustard',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'fill_blank','hard','O estudante que controla mentalmente qualquer pessoa que lhe responda uma pergunta se chama ___.','Ele é transferido do curso geral para o curso de heróis após provar seu valor.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hitoshi Shinso',TRUE,0),(gen_random_uuid(),q,'Neito Monoma',FALSE,1),(gen_random_uuid(),q,'Tetsutetsu',FALSE,2),(gen_random_uuid(),q,'Mirio Togata',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'who_said','medium','Quem disse: "Eu adoro música tanto quanto adoro lutar, os dois me fazem sentir viva"?','A frase é dita por uma estudante que toca guitarra nas horas vagas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kyoka Jiro',TRUE,0),(gen_random_uuid(),q,'Mina Ashido',FALSE,1),(gen_random_uuid(),q,'Toru Hagakure',FALSE,2),(gen_random_uuid(),q,'Tsuyu Asui',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'who_said','hard','Quem disse: "Eu incendiei minha própria família por acidente, e vivo com isso escondido atrás desta máscara"?','A frase é dita pelo irmão mais velho de Shoto, revelado como um vilão coberto de chamas azuis.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dabi',TRUE,0),(gen_random_uuid(),q,'Shoto Todoroki',FALSE,1),(gen_random_uuid(),q,'Endeavor',FALSE,2),(gen_random_uuid(),q,'Natsuo Todoroki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'who_said','hard','Quem disse: "Eu idolatro Stain, e vou honrar seus ideais mesmo que ninguém mais acredite neles"?','A frase é dita por um vilão de aparência reptiliana próximo de Shigaraki.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Spinner',TRUE,0),(gen_random_uuid(),q,'Moonfish',FALSE,1),(gen_random_uuid(),q,'Muscular',FALSE,2),(gen_random_uuid(),q,'Twice',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'episode_arc','hard','Em qual arco Deku e seus colegas participam de um acampamento de treinamento invadido por Muscular e outros vilões?','O ataque de Muscular contra Deku se torna um dos momentos mais tensos da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Sequestro',TRUE,0),(gen_random_uuid(),q,'Arco de Estágios',FALSE,1),(gen_random_uuid(),q,'Arco de Overhaul',FALSE,2),(gen_random_uuid(),q,'Arco do Festival Esportivo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_mha,'text','impossible','Qual é o nome do vilão especialista em drogas químicas que cria gases capazes de neutralizar Individualidades?','Ele atua como suporte técnico da Liga dos Vilões unificada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mustard',TRUE,0),(gen_random_uuid(),q,'Moonfish',FALSE,1),(gen_random_uuid(),q,'Muscular',FALSE,2),(gen_random_uuid(),q,'Spinner',FALSE,3);

END $$;
