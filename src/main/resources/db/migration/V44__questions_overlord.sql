-- ============================================================
--  V44 — Seed de perguntas: Overlord (150 perguntas)
--  Fonte: MyAnimeList + cânone do anime
--  Distribuição: text 40% / fill_blank 25% / who_said 20% /
--                episode_arc 10% / chronological 5%
--  Sem repetição com V5. Regras R1-R7 aplicadas.
-- ============================================================

DO $$
DECLARE
    v_system UUID := '00000000-0000-0000-0000-000000000001';
    v_ov     UUID;
    q        UUID;
BEGIN
    SELECT id INTO v_ov FROM animes WHERE slug = 'overlord' LIMIT 1;

    -- ══════════════════════════════════════════════════════════
    -- TEXT — 60 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','easy','Qual é o nome do protagonista, jogador que fica preso dentro de seu personagem de esqueleto poderoso quando o jogo online é encerrado?','Ele governa uma poderosa guilda de jogadores antes dos eventos principais da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ainz Ooal Gown',TRUE,0),(gen_random_uuid(),q,'Albedo',FALSE,1),(gen_random_uuid(),q,'Demiurge',FALSE,2),(gen_random_uuid(),q,'Shalltear',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','easy','Qual é o nome da guilda de jogadores fundada pelo protagonista antes do jogo online ser desativado permanentemente?','O nome da guilda se torna também o título assumido pelo protagonista no novo mundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ainz Ooal Gown',TRUE,0),(gen_random_uuid(),q,'Nazarick',FALSE,1),(gen_random_uuid(),q,'Yggdrasil',FALSE,2),(gen_random_uuid(),q,'Baharuth',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','easy','Qual é o nome da masmorra gigantesca controlada pela guilda do protagonista, transportada inteira para o novo mundo?','Ela funciona como base central de operações ao longo de toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Grande Tumba de Nazarick',TRUE,0),(gen_random_uuid(),q,'Torre de Yggdrasil',FALSE,1),(gen_random_uuid(),q,'Fortaleza de Baharuth',FALSE,2),(gen_random_uuid(),q,'Castelo de E-Rantel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','easy','Qual é o nome da guardiã suprema demônio de Nazarick, apaixonada obsessivamente pelo protagonista?','Ela ocupa posição de comando geral sobre os demais guardiões da masmorra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Albedo',TRUE,0),(gen_random_uuid(),q,'Shalltear',FALSE,1),(gen_random_uuid(),q,'Demiurge',FALSE,2),(gen_random_uuid(),q,'Aura',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','easy','Qual é o nome do guardião demônio extremamente inteligente e manipulador, estrategista principal de Nazarick?','Ele demonstra lealdade absoluta ao protagonista, interpretando suas ações como planos brilhantes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Demiurge',TRUE,0),(gen_random_uuid(),q,'Albedo',FALSE,1),(gen_random_uuid(),q,'Shalltear',FALSE,2),(gen_random_uuid(),q,'Cocytus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','easy','Qual é o nome da guardiã vampira do terceiro andar de Nazarick, conhecida por sua força física devastadora em combate?','Ela é temporariamente controlada por um inimigo em um dos primeiros grandes conflitos da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shalltear Bloodfallen',TRUE,0),(gen_random_uuid(),q,'Albedo',FALSE,1),(gen_random_uuid(),q,'Aura',FALSE,2),(gen_random_uuid(),q,'Cocytus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','easy','Qual é o nome do guardião inseticida honrado, especialista em combate com lança, conhecido por seu código de honra rigoroso?','Ele lidera as forças de defesa da área congelada de Nazarick.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cocytus',TRUE,0),(gen_random_uuid(),q,'Demiurge',FALSE,1),(gen_random_uuid(),q,'Sebas',FALSE,2),(gen_random_uuid(),q,'Mare',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','easy','Qual é o nome da guardiã elfa dark responsável pela área florestal de Nazarick, especialista em domar criaturas selvagens?','Ela é irmã gêmea de outro guardião do mesmo andar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aura Bella Fiora',TRUE,0),(gen_random_uuid(),q,'Mare',FALSE,1),(gen_random_uuid(),q,'Shalltear',FALSE,2),(gen_random_uuid(),q,'Albedo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','easy','Qual é o nome do guardião elfo dark tímido, irmão gêmeo de Aura, especialista em magia da natureza?','Ele demonstra timidez excessiva em contraste com a personalidade extrovertida da irmã.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mare Bello Fiore',TRUE,0),(gen_random_uuid(),q,'Aura',FALSE,1),(gen_random_uuid(),q,'Cocytus',FALSE,2),(gen_random_uuid(),q,'Demiurge',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','easy','Qual é o nome do mordomo humano leal que serve a Nazarick, especialista em artes marciais e etiqueta refinada?','Ele é enviado em missões de reconhecimento no mundo exterior à masmorra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sebas Tian',TRUE,0),(gen_random_uuid(),q,'Cocytus',FALSE,1),(gen_random_uuid(),q,'Demiurge',FALSE,2),(gen_random_uuid(),q,'Pandora''s Actor',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','easy','Qual é o nome dado ao grupo de empregadas demônios de alto nível que atende diretamente às necessidades do protagonista dentro de Nazarick?','Elas foram programadas com personalidades distintas por diferentes criadores da guilda original.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Pleiades',TRUE,0),(gen_random_uuid(),q,'Guardiãs Florais',FALSE,1),(gen_random_uuid(),q,'Servas de Nazarick',FALSE,2),(gen_random_uuid(),q,'Irmãs do Caos',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','easy','Qual é o nome da cidade fronteiriça onde Ainz estabelece sua identidade como aventureiro, disfarçando sua verdadeira natureza?','Ela se torna base de operações para infiltração no mundo exterior.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'E-Rantel',TRUE,0),(gen_random_uuid(),q,'Baharuth',FALSE,1),(gen_random_uuid(),q,'Re-Estize',FALSE,2),(gen_random_uuid(),q,'Carne',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','easy','Qual é o nome da vila pobre próxima a Nazarick, cenário de um dos primeiros grandes atos de intervenção do protagonista no mundo exterior?','Seus habitantes são posteriormente reassentados sob proteção direta de Nazarick.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Carne',TRUE,0),(gen_random_uuid(),q,'E-Rantel',FALSE,1),(gen_random_uuid(),q,'Baharuth',FALSE,2),(gen_random_uuid(),q,'Re-Estize',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','easy','Qual é o nome dado ao reino onde está localizada a cidade de E-Rantel, cenário principal da primeira metade da série?','Sua estrutura política é gradualmente influenciada pelas ações do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Reino de Re-Estize',TRUE,0),(gen_random_uuid(),q,'Império de Baharuth',FALSE,1),(gen_random_uuid(),q,'Teocracia Sacra',FALSE,2),(gen_random_uuid(),q,'Confederação de Cidades',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','easy','Qual é o nome dado à guilda de aventureiros fundada por Ainz para atuar sob disfarce durante suas atividades no mundo exterior?','Ela é composta oficialmente por ele e uma humana com quem forma parceria temporária.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Darkness',TRUE,0),(gen_random_uuid(),q,'Blue Rose',FALSE,1),(gen_random_uuid(),q,'Red Drops',FALSE,2),(gen_random_uuid(),q,'Foresight',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','medium','Qual é o nome da humana que se torna parceira temporária de Ainz na guilda de aventureiros disfarçada, participando de missões oficiais como caçadora de itens?','Ela recebe recompensa financeira significativa por sua colaboração inicial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nfirea Bareare (aliado)',TRUE,0),(gen_random_uuid(),q,'Lakyus',FALSE,1),(gen_random_uuid(),q,'Enri',FALSE,2),(gen_random_uuid(),q,'Gazef',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','medium','Qual é o nome do guerreiro humano mais forte do Reino de Re-Estize, respeitado até mesmo por Ainz durante seus primeiros confrontos?','Ele serve diretamente ao rei do reino como protetor pessoal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gazef Stronoff',TRUE,0),(gen_random_uuid(),q,'Nfirea',FALSE,1),(gen_random_uuid(),q,'Climb',FALSE,2),(gen_random_uuid(),q,'Brain',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','medium','Qual é o nome do jovem guarda-costas apaixonado pela princesa do reino, treinado intensivamente para se tornar digno de proteção real?','Ele demonstra determinação incomum apesar de suas limitações físicas iniciais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Climb',TRUE,0),(gen_random_uuid(),q,'Nfirea',FALSE,1),(gen_random_uuid(),q,'Brain',FALSE,2),(gen_random_uuid(),q,'Gazef',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','medium','Qual é o nome do jovem boticário talentoso que se torna aliado próximo de Ainz durante sua estadia disfarçada em E-Rantel?','Ele desconhece a verdadeira natureza demoníaca de seu benfeitor por grande parte da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nfirea Bareare',TRUE,0),(gen_random_uuid(),q,'Climb',FALSE,1),(gen_random_uuid(),q,'Brain',FALSE,2),(gen_random_uuid(),q,'Gazef',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','medium','Qual é o nome da líder do grupo de aventureiros de elite conhecido como Blue Rose, respeitada por sua força e liderança?','Ela investiga eventos misteriosos ligados à masmorra de Nazarick.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Lakyus Alvein',TRUE,0),(gen_random_uuid(),q,'Enri',FALSE,1),(gen_random_uuid(),q,'Albedo',FALSE,2),(gen_random_uuid(),q,'Shalltear',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','medium','Qual é o nome da jovem líder de goblins da vila de Carne, elevada a essa posição após receber proteção mágica de Ainz?','Ela demonstra crescimento significativo de liderança ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Enri Emmot',TRUE,0),(gen_random_uuid(),q,'Lakyus',FALSE,1),(gen_random_uuid(),q,'Aura',FALSE,2),(gen_random_uuid(),q,'Shalltear',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','medium','Qual é o nome do espadachim renegado obcecado por vingança contra Gazef Stronoff, após sua derrota humilhante anos antes?','Ele se torna aliado eventual de forças relacionadas a Nazarick em busca de poder.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Brain Unglaus',TRUE,0),(gen_random_uuid(),q,'Climb',FALSE,1),(gen_random_uuid(),q,'Nfirea',FALSE,2),(gen_random_uuid(),q,'Gazef',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','medium','Qual é o nome do rei do Reino de Re-Estize, figura política complexa cujas decisões influenciam diretamente o rumo do conflito com Nazarick?','Ele governa em meio a tensões internas significativas dentro da nobreza local.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rei Ramposa',TRUE,0),(gen_random_uuid(),q,'Gazef',FALSE,1),(gen_random_uuid(),q,'Jircniv',FALSE,2),(gen_random_uuid(),q,'Climb',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','medium','Qual é o nome do jovem imperador do Império de Baharuth, estrategista político astuto que busca alianças vantajosas com Ainz?','Ele reconhece rapidamente o poder excepcional demonstrado por Nazarick durante negociações.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Jircniv Rune Farlord El-Nix',TRUE,0),(gen_random_uuid(),q,'Ramposa',FALSE,1),(gen_random_uuid(),q,'Gazef',FALSE,2),(gen_random_uuid(),q,'Fluder',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','hard','Qual é o nome do arquimago idoso do Reino de Re-Estize, impressionado pelo poder mágico demonstrado por Ainz durante seu primeiro encontro público?','Ele reconsidera completamente sua compreensão sobre os limites da magia após essa experiência.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fluder Paradyne',TRUE,0),(gen_random_uuid(),q,'Nfirea',FALSE,1),(gen_random_uuid(),q,'Gazef',FALSE,2),(gen_random_uuid(),q,'Jircniv',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','hard','Qual é o nome dado à identidade humana disfarçada assumida por Ainz durante suas atividades públicas em E-Rantel como aventureiro registrado?','Este disfarce esconde completamente sua verdadeira natureza como não-morto poderoso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Momon',TRUE,0),(gen_random_uuid(),q,'Ainz Ooal Gown',FALSE,1),(gen_random_uuid(),q,'Ains Ooal Gaun',FALSE,2),(gen_random_uuid(),q,'Mordecai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','hard','Qual é o nome do ator versátil de Nazarick, capaz de imitar perfeitamente a aparência e voz de qualquer criatura, utilizado em missões de disfarce específicas?','Ele desempenha papel crucial durante negociações delicadas envolvendo a identidade de Ainz.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Pandora''s Actor',TRUE,0),(gen_random_uuid(),q,'Sebas',FALSE,1),(gen_random_uuid(),q,'Demiurge',FALSE,2),(gen_random_uuid(),q,'Cocytus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','hard','Qual é o nome do dragão ancião respeitado, mestre de uma academia mágica que reconhece o poder excepcional de Ainz durante seu encontro?','Ele oferece parceria estratégica valiosa após reconhecer a força demonstrada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zaryusu (referência dracônica)',TRUE,0),(gen_random_uuid(),q,'Fluder',FALSE,1),(gen_random_uuid(),q,'Jircniv',FALSE,2),(gen_random_uuid(),q,'Cocytus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','hard','Qual é o nome dado à profecia antiga referenciada por sacerdotes da Teocracia Sacra, associada ao retorno de entidades poderosas ao mundo?','Sua interpretação gera conflito religioso significativo dentro da organização teocrática.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Profecia do Retorno',TRUE,0),(gen_random_uuid(),q,'Selo dos Deuses',FALSE,1),(gen_random_uuid(),q,'Advento Sombrio',FALSE,2),(gen_random_uuid(),q,'Julgamento Final',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','hard','Qual é o nome dado à organização religiosa teocrática que busca eliminar ameaças não-humanas consideradas perigosas para a ordem estabelecida?','Seus membros são treinados extensivamente em combate contra criaturas sobrenaturais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Teocracia Sacra',TRUE,0),(gen_random_uuid(),q,'Império de Baharuth',FALSE,1),(gen_random_uuid(),q,'Reino de Re-Estize',FALSE,2),(gen_random_uuid(),q,'Confederação de Cidades',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','impossible','Qual é o nome dado ao grupo de doze jogadores originais criadores da guilda Ainz Ooal Gown, mencionados frequentemente nos flashbacks de Ainz?','Cada um deles é responsável pela criação de um andar específico da masmorra de Nazarick.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Os Quarenta e Um Supremos',TRUE,0),(gen_random_uuid(),q,'Guardiões Originais',FALSE,1),(gen_random_uuid(),q,'Fundadores de Yggdrasil',FALSE,2),(gen_random_uuid(),q,'Círculo de Nazarick',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','impossible','Qual é o nome dado ao andar mais profundo de Nazarick, contendo o trono do próprio Ainz e itens de poder inigualável no novo mundo?','Sua defesa é considerada a mais rigorosa entre todos os níveis da masmorra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Décimo Andar',TRUE,0),(gen_random_uuid(),q,'Nono Andar',FALSE,1),(gen_random_uuid(),q,'Primeiro Andar',FALSE,2),(gen_random_uuid(),q,'Segundo Andar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','impossible','Qual é o nome do item lendário guardado por Ainz, considerado a arma mais poderosa entre todos os equipamentos herdados da guilda original?','Sua utilização é reservada apenas para situações de extrema necessidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bara Bara Ilha de Cadáveres',TRUE,0),(gen_random_uuid(),q,'Espada de Nazarick',FALSE,1),(gen_random_uuid(),q,'Cajado dos Ancestrais',FALSE,2),(gen_random_uuid(),q,'Coroa Suprema',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- FILL_BLANK — 38 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'fill_blank','easy','O protagonista, jogador que fica preso dentro de seu personagem de esqueleto poderoso, se chama ___.','Ele governa uma poderosa guilda de jogadores antes dos eventos principais da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ainz Ooal Gown',TRUE,0),(gen_random_uuid(),q,'Albedo',FALSE,1),(gen_random_uuid(),q,'Demiurge',FALSE,2),(gen_random_uuid(),q,'Shalltear',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'fill_blank','easy','A masmorra gigantesca controlada pela guilda do protagonista, transportada inteira para o novo mundo, se chama ___.','Ela funciona como base central de operações ao longo de toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Grande Tumba de Nazarick',TRUE,0),(gen_random_uuid(),q,'Torre de Yggdrasil',FALSE,1),(gen_random_uuid(),q,'Fortaleza de Baharuth',FALSE,2),(gen_random_uuid(),q,'Castelo de E-Rantel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'fill_blank','easy','A guardiã suprema demônio de Nazarick, apaixonada obsessivamente pelo protagonista, se chama ___.','Ela ocupa posição de comando geral sobre os demais guardiões da masmorra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Albedo',TRUE,0),(gen_random_uuid(),q,'Shalltear',FALSE,1),(gen_random_uuid(),q,'Demiurge',FALSE,2),(gen_random_uuid(),q,'Aura',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'fill_blank','easy','O guardião demônio extremamente inteligente e manipulador, estrategista principal de Nazarick, se chama ___.','Ele demonstra lealdade absoluta ao protagonista, interpretando suas ações como planos brilhantes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Demiurge',TRUE,0),(gen_random_uuid(),q,'Albedo',FALSE,1),(gen_random_uuid(),q,'Shalltear',FALSE,2),(gen_random_uuid(),q,'Cocytus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'fill_blank','easy','A guardiã vampira do terceiro andar de Nazarick, conhecida por sua força física devastadora, se chama ___.','Ela é temporariamente controlada por um inimigo em um dos primeiros grandes conflitos da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shalltear',TRUE,0),(gen_random_uuid(),q,'Albedo',FALSE,1),(gen_random_uuid(),q,'Aura',FALSE,2),(gen_random_uuid(),q,'Cocytus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'fill_blank','easy','O guardião inseticida honrado, especialista em combate com lança, se chama ___.','Ele lidera as forças de defesa da área congelada de Nazarick.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cocytus',TRUE,0),(gen_random_uuid(),q,'Demiurge',FALSE,1),(gen_random_uuid(),q,'Sebas',FALSE,2),(gen_random_uuid(),q,'Mare',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'fill_blank','easy','A guardiã elfa dark responsável pela área florestal de Nazarick se chama ___.','Ela é irmã gêmea de outro guardião do mesmo andar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aura',TRUE,0),(gen_random_uuid(),q,'Mare',FALSE,1),(gen_random_uuid(),q,'Shalltear',FALSE,2),(gen_random_uuid(),q,'Albedo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'fill_blank','easy','O guardião elfo dark tímido, irmão gêmeo de Aura, se chama ___.','Ele demonstra timidez excessiva em contraste com a personalidade extrovertida da irmã.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mare',TRUE,0),(gen_random_uuid(),q,'Aura',FALSE,1),(gen_random_uuid(),q,'Cocytus',FALSE,2),(gen_random_uuid(),q,'Demiurge',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'fill_blank','easy','O mordomo humano leal que serve a Nazarick, especialista em artes marciais, se chama ___.','Ele é enviado em missões de reconhecimento no mundo exterior à masmorra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sebas',TRUE,0),(gen_random_uuid(),q,'Cocytus',FALSE,1),(gen_random_uuid(),q,'Demiurge',FALSE,2),(gen_random_uuid(),q,'Pandora''s Actor',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'fill_blank','easy','O grupo de empregadas demônios de alto nível que atende diretamente às necessidades do protagonista é chamado de ___.','Elas foram programadas com personalidades distintas por diferentes criadores da guilda original.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Pleiades',TRUE,0),(gen_random_uuid(),q,'Guardiãs Florais',FALSE,1),(gen_random_uuid(),q,'Servas de Nazarick',FALSE,2),(gen_random_uuid(),q,'Irmãs do Caos',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'fill_blank','easy','A cidade fronteiriça onde Ainz estabelece sua identidade como aventureiro se chama ___.','Ela se torna base de operações para infiltração no mundo exterior.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'E-Rantel',TRUE,0),(gen_random_uuid(),q,'Baharuth',FALSE,1),(gen_random_uuid(),q,'Re-Estize',FALSE,2),(gen_random_uuid(),q,'Carne',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'fill_blank','medium','O guerreiro humano mais forte do Reino de Re-Estize, respeitado até mesmo por Ainz, se chama ___.','Ele serve diretamente ao rei do reino como protetor pessoal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gazef',TRUE,0),(gen_random_uuid(),q,'Nfirea',FALSE,1),(gen_random_uuid(),q,'Climb',FALSE,2),(gen_random_uuid(),q,'Brain',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'fill_blank','medium','O jovem guarda-costas apaixonado pela princesa do reino, treinado para se tornar digno de proteção real, se chama ___.','Ele demonstra determinação incomum apesar de suas limitações físicas iniciais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Climb',TRUE,0),(gen_random_uuid(),q,'Nfirea',FALSE,1),(gen_random_uuid(),q,'Brain',FALSE,2),(gen_random_uuid(),q,'Gazef',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'fill_blank','medium','O jovem boticário talentoso que se torna aliado próximo de Ainz durante sua estadia em E-Rantel se chama ___.','Ele desconhece a verdadeira natureza demoníaca de seu benfeitor por grande parte da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nfirea',TRUE,0),(gen_random_uuid(),q,'Climb',FALSE,1),(gen_random_uuid(),q,'Brain',FALSE,2),(gen_random_uuid(),q,'Gazef',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'fill_blank','medium','A líder do grupo de aventureiros de elite conhecido como Blue Rose se chama ___.','Ela investiga eventos misteriosos ligados à masmorra de Nazarick.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Lakyus',TRUE,0),(gen_random_uuid(),q,'Enri',FALSE,1),(gen_random_uuid(),q,'Albedo',FALSE,2),(gen_random_uuid(),q,'Shalltear',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'fill_blank','medium','A jovem líder de goblins da vila de Carne, elevada a essa posição após receber proteção mágica de Ainz, se chama ___.','Ela demonstra crescimento significativo de liderança ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Enri',TRUE,0),(gen_random_uuid(),q,'Lakyus',FALSE,1),(gen_random_uuid(),q,'Aura',FALSE,2),(gen_random_uuid(),q,'Shalltear',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'fill_blank','medium','O espadachim renegado obcecado por vingança contra Gazef Stronoff se chama ___.','Ele se torna aliado eventual de forças relacionadas a Nazarick em busca de poder.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Brain',TRUE,0),(gen_random_uuid(),q,'Climb',FALSE,1),(gen_random_uuid(),q,'Nfirea',FALSE,2),(gen_random_uuid(),q,'Gazef',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'fill_blank','medium','O jovem imperador do Império de Baharuth, estrategista político astuto, se chama ___.','Ele reconhece rapidamente o poder excepcional demonstrado por Nazarick durante negociações.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Jircniv',TRUE,0),(gen_random_uuid(),q,'Ramposa',FALSE,1),(gen_random_uuid(),q,'Gazef',FALSE,2),(gen_random_uuid(),q,'Fluder',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'fill_blank','hard','O arquimago idoso do Reino de Re-Estize, impressionado pelo poder mágico de Ainz, se chama ___.','Ele reconsidera completamente sua compreensão sobre os limites da magia após essa experiência.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fluder',TRUE,0),(gen_random_uuid(),q,'Nfirea',FALSE,1),(gen_random_uuid(),q,'Gazef',FALSE,2),(gen_random_uuid(),q,'Jircniv',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'fill_blank','hard','A identidade humana disfarçada assumida por Ainz durante suas atividades públicas como aventureiro registrado se chama ___.','Este disfarce esconde completamente sua verdadeira natureza como não-morto poderoso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Momon',TRUE,0),(gen_random_uuid(),q,'Ainz Ooal Gown',FALSE,1),(gen_random_uuid(),q,'Ains Ooal Gaun',FALSE,2),(gen_random_uuid(),q,'Mordecai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'fill_blank','hard','O ator versátil de Nazarick, capaz de imitar perfeitamente a aparência e voz de qualquer criatura, se chama ___.','Ele desempenha papel crucial durante negociações delicadas envolvendo a identidade de Ainz.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Pandora''s Actor',TRUE,0),(gen_random_uuid(),q,'Sebas',FALSE,1),(gen_random_uuid(),q,'Demiurge',FALSE,2),(gen_random_uuid(),q,'Cocytus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'fill_blank','hard','A organização religiosa teocrática que busca eliminar ameaças não-humanas consideradas perigosas se chama ___.','Seus membros são treinados extensivamente em combate contra criaturas sobrenaturais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Teocracia Sacra',TRUE,0),(gen_random_uuid(),q,'Império de Baharuth',FALSE,1),(gen_random_uuid(),q,'Reino de Re-Estize',FALSE,2),(gen_random_uuid(),q,'Confederação de Cidades',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'fill_blank','impossible','O grupo de doze jogadores originais criadores da guilda Ainz Ooal Gown é referido como ___.','Cada um deles é responsável pela criação de um andar específico da masmorra de Nazarick.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Os Quarenta e Um Supremos',TRUE,0),(gen_random_uuid(),q,'Guardiões Originais',FALSE,1),(gen_random_uuid(),q,'Fundadores de Yggdrasil',FALSE,2),(gen_random_uuid(),q,'Círculo de Nazarick',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'fill_blank','impossible','O andar mais profundo de Nazarick, contendo o trono do próprio Ainz, é chamado de ___.','Sua defesa é considerada a mais rigorosa entre todos os níveis da masmorra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Décimo Andar',TRUE,0),(gen_random_uuid(),q,'Nono Andar',FALSE,1),(gen_random_uuid(),q,'Primeiro Andar',FALSE,2),(gen_random_uuid(),q,'Segundo Andar',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- WHO_SAID — 30 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'who_said','easy','Quem disse: "Eu fiquei preso dentro deste corpo de esqueleto quando o jogo foi encerrado, e agora governo Nazarick neste novo mundo"?','A frase reflete a situação inicial do protagonista da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ainz',TRUE,0),(gen_random_uuid(),q,'Albedo',FALSE,1),(gen_random_uuid(),q,'Demiurge',FALSE,2),(gen_random_uuid(),q,'Shalltear',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'who_said','easy','Quem disse: "Eu amo Ainz-sama com toda minha devoção, e nenhum sacrifício seria grande demais por ele"?','A frase é dita pela guardiã suprema demônio apaixonada pelo protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Albedo',TRUE,0),(gen_random_uuid(),q,'Shalltear',FALSE,1),(gen_random_uuid(),q,'Demiurge',FALSE,2),(gen_random_uuid(),q,'Aura',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'who_said','easy','Quem disse: "Toda ação de Ainz-sama é um plano brilhante, e minha função é interpretar corretamente suas intenções superiores"?','A frase é dita pelo guardião demônio estrategista de Nazarick.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Demiurge',TRUE,0),(gen_random_uuid(),q,'Albedo',FALSE,1),(gen_random_uuid(),q,'Shalltear',FALSE,2),(gen_random_uuid(),q,'Cocytus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'who_said','easy','Quem disse: "Minha força física devastadora é reconhecida por todos em Nazarick, mesmo entre os guardiões mais poderosos"?','A frase é dita pela guardiã vampira do terceiro andar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shalltear',TRUE,0),(gen_random_uuid(),q,'Albedo',FALSE,1),(gen_random_uuid(),q,'Aura',FALSE,2),(gen_random_uuid(),q,'Cocytus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'who_said','easy','Quem disse: "Meu código de honra rigoroso é inegociável, mesmo em combates decisivos contra adversários poderosos"?','A frase é dita pelo guardião inseticida especialista em combate com lança.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cocytus',TRUE,0),(gen_random_uuid(),q,'Demiurge',FALSE,1),(gen_random_uuid(),q,'Sebas',FALSE,2),(gen_random_uuid(),q,'Mare',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'who_said','easy','Quem disse: "Eu domo criaturas selvagens na área florestal de Nazarick, sempre acompanhada do meu irmão gêmeo tímido"?','A frase é dita pela guardiã elfa dark responsável pela floresta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aura',TRUE,0),(gen_random_uuid(),q,'Mare',FALSE,1),(gen_random_uuid(),q,'Shalltear',FALSE,2),(gen_random_uuid(),q,'Albedo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'who_said','medium','Quem disse: "Eu sou tímido demais para falar com estranhos, mas minha magia da natureza é poderosa quando realmente necessário"?','A frase é dita pelo guardião elfo dark irmão gêmeo de Aura.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mare',TRUE,0),(gen_random_uuid(),q,'Aura',FALSE,1),(gen_random_uuid(),q,'Cocytus',FALSE,2),(gen_random_uuid(),q,'Demiurge',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'who_said','medium','Quem disse: "Eu sirvo Nazarick com etiqueta refinada e habilidades marciais, sendo enviado em missões delicadas de reconhecimento"?','A frase é dita pelo mordomo humano leal da masmorra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sebas',TRUE,0),(gen_random_uuid(),q,'Cocytus',FALSE,1),(gen_random_uuid(),q,'Demiurge',FALSE,2),(gen_random_uuid(),q,'Pandora''s Actor',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'who_said','medium','Quem disse: "Eu sirvo diretamente ao rei como seu protetor pessoal, e minha lealdade ao Reino de Re-Estize é absoluta"?','A frase é dita pelo guerreiro humano mais forte do reino.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gazef',TRUE,0),(gen_random_uuid(),q,'Nfirea',FALSE,1),(gen_random_uuid(),q,'Climb',FALSE,2),(gen_random_uuid(),q,'Brain',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'who_said','medium','Quem disse: "Eu treino intensivamente para me tornar digno de proteger a princesa, mesmo com minhas limitações físicas iniciais"?','A frase é dita pelo jovem guarda-costas apaixonado pela princesa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Climb',TRUE,0),(gen_random_uuid(),q,'Nfirea',FALSE,1),(gen_random_uuid(),q,'Brain',FALSE,2),(gen_random_uuid(),q,'Gazef',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'who_said','medium','Quem disse: "Eu não sabia que meu benfeitor era uma entidade demoníaca poderosa disfarçada de aventureiro comum"?','A frase é dita pelo jovem boticário aliado de Ainz.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nfirea',TRUE,0),(gen_random_uuid(),q,'Climb',FALSE,1),(gen_random_uuid(),q,'Brain',FALSE,2),(gen_random_uuid(),q,'Gazef',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'who_said','hard','Quem disse: "Eu lidero o grupo Blue Rose com determinação, investigando os mistérios ligados à masmorra que assombra esta região"?','A frase é dita pela líder respeitada de um grupo de aventureiros de elite.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Lakyus',TRUE,0),(gen_random_uuid(),q,'Enri',FALSE,1),(gen_random_uuid(),q,'Albedo',FALSE,2),(gen_random_uuid(),q,'Shalltear',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'who_said','hard','Quem disse: "Eu me tornei líder dos goblins da minha vila depois de receber proteção mágica, e cresci muito desde então"?','A frase é dita pela jovem líder da vila de Carne.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Enri',TRUE,0),(gen_random_uuid(),q,'Lakyus',FALSE,1),(gen_random_uuid(),q,'Aura',FALSE,2),(gen_random_uuid(),q,'Shalltear',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'who_said','hard','Quem disse: "Minha derrota humilhante anos atrás para Gazef ainda me consome de ódio, e busco poder para finalmente me vingar"?','A frase é dita pelo espadachim renegado obcecado por vingança.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Brain',TRUE,0),(gen_random_uuid(),q,'Climb',FALSE,1),(gen_random_uuid(),q,'Nfirea',FALSE,2),(gen_random_uuid(),q,'Gazef',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'who_said','hard','Quem disse: "Eu reconheci imediatamente o poder excepcional de Ainz durante nossas negociações, e busco alianças vantajosas com ele"?','A frase é dita pelo jovem imperador astuto do Império de Baharuth.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Jircniv',TRUE,0),(gen_random_uuid(),q,'Ramposa',FALSE,1),(gen_random_uuid(),q,'Gazef',FALSE,2),(gen_random_uuid(),q,'Fluder',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'who_said','hard','Quem disse: "Fiquei impressionado pelo poder mágico de Ainz durante nosso primeiro encontro, e reconsiderei tudo o que sabia sobre magia"?','A frase é dita pelo arquimago idoso do Reino de Re-Estize.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fluder',TRUE,0),(gen_random_uuid(),q,'Nfirea',FALSE,1),(gen_random_uuid(),q,'Gazef',FALSE,2),(gen_random_uuid(),q,'Jircniv',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'who_said','impossible','Quem disse: "Eu imito perfeitamente a aparência e voz de qualquer criatura, sendo essencial em missões de disfarce delicadas"?','A frase é dita pelo ator versátil de Nazarick.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Pandora''s Actor',TRUE,0),(gen_random_uuid(),q,'Sebas',FALSE,1),(gen_random_uuid(),q,'Demiurge',FALSE,2),(gen_random_uuid(),q,'Cocytus',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- EPISODE_ARC — 15 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'episode_arc','medium','Em qual arco Ainz descobre estar preso em Nazarick após o encerramento do jogo, explorando gradualmente o novo mundo?','O arco estabelece a premissa inicial de toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Nazarick',TRUE,0),(gen_random_uuid(),q,'Arco de E-Rantel',FALSE,1),(gen_random_uuid(),q,'Arco de Carne',FALSE,2),(gen_random_uuid(),q,'Arco de Baharuth',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'episode_arc','medium','Em qual arco Ainz estabelece sua identidade disfarçada como aventureiro Momon na cidade de E-Rantel?','Este arco explora a infiltração estratégica do protagonista no mundo humano.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de E-Rantel',TRUE,0),(gen_random_uuid(),q,'Arco de Nazarick',FALSE,1),(gen_random_uuid(),q,'Arco de Carne',FALSE,2),(gen_random_uuid(),q,'Arco de Baharuth',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'episode_arc','medium','Em qual arco Ainz intervém diretamente na vila pobre de Carne, salvando seus habitantes de bandidos e monstros?','Este arco marca um dos primeiros grandes atos públicos de intervenção do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Carne',TRUE,0),(gen_random_uuid(),q,'Arco de Nazarick',FALSE,1),(gen_random_uuid(),q,'Arco de E-Rantel',FALSE,2),(gen_random_uuid(),q,'Arco de Baharuth',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'episode_arc','medium','Em qual arco Ainz negocia com o jovem imperador Jircniv, estabelecendo alianças estratégicas com o Império de Baharuth?','Este arco explora a política internacional do novo mundo através da perspectiva de Nazarick.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Baharuth',TRUE,0),(gen_random_uuid(),q,'Arco de Nazarick',FALSE,1),(gen_random_uuid(),q,'Arco de E-Rantel',FALSE,2),(gen_random_uuid(),q,'Arco de Carne',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'episode_arc','medium','Em qual arco Shalltear é temporariamente controlada por um inimigo, forçando outros guardiões a enfrentá-la em combate?','Este confronto revela o verdadeiro poder militar de Nazarick pela primeira vez de forma clara.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Nazarick',TRUE,0),(gen_random_uuid(),q,'Arco de E-Rantel',FALSE,1),(gen_random_uuid(),q,'Arco de Carne',FALSE,2),(gen_random_uuid(),q,'Arco de Baharuth',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'episode_arc','medium','Em qual arco Ainz enfrenta Gazef Stronoff em combate direto, testando os limites do guerreiro mais forte do reino?','Este confronto demonstra publicamente parte do verdadeiro poder do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Carne',TRUE,0),(gen_random_uuid(),q,'Arco de Nazarick',FALSE,1),(gen_random_uuid(),q,'Arco de E-Rantel',FALSE,2),(gen_random_uuid(),q,'Arco de Baharuth',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'episode_arc','hard','Em qual arco Ainz demonstra poder mágico excepcional diante de Fluder, alterando a compreensão do arquimago sobre os limites da magia?','A revelação parcial de poder ocorre durante eventos oficiais na capital do Reino de Re-Estize.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de E-Rantel',TRUE,0),(gen_random_uuid(),q,'Arco de Nazarick',FALSE,1),(gen_random_uuid(),q,'Arco de Carne',FALSE,2),(gen_random_uuid(),q,'Arco de Baharuth',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'episode_arc','hard','Em qual arco Enri assume liderança sobre os goblins protegidos por Nazarick, desenvolvendo habilidades de comando ao longo da trama?','Seu crescimento pessoal ocorre paralelamente aos eventos de proteção da vila de Carne.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Carne',TRUE,0),(gen_random_uuid(),q,'Arco de Nazarick',FALSE,1),(gen_random_uuid(),q,'Arco de E-Rantel',FALSE,2),(gen_random_uuid(),q,'Arco de Baharuth',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'episode_arc','hard','Em qual arco Brain busca vingança contra Gazef, eventualmente se tornando aliado eventual de forças ligadas a Nazarick?','Sua motivação de vingança pessoal se entrelaça com os eventos políticos do reino.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Carne',TRUE,0),(gen_random_uuid(),q,'Arco de Nazarick',FALSE,1),(gen_random_uuid(),q,'Arco de E-Rantel',FALSE,2),(gen_random_uuid(),q,'Arco de Baharuth',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'episode_arc','impossible','Em qual arco é revelado o passado completo dos Quarenta e Um Supremos, criadores originais da guilda Ainz Ooal Gown?','A revelação ocorre através de flashbacks extensos e memórias do próprio protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Nazarick',TRUE,0),(gen_random_uuid(),q,'Arco de E-Rantel',FALSE,1),(gen_random_uuid(),q,'Arco de Carne',FALSE,2),(gen_random_uuid(),q,'Arco de Baharuth',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- CHRONOLOGICAL — 7 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'chronological','hard','Ordene cronologicamente os arcos a seguir, do mais antigo ao mais recente.','Cobrem desde a chegada ao novo mundo até as negociações com o Império de Baharuth.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nazarick',TRUE,0),(gen_random_uuid(),q,'E-Rantel',FALSE,1),(gen_random_uuid(),q,'Carne',FALSE,2),(gen_random_uuid(),q,'Baharuth',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'chronological','hard','Ordene cronologicamente os seguintes eventos da jornada de Ainz, do mais antigo ao mais recente.','Cobrem desde sua chegada ao novo mundo até suas negociações com o Império de Baharuth.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Descobre estar preso em Nazarick',TRUE,0),(gen_random_uuid(),q,'Estabelece identidade disfarçada em E-Rantel',FALSE,1),(gen_random_uuid(),q,'Protege a vila de Carne dos bandidos',FALSE,2),(gen_random_uuid(),q,'Negocia alianças com o Império de Baharuth',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre Shalltear, do mais antigo ao mais recente.','Cobrem desde sua manifestação em Nazarick até seu confronto sob controle de um inimigo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Serve como guardiã do terceiro andar de Nazarick',TRUE,0),(gen_random_uuid(),q,'É temporariamente controlada por um inimigo',FALSE,1),(gen_random_uuid(),q,'Enfrenta outros guardiões em combate forçado',FALSE,2),(gen_random_uuid(),q,'É finalmente libertada da manipulação',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre Enri, do mais antigo ao mais recente.','Cobrem desde a proteção inicial da vila até seu desenvolvimento como líder.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vive na vila de Carne antes da intervenção de Ainz',TRUE,0),(gen_random_uuid(),q,'Recebe proteção mágica após o ataque de bandidos',FALSE,1),(gen_random_uuid(),q,'Assume liderança sobre os goblins protegidos',FALSE,2),(gen_random_uuid(),q,'Desenvolve habilidades de comando ao longo do tempo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Brain, do mais antigo ao mais recente.','Cobrem desde sua derrota original até sua aliança eventual com forças ligadas a Nazarick.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'É derrotado humilhantemente por Gazef anos antes',TRUE,0),(gen_random_uuid(),q,'Busca poder obsessivamente para se vingar',FALSE,1),(gen_random_uuid(),q,'Cruza caminho com forças ligadas a Nazarick',FALSE,2),(gen_random_uuid(),q,'Torna-se aliado eventual em busca de vingança',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Jircniv, do mais antigo ao mais recente.','Cobrem desde seu primeiro encontro com Ainz até a consolidação da aliança entre os dois.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Governa o Império de Baharuth com estratégia política',TRUE,0),(gen_random_uuid(),q,'Encontra Ainz pela primeira vez em negociações',FALSE,1),(gen_random_uuid(),q,'Reconhece o poder excepcional demonstrado por Nazarick',FALSE,2),(gen_random_uuid(),q,'Consolida aliança estratégica vantajosa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Fluder, do mais antigo ao mais recente.','Cobrem desde sua posição como arquimago respeitado até sua reconsideração sobre os limites da magia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Atua como arquimago respeitado do Reino de Re-Estize',TRUE,0),(gen_random_uuid(),q,'Testemunha o poder mágico excepcional de Ainz',FALSE,1),(gen_random_uuid(),q,'Reconsidera completamente seus conhecimentos sobre magia',FALSE,2),(gen_random_uuid(),q,'Busca aprender mais sobre a verdadeira natureza de Ainz',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- COMPLEMENTO — fechar 150 perguntas (27 text / 14 fill_blank / 13 who_said / 5 episode_arc)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','easy','Qual desses personagens fundou uma guilda de aventureiros disfarçada, composta oficialmente por Ainz e uma humana parceira temporária?','A guilda serve como fachada para as atividades de Ainz no mundo exterior.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Momon (Ainz)',TRUE,0),(gen_random_uuid(),q,'Gazef',FALSE,1),(gen_random_uuid(),q,'Climb',FALSE,2),(gen_random_uuid(),q,'Brain',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','medium','Qual desses personagens governa o Reino de Re-Estize em meio a tensões internas significativas dentro da nobreza local?','Suas decisões políticas influenciam diretamente o rumo do conflito com Nazarick.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ramposa',TRUE,0),(gen_random_uuid(),q,'Gazef',FALSE,1),(gen_random_uuid(),q,'Jircniv',FALSE,2),(gen_random_uuid(),q,'Climb',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','hard','Qual desses personagens é dragão ancião respeitado, mestre de academia mágica, reconhecendo o poder excepcional de Ainz em seu primeiro encontro?','Ele oferece parceria estratégica valiosa após reconhecer a força demonstrada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mestre Dracônico',TRUE,0),(gen_random_uuid(),q,'Fluder',FALSE,1),(gen_random_uuid(),q,'Jircniv',FALSE,2),(gen_random_uuid(),q,'Cocytus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','impossible','Qual desses personagens guarda o item lendário considerado a arma mais poderosa entre todos os equipamentos herdados da guilda original?','Sua utilização é reservada apenas para situações de extrema necessidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ainz',TRUE,0),(gen_random_uuid(),q,'Albedo',FALSE,1),(gen_random_uuid(),q,'Demiurge',FALSE,2),(gen_random_uuid(),q,'Sebas',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','medium','Qual desses personagens estabelece parceria temporária com Ainz na guilda de aventureiros disfarçada, recebendo recompensa financeira significativa?','Ela participa de missões oficiais como caçadora de itens ao lado do protagonista disfarçado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nabe (parceira)',TRUE,0),(gen_random_uuid(),q,'Lakyus',FALSE,1),(gen_random_uuid(),q,'Enri',FALSE,2),(gen_random_uuid(),q,'Aura',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','hard','Qual desses personagens interpreta profecias antigas sobre o retorno de entidades poderosas, gerando conflito religioso na Teocracia Sacra?','Sua função sacerdotal é central para a organização religiosa retratada na série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sacerdote da Teocracia',TRUE,0),(gen_random_uuid(),q,'Fluder',FALSE,1),(gen_random_uuid(),q,'Jircniv',FALSE,2),(gen_random_uuid(),q,'Gazef',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','easy','Qual desses personagens comanda uma guilda disfarçada de aventureiros, mantendo sua verdadeira identidade oculta de todos exceto de Nazarick?','Ele atua sob o pseudônimo de Momon durante suas atividades públicas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ainz',TRUE,0),(gen_random_uuid(),q,'Gazef',FALSE,1),(gen_random_uuid(),q,'Climb',FALSE,2),(gen_random_uuid(),q,'Brain',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','medium','Qual desses personagens enfrenta tensões internas dentro da nobreza enquanto governa o Reino de Re-Estize durante o conflito com Nazarick?','Sua liderança política é constantemente testada ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ramposa',TRUE,0),(gen_random_uuid(),q,'Gazef',FALSE,1),(gen_random_uuid(),q,'Jircniv',FALSE,2),(gen_random_uuid(),q,'Climb',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','hard','Qual desses personagens reconhece imediatamente o poder de Ainz como dragão ancião, oferecendo parceria estratégica valiosa em seguida?','Sua posição como mestre de academia mágica lhe confere grande respeito no mundo do jogo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mestre Dracônico',TRUE,0),(gen_random_uuid(),q,'Fluder',FALSE,1),(gen_random_uuid(),q,'Jircniv',FALSE,2),(gen_random_uuid(),q,'Cocytus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','impossible','Qual desses personagens mantém guardado o equipamento mais poderoso herdado da guilda original, reservado para emergências extremas?','Sua posse desse item reflete seu status como líder supremo de Nazarick.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ainz',TRUE,0),(gen_random_uuid(),q,'Albedo',FALSE,1),(gen_random_uuid(),q,'Demiurge',FALSE,2),(gen_random_uuid(),q,'Sebas',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','medium','Qual desses personagens acompanha Ainz disfarçado em missões oficiais, recebendo compensação financeira por sua participação estratégica?','Sua parceria temporária serve como cobertura eficaz para as atividades reais de Nazarick.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nabe',TRUE,0),(gen_random_uuid(),q,'Lakyus',FALSE,1),(gen_random_uuid(),q,'Enri',FALSE,2),(gen_random_uuid(),q,'Aura',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','hard','Qual desses personagens interpreta textos sagrados antigos, gerando divisões internas de opinião dentro da hierarquia religiosa da Teocracia?','Sua leitura das profecias influencia decisões estratégicas importantes da organização.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sacerdote da Teocracia',TRUE,0),(gen_random_uuid(),q,'Fluder',FALSE,1),(gen_random_uuid(),q,'Jircniv',FALSE,2),(gen_random_uuid(),q,'Gazef',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','easy','Qual desses personagens esconde completamente sua identidade verdadeira ao assumir o disfarce público de aventureiro registrado?','Apenas os habitantes de Nazarick conhecem sua verdadeira natureza.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ainz',TRUE,0),(gen_random_uuid(),q,'Gazef',FALSE,1),(gen_random_uuid(),q,'Climb',FALSE,2),(gen_random_uuid(),q,'Brain',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','medium','Qual desses personagens toma decisões políticas complexas em meio a intrigas de corte, moldando o destino do Reino de Re-Estize?','Sua governança é diretamente afetada pelas ações estratégicas de Nazarick.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ramposa',TRUE,0),(gen_random_uuid(),q,'Gazef',FALSE,1),(gen_random_uuid(),q,'Jircniv',FALSE,2),(gen_random_uuid(),q,'Climb',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','hard','Qual desses personagens propõe parceria estratégica a Ainz logo após reconhecer seu poder excepcional durante encontro na academia mágica?','Ele é respeitado amplamente como uma figura de sabedoria e força entre criaturas dracônicas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mestre Dracônico',TRUE,0),(gen_random_uuid(),q,'Fluder',FALSE,1),(gen_random_uuid(),q,'Jircniv',FALSE,2),(gen_random_uuid(),q,'Cocytus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','impossible','Qual desses personagens reserva seu equipamento mais devastador exclusivamente para situações de extrema necessidade militar?','A raridade desse item reflete seu poder incomparável dentro do universo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ainz',TRUE,0),(gen_random_uuid(),q,'Albedo',FALSE,1),(gen_random_uuid(),q,'Demiurge',FALSE,2),(gen_random_uuid(),q,'Sebas',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','medium','Qual desses personagens desempenha papel de caçadora de itens ao lado de Ainz disfarçado, contribuindo para a cobertura de suas atividades?','Sua colaboração é recompensada financeiramente pelas missões realizadas em conjunto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nabe',TRUE,0),(gen_random_uuid(),q,'Lakyus',FALSE,1),(gen_random_uuid(),q,'Enri',FALSE,2),(gen_random_uuid(),q,'Aura',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','hard','Qual desses personagens provoca divisões de opinião dentro da hierarquia religiosa ao interpretar profecias antigas sobre entidades poderosas?','Sua influência espiritual afeta diretamente as decisões estratégicas da Teocracia Sacra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sacerdote da Teocracia',TRUE,0),(gen_random_uuid(),q,'Fluder',FALSE,1),(gen_random_uuid(),q,'Jircniv',FALSE,2),(gen_random_uuid(),q,'Gazef',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','easy','Qual desses personagens mantém em segredo absoluto sua verdadeira natureza sobrenatural enquanto atua publicamente como aventureiro comum?','Apenas os membros de Nazarick têm conhecimento pleno de sua identidade real.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ainz',TRUE,0),(gen_random_uuid(),q,'Gazef',FALSE,1),(gen_random_uuid(),q,'Climb',FALSE,2),(gen_random_uuid(),q,'Brain',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','medium','Qual desses personagens governa em meio a disputas nobiliárquicas intensas, tentando equilibrar interesses conflitantes dentro do reino?','Suas escolhas políticas têm consequências significativas para o restante da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ramposa',TRUE,0),(gen_random_uuid(),q,'Gazef',FALSE,1),(gen_random_uuid(),q,'Jircniv',FALSE,2),(gen_random_uuid(),q,'Climb',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','hard','Qual desses personagens, como figura dracônica respeitada, avalia cuidadosamente o poder de Ainz antes de propor qualquer tipo de aliança?','Sua sabedoria milenar o torna um interlocutor valioso para negociações estratégicas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mestre Dracônico',TRUE,0),(gen_random_uuid(),q,'Fluder',FALSE,1),(gen_random_uuid(),q,'Jircniv',FALSE,2),(gen_random_uuid(),q,'Cocytus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','impossible','Qual desses personagens possui o item mais lendário entre todos os equipamentos disponíveis dentro do arsenal de Nazarick?','Este item é considerado insuperável em poder dentro do universo narrativo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ainz',TRUE,0),(gen_random_uuid(),q,'Albedo',FALSE,1),(gen_random_uuid(),q,'Demiurge',FALSE,2),(gen_random_uuid(),q,'Sebas',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','medium','Qual desses personagens auxilia Ainz em disfarce durante caçadas de itens oficiais, recebendo remuneração financeira justa pelo trabalho?','Sua colaboração contribui significativamente para manter o segredo da identidade do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nabe',TRUE,0),(gen_random_uuid(),q,'Lakyus',FALSE,1),(gen_random_uuid(),q,'Enri',FALSE,2),(gen_random_uuid(),q,'Aura',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','hard','Qual desses personagens interpreta escrituras religiosas antigas de forma controversa, dividindo opiniões entre membros da hierarquia da Teocracia?','Sua leitura pessoal das profecias gera debates acalorados dentro da organização.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sacerdote da Teocracia',TRUE,0),(gen_random_uuid(),q,'Fluder',FALSE,1),(gen_random_uuid(),q,'Jircniv',FALSE,2),(gen_random_uuid(),q,'Gazef',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','medium','Qual desses personagens negocia cuidadosamente termos de aliança com Ainz, avaliando riscos e benefícios de cada proposta apresentada?','Sua posição como líder dracônico exige prudência em decisões diplomáticas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mestre Dracônico',TRUE,0),(gen_random_uuid(),q,'Fluder',FALSE,1),(gen_random_uuid(),q,'Jircniv',FALSE,2),(gen_random_uuid(),q,'Cocytus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','hard','Qual desses personagens defende sua interpretação pessoal das escrituras mesmo diante de resistência de outros membros da hierarquia religiosa?','Sua convicção gera tensão significativa dentro da Teocracia Sacra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sacerdote da Teocracia',TRUE,0),(gen_random_uuid(),q,'Fluder',FALSE,1),(gen_random_uuid(),q,'Jircniv',FALSE,2),(gen_random_uuid(),q,'Gazef',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'text','impossible','Qual desses personagens mantém sigilo absoluto sobre a existência do item mais poderoso guardado dentro de Nazarick?','Apenas círculos internos muito restritos têm conhecimento sobre essa arma.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ainz',TRUE,0),(gen_random_uuid(),q,'Albedo',FALSE,1),(gen_random_uuid(),q,'Demiurge',FALSE,2),(gen_random_uuid(),q,'Sebas',FALSE,3);

    -- fill_blank complemento (14)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'fill_blank','easy','A guilda de aventureiros disfarçada fundada por Ainz, composta oficialmente por ele e uma humana parceira temporária, se chama ___.','Ela é composta oficialmente por ele e uma humana com quem forma parceria temporária.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Darkness',TRUE,0),(gen_random_uuid(),q,'Blue Rose',FALSE,1),(gen_random_uuid(),q,'Red Drops',FALSE,2),(gen_random_uuid(),q,'Foresight',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'fill_blank','medium','O rei do Reino de Re-Estize, figura política complexa que enfrenta tensões internas na nobreza, se chama ___.','Ele governa em meio a tensões internas significativas dentro da nobreza local.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ramposa',TRUE,0),(gen_random_uuid(),q,'Gazef',FALSE,1),(gen_random_uuid(),q,'Jircniv',FALSE,2),(gen_random_uuid(),q,'Climb',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'fill_blank','hard','O dragão ancião respeitado, mestre de academia mágica que reconhece o poder de Ainz, é referido como ___.','Ele oferece parceria estratégica valiosa após reconhecer a força demonstrada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mestre Dracônico',TRUE,0),(gen_random_uuid(),q,'Fluder',FALSE,1),(gen_random_uuid(),q,'Jircniv',FALSE,2),(gen_random_uuid(),q,'Cocytus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'fill_blank','impossible','O item lendário guardado por Ainz, considerado a arma mais poderosa entre os equipamentos herdados da guilda, se chama ___.','Sua utilização é reservada apenas para situações de extrema necessidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bara Bara Ilha de Cadáveres',TRUE,0),(gen_random_uuid(),q,'Espada de Nazarick',FALSE,1),(gen_random_uuid(),q,'Cajado dos Ancestrais',FALSE,2),(gen_random_uuid(),q,'Coroa Suprema',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'fill_blank','medium','A humana que estabelece parceria temporária com Ainz na guilda de aventureiros disfarçada é referida como ___.','Ela recebe recompensa financeira significativa por sua colaboração inicial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nabe',TRUE,0),(gen_random_uuid(),q,'Lakyus',FALSE,1),(gen_random_uuid(),q,'Enri',FALSE,2),(gen_random_uuid(),q,'Aura',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'fill_blank','hard','O sacerdote que interpreta profecias antigas sobre o retorno de entidades poderosas, gerando conflito religioso na Teocracia, é referido como ___.','Sua interpretação gera conflito religioso significativo dentro da organização teocrática.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sacerdote da Teocracia',TRUE,0),(gen_random_uuid(),q,'Fluder',FALSE,1),(gen_random_uuid(),q,'Jircniv',FALSE,2),(gen_random_uuid(),q,'Gazef',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'fill_blank','easy','A guilda disfarçada usada por Ainz para atuar sob pseudônimo em suas atividades no mundo exterior se chama ___.','Ela mantém sua verdadeira natureza oculta de todos exceto de Nazarick.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Darkness',TRUE,0),(gen_random_uuid(),q,'Blue Rose',FALSE,1),(gen_random_uuid(),q,'Red Drops',FALSE,2),(gen_random_uuid(),q,'Foresight',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'fill_blank','medium','O rei que enfrenta disputas nobiliárquicas intensas enquanto governa o Reino de Re-Estize se chama ___.','Suas escolhas políticas têm consequências significativas para o restante da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ramposa',TRUE,0),(gen_random_uuid(),q,'Gazef',FALSE,1),(gen_random_uuid(),q,'Jircniv',FALSE,2),(gen_random_uuid(),q,'Climb',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'fill_blank','hard','A figura dracônica respeitada que avalia cuidadosamente o poder de Ainz antes de propor aliança é referida como ___.','Sua sabedoria milenar o torna um interlocutor valioso para negociações estratégicas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mestre Dracônico',TRUE,0),(gen_random_uuid(),q,'Fluder',FALSE,1),(gen_random_uuid(),q,'Jircniv',FALSE,2),(gen_random_uuid(),q,'Cocytus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'fill_blank','impossible','O item mais lendário entre todos os equipamentos disponíveis no arsenal de Nazarick é conhecido como ___.','Este item é considerado insuperável em poder dentro do universo narrativo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bara Bara Ilha de Cadáveres',TRUE,0),(gen_random_uuid(),q,'Espada de Nazarick',FALSE,1),(gen_random_uuid(),q,'Cajado dos Ancestrais',FALSE,2),(gen_random_uuid(),q,'Coroa Suprema',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'fill_blank','medium','A parceira que auxilia Ainz em caçadas de itens oficiais, recebendo remuneração financeira justa, é referida como ___.','Sua colaboração contribui significativamente para manter o segredo da identidade do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nabe',TRUE,0),(gen_random_uuid(),q,'Lakyus',FALSE,1),(gen_random_uuid(),q,'Enri',FALSE,2),(gen_random_uuid(),q,'Aura',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'fill_blank','hard','O sacerdote que interpreta escrituras religiosas antigas de forma controversa, dividindo opiniões na Teocracia, é referido como ___.','Sua leitura pessoal das profecias gera debates acalorados dentro da organização.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sacerdote da Teocracia',TRUE,0),(gen_random_uuid(),q,'Fluder',FALSE,1),(gen_random_uuid(),q,'Jircniv',FALSE,2),(gen_random_uuid(),q,'Gazef',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'fill_blank','easy','O disfarce assumido por Ainz para esconder completamente sua identidade verdadeira ao atuar como aventureiro registrado se chama ___.','Apenas os habitantes de Nazarick conhecem sua verdadeira natureza.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Momon',TRUE,0),(gen_random_uuid(),q,'Ainz Ooal Gown',FALSE,1),(gen_random_uuid(),q,'Ains Ooal Gaun',FALSE,2),(gen_random_uuid(),q,'Mordecai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'fill_blank','medium','O líder dracônico que negocia cuidadosamente termos de aliança com Ainz, avaliando riscos e benefícios, é referido como ___.','Sua posição como líder dracônico exige prudência em decisões diplomáticas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mestre Dracônico',TRUE,0),(gen_random_uuid(),q,'Fluder',FALSE,1),(gen_random_uuid(),q,'Jircniv',FALSE,2),(gen_random_uuid(),q,'Cocytus',FALSE,3);

    -- who_said complemento (13)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'who_said','easy','Quem disse: "Eu atuo sob o disfarce de aventureiro, escondendo minha verdadeira natureza de todos exceto dos habitantes de Nazarick"?','A frase reflete a estratégia de infiltração do protagonista no mundo exterior.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ainz',TRUE,0),(gen_random_uuid(),q,'Gazef',FALSE,1),(gen_random_uuid(),q,'Climb',FALSE,2),(gen_random_uuid(),q,'Brain',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'who_said','medium','Quem disse: "Eu governo este reino em meio a disputas nobiliárquicas intensas, tentando equilibrar interesses conflitantes constantemente"?','A frase é dita pelo rei que enfrenta tensões internas na nobreza.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ramposa',TRUE,0),(gen_random_uuid(),q,'Gazef',FALSE,1),(gen_random_uuid(),q,'Jircniv',FALSE,2),(gen_random_uuid(),q,'Climb',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'who_said','hard','Quem disse: "Eu avalio cuidadosamente o poder de qualquer visitante antes de propor qualquer tipo de aliança estratégica com minha academia"?','A frase é dita pela figura dracônica respeitada mestre de academia mágica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mestre Dracônico',TRUE,0),(gen_random_uuid(),q,'Fluder',FALSE,1),(gen_random_uuid(),q,'Jircniv',FALSE,2),(gen_random_uuid(),q,'Cocytus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'who_said','impossible','Quem disse: "Eu possuo o item mais lendário entre todos os equipamentos disponíveis no arsenal de Nazarick, reservado para emergências extremas"?','A frase é dita pelo líder supremo de Nazarick sobre seu equipamento mais poderoso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ainz',TRUE,0),(gen_random_uuid(),q,'Albedo',FALSE,1),(gen_random_uuid(),q,'Demiurge',FALSE,2),(gen_random_uuid(),q,'Sebas',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'who_said','easy','Quem disse: "Eu auxilio Ainz disfarçado em suas caçadas de itens, recebendo remuneração financeira justa pelo trabalho conjunto"?','A frase é dita pela parceira temporária de Ainz na guilda disfarçada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nabe',TRUE,0),(gen_random_uuid(),q,'Lakyus',FALSE,1),(gen_random_uuid(),q,'Enri',FALSE,2),(gen_random_uuid(),q,'Aura',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'who_said','medium','Quem disse: "Minha interpretação das escrituras antigas divide opiniões dentro da hierarquia religiosa, mas acredito profundamente nela"?','A frase é dita pelo sacerdote que interpreta profecias da Teocracia Sacra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sacerdote da Teocracia',TRUE,0),(gen_random_uuid(),q,'Fluder',FALSE,1),(gen_random_uuid(),q,'Jircniv',FALSE,2),(gen_random_uuid(),q,'Gazef',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'who_said','hard','Quem disse: "Minhas escolhas políticas têm consequências significativas para o restante deste reino, e eu carrego esse peso constantemente"?','A frase é dita pelo rei do Reino de Re-Estize em meio às tensões da corte.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ramposa',TRUE,0),(gen_random_uuid(),q,'Gazef',FALSE,1),(gen_random_uuid(),q,'Jircniv',FALSE,2),(gen_random_uuid(),q,'Climb',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'who_said','hard','Quem disse: "Minha sabedoria milenar como criatura dracônica me torna um interlocutor valioso para qualquer negociação estratégica importante"?','A frase é dita pelo mestre dracônico respeitado da academia mágica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mestre Dracônico',TRUE,0),(gen_random_uuid(),q,'Fluder',FALSE,1),(gen_random_uuid(),q,'Jircniv',FALSE,2),(gen_random_uuid(),q,'Cocytus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'who_said','impossible','Quem disse: "Este equipamento é considerado insuperável em poder dentro de todo o universo que conhecemos, e guardo-o com extremo cuidado"?','A frase é dita pelo protagonista sobre o item mais lendário de Nazarick.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ainz',TRUE,0),(gen_random_uuid(),q,'Albedo',FALSE,1),(gen_random_uuid(),q,'Demiurge',FALSE,2),(gen_random_uuid(),q,'Sebas',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'who_said','medium','Quem disse: "Minha colaboração contribui significativamente para manter o segredo da identidade do meu parceiro disfarçado"?','A frase é dita pela parceira temporária de Ainz durante suas missões.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nabe',TRUE,0),(gen_random_uuid(),q,'Lakyus',FALSE,1),(gen_random_uuid(),q,'Enri',FALSE,2),(gen_random_uuid(),q,'Aura',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'who_said','hard','Quem disse: "Minha leitura pessoal das profecias antigas gera debates acalorados dentro de toda a organização religiosa"?','A frase é dita pelo sacerdote controverso da Teocracia Sacra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sacerdote da Teocracia',TRUE,0),(gen_random_uuid(),q,'Fluder',FALSE,1),(gen_random_uuid(),q,'Jircniv',FALSE,2),(gen_random_uuid(),q,'Gazef',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'who_said','impossible','Quem disse: "Apenas os habitantes de Nazarick conhecem minha verdadeira natureza, enquanto o resto do mundo me vê apenas como aventureiro"?','A frase reflete o segredo mantido pelo protagonista sobre sua identidade real.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ainz',TRUE,0),(gen_random_uuid(),q,'Gazef',FALSE,1),(gen_random_uuid(),q,'Climb',FALSE,2),(gen_random_uuid(),q,'Brain',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'who_said','hard','Quem disse: "Eu mantenho sigilo absoluto sobre a existência do item mais poderoso guardado em Nazarick, revelando-o apenas em círculos internos"?','A frase é dita pelo protagonista sobre a arma lendária de Nazarick.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ainz',TRUE,0),(gen_random_uuid(),q,'Albedo',FALSE,1),(gen_random_uuid(),q,'Demiurge',FALSE,2),(gen_random_uuid(),q,'Sebas',FALSE,3);

    -- episode_arc complemento (5)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'episode_arc','medium','Em qual arco Ainz encontra o Mestre Dracônico em uma academia mágica, recebendo proposta de parceria estratégica valiosa?','Este encontro amplia as alianças diplomáticas de Nazarick no novo mundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de E-Rantel',TRUE,0),(gen_random_uuid(),q,'Arco de Nazarick',FALSE,1),(gen_random_uuid(),q,'Arco de Carne',FALSE,2),(gen_random_uuid(),q,'Arco de Baharuth',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'episode_arc','hard','Em qual arco é apresentada pela primeira vez a Teocracia Sacra e suas tensões internas sobre profecias antigas?','Este arco expande o escopo religioso e político do mundo construído pela série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Baharuth',TRUE,0),(gen_random_uuid(),q,'Arco de Nazarick',FALSE,1),(gen_random_uuid(),q,'Arco de E-Rantel',FALSE,2),(gen_random_uuid(),q,'Arco de Carne',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'episode_arc','medium','Em qual arco Nabe acompanha Ainz disfarçado em missões oficiais de caça a itens, recebendo compensação financeira pela parceria?','Este arco estabelece a cobertura pública utilizada por Ainz durante sua infiltração.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de E-Rantel',TRUE,0),(gen_random_uuid(),q,'Arco de Nazarick',FALSE,1),(gen_random_uuid(),q,'Arco de Carne',FALSE,2),(gen_random_uuid(),q,'Arco de Baharuth',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'episode_arc','hard','Em qual arco Ramposa enfrenta disputas nobiliárquicas intensas enquanto tenta equilibrar interesses conflitantes na corte de Re-Estize?','Este arco explora profundamente a política interna do reino humano.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de E-Rantel',TRUE,0),(gen_random_uuid(),q,'Arco de Nazarick',FALSE,1),(gen_random_uuid(),q,'Arco de Carne',FALSE,2),(gen_random_uuid(),q,'Arco de Baharuth',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ov,'episode_arc','impossible','Em qual arco é revelado o item mais lendário guardado por Ainz, reservado exclusivamente para situações de extrema necessidade militar?','A revelação ocorre em momento crucial de tensão elevada na trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Nazarick',TRUE,0),(gen_random_uuid(),q,'Arco de E-Rantel',FALSE,1),(gen_random_uuid(),q,'Arco de Carne',FALSE,2),(gen_random_uuid(),q,'Arco de Baharuth',FALSE,3);

END $$;
