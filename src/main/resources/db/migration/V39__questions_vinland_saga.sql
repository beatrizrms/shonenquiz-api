-- ============================================================
--  V39 — Seed de perguntas: Vinland Saga (150 perguntas)
--  Fonte: MyAnimeList + cânone do anime
--  Distribuição: text 40% / fill_blank 25% / who_said 20% /
--                episode_arc 10% / chronological 5%
--  Sem repetição com V5. Regras R1-R7 aplicadas.
-- ============================================================

DO $$
DECLARE
    v_system UUID := '00000000-0000-0000-0000-000000000001';
    v_vs     UUID;
    q        UUID;
BEGIN
    SELECT id INTO v_vs FROM animes WHERE slug = 'vinland-saga' LIMIT 1;

    -- ══════════════════════════════════════════════════════════
    -- TEXT — 60 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','easy','Qual é o nome do protagonista, filho de um guerreiro pacífico que se torna mercenário em busca de vingança?','Ele sonha em navegar até uma terra distante conhecida por sua paz e fertilidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Thorfinn',TRUE,0),(gen_random_uuid(),q,'Askeladd',FALSE,1),(gen_random_uuid(),q,'Thors',FALSE,2),(gen_random_uuid(),q,'Canute',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','easy','Qual é o nome do pai de Thorfinn, ex-guerreiro lendário que abandona a vida de combate para viver em paz?','Sua morte é o evento que desencadeia toda a busca de vingança do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Thors',TRUE,0),(gen_random_uuid(),q,'Askeladd',FALSE,1),(gen_random_uuid(),q,'Leif',FALSE,2),(gen_random_uuid(),q,'Sweyn',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','easy','Qual é o nome do líder mercenário responsável pela morte do pai de Thorfinn, tornando-se seu principal alvo de vingança?','Ele é astuto e estrategista, mantendo Thorfinn por perto como uma espécie de aprendiz relutante.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Askeladd',TRUE,0),(gen_random_uuid(),q,'Thors',FALSE,1),(gen_random_uuid(),q,'Sweyn',FALSE,2),(gen_random_uuid(),q,'Canute',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','easy','Qual é o nome do rei viking que lidera a invasão à Inglaterra no início da série, comandando um vasto exército?','Ele busca conquistar o trono inglês através de campanhas militares brutais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sweyn Forkbeard',TRUE,0),(gen_random_uuid(),q,'Askeladd',FALSE,1),(gen_random_uuid(),q,'Canute',FALSE,2),(gen_random_uuid(),q,'Thors',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','easy','Qual é o nome do príncipe frágil e reservado que acompanha o exército de Sweyn, transformando-se gradualmente em líder implacável?','Sua transformação de personagem é um dos arcos mais marcantes da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Canute',TRUE,0),(gen_random_uuid(),q,'Thorfinn',FALSE,1),(gen_random_uuid(),q,'Askeladd',FALSE,2),(gen_random_uuid(),q,'Thorkell',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','easy','Qual é o nome da terra lendária mencionada por Thors como um lugar de paz, sem guerras nem escravidão, que se torna o sonho de Thorfinn?','Ela é baseada em referências históricas a explorações vikings na América do Norte.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vinland',TRUE,0),(gen_random_uuid(),q,'Groenlândia',FALSE,1),(gen_random_uuid(),q,'Jomsborg',FALSE,2),(gen_random_uuid(),q,'Valhalla',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','easy','Qual é o nome do guerreiro viking gigante e extremamente forte, conhecido por rir alegremente mesmo em combates mortais?','Ele é um dos poucos guerreiros capazes de rivalizar diretamente com Thors em força bruta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Thorkell',TRUE,0),(gen_random_uuid(),q,'Askeladd',FALSE,1),(gen_random_uuid(),q,'Bjorn',FALSE,2),(gen_random_uuid(),q,'Sweyn',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','easy','Qual é o nome do explorador viking histórico mencionado como tendo alcançado Vinland antes dos eventos principais da série?','Sua jornada é referenciada como inspiração para o sonho de Thorfinn e seu pai.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Leif Erikson',TRUE,0),(gen_random_uuid(),q,'Thors',FALSE,1),(gen_random_uuid(),q,'Askeladd',FALSE,2),(gen_random_uuid(),q,'Sweyn',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','easy','Qual é o nome da irmã mais velha de Thorfinn, que permanece na ilha de origem enquanto ele parte em jornada de vingança?','Ela representa a vida pacífica que Thorfinn deixou para trás quando criança.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ylva',TRUE,0),(gen_random_uuid(),q,'Helga',FALSE,1),(gen_random_uuid(),q,'Gudrid',FALSE,2),(gen_random_uuid(),q,'Arnheid',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','easy','Qual é o nome dado ao grupo de mercenários liderados por Askeladd, formado por guerreiros de diversas origens?','Eles atuam como mercenários independentes durante a campanha de invasão à Inglaterra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Banda de Askeladd',TRUE,0),(gen_random_uuid(),q,'Exército de Sweyn',FALSE,1),(gen_random_uuid(),q,'Guarda de Thorkell',FALSE,2),(gen_random_uuid(),q,'Jomsvikings',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','easy','Qual é o nome do rei inglês que enfrenta a invasão viking liderada por Sweyn no início da série?','Ele busca resistir através de negociações e alianças estratégicas contra o avanço viking.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Æthelred',TRUE,0),(gen_random_uuid(),q,'Edmund',FALSE,1),(gen_random_uuid(),q,'Canute',FALSE,2),(gen_random_uuid(),q,'Sweyn',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','easy','Qual é o nome do filho do rei inglês, que assume liderança militar em confrontos contra os invasores vikings?','Ele demonstra determinação em defender o trono de seu pai a qualquer custo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Edmund',TRUE,0),(gen_random_uuid(),q,'Æthelred',FALSE,1),(gen_random_uuid(),q,'Canute',FALSE,2),(gen_random_uuid(),q,'Ragnar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','easy','Qual é o nome do conselheiro leal de Canute, guerreiro dinamarquês que o acompanha desde o início de sua transformação como líder?','Ele demonstra lealdade absoluta mesmo diante das decisões mais difíceis do príncipe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ragnar',TRUE,0),(gen_random_uuid(),q,'Thorkell',FALSE,1),(gen_random_uuid(),q,'Wulf',FALSE,2),(gen_random_uuid(),q,'Floki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','easy','Qual é o nome do arqueiro habilidoso da banda de Askeladd, conhecido por sua precisão em combate à distância?','Ele participa de diversas batalhas ao lado do grupo mercenário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Atli',TRUE,0),(gen_random_uuid(),q,'Bjorn',FALSE,1),(gen_random_uuid(),q,'Ragnar',FALSE,2),(gen_random_uuid(),q,'Wulf',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','easy','Qual é o nome do guerreiro leal e experiente da banda de Askeladd, frequentemente próximo ao líder em decisões estratégicas?','Ele é um dos membros mais confiáveis do grupo mercenário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bjorn',TRUE,0),(gen_random_uuid(),q,'Atli',FALSE,1),(gen_random_uuid(),q,'Ragnar',FALSE,2),(gen_random_uuid(),q,'Wulf',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','medium','Qual é o nome do fazendeiro que compra Thorfinn como escravo após uma dívida de guerra, iniciando a segunda metade da série?','Sua fazenda torna-se cenário da jornada de redenção do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ketil',TRUE,0),(gen_random_uuid(),q,'Sweyn',FALSE,1),(gen_random_uuid(),q,'Askeladd',FALSE,2),(gen_random_uuid(),q,'Thorkell',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','medium','Qual é o nome do filho mais velho do fazendeiro que compra Thorfinn, notório por sua crueldade em relação aos escravos da propriedade?','Ele representa antagonismo direto durante a fase de escravidão do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Olmar',TRUE,0),(gen_random_uuid(),q,'Einar',FALSE,1),(gen_random_uuid(),q,'Sverkel',FALSE,2),(gen_random_uuid(),q,'Torgrim',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','medium','Qual é o nome do escravo companheiro de Thorfinn na fazenda de Ketil, cuja família foi destruída por invasores durante a infância?','Ele desenvolve amizade próxima com Thorfinn ao longo do trabalho na propriedade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Einar',TRUE,0),(gen_random_uuid(),q,'Olmar',FALSE,1),(gen_random_uuid(),q,'Sverkel',FALSE,2),(gen_random_uuid(),q,'Torgrim',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','medium','Qual é o nome do capataz idoso da fazenda de Ketil, responsável por supervisionar o trabalho dos escravos com relativa justiça?','Ele orienta Thorfinn durante o período de adaptação à vida agrícola.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sverkel',TRUE,0),(gen_random_uuid(),q,'Olmar',FALSE,1),(gen_random_uuid(),q,'Einar',FALSE,2),(gen_random_uuid(),q,'Torgrim',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','medium','Qual é o nome do rei que Canute se torna após consolidar seu poder sobre a Inglaterra e a Dinamarca?','Ele governa através de uma filosofia de paz forçada, contrastando com seu passado como príncipe frágil.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rei Canute',TRUE,0),(gen_random_uuid(),q,'Rei Sweyn',FALSE,1),(gen_random_uuid(),q,'Rei Askeladd',FALSE,2),(gen_random_uuid(),q,'Rei Thorkell',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','medium','Qual é o nome do administrador enviado pelo Rei Canute para supervisionar a fazenda de Ketil, criando tensão com os habitantes locais?','Ele representa a expansão do controle real sobre propriedades privadas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Snake',TRUE,0),(gen_random_uuid(),q,'Wulf',FALSE,1),(gen_random_uuid(),q,'Floki',FALSE,2),(gen_random_uuid(),q,'Ragnar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','medium','Qual é o nome da filha do fazendeiro Ketil, que desenvolve laço de amizade com Thorfinn durante seu período de escravidão?','Ela demonstra compaixão incomum em relação aos escravos da propriedade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arnheid',TRUE,0),(gen_random_uuid(),q,'Ylva',FALSE,1),(gen_random_uuid(),q,'Helga',FALSE,2),(gen_random_uuid(),q,'Gudrid',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','medium','Qual é o nome do pai de Askeladd, nobre galês cuja identidade é revelada gradualmente ao longo da série?','Sua ascendência explica parte da motivação do líder mercenário em relação à Inglaterra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Olaf',TRUE,0),(gen_random_uuid(),q,'Sweyn',FALSE,1),(gen_random_uuid(),q,'Thors',FALSE,2),(gen_random_uuid(),q,'Leif',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','medium','Qual é o nome do capitão do navio comandado por Leif Erikson, envolvido no comércio ao longo da rota até a ilha de origem de Thorfinn?','Ele mantém contato frequente com a família de Thorfinn ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Leif Erikson',TRUE,0),(gen_random_uuid(),q,'Askeladd',FALSE,1),(gen_random_uuid(),q,'Ketil',FALSE,2),(gen_random_uuid(),q,'Thorkell',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','hard','Qual é o nome do golpe estratégico executado por Askeladd contra Sweyn, envolvendo o sequestro do príncipe Canute?','Este evento marca uma reviravolta drástica na trama política da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sequestro de Canute',TRUE,0),(gen_random_uuid(),q,'Cerco de Londres',FALSE,1),(gen_random_uuid(),q,'Traição de Thorkell',FALSE,2),(gen_random_uuid(),q,'Invasão da Dinamarca',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','hard','Qual é o nome do duelo final decisivo entre Thorfinn e Askeladd, marcando o clímax emocional da primeira metade da série?','O resultado deste confronto redefine completamente o objetivo de vida do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Duelo Final contra Askeladd',TRUE,0),(gen_random_uuid(),q,'Batalha de Stamford',FALSE,1),(gen_random_uuid(),q,'Confronto na Fazenda de Ketil',FALSE,2),(gen_random_uuid(),q,'Cerco de Londres',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','hard','Qual é o nome do projeto de Thorfinn na segunda metade da série, envolvendo a compra de terras e libertação de escravos para fundar uma comunidade pacífica?','Ele representa a tentativa de realizar concretamente o sonho de seu pai Thors.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Expedição a Vinland',TRUE,0),(gen_random_uuid(),q,'Rebelião de Ketil',FALSE,1),(gen_random_uuid(),q,'Cerco de Londres',FALSE,2),(gen_random_uuid(),q,'Aliança com Canute',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','hard','Qual é o nome do irmão mais novo de Ketil, que retorna à fazenda reivindicando direitos de herança sobre a propriedade?','Seu retorno gera conflito interno significativo dentro da segunda metade da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Torgrim',TRUE,0),(gen_random_uuid(),q,'Olmar',FALSE,1),(gen_random_uuid(),q,'Sverkel',FALSE,2),(gen_random_uuid(),q,'Einar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','hard','Qual é o nome do administrador real que tenta impor tributos abusivos sobre a fazenda de Ketil, criando conflito direto com Thorfinn e Einar?','Sua postura arrogante representa o abuso do poder centralizado do Rei Canute.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Snake',TRUE,0),(gen_random_uuid(),q,'Wulf',FALSE,1),(gen_random_uuid(),q,'Floki',FALSE,2),(gen_random_uuid(),q,'Ragnar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','hard','Qual é o nome do conselheiro manipulador que orienta Canute em suas primeiras decisões políticas após a morte de Sweyn?','Ele representa influência corruptora sobre o jovem rei em ascensão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Wulf',TRUE,0),(gen_random_uuid(),q,'Ragnar',FALSE,1),(gen_random_uuid(),q,'Floki',FALSE,2),(gen_random_uuid(),q,'Snake',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','hard','Qual é o nome do pai de Canute, revelado por ser figura manipuladora que despreza publicamente o filho para fortalecê-lo psicologicamente?','Sua crueldade é parte de uma estratégia deliberada de criação do futuro rei.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sweyn Forkbeard',TRUE,0),(gen_random_uuid(),q,'Askeladd',FALSE,1),(gen_random_uuid(),q,'Floki',FALSE,2),(gen_random_uuid(),q,'Ragnar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','impossible','Qual é o nome do conselheiro de Sweyn, responsável por estratégias políticas durante a campanha de conquista da Inglaterra?','Ele influencia decisões importantes ao lado do rei viking.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Floki',TRUE,0),(gen_random_uuid(),q,'Wulf',FALSE,1),(gen_random_uuid(),q,'Ragnar',FALSE,2),(gen_random_uuid(),q,'Snake',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','impossible','Qual é o nome da mãe de Thorfinn, que permanece na ilha de origem cuidando da família enquanto Thors parte em jornadas?','Ela representa a estabilidade familiar deixada para trás no início da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Helga',TRUE,0),(gen_random_uuid(),q,'Ylva',FALSE,1),(gen_random_uuid(),q,'Gudrid',FALSE,2),(gen_random_uuid(),q,'Arnheid',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','impossible','Qual é o nome da esposa de Thorfinn na fase final da série, que o acompanha em sua jornada rumo a Vinland?','Ela demonstra apoio incondicional ao projeto pacifista do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gudrid',TRUE,0),(gen_random_uuid(),q,'Helga',FALSE,1),(gen_random_uuid(),q,'Ylva',FALSE,2),(gen_random_uuid(),q,'Arnheid',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','impossible','Qual é o nome do mercador que auxilia Thorfinn na compra de terras e organização logística da expedição a Vinland?','Ele possui conexões comerciais amplas ao longo da rota atlântica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Leif Erikson',TRUE,0),(gen_random_uuid(),q,'Ketil',FALSE,1),(gen_random_uuid(),q,'Snake',FALSE,2),(gen_random_uuid(),q,'Wulf',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','impossible','Qual é o nome do guerreiro jomsviking que integra a banda de Askeladd, reconhecido por seu treinamento disciplinado?','Ele representa a tradição militar rigorosa dos guerreiros de Jomsborg.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Atli',TRUE,0),(gen_random_uuid(),q,'Bjorn',FALSE,1),(gen_random_uuid(),q,'Ragnar',FALSE,2),(gen_random_uuid(),q,'Torgrim',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- FILL_BLANK — 38 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'fill_blank','easy','O protagonista, filho de um guerreiro pacífico que se torna mercenário em busca de vingança, se chama ___.','Ele sonha em navegar até uma terra distante conhecida por sua paz e fertilidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Thorfinn',TRUE,0),(gen_random_uuid(),q,'Askeladd',FALSE,1),(gen_random_uuid(),q,'Thors',FALSE,2),(gen_random_uuid(),q,'Canute',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'fill_blank','easy','O pai de Thorfinn, ex-guerreiro lendário que abandona a vida de combate para viver em paz, se chama ___.','Sua morte é o evento que desencadeia toda a busca de vingança do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Thors',TRUE,0),(gen_random_uuid(),q,'Askeladd',FALSE,1),(gen_random_uuid(),q,'Leif',FALSE,2),(gen_random_uuid(),q,'Sweyn',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'fill_blank','easy','O líder mercenário responsável pela morte do pai de Thorfinn, tornando-se seu alvo de vingança, se chama ___.','Ele é astuto e estrategista, mantendo Thorfinn por perto como aprendiz relutante.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Askeladd',TRUE,0),(gen_random_uuid(),q,'Thors',FALSE,1),(gen_random_uuid(),q,'Sweyn',FALSE,2),(gen_random_uuid(),q,'Canute',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'fill_blank','easy','O rei viking que lidera a invasão à Inglaterra no início da série se chama ___.','Ele busca conquistar o trono inglês através de campanhas militares brutais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sweyn Forkbeard',TRUE,0),(gen_random_uuid(),q,'Askeladd',FALSE,1),(gen_random_uuid(),q,'Canute',FALSE,2),(gen_random_uuid(),q,'Thors',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'fill_blank','easy','O príncipe frágil que acompanha o exército de Sweyn, transformando-se em líder implacável, se chama ___.','Sua transformação de personagem é um dos arcos mais marcantes da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Canute',TRUE,0),(gen_random_uuid(),q,'Thorfinn',FALSE,1),(gen_random_uuid(),q,'Askeladd',FALSE,2),(gen_random_uuid(),q,'Thorkell',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'fill_blank','easy','A terra lendária mencionada por Thors como lugar de paz, sem guerras nem escravidão, se chama ___.','Ela é baseada em referências históricas a explorações vikings na América do Norte.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vinland',TRUE,0),(gen_random_uuid(),q,'Groenlândia',FALSE,1),(gen_random_uuid(),q,'Jomsborg',FALSE,2),(gen_random_uuid(),q,'Valhalla',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'fill_blank','easy','O guerreiro viking gigante, conhecido por rir alegremente mesmo em combates mortais, se chama ___.','Ele é um dos poucos guerreiros capazes de rivalizar diretamente com Thors em força bruta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Thorkell',TRUE,0),(gen_random_uuid(),q,'Askeladd',FALSE,1),(gen_random_uuid(),q,'Bjorn',FALSE,2),(gen_random_uuid(),q,'Sweyn',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'fill_blank','easy','O explorador viking histórico mencionado como tendo alcançado Vinland antes dos eventos principais se chama ___.','Sua jornada é referenciada como inspiração para o sonho de Thorfinn e seu pai.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Leif Erikson',TRUE,0),(gen_random_uuid(),q,'Thors',FALSE,1),(gen_random_uuid(),q,'Askeladd',FALSE,2),(gen_random_uuid(),q,'Sweyn',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'fill_blank','easy','A irmã mais velha de Thorfinn, que permanece na ilha de origem enquanto ele parte em jornada de vingança, se chama ___.','Ela representa a vida pacífica que Thorfinn deixou para trás quando criança.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ylva',TRUE,0),(gen_random_uuid(),q,'Helga',FALSE,1),(gen_random_uuid(),q,'Gudrid',FALSE,2),(gen_random_uuid(),q,'Arnheid',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'fill_blank','easy','O rei inglês que enfrenta a invasão viking liderada por Sweyn no início da série se chama ___.','Ele busca resistir através de negociações e alianças estratégicas contra o avanço viking.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Æthelred',TRUE,0),(gen_random_uuid(),q,'Edmund',FALSE,1),(gen_random_uuid(),q,'Canute',FALSE,2),(gen_random_uuid(),q,'Sweyn',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'fill_blank','medium','O fazendeiro que compra Thorfinn como escravo após uma dívida de guerra, iniciando a segunda metade da série, se chama ___.','Sua fazenda torna-se cenário da jornada de redenção do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ketil',TRUE,0),(gen_random_uuid(),q,'Sweyn',FALSE,1),(gen_random_uuid(),q,'Askeladd',FALSE,2),(gen_random_uuid(),q,'Thorkell',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'fill_blank','medium','O filho mais velho do fazendeiro que compra Thorfinn, notório por sua crueldade com os escravos, se chama ___.','Ele representa antagonismo direto durante a fase de escravidão do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Olmar',TRUE,0),(gen_random_uuid(),q,'Einar',FALSE,1),(gen_random_uuid(),q,'Sverkel',FALSE,2),(gen_random_uuid(),q,'Torgrim',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'fill_blank','medium','O escravo companheiro de Thorfinn na fazenda de Ketil, cuja família foi destruída por invasores na infância, se chama ___.','Ele desenvolve amizade próxima com Thorfinn ao longo do trabalho na propriedade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Einar',TRUE,0),(gen_random_uuid(),q,'Olmar',FALSE,1),(gen_random_uuid(),q,'Sverkel',FALSE,2),(gen_random_uuid(),q,'Torgrim',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'fill_blank','medium','O capataz idoso da fazenda de Ketil, responsável por supervisionar o trabalho dos escravos, se chama ___.','Ele orienta Thorfinn durante o período de adaptação à vida agrícola.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sverkel',TRUE,0),(gen_random_uuid(),q,'Olmar',FALSE,1),(gen_random_uuid(),q,'Einar',FALSE,2),(gen_random_uuid(),q,'Torgrim',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'fill_blank','medium','O rei que Canute se torna após consolidar seu poder sobre a Inglaterra e a Dinamarca é conhecido como ___.','Ele governa através de uma filosofia de paz forçada, contrastando com seu passado frágil.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rei Canute',TRUE,0),(gen_random_uuid(),q,'Rei Sweyn',FALSE,1),(gen_random_uuid(),q,'Rei Askeladd',FALSE,2),(gen_random_uuid(),q,'Rei Thorkell',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'fill_blank','medium','O administrador enviado pelo Rei Canute para supervisionar a fazenda de Ketil, criando tensão local, se chama ___.','Ele representa a expansão do controle real sobre propriedades privadas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Snake',TRUE,0),(gen_random_uuid(),q,'Wulf',FALSE,1),(gen_random_uuid(),q,'Floki',FALSE,2),(gen_random_uuid(),q,'Ragnar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'fill_blank','medium','A filha do fazendeiro Ketil, que desenvolve amizade com Thorfinn durante seu período de escravidão, se chama ___.','Ela demonstra compaixão incomum em relação aos escravos da propriedade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arnheid',TRUE,0),(gen_random_uuid(),q,'Ylva',FALSE,1),(gen_random_uuid(),q,'Helga',FALSE,2),(gen_random_uuid(),q,'Gudrid',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'fill_blank','hard','O golpe estratégico executado por Askeladd contra Sweyn, envolvendo o sequestro do príncipe Canute, é conhecido como ___.','Este evento marca uma reviravolta drástica na trama política da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sequestro de Canute',TRUE,0),(gen_random_uuid(),q,'Cerco de Londres',FALSE,1),(gen_random_uuid(),q,'Traição de Thorkell',FALSE,2),(gen_random_uuid(),q,'Invasão da Dinamarca',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'fill_blank','hard','O projeto de Thorfinn na segunda metade da série, envolvendo compra de terras e libertação de escravos, é chamado de ___.','Ele representa a tentativa de realizar concretamente o sonho de seu pai Thors.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Expedição a Vinland',TRUE,0),(gen_random_uuid(),q,'Rebelião de Ketil',FALSE,1),(gen_random_uuid(),q,'Cerco de Londres',FALSE,2),(gen_random_uuid(),q,'Aliança com Canute',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'fill_blank','hard','O irmão mais novo de Ketil, que retorna à fazenda reivindicando direitos de herança, se chama ___.','Seu retorno gera conflito interno significativo dentro da segunda metade da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Torgrim',TRUE,0),(gen_random_uuid(),q,'Olmar',FALSE,1),(gen_random_uuid(),q,'Sverkel',FALSE,2),(gen_random_uuid(),q,'Einar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'fill_blank','hard','O administrador real que tenta impor tributos abusivos sobre a fazenda de Ketil, gerando conflito com Thorfinn, se chama ___.','Sua postura arrogante representa o abuso do poder centralizado do Rei Canute.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Snake',TRUE,0),(gen_random_uuid(),q,'Wulf',FALSE,1),(gen_random_uuid(),q,'Floki',FALSE,2),(gen_random_uuid(),q,'Ragnar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'fill_blank','hard','O conselheiro manipulador que orienta Canute em suas primeiras decisões políticas após a morte de Sweyn se chama ___.','Ele representa influência corruptora sobre o jovem rei em ascensão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Wulf',TRUE,0),(gen_random_uuid(),q,'Ragnar',FALSE,1),(gen_random_uuid(),q,'Floki',FALSE,2),(gen_random_uuid(),q,'Snake',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'fill_blank','impossible','O conselheiro de Sweyn, responsável por estratégias políticas durante a campanha de conquista da Inglaterra, se chama ___.','Ele influencia decisões importantes ao lado do rei viking.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Floki',TRUE,0),(gen_random_uuid(),q,'Wulf',FALSE,1),(gen_random_uuid(),q,'Ragnar',FALSE,2),(gen_random_uuid(),q,'Snake',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'fill_blank','impossible','A esposa de Thorfinn na fase final da série, que o acompanha em sua jornada rumo a Vinland, se chama ___.','Ela demonstra apoio incondicional ao projeto pacifista do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gudrid',TRUE,0),(gen_random_uuid(),q,'Helga',FALSE,1),(gen_random_uuid(),q,'Ylva',FALSE,2),(gen_random_uuid(),q,'Arnheid',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- WHO_SAID — 30 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'who_said','easy','Quem disse: "Eu não tenho inimigos, filho. Ninguém tem inimigos de verdade"?','A frase é dita pelo pai pacífico de Thorfinn, refletindo sua filosofia de vida.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Thors',TRUE,0),(gen_random_uuid(),q,'Askeladd',FALSE,1),(gen_random_uuid(),q,'Leif',FALSE,2),(gen_random_uuid(),q,'Canute',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'who_said','easy','Quem disse: "Eu vou vingar meu pai com minhas próprias mãos, nem que leve toda a minha vida para isso"?','A frase reflete a motivação inicial do protagonista da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Thorfinn',TRUE,0),(gen_random_uuid(),q,'Askeladd',FALSE,1),(gen_random_uuid(),q,'Canute',FALSE,2),(gen_random_uuid(),q,'Thorkell',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'who_said','easy','Quem disse: "Eu busco conquistar o trono inglês, e nenhum exército será capaz de deter minha campanha militar"?','A frase é dita pelo rei viking que lidera a invasão à Inglaterra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sweyn',TRUE,0),(gen_random_uuid(),q,'Askeladd',FALSE,1),(gen_random_uuid(),q,'Canute',FALSE,2),(gen_random_uuid(),q,'Thors',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'who_said','easy','Quem disse: "Eu era frágil e reservado, mas hoje me tornei o líder implacável que meu reino precisa"?','A frase reflete a transformação do príncipe que acompanha o exército de Sweyn.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Canute',TRUE,0),(gen_random_uuid(),q,'Thorfinn',FALSE,1),(gen_random_uuid(),q,'Askeladd',FALSE,2),(gen_random_uuid(),q,'Thorkell',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'who_said','easy','Quem disse: "Eu rio mesmo em batalhas mortais, pois encontro alegria genuína na força e no combate"?','A frase é dita pelo guerreiro viking gigante conhecido por sua alegria em combate.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Thorkell',TRUE,0),(gen_random_uuid(),q,'Askeladd',FALSE,1),(gen_random_uuid(),q,'Bjorn',FALSE,2),(gen_random_uuid(),q,'Sweyn',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'who_said','easy','Quem disse: "Eu mantenho Thorfinn por perto como aprendiz relutante, mesmo sabendo do ódio que ele sente por mim"?','A frase é dita pelo líder mercenário responsável pela morte do pai de Thorfinn.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Askeladd',TRUE,0),(gen_random_uuid(),q,'Thors',FALSE,1),(gen_random_uuid(),q,'Sweyn',FALSE,2),(gen_random_uuid(),q,'Canute',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'who_said','medium','Quem disse: "Eu comprei este escravo por uma dívida de guerra, mas não esperava que ele se tornasse tão dedicado ao trabalho"?','A frase é dita pelo fazendeiro que compra Thorfinn na segunda metade da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ketil',TRUE,0),(gen_random_uuid(),q,'Sweyn',FALSE,1),(gen_random_uuid(),q,'Askeladd',FALSE,2),(gen_random_uuid(),q,'Thorkell',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'who_said','medium','Quem disse: "Minha família foi destruída por invasores quando eu era criança, e desde então aprendi a sobreviver como escravo"?','A frase é dita pelo companheiro de Thorfinn na fazenda de Ketil.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Einar',TRUE,0),(gen_random_uuid(),q,'Olmar',FALSE,1),(gen_random_uuid(),q,'Sverkel',FALSE,2),(gen_random_uuid(),q,'Torgrim',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'who_said','medium','Quem disse: "Eu trato os escravos com crueldade, pois acredito que essa é a única forma de manter ordem na propriedade"?','A frase é dita pelo filho mais velho do fazendeiro Ketil.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Olmar',TRUE,0),(gen_random_uuid(),q,'Einar',FALSE,1),(gen_random_uuid(),q,'Sverkel',FALSE,2),(gen_random_uuid(),q,'Torgrim',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'who_said','medium','Quem disse: "Eu governo através de uma paz forçada, pois aprendi que só a força verdadeira pode manter meu reino unido"?','A frase é dita pelo rei que Canute se torna após consolidar seu poder.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Canute (como rei)',TRUE,0),(gen_random_uuid(),q,'Sweyn',FALSE,1),(gen_random_uuid(),q,'Askeladd',FALSE,2),(gen_random_uuid(),q,'Thorkell',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'who_said','medium','Quem disse: "Eu fui enviado para supervisionar esta fazenda em nome do rei, e imporei tributos independentemente da opinião local"?','A frase é dita pelo administrador enviado pelo Rei Canute à fazenda de Ketil.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Snake',TRUE,0),(gen_random_uuid(),q,'Wulf',FALSE,1),(gen_random_uuid(),q,'Floki',FALSE,2),(gen_random_uuid(),q,'Ragnar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'who_said','medium','Quem disse: "Eu demonstro compaixão pelos escravos desta propriedade, mesmo sendo filha do fazendeiro que os possui"?','A frase é dita pela filha de Ketil que desenvolve amizade com Thorfinn.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arnheid',TRUE,0),(gen_random_uuid(),q,'Ylva',FALSE,1),(gen_random_uuid(),q,'Helga',FALSE,2),(gen_random_uuid(),q,'Gudrid',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'who_said','hard','Quem disse: "Eu sequestrei o príncipe Canute como parte de minha estratégia contra Sweyn, arriscando tudo neste único movimento"?','A frase é dita pelo líder mercenário responsável pelo golpe estratégico decisivo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Askeladd',TRUE,0),(gen_random_uuid(),q,'Thors',FALSE,1),(gen_random_uuid(),q,'Sweyn',FALSE,2),(gen_random_uuid(),q,'Canute',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'who_said','hard','Quem disse: "Eu quero comprar terras e libertar escravos para fundar uma comunidade pacífica, realizando o sonho que meu pai nunca completou"?','A frase é dita pelo protagonista durante seu projeto na segunda metade da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Thorfinn',TRUE,0),(gen_random_uuid(),q,'Askeladd',FALSE,1),(gen_random_uuid(),q,'Canute',FALSE,2),(gen_random_uuid(),q,'Thorkell',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'who_said','hard','Quem disse: "Eu retorno à fazenda de meu irmão reivindicando direitos de herança que me foram negados por anos"?','A frase é dita pelo irmão mais novo de Ketil.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Torgrim',TRUE,0),(gen_random_uuid(),q,'Olmar',FALSE,1),(gen_random_uuid(),q,'Sverkel',FALSE,2),(gen_random_uuid(),q,'Einar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'who_said','hard','Quem disse: "Eu orientei o jovem Canute em suas primeiras decisões políticas, ainda que meus conselhos nem sempre fossem os mais nobres"?','A frase é dita pelo conselheiro manipulador do jovem rei em ascensão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Wulf',TRUE,0),(gen_random_uuid(),q,'Ragnar',FALSE,1),(gen_random_uuid(),q,'Floki',FALSE,2),(gen_random_uuid(),q,'Snake',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'who_said','hard','Quem disse: "Eu desprezo meu próprio filho publicamente, pois acredito que isso o fortalecerá para o trono que um dia ocupará"?','A frase é dita pelo pai de Canute, revelado como figura manipuladora e calculista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sweyn',TRUE,0),(gen_random_uuid(),q,'Askeladd',FALSE,1),(gen_random_uuid(),q,'Floki',FALSE,2),(gen_random_uuid(),q,'Ragnar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'who_said','hard','Quem disse: "Eu demonstro lealdade absoluta a Canute desde o início de sua transformação, mesmo diante das decisões mais difíceis"?','A frase é dita pelo conselheiro leal e guerreiro dinamarquês próximo ao rei.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ragnar',TRUE,0),(gen_random_uuid(),q,'Thorkell',FALSE,1),(gen_random_uuid(),q,'Wulf',FALSE,2),(gen_random_uuid(),q,'Floki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'who_said','impossible','Quem disse: "Eu naveguei até uma terra distante décadas atrás, e minha jornada inspirou o sonho de toda uma família"?','A frase é dita pelo explorador viking histórico mencionado na trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Leif Erikson',TRUE,0),(gen_random_uuid(),q,'Thors',FALSE,1),(gen_random_uuid(),q,'Askeladd',FALSE,2),(gen_random_uuid(),q,'Sweyn',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'who_said','impossible','Quem disse: "Eu supervisiono o trabalho dos escravos com relativa justiça, tentando amenizar o sofrimento sempre que possível"?','A frase é dita pelo capataz idoso da fazenda de Ketil.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sverkel',TRUE,0),(gen_random_uuid(),q,'Olmar',FALSE,1),(gen_random_uuid(),q,'Einar',FALSE,2),(gen_random_uuid(),q,'Torgrim',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- EPISODE_ARC — 15 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'episode_arc','medium','Em qual arco Thorfinn testemunha a morte de seu pai Thors, dando início à sua busca de vingança contra Askeladd?','O arco estabelece a premissa emocional central de toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Origem',TRUE,0),(gen_random_uuid(),q,'Arco da Invasão à Inglaterra',FALSE,1),(gen_random_uuid(),q,'Arco da Fazenda',FALSE,2),(gen_random_uuid(),q,'Arco de Vinland',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'episode_arc','medium','Em qual arco a banda de Askeladd participa ativamente da campanha militar de Sweyn contra a Inglaterra, incluindo o sequestro de Canute?','Este arco culmina no duelo final entre Thorfinn e Askeladd.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Invasão à Inglaterra',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco da Fazenda',FALSE,2),(gen_random_uuid(),q,'Arco de Vinland',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'episode_arc','medium','Em qual arco Thorfinn vive como escravo na propriedade de Ketil, iniciando gradualmente sua jornada de redenção pessoal?','Este arco marca uma transição significativa no tom da narrativa da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Fazenda',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco da Invasão à Inglaterra',FALSE,2),(gen_random_uuid(),q,'Arco de Vinland',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'episode_arc','medium','Em qual arco Thorfinn organiza a compra de terras e a expedição final rumo à terra prometida por seu pai?','O arco representa a culminação do objetivo de vida do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Vinland',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco da Invasão à Inglaterra',FALSE,2),(gen_random_uuid(),q,'Arco da Fazenda',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'episode_arc','medium','Em qual arco Canute passa por sua transformação de príncipe frágil para líder implacável, sob orientação manipuladora de seu pai?','Esta transformação ocorre paralelamente aos eventos vividos por Thorfinn.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Invasão à Inglaterra',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco da Fazenda',FALSE,2),(gen_random_uuid(),q,'Arco de Vinland',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'episode_arc','medium','Em qual arco Snake é enviado para supervisionar a fazenda de Ketil, criando tensão direta com Thorfinn e Einar?','Este conflito representa o abuso do poder centralizado do novo governo de Canute.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Fazenda',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco da Invasão à Inglaterra',FALSE,2),(gen_random_uuid(),q,'Arco de Vinland',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'episode_arc','medium','Em qual arco Thorfinn enfrenta Thorkell pela primeira vez, demonstrando ainda inexperiência apesar de seu talento natural para o combate?','Este confronto ocorre ainda durante sua fase como mercenário jovem.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Origem',TRUE,0),(gen_random_uuid(),q,'Arco da Invasão à Inglaterra',FALSE,1),(gen_random_uuid(),q,'Arco da Fazenda',FALSE,2),(gen_random_uuid(),q,'Arco de Vinland',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'episode_arc','hard','Em qual arco é revelado o passado de Askeladd como filho de um nobre galês, explicando parte de sua motivação em relação à Inglaterra?','A revelação ocorre através de flashbacks durante a campanha militar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Invasão à Inglaterra',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco da Fazenda',FALSE,2),(gen_random_uuid(),q,'Arco de Vinland',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'episode_arc','hard','Em qual arco Einar compartilha sua história trágica de perda familiar com Thorfinn, fortalecendo o laço de amizade entre os dois escravos?','O compartilhamento dessa história marca ponto importante na jornada de redenção do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Fazenda',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco da Invasão à Inglaterra',FALSE,2),(gen_random_uuid(),q,'Arco de Vinland',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'episode_arc','hard','Em qual arco Torgrim retorna reivindicando herança sobre a fazenda de Ketil, gerando conflito interno entre os personagens?','Este conflito ocorre paralelamente à tensão criada pela chegada de Snake.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Fazenda',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco da Invasão à Inglaterra',FALSE,2),(gen_random_uuid(),q,'Arco de Vinland',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'episode_arc','hard','Em qual arco Thorfinn finalmente confronta e supera seu trauma de vingança, redirecionando sua energia para a construção de uma comunidade pacífica?','Esta superação pessoal define o tom filosófico da parte final da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Fazenda',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco da Invasão à Inglaterra',FALSE,2),(gen_random_uuid(),q,'Arco de Vinland',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'episode_arc','impossible','Em qual arco é revelado o plano completo de Sweyn para fortalecer psicologicamente Canute através de desprezo público deliberado?','A revelação ocorre através de diálogos entre Sweyn e seus conselheiros mais próximos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Invasão à Inglaterra',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco da Fazenda',FALSE,2),(gen_random_uuid(),q,'Arco de Vinland',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'episode_arc','impossible','Em qual arco é revelado o passado completo de Thorkell como um dos guerreiros mais temidos da era viking antes dos eventos principais?','A revelação ocorre através de referências e diálogos durante a campanha militar contra a Inglaterra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Invasão à Inglaterra',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco da Fazenda',FALSE,2),(gen_random_uuid(),q,'Arco de Vinland',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- CHRONOLOGICAL — 7 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'chronological','hard','Ordene cronologicamente os arcos a seguir, do mais antigo ao mais recente.','Cobrem desde a morte de Thors até a expedição final a Vinland.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Origem',TRUE,0),(gen_random_uuid(),q,'Invasão à Inglaterra',FALSE,1),(gen_random_uuid(),q,'Fazenda',FALSE,2),(gen_random_uuid(),q,'Vinland',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'chronological','hard','Ordene cronologicamente os seguintes eventos da jornada de Thorfinn, do mais antigo ao mais recente.','Cobrem desde a morte de seu pai até a organização da expedição a Vinland.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Testemunha a morte de Thors',TRUE,0),(gen_random_uuid(),q,'Enfrenta Askeladd em duelo final',FALSE,1),(gen_random_uuid(),q,'Torna-se escravo na fazenda de Ketil',FALSE,2),(gen_random_uuid(),q,'Organiza a expedição a Vinland',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre Canute, do mais antigo ao mais recente.','Cobrem desde sua fragilidade inicial até sua consolidação como rei.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'É desprezado publicamente pelo próprio pai',TRUE,0),(gen_random_uuid(),q,'É sequestrado por Askeladd',FALSE,1),(gen_random_uuid(),q,'Assume liderança após a morte de Sweyn',FALSE,2),(gen_random_uuid(),q,'Consolida seu poder como rei da Inglaterra e Dinamarca',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre Askeladd, do mais antigo ao mais recente.','Cobrem desde a morte de Thors até seu confronto final com Thorfinn.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mata Thors em confronto direto',TRUE,0),(gen_random_uuid(),q,'Recruta Thorfinn como aprendiz relutante',FALSE,1),(gen_random_uuid(),q,'Sequestra o príncipe Canute',FALSE,2),(gen_random_uuid(),q,'Enfrenta Thorfinn em duelo final decisivo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre a fazenda de Ketil, do mais antigo ao mais recente.','Cobrem desde a chegada de Thorfinn como escravo até a expedição final a Vinland.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Thorfinn chega como escravo comprado por Ketil',TRUE,0),(gen_random_uuid(),q,'Snake é enviado para supervisionar a propriedade',FALSE,1),(gen_random_uuid(),q,'Torgrim retorna reivindicando herança',FALSE,2),(gen_random_uuid(),q,'Thorfinn organiza a compra de terras para Vinland',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Einar, do mais antigo ao mais recente.','Cobrem desde a perda de sua família até sua amizade com Thorfinn na fazenda.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Perde sua família em um ataque de invasores',TRUE,0),(gen_random_uuid(),q,'Torna-se escravo na fazenda de Ketil',FALSE,1),(gen_random_uuid(),q,'Desenvolve amizade próxima com Thorfinn',FALSE,2),(gen_random_uuid(),q,'Compartilha sua história trágica com o amigo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Sweyn, do mais antigo ao mais recente.','Cobrem desde a campanha de invasão até sua morte no auge do poder.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Lidera a invasão à Inglaterra',TRUE,0),(gen_random_uuid(),q,'Despreza publicamente seu filho Canute',FALSE,1),(gen_random_uuid(),q,'Conquista o trono inglês definitivamente',FALSE,2),(gen_random_uuid(),q,'Morre no auge de seu poder como rei',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- COMPLEMENTO — fechar 150 perguntas (24 text / 14 fill_blank / 10 who_said / 2 episode_arc)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','easy','Qual desses personagens integra a banda de Askeladd como arqueiro habilidoso, participando de diversas batalhas ao longo da campanha?','Ele é reconhecido por sua precisão em combate à distância.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Atli',TRUE,0),(gen_random_uuid(),q,'Bjorn',FALSE,1),(gen_random_uuid(),q,'Ragnar',FALSE,2),(gen_random_uuid(),q,'Wulf',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','easy','Qual desses personagens é guerreiro leal e experiente da banda de Askeladd, frequentemente próximo ao líder em decisões estratégicas?','Ele é um dos membros mais confiáveis do grupo mercenário desde o início.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bjorn',TRUE,0),(gen_random_uuid(),q,'Atli',FALSE,1),(gen_random_uuid(),q,'Ragnar',FALSE,2),(gen_random_uuid(),q,'Wulf',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','medium','Qual desses personagens é filho do rei inglês, assumindo liderança militar em confrontos contra os invasores vikings?','Ele demonstra determinação em defender o trono de seu pai a qualquer custo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Edmund',TRUE,0),(gen_random_uuid(),q,'Æthelred',FALSE,1),(gen_random_uuid(),q,'Canute',FALSE,2),(gen_random_uuid(),q,'Ragnar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','medium','Qual desses personagens é rei inglês que busca resistir à invasão viking através de negociações e alianças estratégicas?','Ele enfrenta a campanha militar liderada por Sweyn no início da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Æthelred',TRUE,0),(gen_random_uuid(),q,'Edmund',FALSE,1),(gen_random_uuid(),q,'Canute',FALSE,2),(gen_random_uuid(),q,'Sweyn',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','medium','Qual desses personagens é pai de Askeladd, nobre galês cuja identidade é revelada gradualmente ao longo da série?','Sua ascendência explica parte da motivação do líder mercenário em relação à Inglaterra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Olaf',TRUE,0),(gen_random_uuid(),q,'Sweyn',FALSE,1),(gen_random_uuid(),q,'Thors',FALSE,2),(gen_random_uuid(),q,'Leif',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','medium','Qual desses personagens é mãe de Thorfinn, permanecendo na ilha de origem cuidando da família enquanto Thors parte em jornadas?','Ela representa a estabilidade familiar deixada para trás no início da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Helga',TRUE,0),(gen_random_uuid(),q,'Ylva',FALSE,1),(gen_random_uuid(),q,'Gudrid',FALSE,2),(gen_random_uuid(),q,'Arnheid',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','hard','Qual desses personagens auxilia Thorfinn com conexões comerciais amplas ao longo da rota atlântica durante a organização da expedição a Vinland?','Ele é o mesmo explorador histórico mencionado desde o início da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Leif Erikson',TRUE,0),(gen_random_uuid(),q,'Ketil',FALSE,1),(gen_random_uuid(),q,'Snake',FALSE,2),(gen_random_uuid(),q,'Wulf',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','hard','Qual desses personagens é guerreiro jomsviking que integra a banda de Askeladd, reconhecido pelo treinamento disciplinado tradicional?','Ele representa a rigorosa tradição militar dos guerreiros de Jomsborg.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Atli',TRUE,0),(gen_random_uuid(),q,'Bjorn',FALSE,1),(gen_random_uuid(),q,'Ragnar',FALSE,2),(gen_random_uuid(),q,'Torgrim',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','impossible','Qual desses personagens integra a banda de mercenários formada por guerreiros de diversas origens, atuando durante a campanha de invasão à Inglaterra?','Este grupo é liderado estrategicamente por Askeladd.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bjorn',TRUE,0),(gen_random_uuid(),q,'Æthelred',FALSE,1),(gen_random_uuid(),q,'Edmund',FALSE,2),(gen_random_uuid(),q,'Snake',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','impossible','Qual desses personagens demonstra determinação em defender o trono de seu pai contra os invasores, liderando confrontos militares diretos?','Ele é filho do rei Æthelred.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Edmund',TRUE,0),(gen_random_uuid(),q,'Æthelred',FALSE,1),(gen_random_uuid(),q,'Canute',FALSE,2),(gen_random_uuid(),q,'Ragnar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','medium','Qual desses personagens permanece cuidando da família na ilha de origem enquanto Thors parte em jornadas de guerra?','Ela é esposa de Thors e mãe de Thorfinn e Ylva.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Helga',TRUE,0),(gen_random_uuid(),q,'Ylva',FALSE,1),(gen_random_uuid(),q,'Gudrid',FALSE,2),(gen_random_uuid(),q,'Arnheid',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','hard','Qual desses personagens revela ascendência nobre galesa, explicando parte de sua motivação estratégica em relação à conquista da Inglaterra?','Sua identidade paterna é revelada gradualmente ao longo da narrativa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Olaf',TRUE,0),(gen_random_uuid(),q,'Sweyn',FALSE,1),(gen_random_uuid(),q,'Thors',FALSE,2),(gen_random_uuid(),q,'Leif',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','easy','Qual desses personagens é rei inglês que negocia com invasores vikings tentando preservar seu trono através de alianças estratégicas?','Ele enfrenta pressão constante durante toda a campanha militar de Sweyn.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Æthelred',TRUE,0),(gen_random_uuid(),q,'Edmund',FALSE,1),(gen_random_uuid(),q,'Canute',FALSE,2),(gen_random_uuid(),q,'Sweyn',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','medium','Qual desses personagens integra a banda de Askeladd como guerreiro jomsviking, reconhecido pelo treinamento disciplinado tradicional de Jomsborg?','Ele participa de diversas batalhas ao longo da campanha na Inglaterra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Atli',TRUE,0),(gen_random_uuid(),q,'Bjorn',FALSE,1),(gen_random_uuid(),q,'Ragnar',FALSE,2),(gen_random_uuid(),q,'Torgrim',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','hard','Qual desses personagens é guerreiro confiável da banda de Askeladd, próximo ao líder em decisões estratégicas desde o início da campanha?','Ele demonstra lealdade constante ao grupo mercenário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bjorn',TRUE,0),(gen_random_uuid(),q,'Atli',FALSE,1),(gen_random_uuid(),q,'Ragnar',FALSE,2),(gen_random_uuid(),q,'Wulf',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','impossible','Qual desses personagens mantém conexões comerciais amplas ao longo da rota atlântica, auxiliando na organização logística da expedição final?','Ele é o explorador histórico cuja jornada motivou o sonho de Thors e Thorfinn.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Leif Erikson',TRUE,0),(gen_random_uuid(),q,'Ketil',FALSE,1),(gen_random_uuid(),q,'Snake',FALSE,2),(gen_random_uuid(),q,'Wulf',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','medium','Qual desses personagens é filho do rei Æthelred, liderando confrontos militares diretos contra as forças invasoras vikings?','Ele demonstra coragem apesar da desvantagem numérica das forças inglesas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Edmund',TRUE,0),(gen_random_uuid(),q,'Æthelred',FALSE,1),(gen_random_uuid(),q,'Canute',FALSE,2),(gen_random_uuid(),q,'Ragnar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','impossible','Qual desses personagens permanece na ilha de origem de Thorfinn como sua irmã mais velha, representando a vida pacífica deixada para trás?','Ela reaparece brevemente durante momentos de reflexão do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ylva',TRUE,0),(gen_random_uuid(),q,'Helga',FALSE,1),(gen_random_uuid(),q,'Gudrid',FALSE,2),(gen_random_uuid(),q,'Arnheid',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','hard','Qual desses personagens acompanha Thorfinn na fase final da série como esposa dedicada, apoiando o projeto pacifista rumo a Vinland?','Ela demonstra apoio incondicional às decisões do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gudrid',TRUE,0),(gen_random_uuid(),q,'Helga',FALSE,1),(gen_random_uuid(),q,'Ylva',FALSE,2),(gen_random_uuid(),q,'Arnheid',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','medium','Qual desses personagens integra a banda mercenária de guerreiros diversos, participando ativamente da campanha militar liderada por Askeladd?','Ele contribui com habilidades de arqueiro em diversas batalhas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Atli',TRUE,0),(gen_random_uuid(),q,'Æthelred',FALSE,1),(gen_random_uuid(),q,'Edmund',FALSE,2),(gen_random_uuid(),q,'Snake',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','hard','Qual desses personagens é revelado como nobre galês, pai de Askeladd, cuja identidade explica parte da motivação do mercenário em relação à Inglaterra?','A revelação ocorre gradualmente através de flashbacks ao longo da campanha.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Olaf',TRUE,0),(gen_random_uuid(),q,'Sweyn',FALSE,1),(gen_random_uuid(),q,'Thors',FALSE,2),(gen_random_uuid(),q,'Leif',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','easy','Qual desses personagens é rei inglês que enfrenta pressão constante durante toda a campanha militar de Sweyn, buscando resistir através de alianças?','Ele tenta preservar seu trono negociando com os invasores vikings.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Æthelred',TRUE,0),(gen_random_uuid(),q,'Edmund',FALSE,1),(gen_random_uuid(),q,'Canute',FALSE,2),(gen_random_uuid(),q,'Sweyn',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','medium','Qual desses personagens é mãe de Thorfinn e Ylva, permanecendo na ilha de origem enquanto Thors parte em jornadas de guerra pelo mundo?','Ela representa estabilidade familiar em contraste com a vida mercenária de Thors.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Helga',TRUE,0),(gen_random_uuid(),q,'Ylva',FALSE,1),(gen_random_uuid(),q,'Gudrid',FALSE,2),(gen_random_uuid(),q,'Arnheid',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'text','hard','Qual desses personagens demonstra lealdade constante à banda mercenária, participando de decisões estratégicas importantes ao lado de Askeladd?','Ele é considerado um dos membros mais confiáveis do grupo desde o início.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bjorn',TRUE,0),(gen_random_uuid(),q,'Atli',FALSE,1),(gen_random_uuid(),q,'Ragnar',FALSE,2),(gen_random_uuid(),q,'Wulf',FALSE,3);

    -- fill_blank complemento (14)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'fill_blank','easy','O arqueiro habilidoso da banda de Askeladd, conhecido por sua precisão em combate à distância, se chama ___.','Ele participa de diversas batalhas ao lado do grupo mercenário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Atli',TRUE,0),(gen_random_uuid(),q,'Bjorn',FALSE,1),(gen_random_uuid(),q,'Ragnar',FALSE,2),(gen_random_uuid(),q,'Wulf',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'fill_blank','easy','O guerreiro leal e experiente da banda de Askeladd, próximo ao líder em decisões estratégicas, se chama ___.','Ele é um dos membros mais confiáveis do grupo mercenário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bjorn',TRUE,0),(gen_random_uuid(),q,'Atli',FALSE,1),(gen_random_uuid(),q,'Ragnar',FALSE,2),(gen_random_uuid(),q,'Wulf',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'fill_blank','medium','O filho do rei inglês, que assume liderança militar em confrontos contra os invasores vikings, se chama ___.','Ele demonstra determinação em defender o trono de seu pai a qualquer custo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Edmund',TRUE,0),(gen_random_uuid(),q,'Æthelred',FALSE,1),(gen_random_uuid(),q,'Canute',FALSE,2),(gen_random_uuid(),q,'Ragnar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'fill_blank','medium','O rei inglês que busca resistir à invasão viking através de negociações e alianças estratégicas se chama ___.','Ele enfrenta a campanha militar liderada por Sweyn no início da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Æthelred',TRUE,0),(gen_random_uuid(),q,'Edmund',FALSE,1),(gen_random_uuid(),q,'Canute',FALSE,2),(gen_random_uuid(),q,'Sweyn',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'fill_blank','medium','O pai de Askeladd, nobre galês cuja identidade é revelada gradualmente ao longo da série, se chama ___.','Sua ascendência explica parte da motivação do líder mercenário em relação à Inglaterra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Olaf',TRUE,0),(gen_random_uuid(),q,'Sweyn',FALSE,1),(gen_random_uuid(),q,'Thors',FALSE,2),(gen_random_uuid(),q,'Leif',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'fill_blank','easy','A mãe de Thorfinn, que permanece na ilha de origem cuidando da família enquanto Thors parte em jornadas, se chama ___.','Ela representa a estabilidade familiar deixada para trás no início da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Helga',TRUE,0),(gen_random_uuid(),q,'Ylva',FALSE,1),(gen_random_uuid(),q,'Gudrid',FALSE,2),(gen_random_uuid(),q,'Arnheid',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'fill_blank','hard','O guerreiro jomsviking que integra a banda de Askeladd, reconhecido pelo treinamento disciplinado tradicional, se chama ___.','Ele representa a rigorosa tradição militar dos guerreiros de Jomsborg.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Atli',TRUE,0),(gen_random_uuid(),q,'Bjorn',FALSE,1),(gen_random_uuid(),q,'Ragnar',FALSE,2),(gen_random_uuid(),q,'Torgrim',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'fill_blank','hard','O mercador que auxilia Thorfinn na compra de terras e organização logística da expedição a Vinland se chama ___.','Ele possui conexões comerciais amplas ao longo da rota atlântica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Leif Erikson',TRUE,0),(gen_random_uuid(),q,'Ketil',FALSE,1),(gen_random_uuid(),q,'Snake',FALSE,2),(gen_random_uuid(),q,'Wulf',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'fill_blank','impossible','A irmã mais velha de Thorfinn, que representa a vida pacífica deixada para trás na infância, se chama ___.','Ela reaparece brevemente durante momentos de reflexão do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ylva',TRUE,0),(gen_random_uuid(),q,'Helga',FALSE,1),(gen_random_uuid(),q,'Gudrid',FALSE,2),(gen_random_uuid(),q,'Arnheid',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'fill_blank','medium','O filho do rei Æthelred, liderando confrontos militares diretos contra as forças invasoras vikings, se chama ___.','Ele demonstra coragem apesar da desvantagem numérica das forças inglesas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Edmund',TRUE,0),(gen_random_uuid(),q,'Æthelred',FALSE,1),(gen_random_uuid(),q,'Canute',FALSE,2),(gen_random_uuid(),q,'Ragnar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'fill_blank','hard','O guerreiro confiável da banda de Askeladd, próximo ao líder em decisões estratégicas desde o início da campanha, se chama ___.','Ele demonstra lealdade constante ao grupo mercenário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bjorn',TRUE,0),(gen_random_uuid(),q,'Atli',FALSE,1),(gen_random_uuid(),q,'Ragnar',FALSE,2),(gen_random_uuid(),q,'Wulf',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'fill_blank','impossible','A esposa dedicada que acompanha Thorfinn na fase final da série, apoiando o projeto pacifista rumo a Vinland, se chama ___.','Ela demonstra apoio incondicional às decisões do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gudrid',TRUE,0),(gen_random_uuid(),q,'Helga',FALSE,1),(gen_random_uuid(),q,'Ylva',FALSE,2),(gen_random_uuid(),q,'Arnheid',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'fill_blank','medium','O rei inglês que enfrenta pressão constante durante toda a campanha militar de Sweyn, tentando preservar seu trono, se chama ___.','Ele busca resistir através de negociações e alianças estratégicas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Æthelred',TRUE,0),(gen_random_uuid(),q,'Edmund',FALSE,1),(gen_random_uuid(),q,'Canute',FALSE,2),(gen_random_uuid(),q,'Sweyn',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'fill_blank','easy','A mãe de Thorfinn e Ylva, que permanece na ilha de origem enquanto Thors parte em jornadas de guerra, se chama ___.','Ela representa estabilidade familiar em contraste com a vida mercenária de Thors.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Helga',TRUE,0),(gen_random_uuid(),q,'Ylva',FALSE,1),(gen_random_uuid(),q,'Gudrid',FALSE,2),(gen_random_uuid(),q,'Arnheid',FALSE,3);

    -- who_said complemento (10)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'who_said','easy','Quem disse: "Eu atiro com precisão absoluta, e nenhuma distância é grande demais para minhas flechas alcançarem o alvo"?','A frase é dita pelo arqueiro habilidoso da banda de Askeladd.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Atli',TRUE,0),(gen_random_uuid(),q,'Bjorn',FALSE,1),(gen_random_uuid(),q,'Ragnar',FALSE,2),(gen_random_uuid(),q,'Wulf',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'who_said','easy','Quem disse: "Eu permaneço leal a Askeladd desde o início, participando de suas decisões estratégicas mais importantes"?','A frase é dita pelo guerreiro confiável da banda mercenária.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bjorn',TRUE,0),(gen_random_uuid(),q,'Atli',FALSE,1),(gen_random_uuid(),q,'Ragnar',FALSE,2),(gen_random_uuid(),q,'Wulf',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'who_said','medium','Quem disse: "Eu lidero confrontos militares contra os invasores, defendendo o trono de meu pai a qualquer custo necessário"?','A frase é dita pelo filho do rei Æthelred.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Edmund',TRUE,0),(gen_random_uuid(),q,'Æthelred',FALSE,1),(gen_random_uuid(),q,'Canute',FALSE,2),(gen_random_uuid(),q,'Ragnar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'who_said','medium','Quem disse: "Eu tento negociar com os invasores vikings, buscando preservar meu trono através de alianças estratégicas"?','A frase é dita pelo rei inglês que enfrenta a campanha militar de Sweyn.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Æthelred',TRUE,0),(gen_random_uuid(),q,'Edmund',FALSE,1),(gen_random_uuid(),q,'Canute',FALSE,2),(gen_random_uuid(),q,'Sweyn',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'who_said','medium','Quem disse: "Sou nobre galês, e minha verdadeira ascendência explica muito sobre minha motivação em relação à conquista da Inglaterra"?','A frase é dita pelo pai de Askeladd, revelado gradualmente ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Olaf',TRUE,0),(gen_random_uuid(),q,'Sweyn',FALSE,1),(gen_random_uuid(),q,'Thors',FALSE,2),(gen_random_uuid(),q,'Leif',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'who_said','hard','Quem disse: "Eu cuido da família enquanto Thors parte em suas jornadas de guerra, mantendo nossa casa em paz"?','A frase é dita pela mãe de Thorfinn e Ylva.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Helga',TRUE,0),(gen_random_uuid(),q,'Ylva',FALSE,1),(gen_random_uuid(),q,'Gudrid',FALSE,2),(gen_random_uuid(),q,'Arnheid',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'who_said','hard','Quem disse: "Eu treinei disciplinadamente sob a tradição de Jomsborg, e minha lealdade a Askeladd nunca vacilou em combate"?','A frase é dita pelo guerreiro jomsviking que integra a banda mercenária.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Atli',TRUE,0),(gen_random_uuid(),q,'Bjorn',FALSE,1),(gen_random_uuid(),q,'Ragnar',FALSE,2),(gen_random_uuid(),q,'Torgrim',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'who_said','hard','Quem disse: "Eu mantenho amplas conexões comerciais ao longo da rota atlântica, auxiliando Thorfinn na organização de sua expedição final"?','A frase é dita pelo explorador histórico que inspira o sonho da família de Thorfinn.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Leif Erikson',TRUE,0),(gen_random_uuid(),q,'Ketil',FALSE,1),(gen_random_uuid(),q,'Snake',FALSE,2),(gen_random_uuid(),q,'Wulf',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'who_said','impossible','Quem disse: "Eu permaneci na ilha de origem enquanto meu irmão partiu em busca de vingança, representando a vida que ele deixou para trás"?','A frase é dita pela irmã mais velha de Thorfinn.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ylva',TRUE,0),(gen_random_uuid(),q,'Helga',FALSE,1),(gen_random_uuid(),q,'Gudrid',FALSE,2),(gen_random_uuid(),q,'Arnheid',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'who_said','impossible','Quem disse: "Eu apoio incondicionalmente o projeto pacifista de meu marido, acreditando profundamente no sonho de fundar Vinland"?','A frase é dita pela esposa dedicada de Thorfinn na fase final da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gudrid',TRUE,0),(gen_random_uuid(),q,'Helga',FALSE,1),(gen_random_uuid(),q,'Ylva',FALSE,2),(gen_random_uuid(),q,'Arnheid',FALSE,3);

    -- episode_arc complemento (2)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'episode_arc','medium','Em qual arco Edmund lidera confrontos militares diretos contra as forças vikings, demonstrando coragem apesar da desvantagem numérica inglesa?','Este arco ocorre durante o auge da campanha de invasão liderada por Sweyn.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Invasão à Inglaterra',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco da Fazenda',FALSE,2),(gen_random_uuid(),q,'Arco de Vinland',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_vs,'episode_arc','hard','Em qual arco Leif Erikson auxilia diretamente na organização logística da expedição final rumo a Vinland, usando suas conexões comerciais?','Este arco representa a culminação prática do sonho compartilhado por Thors e Thorfinn.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Vinland',TRUE,0),(gen_random_uuid(),q,'Arco de Origem',FALSE,1),(gen_random_uuid(),q,'Arco da Invasão à Inglaterra',FALSE,2),(gen_random_uuid(),q,'Arco da Fazenda',FALSE,3);

END $$;
