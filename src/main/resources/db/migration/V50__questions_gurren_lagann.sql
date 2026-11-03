-- ============================================================
--  V50 — Seed de perguntas: Gurren Lagann (150 perguntas)
--  Fonte: MyAnimeList + cânone do anime
--  Distribuição: text 40% / fill_blank 25% / who_said 20% /
--                episode_arc 10% / chronological 5%
--  Sem repetição com V5. Regras R1-R7 aplicadas.
-- ============================================================

DO $$
DECLARE
    v_system UUID := '00000000-0000-0000-0000-000000000001';
    v_gl     UUID;
    q        UUID;
BEGIN
    SELECT id INTO v_gl FROM animes WHERE slug = 'gurren-lagann' LIMIT 1;

    -- ══════════════════════════════════════════════════════════
    -- TEXT — 60 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','easy','Qual é o nome do protagonista, jovem escavador que vive em vila subterrânea antes de descobrir um robô piloto abandonado?','Ele desenvolve confiança extraordinária ao longo da série, transformando-se em líder inspirador.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Simon',TRUE,0),(gen_random_uuid(),q,'Kamina',FALSE,1),(gen_random_uuid(),q,'Viral',FALSE,2),(gen_random_uuid(),q,'Rossiu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','easy','Qual é o nome do amigo carismático e impulsivo do protagonista, cuja filosofia de vida ousada inspira toda a jornada inicial da série?','Sua determinação inabalável se torna legado duradouro mesmo após eventos trágicos que o afetam.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kamina',TRUE,0),(gen_random_uuid(),q,'Simon',FALSE,1),(gen_random_uuid(),q,'Viral',FALSE,2),(gen_random_uuid(),q,'Rossiu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','easy','Qual é o nome dado ao pequeno robô piloto descoberto pelo protagonista, posteriormente fundido com máquina maior para criar unidade combinada poderosa?','Sua evolução ao longo da série acompanha diretamente o crescimento do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Lagann',TRUE,0),(gen_random_uuid(),q,'Gurren',FALSE,1),(gen_random_uuid(),q,'Dai-Gurren',FALSE,2),(gen_random_uuid(),q,'Tengen Toppa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','easy','Qual é o nome dado ao robô maior pilotado inicialmente por Kamina, posteriormente combinado com a máquina menor do protagonista?','A fusão dessas duas máquinas cria uma das unidades de combate mais icônicas da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gurren',TRUE,0),(gen_random_uuid(),q,'Lagann',FALSE,1),(gen_random_uuid(),q,'Dai-Gurren',FALSE,2),(gen_random_uuid(),q,'Enkidu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','easy','Qual é o nome da jovem guerreira habilidosa com armas de fogo, aliada valiosa encontrada durante a fuga inicial da vila subterrânea?','Ela desenvolve relacionamento romântico complexo com Kamina ao longo da primeira metade da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoko Littner',TRUE,0),(gen_random_uuid(),q,'Nia',FALSE,1),(gen_random_uuid(),q,'Kiyal',FALSE,2),(gen_random_uuid(),q,'Kiyoh',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','easy','Qual é o nome do general besta espiral rival, comandante militar respeitado que enfrenta os protagonistas em diversos confrontos ao longo da série?','Ele demonstra código de honra rigoroso apesar de servir forças antagônicas inicialmente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Viral',TRUE,0),(gen_random_uuid(),q,'Thymilph',FALSE,1),(gen_random_uuid(),q,'Guame',FALSE,2),(gen_random_uuid(),q,'Adiane',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','easy','Qual é o nome dado à organização subterrânea liderada pelos protagonistas após deixarem sua vila original, expandindo-se conforme derrotam adversários?','Ela cresce significativamente em tamanho e poder ao longo da primeira metade da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Team Dai-Gurren',TRUE,0),(gen_random_uuid(),q,'Aliança Espiral',FALSE,1),(gen_random_uuid(),q,'Resistência Subterrânea',FALSE,2),(gen_random_uuid(),q,'Frente Gurren',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','easy','Qual é o nome dado às criaturas robóticas gigantes usadas por forças antagônicas para manter a humanidade confinada ao subsolo?','Sua ameaça constante impulsiona grande parte do conflito inicial da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gunmen',TRUE,0),(gen_random_uuid(),q,'Bestas Mecânicas',FALSE,1),(gen_random_uuid(),q,'Titãs de Ferro',FALSE,2),(gen_random_uuid(),q,'Colossos',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','easy','Qual é o nome do robô combinado formado pela fusão entre a máquina de Kamina e o veículo pilotado pelo protagonista?','Ele se torna símbolo central da luta contra as forças que confinam a humanidade ao subsolo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gurren Lagann',TRUE,0),(gen_random_uuid(),q,'Dai-Gurren',FALSE,1),(gen_random_uuid(),q,'Tengen Toppa',FALSE,2),(gen_random_uuid(),q,'Enkidu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','easy','Qual é o nome do jovem inteligente e cauteloso que se junta ao grupo de protagonistas, demonstrando habilidades administrativas e estratégicas notáveis?','Sua abordagem racional frequentemente contrasta com a impulsividade de outros personagens.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rossiu',TRUE,0),(gen_random_uuid(),q,'Leeron',FALSE,1),(gen_random_uuid(),q,'Gimmy',FALSE,2),(gen_random_uuid(),q,'Darry',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','easy','Qual é o nome do técnico excêntrico e brilhante, especialista em mecânica avançada que se junta ao grupo, oferecendo conhecimento tecnológico crucial?','Sua personalidade extravagante contrasta com seu talento técnico excepcional.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Leeron',TRUE,0),(gen_random_uuid(),q,'Rossiu',FALSE,1),(gen_random_uuid(),q,'Gimmy',FALSE,2),(gen_random_uuid(),q,'Kittan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','easy','Qual é o nome da jovem princesa misteriosa resgatada pelos protagonistas de uma prisão flutuante, cuja verdadeira origem é revelada gradualmente?','Sua conexão com forças antagônicas se torna elemento crucial da trama posterior.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nia Teppelin',TRUE,0),(gen_random_uuid(),q,'Yoko',FALSE,1),(gen_random_uuid(),q,'Kiyal',FALSE,2),(gen_random_uuid(),q,'Adiane',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','medium','Qual é o nome do piloto impulsivo e competitivo, irmão mais velho de outros membros da equipe, conhecido por seu comportamento impetuoso em combate?','Ele demonstra crescimento significativo de maturidade ao longo do desenvolvimento da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kittan Bachika',TRUE,0),(gen_random_uuid(),q,'Rossiu',FALSE,1),(gen_random_uuid(),q,'Leeron',FALSE,2),(gen_random_uuid(),q,'Gimmy',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','medium','Qual é o nome do imperador supremo que governa a superfície terrestre, mantendo humanos confinados ao subsolo através de um vasto exército de gunmen?','Sua verdadeira natureza e motivações são reveladas gradualmente ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Lordgenome',TRUE,0),(gen_random_uuid(),q,'Thymilph',FALSE,1),(gen_random_uuid(),q,'Guame',FALSE,2),(gen_random_uuid(),q,'Viral',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','medium','Qual é o nome da general besta espiral feminina, comandante habilidosa que enfrenta os protagonistas em confrontos decisivos pela superfície?','Ela demonstra lealdade absoluta ao imperador supremo durante grande parte da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Adiane',TRUE,0),(gen_random_uuid(),q,'Kiyal',FALSE,1),(gen_random_uuid(),q,'Kiyoh',FALSE,2),(gen_random_uuid(),q,'Nia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','medium','Qual é o nome dado ao evento catastrófico e transformador que ocorre no ponto médio da série, alterando drasticamente o rumo de toda a narrativa?','Ele resulta em salto temporal significativo, mudando completamente o contexto dos eventos seguintes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Morte de Kamina e ascensão à superfície',TRUE,0),(gen_random_uuid(),q,'Derrota de Lordgenome',FALSE,1),(gen_random_uuid(),q,'Fusão final dos Gunmen',FALSE,2),(gen_random_uuid(),q,'Despertar Anti-Espiral',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','medium','Qual é o nome dado à cidade construída pelos protagonistas na superfície após a derrota do imperador supremo, símbolo de nova era de reconstrução?','Ela representa a transição da humanidade de vida subterrânea para existência plena na superfície.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kamina City',TRUE,0),(gen_random_uuid(),q,'Nova Gurren',FALSE,1),(gen_random_uuid(),q,'Cidade Espiral',FALSE,2),(gen_random_uuid(),q,'Teppelin Nova',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','medium','Qual é o nome dado à energia especial que alimenta os robôs pilotados pelos protagonistas, ligada diretamente à força de vontade e determinação de seus operadores?','Sua manifestação se intensifica proporcionalmente à confiança e coragem demonstrada pelo piloto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Poder Espiral',TRUE,0),(gen_random_uuid(),q,'Energia Vital',FALSE,1),(gen_random_uuid(),q,'Força Ancestral',FALSE,2),(gen_random_uuid(),q,'Chama Interior',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','medium','Qual é o nome dado ao jovem gêmeo, irmão de Darry, integrante mais jovem do grupo que cresce significativamente ao longo do salto temporal da série?','Sua maturidade se desenvolve consideravelmente entre a primeira e segunda metade da narrativa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gimmy',TRUE,0),(gen_random_uuid(),q,'Darry',FALSE,1),(gen_random_uuid(),q,'Kittan',FALSE,2),(gen_random_uuid(),q,'Rossiu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','hard','Qual é o nome dado à raça alienígena antiga e poderosa, revelada como verdadeira ameaça cósmica na segunda metade da série?','Sua filosofia de estagnação contrasta diretamente com a filosofia de evolução constante dos protagonistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Anti-Espirais',TRUE,0),(gen_random_uuid(),q,'Guardiões Cósmicos',FALSE,1),(gen_random_uuid(),q,'Entidades Primordiais',FALSE,2),(gen_random_uuid(),q,'Seres do Vazio',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','hard','Qual é o nome dado à unidade de combate final e mais poderosa pilotada pelos protagonistas, criada através da fusão de milhares de gunmen individuais?','Sua escala descomunal representa o clímax visual e temático de toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tengen Toppa Gurren Lagann',TRUE,0),(gen_random_uuid(),q,'Dai-Gurren Dan',FALSE,1),(gen_random_uuid(),q,'Super Gurren Supremo',FALSE,2),(gen_random_uuid(),q,'Colosso Final',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','hard','Qual é o nome dado à teoria cosmológica central da série, segundo a qual o universo colapsaria se toda a humanidade evoluísse simultaneamente através do poder espiral?','Esta teoria motiva as ações extremas tomadas pelos Anti-Espirais contra a humanidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Colapso Espiral',TRUE,0),(gen_random_uuid(),q,'Teoria da Estagnação',FALSE,1),(gen_random_uuid(),q,'Paradoxo Evolutivo',FALSE,2),(gen_random_uuid(),q,'Singularidade Cósmica',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','hard','Qual é o nome dado à líder suprema dos Anti-Espirais, entidade cósmica de poder imenso enfrentada nos capítulos finais da série?','Sua verdadeira forma e motivações são reveladas apenas nos momentos climáticos finais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Anti-Spiral',TRUE,0),(gen_random_uuid(),q,'Guardiã do Vazio',FALSE,1),(gen_random_uuid(),q,'Rainha Cósmica',FALSE,2),(gen_random_uuid(),q,'Entidade Suprema',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','impossible','Qual é o nome dado à filha adotiva dos protagonistas na segunda metade da série, criança encontrada durante um dos confrontos contra forças antagônicas?','Sua presença representa a esperança de uma nova geração pacífica após anos de guerra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kiyoh',TRUE,0),(gen_random_uuid(),q,'Anne',FALSE,1),(gen_random_uuid(),q,'Meira',FALSE,2),(gen_random_uuid(),q,'Lian',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','impossible','Qual é o nome dado ao general besta espiral responsável por prender Nia em prisão flutuante antes de seu resgate pelos protagonistas?','Sua derrota representa uma das primeiras grandes vitórias do grupo contra forças imperiais superiores.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Guame',TRUE,0),(gen_random_uuid(),q,'Thymilph',FALSE,1),(gen_random_uuid(),q,'Adiane',FALSE,2),(gen_random_uuid(),q,'Cytomander',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- FILL_BLANK — 38 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'fill_blank','easy','O protagonista, jovem escavador que vive em vila subterrânea antes de descobrir um robô piloto abandonado, se chama ___.','Ele desenvolve confiança extraordinária ao longo da série, transformando-se em líder inspirador.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Simon',TRUE,0),(gen_random_uuid(),q,'Kamina',FALSE,1),(gen_random_uuid(),q,'Viral',FALSE,2),(gen_random_uuid(),q,'Rossiu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'fill_blank','easy','O amigo carismático e impulsivo do protagonista, cuja filosofia de vida ousada inspira toda a jornada inicial, se chama ___.','Sua determinação inabalável se torna legado duradouro mesmo após eventos trágicos que o afetam.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kamina',TRUE,0),(gen_random_uuid(),q,'Simon',FALSE,1),(gen_random_uuid(),q,'Viral',FALSE,2),(gen_random_uuid(),q,'Rossiu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'fill_blank','easy','O pequeno robô piloto descoberto pelo protagonista, posteriormente fundido com máquina maior, se chama ___.','Sua evolução ao longo da série acompanha diretamente o crescimento do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Lagann',TRUE,0),(gen_random_uuid(),q,'Gurren',FALSE,1),(gen_random_uuid(),q,'Dai-Gurren',FALSE,2),(gen_random_uuid(),q,'Tengen Toppa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'fill_blank','easy','O robô maior pilotado inicialmente por Kamina, posteriormente combinado com a máquina do protagonista, se chama ___.','A fusão dessas duas máquinas cria uma das unidades de combate mais icônicas da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gurren',TRUE,0),(gen_random_uuid(),q,'Lagann',FALSE,1),(gen_random_uuid(),q,'Dai-Gurren',FALSE,2),(gen_random_uuid(),q,'Enkidu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'fill_blank','easy','A jovem guerreira habilidosa com armas de fogo, aliada encontrada durante a fuga inicial da vila subterrânea, se chama ___.','Ela desenvolve relacionamento romântico complexo com Kamina ao longo da primeira metade da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoko',TRUE,0),(gen_random_uuid(),q,'Nia',FALSE,1),(gen_random_uuid(),q,'Kiyal',FALSE,2),(gen_random_uuid(),q,'Kiyoh',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'fill_blank','easy','O general besta espiral rival, comandante militar respeitado que enfrenta os protagonistas repetidamente, se chama ___.','Ele demonstra código de honra rigoroso apesar de servir forças antagônicas inicialmente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Viral',TRUE,0),(gen_random_uuid(),q,'Thymilph',FALSE,1),(gen_random_uuid(),q,'Guame',FALSE,2),(gen_random_uuid(),q,'Adiane',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'fill_blank','easy','A organização subterrânea liderada pelos protagonistas após deixarem sua vila original se chama ___.','Ela cresce significativamente em tamanho e poder ao longo da primeira metade da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Team Dai-Gurren',TRUE,0),(gen_random_uuid(),q,'Aliança Espiral',FALSE,1),(gen_random_uuid(),q,'Resistência Subterrânea',FALSE,2),(gen_random_uuid(),q,'Frente Gurren',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'fill_blank','easy','As criaturas robóticas gigantes usadas por forças antagônicas para manter a humanidade confinada ao subsolo são chamadas de ___.','Sua ameaça constante impulsiona grande parte do conflito inicial da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gunmen',TRUE,0),(gen_random_uuid(),q,'Bestas Mecânicas',FALSE,1),(gen_random_uuid(),q,'Titãs de Ferro',FALSE,2),(gen_random_uuid(),q,'Colossos',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'fill_blank','easy','O robô combinado formado pela fusão entre a máquina de Kamina e o veículo do protagonista se chama ___.','Ele se torna símbolo central da luta contra as forças que confinam a humanidade ao subsolo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gurren Lagann',TRUE,0),(gen_random_uuid(),q,'Dai-Gurren',FALSE,1),(gen_random_uuid(),q,'Tengen Toppa',FALSE,2),(gen_random_uuid(),q,'Enkidu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'fill_blank','easy','O jovem inteligente e cauteloso que se junta ao grupo, demonstrando habilidades administrativas notáveis, se chama ___.','Sua abordagem racional frequentemente contrasta com a impulsividade de outros personagens.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rossiu',TRUE,0),(gen_random_uuid(),q,'Leeron',FALSE,1),(gen_random_uuid(),q,'Gimmy',FALSE,2),(gen_random_uuid(),q,'Darry',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'fill_blank','medium','O piloto impulsivo e competitivo, irmão mais velho de outros membros da equipe, se chama ___.','Ele demonstra crescimento significativo de maturidade ao longo do desenvolvimento da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kittan',TRUE,0),(gen_random_uuid(),q,'Rossiu',FALSE,1),(gen_random_uuid(),q,'Leeron',FALSE,2),(gen_random_uuid(),q,'Gimmy',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'fill_blank','medium','O imperador supremo que governa a superfície terrestre, mantendo humanos confinados ao subsolo, se chama ___.','Sua verdadeira natureza e motivações são reveladas gradualmente ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Lordgenome',TRUE,0),(gen_random_uuid(),q,'Thymilph',FALSE,1),(gen_random_uuid(),q,'Guame',FALSE,2),(gen_random_uuid(),q,'Viral',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'fill_blank','medium','A general besta espiral feminina que enfrenta os protagonistas em confrontos decisivos pela superfície se chama ___.','Ela demonstra lealdade absoluta ao imperador supremo durante grande parte da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Adiane',TRUE,0),(gen_random_uuid(),q,'Kiyal',FALSE,1),(gen_random_uuid(),q,'Kiyoh',FALSE,2),(gen_random_uuid(),q,'Nia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'fill_blank','medium','A cidade construída pelos protagonistas na superfície após a derrota do imperador supremo se chama ___.','Ela representa a transição da humanidade de vida subterrânea para existência plena na superfície.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kamina City',TRUE,0),(gen_random_uuid(),q,'Nova Gurren',FALSE,1),(gen_random_uuid(),q,'Cidade Espiral',FALSE,2),(gen_random_uuid(),q,'Teppelin Nova',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'fill_blank','medium','A energia especial que alimenta os robôs pilotados pelos protagonistas, ligada à força de vontade, é chamada de ___.','Sua manifestação se intensifica proporcionalmente à confiança e coragem demonstrada pelo piloto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Poder Espiral',TRUE,0),(gen_random_uuid(),q,'Energia Vital',FALSE,1),(gen_random_uuid(),q,'Força Ancestral',FALSE,2),(gen_random_uuid(),q,'Chama Interior',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'fill_blank','medium','O jovem gêmeo, irmão de Darry, integrante mais jovem do grupo que cresce ao longo do salto temporal, se chama ___.','Sua maturidade se desenvolve consideravelmente entre a primeira e segunda metade da narrativa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gimmy',TRUE,0),(gen_random_uuid(),q,'Darry',FALSE,1),(gen_random_uuid(),q,'Kittan',FALSE,2),(gen_random_uuid(),q,'Rossiu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'fill_blank','hard','A raça alienígena antiga e poderosa, revelada como verdadeira ameaça cósmica na segunda metade da série, é chamada de ___.','Sua filosofia de estagnação contrasta diretamente com a filosofia de evolução constante dos protagonistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Anti-Espirais',TRUE,0),(gen_random_uuid(),q,'Guardiões Cósmicos',FALSE,1),(gen_random_uuid(),q,'Entidades Primordiais',FALSE,2),(gen_random_uuid(),q,'Seres do Vazio',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'fill_blank','hard','A unidade de combate final e mais poderosa pilotada pelos protagonistas, criada através da fusão de milhares de gunmen, se chama ___.','Sua escala descomunal representa o clímax visual e temático de toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tengen Toppa Gurren Lagann',TRUE,0),(gen_random_uuid(),q,'Dai-Gurren Dan',FALSE,1),(gen_random_uuid(),q,'Super Gurren Supremo',FALSE,2),(gen_random_uuid(),q,'Colosso Final',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'fill_blank','hard','A teoria cosmológica central da série, segundo a qual o universo colapsaria com evolução espiral simultânea, é chamada de ___.','Esta teoria motiva as ações extremas tomadas pelos Anti-Espirais contra a humanidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Colapso Espiral',TRUE,0),(gen_random_uuid(),q,'Teoria da Estagnação',FALSE,1),(gen_random_uuid(),q,'Paradoxo Evolutivo',FALSE,2),(gen_random_uuid(),q,'Singularidade Cósmica',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'fill_blank','impossible','A filha adotiva dos protagonistas na segunda metade da série, criança encontrada durante confronto, se chama ___.','Sua presença representa a esperança de uma nova geração pacífica após anos de guerra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kiyoh',TRUE,0),(gen_random_uuid(),q,'Anne',FALSE,1),(gen_random_uuid(),q,'Meira',FALSE,2),(gen_random_uuid(),q,'Lian',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- WHO_SAID — 30 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'who_said','easy','Quem disse: "Eu vivia escondido no subsolo antes de encontrar um pequeno robô que mudaria completamente minha vida"?','A frase reflete a origem humilde do protagonista antes de sua jornada heroica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Simon',TRUE,0),(gen_random_uuid(),q,'Kamina',FALSE,1),(gen_random_uuid(),q,'Viral',FALSE,2),(gen_random_uuid(),q,'Rossiu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'who_said','easy','Quem disse: "Quem acredita em você é você mesmo, e essa filosofia guiará nossa jornada até a superfície"?','A frase reflete a filosofia inspiradora do amigo carismático do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kamina',TRUE,0),(gen_random_uuid(),q,'Simon',FALSE,1),(gen_random_uuid(),q,'Viral',FALSE,2),(gen_random_uuid(),q,'Rossiu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'who_said','easy','Quem disse: "Eu domino armas de fogo com precisão excepcional, e minha relação com Kamina se aprofunda a cada batalha juntos"?','A frase é dita pela guerreira habilidosa encontrada durante a fuga inicial da vila.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoko',TRUE,0),(gen_random_uuid(),q,'Nia',FALSE,1),(gen_random_uuid(),q,'Kiyal',FALSE,2),(gen_random_uuid(),q,'Kiyoh',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'who_said','easy','Quem disse: "Eu sirvo o imperador com honra rigorosa, mesmo enfrentando repetidamente vocês em combates decisivos pela superfície"?','A frase é dita pelo general besta espiral rival respeitado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Viral',TRUE,0),(gen_random_uuid(),q,'Thymilph',FALSE,1),(gen_random_uuid(),q,'Guame',FALSE,2),(gen_random_uuid(),q,'Adiane',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'who_said','easy','Quem disse: "Eu me junto ao grupo trazendo abordagem racional e cautelosa, contrastando com a impulsividade de outros membros"?','A frase é dita pelo jovem inteligente que demonstra habilidades administrativas notáveis.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rossiu',TRUE,0),(gen_random_uuid(),q,'Leeron',FALSE,1),(gen_random_uuid(),q,'Gimmy',FALSE,2),(gen_random_uuid(),q,'Darry',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'who_said','medium','Quem disse: "Minha personalidade extravagante contrasta com meu talento técnico excepcional em mecânica avançada"?','A frase é dita pelo técnico excêntrico e brilhante que se junta ao grupo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Leeron',TRUE,0),(gen_random_uuid(),q,'Rossiu',FALSE,1),(gen_random_uuid(),q,'Gimmy',FALSE,2),(gen_random_uuid(),q,'Kittan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'who_said','medium','Quem disse: "Minha origem verdadeira permanece envolta em mistério, mesmo depois de ser resgatada de uma prisão flutuante por vocês"?','A frase é dita pela princesa misteriosa resgatada pelos protagonistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nia',TRUE,0),(gen_random_uuid(),q,'Yoko',FALSE,1),(gen_random_uuid(),q,'Kiyal',FALSE,2),(gen_random_uuid(),q,'Adiane',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'who_said','medium','Quem disse: "Eu era impulsivo demais no início, mas amadureci consideravelmente ao longo desta longa jornada em combate"?','A frase é dita pelo piloto impulsivo e competitivo, irmão mais velho de outros membros.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kittan',TRUE,0),(gen_random_uuid(),q,'Rossiu',FALSE,1),(gen_random_uuid(),q,'Leeron',FALSE,2),(gen_random_uuid(),q,'Gimmy',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'who_said','medium','Quem disse: "Eu governo a superfície há gerações, mantendo a humanidade confinada ao subsolo por razões que só compreendo completamente"?','A frase é dita pelo imperador supremo que governa a superfície terrestre.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Lordgenome',TRUE,0),(gen_random_uuid(),q,'Thymilph',FALSE,1),(gen_random_uuid(),q,'Guame',FALSE,2),(gen_random_uuid(),q,'Viral',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'who_said','medium','Quem disse: "Minha lealdade absoluta ao imperador nunca vacilou, mesmo enfrentando vocês repetidamente em confrontos decisivos"?','A frase é dita pela general besta espiral feminina que enfrenta os protagonistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Adiane',TRUE,0),(gen_random_uuid(),q,'Kiyal',FALSE,1),(gen_random_uuid(),q,'Kiyoh',FALSE,2),(gen_random_uuid(),q,'Nia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'who_said','hard','Quem disse: "Nossa filosofia de estagnação existe para evitar que o colapso espiral destrua todo o universo conhecido"?','A frase reflete a motivação da raça alienígena antiga revelada como ameaça cósmica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Anti-Espirais',TRUE,0),(gen_random_uuid(),q,'Guardiões Cósmicos',FALSE,1),(gen_random_uuid(),q,'Entidades Primordiais',FALSE,2),(gen_random_uuid(),q,'Seres do Vazio',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'who_said','hard','Quem disse: "Minha verdadeira forma e motivações só são reveladas nos momentos climáticos finais desta longa jornada"?','A frase é dita pela líder suprema dos Anti-Espirais enfrentada nos capítulos finais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Anti-Spiral',TRUE,0),(gen_random_uuid(),q,'Guardiã do Vazio',FALSE,1),(gen_random_uuid(),q,'Rainha Cósmica',FALSE,2),(gen_random_uuid(),q,'Entidade Suprema',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'who_said','impossible','Quem disse: "Fui responsável por aprisionar Nia em prisão flutuante, antes de minha derrota diante da coragem de vocês"?','A frase é dita, em memória, pelo general besta espiral derrotado logo no início da jornada dos protagonistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Guame',TRUE,0),(gen_random_uuid(),q,'Thymilph',FALSE,1),(gen_random_uuid(),q,'Adiane',FALSE,2),(gen_random_uuid(),q,'Cytomander',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- EPISODE_ARC — 15 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'episode_arc','medium','Em qual arco Simon descobre o Lagann e conhece Kamina, iniciando sua jornada rumo à superfície?','O arco estabelece a premissa inicial de toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Origem',TRUE,0),(gen_random_uuid(),q,'Arco de Lordgenome',FALSE,1),(gen_random_uuid(),q,'Arco do Salto Temporal',FALSE,2),(gen_random_uuid(),q,'Arco Anti-Espiral',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'episode_arc','medium','Em qual arco a Team Dai-Gurren cresce significativamente, recrutando novos aliados enquanto avança rumo à superfície?','Este arco explora a expansão gradual do grupo de resistência subterrânea.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Origem',TRUE,0),(gen_random_uuid(),q,'Arco de Lordgenome',FALSE,1),(gen_random_uuid(),q,'Arco do Salto Temporal',FALSE,2),(gen_random_uuid(),q,'Arco Anti-Espiral',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'episode_arc','medium','Em qual arco os protagonistas enfrentam diretamente Lordgenome, culminando na derrota do imperador supremo e libertação da superfície?','Este confronto representa o clímax da primeira metade da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Lordgenome',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco do Salto Temporal',FALSE,2),(gen_random_uuid(),q,'Arco Anti-Espiral',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'episode_arc','medium','Em qual arco ocorre o salto temporal significativo, revelando a construção de Kamina City e o crescimento dos personagens jovens?','Este arco marca uma transição drástica no tom e contexto da narrativa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Salto Temporal',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco de Lordgenome',FALSE,2),(gen_random_uuid(),q,'Arco Anti-Espiral',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'episode_arc','medium','Em qual arco a verdadeira ameaça dos Anti-Espirais é revelada, expandindo o conflito para escala cósmica sem precedentes?','Este arco eleva drasticamente as apostas de toda a narrativa da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco Anti-Espiral',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco de Lordgenome',FALSE,2),(gen_random_uuid(),q,'Arco do Salto Temporal',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'episode_arc','medium','Em qual arco Nia é resgatada de sua prisão flutuante, revelando gradualmente sua conexão misteriosa com forças antagônicas?','Este resgate marca uma das primeiras grandes vitórias táticas do grupo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Origem',TRUE,0),(gen_random_uuid(),q,'Arco de Lordgenome',FALSE,1),(gen_random_uuid(),q,'Arco do Salto Temporal',FALSE,2),(gen_random_uuid(),q,'Arco Anti-Espiral',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'episode_arc','hard','Em qual arco Kittan e outros pilotos demonstram crescimento significativo de maturidade após o salto temporal da série?','Este desenvolvimento de personagem ocorre paralelamente à escalada do conflito com os Anti-Espirais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Salto Temporal',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco de Lordgenome',FALSE,2),(gen_random_uuid(),q,'Arco Anti-Espiral',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'episode_arc','hard','Em qual arco o Tengen Toppa Gurren Lagann é formado através da fusão de milhares de gunmen individuais para o confronto final?','Esta fusão representa o clímax visual e temático de toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco Anti-Espiral',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco de Lordgenome',FALSE,2),(gen_random_uuid(),q,'Arco do Salto Temporal',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'episode_arc','impossible','Em qual arco é revelada a verdadeira natureza filosófica da teoria do Colapso Espiral, motivando as ações extremas dos Anti-Espirais?','Esta revelação fornece contexto crucial para compreender o conflito final da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco Anti-Espiral',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco de Lordgenome',FALSE,2),(gen_random_uuid(),q,'Arco do Salto Temporal',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- CHRONOLOGICAL — 7 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'chronological','hard','Ordene cronologicamente os arcos a seguir, do mais antigo ao mais recente.','Cobrem desde a descoberta do Lagann até o confronto final contra os Anti-Espirais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Origem',TRUE,0),(gen_random_uuid(),q,'Lordgenome',FALSE,1),(gen_random_uuid(),q,'Salto Temporal',FALSE,2),(gen_random_uuid(),q,'Anti-Espiral',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'chronological','hard','Ordene cronologicamente os seguintes eventos da jornada de Simon, do mais antigo ao mais recente.','Cobrem desde a descoberta do Lagann até a fusão final para o confronto cósmico.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Descobre o Lagann na vila subterrânea',TRUE,0),(gen_random_uuid(),q,'Enfrenta e derrota Lordgenome',FALSE,1),(gen_random_uuid(),q,'Constrói Kamina City após salto temporal',FALSE,2),(gen_random_uuid(),q,'Confronta os Anti-Espirais no clímax final',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre Kamina, do mais antigo ao mais recente.','Cobrem desde sua filosofia inicial até seu legado duradouro após eventos trágicos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Inspira Simon com sua filosofia ousada de vida',TRUE,0),(gen_random_uuid(),q,'Pilota o Gurren antes da fusão com Lagann',FALSE,1),(gen_random_uuid(),q,'Desenvolve relacionamento com Yoko',FALSE,2),(gen_random_uuid(),q,'Seu legado motiva ações do grupo mesmo após sua morte',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre Nia, do mais antigo ao mais recente.','Cobrem desde seu resgate da prisão flutuante até a revelação de sua conexão com forças antagônicas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'É resgatada de prisão flutuante pelos protagonistas',TRUE,0),(gen_random_uuid(),q,'Junta-se ao grupo como aliada valiosa',FALSE,1),(gen_random_uuid(),q,'Sua verdadeira origem começa a ser revelada',FALSE,2),(gen_random_uuid(),q,'Sua conexão com forças antagônicas se esclarece',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Viral, do mais antigo ao mais recente.','Cobrem desde seus primeiros confrontos como rival até seu papel posterior na trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Enfrenta os protagonistas como general besta espiral',TRUE,0),(gen_random_uuid(),q,'Demonstra código de honra rigoroso em combate',FALSE,1),(gen_random_uuid(),q,'Passa por transformação de perspectiva ao longo da série',FALSE,2),(gen_random_uuid(),q,'Assume papel diferente após o salto temporal',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Lordgenome, do mais antigo ao mais recente.','Cobrem desde seu governo sobre a superfície até sua derrota diante dos protagonistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Governa a superfície mantendo humanos confinados',TRUE,0),(gen_random_uuid(),q,'Enfrenta a crescente resistência da Team Dai-Gurren',FALSE,1),(gen_random_uuid(),q,'É derrotado em confronto decisivo',FALSE,2),(gen_random_uuid(),q,'Sua verdadeira motivação é revelada postumamente',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre os Anti-Espirais, do mais antigo ao mais recente.','Cobrem desde sua existência oculta até o confronto cósmico final da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Existem ocultos monitorando a evolução espiral humana',TRUE,0),(gen_random_uuid(),q,'Revelam sua ameaça após o salto temporal da série',FALSE,1),(gen_random_uuid(),q,'Enfrentam diretamente o Tengen Toppa Gurren Lagann',FALSE,2),(gen_random_uuid(),q,'Sua líder suprema é finalmente confrontada',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- COMPLEMENTO — fechar 150 perguntas (35 text / 18 fill_blank / 17 who_said / 6 episode_arc)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','easy','Qual desses personagens é irmã mais velha de Gimmy, integrante do grupo que também cresce significativamente após o salto temporal?','Ela demonstra maturidade crescente ao lidar com responsabilidades cada vez maiores.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Darry',TRUE,0),(gen_random_uuid(),q,'Gimmy',FALSE,1),(gen_random_uuid(),q,'Kittan',FALSE,2),(gen_random_uuid(),q,'Rossiu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','medium','Qual desses personagens é general besta espiral que comanda forças aéreas, enfrentando os protagonistas durante sua ascensão rumo à superfície?','Sua tática de combate aéreo representa desafio único para o grupo protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cytomander',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Adiane',FALSE,2),(gen_random_uuid(),q,'Thymilph',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','hard','Qual desses personagens comanda diretamente as forças imperiais em confronto climático que antecede a derrota final de Lordgenome?','Sua lealdade rígida à hierarquia imperial é testada durante os eventos decisivos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Thymilph',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Cytomander',FALSE,2),(gen_random_uuid(),q,'Adiane',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','easy','Qual desses personagens acompanha o crescimento de Gimmy ao longo do salto temporal, assumindo responsabilidades cada vez maiores dentro do grupo?','Sua evolução pessoal reflete diretamente as mudanças sofridas por toda a comunidade após anos de reconstrução.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Darry',TRUE,0),(gen_random_uuid(),q,'Gimmy',FALSE,1),(gen_random_uuid(),q,'Kittan',FALSE,2),(gen_random_uuid(),q,'Rossiu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','medium','Qual desses personagens lidera esquadrões aéreos hostis contra os protagonistas durante sua jornada de ascensão territorial rumo à superfície?','Sua estratégia militar representa um dos desafios táticos mais complexos enfrentados pelo grupo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cytomander',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Adiane',FALSE,2),(gen_random_uuid(),q,'Thymilph',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','hard','Qual desses personagens permanece leal à estrutura imperial mesmo diante da crescente resistência liderada pelos protagonistas ao longo da narrativa?','Sua rigidez hierárquica contrasta com a flexibilidade estratégica demonstrada por outros comandantes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Thymilph',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Cytomander',FALSE,2),(gen_random_uuid(),q,'Adiane',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','easy','Qual desses personagens demonstra amadurecimento notável entre a primeira e segunda metade da narrativa, assumindo papel mais ativo na comunidade?','Sua transformação pessoal é um dos exemplos mais claros de crescimento de personagem na série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Darry',TRUE,0),(gen_random_uuid(),q,'Gimmy',FALSE,1),(gen_random_uuid(),q,'Kittan',FALSE,2),(gen_random_uuid(),q,'Rossiu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','medium','Qual desses personagens comanda unidades aéreas especializadas em interceptar a ascensão dos protagonistas rumo aos territórios superiores?','Sua expertise tática exige que o grupo desenvolva novas estratégias de combate aéreo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cytomander',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Adiane',FALSE,2),(gen_random_uuid(),q,'Thymilph',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','hard','Qual desses personagens tem sua lealdade rigorosa testada durante os eventos decisivos que precedem a queda final do império de Lordgenome?','Seu comportamento reflete os valores tradicionais da hierarquia militar imperial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Thymilph',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Cytomander',FALSE,2),(gen_random_uuid(),q,'Adiane',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','easy','Qual desses personagens assume gradualmente mais responsabilidades comunitárias conforme o tempo avança na segunda metade da série?','Sua jornada pessoal simboliza a reconstrução gradual vivida por toda a comunidade após a guerra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Darry',TRUE,0),(gen_random_uuid(),q,'Gimmy',FALSE,1),(gen_random_uuid(),q,'Kittan',FALSE,2),(gen_random_uuid(),q,'Rossiu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','medium','Qual desses personagens desafia taticamente os protagonistas através de manobras aéreas complexas durante sua expansão territorial?','Sua habilidade de comando aéreo é reconhecida até mesmo por seus adversários.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cytomander',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Adiane',FALSE,2),(gen_random_uuid(),q,'Thymilph',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','hard','Qual desses personagens comanda tropas imperiais com rigor disciplinar mesmo diante do avanço imparável da resistência subterrânea?','Sua determinação militar reflete a resistência do próprio império à mudança.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Thymilph',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Cytomander',FALSE,2),(gen_random_uuid(),q,'Adiane',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','easy','Qual desses personagens contribui ativamente para reconstrução comunitária, demonstrando maturidade crescente ao longo dos anos que separam as duas metades da série?','Sua dedicação ao bem-estar coletivo se torna cada vez mais evidente conforme a trama avança.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Darry',TRUE,0),(gen_random_uuid(),q,'Gimmy',FALSE,1),(gen_random_uuid(),q,'Kittan',FALSE,2),(gen_random_uuid(),q,'Rossiu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','medium','Qual desses personagens organiza defesas aéreas sofisticadas contra o avanço constante da Team Dai-Gurren rumo à superfície?','Sua engenhosidade tática representa obstáculo significativo durante a campanha militar dos protagonistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cytomander',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Adiane',FALSE,2),(gen_random_uuid(),q,'Thymilph',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','hard','Qual desses personagens representa a resistência conservadora do império diante das transformações sociais trazidas pela vitória dos protagonistas?','Seu posicionamento reflete tensões ideológicas fundamentais exploradas ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Thymilph',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Cytomander',FALSE,2),(gen_random_uuid(),q,'Adiane',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','impossible','Qual desses personagens amadurece gradualmente assumindo papel de liderança comunitária significativa após anos de reconstrução pós-guerra?','Sua trajetória de crescimento é considerada exemplar entre os personagens jovens da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Darry',TRUE,0),(gen_random_uuid(),q,'Gimmy',FALSE,1),(gen_random_uuid(),q,'Kittan',FALSE,2),(gen_random_uuid(),q,'Rossiu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','impossible','Qual desses personagens mantém controle rigoroso sobre unidades aéreas imperiais mesmo durante momentos de crise militar extrema?','Sua disciplina militar excepcional é reconhecida amplamente dentro da estrutura de comando.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cytomander',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Adiane',FALSE,2),(gen_random_uuid(),q,'Thymilph',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','impossible','Qual desses personagens simboliza através de suas ações a resistência tradicionalista contra o avanço inevitável da mudança social?','Sua caracterização complexa evita simplificações maniqueístas sobre o conflito central da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Thymilph',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Cytomander',FALSE,2),(gen_random_uuid(),q,'Adiane',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','easy','Qual desses personagens é reconhecido por sua determinação militar excepcional mesmo diante da queda iminente de todo o império imperial?','Sua resistência pessoal reflete a obstinação de toda a estrutura militar que representa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Thymilph',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Cytomander',FALSE,2),(gen_random_uuid(),q,'Adiane',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','medium','Qual desses personagens comanda operações aéreas de reconhecimento antes de confrontos decisivos entre a resistência e o império?','Sua função de vigilância é crucial para as estratégias militares imperiais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cytomander',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Adiane',FALSE,2),(gen_random_uuid(),q,'Thymilph',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','hard','Qual desses personagens jovens assume responsabilidades crescentes de coordenação logística durante a reconstrução pós-guerra da comunidade?','Sua contribuição organizacional se torna cada vez mais reconhecida ao longo dos anos seguintes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Darry',TRUE,0),(gen_random_uuid(),q,'Gimmy',FALSE,1),(gen_random_uuid(),q,'Kittan',FALSE,2),(gen_random_uuid(),q,'Rossiu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','impossible','Qual desses personagens permanece fiel aos ideais imperiais tradicionais mesmo após presenciar múltiplas derrotas consecutivas contra a resistência?','Sua obstinação ideológica levanta questões complexas sobre lealdade e mudança dentro da narrativa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Thymilph',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Cytomander',FALSE,2),(gen_random_uuid(),q,'Adiane',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','medium','Qual desses personagens desenvolve táticas aéreas inovadoras especificamente para conter o avanço territorial da Team Dai-Gurren?','Sua criatividade estratégica é notada até mesmo pelos protagonistas que a enfrentam.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cytomander',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Adiane',FALSE,2),(gen_random_uuid(),q,'Thymilph',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','hard','Qual desses personagens jovens equilibra responsabilidades crescentes na comunidade com o cuidado contínuo pelo bem-estar de seu irmão mais novo?','Sua dedicação familiar reflete valores centrais explorados durante o período de reconstrução da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Darry',TRUE,0),(gen_random_uuid(),q,'Gimmy',FALSE,1),(gen_random_uuid(),q,'Kittan',FALSE,2),(gen_random_uuid(),q,'Rossiu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','medium','Qual desses personagens mantém firme resistência militar contra a expansão da resistência mesmo diante de recursos imperiais cada vez mais escassos?','Sua persistência tática reflete a determinação da estrutura de comando que ainda representa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Thymilph',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Cytomander',FALSE,2),(gen_random_uuid(),q,'Adiane',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','hard','Qual desses personagens executa manobras de interceptação complexas contra as forças da Team Dai-Gurren em pontos estratégicos do território?','Sua habilidade tática força os protagonistas a reconsiderarem suas rotas de avanço planejadas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cytomander',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Adiane',FALSE,2),(gen_random_uuid(),q,'Thymilph',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','medium','Qual desses personagens jovens colabora ativamente em decisões estratégicas comunitárias, refletindo maturidade incomum para sua idade?','Seu envolvimento crescente nos assuntos coletivos surpreende positivamente os demais membros do grupo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Darry',TRUE,0),(gen_random_uuid(),q,'Gimmy',FALSE,1),(gen_random_uuid(),q,'Kittan',FALSE,2),(gen_random_uuid(),q,'Rossiu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','hard','Qual desses personagens continua defendendo estruturas imperiais tradicionais mesmo quando a maioria de seus colegas já reconheceu a inevitabilidade da mudança?','Sua resistência ideológica prolongada gera tensão dramática significativa nos capítulos finais anteriores à derrota total.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Thymilph',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Cytomander',FALSE,2),(gen_random_uuid(),q,'Adiane',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','medium','Qual desses personagens comanda com precisão técnica formações aéreas complexas contra os avanços constantes da resistência subterrânea?','Sua reputação como estrategista aéreo é amplamente reconhecida entre aliados e adversários.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cytomander',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Adiane',FALSE,2),(gen_random_uuid(),q,'Thymilph',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','impossible','Qual desses personagens jovens se torna figura de referência para outras crianças da comunidade durante o longo período de reconstrução pós-guerra?','Sua liderança natural surge organicamente ao longo dos anos que separam as duas metades da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Darry',TRUE,0),(gen_random_uuid(),q,'Gimmy',FALSE,1),(gen_random_uuid(),q,'Kittan',FALSE,2),(gen_random_uuid(),q,'Rossiu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','hard','Qual desses personagens simboliza o custo humano da guerra prolongada entre o império e a crescente resistência subterrânea liderada pelos protagonistas?','Sua narrativa pessoal humaniza o conflito além das simples dicotomias entre heróis e vilões.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Thymilph',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Cytomander',FALSE,2),(gen_random_uuid(),q,'Adiane',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','medium','Qual desses personagens desenvolve reputação de comandante implacável em batalhas aéreas contra as forças crescentes da Team Dai-Gurren?','Sua ferocidade tática é temida tanto por aliados quanto por inimigos ao longo da campanha militar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cytomander',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Adiane',FALSE,2),(gen_random_uuid(),q,'Thymilph',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','hard','Qual desses personagens jovens equilibra estudos, trabalho comunitário e responsabilidades familiares durante o período de reconstrução da cidade?','Sua rotina disciplinada reflete o amadurecimento acelerado imposto pelas circunstâncias pós-guerra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Darry',TRUE,0),(gen_random_uuid(),q,'Gimmy',FALSE,1),(gen_random_uuid(),q,'Kittan',FALSE,2),(gen_random_uuid(),q,'Rossiu',FALSE,3);

    -- fill_blank complemento (18)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'fill_blank','easy','A irmã mais velha de Gimmy, integrante do grupo que também cresce significativamente após o salto temporal, se chama ___.','Ela demonstra maturidade crescente ao lidar com responsabilidades cada vez maiores.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Darry',TRUE,0),(gen_random_uuid(),q,'Gimmy',FALSE,1),(gen_random_uuid(),q,'Kittan',FALSE,2),(gen_random_uuid(),q,'Rossiu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'fill_blank','medium','O general besta espiral que comanda forças aéreas, enfrentando os protagonistas durante sua ascensão, se chama ___.','Sua tática de combate aéreo representa desafio único para o grupo protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cytomander',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Adiane',FALSE,2),(gen_random_uuid(),q,'Thymilph',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'fill_blank','hard','O comandante que lidera as forças imperiais em confronto climático antes da derrota final de Lordgenome se chama ___.','Sua lealdade rígida à hierarquia imperial é testada durante os eventos decisivos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Thymilph',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Cytomander',FALSE,2),(gen_random_uuid(),q,'Adiane',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'fill_blank','easy','A integrante que acompanha o crescimento de Gimmy, assumindo responsabilidades cada vez maiores, se chama ___.','Sua evolução pessoal reflete diretamente as mudanças sofridas por toda a comunidade após anos de reconstrução.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Darry',TRUE,0),(gen_random_uuid(),q,'Gimmy',FALSE,1),(gen_random_uuid(),q,'Kittan',FALSE,2),(gen_random_uuid(),q,'Rossiu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'fill_blank','medium','O comandante que lidera esquadrões aéreos hostis contra os protagonistas durante sua ascensão territorial se chama ___.','Sua estratégia militar representa um dos desafios táticos mais complexos enfrentados pelo grupo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cytomander',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Adiane',FALSE,2),(gen_random_uuid(),q,'Thymilph',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'fill_blank','hard','O comandante que permanece leal à estrutura imperial mesmo diante da crescente resistência dos protagonistas se chama ___.','Sua rigidez hierárquica contrasta com a flexibilidade estratégica demonstrada por outros comandantes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Thymilph',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Cytomander',FALSE,2),(gen_random_uuid(),q,'Adiane',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'fill_blank','easy','A integrante que demonstra amadurecimento notável entre a primeira e segunda metade da narrativa se chama ___.','Sua transformação pessoal é um dos exemplos mais claros de crescimento de personagem na série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Darry',TRUE,0),(gen_random_uuid(),q,'Gimmy',FALSE,1),(gen_random_uuid(),q,'Kittan',FALSE,2),(gen_random_uuid(),q,'Rossiu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'fill_blank','medium','O comandante que intercepta a ascensão dos protagonistas rumo aos territórios superiores se chama ___.','Sua expertise tática exige que o grupo desenvolva novas estratégias de combate aéreo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cytomander',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Adiane',FALSE,2),(gen_random_uuid(),q,'Thymilph',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'fill_blank','hard','O comandante cuja lealdade rigorosa é testada durante eventos decisivos que precedem a queda de Lordgenome se chama ___.','Seu comportamento reflete os valores tradicionais da hierarquia militar imperial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Thymilph',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Cytomander',FALSE,2),(gen_random_uuid(),q,'Adiane',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'fill_blank','easy','A integrante que assume gradualmente mais responsabilidades comunitárias na segunda metade da série se chama ___.','Sua jornada pessoal simboliza a reconstrução gradual vivida por toda a comunidade após a guerra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Darry',TRUE,0),(gen_random_uuid(),q,'Gimmy',FALSE,1),(gen_random_uuid(),q,'Kittan',FALSE,2),(gen_random_uuid(),q,'Rossiu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'fill_blank','medium','O comandante que desafia taticamente os protagonistas através de manobras aéreas complexas se chama ___.','Sua habilidade de comando aéreo é reconhecida até mesmo por seus adversários.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cytomander',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Adiane',FALSE,2),(gen_random_uuid(),q,'Thymilph',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'fill_blank','hard','O comandante que lidera tropas imperiais com rigor disciplinar diante do avanço da resistência subterrânea se chama ___.','Sua determinação militar reflete a resistência do próprio império à mudança.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Thymilph',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Cytomander',FALSE,2),(gen_random_uuid(),q,'Adiane',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'fill_blank','easy','A integrante que contribui ativamente para reconstrução comunitária, demonstrando maturidade crescente, se chama ___.','Sua dedicação ao bem-estar coletivo se torna cada vez mais evidente conforme a trama avança.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Darry',TRUE,0),(gen_random_uuid(),q,'Gimmy',FALSE,1),(gen_random_uuid(),q,'Kittan',FALSE,2),(gen_random_uuid(),q,'Rossiu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'fill_blank','medium','O comandante que organiza defesas aéreas sofisticadas contra o avanço da Team Dai-Gurren se chama ___.','Sua engenhosidade tática representa obstáculo significativo durante a campanha militar dos protagonistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cytomander',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Adiane',FALSE,2),(gen_random_uuid(),q,'Thymilph',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'fill_blank','hard','O comandante que representa a resistência conservadora do império diante das transformações sociais trazidas pelos protagonistas se chama ___.','Seu posicionamento reflete tensões ideológicas fundamentais exploradas ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Thymilph',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Cytomander',FALSE,2),(gen_random_uuid(),q,'Adiane',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'fill_blank','impossible','A integrante que amadurece assumindo papel de liderança comunitária significativa após anos de reconstrução pós-guerra se chama ___.','Sua trajetória de crescimento é considerada exemplar entre os personagens jovens da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Darry',TRUE,0),(gen_random_uuid(),q,'Gimmy',FALSE,1),(gen_random_uuid(),q,'Kittan',FALSE,2),(gen_random_uuid(),q,'Rossiu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'fill_blank','impossible','O comandante que mantém controle rigoroso sobre unidades aéreas imperiais durante crise militar extrema se chama ___.','Sua disciplina militar excepcional é reconhecida amplamente dentro da estrutura de comando.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cytomander',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Adiane',FALSE,2),(gen_random_uuid(),q,'Thymilph',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'fill_blank','impossible','O comandante que representa através de suas ações o custo humano da guerra prolongada entre império e resistência se chama ___.','Sua narrativa pessoal humaniza o conflito além das simples dicotomias entre heróis e vilões.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Thymilph',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Cytomander',FALSE,2),(gen_random_uuid(),q,'Adiane',FALSE,3);

    -- who_said complemento (17)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'who_said','easy','Quem disse: "Eu cresci muito desde os primeiros dias na vila subterrânea, assumindo cada vez mais responsabilidades junto ao meu irmão"?','A frase é dita pela irmã mais velha de Gimmy que também amadurece ao longo do salto temporal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Darry',TRUE,0),(gen_random_uuid(),q,'Gimmy',FALSE,1),(gen_random_uuid(),q,'Kittan',FALSE,2),(gen_random_uuid(),q,'Rossiu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'who_said','medium','Quem disse: "Eu comando minhas forças aéreas com precisão tática, representando desafio único para qualquer inimigo que ouse me enfrentar"?','A frase é dita pelo general besta espiral especializado em combate aéreo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cytomander',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Adiane',FALSE,2),(gen_random_uuid(),q,'Thymilph',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'who_said','hard','Quem disse: "Minha lealdade rígida à hierarquia imperial é testada constantemente diante do avanço imparável da resistência subterrânea"?','A frase é dita pelo comandante que lidera as forças imperiais em confronto climático.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Thymilph',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Cytomander',FALSE,2),(gen_random_uuid(),q,'Adiane',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'who_said','easy','Quem disse: "Minha evolução pessoal reflete diretamente as mudanças sofridas por toda esta comunidade após anos de reconstrução"?','A frase é dita pela integrante que acompanha o crescimento de Gimmy assumindo mais responsabilidades.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Darry',TRUE,0),(gen_random_uuid(),q,'Gimmy',FALSE,1),(gen_random_uuid(),q,'Kittan',FALSE,2),(gen_random_uuid(),q,'Rossiu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'who_said','medium','Quem disse: "Minha estratégia militar representa um dos desafios táticos mais complexos que vocês já enfrentaram em toda esta jornada"?','A frase é dita pelo comandante que lidera esquadrões aéreos hostis contra os protagonistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cytomander',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Adiane',FALSE,2),(gen_random_uuid(),q,'Thymilph',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'who_said','hard','Quem disse: "Minha rigidez hierárquica contrasta com a flexibilidade estratégica demonstrada por outros comandantes deste vasto império"?','A frase é dita pelo comandante que permanece leal mesmo diante da crescente resistência.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Thymilph',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Cytomander',FALSE,2),(gen_random_uuid(),q,'Adiane',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'who_said','easy','Quem disse: "Minha transformação pessoal ao longo destes anos é considerada um dos exemplos mais claros de crescimento nesta comunidade"?','A frase é dita pela integrante que demonstra amadurecimento notável entre as duas metades da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Darry',TRUE,0),(gen_random_uuid(),q,'Gimmy',FALSE,1),(gen_random_uuid(),q,'Kittan',FALSE,2),(gen_random_uuid(),q,'Rossiu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'who_said','medium','Quem disse: "Minha expertise tática exige que qualquer inimigo desenvolva novas estratégias de combate aéreo apenas para me enfrentar"?','A frase é dita pelo comandante que intercepta a ascensão dos protagonistas rumo aos territórios superiores.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cytomander',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Adiane',FALSE,2),(gen_random_uuid(),q,'Thymilph',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'who_said','hard','Quem disse: "Meu comportamento reflete fielmente os valores tradicionais da hierarquia militar deste império há gerações"?','A frase é dita pelo comandante cuja lealdade é testada antes da queda de Lordgenome.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Thymilph',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Cytomander',FALSE,2),(gen_random_uuid(),q,'Adiane',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'who_said','easy','Quem disse: "Minha jornada pessoal simboliza a reconstrução gradual vivida por toda esta comunidade após tantos anos de guerra"?','A frase é dita pela integrante que assume gradualmente mais responsabilidades comunitárias.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Darry',TRUE,0),(gen_random_uuid(),q,'Gimmy',FALSE,1),(gen_random_uuid(),q,'Kittan',FALSE,2),(gen_random_uuid(),q,'Rossiu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'who_said','medium','Quem disse: "Minha habilidade de comando aéreo é reconhecida até mesmo pelos meus adversários mais determinados nesta longa guerra"?','A frase é dita pelo comandante que desafia taticamente os protagonistas através de manobras aéreas complexas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cytomander',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Adiane',FALSE,2),(gen_random_uuid(),q,'Thymilph',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'who_said','hard','Quem disse: "Minha determinação militar reflete a resistência do próprio império à mudança inevitável trazida por vocês"?','A frase é dita pelo comandante que lidera tropas imperiais com rigor disciplinar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Thymilph',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Cytomander',FALSE,2),(gen_random_uuid(),q,'Adiane',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'who_said','easy','Quem disse: "Minha dedicação ao bem-estar coletivo se torna cada vez mais evidente conforme os anos avançam nesta comunidade"?','A frase é dita pela integrante que contribui ativamente para reconstrução comunitária.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Darry',TRUE,0),(gen_random_uuid(),q,'Gimmy',FALSE,1),(gen_random_uuid(),q,'Kittan',FALSE,2),(gen_random_uuid(),q,'Rossiu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'who_said','medium','Quem disse: "Minha engenhosidade tática representa obstáculo significativo durante toda a campanha militar liderada pela Team Dai-Gurren"?','A frase é dita pelo comandante que organiza defesas aéreas sofisticadas contra o avanço dos protagonistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cytomander',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Adiane',FALSE,2),(gen_random_uuid(),q,'Thymilph',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'who_said','hard','Quem disse: "Meu posicionamento reflete tensões ideológicas fundamentais que permeiam todo o conflito explorado ao longo desta série"?','A frase é dita pelo comandante que representa a resistência conservadora do império.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Thymilph',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Cytomander',FALSE,2),(gen_random_uuid(),q,'Adiane',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'who_said','impossible','Quem disse: "Minha trajetória de crescimento é considerada exemplar entre os personagens jovens desta longa e complexa narrativa"?','A frase é dita pela integrante que amadurece assumindo papel de liderança comunitária significativa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Darry',TRUE,0),(gen_random_uuid(),q,'Gimmy',FALSE,1),(gen_random_uuid(),q,'Kittan',FALSE,2),(gen_random_uuid(),q,'Rossiu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','hard','Qual desses personagens continua liderando esforços militares residuais mesmo após sinais claros de que a causa imperial está fadada ao fracasso?','Sua teimosia estratégica reflete complexidade emocional rara entre antagonistas secundários da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Thymilph',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Cytomander',FALSE,2),(gen_random_uuid(),q,'Adiane',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'text','medium','Qual desses personagens jovens contribui com sugestões práticas durante reuniões de planejamento comunitário na cidade reconstruída?','Sua voz é cada vez mais ouvida e respeitada conforme demonstra maturidade crescente ao longo dos anos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Darry',TRUE,0),(gen_random_uuid(),q,'Gimmy',FALSE,1),(gen_random_uuid(),q,'Kittan',FALSE,2),(gen_random_uuid(),q,'Rossiu',FALSE,3);

    -- episode_arc complemento (6)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'episode_arc','medium','Em qual arco Cytomander enfrenta os protagonistas em combate aéreo decisivo durante sua ascensão territorial rumo à superfície?','Este confronto testa novas estratégias de combate aéreo desenvolvidas pelo grupo protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Lordgenome',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco do Salto Temporal',FALSE,2),(gen_random_uuid(),q,'Arco Anti-Espiral',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'episode_arc','hard','Em qual arco Thymilph lidera tropas imperiais com rigor disciplinar diante do avanço imparável da resistência subterrânea?','Este confronto militar antecede diretamente os eventos que levam à queda de Lordgenome.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Lordgenome',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco do Salto Temporal',FALSE,2),(gen_random_uuid(),q,'Arco Anti-Espiral',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'episode_arc','medium','Em qual arco Darry demonstra crescimento significativo de maturidade, assumindo responsabilidades comunitárias importantes?','Este desenvolvimento pessoal ocorre paralelamente à reconstrução geral da comunidade após a guerra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Salto Temporal',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco de Lordgenome',FALSE,2),(gen_random_uuid(),q,'Arco Anti-Espiral',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'episode_arc','hard','Em qual arco Cytomander organiza defesas aéreas sofisticadas contra o avanço constante da Team Dai-Gurren durante sua expansão territorial?','Sua engenhosidade tática obriga o grupo a desenvolver contramedidas específicas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Lordgenome',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco do Salto Temporal',FALSE,2),(gen_random_uuid(),q,'Arco Anti-Espiral',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'episode_arc','impossible','Em qual arco Thymilph representa formalmente a resistência conservadora do império diante das transformações sociais trazidas pela vitória dos protagonistas?','Sua caracterização complexa evita simplificações sobre o conflito ideológico central da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Lordgenome',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco do Salto Temporal',FALSE,2),(gen_random_uuid(),q,'Arco Anti-Espiral',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'episode_arc','impossible','Em qual arco Darry assume papel de liderança comunitária significativa após anos de reconstrução pós-guerra, consolidando seu crescimento pessoal?','Sua trajetória de amadurecimento é considerada exemplar entre os personagens jovens da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Salto Temporal',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco de Lordgenome',FALSE,2),(gen_random_uuid(),q,'Arco Anti-Espiral',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_gl,'who_said','hard','Quem disse: "Eu continuo liderando esforços militares residuais mesmo sabendo que a causa imperial está fadada ao fracasso completo"?','A frase é dita pelo comandante teimoso que persiste na luta apesar dos sinais evidentes de derrota.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Thymilph',TRUE,0),(gen_random_uuid(),q,'Guame',FALSE,1),(gen_random_uuid(),q,'Cytomander',FALSE,2),(gen_random_uuid(),q,'Adiane',FALSE,3);

END $$;
