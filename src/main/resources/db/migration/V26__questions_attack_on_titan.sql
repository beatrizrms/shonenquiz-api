-- ============================================================
--  V26 — Seed de perguntas: Attack on Titan (150 perguntas)
--  Fonte: MyAnimeList + cânone do anime
--  Distribuição: text 40% / fill_blank 25% / who_said 20% /
--                episode_arc 10% / chronological 5%
--  Sem repetição com V5. Regras R1-R7 aplicadas.
--  Nomenclatura: Eldianos (não "Quirk"/individualidade, tema próprio).
-- ============================================================

DO $$
DECLARE
    v_system UUID := '00000000-0000-0000-0000-000000000001';
    v_aot    UUID;
    q        UUID;
BEGIN
    SELECT id INTO v_aot FROM animes WHERE slug = 'attack-on-titan' LIMIT 1;

    -- ══════════════════════════════════════════════════════════
    -- TEXT — 60 perguntas (18 easy / 21 medium / 15 hard / 6 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','easy','Qual é o nome da melhor amiga de infância de Eren e Mikasa, também recruta do 104º Esquadrão de Treinamento?','Ela sonha em explorar o mundo fora das muralhas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Armin Arlert',FALSE,0),(gen_random_uuid(),q,'Sasha Blouse',TRUE,1),(gen_random_uuid(),q,'Historia Reiss',FALSE,2),(gen_random_uuid(),q,'Ymir',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','easy','Qual é o nome do melhor amigo de infância de Eren, extremamente inteligente apesar da aparência frágil?','Ele se torna um dos estrategistas mais importantes da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Armin Arlert',TRUE,0),(gen_random_uuid(),q,'Connie Springer',FALSE,1),(gen_random_uuid(),q,'Jean Kirstein',FALSE,2),(gen_random_uuid(),q,'Marco Bott',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','easy','Qual é o nome da irmã adotiva de Eren, extremamente habilidosa em combate desde jovem?','Ela é resgatada por Eren quando criança durante um ataque de traficantes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mikasa Ackerman',TRUE,0),(gen_random_uuid(),q,'Sasha Blouse',FALSE,1),(gen_random_uuid(),q,'Historia Reiss',FALSE,2),(gen_random_uuid(),q,'Annie Leonhart',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','easy','Qual é o nome do capitão mais forte da humanidade, membro do Corpo de Reconhecimento?','Ele é extremamente baixo, mas possui uma técnica de combate incomparável.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Levi Ackerman',TRUE,0),(gen_random_uuid(),q,'Erwin Smith',FALSE,1),(gen_random_uuid(),q,'Hange Zoe',FALSE,2),(gen_random_uuid(),q,'Mike Zacharias',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','easy','Qual é o nome do comandante do Corpo de Reconhecimento durante boa parte da série?','Ele perde um braço em batalha e demonstra liderança carismática.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Erwin Smith',TRUE,0),(gen_random_uuid(),q,'Levi Ackerman',FALSE,1),(gen_random_uuid(),q,'Hange Zoe',FALSE,2),(gen_random_uuid(),q,'Dot Pixis',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','easy','Qual é o nome da cientista excêntrica que estuda o comportamento dos Titãs?','Ela sucede Erwin no comando do Corpo de Reconhecimento.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hange Zoe',TRUE,0),(gen_random_uuid(),q,'Rico Brzenska',FALSE,1),(gen_random_uuid(),q,'Nanaba',FALSE,2),(gen_random_uuid(),q,'Petra Ral',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','easy','Qual é o equipamento usado pelos soldados para se mover verticalmente e cortar a nuca dos Titãs?','Ele usa gás comprimido para propulsão em cabos de metal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Equipamento de Manobra Tridimensional',TRUE,0),(gen_random_uuid(),q,'Arreio de Batalha',FALSE,1),(gen_random_uuid(),q,'Propulsor Aéreo',FALSE,2),(gen_random_uuid(),q,'Cabos de Combate',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','easy','Qual é o nome do rival de Eren durante o treinamento militar, que sonha em se juntar à Polícia Militar?','Ele muda de opinião drasticamente após presenciar a morte de um amigo próximo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Jean Kirstein',TRUE,0),(gen_random_uuid(),q,'Connie Springer',FALSE,1),(gen_random_uuid(),q,'Marco Bott',FALSE,2),(gen_random_uuid(),q,'Reiner Braun',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','easy','Qual é o nome da recruta obcecada por comida, famosa por roubar batatas assadas?','Ela possui habilidades excepcionais como atiradora.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sasha Blouse',TRUE,0),(gen_random_uuid(),q,'Historia Reiss',FALSE,1),(gen_random_uuid(),q,'Ymir',FALSE,2),(gen_random_uuid(),q,'Mikasa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','easy','Qual é o nome do recruta cabeça raspada, amigo próximo de Sasha, com origem em uma vila destruída pelo Titã Colossal?','Sua vila natal desaparece completamente durante os eventos da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Connie Springer',TRUE,0),(gen_random_uuid(),q,'Jean Kirstein',FALSE,1),(gen_random_uuid(),q,'Marco Bott',FALSE,2),(gen_random_uuid(),q,'Reiner Braun',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','easy','Qual é o nome da jovem revelada como herdeira do trono, escondida sob identidade falsa por boa parte da série?','Ela se torna Rainha de Paradis após os eventos da guerra interna.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Historia Reiss',TRUE,0),(gen_random_uuid(),q,'Mikasa Ackerman',FALSE,1),(gen_random_uuid(),q,'Annie Leonhart',FALSE,2),(gen_random_uuid(),q,'Ymir',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','easy','Qual é o nome do pai de Eren, médico responsável por injetar nele o poder titânico ainda criança?','Ele desaparece misteriosamente após a queda do Muro Maria.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Grisha Yeager',TRUE,0),(gen_random_uuid(),q,'Keith Shadis',FALSE,1),(gen_random_uuid(),q,'Dot Pixis',FALSE,2),(gen_random_uuid(),q,'Kruger',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','easy','Qual é o nome da mãe de Eren, morta devorada por um Titã durante a queda do Muro Maria?','Sua morte trágica marca o início da jornada de vingança de Eren.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Carla Yeager',TRUE,0),(gen_random_uuid(),q,'Dina Fritz',FALSE,1),(gen_random_uuid(),q,'Frieda Reiss',FALSE,2),(gen_random_uuid(),q,'Kiyomi Azumabito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','easy','Qual é o nome do instrutor rígido responsável pelo treinamento do 104º Esquadrão?','Ele é conhecido por sua disciplina extrema e falta de paciência com recrutas fracos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Keith Shadis',TRUE,0),(gen_random_uuid(),q,'Dot Pixis',FALSE,1),(gen_random_uuid(),q,'Nile Dok',FALSE,2),(gen_random_uuid(),q,'Erwin Smith',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','easy','Qual é o nome do amigo próximo de Jean, morto por um Titã durante a batalha de Trost?','Sua morte causa grande impacto emocional em Jean, mudando sua visão sobre a Polícia Militar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Marco Bott',TRUE,0),(gen_random_uuid(),q,'Connie Springer',FALSE,1),(gen_random_uuid(),q,'Thomas Wagner',FALSE,2),(gen_random_uuid(),q,'Franz Kefka',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','easy','Qual é o nome do cavalo de estimação de Eren, que ele adota depois de perder o cavalo original em combate?','Este cavalo o acompanha em diversas missões posteriores.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não possui nome oficial revelado',TRUE,0),(gen_random_uuid(),q,'Shadow',FALSE,1),(gen_random_uuid(),q,'Titan Runner',FALSE,2),(gen_random_uuid(),q,'Freedom',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','easy','Qual é o nome da cidade fortificada onde ocorre a primeira grande batalha da série contra os Titãs?','Sua muralha é violada logo no início da invasão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Trost',TRUE,0),(gen_random_uuid(),q,'Shiganshina',FALSE,1),(gen_random_uuid(),q,'Utopia',FALSE,2),(gen_random_uuid(),q,'Ragako',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','medium','Quem é revelado como o Titã Blindado responsável por abrir o Muro Maria no início da série?','Ele é amigo próximo de Bertholdt e futuramente considerado herói em sua nação natal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Reiner Braun',TRUE,0),(gen_random_uuid(),q,'Bertholdt Hoover',FALSE,1),(gen_random_uuid(),q,'Annie Leonhart',FALSE,2),(gen_random_uuid(),q,'Zeke Yeager',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','medium','Quem é revelada como o Titã Feminino, responsável por perseguir a Expedição fora dos muros?','Ela é capturada em uma armadilha de cristal, mas escapa mais tarde.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Annie Leonhart',TRUE,0),(gen_random_uuid(),q,'Historia Reiss',FALSE,1),(gen_random_uuid(),q,'Mikasa',FALSE,2),(gen_random_uuid(),q,'Ymir',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','medium','Qual é o nome do vice-comandante do Corpo de Reconhecimento, próximo de Levi e um dos primeiros a apoiar Eren?','Ele lidera a exploração final que revela grande parte da verdade sobre o mundo exterior.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Erwin Smith',TRUE,0),(gen_random_uuid(),q,'Mike Zacharias',FALSE,1),(gen_random_uuid(),q,'Dot Pixis',FALSE,2),(gen_random_uuid(),q,'Nile Dok',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','medium','Qual é o nome do irmão mais velho de Eren, revelado como o Titã Bestial dos Marleyanos?','Ele possui a capacidade única de controlar outros Titãs através de gritos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zeke Yeager',TRUE,0),(gen_random_uuid(),q,'Reiner Braun',FALSE,1),(gen_random_uuid(),q,'Grisha Yeager',FALSE,2),(gen_random_uuid(),q,'Porco Galliard',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','medium','Qual é o nome da equipe especial de espionagem marleyana ligada ao Titã Bestial durante a saga final?','Seus membros infiltram-se em Paradis para reunir informações estratégicas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Guerreiros de Marley',TRUE,0),(gen_random_uuid(),q,'Corpo de Reconhecimento',FALSE,1),(gen_random_uuid(),q,'Polícia Militar',FALSE,2),(gen_random_uuid(),q,'Guarnição',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','medium','Qual é o nome da nação que domina o resto do mundo e mantém os Eldianos confinados em guetos?','Ela usa Titãs eldianos como armas de guerra contra outras potências.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Marley',TRUE,0),(gen_random_uuid(),q,'Paradis',FALSE,1),(gen_random_uuid(),q,'Hizuru',FALSE,2),(gen_random_uuid(),q,'Liberio',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','medium','Qual é o nome da cidade-gueto onde vivem os Eldianos aprisionados dentro do território de Marley?','É lá que se realiza a cerimônia de herança do Titã Bestial mostrada no início da saga final.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Liberio',TRUE,0),(gen_random_uuid(),q,'Shiganshina',FALSE,1),(gen_random_uuid(),q,'Trost',FALSE,2),(gen_random_uuid(),q,'Utopia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','medium','Qual é o nome da nação aliada de Paradis, com forte influência cultural japonesa, que auxilia Eren e seus amigos?','Kiyomi Azumabito é uma de suas representantes mais importantes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hizuru',TRUE,0),(gen_random_uuid(),q,'Marley',FALSE,1),(gen_random_uuid(),q,'Liberio',FALSE,2),(gen_random_uuid(),q,'Kalanes',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','medium','Qual é o nome verdadeiro do Titã Carroça, revelado como um jovem guerreiro extremamente frágil fisicamente?','Ele compensa a fraqueza física com inteligência estratégica excepcional.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Pieck Finger',TRUE,0),(gen_random_uuid(),q,'Porco Galliard',FALSE,1),(gen_random_uuid(),q,'Falco Grice',FALSE,2),(gen_random_uuid(),q,'Colt Grice',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','medium','Qual é o nome do herdeiro do Titã Mordedor, capaz de se transformar parcialmente em Titã?','Ele nutre grande admiração por Reiner Braun como modelo de herói.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Porco Galliard',TRUE,0),(gen_random_uuid(),q,'Falco Grice',FALSE,1),(gen_random_uuid(),q,'Colt Grice',FALSE,2),(gen_random_uuid(),q,'Pieck Finger',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','medium','Qual é o nome do jovem eldiano transformado acidentalmente em Titã Mordedor perto do fim da série?','Ele é amigo próximo de Gabi Braun durante a saga final.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Falco Grice',TRUE,0),(gen_random_uuid(),q,'Colt Grice',FALSE,1),(gen_random_uuid(),q,'Porco Galliard',FALSE,2),(gen_random_uuid(),q,'Zofia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','medium','Qual é o nome da jovem guerreira marleyana, prima de Reiner, que idolatra os Titãs Guerreiros?','Ela participa ativamente do conflito final ao lado de Falco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gabi Braun',TRUE,0),(gen_random_uuid(),q,'Pieck Finger',FALSE,1),(gen_random_uuid(),q,'Annie Leonhart',FALSE,2),(gen_random_uuid(),q,'Zofia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','hard','Quem é revelado como o Titã Colossal que destruiu o Muro Maria no início da série?','Ele é o melhor amigo de Reiner e carrega culpa profunda pelo ato.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bertholdt Hoover',TRUE,0),(gen_random_uuid(),q,'Reiner Braun',FALSE,1),(gen_random_uuid(),q,'Annie Leonhart',FALSE,2),(gen_random_uuid(),q,'Zeke Yeager',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','hard','Qual é o nome do evento catastrófico que Eren desencadeia no final da série?','Ele libera todos os Titãs Colossais dos muros para destruir o mundo de fora.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'The Rumbling',TRUE,0),(gen_random_uuid(),q,'The Uprising',FALSE,1),(gen_random_uuid(),q,'The Founding',FALSE,2),(gen_random_uuid(),q,'The Final War',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','hard','Qual é o nome da família real com controle absoluto sobre o Titã Fundador dentro das muralhas?','Eles viviam escondidos como família comum dentro das muralhas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Reiss',TRUE,0),(gen_random_uuid(),q,'Ackerman',FALSE,1),(gen_random_uuid(),q,'Fritz',FALSE,2),(gen_random_uuid(),q,'Tybur',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','hard','Como se chama o ser orgânico encontrado por Ymir Fritz no subsolo, que originou o poder dos Titãs?','Ele se fundiu com o corpo de Ymir, concedendo-lhe os poderes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'A Fonte de Toda a Vida Orgânica',TRUE,0),(gen_random_uuid(),q,'A Lenda dos Eldianos',FALSE,1),(gen_random_uuid(),q,'O Caminho que conecta Eldianos',FALSE,2),(gen_random_uuid(),q,'O Titã Fundador Original',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','hard','Qual é o nome da linhagem familiar responsável por combater diretamente os poderes descontrolados do Titã Fundador?','Mikasa e Levi pertencem a esse clã lendário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ackerman',TRUE,0),(gen_random_uuid(),q,'Reiss',FALSE,1),(gen_random_uuid(),q,'Fritz',FALSE,2),(gen_random_uuid(),q,'Tybur',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','hard','Qual é o nome da família marleyana detentora hereditária do Titã Guerra Marcial?','Seu chefe revela publicamente a verdadeira história dos Titãs em um discurso em Liberio.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tybur',TRUE,0),(gen_random_uuid(),q,'Reiss',FALSE,1),(gen_random_uuid(),q,'Fritz',FALSE,2),(gen_random_uuid(),q,'Ackerman',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','hard','Qual é o nome da irmã mais velha de Historia Reiss, primeira portadora do Titã Fundador mostrada na série?','Ela é morta pelo próprio pai, Rod Reiss, para transferir o poder à Historia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Frieda Reiss',TRUE,0),(gen_random_uuid(),q,'Dina Fritz',FALSE,1),(gen_random_uuid(),q,'Carla Yeager',FALSE,2),(gen_random_uuid(),q,'Kiyomi Azumabito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','hard','Qual é o nome do pai biológico de Historia Reiss, líder secreto de um culto que venera a família real verdadeira?','Ele tenta se transformar em Titã Fundador, mas fracassa de forma monstruosa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rod Reiss',TRUE,0),(gen_random_uuid(),q,'Uri Reiss',FALSE,1),(gen_random_uuid(),q,'Kruger',FALSE,2),(gen_random_uuid(),q,'Grisha Yeager',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','hard','Qual é o nome do soldado da Guarnição encarregado de proteger o subsolo de Shiganshina, guardando um segredo antigo da família Yeager?','Ele mantém um relacionamento complexo com Grisha ainda quando este era criança.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kruger',TRUE,0),(gen_random_uuid(),q,'Rod Reiss',FALSE,1),(gen_random_uuid(),q,'Keith Shadis',FALSE,2),(gen_random_uuid(),q,'Dot Pixis',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','impossible','Qual é o nome da primeira esposa de Grisha Yeager, também eldiana, que vive em Liberio antes de sua chegada a Paradis?','Ela é morta por Grisha durante seu ataque de vingança contra a família real.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dina Fritz',TRUE,0),(gen_random_uuid(),q,'Carla Yeager',FALSE,1),(gen_random_uuid(),q,'Frieda Reiss',FALSE,2),(gen_random_uuid(),q,'Kiyomi Azumabito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','impossible','Qual é o nome do general marleyano responsável por comandar a força de invasão contra Paradis na saga final?','Ele subestima gravemente o poder do Titã Fundador em posse de Eren.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Theo Magath',TRUE,0),(gen_random_uuid(),q,'Willy Tybur',FALSE,1),(gen_random_uuid(),q,'Zeke Yeager',FALSE,2),(gen_random_uuid(),q,'Kruger',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','impossible','Qual é o nome da comandante suprema de Marley na cerimônia onde Willy Tybur revela publicamente o segredo dos Titãs?','Sua presença simboliza a autoridade máxima do governo marleyano.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não é nomeada explicitamente na série',TRUE,0),(gen_random_uuid(),q,'Pieck Finger',FALSE,1),(gen_random_uuid(),q,'Kiyomi Azumabito',FALSE,2),(gen_random_uuid(),q,'Yelena',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','impossible','Qual é o nome da soldado marleyana leal a Zeke, responsável por sua proteção pessoal durante a saga final?','Ela demonstra devoção quase religiosa aos planos eugênicos de Zeke.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yelena',TRUE,0),(gen_random_uuid(),q,'Pieck Finger',FALSE,1),(gen_random_uuid(),q,'Gabi Braun',FALSE,2),(gen_random_uuid(),q,'Kiyomi Azumabito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','impossible','Qual é o nome do capitão de esquadrão morto por Titãs durante a expedição em que Levi é recrutado ao Corpo de Reconhecimento?','Sua morte é um dos eventos que moldam a reputação implacável de Levi.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não é detalhado explicitamente na série',TRUE,0),(gen_random_uuid(),q,'Mike Zacharias',FALSE,1),(gen_random_uuid(),q,'Nile Dok',FALSE,2),(gen_random_uuid(),q,'Dot Pixis',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- FILL_BLANK — 38 perguntas (11 easy / 13 medium / 10 hard / 4 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'fill_blank','easy','O equipamento usado pelos soldados para se mover verticalmente e cortar a nuca dos Titãs se chama ___.','Ele usa gás comprimido para propulsão em cabos de metal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Equipamento de Manobra Tridimensional',TRUE,0),(gen_random_uuid(),q,'Arreio de Batalha',FALSE,1),(gen_random_uuid(),q,'Propulsor Aéreo',FALSE,2),(gen_random_uuid(),q,'Cabos de Combate',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'fill_blank','easy','O pai de Eren, responsável por injetar nele o poder titânico ainda criança, se chama ___.','Ele desaparece misteriosamente após a queda do Muro Maria.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Grisha Yeager',TRUE,0),(gen_random_uuid(),q,'Keith Shadis',FALSE,1),(gen_random_uuid(),q,'Dot Pixis',FALSE,2),(gen_random_uuid(),q,'Kruger',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'fill_blank','easy','A mãe de Eren, morta devorada por um Titã durante a queda do Muro Maria, se chama ___.','Sua morte trágica marca o início da jornada de vingança de Eren.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Carla Yeager',TRUE,0),(gen_random_uuid(),q,'Dina Fritz',FALSE,1),(gen_random_uuid(),q,'Frieda Reiss',FALSE,2),(gen_random_uuid(),q,'Kiyomi Azumabito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'fill_blank','easy','O instrutor rígido responsável pelo treinamento do 104º Esquadrão se chama ___.','Ele é conhecido por sua disciplina extrema e falta de paciência com recrutas fracos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Keith Shadis',TRUE,0),(gen_random_uuid(),q,'Dot Pixis',FALSE,1),(gen_random_uuid(),q,'Nile Dok',FALSE,2),(gen_random_uuid(),q,'Erwin Smith',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'fill_blank','easy','O amigo próximo de Jean, morto por um Titã durante a batalha de Trost, se chama ___.','Sua morte causa grande impacto emocional em Jean, mudando sua visão sobre a Polícia Militar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Marco Bott',TRUE,0),(gen_random_uuid(),q,'Connie Springer',FALSE,1),(gen_random_uuid(),q,'Thomas Wagner',FALSE,2),(gen_random_uuid(),q,'Franz Kefka',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'fill_blank','easy','A cidade fortificada onde ocorre a primeira grande batalha da série contra os Titãs se chama ___.','Sua muralha é violada logo no início da invasão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Trost',TRUE,0),(gen_random_uuid(),q,'Shiganshina',FALSE,1),(gen_random_uuid(),q,'Utopia',FALSE,2),(gen_random_uuid(),q,'Ragako',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'fill_blank','easy','O ramo militar dedicado à exploração fora das muralhas e combate direto aos Titãs se chama Corpo de ___.','Levi Ackerman é seu membro mais famoso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Reconhecimento',TRUE,0),(gen_random_uuid(),q,'Guarnição',FALSE,1),(gen_random_uuid(),q,'Polícia Militar',FALSE,2),(gen_random_uuid(),q,'Marulhan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'fill_blank','easy','O poder que Eren herda de seu pai, permitindo transformar-se em Titã, se chama Titã de ___.','Mais tarde ele descobre outros poderes ligados à família real.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ataque',TRUE,0),(gen_random_uuid(),q,'Colossal',FALSE,1),(gen_random_uuid(),q,'Blindado',FALSE,2),(gen_random_uuid(),q,'Feminino',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'fill_blank','easy','A ramo militar interno responsável por manter a ordem dentro das muralhas e servir a nobreza se chama ___.','Muitos recrutas se juntam a ela para escapar do perigo direto dos Titãs.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Polícia Militar',TRUE,0),(gen_random_uuid(),q,'Guarnição',FALSE,1),(gen_random_uuid(),q,'Corpo de Reconhecimento',FALSE,2),(gen_random_uuid(),q,'Brigada de Marulhan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'fill_blank','easy','O ramo militar responsável por patrulhar e defender as muralhas internas se chama ___.','Seus membros costumam ser vistos como menos prestigiados que a Polícia Militar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Guarnição',TRUE,0),(gen_random_uuid(),q,'Polícia Militar',FALSE,1),(gen_random_uuid(),q,'Corpo de Reconhecimento',FALSE,2),(gen_random_uuid(),q,'Brigada de Marulhan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'fill_blank','easy','O povo descendente de Ymir Fritz, capaz de se transformar em Titã, é chamado de ___.','Eles são perseguidos e discriminados em todo o mundo fora de Paradis.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Eldianos',TRUE,0),(gen_random_uuid(),q,'Marleyanos',FALSE,1),(gen_random_uuid(),q,'Hizurus',FALSE,2),(gen_random_uuid(),q,'Ackermans',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'fill_blank','medium','O irmão mais velho de Eren, revelado como o Titã Bestial dos Marleyanos, se chama ___.','Ele possui a capacidade única de controlar outros Titãs através de gritos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zeke Yeager',TRUE,0),(gen_random_uuid(),q,'Reiner Braun',FALSE,1),(gen_random_uuid(),q,'Grisha Yeager',FALSE,2),(gen_random_uuid(),q,'Porco Galliard',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'fill_blank','medium','A nação que domina o resto do mundo e mantém os Eldianos confinados em guetos se chama ___.','Ela usa Titãs eldianos como armas de guerra contra outras potências.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Marley',TRUE,0),(gen_random_uuid(),q,'Paradis',FALSE,1),(gen_random_uuid(),q,'Hizuru',FALSE,2),(gen_random_uuid(),q,'Liberio',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'fill_blank','medium','A cidade-gueto onde vivem os Eldianos aprisionados dentro de Marley se chama ___.','É lá que se realiza a cerimônia de herança do Titã Bestial mostrada no início da saga final.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Liberio',TRUE,0),(gen_random_uuid(),q,'Shiganshina',FALSE,1),(gen_random_uuid(),q,'Trost',FALSE,2),(gen_random_uuid(),q,'Utopia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'fill_blank','medium','A nação aliada de Paradis com forte influência cultural japonesa se chama ___.','Kiyomi Azumabito é uma de suas representantes mais importantes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hizuru',TRUE,0),(gen_random_uuid(),q,'Marley',FALSE,1),(gen_random_uuid(),q,'Liberio',FALSE,2),(gen_random_uuid(),q,'Kalanes',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'fill_blank','medium','O verdadeiro nome do Titã Carroça, jovem guerreira extremamente frágil fisicamente, é ___.','Ela compensa a fraqueza física com inteligência estratégica excepcional.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Pieck Finger',TRUE,0),(gen_random_uuid(),q,'Porco Galliard',FALSE,1),(gen_random_uuid(),q,'Falco Grice',FALSE,2),(gen_random_uuid(),q,'Colt Grice',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'fill_blank','medium','O herdeiro do Titã Mordedor, capaz de se transformar parcialmente em Titã, se chama ___.','Ele nutre grande admiração por Reiner Braun como modelo de herói.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Porco Galliard',TRUE,0),(gen_random_uuid(),q,'Falco Grice',FALSE,1),(gen_random_uuid(),q,'Colt Grice',FALSE,2),(gen_random_uuid(),q,'Pieck Finger',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'fill_blank','medium','O jovem eldiano transformado acidentalmente em Titã Mordedor perto do fim da série se chama ___.','Ele é amigo próximo de Gabi Braun durante a saga final.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Falco Grice',TRUE,0),(gen_random_uuid(),q,'Colt Grice',FALSE,1),(gen_random_uuid(),q,'Porco Galliard',FALSE,2),(gen_random_uuid(),q,'Zofia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'fill_blank','medium','A jovem guerreira marleyana, prima de Reiner, que idolatra os Titãs Guerreiros, se chama ___.','Ela participa ativamente do conflito final ao lado de Falco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gabi Braun',TRUE,0),(gen_random_uuid(),q,'Pieck Finger',FALSE,1),(gen_random_uuid(),q,'Annie Leonhart',FALSE,2),(gen_random_uuid(),q,'Zofia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'fill_blank','medium','A equipe especial de espionagem marleyana ligada ao Titã Bestial durante a saga final se chama ___.','Seus membros infiltram-se em Paradis para reunir informações estratégicas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Guerreiros de Marley',TRUE,0),(gen_random_uuid(),q,'Corpo de Reconhecimento',FALSE,1),(gen_random_uuid(),q,'Polícia Militar',FALSE,2),(gen_random_uuid(),q,'Guarnição',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'fill_blank','hard','Quem é revelado como o Titã Colossal que destruiu o Muro Maria no início da série?','Ele é o melhor amigo de Reiner e carrega culpa profunda pelo ato: ___.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bertholdt Hoover',TRUE,0),(gen_random_uuid(),q,'Reiner Braun',FALSE,1),(gen_random_uuid(),q,'Annie Leonhart',FALSE,2),(gen_random_uuid(),q,'Zeke Yeager',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'fill_blank','hard','O evento catastrófico que Eren desencadeia no final da série se chama ___.','Ele libera todos os Titãs Colossais dos muros para destruir o mundo de fora.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'The Rumbling',TRUE,0),(gen_random_uuid(),q,'The Uprising',FALSE,1),(gen_random_uuid(),q,'The Founding',FALSE,2),(gen_random_uuid(),q,'The Final War',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'fill_blank','hard','A família real com controle absoluto sobre o Titã Fundador dentro das muralhas se chama ___.','Eles viviam escondidos como família comum dentro das muralhas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Reiss',TRUE,0),(gen_random_uuid(),q,'Ackerman',FALSE,1),(gen_random_uuid(),q,'Fritz',FALSE,2),(gen_random_uuid(),q,'Tybur',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'fill_blank','hard','A linhagem familiar responsável por combater diretamente os poderes descontrolados do Titã Fundador se chama ___.','Mikasa e Levi pertencem a esse clã lendário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ackerman',TRUE,0),(gen_random_uuid(),q,'Reiss',FALSE,1),(gen_random_uuid(),q,'Fritz',FALSE,2),(gen_random_uuid(),q,'Tybur',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'fill_blank','hard','A família marleyana detentora hereditária do Titã Guerra Marcial se chama ___.','Seu chefe revela publicamente a verdadeira história dos Titãs em um discurso em Liberio.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tybur',TRUE,0),(gen_random_uuid(),q,'Reiss',FALSE,1),(gen_random_uuid(),q,'Fritz',FALSE,2),(gen_random_uuid(),q,'Ackerman',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'fill_blank','hard','A irmã mais velha de Historia Reiss, primeira portadora do Titã Fundador mostrada na série, se chama ___.','Ela é morta pelo próprio pai, Rod Reiss, para transferir o poder à Historia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Frieda Reiss',TRUE,0),(gen_random_uuid(),q,'Dina Fritz',FALSE,1),(gen_random_uuid(),q,'Carla Yeager',FALSE,2),(gen_random_uuid(),q,'Kiyomi Azumabito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'fill_blank','hard','O pai biológico de Historia Reiss, líder secreto de um culto que venera a família real verdadeira, se chama ___.','Ele tenta se transformar em Titã Fundador, mas fracassa de forma monstruosa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rod Reiss',TRUE,0),(gen_random_uuid(),q,'Uri Reiss',FALSE,1),(gen_random_uuid(),q,'Kruger',FALSE,2),(gen_random_uuid(),q,'Grisha Yeager',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'fill_blank','hard','O soldado da Guarnição encarregado de guardar um segredo antigo da família Yeager no subsolo de Shiganshina se chama ___.','Ele mantém um relacionamento complexo com Grisha ainda quando este era criança.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kruger',TRUE,0),(gen_random_uuid(),q,'Rod Reiss',FALSE,1),(gen_random_uuid(),q,'Keith Shadis',FALSE,2),(gen_random_uuid(),q,'Dot Pixis',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'fill_blank','impossible','A primeira esposa de Grisha Yeager, eldiana que vive em Liberio antes de sua chegada a Paradis, se chama ___.','Ela é morta por Grisha durante seu ataque de vingança contra a família real.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dina Fritz',TRUE,0),(gen_random_uuid(),q,'Carla Yeager',FALSE,1),(gen_random_uuid(),q,'Frieda Reiss',FALSE,2),(gen_random_uuid(),q,'Kiyomi Azumabito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'fill_blank','impossible','O general marleyano responsável por comandar a força de invasão contra Paradis na saga final se chama ___.','Ele subestima gravemente o poder do Titã Fundador em posse de Eren.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Theo Magath',TRUE,0),(gen_random_uuid(),q,'Willy Tybur',FALSE,1),(gen_random_uuid(),q,'Zeke Yeager',FALSE,2),(gen_random_uuid(),q,'Kruger',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'fill_blank','impossible','A soldado marleyana leal a Zeke, responsável por sua proteção pessoal durante a saga final, se chama ___.','Ela demonstra devoção quase religiosa aos planos eugênicos de Zeke.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yelena',TRUE,0),(gen_random_uuid(),q,'Pieck Finger',FALSE,1),(gen_random_uuid(),q,'Gabi Braun',FALSE,2),(gen_random_uuid(),q,'Kiyomi Azumabito',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- WHO_SAID — 30 perguntas (9 easy / 11 medium / 8 hard / 2 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'who_said','easy','Quem disse: "Eu vou exterminar todos os Titãs deste mundo, até o último"?','A frase resume o objetivo de vida do protagonista desde criança.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Eren Yeager',TRUE,0),(gen_random_uuid(),q,'Armin Arlert',FALSE,1),(gen_random_uuid(),q,'Jean Kirstein',FALSE,2),(gen_random_uuid(),q,'Connie Springer',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'who_said','easy','Quem disse: "Se eu não lutar, eu não posso vencer"?','A frase reflete a determinação constante da irmã adotiva de Eren.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mikasa Ackerman',TRUE,0),(gen_random_uuid(),q,'Sasha Blouse',FALSE,1),(gen_random_uuid(),q,'Historia Reiss',FALSE,2),(gen_random_uuid(),q,'Annie Leonhart',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'who_said','easy','Quem disse: "Eu não tenho força física, mas posso pensar e criar um plano para vencer"?','A frase reflete a autoconsciência estratégica do amigo mais próximo de Eren.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Armin Arlert',TRUE,0),(gen_random_uuid(),q,'Connie Springer',FALSE,1),(gen_random_uuid(),q,'Jean Kirstein',FALSE,2),(gen_random_uuid(),q,'Marco Bott',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'who_said','easy','Quem disse: "Eu vou entrar para a Polícia Militar e viver uma vida segura e confortável dentro do Muro Sina"?','A frase reflete o objetivo inicial e egoísta desse recruta antes de sua mudança de caráter.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Jean Kirstein',TRUE,0),(gen_random_uuid(),q,'Connie Springer',FALSE,1),(gen_random_uuid(),q,'Marco Bott',FALSE,2),(gen_random_uuid(),q,'Reiner Braun',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'who_said','easy','Quem disse: "Eu só quero comer batatas assadas em paz, é tudo que peço deste mundo cruel"?','A frase é uma das mais citadas da série, refletindo o humor peculiar da recruta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sasha Blouse',TRUE,0),(gen_random_uuid(),q,'Historia Reiss',FALSE,1),(gen_random_uuid(),q,'Ymir',FALSE,2),(gen_random_uuid(),q,'Mikasa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'who_said','easy','Quem disse: "A humanidade ainda não foi derrotada, e eu vou continuar lutando até meu último suspiro"?','A frase resume a liderança inspiradora do comandante do Corpo de Reconhecimento.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Erwin Smith',TRUE,0),(gen_random_uuid(),q,'Levi Ackerman',FALSE,1),(gen_random_uuid(),q,'Hange Zoe',FALSE,2),(gen_random_uuid(),q,'Dot Pixis',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'who_said','easy','Quem disse: "Faça sua escolha, tanto faz, apenas não se arrependa depois"?','A frase reflete a filosofia direta e pragmática do capitão mais forte da humanidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Levi Ackerman',TRUE,0),(gen_random_uuid(),q,'Erwin Smith',FALSE,1),(gen_random_uuid(),q,'Hange Zoe',FALSE,2),(gen_random_uuid(),q,'Mike Zacharias',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'who_said','easy','Quem disse: "Eu amo estudar Titãs, cada um deles é uma descoberta fascinante"?','A frase reflete o entusiasmo científico peculiar dessa comandante posterior do Corpo de Reconhecimento.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hange Zoe',TRUE,0),(gen_random_uuid(),q,'Rico Brzenska',FALSE,1),(gen_random_uuid(),q,'Nanaba',FALSE,2),(gen_random_uuid(),q,'Petra Ral',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'who_said','easy','Quem disse: "Eu não sou digna de ser rainha, mas vou aprender a ser, pelo bem do meu povo"?','A frase reflete a insegurança inicial da jovem herdeira secreta do trono.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Historia Reiss',TRUE,0),(gen_random_uuid(),q,'Mikasa Ackerman',FALSE,1),(gen_random_uuid(),q,'Annie Leonhart',FALSE,2),(gen_random_uuid(),q,'Ymir',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'who_said','medium','Quem disse: "Eu preciso saber a verdade sobre o mundo além das muralhas, mesmo que isso destrua tudo em que acredito"?','A frase reflete a busca incessante do protagonista por conhecimento além do que lhe foi ensinado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Eren Yeager',TRUE,0),(gen_random_uuid(),q,'Armin Arlert',FALSE,1),(gen_random_uuid(),q,'Zeke Yeager',FALSE,2),(gen_random_uuid(),q,'Reiner Braun',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'who_said','medium','Quem disse: "Eu sou o herói da minha nação, mesmo que isso signifique destruir a vida de crianças inocentes em Paradis"?','A frase reflete o conflito moral interno do Titã Blindado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Reiner Braun',TRUE,0),(gen_random_uuid(),q,'Bertholdt Hoover',FALSE,1),(gen_random_uuid(),q,'Zeke Yeager',FALSE,2),(gen_random_uuid(),q,'Annie Leonhart',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'who_said','medium','Quem disse: "Eu só queria voltar para casa, nunca quis fazer mal a ninguém em Paradis"?','A frase reflete o remorso profundo do Titã Colossal ao final de sua jornada trágica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bertholdt Hoover',TRUE,0),(gen_random_uuid(),q,'Reiner Braun',FALSE,1),(gen_random_uuid(),q,'Annie Leonhart',FALSE,2),(gen_random_uuid(),q,'Zeke Yeager',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'who_said','medium','Quem disse: "Eu quero libertar os Eldianos de sua maldição, mesmo que isso signifique impedir que eles tenham filhos"?','A frase resume o plano eugênico radical do irmão de Eren.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zeke Yeager',TRUE,0),(gen_random_uuid(),q,'Reiner Braun',FALSE,1),(gen_random_uuid(),q,'Grisha Yeager',FALSE,2),(gen_random_uuid(),q,'Willy Tybur',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'who_said','medium','Quem disse: "Eu sacrifiquei a paz da minha própria vila para proteger o segredo da minha identidade como Titã"?','A frase é dita pela guerreira que se disfarça de estudante em Paradis por anos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Annie Leonhart',TRUE,0),(gen_random_uuid(),q,'Pieck Finger',FALSE,1),(gen_random_uuid(),q,'Gabi Braun',FALSE,2),(gen_random_uuid(),q,'Historia Reiss',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'who_said','medium','Quem disse: "Os Titãs Guerreiros são heróis em Marley, e eu vou me tornar um deles, custe o que custar"?','A frase reflete a admiração ingênua da jovem prima de Reiner pelo sistema militar marleyano.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gabi Braun',TRUE,0),(gen_random_uuid(),q,'Pieck Finger',FALSE,1),(gen_random_uuid(),q,'Annie Leonhart',FALSE,2),(gen_random_uuid(),q,'Falco Grice',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'who_said','medium','Quem disse: "Eu admiro Reiner Braun, e um dia quero ser um herói como ele, mesmo sem entender toda a verdade"?','A frase é dita por um jovem eldiano de Liberio antes de sua transformação acidental.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Falco Grice',TRUE,0),(gen_random_uuid(),q,'Colt Grice',FALSE,1),(gen_random_uuid(),q,'Porco Galliard',FALSE,2),(gen_random_uuid(),q,'Zofia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'who_said','medium','Quem disse: "Eu vou revelar ao mundo inteiro a verdade sobre os Titãs, mesmo que isso custe minha própria vida"?','A frase é dita pelo chefe da família Tybur em um discurso público em Liberio.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Willy Tybur',TRUE,0),(gen_random_uuid(),q,'Theo Magath',FALSE,1),(gen_random_uuid(),q,'Zeke Yeager',FALSE,2),(gen_random_uuid(),q,'Rod Reiss',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'who_said','medium','Quem disse: "Eu quero apenas proteger meus amigos, mesmo que isso signifique desafiar toda a hierarquia militar de Marley"?','A frase é dita pela guerreira Titã Carroça em um raro momento de vulnerabilidade emocional.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Pieck Finger',TRUE,0),(gen_random_uuid(),q,'Gabi Braun',FALSE,1),(gen_random_uuid(),q,'Annie Leonhart',FALSE,2),(gen_random_uuid(),q,'Yelena',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'who_said','hard','Quem disse: "Eu vou usar o poder do Titã Fundador para libertar todos os Eldianos, mesmo que isso signifique destruir o resto do mundo"?','A frase resume a decisão final e devastadora do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Eren Yeager',TRUE,0),(gen_random_uuid(),q,'Zeke Yeager',FALSE,1),(gen_random_uuid(),q,'Armin Arlert',FALSE,2),(gen_random_uuid(),q,'Historia Reiss',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'who_said','hard','Quem disse: "Eu escondi minha verdadeira identidade real por gerações, apenas para proteger meu povo de uma guerra inútil"?','A frase é dita por um dos antigos portadores pacíficos do Titã Fundador.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Uri Reiss',TRUE,0),(gen_random_uuid(),q,'Rod Reiss',FALSE,1),(gen_random_uuid(),q,'Frieda Reiss',FALSE,2),(gen_random_uuid(),q,'Historia Reiss',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'who_said','hard','Quem disse: "Eu vim ao subsolo para proteger um segredo que pode destruir o equilíbrio de poder entre nações"?','A frase é dita por um soldado misterioso ligado à história da família Yeager.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kruger',TRUE,0),(gen_random_uuid(),q,'Rod Reiss',FALSE,1),(gen_random_uuid(),q,'Keith Shadis',FALSE,2),(gen_random_uuid(),q,'Dot Pixis',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'who_said','hard','Quem disse: "Eu sacrifiquei minha própria filha para transferir o poder do Titã Fundador, e vivo com essa culpa todos os dias"?','A frase é dita pelo pai biológico de Historia Reiss.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rod Reiss',TRUE,0),(gen_random_uuid(),q,'Uri Reiss',FALSE,1),(gen_random_uuid(),q,'Kruger',FALSE,2),(gen_random_uuid(),q,'Grisha Yeager',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'who_said','hard','Quem disse: "Eu comandei o exército mais poderoso de Marley, e mesmo assim subestimei completamente o poder de Eren Yeager"?','A frase é dita pelo general responsável pela invasão final a Paradis.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Theo Magath',TRUE,0),(gen_random_uuid(),q,'Willy Tybur',FALSE,1),(gen_random_uuid(),q,'Zeke Yeager',FALSE,2),(gen_random_uuid(),q,'Kruger',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'who_said','hard','Quem disse: "Eu sirvo a Zeke com total devoção, porque acredito que a extinção pacífica é a única saída para os Eldianos"?','A frase reflete a lealdade quase fanática dessa soldado marleyana.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yelena',TRUE,0),(gen_random_uuid(),q,'Pieck Finger',FALSE,1),(gen_random_uuid(),q,'Gabi Braun',FALSE,2),(gen_random_uuid(),q,'Kiyomi Azumabito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'who_said','hard','Quem disse: "Eu quase me tornei um Titã sem controle, tudo por acreditar cegamente na fé do meu pai"?','A frase é dita pelo pai biológico de Historia refletindo sobre seu próprio fracasso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rod Reiss',TRUE,0),(gen_random_uuid(),q,'Uri Reiss',FALSE,1),(gen_random_uuid(),q,'Frieda Reiss',FALSE,2),(gen_random_uuid(),q,'Kruger',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'who_said','impossible','Quem disse: "Eu fui a primeira esposa dele, e ainda assim ele escolheu proteger a outra família em vez da minha"?','A frase é dita pela primeira esposa eldiana de Grisha Yeager em flashback.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dina Fritz',TRUE,0),(gen_random_uuid(),q,'Carla Yeager',FALSE,1),(gen_random_uuid(),q,'Frieda Reiss',FALSE,2),(gen_random_uuid(),q,'Kiyomi Azumabito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'who_said','impossible','Quem disse: "Eu represento Hizuru nas negociações com Paradis, e acredito profundamente numa aliança duradoura entre nossos povos"?','A frase é dita por uma diplomata aliada de Eren e seus amigos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kiyomi Azumabito',TRUE,0),(gen_random_uuid(),q,'Yelena',FALSE,1),(gen_random_uuid(),q,'Pieck Finger',FALSE,2),(gen_random_uuid(),q,'Historia Reiss',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- EPISODE_ARC — 15 perguntas (7 medium / 6 hard / 2 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'episode_arc','medium','Em qual saga o Muro Maria é violado pela primeira vez pelo Titã Colossal, iniciando toda a trama principal?','Eren perde sua mãe durante este evento inicial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga da Queda de Shiganshina',TRUE,0),(gen_random_uuid(),q,'Saga de Trost',FALSE,1),(gen_random_uuid(),q,'Saga da Floresta dos Titãs Gigantes',FALSE,2),(gen_random_uuid(),q,'Saga de Marley',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'episode_arc','medium','Em qual saga os recrutas do 104º Esquadrão enfrentam sua primeira grande batalha contra os Titãs, defendendo a cidade?','Eren se sacrifica para salvar Armin, sendo devorado e depois renascendo como Titã.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga de Trost',TRUE,0),(gen_random_uuid(),q,'Saga da Queda de Shiganshina',FALSE,1),(gen_random_uuid(),q,'Saga de Marley',FALSE,2),(gen_random_uuid(),q,'Saga da Batalha de Shiganshina',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'episode_arc','medium','Em qual saga o Corpo de Reconhecimento é atacado pelo Titã Feminino durante uma expedição fora das muralhas?','Vários membros importantes do esquadrão de elite de Levi morrem neste arco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga do Titã Feminino',TRUE,0),(gen_random_uuid(),q,'Saga de Trost',FALSE,1),(gen_random_uuid(),q,'Saga de Marley',FALSE,2),(gen_random_uuid(),q,'Saga do Subsolo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'episode_arc','medium','Em qual saga a verdadeira identidade de Historia Reiss e o segredo da família real são finalmente revelados?','Rod Reiss tenta se transformar em Titã, mas falha catastroficamente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga da Família Real',TRUE,0),(gen_random_uuid(),q,'Saga do Titã Feminino',FALSE,1),(gen_random_uuid(),q,'Saga de Marley',FALSE,2),(gen_random_uuid(),q,'Saga do Subsolo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'episode_arc','medium','Em qual saga os protagonistas retomam Shiganshina, capturando Reiner e Bertholdt em combate direto?','Bertholdt é devorado por Eren, encerrando de vez sua ameaça.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga da Batalha de Shiganshina',TRUE,0),(gen_random_uuid(),q,'Saga do Titã Feminino',FALSE,1),(gen_random_uuid(),q,'Saga da Família Real',FALSE,2),(gen_random_uuid(),q,'Saga de Marley',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'episode_arc','medium','Em qual saga a ação se desloca pela primeira vez para o território de Marley, revelando a verdadeira estrutura do mundo exterior?','Eren e seus aliados atacam Liberio durante a cerimônia de Willy Tybur.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga de Marley',TRUE,0),(gen_random_uuid(),q,'Saga da Batalha de Shiganshina',FALSE,1),(gen_random_uuid(),q,'Saga da Família Real',FALSE,2),(gen_random_uuid(),q,'Saga do Subsolo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'episode_arc','medium','Em qual saga Eren desencadeia o Rumbling, marchando com os Titãs Colossais rumo à destruição total do mundo exterior?','É o clímax final e mais controverso de toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga do Rumbling',TRUE,0),(gen_random_uuid(),q,'Saga de Marley',FALSE,1),(gen_random_uuid(),q,'Saga da Batalha de Shiganshina',FALSE,2),(gen_random_uuid(),q,'Saga da Família Real',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'episode_arc','hard','Em qual saga Erwin Smith sacrifica a maior parte de sua tropa em uma manobra estratégica para capturar o Titã Fêmea Bestial disfarçado, revelando ser Zeke?','O plano culmina na captura temporária de Zeke em pleno campo aberto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga do Retorno a Shiganshina',TRUE,0),(gen_random_uuid(),q,'Saga do Titã Feminino',FALSE,1),(gen_random_uuid(),q,'Saga da Família Real',FALSE,2),(gen_random_uuid(),q,'Saga de Marley',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'episode_arc','hard','Em qual saga Eren finalmente descobre a verdade sobre o subsolo de Shiganshina, revelada por seu pai em memórias transferidas?','A revelação inclui o verdadeiro motivo do ataque de Grisha à família real.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga da Batalha de Shiganshina',TRUE,0),(gen_random_uuid(),q,'Saga do Subsolo',FALSE,1),(gen_random_uuid(),q,'Saga da Família Real',FALSE,2),(gen_random_uuid(),q,'Saga de Marley',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'episode_arc','hard','Em qual saga Levi enfrenta Zeke diretamente, resultando em ferimentos graves para o capitão mais forte da humanidade?','O confronto ocorre logo após a invasão a Liberio.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga de Marley',TRUE,0),(gen_random_uuid(),q,'Saga do Rumbling',FALSE,1),(gen_random_uuid(),q,'Saga da Batalha de Shiganshina',FALSE,2),(gen_random_uuid(),q,'Saga do Subsolo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'episode_arc','hard','Em qual saga Eren revela a Armin e Mikasa, em segredo, seus verdadeiros planos para o Rumbling antes de executá-los?','A conversa acontece em uma caverna, longe dos olhos dos demais aliados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga do Rumbling',TRUE,0),(gen_random_uuid(),q,'Saga de Marley',FALSE,1),(gen_random_uuid(),q,'Saga da Família Real',FALSE,2),(gen_random_uuid(),q,'Saga do Subsolo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'episode_arc','hard','Em qual saga é revelada a verdadeira natureza pacífica dos antigos Reis Fritz, que escolheram nunca usar o poder do Titã Fundador em guerra?','A revelação contrasta diretamente com a filosofia de vingança de Eren.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga da Família Real',TRUE,0),(gen_random_uuid(),q,'Saga do Subsolo',FALSE,1),(gen_random_uuid(),q,'Saga de Marley',FALSE,2),(gen_random_uuid(),q,'Saga do Rumbling',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'episode_arc','impossible','Em qual saga é revelado que Ymir Fritz se tornou a primeira portadora de poder titânico ao se fundir com a fonte de toda vida orgânica?','A revelação ocorre através de memórias compartilhadas com Historia Reiss.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga da Família Real',TRUE,0),(gen_random_uuid(),q,'Saga do Subsolo',FALSE,1),(gen_random_uuid(),q,'Saga de Marley',FALSE,2),(gen_random_uuid(),q,'Saga do Rumbling',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'episode_arc','impossible','Em qual saga Armin sacrifica a possibilidade de salvar Erwin, escolhendo herdar o Titã Colossal em seu lugar?','A decisão é tomada por Levi em um dos momentos mais tensos da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga do Retorno a Shiganshina',TRUE,0),(gen_random_uuid(),q,'Saga da Família Real',FALSE,1),(gen_random_uuid(),q,'Saga de Marley',FALSE,2),(gen_random_uuid(),q,'Saga do Rumbling',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- CHRONOLOGICAL — 7 perguntas (4 hard / 3 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'chronological','hard','Ordene cronologicamente as sagas a seguir, da mais antiga à mais recente.','Cobrem desde a queda de Shiganshina até o desfecho final da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Queda de Shiganshina',TRUE,0),(gen_random_uuid(),q,'Trost',FALSE,1),(gen_random_uuid(),q,'Família Real',FALSE,2),(gen_random_uuid(),q,'Marley',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'chronological','hard','Ordene cronologicamente os eventos a seguir sobre a jornada de Eren, do mais antigo ao mais recente.','Cobrem desde a perda da mãe até o desencadeamento do Rumbling.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Perde a mãe na queda de Shiganshina',TRUE,0),(gen_random_uuid(),q,'Torna-se Titã pela primeira vez em Trost',FALSE,1),(gen_random_uuid(),q,'Descobre a verdade sobre o mundo exterior em Marley',FALSE,2),(gen_random_uuid(),q,'Desencadeia o Rumbling',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'chronological','hard','Ordene cronologicamente as revelações de identidade a seguir, da mais antiga à mais recente.','Cobrem desde o Titã Feminino até o Titã Bestial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Annie é revelada como o Titã Feminino',TRUE,0),(gen_random_uuid(),q,'Reiner é revelado como o Titã Blindado',FALSE,1),(gen_random_uuid(),q,'Historia é revelada como herdeira real',FALSE,2),(gen_random_uuid(),q,'Zeke é revelado como o Titã Bestial',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'chronological','hard','Ordene cronologicamente os seguintes eventos da Guerra de Marley, do mais antigo ao mais recente.','Cobrem desde a chegada dos aliados de Paradis até a fuga com o Titã Fundador.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cerimônia de Willy Tybur em Liberio',TRUE,0),(gen_random_uuid(),q,'Ataque surpresa de Eren e aliados',FALSE,1),(gen_random_uuid(),q,'Captura temporária de Zeke',FALSE,2),(gen_random_uuid(),q,'Fuga com o poder do Titã Fundador',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre a família real, do mais antigo ao mais recente.','Cobrem desde a era de Ymir Fritz até a ascensão de Historia ao trono.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ymir Fritz se torna o primeiro Titã',TRUE,0),(gen_random_uuid(),q,'Fundação das muralhas por Karl Fritz',FALSE,1),(gen_random_uuid(),q,'Morte de Frieda Reiss pelas mãos de Rod',FALSE,2),(gen_random_uuid(),q,'Historia se torna Rainha de Paradis',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Grisha Yeager, do mais antigo ao mais recente.','Cobrem desde sua vida em Liberio até sua morte em Paradis.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vive como médico eldiano em Liberio',TRUE,0),(gen_random_uuid(),q,'Ataca a família real e mata Frieda Reiss',FALSE,1),(gen_random_uuid(),q,'Casa-se com Carla e tem Eren',FALSE,2),(gen_random_uuid(),q,'Desaparece após a queda do Muro Maria',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'chronological','impossible','Ordene cronologicamente os seguintes eventos do desfecho final da série, do mais antigo ao mais recente.','Cobrem desde o início do Rumbling até a morte de Eren.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Eren desencadeia o Rumbling',TRUE,0),(gen_random_uuid(),q,'Antigos aliados se unem contra Eren',FALSE,1),(gen_random_uuid(),q,'Batalha final dentro do corpo do Titã Fundador',FALSE,2),(gen_random_uuid(),q,'Mikasa decapita Eren, encerrando o Rumbling',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- Complemento para fechar 150 perguntas na distribuição exata
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','easy','Qual é o nome do soldado veterano da Guarnição, mentor tardio de Eren, ferido gravemente na batalha de Trost?','Ele perde parte das pernas ao proteger recrutas mais jovens.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dot Pixis',TRUE,0),(gen_random_uuid(),q,'Nile Dok',FALSE,1),(gen_random_uuid(),q,'Keith Shadis',FALSE,2),(gen_random_uuid(),q,'Erwin Smith',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','easy','Qual é o nome do comandante da Polícia Militar durante boa parte da série, ex-colega de treinamento de Erwin?','Ele demonstra relutância em confrontar diretamente a corrupção interna da Polícia Militar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nile Dok',TRUE,0),(gen_random_uuid(),q,'Dot Pixis',FALSE,1),(gen_random_uuid(),q,'Keith Shadis',FALSE,2),(gen_random_uuid(),q,'Erwin Smith',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','easy','Qual é o nome da namorada de Ymir dentro do Esquadrão de Treinamento, que também é a futura Rainha de Paradis?','Ymir se sacrifica para protegê-la em mais de uma ocasião.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Historia Reiss',TRUE,0),(gen_random_uuid(),q,'Mikasa Ackerman',FALSE,1),(gen_random_uuid(),q,'Annie Leonhart',FALSE,2),(gen_random_uuid(),q,'Sasha Blouse',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','medium','Qual é o nome da soldado membro do esquadrão de elite de Levi, apaixonada por ele em segredo?','Ela morre durante o ataque do Titã Feminino ao Corpo de Reconhecimento.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Petra Ral',TRUE,0),(gen_random_uuid(),q,'Nanaba',FALSE,1),(gen_random_uuid(),q,'Rico Brzenska',FALSE,2),(gen_random_uuid(),q,'Hange Zoe',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','medium','Qual é o nome do amigo próximo de Reiner na equipe original dos Titãs Guerreiros, com Titã do tipo Fêmea Bestial disfarçado?','Ele é revelado como Zeke Yeager durante uma expedição em campo aberto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zeke Yeager',TRUE,0),(gen_random_uuid(),q,'Bertholdt Hoover',FALSE,1),(gen_random_uuid(),q,'Porco Galliard',FALSE,2),(gen_random_uuid(),q,'Colt Grice',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','medium','Qual é o nome da técnica usada por Erwin Smith em sua última carga suicida contra o Titã Bestial em campo aberto?','A manobra distrai Zeke o suficiente para permitir a captura temporária dele.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Carga Suicida do Corpo de Reconhecimento',TRUE,0),(gen_random_uuid(),q,'Manobra Tridimensional Avançada',FALSE,1),(gen_random_uuid(),q,'Ataque em Formação Fechada',FALSE,2),(gen_random_uuid(),q,'Investida Final',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','hard','Qual é o nome da técnica de cristalização usada por Annie para se proteger dentro de um casulo endurecido?','Ela permanece nesse estado por anos até ser resgatada ao final da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Endurecimento',TRUE,0),(gen_random_uuid(),q,'Blindagem Titânica',FALSE,1),(gen_random_uuid(),q,'Casulo de Cristal',FALSE,2),(gen_random_uuid(),q,'Petrificação',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','hard','Qual é o nome do processo pelo qual um portador de Titã transfere seu poder para outra pessoa antes de morrer, geralmente através de contato direto?','O tempo de vida do novo portador é drasticamente reduzido após a herança.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Herança Titânica',TRUE,0),(gen_random_uuid(),q,'Transferência de Alma',FALSE,1),(gen_random_uuid(),q,'Ritual de Sucessão',FALSE,2),(gen_random_uuid(),q,'Ciclo Eldiano',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'fill_blank','easy','O soldado veterano da Guarnição, mentor tardio de Eren, ferido gravemente na batalha de Trost, se chama ___.','Ele perde parte das pernas ao proteger recrutas mais jovens.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dot Pixis',TRUE,0),(gen_random_uuid(),q,'Nile Dok',FALSE,1),(gen_random_uuid(),q,'Keith Shadis',FALSE,2),(gen_random_uuid(),q,'Erwin Smith',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'fill_blank','medium','A soldado membro do esquadrão de elite de Levi, apaixonada por ele em segredo, se chama ___.','Ela morre durante o ataque do Titã Feminino ao Corpo de Reconhecimento.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Petra Ral',TRUE,0),(gen_random_uuid(),q,'Nanaba',FALSE,1),(gen_random_uuid(),q,'Rico Brzenska',FALSE,2),(gen_random_uuid(),q,'Hange Zoe',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'fill_blank','medium','O amigo próximo de Reiner, revelado como o Titã Bestial disfarçado dentro da equipe original de guerreiros, se chama ___.','Ele é revelado durante uma expedição em campo aberto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zeke Yeager',TRUE,0),(gen_random_uuid(),q,'Bertholdt Hoover',FALSE,1),(gen_random_uuid(),q,'Porco Galliard',FALSE,2),(gen_random_uuid(),q,'Colt Grice',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'fill_blank','hard','A técnica de cristalização usada por Annie para se proteger dentro de um casulo endurecido se chama ___.','Ela permanece nesse estado por anos até ser resgatada ao final da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Endurecimento',TRUE,0),(gen_random_uuid(),q,'Blindagem Titânica',FALSE,1),(gen_random_uuid(),q,'Casulo de Cristal',FALSE,2),(gen_random_uuid(),q,'Petrificação',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'fill_blank','hard','O processo pelo qual um portador de Titã transfere seu poder a outra pessoa antes de morrer se chama ___.','O tempo de vida do novo portador é drasticamente reduzido após a herança.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Herança Titânica',TRUE,0),(gen_random_uuid(),q,'Transferência de Alma',FALSE,1),(gen_random_uuid(),q,'Ritual de Sucessão',FALSE,2),(gen_random_uuid(),q,'Ciclo Eldiano',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'who_said','medium','Quem disse: "Eu vou proteger Historia até meu último suspiro, mesmo que ninguém mais entenda o motivo"?','A frase reflete o vínculo profundo dessa recruta com a futura Rainha de Paradis.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ymir',TRUE,0),(gen_random_uuid(),q,'Sasha Blouse',FALSE,1),(gen_random_uuid(),q,'Mikasa Ackerman',FALSE,2),(gen_random_uuid(),q,'Annie Leonhart',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'who_said','hard','Quem disse: "Eu sacrifiquei minha tropa inteira numa carga suicida, só para dar a Levi uma chance de capturar o Titã Bestial"?','A frase é dita pelo comandante do Corpo de Reconhecimento sobre sua decisão mais dolorosa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Erwin Smith',TRUE,0),(gen_random_uuid(),q,'Levi Ackerman',FALSE,1),(gen_random_uuid(),q,'Hange Zoe',FALSE,2),(gen_random_uuid(),q,'Dot Pixis',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'who_said','hard','Quem disse: "Eu me escondi dentro de um casulo de cristal por anos, esperando o momento certo de agir novamente"?','A frase é dita pela guerreira responsável pelo Titã Feminino, ao despertar de seu longo estado de endurecimento.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Annie Leonhart',TRUE,0),(gen_random_uuid(),q,'Pieck Finger',FALSE,1),(gen_random_uuid(),q,'Gabi Braun',FALSE,2),(gen_random_uuid(),q,'Historia Reiss',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'episode_arc','hard','Em qual saga Ymir se sacrifica para proteger Historia dos Titãs, revelando parte de seu passado como guerreira?','O evento fortalece profundamente o vínculo entre as duas personagens.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga do Titã Feminino',TRUE,0),(gen_random_uuid(),q,'Saga da Família Real',FALSE,1),(gen_random_uuid(),q,'Saga de Trost',FALSE,2),(gen_random_uuid(),q,'Saga de Marley',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','easy','Qual é o nome da irmã de Ymir entre os Guerreiros, revelada como um titã comedor de vagalumes na trama final?','Ela participa da coalizão internacional formada contra o Rumbling.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Pieck Finger',TRUE,0),(gen_random_uuid(),q,'Gabi Braun',FALSE,1),(gen_random_uuid(),q,'Annie Leonhart',FALSE,2),(gen_random_uuid(),q,'Yelena',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','easy','Qual é o nome do soldado da Guarnição responsável por soar o alarme sobre a chegada do Titã Colossal em Trost?','Sua ação alerta toda a cidade a tempo de organizar a defesa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não é nomeado explicitamente na série',TRUE,0),(gen_random_uuid(),q,'Nile Dok',FALSE,1),(gen_random_uuid(),q,'Dot Pixis',FALSE,2),(gen_random_uuid(),q,'Keith Shadis',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','medium','Qual é o nome do capitão do esquadrão especial de Levi, morto junto com Petra durante o ataque do Titã Feminino?','Ele é conhecido pela cicatriz marcante no rosto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Auruo Bossard',TRUE,0),(gen_random_uuid(),q,'Gunther Schultz',FALSE,1),(gen_random_uuid(),q,'Eld Jinn',FALSE,2),(gen_random_uuid(),q,'Mike Zacharias',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','medium','Qual é o nome do soldado com faro apuradíssimo, capaz de identificar Titãs pelo cheiro, também morto pelo Titã Feminino?','Sua habilidade sensorial é comparada à de um animal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mike Zacharias',TRUE,0),(gen_random_uuid(),q,'Auruo Bossard',FALSE,1),(gen_random_uuid(),q,'Gunther Schultz',FALSE,2),(gen_random_uuid(),q,'Nanaba',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','hard','Qual é o nome da técnica usada por Mikasa para decapitar Eren no confronto final, encerrando definitivamente o Rumbling?','O gesto é carregado de um profundo significado emocional para os dois personagens.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Golpe decisivo com lâmina Nichirin-like da Ackerman',FALSE,0),(gen_random_uuid(),q,'Corte na nuca com equipamento de manobra tridimensional',TRUE,1),(gen_random_uuid(),q,'Ataque com o poder do Titã Fundador',FALSE,2),(gen_random_uuid(),q,'Explosão de energia titânica concentrada',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','hard','Qual é o nome dado à coalizão internacional formada por diversas nações para impedir o Rumbling de Eren?','Ela reúne até antigos inimigos de Marley e Paradis em uma aliança improvável.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não é nomeada oficialmente na série',TRUE,0),(gen_random_uuid(),q,'Aliança do Mundo Livre',FALSE,1),(gen_random_uuid(),q,'Frente Unida Contra Eldia',FALSE,2),(gen_random_uuid(),q,'Coalizão de Marley',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','impossible','Qual é o nome do avô paterno de Grisha Yeager, mencionado brevemente em flashbacks sobre a vida em Liberio?','Ele nunca aparece diretamente em cena, apenas é referenciado pela história familiar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não é nomeado explicitamente na série',TRUE,0),(gen_random_uuid(),q,'Kruger',FALSE,1),(gen_random_uuid(),q,'Rod Reiss',FALSE,2),(gen_random_uuid(),q,'Uri Reiss',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'fill_blank','medium','O soldado com faro apuradíssimo, capaz de identificar Titãs pelo cheiro, morto pelo Titã Feminino, se chama ___.','Sua habilidade sensorial é comparada à de um animal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mike Zacharias',TRUE,0),(gen_random_uuid(),q,'Auruo Bossard',FALSE,1),(gen_random_uuid(),q,'Gunther Schultz',FALSE,2),(gen_random_uuid(),q,'Nanaba',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'fill_blank','hard','A irmã de Ymir entre os Guerreiros, comedora do Titã Carroça e membro da coalizão final contra o Rumbling, se chama ___.','Ela participa da aliança internacional formada contra Eren.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Pieck Finger',TRUE,0),(gen_random_uuid(),q,'Gabi Braun',FALSE,1),(gen_random_uuid(),q,'Annie Leonhart',FALSE,2),(gen_random_uuid(),q,'Yelena',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','impossible','Qual é o nome do capitão do esquadrão especial de Levi, especializado em manobras de emboscada, também morto pelo Titã Feminino?','Ele é caracterizado por ser extremamente calado e eficiente em combate.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gunther Schultz',TRUE,0),(gen_random_uuid(),q,'Auruo Bossard',FALSE,1),(gen_random_uuid(),q,'Eld Jinn',FALSE,2),(gen_random_uuid(),q,'Mike Zacharias',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_aot,'text','impossible','Qual é o nome do quarto membro do esquadrão especial de Levi, também morto durante o ataque do Titã Feminino, conhecido por sua estatura elevada?','Ele completa o grupo de elite ao lado de Petra, Auruo e Gunther.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Eld Jinn',TRUE,0),(gen_random_uuid(),q,'Gunther Schultz',FALSE,1),(gen_random_uuid(),q,'Auruo Bossard',FALSE,2),(gen_random_uuid(),q,'Mike Zacharias',FALSE,3);

END $$;
