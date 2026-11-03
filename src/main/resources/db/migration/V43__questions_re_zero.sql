-- ============================================================
--  V43 — Seed de perguntas: Re:Zero (150 perguntas)
--  Fonte: MyAnimeList + cânone do anime
--  Distribuição: text 40% / fill_blank 25% / who_said 20% /
--                episode_arc 10% / chronological 5%
--  Sem repetição com V5. Regras R1-R7 aplicadas.
-- ============================================================

DO $$
DECLARE
    v_system UUID := '00000000-0000-0000-0000-000000000001';
    v_rz     UUID;
    q        UUID;
BEGIN
    SELECT id INTO v_rz FROM animes WHERE slug = 're-zero' LIMIT 1;

    -- ══════════════════════════════════════════════════════════
    -- TEXT — 60 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','easy','Qual é o nome do protagonista, jovem transportado repentinamente para um mundo de fantasia enquanto voltava da loja de conveniência?','Ele possui a habilidade de retornar no tempo sempre que morre, revivendo eventos passados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Subaru Natsuki',TRUE,0),(gen_random_uuid(),q,'Reinhard',FALSE,1),(gen_random_uuid(),q,'Roswaal',FALSE,2),(gen_random_uuid(),q,'Wilhelm',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','easy','Qual é o nome dado à habilidade especial do protagonista, que o faz retornar a um ponto específico no tempo sempre que morre?','Este poder é mantido em segredo pelo protagonista durante grande parte da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Retorno pela Morte',TRUE,0),(gen_random_uuid(),q,'Reencarnação Eterna',FALSE,1),(gen_random_uuid(),q,'Loop Temporal',FALSE,2),(gen_random_uuid(),q,'Ciclo da Vida',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','easy','Qual é o nome da meia-elfa de cabelos prateados salva por Subaru logo após sua chegada ao novo mundo, tornando-se seu interesse romântico principal?','Ela participa de um torneio para se tornar a próxima rainha do reino.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Emilia',TRUE,0),(gen_random_uuid(),q,'Rem',FALSE,1),(gen_random_uuid(),q,'Ram',FALSE,2),(gen_random_uuid(),q,'Beatrice',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','easy','Qual é o nome da empregada demônio de cabelos azuis que serve na mansão de Roswaal, desenvolvendo profundos sentimentos por Subaru?','Ela possui uma irmã gêmea que também trabalha na mesma mansão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rem',TRUE,0),(gen_random_uuid(),q,'Ram',FALSE,1),(gen_random_uuid(),q,'Emilia',FALSE,2),(gen_random_uuid(),q,'Beatrice',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','easy','Qual é o nome da empregada demônio de cabelos rosa que serve na mansão de Roswaal, irmã gêmea de Rem?','Ela demonstra personalidade mais fria e crítica em relação a Subaru inicialmente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ram',TRUE,0),(gen_random_uuid(),q,'Rem',FALSE,1),(gen_random_uuid(),q,'Emilia',FALSE,2),(gen_random_uuid(),q,'Beatrice',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','easy','Qual é o nome do nobre excêntrico que abriga Emilia e sua equipe em sua mansão, apoiando a candidatura dela ao trono?','Ele demonstra comportamento peculiar e maquiagem característica marcante.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Roswaal',TRUE,0),(gen_random_uuid(),q,'Wilhelm',FALSE,1),(gen_random_uuid(),q,'Reinhard',FALSE,2),(gen_random_uuid(),q,'Felt',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','easy','Qual é o nome do cavaleiro considerado o mais forte do reino, aliado poderoso de Emilia durante o torneio pelo trono?','Ele é descendente de uma linhagem lendária de espadachins.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Reinhard van Astrea',TRUE,0),(gen_random_uuid(),q,'Wilhelm',FALSE,1),(gen_random_uuid(),q,'Roswaal',FALSE,2),(gen_random_uuid(),q,'Julius',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','easy','Qual é o nome do espírito em forma de livro que reside na biblioteca da mansão de Roswaal, guardiã de um portal dimensional?','Ela demonstra personalidade orgulhosa e teimosa em suas interações com Subaru.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Beatrice',TRUE,0),(gen_random_uuid(),q,'Rem',FALSE,1),(gen_random_uuid(),q,'Ram',FALSE,2),(gen_random_uuid(),q,'Emilia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','easy','Qual é o nome da jovem ladra habilidosa que rouba o brasão de cristal de Subaru logo após sua chegada ao novo mundo?','Ela vive na capital, envolvida em uma rede de contrabando local.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Felt',TRUE,0),(gen_random_uuid(),q,'Rem',FALSE,1),(gen_random_uuid(),q,'Emilia',FALSE,2),(gen_random_uuid(),q,'Beatrice',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','easy','Qual é o nome dado às cristais especiais que servem como candidatos oficiais ao trono, reagindo apenas a pessoas dignas de governar?','Sua ativação inicia formalmente o torneio pela sucessão real.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Brasões Reais',TRUE,0),(gen_random_uuid(),q,'Selos Sagrados',FALSE,1),(gen_random_uuid(),q,'Gemas do Destino',FALSE,2),(gen_random_uuid(),q,'Cristais da Coroa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','easy','Qual é o nome dado ao reino de fantasia onde se passam a maioria dos eventos da série, ambientado em cenário medieval mágico?','Sua capital abriga o palácio onde ocorre o torneio pela sucessão real.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Reino de Lugnica',TRUE,0),(gen_random_uuid(),q,'Reino de Vollachia',FALSE,1),(gen_random_uuid(),q,'Reino de Gusteko',FALSE,2),(gen_random_uuid(),q,'Reino de Kararagi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','easy','Qual é o nome dado à vila onde a mansão de Roswaal está localizada, cenário de diversos eventos importantes da primeira metade da série?','Ela é frequentemente ameaçada por ataques de monstros durante a trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arlam',TRUE,0),(gen_random_uuid(),q,'Priestella',FALSE,1),(gen_random_uuid(),q,'Kararagi',FALSE,2),(gen_random_uuid(),q,'Flugel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','easy','Qual é o nome dado ao velho espadachim aposentado, avô de Reinhard, considerado uma lenda viva entre os cavaleiros do reino?','Ele treina Subaru em técnicas básicas de combate em determinado momento da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Wilhelm van Astrea',TRUE,0),(gen_random_uuid(),q,'Reinhard',FALSE,1),(gen_random_uuid(),q,'Roswaal',FALSE,2),(gen_random_uuid(),q,'Julius',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','easy','Qual é o nome do cavaleiro elegante e orgulhoso que serve como candidato patrocinador de uma das princesas concorrentes ao trono?','Ele demonstra rivalidade inicial com Subaru antes de desenvolver respeito mútuo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Julius Juukulius',TRUE,0),(gen_random_uuid(),q,'Reinhard',FALSE,1),(gen_random_uuid(),q,'Wilhelm',FALSE,2),(gen_random_uuid(),q,'Roswaal',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','easy','Qual é o nome dado à emoção negativa capaz de invocar espíritos elementais malignos que atacam a vila de Arlam em um dos primeiros grandes conflitos da série?','Sua origem está diretamente ligada aos conflitos internos entre habitantes da vila.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ódio (Espíritos da Bruma)',TRUE,0),(gen_random_uuid(),q,'Medo Coletivo',FALSE,1),(gen_random_uuid(),q,'Fúria Ancestral',FALSE,2),(gen_random_uuid(),q,'Desespero Absoluto',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','medium','Qual é o nome do assassino misterioso que persegue Subaru repetidamente durante seus primeiros ciclos de tempo, causando sua morte de formas brutais?','Sua verdadeira identidade e motivação são reveladas apenas em capítulos posteriores.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Elsa Granhiert',TRUE,0),(gen_random_uuid(),q,'Meili',FALSE,1),(gen_random_uuid(),q,'Petelgeuse',FALSE,2),(gen_random_uuid(),q,'Sirius',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','medium','Qual é o nome do arquibispo pecaminoso fanático religioso responsável pelo ataque em massa à mansão de Roswaal, associado ao pecado da gula?','Sua aparência distorcida e comportamento errático o tornam um dos antagonistas mais perturbadores da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Petelgeuse Romanee-Conti',TRUE,0),(gen_random_uuid(),q,'Elsa',FALSE,1),(gen_random_uuid(),q,'Sirius',FALSE,2),(gen_random_uuid(),q,'Regulus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','medium','Qual é o nome dado à organização religiosa fanática composta por sete arquibispos, cada um associado a um pecado capital específico?','Seus membros são considerados algumas das ameaças mais perigosas de todo o continente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Seita do Culto Sacerdotal',TRUE,0),(gen_random_uuid(),q,'Ordem dos Sete Véus',FALSE,1),(gen_random_uuid(),q,'Confraria das Trevas',FALSE,2),(gen_random_uuid(),q,'Círculo dos Pecados',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','medium','Qual é o nome do dragão sagrado que protege o Reino de Lugnica há séculos, considerado uma entidade quase divina?','Ele estabelece um contrato ancestral com uma linhagem específica de reis.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Volcanica',TRUE,0),(gen_random_uuid(),q,'Puck',FALSE,1),(gen_random_uuid(),q,'Beatrice',FALSE,2),(gen_random_uuid(),q,'Echidna',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','medium','Qual é o nome do espírito felino de Emilia, dotado de grande poder mágico ligado ao gelo, que a acompanha desde a infância?','Ele adota forma de gato fofo, mas revela poder devastador quando necessário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Puck',TRUE,0),(gen_random_uuid(),q,'Beatrice',FALSE,1),(gen_random_uuid(),q,'Volcanica',FALSE,2),(gen_random_uuid(),q,'Echidna',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','medium','Qual é o nome da princesa candidata ao trono, conhecida por sua personalidade dupla, alternando entre timidez extrema e confiança arrogante?','Ela é acompanhada por sua irmã gêmea idêntica durante o torneio.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Priscilla',TRUE,0),(gen_random_uuid(),q,'Anastasia',FALSE,1),(gen_random_uuid(),q,'Crusch',FALSE,2),(gen_random_uuid(),q,'Emilia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','medium','Qual é o nome da duquesa candidata ao trono, líder militar respeitada, acompanhada por seu cavaleiro leal Wilhelm em suas campanhas?','Ela é atingida por uma maldição que apaga suas memórias em determinado ponto da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Crusch Karsten',TRUE,0),(gen_random_uuid(),q,'Priscilla',FALSE,1),(gen_random_uuid(),q,'Anastasia',FALSE,2),(gen_random_uuid(),q,'Emilia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','medium','Qual é o nome da comerciante astuta candidata ao trono, patrocinada por Julius, conhecida por sua mentalidade pragmática de negócios?','Ela mantém contrato com um espírito de fumaça que a auxilia em suas decisões estratégicas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Anastasia Hoshin',TRUE,0),(gen_random_uuid(),q,'Priscilla',FALSE,1),(gen_random_uuid(),q,'Crusch',FALSE,2),(gen_random_uuid(),q,'Emilia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','hard','Qual é o nome dado à bruxa lendária do passado, associada à origem de todos os arquibispos pecaminosos, considerada a entidade mais temida da história?','Sua sombra ainda paira sobre os eventos principais da série, séculos após seu desaparecimento.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Satella',TRUE,0),(gen_random_uuid(),q,'Echidna',FALSE,1),(gen_random_uuid(),q,'Elsa',FALSE,2),(gen_random_uuid(),q,'Sirius',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','hard','Qual é o nome dado à bruxa da vaidade, aliada complexa que aparece em mundos oníricos, mantendo diálogos filosóficos com Subaru?','Ela possui conexão direta com o contrato de Beatrice e a biblioteca dimensional da mansão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Echidna',TRUE,0),(gen_random_uuid(),q,'Satella',FALSE,1),(gen_random_uuid(),q,'Elsa',FALSE,2),(gen_random_uuid(),q,'Meili',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','hard','Qual é o nome da assassina profissional que utiliza duas lâminas curvas, contratada para eliminar Subaru em diversas linhas temporais?','Ela é acompanhada por uma parceira jovem manipuladora de metal durante suas missões.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Elsa Granhiert',TRUE,0),(gen_random_uuid(),q,'Meili',FALSE,1),(gen_random_uuid(),q,'Petelgeuse',FALSE,2),(gen_random_uuid(),q,'Sirius',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','hard','Qual é o nome da criança manipuladora de metal que acompanha Elsa em suas missões de assassinato, demonstrando comportamento infantil apesar da periculosidade?','Sua habilidade envolve o controle de objetos metálicos à distância.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Meili Portroe',TRUE,0),(gen_random_uuid(),q,'Elsa',FALSE,1),(gen_random_uuid(),q,'Petelgeuse',FALSE,2),(gen_random_uuid(),q,'Sirius',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','hard','Qual é o nome do arquibispo pecaminoso associado à avareza, conhecido por sua obsessão em colecionar objetos e pessoas que considera "seus"?','Seu poder envolve roubar propriedades de outros através de contato físico.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Regulus Corneas',TRUE,0),(gen_random_uuid(),q,'Petelgeuse',FALSE,1),(gen_random_uuid(),q,'Sirius',FALSE,2),(gen_random_uuid(),q,'Capella',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','hard','Qual é o nome dado ao demônio que domina a cidade portuária de Priestella, criando uma cúpula mágica de proteção durante confrontos importantes da série?','Sua presença altera drasticamente a dinâmica social da cidade afetada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Capella Emerada Lugnica',TRUE,0),(gen_random_uuid(),q,'Regulus',FALSE,1),(gen_random_uuid(),q,'Sirius',FALSE,2),(gen_random_uuid(),q,'Meili',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','impossible','Qual é o nome dado à antiga sacerdotisa histórica associada à criação do primeiro pacto entre humanos e espíritos elementais do continente?','Sua influência é mencionada em textos antigos referenciados por personagens estudiosos da história.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Flugel',TRUE,0),(gen_random_uuid(),q,'Echidna',FALSE,1),(gen_random_uuid(),q,'Satella',FALSE,2),(gen_random_uuid(),q,'Volcanica',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','impossible','Qual é o nome do general do exército imperial vizinho, mencionado como ameaça externa crescente ao Reino de Lugnica em arcos posteriores da série?','Sua presença expande o escopo geográfico e político da trama original.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vincent Volakia',TRUE,0),(gen_random_uuid(),q,'Reinhard',FALSE,1),(gen_random_uuid(),q,'Wilhelm',FALSE,2),(gen_random_uuid(),q,'Julius',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','impossible','Qual é o nome do arquibispo pecaminoso associado à luxúria, conhecido por sua obsessão sensorial e habilidades de manipulação psicológica?','Seu poder envolve alterar percepções sensoriais de suas vítimas de forma perturbadora.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sirius',TRUE,0),(gen_random_uuid(),q,'Regulus',FALSE,1),(gen_random_uuid(),q,'Capella',FALSE,2),(gen_random_uuid(),q,'Petelgeuse',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- FILL_BLANK — 38 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'fill_blank','easy','O protagonista, jovem transportado repentinamente para um mundo de fantasia, se chama ___.','Ele possui a habilidade de retornar no tempo sempre que morre, revivendo eventos passados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Subaru Natsuki',TRUE,0),(gen_random_uuid(),q,'Reinhard',FALSE,1),(gen_random_uuid(),q,'Roswaal',FALSE,2),(gen_random_uuid(),q,'Wilhelm',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'fill_blank','easy','A habilidade especial do protagonista, que o faz retornar a um ponto específico no tempo sempre que morre, se chama ___.','Este poder é mantido em segredo pelo protagonista durante grande parte da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Retorno pela Morte',TRUE,0),(gen_random_uuid(),q,'Reencarnação Eterna',FALSE,1),(gen_random_uuid(),q,'Loop Temporal',FALSE,2),(gen_random_uuid(),q,'Ciclo da Vida',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'fill_blank','easy','A meia-elfa de cabelos prateados salva por Subaru logo após sua chegada ao novo mundo se chama ___.','Ela participa de um torneio para se tornar a próxima rainha do reino.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Emilia',TRUE,0),(gen_random_uuid(),q,'Rem',FALSE,1),(gen_random_uuid(),q,'Ram',FALSE,2),(gen_random_uuid(),q,'Beatrice',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'fill_blank','easy','A empregada demônio de cabelos azuis que serve na mansão de Roswaal, desenvolvendo sentimentos por Subaru, se chama ___.','Ela possui uma irmã gêmea que também trabalha na mesma mansão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rem',TRUE,0),(gen_random_uuid(),q,'Ram',FALSE,1),(gen_random_uuid(),q,'Emilia',FALSE,2),(gen_random_uuid(),q,'Beatrice',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'fill_blank','easy','A empregada demônio de cabelos rosa, irmã gêmea de Rem, se chama ___.','Ela demonstra personalidade mais fria e crítica em relação a Subaru inicialmente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ram',TRUE,0),(gen_random_uuid(),q,'Rem',FALSE,1),(gen_random_uuid(),q,'Emilia',FALSE,2),(gen_random_uuid(),q,'Beatrice',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'fill_blank','easy','O nobre excêntrico que abriga Emilia e sua equipe em sua mansão se chama ___.','Ele demonstra comportamento peculiar e maquiagem característica marcante.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Roswaal',TRUE,0),(gen_random_uuid(),q,'Wilhelm',FALSE,1),(gen_random_uuid(),q,'Reinhard',FALSE,2),(gen_random_uuid(),q,'Felt',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'fill_blank','easy','O cavaleiro considerado o mais forte do reino, aliado poderoso de Emilia, se chama ___.','Ele é descendente de uma linhagem lendária de espadachins.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Reinhard van Astrea',TRUE,0),(gen_random_uuid(),q,'Wilhelm',FALSE,1),(gen_random_uuid(),q,'Roswaal',FALSE,2),(gen_random_uuid(),q,'Julius',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'fill_blank','easy','O espírito em forma de livro que reside na biblioteca da mansão de Roswaal se chama ___.','Ela demonstra personalidade orgulhosa e teimosa em suas interações com Subaru.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Beatrice',TRUE,0),(gen_random_uuid(),q,'Rem',FALSE,1),(gen_random_uuid(),q,'Ram',FALSE,2),(gen_random_uuid(),q,'Emilia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'fill_blank','easy','A jovem ladra habilidosa que rouba o brasão de cristal de Subaru se chama ___.','Ela vive na capital, envolvida em uma rede de contrabando local.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Felt',TRUE,0),(gen_random_uuid(),q,'Rem',FALSE,1),(gen_random_uuid(),q,'Emilia',FALSE,2),(gen_random_uuid(),q,'Beatrice',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'fill_blank','easy','Os cristais especiais que servem como candidatos oficiais ao trono, reagindo apenas a pessoas dignas de governar, são chamados de ___.','Sua ativação inicia formalmente o torneio pela sucessão real.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Brasões Reais',TRUE,0),(gen_random_uuid(),q,'Selos Sagrados',FALSE,1),(gen_random_uuid(),q,'Gemas do Destino',FALSE,2),(gen_random_uuid(),q,'Cristais da Coroa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'fill_blank','easy','O reino de fantasia onde se passam a maioria dos eventos da série se chama ___.','Sua capital abriga o palácio onde ocorre o torneio pela sucessão real.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Reino de Lugnica',TRUE,0),(gen_random_uuid(),q,'Reino de Vollachia',FALSE,1),(gen_random_uuid(),q,'Reino de Gusteko',FALSE,2),(gen_random_uuid(),q,'Reino de Kararagi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'fill_blank','medium','O velho espadachim aposentado, avô de Reinhard, considerado uma lenda viva entre os cavaleiros do reino, se chama ___.','Ele treina Subaru em técnicas básicas de combate em determinado momento da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Wilhelm van Astrea',TRUE,0),(gen_random_uuid(),q,'Reinhard',FALSE,1),(gen_random_uuid(),q,'Roswaal',FALSE,2),(gen_random_uuid(),q,'Julius',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'fill_blank','medium','O cavaleiro elegante e orgulhoso que serve como candidato patrocinador de uma das princesas concorrentes ao trono se chama ___.','Ele demonstra rivalidade inicial com Subaru antes de desenvolver respeito mútuo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Julius Juukulius',TRUE,0),(gen_random_uuid(),q,'Reinhard',FALSE,1),(gen_random_uuid(),q,'Wilhelm',FALSE,2),(gen_random_uuid(),q,'Roswaal',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'fill_blank','medium','O assassino misterioso que persegue Subaru repetidamente causando sua morte de formas brutais se chama ___.','Sua verdadeira identidade e motivação são reveladas apenas em capítulos posteriores.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Elsa Granhiert',TRUE,0),(gen_random_uuid(),q,'Meili',FALSE,1),(gen_random_uuid(),q,'Petelgeuse',FALSE,2),(gen_random_uuid(),q,'Sirius',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'fill_blank','medium','O arquibispo pecaminoso fanático religioso responsável pelo ataque em massa à mansão de Roswaal se chama ___.','Sua aparência distorcida e comportamento errático o tornam um dos antagonistas mais perturbadores.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Petelgeuse Romanee-Conti',TRUE,0),(gen_random_uuid(),q,'Elsa',FALSE,1),(gen_random_uuid(),q,'Sirius',FALSE,2),(gen_random_uuid(),q,'Regulus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'fill_blank','medium','O dragão sagrado que protege o Reino de Lugnica há séculos se chama ___.','Ele estabelece um contrato ancestral com uma linhagem específica de reis.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Volcanica',TRUE,0),(gen_random_uuid(),q,'Puck',FALSE,1),(gen_random_uuid(),q,'Beatrice',FALSE,2),(gen_random_uuid(),q,'Echidna',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'fill_blank','medium','O espírito felino de Emilia, dotado de grande poder mágico ligado ao gelo, se chama ___.','Ele adota forma de gato fofo, mas revela poder devastador quando necessário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Puck',TRUE,0),(gen_random_uuid(),q,'Beatrice',FALSE,1),(gen_random_uuid(),q,'Volcanica',FALSE,2),(gen_random_uuid(),q,'Echidna',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'fill_blank','medium','A princesa candidata ao trono, conhecida por sua personalidade dupla entre timidez e arrogância, se chama ___.','Ela é acompanhada por sua irmã gêmea idêntica durante o torneio.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Priscilla',TRUE,0),(gen_random_uuid(),q,'Anastasia',FALSE,1),(gen_random_uuid(),q,'Crusch',FALSE,2),(gen_random_uuid(),q,'Emilia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'fill_blank','medium','A duquesa candidata ao trono, líder militar respeitada, acompanhada por Wilhelm, se chama ___.','Ela é atingida por uma maldição que apaga suas memórias em determinado ponto da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Crusch Karsten',TRUE,0),(gen_random_uuid(),q,'Priscilla',FALSE,1),(gen_random_uuid(),q,'Anastasia',FALSE,2),(gen_random_uuid(),q,'Emilia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'fill_blank','hard','A bruxa lendária do passado, associada à origem de todos os arquibispos pecaminosos, se chama ___.','Sua sombra ainda paira sobre os eventos principais da série, séculos após seu desaparecimento.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Satella',TRUE,0),(gen_random_uuid(),q,'Echidna',FALSE,1),(gen_random_uuid(),q,'Elsa',FALSE,2),(gen_random_uuid(),q,'Sirius',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'fill_blank','hard','A bruxa da vaidade, aliada complexa que aparece em mundos oníricos, se chama ___.','Ela possui conexão direta com o contrato de Beatrice e a biblioteca dimensional da mansão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Echidna',TRUE,0),(gen_random_uuid(),q,'Satella',FALSE,1),(gen_random_uuid(),q,'Elsa',FALSE,2),(gen_random_uuid(),q,'Meili',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'fill_blank','hard','A assassina profissional que utiliza duas lâminas curvas, contratada para eliminar Subaru, se chama ___.','Ela é acompanhada por uma parceira jovem manipuladora de metal durante suas missões.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Elsa Granhiert',TRUE,0),(gen_random_uuid(),q,'Meili',FALSE,1),(gen_random_uuid(),q,'Petelgeuse',FALSE,2),(gen_random_uuid(),q,'Sirius',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'fill_blank','hard','A criança manipuladora de metal que acompanha Elsa em suas missões de assassinato se chama ___.','Sua habilidade envolve o controle de objetos metálicos à distância.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Meili Portroe',TRUE,0),(gen_random_uuid(),q,'Elsa',FALSE,1),(gen_random_uuid(),q,'Petelgeuse',FALSE,2),(gen_random_uuid(),q,'Sirius',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'fill_blank','hard','O arquibispo pecaminoso associado à avareza, obcecado em colecionar objetos e pessoas, se chama ___.','Seu poder envolve roubar propriedades de outros através de contato físico.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Regulus Corneas',TRUE,0),(gen_random_uuid(),q,'Petelgeuse',FALSE,1),(gen_random_uuid(),q,'Sirius',FALSE,2),(gen_random_uuid(),q,'Capella',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'fill_blank','impossible','A antiga sacerdotisa histórica associada à criação do primeiro pacto entre humanos e espíritos elementais se chama ___.','Sua influência é mencionada em textos antigos referenciados por personagens estudiosos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Flugel',TRUE,0),(gen_random_uuid(),q,'Echidna',FALSE,1),(gen_random_uuid(),q,'Satella',FALSE,2),(gen_random_uuid(),q,'Volcanica',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- WHO_SAID — 30 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'who_said','easy','Quem disse: "Eu retorno no tempo sempre que morro, revivendo eventos passados até encontrar uma forma de salvar a todos"?','A frase reflete a habilidade central do protagonista da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Subaru',TRUE,0),(gen_random_uuid(),q,'Reinhard',FALSE,1),(gen_random_uuid(),q,'Roswaal',FALSE,2),(gen_random_uuid(),q,'Wilhelm',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'who_said','easy','Quem disse: "Eu participo deste torneio para me tornar rainha, mesmo sabendo que meu passado como meia-elfa gera desconfiança"?','A frase é dita pela candidata ao trono salva por Subaru no início da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Emilia',TRUE,0),(gen_random_uuid(),q,'Rem',FALSE,1),(gen_random_uuid(),q,'Ram',FALSE,2),(gen_random_uuid(),q,'Beatrice',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'who_said','easy','Quem disse: "Eu sirvo na mansão de Roswaal ao lado da minha irmã gêmea, e meus sentimentos por Subaru cresceram ao longo do tempo"?','A frase é dita pela empregada demônio de cabelos azuis.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rem',TRUE,0),(gen_random_uuid(),q,'Ram',FALSE,1),(gen_random_uuid(),q,'Emilia',FALSE,2),(gen_random_uuid(),q,'Beatrice',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'who_said','easy','Quem disse: "Eu sou mais crítica em relação a Subaru do que minha irmã gêmea, mas minha lealdade à mansão de Roswaal é inquestionável"?','A frase é dita pela empregada demônio de cabelos rosa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ram',TRUE,0),(gen_random_uuid(),q,'Rem',FALSE,1),(gen_random_uuid(),q,'Emilia',FALSE,2),(gen_random_uuid(),q,'Beatrice',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'who_said','easy','Quem disse: "Eu abrigo Emilia e sua equipe em minha mansão, apoiando integralmente sua candidatura ao trono do reino"?','A frase é dita pelo nobre excêntrico de comportamento peculiar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Roswaal',TRUE,0),(gen_random_uuid(),q,'Wilhelm',FALSE,1),(gen_random_uuid(),q,'Reinhard',FALSE,2),(gen_random_uuid(),q,'Felt',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'who_said','easy','Quem disse: "Eu sou considerado o cavaleiro mais forte deste reino, descendente de uma linhagem lendária de espadachins"?','A frase é dita pelo aliado poderoso de Emilia durante o torneio.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Reinhard',TRUE,0),(gen_random_uuid(),q,'Wilhelm',FALSE,1),(gen_random_uuid(),q,'Roswaal',FALSE,2),(gen_random_uuid(),q,'Julius',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'who_said','medium','Quem disse: "Eu resido na biblioteca desta mansão há anos, guardando um portal dimensional com toda minha teimosia característica"?','A frase é dita pelo espírito em forma de livro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Beatrice',TRUE,0),(gen_random_uuid(),q,'Rem',FALSE,1),(gen_random_uuid(),q,'Ram',FALSE,2),(gen_random_uuid(),q,'Emilia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'who_said','medium','Quem disse: "Eu roubei aquele brasão de cristal, mas nunca imaginei que isso desencadearia tantos eventos importantes"?','A frase é dita pela jovem ladra habilidosa da capital.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Felt',TRUE,0),(gen_random_uuid(),q,'Rem',FALSE,1),(gen_random_uuid(),q,'Emilia',FALSE,2),(gen_random_uuid(),q,'Beatrice',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'who_said','medium','Quem disse: "Eu treino Subaru em técnicas básicas de combate, mesmo estando aposentado há muitos anos como espadachim"?','A frase é dita pelo avô lendário de Reinhard.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Wilhelm',TRUE,0),(gen_random_uuid(),q,'Reinhard',FALSE,1),(gen_random_uuid(),q,'Roswaal',FALSE,2),(gen_random_uuid(),q,'Julius',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'who_said','medium','Quem disse: "Eu demonstrei rivalidade inicial com Subaru, mas hoje reconheço nele um aliado digno de respeito"?','A frase é dita pelo cavaleiro elegante patrocinador de uma das princesas candidatas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Julius',TRUE,0),(gen_random_uuid(),q,'Reinhard',FALSE,1),(gen_random_uuid(),q,'Wilhelm',FALSE,2),(gen_random_uuid(),q,'Roswaal',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'who_said','medium','Quem disse: "Eu ataquei a mansão de Roswaal em nome da minha fé fanática, associada ao pecado da gula que carrego dentro de mim"?','A frase é dita pelo arquibispo pecaminoso perturbador.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Petelgeuse',TRUE,0),(gen_random_uuid(),q,'Elsa',FALSE,1),(gen_random_uuid(),q,'Sirius',FALSE,2),(gen_random_uuid(),q,'Regulus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'who_said','medium','Quem disse: "Eu adoto forma de gato fofo, mas revelo poder devastador ligado ao gelo quando Emilia precisa de proteção"?','A frase é dita pelo espírito felino que acompanha Emilia desde a infância.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Puck',TRUE,0),(gen_random_uuid(),q,'Beatrice',FALSE,1),(gen_random_uuid(),q,'Volcanica',FALSE,2),(gen_random_uuid(),q,'Echidna',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'who_said','hard','Quem disse: "Minha sombra ainda paira sobre este reino séculos depois do meu desaparecimento, associada à origem de todos os pecados"?','A frase é dita pela bruxa lendária do passado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Satella',TRUE,0),(gen_random_uuid(),q,'Echidna',FALSE,1),(gen_random_uuid(),q,'Elsa',FALSE,2),(gen_random_uuid(),q,'Sirius',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'who_said','hard','Quem disse: "Eu converso com Subaru em mundos oníricos, testando sua filosofia e suas escolhas ao longo de suas repetições temporais"?','A frase é dita pela bruxa da vaidade, aliada complexa e ambígua.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Echidna',TRUE,0),(gen_random_uuid(),q,'Satella',FALSE,1),(gen_random_uuid(),q,'Elsa',FALSE,2),(gen_random_uuid(),q,'Meili',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'who_said','hard','Quem disse: "Fui contratada para eliminar Subaru repetidamente, usando minhas duas lâminas curvas em diversas linhas temporais"?','A frase é dita pela assassina profissional acompanhada por sua parceira jovem.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Elsa',TRUE,0),(gen_random_uuid(),q,'Meili',FALSE,1),(gen_random_uuid(),q,'Petelgeuse',FALSE,2),(gen_random_uuid(),q,'Sirius',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'who_said','hard','Quem disse: "Eu controlo objetos metálicos à distância, mesmo demonstrando comportamento infantil apesar da minha periculosidade real"?','A frase é dita pela criança que acompanha Elsa em missões de assassinato.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Meili',TRUE,0),(gen_random_uuid(),q,'Elsa',FALSE,1),(gen_random_uuid(),q,'Petelgeuse',FALSE,2),(gen_random_uuid(),q,'Sirius',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'who_said','hard','Quem disse: "Eu roubo propriedades de outros através de contato físico, considerando tudo que toco como definitivamente meu"?','A frase é dita pelo arquibispo pecaminoso associado à avareza.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Regulus',TRUE,0),(gen_random_uuid(),q,'Petelgeuse',FALSE,1),(gen_random_uuid(),q,'Sirius',FALSE,2),(gen_random_uuid(),q,'Capella',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'who_said','impossible','Quem disse: "Minha influência histórica sobre o pacto entre humanos e espíritos elementais é mencionada em textos antigos até hoje"?','A frase é dita pela antiga sacerdotisa histórica referenciada por estudiosos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Flugel',TRUE,0),(gen_random_uuid(),q,'Echidna',FALSE,1),(gen_random_uuid(),q,'Satella',FALSE,2),(gen_random_uuid(),q,'Volcanica',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'who_said','impossible','Quem disse: "Eu protejo este reino há séculos através de um contrato ancestral estabelecido com uma linhagem específica de reis"?','A frase é dita pelo dragão sagrado do Reino de Lugnica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Volcanica',TRUE,0),(gen_random_uuid(),q,'Puck',FALSE,1),(gen_random_uuid(),q,'Beatrice',FALSE,2),(gen_random_uuid(),q,'Echidna',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- EPISODE_ARC — 15 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'episode_arc','medium','Em qual arco Subaru é transportado para o novo mundo, conhece Emilia e descobre sua habilidade de retornar pela morte?','O arco estabelece a premissa inicial de toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Capital Real',TRUE,0),(gen_random_uuid(),q,'Arco da Mansão',FALSE,1),(gen_random_uuid(),q,'Arco de Petelgeuse',FALSE,2),(gen_random_uuid(),q,'Arco de Priestella',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'episode_arc','medium','Em qual arco Subaru vive na mansão de Roswaal, desenvolvendo relacionamentos com Rem, Ram e Beatrice?','Este arco explora a dinâmica familiar entre os habitantes da propriedade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Mansão',TRUE,0),(gen_random_uuid(),q,'Arco da Capital Real',FALSE,1),(gen_random_uuid(),q,'Arco de Petelgeuse',FALSE,2),(gen_random_uuid(),q,'Arco de Priestella',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'episode_arc','medium','Em qual arco Petelgeuse ataca a vila de Arlam com um exército de mabeasts, forçando Subaru a repetidos ciclos de morte e retorno?','Este arco é considerado um dos mais sombrios e emocionalmente intensos da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Petelgeuse',TRUE,0),(gen_random_uuid(),q,'Arco da Capital Real',FALSE,1),(gen_random_uuid(),q,'Arco da Mansão',FALSE,2),(gen_random_uuid(),q,'Arco de Priestella',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'episode_arc','medium','Em qual arco Subaru viaja até a cidade portuária dominada por Capella, enfrentando uma cúpula mágica de proteção demoníaca?','Este arco expande significativamente o universo geográfico da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Priestella',TRUE,0),(gen_random_uuid(),q,'Arco da Capital Real',FALSE,1),(gen_random_uuid(),q,'Arco da Mansão',FALSE,2),(gen_random_uuid(),q,'Arco de Petelgeuse',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'episode_arc','medium','Em qual arco as cinco candidatas ao trono são apresentadas oficialmente, incluindo Emilia, Priscilla, Crusch, Anastasia e Felt?','O torneio pela sucessão real é formalmente iniciado neste arco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Capital Real',TRUE,0),(gen_random_uuid(),q,'Arco da Mansão',FALSE,1),(gen_random_uuid(),q,'Arco de Petelgeuse',FALSE,2),(gen_random_uuid(),q,'Arco de Priestella',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'episode_arc','medium','Em qual arco Elsa persegue Subaru repetidamente, causando sua morte de formas brutais em diversas linhas temporais?','Este confronto ocorre paralelamente aos primeiros dias de Subaru no novo mundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Capital Real',TRUE,0),(gen_random_uuid(),q,'Arco da Mansão',FALSE,1),(gen_random_uuid(),q,'Arco de Petelgeuse',FALSE,2),(gen_random_uuid(),q,'Arco de Priestella',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'episode_arc','hard','Em qual arco Crusch é atingida por uma maldição que apaga suas memórias, comprometendo sua candidatura ao trono?','Este evento tem consequências políticas significativas para o restante do torneio.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Capital Real',TRUE,0),(gen_random_uuid(),q,'Arco da Mansão',FALSE,1),(gen_random_uuid(),q,'Arco de Petelgeuse',FALSE,2),(gen_random_uuid(),q,'Arco de Priestella',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'episode_arc','hard','Em qual arco Subaru encontra Echidna em mundos oníricos, mantendo diálogos filosóficos sobre suas escolhas e repetições temporais?','Este arco explora profundamente a psicologia e o desenvolvimento interno do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Petelgeuse',TRUE,0),(gen_random_uuid(),q,'Arco da Capital Real',FALSE,1),(gen_random_uuid(),q,'Arco da Mansão',FALSE,2),(gen_random_uuid(),q,'Arco de Priestella',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'episode_arc','hard','Em qual arco Regulus enfrenta Subaru e seus aliados na cidade portuária, revelando seu poder de roubar propriedades por contato?','Este confronto ocorre dentro da cúpula demoníaca criada por Capella.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Priestella',TRUE,0),(gen_random_uuid(),q,'Arco da Capital Real',FALSE,1),(gen_random_uuid(),q,'Arco da Mansão',FALSE,2),(gen_random_uuid(),q,'Arco de Petelgeuse',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'episode_arc','impossible','Em qual arco é revelado o passado completo de Wilhelm como espadachim lendário, incluindo sua relação com Crusch antes dos eventos principais?','A revelação ocorre através de flashbacks extensos durante o arco da capital.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Capital Real',TRUE,0),(gen_random_uuid(),q,'Arco da Mansão',FALSE,1),(gen_random_uuid(),q,'Arco de Petelgeuse',FALSE,2),(gen_random_uuid(),q,'Arco de Priestella',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- CHRONOLOGICAL — 7 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'chronological','hard','Ordene cronologicamente os arcos a seguir, do mais antigo ao mais recente.','Cobrem desde a chegada de Subaru ao novo mundo até seus eventos na cidade portuária.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Capital Real',TRUE,0),(gen_random_uuid(),q,'Mansão',FALSE,1),(gen_random_uuid(),q,'Petelgeuse',FALSE,2),(gen_random_uuid(),q,'Priestella',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'chronological','hard','Ordene cronologicamente os seguintes eventos da jornada de Subaru, do mais antigo ao mais recente.','Cobrem desde sua chegada ao novo mundo até seus confrontos na cidade portuária.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'É transportado ao novo mundo e conhece Emilia',TRUE,0),(gen_random_uuid(),q,'Passa a viver na mansão de Roswaal',FALSE,1),(gen_random_uuid(),q,'Enfrenta Petelgeuse na vila de Arlam',FALSE,2),(gen_random_uuid(),q,'Viaja até a cidade dominada por Capella',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre Emilia, do mais antigo ao mais recente.','Cobrem desde seu encontro com Subaru até sua participação ativa no torneio pelo trono.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'É salva por Subaru na capital',TRUE,0),(gen_random_uuid(),q,'Ativa seu brasão como candidata ao trono',FALSE,1),(gen_random_uuid(),q,'Enfrenta desafios na vila de Arlam',FALSE,2),(gen_random_uuid(),q,'Participa ativamente do torneio pela sucessão',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre Rem, do mais antigo ao mais recente.','Cobrem desde seu primeiro encontro com Subaru até o desenvolvimento de seus sentimentos por ele.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Recebe Subaru na mansão de Roswaal com desconfiança',TRUE,0),(gen_random_uuid(),q,'Passa a confiar gradualmente no protagonista',FALSE,1),(gen_random_uuid(),q,'Desenvolve sentimentos profundos por Subaru',FALSE,2),(gen_random_uuid(),q,'Enfrenta o ataque de Petelgeuse ao lado dele',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Crusch, do mais antigo ao mais recente.','Cobrem desde sua apresentação como candidata até a maldição que apaga sua memória.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'É apresentada como candidata ao trono na capital',TRUE,0),(gen_random_uuid(),q,'Lidera campanhas militares acompanhada de Wilhelm',FALSE,1),(gen_random_uuid(),q,'É atingida por maldição que apaga suas memórias',FALSE,2),(gen_random_uuid(),q,'Enfrenta as consequências políticas dessa perda',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Petelgeuse, do mais antigo ao mais recente.','Cobrem desde sua primeira aparição até sua derrota definitiva na vila de Arlam.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'É revelado como arquibispo pecaminoso da gula',TRUE,0),(gen_random_uuid(),q,'Ataca a vila de Arlam com mabeasts',FALSE,1),(gen_random_uuid(),q,'Força Subaru a repetidos ciclos de morte',FALSE,2),(gen_random_uuid(),q,'É finalmente derrotado pelos protagonistas',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Elsa, do mais antigo ao mais recente.','Cobrem desde sua contratação para eliminar Subaru até seus confrontos em diferentes linhas temporais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'É contratada para eliminar Subaru',TRUE,0),(gen_random_uuid(),q,'Persegue o protagonista em diversas linhas temporais',FALSE,1),(gen_random_uuid(),q,'Causa sua morte de formas brutais repetidamente',FALSE,2),(gen_random_uuid(),q,'Tem sua verdadeira motivação revelada posteriormente',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- COMPLEMENTO — fechar 150 perguntas (28 text / 13 fill_blank / 11 who_said / 5 episode_arc)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','easy','Qual desses personagens é comerciante astuta candidata ao trono, patrocinada por Julius, conhecida por sua mentalidade pragmática de negócios?','Ela mantém contrato com um espírito de fumaça que a auxilia em decisões estratégicas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Anastasia',TRUE,0),(gen_random_uuid(),q,'Priscilla',FALSE,1),(gen_random_uuid(),q,'Crusch',FALSE,2),(gen_random_uuid(),q,'Emilia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','medium','Qual desses personagens domina a cidade portuária de Priestella, criando cúpula mágica de proteção durante confrontos importantes?','Sua presença altera drasticamente a dinâmica social da cidade afetada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Capella',TRUE,0),(gen_random_uuid(),q,'Regulus',FALSE,1),(gen_random_uuid(),q,'Sirius',FALSE,2),(gen_random_uuid(),q,'Meili',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','hard','Qual desses personagens é general do exército imperial vizinho, mencionado como ameaça externa crescente em arcos posteriores da série?','Sua presença expande o escopo geográfico e político da trama original.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vincent',TRUE,0),(gen_random_uuid(),q,'Reinhard',FALSE,1),(gen_random_uuid(),q,'Wilhelm',FALSE,2),(gen_random_uuid(),q,'Julius',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','impossible','Qual desses personagens é arquibispo pecaminoso associado à luxúria, com habilidades de manipulação psicológica sensorial perturbadoras?','Seu poder envolve alterar percepções sensoriais de suas vítimas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sirius',TRUE,0),(gen_random_uuid(),q,'Regulus',FALSE,1),(gen_random_uuid(),q,'Capella',FALSE,2),(gen_random_uuid(),q,'Petelgeuse',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','medium','Qual desses personagens é candidata ao trono com mentalidade pragmática de negócios, mantendo contrato com espírito de fumaça?','Ela é patrocinada por Julius durante o torneio pela sucessão real.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Anastasia',TRUE,0),(gen_random_uuid(),q,'Priscilla',FALSE,1),(gen_random_uuid(),q,'Crusch',FALSE,2),(gen_random_uuid(),q,'Emilia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','hard','Qual desses personagens cria cúpula demoníaca de proteção sobre uma cidade portuária, alterando drasticamente sua dinâmica social?','Sua investigação leva Subaru e aliados a um confronto direto dentro dessa barreira mágica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Capella',TRUE,0),(gen_random_uuid(),q,'Regulus',FALSE,1),(gen_random_uuid(),q,'Sirius',FALSE,2),(gen_random_uuid(),q,'Meili',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','impossible','Qual desses personagens representa ameaça militar externa crescente ao Reino de Lugnica, comandando forças do império vizinho?','Sua presença expande significativamente o escopo político da trama principal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vincent',TRUE,0),(gen_random_uuid(),q,'Reinhard',FALSE,1),(gen_random_uuid(),q,'Wilhelm',FALSE,2),(gen_random_uuid(),q,'Julius',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','hard','Qual desses personagens manipula percepções sensoriais de suas vítimas de forma perturbadora, associado ao pecado da luxúria entre os arquibispos?','Seu poder é considerado um dos mais perturbadores entre os pecados capitais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sirius',TRUE,0),(gen_random_uuid(),q,'Regulus',FALSE,1),(gen_random_uuid(),q,'Capella',FALSE,2),(gen_random_uuid(),q,'Petelgeuse',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','medium','Qual desses personagens negocia estrategicamente durante o torneio pela sucessão, sempre orientada pelo espírito de fumaça que a acompanha?','Sua candidatura ao trono é patrocinada oficialmente por Julius.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Anastasia',TRUE,0),(gen_random_uuid(),q,'Priscilla',FALSE,1),(gen_random_uuid(),q,'Crusch',FALSE,2),(gen_random_uuid(),q,'Emilia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','easy','Qual desses personagens governa temporariamente uma cidade portuária através de uma barreira mágica protetora, alterando o cotidiano local?','Sua presença gera confronto direto com Subaru e seus aliados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Capella',TRUE,0),(gen_random_uuid(),q,'Regulus',FALSE,1),(gen_random_uuid(),q,'Sirius',FALSE,2),(gen_random_uuid(),q,'Meili',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','hard','Qual desses personagens comanda tropas do império vizinho, sendo mencionado repetidamente como crescente ameaça política ao Reino de Lugnica?','Sua influência se expande em arcos posteriores da narrativa original.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vincent',TRUE,0),(gen_random_uuid(),q,'Reinhard',FALSE,1),(gen_random_uuid(),q,'Wilhelm',FALSE,2),(gen_random_uuid(),q,'Julius',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','impossible','Qual desses personagens altera percepções sensoriais de forma perturbadora, sendo um dos arquibispos pecaminosos mais temidos do continente?','Seu comportamento errático o torna extremamente imprevisível em combate direto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sirius',TRUE,0),(gen_random_uuid(),q,'Regulus',FALSE,1),(gen_random_uuid(),q,'Capella',FALSE,2),(gen_random_uuid(),q,'Petelgeuse',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','medium','Qual desses personagens mantém abordagem pragmática de negócios durante todo o torneio, contrastando com a abordagem emocional de outras candidatas?','Ela é uma das cinco candidatas oficiais ao trono do reino.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Anastasia',TRUE,0),(gen_random_uuid(),q,'Priscilla',FALSE,1),(gen_random_uuid(),q,'Crusch',FALSE,2),(gen_random_uuid(),q,'Emilia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','hard','Qual desses personagens transforma completamente a rotina de uma cidade portuária através de sua barreira mágica de controle demoníaco?','Subaru e seus aliados precisam encontrar uma forma de romper essa proteção.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Capella',TRUE,0),(gen_random_uuid(),q,'Regulus',FALSE,1),(gen_random_uuid(),q,'Sirius',FALSE,2),(gen_random_uuid(),q,'Meili',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','impossible','Qual desses personagens amplia o conflito geopolítico da série ao representar ambições militares do império rival de Lugnica?','Sua introdução expande consideravelmente o escopo da narrativa original.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vincent',TRUE,0),(gen_random_uuid(),q,'Reinhard',FALSE,1),(gen_random_uuid(),q,'Wilhelm',FALSE,2),(gen_random_uuid(),q,'Julius',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','medium','Qual desses personagens é conhecido por manipulação psicológica avançada, sendo um dos pecados capitais mais perturbadores enfrentados pelos protagonistas?','Seu poder sensorial causa efeitos duradouros em suas vítimas diretas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sirius',TRUE,0),(gen_random_uuid(),q,'Regulus',FALSE,1),(gen_random_uuid(),q,'Capella',FALSE,2),(gen_random_uuid(),q,'Petelgeuse',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','easy','Qual desses personagens conta com o auxílio constante de um espírito de fumaça em suas decisões comerciais e estratégicas dentro do torneio?','Sua abordagem prática contrasta com o idealismo de outras candidatas ao trono.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Anastasia',TRUE,0),(gen_random_uuid(),q,'Priscilla',FALSE,1),(gen_random_uuid(),q,'Crusch',FALSE,2),(gen_random_uuid(),q,'Emilia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','hard','Qual desses personagens estabelece domínio temporário sobre uma cidade costeira através de magia protetora de origem demoníaca?','Este confronto é um dos pontos altos do arco ambientado em Priestella.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Capella',TRUE,0),(gen_random_uuid(),q,'Regulus',FALSE,1),(gen_random_uuid(),q,'Sirius',FALSE,2),(gen_random_uuid(),q,'Meili',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','impossible','Qual desses personagens representa a crescente tensão política entre Lugnica e o império vizinho em arcos avançados da trama?','Sua caracterização amplia o mundo político construído ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vincent',TRUE,0),(gen_random_uuid(),q,'Reinhard',FALSE,1),(gen_random_uuid(),q,'Wilhelm',FALSE,2),(gen_random_uuid(),q,'Julius',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','hard','Qual desses personagens permanece entre os pecados capitais mais temidos, com habilidades sensoriais que confundem completamente suas vítimas?','Seu comportamento e motivações permanecem parcialmente enigmáticos ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sirius',TRUE,0),(gen_random_uuid(),q,'Regulus',FALSE,1),(gen_random_uuid(),q,'Capella',FALSE,2),(gen_random_uuid(),q,'Petelgeuse',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','medium','Qual desses personagens equilibra ambição pessoal com estratégia comercial cuidadosa durante toda sua participação no torneio pela sucessão?','Seu contrato com espírito de fumaça a diferencia das demais candidatas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Anastasia',TRUE,0),(gen_random_uuid(),q,'Priscilla',FALSE,1),(gen_random_uuid(),q,'Crusch',FALSE,2),(gen_random_uuid(),q,'Emilia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','hard','Qual desses personagens usa magia demoníaca para controlar acesso a uma cidade inteira, dificultando ações dos protagonistas em Priestella?','Este confronto testa os limites das habilidades combinadas de Subaru e seus aliados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Capella',TRUE,0),(gen_random_uuid(),q,'Regulus',FALSE,1),(gen_random_uuid(),q,'Sirius',FALSE,2),(gen_random_uuid(),q,'Meili',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','impossible','Qual desses personagens simboliza o crescimento do conflito geopolítico entre nações vizinhas em capítulos avançados da série?','Sua presença sugere desenvolvimentos futuros para o universo expandido da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vincent',TRUE,0),(gen_random_uuid(),q,'Reinhard',FALSE,1),(gen_random_uuid(),q,'Wilhelm',FALSE,2),(gen_random_uuid(),q,'Julius',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','medium','Qual desses personagens confunde sensorialmente suas vítimas como parte de seu poder ligado ao pecado da luxúria entre os arquibispos?','Seu método de ataque é considerado psicologicamente devastador.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sirius',TRUE,0),(gen_random_uuid(),q,'Regulus',FALSE,1),(gen_random_uuid(),q,'Capella',FALSE,2),(gen_random_uuid(),q,'Petelgeuse',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','medium','Qual desses personagens exerce influência estratégica constante durante o torneio, sempre acompanhada de um espírito consultor invisível?','Sua abordagem calculista se destaca entre as cinco candidatas oficiais ao trono.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Anastasia',TRUE,0),(gen_random_uuid(),q,'Priscilla',FALSE,1),(gen_random_uuid(),q,'Crusch',FALSE,2),(gen_random_uuid(),q,'Emilia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','hard','Qual desses personagens amplia o universo político da série ao representar as ambições territoriais de uma nação vizinha poderosa?','Sua menção sugere conflitos futuros além das fronteiras do Reino de Lugnica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vincent',TRUE,0),(gen_random_uuid(),q,'Reinhard',FALSE,1),(gen_random_uuid(),q,'Wilhelm',FALSE,2),(gen_random_uuid(),q,'Julius',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','impossible','Qual desses personagens é temido por sua capacidade de desorientar completamente qualquer adversário através de manipulação sensorial extrema?','Seu poder é classificado entre os mais perigosos dos sete pecados capitais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sirius',TRUE,0),(gen_random_uuid(),q,'Regulus',FALSE,1),(gen_random_uuid(),q,'Capella',FALSE,2),(gen_random_uuid(),q,'Petelgeuse',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'text','medium','Qual desses personagens mantém controle mágico total sobre uma cidade portuária inteira, isolando-a do mundo externo temporariamente?','Subaru precisa encontrar formas criativas de romper esse isolamento forçado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Capella',TRUE,0),(gen_random_uuid(),q,'Regulus',FALSE,1),(gen_random_uuid(),q,'Sirius',FALSE,2),(gen_random_uuid(),q,'Meili',FALSE,3);

    -- fill_blank complemento (13)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'fill_blank','easy','A comerciante astuta candidata ao trono, patrocinada por Julius, conhecida por sua mentalidade pragmática, se chama ___.','Ela mantém contrato com um espírito de fumaça que a auxilia em suas decisões estratégicas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Anastasia',TRUE,0),(gen_random_uuid(),q,'Priscilla',FALSE,1),(gen_random_uuid(),q,'Crusch',FALSE,2),(gen_random_uuid(),q,'Emilia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'fill_blank','medium','O demônio que domina a cidade portuária de Priestella, criando uma cúpula mágica de proteção, se chama ___.','Sua presença altera drasticamente a dinâmica social da cidade afetada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Capella',TRUE,0),(gen_random_uuid(),q,'Regulus',FALSE,1),(gen_random_uuid(),q,'Sirius',FALSE,2),(gen_random_uuid(),q,'Meili',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'fill_blank','hard','O general do exército imperial vizinho, mencionado como ameaça externa crescente ao Reino de Lugnica, se chama ___.','Sua presença expande o escopo geográfico e político da trama original.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vincent',TRUE,0),(gen_random_uuid(),q,'Reinhard',FALSE,1),(gen_random_uuid(),q,'Wilhelm',FALSE,2),(gen_random_uuid(),q,'Julius',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'fill_blank','impossible','O arquibispo pecaminoso associado à luxúria, com habilidades de manipulação psicológica sensorial, se chama ___.','Seu poder envolve alterar percepções sensoriais de suas vítimas de forma perturbadora.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sirius',TRUE,0),(gen_random_uuid(),q,'Regulus',FALSE,1),(gen_random_uuid(),q,'Capella',FALSE,2),(gen_random_uuid(),q,'Petelgeuse',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'fill_blank','medium','A candidata ao trono com mentalidade pragmática de negócios, mantendo contrato com espírito de fumaça, se chama ___.','Ela é patrocinada por Julius durante o torneio pela sucessão real.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Anastasia',TRUE,0),(gen_random_uuid(),q,'Priscilla',FALSE,1),(gen_random_uuid(),q,'Crusch',FALSE,2),(gen_random_uuid(),q,'Emilia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'fill_blank','hard','O demônio que cria cúpula de proteção sobre uma cidade portuária, alterando drasticamente sua dinâmica social, se chama ___.','Sua investigação leva Subaru e aliados a um confronto direto dentro dessa barreira mágica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Capella',TRUE,0),(gen_random_uuid(),q,'Regulus',FALSE,1),(gen_random_uuid(),q,'Sirius',FALSE,2),(gen_random_uuid(),q,'Meili',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'fill_blank','impossible','O comandante militar que representa ameaça externa crescente ao Reino de Lugnica, ligado ao império vizinho, se chama ___.','Sua presença expande significativamente o escopo político da trama principal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vincent',TRUE,0),(gen_random_uuid(),q,'Reinhard',FALSE,1),(gen_random_uuid(),q,'Wilhelm',FALSE,2),(gen_random_uuid(),q,'Julius',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'fill_blank','hard','O arquibispo que manipula percepções sensoriais de suas vítimas de forma perturbadora, associado ao pecado da luxúria, se chama ___.','Seu poder é considerado um dos mais perturbadores entre os pecados capitais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sirius',TRUE,0),(gen_random_uuid(),q,'Regulus',FALSE,1),(gen_random_uuid(),q,'Capella',FALSE,2),(gen_random_uuid(),q,'Petelgeuse',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'fill_blank','medium','A candidata que negocia estrategicamente durante o torneio, sempre orientada pelo espírito de fumaça que a acompanha, se chama ___.','Sua candidatura ao trono é patrocinada oficialmente por Julius.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Anastasia',TRUE,0),(gen_random_uuid(),q,'Priscilla',FALSE,1),(gen_random_uuid(),q,'Crusch',FALSE,2),(gen_random_uuid(),q,'Emilia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'fill_blank','easy','O demônio que governa temporariamente uma cidade portuária através de barreira mágica protetora se chama ___.','Sua presença gera confronto direto com Subaru e seus aliados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Capella',TRUE,0),(gen_random_uuid(),q,'Regulus',FALSE,1),(gen_random_uuid(),q,'Sirius',FALSE,2),(gen_random_uuid(),q,'Meili',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'fill_blank','hard','O comandante que representa crescente ameaça política ao Reino de Lugnica em arcos avançados da trama se chama ___.','Sua caracterização amplia o mundo político construído ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vincent',TRUE,0),(gen_random_uuid(),q,'Reinhard',FALSE,1),(gen_random_uuid(),q,'Wilhelm',FALSE,2),(gen_random_uuid(),q,'Julius',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'fill_blank','impossible','O arquibispo que confunde sensorialmente suas vítimas como parte de seu poder ligado ao pecado da luxúria se chama ___.','Seu método de ataque é considerado psicologicamente devastador.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sirius',TRUE,0),(gen_random_uuid(),q,'Regulus',FALSE,1),(gen_random_uuid(),q,'Capella',FALSE,2),(gen_random_uuid(),q,'Petelgeuse',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'fill_blank','hard','O demônio temido por desorientar completamente qualquer adversário através de manipulação sensorial extrema se chama ___.','Seu poder é classificado entre os mais perigosos dos sete pecados capitais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sirius',TRUE,0),(gen_random_uuid(),q,'Regulus',FALSE,1),(gen_random_uuid(),q,'Capella',FALSE,2),(gen_random_uuid(),q,'Petelgeuse',FALSE,3);

    -- who_said complemento (11)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'who_said','easy','Quem disse: "Eu conto com o auxílio de um espírito de fumaça em minhas decisões, mantendo sempre uma abordagem pragmática de negócios"?','A frase é dita pela comerciante astuta candidata ao trono.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Anastasia',TRUE,0),(gen_random_uuid(),q,'Priscilla',FALSE,1),(gen_random_uuid(),q,'Crusch',FALSE,2),(gen_random_uuid(),q,'Emilia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'who_said','medium','Quem disse: "Eu domino esta cidade portuária através de minha cúpula mágica, e nenhum protagonista vai atravessá-la facilmente"?','A frase é dita pelo demônio que controla Priestella durante confronto importante.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Capella',TRUE,0),(gen_random_uuid(),q,'Regulus',FALSE,1),(gen_random_uuid(),q,'Sirius',FALSE,2),(gen_random_uuid(),q,'Meili',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'who_said','hard','Quem disse: "Eu comando as tropas do império vizinho, e minha presença representa uma ameaça crescente ao Reino de Lugnica"?','A frase é dita pelo general mencionado em arcos posteriores da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vincent',TRUE,0),(gen_random_uuid(),q,'Reinhard',FALSE,1),(gen_random_uuid(),q,'Wilhelm',FALSE,2),(gen_random_uuid(),q,'Julius',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'who_said','impossible','Quem disse: "Eu confundo sensorialmente todos que se aproximam, pois minha natureza está intrinsecamente ligada ao pecado da luxúria"?','A frase é dita pelo arquibispo pecaminoso associado à manipulação sensorial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sirius',TRUE,0),(gen_random_uuid(),q,'Regulus',FALSE,1),(gen_random_uuid(),q,'Capella',FALSE,2),(gen_random_uuid(),q,'Petelgeuse',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'who_said','easy','Quem disse: "Minha abordagem prática contrasta com o idealismo de outras candidatas, mas isso não diminui minhas chances no torneio"?','A frase é dita pela comerciante candidata ao trono.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Anastasia',TRUE,0),(gen_random_uuid(),q,'Priscilla',FALSE,1),(gen_random_uuid(),q,'Crusch',FALSE,2),(gen_random_uuid(),q,'Emilia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'who_said','medium','Quem disse: "Eu transformo completamente a rotina desta cidade através da minha barreira mágica de controle demoníaco"?','A frase é dita pelo demônio responsável pela cúpula sobre Priestella.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Capella',TRUE,0),(gen_random_uuid(),q,'Regulus',FALSE,1),(gen_random_uuid(),q,'Sirius',FALSE,2),(gen_random_uuid(),q,'Meili',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'who_said','hard','Quem disse: "Minha introdução amplia consideravelmente o escopo da narrativa original, representando as ambições do império rival"?','A frase é dita pelo general que representa a ameaça externa crescente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vincent',TRUE,0),(gen_random_uuid(),q,'Reinhard',FALSE,1),(gen_random_uuid(),q,'Wilhelm',FALSE,2),(gen_random_uuid(),q,'Julius',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'who_said','impossible','Quem disse: "Meu poder sensorial causa efeitos duradouros em minhas vítimas diretas, tornando-me um dos pecados mais temidos"?','A frase é dita pelo arquibispo associado à manipulação psicológica avançada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sirius',TRUE,0),(gen_random_uuid(),q,'Regulus',FALSE,1),(gen_random_uuid(),q,'Capella',FALSE,2),(gen_random_uuid(),q,'Petelgeuse',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'who_said','medium','Quem disse: "Eu equilibro ambição pessoal com estratégia comercial cuidadosa durante toda minha participação neste torneio"?','A frase é dita pela candidata pragmática ao trono.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Anastasia',TRUE,0),(gen_random_uuid(),q,'Priscilla',FALSE,1),(gen_random_uuid(),q,'Crusch',FALSE,2),(gen_random_uuid(),q,'Emilia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'who_said','hard','Quem disse: "Eu uso magia demoníaca para controlar o acesso a esta cidade inteira, dificultando qualquer ação contra mim"?','A frase é dita pelo demônio que domina Priestella através de sua cúpula protetora.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Capella',TRUE,0),(gen_random_uuid(),q,'Regulus',FALSE,1),(gen_random_uuid(),q,'Sirius',FALSE,2),(gen_random_uuid(),q,'Meili',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'who_said','impossible','Quem disse: "Minha presença simboliza o crescimento do conflito geopolítico entre nações vizinhas em capítulos avançados desta história"?','A frase é dita pelo general que representa desenvolvimentos futuros do universo expandido.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vincent',TRUE,0),(gen_random_uuid(),q,'Reinhard',FALSE,1),(gen_random_uuid(),q,'Wilhelm',FALSE,2),(gen_random_uuid(),q,'Julius',FALSE,3);

    -- episode_arc complemento (5)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'episode_arc','medium','Em qual arco Anastasia é apresentada oficialmente como candidata ao trono, acompanhada de seu espírito contratado de fumaça?','O torneio pela sucessão real reúne todas as cinco candidatas neste momento da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Capital Real',TRUE,0),(gen_random_uuid(),q,'Arco da Mansão',FALSE,1),(gen_random_uuid(),q,'Arco de Petelgeuse',FALSE,2),(gen_random_uuid(),q,'Arco de Priestella',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'episode_arc','hard','Em qual arco Capella estabelece domínio sobre a cidade portuária através de sua cúpula mágica de proteção demoníaca?','Este confronto testa os limites das habilidades combinadas de Subaru e seus aliados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Priestella',TRUE,0),(gen_random_uuid(),q,'Arco da Capital Real',FALSE,1),(gen_random_uuid(),q,'Arco da Mansão',FALSE,2),(gen_random_uuid(),q,'Arco de Petelgeuse',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'episode_arc','hard','Em qual arco Sirius manipula sensorialmente vítimas dentro da cidade dominada por Capella, revelando seu poder ligado à luxúria?','Este confronto ocorre dentro da mesma barreira demoníaca controlada por Capella.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Priestella',TRUE,0),(gen_random_uuid(),q,'Arco da Capital Real',FALSE,1),(gen_random_uuid(),q,'Arco da Mansão',FALSE,2),(gen_random_uuid(),q,'Arco de Petelgeuse',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'episode_arc','impossible','Em qual arco é mencionado pela primeira vez o general Vincent, representando a ameaça crescente do império vizinho?','Esta menção expande o escopo político da trama para além do Reino de Lugnica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Priestella',TRUE,0),(gen_random_uuid(),q,'Arco da Capital Real',FALSE,1),(gen_random_uuid(),q,'Arco da Mansão',FALSE,2),(gen_random_uuid(),q,'Arco de Petelgeuse',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_rz,'episode_arc','impossible','Em qual arco as cinco candidatas ao trono, incluindo Anastasia, demonstram publicamente suas estratégias distintas pela primeira vez?','Este momento define as diferentes abordagens políticas de cada candidata para o restante da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Capital Real',TRUE,0),(gen_random_uuid(),q,'Arco da Mansão',FALSE,1),(gen_random_uuid(),q,'Arco de Petelgeuse',FALSE,2),(gen_random_uuid(),q,'Arco de Priestella',FALSE,3);

END $$;
