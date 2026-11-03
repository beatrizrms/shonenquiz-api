-- ============================================================
--  V36 — Seed de perguntas: Saint Seiya (150 perguntas)
--  Fonte: MyAnimeList + cânone do anime
--  Distribuição: text 40% / fill_blank 25% / who_said 20% /
--                episode_arc 10% / chronological 5%
--  Sem repetição com V5. Regras R1-R7 aplicadas.
-- ============================================================

DO $$
DECLARE
    v_system UUID := '00000000-0000-0000-0000-000000000001';
    v_ss     UUID;
    q        UUID;
BEGIN
    SELECT id INTO v_ss FROM animes WHERE slug = 'saint-seiya' LIMIT 1;

    -- ══════════════════════════════════════════════════════════
    -- TEXT — 60 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','easy','Qual é o nome do protagonista, Cavaleiro de Bronze de Pégaso, que luta para proteger Atena?','Ele é treinado desde criança na Grécia para se tornar um guerreiro sagrado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Seiya',TRUE,0),(gen_random_uuid(),q,'Shiryu',FALSE,1),(gen_random_uuid(),q,'Hyoga',FALSE,2),(gen_random_uuid(),q,'Ikki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','easy','Qual é o nome do Cavaleiro de Bronze de Dragão, treinado nas Cinco Picos da China?','Ele é conhecido por sua defesa quase impenetrável.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shiryu',TRUE,0),(gen_random_uuid(),q,'Seiya',FALSE,1),(gen_random_uuid(),q,'Hyoga',FALSE,2),(gen_random_uuid(),q,'Ikki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','easy','Qual é o nome do Cavaleiro de Bronze de Cisne, treinado na Sibéria congelante?','Ele domina técnicas baseadas em gelo absoluto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hyoga',TRUE,0),(gen_random_uuid(),q,'Shiryu',FALSE,1),(gen_random_uuid(),q,'Seiya',FALSE,2),(gen_random_uuid(),q,'Ikki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','easy','Qual é o nome do Cavaleiro de Bronze de Fênix, irmão mais velho de Shun?','Ele possui personalidade solitária e passado trágico.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ikki',TRUE,0),(gen_random_uuid(),q,'Shun',FALSE,1),(gen_random_uuid(),q,'Seiya',FALSE,2),(gen_random_uuid(),q,'Hyoga',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','easy','Qual é o nome do Cavaleiro de Bronze de Andrômeda, irmão mais novo de Ikki?','Ele possui personalidade gentil, apesar do poder de sua corrente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shun',TRUE,0),(gen_random_uuid(),q,'Ikki',FALSE,1),(gen_random_uuid(),q,'Seiya',FALSE,2),(gen_random_uuid(),q,'Shiryu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','easy','Qual é o nome da deusa protegida pelos Cavaleiros de Bronze ao longo de toda a série?','Ela reencarna periodicamente em corpo humano para proteger a Terra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Atena',TRUE,0),(gen_random_uuid(),q,'Afrodite',FALSE,1),(gen_random_uuid(),q,'Ártemis',FALSE,2),(gen_random_uuid(),q,'Hera',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','easy','Qual é o nome humano da reencarnação de Atena, amiga de infância de Seiya?','Ela cresce sem saber inicialmente de sua verdadeira identidade divina.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saori Kido',TRUE,0),(gen_random_uuid(),q,'Shina',FALSE,1),(gen_random_uuid(),q,'Miho',FALSE,2),(gen_random_uuid(),q,'Marin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','easy','Qual é o nome do avô adotivo de Saori, magnata que financiou a criação dos Cavaleiros de Bronze?','Sua fortuna sustenta o Santuário e o treinamento dos jovens guerreiros.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mitsumasa Kido',TRUE,0),(gen_random_uuid(),q,'Shion',FALSE,1),(gen_random_uuid(),q,'Dohko',FALSE,2),(gen_random_uuid(),q,'Aioros',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','easy','Qual é o nome do local sagrado onde vivem e treinam os Cavaleiros de Atena, localizado na Grécia?','Ele abriga as Doze Casas Zodiacais que levam ao templo principal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Santuário',TRUE,0),(gen_random_uuid(),q,'Coliseu',FALSE,1),(gen_random_uuid(),q,'Templo de Atena',FALSE,2),(gen_random_uuid(),q,'Monte Olimpo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','easy','Qual é o nome dado aos guerreiros mais poderosos que protegem cada uma das Doze Casas do Santuário?','Eles são considerados os cavaleiros mais fortes servindo diretamente Atena.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cavaleiros de Ouro',TRUE,0),(gen_random_uuid(),q,'Cavaleiros de Prata',FALSE,1),(gen_random_uuid(),q,'Cavaleiros de Bronze',FALSE,2),(gen_random_uuid(),q,'Cavaleiros de Ferro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','easy','Qual é o nome da amazona mascarada que treina Seiya na Grécia antes do início do torneio galáctico?','Ela é obrigada a esconder o rosto por tradição das amazonas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Marin',TRUE,0),(gen_random_uuid(),q,'Shina',FALSE,1),(gen_random_uuid(),q,'Saori',FALSE,2),(gen_random_uuid(),q,'June',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','easy','Qual é o nome do torneio disputado no início da série para determinar quem usaria a armadura de Pégaso?','Seiya vence essa competição antes dos eventos principais da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Torneio Galáctico',TRUE,0),(gen_random_uuid(),q,'Guerra Santa',FALSE,1),(gen_random_uuid(),q,'Batalha das Doze Casas',FALSE,2),(gen_random_uuid(),q,'Torneio de Atena',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','easy','Qual é o nome do amigo de infância de Seiya e Saori, que cresce junto aos protagonistas no orfanato?','Ele nutre sentimentos por Saori ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tatsumi',FALSE,0),(gen_random_uuid(),q,'Miho',FALSE,1),(gen_random_uuid(),q,'Jabu',TRUE,2),(gen_random_uuid(),q,'Ichi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','easy','Qual é o nome do mordomo rígido que serve a família Kido e frequentemente se opõe às ações de Seiya?','Ele demonstra desconfiança constante em relação aos Cavaleiros de Bronze.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tatsumi',TRUE,0),(gen_random_uuid(),q,'Jabu',FALSE,1),(gen_random_uuid(),q,'Mitsumasa',FALSE,2),(gen_random_uuid(),q,'Dohko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','easy','Qual é o nome do golpe mais famoso de Seiya, que dispara uma sequência de socos velozes como meteoros?','Ele é usado como técnica decisiva em diversos combates.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Pegasus Ryu Sei Ken',TRUE,0),(gen_random_uuid(),q,'Rozan Sho Ryu Ha',FALSE,1),(gen_random_uuid(),q,'Diamond Dust',FALSE,2),(gen_random_uuid(),q,'Hoyoku Tensho',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','easy','Qual é o nome do golpe característico de Shiryu, inspirado em uma técnica ancestral de dragão chinesa?','Ele é aprendido durante seu treinamento nas Cinco Picos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rozan Sho Ryu Ha',TRUE,0),(gen_random_uuid(),q,'Pegasus Ryu Sei Ken',FALSE,1),(gen_random_uuid(),q,'Diamond Dust',FALSE,2),(gen_random_uuid(),q,'Hoyoku Tensho',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','easy','Qual é o nome do golpe de gelo característico de Hyoga, aprendido durante seu treinamento na Sibéria?','Ele cria um redemoinho de partículas geladas capaz de congelar adversários.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Diamond Dust',TRUE,0),(gen_random_uuid(),q,'Aurora Execution',FALSE,1),(gen_random_uuid(),q,'Rozan Sho Ryu Ha',FALSE,2),(gen_random_uuid(),q,'Hoyoku Tensho',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','easy','Qual é o nome do golpe característico de Ikki, que utiliza as asas flamejantes de sua armadura de Fênix?','Ele representa o poder de renascimento simbólico associado à Fênix.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hoyoku Tensho',TRUE,0),(gen_random_uuid(),q,'Diamond Dust',FALSE,1),(gen_random_uuid(),q,'Pegasus Ryu Sei Ken',FALSE,2),(gen_random_uuid(),q,'Nebula Chain',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','medium','Qual é o nome do Grande Mestre do Santuário que governa durante grande parte da série, revelado posteriormente como impostor?','Sua verdadeira identidade é um dos maiores segredos revelados na saga do Santuário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shion (disfarçado de Ares)',TRUE,0),(gen_random_uuid(),q,'Dohko',FALSE,1),(gen_random_uuid(),q,'Aioros',FALSE,2),(gen_random_uuid(),q,'Saga',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','medium','Qual é o nome do Cavaleiro de Ouro de Gêmeos, revelado como verdadeiro usurpador do posto de Grande Mestre?','Ele é dominado por sua própria personalidade sombria em diversos momentos da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga',TRUE,0),(gen_random_uuid(),q,'Aioros',FALSE,1),(gen_random_uuid(),q,'Shion',FALSE,2),(gen_random_uuid(),q,'Dohko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','medium','Qual é o nome do Cavaleiro de Ouro de Sagitário que salva a vida de Atena bebê, sendo perseguido injustamente como traidor?','Ele entrega a armadura dourada a um aliado antes de sua morte.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aioros',TRUE,0),(gen_random_uuid(),q,'Saga',FALSE,1),(gen_random_uuid(),q,'Shion',FALSE,2),(gen_random_uuid(),q,'Dohko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','medium','Qual é o nome do Cavaleiro de Ouro de Touro, conhecido por sua força física descomunal entre os dourados?','Ele guarda a segunda casa zodiacal do Santuário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aldebaran',TRUE,0),(gen_random_uuid(),q,'Milo',FALSE,1),(gen_random_uuid(),q,'Camus',FALSE,2),(gen_random_uuid(),q,'Shura',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','medium','Qual é o nome do Cavaleiro de Ouro de Câncer, temido por sua crueldade e técnicas envolvendo ilusões mortais?','Ele guarda a quarta casa zodiacal, conhecida por armadilhas psicológicas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mascara da Morte',TRUE,0),(gen_random_uuid(),q,'Aldebaran',FALSE,1),(gen_random_uuid(),q,'Shura',FALSE,2),(gen_random_uuid(),q,'Afrodite',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','medium','Qual é o nome do Cavaleiro de Ouro de Leão, cujo irmão mais novo é próximo de Seiya durante o Torneio Galáctico?','Ele guarda a quinta casa zodiacal do Santuário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aiolia',TRUE,0),(gen_random_uuid(),q,'Aioros',FALSE,1),(gen_random_uuid(),q,'Shaka',FALSE,2),(gen_random_uuid(),q,'Milo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','medium','Qual é o nome do Cavaleiro de Ouro de Virgem, considerado o homem mais próximo de Deus entre os dourados?','Ele guarda a sexta casa zodiacal, conhecida por sua profunda espiritualidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shaka',TRUE,0),(gen_random_uuid(),q,'Aiolia',FALSE,1),(gen_random_uuid(),q,'Milo',FALSE,2),(gen_random_uuid(),q,'Camus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','medium','Qual é o nome do Cavaleiro de Ouro de Libra, mestre de Shiryu nas Cinco Picos da China?','Ele guarda a sétima casa zodiacal e possui idade avançada devido a técnicas especiais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dohko',TRUE,0),(gen_random_uuid(),q,'Shion',FALSE,1),(gen_random_uuid(),q,'Aioros',FALSE,2),(gen_random_uuid(),q,'Saga',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','medium','Qual é o nome do Cavaleiro de Ouro de Escorpião, conhecido pela técnica da Agulha Escarlate?','Ele guarda a oitava casa zodiacal do Santuário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Milo',TRUE,0),(gen_random_uuid(),q,'Camus',FALSE,1),(gen_random_uuid(),q,'Shura',FALSE,2),(gen_random_uuid(),q,'Aiolia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','medium','Qual é o nome do Cavaleiro de Ouro de Sagitário, temido mestre de Hyoga na Sibéria congelante?','Ele guarda a décima primeira casa zodiacal, especialista em técnicas de gelo absoluto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Camus',TRUE,0),(gen_random_uuid(),q,'Milo',FALSE,1),(gen_random_uuid(),q,'Shura',FALSE,2),(gen_random_uuid(),q,'Afrodite',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','medium','Qual é o nome do Cavaleiro de Ouro de Peixes, conhecido por cultivar rosas venenosas mortais?','Ele guarda a décima segunda e última casa zodiacal do Santuário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Afrodite',TRUE,0),(gen_random_uuid(),q,'Camus',FALSE,1),(gen_random_uuid(),q,'Milo',FALSE,2),(gen_random_uuid(),q,'Shura',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','hard','Qual é o nome do Cavaleiro de Ouro de Capricórnio, responsável por um golpe capaz de cortar qualquer coisa, inclusive Excalibur?','Ele guarda a décima casa zodiacal do Santuário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shura',TRUE,0),(gen_random_uuid(),q,'Camus',FALSE,1),(gen_random_uuid(),q,'Milo',FALSE,2),(gen_random_uuid(),q,'Aiolia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','hard','Qual é o nome do deus do submundo que desperta como principal antagonista da segunda grande saga da série?','Ele busca cobrir o mundo em trevas eternas usando armadura sagrada própria.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hades',TRUE,0),(gen_random_uuid(),q,'Poseidon',FALSE,1),(gen_random_uuid(),q,'Ares',FALSE,2),(gen_random_uuid(),q,'Zeus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','hard','Qual é o nome do deus dos mares que desperta como antagonista principal da saga intermediária ambientada em seu império submarino?','Ele planeja inundar a superfície da Terra com um dilúvio total.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Poseidon',TRUE,0),(gen_random_uuid(),q,'Hades',FALSE,1),(gen_random_uuid(),q,'Ares',FALSE,2),(gen_random_uuid(),q,'Zeus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','hard','Qual é o nome dado ao selo divino que aprisiona a alma de Hades dentro de uma estátua no Santuário durante séculos?','Sua quebra desencadeia o despertar do deus do submundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Selo da Estátua de Atena',TRUE,0),(gen_random_uuid(),q,'Selo das Doze Casas',FALSE,1),(gen_random_uuid(),q,'Selo do Muro dos Lamentos',FALSE,2),(gen_random_uuid(),q,'Selo do Templo Submarino',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','hard','Qual é o nome dado aos guerreiros que servem Poseidon, identificados por marcas em forma de escamas em seus corpos?','Eles guardam os sete pilares que sustentam o templo submerso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Generais Marina',TRUE,0),(gen_random_uuid(),q,'Espectros',FALSE,1),(gen_random_uuid(),q,'Cavaleiros de Prata',FALSE,2),(gen_random_uuid(),q,'Titãs',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','hard','Qual é o nome dado aos guerreiros que servem Hades no submundo, cada um portando uma armadura de estrela celeste?','Eles são organizados em três juízes supremos e diversos soldados subordinados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Espectros',TRUE,0),(gen_random_uuid(),q,'Generais Marina',FALSE,1),(gen_random_uuid(),q,'Cavaleiros Negros',FALSE,2),(gen_random_uuid(),q,'Titãs',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','hard','Qual é o nome do jovem hospedeiro humano que serve como recipiente para a alma de Poseidon despertar no mundo dos vivos?','Ele é irmão adotivo de Saori, criado junto à família Kido.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Julian Solo',TRUE,0),(gen_random_uuid(),q,'Kanon',FALSE,1),(gen_random_uuid(),q,'Isaac',FALSE,2),(gen_random_uuid(),q,'Sorento',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','hard','Qual é o nome do irmão gêmeo de Saga, aprisionado no Cabo Sunion antes de se tornar general de Poseidon?','Sua rivalidade com o irmão remonta a décadas antes dos eventos principais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kanon',TRUE,0),(gen_random_uuid(),q,'Saga',FALSE,1),(gen_random_uuid(),q,'Julian Solo',FALSE,2),(gen_random_uuid(),q,'Isaac',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','hard','Qual é o nome do general de Poseidon que já foi companheiro de treinamento de Hyoga na Sibéria?','Seu confronto com o antigo amigo é marcado por profundo conflito emocional.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Isaac',TRUE,0),(gen_random_uuid(),q,'Kanon',FALSE,1),(gen_random_uuid(),q,'Julian Solo',FALSE,2),(gen_random_uuid(),q,'Sorento',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','impossible','Qual é o nome do general de Poseidon especialista em ataques sonoros através de uma flauta mágica?','Ele guarda um dos sete pilares do templo submerso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sorento',TRUE,0),(gen_random_uuid(),q,'Isaac',FALSE,1),(gen_random_uuid(),q,'Kanon',FALSE,2),(gen_random_uuid(),q,'Julian Solo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','impossible','Qual é o nome do primeiro dos três juízes do submundo enfrentado pelos Cavaleiros de Bronze no castelo de Hades?','Ele guarda a primeira das prisões antes do santuário final de Hades.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aiacos',TRUE,0),(gen_random_uuid(),q,'Minos',FALSE,1),(gen_random_uuid(),q,'Radamanthys',FALSE,2),(gen_random_uuid(),q,'Pandora',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','impossible','Qual é o nome do segundo dos três juízes do submundo, especialista em técnicas ilusórias de espelho?','Sua armadura é inspirada na constelação de Grifo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Minos',TRUE,0),(gen_random_uuid(),q,'Aiacos',FALSE,1),(gen_random_uuid(),q,'Radamanthys',FALSE,2),(gen_random_uuid(),q,'Pandora',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','impossible','Qual é o nome do terceiro e mais poderoso dos três juízes do submundo, portador da armadura de Wyvern?','Ele é considerado o mais forte entre os três juízes que servem Hades diretamente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Radamanthys',TRUE,0),(gen_random_uuid(),q,'Minos',FALSE,1),(gen_random_uuid(),q,'Aiacos',FALSE,2),(gen_random_uuid(),q,'Pandora',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','impossible','Qual é o nome da irmã adotiva de Hades em sua encarnação humana, responsável pela administração do castelo no submundo?','Ela demonstra lealdade absoluta ao deus que considera seu irmão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Pandora',TRUE,0),(gen_random_uuid(),q,'Minos',FALSE,1),(gen_random_uuid(),q,'Aiacos',FALSE,2),(gen_random_uuid(),q,'Radamanthys',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','impossible','Qual é o nome do jovem hospedeiro humano usado por Hades para se manifestar no mundo dos vivos?','Ele é revelado como figura próxima aos protagonistas antes de sua verdadeira natureza ser exposta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Alone',TRUE,0),(gen_random_uuid(),q,'Julian Solo',FALSE,1),(gen_random_uuid(),q,'Kanon',FALSE,2),(gen_random_uuid(),q,'Tenma',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','impossible','Qual é o nome da barreira mística que precisa ser destruída pelos Cavaleiros de Bronze antes de acessar o castelo de Hades?','Ela é composta por sete muros consecutivos, cada um guardado por um espectro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Muro dos Lamentos',TRUE,0),(gen_random_uuid(),q,'Selo das Doze Casas',FALSE,1),(gen_random_uuid(),q,'Portal do Submundo',FALSE,2),(gen_random_uuid(),q,'Barreira de Elísio',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- FILL_BLANK — 38 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'fill_blank','easy','O protagonista, Cavaleiro de Bronze de Pégaso, se chama ___.','Ele é treinado desde criança na Grécia para se tornar um guerreiro sagrado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Seiya',TRUE,0),(gen_random_uuid(),q,'Shiryu',FALSE,1),(gen_random_uuid(),q,'Hyoga',FALSE,2),(gen_random_uuid(),q,'Ikki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'fill_blank','easy','O Cavaleiro de Bronze de Dragão, treinado nas Cinco Picos da China, se chama ___.','Ele é conhecido por sua defesa quase impenetrável.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shiryu',TRUE,0),(gen_random_uuid(),q,'Seiya',FALSE,1),(gen_random_uuid(),q,'Hyoga',FALSE,2),(gen_random_uuid(),q,'Ikki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'fill_blank','easy','O Cavaleiro de Bronze de Cisne, treinado na Sibéria congelante, se chama ___.','Ele domina técnicas baseadas em gelo absoluto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hyoga',TRUE,0),(gen_random_uuid(),q,'Shiryu',FALSE,1),(gen_random_uuid(),q,'Seiya',FALSE,2),(gen_random_uuid(),q,'Ikki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'fill_blank','easy','O Cavaleiro de Bronze de Fênix, irmão mais velho de Shun, se chama ___.','Ele possui personalidade solitária e passado trágico.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ikki',TRUE,0),(gen_random_uuid(),q,'Shun',FALSE,1),(gen_random_uuid(),q,'Seiya',FALSE,2),(gen_random_uuid(),q,'Hyoga',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'fill_blank','easy','O Cavaleiro de Bronze de Andrômeda, irmão mais novo de Ikki, se chama ___.','Ele possui personalidade gentil, apesar do poder de sua corrente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shun',TRUE,0),(gen_random_uuid(),q,'Ikki',FALSE,1),(gen_random_uuid(),q,'Seiya',FALSE,2),(gen_random_uuid(),q,'Shiryu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'fill_blank','easy','A deusa protegida pelos Cavaleiros de Bronze ao longo de toda a série se chama ___.','Ela reencarna periodicamente em corpo humano para proteger a Terra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Atena',TRUE,0),(gen_random_uuid(),q,'Afrodite',FALSE,1),(gen_random_uuid(),q,'Ártemis',FALSE,2),(gen_random_uuid(),q,'Hera',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'fill_blank','easy','O nome humano da reencarnação de Atena, amiga de infância de Seiya, é ___.','Ela cresce sem saber inicialmente de sua verdadeira identidade divina.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saori Kido',TRUE,0),(gen_random_uuid(),q,'Shina',FALSE,1),(gen_random_uuid(),q,'Miho',FALSE,2),(gen_random_uuid(),q,'Marin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'fill_blank','easy','O local sagrado onde vivem e treinam os Cavaleiros de Atena, na Grécia, se chama ___.','Ele abriga as Doze Casas Zodiacais que levam ao templo principal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Santuário',TRUE,0),(gen_random_uuid(),q,'Coliseu',FALSE,1),(gen_random_uuid(),q,'Templo de Atena',FALSE,2),(gen_random_uuid(),q,'Monte Olimpo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'fill_blank','easy','Os guerreiros mais poderosos que protegem cada uma das Doze Casas do Santuário são chamados de ___.','Eles são considerados os cavaleiros mais fortes servindo diretamente Atena.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cavaleiros de Ouro',TRUE,0),(gen_random_uuid(),q,'Cavaleiros de Prata',FALSE,1),(gen_random_uuid(),q,'Cavaleiros de Bronze',FALSE,2),(gen_random_uuid(),q,'Cavaleiros de Ferro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'fill_blank','easy','O torneio disputado no início da série para determinar quem usaria a armadura de Pégaso se chama ___.','Seiya vence essa competição antes dos eventos principais da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Torneio Galáctico',TRUE,0),(gen_random_uuid(),q,'Guerra Santa',FALSE,1),(gen_random_uuid(),q,'Batalha das Doze Casas',FALSE,2),(gen_random_uuid(),q,'Torneio de Atena',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'fill_blank','medium','O Grande Mestre do Santuário durante grande parte da série, revelado como impostor, é ___.','Sua verdadeira identidade é um dos maiores segredos revelados na saga do Santuário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shion (disfarçado de Ares)',TRUE,0),(gen_random_uuid(),q,'Dohko',FALSE,1),(gen_random_uuid(),q,'Aioros',FALSE,2),(gen_random_uuid(),q,'Saga',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'fill_blank','medium','O Cavaleiro de Ouro de Gêmeos, verdadeiro usurpador do posto de Grande Mestre, se chama ___.','Ele é dominado por sua própria personalidade sombria em diversos momentos da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga',TRUE,0),(gen_random_uuid(),q,'Aioros',FALSE,1),(gen_random_uuid(),q,'Shion',FALSE,2),(gen_random_uuid(),q,'Dohko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'fill_blank','medium','O Cavaleiro de Ouro de Sagitário que salva a vida de Atena bebê se chama ___.','Ele entrega a armadura dourada a um aliado antes de sua morte.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aioros',TRUE,0),(gen_random_uuid(),q,'Saga',FALSE,1),(gen_random_uuid(),q,'Shion',FALSE,2),(gen_random_uuid(),q,'Dohko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'fill_blank','medium','O Cavaleiro de Ouro de Touro, conhecido por sua força física descomunal, se chama ___.','Ele guarda a segunda casa zodiacal do Santuário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aldebaran',TRUE,0),(gen_random_uuid(),q,'Milo',FALSE,1),(gen_random_uuid(),q,'Camus',FALSE,2),(gen_random_uuid(),q,'Shura',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'fill_blank','medium','O Cavaleiro de Ouro de Câncer, temido por técnicas envolvendo ilusões mortais, se chama ___.','Ele guarda a quarta casa zodiacal, conhecida por armadilhas psicológicas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mascara da Morte',TRUE,0),(gen_random_uuid(),q,'Aldebaran',FALSE,1),(gen_random_uuid(),q,'Shura',FALSE,2),(gen_random_uuid(),q,'Afrodite',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'fill_blank','medium','O Cavaleiro de Ouro de Leão, cujo irmão mais novo é próximo de Seiya, se chama ___.','Ele guarda a quinta casa zodiacal do Santuário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aiolia',TRUE,0),(gen_random_uuid(),q,'Aioros',FALSE,1),(gen_random_uuid(),q,'Shaka',FALSE,2),(gen_random_uuid(),q,'Milo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'fill_blank','medium','O Cavaleiro de Ouro de Virgem, considerado o homem mais próximo de Deus, se chama ___.','Ele guarda a sexta casa zodiacal, conhecida por sua profunda espiritualidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shaka',TRUE,0),(gen_random_uuid(),q,'Aiolia',FALSE,1),(gen_random_uuid(),q,'Milo',FALSE,2),(gen_random_uuid(),q,'Camus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'fill_blank','medium','O Cavaleiro de Ouro de Libra, mestre de Shiryu nas Cinco Picos da China, se chama ___.','Ele guarda a sétima casa zodiacal e possui idade avançada devido a técnicas especiais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dohko',TRUE,0),(gen_random_uuid(),q,'Shion',FALSE,1),(gen_random_uuid(),q,'Aioros',FALSE,2),(gen_random_uuid(),q,'Saga',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'fill_blank','medium','O Cavaleiro de Ouro de Escorpião, conhecido pela técnica da Agulha Escarlate, se chama ___.','Ele guarda a oitava casa zodiacal do Santuário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Milo',TRUE,0),(gen_random_uuid(),q,'Camus',FALSE,1),(gen_random_uuid(),q,'Shura',FALSE,2),(gen_random_uuid(),q,'Aiolia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'fill_blank','hard','O Cavaleiro de Ouro mestre de Hyoga na Sibéria, guardião da décima primeira casa, se chama ___.','Ele é especialista em técnicas de gelo absoluto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Camus',TRUE,0),(gen_random_uuid(),q,'Milo',FALSE,1),(gen_random_uuid(),q,'Shura',FALSE,2),(gen_random_uuid(),q,'Afrodite',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'fill_blank','hard','O Cavaleiro de Ouro de Peixes, conhecido por cultivar rosas venenosas mortais, se chama ___.','Ele guarda a décima segunda e última casa zodiacal do Santuário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Afrodite',TRUE,0),(gen_random_uuid(),q,'Camus',FALSE,1),(gen_random_uuid(),q,'Milo',FALSE,2),(gen_random_uuid(),q,'Shura',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'fill_blank','hard','O Cavaleiro de Ouro de Capricórnio, responsável por um golpe capaz de cortar qualquer coisa, se chama ___.','Ele guarda a décima casa zodiacal do Santuário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shura',TRUE,0),(gen_random_uuid(),q,'Camus',FALSE,1),(gen_random_uuid(),q,'Milo',FALSE,2),(gen_random_uuid(),q,'Aiolia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'fill_blank','hard','O deus do submundo, antagonista principal da segunda grande saga da série, se chama ___.','Ele busca cobrir o mundo em trevas eternas usando armadura sagrada própria.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hades',TRUE,0),(gen_random_uuid(),q,'Poseidon',FALSE,1),(gen_random_uuid(),q,'Ares',FALSE,2),(gen_random_uuid(),q,'Zeus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'fill_blank','hard','O deus dos mares, antagonista principal da saga ambientada em seu império submarino, se chama ___.','Ele planeja inundar a superfície da Terra com um dilúvio total.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Poseidon',TRUE,0),(gen_random_uuid(),q,'Hades',FALSE,1),(gen_random_uuid(),q,'Ares',FALSE,2),(gen_random_uuid(),q,'Zeus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'fill_blank','hard','Os guerreiros que servem Poseidon, marcados por escamas nos corpos, são chamados de ___.','Eles guardam os sete pilares que sustentam o templo submerso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Generais Marina',TRUE,0),(gen_random_uuid(),q,'Espectros',FALSE,1),(gen_random_uuid(),q,'Cavaleiros de Prata',FALSE,2),(gen_random_uuid(),q,'Titãs',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'fill_blank','hard','Os guerreiros que servem Hades no submundo, cada um portando armadura de estrela celeste, são chamados de ___.','Eles são organizados em três juízes supremos e diversos soldados subordinados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Espectros',TRUE,0),(gen_random_uuid(),q,'Generais Marina',FALSE,1),(gen_random_uuid(),q,'Cavaleiros Negros',FALSE,2),(gen_random_uuid(),q,'Titãs',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'fill_blank','impossible','O hospedeiro humano que serve como recipiente para a alma de Poseidon desperta no mundo dos vivos se chama ___.','Ele é irmão adotivo de Saori, criado junto à família Kido.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Julian Solo',TRUE,0),(gen_random_uuid(),q,'Kanon',FALSE,1),(gen_random_uuid(),q,'Isaac',FALSE,2),(gen_random_uuid(),q,'Sorento',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'fill_blank','impossible','O irmão gêmeo de Saga, aprisionado no Cabo Sunion antes de se tornar general de Poseidon, se chama ___.','Sua rivalidade com o irmão remonta a décadas antes dos eventos principais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kanon',TRUE,0),(gen_random_uuid(),q,'Saga',FALSE,1),(gen_random_uuid(),q,'Julian Solo',FALSE,2),(gen_random_uuid(),q,'Isaac',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'fill_blank','impossible','O primeiro dos três juízes do submundo enfrentado pelos Cavaleiros de Bronze no castelo de Hades se chama ___.','Ele guarda a primeira das prisões antes do santuário final de Hades.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aiacos',TRUE,0),(gen_random_uuid(),q,'Minos',FALSE,1),(gen_random_uuid(),q,'Radamanthys',FALSE,2),(gen_random_uuid(),q,'Pandora',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'fill_blank','impossible','O terceiro e mais poderoso dos três juízes do submundo, portador da armadura de Wyvern, se chama ___.','Ele é considerado o mais forte entre os três juízes que servem Hades diretamente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Radamanthys',TRUE,0),(gen_random_uuid(),q,'Minos',FALSE,1),(gen_random_uuid(),q,'Aiacos',FALSE,2),(gen_random_uuid(),q,'Pandora',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- WHO_SAID — 30 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'who_said','easy','Quem disse: "Eu vou proteger Atena com meus punhos, mesmo que isso custe minha própria vida"?','A frase reflete a determinação inabalável do protagonista principal da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Seiya',TRUE,0),(gen_random_uuid(),q,'Shiryu',FALSE,1),(gen_random_uuid(),q,'Hyoga',FALSE,2),(gen_random_uuid(),q,'Ikki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'who_said','easy','Quem disse: "Minha defesa é como uma muralha; nenhum ataque comum será capaz de me derrubar"?','A frase reflete a filosofia de combate baseada em resistência absoluta desse cavaleiro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shiryu',TRUE,0),(gen_random_uuid(),q,'Seiya',FALSE,1),(gen_random_uuid(),q,'Hyoga',FALSE,2),(gen_random_uuid(),q,'Ikki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'who_said','easy','Quem disse: "O gelo da Sibéria me ensinou que a frieza pode ser também uma forma de força"?','A frase reflete o treinamento rigoroso vivido por esse cavaleiro na Rússia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hyoga',TRUE,0),(gen_random_uuid(),q,'Shiryu',FALSE,1),(gen_random_uuid(),q,'Seiya',FALSE,2),(gen_random_uuid(),q,'Ikki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'who_said','easy','Quem disse: "Eu escolhi caminhar sozinho, mas isso não significa que deixei de amar meu irmão mais novo"?','A frase reflete o vínculo complexo entre esse cavaleiro e seu irmão mais novo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ikki',TRUE,0),(gen_random_uuid(),q,'Shun',FALSE,1),(gen_random_uuid(),q,'Seiya',FALSE,2),(gen_random_uuid(),q,'Hyoga',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'who_said','easy','Quem disse: "Minha corrente pode ser gentil ou mortal, depende de quanto eu decido usar seu verdadeiro poder"?','A frase reflete a dualidade entre gentileza e força desse cavaleiro de Andrômeda.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shun',TRUE,0),(gen_random_uuid(),q,'Ikki',FALSE,1),(gen_random_uuid(),q,'Seiya',FALSE,2),(gen_random_uuid(),q,'Shiryu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'who_said','easy','Quem disse: "Eu reencarno em corpo humano para proteger a Terra, mesmo sem lembrar completamente de quem realmente sou"?','A frase é dita pela deusa protegida pelos Cavaleiros de Bronze ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saori (Atena)',TRUE,0),(gen_random_uuid(),q,'Marin',FALSE,1),(gen_random_uuid(),q,'Shina',FALSE,2),(gen_random_uuid(),q,'June',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'who_said','easy','Quem disse: "Eu treino meus alunos escondendo meu rosto, pois é assim que as amazonas seguem sua tradição"?','A frase é dita pela mestra mascarada que treina Seiya na Grécia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Marin',TRUE,0),(gen_random_uuid(),q,'Shina',FALSE,1),(gen_random_uuid(),q,'Saori',FALSE,2),(gen_random_uuid(),q,'June',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'who_said','easy','Quem disse: "Eu desconfio dos Cavaleiros de Bronze e de suas constantes ausências injustificadas dentro da mansão"?','A frase é dita pelo mordomo rígido que serve a família Kido.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tatsumi',TRUE,0),(gen_random_uuid(),q,'Jabu',FALSE,1),(gen_random_uuid(),q,'Mitsumasa',FALSE,2),(gen_random_uuid(),q,'Dohko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'who_said','easy','Quem disse: "Eu financiei a criação dos Cavaleiros de Bronze porque acredito profundamente na missão de proteger Atena"?','A frase é dita pelo avô adotivo de Saori, magnata responsável pelo Santuário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mitsumasa Kido',TRUE,0),(gen_random_uuid(),q,'Shion',FALSE,1),(gen_random_uuid(),q,'Dohko',FALSE,2),(gen_random_uuid(),q,'Aioros',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'who_said','medium','Quem disse: "Eu governei o Santuário disfarçado por anos, escondendo minha verdadeira identidade sob a máscara de Grande Mestre"?','A frase é dita pelo verdadeiro usurpador do posto de Grande Mestre, dominado por sua personalidade sombria.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga',TRUE,0),(gen_random_uuid(),q,'Aioros',FALSE,1),(gen_random_uuid(),q,'Shion',FALSE,2),(gen_random_uuid(),q,'Dohko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'who_said','medium','Quem disse: "Eu salvei a vida de Atena bebê, mesmo sabendo que seria perseguido injustamente como traidor por isso"?','A frase é dita pelo Cavaleiro de Ouro de Sagitário antes de sua morte.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aioros',TRUE,0),(gen_random_uuid(),q,'Saga',FALSE,1),(gen_random_uuid(),q,'Shion',FALSE,2),(gen_random_uuid(),q,'Dohko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'who_said','medium','Quem disse: "Minha força física é a maior entre os Cavaleiros de Ouro, mas eu prefiro resolver conflitos com diálogo"?','A frase reflete a personalidade gentil apesar do poder físico descomunal desse guardião da segunda casa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aldebaran',TRUE,0),(gen_random_uuid(),q,'Milo',FALSE,1),(gen_random_uuid(),q,'Camus',FALSE,2),(gen_random_uuid(),q,'Shura',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'who_said','medium','Quem disse: "Eu manipulo ilusões mortais, e poucos sobrevivem para contar como escaparam da minha quarta casa"?','A frase é dita pelo temido guardião de Câncer, conhecido por sua crueldade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mascara da Morte',TRUE,0),(gen_random_uuid(),q,'Aldebaran',FALSE,1),(gen_random_uuid(),q,'Shura',FALSE,2),(gen_random_uuid(),q,'Afrodite',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'who_said','medium','Quem disse: "Meu irmão mais novo participou do Torneio Galáctico, e eu guardo a quinta casa com orgulho de sua jornada"?','A frase é dita pelo Cavaleiro de Ouro de Leão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aiolia',TRUE,0),(gen_random_uuid(),q,'Aioros',FALSE,1),(gen_random_uuid(),q,'Shaka',FALSE,2),(gen_random_uuid(),q,'Milo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'who_said','medium','Quem disse: "Sou considerado o homem mais próximo de Deus entre os dourados, e minha sexta casa reflete essa espiritualidade"?','A frase é dita pelo Cavaleiro de Ouro de Virgem.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shaka',TRUE,0),(gen_random_uuid(),q,'Aiolia',FALSE,1),(gen_random_uuid(),q,'Milo',FALSE,2),(gen_random_uuid(),q,'Camus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'who_said','medium','Quem disse: "Eu treinei Shiryu nas Cinco Picos da China, e hoje minha idade avançada esconde décadas de sabedoria acumulada"?','A frase é dita pelo Cavaleiro de Ouro de Libra, mestre de Shiryu.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dohko',TRUE,0),(gen_random_uuid(),q,'Shion',FALSE,1),(gen_random_uuid(),q,'Aioros',FALSE,2),(gen_random_uuid(),q,'Saga',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'who_said','medium','Quem disse: "Minha Agulha Escarlate atinge sete pontos vitais, e nenhum inimigo resiste ao seu efeito final"?','A frase é dita pelo Cavaleiro de Ouro de Escorpião.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Milo',TRUE,0),(gen_random_uuid(),q,'Camus',FALSE,1),(gen_random_uuid(),q,'Shura',FALSE,2),(gen_random_uuid(),q,'Aiolia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'who_said','medium','Quem disse: "Eu treinei Hyoga com dureza na Sibéria, e ainda assim ele me chama de mestre com respeito"?','A frase é dita pelo Cavaleiro de Ouro guardião da décima primeira casa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Camus',TRUE,0),(gen_random_uuid(),q,'Milo',FALSE,1),(gen_random_uuid(),q,'Shura',FALSE,2),(gen_random_uuid(),q,'Afrodite',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'who_said','hard','Quem disse: "Meu golpe corta qualquer coisa, inclusive a lendária espada Excalibur, sem exceção"?','A frase é dita pelo Cavaleiro de Ouro de Capricórnio.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shura',TRUE,0),(gen_random_uuid(),q,'Camus',FALSE,1),(gen_random_uuid(),q,'Milo',FALSE,2),(gen_random_uuid(),q,'Aiolia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'who_said','hard','Quem disse: "Eu cultivo rosas venenosas em meu jardim particular, e cada pétala carrega um veneno mortal diferente"?','A frase é dita pelo Cavaleiro de Ouro guardião da última casa zodiacal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Afrodite',TRUE,0),(gen_random_uuid(),q,'Camus',FALSE,1),(gen_random_uuid(),q,'Milo',FALSE,2),(gen_random_uuid(),q,'Shura',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'who_said','hard','Quem disse: "Eu desperto para cobrir o mundo em trevas eternas, usando a armadura sagrada que apenas um deus pode portar"?','A frase é dita pelo deus do submundo, antagonista da segunda grande saga.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hades',TRUE,0),(gen_random_uuid(),q,'Poseidon',FALSE,1),(gen_random_uuid(),q,'Ares',FALSE,2),(gen_random_uuid(),q,'Zeus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'who_said','hard','Quem disse: "Eu planejo inundar a superfície inteira da Terra, purificando-a segundo minha própria vontade divina"?','A frase é dita pelo deus dos mares, antagonista da saga submarina.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Poseidon',TRUE,0),(gen_random_uuid(),q,'Hades',FALSE,1),(gen_random_uuid(),q,'Ares',FALSE,2),(gen_random_uuid(),q,'Zeus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'who_said','hard','Quem disse: "Eu já treinei ao lado de Hyoga na Sibéria, mas hoje sirvo a Poseidon como general marinho"?','A frase é dita pelo general que enfrenta seu antigo amigo em duelo emocionalmente carregado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Isaac',TRUE,0),(gen_random_uuid(),q,'Kanon',FALSE,1),(gen_random_uuid(),q,'Julian Solo',FALSE,2),(gen_random_uuid(),q,'Sorento',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'who_said','hard','Quem disse: "Eu fui aprisionado no Cabo Sunion por décadas, e minha rivalidade com meu irmão gêmeo nunca foi resolvida completamente"?','A frase é dita pelo irmão gêmeo de Saga, futuro general de Poseidon.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kanon',TRUE,0),(gen_random_uuid(),q,'Saga',FALSE,1),(gen_random_uuid(),q,'Julian Solo',FALSE,2),(gen_random_uuid(),q,'Isaac',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'who_said','impossible','Quem disse: "Eu sou o mais forte entre os três juízes que servem Hades, e porto a armadura de Wyvern com orgulho absoluto"?','A frase é dita pelo terceiro e mais poderoso dos juízes do submundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Radamanthys',TRUE,0),(gen_random_uuid(),q,'Minos',FALSE,1),(gen_random_uuid(),q,'Aiacos',FALSE,2),(gen_random_uuid(),q,'Pandora',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'who_said','impossible','Quem disse: "Eu administro o castelo do submundo com lealdade absoluta ao deus que considero meu irmão"?','A frase é dita pela irmã adotiva de Hades em sua encarnação humana.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Pandora',TRUE,0),(gen_random_uuid(),q,'Minos',FALSE,1),(gen_random_uuid(),q,'Aiacos',FALSE,2),(gen_random_uuid(),q,'Radamanthys',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- EPISODE_ARC — 15 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'episode_arc','medium','Em qual arco os Cavaleiros de Bronze disputam o Torneio Galáctico para determinar quem usaria a armadura de Pégaso?','O arco estabelece a rivalidade inicial entre os futuros aliados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Torneio Galáctico',TRUE,0),(gen_random_uuid(),q,'Arco do Santuário',FALSE,1),(gen_random_uuid(),q,'Arco de Poseidon',FALSE,2),(gen_random_uuid(),q,'Arco de Hades',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'episode_arc','medium','Em qual arco os Cavaleiros de Bronze enfrentam os doze Cavaleiros de Ouro, subindo pelas Doze Casas do Santuário?','Este é considerado o arco mais icônico e emocionalmente intenso da série clássica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Santuário (Doze Casas)',TRUE,0),(gen_random_uuid(),q,'Arco do Torneio Galáctico',FALSE,1),(gen_random_uuid(),q,'Arco de Poseidon',FALSE,2),(gen_random_uuid(),q,'Arco de Hades',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'episode_arc','medium','Em qual arco os Cavaleiros de Bronze enfrentam os Generais Marina no templo submerso de Poseidon?','O deus dos mares planeja inundar a superfície da Terra neste confronto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Poseidon',TRUE,0),(gen_random_uuid(),q,'Arco do Santuário',FALSE,1),(gen_random_uuid(),q,'Arco do Torneio Galáctico',FALSE,2),(gen_random_uuid(),q,'Arco de Hades',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'episode_arc','medium','Em qual arco os Cavaleiros de Bronze enfrentam os Espectros de Hades, atravessando o Muro dos Lamentos rumo ao submundo?','Este arco é considerado a saga final e mais sombria da série clássica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Hades',TRUE,0),(gen_random_uuid(),q,'Arco de Poseidon',FALSE,1),(gen_random_uuid(),q,'Arco do Santuário',FALSE,2),(gen_random_uuid(),q,'Arco do Torneio Galáctico',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'episode_arc','medium','Em qual arco é revelado que Saga governava o Santuário disfarçado de Grande Mestre, tendo assassinado o verdadeiro Grande Mestre anos antes?','A revelação ocorre gradualmente conforme os Cavaleiros de Bronze avançam pelas Doze Casas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Santuário (Doze Casas)',TRUE,0),(gen_random_uuid(),q,'Arco do Torneio Galáctico',FALSE,1),(gen_random_uuid(),q,'Arco de Poseidon',FALSE,2),(gen_random_uuid(),q,'Arco de Hades',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'episode_arc','medium','Em qual arco Kanon, irmão gêmeo de Saga, é libertado do Cabo Sunion e se torna general de Poseidon?','Sua libertação ocorre por manipulação do próprio Julian Solo, hospedeiro do deus dos mares.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Poseidon',TRUE,0),(gen_random_uuid(),q,'Arco do Santuário',FALSE,1),(gen_random_uuid(),q,'Arco do Torneio Galáctico',FALSE,2),(gen_random_uuid(),q,'Arco de Hades',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'episode_arc','medium','Em qual arco Ikki enfrenta Shaka, Cavaleiro de Ouro considerado o homem mais próximo de Deus, em um duelo decisivo?','O confronto ocorre durante a ascensão pelas Doze Casas do Santuário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Santuário (Doze Casas)',TRUE,0),(gen_random_uuid(),q,'Arco do Torneio Galáctico',FALSE,1),(gen_random_uuid(),q,'Arco de Poseidon',FALSE,2),(gen_random_uuid(),q,'Arco de Hades',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'episode_arc','hard','Em qual arco é revelado que Aioros foi injustamente perseguido como traidor, apesar de ter salvado a vida de Atena bebê?','A revelação ocorre através de flashbacks durante o confronto com Saga.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Santuário (Doze Casas)',TRUE,0),(gen_random_uuid(),q,'Arco do Torneio Galáctico',FALSE,1),(gen_random_uuid(),q,'Arco de Poseidon',FALSE,2),(gen_random_uuid(),q,'Arco de Hades',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'episode_arc','hard','Em qual arco Isaac, antigo companheiro de treinamento de Hyoga, enfrenta o próprio amigo em duelo emocionalmente carregado?','O confronto ocorre nos pilares que sustentam o templo submerso de Poseidon.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Poseidon',TRUE,0),(gen_random_uuid(),q,'Arco do Santuário',FALSE,1),(gen_random_uuid(),q,'Arco do Torneio Galáctico',FALSE,2),(gen_random_uuid(),q,'Arco de Hades',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'episode_arc','hard','Em qual arco os Cavaleiros de Bronze enfrentam os três juízes do submundo antes de acessar o castelo de Hades?','Cada juiz guarda uma das prisões que antecedem o santuário final do deus.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Hades',TRUE,0),(gen_random_uuid(),q,'Arco de Poseidon',FALSE,1),(gen_random_uuid(),q,'Arco do Santuário',FALSE,2),(gen_random_uuid(),q,'Arco do Torneio Galáctico',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'episode_arc','hard','Em qual arco é revelada a verdadeira identidade de Alone como hospedeiro humano usado por Hades para se manifestar no mundo dos vivos?','A revelação altera completamente a percepção dos protagonistas sobre esse personagem próximo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Hades',TRUE,0),(gen_random_uuid(),q,'Arco de Poseidon',FALSE,1),(gen_random_uuid(),q,'Arco do Santuário',FALSE,2),(gen_random_uuid(),q,'Arco do Torneio Galáctico',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'episode_arc','hard','Em qual arco Shura, Cavaleiro de Ouro de Capricórnio, enfrenta Seiya em duelo decisivo pelas Doze Casas?','O confronto testa os limites da lealdade de Shura ao Grande Mestre disfarçado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Santuário (Doze Casas)',TRUE,0),(gen_random_uuid(),q,'Arco do Torneio Galáctico',FALSE,1),(gen_random_uuid(),q,'Arco de Poseidon',FALSE,2),(gen_random_uuid(),q,'Arco de Hades',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'episode_arc','impossible','Em qual arco é revelado o passado completo de Pandora como irmã adotiva de Hades, responsável pela administração do castelo?','A revelação ocorre através de flashbacks extensos durante o confronto final no submundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Hades',TRUE,0),(gen_random_uuid(),q,'Arco de Poseidon',FALSE,1),(gen_random_uuid(),q,'Arco do Santuário',FALSE,2),(gen_random_uuid(),q,'Arco do Torneio Galáctico',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'episode_arc','impossible','Em qual arco é revelado o passado completo de Shion como antigo Grande Mestre do Santuário, morto por Saga décadas antes dos eventos principais?','A revelação ocorre através de flashbacks durante a ascensão pelas Doze Casas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Santuário (Doze Casas)',TRUE,0),(gen_random_uuid(),q,'Arco do Torneio Galáctico',FALSE,1),(gen_random_uuid(),q,'Arco de Poseidon',FALSE,2),(gen_random_uuid(),q,'Arco de Hades',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- CHRONOLOGICAL — 7 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'chronological','hard','Ordene cronologicamente os arcos a seguir, do mais antigo ao mais recente.','Cobrem desde o Torneio Galáctico até a saga final de Hades.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Torneio Galáctico',TRUE,0),(gen_random_uuid(),q,'Santuário (Doze Casas)',FALSE,1),(gen_random_uuid(),q,'Poseidon',FALSE,2),(gen_random_uuid(),q,'Hades',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'chronological','hard','Ordene cronologicamente os seguintes eventos da jornada de Seiya, do mais antigo ao mais recente.','Cobrem desde o Torneio Galáctico até a batalha final contra Hades.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vence o Torneio Galáctico',TRUE,0),(gen_random_uuid(),q,'Enfrenta os Cavaleiros de Ouro',FALSE,1),(gen_random_uuid(),q,'Combate os Generais Marina',FALSE,2),(gen_random_uuid(),q,'Enfrenta os Espectros de Hades',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre Saga, do mais antigo ao mais recente.','Cobrem desde o assassinato do antigo Grande Mestre até sua derrota final.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Assassina o antigo Grande Mestre Shion',TRUE,0),(gen_random_uuid(),q,'Assume disfarçado o posto de Grande Mestre',FALSE,1),(gen_random_uuid(),q,'Ordena a perseguição de Aioros',FALSE,2),(gen_random_uuid(),q,'É derrotado pelos Cavaleiros de Bronze',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre Poseidon, do mais antigo ao mais recente.','Cobrem desde o despertar do deus até sua derrota no templo submerso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Desperta no corpo de Julian Solo',TRUE,0),(gen_random_uuid(),q,'Convoca os Generais Marina',FALSE,1),(gen_random_uuid(),q,'Planeja o dilúvio sobre a superfície',FALSE,2),(gen_random_uuid(),q,'É derrotado pelos Cavaleiros de Bronze',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Hades, do mais antigo ao mais recente.','Cobrem desde a quebra do selo até a batalha final no submundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'O selo da estátua de Atena se rompe',TRUE,0),(gen_random_uuid(),q,'Hades desperta no corpo de Alone',FALSE,1),(gen_random_uuid(),q,'Os Espectros invadem o Santuário',FALSE,2),(gen_random_uuid(),q,'É enfrentado no castelo do submundo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Kanon, do mais antigo ao mais recente.','Cobrem desde seu aprisionamento no Cabo Sunion até sua atuação como general de Poseidon.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'É aprisionado no Cabo Sunion por Saga',TRUE,0),(gen_random_uuid(),q,'É libertado por manipulação de Julian Solo',FALSE,1),(gen_random_uuid(),q,'Torna-se general de Poseidon',FALSE,2),(gen_random_uuid(),q,'Enfrenta os Cavaleiros de Bronze no templo submerso',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre os três juízes do submundo, do mais antigo ao mais recente.','Cobrem desde a defesa das prisões até a derrota final diante dos Cavaleiros de Bronze.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aiacos defende a primeira prisão',TRUE,0),(gen_random_uuid(),q,'Minos usa ilusões de espelho contra os invasores',FALSE,1),(gen_random_uuid(),q,'Radamanthys enfrenta os cavaleiros restantes',FALSE,2),(gen_random_uuid(),q,'Os três juízes são derrotados definitivamente',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- COMPLEMENTO — fechar 150 perguntas (15 text / 8 fill_blank / 4 who_said / 1 episode_arc)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','easy','Qual desses personagens é uma amazona mascarada que treina June, rival de Marin no desenvolvimento de cavaleiros?','Ela treina especificamente jovens cavaleiros na Ilha Andrômeda.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'June',TRUE,0),(gen_random_uuid(),q,'Marin',FALSE,1),(gen_random_uuid(),q,'Shina',FALSE,2),(gen_random_uuid(),q,'Saori',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','easy','Qual desses personagens é uma amazona rigorosa que serve diretamente ao Grande Mestre no início da série?','Ela desafia diretamente Seiya em diversos momentos iniciais da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shina',TRUE,0),(gen_random_uuid(),q,'Marin',FALSE,1),(gen_random_uuid(),q,'June',FALSE,2),(gen_random_uuid(),q,'Saori',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','easy','Qual desses personagens é a amiga de infância humana de Seiya, sem ligação com o Santuário ou poderes cósmicos?','Ela representa a vida comum que Seiya deixou para trás ao se tornar cavaleiro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Miho',TRUE,0),(gen_random_uuid(),q,'Saori',FALSE,1),(gen_random_uuid(),q,'Marin',FALSE,2),(gen_random_uuid(),q,'Shina',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','medium','Qual desses personagens enfrenta Shun em duelo utilizando técnicas de ilusão psicológica dentro da quarta casa?','Ele é o temido guardião de Câncer conhecido pela crueldade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mascara da Morte',TRUE,0),(gen_random_uuid(),q,'Aldebaran',FALSE,1),(gen_random_uuid(),q,'Shura',FALSE,2),(gen_random_uuid(),q,'Afrodite',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','medium','Qual desses personagens enfrenta Seiya na primeira casa zodiacal, guardando Áries com técnicas de teletransporte dimensional?','Ele é revelado posteriormente como aliado disfarçado dos protagonistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mu (discípulo de Shion)',TRUE,0),(gen_random_uuid(),q,'Aldebaran',FALSE,1),(gen_random_uuid(),q,'Dohko',FALSE,2),(gen_random_uuid(),q,'Shura',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','medium','Qual desses personagens guarda a terceira casa zodiacal, especialista em técnicas baseadas em geminação e ilusões espaciais?','Ele é irmão gêmeo de Kanon, ambos ligados à casa de Gêmeos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga',TRUE,0),(gen_random_uuid(),q,'Kanon',FALSE,1),(gen_random_uuid(),q,'Aioros',FALSE,2),(gen_random_uuid(),q,'Shion',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','medium','Qual desses personagens é discípulo de Shion, herdando o posto de guardião da primeira casa após anos de treinamento?','Ele demonstra lealdade absoluta a Atena desde o primeiro encontro com os Cavaleiros de Bronze.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mu',TRUE,0),(gen_random_uuid(),q,'Kiki',FALSE,1),(gen_random_uuid(),q,'Aldebaran',FALSE,2),(gen_random_uuid(),q,'Dohko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','hard','Qual desses personagens revela ter sido o verdadeiro Grande Mestre assassinado por Saga décadas antes dos eventos principais?','Sua verdadeira identidade é ocultada por grande parte da saga do Santuário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shion',TRUE,0),(gen_random_uuid(),q,'Dohko',FALSE,1),(gen_random_uuid(),q,'Aioros',FALSE,2),(gen_random_uuid(),q,'Saga',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','hard','Qual desses personagens é hospedeiro humano usado por Hades, revelado como figura próxima aos protagonistas antes da verdade ser exposta?','Sua verdadeira natureza é um dos segredos mais chocantes da saga final.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Alone',TRUE,0),(gen_random_uuid(),q,'Julian Solo',FALSE,1),(gen_random_uuid(),q,'Kanon',FALSE,2),(gen_random_uuid(),q,'Tenma',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','hard','Qual desses personagens especializa-se em ataques sonoros através de flauta mágica, servindo Poseidon como general marinho?','Ele guarda um dos sete pilares do templo submerso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sorento',TRUE,0),(gen_random_uuid(),q,'Isaac',FALSE,1),(gen_random_uuid(),q,'Kanon',FALSE,2),(gen_random_uuid(),q,'Julian Solo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','impossible','Qual desses personagens usa técnicas ilusórias de espelho como segundo juiz do submundo, portando armadura inspirada em Grifo?','Ele guarda uma das prisões que antecedem o santuário final de Hades.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Minos',TRUE,0),(gen_random_uuid(),q,'Aiacos',FALSE,1),(gen_random_uuid(),q,'Radamanthys',FALSE,2),(gen_random_uuid(),q,'Pandora',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','impossible','Qual desses personagens é aprendiz de Mu, futuro guardião da primeira casa zodiacal em gerações posteriores?','Ele acompanha Mu como discípulo direto na Ilha de Jamiel.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kiki',TRUE,0),(gen_random_uuid(),q,'Mu',FALSE,1),(gen_random_uuid(),q,'Shion',FALSE,2),(gen_random_uuid(),q,'Dohko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','impossible','Qual desses personagens é o barqueiro mitológico responsável por transportar almas através do rio Aqueronte no submundo?','Ele aparece como figura simbólica durante a travessia dos Cavaleiros de Bronze rumo ao castelo de Hades.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Caronte',TRUE,0),(gen_random_uuid(),q,'Aiacos',FALSE,1),(gen_random_uuid(),q,'Minos',FALSE,2),(gen_random_uuid(),q,'Radamanthys',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','impossible','Qual desses personagens governa o campo Elísio, destino final das almas heroicas dentro da mitologia do submundo?','Este local é mencionado como contraste ao sofrimento das demais áreas do submundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hades',TRUE,0),(gen_random_uuid(),q,'Poseidon',FALSE,1),(gen_random_uuid(),q,'Radamanthys',FALSE,2),(gen_random_uuid(),q,'Pandora',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'text','impossible','Qual desses personagens é o guardião do rio Aqueronte, figura mitológica encontrada pelos Cavaleiros de Bronze antes do castelo de Hades?','Ele exige uma prova de determinação antes de permitir a travessia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Caronte',TRUE,0),(gen_random_uuid(),q,'Aiacos',FALSE,1),(gen_random_uuid(),q,'Minos',FALSE,2),(gen_random_uuid(),q,'Radamanthys',FALSE,3);

    -- fill_blank complemento (8)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'fill_blank','easy','A amazona mascarada que treina jovens cavaleiros na Ilha Andrômeda se chama ___.','Ela treina especificamente jovens cavaleiros na Ilha Andrômeda.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'June',TRUE,0),(gen_random_uuid(),q,'Marin',FALSE,1),(gen_random_uuid(),q,'Shina',FALSE,2),(gen_random_uuid(),q,'Saori',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'fill_blank','easy','A amazona rigorosa que serve diretamente ao Grande Mestre no início da série se chama ___.','Ela desafia diretamente Seiya em diversos momentos iniciais da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shina',TRUE,0),(gen_random_uuid(),q,'Marin',FALSE,1),(gen_random_uuid(),q,'June',FALSE,2),(gen_random_uuid(),q,'Saori',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'fill_blank','medium','O Cavaleiro de Ouro que guarda a primeira casa zodiacal com técnicas de teletransporte dimensional se chama ___.','Ele é revelado como aliado dos protagonistas desde o início.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mu',TRUE,0),(gen_random_uuid(),q,'Aldebaran',FALSE,1),(gen_random_uuid(),q,'Dohko',FALSE,2),(gen_random_uuid(),q,'Shura',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'fill_blank','medium','O discípulo de Mu, futuro guardião da primeira casa zodiacal, se chama ___.','Ele acompanha Mu como aprendiz direto na Ilha de Jamiel.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kiki',TRUE,0),(gen_random_uuid(),q,'Mu',FALSE,1),(gen_random_uuid(),q,'Shion',FALSE,2),(gen_random_uuid(),q,'Dohko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'fill_blank','hard','O verdadeiro Grande Mestre assassinado por Saga décadas antes dos eventos principais se chama ___.','Sua verdadeira identidade é ocultada por grande parte da saga do Santuário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shion',TRUE,0),(gen_random_uuid(),q,'Dohko',FALSE,1),(gen_random_uuid(),q,'Aioros',FALSE,2),(gen_random_uuid(),q,'Saga',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'fill_blank','hard','O hospedeiro humano usado por Hades, revelado como figura próxima aos protagonistas, se chama ___.','Sua verdadeira natureza é um dos segredos mais chocantes da saga final.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Alone',TRUE,0),(gen_random_uuid(),q,'Julian Solo',FALSE,1),(gen_random_uuid(),q,'Kanon',FALSE,2),(gen_random_uuid(),q,'Tenma',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'fill_blank','hard','O general marinho especialista em ataques sonoros através de flauta mágica se chama ___.','Ele guarda um dos sete pilares do templo submerso de Poseidon.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sorento',TRUE,0),(gen_random_uuid(),q,'Isaac',FALSE,1),(gen_random_uuid(),q,'Kanon',FALSE,2),(gen_random_uuid(),q,'Julian Solo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'fill_blank','impossible','O segundo juiz do submundo, especialista em técnicas ilusórias de espelho, portando armadura de Grifo, se chama ___.','Ele guarda uma das prisões que antecedem o santuário final de Hades.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Minos',TRUE,0),(gen_random_uuid(),q,'Aiacos',FALSE,1),(gen_random_uuid(),q,'Radamanthys',FALSE,2),(gen_random_uuid(),q,'Pandora',FALSE,3);

    -- who_said complemento (4)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'who_said','easy','Quem disse: "Eu treino jovens cavaleiros na Ilha Andrômeda, sempre mantendo meu rosto coberto por tradição"?','A frase é dita pela amazona rival de Marin no desenvolvimento de cavaleiros.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'June',TRUE,0),(gen_random_uuid(),q,'Marin',FALSE,1),(gen_random_uuid(),q,'Shina',FALSE,2),(gen_random_uuid(),q,'Saori',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'who_said','medium','Quem disse: "Eu teleporto adversários usando técnicas dimensionais, guardando a primeira casa com lealdade absoluta a Atena"?','A frase é dita pelo discípulo de Shion, guardião de Áries.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mu',TRUE,0),(gen_random_uuid(),q,'Aldebaran',FALSE,1),(gen_random_uuid(),q,'Dohko',FALSE,2),(gen_random_uuid(),q,'Shura',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'who_said','hard','Quem disse: "Eu fui o verdadeiro Grande Mestre por séculos, até ser assassinado e substituído por Saga em segredo"?','A frase é dita, em memória, pelo antigo Grande Mestre revelado durante a saga do Santuário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shion',TRUE,0),(gen_random_uuid(),q,'Dohko',FALSE,1),(gen_random_uuid(),q,'Aioros',FALSE,2),(gen_random_uuid(),q,'Saga',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'who_said','impossible','Quem disse: "Eu transporto almas através do rio Aqueronte, testemunhando incontáveis travessias rumo ao submundo"?','A frase é dita pelo barqueiro mitológico do submundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Caronte',TRUE,0),(gen_random_uuid(),q,'Aiacos',FALSE,1),(gen_random_uuid(),q,'Minos',FALSE,2),(gen_random_uuid(),q,'Radamanthys',FALSE,3);

    -- episode_arc complemento (1)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ss,'episode_arc','medium','Em qual arco Mu, guardião de Áries, testa a determinação dos Cavaleiros de Bronze antes de permitir a passagem pela primeira casa?','Ele revela sua verdadeira lealdade a Atena durante esse confronto inicial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Santuário (Doze Casas)',TRUE,0),(gen_random_uuid(),q,'Arco do Torneio Galáctico',FALSE,1),(gen_random_uuid(),q,'Arco de Poseidon',FALSE,2),(gen_random_uuid(),q,'Arco de Hades',FALSE,3);

END $$;
