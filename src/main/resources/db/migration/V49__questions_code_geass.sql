-- ============================================================
--  V49 — Seed de perguntas: Code Geass (150 perguntas)
--  Fonte: MyAnimeList + cânone do anime
--  Distribuição: text 40% / fill_blank 25% / who_said 20% /
--                episode_arc 10% / chronological 5%
--  Sem repetição com V5. Regras R1-R7 aplicadas.
-- ============================================================

DO $$
DECLARE
    v_system UUID := '00000000-0000-0000-0000-000000000001';
    v_cg     UUID;
    q        UUID;
BEGIN
    SELECT id INTO v_cg FROM animes WHERE slug = 'code-geass' LIMIT 1;

    -- ══════════════════════════════════════════════════════════
    -- TEXT — 60 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','easy','Qual é o nome do protagonista, príncipe exilado que recebe poder sobrenatural de comando absoluto para se vingar do império que o baniu?','Ele lidera uma dupla identidade entre estudante comum e líder revolucionário mascarado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Lelouch Lamperouge',TRUE,0),(gen_random_uuid(),q,'Suzaku',FALSE,1),(gen_random_uuid(),q,'Schneizel',FALSE,2),(gen_random_uuid(),q,'Rolo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','easy','Qual é o nome dado ao poder sobrenatural concedido ao protagonista, capaz de forçar obediência absoluta em qualquer pessoa através do contato visual?','Ele possui limitações específicas que o protagonista precisa gerenciar cuidadosamente durante seu uso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Geass',TRUE,0),(gen_random_uuid(),q,'Sharingan',FALSE,1),(gen_random_uuid(),q,'Contrato Real',FALSE,2),(gen_random_uuid(),q,'Comando Absoluto',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','easy','Qual é o nome do melhor amigo de infância do protagonista, piloto talentoso que serve ao império inimigo apesar de sua origem japonesa?','Sua amizade com o protagonista é constantemente testada por lealdades conflitantes ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Suzaku Kururugi',TRUE,0),(gen_random_uuid(),q,'Lelouch',FALSE,1),(gen_random_uuid(),q,'Schneizel',FALSE,2),(gen_random_uuid(),q,'Jeremiah',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','easy','Qual é o nome dado à identidade mascarada assumida pelo protagonista ao liderar o movimento de resistência contra o império opressor?','Sua verdadeira identidade permanece secreta para a maioria dos aliados e inimigos durante grande parte da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zero',TRUE,0),(gen_random_uuid(),q,'Máscara Negra',FALSE,1),(gen_random_uuid(),q,'Fantasma',FALSE,2),(gen_random_uuid(),q,'Sombra',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','easy','Qual é o nome dado ao movimento de resistência fundado pelo protagonista, dedicado a libertar o território japonês ocupado pelo império?','Ele cresce significativamente em poder e influência ao longo do desenvolvimento da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Black Knights',TRUE,0),(gen_random_uuid(),q,'Ordem da Resistência',FALSE,1),(gen_random_uuid(),q,'Aliança Japonesa',FALSE,2),(gen_random_uuid(),q,'Frente de Libertação',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','easy','Qual é o nome dado ao território japonês renomeado após sua ocupação pelo império imperial, perdendo sua identidade nacional original?','Seus habitantes são tratados como cidadãos de segunda classe pelo governo imperial ocupante.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Area 11',TRUE,0),(gen_random_uuid(),q,'Zona Ocupada',FALSE,1),(gen_random_uuid(),q,'Território 7',FALSE,2),(gen_random_uuid(),q,'Setor Japonês',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','easy','Qual é o nome dado ao poderoso império que conquista territórios ao redor do mundo, incluindo o Japão, através de força militar avançada?','Sua estrutura social é baseada em rígida hierarquia nobre e discriminação territorial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sacro Império Britannia',TRUE,0),(gen_random_uuid(),q,'Império Chinês',FALSE,1),(gen_random_uuid(),q,'União Europeia',FALSE,2),(gen_random_uuid(),q,'Federação Russa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','easy','Qual é o nome da meia-irmã mais nova do protagonista, cega e paralítica desde a infância, cuja proteção motiva grande parte de suas ações?','Ela desconhece a verdadeira identidade heroica de seu irmão por grande parte da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nunnally',TRUE,0),(gen_random_uuid(),q,'Euphemia',FALSE,1),(gen_random_uuid(),q,'Cornelia',FALSE,2),(gen_random_uuid(),q,'Kallen',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','easy','Qual é o nome da piloto habilidosa de ascendência mista, uma das principais integrantes do movimento de resistência liderado pelo protagonista?','Ela demonstra habilidades excepcionais de combate apesar de sua origem parcialmente marginalizada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kallen Kouzuki',TRUE,0),(gen_random_uuid(),q,'Nunnally',FALSE,1),(gen_random_uuid(),q,'C.C.',FALSE,2),(gen_random_uuid(),q,'Shirley',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','easy','Qual é o nome da jovem misteriosa e imortal que concede o poder sobrenatural ao protagonista, tornando-se aliada e companheira constante?','Sua verdadeira história e motivações permanecem parcialmente reveladas ao longo da narrativa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'C.C.',TRUE,0),(gen_random_uuid(),q,'Kallen',FALSE,1),(gen_random_uuid(),q,'Nunnally',FALSE,2),(gen_random_uuid(),q,'Marianne',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','easy','Qual é o nome do irmão mais velho do protagonista, príncipe estrategista brilhante que ocupa posição de destaque na hierarquia imperial?','Ele demonstra intelecto comparável ao do protagonista, tornando-se rival estratégico formidável.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Schneizel',TRUE,0),(gen_random_uuid(),q,'Lelouch',FALSE,1),(gen_random_uuid(),q,'Clovis',FALSE,2),(gen_random_uuid(),q,'Odysseus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','easy','Qual é o nome dado aos robôs de combate humanoides pilotados por soldados e pilotos ao longo dos conflitos militares da série?','Sua tecnologia avançada representa vantagem militar decisiva para quem os possui.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Knightmare Frame',TRUE,0),(gen_random_uuid(),q,'Mecha Titã',FALSE,1),(gen_random_uuid(),q,'Gundam Real',FALSE,2),(gen_random_uuid(),q,'Guerreiro Blindado',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','medium','Qual é o nome da meia-irmã do protagonista, princesa gentil enviada como vice-rainha para administrar o território japonês ocupado?','Sua abordagem compassiva contrasta fortemente com a política opressiva típica do império.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Euphemia',TRUE,0),(gen_random_uuid(),q,'Nunnally',FALSE,1),(gen_random_uuid(),q,'Cornelia',FALSE,2),(gen_random_uuid(),q,'Kallen',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','medium','Qual é o nome da meia-irmã guerreira e ferozmente leal do protagonista, comandante militar respeitada dentro da estrutura imperial?','Ela lidera campanhas militares importantes contra o movimento de resistência ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cornelia',TRUE,0),(gen_random_uuid(),q,'Euphemia',FALSE,1),(gen_random_uuid(),q,'Nunnally',FALSE,2),(gen_random_uuid(),q,'Kallen',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','medium','Qual é o nome do imperador do Sacro Império Britannia, pai do protagonista, governante filosoficamente comprometido com ideais darwinistas extremos?','Sua visão de mundo baseada em força e superioridade molda profundamente a política imperial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Charles zi Britannia',TRUE,0),(gen_random_uuid(),q,'Schneizel',FALSE,1),(gen_random_uuid(),q,'Odysseus',FALSE,2),(gen_random_uuid(),q,'Clovis',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','medium','Qual é o nome da mãe do protagonista e de Nunnally, misteriosamente assassinada em evento que catalisa toda a trama de vingança da série?','Sua verdadeira conexão com eventos sobrenaturais é revelada apenas em momentos avançados da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Marianne',TRUE,0),(gen_random_uuid(),q,'C.C.',FALSE,1),(gen_random_uuid(),q,'Cornelia',FALSE,2),(gen_random_uuid(),q,'Euphemia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','medium','Qual é o nome do cavaleiro leal e obcecado por honra que serve à princesa Cornelia, posteriormente afetado diretamente pelo poder do protagonista?','Sua devoção inabalável se transforma drasticamente após um evento decisivo envolvendo o Geass.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Jeremiah Gottwald',TRUE,0),(gen_random_uuid(),q,'Suzaku',FALSE,1),(gen_random_uuid(),q,'Schneizel',FALSE,2),(gen_random_uuid(),q,'Rolo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','medium','Qual é o nome da colega de classe do protagonista, apaixonada por ele, que desconhece completamente sua dupla identidade como líder revolucionário?','Sua trajetória pessoal reflete o impacto emocional da guerra sobre civis inocentes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shirley Fenette',TRUE,0),(gen_random_uuid(),q,'Kallen',FALSE,1),(gen_random_uuid(),q,'Nunnally',FALSE,2),(gen_random_uuid(),q,'C.C.',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','medium','Qual é o nome do jovem introduzido posteriormente como falso irmão mais novo do protagonista, secretamente agente de organização governamental especial?','Ele também possui poder de Geass próprio, ligado ao controle temporal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rolo Lamperouge',TRUE,0),(gen_random_uuid(),q,'Suzaku',FALSE,1),(gen_random_uuid(),q,'Schneizel',FALSE,2),(gen_random_uuid(),q,'Jeremiah',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','medium','Qual é o nome dado à organização secreta que estuda o fenômeno do Geass e suas origens misteriosas ao longo da história humana?','Seus membros mantêm conhecimento restrito sobre a verdadeira natureza desse poder sobrenatural.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Geass Order',TRUE,0),(gen_random_uuid(),q,'Conselho dos Códigos',FALSE,1),(gen_random_uuid(),q,'Irmandade V.V.',FALSE,2),(gen_random_uuid(),q,'Sociedade Oculta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','hard','Qual é o nome dado ao estado de imortalidade concedido a portadores especiais associados diretamente ao poder do Geass em sua forma mais avançada?','Sua obtenção envolve rituais complexos e consequências duradouras para quem o recebe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Código Geass',TRUE,0),(gen_random_uuid(),q,'Contrato Eterno',FALSE,1),(gen_random_uuid(),q,'Selo Imortal',FALSE,2),(gen_random_uuid(),q,'Marca Suprema',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','hard','Qual é o nome dado à arma orbital devastadora desenvolvida pelo império, capaz de destruir cidades inteiras a partir do espaço?','Sua ameaça constante representa um dos maiores desafios estratégicos enfrentados pelo movimento de resistência.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'FLEIJA',TRUE,0),(gen_random_uuid(),q,'Canhão Orbital',FALSE,1),(gen_random_uuid(),q,'Arma Definitiva',FALSE,2),(gen_random_uuid(),q,'Destruidor Celestial',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','hard','Qual é o nome dado ao plano final elaborado pelo protagonista, envolvendo assumir o trono imperial através de estratégia extremamente arriscada?','Sua execução exige sacrifícios pessoais profundos por parte do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zero Requiem',TRUE,0),(gen_random_uuid(),q,'Plano Final',FALSE,1),(gen_random_uuid(),q,'Operação Redenção',FALSE,2),(gen_random_uuid(),q,'Estratégia Suprema',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','hard','Qual é o nome dado ao gêmeo antagonista de longa vida ligado à história de origem do Geass, revelado como figura central nos eventos finais da série?','Sua verdadeira natureza e motivações são reveladas apenas nos capítulos finais da narrativa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'V.V.',TRUE,0),(gen_random_uuid(),q,'Charles',FALSE,1),(gen_random_uuid(),q,'Schneizel',FALSE,2),(gen_random_uuid(),q,'Bismarck',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','hard','Qual é o nome dado à dimensão especial onde memórias e consciências coletivas humanas podem ser potencialmente unificadas através de rituais específicos?','Este conceito está diretamente ligado aos planos mais ambiciosos de Charles e V.V.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mundo de C',TRUE,0),(gen_random_uuid(),q,'Reino Coletivo',FALSE,1),(gen_random_uuid(),q,'Dimensão Espelho',FALSE,2),(gen_random_uuid(),q,'Plano Consciente',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','impossible','Qual é o nome dado ao cavaleiro imperial mais forte, considerado invicto em combate direto contra os melhores pilotos de Knightmare Frame do mundo?','Sua reputação de invencibilidade é testada apenas em momentos avançados da segunda temporada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bismarck Waldstein',TRUE,0),(gen_random_uuid(),q,'Jeremiah',FALSE,1),(gen_random_uuid(),q,'Suzaku',FALSE,2),(gen_random_uuid(),q,'Gino',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','impossible','Qual é o nome dado ao piloto excêntrico e amigável, membro da elite imperial que desenvolve rivalidade respeitosa com Suzaku ao longo da segunda temporada?','Sua personalidade descontraída contrasta com a seriedade típica de outros cavaleiros imperiais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gino Weinberg',TRUE,0),(gen_random_uuid(),q,'Bismarck',FALSE,1),(gen_random_uuid(),q,'Jeremiah',FALSE,2),(gen_random_uuid(),q,'Anya',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- FILL_BLANK — 38 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'fill_blank','easy','O protagonista, príncipe exilado que recebe poder sobrenatural de comando absoluto, se chama ___.','Ele lidera uma dupla identidade entre estudante comum e líder revolucionário mascarado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Lelouch',TRUE,0),(gen_random_uuid(),q,'Suzaku',FALSE,1),(gen_random_uuid(),q,'Schneizel',FALSE,2),(gen_random_uuid(),q,'Rolo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'fill_blank','easy','O poder sobrenatural concedido ao protagonista, capaz de forçar obediência absoluta através do contato visual, se chama ___.','Ele possui limitações específicas que o protagonista precisa gerenciar cuidadosamente durante seu uso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Geass',TRUE,0),(gen_random_uuid(),q,'Sharingan',FALSE,1),(gen_random_uuid(),q,'Contrato Real',FALSE,2),(gen_random_uuid(),q,'Comando Absoluto',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'fill_blank','easy','O melhor amigo de infância do protagonista, piloto talentoso que serve ao império inimigo, se chama ___.','Sua amizade com o protagonista é constantemente testada por lealdades conflitantes ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Suzaku',TRUE,0),(gen_random_uuid(),q,'Lelouch',FALSE,1),(gen_random_uuid(),q,'Schneizel',FALSE,2),(gen_random_uuid(),q,'Jeremiah',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'fill_blank','easy','A identidade mascarada assumida pelo protagonista ao liderar o movimento de resistência é conhecida como ___.','Sua verdadeira identidade permanece secreta para a maioria dos aliados e inimigos durante grande parte da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zero',TRUE,0),(gen_random_uuid(),q,'Máscara Negra',FALSE,1),(gen_random_uuid(),q,'Fantasma',FALSE,2),(gen_random_uuid(),q,'Sombra',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'fill_blank','easy','O movimento de resistência fundado pelo protagonista, dedicado a libertar o território japonês ocupado, se chama ___.','Ele cresce significativamente em poder e influência ao longo do desenvolvimento da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Black Knights',TRUE,0),(gen_random_uuid(),q,'Ordem da Resistência',FALSE,1),(gen_random_uuid(),q,'Aliança Japonesa',FALSE,2),(gen_random_uuid(),q,'Frente de Libertação',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'fill_blank','easy','O território japonês renomeado após sua ocupação pelo império imperial se chama ___.','Seus habitantes são tratados como cidadãos de segunda classe pelo governo imperial ocupante.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Area 11',TRUE,0),(gen_random_uuid(),q,'Zona Ocupada',FALSE,1),(gen_random_uuid(),q,'Território 7',FALSE,2),(gen_random_uuid(),q,'Setor Japonês',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'fill_blank','easy','O poderoso império que conquista territórios ao redor do mundo, incluindo o Japão, se chama ___.','Sua estrutura social é baseada em rígida hierarquia nobre e discriminação territorial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sacro Império Britannia',TRUE,0),(gen_random_uuid(),q,'Império Chinês',FALSE,1),(gen_random_uuid(),q,'União Europeia',FALSE,2),(gen_random_uuid(),q,'Federação Russa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'fill_blank','easy','A meia-irmã mais nova do protagonista, cega e paralítica desde a infância, se chama ___.','Ela desconhece a verdadeira identidade heroica de seu irmão por grande parte da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nunnally',TRUE,0),(gen_random_uuid(),q,'Euphemia',FALSE,1),(gen_random_uuid(),q,'Cornelia',FALSE,2),(gen_random_uuid(),q,'Kallen',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'fill_blank','easy','A piloto habilidosa de ascendência mista, principal integrante do movimento de resistência, se chama ___.','Ela demonstra habilidades excepcionais de combate apesar de sua origem parcialmente marginalizada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kallen',TRUE,0),(gen_random_uuid(),q,'Nunnally',FALSE,1),(gen_random_uuid(),q,'C.C.',FALSE,2),(gen_random_uuid(),q,'Shirley',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'fill_blank','easy','A jovem misteriosa e imortal que concede o poder sobrenatural ao protagonista se chama ___.','Sua verdadeira história e motivações permanecem parcialmente reveladas ao longo da narrativa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'C.C.',TRUE,0),(gen_random_uuid(),q,'Kallen',FALSE,1),(gen_random_uuid(),q,'Nunnally',FALSE,2),(gen_random_uuid(),q,'Marianne',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'fill_blank','medium','O irmão mais velho do protagonista, príncipe estrategista brilhante da hierarquia imperial, se chama ___.','Ele demonstra intelecto comparável ao do protagonista, tornando-se rival estratégico formidável.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Schneizel',TRUE,0),(gen_random_uuid(),q,'Lelouch',FALSE,1),(gen_random_uuid(),q,'Clovis',FALSE,2),(gen_random_uuid(),q,'Odysseus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'fill_blank','easy','Os robôs de combate humanoides pilotados por soldados ao longo dos conflitos militares são chamados de ___.','Sua tecnologia avançada representa vantagem militar decisiva para quem os possui.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Knightmare Frame',TRUE,0),(gen_random_uuid(),q,'Mecha Titã',FALSE,1),(gen_random_uuid(),q,'Gundam Real',FALSE,2),(gen_random_uuid(),q,'Guerreiro Blindado',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'fill_blank','medium','A meia-irmã do protagonista, princesa gentil enviada como vice-rainha do território japonês, se chama ___.','Sua abordagem compassiva contrasta fortemente com a política opressiva típica do império.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Euphemia',TRUE,0),(gen_random_uuid(),q,'Nunnally',FALSE,1),(gen_random_uuid(),q,'Cornelia',FALSE,2),(gen_random_uuid(),q,'Kallen',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'fill_blank','medium','A meia-irmã guerreira e ferozmente leal do protagonista, comandante militar respeitada, se chama ___.','Ela lidera campanhas militares importantes contra o movimento de resistência ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cornelia',TRUE,0),(gen_random_uuid(),q,'Euphemia',FALSE,1),(gen_random_uuid(),q,'Nunnally',FALSE,2),(gen_random_uuid(),q,'Kallen',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'fill_blank','medium','O imperador do Sacro Império Britannia, pai do protagonista, comprometido com ideais darwinistas extremos, se chama ___.','Sua visão de mundo baseada em força e superioridade molda profundamente a política imperial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Charles',TRUE,0),(gen_random_uuid(),q,'Schneizel',FALSE,1),(gen_random_uuid(),q,'Odysseus',FALSE,2),(gen_random_uuid(),q,'Clovis',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'fill_blank','medium','A mãe do protagonista e de Nunnally, misteriosamente assassinada em evento que catalisa a trama de vingança, se chama ___.','Sua verdadeira conexão com eventos sobrenaturais é revelada apenas em momentos avançados da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Marianne',TRUE,0),(gen_random_uuid(),q,'C.C.',FALSE,1),(gen_random_uuid(),q,'Cornelia',FALSE,2),(gen_random_uuid(),q,'Euphemia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'fill_blank','medium','O cavaleiro leal e obcecado por honra que serve à princesa Cornelia, afetado pelo poder do protagonista, se chama ___.','Sua devoção inabalável se transforma drasticamente após um evento decisivo envolvendo o Geass.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Jeremiah',TRUE,0),(gen_random_uuid(),q,'Suzaku',FALSE,1),(gen_random_uuid(),q,'Schneizel',FALSE,2),(gen_random_uuid(),q,'Rolo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'fill_blank','medium','A colega de classe do protagonista, apaixonada por ele, que desconhece sua dupla identidade, se chama ___.','Sua trajetória pessoal reflete o impacto emocional da guerra sobre civis inocentes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shirley',TRUE,0),(gen_random_uuid(),q,'Kallen',FALSE,1),(gen_random_uuid(),q,'Nunnally',FALSE,2),(gen_random_uuid(),q,'C.C.',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'fill_blank','hard','O estado de imortalidade concedido a portadores especiais associados ao poder do Geass em sua forma mais avançada é chamado de ___.','Sua obtenção envolve rituais complexos e consequências duradouras para quem o recebe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Código Geass',TRUE,0),(gen_random_uuid(),q,'Contrato Eterno',FALSE,1),(gen_random_uuid(),q,'Selo Imortal',FALSE,2),(gen_random_uuid(),q,'Marca Suprema',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'fill_blank','hard','A arma orbital devastadora desenvolvida pelo império, capaz de destruir cidades inteiras a partir do espaço, é chamada de ___.','Sua ameaça constante representa um dos maiores desafios estratégicos enfrentados pelo movimento de resistência.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'FLEIJA',TRUE,0),(gen_random_uuid(),q,'Canhão Orbital',FALSE,1),(gen_random_uuid(),q,'Arma Definitiva',FALSE,2),(gen_random_uuid(),q,'Destruidor Celestial',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'fill_blank','hard','O plano final elaborado pelo protagonista, envolvendo assumir o trono imperial através de estratégia arriscada, é chamado de ___.','Sua execução exige sacrifícios pessoais profundos por parte do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zero Requiem',TRUE,0),(gen_random_uuid(),q,'Plano Final',FALSE,1),(gen_random_uuid(),q,'Operação Redenção',FALSE,2),(gen_random_uuid(),q,'Estratégia Suprema',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'fill_blank','hard','O gêmeo antagonista de longa vida ligado à história de origem do Geass se chama ___.','Sua verdadeira natureza e motivações são reveladas apenas nos capítulos finais da narrativa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'V.V.',TRUE,0),(gen_random_uuid(),q,'Charles',FALSE,1),(gen_random_uuid(),q,'Schneizel',FALSE,2),(gen_random_uuid(),q,'Bismarck',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'fill_blank','impossible','O cavaleiro imperial mais forte, considerado invicto em combate direto contra os melhores pilotos, se chama ___.','Sua reputação de invencibilidade é testada apenas em momentos avançados da segunda temporada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bismarck',TRUE,0),(gen_random_uuid(),q,'Jeremiah',FALSE,1),(gen_random_uuid(),q,'Suzaku',FALSE,2),(gen_random_uuid(),q,'Gino',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- WHO_SAID — 30 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'who_said','easy','Quem disse: "Eu, Zero, comando este movimento de resistência para libertar o Japão da opressão imperial, custe o que custar"?','A frase reflete a determinação do protagonista sob sua identidade mascarada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Lelouch',TRUE,0),(gen_random_uuid(),q,'Suzaku',FALSE,1),(gen_random_uuid(),q,'Schneizel',FALSE,2),(gen_random_uuid(),q,'Rolo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'who_said','easy','Quem disse: "Eu sirvo ao império mesmo sendo japonês, acreditando que mudança gradual é o único caminho realista para meu povo"?','A frase é dita pelo melhor amigo de infância do protagonista, piloto leal ao império.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Suzaku',TRUE,0),(gen_random_uuid(),q,'Lelouch',FALSE,1),(gen_random_uuid(),q,'Schneizel',FALSE,2),(gen_random_uuid(),q,'Jeremiah',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'who_said','easy','Quem disse: "Eu concedi meu poder de Geass a Lelouch, e desde então observo com curiosidade genuína como ele o utiliza"?','A frase é dita pela jovem imortal misteriosa que se torna companheira constante do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'C.C.',TRUE,0),(gen_random_uuid(),q,'Kallen',FALSE,1),(gen_random_uuid(),q,'Nunnally',FALSE,2),(gen_random_uuid(),q,'Marianne',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'who_said','easy','Quem disse: "Eu não enxergo com meus olhos, mas confio profundamente que meu irmão está fazendo o melhor para me proteger"?','A frase é dita pela meia-irmã cega e paralítica do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nunnally',TRUE,0),(gen_random_uuid(),q,'Euphemia',FALSE,1),(gen_random_uuid(),q,'Cornelia',FALSE,2),(gen_random_uuid(),q,'Kallen',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'who_said','easy','Quem disse: "Eu piloto meu Knightmare Frame com habilidade excepcional, apesar de minha origem parcialmente marginalizada pela sociedade imperial"?','A frase é dita pela piloto habilidosa do movimento de resistência.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kallen',TRUE,0),(gen_random_uuid(),q,'Nunnally',FALSE,1),(gen_random_uuid(),q,'C.C.',FALSE,2),(gen_random_uuid(),q,'Shirley',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'who_said','medium','Quem disse: "Minha abordagem compassiva como vice-rainha contrasta fortemente com a política opressiva típica do meu próprio império"?','A frase é dita pela meia-irmã gentil enviada para administrar o território japonês.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Euphemia',TRUE,0),(gen_random_uuid(),q,'Nunnally',FALSE,1),(gen_random_uuid(),q,'Cornelia',FALSE,2),(gen_random_uuid(),q,'Kallen',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'who_said','medium','Quem disse: "Eu lidero campanhas militares importantes contra o movimento de resistência, sempre protegendo ferozmente minha família"?','A frase é dita pela meia-irmã guerreira e comandante militar respeitada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cornelia',TRUE,0),(gen_random_uuid(),q,'Euphemia',FALSE,1),(gen_random_uuid(),q,'Nunnally',FALSE,2),(gen_random_uuid(),q,'Kallen',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'who_said','medium','Quem disse: "Minha visão de mundo baseada em força e superioridade molda profundamente toda a política deste vasto império"?','A frase é dita pelo imperador comprometido com ideais darwinistas extremos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Charles',TRUE,0),(gen_random_uuid(),q,'Schneizel',FALSE,1),(gen_random_uuid(),q,'Odysseus',FALSE,2),(gen_random_uuid(),q,'Clovis',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'who_said','medium','Quem disse: "Minha devoção inabalável à princesa Cornelia se transformou drasticamente após aquele evento decisivo envolvendo o Geass"?','A frase é dita pelo cavaleiro leal e obcecado por honra afetado diretamente pelo poder do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Jeremiah',TRUE,0),(gen_random_uuid(),q,'Suzaku',FALSE,1),(gen_random_uuid(),q,'Schneizel',FALSE,2),(gen_random_uuid(),q,'Rolo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'who_said','medium','Quem disse: "Eu sou apaixonada por Lelouch desde a escola, sem imaginar completamente a dupla vida que ele leva em segredo"?','A frase é dita pela colega de classe apaixonada pelo protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shirley',TRUE,0),(gen_random_uuid(),q,'Kallen',FALSE,1),(gen_random_uuid(),q,'Nunnally',FALSE,2),(gen_random_uuid(),q,'C.C.',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'who_said','hard','Quem disse: "Meu intelecto rivaliza diretamente com o do meu irmão mais novo, tornando nossos confrontos estratégicos verdadeiramente decisivos"?','A frase é dita pelo irmão mais velho estrategista brilhante da hierarquia imperial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Schneizel',TRUE,0),(gen_random_uuid(),q,'Lelouch',FALSE,1),(gen_random_uuid(),q,'Clovis',FALSE,2),(gen_random_uuid(),q,'Odysseus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'who_said','hard','Quem disse: "Eu sou irmão gêmeo de longa vida ligado diretamente à história de origem do próprio Geass, um segredo revelado apenas ao final"?','A frase é dita pelo antagonista misterioso associado às origens do poder sobrenatural.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'V.V.',TRUE,0),(gen_random_uuid(),q,'Charles',FALSE,1),(gen_random_uuid(),q,'Schneizel',FALSE,2),(gen_random_uuid(),q,'Bismarck',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'who_said','hard','Quem disse: "Minha reputação de invencibilidade em combate direto é testada apenas nos momentos mais avançados desta segunda temporada"?','A frase é dita pelo cavaleiro imperial mais forte, considerado invicto contra os melhores pilotos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bismarck',TRUE,0),(gen_random_uuid(),q,'Jeremiah',FALSE,1),(gen_random_uuid(),q,'Suzaku',FALSE,2),(gen_random_uuid(),q,'Gino',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- EPISODE_ARC — 15 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'episode_arc','medium','Em qual arco Lelouch recebe o Geass de C.C. e inicia sua jornada como Zero, líder mascarado da resistência?','O arco estabelece a premissa inicial de toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Origem',TRUE,0),(gen_random_uuid(),q,'Arco de Euphemia',FALSE,1),(gen_random_uuid(),q,'Arco de Zero Requiem',FALSE,2),(gen_random_uuid(),q,'Arco de Schneizel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'episode_arc','medium','Em qual arco a Black Knights se forma oficialmente como organização estruturada de resistência contra o Sacro Império Britannia?','Este arco marca a transição de ações isoladas para uma força militar organizada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Origem',TRUE,0),(gen_random_uuid(),q,'Arco de Euphemia',FALSE,1),(gen_random_uuid(),q,'Arco de Zero Requiem',FALSE,2),(gen_random_uuid(),q,'Arco de Schneizel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'episode_arc','medium','Em qual arco Euphemia tenta estabelecer uma zona especial de autonomia para japoneses, resultando em tragédia catastrófica através de manipulação do Geass?','Este evento é considerado um dos pontos de virada mais dramáticos da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Euphemia',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco de Zero Requiem',FALSE,2),(gen_random_uuid(),q,'Arco de Schneizel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'episode_arc','medium','Em qual arco Lelouch enfrenta diretamente Schneizel em confronto estratégico decisivo pelo destino do império?','Este confronto testa os limites do intelecto de ambos os irmãos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Schneizel',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco de Euphemia',FALSE,2),(gen_random_uuid(),q,'Arco de Zero Requiem',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'episode_arc','medium','Em qual arco Lelouch elabora e executa seu plano final, assumindo o trono imperial através de estratégia extremamente arriscada?','Este arco representa o clímax emocional e estratégico de toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Zero Requiem',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco de Euphemia',FALSE,2),(gen_random_uuid(),q,'Arco de Schneizel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'episode_arc','medium','Em qual arco Jeremiah é afetado diretamente pelo Geass de Lelouch, transformando drasticamente sua devoção anterior à princesa Cornelia?','Este evento tem consequências duradouras para o desenvolvimento posterior do personagem.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Origem',TRUE,0),(gen_random_uuid(),q,'Arco de Euphemia',FALSE,1),(gen_random_uuid(),q,'Arco de Zero Requiem',FALSE,2),(gen_random_uuid(),q,'Arco de Schneizel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'episode_arc','hard','Em qual arco é revelada a verdadeira identidade de V.V. e sua conexão direta com a origem histórica do poder do Geass?','A revelação altera profundamente a compreensão dos protagonistas sobre a natureza do próprio poder.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Euphemia',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco de Zero Requiem',FALSE,2),(gen_random_uuid(),q,'Arco de Schneizel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'episode_arc','hard','Em qual arco o FLEIJA é utilizado pela primeira vez em combate, demonstrando o poder devastador da arma orbital do império?','Este evento representa uma escalada significativa na violência do conflito militar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Schneizel',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco de Euphemia',FALSE,2),(gen_random_uuid(),q,'Arco de Zero Requiem',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'episode_arc','impossible','Em qual arco Bismarck enfrenta os pilotos mais talentosos da resistência, demonstrando pela primeira vez os limites de sua reputação invencível?','Este confronto é considerado um dos combates mais tecnicamente elaborados da segunda temporada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Schneizel',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco de Euphemia',FALSE,2),(gen_random_uuid(),q,'Arco de Zero Requiem',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- CHRONOLOGICAL — 7 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'chronological','hard','Ordene cronologicamente os arcos a seguir, do mais antigo ao mais recente.','Cobrem desde a origem do Geass de Lelouch até a execução do Zero Requiem.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Origem',TRUE,0),(gen_random_uuid(),q,'Euphemia',FALSE,1),(gen_random_uuid(),q,'Schneizel',FALSE,2),(gen_random_uuid(),q,'Zero Requiem',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'chronological','hard','Ordene cronologicamente os seguintes eventos da jornada de Lelouch, do mais antigo ao mais recente.','Cobrem desde a obtenção do Geass até a execução de seu plano final.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Recebe o Geass de C.C.',TRUE,0),(gen_random_uuid(),q,'Funda a Black Knights como Zero',FALSE,1),(gen_random_uuid(),q,'Confronta Schneizel em batalha estratégica',FALSE,2),(gen_random_uuid(),q,'Executa o plano final do Zero Requiem',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre Euphemia, do mais antigo ao mais recente.','Cobrem desde sua chegada como vice-rainha até a tragédia catastrófica de sua zona especial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chega como vice-rainha do território japonês',TRUE,0),(gen_random_uuid(),q,'Propõe uma zona especial de autonomia',FALSE,1),(gen_random_uuid(),q,'É afetada pelo Geass de Lelouch',FALSE,2),(gen_random_uuid(),q,'Sua proposta resulta em tragédia catastrófica',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre Jeremiah, do mais antigo ao mais recente.','Cobrem desde sua lealdade original a Cornelia até sua transformação após o Geass.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Demonstra devoção inabalável à princesa Cornelia',TRUE,0),(gen_random_uuid(),q,'É afetado diretamente pelo Geass de Lelouch',FALSE,1),(gen_random_uuid(),q,'Passa por transformação drástica de lealdade',FALSE,2),(gen_random_uuid(),q,'Torna-se aliado inesperado da resistência',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre V.V., do mais antigo ao mais recente.','Cobrem desde sua origem histórica ligada ao Geass até sua revelação completa nos capítulos finais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Está ligado à origem histórica do poder do Geass',TRUE,0),(gen_random_uuid(),q,'Atua nos bastidores manipulando eventos',FALSE,1),(gen_random_uuid(),q,'Sua verdadeira identidade é gradualmente sugerida',FALSE,2),(gen_random_uuid(),q,'É completamente revelado nos capítulos finais',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre a Black Knights, do mais antigo ao mais recente.','Cobrem desde sua fundação até seu papel decisivo no plano final de Lelouch.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'É fundada como movimento organizado de resistência',TRUE,0),(gen_random_uuid(),q,'Cresce significativamente em poder e influência',FALSE,1),(gen_random_uuid(),q,'Enfrenta conflitos internos de lealdade',FALSE,2),(gen_random_uuid(),q,'Desempenha papel decisivo no plano final de Lelouch',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre o FLEIJA, do mais antigo ao mais recente.','Cobrem desde seu desenvolvimento até sua utilização decisiva em combates posteriores.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'É desenvolvido secretamente pelo império',TRUE,0),(gen_random_uuid(),q,'É utilizado pela primeira vez em combate',FALSE,1),(gen_random_uuid(),q,'Demonstra seu poder devastador contra cidades',FALSE,2),(gen_random_uuid(),q,'Torna-se ameaça constante para a resistência',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- COMPLEMENTO — fechar 150 perguntas (33 text / 15 fill_blank / 17 who_said / 6 episode_arc)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','medium','Qual desses personagens introduzido posteriormente serve como falso irmão mais novo do protagonista, agente secreto de organização governamental especial?','Ele também possui poder de Geass próprio, ligado ao controle temporal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rolo',TRUE,0),(gen_random_uuid(),q,'Suzaku',FALSE,1),(gen_random_uuid(),q,'Schneizel',FALSE,2),(gen_random_uuid(),q,'Jeremiah',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','hard','Qual desses personagens estuda o fenômeno do Geass e suas origens misteriosas através de organização secreta dedicada a esse propósito?','Seus membros mantêm conhecimento restrito sobre a verdadeira natureza desse poder sobrenatural.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Geass Order',TRUE,0),(gen_random_uuid(),q,'Conselho dos Códigos',FALSE,1),(gen_random_uuid(),q,'Irmandade V.V.',FALSE,2),(gen_random_uuid(),q,'Sociedade Oculta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','impossible','Qual desses personagens está associado à dimensão especial onde memórias e consciências coletivas humanas podem ser unificadas através de rituais específicos?','Este conceito está diretamente ligado aos planos mais ambiciosos de Charles e V.V.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mundo de C',TRUE,0),(gen_random_uuid(),q,'Reino Coletivo',FALSE,1),(gen_random_uuid(),q,'Dimensão Espelho',FALSE,2),(gen_random_uuid(),q,'Plano Consciente',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','medium','Qual desses personagens é piloto excêntrico e amigável, membro da elite imperial que desenvolve rivalidade respeitosa com Suzaku?','Sua personalidade descontraída contrasta com a seriedade típica de outros cavaleiros imperiais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gino',TRUE,0),(gen_random_uuid(),q,'Bismarck',FALSE,1),(gen_random_uuid(),q,'Jeremiah',FALSE,2),(gen_random_uuid(),q,'Anya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','hard','Qual desses personagens assume identidade secreta como agente governamental especial, sendo apresentado como falso irmão do protagonista?','Sua verdadeira lealdade organizacional é revelada gradualmente ao longo da segunda temporada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rolo',TRUE,0),(gen_random_uuid(),q,'Suzaku',FALSE,1),(gen_random_uuid(),q,'Schneizel',FALSE,2),(gen_random_uuid(),q,'Jeremiah',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','medium','Qual desses personagens mantém conhecimento restrito sobre a verdadeira natureza histórica do Geass dentro de organização secreta dedicada?','Sua pesquisa influencia diretamente os eventos revelados nos capítulos finais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Geass Order',TRUE,0),(gen_random_uuid(),q,'Conselho dos Códigos',FALSE,1),(gen_random_uuid(),q,'Irmandade V.V.',FALSE,2),(gen_random_uuid(),q,'Sociedade Oculta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','impossible','Qual desses personagens permite a unificação potencial de consciências humanas coletivas através de rituais complexos ligados ao Geass?','Este conceito está diretamente ligado aos planos mais ambiciosos de Charles e V.V.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mundo de C',TRUE,0),(gen_random_uuid(),q,'Reino Coletivo',FALSE,1),(gen_random_uuid(),q,'Dimensão Espelho',FALSE,2),(gen_random_uuid(),q,'Plano Consciente',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','medium','Qual desses personagens desenvolve amizade competitiva com Suzaku, demonstrando personalidade descontraída incomum entre a elite imperial?','Sua camaradagem contrasta com a seriedade de outros pilotos de elite do império.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gino',TRUE,0),(gen_random_uuid(),q,'Bismarck',FALSE,1),(gen_random_uuid(),q,'Jeremiah',FALSE,2),(gen_random_uuid(),q,'Anya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','hard','Qual desses personagens exerce funções secretas como agente governamental, disfarçado inicialmente como parente próximo do protagonista?','Seu poder de Geass está diretamente ligado à manipulação do fluxo temporal percebido.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rolo',TRUE,0),(gen_random_uuid(),q,'Suzaku',FALSE,1),(gen_random_uuid(),q,'Schneizel',FALSE,2),(gen_random_uuid(),q,'Jeremiah',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','medium','Qual desses personagens preserva registros históricos sobre manifestações anteriores do Geass ao longo de séculos de existência humana?','Sua organização opera nos bastidores influenciando eventos críticos da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Geass Order',TRUE,0),(gen_random_uuid(),q,'Conselho dos Códigos',FALSE,1),(gen_random_uuid(),q,'Irmandade V.V.',FALSE,2),(gen_random_uuid(),q,'Sociedade Oculta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','impossible','Qual desses personagens facilita a convergência de memórias individuais em experiência coletiva compartilhada por toda a humanidade?','Este fenômeno é central para compreender os objetivos finais de Charles zi Britannia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mundo de C',TRUE,0),(gen_random_uuid(),q,'Reino Coletivo',FALSE,1),(gen_random_uuid(),q,'Dimensão Espelho',FALSE,2),(gen_random_uuid(),q,'Plano Consciente',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','medium','Qual desses personagens participa de torneios amistosos com Suzaku, revelando faceta menos formal da elite militar imperial?','Sua abordagem descontraída ao combate surpreende constantemente seus colegas mais sérios.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gino',TRUE,0),(gen_random_uuid(),q,'Bismarck',FALSE,1),(gen_random_uuid(),q,'Jeremiah',FALSE,2),(gen_random_uuid(),q,'Anya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','hard','Qual desses personagens vive sob identidade falsa como parente do protagonista enquanto executa missões secretas para sua verdadeira organização?','Sua lealdade dividida gera conflito interno significativo ao longo de sua caracterização.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rolo',TRUE,0),(gen_random_uuid(),q,'Suzaku',FALSE,1),(gen_random_uuid(),q,'Schneizel',FALSE,2),(gen_random_uuid(),q,'Jeremiah',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','medium','Qual desses personagens documenta cuidadosamente casos históricos de manifestação do poder do Geass ao longo de gerações passadas?','Seu trabalho de pesquisa fundamenta grande parte do conhecimento revelado sobre o poder sobrenatural.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Geass Order',TRUE,0),(gen_random_uuid(),q,'Conselho dos Códigos',FALSE,1),(gen_random_uuid(),q,'Irmandade V.V.',FALSE,2),(gen_random_uuid(),q,'Sociedade Oculta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','impossible','Qual desses personagens representa conceito filosófico central para compreender os objetivos finais almejados por Charles e V.V.?','Sua natureza abstrata desafia compreensão convencional dentro da trama científica e sobrenatural da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mundo de C',TRUE,0),(gen_random_uuid(),q,'Reino Coletivo',FALSE,1),(gen_random_uuid(),q,'Dimensão Espelho',FALSE,2),(gen_random_uuid(),q,'Plano Consciente',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','medium','Qual desses personagens rivaliza amistosamente com Suzaku em competições de habilidade, mantendo respeito mútuo apesar das diferenças de personalidade?','Sua amizade cresce gradualmente ao longo dos eventos da segunda temporada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gino',TRUE,0),(gen_random_uuid(),q,'Bismarck',FALSE,1),(gen_random_uuid(),q,'Jeremiah',FALSE,2),(gen_random_uuid(),q,'Anya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','hard','Qual desses personagens enfrenta dilema moral profundo entre lealdade organizacional e afeto genuíno desenvolvido pela família adotiva?','Seu arco de personagem explora temas de identidade e pertencimento de forma comovente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rolo',TRUE,0),(gen_random_uuid(),q,'Suzaku',FALSE,1),(gen_random_uuid(),q,'Schneizel',FALSE,2),(gen_random_uuid(),q,'Jeremiah',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','medium','Qual desses personagens investiga sistematicamente ocorrências do Geass ao longo da história, mantendo registros extremamente sigilosos?','Sua existência permanece amplamente desconhecida do público geral dentro do universo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Geass Order',TRUE,0),(gen_random_uuid(),q,'Conselho dos Códigos',FALSE,1),(gen_random_uuid(),q,'Irmandade V.V.',FALSE,2),(gen_random_uuid(),q,'Sociedade Oculta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','impossible','Qual desses personagens serve como fundamento teórico essencial para os planos mais ambiciosos concebidos por Charles zi Britannia?','Sua complexidade conceitual é discutida extensivamente por fãs e analistas da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mundo de C',TRUE,0),(gen_random_uuid(),q,'Reino Coletivo',FALSE,1),(gen_random_uuid(),q,'Dimensão Espelho',FALSE,2),(gen_random_uuid(),q,'Plano Consciente',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','medium','Qual desses personagens compartilha momentos de camaradagem genuína com Suzaku, apesar de servirem lados diferentes do mesmo conflito militar?','Sua relação amistosa transcende as tensões políticas do império.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gino',TRUE,0),(gen_random_uuid(),q,'Bismarck',FALSE,1),(gen_random_uuid(),q,'Jeremiah',FALSE,2),(gen_random_uuid(),q,'Anya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','hard','Qual desses personagens desenvolve gradualmente afeto genuíno por Nunnally, complicando ainda mais sua missão secreta original?','Este desenvolvimento emocional adiciona camadas de complexidade à sua caracterização ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rolo',TRUE,0),(gen_random_uuid(),q,'Suzaku',FALSE,1),(gen_random_uuid(),q,'Schneizel',FALSE,2),(gen_random_uuid(),q,'Jeremiah',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','medium','Qual desses personagens estabelece protocolos rigorosos de sigilo para proteger informações sensíveis sobre a verdadeira natureza do Geass?','Suas medidas de segurança refletem a gravidade das implicações desse conhecimento restrito.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Geass Order',TRUE,0),(gen_random_uuid(),q,'Conselho dos Códigos',FALSE,1),(gen_random_uuid(),q,'Irmandade V.V.',FALSE,2),(gen_random_uuid(),q,'Sociedade Oculta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','impossible','Qual desses personagens permeia toda a estrutura filosófica que sustenta as decisões mais drásticas tomadas por Charles ao longo da série?','Sua influência conceitual se estende muito além dos eventos superficiais da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mundo de C',TRUE,0),(gen_random_uuid(),q,'Reino Coletivo',FALSE,1),(gen_random_uuid(),q,'Dimensão Espelho',FALSE,2),(gen_random_uuid(),q,'Plano Consciente',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','medium','Qual desses personagens estabelece vínculo de respeito mútuo com Suzaku através de repetidos confrontos amistosos em simulações de combate?','Sua rivalidade nunca se transforma em animosidade genuína ao longo da narrativa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gino',TRUE,0),(gen_random_uuid(),q,'Bismarck',FALSE,1),(gen_random_uuid(),q,'Jeremiah',FALSE,2),(gen_random_uuid(),q,'Anya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','hard','Qual desses personagens enfrenta conflito crescente entre sua missão original e os laços afetivos genuínos desenvolvidos com a família de Lelouch?','Sua jornada pessoal representa um dos arcos emocionais mais complexos da segunda temporada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rolo',TRUE,0),(gen_random_uuid(),q,'Suzaku',FALSE,1),(gen_random_uuid(),q,'Schneizel',FALSE,2),(gen_random_uuid(),q,'Jeremiah',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','medium','Qual desses personagens colabora informalmente com Suzaku em exercícios táticos, apesar de manter postura mais séria que outros colegas?','Sua disciplina militar é reconhecida amplamente dentro da hierarquia imperial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gino',TRUE,0),(gen_random_uuid(),q,'Bismarck',FALSE,1),(gen_random_uuid(),q,'Jeremiah',FALSE,2),(gen_random_uuid(),q,'Anya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','hard','Qual desses personagens executa ordens específicas relacionadas à vigilância da família imperial, mesmo vivendo sob identidade falsa?','Sua dupla função gera tensão dramática crescente conforme a trama avança.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rolo',TRUE,0),(gen_random_uuid(),q,'Suzaku',FALSE,1),(gen_random_uuid(),q,'Schneizel',FALSE,2),(gen_random_uuid(),q,'Jeremiah',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','medium','Qual desses personagens supervisiona arquivos confidenciais sobre manifestações do Geass catalogadas ao longo de décadas de observação?','Seu acesso privilegiado a esses registros é extremamente restrito dentro da organização.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Geass Order',TRUE,0),(gen_random_uuid(),q,'Conselho dos Códigos',FALSE,1),(gen_random_uuid(),q,'Irmandade V.V.',FALSE,2),(gen_random_uuid(),q,'Sociedade Oculta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','impossible','Qual desses personagens permanece como elemento narrativo central para compreender a filosofia final adotada por Charles zi Britannia?','Sua importância conceitual permeia os momentos mais decisivos do desfecho da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mundo de C',TRUE,0),(gen_random_uuid(),q,'Reino Coletivo',FALSE,1),(gen_random_uuid(),q,'Dimensão Espelho',FALSE,2),(gen_random_uuid(),q,'Plano Consciente',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','medium','Qual desses personagens demonstra respeito crescente por Suzaku ao longo de repetidos confrontos táticos simulados entre ambos?','Sua evolução de rival para aliado ocasional reflete o desenvolvimento de sua personagem.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gino',TRUE,0),(gen_random_uuid(),q,'Bismarck',FALSE,1),(gen_random_uuid(),q,'Jeremiah',FALSE,2),(gen_random_uuid(),q,'Anya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','hard','Qual desses personagens sacrifica seus próprios interesses pessoais em favor de completar sua missão original de vigilância familiar?','Sua jornada trágica culmina em um dos momentos mais emocionais da segunda temporada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rolo',TRUE,0),(gen_random_uuid(),q,'Suzaku',FALSE,1),(gen_random_uuid(),q,'Schneizel',FALSE,2),(gen_random_uuid(),q,'Jeremiah',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','medium','Qual desses personagens transmite informações codificadas sobre o Geass apenas para membros de mais alta confiança dentro de sua estrutura?','Seu protocolo de segurança rigoroso reflete séculos de tradição organizacional.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Geass Order',TRUE,0),(gen_random_uuid(),q,'Conselho dos Códigos',FALSE,1),(gen_random_uuid(),q,'Irmandade V.V.',FALSE,2),(gen_random_uuid(),q,'Sociedade Oculta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'text','impossible','Qual desses personagens condensa em si mesmo a essência filosófica que motiva as ações mais extremas de Charles ao longo de toda a narrativa?','Sua natureza conceitual é debatida extensivamente entre estudiosos da obra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mundo de C',TRUE,0),(gen_random_uuid(),q,'Reino Coletivo',FALSE,1),(gen_random_uuid(),q,'Dimensão Espelho',FALSE,2),(gen_random_uuid(),q,'Plano Consciente',FALSE,3);

    -- fill_blank complemento (15)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'fill_blank','medium','O jovem introduzido posteriormente como falso irmão mais novo do protagonista, agente secreto governamental, se chama ___.','Ele também possui poder de Geass próprio, ligado ao controle temporal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rolo',TRUE,0),(gen_random_uuid(),q,'Suzaku',FALSE,1),(gen_random_uuid(),q,'Schneizel',FALSE,2),(gen_random_uuid(),q,'Jeremiah',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'fill_blank','hard','A organização secreta que estuda o fenômeno do Geass e suas origens misteriosas é chamada de ___.','Seus membros mantêm conhecimento restrito sobre a verdadeira natureza desse poder sobrenatural.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Geass Order',TRUE,0),(gen_random_uuid(),q,'Conselho dos Códigos',FALSE,1),(gen_random_uuid(),q,'Irmandade V.V.',FALSE,2),(gen_random_uuid(),q,'Sociedade Oculta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'fill_blank','impossible','A dimensão especial onde memórias e consciências coletivas humanas podem ser unificadas através de rituais é chamada de ___.','Este conceito está diretamente ligado aos planos mais ambiciosos de Charles e V.V.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mundo de C',TRUE,0),(gen_random_uuid(),q,'Reino Coletivo',FALSE,1),(gen_random_uuid(),q,'Dimensão Espelho',FALSE,2),(gen_random_uuid(),q,'Plano Consciente',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'fill_blank','medium','O piloto excêntrico e amigável, membro da elite imperial que desenvolve rivalidade respeitosa com Suzaku, se chama ___.','Sua personalidade descontraída contrasta com a seriedade típica de outros cavaleiros imperiais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gino',TRUE,0),(gen_random_uuid(),q,'Bismarck',FALSE,1),(gen_random_uuid(),q,'Jeremiah',FALSE,2),(gen_random_uuid(),q,'Anya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'fill_blank','hard','O agente que assume identidade secreta governamental, apresentado como falso irmão do protagonista, se chama ___.','Sua verdadeira lealdade organizacional é revelada gradualmente ao longo da segunda temporada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rolo',TRUE,0),(gen_random_uuid(),q,'Suzaku',FALSE,1),(gen_random_uuid(),q,'Schneizel',FALSE,2),(gen_random_uuid(),q,'Jeremiah',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'fill_blank','medium','A organização que mantém conhecimento restrito sobre a natureza histórica do Geass é referida como ___.','Sua pesquisa influencia diretamente os eventos revelados nos capítulos finais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Geass Order',TRUE,0),(gen_random_uuid(),q,'Conselho dos Códigos',FALSE,1),(gen_random_uuid(),q,'Irmandade V.V.',FALSE,2),(gen_random_uuid(),q,'Sociedade Oculta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'fill_blank','impossible','O conceito que permite a unificação potencial de consciências humanas coletivas através de rituais complexos é chamado de ___.','Este conceito está diretamente ligado aos planos mais ambiciosos de Charles e V.V.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mundo de C',TRUE,0),(gen_random_uuid(),q,'Reino Coletivo',FALSE,1),(gen_random_uuid(),q,'Dimensão Espelho',FALSE,2),(gen_random_uuid(),q,'Plano Consciente',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'fill_blank','medium','O piloto que desenvolve amizade competitiva com Suzaku, demonstrando personalidade descontraída incomum, se chama ___.','Sua camaradagem contrasta com a seriedade de outros pilotos de elite do império.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gino',TRUE,0),(gen_random_uuid(),q,'Bismarck',FALSE,1),(gen_random_uuid(),q,'Jeremiah',FALSE,2),(gen_random_uuid(),q,'Anya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'fill_blank','hard','O agente que exerce funções secretas governamentais, disfarçado inicialmente como parente próximo do protagonista, se chama ___.','Seu poder de Geass está diretamente ligado à manipulação do fluxo temporal percebido.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rolo',TRUE,0),(gen_random_uuid(),q,'Suzaku',FALSE,1),(gen_random_uuid(),q,'Schneizel',FALSE,2),(gen_random_uuid(),q,'Jeremiah',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'fill_blank','medium','A organização que preserva registros históricos sobre manifestações anteriores do Geass é chamada de ___.','Sua organização opera nos bastidores influenciando eventos críticos da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Geass Order',TRUE,0),(gen_random_uuid(),q,'Conselho dos Códigos',FALSE,1),(gen_random_uuid(),q,'Irmandade V.V.',FALSE,2),(gen_random_uuid(),q,'Sociedade Oculta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'fill_blank','impossible','O fenômeno que facilita a convergência de memórias individuais em experiência coletiva compartilhada é chamado de ___.','Este fenômeno é central para compreender os objetivos finais de Charles zi Britannia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mundo de C',TRUE,0),(gen_random_uuid(),q,'Reino Coletivo',FALSE,1),(gen_random_uuid(),q,'Dimensão Espelho',FALSE,2),(gen_random_uuid(),q,'Plano Consciente',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'fill_blank','medium','O piloto que participa de torneios amistosos com Suzaku, revelando faceta menos formal da elite militar, se chama ___.','Sua abordagem descontraída ao combate surpreende constantemente seus colegas mais sérios.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gino',TRUE,0),(gen_random_uuid(),q,'Bismarck',FALSE,1),(gen_random_uuid(),q,'Jeremiah',FALSE,2),(gen_random_uuid(),q,'Anya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'fill_blank','hard','O agente que vive sob identidade falsa como parente do protagonista, executando missões secretas, se chama ___.','Sua lealdade dividida gera conflito interno significativo ao longo de sua caracterização.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rolo',TRUE,0),(gen_random_uuid(),q,'Suzaku',FALSE,1),(gen_random_uuid(),q,'Schneizel',FALSE,2),(gen_random_uuid(),q,'Jeremiah',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'fill_blank','medium','A organização que documenta casos históricos de manifestação do poder do Geass ao longo de gerações é chamada de ___.','Seu trabalho de pesquisa fundamenta grande parte do conhecimento revelado sobre o poder sobrenatural.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Geass Order',TRUE,0),(gen_random_uuid(),q,'Conselho dos Códigos',FALSE,1),(gen_random_uuid(),q,'Irmandade V.V.',FALSE,2),(gen_random_uuid(),q,'Sociedade Oculta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'fill_blank','medium','O agente que supervisiona arquivos confidenciais sobre manifestações do Geass catalogadas ao longo de décadas é referido como ___.','Seu acesso privilegiado a esses registros é extremamente restrito dentro da organização.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Geass Order',TRUE,0),(gen_random_uuid(),q,'Conselho dos Códigos',FALSE,1),(gen_random_uuid(),q,'Irmandade V.V.',FALSE,2),(gen_random_uuid(),q,'Sociedade Oculta',FALSE,3);

    -- who_said complemento (17)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'who_said','medium','Quem disse: "Eu vivo disfarçado como parente do protagonista, cumprindo missões secretas para minha verdadeira organização"?','A frase é dita pelo agente que se apresenta como falso irmão mais novo do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rolo',TRUE,0),(gen_random_uuid(),q,'Suzaku',FALSE,1),(gen_random_uuid(),q,'Schneizel',FALSE,2),(gen_random_uuid(),q,'Jeremiah',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'who_said','hard','Quem disse: "Nós mantemos conhecimento restrito sobre a verdadeira natureza histórica do Geass há gerações, protegendo esse segredo"?','A frase reflete a natureza sigilosa da organização dedicada ao estudo do Geass.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Geass Order',TRUE,0),(gen_random_uuid(),q,'Conselho dos Códigos',FALSE,1),(gen_random_uuid(),q,'Irmandade V.V.',FALSE,2),(gen_random_uuid(),q,'Sociedade Oculta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'who_said','impossible','Quem disse: "Eu represento a possibilidade de unificar todas as consciências humanas em uma única experiência compartilhada"?','A frase é dita, simbolicamente, sobre o conceito de dimensão especial ligado aos planos de Charles.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mundo de C',TRUE,0),(gen_random_uuid(),q,'Reino Coletivo',FALSE,1),(gen_random_uuid(),q,'Dimensão Espelho',FALSE,2),(gen_random_uuid(),q,'Plano Consciente',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'who_said','medium','Quem disse: "Eu desenvolvi rivalidade respeitosa com Suzaku, mesmo sendo membro de elite dentro da hierarquia imperial"?','A frase é dita pelo piloto excêntrico e amigável da elite imperial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gino',TRUE,0),(gen_random_uuid(),q,'Bismarck',FALSE,1),(gen_random_uuid(),q,'Jeremiah',FALSE,2),(gen_random_uuid(),q,'Anya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'who_said','hard','Quem disse: "Minha verdadeira lealdade organizacional é revelada gradualmente, mesmo tendo sido apresentado como parente do protagonista"?','A frase é dita pelo agente secreto que assume identidade falsa dentro da família de Lelouch.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rolo',TRUE,0),(gen_random_uuid(),q,'Suzaku',FALSE,1),(gen_random_uuid(),q,'Schneizel',FALSE,2),(gen_random_uuid(),q,'Jeremiah',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'who_said','medium','Quem disse: "Nossa pesquisa sobre o Geass influencia diretamente eventos que só serão revelados nos capítulos finais desta história"?','A frase reflete o papel da organização secreta dedicada ao estudo do poder sobrenatural.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Geass Order',TRUE,0),(gen_random_uuid(),q,'Conselho dos Códigos',FALSE,1),(gen_random_uuid(),q,'Irmandade V.V.',FALSE,2),(gen_random_uuid(),q,'Sociedade Oculta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'who_said','impossible','Quem disse: "Estou diretamente ligado aos planos mais ambiciosos concebidos por Charles e V.V. para o futuro da humanidade"?','A frase é dita, simbolicamente, sobre o conceito central dos planos finais do império.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mundo de C',TRUE,0),(gen_random_uuid(),q,'Reino Coletivo',FALSE,1),(gen_random_uuid(),q,'Dimensão Espelho',FALSE,2),(gen_random_uuid(),q,'Plano Consciente',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'who_said','medium','Quem disse: "Minha camaradagem com Suzaku contrasta com a seriedade típica de outros pilotos de elite do nosso império"?','A frase é dita pelo piloto que desenvolve amizade competitiva com Suzaku.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gino',TRUE,0),(gen_random_uuid(),q,'Bismarck',FALSE,1),(gen_random_uuid(),q,'Jeremiah',FALSE,2),(gen_random_uuid(),q,'Anya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'who_said','hard','Quem disse: "Meu poder de Geass está diretamente ligado à manipulação do fluxo temporal percebido por outras pessoas"?','A frase é dita pelo agente secreto disfarçado como parente próximo do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rolo',TRUE,0),(gen_random_uuid(),q,'Suzaku',FALSE,1),(gen_random_uuid(),q,'Schneizel',FALSE,2),(gen_random_uuid(),q,'Jeremiah',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'who_said','medium','Quem disse: "Nós operamos nos bastidores influenciando eventos críticos desta trama, mantendo nossa existência majoritariamente secreta"?','A frase reflete a natureza discreta da organização dedicada ao estudo histórico do Geass.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Geass Order',TRUE,0),(gen_random_uuid(),q,'Conselho dos Códigos',FALSE,1),(gen_random_uuid(),q,'Irmandade V.V.',FALSE,2),(gen_random_uuid(),q,'Sociedade Oculta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'who_said','impossible','Quem disse: "Este fenômeno é central para compreender completamente os objetivos finais de Charles zi Britannia para toda a humanidade"?','A frase é dita, simbolicamente, sobre o conceito ligado à convergência de consciências coletivas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mundo de C',TRUE,0),(gen_random_uuid(),q,'Reino Coletivo',FALSE,1),(gen_random_uuid(),q,'Dimensão Espelho',FALSE,2),(gen_random_uuid(),q,'Plano Consciente',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'who_said','medium','Quem disse: "Minha abordagem descontraída ao combate surpreende constantemente meus colegas mais sérios da elite imperial"?','A frase é dita pelo piloto que participa de torneios amistosos com Suzaku.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gino',TRUE,0),(gen_random_uuid(),q,'Bismarck',FALSE,1),(gen_random_uuid(),q,'Jeremiah',FALSE,2),(gen_random_uuid(),q,'Anya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'who_said','hard','Quem disse: "Minha lealdade dividida gera conflito interno significativo enquanto vivo disfarçado dentro da família de Lelouch"?','A frase é dita pelo agente que executa missões secretas sob identidade falsa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rolo',TRUE,0),(gen_random_uuid(),q,'Suzaku',FALSE,1),(gen_random_uuid(),q,'Schneizel',FALSE,2),(gen_random_uuid(),q,'Jeremiah',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'who_said','medium','Quem disse: "Nosso trabalho de pesquisa fundamenta grande parte do conhecimento revelado sobre este poder sobrenatural ao longo de gerações"?','A frase reflete o papel histórico da organização dedicada aos estudos do Geass.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Geass Order',TRUE,0),(gen_random_uuid(),q,'Conselho dos Códigos',FALSE,1),(gen_random_uuid(),q,'Irmandade V.V.',FALSE,2),(gen_random_uuid(),q,'Sociedade Oculta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'who_said','impossible','Quem disse: "Minha natureza abstrata desafia compreensão convencional dentro de toda a trama científica e sobrenatural desta série"?','A frase é dita, simbolicamente, sobre o conceito filosófico central dos planos de Charles.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mundo de C',TRUE,0),(gen_random_uuid(),q,'Reino Coletivo',FALSE,1),(gen_random_uuid(),q,'Dimensão Espelho',FALSE,2),(gen_random_uuid(),q,'Plano Consciente',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'who_said','medium','Quem disse: "Minha relação amistosa com Suzaku transcende completamente as tensões políticas que dividem nosso império"?','A frase é dita pelo piloto que compartilha momentos de camaradagem genuína com Suzaku.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gino',TRUE,0),(gen_random_uuid(),q,'Bismarck',FALSE,1),(gen_random_uuid(),q,'Jeremiah',FALSE,2),(gen_random_uuid(),q,'Anya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'who_said','impossible','Quem disse: "Minha importância conceitual permeia os momentos mais decisivos do desfecho de toda esta história complexa"?','A frase é dita, simbolicamente, sobre o elemento narrativo central da filosofia final de Charles.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mundo de C',TRUE,0),(gen_random_uuid(),q,'Reino Coletivo',FALSE,1),(gen_random_uuid(),q,'Dimensão Espelho',FALSE,2),(gen_random_uuid(),q,'Plano Consciente',FALSE,3);

    -- episode_arc complemento (6)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'episode_arc','medium','Em qual arco Rolo é introduzido como falso irmão mais novo do protagonista, revelando gradualmente sua verdadeira função de agente secreto?','Este arco explora temas de identidade familiar forjada e lealdade dividida.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Schneizel',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco de Euphemia',FALSE,2),(gen_random_uuid(),q,'Arco de Zero Requiem',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'episode_arc','hard','Em qual arco a existência da Geass Order é revelada, explorando a história secular do poder do Geass ao longo dos séculos?','Esta revelação fornece contexto histórico crucial para compreender os eventos finais da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Origem',TRUE,0),(gen_random_uuid(),q,'Arco de Euphemia',FALSE,1),(gen_random_uuid(),q,'Arco de Zero Requiem',FALSE,2),(gen_random_uuid(),q,'Arco de Schneizel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'episode_arc','medium','Em qual arco Gino demonstra pela primeira vez sua rivalidade respeitosa com Suzaku durante confronto militar direto?','Este confronto estabelece as bases para sua amizade competitiva ao longo da segunda temporada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Schneizel',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco de Euphemia',FALSE,2),(gen_random_uuid(),q,'Arco de Zero Requiem',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'episode_arc','impossible','Em qual arco o conceito do Mundo de C é explicado detalhadamente, revelando sua conexão direta com os planos finais de Charles e V.V.?','Esta explicação é fundamental para compreender o clímax filosófico da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Zero Requiem',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco de Euphemia',FALSE,2),(gen_random_uuid(),q,'Arco de Schneizel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'episode_arc','hard','Em qual arco Rolo desenvolve afeto genuíno por Nunnally, complicando drasticamente sua missão secreta original?','Este desenvolvimento emocional adiciona profundidade significativa ao personagem antes de seu destino trágico.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Euphemia',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco de Zero Requiem',FALSE,2),(gen_random_uuid(),q,'Arco de Schneizel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cg,'episode_arc','hard','Em qual arco Gino participa de exercícios táticos formais ao lado de Suzaku, demonstrando disciplina reconhecida pela hierarquia imperial?','Este arco explora a dinâmica militar formal entre os dois cavaleiros de elite.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Schneizel',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco de Euphemia',FALSE,2),(gen_random_uuid(),q,'Arco de Zero Requiem',FALSE,3);

END $$;
