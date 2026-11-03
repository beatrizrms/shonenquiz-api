-- ============================================================
--  V40 — Seed de perguntas: Berserk (150 perguntas)
--  Fonte: MyAnimeList + cânone do anime
--  Distribuição: text 40% / fill_blank 25% / who_said 20% /
--                episode_arc 10% / chronological 5%
--  Sem repetição com V5. Regras R1-R7 aplicadas.
-- ============================================================

DO $$
DECLARE
    v_system UUID := '00000000-0000-0000-0000-000000000001';
    v_bs     UUID;
    q        UUID;
BEGIN
    SELECT id INTO v_bs FROM animes WHERE slug = 'berserk' LIMIT 1;

    -- ══════════════════════════════════════════════════════════
    -- TEXT — 60 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','easy','Qual é o nome do protagonista, mercenário solitário que carrega uma espada gigante conhecida como Dragão Matador?','Ele nasceu sob circunstâncias trágicas ligadas à morte de sua mãe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Guts',TRUE,0),(gen_random_uuid(),q,'Griffith',FALSE,1),(gen_random_uuid(),q,'Zodd',FALSE,2),(gen_random_uuid(),q,'Judeau',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','easy','Qual é o nome do líder carismático do Bando do Falcão, ambicioso e determinado a conquistar seu próprio reino?','Ele recruta Guts após derrotá-lo em combate direto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Griffith',TRUE,0),(gen_random_uuid(),q,'Guts',FALSE,1),(gen_random_uuid(),q,'Zodd',FALSE,2),(gen_random_uuid(),q,'Judeau',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','easy','Qual é o nome do grupo mercenário liderado por Griffith, formado por guerreiros leais que sonham com um reino próprio?','Eles se destacam por vitórias militares impressionantes durante a Guerra dos Cem Anos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bando do Falcão',TRUE,0),(gen_random_uuid(),q,'Cavaleiros da Torre',FALSE,1),(gen_random_uuid(),q,'Apóstolos',FALSE,2),(gen_random_uuid(),q,'Deuses da Mão',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','easy','Qual é o nome da arqueira habilidosa e leal integrante do Bando do Falcão, apaixonada por Griffith desde a juventude?','Ela demonstra devoção absoluta ao líder ao longo de toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Casca',TRUE,0),(gen_random_uuid(),q,'Farnese',FALSE,1),(gen_random_uuid(),q,'Schierke',FALSE,2),(gen_random_uuid(),q,'Erica',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','easy','Qual é o nome do guerreiro demoníaco gigante, presença recorrente ao longo de toda a série, conhecido por sua honra em combate?','Ele demonstra respeito incomum por Guts apesar de sua natureza sobrenatural.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zodd',TRUE,0),(gen_random_uuid(),q,'Griffith',FALSE,1),(gen_random_uuid(),q,'Void',FALSE,2),(gen_random_uuid(),q,'Rickert',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','easy','Qual é o nome do artesão anão responsável por criar a armadura especial usada por Guts, capaz de canalizar berserker rage?','Sua criação é essencial para os combates de Guts contra criaturas sobrenaturais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Godo',TRUE,0),(gen_random_uuid(),q,'Rickert',FALSE,1),(gen_random_uuid(),q,'Erica',FALSE,2),(gen_random_uuid(),q,'Zodd',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','easy','Qual é o nome do jovem membro do Bando do Falcão que idolatra Guts como uma figura de irmão mais velho?','Ele demonstra profunda admiração e lealdade ao protagonista ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rickert',TRUE,0),(gen_random_uuid(),q,'Judeau',FALSE,1),(gen_random_uuid(),q,'Corkus',FALSE,2),(gen_random_uuid(),q,'Pippin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','easy','Qual é o nome do evento sobrenatural ritualístico no qual Griffith sacrifica seus companheiros para renascer como demônio poderoso?','Este evento é considerado o ponto de virada mais sombrio de toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Eclipse',TRUE,0),(gen_random_uuid(),q,'Convergência',FALSE,1),(gen_random_uuid(),q,'Ritual das Trevas',FALSE,2),(gen_random_uuid(),q,'Renascimento Sombrio',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','easy','Qual é o nome dado à marca amaldiçoada gravada no corpo de Guts, que atrai constantemente criaturas demoníacas?','Ela é resultado direto do sacrifício ritualístico ocorrido durante o Eclipse.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Marca do Sacrifício',TRUE,0),(gen_random_uuid(),q,'Selo Demoníaco',FALSE,1),(gen_random_uuid(),q,'Marca das Trevas',FALSE,2),(gen_random_uuid(),q,'Cicatriz do Eclipse',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','easy','Qual é o nome dado ao grupo de cinco entidades demoníacas supremas responsáveis por conceder poder através de rituais sombrios?','Griffith se torna um deles após o evento do Eclipse.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Deuses da Mão',TRUE,0),(gen_random_uuid(),q,'Apóstolos',FALSE,1),(gen_random_uuid(),q,'Cavaleiros das Trevas',FALSE,2),(gen_random_uuid(),q,'Espectros',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','easy','Qual é o nome do estranho ser anão, guia espiritual constante que acompanha Guts após os eventos do Eclipse?','Ele foi resgatado por Guts de uma situação perigosa antes de se tornar seu companheiro fiel.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Puck',TRUE,0),(gen_random_uuid(),q,'Isidro',FALSE,1),(gen_random_uuid(),q,'Ivalera',FALSE,2),(gen_random_uuid(),q,'Godo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','easy','Qual é o nome do jovem ladrão que se junta a Guts após presenciar sua força em combate, tornando-se aprendiz relutante?','Ele sonha em se tornar um espadachim lendário como o protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Isidro',TRUE,0),(gen_random_uuid(),q,'Rickert',FALSE,1),(gen_random_uuid(),q,'Corkus',FALSE,2),(gen_random_uuid(),q,'Pippin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','easy','Qual é o nome da jovem bruxa aprendiz que se junta ao grupo de Guts, dominando magia elemental avançada apesar da idade jovem?','Ela é treinada por uma feiticeira poderosa antes de se juntar aos protagonistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Schierke',TRUE,0),(gen_random_uuid(),q,'Farnese',FALSE,1),(gen_random_uuid(),q,'Casca',FALSE,2),(gen_random_uuid(),q,'Ivalera',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','easy','Qual é o nome da ex-membro de uma ordem religiosa que se junta ao grupo de Guts após uma crise de fé profunda?','Ela inicialmente persegue Guts por acreditar que ele é uma ameaça herege.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Farnese',TRUE,0),(gen_random_uuid(),q,'Schierke',FALSE,1),(gen_random_uuid(),q,'Casca',FALSE,2),(gen_random_uuid(),q,'Ivalera',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','easy','Qual é o nome da espada gigantesca e desproporcional usada por Guts como arma principal ao longo de toda a série?','Ela é forjada especialmente para causar dano massivo contra criaturas demoníacas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dragão Matador',TRUE,0),(gen_random_uuid(),q,'Espada Sagrada',FALSE,1),(gen_random_uuid(),q,'Lâmina das Trevas',FALSE,2),(gen_random_uuid(),q,'Excalibur',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','medium','Qual é o nome do reino que Griffith planeja conquistar e governar como sua ambição principal desde o início da série?','Sua obsessão por esse objetivo motiva grande parte de suas decisões drásticas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Reino de Midland',TRUE,0),(gen_random_uuid(),q,'Reino de Chuder',FALSE,1),(gen_random_uuid(),q,'Reino de Tudor',FALSE,2),(gen_random_uuid(),q,'Reino de Vritannis',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','medium','Qual é o nome do reino rival contra o qual Midland trava a Guerra dos Cem Anos ao longo de grande parte da série?','O Bando do Falcão desempenha papel crucial nas batalhas decisivas desse conflito.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Reino de Chuder',TRUE,0),(gen_random_uuid(),q,'Reino de Midland',FALSE,1),(gen_random_uuid(),q,'Reino de Tudor',FALSE,2),(gen_random_uuid(),q,'Reino de Vritannis',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','medium','Qual é o nome do capitão veterano do Bando do Falcão, conhecido por sua astúcia e liderança tática experiente?','Ele demonstra profunda lealdade a Griffith e ao grupo mesmo em situações extremas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Corkus',TRUE,0),(gen_random_uuid(),q,'Pippin',FALSE,1),(gen_random_uuid(),q,'Judeau',FALSE,2),(gen_random_uuid(),q,'Rickert',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','medium','Qual é o nome do guerreiro gigante e gentil integrante do Bando do Falcão, conhecido por sua força física impressionante?','Ele demonstra personalidade calma apesar de seu porte físico intimidador.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Pippin',TRUE,0),(gen_random_uuid(),q,'Corkus',FALSE,1),(gen_random_uuid(),q,'Judeau',FALSE,2),(gen_random_uuid(),q,'Zodd',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','medium','Qual é o nome do membro sardento do Bando do Falcão, conhecido por sua lealdade e habilidade com adagas?','Ele mantém amizade próxima com Casca ao longo de toda a trajetória do grupo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Judeau',TRUE,0),(gen_random_uuid(),q,'Corkus',FALSE,1),(gen_random_uuid(),q,'Pippin',FALSE,2),(gen_random_uuid(),q,'Rickert',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','medium','Qual é o nome do rei de Midland, figura manipuladora que teme a popularidade crescente de Griffith na corte real?','Ele é responsável pela prisão e tortura brutal de Griffith após descobrir seu caso com a princesa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rei de Midland',TRUE,0),(gen_random_uuid(),q,'Rei de Chuder',FALSE,1),(gen_random_uuid(),q,'Rei de Tudor',FALSE,2),(gen_random_uuid(),q,'Julius',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','medium','Qual é o nome da princesa de Midland, envolvida romanticamente com Griffith em segredo, desencadeando sua prisão dramática?','Seu relacionamento secreto é descoberto pelo próprio pai, o Rei de Midland.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Princesa Charlotte',TRUE,0),(gen_random_uuid(),q,'Farnese',FALSE,1),(gen_random_uuid(),q,'Casca',FALSE,2),(gen_random_uuid(),q,'Schierke',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','medium','Qual é o nome do general rival de Griffith na corte de Midland, ressentido pela ascensão meteórica do jovem mercenário?','Ele representa a resistência nobre tradicional contra a meritocracia militar de Griffith.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Julius',TRUE,0),(gen_random_uuid(),q,'Boscogn',FALSE,1),(gen_random_uuid(),q,'Adon',FALSE,2),(gen_random_uuid(),q,'Wyald',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','medium','Qual é o nome do sacerdote corrupto que persegue Guts e seu grupo, acreditando estarem envolvidos em heresia contra a igreja?','Ele comanda uma organização religiosa com poder político considerável.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mozgus',TRUE,0),(gen_random_uuid(),q,'Julius',FALSE,1),(gen_random_uuid(),q,'Adon',FALSE,2),(gen_random_uuid(),q,'Wyald',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','hard','Qual é o nome dado à condição psicológica de trauma severo desenvolvida por Casca após os eventos catastróficos do Eclipse?','Sua recuperação gradual se torna um dos objetivos centrais de Guts na segunda metade da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Regressão Mental',TRUE,0),(gen_random_uuid(),q,'Marca do Sacrifício',FALSE,1),(gen_random_uuid(),q,'Berserker Rage',FALSE,2),(gen_random_uuid(),q,'Convergência das Trevas',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','hard','Qual é o nome do fenômeno sobrenatural que reúne demônios e criaturas amaldiçoadas em torno de indivíduos que carregam a marca do sacrifício?','Este fenômeno intensifica-se durante eclipses lunares específicos na trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Convergência das Trevas',TRUE,0),(gen_random_uuid(),q,'Eclipse',FALSE,1),(gen_random_uuid(),q,'Regressão Mental',FALSE,2),(gen_random_uuid(),q,'Ritual do Sacrifício',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','hard','Qual é o nome do guerreiro mercenário brutal que ataca o Bando do Falcão em retirada, revelado posteriormente como um apóstolo demoníaco?','Sua transformação ocorre em meio ao caos da guerra civil de Midland.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Wyald',TRUE,0),(gen_random_uuid(),q,'Adon',FALSE,1),(gen_random_uuid(),q,'Boscogn',FALSE,2),(gen_random_uuid(),q,'Mozgus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','hard','Qual é o nome do nobre corrupto de Midland que se transforma em apóstolo demoníaco para obter vingança contra Griffith?','Ele é derrotado por Guts em confronto direto durante sua transformação monstruosa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Adon',TRUE,0),(gen_random_uuid(),q,'Boscogn',FALSE,1),(gen_random_uuid(),q,'Wyald',FALSE,2),(gen_random_uuid(),q,'Julius',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','hard','Qual é o nome do general veterano de Midland que enfrenta Guts em duelo respeitoso antes dos eventos do Eclipse?','Ele demonstra código de honra incomum entre os nobres da corte.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Boscogn',TRUE,0),(gen_random_uuid(),q,'Julius',FALSE,1),(gen_random_uuid(),q,'Adon',FALSE,2),(gen_random_uuid(),q,'Wyald',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','hard','Qual é o nome da entidade cósmica misteriosa, observadora silenciosa que aparece em momentos-chave ligados ao destino de Guts?','Sua verdadeira natureza permanece parcialmente ambígua ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Void',TRUE,0),(gen_random_uuid(),q,'Zodd',FALSE,1),(gen_random_uuid(),q,'Griffith',FALSE,2),(gen_random_uuid(),q,'Slan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','hard','Qual é o nome do sacerdote transformado em apóstolo, dono de poderes ligados a espinhos e crucificação como método de tortura?','Ele comanda uma organização religiosa perseguidora de hereges antes de sua transformação.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mozgus',TRUE,0),(gen_random_uuid(),q,'Wyald',FALSE,1),(gen_random_uuid(),q,'Adon',FALSE,2),(gen_random_uuid(),q,'Boscogn',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','impossible','Qual é o nome do capitão original que lidera Guts antes de seu ingresso no Bando do Falcão, morto em confronto pouco antes de sua transição de grupo?','Sua morte é um dos eventos que definem a trajetória inicial de Guts como mercenário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gambino (pai adotivo)',TRUE,0),(gen_random_uuid(),q,'Godo',FALSE,1),(gen_random_uuid(),q,'Zodd',FALSE,2),(gen_random_uuid(),q,'Julius',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','impossible','Qual é o nome do apóstolo demoníaco enfrentado por Guts logo após os eventos do Eclipse, durante sua jornada solitária de vingança?','Este confronto ocorre nos primeiros capítulos que seguem a tragédia do sacrifício.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rosine',TRUE,0),(gen_random_uuid(),q,'Adon',FALSE,1),(gen_random_uuid(),q,'Wyald',FALSE,2),(gen_random_uuid(),q,'Mozgus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','impossible','Qual é o nome dado ao pequeno espírito elemental capturado por Schierke, usado como familiar mágico em seus feitiços?','Ela se comunica com Puck através de laços mágicos incomuns.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ivalera',TRUE,0),(gen_random_uuid(),q,'Puck',FALSE,1),(gen_random_uuid(),q,'Isidro',FALSE,2),(gen_random_uuid(),q,'Erica',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','impossible','Qual é o nome da esposa demoníaca de Void, apóstolo poderosa envolvida diretamente nos eventos que moldam o destino de Griffith?','Ela desempenha papel crucial nos bastidores dos Deuses da Mão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Slan',TRUE,0),(gen_random_uuid(),q,'Rosine',FALSE,1),(gen_random_uuid(),q,'Ivalera',FALSE,2),(gen_random_uuid(),q,'Erica',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','impossible','Qual é o nome da jovem que Guts protege durante sua estadia em uma vila pacífica antes de retomar sua jornada de vingança?','Ela representa um breve período de paz na trajetória sombria do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Erica',TRUE,0),(gen_random_uuid(),q,'Ivalera',FALSE,1),(gen_random_uuid(),q,'Rosine',FALSE,2),(gen_random_uuid(),q,'Slan',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- FILL_BLANK — 38 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'fill_blank','easy','O protagonista, mercenário solitário que carrega uma espada gigante conhecida como Dragão Matador, se chama ___.','Ele nasceu sob circunstâncias trágicas ligadas à morte de sua mãe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Guts',TRUE,0),(gen_random_uuid(),q,'Griffith',FALSE,1),(gen_random_uuid(),q,'Zodd',FALSE,2),(gen_random_uuid(),q,'Judeau',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'fill_blank','easy','O líder carismático do Bando do Falcão, ambicioso e determinado a conquistar seu próprio reino, se chama ___.','Ele recruta Guts após derrotá-lo em combate direto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Griffith',TRUE,0),(gen_random_uuid(),q,'Guts',FALSE,1),(gen_random_uuid(),q,'Zodd',FALSE,2),(gen_random_uuid(),q,'Judeau',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'fill_blank','easy','O grupo mercenário liderado por Griffith, formado por guerreiros leais que sonham com um reino próprio, se chama ___.','Eles se destacam por vitórias militares impressionantes durante a Guerra dos Cem Anos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bando do Falcão',TRUE,0),(gen_random_uuid(),q,'Cavaleiros da Torre',FALSE,1),(gen_random_uuid(),q,'Apóstolos',FALSE,2),(gen_random_uuid(),q,'Deuses da Mão',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'fill_blank','easy','A arqueira habilidosa e leal integrante do Bando do Falcão, apaixonada por Griffith desde a juventude, se chama ___.','Ela demonstra devoção absoluta ao líder ao longo de toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Casca',TRUE,0),(gen_random_uuid(),q,'Farnese',FALSE,1),(gen_random_uuid(),q,'Schierke',FALSE,2),(gen_random_uuid(),q,'Erica',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'fill_blank','easy','O guerreiro demoníaco gigante, presença recorrente ao longo de toda a série, conhecido por sua honra em combate, se chama ___.','Ele demonstra respeito incomum por Guts apesar de sua natureza sobrenatural.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zodd',TRUE,0),(gen_random_uuid(),q,'Griffith',FALSE,1),(gen_random_uuid(),q,'Void',FALSE,2),(gen_random_uuid(),q,'Rickert',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'fill_blank','easy','O artesão anão responsável por criar a armadura especial usada por Guts se chama ___.','Sua criação é essencial para os combates de Guts contra criaturas sobrenaturais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Godo',TRUE,0),(gen_random_uuid(),q,'Rickert',FALSE,1),(gen_random_uuid(),q,'Erica',FALSE,2),(gen_random_uuid(),q,'Zodd',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'fill_blank','easy','O jovem membro do Bando do Falcão que idolatra Guts como uma figura de irmão mais velho se chama ___.','Ele demonstra profunda admiração e lealdade ao protagonista ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rickert',TRUE,0),(gen_random_uuid(),q,'Judeau',FALSE,1),(gen_random_uuid(),q,'Corkus',FALSE,2),(gen_random_uuid(),q,'Pippin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'fill_blank','easy','O evento sobrenatural ritualístico no qual Griffith sacrifica seus companheiros para renascer como demônio poderoso se chama ___.','Este evento é considerado o ponto de virada mais sombrio de toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Eclipse',TRUE,0),(gen_random_uuid(),q,'Convergência',FALSE,1),(gen_random_uuid(),q,'Ritual das Trevas',FALSE,2),(gen_random_uuid(),q,'Renascimento Sombrio',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'fill_blank','easy','A marca amaldiçoada gravada no corpo de Guts, que atrai constantemente criaturas demoníacas, é chamada de ___.','Ela é resultado direto do sacrifício ritualístico ocorrido durante o Eclipse.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Marca do Sacrifício',TRUE,0),(gen_random_uuid(),q,'Selo Demoníaco',FALSE,1),(gen_random_uuid(),q,'Marca das Trevas',FALSE,2),(gen_random_uuid(),q,'Cicatriz do Eclipse',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'fill_blank','easy','O grupo de cinco entidades demoníacas supremas responsáveis por conceder poder através de rituais sombrios é chamado de ___.','Griffith se torna um deles após o evento do Eclipse.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Deuses da Mão',TRUE,0),(gen_random_uuid(),q,'Apóstolos',FALSE,1),(gen_random_uuid(),q,'Cavaleiros das Trevas',FALSE,2),(gen_random_uuid(),q,'Espectros',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'fill_blank','easy','O estranho ser anão, guia espiritual constante que acompanha Guts após os eventos do Eclipse, se chama ___.','Ele foi resgatado por Guts de uma situação perigosa antes de se tornar seu companheiro fiel.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Puck',TRUE,0),(gen_random_uuid(),q,'Isidro',FALSE,1),(gen_random_uuid(),q,'Ivalera',FALSE,2),(gen_random_uuid(),q,'Godo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'fill_blank','medium','O reino que Griffith planeja conquistar e governar como sua ambição principal desde o início da série se chama ___.','Sua obsessão por esse objetivo motiva grande parte de suas decisões drásticas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Reino de Midland',TRUE,0),(gen_random_uuid(),q,'Reino de Chuder',FALSE,1),(gen_random_uuid(),q,'Reino de Tudor',FALSE,2),(gen_random_uuid(),q,'Reino de Vritannis',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'fill_blank','medium','O reino rival contra o qual Midland trava a Guerra dos Cem Anos ao longo de grande parte da série se chama ___.','O Bando do Falcão desempenha papel crucial nas batalhas decisivas desse conflito.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Reino de Chuder',TRUE,0),(gen_random_uuid(),q,'Reino de Midland',FALSE,1),(gen_random_uuid(),q,'Reino de Tudor',FALSE,2),(gen_random_uuid(),q,'Reino de Vritannis',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'fill_blank','medium','O capitão veterano do Bando do Falcão, conhecido por sua astúcia e liderança tática experiente, se chama ___.','Ele demonstra profunda lealdade a Griffith e ao grupo mesmo em situações extremas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Corkus',TRUE,0),(gen_random_uuid(),q,'Pippin',FALSE,1),(gen_random_uuid(),q,'Judeau',FALSE,2),(gen_random_uuid(),q,'Rickert',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'fill_blank','medium','O guerreiro gigante e gentil integrante do Bando do Falcão, conhecido por sua força física impressionante, se chama ___.','Ele demonstra personalidade calma apesar de seu porte físico intimidador.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Pippin',TRUE,0),(gen_random_uuid(),q,'Corkus',FALSE,1),(gen_random_uuid(),q,'Judeau',FALSE,2),(gen_random_uuid(),q,'Zodd',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'fill_blank','medium','O membro sardento do Bando do Falcão, conhecido por sua lealdade e habilidade com adagas, se chama ___.','Ele mantém amizade próxima com Casca ao longo de toda a trajetória do grupo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Judeau',TRUE,0),(gen_random_uuid(),q,'Corkus',FALSE,1),(gen_random_uuid(),q,'Pippin',FALSE,2),(gen_random_uuid(),q,'Rickert',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'fill_blank','medium','A princesa de Midland, envolvida romanticamente com Griffith em segredo, se chama ___.','Seu relacionamento secreto é descoberto pelo próprio pai, o Rei de Midland.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Princesa Charlotte',TRUE,0),(gen_random_uuid(),q,'Farnese',FALSE,1),(gen_random_uuid(),q,'Casca',FALSE,2),(gen_random_uuid(),q,'Schierke',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'fill_blank','medium','O general rival de Griffith na corte de Midland, ressentido pela ascensão meteórica do jovem mercenário, se chama ___.','Ele representa a resistência nobre tradicional contra a meritocracia militar de Griffith.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Julius',TRUE,0),(gen_random_uuid(),q,'Boscogn',FALSE,1),(gen_random_uuid(),q,'Adon',FALSE,2),(gen_random_uuid(),q,'Wyald',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'fill_blank','medium','O sacerdote corrupto que persegue Guts e seu grupo, acreditando estarem envolvidos em heresia contra a igreja, se chama ___.','Ele comanda uma organização religiosa com poder político considerável.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mozgus',TRUE,0),(gen_random_uuid(),q,'Julius',FALSE,1),(gen_random_uuid(),q,'Adon',FALSE,2),(gen_random_uuid(),q,'Wyald',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'fill_blank','hard','A condição psicológica de trauma severo desenvolvida por Casca após os eventos catastróficos do Eclipse é chamada de ___.','Sua recuperação gradual se torna um dos objetivos centrais de Guts na segunda metade da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Regressão Mental',TRUE,0),(gen_random_uuid(),q,'Marca do Sacrifício',FALSE,1),(gen_random_uuid(),q,'Berserker Rage',FALSE,2),(gen_random_uuid(),q,'Convergência das Trevas',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'fill_blank','hard','O guerreiro mercenário brutal que ataca o Bando do Falcão em retirada, revelado como apóstolo demoníaco, se chama ___.','Sua transformação ocorre em meio ao caos da guerra civil de Midland.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Wyald',TRUE,0),(gen_random_uuid(),q,'Adon',FALSE,1),(gen_random_uuid(),q,'Boscogn',FALSE,2),(gen_random_uuid(),q,'Mozgus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'fill_blank','hard','O nobre corrupto de Midland que se transforma em apóstolo demoníaco para obter vingança contra Griffith se chama ___.','Ele é derrotado por Guts em confronto direto durante sua transformação monstruosa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Adon',TRUE,0),(gen_random_uuid(),q,'Boscogn',FALSE,1),(gen_random_uuid(),q,'Wyald',FALSE,2),(gen_random_uuid(),q,'Julius',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'fill_blank','hard','O general veterano de Midland que enfrenta Guts em duelo respeitoso antes dos eventos do Eclipse se chama ___.','Ele demonstra código de honra incomum entre os nobres da corte.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Boscogn',TRUE,0),(gen_random_uuid(),q,'Julius',FALSE,1),(gen_random_uuid(),q,'Adon',FALSE,2),(gen_random_uuid(),q,'Wyald',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'fill_blank','hard','A entidade cósmica misteriosa, observadora silenciosa que aparece em momentos-chave ligados ao destino de Guts, se chama ___.','Sua verdadeira natureza permanece parcialmente ambígua ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Void',TRUE,0),(gen_random_uuid(),q,'Zodd',FALSE,1),(gen_random_uuid(),q,'Griffith',FALSE,2),(gen_random_uuid(),q,'Slan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'fill_blank','impossible','O capitão original que lidera Guts antes de seu ingresso no Bando do Falcão, morto pouco antes dessa transição, se chama ___.','Sua morte é um dos eventos que definem a trajetória inicial de Guts como mercenário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gambino (pai adotivo)',TRUE,0),(gen_random_uuid(),q,'Godo',FALSE,1),(gen_random_uuid(),q,'Zodd',FALSE,2),(gen_random_uuid(),q,'Julius',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'fill_blank','impossible','O apóstolo demoníaco enfrentado por Guts logo após os eventos do Eclipse, durante sua jornada solitária de vingança, se chama ___.','Este confronto ocorre nos primeiros capítulos que seguem a tragédia do sacrifício.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rosine',TRUE,0),(gen_random_uuid(),q,'Adon',FALSE,1),(gen_random_uuid(),q,'Wyald',FALSE,2),(gen_random_uuid(),q,'Mozgus',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- WHO_SAID — 30 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'who_said','easy','Quem disse: "Eu não luto por um sonho maior; luto apenas para sobreviver e seguir meu próprio caminho"?','A frase reflete a filosofia solitária do protagonista da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Guts',TRUE,0),(gen_random_uuid(),q,'Griffith',FALSE,1),(gen_random_uuid(),q,'Zodd',FALSE,2),(gen_random_uuid(),q,'Judeau',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'who_said','easy','Quem disse: "Meu sonho é ter meu próprio reino, e nada, nem ninguém, vai me impedir de alcançá-lo"?','A frase reflete a ambição central do líder do Bando do Falcão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Griffith',TRUE,0),(gen_random_uuid(),q,'Guts',FALSE,1),(gen_random_uuid(),q,'Zodd',FALSE,2),(gen_random_uuid(),q,'Judeau',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'who_said','easy','Quem disse: "Eu amo Griffith desde jovem, e minha lealdade a ele nunca vacilou, mesmo diante dos maiores perigos"?','A frase é dita pela arqueira leal integrante do Bando do Falcão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Casca',TRUE,0),(gen_random_uuid(),q,'Farnese',FALSE,1),(gen_random_uuid(),q,'Schierke',FALSE,2),(gen_random_uuid(),q,'Erica',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'who_said','easy','Quem disse: "Eu respeito guerreiros de verdadeiro talento, e Guts certamente é um dos mais fortes que já enfrentei"?','A frase é dita pelo guerreiro demoníaco gigante que respeita o protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zodd',TRUE,0),(gen_random_uuid(),q,'Griffith',FALSE,1),(gen_random_uuid(),q,'Void',FALSE,2),(gen_random_uuid(),q,'Rickert',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'who_said','easy','Quem disse: "Eu forjei essa armadura especial para que você conseguisse sobreviver aos seus impulsos mais violentos"?','A frase é dita pelo artesão anão responsável pela armadura de Guts.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Godo',TRUE,0),(gen_random_uuid(),q,'Rickert',FALSE,1),(gen_random_uuid(),q,'Erica',FALSE,2),(gen_random_uuid(),q,'Zodd',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'who_said','easy','Quem disse: "Eu admiro Guts como um irmão mais velho, mesmo sabendo que ele nunca vai se ver dessa forma"?','A frase é dita pelo jovem membro do Bando do Falcão que idolatra o protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rickert',TRUE,0),(gen_random_uuid(),q,'Judeau',FALSE,1),(gen_random_uuid(),q,'Corkus',FALSE,2),(gen_random_uuid(),q,'Pippin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'who_said','medium','Quem disse: "Eu sonho em me tornar um espadachim lendário como Guts, mesmo sendo apenas um ladrão iniciante"?','A frase é dita pelo jovem que se junta a Guts como aprendiz relutante.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Isidro',TRUE,0),(gen_random_uuid(),q,'Rickert',FALSE,1),(gen_random_uuid(),q,'Corkus',FALSE,2),(gen_random_uuid(),q,'Pippin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'who_said','medium','Quem disse: "Eu domino magia elemental avançada apesar da minha idade jovem, treinada por uma feiticeira poderosa"?','A frase é dita pela jovem bruxa aprendiz que se junta ao grupo de Guts.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Schierke',TRUE,0),(gen_random_uuid(),q,'Farnese',FALSE,1),(gen_random_uuid(),q,'Casca',FALSE,2),(gen_random_uuid(),q,'Ivalera',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'who_said','medium','Quem disse: "Eu perseguia Guts por acreditar que ele era herege, mas hoje entendo que estava profundamente equivocada"?','A frase é dita pela ex-membro de uma ordem religiosa que se junta ao grupo de Guts.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Farnese',TRUE,0),(gen_random_uuid(),q,'Schierke',FALSE,1),(gen_random_uuid(),q,'Casca',FALSE,2),(gen_random_uuid(),q,'Ivalera',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'who_said','medium','Quem disse: "Eu temo a popularidade crescente de Griffith na corte, e não vou permitir que ele ofusque minha própria posição"?','A frase é dita pelo rei manipulador de Midland.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rei de Midland',TRUE,0),(gen_random_uuid(),q,'Rei de Chuder',FALSE,1),(gen_random_uuid(),q,'Julius',FALSE,2),(gen_random_uuid(),q,'Boscogn',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'who_said','medium','Quem disse: "Eu amo Griffith em segredo, mesmo sabendo dos riscos enormes que esse sentimento representa para minha posição na corte"?','A frase é dita pela princesa de Midland envolvida romanticamente com Griffith.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Princesa Charlotte',TRUE,0),(gen_random_uuid(),q,'Farnese',FALSE,1),(gen_random_uuid(),q,'Casca',FALSE,2),(gen_random_uuid(),q,'Schierke',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'who_said','medium','Quem disse: "Eu represento a nobreza tradicional, e a ascensão meteórica de um mercenário como Griffith me enche de ressentimento"?','A frase é dita pelo general rival de Griffith na corte de Midland.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Julius',TRUE,0),(gen_random_uuid(),q,'Boscogn',FALSE,1),(gen_random_uuid(),q,'Adon',FALSE,2),(gen_random_uuid(),q,'Wyald',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'who_said','hard','Quem disse: "Eu comando esta organização religiosa com mão de ferro, e todo herege encontrado será submetido a julgamento e tortura"?','A frase é dita pelo sacerdote corrupto que persegue Guts e seu grupo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mozgus',TRUE,0),(gen_random_uuid(),q,'Julius',FALSE,1),(gen_random_uuid(),q,'Adon',FALSE,2),(gen_random_uuid(),q,'Wyald',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'who_said','hard','Quem disse: "Eu ataquei o Bando do Falcão em retirada com toda a brutalidade que carrego, revelando minha verdadeira natureza demoníaca"?','A frase é dita pelo guerreiro mercenário transformado em apóstolo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Wyald',TRUE,0),(gen_random_uuid(),q,'Adon',FALSE,1),(gen_random_uuid(),q,'Boscogn',FALSE,2),(gen_random_uuid(),q,'Mozgus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'who_said','hard','Quem disse: "Eu me transformei em apóstolo demoníaco em busca de vingança contra Griffith, sacrificando toda minha humanidade nesse processo"?','A frase é dita pelo nobre corrupto de Midland derrotado por Guts.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Adon',TRUE,0),(gen_random_uuid(),q,'Boscogn',FALSE,1),(gen_random_uuid(),q,'Wyald',FALSE,2),(gen_random_uuid(),q,'Julius',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'who_said','hard','Quem disse: "Eu enfrentei Guts em duelo respeitoso antes de tudo mudar, e ainda hoje reconheço nele um verdadeiro guerreiro"?','A frase é dita pelo general veterano de Midland com código de honra incomum.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Boscogn',TRUE,0),(gen_random_uuid(),q,'Julius',FALSE,1),(gen_random_uuid(),q,'Adon',FALSE,2),(gen_random_uuid(),q,'Wyald',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'who_said','hard','Quem disse: "Eu observo em silêncio os momentos decisivos ligados ao destino de Guts, sem revelar completamente minha verdadeira natureza"?','A frase é dita pela entidade cósmica misteriosa que aparece em momentos-chave.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Void',TRUE,0),(gen_random_uuid(),q,'Zodd',FALSE,1),(gen_random_uuid(),q,'Griffith',FALSE,2),(gen_random_uuid(),q,'Slan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'who_said','impossible','Quem disse: "Eu era um mero capitão mercenário, mas ensinei a Guts tudo o que ele sabia sobre sobrevivência antes de nossa jornada terminar"?','A frase é dita, em memória, pelo pai adotivo de Guts.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gambino',TRUE,0),(gen_random_uuid(),q,'Godo',FALSE,1),(gen_random_uuid(),q,'Zodd',FALSE,2),(gen_random_uuid(),q,'Julius',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'who_said','impossible','Quem disse: "Eu enfrentei Guts logo após os eventos catastróficos, quando ele ainda vagava sozinho em sua jornada de vingança"?','A frase é dita pela apóstola demoníaca enfrentada logo após o Eclipse.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rosine',TRUE,0),(gen_random_uuid(),q,'Adon',FALSE,1),(gen_random_uuid(),q,'Wyald',FALSE,2),(gen_random_uuid(),q,'Mozgus',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- EPISODE_ARC — 15 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'episode_arc','medium','Em qual arco Guts é derrotado em duelo por Griffith e recrutado para o Bando do Falcão?','O arco estabelece a base da relação central entre os dois protagonistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Era de Ouro',TRUE,0),(gen_random_uuid(),q,'Arco do Eclipse',FALSE,1),(gen_random_uuid(),q,'Arco Negro',FALSE,2),(gen_random_uuid(),q,'Arco de Convergência',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'episode_arc','medium','Em qual arco Griffith sacrifica seus companheiros durante um ritual sombrio, renascendo como demônio poderoso?','Este é o evento mais devastador e transformador de toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Eclipse',TRUE,0),(gen_random_uuid(),q,'Arco da Era de Ouro',FALSE,1),(gen_random_uuid(),q,'Arco Negro',FALSE,2),(gen_random_uuid(),q,'Arco de Convergência',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'episode_arc','medium','Em qual arco Guts vaga sozinho em busca de vingança contra os Deuses da Mão, enfrentando diversos apóstolos demoníacos?','Este período sombrio da trajetória do protagonista precede a formação de seu novo grupo de aliados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco Negro',TRUE,0),(gen_random_uuid(),q,'Arco da Era de Ouro',FALSE,1),(gen_random_uuid(),q,'Arco do Eclipse',FALSE,2),(gen_random_uuid(),q,'Arco de Convergência',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'episode_arc','medium','Em qual arco Guts busca resgatar Casca de sua condição de trauma severo, enfrentando criaturas atraídas pela marca do sacrifício?','O arco introduz Farnese, Schierke e Isidro como novos aliados do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Convergência',TRUE,0),(gen_random_uuid(),q,'Arco da Era de Ouro',FALSE,1),(gen_random_uuid(),q,'Arco do Eclipse',FALSE,2),(gen_random_uuid(),q,'Arco Negro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'episode_arc','medium','Em qual arco o Bando do Falcão alcança seu auge militar durante a Guerra dos Cem Anos, incluindo a prisão dramática de Griffith?','O arco culmina diretamente nos eventos que levam ao Eclipse.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Era de Ouro',TRUE,0),(gen_random_uuid(),q,'Arco do Eclipse',FALSE,1),(gen_random_uuid(),q,'Arco Negro',FALSE,2),(gen_random_uuid(),q,'Arco de Convergência',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'episode_arc','medium','Em qual arco Mozgus e sua organização religiosa perseguem Guts e seu grupo, acreditando estarem lidando com heresia?','Farnese começa sua jornada de transformação pessoal durante este confronto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Convergência',TRUE,0),(gen_random_uuid(),q,'Arco da Era de Ouro',FALSE,1),(gen_random_uuid(),q,'Arco do Eclipse',FALSE,2),(gen_random_uuid(),q,'Arco Negro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'episode_arc','hard','Em qual arco Guts enfrenta Rosine, apóstola demoníaca, logo após os eventos do Eclipse, ainda vagando sozinho pelo mundo?','O confronto ocorre nos primeiros momentos que sucedem a tragédia do sacrifício.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco Negro',TRUE,0),(gen_random_uuid(),q,'Arco da Era de Ouro',FALSE,1),(gen_random_uuid(),q,'Arco do Eclipse',FALSE,2),(gen_random_uuid(),q,'Arco de Convergência',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'episode_arc','hard','Em qual arco é revelado o relacionamento secreto entre Griffith e a Princesa Charlotte, desencadeando sua prisão dramática pelo Rei de Midland?','A revelação ocorre nos momentos finais que precedem a tragédia do Eclipse.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Era de Ouro',TRUE,0),(gen_random_uuid(),q,'Arco do Eclipse',FALSE,1),(gen_random_uuid(),q,'Arco Negro',FALSE,2),(gen_random_uuid(),q,'Arco de Convergência',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'episode_arc','hard','Em qual arco Wyald e seu grupo atacam o Bando do Falcão em retirada, revelando sua verdadeira natureza como apóstolo demoníaco?','Este confronto ocorre imediatamente após a fuga de Griffith da prisão de Midland.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Eclipse',TRUE,0),(gen_random_uuid(),q,'Arco da Era de Ouro',FALSE,1),(gen_random_uuid(),q,'Arco Negro',FALSE,2),(gen_random_uuid(),q,'Arco de Convergência',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'episode_arc','hard','Em qual arco Schierke se junta ao grupo de Guts, demonstrando domínio de magia elemental apesar de sua idade jovem?','Ela se torna essencial para lidar com as criaturas sobrenaturais que perseguem o grupo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Convergência',TRUE,0),(gen_random_uuid(),q,'Arco da Era de Ouro',FALSE,1),(gen_random_uuid(),q,'Arco do Eclipse',FALSE,2),(gen_random_uuid(),q,'Arco Negro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'episode_arc','impossible','Em qual arco é revelado o passado completo de Griffith antes da formação do Bando do Falcão, incluindo seu primeiro encontro com Guts?','A revelação ocorre através de flashbacks extensos durante o auge militar do grupo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Era de Ouro',TRUE,0),(gen_random_uuid(),q,'Arco do Eclipse',FALSE,1),(gen_random_uuid(),q,'Arco Negro',FALSE,2),(gen_random_uuid(),q,'Arco de Convergência',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'episode_arc','impossible','Em qual arco é revelado o passado completo de Farnese como ex-membro de uma ordem religiosa antes de sua crise de fé?','A revelação ocorre através de flashbacks durante o confronto com Mozgus e sua organização.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Convergência',TRUE,0),(gen_random_uuid(),q,'Arco da Era de Ouro',FALSE,1),(gen_random_uuid(),q,'Arco do Eclipse',FALSE,2),(gen_random_uuid(),q,'Arco Negro',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- CHRONOLOGICAL — 7 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'chronological','hard','Ordene cronologicamente os arcos a seguir, do mais antigo ao mais recente.','Cobrem desde a formação do Bando do Falcão até a busca por Casca.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Era de Ouro',TRUE,0),(gen_random_uuid(),q,'Eclipse',FALSE,1),(gen_random_uuid(),q,'Negro',FALSE,2),(gen_random_uuid(),q,'Convergência',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'chronological','hard','Ordene cronologicamente os seguintes eventos da jornada de Guts, do mais antigo ao mais recente.','Cobrem desde sua derrota por Griffith até a busca por Casca.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'É derrotado e recrutado por Griffith',TRUE,0),(gen_random_uuid(),q,'Testemunha o sacrifício durante o Eclipse',FALSE,1),(gen_random_uuid(),q,'Vaga sozinho enfrentando apóstolos demoníacos',FALSE,2),(gen_random_uuid(),q,'Busca resgatar Casca de sua condição traumática',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre Griffith, do mais antigo ao mais recente.','Cobrem desde a formação do Bando do Falcão até seu renascimento demoníaco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Forma o Bando do Falcão',TRUE,0),(gen_random_uuid(),q,'É preso pelo Rei de Midland',FALSE,1),(gen_random_uuid(),q,'É resgatado pelo Bando do Falcão',FALSE,2),(gen_random_uuid(),q,'Sacrifica seus companheiros durante o Eclipse',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre o Bando do Falcão, do mais antigo ao mais recente.','Cobrem desde as primeiras vitórias militares até o massacre do Eclipse.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Conquista vitórias na Guerra dos Cem Anos',TRUE,0),(gen_random_uuid(),q,'Resgata Griffith da prisão de Midland',FALSE,1),(gen_random_uuid(),q,'É atacado por Wyald em retirada',FALSE,2),(gen_random_uuid(),q,'É massacrado durante o ritual do Eclipse',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Casca, do mais antigo ao mais recente.','Cobrem desde sua devoção a Griffith até sua recuperação gradual sob os cuidados de Guts.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Demonstra devoção absoluta a Griffith',TRUE,0),(gen_random_uuid(),q,'Sobrevive ao massacre do Eclipse',FALSE,1),(gen_random_uuid(),q,'Desenvolve regressão mental severa',FALSE,2),(gen_random_uuid(),q,'Inicia recuperação gradual sob cuidados de Guts',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre o grupo de aliados de Guts após o Eclipse, do mais antigo ao mais recente.','Cobrem desde o encontro com Isidro até a chegada de Farnese e Schierke.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Isidro se junta a Guts como aprendiz',TRUE,0),(gen_random_uuid(),q,'Farnese persegue o grupo por heresia',FALSE,1),(gen_random_uuid(),q,'Farnese passa a integrar o grupo',FALSE,2),(gen_random_uuid(),q,'Schierke se junta ao grupo com seus poderes mágicos',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre a corte de Midland, do mais antigo ao mais recente.','Cobrem desde a ascensão de Griffith até sua prisão dramática.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Griffith conquista popularidade crescente na corte',TRUE,0),(gen_random_uuid(),q,'Griffith inicia relacionamento secreto com a princesa',FALSE,1),(gen_random_uuid(),q,'O Rei de Midland descobre o caso secreto',FALSE,2),(gen_random_uuid(),q,'Griffith é preso e torturado por ordem real',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- COMPLEMENTO — fechar 150 perguntas (24 text / 12 fill_blank / 11 who_said / 3 episode_arc)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','easy','Qual desses personagens é dono da esposa demoníaca Slan, integrante dos Deuses da Mão que concede poder através de sacrifícios?','Ele guia Griffith durante o processo de sacrifício ritualístico do Eclipse.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Void',TRUE,0),(gen_random_uuid(),q,'Zodd',FALSE,1),(gen_random_uuid(),q,'Griffith',FALSE,2),(gen_random_uuid(),q,'Wyald',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','easy','Qual desses personagens protege uma jovem em uma vila pacífica antes de retomar sua jornada de vingança contra os Deuses da Mão?','Este episódio representa um breve período de paz na trajetória sombria do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Guts',TRUE,0),(gen_random_uuid(),q,'Griffith',FALSE,1),(gen_random_uuid(),q,'Judeau',FALSE,2),(gen_random_uuid(),q,'Zodd',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','medium','Qual desses personagens é apóstola poderosa envolvida diretamente nos eventos que moldam o destino de Griffith após o Eclipse?','Ela desempenha papel crucial nos bastidores dos Deuses da Mão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Slan',TRUE,0),(gen_random_uuid(),q,'Rosine',FALSE,1),(gen_random_uuid(),q,'Ivalera',FALSE,2),(gen_random_uuid(),q,'Erica',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','medium','Qual desses personagens é pequeno espírito elemental capturado por Schierke, usado como familiar mágico em seus feitiços?','Ela se comunica com Puck através de laços mágicos incomuns.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ivalera',TRUE,0),(gen_random_uuid(),q,'Puck',FALSE,1),(gen_random_uuid(),q,'Isidro',FALSE,2),(gen_random_uuid(),q,'Erica',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','hard','Qual desses personagens acompanha Griffith durante o momento decisivo do sacrifício, sendo o mais próximo dos Deuses da Mão presente na cena?','Ele guia o processo ritualístico que transforma Griffith em demônio poderoso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Void',TRUE,0),(gen_random_uuid(),q,'Slan',FALSE,1),(gen_random_uuid(),q,'Zodd',FALSE,2),(gen_random_uuid(),q,'Ubik',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','impossible','Qual desses personagens é membro dos Deuses da Mão conhecido por sua aparência infantil e comportamento manipulador entre os cinco demônios?','Ele completa o grupo de entidades supremas ao lado de Void e Slan.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ubik',TRUE,0),(gen_random_uuid(),q,'Void',FALSE,1),(gen_random_uuid(),q,'Slan',FALSE,2),(gen_random_uuid(),q,'Conrad',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','hard','Qual desses personagens completa o grupo dos Deuses da Mão, reconhecido por sua aparência serena e postura filosófica entre os demônios?','Ele integra o conselho supremo ao lado de Void, Slan e Ubik.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Conrad',TRUE,0),(gen_random_uuid(),q,'Ubik',FALSE,1),(gen_random_uuid(),q,'Void',FALSE,2),(gen_random_uuid(),q,'Slan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','medium','Qual desses personagens protegeu Guts durante sua breve estadia em uma vila pacífica, representando um raro momento de trégua na trama?','Sua presença ilustra o contraste entre a vida violenta do protagonista e momentos de calmaria.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Erica',TRUE,0),(gen_random_uuid(),q,'Ivalera',FALSE,1),(gen_random_uuid(),q,'Rosine',FALSE,2),(gen_random_uuid(),q,'Slan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','easy','Qual desses personagens compõe o conselho supremo de cinco demônios responsáveis por conceder poder através de sacrifícios rituais?','Griffith se junta a este grupo exclusivo após os eventos do Eclipse.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ubik',TRUE,0),(gen_random_uuid(),q,'Judeau',FALSE,1),(gen_random_uuid(),q,'Rickert',FALSE,2),(gen_random_uuid(),q,'Corkus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','medium','Qual desses personagens demonstra postura filosófica serena entre os cinco demônios supremos, contrastando com a crueldade dos demais membros?','Ele integra o conselho junto com Void, Slan e Ubik.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Conrad',TRUE,0),(gen_random_uuid(),q,'Ubik',FALSE,1),(gen_random_uuid(),q,'Void',FALSE,2),(gen_random_uuid(),q,'Slan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','hard','Qual desses personagens é o principal guia entre os Deuses da Mão durante o ritual que transforma Griffith em demônio supremo?','Sua voz orienta as decisões finais durante o sacrifício do Bando do Falcão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Void',TRUE,0),(gen_random_uuid(),q,'Slan',FALSE,1),(gen_random_uuid(),q,'Ubik',FALSE,2),(gen_random_uuid(),q,'Conrad',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','impossible','Qual desses personagens é apóstola envolvida nos bastidores dos Deuses da Mão, com influência direta sobre eventos que moldam o destino de Griffith?','Ela é frequentemente associada a Void dentro da hierarquia demoníaca.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Slan',TRUE,0),(gen_random_uuid(),q,'Rosine',FALSE,1),(gen_random_uuid(),q,'Ivalera',FALSE,2),(gen_random_uuid(),q,'Erica',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','medium','Qual desses personagens tem aparência infantil, mas comportamento manipulador dentro do conselho supremo dos cinco demônios?','Ele contrasta em aparência com a gravidade de suas decisões dentro do grupo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ubik',TRUE,0),(gen_random_uuid(),q,'Void',FALSE,1),(gen_random_uuid(),q,'Slan',FALSE,2),(gen_random_uuid(),q,'Conrad',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','hard','Qual desses personagens guia o ritual sombrio que transforma companheiros do Bando do Falcão em sacrifício para o renascimento de Griffith?','Sua presença domina a cena do Eclipse ao lado dos demais Deuses da Mão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Void',TRUE,0),(gen_random_uuid(),q,'Zodd',FALSE,1),(gen_random_uuid(),q,'Griffith',FALSE,2),(gen_random_uuid(),q,'Wyald',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','impossible','Qual desses personagens familiar mágico serve Schierke em seus feitiços, comunicando-se com Puck através de laços incomuns?','Ela acompanha o grupo em suas jornadas contra criaturas sobrenaturais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ivalera',TRUE,0),(gen_random_uuid(),q,'Puck',FALSE,1),(gen_random_uuid(),q,'Isidro',FALSE,2),(gen_random_uuid(),q,'Erica',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','easy','Qual desses personagens é esposa demoníaca de Void, com influência considerável sobre os eventos que moldam o destino de Griffith?','Ela integra os Deuses da Mão ao lado de Void, Ubik e Conrad.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Slan',TRUE,0),(gen_random_uuid(),q,'Rosine',FALSE,1),(gen_random_uuid(),q,'Ivalera',FALSE,2),(gen_random_uuid(),q,'Erica',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','medium','Qual desses personagens completa o conselho dos Deuses da Mão com postura filosófica serena, contrastando com a crueldade típica do grupo?','Ele raramente interfere diretamente nos eventos, preferindo observar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Conrad',TRUE,0),(gen_random_uuid(),q,'Ubik',FALSE,1),(gen_random_uuid(),q,'Void',FALSE,2),(gen_random_uuid(),q,'Slan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','hard','Qual desses personagens conduz o ritual final que confirma a transformação de Griffith em membro supremo dos Deuses da Mão?','Sua liderança dentro do grupo demoníaco é inquestionável.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Void',TRUE,0),(gen_random_uuid(),q,'Slan',FALSE,1),(gen_random_uuid(),q,'Ubik',FALSE,2),(gen_random_uuid(),q,'Conrad',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','impossible','Qual desses personagens demonstra comportamento manipulador com aparência infantil dentro do grupo dos cinco demônios supremos?','Ele frequentemente provoca os demais membros com comentários sarcásticos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ubik',TRUE,0),(gen_random_uuid(),q,'Void',FALSE,1),(gen_random_uuid(),q,'Slan',FALSE,2),(gen_random_uuid(),q,'Conrad',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','medium','Qual desses personagens protegeu uma jovem chamada Erica em uma vila pacífica, revelando um lado mais gentil do protagonista?','Este momento contrasta com a violência constante de sua jornada de vingança.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Guts',TRUE,0),(gen_random_uuid(),q,'Griffith',FALSE,1),(gen_random_uuid(),q,'Judeau',FALSE,2),(gen_random_uuid(),q,'Zodd',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','hard','Qual desses personagens é considerado o líder mais influente entre os Deuses da Mão, guiando decisões estratégicas do grupo demoníaco?','Sua influência sobre Griffith é decisiva durante o Eclipse.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Void',TRUE,0),(gen_random_uuid(),q,'Slan',FALSE,1),(gen_random_uuid(),q,'Ubik',FALSE,2),(gen_random_uuid(),q,'Conrad',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','impossible','Qual desses personagens é integrante feminina influente dos Deuses da Mão, com papel ativo nos eventos que moldam o destino de Griffith após o sacrifício?','Ela mantém proximidade estratégica com Void dentro do grupo demoníaco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Slan',TRUE,0),(gen_random_uuid(),q,'Rosine',FALSE,1),(gen_random_uuid(),q,'Ivalera',FALSE,2),(gen_random_uuid(),q,'Erica',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','hard','Qual desses personagens é membro dos Deuses da Mão que raramente interfere diretamente, preferindo observar os eventos com serenidade filosófica?','Ele integra o conselho supremo junto a Void, Slan e Ubik.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Conrad',TRUE,0),(gen_random_uuid(),q,'Ubik',FALSE,1),(gen_random_uuid(),q,'Void',FALSE,2),(gen_random_uuid(),q,'Slan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'text','impossible','Qual desses personagens conduziu pessoalmente o ritual que confirmou a ascensão de Griffith ao posto supremo entre os Deuses da Mão?','Sua liderança dentro do conselho demoníaco é considerada inquestionável.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Void',TRUE,0),(gen_random_uuid(),q,'Slan',FALSE,1),(gen_random_uuid(),q,'Ubik',FALSE,2),(gen_random_uuid(),q,'Conrad',FALSE,3);

    -- fill_blank complemento (12)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'fill_blank','easy','O dono da esposa demoníaca Slan, integrante dos Deuses da Mão, se chama ___.','Ele guia Griffith durante o processo de sacrifício ritualístico do Eclipse.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Void',TRUE,0),(gen_random_uuid(),q,'Zodd',FALSE,1),(gen_random_uuid(),q,'Griffith',FALSE,2),(gen_random_uuid(),q,'Wyald',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'fill_blank','medium','A apóstola poderosa envolvida diretamente nos eventos que moldam o destino de Griffith após o Eclipse se chama ___.','Ela desempenha papel crucial nos bastidores dos Deuses da Mão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Slan',TRUE,0),(gen_random_uuid(),q,'Rosine',FALSE,1),(gen_random_uuid(),q,'Ivalera',FALSE,2),(gen_random_uuid(),q,'Erica',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'fill_blank','medium','O pequeno espírito elemental capturado por Schierke, usado como familiar mágico em seus feitiços, se chama ___.','Ela se comunica com Puck através de laços mágicos incomuns.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ivalera',TRUE,0),(gen_random_uuid(),q,'Puck',FALSE,1),(gen_random_uuid(),q,'Isidro',FALSE,2),(gen_random_uuid(),q,'Erica',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'fill_blank','hard','O membro dos Deuses da Mão conhecido por sua aparência infantil e comportamento manipulador se chama ___.','Ele completa o grupo de entidades supremas ao lado de Void e Slan.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ubik',TRUE,0),(gen_random_uuid(),q,'Void',FALSE,1),(gen_random_uuid(),q,'Slan',FALSE,2),(gen_random_uuid(),q,'Conrad',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'fill_blank','hard','O membro dos Deuses da Mão reconhecido por sua aparência serena e postura filosófica entre os demônios se chama ___.','Ele integra o conselho supremo ao lado de Void, Slan e Ubik.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Conrad',TRUE,0),(gen_random_uuid(),q,'Ubik',FALSE,1),(gen_random_uuid(),q,'Void',FALSE,2),(gen_random_uuid(),q,'Slan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'fill_blank','medium','A jovem protegida por Guts em uma vila pacífica antes de retomar sua jornada de vingança se chama ___.','Sua presença ilustra o contraste entre a vida violenta do protagonista e momentos de calmaria.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Erica',TRUE,0),(gen_random_uuid(),q,'Ivalera',FALSE,1),(gen_random_uuid(),q,'Rosine',FALSE,2),(gen_random_uuid(),q,'Slan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'fill_blank','easy','O guia principal entre os Deuses da Mão durante o ritual que transforma Griffith em demônio supremo se chama ___.','Sua voz orienta as decisões finais durante o sacrifício do Bando do Falcão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Void',TRUE,0),(gen_random_uuid(),q,'Slan',FALSE,1),(gen_random_uuid(),q,'Ubik',FALSE,2),(gen_random_uuid(),q,'Conrad',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'fill_blank','hard','O membro do conselho supremo com postura filosófica serena, contrastando com a crueldade dos demais Deuses da Mão, se chama ___.','Ele raramente interfere diretamente nos eventos, preferindo observar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Conrad',TRUE,0),(gen_random_uuid(),q,'Ubik',FALSE,1),(gen_random_uuid(),q,'Void',FALSE,2),(gen_random_uuid(),q,'Slan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'fill_blank','medium','A esposa demoníaca de Void, com influência considerável sobre os eventos que moldam o destino de Griffith, se chama ___.','Ela integra os Deuses da Mão ao lado de Void, Ubik e Conrad.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Slan',TRUE,0),(gen_random_uuid(),q,'Rosine',FALSE,1),(gen_random_uuid(),q,'Ivalera',FALSE,2),(gen_random_uuid(),q,'Erica',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'fill_blank','hard','O líder mais influente entre os Deuses da Mão, guiando decisões estratégicas do grupo demoníaco, se chama ___.','Sua influência sobre Griffith é decisiva durante o Eclipse.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Void',TRUE,0),(gen_random_uuid(),q,'Slan',FALSE,1),(gen_random_uuid(),q,'Ubik',FALSE,2),(gen_random_uuid(),q,'Conrad',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'fill_blank','impossible','A integrante feminina influente dos Deuses da Mão, com papel ativo nos eventos que moldam o destino de Griffith, se chama ___.','Ela mantém proximidade estratégica com Void dentro do grupo demoníaco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Slan',TRUE,0),(gen_random_uuid(),q,'Rosine',FALSE,1),(gen_random_uuid(),q,'Ivalera',FALSE,2),(gen_random_uuid(),q,'Erica',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'fill_blank','impossible','O membro dos Deuses da Mão com aparência infantil, mas comportamento manipulador, que frequentemente provoca os demais com sarcasmo, se chama ___.','Ele contrasta em aparência com a gravidade de suas decisões dentro do grupo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ubik',TRUE,0),(gen_random_uuid(),q,'Void',FALSE,1),(gen_random_uuid(),q,'Slan',FALSE,2),(gen_random_uuid(),q,'Conrad',FALSE,3);

    -- who_said complemento (11)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'who_said','easy','Quem disse: "Eu guio o ritual que transforma mortais ambiciosos em demônios supremos, e Griffith provou ser digno dessa transformação"?','A frase é dita pelo líder entre os Deuses da Mão durante o Eclipse.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Void',TRUE,0),(gen_random_uuid(),q,'Slan',FALSE,1),(gen_random_uuid(),q,'Ubik',FALSE,2),(gen_random_uuid(),q,'Conrad',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'who_said','medium','Quem disse: "Eu mantenho influência considerável sobre os eventos que moldam o destino de Griffith, sempre ao lado de Void"?','A frase é dita pela apóstola poderosa dos Deuses da Mão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Slan',TRUE,0),(gen_random_uuid(),q,'Rosine',FALSE,1),(gen_random_uuid(),q,'Ivalera',FALSE,2),(gen_random_uuid(),q,'Erica',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'who_said','medium','Quem disse: "Eu possuo aparência infantil, mas minha influência dentro do conselho demoníaco é maior do que muitos imaginam"?','A frase é dita pelo membro manipulador dos Deuses da Mão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ubik',TRUE,0),(gen_random_uuid(),q,'Void',FALSE,1),(gen_random_uuid(),q,'Slan',FALSE,2),(gen_random_uuid(),q,'Conrad',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'who_said','hard','Quem disse: "Eu prefiro observar em silêncio, mantendo postura filosófica serena mesmo diante da crueldade dos meus companheiros demoníacos"?','A frase é dita pelo membro sereno dos Deuses da Mão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Conrad',TRUE,0),(gen_random_uuid(),q,'Ubik',FALSE,1),(gen_random_uuid(),q,'Void',FALSE,2),(gen_random_uuid(),q,'Slan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'who_said','hard','Quem disse: "Eu me comunico com Puck através de laços mágicos incomuns, servindo Schierke fielmente em seus feitiços"?','A frase é dita pelo pequeno espírito elemental familiar de Schierke.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ivalera',TRUE,0),(gen_random_uuid(),q,'Puck',FALSE,1),(gen_random_uuid(),q,'Isidro',FALSE,2),(gen_random_uuid(),q,'Erica',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'who_said','easy','Quem disse: "Eu vivi um breve momento de paz numa vila protegida por Guts, antes que ele retomasse sua jornada de vingança"?','A frase é dita pela jovem protegida pelo protagonista em uma vila pacífica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Erica',TRUE,0),(gen_random_uuid(),q,'Ivalera',FALSE,1),(gen_random_uuid(),q,'Rosine',FALSE,2),(gen_random_uuid(),q,'Slan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'who_said','medium','Quem disse: "Eu sou o guia supremo do ritual que transforma o Bando do Falcão em sacrifício para o renascimento de Griffith"?','A frase é dita pelo principal Deus da Mão presente durante o Eclipse.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Void',TRUE,0),(gen_random_uuid(),q,'Slan',FALSE,1),(gen_random_uuid(),q,'Ubik',FALSE,2),(gen_random_uuid(),q,'Conrad',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'who_said','hard','Quem disse: "Eu integro o conselho dos cinco demônios supremos, mantendo minha postura filosófica mesmo em meio ao caos do sacrifício"?','A frase é dita pelo membro sereno dos Deuses da Mão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Conrad',TRUE,0),(gen_random_uuid(),q,'Ubik',FALSE,1),(gen_random_uuid(),q,'Void',FALSE,2),(gen_random_uuid(),q,'Slan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'who_said','hard','Quem disse: "Eu sou esposa de Void, e minha proximidade estratégica com ele me garante influência considerável sobre o destino de Griffith"?','A frase é dita pela apóstola influente dos Deuses da Mão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Slan',TRUE,0),(gen_random_uuid(),q,'Rosine',FALSE,1),(gen_random_uuid(),q,'Ivalera',FALSE,2),(gen_random_uuid(),q,'Erica',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'who_said','impossible','Quem disse: "Eu provoco os demais membros do conselho com comentários sarcásticos, apesar de minha aparência claramente infantil"?','A frase é dita pelo membro manipulador dos Deuses da Mão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ubik',TRUE,0),(gen_random_uuid(),q,'Void',FALSE,1),(gen_random_uuid(),q,'Slan',FALSE,2),(gen_random_uuid(),q,'Conrad',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'who_said','impossible','Quem disse: "Eu conduzo o ritual final que confirma a transformação de Griffith em membro supremo do nosso conselho demoníaco"?','A frase é dita pelo líder inquestionável dos Deuses da Mão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Void',TRUE,0),(gen_random_uuid(),q,'Slan',FALSE,1),(gen_random_uuid(),q,'Ubik',FALSE,2),(gen_random_uuid(),q,'Conrad',FALSE,3);

    -- episode_arc complemento (3)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'episode_arc','medium','Em qual arco Guts protege uma jovem chamada Erica em uma vila pacífica, revelando um lado mais gentil apesar de sua jornada violenta?','Este episódio ocorre durante o período em que Guts vaga sozinho após o Eclipse.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco Negro',TRUE,0),(gen_random_uuid(),q,'Arco da Era de Ouro',FALSE,1),(gen_random_uuid(),q,'Arco do Eclipse',FALSE,2),(gen_random_uuid(),q,'Arco de Convergência',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'episode_arc','hard','Em qual arco é revelada a composição completa dos Deuses da Mão, incluindo Void, Slan, Ubik e Conrad, durante o ritual do sacrifício?','A revelação ocorre nos momentos finais do massacre do Bando do Falcão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Eclipse',TRUE,0),(gen_random_uuid(),q,'Arco da Era de Ouro',FALSE,1),(gen_random_uuid(),q,'Arco Negro',FALSE,2),(gen_random_uuid(),q,'Arco de Convergência',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bs,'episode_arc','impossible','Em qual arco é revelado o papel específico de Slan como esposa de Void, influenciando ativamente o destino de Griffith após sua transformação?','A revelação ocorre através de referências durante os eventos posteriores ao Eclipse.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Eclipse',TRUE,0),(gen_random_uuid(),q,'Arco da Era de Ouro',FALSE,1),(gen_random_uuid(),q,'Arco Negro',FALSE,2),(gen_random_uuid(),q,'Arco de Convergência',FALSE,3);

END $$;
