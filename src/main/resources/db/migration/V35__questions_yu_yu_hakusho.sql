-- ============================================================
--  V35 — Seed de perguntas: Yu Yu Hakusho (150 perguntas)
--  Fonte: MyAnimeList + cânone do anime
--  Distribuição: text 40% / fill_blank 25% / who_said 20% /
--                episode_arc 10% / chronological 5%
--  Sem repetição com V5. Regras R1-R7 aplicadas.
-- ============================================================

DO $$
DECLARE
    v_system UUID := '00000000-0000-0000-0000-000000000001';
    v_yyh    UUID;
    q        UUID;
BEGIN
    SELECT id INTO v_yyh FROM animes WHERE slug = 'yu-yu-hakusho' LIMIT 1;

    -- ══════════════════════════════════════════════════════════
    -- TEXT — 60 perguntas (18 easy / 21 medium / 15 hard / 6 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','easy','Qual é o nome do lutador humano bruto, amigo e rival constante de Yusuke desde a escola?','Ele possui poder espiritual próprio, manifestado como uma espada de energia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kuwabara',TRUE,0),(gen_random_uuid(),q,'Kurama',FALSE,1),(gen_random_uuid(),q,'Hiei',FALSE,2),(gen_random_uuid(),q,'Koenma',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','easy','Qual é o nome da namorada de Yusuke, colega de escola que se preocupa constantemente com sua segurança?','Ela possui habilidade latente de premonição, revelada ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Keiko Yukimura',TRUE,0),(gen_random_uuid(),q,'Botan',FALSE,1),(gen_random_uuid(),q,'Yukina',FALSE,2),(gen_random_uuid(),q,'Shizuru',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','easy','Qual é o nome da guia espiritual que acompanha Yusuke após sua morte inicial, responsável por levá-lo ao Mundo Espiritual?','Ela usa um remo voador como meio de transporte.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Botan',TRUE,0),(gen_random_uuid(),q,'Keiko',FALSE,1),(gen_random_uuid(),q,'Yukina',FALSE,2),(gen_random_uuid(),q,'Genkai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','easy','Qual é o nome do príncipe infantil do Mundo Espiritual, responsável por supervisionar as missões de Yusuke?','Ele governa temporariamente enquanto seu pai, o Rei Enma, está ausente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Koenma',TRUE,0),(gen_random_uuid(),q,'Botan',FALSE,1),(gen_random_uuid(),q,'Enma Daiô',FALSE,2),(gen_random_uuid(),q,'George',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','easy','Qual é o nome da mestra idosa que treina Yusuke em técnicas de energia espiritual avançadas?','Ela é uma das lutadoras mais fortes da história, apesar da idade avançada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Genkai',TRUE,0),(gen_random_uuid(),q,'Botan',FALSE,1),(gen_random_uuid(),q,'Yukina',FALSE,2),(gen_random_uuid(),q,'Shizuru',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','easy','Qual é o nome da irmã gêmea de Hiei, com poderes de cura através de lágrimas que se transformam em pedras preciosas?','Ela desconhece por muito tempo que Hiei é seu irmão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yukina',TRUE,0),(gen_random_uuid(),q,'Keiko',FALSE,1),(gen_random_uuid(),q,'Botan',FALSE,2),(gen_random_uuid(),q,'Shizuru',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','easy','Qual é o nome da irmã mais velha de Kuwabara, também sensível a energia espiritual?','Ela demonstra personalidade calma, contrastando com a energia excessiva do irmão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shizuru',TRUE,0),(gen_random_uuid(),q,'Yukina',FALSE,1),(gen_random_uuid(),q,'Keiko',FALSE,2),(gen_random_uuid(),q,'Botan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','easy','Qual é o nome do assistente ogro de Koenma no Mundo Espiritual, frequentemente alvo de piadas dos protagonistas?','Ele auxilia nas tarefas administrativas e organizacionais do escritório.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'George',TRUE,0),(gen_random_uuid(),q,'Botan',FALSE,1),(gen_random_uuid(),q,'Koenma',FALSE,2),(gen_random_uuid(),q,'Enma Daiô',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','easy','Qual é o nome do professor de artes marciais cego de Kuwabara, mestre em Reiken?','Ele reconhece o potencial extraordinário do aluno apesar de toda a covardia inicial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Genkai',TRUE,0),(gen_random_uuid(),q,'Koenma',FALSE,1),(gen_random_uuid(),q,'Toguro Mais Velho',FALSE,2),(gen_random_uuid(),q,'Hiei',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','easy','Qual é o nome da mãe de Kurama em sua vida humana, a quem ele demonstra profundo amor e proteção?','Sua saúde debilitada motiva grande parte das ações de Kurama no início da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shiori Minamino',TRUE,0),(gen_random_uuid(),q,'Atsuko Urameshi',FALSE,1),(gen_random_uuid(),q,'Genkai',FALSE,2),(gen_random_uuid(),q,'Yukina',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','easy','Qual é o nome da mãe de Yusuke, conhecida por hábitos de bebida e comportamento irresponsável?','Apesar da aparência descuidada, ela se preocupa profundamente com o filho.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Atsuko Urameshi',TRUE,0),(gen_random_uuid(),q,'Shiori Minamino',FALSE,1),(gen_random_uuid(),q,'Genkai',FALSE,2),(gen_random_uuid(),q,'Keiko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','easy','Qual é o nome do time formado por Yusuke, Kuwabara, Kurama e Hiei durante o Torneio das Trevas?','Eles competem representando o mundo humano contra times demoníacos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Time Urameshi',TRUE,0),(gen_random_uuid(),q,'Time Toguro',FALSE,1),(gen_random_uuid(),q,'Time Genkai',FALSE,2),(gen_random_uuid(),q,'Time Kuwabara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','easy','Qual é o nome do torneio de artes marciais disputado majoritariamente por lutadores demoníacos, cenário de um dos principais arcos da série?','Yusuke e seus amigos participam disfarçados de humanos comuns.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Torneio das Trevas',TRUE,0),(gen_random_uuid(),q,'Torneio do Submundo',FALSE,1),(gen_random_uuid(),q,'Copa Demoníaca',FALSE,2),(gen_random_uuid(),q,'Torneio dos Três Reinos',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','easy','Qual é o nome do arquipélago isolado onde ocorre o Torneio das Trevas?','O local é protegido por barreiras espirituais que impedem fuga fácil dos participantes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ilha Náufraga',TRUE,0),(gen_random_uuid(),q,'Ilha Espiritual',FALSE,1),(gen_random_uuid(),q,'Ilha Demoníaca',FALSE,2),(gen_random_uuid(),q,'Ilha do Reikai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','easy','Qual é o nome do mundo paralelo governado por demônios, separado do mundo humano e do Mundo Espiritual?','Yusuke descobre sua origem parcialmente ligada a esse mundo ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Makai',TRUE,0),(gen_random_uuid(),q,'Reikai',FALSE,1),(gen_random_uuid(),q,'Ningenkai',FALSE,2),(gen_random_uuid(),q,'Meikai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','easy','Qual é o nome dado ao mundo espiritual, sede administrativa governada por Koenma e seu pai?','É lá que as almas dos mortos são julgadas e direcionadas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Reikai',TRUE,0),(gen_random_uuid(),q,'Makai',FALSE,1),(gen_random_uuid(),q,'Ningenkai',FALSE,2),(gen_random_uuid(),q,'Meikai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','medium','Qual é a raposa de mil anos, ladrão lendário do mundo demoníaco, reencarnado como estudante humano chamado Shuichi Minamino?','Sua forma verdadeira é usada em combates decisivos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kurama',TRUE,0),(gen_random_uuid(),q,'Hiei',FALSE,1),(gen_random_uuid(),q,'Kuwabara',FALSE,2),(gen_random_uuid(),q,'Karasu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','medium','Qual é o nome da técnica de sementes plantadas por Kurama, capazes de crescer instantaneamente em armas mortais?','Ele carrega diversas sementes escondidas dentro de seu próprio cabelo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rose Whip (Chicote de Rosas)',TRUE,0),(gen_random_uuid(),q,'Death Seeds',FALSE,1),(gen_random_uuid(),q,'Fox Fire',FALSE,2),(gen_random_uuid(),q,'Thorn Cage',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','medium','Qual é o nome da técnica de Yusuke que dispara energia espiritual pura através de um único dedo indicador?','Ela é aprimorada ao longo da série, tornando-se cada vez mais poderosa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Reigan',TRUE,0),(gen_random_uuid(),q,'Reikoudan',FALSE,1),(gen_random_uuid(),q,'Shotgun',FALSE,2),(gen_random_uuid(),q,'Spirit Wave',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','medium','Qual é o nome da forma demoníaca completa de Yusuke, revelada mais tarde na série como parte de sua verdadeira herança?','Ela concede aparência e poder drasticamente diferentes de sua forma humana.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mazoku Form',TRUE,0),(gen_random_uuid(),q,'Youkai Form',FALSE,1),(gen_random_uuid(),q,'Reikai Bunshin',FALSE,2),(gen_random_uuid(),q,'Spirit Gun Form',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','medium','Qual é o nome dado à raça de demônios extremamente poderosos à qual Yusuke pertence por herança paterna?','Sua verdadeira linhagem é revelada progressivamente durante a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mazoku',TRUE,0),(gen_random_uuid(),q,'Youkai Comum',FALSE,1),(gen_random_uuid(),q,'Reikai族',FALSE,2),(gen_random_uuid(),q,'Ningen Híbrido',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','medium','Qual é o nome do olho implantado na testa de Hiei, capaz de ampliar drasticamente seus poderes de combate?','Foi implantado cirurgicamente há décadas por um mestre antigo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Jagan Eye',TRUE,0),(gen_random_uuid(),q,'Byakugan',FALSE,1),(gen_random_uuid(),q,'Sharingan',FALSE,2),(gen_random_uuid(),q,'Rinnegan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','medium','Qual é o nome da técnica de fogo negro dracônico usada por Hiei em seu ataque mais poderoso?','Ela consome uma grande parte de seu próprio braço a cada uso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dragão de Fogo das Trevas',TRUE,0),(gen_random_uuid(),q,'Jaou Ensatsu Kokuryuha',FALSE,1),(gen_random_uuid(),q,'Kokuryuha Menor',FALSE,2),(gen_random_uuid(),q,'Fogo do Inferno',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','medium','Qual é o nome do clã de bandidos ao qual Hiei pertencia antes dos eventos principais da série?','Ele foi expulso ainda bebê por ter nascido macho, contrariando as tradições do clã.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Clã das Mulheres de Gelo',TRUE,0),(gen_random_uuid(),q,'Clã dos Demônios de Fogo',FALSE,1),(gen_random_uuid(),q,'Clã Kurama',FALSE,2),(gen_random_uuid(),q,'Clã dos Três Reis',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','medium','Qual é o nome do irmão mais novo de Toguro, membro do Time Toguro no Torneio das Trevas?','Ele é extremamente cruel e sádico, contrastando com a complexidade moral do irmão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Toguro Mais Novo',TRUE,0),(gen_random_uuid(),q,'Toguro Mais Velho',FALSE,1),(gen_random_uuid(),q,'Sakyo',FALSE,2),(gen_random_uuid(),q,'Rando',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','hard','Qual é a herança demoníaca de Yusuke revelada no arco final?','É uma surpresa da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ele é filho de Koenma',FALSE,0),(gen_random_uuid(),q,'Yusuke é descendente do demônio Raizen',TRUE,1),(gen_random_uuid(),q,'Ele é filho do Rei do Mundo Espiritual',FALSE,2),(gen_random_uuid(),q,'Ele é a reencarnação de um rei demônio antigo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','hard','Qual é o nome do lendário demônio ancestral de Yusuke, que morreu de fome por se recusar a comer humanos?','Sua história de amor por uma humana motiva profundamente Yusuke.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Raizen',TRUE,0),(gen_random_uuid(),q,'Yomi',FALSE,1),(gen_random_uuid(),q,'Mukuro',FALSE,2),(gen_random_uuid(),q,'Enki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','hard','Qual é o nome do demônio cego e ambicioso que disputa o controle do Makai durante o arco final da série?','Ele é revelado como pai biológico de Shuichi Minamino em sua vida passada como Youko Kurama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yomi',TRUE,0),(gen_random_uuid(),q,'Raizen',FALSE,1),(gen_random_uuid(),q,'Mukuro',FALSE,2),(gen_random_uuid(),q,'Enki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','hard','Qual é o nome da demônia poderosa que treina Hiei durante os anos que antecedem o arco final da série?','Ela possui um passado trágico ligado a experimentos cruéis realizados em seu próprio corpo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mukuro',TRUE,0),(gen_random_uuid(),q,'Yomi',FALSE,1),(gen_random_uuid(),q,'Raizen',FALSE,2),(gen_random_uuid(),q,'Enki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','hard','Qual é o nome do demônio que assume o trono do Makai após a disputa política do arco final da série?','Ele governa com uma abordagem mais equilibrada em relação a humanos e demônios.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Enki',TRUE,0),(gen_random_uuid(),q,'Yomi',FALSE,1),(gen_random_uuid(),q,'Mukuro',FALSE,2),(gen_random_uuid(),q,'Raizen',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','hard','Qual é o nome do vilão manipulador que organiza o Torneio das Trevas por trás dos bastidores, buscando poder absoluto através de apostas?','Ele planeja abrir um portal permanente entre o mundo humano e o mundo demoníaco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sakyo',TRUE,0),(gen_random_uuid(),q,'Toguro Mais Velho',FALSE,1),(gen_random_uuid(),q,'Rando',FALSE,2),(gen_random_uuid(),q,'Younger Toguro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','hard','Qual é o nome do ninja demoníaco especialista em artes marciais explosivas, integrante do Time Toguro?','Ele nutre fascínio obsessivo por Kurama ao longo do torneio.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Karasu',TRUE,0),(gen_random_uuid(),q,'Bui',FALSE,1),(gen_random_uuid(),q,'Rinku',FALSE,2),(gen_random_uuid(),q,'Chu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','hard','Qual é o nome do demônio guerreiro de armadura pesada, integrante do Time Toguro, especialista em técnicas de espada?','Ele desafia Hiei diretamente durante o torneio.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bui',TRUE,0),(gen_random_uuid(),q,'Karasu',FALSE,1),(gen_random_uuid(),q,'Rinku',FALSE,2),(gen_random_uuid(),q,'Chu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','impossible','Qual é o nome do lutador bêbado, integrante do Time Toguro, especialista em técnicas de embriaguez em combate?','Ele demonstra código de honra único apesar de sua aparência descuidada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chu',TRUE,0),(gen_random_uuid(),q,'Bui',FALSE,1),(gen_random_uuid(),q,'Karasu',FALSE,2),(gen_random_uuid(),q,'Rinku',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','impossible','Qual é o nome do jovem demônio criança, integrante do Time Toguro, especialista em técnica de ioiô com corrente extensível?','Ele forma laço de amizade inesperado com Kuwabara durante o torneio.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rinku',TRUE,0),(gen_random_uuid(),q,'Chu',FALSE,1),(gen_random_uuid(),q,'Bui',FALSE,2),(gen_random_uuid(),q,'Karasu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','impossible','Qual é o nome do feiticeiro antigo que transformava humanos em demônios através de experimentos ilegais, enfrentado por Kurama em seu passado?','Kurama assume forma de raposa completa para derrotá-lo décadas antes dos eventos principais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rando',TRUE,0),(gen_random_uuid(),q,'Sakyo',FALSE,1),(gen_random_uuid(),q,'Karasu',FALSE,2),(gen_random_uuid(),q,'Bui',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- FILL_BLANK — 38 perguntas (11 easy / 13 medium / 10 hard / 4 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'fill_blank','easy','O lutador humano bruto, amigo e rival constante de Yusuke, se chama ___.','Ele possui poder espiritual próprio, manifestado como uma espada de energia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kuwabara',TRUE,0),(gen_random_uuid(),q,'Kurama',FALSE,1),(gen_random_uuid(),q,'Hiei',FALSE,2),(gen_random_uuid(),q,'Koenma',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'fill_blank','easy','A namorada de Yusuke, colega de escola preocupada com sua segurança, se chama ___.','Ela possui habilidade latente de premonição, revelada ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Keiko Yukimura',TRUE,0),(gen_random_uuid(),q,'Botan',FALSE,1),(gen_random_uuid(),q,'Yukina',FALSE,2),(gen_random_uuid(),q,'Shizuru',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'fill_blank','easy','A guia espiritual que acompanha Yusuke após sua morte inicial se chama ___.','Ela usa um remo voador como meio de transporte.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Botan',TRUE,0),(gen_random_uuid(),q,'Keiko',FALSE,1),(gen_random_uuid(),q,'Yukina',FALSE,2),(gen_random_uuid(),q,'Genkai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'fill_blank','easy','O príncipe infantil do Mundo Espiritual, responsável por supervisionar as missões de Yusuke, se chama ___.','Ele governa temporariamente enquanto seu pai, o Rei Enma, está ausente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Koenma',TRUE,0),(gen_random_uuid(),q,'Botan',FALSE,1),(gen_random_uuid(),q,'Enma Daiô',FALSE,2),(gen_random_uuid(),q,'George',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'fill_blank','easy','A mestra idosa que treina Yusuke em técnicas de energia espiritual avançadas se chama ___.','Ela é uma das lutadoras mais fortes da história, apesar da idade avançada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Genkai',TRUE,0),(gen_random_uuid(),q,'Botan',FALSE,1),(gen_random_uuid(),q,'Yukina',FALSE,2),(gen_random_uuid(),q,'Shizuru',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'fill_blank','easy','A irmã gêmea de Hiei, com poderes de cura através de lágrimas que se transformam em pedras preciosas, se chama ___.','Ela desconhece por muito tempo que Hiei é seu irmão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yukina',TRUE,0),(gen_random_uuid(),q,'Keiko',FALSE,1),(gen_random_uuid(),q,'Botan',FALSE,2),(gen_random_uuid(),q,'Shizuru',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'fill_blank','easy','A irmã mais velha de Kuwabara, também sensível a energia espiritual, se chama ___.','Ela demonstra personalidade calma, contrastando com a energia excessiva do irmão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shizuru',TRUE,0),(gen_random_uuid(),q,'Yukina',FALSE,1),(gen_random_uuid(),q,'Keiko',FALSE,2),(gen_random_uuid(),q,'Botan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'fill_blank','easy','O assistente ogro de Koenma no Mundo Espiritual se chama ___.','Ele auxilia nas tarefas administrativas e organizacionais do escritório.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'George',TRUE,0),(gen_random_uuid(),q,'Botan',FALSE,1),(gen_random_uuid(),q,'Koenma',FALSE,2),(gen_random_uuid(),q,'Enma Daiô',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'fill_blank','easy','O time formado por Yusuke, Kuwabara, Kurama e Hiei durante o Torneio das Trevas se chama ___.','Eles competem representando o mundo humano contra times demoníacos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Time Urameshi',TRUE,0),(gen_random_uuid(),q,'Time Toguro',FALSE,1),(gen_random_uuid(),q,'Time Genkai',FALSE,2),(gen_random_uuid(),q,'Time Kuwabara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'fill_blank','easy','O arquipélago isolado onde ocorre o Torneio das Trevas se chama ___.','O local é protegido por barreiras espirituais que impedem fuga fácil dos participantes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ilha Náufraga',TRUE,0),(gen_random_uuid(),q,'Ilha Espiritual',FALSE,1),(gen_random_uuid(),q,'Ilha Demoníaca',FALSE,2),(gen_random_uuid(),q,'Ilha do Reikai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'fill_blank','easy','O mundo paralelo governado por demônios, separado do mundo humano, se chama ___.','Yusuke descobre sua origem parcialmente ligada a esse mundo ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Makai',TRUE,0),(gen_random_uuid(),q,'Reikai',FALSE,1),(gen_random_uuid(),q,'Ningenkai',FALSE,2),(gen_random_uuid(),q,'Meikai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'fill_blank','medium','A raposa de mil anos, ladrão lendário do mundo demoníaco, reencarnado como Shuichi Minamino, se chama ___.','Sua forma verdadeira é usada em combates decisivos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kurama',TRUE,0),(gen_random_uuid(),q,'Hiei',FALSE,1),(gen_random_uuid(),q,'Kuwabara',FALSE,2),(gen_random_uuid(),q,'Karasu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'fill_blank','medium','A técnica de sementes plantadas por Kurama, capazes de crescer instantaneamente em armas mortais, se chama ___.','Ele carrega diversas sementes escondidas dentro de seu próprio cabelo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rose Whip (Chicote de Rosas)',TRUE,0),(gen_random_uuid(),q,'Death Seeds',FALSE,1),(gen_random_uuid(),q,'Fox Fire',FALSE,2),(gen_random_uuid(),q,'Thorn Cage',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'fill_blank','medium','A forma demoníaca completa de Yusuke, revelada como parte de sua verdadeira herança, se chama ___.','Ela concede aparência e poder drasticamente diferentes de sua forma humana.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mazoku Form',TRUE,0),(gen_random_uuid(),q,'Youkai Form',FALSE,1),(gen_random_uuid(),q,'Reikai Bunshin',FALSE,2),(gen_random_uuid(),q,'Spirit Gun Form',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'fill_blank','medium','A raça de demônios extremamente poderosos à qual Yusuke pertence por herança paterna se chama ___.','Sua verdadeira linhagem é revelada progressivamente durante a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mazoku',TRUE,0),(gen_random_uuid(),q,'Youkai Comum',FALSE,1),(gen_random_uuid(),q,'Reikai 族',FALSE,2),(gen_random_uuid(),q,'Ningen Híbrido',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'fill_blank','medium','O olho implantado na testa de Hiei, capaz de ampliar drasticamente seus poderes de combate, se chama ___.','Foi implantado cirurgicamente há décadas por um mestre antigo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Jagan Eye',TRUE,0),(gen_random_uuid(),q,'Byakugan',FALSE,1),(gen_random_uuid(),q,'Sharingan',FALSE,2),(gen_random_uuid(),q,'Rinnegan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'fill_blank','medium','O clã de bandidos ao qual Hiei pertencia antes dos eventos principais da série se chama ___.','Ele foi expulso ainda bebê por ter nascido macho, contrariando as tradições do clã.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Clã das Mulheres de Gelo',TRUE,0),(gen_random_uuid(),q,'Clã dos Demônios de Fogo',FALSE,1),(gen_random_uuid(),q,'Clã Kurama',FALSE,2),(gen_random_uuid(),q,'Clã dos Três Reis',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'fill_blank','medium','O irmão mais novo de Toguro, membro do Time Toguro no Torneio das Trevas, se chama ___.','Ele é extremamente cruel e sádico, contrastando com a complexidade moral do irmão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Toguro Mais Novo',TRUE,0),(gen_random_uuid(),q,'Toguro Mais Velho',FALSE,1),(gen_random_uuid(),q,'Sakyo',FALSE,2),(gen_random_uuid(),q,'Rando',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'fill_blank','hard','O lendário demônio ancestral de Yusuke, que morreu de fome por se recusar a comer humanos, se chama ___.','Sua história de amor por uma humana motiva profundamente Yusuke.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Raizen',TRUE,0),(gen_random_uuid(),q,'Yomi',FALSE,1),(gen_random_uuid(),q,'Mukuro',FALSE,2),(gen_random_uuid(),q,'Enki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'fill_blank','hard','O demônio cego e ambicioso que disputa o controle do Makai, pai biológico de Youko Kurama, se chama ___.','Ele é revelado como pai biológico de Shuichi Minamino em sua vida passada como Youko Kurama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yomi',TRUE,0),(gen_random_uuid(),q,'Raizen',FALSE,1),(gen_random_uuid(),q,'Mukuro',FALSE,2),(gen_random_uuid(),q,'Enki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'fill_blank','hard','A demônia poderosa que treina Hiei durante os anos que antecedem o arco final da série se chama ___.','Ela possui um passado trágico ligado a experimentos cruéis realizados em seu próprio corpo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mukuro',TRUE,0),(gen_random_uuid(),q,'Yomi',FALSE,1),(gen_random_uuid(),q,'Raizen',FALSE,2),(gen_random_uuid(),q,'Enki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'fill_blank','hard','O demônio que assume o trono do Makai após a disputa política do arco final se chama ___.','Ele governa com uma abordagem mais equilibrada em relação a humanos e demônios.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Enki',TRUE,0),(gen_random_uuid(),q,'Yomi',FALSE,1),(gen_random_uuid(),q,'Mukuro',FALSE,2),(gen_random_uuid(),q,'Raizen',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'fill_blank','hard','O vilão manipulador que organiza o Torneio das Trevas por trás dos bastidores se chama ___.','Ele planeja abrir um portal permanente entre o mundo humano e o mundo demoníaco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sakyo',TRUE,0),(gen_random_uuid(),q,'Toguro Mais Velho',FALSE,1),(gen_random_uuid(),q,'Rando',FALSE,2),(gen_random_uuid(),q,'Younger Toguro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'fill_blank','hard','O ninja demoníaco especialista em artes marciais explosivas, integrante do Time Toguro, se chama ___.','Ele nutre fascínio obsessivo por Kurama ao longo do torneio.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Karasu',TRUE,0),(gen_random_uuid(),q,'Bui',FALSE,1),(gen_random_uuid(),q,'Rinku',FALSE,2),(gen_random_uuid(),q,'Chu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'fill_blank','impossible','O lutador bêbado, integrante do Time Toguro, especialista em técnicas de embriaguez em combate, se chama ___.','Ele demonstra código de honra único apesar de sua aparência descuidada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chu',TRUE,0),(gen_random_uuid(),q,'Bui',FALSE,1),(gen_random_uuid(),q,'Karasu',FALSE,2),(gen_random_uuid(),q,'Rinku',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'fill_blank','impossible','O jovem demônio criança, integrante do Time Toguro, especialista em técnica de ioiô com corrente extensível, se chama ___.','Ele forma laço de amizade inesperado com Kuwabara durante o torneio.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rinku',TRUE,0),(gen_random_uuid(),q,'Chu',FALSE,1),(gen_random_uuid(),q,'Bui',FALSE,2),(gen_random_uuid(),q,'Karasu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'fill_blank','impossible','O feiticeiro antigo que transformava humanos em demônios através de experimentos ilegais, enfrentado por Kurama em seu passado, se chama ___.','Kurama assume forma de raposa completa para derrotá-lo décadas antes dos eventos principais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rando',TRUE,0),(gen_random_uuid(),q,'Sakyo',FALSE,1),(gen_random_uuid(),q,'Karasu',FALSE,2),(gen_random_uuid(),q,'Bui',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- WHO_SAID — 30 perguntas (9 easy / 11 medium / 8 hard / 2 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'who_said','easy','Quem disse: "Eu morri salvando uma criança, e agora tenho uma segunda chance de fazer a diferença neste mundo"?','A frase reflete a reviravolta que transforma o protagonista em Detetive do Além.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yusuke',TRUE,0),(gen_random_uuid(),q,'Kuwabara',FALSE,1),(gen_random_uuid(),q,'Kurama',FALSE,2),(gen_random_uuid(),q,'Hiei',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'who_said','easy','Quem disse: "Eu amo Yukina, mesmo sem saber onde ela está, e nunca vou desistir de encontrá-la"?','A frase reflete os sentimentos declarados desse personagem por Yukina ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kuwabara',TRUE,0),(gen_random_uuid(),q,'Yusuke',FALSE,1),(gen_random_uuid(),q,'Kurama',FALSE,2),(gen_random_uuid(),q,'Hiei',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'who_said','easy','Quem disse: "Eu escolhi manter distância emocional, mas ainda assim me importo profundamente com meus companheiros"?','A frase reflete a personalidade fria mas leal desse demônio de fogo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hiei',TRUE,0),(gen_random_uuid(),q,'Kurama',FALSE,1),(gen_random_uuid(),q,'Yusuke',FALSE,2),(gen_random_uuid(),q,'Kuwabara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'who_said','easy','Quem disse: "Eu já fui um ladrão lendário, mas hoje escolho proteger minha mãe humana acima de qualquer outra coisa"?','A frase reflete a dualidade entre a vida passada e a vida atual desse personagem.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kurama',TRUE,0),(gen_random_uuid(),q,'Hiei',FALSE,1),(gen_random_uuid(),q,'Yusuke',FALSE,2),(gen_random_uuid(),q,'Kuwabara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'who_said','easy','Quem disse: "Eu levo almas até o Mundo Espiritual todos os dias, mas você é o caso mais interessante que já tive"?','A frase é dita pela guia espiritual sobre sua relação inicial com Yusuke.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Botan',TRUE,0),(gen_random_uuid(),q,'Keiko',FALSE,1),(gen_random_uuid(),q,'Yukina',FALSE,2),(gen_random_uuid(),q,'Genkai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'who_said','easy','Quem disse: "Eu confio em Yusuke, mesmo quando ele desaparece por dias sem explicação nenhuma"?','A frase reflete a paciência e o carinho dessa namorada preocupada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Keiko',TRUE,0),(gen_random_uuid(),q,'Botan',FALSE,1),(gen_random_uuid(),q,'Yukina',FALSE,2),(gen_random_uuid(),q,'Shizuru',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'who_said','easy','Quem disse: "Eu treino meus alunos com dureza porque acredito profundamente no potencial de cada um deles"?','A frase reflete a filosofia rígida, mas carinhosa, dessa mestra idosa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Genkai',TRUE,0),(gen_random_uuid(),q,'Botan',FALSE,1),(gen_random_uuid(),q,'Yukina',FALSE,2),(gen_random_uuid(),q,'Shizuru',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'who_said','easy','Quem disse: "Eu supervisiono as missões de vocês com toda a autoridade de um príncipe, mesmo parecendo uma criança"?','A frase reflete a personalidade peculiar desse governante infantil do Mundo Espiritual.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Koenma',TRUE,0),(gen_random_uuid(),q,'Botan',FALSE,1),(gen_random_uuid(),q,'Enma Daiô',FALSE,2),(gen_random_uuid(),q,'George',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'who_said','easy','Quem disse: "Eu sinto energia espiritual à minha volta, e isso sempre me deixa nervoso, mesmo depois de tanto tempo"?','A frase é dita, com humor, pelo assistente ogro de Koenma.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'George',TRUE,0),(gen_random_uuid(),q,'Botan',FALSE,1),(gen_random_uuid(),q,'Koenma',FALSE,2),(gen_random_uuid(),q,'Enma Daiô',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'who_said','medium','Quem disse: "Eu já morri de fome uma vez, mas preferi isso a comer os humanos que passei a admirar"?','A frase é dita, em memória, pelo lendário demônio ancestral de Yusuke.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Raizen',TRUE,0),(gen_random_uuid(),q,'Yomi',FALSE,1),(gen_random_uuid(),q,'Mukuro',FALSE,2),(gen_random_uuid(),q,'Enki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'who_said','medium','Quem disse: "Eu perdi a visão física, mas isso apenas fortaleceu minha percepção estratégica de todo o Makai"?','A frase é dita pelo demônio ambicioso que disputa o controle do mundo demoníaco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yomi',TRUE,0),(gen_random_uuid(),q,'Raizen',FALSE,1),(gen_random_uuid(),q,'Mukuro',FALSE,2),(gen_random_uuid(),q,'Enki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'who_said','medium','Quem disse: "Fui torturada em experimentos cruéis quando jovem, e isso moldou tudo o que sou hoje"?','A frase é dita pela demônia que treina Hiei durante o arco final.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mukuro',TRUE,0),(gen_random_uuid(),q,'Yomi',FALSE,1),(gen_random_uuid(),q,'Raizen',FALSE,2),(gen_random_uuid(),q,'Enki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'who_said','medium','Quem disse: "Eu vou usar meu poder e influência para organizar o maior torneio que o mundo demoníaco já viu, custe o que custar"?','A frase é dita pelo vilão manipulador por trás do Torneio das Trevas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sakyo',TRUE,0),(gen_random_uuid(),q,'Toguro Mais Velho',FALSE,1),(gen_random_uuid(),q,'Rando',FALSE,2),(gen_random_uuid(),q,'Younger Toguro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'who_said','medium','Quem disse: "Eu treinei meu corpo além dos limites humanos, sacrificando minha própria humanidade em troca de poder absoluto"?','A frase é dita pelo lutador que enfrenta Kuwabara e Yusuke em combates decisivos no Torneio das Trevas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Toguro Mais Velho',TRUE,0),(gen_random_uuid(),q,'Sakyo',FALSE,1),(gen_random_uuid(),q,'Toguro Mais Novo',FALSE,2),(gen_random_uuid(),q,'Rando',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'who_said','medium','Quem disse: "Eu não sinto pena de ninguém, e a crueldade é apenas mais uma ferramenta de vitória"?','A frase reflete a natureza sádica do irmão mais novo dentro do Time Toguro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Toguro Mais Novo',TRUE,0),(gen_random_uuid(),q,'Toguro Mais Velho',FALSE,1),(gen_random_uuid(),q,'Sakyo',FALSE,2),(gen_random_uuid(),q,'Rando',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'who_said','medium','Quem disse: "Eu vivo apenas para a explosão perfeita, e Kurama é o único adversário digno da minha arte destrutiva"?','A frase é dita pelo ninja demoníaco fascinado por Kurama durante o torneio.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Karasu',TRUE,0),(gen_random_uuid(),q,'Bui',FALSE,1),(gen_random_uuid(),q,'Rinku',FALSE,2),(gen_random_uuid(),q,'Chu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'who_said','medium','Quem disse: "Eu bebo antes de cada luta, é assim que encontro meu verdadeiro potencial de combate"?','A frase é dita pelo lutador excêntrico especializado em técnicas de embriaguez.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chu',TRUE,0),(gen_random_uuid(),q,'Bui',FALSE,1),(gen_random_uuid(),q,'Karasu',FALSE,2),(gen_random_uuid(),q,'Rinku',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'who_said','hard','Quem disse: "Eu governo o Makai com equilíbrio, tentando unir o que antes era dividido entre humanos e demônios"?','A frase é dita pelo demônio que assume o trono após a disputa política do arco final.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Enki',TRUE,0),(gen_random_uuid(),q,'Yomi',FALSE,1),(gen_random_uuid(),q,'Mukuro',FALSE,2),(gen_random_uuid(),q,'Raizen',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'who_said','hard','Quem disse: "Eu fui expulso do meu próprio clã ainda bebê, apenas por ter nascido do sexo errado"?','A frase reflete o trauma de origem carregado por Hiei desde o nascimento.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hiei',TRUE,0),(gen_random_uuid(),q,'Kurama',FALSE,1),(gen_random_uuid(),q,'Yusuke',FALSE,2),(gen_random_uuid(),q,'Yomi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'who_said','hard','Quem disse: "Eu já fui derrotado por uma raposa astuta décadas atrás, e nunca esqueci essa humilhação"?','A frase é dita, em memória, pelo feiticeiro antigo enfrentado por Kurama em seu passado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rando',TRUE,0),(gen_random_uuid(),q,'Sakyo',FALSE,1),(gen_random_uuid(),q,'Karasu',FALSE,2),(gen_random_uuid(),q,'Bui',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'who_said','hard','Quem disse: "Eu carrego uma corrente extensível como ioiô, e mesmo sendo criança, sou um dos guerreiros mais mortais deste torneio"?','A frase é dita pelo jovem demônio que forma amizade inesperada com Kuwabara.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rinku',TRUE,0),(gen_random_uuid(),q,'Chu',FALSE,1),(gen_random_uuid(),q,'Bui',FALSE,2),(gen_random_uuid(),q,'Karasu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'who_said','hard','Quem disse: "Eu abro os Portões de Espera para desafiar quem eu considero digno, mesmo diante de Hiei"?','A frase é dita pelo guerreiro de armadura pesada, especialista em espada, do Time Toguro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bui',TRUE,0),(gen_random_uuid(),q,'Karasu',FALSE,1),(gen_random_uuid(),q,'Rinku',FALSE,2),(gen_random_uuid(),q,'Chu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'who_said','hard','Quem disse: "Eu já disputei o trono do Makai contra Yomi e Mukuro, e ainda assim escolhi um caminho mais equilibrado de governo"?','A frase é dita, refletindo sobre sua ascensão, pelo demônio que finalmente assume o trono após a disputa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Enki',TRUE,0),(gen_random_uuid(),q,'Yomi',FALSE,1),(gen_random_uuid(),q,'Mukuro',FALSE,2),(gen_random_uuid(),q,'Raizen',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'who_said','impossible','Quem disse: "Sou irmã mais velha, e mesmo com meu jeito descontraído, sempre percebo quando algo de errado acontece com meu irmão"?','A frase é dita pela irmã de Kuwabara, sensível a energia espiritual.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shizuru',TRUE,0),(gen_random_uuid(),q,'Yukina',FALSE,1),(gen_random_uuid(),q,'Keiko',FALSE,2),(gen_random_uuid(),q,'Botan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'who_said','impossible','Quem disse: "Eu procuro meu irmão gêmeo perdido há anos, mesmo sem saber que ele está mais próximo do que imagino"?','A frase é dita pela irmã gêmea de Hiei, sem saber de sua verdadeira identidade por grande parte da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yukina',TRUE,0),(gen_random_uuid(),q,'Keiko',FALSE,1),(gen_random_uuid(),q,'Botan',FALSE,2),(gen_random_uuid(),q,'Shizuru',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- EPISODE_ARC — 15 perguntas (7 medium / 6 hard / 2 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'episode_arc','medium','Em qual arco Yusuke morre salvando uma criança e recebe a chance de se tornar Detetive do Além?','O arco estabelece toda a premissa inicial da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Introdução',TRUE,0),(gen_random_uuid(),q,'Arco do Torneio das Trevas',FALSE,1),(gen_random_uuid(),q,'Arco de Sensui',FALSE,2),(gen_random_uuid(),q,'Arco do Makai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'episode_arc','medium','Em qual arco os Quatro Reis do Makai enviam ladrões demoníacos para roubar itens de poder da Terra?','Kurama e Hiei aparecem inicialmente como antagonistas neste arco antes de se tornarem aliados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco dos Ladrões Demoníacos',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco do Torneio das Trevas',FALSE,2),(gen_random_uuid(),q,'Arco de Sensui',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'episode_arc','medium','Em qual arco o Time Urameshi participa do torneio de artes marciais na Ilha Náufraga contra times demoníacos?','Toguro Mais Velho é o antagonista final decisivo deste torneio.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Torneio das Trevas',TRUE,0),(gen_random_uuid(),q,'Arco dos Ladrões Demoníacos',FALSE,1),(gen_random_uuid(),q,'Arco de Introdução',FALSE,2),(gen_random_uuid(),q,'Arco de Sensui',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'episode_arc','medium','Em qual arco um ex-detetive espiritual corrompido tenta abrir um portal permanente entre o mundo humano e o Makai?','Ele é revelado como possuidor de sete personalidades distintas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Sensui',TRUE,0),(gen_random_uuid(),q,'Arco do Torneio das Trevas',FALSE,1),(gen_random_uuid(),q,'Arco dos Ladrões Demoníacos',FALSE,2),(gen_random_uuid(),q,'Arco do Makai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'episode_arc','medium','Em qual arco Yusuke descobre sua verdadeira herança demoníaca e viaja para o Makai em busca de suas raízes?','Ele encontra memórias de Raizen durante essa jornada de autodescoberta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Makai (Três Reis)',TRUE,0),(gen_random_uuid(),q,'Arco de Sensui',FALSE,1),(gen_random_uuid(),q,'Arco do Torneio das Trevas',FALSE,2),(gen_random_uuid(),q,'Arco dos Ladrões Demoníacos',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'episode_arc','medium','Em qual arco Yomi, Mukuro e Raizen disputam o controle territorial do Makai, culminando em um novo torneio decisivo?','Yusuke se torna representante indireto do legado de Raizen neste conflito.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Makai (Três Reis)',TRUE,0),(gen_random_uuid(),q,'Arco de Sensui',FALSE,1),(gen_random_uuid(),q,'Arco do Torneio das Trevas',FALSE,2),(gen_random_uuid(),q,'Arco dos Ladrões Demoníacos',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'episode_arc','medium','Em qual arco Genkai é ferida gravemente, forçando Yusuke a intervir diretamente contra os planos de Sensui?','O sacrifício de Genkai reforça a determinação de Yusuke neste confronto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Sensui',TRUE,0),(gen_random_uuid(),q,'Arco do Torneio das Trevas',FALSE,1),(gen_random_uuid(),q,'Arco dos Ladrões Demoníacos',FALSE,2),(gen_random_uuid(),q,'Arco de Introdução',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'episode_arc','hard','Em qual arco Kuwabara e Yusuke se enfrentam pela primeira vez, iniciando uma rivalidade que se transforma em amizade ao longo da série?','O confronto inicial estabelece as bases da dinâmica entre os dois personagens.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Introdução',TRUE,0),(gen_random_uuid(),q,'Arco dos Ladrões Demoníacos',FALSE,1),(gen_random_uuid(),q,'Arco do Torneio das Trevas',FALSE,2),(gen_random_uuid(),q,'Arco de Sensui',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'episode_arc','hard','Em qual arco Kurama enfrenta indiretamente seu passado como Youko através de conflitos ligados a Yomi, seu pai biológico?','A revelação sobre a paternidade de Yomi ocorre durante este arco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Makai (Três Reis)',TRUE,0),(gen_random_uuid(),q,'Arco de Sensui',FALSE,1),(gen_random_uuid(),q,'Arco do Torneio das Trevas',FALSE,2),(gen_random_uuid(),q,'Arco dos Ladrões Demoníacos',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'episode_arc','hard','Em qual arco Hiei enfrenta diretamente Bui em um duelo decisivo dentro do Torneio das Trevas?','A vitória de Hiei consolida sua posição como um dos lutadores mais temidos do time.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Torneio das Trevas',TRUE,0),(gen_random_uuid(),q,'Arco dos Ladrões Demoníacos',FALSE,1),(gen_random_uuid(),q,'Arco de Sensui',FALSE,2),(gen_random_uuid(),q,'Arco do Makai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'episode_arc','hard','Em qual arco a verdadeira identidade de Yomi como pai de Youko Kurama é finalmente confirmada aos protagonistas?','A revelação ocorre durante as negociações territoriais do Makai.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Makai (Três Reis)',TRUE,0),(gen_random_uuid(),q,'Arco de Sensui',FALSE,1),(gen_random_uuid(),q,'Arco do Torneio das Trevas',FALSE,2),(gen_random_uuid(),q,'Arco dos Ladrões Demoníacos',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'episode_arc','hard','Em qual arco Yusuke atinge sua forma demoníaca completa pela primeira vez, revelando aparência drasticamente diferente da humana?','A transformação ocorre em resposta a um perigo extremo enfrentado pelo grupo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Torneio das Trevas',TRUE,0),(gen_random_uuid(),q,'Arco de Sensui',FALSE,1),(gen_random_uuid(),q,'Arco do Makai',FALSE,2),(gen_random_uuid(),q,'Arco dos Ladrões Demoníacos',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'episode_arc','impossible','Em qual arco é revelado o passado completo de Raizen e sua história de amor por uma mulher humana séculos antes dos eventos principais?','A revelação ocorre através de memórias compartilhadas durante a jornada de Yusuke ao Makai.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Makai (Três Reis)',TRUE,0),(gen_random_uuid(),q,'Arco de Sensui',FALSE,1),(gen_random_uuid(),q,'Arco do Torneio das Trevas',FALSE,2),(gen_random_uuid(),q,'Arco dos Ladrões Demoníacos',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'episode_arc','impossible','Em qual arco é revelado o passado completo de Mukuro, incluindo os experimentos cruéis sofridos em sua juventude?','A revelação ocorre através de flashbacks extensos durante seu treinamento com Hiei.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Makai (Três Reis)',TRUE,0),(gen_random_uuid(),q,'Arco de Sensui',FALSE,1),(gen_random_uuid(),q,'Arco do Torneio das Trevas',FALSE,2),(gen_random_uuid(),q,'Arco dos Ladrões Demoníacos',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- CHRONOLOGICAL — 7 perguntas (4 hard / 3 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'chronological','hard','Ordene cronologicamente os arcos a seguir, do mais antigo ao mais recente.','Cobrem desde a morte inicial de Yusuke até a saga final do Makai.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Introdução',TRUE,0),(gen_random_uuid(),q,'Ladrões Demoníacos',FALSE,1),(gen_random_uuid(),q,'Torneio das Trevas',FALSE,2),(gen_random_uuid(),q,'Makai (Três Reis)',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'chronological','hard','Ordene cronologicamente os seguintes eventos da jornada de Yusuke, do mais antigo ao mais recente.','Cobrem desde sua morte inicial até descobrir sua herança demoníaca completa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Morre salvando uma criança',TRUE,0),(gen_random_uuid(),q,'Torna-se Detetive do Além',FALSE,1),(gen_random_uuid(),q,'Vence o Torneio das Trevas',FALSE,2),(gen_random_uuid(),q,'Descobre sua herança como Mazoku',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre Hiei, do mais antigo ao mais recente.','Cobrem desde seu nascimento até seu treinamento final com Mukuro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'É expulso do clã ainda bebê',TRUE,0),(gen_random_uuid(),q,'Rouba itens demoníacos com Kurama',FALSE,1),(gen_random_uuid(),q,'Participa do Torneio das Trevas',FALSE,2),(gen_random_uuid(),q,'Treina sob supervisão de Mukuro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre o Time Toguro, do mais antigo ao mais recente.','Cobrem desde a formação do time até a derrota final de Toguro Mais Velho.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sakyo recruta o Time Toguro para o torneio',TRUE,0),(gen_random_uuid(),q,'Toguro Mais Novo elimina adversários brutalmente',FALSE,1),(gen_random_uuid(),q,'Yusuke enfrenta Toguro Mais Velho na final',FALSE,2),(gen_random_uuid(),q,'Toguro é derrotado definitivamente',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Raizen, do mais antigo ao mais recente.','Cobrem desde seu amor por uma humana até sua morte por fome voluntária.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Apaixona-se por uma mulher humana séculos atrás',TRUE,0),(gen_random_uuid(),q,'Recusa-se a devorar humanos por respeito à memória dela',FALSE,1),(gen_random_uuid(),q,'Entra em estado de fome prolongada voluntária',FALSE,2),(gen_random_uuid(),q,'Morre transferindo seu legado a Yusuke',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre a disputa pelo trono do Makai, do mais antigo ao mais recente.','Cobrem desde o início da disputa territorial até a ascensão de Enki.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yomi, Mukuro e Raizen disputam territórios',TRUE,0),(gen_random_uuid(),q,'Raizen morre, deixando um vácuo de poder',FALSE,1),(gen_random_uuid(),q,'Um novo torneio decide o destino do trono',FALSE,2),(gen_random_uuid(),q,'Enki assume o trono com governo equilibrado',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Sensui, do mais antigo ao mais recente.','Cobrem desde sua época como detetive espiritual até sua derrota final.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Atua como detetive espiritual antes de Yusuke',TRUE,0),(gen_random_uuid(),q,'Desenvolve sete personalidades distintas',FALSE,1),(gen_random_uuid(),q,'Tenta abrir um portal permanente para o Makai',FALSE,2),(gen_random_uuid(),q,'É derrotado por Yusuke em combate final',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- COMPLEMENTO — fechar 150 perguntas (24 text / 11 fill_blank / 5 who_said / 1 episode_arc)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','easy','Qual é o nome do rival de Yusuke em artes marciais na escola, antes mesmo dos eventos sobrenaturais da série?','Essa rivalidade escolar evolui para amizade profunda ao longo da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kuwabara',TRUE,0),(gen_random_uuid(),q,'Kurama',FALSE,1),(gen_random_uuid(),q,'Rinku',FALSE,2),(gen_random_uuid(),q,'Chu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','easy','Qual é o nome da técnica principal de ataque espiritual de Yusuke, disparada pelo dedo indicador?','Ela se torna cada vez mais poderosa conforme Yusuke evolui na série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Reigan',TRUE,0),(gen_random_uuid(),q,'Rose Whip',FALSE,1),(gen_random_uuid(),q,'Jagan',FALSE,2),(gen_random_uuid(),q,'Dragão de Fogo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','easy','Qual desses personagens é conhecido por sua espada espiritual criada a partir de energia concentrada?','Ele desenvolve essa habilidade após treinar com Genkai.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kuwabara',TRUE,0),(gen_random_uuid(),q,'Yusuke',FALSE,1),(gen_random_uuid(),q,'Hiei',FALSE,2),(gen_random_uuid(),q,'Kurama',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','easy','Qual desses personagens tem origem humana e conhece Yusuke desde a infância na mesma escola?','Ela demonstra grande preocupação com as ausências constantes dele.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Keiko',TRUE,0),(gen_random_uuid(),q,'Botan',FALSE,1),(gen_random_uuid(),q,'Yukina',FALSE,2),(gen_random_uuid(),q,'Shizuru',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','easy','Qual desses personagens é responsável por transportar almas ao Mundo Espiritual usando um remo voador?','Ela acompanha de perto as missões de Yusuke desde o início.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Botan',TRUE,0),(gen_random_uuid(),q,'Keiko',FALSE,1),(gen_random_uuid(),q,'Yukina',FALSE,2),(gen_random_uuid(),q,'Shizuru',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','medium','Qual desses personagens possui terceiro olho implantado, fonte de poder ampliado em combate?','O item foi inserido cirurgicamente há décadas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hiei',TRUE,0),(gen_random_uuid(),q,'Kurama',FALSE,1),(gen_random_uuid(),q,'Yusuke',FALSE,2),(gen_random_uuid(),q,'Kuwabara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','medium','Qual desses personagens já foi um ladrão lendário no mundo demoníaco antes de reencarnar como humano?','Sua forma original é uma raposa de mil anos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kurama',TRUE,0),(gen_random_uuid(),q,'Hiei',FALSE,1),(gen_random_uuid(),q,'Yusuke',FALSE,2),(gen_random_uuid(),q,'Kuwabara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','medium','Qual desses personagens governa o mundo demoníaco de forma equilibrada após vencer o torneio decisivo do arco final?','Ele busca unir humanos e demônios através de políticas menos hostis.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Enki',TRUE,0),(gen_random_uuid(),q,'Yomi',FALSE,1),(gen_random_uuid(),q,'Mukuro',FALSE,2),(gen_random_uuid(),q,'Raizen',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','medium','Qual desses personagens é o pai biológico de Kurama em sua forma demoníaca original, revelado no arco do Makai?','A revelação altera a dinâmica de conflito territorial entre os três reis.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yomi',TRUE,0),(gen_random_uuid(),q,'Raizen',FALSE,1),(gen_random_uuid(),q,'Mukuro',FALSE,2),(gen_random_uuid(),q,'Enki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','medium','Qual desses personagens organiza o Torneio das Trevas com intenções de abrir um portal permanente para o mundo demoníaco?','Ele opera por trás dos bastidores manipulando apostas e participantes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sakyo',TRUE,0),(gen_random_uuid(),q,'Toguro Mais Velho',FALSE,1),(gen_random_uuid(),q,'Rando',FALSE,2),(gen_random_uuid(),q,'Younger Toguro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','medium','Qual desses personagens sacrifica parte de seu próprio braço a cada uso da técnica de fogo negro dracônico?','O poder é considerado um dos mais destrutivos entre os demônios de fogo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hiei',TRUE,0),(gen_random_uuid(),q,'Kurama',FALSE,1),(gen_random_uuid(),q,'Yusuke',FALSE,2),(gen_random_uuid(),q,'Toguro Mais Velho',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','hard','Qual desses personagens treina Hiei nos anos que antecedem o arco final, revelando um passado de experimentos cruéis?','Ela se torna uma das governantes mais fortes do Makai.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mukuro',TRUE,0),(gen_random_uuid(),q,'Yomi',FALSE,1),(gen_random_uuid(),q,'Raizen',FALSE,2),(gen_random_uuid(),q,'Enki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','hard','Qual desses personagens é descrito como ancestral demoníaco de Yusuke, morto por recusar-se a devorar humanos?','Sua história de amor por uma humana séculos atrás motiva profundamente seu descendente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Raizen',TRUE,0),(gen_random_uuid(),q,'Yomi',FALSE,1),(gen_random_uuid(),q,'Mukuro',FALSE,2),(gen_random_uuid(),q,'Enki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','hard','Qual desses personagens desafia Hiei em duelo de espadas, abrindo Portões de Espera durante o Torneio das Trevas?','Ele integra o Time Toguro como guerreiro de armadura pesada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bui',TRUE,0),(gen_random_uuid(),q,'Karasu',FALSE,1),(gen_random_uuid(),q,'Rinku',FALSE,2),(gen_random_uuid(),q,'Chu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','hard','Qual desses personagens é fascinado obsessivamente por Kurama, especializando-se em técnicas explosivas durante o Torneio das Trevas?','Ele integra o Time Toguro como ninja demoníaco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Karasu',TRUE,0),(gen_random_uuid(),q,'Bui',FALSE,1),(gen_random_uuid(),q,'Rinku',FALSE,2),(gen_random_uuid(),q,'Chu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','hard','Qual desses personagens forma laço de amizade inesperado com Kuwabara apesar de lutarem em times opostos no torneio?','Ele usa uma corrente extensível como arma principal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rinku',TRUE,0),(gen_random_uuid(),q,'Chu',FALSE,1),(gen_random_uuid(),q,'Bui',FALSE,2),(gen_random_uuid(),q,'Karasu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','hard','Qual desses personagens é caracterizado por lutar sob efeito de bebida alcoólica, demonstrando código de honra único?','Ele integra o Time Toguro apesar de sua aparência descuidada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chu',TRUE,0),(gen_random_uuid(),q,'Bui',FALSE,1),(gen_random_uuid(),q,'Karasu',FALSE,2),(gen_random_uuid(),q,'Rinku',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','hard','Qual desses personagens já foi derrotado por Kurama em sua forma de raposa completa décadas antes dos eventos principais?','Ele transformava humanos em demônios por meio de experimentos ilegais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rando',TRUE,0),(gen_random_uuid(),q,'Sakyo',FALSE,1),(gen_random_uuid(),q,'Karasu',FALSE,2),(gen_random_uuid(),q,'Bui',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','impossible','Qual desses personagens sacrifica-se ferido gravemente para permitir que Yusuke enfrente Sensui diretamente?','Sua determinação reforça a resolução do protagonista no confronto final do arco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Genkai',TRUE,0),(gen_random_uuid(),q,'Botan',FALSE,1),(gen_random_uuid(),q,'Yukina',FALSE,2),(gen_random_uuid(),q,'Shizuru',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','impossible','Qual desses personagens possui sete personalidades distintas manifestadas ao longo do arco em que atua como antagonista principal?','Ele foi um detetive espiritual antes de Yusuke assumir o cargo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sensui',TRUE,0),(gen_random_uuid(),q,'Sakyo',FALSE,1),(gen_random_uuid(),q,'Rando',FALSE,2),(gen_random_uuid(),q,'Toguro Mais Velho',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','impossible','Qual desses personagens é filho do Rei Enma, governando o Mundo Espiritual temporariamente em sua ausência?','Ele supervisiona diretamente as missões de Yusuke como Detetive do Além.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Koenma',TRUE,0),(gen_random_uuid(),q,'George',FALSE,1),(gen_random_uuid(),q,'Enma Daiô',FALSE,2),(gen_random_uuid(),q,'Botan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','impossible','Qual desses personagens auxilia Koenma em tarefas administrativas do Mundo Espiritual, sendo alvo frequente de piadas dos protagonistas?','Ele demonstra nervosismo constante diante de energia espiritual forte.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'George',TRUE,0),(gen_random_uuid(),q,'Koenma',FALSE,1),(gen_random_uuid(),q,'Enma Daiô',FALSE,2),(gen_random_uuid(),q,'Botan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','impossible','Qual desses personagens desenvolve técnica de sementes escondidas no próprio cabelo, capazes de crescer instantaneamente em armas?','Ele usa essa habilidade extensivamente durante o Torneio das Trevas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kurama',TRUE,0),(gen_random_uuid(),q,'Hiei',FALSE,1),(gen_random_uuid(),q,'Yusuke',FALSE,2),(gen_random_uuid(),q,'Kuwabara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'text','impossible','Qual desses personagens é expulso do próprio clã ainda bebê, por ter nascido do sexo não aceito pelas tradições?','Ele carrega esse trauma de origem por toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hiei',TRUE,0),(gen_random_uuid(),q,'Kurama',FALSE,1),(gen_random_uuid(),q,'Yusuke',FALSE,2),(gen_random_uuid(),q,'Kuwabara',FALSE,3);

    -- fill_blank complemento (11)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'fill_blank','easy','O rival de Yusuke em artes marciais na escola, antes dos eventos sobrenaturais, se chama ___.','Essa rivalidade escolar evolui para amizade profunda ao longo da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kuwabara',TRUE,0),(gen_random_uuid(),q,'Kurama',FALSE,1),(gen_random_uuid(),q,'Rinku',FALSE,2),(gen_random_uuid(),q,'Chu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'fill_blank','easy','A técnica principal de ataque espiritual de Yusuke, disparada pelo dedo indicador, se chama ___.','Ela se torna cada vez mais poderosa conforme Yusuke evolui na série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Reigan',TRUE,0),(gen_random_uuid(),q,'Rose Whip',FALSE,1),(gen_random_uuid(),q,'Jagan',FALSE,2),(gen_random_uuid(),q,'Dragão de Fogo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'fill_blank','easy','O colega de escola que conhece Yusuke desde a infância e se preocupa com suas ausências se chama ___.','Ela demonstra grande preocupação com as ausências constantes dele.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Keiko',TRUE,0),(gen_random_uuid(),q,'Botan',FALSE,1),(gen_random_uuid(),q,'Yukina',FALSE,2),(gen_random_uuid(),q,'Shizuru',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'fill_blank','medium','O demônio governante do Makai após vencer o torneio decisivo do arco final se chama ___.','Ele busca unir humanos e demônios através de políticas menos hostis.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Enki',TRUE,0),(gen_random_uuid(),q,'Yomi',FALSE,1),(gen_random_uuid(),q,'Mukuro',FALSE,2),(gen_random_uuid(),q,'Raizen',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'fill_blank','medium','O pai biológico de Kurama em sua forma demoníaca original, revelado no arco do Makai, se chama ___.','A revelação altera a dinâmica de conflito territorial entre os três reis.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yomi',TRUE,0),(gen_random_uuid(),q,'Raizen',FALSE,1),(gen_random_uuid(),q,'Mukuro',FALSE,2),(gen_random_uuid(),q,'Enki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'fill_blank','medium','O organizador do Torneio das Trevas com intenções de abrir um portal permanente para o mundo demoníaco se chama ___.','Ele opera por trás dos bastidores manipulando apostas e participantes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sakyo',TRUE,0),(gen_random_uuid(),q,'Toguro Mais Velho',FALSE,1),(gen_random_uuid(),q,'Rando',FALSE,2),(gen_random_uuid(),q,'Younger Toguro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'fill_blank','hard','A demônia que treina Hiei nos anos que antecedem o arco final, revelando um passado de experimentos cruéis, se chama ___.','Ela se torna uma das governantes mais fortes do Makai.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mukuro',TRUE,0),(gen_random_uuid(),q,'Yomi',FALSE,1),(gen_random_uuid(),q,'Raizen',FALSE,2),(gen_random_uuid(),q,'Enki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'fill_blank','hard','O guerreiro de armadura pesada que desafia Hiei em duelo de espadas durante o Torneio das Trevas se chama ___.','Ele integra o Time Toguro e abre Portões de Espera antes da luta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bui',TRUE,0),(gen_random_uuid(),q,'Karasu',FALSE,1),(gen_random_uuid(),q,'Rinku',FALSE,2),(gen_random_uuid(),q,'Chu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'fill_blank','hard','O jovem demônio que forma laço de amizade inesperado com Kuwabara, usando corrente extensível como arma, se chama ___.','Ele integra o Time Toguro apesar da aparência infantil.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rinku',TRUE,0),(gen_random_uuid(),q,'Chu',FALSE,1),(gen_random_uuid(),q,'Bui',FALSE,2),(gen_random_uuid(),q,'Karasu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'fill_blank','impossible','O antagonista principal do arco em que atua com sete personalidades distintas, ex-detetive espiritual antes de Yusuke, se chama ___.','Ele tenta abrir um portal permanente entre o mundo humano e o Makai.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sensui',TRUE,0),(gen_random_uuid(),q,'Sakyo',FALSE,1),(gen_random_uuid(),q,'Rando',FALSE,2),(gen_random_uuid(),q,'Toguro Mais Velho',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'fill_blank','impossible','O feiticeiro derrotado por Kurama em sua forma de raposa completa décadas antes dos eventos principais se chama ___.','Ele transformava humanos em demônios por meio de experimentos ilegais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rando',TRUE,0),(gen_random_uuid(),q,'Sakyo',FALSE,1),(gen_random_uuid(),q,'Karasu',FALSE,2),(gen_random_uuid(),q,'Bui',FALSE,3);

    -- who_said complemento (5)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'who_said','easy','Quem disse: "Eu sou o herdeiro do Mundo Espiritual, mas meu pai me deixou responsável por tudo enquanto ele está fora"?','A frase é dita pelo príncipe infantil enquanto supervisiona as missões de Yusuke.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Koenma',TRUE,0),(gen_random_uuid(),q,'George',FALSE,1),(gen_random_uuid(),q,'Enma Daiô',FALSE,2),(gen_random_uuid(),q,'Botan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'who_said','medium','Quem disse: "Eu sempre lutei sozinho, mas aprendi que ter companheiros pode ser uma forma diferente de força"?','A frase reflete a evolução emocional desse demônio de fogo solitário ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hiei',TRUE,0),(gen_random_uuid(),q,'Kurama',FALSE,1),(gen_random_uuid(),q,'Yusuke',FALSE,2),(gen_random_uuid(),q,'Kuwabara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'who_said','medium','Quem disse: "Eu já roubei os tesouros mais valiosos do Makai, mas nada se compara a proteger minha mãe humana"?','A frase é dita pelo ex-ladrão lendário reencarnado como humano.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kurama',TRUE,0),(gen_random_uuid(),q,'Hiei',FALSE,1),(gen_random_uuid(),q,'Yusuke',FALSE,2),(gen_random_uuid(),q,'Kuwabara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'who_said','hard','Quem disse: "Eu possuo sete personalidades diferentes, e cada uma delas tem um propósito específico em meu plano"?','A frase é dita pelo ex-detetive espiritual corrompido, antagonista principal de seu arco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sensui',TRUE,0),(gen_random_uuid(),q,'Sakyo',FALSE,1),(gen_random_uuid(),q,'Rando',FALSE,2),(gen_random_uuid(),q,'Toguro Mais Velho',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'who_said','impossible','Quem disse: "Eu sirvo ao Mundo Espiritual auxiliando Koenma, mesmo tremendo toda vez que sinto energia espiritual forte"?','A frase é dita, com humor, pelo assistente ogro que trabalha ao lado de Koenma.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'George',TRUE,0),(gen_random_uuid(),q,'Botan',FALSE,1),(gen_random_uuid(),q,'Koenma',FALSE,2),(gen_random_uuid(),q,'Enma Daiô',FALSE,3);

    -- episode_arc complemento (1)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_yyh,'episode_arc','medium','Em qual arco Yusuke e Kuwabara se aliam pela primeira vez a Kurama e Hiei, transformando antigos adversários em companheiros de equipe?','A parceria se solidifica definitivamente antes do início do Torneio das Trevas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco dos Ladrões Demoníacos',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco do Torneio das Trevas',FALSE,2),(gen_random_uuid(),q,'Arco de Sensui',FALSE,3);

END $$;
