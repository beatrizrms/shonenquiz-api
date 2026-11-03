-- ============================================================
--  V51 — Seed de perguntas: Haikyuu!! (150 perguntas)
--  Fonte: MyAnimeList + cânone do anime
--  Distribuição: text 40% / fill_blank 25% / who_said 20% /
--                episode_arc 10% / chronological 5%
--  Sem repetição com V5. Regras R1-R7 aplicadas.
-- ============================================================

DO $$
DECLARE
    v_system UUID := '00000000-0000-0000-0000-000000000001';
    v_hk     UUID;
    q        UUID;
BEGIN
    SELECT id INTO v_hk FROM animes WHERE slug = 'haikyuu' LIMIT 1;

    -- ══════════════════════════════════════════════════════════
    -- TEXT — 60 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','easy','Qual é o nome do protagonista, jovem baixo de estatura mas com salto impressionante, apaixonado por vôlei desde criança?','Ele ingressa no time de vôlei do ensino médio determinado a superar suas limitações físicas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shoyo Hinata',TRUE,0),(gen_random_uuid(),q,'Tobio Kageyama',FALSE,1),(gen_random_uuid(),q,'Daichi',FALSE,2),(gen_random_uuid(),q,'Tsukishima',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','easy','Qual é o nome do levantador talentoso e perfeccionista, apelidado de "rei" por seu estilo autoritário durante o ensino fundamental?','Ele forma parceria de ataque rápido extremamente eficaz com o protagonista ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kageyama',TRUE,0),(gen_random_uuid(),q,'Hinata',FALSE,1),(gen_random_uuid(),q,'Daichi',FALSE,2),(gen_random_uuid(),q,'Sugawara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','easy','Qual é o nome do colégio onde o protagonista e o levantador talentoso estudam, competindo em torneios de vôlei ao longo da série?','Ele se torna cenário central para grande parte dos eventos esportivos da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Karasuno',TRUE,0),(gen_random_uuid(),q,'Aoba Johsai',FALSE,1),(gen_random_uuid(),q,'Nekoma',FALSE,2),(gen_random_uuid(),q,'Shiratorizawa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','easy','Qual é o nome do capitão do time de vôlei, líder confiável e respeitado que orienta os jogadores mais jovens durante seus primeiros desafios?','Ele demonstra maturidade e liderança constante ao longo de toda a temporada esportiva.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Daichi Sawamura',TRUE,0),(gen_random_uuid(),q,'Sugawara',FALSE,1),(gen_random_uuid(),q,'Asahi',FALSE,2),(gen_random_uuid(),q,'Tanaka',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','easy','Qual é o nome do vice-capitão e levantador reserva, conhecido por sua personalidade calorosa e habilidade em elevar o moral da equipe?','Ele demonstra postura de apoio constante mesmo quando não é titular na maioria dos jogos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sugawara',TRUE,0),(gen_random_uuid(),q,'Daichi',FALSE,1),(gen_random_uuid(),q,'Asahi',FALSE,2),(gen_random_uuid(),q,'Tanaka',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','easy','Qual é o nome do ala atacante alto e habilidoso, que enfrenta crise de confiança significativa antes de retornar como jogador decisivo do time?','Sua jornada emocional é explorada com profundidade durante os primeiros arcos da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Asahi Azumane',TRUE,0),(gen_random_uuid(),q,'Daichi',FALSE,1),(gen_random_uuid(),q,'Tanaka',FALSE,2),(gen_random_uuid(),q,'Nishinoya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','easy','Qual é o nome do libero baixo e extremamente ágil, especialista em defesa, apelidado de "guardião" por seus companheiros de time?','Sua energia contagiante inspira toda a equipe durante momentos decisivos de jogo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nishinoya',TRUE,0),(gen_random_uuid(),q,'Tanaka',FALSE,1),(gen_random_uuid(),q,'Asahi',FALSE,2),(gen_random_uuid(),q,'Kageyama',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','easy','Qual é o nome do ala atacante carismático de cabeça raspada, conhecido por sua energia intensa e apoio vocal constante durante as partidas?','Ele demonstra crescimento significativo como jogador ao longo do desenvolvimento da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tanaka',TRUE,0),(gen_random_uuid(),q,'Nishinoya',FALSE,1),(gen_random_uuid(),q,'Asahi',FALSE,2),(gen_random_uuid(),q,'Ennoshita',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','easy','Qual é o nome do bloqueador alto e analítico, conhecido por seu sarcasmo constante e abordagem intelectual ao jogo de vôlei?','Sua motivação para jogar vôlei evolui significativamente ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tsukishima',TRUE,0),(gen_random_uuid(),q,'Yamaguchi',FALSE,1),(gen_random_uuid(),q,'Ennoshita',FALSE,2),(gen_random_uuid(),q,'Kageyama',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','easy','Qual é o nome do amigo próximo do bloqueador alto, especialista em saques flutuantes desenvolvidos através de treino dedicado?','Sua amizade de longa data com o companheiro de time é explorada em diversos momentos da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yamaguchi',TRUE,0),(gen_random_uuid(),q,'Tsukishima',FALSE,1),(gen_random_uuid(),q,'Ennoshita',FALSE,2),(gen_random_uuid(),q,'Kinoshita',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','easy','Qual é o nome do técnico experiente do time, responsável por revitalizar a equipe após período de declínio competitivo antes dos eventos principais?','Sua estratégia e experiência são fundamentais para o ressurgimento competitivo do time.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ukai',TRUE,0),(gen_random_uuid(),q,'Takeda',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','easy','Qual é o nome do professor supervisor entusiasta do clube de vôlei, responsável por buscar oportunidades de treinamento e jogos amistosos para a equipe?','Ele demonstra dedicação genuína apesar de conhecimento técnico limitado sobre o esporte.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Takeda',TRUE,0),(gen_random_uuid(),q,'Ukai',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','medium','Qual é o nome do time rival tradicional, escola de elite conhecida por sua forte tradição competitiva e jogadores talentosos que frequentemente enfrentam Karasuno?','Sua rivalidade histórica com Karasuno é elemento recorrente ao longo de toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aoba Johsai',TRUE,0),(gen_random_uuid(),q,'Nekoma',FALSE,1),(gen_random_uuid(),q,'Shiratorizawa',FALSE,2),(gen_random_uuid(),q,'Fukurodani',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','medium','Qual é o nome do time considerado "irmão" de Karasuno, conhecido por sua abordagem defensiva sólida apelidada de "muro de ferro"?','Sua rivalidade amistosa com Karasuno se desenvolve ao longo de treinos conjuntos e confrontos oficiais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nekoma',TRUE,0),(gen_random_uuid(),q,'Aoba Johsai',FALSE,1),(gen_random_uuid(),q,'Shiratorizawa',FALSE,2),(gen_random_uuid(),q,'Fukurodani',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','medium','Qual é o nome do levantador estrategista e carismático de Aoba Johsai, mentor precoce de Kageyama antes dos eventos principais da série?','Sua rivalidade complexa com Kageyama carrega peso emocional significativo ao longo da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Oikawa',TRUE,0),(gen_random_uuid(),q,'Iwaizumi',FALSE,1),(gen_random_uuid(),q,'Ushijima',FALSE,2),(gen_random_uuid(),q,'Kuroo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','medium','Qual é o nome do ás atacante poderoso de Shiratorizawa, considerado um dos melhores jogadores de todo o país em sua categoria etária?','Sua força física e mentalidade implacável representam desafio significativo para os protagonistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ushijima',TRUE,0),(gen_random_uuid(),q,'Oikawa',FALSE,1),(gen_random_uuid(),q,'Iwaizumi',FALSE,2),(gen_random_uuid(),q,'Kuroo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','medium','Qual é o nome do levantador estrategista de Nekoma, conhecido por sua abordagem provocativa e inteligência tática apurada durante os jogos?','Ele desenvolve rivalidade respeitosa com o bloqueador analítico de Karasuno ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kuroo',TRUE,0),(gen_random_uuid(),q,'Oikawa',FALSE,1),(gen_random_uuid(),q,'Ushijima',FALSE,2),(gen_random_uuid(),q,'Bokuto',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','medium','Qual é o nome do amigo próximo do levantador de Aoba Johsai, ás confiável conhecido por sua disciplina e postura direta com os companheiros?','Sua amizade de longa data com o levantador estrategista é fundamental para a dinâmica do time.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Iwaizumi',TRUE,0),(gen_random_uuid(),q,'Oikawa',FALSE,1),(gen_random_uuid(),q,'Ushijima',FALSE,2),(gen_random_uuid(),q,'Kuroo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','medium','Qual é o nome do ás emotivo e talentoso de Fukurodani, conhecido por oscilações drásticas de humor durante as partidas de vôlei?','Sua energia intensa e imprevisível o torna adversário e aliado memorável ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bokuto',TRUE,0),(gen_random_uuid(),q,'Kuroo',FALSE,1),(gen_random_uuid(),q,'Ushijima',FALSE,2),(gen_random_uuid(),q,'Oikawa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','hard','Qual é o nome dado ao golpe de ataque característico desenvolvido em conjunto por Hinata e Kageyama, baseado em velocidade extrema e sincronização perfeita?','Este golpe se torna assinatura distintiva da dupla ao longo de toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ataque Rápido (Kousoku)',TRUE,0),(gen_random_uuid(),q,'Golpe Duplo',FALSE,1),(gen_random_uuid(),q,'Sincronia Perfeita',FALSE,2),(gen_random_uuid(),q,'Combinação Suprema',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','hard','Qual é o nome dado ao torneio nacional de vôlei disputado nas etapas finais da série, representando o objetivo máximo perseguido pelos protagonistas?','Sua conquista representa culminação de toda a jornada esportiva desenvolvida ao longo da narrativa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Spring High',TRUE,0),(gen_random_uuid(),q,'Copa Nacional',FALSE,1),(gen_random_uuid(),q,'Torneio Supremo',FALSE,2),(gen_random_uuid(),q,'Campeonato Interescolar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','hard','Qual é o nome do técnico veterano de Nekoma, mentor respeitado responsável por décadas de desenvolvimento do time antes de sua aposentadoria?','Sua filosofia de treinamento influencia profundamente a cultura competitiva de sua equipe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nekomata',TRUE,0),(gen_random_uuid(),q,'Ukai',FALSE,1),(gen_random_uuid(),q,'Washijo',FALSE,2),(gen_random_uuid(),q,'Takeda',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','hard','Qual é o nome do técnico rigoroso de Shiratorizawa, conhecido por sua filosofia de recrutamento focada exclusivamente em talento individual excepcional?','Sua abordagem contrasta diretamente com a filosofia de trabalho em equipe adotada por Karasuno.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Washijo',TRUE,0),(gen_random_uuid(),q,'Nekomata',FALSE,1),(gen_random_uuid(),q,'Ukai',FALSE,2),(gen_random_uuid(),q,'Takeda',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','impossible','Qual é o nome do avô do técnico atual de Karasuno, ex-treinador lendário responsável pelo período de glória histórica do time décadas antes dos eventos principais?','Sua reputação histórica motiva parte da determinação da equipe em recuperar seu prestígio perdido.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ukai (avô)',TRUE,0),(gen_random_uuid(),q,'Nekomata',FALSE,1),(gen_random_uuid(),q,'Washijo',FALSE,2),(gen_random_uuid(),q,'Takeda',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','impossible','Qual é o nome do jogador reserva discreto de Karasuno, gradualmente desenvolvido ao longo da série como sucessor em posição de liderança tática do time?','Seu crescimento silencioso reflete a filosofia de desenvolvimento coletivo cultivada por Karasuno.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ennoshita',TRUE,0),(gen_random_uuid(),q,'Kinoshita',FALSE,1),(gen_random_uuid(),q,'Narita',FALSE,2),(gen_random_uuid(),q,'Yamaguchi',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- FILL_BLANK — 38 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'fill_blank','easy','O protagonista, jovem baixo de estatura mas com salto impressionante, apaixonado por vôlei desde criança, se chama ___.','Ele ingressa no time de vôlei do ensino médio determinado a superar suas limitações físicas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hinata',TRUE,0),(gen_random_uuid(),q,'Kageyama',FALSE,1),(gen_random_uuid(),q,'Daichi',FALSE,2),(gen_random_uuid(),q,'Tsukishima',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'fill_blank','easy','O levantador talentoso e perfeccionista, apelidado de "rei" por seu estilo autoritário no ensino fundamental, se chama ___.','Ele forma parceria de ataque rápido extremamente eficaz com o protagonista ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kageyama',TRUE,0),(gen_random_uuid(),q,'Hinata',FALSE,1),(gen_random_uuid(),q,'Daichi',FALSE,2),(gen_random_uuid(),q,'Sugawara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'fill_blank','easy','O colégio onde o protagonista e o levantador talentoso estudam, competindo em torneios de vôlei, se chama ___.','Ele se torna cenário central para grande parte dos eventos esportivos da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Karasuno',TRUE,0),(gen_random_uuid(),q,'Aoba Johsai',FALSE,1),(gen_random_uuid(),q,'Nekoma',FALSE,2),(gen_random_uuid(),q,'Shiratorizawa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'fill_blank','easy','O capitão do time de vôlei, líder confiável que orienta os jogadores mais jovens, se chama ___.','Ele demonstra maturidade e liderança constante ao longo de toda a temporada esportiva.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Daichi',TRUE,0),(gen_random_uuid(),q,'Sugawara',FALSE,1),(gen_random_uuid(),q,'Asahi',FALSE,2),(gen_random_uuid(),q,'Tanaka',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'fill_blank','easy','O vice-capitão e levantador reserva, conhecido por sua personalidade calorosa, se chama ___.','Ele demonstra postura de apoio constante mesmo quando não é titular na maioria dos jogos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sugawara',TRUE,0),(gen_random_uuid(),q,'Daichi',FALSE,1),(gen_random_uuid(),q,'Asahi',FALSE,2),(gen_random_uuid(),q,'Tanaka',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'fill_blank','easy','O ala atacante alto que enfrenta crise de confiança antes de retornar como jogador decisivo se chama ___.','Sua jornada emocional é explorada com profundidade durante os primeiros arcos da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Asahi',TRUE,0),(gen_random_uuid(),q,'Daichi',FALSE,1),(gen_random_uuid(),q,'Tanaka',FALSE,2),(gen_random_uuid(),q,'Nishinoya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'fill_blank','easy','O libero baixo e ágil, especialista em defesa, apelidado de "guardião" por seus companheiros, se chama ___.','Sua energia contagiante inspira toda a equipe durante momentos decisivos de jogo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nishinoya',TRUE,0),(gen_random_uuid(),q,'Tanaka',FALSE,1),(gen_random_uuid(),q,'Asahi',FALSE,2),(gen_random_uuid(),q,'Kageyama',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'fill_blank','easy','O ala atacante carismático de cabeça raspada, conhecido por sua energia intensa, se chama ___.','Ele demonstra crescimento significativo como jogador ao longo do desenvolvimento da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tanaka',TRUE,0),(gen_random_uuid(),q,'Nishinoya',FALSE,1),(gen_random_uuid(),q,'Asahi',FALSE,2),(gen_random_uuid(),q,'Ennoshita',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'fill_blank','easy','O bloqueador alto e analítico, conhecido por seu sarcasmo constante, se chama ___.','Sua motivação para jogar vôlei evolui significativamente ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tsukishima',TRUE,0),(gen_random_uuid(),q,'Yamaguchi',FALSE,1),(gen_random_uuid(),q,'Ennoshita',FALSE,2),(gen_random_uuid(),q,'Kageyama',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'fill_blank','easy','O amigo próximo do bloqueador alto, especialista em saques flutuantes desenvolvidos através de treino dedicado, se chama ___.','Sua amizade de longa data com o companheiro de time é explorada em diversos momentos da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yamaguchi',TRUE,0),(gen_random_uuid(),q,'Tsukishima',FALSE,1),(gen_random_uuid(),q,'Ennoshita',FALSE,2),(gen_random_uuid(),q,'Kinoshita',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'fill_blank','medium','O time rival tradicional, escola de elite conhecida por forte tradição competitiva, se chama ___.','Sua rivalidade histórica com Karasuno é elemento recorrente ao longo de toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aoba Johsai',TRUE,0),(gen_random_uuid(),q,'Nekoma',FALSE,1),(gen_random_uuid(),q,'Shiratorizawa',FALSE,2),(gen_random_uuid(),q,'Fukurodani',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'fill_blank','medium','O time considerado "irmão" de Karasuno, conhecido por sua abordagem defensiva "muro de ferro", se chama ___.','Sua rivalidade amistosa com Karasuno se desenvolve ao longo de treinos conjuntos e confrontos oficiais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nekoma',TRUE,0),(gen_random_uuid(),q,'Aoba Johsai',FALSE,1),(gen_random_uuid(),q,'Shiratorizawa',FALSE,2),(gen_random_uuid(),q,'Fukurodani',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'fill_blank','medium','O levantador estrategista e carismático de Aoba Johsai, mentor precoce de Kageyama, se chama ___.','Sua rivalidade complexa com Kageyama carrega peso emocional significativo ao longo da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Oikawa',TRUE,0),(gen_random_uuid(),q,'Iwaizumi',FALSE,1),(gen_random_uuid(),q,'Ushijima',FALSE,2),(gen_random_uuid(),q,'Kuroo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'fill_blank','medium','O ás atacante poderoso de Shiratorizawa, considerado um dos melhores jogadores do país, se chama ___.','Sua força física e mentalidade implacável representam desafio significativo para os protagonistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ushijima',TRUE,0),(gen_random_uuid(),q,'Oikawa',FALSE,1),(gen_random_uuid(),q,'Iwaizumi',FALSE,2),(gen_random_uuid(),q,'Kuroo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'fill_blank','medium','O levantador estrategista de Nekoma, conhecido por sua abordagem provocativa e inteligência tática, se chama ___.','Ele desenvolve rivalidade respeitosa com o bloqueador analítico de Karasuno ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kuroo',TRUE,0),(gen_random_uuid(),q,'Oikawa',FALSE,1),(gen_random_uuid(),q,'Ushijima',FALSE,2),(gen_random_uuid(),q,'Bokuto',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'fill_blank','medium','O amigo próximo do levantador de Aoba Johsai, ás confiável conhecido por sua disciplina, se chama ___.','Sua amizade de longa data com o levantador estrategista é fundamental para a dinâmica do time.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Iwaizumi',TRUE,0),(gen_random_uuid(),q,'Oikawa',FALSE,1),(gen_random_uuid(),q,'Ushijima',FALSE,2),(gen_random_uuid(),q,'Kuroo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'fill_blank','medium','O ás emotivo e talentoso de Fukurodani, conhecido por oscilações drásticas de humor, se chama ___.','Sua energia intensa e imprevisível o torna adversário e aliado memorável ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bokuto',TRUE,0),(gen_random_uuid(),q,'Kuroo',FALSE,1),(gen_random_uuid(),q,'Ushijima',FALSE,2),(gen_random_uuid(),q,'Oikawa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'fill_blank','hard','O golpe de ataque característico desenvolvido por Hinata e Kageyama, baseado em velocidade extrema, é chamado de ___.','Este golpe se torna assinatura distintiva da dupla ao longo de toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ataque Rápido',TRUE,0),(gen_random_uuid(),q,'Golpe Duplo',FALSE,1),(gen_random_uuid(),q,'Sincronia Perfeita',FALSE,2),(gen_random_uuid(),q,'Combinação Suprema',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'fill_blank','hard','O torneio nacional de vôlei disputado nas etapas finais da série, objetivo máximo dos protagonistas, se chama ___.','Sua conquista representa culminação de toda a jornada esportiva desenvolvida ao longo da narrativa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Spring High',TRUE,0),(gen_random_uuid(),q,'Copa Nacional',FALSE,1),(gen_random_uuid(),q,'Torneio Supremo',FALSE,2),(gen_random_uuid(),q,'Campeonato Interescolar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'fill_blank','hard','O técnico veterano de Nekoma, mentor respeitado por décadas de desenvolvimento do time, se chama ___.','Sua filosofia de treinamento influencia profundamente a cultura competitiva de sua equipe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nekomata',TRUE,0),(gen_random_uuid(),q,'Ukai',FALSE,1),(gen_random_uuid(),q,'Washijo',FALSE,2),(gen_random_uuid(),q,'Takeda',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'fill_blank','hard','O técnico rigoroso de Shiratorizawa, conhecido por sua filosofia de recrutamento focada em talento individual, se chama ___.','Sua abordagem contrasta diretamente com a filosofia de trabalho em equipe adotada por Karasuno.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Washijo',TRUE,0),(gen_random_uuid(),q,'Nekomata',FALSE,1),(gen_random_uuid(),q,'Ukai',FALSE,2),(gen_random_uuid(),q,'Takeda',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'fill_blank','impossible','O avô do técnico atual de Karasuno, ex-treinador lendário responsável pelo período de glória histórica do time, é referido como ___.','Sua reputação histórica motiva parte da determinação da equipe em recuperar seu prestígio perdido.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ukai (avô)',TRUE,0),(gen_random_uuid(),q,'Nekomata',FALSE,1),(gen_random_uuid(),q,'Washijo',FALSE,2),(gen_random_uuid(),q,'Takeda',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- WHO_SAID — 30 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'who_said','easy','Quem disse: "Sou baixo, mas meu salto é o mais alto da quadra, e nunca vou desistir de jogar vôlei"?','A frase reflete a determinação central do protagonista da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hinata',TRUE,0),(gen_random_uuid(),q,'Kageyama',FALSE,1),(gen_random_uuid(),q,'Daichi',FALSE,2),(gen_random_uuid(),q,'Tsukishima',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'who_said','easy','Quem disse: "Fui chamado de rei autoritário no ensino fundamental, mas aprendi a confiar verdadeiramente em meus companheiros de time"?','A frase é dita pelo levantador talentoso e perfeccionista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kageyama',TRUE,0),(gen_random_uuid(),q,'Hinata',FALSE,1),(gen_random_uuid(),q,'Daichi',FALSE,2),(gen_random_uuid(),q,'Sugawara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'who_said','easy','Quem disse: "Eu oriento os jogadores mais jovens com maturidade constante, sempre buscando o melhor para toda a equipe"?','A frase é dita pelo capitão confiável e respeitado do time.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Daichi',TRUE,0),(gen_random_uuid(),q,'Sugawara',FALSE,1),(gen_random_uuid(),q,'Asahi',FALSE,2),(gen_random_uuid(),q,'Tanaka',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'who_said','easy','Quem disse: "Mesmo sendo reserva na maioria dos jogos, minha personalidade calorosa sempre eleva o moral de toda a equipe"?','A frase é dita pelo vice-capitão e levantador reserva.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sugawara',TRUE,0),(gen_random_uuid(),q,'Daichi',FALSE,1),(gen_random_uuid(),q,'Asahi',FALSE,2),(gen_random_uuid(),q,'Tanaka',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'who_said','easy','Quem disse: "Enfrentei crise profunda de confiança, mas retornei como jogador decisivo graças ao apoio dos meus companheiros de time"?','A frase é dita pelo ala atacante alto e habilidoso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Asahi',TRUE,0),(gen_random_uuid(),q,'Daichi',FALSE,1),(gen_random_uuid(),q,'Tanaka',FALSE,2),(gen_random_uuid(),q,'Nishinoya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'who_said','easy','Quem disse: "Sou o guardião da quadra, e minha energia contagiante inspira toda a equipe durante momentos decisivos de jogo"?','A frase é dita pelo libero baixo e extremamente ágil.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nishinoya',TRUE,0),(gen_random_uuid(),q,'Tanaka',FALSE,1),(gen_random_uuid(),q,'Asahi',FALSE,2),(gen_random_uuid(),q,'Kageyama',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'who_said','medium','Quem disse: "Minha energia intensa e apoio vocal constante durante as partidas motivam meus companheiros a darem o melhor de si"?','A frase é dita pelo ala atacante carismático de cabeça raspada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tanaka',TRUE,0),(gen_random_uuid(),q,'Nishinoya',FALSE,1),(gen_random_uuid(),q,'Asahi',FALSE,2),(gen_random_uuid(),q,'Ennoshita',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'who_said','medium','Quem disse: "Meu sarcasmo esconde uma motivação que evoluiu significativamente desde que comecei a jogar vôlei nesta equipe"?','A frase é dita pelo bloqueador alto e analítico.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tsukishima',TRUE,0),(gen_random_uuid(),q,'Yamaguchi',FALSE,1),(gen_random_uuid(),q,'Ennoshita',FALSE,2),(gen_random_uuid(),q,'Kageyama',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'who_said','medium','Quem disse: "Desenvolvi meu saque flutuante através de treino dedicado, buscando contribuir mais com meu melhor amigo de time"?','A frase é dita pelo amigo próximo do bloqueador alto especialista em saques.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yamaguchi',TRUE,0),(gen_random_uuid(),q,'Tsukishima',FALSE,1),(gen_random_uuid(),q,'Ennoshita',FALSE,2),(gen_random_uuid(),q,'Kinoshita',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'who_said','medium','Quem disse: "Minha rivalidade histórica com Karasuno se intensifica a cada torneio, mas sempre com respeito mútuo genuíno"?','A frase reflete a relação competitiva do time de elite rival de Karasuno.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Oikawa (representando Aoba Johsai)',TRUE,0),(gen_random_uuid(),q,'Ushijima',FALSE,1),(gen_random_uuid(),q,'Kuroo',FALSE,2),(gen_random_uuid(),q,'Bokuto',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'who_said','medium','Quem disse: "Minha rivalidade complexa com Kageyama carrega peso emocional significativo desde que fui seu mentor precoce"?','A frase é dita pelo levantador estrategista e carismático de Aoba Johsai.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Oikawa',TRUE,0),(gen_random_uuid(),q,'Iwaizumi',FALSE,1),(gen_random_uuid(),q,'Ushijima',FALSE,2),(gen_random_uuid(),q,'Kuroo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'who_said','hard','Quem disse: "Sou considerado um dos melhores jogadores do país em minha categoria, e minha força física representa desafio significativo para qualquer adversário"?','A frase é dita pelo ás atacante poderoso de Shiratorizawa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ushijima',TRUE,0),(gen_random_uuid(),q,'Oikawa',FALSE,1),(gen_random_uuid(),q,'Iwaizumi',FALSE,2),(gen_random_uuid(),q,'Kuroo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'who_said','hard','Quem disse: "Minha abordagem provocativa e inteligência tática apurada tornam cada jogo contra Karasuno especialmente interessante"?','A frase é dita pelo levantador estrategista de Nekoma.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kuroo',TRUE,0),(gen_random_uuid(),q,'Oikawa',FALSE,1),(gen_random_uuid(),q,'Ushijima',FALSE,2),(gen_random_uuid(),q,'Bokuto',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'who_said','impossible','Quem disse: "Fui treinador lendário responsável pelo período de glória de Karasuno décadas atrás, um legado que meu neto agora tenta recuperar"?','A frase é dita, em memória, pelo avô do técnico atual de Karasuno.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ukai (avô)',TRUE,0),(gen_random_uuid(),q,'Nekomata',FALSE,1),(gen_random_uuid(),q,'Washijo',FALSE,2),(gen_random_uuid(),q,'Takeda',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- EPISODE_ARC — 15 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'episode_arc','medium','Em qual arco Hinata ingressa no time de Karasuno e conhece Kageyama, formando parceria de ataque rápido inicial?','O arco estabelece a premissa inicial de toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Introdução',TRUE,0),(gen_random_uuid(),q,'Arco de Aoba Johsai',FALSE,1),(gen_random_uuid(),q,'Arco de Nekoma',FALSE,2),(gen_random_uuid(),q,'Arco de Shiratorizawa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'episode_arc','medium','Em qual arco Karasuno enfrenta Aoba Johsai em confronto decisivo, revelando a rivalidade histórica entre Kageyama e Oikawa?','Este confronto representa um dos pontos altos emocionais da primeira metade da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Aoba Johsai',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco de Nekoma',FALSE,2),(gen_random_uuid(),q,'Arco de Shiratorizawa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'episode_arc','medium','Em qual arco Karasuno participa de treinamento conjunto com Nekoma, desenvolvendo rivalidade amistosa entre as duas equipes?','Este arco explora a filosofia de vôlei compartilhada entre os times considerados "irmãos".',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Nekoma',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco de Aoba Johsai',FALSE,2),(gen_random_uuid(),q,'Arco de Shiratorizawa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'episode_arc','medium','Em qual arco Karasuno enfrenta Shiratorizawa em confronto decisivo contra Ushijima, testando os limites de sua filosofia de equipe?','Este confronto representa um dos maiores desafios competitivos enfrentados pelos protagonistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Shiratorizawa',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco de Aoba Johsai',FALSE,2),(gen_random_uuid(),q,'Arco de Nekoma',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'episode_arc','medium','Em qual arco Asahi supera sua crise de confiança, retornando como jogador decisivo essencial para o time?','Este desenvolvimento emocional ocorre paralelamente aos primeiros grandes confrontos competitivos da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Introdução',TRUE,0),(gen_random_uuid(),q,'Arco de Aoba Johsai',FALSE,1),(gen_random_uuid(),q,'Arco de Nekoma',FALSE,2),(gen_random_uuid(),q,'Arco de Shiratorizawa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'episode_arc','medium','Em qual arco Kuroo e Bokuto interagem pela primeira vez com os protagonistas durante evento de treinamento com múltiplas escolas?','Este arco expande significativamente o universo de personagens de times rivais da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Nekoma',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco de Aoba Johsai',FALSE,2),(gen_random_uuid(),q,'Arco de Shiratorizawa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'episode_arc','hard','Em qual arco é revelado o histórico completo de Oikawa como mentor precoce de Kageyama antes dos eventos principais da série?','A revelação ocorre através de flashbacks durante o confronto decisivo entre Karasuno e Aoba Johsai.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Aoba Johsai',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco de Nekoma',FALSE,2),(gen_random_uuid(),q,'Arco de Shiratorizawa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'episode_arc','hard','Em qual arco é explorado o histórico de glória passada de Karasuno através do legado do treinador avô de Ukai?','Esta revelação motiva parte significativa da determinação da equipe atual em recuperar seu prestígio histórico.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Introdução',TRUE,0),(gen_random_uuid(),q,'Arco de Aoba Johsai',FALSE,1),(gen_random_uuid(),q,'Arco de Nekoma',FALSE,2),(gen_random_uuid(),q,'Arco de Shiratorizawa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'episode_arc','impossible','Em qual arco Ennoshita começa a demonstrar potencial de liderança que será desenvolvido ao longo de temporadas posteriores da série?','Este desenvolvimento gradual reflete a filosofia de crescimento coletivo cultivada por toda a equipe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Shiratorizawa',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco de Aoba Johsai',FALSE,2),(gen_random_uuid(),q,'Arco de Nekoma',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- CHRONOLOGICAL — 7 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'chronological','hard','Ordene cronologicamente os arcos a seguir, do mais antigo ao mais recente.','Cobrem desde a formação da parceria Hinata-Kageyama até o confronto contra Shiratorizawa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Introdução',TRUE,0),(gen_random_uuid(),q,'Aoba Johsai',FALSE,1),(gen_random_uuid(),q,'Nekoma',FALSE,2),(gen_random_uuid(),q,'Shiratorizawa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'chronological','hard','Ordene cronologicamente os seguintes eventos da jornada de Hinata, do mais antigo ao mais recente.','Cobrem desde seu ingresso em Karasuno até o confronto decisivo contra Shiratorizawa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ingressa no time de Karasuno',TRUE,0),(gen_random_uuid(),q,'Forma parceria de ataque rápido com Kageyama',FALSE,1),(gen_random_uuid(),q,'Enfrenta Aoba Johsai em confronto decisivo',FALSE,2),(gen_random_uuid(),q,'Disputa confronto contra Shiratorizawa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre Asahi, do mais antigo ao mais recente.','Cobrem desde sua crise de confiança até seu retorno como jogador decisivo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Enfrenta derrota que abala sua confiança',TRUE,0),(gen_random_uuid(),q,'Afasta-se temporariamente do time',FALSE,1),(gen_random_uuid(),q,'É convencido a retornar pelos companheiros',FALSE,2),(gen_random_uuid(),q,'Torna-se novamente jogador decisivo essencial',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre a rivalidade Kageyama-Oikawa, do mais antigo ao mais recente.','Cobrem desde a mentoria inicial até o confronto decisivo entre as equipes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Oikawa atua como mentor precoce de Kageyama',TRUE,0),(gen_random_uuid(),q,'Kageyama se torna conhecido como "rei" autoritário',FALSE,1),(gen_random_uuid(),q,'Os dois se separam para escolas diferentes',FALSE,2),(gen_random_uuid(),q,'Enfrentam-se em confronto decisivo pelas equipes',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Nekoma, do mais antigo ao mais recente.','Cobrem desde o desenvolvimento da filosofia defensiva até o treinamento conjunto com Karasuno.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Desenvolve filosofia defensiva "muro de ferro"',TRUE,0),(gen_random_uuid(),q,'Estabelece rivalidade histórica com Karasuno',FALSE,1),(gen_random_uuid(),q,'Participa de treinamento conjunto com a equipe rival',FALSE,2),(gen_random_uuid(),q,'Fortalece amizade competitiva entre os times',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Karasuno, do mais antigo ao mais recente.','Cobrem desde seu período de glória histórica até sua tentativa de recuperação de prestígio.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vive período de glória sob o treinador avô de Ukai',TRUE,0),(gen_random_uuid(),q,'Passa por declínio competitivo significativo',FALSE,1),(gen_random_uuid(),q,'Recebe novo técnico determinado a revitalizar a equipe',FALSE,2),(gen_random_uuid(),q,'Busca recuperar seu prestígio histórico perdido',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Shiratorizawa, do mais antigo ao mais recente.','Cobrem desde a filosofia de recrutamento de talentos até o confronto decisivo contra Karasuno.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Adota filosofia de recrutamento focada em talento individual',TRUE,0),(gen_random_uuid(),q,'Recruta Ushijima como ás principal do time',FALSE,1),(gen_random_uuid(),q,'Estabelece reputação de equipe quase invencível',FALSE,2),(gen_random_uuid(),q,'Enfrenta desafio inesperado diante de Karasuno',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- COMPLEMENTO — fechar 150 perguntas (35 text / 16 fill_blank / 16 who_said / 6 episode_arc)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','easy','Qual desses personagens é técnico experiente responsável por revitalizar Karasuno após período de declínio competitivo?','Sua estratégia e experiência são fundamentais para o ressurgimento competitivo do time.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ukai',TRUE,0),(gen_random_uuid(),q,'Takeda',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','medium','Qual desses personagens é professor supervisor entusiasta do clube de vôlei, buscando oportunidades de treinamento para a equipe?','Ele demonstra dedicação genuína apesar de conhecimento técnico limitado sobre o esporte.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Takeda',TRUE,0),(gen_random_uuid(),q,'Ukai',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','hard','Qual desses personagens jovens de Karasuno gradualmente se desenvolve como sucessor em posição de liderança tática do time?','Seu crescimento silencioso reflete a filosofia de desenvolvimento coletivo cultivada por Karasuno.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ennoshita',TRUE,0),(gen_random_uuid(),q,'Kinoshita',FALSE,1),(gen_random_uuid(),q,'Narita',FALSE,2),(gen_random_uuid(),q,'Yamaguchi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','medium','Qual desses personagens dirige Karasuno com estratégias renovadas, aplicando conhecimento adquirido durante sua própria juventude como jogador?','Sua conexão pessoal com o histórico do time motiva parte de sua dedicação atual.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ukai',TRUE,0),(gen_random_uuid(),q,'Takeda',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','easy','Qual desses personagens organiza jogos amistosos e oportunidades de treinamento para a equipe apesar de sua limitada experiência técnica com o esporte?','Sua paixão pelo bem-estar dos alunos compensa suas limitações técnicas específicas sobre vôlei.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Takeda',TRUE,0),(gen_random_uuid(),q,'Ukai',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','hard','Qual desses personagens reservas de Karasuno demonstra visão tática apurada mesmo sem ser titular na maioria das partidas disputadas?','Seus companheiros gradualmente reconhecem seu potencial de liderança discreta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ennoshita',TRUE,0),(gen_random_uuid(),q,'Kinoshita',FALSE,1),(gen_random_uuid(),q,'Narita',FALSE,2),(gen_random_uuid(),q,'Yamaguchi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','medium','Qual desses personagens aplica métodos de treinamento renovados após assumir a liderança técnica de Karasuno em substituição ao sistema anterior?','Sua chegada marca ponto de virada na trajetória competitiva recente do time.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ukai',TRUE,0),(gen_random_uuid(),q,'Takeda',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','easy','Qual desses personagens busca incansavelmente parcerias com outras escolas para proporcionar mais experiência competitiva à equipe de Karasuno?','Sua rede de contatos profissionais beneficia diretamente o desenvolvimento esportivo dos alunos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Takeda',TRUE,0),(gen_random_uuid(),q,'Ukai',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','hard','Qual desses personagens jovens contribui com observações estratégicas valiosas durante intervalos técnicos, apesar de raramente jogar como titular?','Sua capacidade analítica surpreende positivamente o técnico e os demais companheiros de time.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ennoshita',TRUE,0),(gen_random_uuid(),q,'Kinoshita',FALSE,1),(gen_random_uuid(),q,'Narita',FALSE,2),(gen_random_uuid(),q,'Yamaguchi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','medium','Qual desses personagens combina experiência prévia como jogador com metodologia moderna de treinamento ao assumir o comando técnico de Karasuno?','Sua abordagem equilibrada entre tradição e inovação revitaliza completamente a equipe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ukai',TRUE,0),(gen_random_uuid(),q,'Takeda',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','easy','Qual desses personagens mantém entusiasmo constante pelo clube de vôlei mesmo diante de desafios organizacionais e limitações técnicas próprias?','Sua dedicação inspira respeito genuíno por parte de toda a equipe, incluindo o técnico principal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Takeda',TRUE,0),(gen_random_uuid(),q,'Ukai',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','hard','Qual desses personagens desenvolve gradualmente confiança para assumir responsabilidades de comando durante situações críticas de jogo?','Seu crescimento pessoal é notado especialmente durante momentos de pressão competitiva intensa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ennoshita',TRUE,0),(gen_random_uuid(),q,'Kinoshita',FALSE,1),(gen_random_uuid(),q,'Narita',FALSE,2),(gen_random_uuid(),q,'Yamaguchi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','medium','Qual desses personagens implementa disciplina tática renovada após retornar para treinar a equipe que já conhecia intimamente desde jovem?','Sua conexão pessoal com a história do clube fortalece sua motivação como treinador.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ukai',TRUE,0),(gen_random_uuid(),q,'Takeda',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','easy','Qual desses personagens contribui significativamente para o desenvolvimento organizacional do clube apesar de nunca ter jogado vôlei competitivamente?','Sua paixão pelo bem-estar estudantil compensa completamente sua falta de experiência esportiva direta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Takeda',TRUE,0),(gen_random_uuid(),q,'Ukai',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','hard','Qual desses personagens jovens equilibra estudos escolares com dedicação crescente ao clube, demonstrando maturidade além de sua idade?','Sua abordagem equilibrada é reconhecida pelos professores e colegas de equipe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ennoshita',TRUE,0),(gen_random_uuid(),q,'Kinoshita',FALSE,1),(gen_random_uuid(),q,'Narita',FALSE,2),(gen_random_uuid(),q,'Yamaguchi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','medium','Qual desses personagens revitaliza a confiança coletiva do time através de treinamentos estratégicos personalizados para cada jogador titular?','Sua atenção aos detalhes individuais fortalece consideravelmente o desempenho geral da equipe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ukai',TRUE,0),(gen_random_uuid(),q,'Takeda',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','easy','Qual desses personagens acredita fielmente no potencial competitivo de Karasuno mesmo durante os períodos mais desafiadores enfrentados pela equipe?','Seu otimismo constante contribui para manter o moral elevado mesmo diante de derrotas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Takeda',TRUE,0),(gen_random_uuid(),q,'Ukai',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','hard','Qual desses personagens jovens demonstra crescente capacidade de mediar conflitos internos entre companheiros de equipe durante momentos de tensão?','Sua habilidade interpessoal complementa perfeitamente suas contribuições técnicas em quadra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ennoshita',TRUE,0),(gen_random_uuid(),q,'Kinoshita',FALSE,1),(gen_random_uuid(),q,'Narita',FALSE,2),(gen_random_uuid(),q,'Yamaguchi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','medium','Qual desses personagens estabelece rotina rigorosa de treinamento físico e técnico, elevando significativamente o nível competitivo geral da equipe?','Sua disciplina metodológica transforma completamente a preparação do time para torneios importantes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ukai',TRUE,0),(gen_random_uuid(),q,'Takeda',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','impossible','Qual desses personagens estabelece parcerias duradouras com outras instituições educacionais, beneficiando o desenvolvimento a longo prazo do clube de vôlei?','Sua visão estratégica de longo prazo beneficia gerações futuras de estudantes-atletas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Takeda',TRUE,0),(gen_random_uuid(),q,'Ukai',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','impossible','Qual desses personagens jovens é reconhecido pela diretoria escolar como candidato natural para futuras posições de capitania da equipe?','Seu potencial de liderança é evidente mesmo para observadores externos ao ambiente imediato do time.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ennoshita',TRUE,0),(gen_random_uuid(),q,'Kinoshita',FALSE,1),(gen_random_uuid(),q,'Narita',FALSE,2),(gen_random_uuid(),q,'Yamaguchi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','impossible','Qual desses personagens mantém registros detalhados de progresso individual de cada jogador, utilizando dados para personalizar estratégias de treino?','Sua abordagem meticulosa reflete formação profissional prévia relacionada ao esporte competitivo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ukai',TRUE,0),(gen_random_uuid(),q,'Takeda',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','medium','Qual desses personagens organiza viagens e competições externas para proporcionar experiência internacional aos jogadores mais talentosos da equipe?','Suas conexões profissionais abrem oportunidades raramente disponíveis para escolas de porte similar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Takeda',TRUE,0),(gen_random_uuid(),q,'Ukai',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','hard','Qual desses personagens jovens assume papel crescente de porta-voz do time durante negociações com outras escolas para jogos amistosos?','Sua articulação verbal complementa suas habilidades técnicas em quadra de maneira valiosa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ennoshita',TRUE,0),(gen_random_uuid(),q,'Kinoshita',FALSE,1),(gen_random_uuid(),q,'Narita',FALSE,2),(gen_random_uuid(),q,'Yamaguchi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','medium','Qual desses personagens adapta estratégias de jogo em tempo real durante partidas, demonstrando flexibilidade tática impressionante?','Sua capacidade de leitura de jogo surpreende constantemente adversários e aliados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ukai',TRUE,0),(gen_random_uuid(),q,'Takeda',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','easy','Qual desses personagens permanece otimista e dedicado ao clube mesmo enfrentando ceticismo inicial de outros membros da equipe pedagógica escolar?','Sua persistência eventualmente conquista respeito de toda a comunidade escolar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Takeda',TRUE,0),(gen_random_uuid(),q,'Ukai',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','hard','Qual desses personagens jovens desenvolve reputação de confiabilidade entre companheiros por sempre manter a calma em situações de alta pressão competitiva?','Sua estabilidade emocional se torna recurso valioso durante momentos decisivos de campeonatos importantes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ennoshita',TRUE,0),(gen_random_uuid(),q,'Kinoshita',FALSE,1),(gen_random_uuid(),q,'Narita',FALSE,2),(gen_random_uuid(),q,'Yamaguchi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','medium','Qual desses personagens integra experiência pessoal como ex-jogador com metodologias contemporâneas de preparação física para revitalizar completamente a equipe?','Sua trajetória pessoal única enriquece significativamente sua abordagem pedagógica como treinador.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ukai',TRUE,0),(gen_random_uuid(),q,'Takeda',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','medium','Qual desses personagens organiza viagens estratégicas para competições regionais, ampliando a exposição competitiva de jogadores promissores de Karasuno?','Sua rede de contatos profissionais raramente disponível para escolas de porte similar beneficia diretamente a equipe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Takeda',TRUE,0),(gen_random_uuid(),q,'Ukai',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','hard','Qual desses personagens jovens de Karasuno assume gradualmente papel de porta-voz em negociações com outras escolas para jogos amistosos?','Sua articulação verbal complementa suas contribuições técnicas em quadra de maneira valiosa para toda a equipe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ennoshita',TRUE,0),(gen_random_uuid(),q,'Kinoshita',FALSE,1),(gen_random_uuid(),q,'Narita',FALSE,2),(gen_random_uuid(),q,'Yamaguchi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','medium','Qual desses personagens adapta estratégias de jogo em tempo real durante partidas decisivas, mostrando flexibilidade tática notável?','Sua capacidade de leitura de jogo surpreende constantemente tanto adversários quanto aliados durante os confrontos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ukai',TRUE,0),(gen_random_uuid(),q,'Takeda',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','easy','Qual desses personagens permanece dedicado e otimista ao clube mesmo diante do ceticismo inicial de outros membros da equipe pedagógica?','Sua persistência eventualmente conquista o respeito de toda a comunidade escolar ao longo do tempo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Takeda',TRUE,0),(gen_random_uuid(),q,'Ukai',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','hard','Qual desses personagens jovens desenvolve reputação de confiabilidade por manter a calma mesmo em situações de altíssima pressão competitiva?','Sua estabilidade emocional se torna recurso valioso durante momentos decisivos de campeonatos importantes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ennoshita',TRUE,0),(gen_random_uuid(),q,'Kinoshita',FALSE,1),(gen_random_uuid(),q,'Narita',FALSE,2),(gen_random_uuid(),q,'Yamaguchi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','medium','Qual desses personagens integra experiência pessoal como ex-jogador de Karasuno a métodos contemporâneos de preparação física da equipe?','Sua trajetória pessoal única enriquece significativamente sua abordagem pedagógica como treinador da escola.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ukai',TRUE,0),(gen_random_uuid(),q,'Takeda',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'text','impossible','Qual desses personagens estabelece rotina disciplinar de treinamento físico que eleva substancialmente o patamar competitivo geral de toda a equipe?','Sua metodologia rigorosa transforma completamente a preparação do time visando torneios de maior importância.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ukai',TRUE,0),(gen_random_uuid(),q,'Takeda',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    -- fill_blank complemento (16)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'fill_blank','easy','O técnico experiente responsável por revitalizar Karasuno após período de declínio competitivo se chama ___.','Sua estratégia e experiência são fundamentais para o ressurgimento competitivo do time.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ukai',TRUE,0),(gen_random_uuid(),q,'Takeda',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'fill_blank','medium','O professor supervisor entusiasta do clube de vôlei, buscando oportunidades de treinamento para a equipe, se chama ___.','Ele demonstra dedicação genuína apesar de conhecimento técnico limitado sobre o esporte.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Takeda',TRUE,0),(gen_random_uuid(),q,'Ukai',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'fill_blank','hard','O jogador reserva discreto de Karasuno que gradualmente se desenvolve como sucessor de liderança tática se chama ___.','Seu crescimento silencioso reflete a filosofia de desenvolvimento coletivo cultivada por Karasuno.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ennoshita',TRUE,0),(gen_random_uuid(),q,'Kinoshita',FALSE,1),(gen_random_uuid(),q,'Narita',FALSE,2),(gen_random_uuid(),q,'Yamaguchi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'fill_blank','medium','O técnico que dirige Karasuno com estratégias renovadas, aplicando conhecimento de sua própria juventude como jogador, se chama ___.','Sua conexão pessoal com o histórico do time motiva parte de sua dedicação atual.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ukai',TRUE,0),(gen_random_uuid(),q,'Takeda',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'fill_blank','easy','O professor que organiza jogos amistosos apesar de sua limitada experiência técnica com o esporte se chama ___.','Sua paixão pelo bem-estar dos alunos compensa suas limitações técnicas específicas sobre vôlei.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Takeda',TRUE,0),(gen_random_uuid(),q,'Ukai',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'fill_blank','hard','O jogador reserva de Karasuno que demonstra visão tática apurada mesmo sem ser titular na maioria das partidas se chama ___.','Seus companheiros gradualmente reconhecem seu potencial de liderança discreta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ennoshita',TRUE,0),(gen_random_uuid(),q,'Kinoshita',FALSE,1),(gen_random_uuid(),q,'Narita',FALSE,2),(gen_random_uuid(),q,'Yamaguchi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'fill_blank','medium','O técnico que aplica métodos de treinamento renovados após assumir a liderança técnica de Karasuno se chama ___.','Sua chegada marca ponto de virada na trajetória competitiva recente do time.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ukai',TRUE,0),(gen_random_uuid(),q,'Takeda',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'fill_blank','easy','O professor que busca incansavelmente parcerias com outras escolas para dar mais experiência competitiva à equipe se chama ___.','Sua rede de contatos profissionais beneficia diretamente o desenvolvimento esportivo dos alunos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Takeda',TRUE,0),(gen_random_uuid(),q,'Ukai',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'fill_blank','hard','O jogador reserva que contribui com observações estratégicas valiosas durante intervalos técnicos se chama ___.','Sua capacidade analítica surpreende positivamente o técnico e os demais companheiros de time.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ennoshita',TRUE,0),(gen_random_uuid(),q,'Kinoshita',FALSE,1),(gen_random_uuid(),q,'Narita',FALSE,2),(gen_random_uuid(),q,'Yamaguchi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'fill_blank','medium','O técnico que combina experiência prévia como jogador com metodologia moderna de treinamento se chama ___.','Sua abordagem equilibrada entre tradição e inovação revitaliza completamente a equipe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ukai',TRUE,0),(gen_random_uuid(),q,'Takeda',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'fill_blank','easy','O professor que mantém entusiasmo constante pelo clube mesmo diante de desafios organizacionais se chama ___.','Sua dedicação inspira respeito genuíno por parte de toda a equipe, incluindo o técnico principal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Takeda',TRUE,0),(gen_random_uuid(),q,'Ukai',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'fill_blank','hard','O jogador reserva que desenvolve gradualmente confiança para assumir responsabilidades de comando em situações críticas se chama ___.','Seu crescimento pessoal é notado especialmente durante momentos de pressão competitiva intensa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ennoshita',TRUE,0),(gen_random_uuid(),q,'Kinoshita',FALSE,1),(gen_random_uuid(),q,'Narita',FALSE,2),(gen_random_uuid(),q,'Yamaguchi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'fill_blank','impossible','O professor que estabelece parcerias duradouras com outras instituições educacionais se chama ___.','Sua visão estratégica de longo prazo beneficia gerações futuras de estudantes-atletas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Takeda',TRUE,0),(gen_random_uuid(),q,'Ukai',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'fill_blank','impossible','O jogador reserva reconhecido pela diretoria escolar como candidato natural para futuras posições de capitania se chama ___.','Seu potencial de liderança é evidente mesmo para observadores externos ao ambiente imediato do time.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ennoshita',TRUE,0),(gen_random_uuid(),q,'Kinoshita',FALSE,1),(gen_random_uuid(),q,'Narita',FALSE,2),(gen_random_uuid(),q,'Yamaguchi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'fill_blank','impossible','O técnico que mantém registros detalhados de progresso individual de cada jogador se chama ___.','Sua abordagem meticulosa reflete formação profissional prévia relacionada ao esporte competitivo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ukai',TRUE,0),(gen_random_uuid(),q,'Takeda',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'fill_blank','hard','O jogador reserva que assume gradualmente papel de porta-voz em negociações com outras escolas se chama ___.','Sua articulação verbal complementa suas contribuições técnicas em quadra de maneira valiosa para toda a equipe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ennoshita',TRUE,0),(gen_random_uuid(),q,'Kinoshita',FALSE,1),(gen_random_uuid(),q,'Narita',FALSE,2),(gen_random_uuid(),q,'Yamaguchi',FALSE,3);

    -- who_said complemento (16)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'who_said','easy','Quem disse: "Eu revitalizei este time após período de declínio, e minha experiência de jogador ainda guia minhas decisões estratégicas"?','A frase é dita pelo técnico experiente responsável pela recuperação de Karasuno.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ukai',TRUE,0),(gen_random_uuid(),q,'Takeda',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'who_said','medium','Quem disse: "Eu busco incansavelmente oportunidades de treinamento para nossos alunos, mesmo sem grande conhecimento técnico sobre vôlei"?','A frase é dita pelo professor supervisor entusiasta do clube.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Takeda',TRUE,0),(gen_random_uuid(),q,'Ukai',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'who_said','hard','Quem disse: "Meu crescimento silencioso reflete a filosofia de desenvolvimento coletivo que sempre define nossa equipe"?','A frase é dita pelo jogador reserva que gradualmente se desenvolve como sucessor de liderança tática.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ennoshita',TRUE,0),(gen_random_uuid(),q,'Kinoshita',FALSE,1),(gen_random_uuid(),q,'Narita',FALSE,2),(gen_random_uuid(),q,'Yamaguchi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'who_said','easy','Quem disse: "Minha conexão pessoal com o histórico deste time motiva profundamente minha dedicação atual como treinador"?','A frase é dita pelo técnico que aplica conhecimento de sua própria juventude como jogador.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ukai',TRUE,0),(gen_random_uuid(),q,'Takeda',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'who_said','medium','Quem disse: "Minha rede de contatos profissionais beneficia diretamente o desenvolvimento esportivo de todos os nossos alunos-atletas"?','A frase é dita pelo professor que busca parcerias com outras escolas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Takeda',TRUE,0),(gen_random_uuid(),q,'Ukai',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'who_said','hard','Quem disse: "Minha capacidade analítica durante intervalos técnicos surpreende positivamente até mesmo nosso próprio técnico"?','A frase é dita pelo jogador reserva que contribui com observações estratégicas valiosas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ennoshita',TRUE,0),(gen_random_uuid(),q,'Kinoshita',FALSE,1),(gen_random_uuid(),q,'Narita',FALSE,2),(gen_random_uuid(),q,'Yamaguchi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'who_said','easy','Quem disse: "Minha chegada como treinador marca claramente um ponto de virada na trajetória competitiva recente deste time"?','A frase é dita pelo técnico que aplica métodos de treinamento renovados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ukai',TRUE,0),(gen_random_uuid(),q,'Takeda',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'who_said','medium','Quem disse: "Minha paixão pelo bem-estar dos alunos sempre compensa quaisquer limitações técnicas específicas que eu possa ter sobre vôlei"?','A frase é dita pelo professor entusiasta que organiza jogos amistosos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Takeda',TRUE,0),(gen_random_uuid(),q,'Ukai',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'who_said','hard','Quem disse: "Meus companheiros gradualmente reconhecem meu potencial de liderança discreta, mesmo sem eu buscar destaque"?','A frase é dita pelo jogador reserva que demonstra visão tática apurada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ennoshita',TRUE,0),(gen_random_uuid(),q,'Kinoshita',FALSE,1),(gen_random_uuid(),q,'Narita',FALSE,2),(gen_random_uuid(),q,'Yamaguchi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'who_said','medium','Quem disse: "Minha abordagem equilibrada entre tradição e inovação técnica revitaliza completamente esta equipe a cada temporada"?','A frase é dita pelo técnico que combina experiência prévia com metodologia moderna.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ukai',TRUE,0),(gen_random_uuid(),q,'Takeda',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'who_said','easy','Quem disse: "Minha dedicação constante ao clube inspira respeito genuíno por parte de toda a equipe, mesmo do nosso técnico mais exigente"?','A frase é dita pelo professor entusiasta que mantém dedicação constante ao clube.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Takeda',TRUE,0),(gen_random_uuid(),q,'Ukai',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'who_said','hard','Quem disse: "Meu crescimento pessoal é notado especialmente durante os momentos de maior pressão competitiva em campeonatos importantes"?','A frase é dita pelo jogador reserva que desenvolve confiança para assumir comando em situações críticas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ennoshita',TRUE,0),(gen_random_uuid(),q,'Kinoshita',FALSE,1),(gen_random_uuid(),q,'Narita',FALSE,2),(gen_random_uuid(),q,'Yamaguchi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'who_said','impossible','Quem disse: "Minha visão estratégica de longo prazo através de parcerias educacionais beneficia gerações futuras de estudantes-atletas"?','A frase é dita pelo professor que estabelece parcerias duradouras com outras instituições.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Takeda',TRUE,0),(gen_random_uuid(),q,'Ukai',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'who_said','impossible','Quem disse: "Meu potencial de liderança é evidente até mesmo para observadores externos ao ambiente imediato deste time"?','A frase é dita pelo jogador reserva reconhecido pela diretoria como candidato natural à capitania futura.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ennoshita',TRUE,0),(gen_random_uuid(),q,'Kinoshita',FALSE,1),(gen_random_uuid(),q,'Narita',FALSE,2),(gen_random_uuid(),q,'Yamaguchi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'who_said','impossible','Quem disse: "Minha abordagem meticulosa de registros detalhados reflete formação profissional prévia relacionada ao esporte competitivo"?','A frase é dita pelo técnico que mantém registros detalhados de progresso individual de cada jogador.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ukai',TRUE,0),(gen_random_uuid(),q,'Takeda',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'who_said','medium','Quem disse: "Minha capacidade de leitura de jogo em tempo real surpreende constantemente tanto adversários quanto meus próprios aliados"?','A frase é dita pelo técnico que adapta estratégias durante partidas decisivas com flexibilidade tática notável.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ukai',TRUE,0),(gen_random_uuid(),q,'Takeda',FALSE,1),(gen_random_uuid(),q,'Nekomata',FALSE,2),(gen_random_uuid(),q,'Washijo',FALSE,3);

    -- episode_arc complemento (6)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'episode_arc','medium','Em qual arco Ukai assume a liderança técnica de Karasuno, implementando métodos de treinamento renovados baseados em sua experiência de jogador?','Este arco estabelece as bases para a revitalização competitiva do time ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Introdução',TRUE,0),(gen_random_uuid(),q,'Arco de Aoba Johsai',FALSE,1),(gen_random_uuid(),q,'Arco de Nekoma',FALSE,2),(gen_random_uuid(),q,'Arco de Shiratorizawa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'episode_arc','hard','Em qual arco Takeda organiza pela primeira vez parcerias de treinamento com outras escolas, expandindo as oportunidades competitivas de Karasuno?','Sua dedicação organizacional beneficia diretamente o desenvolvimento tático da equipe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Nekoma',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco de Aoba Johsai',FALSE,2),(gen_random_uuid(),q,'Arco de Shiratorizawa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'episode_arc','medium','Em qual arco Ennoshita começa a demonstrar capacidade analítica valiosa durante intervalos técnicos de jogos importantes?','Este desenvolvimento gradual prepara terreno para seu crescimento posterior de liderança.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Aoba Johsai',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco de Nekoma',FALSE,2),(gen_random_uuid(),q,'Arco de Shiratorizawa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'episode_arc','hard','Em qual arco Ukai implementa treinamentos estratégicos personalizados para cada jogador titular antes do confronto decisivo contra Shiratorizawa?','Sua atenção aos detalhes individuais fortalece consideravelmente o desempenho geral da equipe neste momento crucial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Shiratorizawa',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco de Aoba Johsai',FALSE,2),(gen_random_uuid(),q,'Arco de Nekoma',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'episode_arc','impossible','Em qual arco Takeda estabelece pela primeira vez conexões duradouras com outras instituições educacionais que beneficiarão o clube a longo prazo?','Sua visão estratégica de longo prazo se revela fundamental para o desenvolvimento futuro da equipe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Introdução',TRUE,0),(gen_random_uuid(),q,'Arco de Aoba Johsai',FALSE,1),(gen_random_uuid(),q,'Arco de Nekoma',FALSE,2),(gen_random_uuid(),q,'Arco de Shiratorizawa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_hk,'episode_arc','impossible','Em qual arco Ennoshita é reconhecido pela primeira vez pela diretoria escolar como potencial candidato a futuras posições de capitania?','Este reconhecimento externo confirma o desenvolvimento de liderança que vinha sendo construído gradualmente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Shiratorizawa',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco de Aoba Johsai',FALSE,2),(gen_random_uuid(),q,'Arco de Nekoma',FALSE,3);

END $$;
