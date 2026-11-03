-- ============================================================
--  V41 — Seed de perguntas: Chainsaw Man (150 perguntas)
--  Fonte: MyAnimeList + cânone do anime
--  Distribuição: text 40% / fill_blank 25% / who_said 20% /
--                episode_arc 10% / chronological 5%
--  Sem repetição com V5. Regras R1-R7 aplicadas.
-- ============================================================

DO $$
DECLARE
    v_system UUID := '00000000-0000-0000-0000-000000000001';
    v_cs     UUID;
    q        UUID;
BEGIN
    SELECT id INTO v_cs FROM animes WHERE slug = 'chainsaw-man' LIMIT 1;

    -- ══════════════════════════════════════════════════════════
    -- TEXT — 60 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','easy','Qual é o nome do protagonista, jovem endividado que se funde com seu demônio de estimação, ganhando poderes de motosserra?','Ele sonha com desejos simples como comer pão com geleia ou namorar uma garota.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Denji',TRUE,0),(gen_random_uuid(),q,'Aki',FALSE,1),(gen_random_uuid(),q,'Power',FALSE,2),(gen_random_uuid(),q,'Kishibe',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','easy','Qual é o nome do demônio motosserra que se torna companheiro fiel de Denji antes da fusão que cria o protagonista transformado?','Ele foi encontrado ferido pelo jovem, que cuida dele em troca de caça a demônios.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Pochita',TRUE,0),(gen_random_uuid(),q,'Power',FALSE,1),(gen_random_uuid(),q,'Beam',FALSE,2),(gen_random_uuid(),q,'Meowy',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','easy','Qual é o nome da demônio-sangue caótica e egoísta que se junta ao time de caçadores de demônios, cuidando de um gato de estimação?','Ela demonstra comportamento imprevisível, alternando entre crueldade e momentos de lealdade genuína.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Power',TRUE,0),(gen_random_uuid(),q,'Makima',FALSE,1),(gen_random_uuid(),q,'Kobeni',FALSE,2),(gen_random_uuid(),q,'Himeno',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','easy','Qual é o nome do caçador de demônios sério e disciplinado, parceiro de equipe de Denji, movido por vingança contra o demônio arma?','Ele perdeu familiares em ataques demoníacos antes dos eventos principais da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aki Hayakawa',TRUE,0),(gen_random_uuid(),q,'Denji',FALSE,1),(gen_random_uuid(),q,'Kishibe',FALSE,2),(gen_random_uuid(),q,'Quanxi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','easy','Qual é o nome da chefe carismática e enigmática que recruta Denji para a organização de caça a demônios do governo?','Ela demonstra controle absoluto sobre diversos demônios poderosos ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Makima',TRUE,0),(gen_random_uuid(),q,'Power',FALSE,1),(gen_random_uuid(),q,'Himeno',FALSE,2),(gen_random_uuid(),q,'Kobeni',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','easy','Qual é o nome da organização governamental responsável pela caça oficial a demônios, empregando tanto humanos quanto demônios controlados?','Denji ingressa nesta organização após perder seu pai adotivo, um mafioso local.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Segurança Pública',TRUE,0),(gen_random_uuid(),q,'Igreja Demoníaca',FALSE,1),(gen_random_uuid(),q,'Yakuza dos Espectros',FALSE,2),(gen_random_uuid(),q,'Conselho das Trevas',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','easy','Qual é o nome dado ao processo de fusão entre humano e demônio, que concede ao humano habilidades sobrenaturais em troca de partes de seu corpo?','Denji e Power vivenciam esse processo de formas distintas ao longo da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fusão Demoníaca',TRUE,0),(gen_random_uuid(),q,'Contrato de Sangue',FALSE,1),(gen_random_uuid(),q,'Pacto Sombrio',FALSE,2),(gen_random_uuid(),q,'Ritual de Posse',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','easy','Qual é o nome do gato de estimação cuidado por Power, cuja segurança se torna motivação recorrente para as ações da demônio-sangue?','Sua importância emocional para Power é revelada em diversos momentos da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Meowy',TRUE,0),(gen_random_uuid(),q,'Pochita',FALSE,1),(gen_random_uuid(),q,'Beam',FALSE,2),(gen_random_uuid(),q,'Nyako',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','easy','Qual é o nome da caçadora ansiosa e nervosa que integra a equipe de Denji, demonstrando surpreendente competência sob pressão extrema?','Ela frequentemente expressa desejo de largar o trabalho perigoso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kobeni',TRUE,0),(gen_random_uuid(),q,'Himeno',FALSE,1),(gen_random_uuid(),q,'Power',FALSE,2),(gen_random_uuid(),q,'Makima',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','easy','Qual é o nome da caçadora experiente de olho de vidro, mentora de Aki que demonstra afeto genuíno pela equipe apesar de seu comportamento descontraído?','Ela possui um contrato peculiar com um demônio ligado à sua visão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Himeno',TRUE,0),(gen_random_uuid(),q,'Kobeni',FALSE,1),(gen_random_uuid(),q,'Power',FALSE,2),(gen_random_uuid(),q,'Quanxi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','easy','Qual é o nome do caçador de demônios veterano, extremamente forte, considerado um dos melhores instrutores da Segurança Pública?','Ele treina recrutas com métodos brutais, mas eficazes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kishibe',TRUE,0),(gen_random_uuid(),q,'Aki',FALSE,1),(gen_random_uuid(),q,'Denji',FALSE,2),(gen_random_uuid(),q,'Quanxi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','easy','Qual é o nome da colega de classe humana que se aproxima de Denji durante seu período estudantil, representando sua busca por vida normal?','Ela desconhece inicialmente a verdadeira natureza do protagonista como caçador de demônios.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Asa Mitaka',TRUE,0),(gen_random_uuid(),q,'Reze',FALSE,1),(gen_random_uuid(),q,'Kobeni',FALSE,2),(gen_random_uuid(),q,'Quanxi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','easy','Qual é o nome da jovem misteriosa que se aproxima romanticamente de Denji, revelada posteriormente como agente de uma organização inimiga?','Seu relacionamento com o protagonista é marcado por tensão dramática crescente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Reze',TRUE,0),(gen_random_uuid(),q,'Asa',FALSE,1),(gen_random_uuid(),q,'Kobeni',FALSE,2),(gen_random_uuid(),q,'Quanxi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','easy','Qual é o nome dado à arma característica de Denji, manifestada em sua cabeça e braços ao ativar sua transformação?','Ela é literalmente inspirada na ferramenta usada por trabalhadores em corte de madeira.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Motosserra',TRUE,0),(gen_random_uuid(),q,'Foice',FALSE,1),(gen_random_uuid(),q,'Lâmina Sangrenta',FALSE,2),(gen_random_uuid(),q,'Serra Circular',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','easy','Qual é o nome do demônio primordial associado ao medo mais profundo da humanidade, considerado o mais poderoso entre todos os demônios?','Sua existência é diretamente ligada ao objetivo final de Makima na série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Demônio do Controle',TRUE,0),(gen_random_uuid(),q,'Demônio da Motosserra',FALSE,1),(gen_random_uuid(),q,'Demônio da Arma',FALSE,2),(gen_random_uuid(),q,'Demônio do Sangue',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','medium','Qual é o nome do pai adotivo mafioso de Denji, cuja dívida enorme com a Yakuza motiva o protagonista a se tornar caçador de demônios profissional?','Sua morte no início da série marca o ponto de virada para a jornada de Denji.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Pai de Denji (mafioso)',TRUE,0),(gen_random_uuid(),q,'Kishibe',FALSE,1),(gen_random_uuid(),q,'Aki',FALSE,2),(gen_random_uuid(),q,'Yoshida',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','medium','Qual é o nome do demônio parasita hospedado dentro de Aki, concedendo poderes de fogo em troca de partes de sua vida útil?','Este contrato demoníaco tem consequências drásticas para a longevidade de Aki.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Demônio Fogo (Kon)',TRUE,0),(gen_random_uuid(),q,'Demônio Sangue',FALSE,1),(gen_random_uuid(),q,'Demônio Motosserra',FALSE,2),(gen_random_uuid(),q,'Demônio Controle',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','medium','Qual é o nome da agente da organização inimiga responsável por recrutar Reze para a missão de aproximação romântica com Denji?','Ela opera nos bastidores de uma organização internacional rival da Segurança Pública japonesa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Agente Soviética',TRUE,0),(gen_random_uuid(),q,'Quanxi',FALSE,1),(gen_random_uuid(),q,'Makima',FALSE,2),(gen_random_uuid(),q,'Kobeni',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','medium','Qual é o nome da mercenária poderosa que lidera um grupo de caçadoras de demônios independentes na China?','Ela demonstra habilidades de combate extraordinárias, rivalizando com os melhores caçadores japoneses.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Quanxi',TRUE,0),(gen_random_uuid(),q,'Reze',FALSE,1),(gen_random_uuid(),q,'Himeno',FALSE,2),(gen_random_uuid(),q,'Asa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','medium','Qual é o nome do irmão mais novo de Aki, cuja proteção e bem-estar é uma das principais motivações emocionais do caçador durante a série?','Ele representa a família que resta a Aki após a perda de seus pais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Taiyo Hayakawa',TRUE,0),(gen_random_uuid(),q,'Denji',FALSE,1),(gen_random_uuid(),q,'Beam',FALSE,2),(gen_random_uuid(),q,'Yoshida',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','medium','Qual é o nome do demônio-tubarão que se junta ao time de Segurança Pública, exibindo comportamento competitivo em relação a Power?','Ele considera Power sua rival direta dentro da hierarquia demoníaca do time.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Beam',TRUE,0),(gen_random_uuid(),q,'Power',FALSE,1),(gen_random_uuid(),q,'Angel',FALSE,2),(gen_random_uuid(),q,'Santa Claus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','medium','Qual é o nome do demônio anjo que integra a equipe posteriormente na série, capaz de drenar anos de vida de outras pessoas através do toque?','Sua natureza pacífica contrasta com o poder mortal de sua habilidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Angel Devil',TRUE,0),(gen_random_uuid(),q,'Beam',FALSE,1),(gen_random_uuid(),q,'Santa Claus',FALSE,2),(gen_random_uuid(),q,'Yoru',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','medium','Qual é o nome da diretora executiva da Segurança Pública, responsável por decisões estratégicas de alto nível na organização?','Ela mantém autoridade considerável sobre operações envolvendo demônios de alto risco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kikunojin Kishibe (diretor)',TRUE,0),(gen_random_uuid(),q,'Makima',FALSE,1),(gen_random_uuid(),q,'Himeno',FALSE,2),(gen_random_uuid(),q,'Quanxi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','hard','Qual é o nome do demônio primordial associado à obscuridade e ao vazio, presente entre os quatro cavaleiros demoníacos mais poderosos?','Sua natureza está intrinsecamente ligada a um dos conceitos mais primordiais da existência humana.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Demônio das Trevas (Darkness)',TRUE,0),(gen_random_uuid(),q,'Demônio da Fome',FALSE,1),(gen_random_uuid(),q,'Demônio da Guerra',FALSE,2),(gen_random_uuid(),q,'Demônio da Morte',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','hard','Qual é o nome do demônio primordial associado à fome extrema, um dos quatro cavaleiros demoníacos que ameaçam o equilíbrio mundial?','Sua fome insaciável representa um dos medos mais primitivos da humanidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Demônio da Fome',TRUE,0),(gen_random_uuid(),q,'Demônio das Trevas',FALSE,1),(gen_random_uuid(),q,'Demônio da Guerra',FALSE,2),(gen_random_uuid(),q,'Demônio da Morte',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','hard','Qual é o nome do demônio primordial ligado a conflitos armados, um dos quatro cavaleiros demoníacos supremos da série?','Sua influência se manifesta durante grandes conflitos militares ao longo da história humana.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Demônio da Guerra',TRUE,0),(gen_random_uuid(),q,'Demônio das Trevas',FALSE,1),(gen_random_uuid(),q,'Demônio da Fome',FALSE,2),(gen_random_uuid(),q,'Demônio do Controle',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','hard','Qual é o nome dado à espada demoníaca cravada em Denji durante um confronto crucial, revelando conexão direta com uma organização religiosa antiga?','Este evento representa um dos pontos de virada mais dramáticos da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Espada do Demônio da Guerra',TRUE,0),(gen_random_uuid(),q,'Lâmina de Reze',FALSE,1),(gen_random_uuid(),q,'Espada de Makima',FALSE,2),(gen_random_uuid(),q,'Adaga de Sangue',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','hard','Qual é o nome do demônio da bomba que se manifesta através do corpo de Reze durante confronto decisivo com Denji?','Sua verdadeira natureza é revelada apenas durante o clímax do arco envolvendo a jovem misteriosa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Demônio da Bomba (Reze)',TRUE,0),(gen_random_uuid(),q,'Demônio da Guerra',FALSE,1),(gen_random_uuid(),q,'Demônio das Trevas',FALSE,2),(gen_random_uuid(),q,'Demônio Sangue',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','hard','Qual é o nome do contrato místico realizado por Denji, que concede resistência sobre-humana em troca da concessão futura de sua morte a Makima?','Este contrato é firmado durante um dos momentos mais sombrios da narrativa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Contrato da Morte Futura',TRUE,0),(gen_random_uuid(),q,'Pacto de Sangue',FALSE,1),(gen_random_uuid(),q,'Ritual da Motosserra',FALSE,2),(gen_random_uuid(),q,'Contrato de Controle',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','hard','Qual é o nome dado ao evento de destruição em massa que devasta a cidade quando o demônio primordial associado ao controle assume forma completa?','Este evento marca o clímax do confronto final da primeira temporada da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ascensão de Makima',TRUE,0),(gen_random_uuid(),q,'Eclipse Demoníaco',FALSE,1),(gen_random_uuid(),q,'Ritual do Controle',FALSE,2),(gen_random_uuid(),q,'Convergência de Tóquio',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','impossible','Qual é o nome do demônio pacífico associado ao Natal, integrante posterior da equipe de Segurança Pública apesar de sua origem incomum?','Ele contrasta com a natureza usualmente hostil dos demônios comuns.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Santa Claus (demônio)',TRUE,0),(gen_random_uuid(),q,'Angel Devil',FALSE,1),(gen_random_uuid(),q,'Beam',FALSE,2),(gen_random_uuid(),q,'Yoru',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','impossible','Qual é o nome da demônio da arma que se funde com Asa Mitaka, criando dinâmica de convivência forçada entre humana e demônio primordial?','Sua fusão ocorre durante eventos da segunda temporada mangá da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoru',TRUE,0),(gen_random_uuid(),q,'Reze',FALSE,1),(gen_random_uuid(),q,'Quanxi',FALSE,2),(gen_random_uuid(),q,'Angel Devil',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','impossible','Qual é o nome do médico obcecado por dissecar Denji para estudar sua natureza demoníaca única durante sua estadia na organização governamental?','Suas pesquisas visam entender o segredo por trás da fusão completa entre humano e demônio motosserra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshida',TRUE,0),(gen_random_uuid(),q,'Kishibe',FALSE,1),(gen_random_uuid(),q,'Kikunojin',FALSE,2),(gen_random_uuid(),q,'Aki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','impossible','Qual é o nome do demônio-fantasma que aparece brevemente enfrentando Power durante um dos primeiros confrontos da série?','Sua aparência etérea contrasta com a natureza física da maioria dos demônios enfrentados pela equipe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Demônio Fantasma',TRUE,0),(gen_random_uuid(),q,'Demônio Sangue',FALSE,1),(gen_random_uuid(),q,'Demônio Fogo',FALSE,2),(gen_random_uuid(),q,'Demônio Bomba',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- FILL_BLANK — 38 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'fill_blank','easy','O protagonista, jovem endividado que se funde com seu demônio de estimação ganhando poderes de motosserra, se chama ___.','Ele sonha com desejos simples como comer pão com geleia ou namorar uma garota.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Denji',TRUE,0),(gen_random_uuid(),q,'Aki',FALSE,1),(gen_random_uuid(),q,'Power',FALSE,2),(gen_random_uuid(),q,'Kishibe',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'fill_blank','easy','O demônio motosserra que se torna companheiro fiel de Denji antes da fusão que cria o protagonista transformado se chama ___.','Ele foi encontrado ferido pelo jovem, que cuida dele em troca de caça a demônios.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Pochita',TRUE,0),(gen_random_uuid(),q,'Power',FALSE,1),(gen_random_uuid(),q,'Beam',FALSE,2),(gen_random_uuid(),q,'Meowy',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'fill_blank','easy','A demônio-sangue caótica e egoísta que se junta ao time de caçadores de demônios, cuidando de um gato de estimação, se chama ___.','Ela demonstra comportamento imprevisível, alternando entre crueldade e momentos de lealdade genuína.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Power',TRUE,0),(gen_random_uuid(),q,'Makima',FALSE,1),(gen_random_uuid(),q,'Kobeni',FALSE,2),(gen_random_uuid(),q,'Himeno',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'fill_blank','easy','O caçador de demônios sério e disciplinado, parceiro de equipe de Denji, movido por vingança contra o demônio arma, se chama ___.','Ele perdeu familiares em ataques demoníacos antes dos eventos principais da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aki Hayakawa',TRUE,0),(gen_random_uuid(),q,'Denji',FALSE,1),(gen_random_uuid(),q,'Kishibe',FALSE,2),(gen_random_uuid(),q,'Quanxi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'fill_blank','easy','A chefe carismática e enigmática que recruta Denji para a organização de caça a demônios do governo se chama ___.','Ela demonstra controle absoluto sobre diversos demônios poderosos ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Makima',TRUE,0),(gen_random_uuid(),q,'Power',FALSE,1),(gen_random_uuid(),q,'Himeno',FALSE,2),(gen_random_uuid(),q,'Kobeni',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'fill_blank','easy','A organização governamental responsável pela caça oficial a demônios, empregando tanto humanos quanto demônios controlados, se chama ___.','Denji ingressa nesta organização após perder seu pai adotivo, um mafioso local.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Segurança Pública',TRUE,0),(gen_random_uuid(),q,'Igreja Demoníaca',FALSE,1),(gen_random_uuid(),q,'Yakuza dos Espectros',FALSE,2),(gen_random_uuid(),q,'Conselho das Trevas',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'fill_blank','easy','O gato de estimação cuidado por Power, cuja segurança se torna motivação recorrente para as ações da demônio-sangue, se chama ___.','Sua importância emocional para Power é revelada em diversos momentos da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Meowy',TRUE,0),(gen_random_uuid(),q,'Pochita',FALSE,1),(gen_random_uuid(),q,'Beam',FALSE,2),(gen_random_uuid(),q,'Nyako',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'fill_blank','easy','A caçadora ansiosa e nervosa que integra a equipe de Denji, demonstrando surpreendente competência sob pressão extrema, se chama ___.','Ela frequentemente expressa desejo de largar o trabalho perigoso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kobeni',TRUE,0),(gen_random_uuid(),q,'Himeno',FALSE,1),(gen_random_uuid(),q,'Power',FALSE,2),(gen_random_uuid(),q,'Makima',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'fill_blank','easy','A caçadora experiente de olho de vidro, mentora de Aki, se chama ___.','Ela possui um contrato peculiar com um demônio ligado à sua visão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Himeno',TRUE,0),(gen_random_uuid(),q,'Kobeni',FALSE,1),(gen_random_uuid(),q,'Power',FALSE,2),(gen_random_uuid(),q,'Quanxi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'fill_blank','easy','O caçador de demônios veterano, extremamente forte, considerado um dos melhores instrutores da Segurança Pública, se chama ___.','Ele treina recrutas com métodos brutais, mas eficazes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kishibe',TRUE,0),(gen_random_uuid(),q,'Aki',FALSE,1),(gen_random_uuid(),q,'Denji',FALSE,2),(gen_random_uuid(),q,'Quanxi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'fill_blank','easy','A colega de classe humana que se aproxima de Denji durante seu período estudantil se chama ___.','Ela desconhece inicialmente a verdadeira natureza do protagonista como caçador de demônios.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Asa Mitaka',TRUE,0),(gen_random_uuid(),q,'Reze',FALSE,1),(gen_random_uuid(),q,'Kobeni',FALSE,2),(gen_random_uuid(),q,'Quanxi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'fill_blank','medium','A jovem misteriosa que se aproxima romanticamente de Denji, revelada posteriormente como agente de organização inimiga, se chama ___.','Seu relacionamento com o protagonista é marcado por tensão dramática crescente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Reze',TRUE,0),(gen_random_uuid(),q,'Asa',FALSE,1),(gen_random_uuid(),q,'Kobeni',FALSE,2),(gen_random_uuid(),q,'Quanxi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'fill_blank','medium','O demônio primordial associado ao medo mais profundo da humanidade, considerado o mais poderoso entre todos, é chamado de ___.','Sua existência é diretamente ligada ao objetivo final de Makima na série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Demônio do Controle',TRUE,0),(gen_random_uuid(),q,'Demônio da Motosserra',FALSE,1),(gen_random_uuid(),q,'Demônio da Arma',FALSE,2),(gen_random_uuid(),q,'Demônio do Sangue',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'fill_blank','medium','O pai adotivo mafioso de Denji, cuja dívida enorme com a Yakuza motiva o protagonista a se tornar caçador de demônios, é referido apenas como ___.','Sua morte no início da série marca o ponto de virada para a jornada de Denji.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Pai de Denji (mafioso)',TRUE,0),(gen_random_uuid(),q,'Kishibe',FALSE,1),(gen_random_uuid(),q,'Aki',FALSE,2),(gen_random_uuid(),q,'Yoshida',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'fill_blank','medium','O demônio parasita hospedado dentro de Aki, concedendo poderes de fogo em troca de partes de sua vida útil, se chama ___.','Este contrato demoníaco tem consequências drásticas para a longevidade de Aki.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Demônio Fogo (Kon)',TRUE,0),(gen_random_uuid(),q,'Demônio Sangue',FALSE,1),(gen_random_uuid(),q,'Demônio Motosserra',FALSE,2),(gen_random_uuid(),q,'Demônio Controle',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'fill_blank','medium','A mercenária poderosa que lidera um grupo de caçadoras de demônios independentes na China se chama ___.','Ela demonstra habilidades de combate extraordinárias, rivalizando com os melhores caçadores japoneses.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Quanxi',TRUE,0),(gen_random_uuid(),q,'Reze',FALSE,1),(gen_random_uuid(),q,'Himeno',FALSE,2),(gen_random_uuid(),q,'Asa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'fill_blank','medium','O irmão mais novo de Aki, cuja proteção é uma das principais motivações emocionais do caçador durante a série, se chama ___.','Ele representa a família que resta a Aki após a perda de seus pais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Taiyo Hayakawa',TRUE,0),(gen_random_uuid(),q,'Denji',FALSE,1),(gen_random_uuid(),q,'Beam',FALSE,2),(gen_random_uuid(),q,'Yoshida',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'fill_blank','medium','O demônio-tubarão que se junta ao time de Segurança Pública, competindo diretamente com Power, se chama ___.','Ele considera Power sua rival direta dentro da hierarquia demoníaca do time.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Beam',TRUE,0),(gen_random_uuid(),q,'Power',FALSE,1),(gen_random_uuid(),q,'Angel',FALSE,2),(gen_random_uuid(),q,'Santa Claus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'fill_blank','medium','O demônio anjo que integra a equipe posteriormente, capaz de drenar anos de vida através do toque, se chama ___.','Sua natureza pacífica contrasta com o poder mortal de sua habilidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Angel Devil',TRUE,0),(gen_random_uuid(),q,'Beam',FALSE,1),(gen_random_uuid(),q,'Santa Claus',FALSE,2),(gen_random_uuid(),q,'Yoru',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'fill_blank','hard','O demônio primordial associado à obscuridade e ao vazio, um dos quatro cavaleiros demoníacos mais poderosos, se chama ___.','Sua natureza está intrinsecamente ligada a um dos conceitos mais primordiais da existência humana.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Demônio das Trevas (Darkness)',TRUE,0),(gen_random_uuid(),q,'Demônio da Fome',FALSE,1),(gen_random_uuid(),q,'Demônio da Guerra',FALSE,2),(gen_random_uuid(),q,'Demônio da Morte',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'fill_blank','hard','O demônio primordial associado à fome extrema, um dos quatro cavaleiros demoníacos, se chama ___.','Sua fome insaciável representa um dos medos mais primitivos da humanidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Demônio da Fome',TRUE,0),(gen_random_uuid(),q,'Demônio das Trevas',FALSE,1),(gen_random_uuid(),q,'Demônio da Guerra',FALSE,2),(gen_random_uuid(),q,'Demônio da Morte',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'fill_blank','hard','O demônio primordial ligado a conflitos armados, um dos quatro cavaleiros demoníacos supremos, se chama ___.','Sua influência se manifesta durante grandes conflitos militares ao longo da história humana.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Demônio da Guerra',TRUE,0),(gen_random_uuid(),q,'Demônio das Trevas',FALSE,1),(gen_random_uuid(),q,'Demônio da Fome',FALSE,2),(gen_random_uuid(),q,'Demônio do Controle',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'fill_blank','hard','O demônio da bomba que se manifesta através do corpo de Reze durante confronto decisivo com Denji se chama ___.','Sua verdadeira natureza é revelada apenas durante o clímax do arco envolvendo a jovem misteriosa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Demônio da Bomba (Reze)',TRUE,0),(gen_random_uuid(),q,'Demônio da Guerra',FALSE,1),(gen_random_uuid(),q,'Demônio das Trevas',FALSE,2),(gen_random_uuid(),q,'Demônio Sangue',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'fill_blank','impossible','O demônio pacífico associado ao Natal, integrante posterior da equipe de Segurança Pública, se chama ___.','Ele contrasta com a natureza usualmente hostil dos demônios comuns.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Santa Claus (demônio)',TRUE,0),(gen_random_uuid(),q,'Angel Devil',FALSE,1),(gen_random_uuid(),q,'Beam',FALSE,2),(gen_random_uuid(),q,'Yoru',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'fill_blank','impossible','A demônio da arma que se funde com Asa Mitaka, criando dinâmica de convivência forçada, se chama ___.','Sua fusão ocorre durante eventos da segunda temporada mangá da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoru',TRUE,0),(gen_random_uuid(),q,'Reze',FALSE,1),(gen_random_uuid(),q,'Quanxi',FALSE,2),(gen_random_uuid(),q,'Angel Devil',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- WHO_SAID — 30 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'who_said','easy','Quem disse: "Eu só quero coisas simples, como comer pão com geleia e talvez namorar uma garota normal"?','A frase reflete os desejos modestos do protagonista da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Denji',TRUE,0),(gen_random_uuid(),q,'Aki',FALSE,1),(gen_random_uuid(),q,'Power',FALSE,2),(gen_random_uuid(),q,'Kishibe',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'who_said','easy','Quem disse: "Eu sou uma demônio-sangue caótica, mas cuido do meu gato com um carinho que poucos entendem"?','A frase é dita pela demônio egoísta que se junta ao time de caçadores.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Power',TRUE,0),(gen_random_uuid(),q,'Makima',FALSE,1),(gen_random_uuid(),q,'Kobeni',FALSE,2),(gen_random_uuid(),q,'Himeno',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'who_said','easy','Quem disse: "Eu busco vingança contra o demônio arma responsável pela morte da minha família, custe o que custar"?','A frase é dita pelo caçador sério e disciplinado, parceiro de Denji.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aki',TRUE,0),(gen_random_uuid(),q,'Denji',FALSE,1),(gen_random_uuid(),q,'Kishibe',FALSE,2),(gen_random_uuid(),q,'Quanxi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'who_said','easy','Quem disse: "Eu controlo diversos demônios poderosos, e minha organização depende inteiramente da minha capacidade de comando"?','A frase é dita pela chefe carismática e enigmática da organização de caça a demônios.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Makima',TRUE,0),(gen_random_uuid(),q,'Power',FALSE,1),(gen_random_uuid(),q,'Himeno',FALSE,2),(gen_random_uuid(),q,'Kobeni',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'who_said','easy','Quem disse: "Eu quero muito largar esse trabalho perigoso, mas de alguma forma continuo sobrevivendo a cada missão"?','A frase é dita pela caçadora ansiosa que demonstra competência surpreendente sob pressão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kobeni',TRUE,0),(gen_random_uuid(),q,'Himeno',FALSE,1),(gen_random_uuid(),q,'Power',FALSE,2),(gen_random_uuid(),q,'Makima',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'who_said','easy','Quem disse: "Eu perdi meu olho em troca de poder, e hoje demonstro afeto genuíno por toda minha equipe, apesar do meu jeito descontraído"?','A frase é dita pela caçadora experiente mentora de Aki.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Himeno',TRUE,0),(gen_random_uuid(),q,'Kobeni',FALSE,1),(gen_random_uuid(),q,'Power',FALSE,2),(gen_random_uuid(),q,'Quanxi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'who_said','medium','Quem disse: "Eu treino recrutas com métodos brutais, mas garanto que quem sobrevive ao meu treinamento está pronto para qualquer combate"?','A frase é dita pelo caçador veterano extremamente forte da Segurança Pública.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kishibe',TRUE,0),(gen_random_uuid(),q,'Aki',FALSE,1),(gen_random_uuid(),q,'Denji',FALSE,2),(gen_random_uuid(),q,'Quanxi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'who_said','medium','Quem disse: "Eu me aproximei de Denji sem saber inicialmente da verdadeira natureza dele como caçador de demônios"?','A frase é dita pela colega de classe humana do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Asa',TRUE,0),(gen_random_uuid(),q,'Reze',FALSE,1),(gen_random_uuid(),q,'Kobeni',FALSE,2),(gen_random_uuid(),q,'Quanxi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'who_said','medium','Quem disse: "Eu me aproximei romanticamente de Denji seguindo ordens de uma organização inimiga, mas meus sentimentos se tornaram confusos ao longo do tempo"?','A frase é dita pela jovem misteriosa revelada como agente estrangeira.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Reze',TRUE,0),(gen_random_uuid(),q,'Asa',FALSE,1),(gen_random_uuid(),q,'Kobeni',FALSE,2),(gen_random_uuid(),q,'Quanxi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'who_said','medium','Quem disse: "Eu lidero um grupo de mercenárias independentes na China, e nossas habilidades rivalizam com as dos melhores caçadores japoneses"?','A frase é dita pela mercenária poderosa que lidera caçadoras independentes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Quanxi',TRUE,0),(gen_random_uuid(),q,'Reze',FALSE,1),(gen_random_uuid(),q,'Himeno',FALSE,2),(gen_random_uuid(),q,'Asa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'who_said','medium','Quem disse: "Eu sou tudo que resta da minha família para meu irmão mais velho, e ele faz de tudo para me proteger"?','A frase é dita pelo irmão mais novo de Aki.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Taiyo',TRUE,0),(gen_random_uuid(),q,'Denji',FALSE,1),(gen_random_uuid(),q,'Beam',FALSE,2),(gen_random_uuid(),q,'Yoshida',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'who_said','medium','Quem disse: "Eu considero Power minha rival direta dentro da hierarquia demoníaca deste time, e sempre busco provar minha superioridade"?','A frase é dita pelo demônio-tubarão que integra a equipe de Segurança Pública.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Beam',TRUE,0),(gen_random_uuid(),q,'Power',FALSE,1),(gen_random_uuid(),q,'Angel',FALSE,2),(gen_random_uuid(),q,'Santa Claus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'who_said','medium','Quem disse: "Meu toque pode drenar anos de vida de outras pessoas, mesmo eu mantendo uma natureza fundamentalmente pacífica"?','A frase é dita pelo demônio anjo integrante posterior da equipe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Angel Devil',TRUE,0),(gen_random_uuid(),q,'Beam',FALSE,1),(gen_random_uuid(),q,'Santa Claus',FALSE,2),(gen_random_uuid(),q,'Yoru',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'who_said','hard','Quem disse: "Eu represento o medo mais profundo de toda a humanidade, e minha verdadeira forma raramente é revelada"?','A frase é dita pelo demônio primordial considerado o mais poderoso entre todos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Demônio do Controle',TRUE,0),(gen_random_uuid(),q,'Demônio da Motosserra',FALSE,1),(gen_random_uuid(),q,'Demônio da Arma',FALSE,2),(gen_random_uuid(),q,'Demônio do Sangue',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'who_said','hard','Quem disse: "Eu concedo poderes de fogo em troca de partes da vida útil de meu hospedeiro, e Aki paga esse preço com resignação"?','A frase é dita pelo demônio parasita hospedado dentro de Aki.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Demônio Fogo (Kon)',TRUE,0),(gen_random_uuid(),q,'Demônio Sangue',FALSE,1),(gen_random_uuid(),q,'Demônio Motosserra',FALSE,2),(gen_random_uuid(),q,'Demônio Controle',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'who_said','hard','Quem disse: "Minha natureza está ligada à obscuridade e ao vazio, e sou considerado um dos quatro cavaleiros demoníacos mais poderosos"?','A frase é dita pelo demônio das trevas, um dos cavaleiros primordiais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Demônio das Trevas',TRUE,0),(gen_random_uuid(),q,'Demônio da Fome',FALSE,1),(gen_random_uuid(),q,'Demônio da Guerra',FALSE,2),(gen_random_uuid(),q,'Demônio da Morte',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'who_said','hard','Quem disse: "Minha fome nunca é saciada, e represento um dos medos mais primitivos compartilhados por toda a humanidade"?','A frase é dita pelo demônio da fome, um dos quatro cavaleiros primordiais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Demônio da Fome',TRUE,0),(gen_random_uuid(),q,'Demônio das Trevas',FALSE,1),(gen_random_uuid(),q,'Demônio da Guerra',FALSE,2),(gen_random_uuid(),q,'Demônio da Morte',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'who_said','hard','Quem disse: "Eu manifesto minha verdadeira forma através do corpo de Reze, revelando minha natureza explosiva apenas no momento decisivo"?','A frase é dita pelo demônio da bomba manifestado através da jovem misteriosa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Demônio da Bomba',TRUE,0),(gen_random_uuid(),q,'Demônio da Guerra',FALSE,1),(gen_random_uuid(),q,'Demônio das Trevas',FALSE,2),(gen_random_uuid(),q,'Demônio Sangue',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'who_said','impossible','Quem disse: "Eu sou associado ao Natal, mas minha natureza pacífica contrasta completamente com a hostilidade comum entre demônios"?','A frase é dita pelo demônio pacífico integrante posterior da equipe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Santa Claus',TRUE,0),(gen_random_uuid(),q,'Angel Devil',FALSE,1),(gen_random_uuid(),q,'Beam',FALSE,2),(gen_random_uuid(),q,'Yoru',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'who_said','impossible','Quem disse: "Eu me fundi com Asa Mitaka criando uma convivência forçada entre nós duas, algo raro entre demônios primordiais e humanos"?','A frase é dita pela demônio da arma que se funde com a estudante.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoru',TRUE,0),(gen_random_uuid(),q,'Reze',FALSE,1),(gen_random_uuid(),q,'Quanxi',FALSE,2),(gen_random_uuid(),q,'Angel Devil',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- EPISODE_ARC — 15 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'episode_arc','medium','Em qual arco Denji se funde com Pochita e ingressa na Segurança Pública após a morte de seu pai adotivo?','O arco estabelece a premissa inicial de toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Introdução',TRUE,0),(gen_random_uuid(),q,'Arco da Bomba',FALSE,1),(gen_random_uuid(),q,'Arco do Controle',FALSE,2),(gen_random_uuid(),q,'Arco da Escola',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'episode_arc','medium','Em qual arco Reze se aproxima romanticamente de Denji, revelando posteriormente sua verdadeira natureza como agente e demônio da bomba?','O confronto final deste arco ocorre em um café que serve de ponto de encontro dos dois.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Bomba',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco do Controle',FALSE,2),(gen_random_uuid(),q,'Arco da Escola',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'episode_arc','medium','Em qual arco o demônio do controle assume forma completa, devastando a cidade em confronto final contra Denji e seus aliados?','Este arco representa o clímax da primeira temporada da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Controle',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco da Bomba',FALSE,2),(gen_random_uuid(),q,'Arco da Escola',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'episode_arc','medium','Em qual arco Denji frequenta uma escola comum, conhecendo Asa Mitaka enquanto tenta viver uma vida mais normal?','Este arco marca uma transição significativa no tom da narrativa após os eventos do arco anterior.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Escola',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco da Bomba',FALSE,2),(gen_random_uuid(),q,'Arco do Controle',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'episode_arc','medium','Em qual arco Aki desenvolve seu contrato com o demônio fogo, sacrificando parte de sua expectativa de vida em troca de poder?','A revelação das consequências desse contrato ocorre gradualmente ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Introdução',TRUE,0),(gen_random_uuid(),q,'Arco da Bomba',FALSE,1),(gen_random_uuid(),q,'Arco do Controle',FALSE,2),(gen_random_uuid(),q,'Arco da Escola',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'episode_arc','medium','Em qual arco Quanxi e seu grupo de mercenárias enfrentam a equipe de Denji durante um confronto tenso envolvendo interesses internacionais?','Este confronto revela a existência de organizações rivais fora do Japão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Controle',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco da Bomba',FALSE,2),(gen_random_uuid(),q,'Arco da Escola',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'episode_arc','hard','Em qual arco é revelado que Makima planeja usar Denji para alcançar seu objetivo final envolvendo o demônio do controle?','A revelação ocorre gradualmente através de manipulações sutis ao longo da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Controle',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco da Bomba',FALSE,2),(gen_random_uuid(),q,'Arco da Escola',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'episode_arc','hard','Em qual arco Himeno sacrifica-se em confronto contra demônios poderosos, revelando profundidade emocional não explorada anteriormente?','Este sacrifício tem impacto duradouro sobre Aki ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Controle',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco da Bomba',FALSE,2),(gen_random_uuid(),q,'Arco da Escola',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'episode_arc','hard','Em qual arco Yoru se funde com Asa Mitaka, iniciando uma convivência forçada entre humana e demônio primordial da arma?','Este arco representa o início da segunda grande fase da narrativa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Escola',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco da Bomba',FALSE,2),(gen_random_uuid(),q,'Arco do Controle',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'episode_arc','impossible','Em qual arco é revelado o passado completo de Kishibe como um dos caçadores mais fortes da história da Segurança Pública?','A revelação ocorre através de referências e flashbacks durante seu treinamento intensivo de recrutas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Introdução',TRUE,0),(gen_random_uuid(),q,'Arco da Bomba',FALSE,1),(gen_random_uuid(),q,'Arco do Controle',FALSE,2),(gen_random_uuid(),q,'Arco da Escola',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'episode_arc','impossible','Em qual arco é revelado o contrato firmado por Denji que concede sua morte futura a Makima em troca de poder extremo temporário?','Este contrato representa um dos momentos mais sombrios da trajetória do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Controle',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco da Bomba',FALSE,2),(gen_random_uuid(),q,'Arco da Escola',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- CHRONOLOGICAL — 7 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'chronological','hard','Ordene cronologicamente os arcos a seguir, do mais antigo ao mais recente.','Cobrem desde a fusão de Denji com Pochita até seu período escolar com Asa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Introdução',TRUE,0),(gen_random_uuid(),q,'Bomba',FALSE,1),(gen_random_uuid(),q,'Controle',FALSE,2),(gen_random_uuid(),q,'Escola',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'chronological','hard','Ordene cronologicamente os seguintes eventos da jornada de Denji, do mais antigo ao mais recente.','Cobrem desde a fusão com Pochita até o confronto final contra o demônio do controle.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Funde-se com Pochita após a morte de seu pai',TRUE,0),(gen_random_uuid(),q,'Ingressa na Segurança Pública',FALSE,1),(gen_random_uuid(),q,'Desenvolve relacionamento com Reze',FALSE,2),(gen_random_uuid(),q,'Enfrenta o demônio do controle em sua forma completa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre Reze, do mais antigo ao mais recente.','Cobrem desde sua aproximação romântica até a revelação de sua verdadeira natureza.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aproxima-se romanticamente de Denji',TRUE,0),(gen_random_uuid(),q,'É revelada como agente de organização inimiga',FALSE,1),(gen_random_uuid(),q,'Manifesta sua natureza como demônio da bomba',FALSE,2),(gen_random_uuid(),q,'Enfrenta Denji em confronto decisivo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre Aki, do mais antigo ao mais recente.','Cobrem desde seu contrato com o demônio fogo até seu sacrifício em confronto crucial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Firma contrato com o demônio fogo',TRUE,0),(gen_random_uuid(),q,'Sofre consequências do contrato em sua expectativa de vida',FALSE,1),(gen_random_uuid(),q,'Enfrenta o demônio do controle em batalha decisiva',FALSE,2),(gen_random_uuid(),q,'Confronta seu destino trágico na série',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Makima, do mais antigo ao mais recente.','Cobrem desde o recrutamento de Denji até a revelação de seu objetivo final envolvendo o demônio do controle.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Recruta Denji para a Segurança Pública',TRUE,0),(gen_random_uuid(),q,'Manipula eventos ao longo da trajetória do grupo',FALSE,1),(gen_random_uuid(),q,'Revela seu objetivo final envolvendo Denji',FALSE,2),(gen_random_uuid(),q,'Confronta o protagonista no clímax da série',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Power, do mais antigo ao mais recente.','Cobrem desde sua entrada na equipe até seu desenvolvimento emocional ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Junta-se ao time de caçadores de demônios',TRUE,0),(gen_random_uuid(),q,'Cuida de seu gato de estimação Meowy',FALSE,1),(gen_random_uuid(),q,'Desenvolve laços genuínos com a equipe',FALSE,2),(gen_random_uuid(),q,'Enfrenta o confronto final contra o demônio do controle',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Asa Mitaka, do mais antigo ao mais recente.','Cobrem desde seu encontro com Denji na escola até sua fusão com o demônio da arma.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Conhece Denji durante o período escolar',TRUE,0),(gen_random_uuid(),q,'Descobre a verdadeira natureza do protagonista',FALSE,1),(gen_random_uuid(),q,'Funde-se com o demônio da arma Yoru',FALSE,2),(gen_random_uuid(),q,'Enfrenta novos desafios em sua nova condição',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- COMPLEMENTO — fechar 150 perguntas (26 text / 13 fill_blank / 10 who_said / 4 episode_arc)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','easy','Qual desses personagens é diretor executivo da Segurança Pública, responsável por decisões estratégicas de alto nível na organização?','Ele mantém autoridade considerável sobre operações envolvendo demônios de alto risco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kikunojin',TRUE,0),(gen_random_uuid(),q,'Makima',FALSE,1),(gen_random_uuid(),q,'Himeno',FALSE,2),(gen_random_uuid(),q,'Quanxi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','medium','Qual desses personagens é médico obcecado por dissecar Denji para estudar sua natureza demoníaca única durante sua estadia na organização?','Suas pesquisas visam entender o segredo por trás da fusão completa entre humano e demônio motosserra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshida',TRUE,0),(gen_random_uuid(),q,'Kishibe',FALSE,1),(gen_random_uuid(),q,'Kikunojin',FALSE,2),(gen_random_uuid(),q,'Aki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','hard','Qual desses personagens integra a organização inimiga responsável por recrutar Reze para a missão de aproximação romântica com Denji?','Ela opera nos bastidores de uma organização internacional rival da Segurança Pública japonesa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Agente Soviética',TRUE,0),(gen_random_uuid(),q,'Quanxi',FALSE,1),(gen_random_uuid(),q,'Makima',FALSE,2),(gen_random_uuid(),q,'Kobeni',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','impossible','Qual desses personagens apareceu brevemente enfrentando Power durante um dos primeiros confrontos da série, exibindo aparência etérea incomum?','Sua natureza contrasta com a fisicalidade da maioria dos demônios enfrentados pela equipe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Demônio Fantasma',TRUE,0),(gen_random_uuid(),q,'Demônio Sangue',FALSE,1),(gen_random_uuid(),q,'Demônio Fogo',FALSE,2),(gen_random_uuid(),q,'Demônio Bomba',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','medium','Qual desses personagens é diretor da Segurança Pública que autoriza operações de alto risco envolvendo o demônio do controle?','Sua autoridade dentro da organização é reconhecida mesmo por caçadores veteranos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kikunojin',TRUE,0),(gen_random_uuid(),q,'Makima',FALSE,1),(gen_random_uuid(),q,'Himeno',FALSE,2),(gen_random_uuid(),q,'Quanxi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','hard','Qual desses personagens conduz pesquisas obsessivas sobre a fusão de Denji, buscando compreender o segredo por trás de sua natureza única?','Ele representa o lado científico e frio da organização governamental.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshida',TRUE,0),(gen_random_uuid(),q,'Kishibe',FALSE,1),(gen_random_uuid(),q,'Kikunojin',FALSE,2),(gen_random_uuid(),q,'Aki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','impossible','Qual desses personagens opera nos bastidores recrutando agentes como Reze para missões de infiltração contra a Segurança Pública japonesa?','Sua identidade permanece parcialmente misteriosa ao longo da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Agente Soviética',TRUE,0),(gen_random_uuid(),q,'Quanxi',FALSE,1),(gen_random_uuid(),q,'Makima',FALSE,2),(gen_random_uuid(),q,'Kobeni',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','medium','Qual desses personagens demonstra aparência etérea incomum ao confrontar Power, contrastando com a fisicalidade típica de outros demônios da série?','Este confronto ocorre nos primeiros episódios da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Demônio Fantasma',TRUE,0),(gen_random_uuid(),q,'Demônio Sangue',FALSE,1),(gen_random_uuid(),q,'Demônio Fogo',FALSE,2),(gen_random_uuid(),q,'Demônio Bomba',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','easy','Qual desses personagens exerce autoridade máxima dentro da Segurança Pública, supervisionando decisões sobre operações de alto risco?','Ele é respeitado mesmo pelos caçadores mais experientes da organização.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kikunojin',TRUE,0),(gen_random_uuid(),q,'Makima',FALSE,1),(gen_random_uuid(),q,'Himeno',FALSE,2),(gen_random_uuid(),q,'Quanxi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','hard','Qual desses personagens deseja dissecar Denji cientificamente, motivado por curiosidade obsessiva sobre sua fusão demoníaca única?','Sua abordagem fria contrasta com a lealdade emocional de outros membros da equipe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshida',TRUE,0),(gen_random_uuid(),q,'Kishibe',FALSE,1),(gen_random_uuid(),q,'Kikunojin',FALSE,2),(gen_random_uuid(),q,'Aki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','medium','Qual desses personagens surge brevemente como ameaça fantasmagórica, testando as habilidades de Power em confronto inicial da série?','Sua breve aparição não impede seu impacto na trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Demônio Fantasma',TRUE,0),(gen_random_uuid(),q,'Demônio Sangue',FALSE,1),(gen_random_uuid(),q,'Demônio Fogo',FALSE,2),(gen_random_uuid(),q,'Demônio Bomba',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','hard','Qual desses personagens supervisiona a Segurança Pública como diretor, autorizando missões que envolvem o combate direto contra demônios primordiais?','Sua posição hierárquica é reconhecida por toda a organização.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kikunojin',TRUE,0),(gen_random_uuid(),q,'Makima',FALSE,1),(gen_random_uuid(),q,'Himeno',FALSE,2),(gen_random_uuid(),q,'Quanxi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','impossible','Qual desses personagens é caçador cuja curiosidade científica sobre Denji ultrapassa os limites éticos convencionais da organização?','Ele representa uma faceta perturbadora da Segurança Pública.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshida',TRUE,0),(gen_random_uuid(),q,'Kishibe',FALSE,1),(gen_random_uuid(),q,'Kikunojin',FALSE,2),(gen_random_uuid(),q,'Aki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','medium','Qual desses personagens age nos bastidores como agente estrangeira, articulando o plano de infiltração através de Reze?','Sua identidade e motivações permanecem parcialmente enigmáticas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Agente Soviética',TRUE,0),(gen_random_uuid(),q,'Quanxi',FALSE,1),(gen_random_uuid(),q,'Makima',FALSE,2),(gen_random_uuid(),q,'Kobeni',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','easy','Qual desses personagens mantém posição de comando máximo dentro da Segurança Pública, sendo referência de autoridade para toda a organização?','Ele toma decisões que afetam diretamente as missões de Denji e sua equipe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kikunojin',TRUE,0),(gen_random_uuid(),q,'Makima',FALSE,1),(gen_random_uuid(),q,'Himeno',FALSE,2),(gen_random_uuid(),q,'Quanxi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','hard','Qual desses personagens demonstra fascínio científico obsessivo com a fisiologia de Denji, chegando a propor experimentos invasivos?','Sua motivação é puramente acadêmica, sem laços emocionais com o protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshida',TRUE,0),(gen_random_uuid(),q,'Kishibe',FALSE,1),(gen_random_uuid(),q,'Kikunojin',FALSE,2),(gen_random_uuid(),q,'Aki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','medium','Qual desses personagens serve como ligação entre Reze e a organização internacional rival que ameaça a Segurança Pública japonesa?','Sua atuação nos bastidores raramente é vista diretamente pelos protagonistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Agente Soviética',TRUE,0),(gen_random_uuid(),q,'Quanxi',FALSE,1),(gen_random_uuid(),q,'Makima',FALSE,2),(gen_random_uuid(),q,'Kobeni',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','impossible','Qual desses personagens surpreende Power em confronto breve, mostrando forma fantasmagórica pouco recorrente ao longo da série?','Sua aparição é rara em comparação com demônios mais frequentes da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Demônio Fantasma',TRUE,0),(gen_random_uuid(),q,'Demônio Sangue',FALSE,1),(gen_random_uuid(),q,'Demônio Fogo',FALSE,2),(gen_random_uuid(),q,'Demônio Bomba',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','easy','Qual desses personagens toma decisões de comando geral sobre a Segurança Pública, sendo a figura mais alta na hierarquia organizacional?','Ele supervisiona indiretamente todas as operações de Denji ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kikunojin',TRUE,0),(gen_random_uuid(),q,'Makima',FALSE,1),(gen_random_uuid(),q,'Himeno',FALSE,2),(gen_random_uuid(),q,'Quanxi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','medium','Qual desses personagens tenta compreender cientificamente os limites da regeneração de Denji, propondo métodos invasivos de estudo?','Ele demonstra pouca preocupação ética durante suas pesquisas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshida',TRUE,0),(gen_random_uuid(),q,'Kishibe',FALSE,1),(gen_random_uuid(),q,'Kikunojin',FALSE,2),(gen_random_uuid(),q,'Aki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','hard','Qual desses personagens coordena a missão de Reze junto à organização internacional, mantendo comunicação constante com a jovem infiltrada?','Sua presença na trama é discreta, mas essencial para o desenrolar do arco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Agente Soviética',TRUE,0),(gen_random_uuid(),q,'Quanxi',FALSE,1),(gen_random_uuid(),q,'Makima',FALSE,2),(gen_random_uuid(),q,'Kobeni',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','impossible','Qual desses personagens desafia brevemente Power em combate, revelando forma etérea que dificulta ataques físicos convencionais?','Sua natureza incomum representa um desafio tático diferente para a equipe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Demônio Fantasma',TRUE,0),(gen_random_uuid(),q,'Demônio Sangue',FALSE,1),(gen_random_uuid(),q,'Demônio Fogo',FALSE,2),(gen_random_uuid(),q,'Demônio Bomba',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','medium','Qual desses personagens ocupa cargo de liderança máxima na Segurança Pública, sendo responsável por decisões que impactam toda a equipe de Denji?','Sua palavra final é respeitada mesmo por caçadores experientes como Kishibe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kikunojin',TRUE,0),(gen_random_uuid(),q,'Makima',FALSE,1),(gen_random_uuid(),q,'Himeno',FALSE,2),(gen_random_uuid(),q,'Quanxi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','hard','Qual desses personagens mantém interesse acadêmico obsessivo sobre a origem e os limites do poder demoníaco de Denji?','Sua curiosidade científica raramente considera o bem-estar emocional do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshida',TRUE,0),(gen_random_uuid(),q,'Kishibe',FALSE,1),(gen_random_uuid(),q,'Kikunojin',FALSE,2),(gen_random_uuid(),q,'Aki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','medium','Qual desses personagens mantém autoridade final sobre estratégias de combate contra demônios primordiais dentro da Segurança Pública?','Ele é consultado antes de qualquer operação de grande escala envolvendo risco elevado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kikunojin',TRUE,0),(gen_random_uuid(),q,'Makima',FALSE,1),(gen_random_uuid(),q,'Himeno',FALSE,2),(gen_random_uuid(),q,'Quanxi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'text','hard','Qual desses personagens propõe métodos de pesquisa cada vez mais invasivos para compreender a fisiologia única de Denji?','Sua obsessão científica gera desconforto entre outros membros da organização.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshida',TRUE,0),(gen_random_uuid(),q,'Kishibe',FALSE,1),(gen_random_uuid(),q,'Kikunojin',FALSE,2),(gen_random_uuid(),q,'Aki',FALSE,3);

    -- fill_blank complemento (13)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'fill_blank','easy','O diretor executivo da Segurança Pública, responsável por decisões estratégicas de alto nível, se chama ___.','Ele mantém autoridade considerável sobre operações envolvendo demônios de alto risco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kikunojin',TRUE,0),(gen_random_uuid(),q,'Makima',FALSE,1),(gen_random_uuid(),q,'Himeno',FALSE,2),(gen_random_uuid(),q,'Quanxi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'fill_blank','medium','O médico obcecado por dissecar Denji para estudar sua natureza demoníaca única se chama ___.','Suas pesquisas visam entender o segredo por trás da fusão completa entre humano e demônio motosserra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshida',TRUE,0),(gen_random_uuid(),q,'Kishibe',FALSE,1),(gen_random_uuid(),q,'Kikunojin',FALSE,2),(gen_random_uuid(),q,'Aki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'fill_blank','hard','A agente da organização inimiga responsável por recrutar Reze para a missão de aproximação romântica com Denji é referida como ___.','Ela opera nos bastidores de uma organização internacional rival da Segurança Pública japonesa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Agente Soviética',TRUE,0),(gen_random_uuid(),q,'Quanxi',FALSE,1),(gen_random_uuid(),q,'Makima',FALSE,2),(gen_random_uuid(),q,'Kobeni',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'fill_blank','impossible','O demônio que apareceu brevemente enfrentando Power, exibindo aparência etérea incomum, é referido como ___.','Sua natureza contrasta com a fisicalidade da maioria dos demônios enfrentados pela equipe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Demônio Fantasma',TRUE,0),(gen_random_uuid(),q,'Demônio Sangue',FALSE,1),(gen_random_uuid(),q,'Demônio Fogo',FALSE,2),(gen_random_uuid(),q,'Demônio Bomba',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'fill_blank','easy','O diretor que autoriza operações de alto risco envolvendo o demônio do controle se chama ___.','Sua autoridade dentro da organização é reconhecida mesmo por caçadores veteranos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kikunojin',TRUE,0),(gen_random_uuid(),q,'Makima',FALSE,1),(gen_random_uuid(),q,'Himeno',FALSE,2),(gen_random_uuid(),q,'Quanxi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'fill_blank','medium','O médico que conduz pesquisas obsessivas sobre a fusão de Denji, buscando compreender sua natureza única, se chama ___.','Ele representa o lado científico e frio da organização governamental.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshida',TRUE,0),(gen_random_uuid(),q,'Kishibe',FALSE,1),(gen_random_uuid(),q,'Kikunojin',FALSE,2),(gen_random_uuid(),q,'Aki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'fill_blank','hard','A agente estrangeira que opera nos bastidores recrutando espiões como Reze contra a Segurança Pública japonesa é referida como ___.','Sua identidade permanece parcialmente misteriosa ao longo da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Agente Soviética',TRUE,0),(gen_random_uuid(),q,'Quanxi',FALSE,1),(gen_random_uuid(),q,'Makima',FALSE,2),(gen_random_uuid(),q,'Kobeni',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'fill_blank','medium','O demônio que demonstrou aparência etérea incomum ao confrontar Power, contrastando com a fisicalidade típica de outros demônios, é referido como ___.','Este confronto ocorre nos primeiros episódios da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Demônio Fantasma',TRUE,0),(gen_random_uuid(),q,'Demônio Sangue',FALSE,1),(gen_random_uuid(),q,'Demônio Fogo',FALSE,2),(gen_random_uuid(),q,'Demônio Bomba',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'fill_blank','hard','O diretor que supervisiona a Segurança Pública, autorizando missões contra demônios primordiais, se chama ___.','Sua posição hierárquica é reconhecida por toda a organização.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kikunojin',TRUE,0),(gen_random_uuid(),q,'Makima',FALSE,1),(gen_random_uuid(),q,'Himeno',FALSE,2),(gen_random_uuid(),q,'Quanxi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'fill_blank','impossible','O caçador cuja curiosidade científica sobre Denji ultrapassa os limites éticos convencionais da organização se chama ___.','Ele representa uma faceta perturbadora da Segurança Pública.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshida',TRUE,0),(gen_random_uuid(),q,'Kishibe',FALSE,1),(gen_random_uuid(),q,'Kikunojin',FALSE,2),(gen_random_uuid(),q,'Aki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'fill_blank','medium','A agente que age nos bastidores articulando o plano de infiltração através de Reze é referida como ___.','Sua identidade e motivações permanecem parcialmente enigmáticas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Agente Soviética',TRUE,0),(gen_random_uuid(),q,'Quanxi',FALSE,1),(gen_random_uuid(),q,'Makima',FALSE,2),(gen_random_uuid(),q,'Kobeni',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'fill_blank','hard','O demônio que surpreende Power em confronto breve, mostrando forma fantasmagórica de difícil ataque físico, é referido como ___.','Sua natureza incomum representa um desafio tático diferente para a equipe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Demônio Fantasma',TRUE,0),(gen_random_uuid(),q,'Demônio Sangue',FALSE,1),(gen_random_uuid(),q,'Demônio Fogo',FALSE,2),(gen_random_uuid(),q,'Demônio Bomba',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'fill_blank','medium','O ocupante do cargo de liderança máxima na Segurança Pública, responsável por decisões que impactam toda a equipe de Denji, se chama ___.','Sua palavra final é respeitada mesmo por caçadores experientes como Kishibe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kikunojin',TRUE,0),(gen_random_uuid(),q,'Makima',FALSE,1),(gen_random_uuid(),q,'Himeno',FALSE,2),(gen_random_uuid(),q,'Quanxi',FALSE,3);

    -- who_said complemento (10)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'who_said','easy','Quem disse: "Eu superviso todas as decisões estratégicas da Segurança Pública, e nenhuma operação de alto risco acontece sem minha aprovação"?','A frase é dita pelo diretor executivo da organização.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kikunojin',TRUE,0),(gen_random_uuid(),q,'Makima',FALSE,1),(gen_random_uuid(),q,'Himeno',FALSE,2),(gen_random_uuid(),q,'Quanxi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'who_said','medium','Quem disse: "Eu quero dissecar Denji para entender completamente sua fusão demoníaca, mesmo que isso pareça cruel para os outros"?','A frase é dita pelo médico obcecado por pesquisas sobre o protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshida',TRUE,0),(gen_random_uuid(),q,'Kishibe',FALSE,1),(gen_random_uuid(),q,'Kikunojin',FALSE,2),(gen_random_uuid(),q,'Aki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'who_said','hard','Quem disse: "Eu recrutei Reze para infiltrar-se junto a Denji, e nossa organização internacional aguarda os resultados dessa missão"?','A frase é dita pela agente estrangeira responsável pela missão de Reze.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Agente Soviética',TRUE,0),(gen_random_uuid(),q,'Quanxi',FALSE,1),(gen_random_uuid(),q,'Makima',FALSE,2),(gen_random_uuid(),q,'Kobeni',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'who_said','impossible','Quem disse: "Minha forma etérea confunde meus adversários, e Power teve dificuldade em me acertar durante nosso breve confronto"?','A frase é dita pelo demônio fantasma enfrentado brevemente no início da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Demônio Fantasma',TRUE,0),(gen_random_uuid(),q,'Demônio Sangue',FALSE,1),(gen_random_uuid(),q,'Demônio Fogo',FALSE,2),(gen_random_uuid(),q,'Demônio Bomba',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'who_said','easy','Quem disse: "Toda operação de alto risco da Segurança Pública passa pela minha mesa antes de ser autorizada"?','A frase é dita pelo diretor que supervisiona a organização governamental.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kikunojin',TRUE,0),(gen_random_uuid(),q,'Makima',FALSE,1),(gen_random_uuid(),q,'Himeno',FALSE,2),(gen_random_uuid(),q,'Quanxi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'who_said','medium','Quem disse: "Meus experimentos com Denji revelam segredos que ninguém mais na organização se importa em investigar"?','A frase é dita pelo médico com curiosidade científica obsessiva sobre o protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshida',TRUE,0),(gen_random_uuid(),q,'Kishibe',FALSE,1),(gen_random_uuid(),q,'Kikunojin',FALSE,2),(gen_random_uuid(),q,'Aki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'who_said','hard','Quem disse: "Eu coordeno a infiltração de Reze mantendo comunicação constante, mesmo à distância da Segurança Pública japonesa"?','A frase é dita pela agente que coordena a missão de infiltração.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Agente Soviética',TRUE,0),(gen_random_uuid(),q,'Quanxi',FALSE,1),(gen_random_uuid(),q,'Makima',FALSE,2),(gen_random_uuid(),q,'Kobeni',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'who_said','impossible','Quem disse: "Minha aparência incomum surpreendeu Power durante nosso confronto rápido, mas não foi o suficiente para me tornar recorrente na trama"?','A frase é dita pelo demônio fantasma de aparição breve na série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Demônio Fantasma',TRUE,0),(gen_random_uuid(),q,'Demônio Sangue',FALSE,1),(gen_random_uuid(),q,'Demônio Fogo',FALSE,2),(gen_random_uuid(),q,'Demônio Bomba',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'who_said','medium','Quem disse: "Eu ocupo o cargo mais alto da Segurança Pública, e minha palavra final é respeitada até pelos caçadores mais experientes"?','A frase é dita pelo diretor máximo da organização.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kikunojin',TRUE,0),(gen_random_uuid(),q,'Makima',FALSE,1),(gen_random_uuid(),q,'Himeno',FALSE,2),(gen_random_uuid(),q,'Quanxi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'who_said','hard','Quem disse: "Minha curiosidade científica sobre a regeneração de Denji raramente considera o bem-estar emocional dele durante meus estudos"?','A frase é dita pelo médico obcecado por pesquisas invasivas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoshida',TRUE,0),(gen_random_uuid(),q,'Kishibe',FALSE,1),(gen_random_uuid(),q,'Kikunojin',FALSE,2),(gen_random_uuid(),q,'Aki',FALSE,3);

    -- episode_arc complemento (4)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'episode_arc','medium','Em qual arco o demônio fantasma confronta brevemente Power, testando as habilidades da equipe recém-formada?','Este confronto ocorre ainda nos primeiros episódios da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Introdução',TRUE,0),(gen_random_uuid(),q,'Arco da Bomba',FALSE,1),(gen_random_uuid(),q,'Arco do Controle',FALSE,2),(gen_random_uuid(),q,'Arco da Escola',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'episode_arc','hard','Em qual arco é revelada a existência da agente estrangeira que coordena a missão de infiltração de Reze contra a Segurança Pública?','A revelação ocorre nos momentos finais do arco envolvendo a jovem misteriosa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Bomba',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco do Controle',FALSE,2),(gen_random_uuid(),q,'Arco da Escola',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'episode_arc','hard','Em qual arco Yoshida conduz suas pesquisas obsessivas sobre a fusão de Denji, propondo métodos científicos invasivos de estudo?','Este interesse acadêmico se intensifica conforme a série avança.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Introdução',TRUE,0),(gen_random_uuid(),q,'Arco da Bomba',FALSE,1),(gen_random_uuid(),q,'Arco do Controle',FALSE,2),(gen_random_uuid(),q,'Arco da Escola',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_cs,'episode_arc','impossible','Em qual arco Kikunojin autoriza pessoalmente a operação decisiva contra o demônio do controle em sua forma completa?','Sua decisão tem consequências drásticas para toda a equipe de Denji.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Controle',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco da Bomba',FALSE,2),(gen_random_uuid(),q,'Arco da Escola',FALSE,3);

END $$;
