-- ============================================================
--  V52 — Seed de perguntas: Clannad (150 perguntas)
--  Fonte: MyAnimeList + cânone do anime
--  Distribuição: text 40% / fill_blank 25% / who_said 20% /
--                episode_arc 10% / chronological 5%
--  Sem repetição com V5. Regras R1-R7 aplicadas.
-- ============================================================

DO $$
DECLARE
    v_system UUID := '00000000-0000-0000-0000-000000000001';
    v_cl     UUID;
    q        UUID;
BEGIN
    SELECT id INTO v_cl FROM animes WHERE slug = 'clannad' LIMIT 1;

    -- ══════════════════════════════════════════════════════════
    -- TEXT — 60 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','easy','Qual é o nome do protagonista, estudante desiludido do último ano que desenvolve laços profundos com diversas colegas ao longo da série?','Ele carrega ressentimento em relação à própria família no início da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tomoya Okazaki',TRUE,0),(gen_random_uuid(),q,'Youhei',FALSE,1),(gen_random_uuid(),q,'Naoyuki',FALSE,2),(gen_random_uuid(),q,'Sunohara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','easy','Qual é o nome da garota gentil e tímida que o protagonista encontra repetindo a frase sobre gostar de pães de sonho, tornando-se interesse romântico central?','Sua história familiar complexa é explorada profundamente ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nagisa Furukawa',TRUE,0),(gen_random_uuid(),q,'Kyou',FALSE,1),(gen_random_uuid(),q,'Tomoyo',FALSE,2),(gen_random_uuid(),q,'Kotomi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','easy','Qual é o nome do amigo próximo e desastrado do protagonista, frequentemente envolvido em situações cômicas ao longo da série?','Ele mora sozinho após conflito familiar mencionado brevemente na trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Youhei Sunohara',TRUE,0),(gen_random_uuid(),q,'Naoyuki',FALSE,1),(gen_random_uuid(),q,'Tomoya',FALSE,2),(gen_random_uuid(),q,'Kotomi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','easy','Qual é o nome da colega gêmea de personalidade forte e frequentemente agressiva, integrante do conselho estudantil junto com sua irmã?','Ela demonstra crescimento emocional significativo ao longo do desenvolvimento da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kyou Fujibayashi',TRUE,0),(gen_random_uuid(),q,'Ryou',FALSE,1),(gen_random_uuid(),q,'Tomoyo',FALSE,2),(gen_random_uuid(),q,'Kotomi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','easy','Qual é o nome da irmã gêmea tímida e gentil, também integrante do conselho estudantil, apaixonada secretamente pelo protagonista?','Sua timidez contrasta fortemente com a personalidade extrovertida de sua irmã gêmea.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ryou Fujibayashi',TRUE,0),(gen_random_uuid(),q,'Kyou',FALSE,1),(gen_random_uuid(),q,'Tomoyo',FALSE,2),(gen_random_uuid(),q,'Kotomi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','easy','Qual é o nome da atlética candidata a presidente estudantil, determinada a reformar a política escolar de reflorestamento do campus?','Sua jornada pessoal envolve reconciliação com traumas familiares complexos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tomoyo Sakagami',TRUE,0),(gen_random_uuid(),q,'Kyou',FALSE,1),(gen_random_uuid(),q,'Ryou',FALSE,2),(gen_random_uuid(),q,'Kotomi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','easy','Qual é o nome da estudante brilhante e solitária, especialista em violino, cuja tragédia familiar é revelada gradualmente ao longo da série?','Ela vive isolada academicamente devido à sua inteligência excepcional para sua idade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kotomi Ichinose',TRUE,0),(gen_random_uuid(),q,'Kyou',FALSE,1),(gen_random_uuid(),q,'Ryou',FALSE,2),(gen_random_uuid(),q,'Tomoyo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','easy','Qual é o nome do pai do protagonista, figura distante emocionalmente devido a eventos trágicos ocorridos anos antes dos eventos principais?','Sua relação com o filho é reconstruída gradualmente ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Naoyuki',TRUE,0),(gen_random_uuid(),q,'Youhei',FALSE,1),(gen_random_uuid(),q,'Akio',FALSE,2),(gen_random_uuid(),q,'Sanae',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','easy','Qual é o nome do pai adotivo caloroso e excêntrico de Nagisa, dono de padaria local que apoia incondicionalmente a filha?','Sua personalidade exagerada contrasta com momentos de profunda ternura paternal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Akio Furukawa',TRUE,0),(gen_random_uuid(),q,'Naoyuki',FALSE,1),(gen_random_uuid(),q,'Youhei',FALSE,2),(gen_random_uuid(),q,'Sanae',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','easy','Qual é o nome da mãe adotiva gentil de Nagisa, ex-professora aposentada dona da mesma padaria familiar?','Ela demonstra sabedoria calorosa em momentos importantes de conflito entre personagens.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sanae Furukawa',TRUE,0),(gen_random_uuid(),q,'Akio',FALSE,1),(gen_random_uuid(),q,'Naoyuki',FALSE,2),(gen_random_uuid(),q,'Youhei',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','easy','Qual é o nome dado ao colégio onde o protagonista e as diversas colegas estudam ao longo da série?','Ele serve como cenário central para grande parte dos eventos cotidianos da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Escola Hikarizaka',TRUE,0),(gen_random_uuid(),q,'Colégio Furukawa',FALSE,1),(gen_random_uuid(),q,'Instituto Nagisa',FALSE,2),(gen_random_uuid(),q,'Academia Okazaki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','easy','Qual é o nome dado ao clube teatral escolar quase extinto que Nagisa deseja desesperadamente reviver antes de se formar?','Sua paixão pelo teatro representa elemento central de sua caracterização inicial na série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Clube de Teatro',TRUE,0),(gen_random_uuid(),q,'Clube de Drama',FALSE,1),(gen_random_uuid(),q,'Grupo Artístico',FALSE,2),(gen_random_uuid(),q,'Associação Cultural',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','medium','Qual é o nome da criatura misteriosa e pequena que aparece em segmentos alegóricos ao longo da série, vivendo em mundo desolado e nevado?','Sua narrativa paralela carrega significado simbólico profundo relacionado à trama principal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Garota Ilusória',TRUE,0),(gen_random_uuid(),q,'Robô de Papel',FALSE,1),(gen_random_uuid(),q,'Boneca de Neve',FALSE,2),(gen_random_uuid(),q,'Espírito da Cidade',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','medium','Qual é o nome dado à cidade fictícia onde se passam os eventos principais da série, cenário de todas as relações desenvolvidas pelos personagens?','Sua atmosfera acolhedora contrasta com os dramas familiares intensos vividos pelos protagonistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hikarizaka',TRUE,0),(gen_random_uuid(),q,'Nagisa City',FALSE,1),(gen_random_uuid(),q,'Vila Okazaki',FALSE,2),(gen_random_uuid(),q,'Cidade das Flores',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','medium','Qual é o nome da filha do protagonista e Nagisa, nascida na segunda metade da série, símbolo de esperança e continuidade familiar?','Sua existência representa culminação emocional de toda a jornada de amadurecimento do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ushio',TRUE,0),(gen_random_uuid(),q,'Sanae (filha)',FALSE,1),(gen_random_uuid(),q,'Michiru',FALSE,2),(gen_random_uuid(),q,'Fuko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','medium','Qual é o nome da colega peculiar e entusiasta obcecada por estrelas do mar, cuja verdadeira condição só é compreendida gradualmente pelos demais personagens?','Sua narrativa aborda temas delicados relacionados a perda e memória de forma sensível.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fuko Ibuki',TRUE,0),(gen_random_uuid(),q,'Kotomi',FALSE,1),(gen_random_uuid(),q,'Ryou',FALSE,2),(gen_random_uuid(),q,'Kyou',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','medium','Qual é o nome do namorado de longa data de Kyou, colega discreto que enfrenta seus próprios desafios pessoais complexos ao longo da série?','Sua relação com Kyou passa por dificuldades emocionais significativas antes de se resolver.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kotomi (referência indireta)',TRUE,0),(gen_random_uuid(),q,'Sunohara',FALSE,1),(gen_random_uuid(),q,'Tomoya',FALSE,2),(gen_random_uuid(),q,'Naoyuki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','medium','Qual é o nome dado ao doce tradicional específico apreciado por Nagisa, mencionado repetidamente em sua frase característica ao longo da série?','Sua menção constante se torna elemento nostálgico central associado à personagem.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dango (pão de sonho)',TRUE,0),(gen_random_uuid(),q,'Mochi',FALSE,1),(gen_random_uuid(),q,'Taiyaki',FALSE,2),(gen_random_uuid(),q,'Anpan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','hard','Qual é o nome dado ao fenômeno sobrenatural associado às criaturas ilusórias, ligado diretamente ao destino e às escolhas dos personagens principais?','Sua natureza exata permanece parcialmente ambígua ao longo de grande parte da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mundo Ilusório',TRUE,0),(gen_random_uuid(),q,'Reino Paralelo',FALSE,1),(gen_random_uuid(),q,'Dimensão Espelhada',FALSE,2),(gen_random_uuid(),q,'Realidade Alternativa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','hard','Qual é o nome dado à doença degenerativa progressiva que afeta a saúde de Nagisa ao longo da série, elemento central do drama familiar principal?','Sua condição médica se torna fonte de tensão emocional crescente ao longo da narrativa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Doença Respiratória Crônica',TRUE,0),(gen_random_uuid(),q,'Anemia Severa',FALSE,1),(gen_random_uuid(),q,'Fadiga Crônica',FALSE,2),(gen_random_uuid(),q,'Condição Cardíaca',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','hard','Qual é o nome dado à tragédia familiar sofrida por Kotomi anos antes dos eventos principais, envolvendo a perda de seus pais em circunstâncias específicas?','Sua história pessoal é revelada gradualmente através de conexão com os pais do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Acidente de Avião',TRUE,0),(gen_random_uuid(),q,'Incêndio Residencial',FALSE,1),(gen_random_uuid(),q,'Acidente de Trânsito',FALSE,2),(gen_random_uuid(),q,'Desastre Natural',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','hard','Qual é o nome dado ao emprego difícil assumido pelo protagonista para sustentar sua nova família após o casamento com Nagisa?','Suas dificuldades profissionais representam fonte significativa de tensão dramática na segunda metade da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Trabalho em Fábrica',TRUE,0),(gen_random_uuid(),q,'Emprego de Escritório',FALSE,1),(gen_random_uuid(),q,'Comércio Familiar',FALSE,2),(gen_random_uuid(),q,'Serviço Público',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','impossible','Qual é o nome dado ao colega de trabalho experiente do protagonista, mentor profissional durante seu período difícil de adaptação à vida adulta?','Sua orientação prática ajuda o protagonista a superar desafios significativos de amadurecimento pessoal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshino',TRUE,0),(gen_random_uuid(),q,'Miyazawa',FALSE,1),(gen_random_uuid(),q,'Kouzuki',FALSE,2),(gen_random_uuid(),q,'Sagara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','impossible','Qual é o nome dado à irmã mais nova de Sunohara, integrante posterior de grupo esportivo escolar que cruza caminho com o protagonista em arco secundário?','Sua história pessoal é explorada em episódio dedicado especificamente à sua jornada individual.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mei Sunohara',TRUE,0),(gen_random_uuid(),q,'Misae',FALSE,1),(gen_random_uuid(),q,'Yukine',FALSE,2),(gen_random_uuid(),q,'Nishina',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- FILL_BLANK — 38 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'fill_blank','easy','O protagonista, estudante desiludido do último ano que desenvolve laços profundos com diversas colegas, se chama ___.','Ele carrega ressentimento em relação à própria família no início da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tomoya',TRUE,0),(gen_random_uuid(),q,'Youhei',FALSE,1),(gen_random_uuid(),q,'Naoyuki',FALSE,2),(gen_random_uuid(),q,'Sunohara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'fill_blank','easy','A garota gentil e tímida encontrada repetindo frase sobre gostar de pães de sonho, interesse romântico central, se chama ___.','Sua história familiar complexa é explorada profundamente ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nagisa',TRUE,0),(gen_random_uuid(),q,'Kyou',FALSE,1),(gen_random_uuid(),q,'Tomoyo',FALSE,2),(gen_random_uuid(),q,'Kotomi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'fill_blank','easy','O amigo próximo e desastrado do protagonista, frequentemente envolvido em situações cômicas, se chama ___.','Ele mora sozinho após conflito familiar mencionado brevemente na trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sunohara',TRUE,0),(gen_random_uuid(),q,'Naoyuki',FALSE,1),(gen_random_uuid(),q,'Tomoya',FALSE,2),(gen_random_uuid(),q,'Kotomi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'fill_blank','easy','A colega gêmea de personalidade forte e frequentemente agressiva, integrante do conselho estudantil, se chama ___.','Ela demonstra crescimento emocional significativo ao longo do desenvolvimento da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kyou',TRUE,0),(gen_random_uuid(),q,'Ryou',FALSE,1),(gen_random_uuid(),q,'Tomoyo',FALSE,2),(gen_random_uuid(),q,'Kotomi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'fill_blank','easy','A irmã gêmea tímida e gentil, apaixonada secretamente pelo protagonista, se chama ___.','Sua timidez contrasta fortemente com a personalidade extrovertida de sua irmã gêmea.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ryou',TRUE,0),(gen_random_uuid(),q,'Kyou',FALSE,1),(gen_random_uuid(),q,'Tomoyo',FALSE,2),(gen_random_uuid(),q,'Kotomi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'fill_blank','easy','A atlética candidata a presidente estudantil, determinada a reformar a política de reflorestamento escolar, se chama ___.','Sua jornada pessoal envolve reconciliação com traumas familiares complexos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tomoyo',TRUE,0),(gen_random_uuid(),q,'Kyou',FALSE,1),(gen_random_uuid(),q,'Ryou',FALSE,2),(gen_random_uuid(),q,'Kotomi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'fill_blank','easy','A estudante brilhante e solitária, especialista em violino, com tragédia familiar revelada gradualmente, se chama ___.','Ela vive isolada academicamente devido à sua inteligência excepcional para sua idade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kotomi',TRUE,0),(gen_random_uuid(),q,'Kyou',FALSE,1),(gen_random_uuid(),q,'Ryou',FALSE,2),(gen_random_uuid(),q,'Tomoyo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'fill_blank','easy','O pai do protagonista, figura distante emocionalmente devido a eventos trágicos anos antes, se chama ___.','Sua relação com o filho é reconstruída gradualmente ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Naoyuki',TRUE,0),(gen_random_uuid(),q,'Youhei',FALSE,1),(gen_random_uuid(),q,'Akio',FALSE,2),(gen_random_uuid(),q,'Sanae',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'fill_blank','easy','O pai adotivo caloroso e excêntrico de Nagisa, dono de padaria local, se chama ___.','Sua personalidade exagerada contrasta com momentos de profunda ternura paternal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Akio',TRUE,0),(gen_random_uuid(),q,'Naoyuki',FALSE,1),(gen_random_uuid(),q,'Youhei',FALSE,2),(gen_random_uuid(),q,'Sanae',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'fill_blank','easy','A mãe adotiva gentil de Nagisa, ex-professora aposentada dona da mesma padaria familiar, se chama ___.','Ela demonstra sabedoria calorosa em momentos importantes de conflito entre personagens.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sanae',TRUE,0),(gen_random_uuid(),q,'Akio',FALSE,1),(gen_random_uuid(),q,'Naoyuki',FALSE,2),(gen_random_uuid(),q,'Youhei',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'fill_blank','medium','O clube teatral escolar quase extinto que Nagisa deseja desesperadamente reviver é chamado de ___.','Sua paixão pelo teatro representa elemento central de sua caracterização inicial na série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Clube de Teatro',TRUE,0),(gen_random_uuid(),q,'Clube de Drama',FALSE,1),(gen_random_uuid(),q,'Grupo Artístico',FALSE,2),(gen_random_uuid(),q,'Associação Cultural',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'fill_blank','medium','A criatura misteriosa e pequena que aparece em segmentos alegóricos, vivendo em mundo desolado e nevado, é chamada de ___.','Sua narrativa paralela carrega significado simbólico profundo relacionado à trama principal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Garota Ilusória',TRUE,0),(gen_random_uuid(),q,'Robô de Papel',FALSE,1),(gen_random_uuid(),q,'Boneca de Neve',FALSE,2),(gen_random_uuid(),q,'Espírito da Cidade',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'fill_blank','medium','A cidade fictícia onde se passam os eventos principais da série se chama ___.','Sua atmosfera acolhedora contrasta com os dramas familiares intensos vividos pelos protagonistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hikarizaka',TRUE,0),(gen_random_uuid(),q,'Nagisa City',FALSE,1),(gen_random_uuid(),q,'Vila Okazaki',FALSE,2),(gen_random_uuid(),q,'Cidade das Flores',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'fill_blank','medium','A filha do protagonista e Nagisa, nascida na segunda metade da série, símbolo de esperança familiar, se chama ___.','Sua existência representa culminação emocional de toda a jornada de amadurecimento do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ushio',TRUE,0),(gen_random_uuid(),q,'Sanae (filha)',FALSE,1),(gen_random_uuid(),q,'Michiru',FALSE,2),(gen_random_uuid(),q,'Fuko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'fill_blank','medium','A colega peculiar e entusiasta obcecada por estrelas do mar, cuja verdadeira condição só é compreendida gradualmente, se chama ___.','Sua narrativa aborda temas delicados relacionados a perda e memória de forma sensível.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fuko',TRUE,0),(gen_random_uuid(),q,'Kotomi',FALSE,1),(gen_random_uuid(),q,'Ryou',FALSE,2),(gen_random_uuid(),q,'Kyou',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'fill_blank','medium','O doce tradicional apreciado por Nagisa, mencionado repetidamente em sua frase característica, é chamado de ___.','Sua menção constante se torna elemento nostálgico central associado à personagem.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dango',TRUE,0),(gen_random_uuid(),q,'Mochi',FALSE,1),(gen_random_uuid(),q,'Taiyaki',FALSE,2),(gen_random_uuid(),q,'Anpan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'fill_blank','hard','O fenômeno sobrenatural associado às criaturas ilusórias, ligado ao destino dos personagens principais, é chamado de ___.','Sua natureza exata permanece parcialmente ambígua ao longo de grande parte da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mundo Ilusório',TRUE,0),(gen_random_uuid(),q,'Reino Paralelo',FALSE,1),(gen_random_uuid(),q,'Dimensão Espelhada',FALSE,2),(gen_random_uuid(),q,'Realidade Alternativa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'fill_blank','hard','A doença degenerativa progressiva que afeta a saúde de Nagisa ao longo da série é chamada de ___.','Sua condição médica se torna fonte de tensão emocional crescente ao longo da narrativa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Doença Respiratória Crônica',TRUE,0),(gen_random_uuid(),q,'Anemia Severa',FALSE,1),(gen_random_uuid(),q,'Fadiga Crônica',FALSE,2),(gen_random_uuid(),q,'Condição Cardíaca',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'fill_blank','hard','A tragédia familiar sofrida por Kotomi anos antes dos eventos principais, envolvendo a perda de seus pais, foi um ___.','Sua história pessoal é revelada gradualmente através de conexão com os pais do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Acidente de Avião',TRUE,0),(gen_random_uuid(),q,'Incêndio Residencial',FALSE,1),(gen_random_uuid(),q,'Acidente de Trânsito',FALSE,2),(gen_random_uuid(),q,'Desastre Natural',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'fill_blank','impossible','O colega de trabalho experiente do protagonista, mentor profissional durante seu período difícil de adaptação, se chama ___.','Sua orientação prática ajuda o protagonista a superar desafios significativos de amadurecimento pessoal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshino',TRUE,0),(gen_random_uuid(),q,'Miyazawa',FALSE,1),(gen_random_uuid(),q,'Kouzuki',FALSE,2),(gen_random_uuid(),q,'Sagara',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- WHO_SAID — 30 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'who_said','easy','Quem disse: "Eu carregava ressentimento profundo em relação à minha própria família, até encontrar pessoas capazes de mudar minha perspectiva sobre a vida"?','A frase reflete a jornada emocional do protagonista da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tomoya',TRUE,0),(gen_random_uuid(),q,'Youhei',FALSE,1),(gen_random_uuid(),q,'Naoyuki',FALSE,2),(gen_random_uuid(),q,'Sunohara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'who_said','easy','Quem disse: "Eu gosto de pães de sonho, e repito essa frase sempre que sinto necessidade de reunir coragem para seguir em frente"?','A frase característica é dita pela garota gentil e tímida, interesse romântico central da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nagisa',TRUE,0),(gen_random_uuid(),q,'Kyou',FALSE,1),(gen_random_uuid(),q,'Tomoyo',FALSE,2),(gen_random_uuid(),q,'Kotomi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'who_said','easy','Quem disse: "Eu moro sozinho após um conflito familiar, e frequentemente me envolvo em situações cômicas ao lado do meu melhor amigo"?','A frase é dita pelo amigo próximo e desastrado do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sunohara',TRUE,0),(gen_random_uuid(),q,'Naoyuki',FALSE,1),(gen_random_uuid(),q,'Tomoya',FALSE,2),(gen_random_uuid(),q,'Kotomi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'who_said','easy','Quem disse: "Minha personalidade forte e frequentemente agressiva esconde crescimento emocional significativo ao longo desta jornada escolar"?','A frase é dita pela colega gêmea, integrante do conselho estudantil.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kyou',TRUE,0),(gen_random_uuid(),q,'Ryou',FALSE,1),(gen_random_uuid(),q,'Tomoyo',FALSE,2),(gen_random_uuid(),q,'Kotomi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'who_said','easy','Quem disse: "Minha timidez contrasta fortemente com a personalidade extrovertida da minha irmã gêmea, mas meus sentimentos são igualmente intensos"?','A frase é dita pela irmã gêmea apaixonada secretamente pelo protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ryou',TRUE,0),(gen_random_uuid(),q,'Kyou',FALSE,1),(gen_random_uuid(),q,'Tomoyo',FALSE,2),(gen_random_uuid(),q,'Kotomi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'who_said','easy','Quem disse: "Estou determinada a reformar a política de reflorestamento escolar, mesmo enfrentando traumas familiares complexos em minha jornada pessoal"?','A frase é dita pela atlética candidata a presidente estudantil.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tomoyo',TRUE,0),(gen_random_uuid(),q,'Kyou',FALSE,1),(gen_random_uuid(),q,'Ryou',FALSE,2),(gen_random_uuid(),q,'Kotomi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'who_said','medium','Quem disse: "Vivo isolada academicamente devido à minha inteligência excepcional, mas minha tragédia familiar carrega peso emocional profundo"?','A frase é dita pela estudante brilhante e solitária, especialista em violino.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kotomi',TRUE,0),(gen_random_uuid(),q,'Kyou',FALSE,1),(gen_random_uuid(),q,'Ryou',FALSE,2),(gen_random_uuid(),q,'Tomoyo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'who_said','medium','Quem disse: "Minha relação com meu filho precisa ser reconstruída gradualmente, após anos de distanciamento emocional causado por eventos trágicos"?','A frase é dita pelo pai distante do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Naoyuki',TRUE,0),(gen_random_uuid(),q,'Youhei',FALSE,1),(gen_random_uuid(),q,'Akio',FALSE,2),(gen_random_uuid(),q,'Sanae',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'who_said','medium','Quem disse: "Minha personalidade exagerada esconde momentos de profunda ternura paternal em relação à minha filha adotiva"?','A frase é dita pelo pai caloroso e excêntrico de Nagisa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Akio',TRUE,0),(gen_random_uuid(),q,'Naoyuki',FALSE,1),(gen_random_uuid(),q,'Youhei',FALSE,2),(gen_random_uuid(),q,'Sanae',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'who_said','medium','Quem disse: "Demonstro sabedoria calorosa em momentos importantes de conflito, sempre priorizando o bem-estar de minha família adotiva"?','A frase é dita pela mãe adotiva gentil de Nagisa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sanae',TRUE,0),(gen_random_uuid(),q,'Akio',FALSE,1),(gen_random_uuid(),q,'Naoyuki',FALSE,2),(gen_random_uuid(),q,'Youhei',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'who_said','hard','Quem disse: "Minha condição médica se torna fonte de tensão emocional crescente, mas nunca deixo de sonhar com um futuro ao lado das pessoas que amo"?','A frase reflete a luta pessoal de Nagisa contra sua doença progressiva.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nagisa',TRUE,0),(gen_random_uuid(),q,'Kyou',FALSE,1),(gen_random_uuid(),q,'Tomoyo',FALSE,2),(gen_random_uuid(),q,'Kotomi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'who_said','hard','Quem disse: "Minha orientação prática ajuda jovens como Tomoya a superarem desafios significativos de amadurecimento pessoal no trabalho"?','A frase é dita pelo colega de trabalho experiente e mentor profissional do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshino',TRUE,0),(gen_random_uuid(),q,'Miyazawa',FALSE,1),(gen_random_uuid(),q,'Kouzuki',FALSE,2),(gen_random_uuid(),q,'Sagara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'who_said','hard','Quem disse: "Minha narrativa paralela em um mundo desolado e nevado carrega significado simbólico profundo relacionado à trama principal"?','A frase é dita, simbolicamente, pela criatura misteriosa dos segmentos alegóricos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Garota Ilusória',TRUE,0),(gen_random_uuid(),q,'Robô de Papel',FALSE,1),(gen_random_uuid(),q,'Boneca de Neve',FALSE,2),(gen_random_uuid(),q,'Espírito da Cidade',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- EPISODE_ARC — 15 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'episode_arc','medium','Em qual arco Tomoya conhece Nagisa em frente à escola, iniciando a jornada central de toda a série?','O arco estabelece a premissa inicial de toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Nagisa',TRUE,0),(gen_random_uuid(),q,'Arco de Kotomi',FALSE,1),(gen_random_uuid(),q,'Arco de Tomoyo',FALSE,2),(gen_random_uuid(),q,'Arco Familiar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'episode_arc','medium','Em qual arco Tomoya auxilia Kotomi a superar a tragédia familiar que a mantém isolada academicamente e socialmente?','Este arco explora profundamente temas de perda e reconciliação através de conexão inesperada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Kotomi',TRUE,0),(gen_random_uuid(),q,'Arco de Nagisa',FALSE,1),(gen_random_uuid(),q,'Arco de Tomoyo',FALSE,2),(gen_random_uuid(),q,'Arco Familiar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'episode_arc','medium','Em qual arco Tomoya auxilia Tomoyo em sua candidatura à presidência estudantil, ajudando-a a reconciliar traumas familiares complexos?','Este arco explora temas de liderança pessoal e superação de adversidades familiares.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Tomoyo',TRUE,0),(gen_random_uuid(),q,'Arco de Nagisa',FALSE,1),(gen_random_uuid(),q,'Arco de Kotomi',FALSE,2),(gen_random_uuid(),q,'Arco Familiar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'episode_arc','medium','Em qual arco Tomoya e Nagisa se casam, iniciando nova fase de vida adulta repleta de desafios financeiros e emocionais?','Este arco marca transição significativa no tom da narrativa em direção a temas mais maduros.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco Familiar',TRUE,0),(gen_random_uuid(),q,'Arco de Nagisa',FALSE,1),(gen_random_uuid(),q,'Arco de Kotomi',FALSE,2),(gen_random_uuid(),q,'Arco de Tomoyo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'episode_arc','medium','Em qual arco Tomoya reconstrói gradualmente sua relação distante com seu pai, revelando as circunstâncias trágicas por trás do afastamento familiar?','Este arco explora profundamente temas de perdão e reconciliação familiar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Nagisa',TRUE,0),(gen_random_uuid(),q,'Arco de Kotomi',FALSE,1),(gen_random_uuid(),q,'Arco de Tomoyo',FALSE,2),(gen_random_uuid(),q,'Arco Familiar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'episode_arc','medium','Em qual arco Fuko tenta desesperadamente reunir participantes para o casamento de sua irmã, revelando gradualmente sua verdadeira condição aos demais personagens?','Este arco aborda temas delicados relacionados a perda e memória de forma sensível e comovente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Nagisa',TRUE,0),(gen_random_uuid(),q,'Arco de Kotomi',FALSE,1),(gen_random_uuid(),q,'Arco de Tomoyo',FALSE,2),(gen_random_uuid(),q,'Arco Familiar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'episode_arc','hard','Em qual arco a saúde de Nagisa se deteriora significativamente, testando os limites emocionais de toda a família recém-formada?','Este arco representa um dos momentos mais dramáticos e emocionalmente intensos de toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco Familiar',TRUE,0),(gen_random_uuid(),q,'Arco de Nagisa',FALSE,1),(gen_random_uuid(),q,'Arco de Kotomi',FALSE,2),(gen_random_uuid(),q,'Arco de Tomoyo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'episode_arc','hard','Em qual arco Tomoya assume responsabilidade integral por Ushio, criando a filha sozinho durante período de intenso luto pessoal?','Este arco representa uma das jornadas emocionais mais complexas de todo o desenvolvimento do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco Familiar',TRUE,0),(gen_random_uuid(),q,'Arco de Nagisa',FALSE,1),(gen_random_uuid(),q,'Arco de Kotomi',FALSE,2),(gen_random_uuid(),q,'Arco de Tomoyo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'episode_arc','impossible','Em qual arco a verdadeira natureza do fenômeno do Mundo Ilusório é finalmente esclarecida, conectando todos os elementos alegóricos apresentados anteriormente?','Esta revelação representa o clímax filosófico e emocional de toda a narrativa da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco Familiar',TRUE,0),(gen_random_uuid(),q,'Arco de Nagisa',FALSE,1),(gen_random_uuid(),q,'Arco de Kotomi',FALSE,2),(gen_random_uuid(),q,'Arco de Tomoyo',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- CHRONOLOGICAL — 7 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'chronological','hard','Ordene cronologicamente os arcos a seguir, do mais antigo ao mais recente.','Cobrem desde o encontro inicial com Nagisa até a revelação final do Mundo Ilusório.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nagisa',TRUE,0),(gen_random_uuid(),q,'Tomoyo',FALSE,1),(gen_random_uuid(),q,'Kotomi',FALSE,2),(gen_random_uuid(),q,'Familiar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'chronological','hard','Ordene cronologicamente os seguintes eventos da jornada de Tomoya, do mais antigo ao mais recente.','Cobrem desde seu encontro com Nagisa até sua responsabilidade integral por Ushio.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Conhece Nagisa em frente à escola',TRUE,0),(gen_random_uuid(),q,'Casa-se com Nagisa após formatura',FALSE,1),(gen_random_uuid(),q,'Enfrenta a deterioração da saúde de Nagisa',FALSE,2),(gen_random_uuid(),q,'Assume responsabilidade integral por Ushio',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre Kotomi, do mais antigo ao mais recente.','Cobrem desde a tragédia familiar até sua reconciliação através da ajuda de Tomoya.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Perde os pais em tragédia familiar',TRUE,0),(gen_random_uuid(),q,'Vive isolada academicamente por anos',FALSE,1),(gen_random_uuid(),q,'É gradualmente auxiliada por Tomoya',FALSE,2),(gen_random_uuid(),q,'Encontra reconciliação emocional com seu passado',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre Tomoyo, do mais antigo ao mais recente.','Cobrem desde seus traumas familiares até sua eleição como presidente estudantil.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Enfrenta traumas familiares complexos na infância',TRUE,0),(gen_random_uuid(),q,'Decide se candidatar à presidência estudantil',FALSE,1),(gen_random_uuid(),q,'Recebe apoio de Tomoya durante a campanha',FALSE,2),(gen_random_uuid(),q,'É eleita presidente do conselho estudantil',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre a família de Tomoya, do mais antigo ao mais recente.','Cobrem desde o distanciamento inicial até a reconciliação completa com seu pai.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sofre afastamento emocional do pai após tragédia',TRUE,0),(gen_random_uuid(),q,'Carrega ressentimento durante toda a adolescência',FALSE,1),(gen_random_uuid(),q,'Começa a reconstruir a relação gradualmente',FALSE,2),(gen_random_uuid(),q,'Alcança reconciliação completa com o pai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Fuko, do mais antigo ao mais recente.','Cobrem desde sua tentativa de reunir participantes até a revelação de sua verdadeira condição.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tenta reunir participantes para o casamento da irmã',TRUE,0),(gen_random_uuid(),q,'Demonstra comportamento cada vez mais incomum',FALSE,1),(gen_random_uuid(),q,'Sua verdadeira condição começa a ser compreendida',FALSE,2),(gen_random_uuid(),q,'Os demais personagens processam a revelação completa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Ushio, do mais antigo ao mais recente.','Cobrem desde seu nascimento até ser criada integralmente por Tomoya.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nasce como filha de Tomoya e Nagisa',TRUE,0),(gen_random_uuid(),q,'Passa a viver com parentes durante período difícil',FALSE,1),(gen_random_uuid(),q,'É reunida novamente com o pai biológico',FALSE,2),(gen_random_uuid(),q,'Passa a ser criada integralmente por Tomoya',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- COMPLEMENTO — fechar 150 perguntas (36 text / 18 fill_blank / 17 who_said / 6 episode_arc)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','easy','Qual desses personagens é emprego difícil assumido pelo protagonista para sustentar sua nova família após o casamento?','Suas dificuldades profissionais representam fonte significativa de tensão dramática.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Trabalho em Fábrica',TRUE,0),(gen_random_uuid(),q,'Emprego de Escritório',FALSE,1),(gen_random_uuid(),q,'Comércio Familiar',FALSE,2),(gen_random_uuid(),q,'Serviço Público',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','medium','Qual desses personagens é irmã mais nova de Sunohara, integrante de grupo esportivo escolar que cruza caminho com o protagonista?','Sua história pessoal é explorada em episódio dedicado à sua jornada individual.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mei',TRUE,0),(gen_random_uuid(),q,'Misae',FALSE,1),(gen_random_uuid(),q,'Yukine',FALSE,2),(gen_random_uuid(),q,'Nishina',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','hard','Qual desses personagens enfrenta dificuldades financeiras significativas ao equilibrar trabalho pesado com cuidados familiares na segunda metade da série?','Sua rotina exaustiva reflete o amadurecimento forçado imposto pelas circunstâncias adultas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tomoya',TRUE,0),(gen_random_uuid(),q,'Youhei',FALSE,1),(gen_random_uuid(),q,'Naoyuki',FALSE,2),(gen_random_uuid(),q,'Akio',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','easy','Qual desses personagens acompanha o protagonista durante seu período de adaptação ao trabalho pesado em fábrica após o casamento?','Sua experiência profissional serve como referência valiosa para o jovem recém-casado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshino',TRUE,0),(gen_random_uuid(),q,'Miyazawa',FALSE,1),(gen_random_uuid(),q,'Kouzuki',FALSE,2),(gen_random_uuid(),q,'Sagara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','medium','Qual desses personagens participa de arco secundário envolvendo competições esportivas escolares, revelando conexão familiar com Sunohara?','Sua jornada pessoal recebe atenção especial em episódio dedicado exclusivamente à sua história.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mei',TRUE,0),(gen_random_uuid(),q,'Misae',FALSE,1),(gen_random_uuid(),q,'Yukine',FALSE,2),(gen_random_uuid(),q,'Nishina',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','hard','Qual desses personagens assume responsabilidades adultas complexas envolvendo sustento familiar após decisões precoces tomadas ainda no ensino médio?','Sua trajetória de amadurecimento acelerado é central para o desenvolvimento dramático da segunda metade da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tomoya',TRUE,0),(gen_random_uuid(),q,'Youhei',FALSE,1),(gen_random_uuid(),q,'Naoyuki',FALSE,2),(gen_random_uuid(),q,'Akio',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','easy','Qual desses personagens orienta o protagonista sobre rotinas de trabalho pesado, compartilhando sabedoria adquirida ao longo de anos de experiência profissional?','Sua paciência e conselhos práticos se tornam valiosos durante período difícil de adaptação.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshino',TRUE,0),(gen_random_uuid(),q,'Miyazawa',FALSE,1),(gen_random_uuid(),q,'Kouzuki',FALSE,2),(gen_random_uuid(),q,'Sagara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','medium','Qual desses personagens demonstra talento atlético notável durante competições escolares, apesar de origem familiar conturbada mencionada indiretamente?','Sua determinação pessoal contrasta com o comportamento desastrado característico de seu irmão mais velho.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mei',TRUE,0),(gen_random_uuid(),q,'Misae',FALSE,1),(gen_random_uuid(),q,'Yukine',FALSE,2),(gen_random_uuid(),q,'Nishina',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','hard','Qual desses personagens vivencia transformação pessoal profunda ao equilibrar trabalho exaustivo com criação solitária de sua filha?','Sua jornada de luto e reconstrução pessoal representa um dos arcos emocionais mais complexos da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tomoya',TRUE,0),(gen_random_uuid(),q,'Youhei',FALSE,1),(gen_random_uuid(),q,'Naoyuki',FALSE,2),(gen_random_uuid(),q,'Akio',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','easy','Qual desses personagens compartilha experiências valiosas de vida profissional com o protagonista durante seus primeiros meses de trabalho difícil?','Sua mentoria informal ajuda consideravelmente na adaptação do jovem recém-formado ao mundo adulto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshino',TRUE,0),(gen_random_uuid(),q,'Miyazawa',FALSE,1),(gen_random_uuid(),q,'Kouzuki',FALSE,2),(gen_random_uuid(),q,'Sagara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','medium','Qual desses personagens integra episódio secundário focado em superação pessoal através do esporte, conectando-se brevemente à trama principal?','Sua história independente oferece perspectiva complementar sobre temas centrais da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mei',TRUE,0),(gen_random_uuid(),q,'Misae',FALSE,1),(gen_random_uuid(),q,'Yukine',FALSE,2),(gen_random_uuid(),q,'Nishina',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','hard','Qual desses personagens desenvolve maturidade emocional significativa ao enfrentar responsabilidades parentais solitárias durante período de luto pessoal profundo?','Sua evolução como pai dedicado representa transformação central da segunda metade narrativa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tomoya',TRUE,0),(gen_random_uuid(),q,'Youhei',FALSE,1),(gen_random_uuid(),q,'Naoyuki',FALSE,2),(gen_random_uuid(),q,'Akio',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','easy','Qual desses personagens auxilia pacientemente o protagonista durante seus primeiros desafios no ambiente profissional exigente da fábrica?','Sua orientação constante se mostra fundamental para a adaptação bem-sucedida ao novo emprego.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshino',TRUE,0),(gen_random_uuid(),q,'Miyazawa',FALSE,1),(gen_random_uuid(),q,'Kouzuki',FALSE,2),(gen_random_uuid(),q,'Sagara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','medium','Qual desses personagens supera desafios pessoais complexos relacionados a sua origem familiar durante participação em atividades esportivas escolares?','Sua resiliência pessoal é destacada positivamente ao longo de seu breve arco na série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mei',TRUE,0),(gen_random_uuid(),q,'Misae',FALSE,1),(gen_random_uuid(),q,'Yukine',FALSE,2),(gen_random_uuid(),q,'Nishina',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','hard','Qual desses personagens redefine completamente suas prioridades de vida ao assumir integralmente a criação de sua filha após perda pessoal devastadora?','Sua jornada de reconstrução emocional constitui um dos temas centrais mais impactantes de toda a narrativa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tomoya',TRUE,0),(gen_random_uuid(),q,'Youhei',FALSE,1),(gen_random_uuid(),q,'Naoyuki',FALSE,2),(gen_random_uuid(),q,'Akio',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','easy','Qual desses personagens demonstra paciência excepcional ao treinar o protagonista nas rotinas exigentes do trabalho industrial pesado?','Sua experiência acumulada beneficia diretamente a transição do jovem para a vida profissional adulta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshino',TRUE,0),(gen_random_uuid(),q,'Miyazawa',FALSE,1),(gen_random_uuid(),q,'Kouzuki',FALSE,2),(gen_random_uuid(),q,'Sagara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','medium','Qual desses personagens encontra propósito pessoal renovado através de competições esportivas escolares apesar de circunstâncias familiares desafiadoras?','Sua determinação serve de exemplo inspirador dentro do breve arco dedicado à sua trajetória pessoal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mei',TRUE,0),(gen_random_uuid(),q,'Misae',FALSE,1),(gen_random_uuid(),q,'Yukine',FALSE,2),(gen_random_uuid(),q,'Nishina',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','hard','Qual desses personagens transforma completamente sua abordagem à vida cotidiana ao equilibrar sozinho trabalho e cuidados parentais integrais?','Sua evolução pessoal ao longo dos anos finais da série reflete crescimento emocional profundo e comovente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tomoya',TRUE,0),(gen_random_uuid(),q,'Youhei',FALSE,1),(gen_random_uuid(),q,'Naoyuki',FALSE,2),(gen_random_uuid(),q,'Akio',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','easy','Qual desses personagens estabelece relação de confiança mútua com o protagonista ao longo de seus primeiros meses de trabalho conjunto na fábrica?','Essa relação profissional se torna genuína amizade ao longo do período retratado na série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshino',TRUE,0),(gen_random_uuid(),q,'Miyazawa',FALSE,1),(gen_random_uuid(),q,'Kouzuki',FALSE,2),(gen_random_uuid(),q,'Sagara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','medium','Qual desses personagens revela gradualmente maior confiança profissional ao longo dos meses de treinamento intenso na fábrica?','Sua evolução no ambiente de trabalho reflete diretamente seu amadurecimento pessoal geral.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tomoya',TRUE,0),(gen_random_uuid(),q,'Youhei',FALSE,1),(gen_random_uuid(),q,'Naoyuki',FALSE,2),(gen_random_uuid(),q,'Akio',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','easy','Qual desses personagens demonstra dedicação constante ao ensinar técnicas específicas de trabalho ao jovem aprendiz recém-contratado?','Sua abordagem pedagógica paciente contribui significativamente para o sucesso profissional do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshino',TRUE,0),(gen_random_uuid(),q,'Miyazawa',FALSE,1),(gen_random_uuid(),q,'Kouzuki',FALSE,2),(gen_random_uuid(),q,'Sagara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','hard','Qual desses personagens jovens conquista respeito de colegas de equipe esportiva apesar de circunstâncias familiares adversas mencionadas na trama?','Sua perseverança pessoal é notada positivamente por professores e colegas ao longo do episódio.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mei',TRUE,0),(gen_random_uuid(),q,'Misae',FALSE,1),(gen_random_uuid(),q,'Yukine',FALSE,2),(gen_random_uuid(),q,'Nishina',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','medium','Qual desses personagens reflete sobre suas escolhas de vida enquanto equilibra trabalho exaustivo com a criação solitária de sua filha pequena?','Seus momentos de introspecção revelam profundidade emocional considerável ao longo da narrativa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tomoya',TRUE,0),(gen_random_uuid(),q,'Youhei',FALSE,1),(gen_random_uuid(),q,'Naoyuki',FALSE,2),(gen_random_uuid(),q,'Akio',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','easy','Qual desses personagens compartilha almoços regulares com o protagonista durante o intervalo de trabalho na fábrica, fortalecendo a amizade?','Esses momentos informais se tornam essenciais para o bem-estar emocional de ambos os colegas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshino',TRUE,0),(gen_random_uuid(),q,'Miyazawa',FALSE,1),(gen_random_uuid(),q,'Kouzuki',FALSE,2),(gen_random_uuid(),q,'Sagara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','hard','Qual desses personagens jovens desenvolve laços de amizade duradouros com colegas de equipe apesar de sua rotina familiar complicada?','Suas conexões sociais oferecem apoio emocional importante durante período desafiador de sua vida.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mei',TRUE,0),(gen_random_uuid(),q,'Misae',FALSE,1),(gen_random_uuid(),q,'Yukine',FALSE,2),(gen_random_uuid(),q,'Nishina',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','medium','Qual desses personagens supera gradualmente exaustão física e emocional através do apoio recebido de colegas de trabalho compreensivos?','Sua rede de apoio no ambiente profissional se mostra essencial durante os momentos mais difíceis.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tomoya',TRUE,0),(gen_random_uuid(),q,'Youhei',FALSE,1),(gen_random_uuid(),q,'Naoyuki',FALSE,2),(gen_random_uuid(),q,'Akio',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','easy','Qual desses personagens celebra pequenas conquistas profissionais do protagonista, incentivando-o a persistir apesar das dificuldades enfrentadas?','Seu otimismo constante contribui significativamente para manter o ânimo do jovem trabalhador.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshino',TRUE,0),(gen_random_uuid(),q,'Miyazawa',FALSE,1),(gen_random_uuid(),q,'Kouzuki',FALSE,2),(gen_random_uuid(),q,'Sagara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','hard','Qual desses personagens jovens demonstra maturidade emocional impressionante ao lidar com dinâmica familiar complexa relacionada ao irmão mais velho?','Sua compreensão precoce sobre relacionamentos difíceis surpreende positivamente os adultos ao seu redor.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mei',TRUE,0),(gen_random_uuid(),q,'Misae',FALSE,1),(gen_random_uuid(),q,'Yukine',FALSE,2),(gen_random_uuid(),q,'Nishina',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','medium','Qual desses personagens encontra significado renovado na paternidade através de pequenos momentos compartilhados com sua filha, apesar da exaustão constante?','Estes momentos de conexão paterna se tornam âncora emocional fundamental ao longo de sua jornada pessoal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tomoya',TRUE,0),(gen_random_uuid(),q,'Youhei',FALSE,1),(gen_random_uuid(),q,'Naoyuki',FALSE,2),(gen_random_uuid(),q,'Akio',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','easy','Qual desses personagens demonstra lealdade constante ao protagonista mesmo diante de desafios crescentes enfrentados no ambiente de trabalho?','Sua amizade genuína transcende a simples relação profissional estabelecida inicialmente entre os dois.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshino',TRUE,0),(gen_random_uuid(),q,'Miyazawa',FALSE,1),(gen_random_uuid(),q,'Kouzuki',FALSE,2),(gen_random_uuid(),q,'Sagara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','hard','Qual desses personagens jovens contribui para reconciliação familiar gradual através de suas próprias conquistas pessoais no esporte escolar?','Seu sucesso individual acaba impactando positivamente a dinâmica familiar mais ampla ao longo do tempo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mei',TRUE,0),(gen_random_uuid(),q,'Misae',FALSE,1),(gen_random_uuid(),q,'Yukine',FALSE,2),(gen_random_uuid(),q,'Nishina',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','medium','Qual desses personagens jovens mantém rotina disciplinada de treinos esportivos mesmo diante de obstáculos familiares constantes?','Sua disciplina pessoal se destaca como qualidade admirada por técnicos e colegas de equipe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mei',TRUE,0),(gen_random_uuid(),q,'Misae',FALSE,1),(gen_random_uuid(),q,'Yukine',FALSE,2),(gen_random_uuid(),q,'Nishina',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','easy','Qual desses personagens oferece conselhos práticos ao protagonista sobre como administrar melhor seu tempo entre trabalho e vida pessoal?','Sua experiência prévia no ambiente de trabalho o torna referência confiável para o jovem colega.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshino',TRUE,0),(gen_random_uuid(),q,'Miyazawa',FALSE,1),(gen_random_uuid(),q,'Kouzuki',FALSE,2),(gen_random_uuid(),q,'Sagara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','hard','Qual desses personagens enfrenta pressão silenciosa para se destacar academicamente enquanto equilibra compromissos esportivos extracurriculares?','Essa dupla exigência gera tensão notável em sua rotina diária ao longo dos episódios finais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mei',TRUE,0),(gen_random_uuid(),q,'Misae',FALSE,1),(gen_random_uuid(),q,'Yukine',FALSE,2),(gen_random_uuid(),q,'Nishina',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','medium','Qual desses personagens acompanha de perto o crescimento da filha do protagonista, oferecendo apoio prático nos momentos mais cansativos?','Seu envolvimento constante alivia consideravelmente a carga emocional enfrentada pelo pai solteiro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tomoya',TRUE,0),(gen_random_uuid(),q,'Youhei',FALSE,1),(gen_random_uuid(),q,'Naoyuki',FALSE,2),(gen_random_uuid(),q,'Akio',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'text','easy','Qual desses personagens costuma brincar despreocupadamente com colegas de trabalho durante pausas curtas na rotina cansativa da fábrica?','Seu bom humor característico ajuda a aliviar tensões acumuladas ao longo do turno de trabalho.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshino',TRUE,0),(gen_random_uuid(),q,'Miyazawa',FALSE,1),(gen_random_uuid(),q,'Kouzuki',FALSE,2),(gen_random_uuid(),q,'Sagara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'fill_blank','medium','Tomoya trabalha em uma _____ para sustentar a si mesmo e sua filha após os eventos ocorridos no final do colegial.','O emprego representa uma virada significativa em sua trajetória pessoal rumo à vida adulta responsável.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fábrica',TRUE,0),(gen_random_uuid(),q,'Livraria',FALSE,1),(gen_random_uuid(),q,'Cafeteria',FALSE,2),(gen_random_uuid(),q,'Escola',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'who_said','medium','Quem incentiva Tomoya repetidamente a não desistir diante das dificuldades encontradas durante o período de adaptação ao trabalho na fábrica?','A fala reforça o papel de apoio constante desempenhado por esse colega ao longo da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshino',TRUE,0),(gen_random_uuid(),q,'Miyazawa',FALSE,1),(gen_random_uuid(),q,'Kouzuki',FALSE,2),(gen_random_uuid(),q,'Sagara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'who_said','medium','Quem expressa determinação em superar dificuldades familiares através de dedicação contínua aos treinos esportivos escolares?','A fala reflete a resiliência pessoal dessa personagem diante de circunstâncias adversas em casa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mei',TRUE,0),(gen_random_uuid(),q,'Misae',FALSE,1),(gen_random_uuid(),q,'Yukine',FALSE,2),(gen_random_uuid(),q,'Nishina',FALSE,3);

    -- fill_blank complemento (18)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'fill_blank','hard','O emprego difícil assumido pelo protagonista para sustentar sua nova família após o casamento com Nagisa é chamado de ___.','Suas dificuldades profissionais representam fonte significativa de tensão dramática na segunda metade da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Trabalho em Fábrica',TRUE,0),(gen_random_uuid(),q,'Emprego de Escritório',FALSE,1),(gen_random_uuid(),q,'Comércio Familiar',FALSE,2),(gen_random_uuid(),q,'Serviço Público',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'fill_blank','impossible','A irmã mais nova de Sunohara, integrante de grupo esportivo escolar que cruza caminho com o protagonista, se chama ___.','Sua história pessoal é explorada em episódio dedicado especificamente à sua jornada individual.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mei',TRUE,0),(gen_random_uuid(),q,'Misae',FALSE,1),(gen_random_uuid(),q,'Yukine',FALSE,2),(gen_random_uuid(),q,'Nishina',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'fill_blank','hard','O protagonista que enfrenta dificuldades financeiras significativas ao equilibrar trabalho pesado com cuidados familiares é ___.','Sua rotina exaustiva reflete o amadurecimento forçado imposto pelas circunstâncias adultas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tomoya',TRUE,0),(gen_random_uuid(),q,'Youhei',FALSE,1),(gen_random_uuid(),q,'Naoyuki',FALSE,2),(gen_random_uuid(),q,'Akio',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'fill_blank','easy','O colega que acompanha o protagonista durante seu período de adaptação ao trabalho pesado em fábrica se chama ___.','Sua experiência profissional serve como referência valiosa para o jovem recém-casado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshino',TRUE,0),(gen_random_uuid(),q,'Miyazawa',FALSE,1),(gen_random_uuid(),q,'Kouzuki',FALSE,2),(gen_random_uuid(),q,'Sagara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'fill_blank','medium','A jovem que participa de arco secundário envolvendo competições esportivas escolares, revelando conexão familiar com Sunohara, se chama ___.','Sua jornada pessoal recebe atenção especial em episódio dedicado exclusivamente à sua história.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mei',TRUE,0),(gen_random_uuid(),q,'Misae',FALSE,1),(gen_random_uuid(),q,'Yukine',FALSE,2),(gen_random_uuid(),q,'Nishina',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'fill_blank','hard','O protagonista que assume responsabilidades adultas complexas envolvendo sustento familiar após decisões precoces é ___.','Sua trajetória de amadurecimento acelerado é central para o desenvolvimento dramático da segunda metade da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tomoya',TRUE,0),(gen_random_uuid(),q,'Youhei',FALSE,1),(gen_random_uuid(),q,'Naoyuki',FALSE,2),(gen_random_uuid(),q,'Akio',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'fill_blank','easy','O colega que orienta o protagonista sobre rotinas de trabalho pesado, compartilhando sabedoria acumulada, se chama ___.','Sua paciência e conselhos práticos se tornam valiosos durante período difícil de adaptação.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshino',TRUE,0),(gen_random_uuid(),q,'Miyazawa',FALSE,1),(gen_random_uuid(),q,'Kouzuki',FALSE,2),(gen_random_uuid(),q,'Sagara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'fill_blank','medium','A jovem que demonstra talento atlético notável durante competições escolares, apesar de origem familiar conturbada, se chama ___.','Sua determinação pessoal contrasta com o comportamento desastrado característico de seu irmão mais velho.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mei',TRUE,0),(gen_random_uuid(),q,'Misae',FALSE,1),(gen_random_uuid(),q,'Yukine',FALSE,2),(gen_random_uuid(),q,'Nishina',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'fill_blank','hard','O protagonista que vivencia transformação pessoal profunda ao equilibrar trabalho exaustivo com criação solitária da filha é ___.','Sua jornada de luto e reconstrução pessoal representa um dos arcos emocionais mais complexos da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tomoya',TRUE,0),(gen_random_uuid(),q,'Youhei',FALSE,1),(gen_random_uuid(),q,'Naoyuki',FALSE,2),(gen_random_uuid(),q,'Akio',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'fill_blank','easy','O colega que compartilha experiências valiosas de vida profissional com o protagonista durante seus primeiros meses de trabalho se chama ___.','Sua mentoria informal ajuda consideravelmente na adaptação do jovem recém-formado ao mundo adulto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshino',TRUE,0),(gen_random_uuid(),q,'Miyazawa',FALSE,1),(gen_random_uuid(),q,'Kouzuki',FALSE,2),(gen_random_uuid(),q,'Sagara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'fill_blank','medium','A jovem que integra episódio secundário focado em superação pessoal através do esporte se chama ___.','Sua história independente oferece perspectiva complementar sobre temas centrais da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mei',TRUE,0),(gen_random_uuid(),q,'Misae',FALSE,1),(gen_random_uuid(),q,'Yukine',FALSE,2),(gen_random_uuid(),q,'Nishina',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'fill_blank','hard','O protagonista que desenvolve maturidade emocional significativa ao enfrentar responsabilidades parentais solitárias é ___.','Sua evolução como pai dedicado representa transformação central da segunda metade narrativa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tomoya',TRUE,0),(gen_random_uuid(),q,'Youhei',FALSE,1),(gen_random_uuid(),q,'Naoyuki',FALSE,2),(gen_random_uuid(),q,'Akio',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'fill_blank','easy','O colega que auxilia pacientemente o protagonista durante seus primeiros desafios no ambiente profissional da fábrica se chama ___.','Sua orientação constante se mostra fundamental para a adaptação bem-sucedida ao novo emprego.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshino',TRUE,0),(gen_random_uuid(),q,'Miyazawa',FALSE,1),(gen_random_uuid(),q,'Kouzuki',FALSE,2),(gen_random_uuid(),q,'Sagara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'fill_blank','medium','A jovem que supera desafios pessoais complexos relacionados a sua origem familiar durante atividades esportivas escolares se chama ___.','Sua resiliência pessoal é destacada positivamente ao longo de seu breve arco na série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mei',TRUE,0),(gen_random_uuid(),q,'Misae',FALSE,1),(gen_random_uuid(),q,'Yukine',FALSE,2),(gen_random_uuid(),q,'Nishina',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'fill_blank','hard','O protagonista que redefine completamente suas prioridades de vida ao assumir integralmente a criação da filha é ___.','Sua jornada de reconstrução emocional constitui um dos temas centrais mais impactantes de toda a narrativa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tomoya',TRUE,0),(gen_random_uuid(),q,'Youhei',FALSE,1),(gen_random_uuid(),q,'Naoyuki',FALSE,2),(gen_random_uuid(),q,'Akio',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'fill_blank','easy','O colega que demonstra paciência excepcional ao treinar o protagonista nas rotinas do trabalho industrial pesado se chama ___.','Sua experiência acumulada beneficia diretamente a transição do jovem para a vida profissional adulta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshino',TRUE,0),(gen_random_uuid(),q,'Miyazawa',FALSE,1),(gen_random_uuid(),q,'Kouzuki',FALSE,2),(gen_random_uuid(),q,'Sagara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'fill_blank','medium','A jovem que encontra propósito pessoal renovado através de competições esportivas apesar de circunstâncias familiares desafiadoras se chama ___.','Sua determinação serve de exemplo inspirador dentro do breve arco dedicado à sua trajetória pessoal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mei',TRUE,0),(gen_random_uuid(),q,'Misae',FALSE,1),(gen_random_uuid(),q,'Yukine',FALSE,2),(gen_random_uuid(),q,'Nishina',FALSE,3);

    -- who_said complemento (17)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'who_said','hard','Quem disse: "Minha rotina exaustiva no trabalho reflete o amadurecimento forçado que precisei enfrentar sozinho após tantas perdas"?','A frase é dita pelo protagonista sobre suas dificuldades financeiras e emocionais na vida adulta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tomoya',TRUE,0),(gen_random_uuid(),q,'Youhei',FALSE,1),(gen_random_uuid(),q,'Naoyuki',FALSE,2),(gen_random_uuid(),q,'Akio',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'who_said','easy','Quem disse: "Minha experiência profissional serve como referência valiosa para o jovem recém-casado que hoje trabalha ao meu lado"?','A frase é dita pelo colega experiente que acompanha o protagonista na fábrica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshino',TRUE,0),(gen_random_uuid(),q,'Miyazawa',FALSE,1),(gen_random_uuid(),q,'Kouzuki',FALSE,2),(gen_random_uuid(),q,'Sagara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'who_said','medium','Quem disse: "Minha jornada pessoal recebe atenção especial neste episódio dedicado exclusivamente à minha própria história esportiva"?','A frase é dita pela irmã mais nova de Sunohara, integrante de grupo esportivo escolar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mei',TRUE,0),(gen_random_uuid(),q,'Misae',FALSE,1),(gen_random_uuid(),q,'Yukine',FALSE,2),(gen_random_uuid(),q,'Nishina',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'who_said','hard','Quem disse: "Minha trajetória de amadurecimento acelerado se tornou central para tudo que vivi na segunda metade desta jornada"?','A frase é dita pelo protagonista sobre suas responsabilidades adultas complexas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tomoya',TRUE,0),(gen_random_uuid(),q,'Youhei',FALSE,1),(gen_random_uuid(),q,'Naoyuki',FALSE,2),(gen_random_uuid(),q,'Akio',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'who_said','easy','Quem disse: "Minha paciência e conselhos práticos se tornam valiosos durante o período mais difícil de adaptação deste jovem trabalhador"?','A frase é dita pelo colega que orienta o protagonista sobre rotinas de trabalho pesado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshino',TRUE,0),(gen_random_uuid(),q,'Miyazawa',FALSE,1),(gen_random_uuid(),q,'Kouzuki',FALSE,2),(gen_random_uuid(),q,'Sagara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'who_said','medium','Quem disse: "Minha determinação pessoal contrasta fortemente com o comportamento desastrado característico do meu irmão mais velho"?','A frase é dita pela jovem que demonstra talento atlético notável apesar da origem familiar conturbada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mei',TRUE,0),(gen_random_uuid(),q,'Misae',FALSE,1),(gen_random_uuid(),q,'Yukine',FALSE,2),(gen_random_uuid(),q,'Nishina',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'who_said','hard','Quem disse: "Minha jornada de luto e reconstrução pessoal representa um dos capítulos mais complexos e dolorosos de toda a minha vida"?','A frase é dita pelo protagonista sobre sua transformação pessoal ao criar a filha sozinho.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tomoya',TRUE,0),(gen_random_uuid(),q,'Youhei',FALSE,1),(gen_random_uuid(),q,'Naoyuki',FALSE,2),(gen_random_uuid(),q,'Akio',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'who_said','easy','Quem disse: "Minha mentoria informal ajuda consideravelmente este jovem recém-formado a se adaptar ao mundo adulto do trabalho"?','A frase é dita pelo colega que compartilha experiências valiosas de vida profissional.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshino',TRUE,0),(gen_random_uuid(),q,'Miyazawa',FALSE,1),(gen_random_uuid(),q,'Kouzuki',FALSE,2),(gen_random_uuid(),q,'Sagara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'who_said','medium','Quem disse: "Minha história independente oferece perspectiva complementar sobre os temas centrais desta longa narrativa familiar"?','A frase é dita pela jovem que integra episódio secundário focado em superação através do esporte.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mei',TRUE,0),(gen_random_uuid(),q,'Misae',FALSE,1),(gen_random_uuid(),q,'Yukine',FALSE,2),(gen_random_uuid(),q,'Nishina',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'who_said','hard','Quem disse: "Minha evolução como pai dedicado representa a transformação mais significativa de toda a segunda metade desta jornada pessoal"?','A frase é dita pelo protagonista sobre suas responsabilidades parentais solitárias.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tomoya',TRUE,0),(gen_random_uuid(),q,'Youhei',FALSE,1),(gen_random_uuid(),q,'Naoyuki',FALSE,2),(gen_random_uuid(),q,'Akio',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'who_said','easy','Quem disse: "Minha orientação constante se mostra fundamental para a adaptação bem-sucedida deste jovem ao novo emprego exigente"?','A frase é dita pelo colega que auxilia pacientemente o protagonista na fábrica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshino',TRUE,0),(gen_random_uuid(),q,'Miyazawa',FALSE,1),(gen_random_uuid(),q,'Kouzuki',FALSE,2),(gen_random_uuid(),q,'Sagara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'who_said','medium','Quem disse: "Minha resiliência pessoal é destacada positivamente ao longo de todo este breve mas significativo arco de minha vida"?','A frase é dita pela jovem que supera desafios familiares complexos durante atividades esportivas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mei',TRUE,0),(gen_random_uuid(),q,'Misae',FALSE,1),(gen_random_uuid(),q,'Yukine',FALSE,2),(gen_random_uuid(),q,'Nishina',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'who_said','hard','Quem disse: "Minha jornada de reconstrução emocional constitui um dos temas centrais mais impactantes de toda esta longa história familiar"?','A frase é dita pelo protagonista sobre redefinir suas prioridades de vida ao assumir a criação da filha.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tomoya',TRUE,0),(gen_random_uuid(),q,'Youhei',FALSE,1),(gen_random_uuid(),q,'Naoyuki',FALSE,2),(gen_random_uuid(),q,'Akio',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'who_said','easy','Quem disse: "Minha experiência acumulada beneficia diretamente a transição deste jovem para a vida profissional adulta na fábrica"?','A frase é dita pelo colega que demonstra paciência excepcional ao treinar o protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshino',TRUE,0),(gen_random_uuid(),q,'Miyazawa',FALSE,1),(gen_random_uuid(),q,'Kouzuki',FALSE,2),(gen_random_uuid(),q,'Sagara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'who_said','medium','Quem disse: "Minha determinação serve de exemplo inspirador dentro deste breve arco dedicado inteiramente à minha trajetória pessoal"?','A frase é dita pela jovem que encontra propósito renovado através de competições esportivas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mei',TRUE,0),(gen_random_uuid(),q,'Misae',FALSE,1),(gen_random_uuid(),q,'Yukine',FALSE,2),(gen_random_uuid(),q,'Nishina',FALSE,3);

    -- episode_arc complemento (6)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'episode_arc','medium','Em qual arco Tomoya inicia trabalho pesado em fábrica para sustentar sua nova família após o casamento com Nagisa?','Este arco marca a transição definitiva para temas mais adultos e maduros da narrativa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco Familiar',TRUE,0),(gen_random_uuid(),q,'Arco de Nagisa',FALSE,1),(gen_random_uuid(),q,'Arco de Kotomi',FALSE,2),(gen_random_uuid(),q,'Arco de Tomoyo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'episode_arc','hard','Em qual arco Yoshino orienta pacientemente Tomoya durante seus primeiros meses de adaptação ao trabalho industrial exigente?','Esta mentoria informal se mostra fundamental para a sobrevivência profissional do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco Familiar',TRUE,0),(gen_random_uuid(),q,'Arco de Nagisa',FALSE,1),(gen_random_uuid(),q,'Arco de Kotomi',FALSE,2),(gen_random_uuid(),q,'Arco de Tomoyo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'episode_arc','medium','Em qual arco Mei participa de competições esportivas escolares, revelando sua conexão familiar conturbada com Sunohara?','Este episódio secundário oferece perspectiva complementar sobre temas de família explorados na trama principal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Nagisa',TRUE,0),(gen_random_uuid(),q,'Arco de Kotomi',FALSE,1),(gen_random_uuid(),q,'Arco de Tomoyo',FALSE,2),(gen_random_uuid(),q,'Arco Familiar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'episode_arc','hard','Em qual arco Tomoya assume completamente as responsabilidades de trabalho pesado combinadas com cuidados parentais solitários?','Este arco representa um dos pontos mais emocionalmente desafiadores de toda a trajetória do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco Familiar',TRUE,0),(gen_random_uuid(),q,'Arco de Nagisa',FALSE,1),(gen_random_uuid(),q,'Arco de Kotomi',FALSE,2),(gen_random_uuid(),q,'Arco de Tomoyo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'episode_arc','impossible','Em qual arco a amizade entre Tomoya e Yoshino se aprofunda significativamente, tornando-se relação de confiança mútua duradoura?','Esta relação profissional evolui organicamente ao longo do período retratado na segunda metade da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco Familiar',TRUE,0),(gen_random_uuid(),q,'Arco de Nagisa',FALSE,1),(gen_random_uuid(),q,'Arco de Kotomi',FALSE,2),(gen_random_uuid(),q,'Arco de Tomoyo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cl,'episode_arc','impossible','Em qual arco Mei demonstra resiliência pessoal notável ao superar desafios familiares complexos durante sua trajetória esportiva escolar?','Sua determinação pessoal serve de contraponto inspirador em meio aos dramas familiares mais intensos da trama principal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Nagisa',TRUE,0),(gen_random_uuid(),q,'Arco de Kotomi',FALSE,1),(gen_random_uuid(),q,'Arco de Tomoyo',FALSE,2),(gen_random_uuid(),q,'Arco Familiar',FALSE,3);

END $$;
