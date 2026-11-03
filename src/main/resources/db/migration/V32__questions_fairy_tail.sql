-- ============================================================
--  V32 — Seed de perguntas: Fairy Tail (150 perguntas)
--  Fonte: MyAnimeList + cânone do anime
--  Distribuição: text 40% / fill_blank 25% / who_said 20% /
--                episode_arc 10% / chronological 5%
--  Sem repetição com V5. Regras R1-R7 aplicadas.
-- ============================================================

DO $$
DECLARE
    v_system UUID := '00000000-0000-0000-0000-000000000001';
    v_ft     UUID;
    q        UUID;
BEGIN
    SELECT id INTO v_ft FROM animes WHERE slug = 'fairy-tail' LIMIT 1;

    -- ══════════════════════════════════════════════════════════
    -- TEXT — 60 perguntas (18 easy / 21 medium / 15 hard / 6 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','easy','Qual é o nome da maga celestial que se junta à guilda logo no primeiro episódio da série?','Ela possui chaves douradas e prateadas capazes de invocar espíritos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Lucy Heartfilia',TRUE,0),(gen_random_uuid(),q,'Erza Scarlet',FALSE,1),(gen_random_uuid(),q,'Wendy Marvell',FALSE,2),(gen_random_uuid(),q,'Juvia Lockser',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','easy','Qual é o nome do mago de gelo, rival amistoso de Natsu dentro da guilda?','Ele possui o hábito curioso de tirar a roupa sem perceber.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gray Fullbuster',TRUE,0),(gen_random_uuid(),q,'Gajeel Redfox',FALSE,1),(gen_random_uuid(),q,'Laxus Dreyar',FALSE,2),(gen_random_uuid(),q,'Elfman Strauss',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','easy','Qual é o nome da maga guerreira conhecida como "Rainha das Fadas", capaz de trocar de armadura em combate?','Ela é uma das figuras mais respeitadas e temidas da guilda.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Erza Scarlet',TRUE,0),(gen_random_uuid(),q,'Lucy Heartfilia',FALSE,1),(gen_random_uuid(),q,'Mirajane Strauss',FALSE,2),(gen_random_uuid(),q,'Cana Alberona',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','easy','Qual é o nome do gato azul falante e voador, companheiro constante de Natsu?','Ele possui a habilidade de crescer asas para voar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Happy',TRUE,0),(gen_random_uuid(),q,'Carla',FALSE,1),(gen_random_uuid(),q,'Panther Lily',FALSE,2),(gen_random_uuid(),q,'Plue',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','easy','Qual é o nome da gata branca falante, companheira de Wendy Marvell?','Ela possui personalidade mais séria e rígida em comparação a Happy.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Carla',TRUE,0),(gen_random_uuid(),q,'Happy',FALSE,1),(gen_random_uuid(),q,'Panther Lily',FALSE,2),(gen_random_uuid(),q,'Plue',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','easy','Qual é o nome da jovem maga do Matador de Dragão do Céu, especialista em magia de cura e vento?','Ela é a mais jovem entre os principais Matadores de Dragão apresentados na série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Wendy Marvell',TRUE,0),(gen_random_uuid(),q,'Lucy Heartfilia',FALSE,1),(gen_random_uuid(),q,'Levy McGarden',FALSE,2),(gen_random_uuid(),q,'Juvia Lockser',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','easy','Qual é o nome do mago de ferro, ex-membro de uma guilda sombria, apaixonado por Levy?','Ele possui magia do Matador de Dragão do Ferro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gajeel Redfox',TRUE,0),(gen_random_uuid(),q,'Gray Fullbuster',FALSE,1),(gen_random_uuid(),q,'Laxus Dreyar',FALSE,2),(gen_random_uuid(),q,'Elfman Strauss',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','easy','Qual é o nome da maga apaixonada por Gray, capaz de controlar e se transformar em água?','Ela costuma imaginar cenários românticos elaborados envolvendo Gray.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Juvia Lockser',TRUE,0),(gen_random_uuid(),q,'Lucy Heartfilia',FALSE,1),(gen_random_uuid(),q,'Levy McGarden',FALSE,2),(gen_random_uuid(),q,'Mirajane Strauss',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','easy','Qual é o nome da bibliotecária da guilda, especialista em magia de escrita?','Ela é apaixonada por Gajeel, apesar do início conturbado entre os dois.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Levy McGarden',TRUE,0),(gen_random_uuid(),q,'Juvia Lockser',FALSE,1),(gen_random_uuid(),q,'Lucy Heartfilia',FALSE,2),(gen_random_uuid(),q,'Cana Alberona',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','easy','Qual é o nome da maga de cartas do tarô, filha secreta do mestre da guilda?','Ela costuma beber grandes quantidades de bebida alcoólica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cana Alberona',TRUE,0),(gen_random_uuid(),q,'Levy McGarden',FALSE,1),(gen_random_uuid(),q,'Mirajane Strauss',FALSE,2),(gen_random_uuid(),q,'Juvia Lockser',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','easy','Qual é o nome da ex-maga demoníaca que se torna garçonete e recepcionista da guilda?','Ela é irmã mais velha de Elfman e Lisanna Strauss.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mirajane Strauss',TRUE,0),(gen_random_uuid(),q,'Erza Scarlet',FALSE,1),(gen_random_uuid(),q,'Cana Alberona',FALSE,2),(gen_random_uuid(),q,'Levy McGarden',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','easy','Qual é o nome do irmão de Mirajane, especialista em magia de transformação corporal em bestas?','Ele repete constantemente frases sobre o que é ser "homem de verdade".',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Elfman Strauss',TRUE,0),(gen_random_uuid(),q,'Gray Fullbuster',FALSE,1),(gen_random_uuid(),q,'Gajeel Redfox',FALSE,2),(gen_random_uuid(),q,'Laxus Dreyar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','easy','Qual é o nome da irmã mais nova de Mirajane e Elfman, também maga da guilda?','Ela desaparece por anos, sendo considerada morta antes de retornar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Lisanna Strauss',TRUE,0),(gen_random_uuid(),q,'Mirajane Strauss',FALSE,1),(gen_random_uuid(),q,'Levy McGarden',FALSE,2),(gen_random_uuid(),q,'Cana Alberona',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','easy','Qual é o nome do neto do mestre da guilda, mago de magia de raio extremamente poderoso?','Ele se torna temporariamente vilão antes de retornar como aliado leal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Laxus Dreyar',TRUE,0),(gen_random_uuid(),q,'Gajeel Redfox',FALSE,1),(gen_random_uuid(),q,'Gray Fullbuster',FALSE,2),(gen_random_uuid(),q,'Elfman Strauss',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','easy','Qual é o nome do mestre da guilda Fairy Tail durante a maior parte da série?','Ele é fisicamente muito baixo, mas extremamente poderoso em combate.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Makarov Dreyar',TRUE,0),(gen_random_uuid(),q,'Laxus Dreyar',FALSE,1),(gen_random_uuid(),q,'Gildarts Clive',FALSE,2),(gen_random_uuid(),q,'Ivan Dreyar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','easy','Qual é o nome do mago considerado o mais forte da guilda, com magia caótica capaz de destruir tudo ao redor?','Ele é pai adotivo de Cana, embora ela mantenha isso em segredo por muito tempo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gildarts Clive',TRUE,0),(gen_random_uuid(),q,'Makarov Dreyar',FALSE,1),(gen_random_uuid(),q,'Laxus Dreyar',FALSE,2),(gen_random_uuid(),q,'Natsu Dragneel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','easy','Qual é o nome do gato preto que se torna companheiro de Gajeel, também capaz de falar e crescer?','Ele foi originalmente um Exceed de outra dimensão, Edolas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Panther Lily',TRUE,0),(gen_random_uuid(),q,'Happy',FALSE,1),(gen_random_uuid(),q,'Carla',FALSE,2),(gen_random_uuid(),q,'Plue',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','medium','Qual é o nome da técnica mais poderosa e famosa de Natsu, que concentra fogo em seus punhos?','Ela é usada em diversos combates decisivos ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fire Dragon Brilliant Flame',TRUE,0),(gen_random_uuid(),q,'Iron Fist',FALSE,1),(gen_random_uuid(),q,'Roar of the Fire Dragon',FALSE,2),(gen_random_uuid(),q,'Wing Attack',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','medium','Qual é o nome do dragão que criou e treinou Natsu como filho adotivo desde a infância?','Ele desaparece misteriosamente sete anos antes do início oficial da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Igneel',TRUE,0),(gen_random_uuid(),q,'Metalicana',FALSE,1),(gen_random_uuid(),q,'Grandeeney',FALSE,2),(gen_random_uuid(),q,'Acnologia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','medium','Qual é o nome do dragão que criou Gajeel, ensinando-lhe magia do Matador de Dragão do Ferro?','Ele também desaparece na mesma época que Igneel.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Metalicana',TRUE,0),(gen_random_uuid(),q,'Igneel',FALSE,1),(gen_random_uuid(),q,'Grandeeney',FALSE,2),(gen_random_uuid(),q,'Acnologia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','medium','Qual é o nome do dragão que criou Wendy, ensinando-lhe magia de cura?','Ela também desaparece misteriosamente na mesma época dos outros dragões adotivos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Grandeeney',TRUE,0),(gen_random_uuid(),q,'Igneel',FALSE,1),(gen_random_uuid(),q,'Metalicana',FALSE,2),(gen_random_uuid(),q,'Acnologia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','medium','Qual é o nome do dragão negro, considerado o Rei Dragão e a maior ameaça enfrentada pela série?','Ele possui a habilidade única de se transformar em humano.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Acnologia',TRUE,0),(gen_random_uuid(),q,'Igneel',FALSE,1),(gen_random_uuid(),q,'Zirconis',FALSE,2),(gen_random_uuid(),q,'Motherglare',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','medium','Qual é o nome da guilda sombria liderada por Jose Porla, rival direta da Fairy Tail nos primeiros arcos da série?','Eles sequestram Lucy em uma tentativa de forçá-la a retornar para casa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Phantom Lord',TRUE,0),(gen_random_uuid(),q,'Oración Seis',FALSE,1),(gen_random_uuid(),q,'Grimoire Heart',FALSE,2),(gen_random_uuid(),q,'Tartaros',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','medium','Qual é o nome do torneio anual disputado entre as guildas mágicas mais fortes de Fiore?','Fairy Tail retorna a esse evento após anos de ausência forçada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Grande Jogo Mágico',TRUE,0),(gen_random_uuid(),q,'Torneio das Guildas',FALSE,1),(gen_random_uuid(),q,'Copa de Fiore',FALSE,2),(gen_random_uuid(),q,'Festival Mágico',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','medium','Qual é o nome da guilda das trevas responsável por sequestrar espíritos celestiais e Matadores de Dragão para um plano de ressurreição de demônios?','Eles se revelam como demônios do Livro de Zeref durante a trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tartaros',TRUE,0),(gen_random_uuid(),q,'Oración Seis',FALSE,1),(gen_random_uuid(),q,'Phantom Lord',FALSE,2),(gen_random_uuid(),q,'Grimoire Heart',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','medium','Qual é o nome do mago sombrio e imortal, criador de diversos demônios poderosos ao longo de séculos?','Ele é revelado como um antigo mago que busca a morte como sua verdadeira redenção.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zeref Dragneel',TRUE,0),(gen_random_uuid(),q,'Acnologia',FALSE,1),(gen_random_uuid(),q,'Mard Geer',FALSE,2),(gen_random_uuid(),q,'Hades',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','hard','Qual é a relação entre Zeref e Natsu, revelada como um dos maiores twists da série?','Esta revelação recontextualiza toda a origem do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'São rivais eternos sem laço de sangue',FALSE,0),(gen_random_uuid(),q,'Zeref criou Natsu como demônio E.N.D.',TRUE,1),(gen_random_uuid(),q,'Zeref é pai adotivo de Natsu',FALSE,2),(gen_random_uuid(),q,'Não possuem qualquer relação direta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','hard','Qual é o nome demoníaco final atribuído a Natsu ao ser revelado como criação de Zeref?','A sigla é derivada de suas iniciais em inglês, refletindo sua origem sombria.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'E.N.D.',TRUE,0),(gen_random_uuid(),q,'D.O.O.M.',FALSE,1),(gen_random_uuid(),q,'F.A.T.E.',FALSE,2),(gen_random_uuid(),q,'S.I.N.',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','hard','Qual é o nome do rei dos demônios do submundo, líder da guilda Tartaros?','Ele é considerado o demônio mais poderoso já criado por Zeref, além do próprio Natsu.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mard Geer',TRUE,0),(gen_random_uuid(),q,'Silver Fullbuster',FALSE,1),(gen_random_uuid(),q,'Zeref',FALSE,2),(gen_random_uuid(),q,'Hades',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','hard','Qual é o nome verdadeiro do pai adotivo de Gray, revelado como demônio membro de Tartaros?','Ele é morto por Zeref há décadas, com seu corpo posteriormente reanimado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Silver Fullbuster',TRUE,0),(gen_random_uuid(),q,'Mard Geer',FALSE,1),(gen_random_uuid(),q,'Ur Milkovich',FALSE,2),(gen_random_uuid(),q,'Hades',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','hard','Qual é o nome da mestra que treina Gray e Ur, sacrificando-se para selar Deliora em uma técnica antiga?','Sua morte marca profundamente a infância de Gray.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ur Milkovich',TRUE,0),(gen_random_uuid(),q,'Silver Fullbuster',FALSE,1),(gen_random_uuid(),q,'Mavis Vermilion',FALSE,2),(gen_random_uuid(),q,'Anna Heartfilia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','hard','Qual é o nome da fundadora original da guilda Fairy Tail, presente como um espírito etéreo invisível para a maioria dos membros?','Ela também é considerada uma das maiores magas da história.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mavis Vermilion',TRUE,0),(gen_random_uuid(),q,'Ur Milkovich',FALSE,1),(gen_random_uuid(),q,'Anna Heartfilia',FALSE,2),(gen_random_uuid(),q,'Layla Heartfilia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','hard','Qual é o nome do mestre da guilda sombria Grimoire Heart, revelado como antigo mestre de Fairy Tail décadas atrás?','Ele busca reviver Zeref por razões pessoais complexas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hades (Precht)',TRUE,0),(gen_random_uuid(),q,'Mard Geer',FALSE,1),(gen_random_uuid(),q,'Jose Porla',FALSE,2),(gen_random_uuid(),q,'Ivan Dreyar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','hard','Qual é o nome do pai de Laxus, que traiu e tentou destruir a guilda Fairy Tail no passado?','Ele é expulso da guilda por Makarov, seu próprio pai, décadas antes dos eventos principais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ivan Dreyar',TRUE,0),(gen_random_uuid(),q,'Makarov Dreyar',FALSE,1),(gen_random_uuid(),q,'Hades',FALSE,2),(gen_random_uuid(),q,'Jose Porla',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','impossible','Qual é o nome da mãe biológica de Lucy, também maga celestial, ligada a uma antiga jornada de sete anos no passado?','Ela é revelada durante o arco envolvendo o Grande Jogo Mágico e Eclipse.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Layla Heartfilia',TRUE,0),(gen_random_uuid(),q,'Anna Heartfilia',FALSE,1),(gen_random_uuid(),q,'Mavis Vermilion',FALSE,2),(gen_random_uuid(),q,'Ur Milkovich',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','impossible','Qual é o nome da maga celestial responsável por enviar 100 magos ao futuro através da Porta de Eclipse, séculos antes da série?','Ela é ancestral direta de Lucy Heartfilia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Anna Heartfilia',TRUE,0),(gen_random_uuid(),q,'Layla Heartfilia',FALSE,1),(gen_random_uuid(),q,'Mavis Vermilion',FALSE,2),(gen_random_uuid(),q,'Ur Milkovich',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','impossible','Qual é o nome do primeiro amor e parceiro de Mavis Vermilion, morto trágicamente antes da fundação oficial da guilda?','Sua morte motiva Mavis a desenvolver a Fairy Sphere, técnica lendária de proteção.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zeref Dragneel',TRUE,0),(gen_random_uuid(),q,'Precht Gaebolg',FALSE,1),(gen_random_uuid(),q,'Yuri Dreyar',FALSE,2),(gen_random_uuid(),q,'August',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','impossible','Qual é o nome do fundador original conjunto da guilda Fairy Tail, ao lado de Mavis e Precht?','Ele é bisavô de Laxus Dreyar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yuri Dreyar',TRUE,0),(gen_random_uuid(),q,'Precht Gaebolg',FALSE,1),(gen_random_uuid(),q,'Zeref Dragneel',FALSE,2),(gen_random_uuid(),q,'August',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- FILL_BLANK — 38 perguntas (11 easy / 13 medium / 10 hard / 4 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'fill_blank','easy','A maga celestial que se junta à guilda logo no primeiro episódio da série se chama ___.','Ela possui chaves douradas e prateadas capazes de invocar espíritos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Lucy Heartfilia',TRUE,0),(gen_random_uuid(),q,'Erza Scarlet',FALSE,1),(gen_random_uuid(),q,'Wendy Marvell',FALSE,2),(gen_random_uuid(),q,'Juvia Lockser',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'fill_blank','easy','O mago de gelo, rival amistoso de Natsu dentro da guilda, se chama ___.','Ele possui o hábito curioso de tirar a roupa sem perceber.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gray Fullbuster',TRUE,0),(gen_random_uuid(),q,'Gajeel Redfox',FALSE,1),(gen_random_uuid(),q,'Laxus Dreyar',FALSE,2),(gen_random_uuid(),q,'Elfman Strauss',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'fill_blank','easy','O gato azul falante e voador, companheiro constante de Natsu, se chama ___.','Ele possui a habilidade de crescer asas para voar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Happy',TRUE,0),(gen_random_uuid(),q,'Carla',FALSE,1),(gen_random_uuid(),q,'Panther Lily',FALSE,2),(gen_random_uuid(),q,'Plue',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'fill_blank','easy','A gata branca falante, companheira de Wendy Marvell, se chama ___.','Ela possui personalidade mais séria e rígida em comparação a Happy.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Carla',TRUE,0),(gen_random_uuid(),q,'Happy',FALSE,1),(gen_random_uuid(),q,'Panther Lily',FALSE,2),(gen_random_uuid(),q,'Plue',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'fill_blank','easy','A jovem maga do Matador de Dragão do Céu, especialista em magia de cura e vento, se chama ___.','Ela é a mais jovem entre os principais Matadores de Dragão apresentados na série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Wendy Marvell',TRUE,0),(gen_random_uuid(),q,'Lucy Heartfilia',FALSE,1),(gen_random_uuid(),q,'Levy McGarden',FALSE,2),(gen_random_uuid(),q,'Juvia Lockser',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'fill_blank','easy','O mago de ferro, ex-membro de uma guilda sombria, apaixonado por Levy, se chama ___.','Ele possui magia do Matador de Dragão do Ferro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gajeel Redfox',TRUE,0),(gen_random_uuid(),q,'Gray Fullbuster',FALSE,1),(gen_random_uuid(),q,'Laxus Dreyar',FALSE,2),(gen_random_uuid(),q,'Elfman Strauss',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'fill_blank','easy','A maga apaixonada por Gray, capaz de controlar e se transformar em água, se chama ___.','Ela costuma imaginar cenários românticos elaborados envolvendo Gray.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Juvia Lockser',TRUE,0),(gen_random_uuid(),q,'Lucy Heartfilia',FALSE,1),(gen_random_uuid(),q,'Levy McGarden',FALSE,2),(gen_random_uuid(),q,'Mirajane Strauss',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'fill_blank','easy','A bibliotecária da guilda, especialista em magia de escrita, se chama ___.','Ela é apaixonada por Gajeel, apesar do início conturbado entre os dois.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Levy McGarden',TRUE,0),(gen_random_uuid(),q,'Juvia Lockser',FALSE,1),(gen_random_uuid(),q,'Lucy Heartfilia',FALSE,2),(gen_random_uuid(),q,'Cana Alberona',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'fill_blank','easy','A ex-maga demoníaca que se torna garçonete e recepcionista da guilda se chama ___.','Ela é irmã mais velha de Elfman e Lisanna Strauss.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mirajane Strauss',TRUE,0),(gen_random_uuid(),q,'Erza Scarlet',FALSE,1),(gen_random_uuid(),q,'Cana Alberona',FALSE,2),(gen_random_uuid(),q,'Levy McGarden',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'fill_blank','easy','O mestre da guilda Fairy Tail durante a maior parte da série se chama ___.','Ele é fisicamente muito baixo, mas extremamente poderoso em combate.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Makarov Dreyar',TRUE,0),(gen_random_uuid(),q,'Laxus Dreyar',FALSE,1),(gen_random_uuid(),q,'Gildarts Clive',FALSE,2),(gen_random_uuid(),q,'Ivan Dreyar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'fill_blank','medium','A técnica mais poderosa e famosa de Natsu, que concentra fogo em seus punhos, se chama ___.','Ela é usada em diversos combates decisivos ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fire Dragon Brilliant Flame',TRUE,0),(gen_random_uuid(),q,'Iron Fist',FALSE,1),(gen_random_uuid(),q,'Roar of the Fire Dragon',FALSE,2),(gen_random_uuid(),q,'Wing Attack',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'fill_blank','medium','O dragão que criou e treinou Natsu como filho adotivo desde a infância se chama ___.','Ele desaparece misteriosamente sete anos antes do início oficial da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Igneel',TRUE,0),(gen_random_uuid(),q,'Metalicana',FALSE,1),(gen_random_uuid(),q,'Grandeeney',FALSE,2),(gen_random_uuid(),q,'Acnologia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'fill_blank','medium','O dragão que criou Gajeel, ensinando-lhe magia do Matador de Dragão do Ferro, se chama ___.','Ele também desaparece na mesma época que Igneel.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Metalicana',TRUE,0),(gen_random_uuid(),q,'Igneel',FALSE,1),(gen_random_uuid(),q,'Grandeeney',FALSE,2),(gen_random_uuid(),q,'Acnologia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'fill_blank','medium','O dragão que criou Wendy, ensinando-lhe magia de cura, se chama ___.','Ela também desaparece misteriosamente na mesma época dos outros dragões adotivos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Grandeeney',TRUE,0),(gen_random_uuid(),q,'Igneel',FALSE,1),(gen_random_uuid(),q,'Metalicana',FALSE,2),(gen_random_uuid(),q,'Acnologia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'fill_blank','medium','O dragão negro, considerado o Rei Dragão e a maior ameaça enfrentada pela série, se chama ___.','Ele possui a habilidade única de se transformar em humano.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Acnologia',TRUE,0),(gen_random_uuid(),q,'Igneel',FALSE,1),(gen_random_uuid(),q,'Zirconis',FALSE,2),(gen_random_uuid(),q,'Motherglare',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'fill_blank','medium','A guilda sombria liderada por Jose Porla, rival direta da Fairy Tail nos primeiros arcos da série, se chama ___.','Eles sequestram Lucy em uma tentativa de forçá-la a retornar para casa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Phantom Lord',TRUE,0),(gen_random_uuid(),q,'Oración Seis',FALSE,1),(gen_random_uuid(),q,'Grimoire Heart',FALSE,2),(gen_random_uuid(),q,'Tartaros',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'fill_blank','medium','O torneio anual disputado entre as guildas mágicas mais fortes de Fiore se chama ___.','Fairy Tail retorna a esse evento após anos de ausência forçada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Grande Jogo Mágico',TRUE,0),(gen_random_uuid(),q,'Torneio das Guildas',FALSE,1),(gen_random_uuid(),q,'Copa de Fiore',FALSE,2),(gen_random_uuid(),q,'Festival Mágico',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'fill_blank','medium','A guilda das trevas responsável por sequestrar espíritos celestiais e Matadores de Dragão para um plano de ressurreição de demônios se chama ___.','Eles se revelam como demônios do Livro de Zeref durante a trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tartaros',TRUE,0),(gen_random_uuid(),q,'Oración Seis',FALSE,1),(gen_random_uuid(),q,'Phantom Lord',FALSE,2),(gen_random_uuid(),q,'Grimoire Heart',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'fill_blank','medium','O mago sombrio e imortal, criador de diversos demônios poderosos ao longo de séculos, se chama ___.','Ele é revelado como um antigo mago que busca a morte como sua verdadeira redenção.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zeref Dragneel',TRUE,0),(gen_random_uuid(),q,'Acnologia',FALSE,1),(gen_random_uuid(),q,'Mard Geer',FALSE,2),(gen_random_uuid(),q,'Hades',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'fill_blank','hard','O nome demoníaco final atribuído a Natsu ao ser revelado como criação de Zeref é ___.','A sigla é derivada de suas iniciais em inglês, refletindo sua origem sombria.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'E.N.D.',TRUE,0),(gen_random_uuid(),q,'D.O.O.M.',FALSE,1),(gen_random_uuid(),q,'F.A.T.E.',FALSE,2),(gen_random_uuid(),q,'S.I.N.',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'fill_blank','hard','O rei dos demônios do submundo, líder da guilda Tartaros, se chama ___.','Ele é considerado o demônio mais poderoso já criado por Zeref, além do próprio Natsu.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mard Geer',TRUE,0),(gen_random_uuid(),q,'Silver Fullbuster',FALSE,1),(gen_random_uuid(),q,'Zeref',FALSE,2),(gen_random_uuid(),q,'Hades',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'fill_blank','hard','O nome verdadeiro do pai adotivo de Gray, revelado como demônio membro de Tartaros, é ___.','Ele é morto por Zeref há décadas, com seu corpo posteriormente reanimado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Silver Fullbuster',TRUE,0),(gen_random_uuid(),q,'Mard Geer',FALSE,1),(gen_random_uuid(),q,'Ur Milkovich',FALSE,2),(gen_random_uuid(),q,'Hades',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'fill_blank','hard','A mestra que treina Gray e Ur, sacrificando-se para selar Deliora em uma técnica antiga, se chama ___.','Sua morte marca profundamente a infância de Gray.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ur Milkovich',TRUE,0),(gen_random_uuid(),q,'Silver Fullbuster',FALSE,1),(gen_random_uuid(),q,'Mavis Vermilion',FALSE,2),(gen_random_uuid(),q,'Anna Heartfilia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'fill_blank','hard','A fundadora original da guilda Fairy Tail, presente como um espírito etéreo invisível para a maioria dos membros, se chama ___.','Ela também é considerada uma das maiores magas da história.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mavis Vermilion',TRUE,0),(gen_random_uuid(),q,'Ur Milkovich',FALSE,1),(gen_random_uuid(),q,'Anna Heartfilia',FALSE,2),(gen_random_uuid(),q,'Layla Heartfilia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'fill_blank','hard','O mestre da guilda sombria Grimoire Heart, revelado como antigo mestre de Fairy Tail décadas atrás, se chama ___.','Ele busca reviver Zeref por razões pessoais complexas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hades (Precht)',TRUE,0),(gen_random_uuid(),q,'Mard Geer',FALSE,1),(gen_random_uuid(),q,'Jose Porla',FALSE,2),(gen_random_uuid(),q,'Ivan Dreyar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'fill_blank','hard','O pai de Laxus, que traiu e tentou destruir a guilda Fairy Tail no passado, se chama ___.','Ele é expulso da guilda por Makarov, seu próprio pai, décadas antes dos eventos principais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ivan Dreyar',TRUE,0),(gen_random_uuid(),q,'Makarov Dreyar',FALSE,1),(gen_random_uuid(),q,'Hades',FALSE,2),(gen_random_uuid(),q,'Jose Porla',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'fill_blank','impossible','A mãe biológica de Lucy, também maga celestial, se chama ___.','Ela é revelada durante o arco envolvendo o Grande Jogo Mágico e Eclipse.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Layla Heartfilia',TRUE,0),(gen_random_uuid(),q,'Anna Heartfilia',FALSE,1),(gen_random_uuid(),q,'Mavis Vermilion',FALSE,2),(gen_random_uuid(),q,'Ur Milkovich',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'fill_blank','impossible','A maga celestial responsável por enviar 100 magos ao futuro através da Porta de Eclipse, séculos antes da série, se chama ___.','Ela é ancestral direta de Lucy Heartfilia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Anna Heartfilia',TRUE,0),(gen_random_uuid(),q,'Layla Heartfilia',FALSE,1),(gen_random_uuid(),q,'Mavis Vermilion',FALSE,2),(gen_random_uuid(),q,'Ur Milkovich',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'fill_blank','impossible','O primeiro amor e parceiro de Mavis Vermilion, morto trágicamente antes da fundação oficial da guilda, se chama ___.','Sua morte motiva Mavis a desenvolver a Fairy Sphere, técnica lendária de proteção.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zeref Dragneel',TRUE,0),(gen_random_uuid(),q,'Precht Gaebolg',FALSE,1),(gen_random_uuid(),q,'Yuri Dreyar',FALSE,2),(gen_random_uuid(),q,'August',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- WHO_SAID — 30 perguntas (9 easy / 11 medium / 8 hard / 2 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'who_said','easy','Quem disse: "Eu vou encontrar meu pai dragão, custe o que custar, e essa é minha aventura"?','A frase resume o objetivo pessoal do protagonista ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Natsu Dragneel',TRUE,0),(gen_random_uuid(),q,'Gray Fullbuster',FALSE,1),(gen_random_uuid(),q,'Gajeel Redfox',FALSE,2),(gen_random_uuid(),q,'Wendy Marvell',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'who_said','easy','Quem disse: "Eu queria ser escritora, mas encontrei uma família de verdade dentro desta guilda"?','A frase reflete o crescimento emocional da maga celestial protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Lucy Heartfilia',TRUE,0),(gen_random_uuid(),q,'Erza Scarlet',FALSE,1),(gen_random_uuid(),q,'Levy McGarden',FALSE,2),(gen_random_uuid(),q,'Juvia Lockser',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'who_said','easy','Quem disse: "Eu não tenho medo de nada, exceto talvez de perder minhas roupas sem perceber de novo"?','A frase brinca com o hábito cômico e recorrente desse mago de gelo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gray Fullbuster',TRUE,0),(gen_random_uuid(),q,'Natsu Dragneel',FALSE,1),(gen_random_uuid(),q,'Gajeel Redfox',FALSE,2),(gen_random_uuid(),q,'Elfman Strauss',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'who_said','easy','Quem disse: "Eu troco de armadura conforme a batalha exige, sempre pronta para qualquer desafio"?','A frase reflete a versatilidade em combate dessa maga guerreira conhecida como Rainha das Fadas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Erza Scarlet',TRUE,0),(gen_random_uuid(),q,'Lucy Heartfilia',FALSE,1),(gen_random_uuid(),q,'Mirajane Strauss',FALSE,2),(gen_random_uuid(),q,'Cana Alberona',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'who_said','easy','Quem disse: "Aye sir! Vamos pescar um peixe gigante depois desta missão!"?','A expressão animada é típica desse gato azul voador.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Happy',TRUE,0),(gen_random_uuid(),q,'Carla',FALSE,1),(gen_random_uuid(),q,'Panther Lily',FALSE,2),(gen_random_uuid(),q,'Plue',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'who_said','easy','Quem disse: "Amar Gray-sama é o meu propósito de vida, e nada vai mudar isso"?','A frase reflete a obsessão romântica dessa maga da água pelo companheiro de guilda.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Juvia Lockser',TRUE,0),(gen_random_uuid(),q,'Lucy Heartfilia',FALSE,1),(gen_random_uuid(),q,'Levy McGarden',FALSE,2),(gen_random_uuid(),q,'Mirajane Strauss',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'who_said','easy','Quem disse: "Isso é o que um verdadeiro homem faria, sem hesitação alguma"?','A frase repetitiva reflete a obsessão do personagem com masculinidade e coragem.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Elfman Strauss',TRUE,0),(gen_random_uuid(),q,'Gray Fullbuster',FALSE,1),(gen_random_uuid(),q,'Gajeel Redfox',FALSE,2),(gen_random_uuid(),q,'Laxus Dreyar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'who_said','easy','Quem disse: "Eu costurei minhas próprias palavras através de magia de escrita, é o meu jeito de lutar"?','A frase reflete a habilidade única dessa bibliotecária da guilda.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Levy McGarden',TRUE,0),(gen_random_uuid(),q,'Juvia Lockser',FALSE,1),(gen_random_uuid(),q,'Lucy Heartfilia',FALSE,2),(gen_random_uuid(),q,'Cana Alberona',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'who_said','easy','Quem disse: "Minhas cartas de tarô nunca mentem, e um dia vou revelar meu segredo ao mestre"?','A frase é dita pela filha secreta do mestre da guilda, especialista em cartas mágicas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cana Alberona',TRUE,0),(gen_random_uuid(),q,'Levy McGarden',FALSE,1),(gen_random_uuid(),q,'Mirajane Strauss',FALSE,2),(gen_random_uuid(),q,'Juvia Lockser',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'who_said','medium','Quem disse: "Eu perdi minha irmã mais nova por anos, e nunca deixei de sentir essa culpa, mesmo sorrindo todos os dias"?','A frase reflete o trauma escondido atrás do sorriso dessa ex-maga demoníaca.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mirajane Strauss',TRUE,0),(gen_random_uuid(),q,'Erza Scarlet',FALSE,1),(gen_random_uuid(),q,'Cana Alberona',FALSE,2),(gen_random_uuid(),q,'Levy McGarden',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'who_said','medium','Quem disse: "Eu abandonei a guilda temporariamente, mas nunca deixei de amar cada membro dela como família"?','A frase é dita pelo neto do mestre, após seu retorno como aliado leal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Laxus Dreyar',TRUE,0),(gen_random_uuid(),q,'Gajeel Redfox',FALSE,1),(gen_random_uuid(),q,'Gray Fullbuster',FALSE,2),(gen_random_uuid(),q,'Elfman Strauss',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'who_said','medium','Quem disse: "Eu sou o mago mais forte desta guilda, mas prefiro viajar sozinho na maior parte do tempo"?','A frase reflete a natureza solitária e aventureira desse mago considerado extremamente poderoso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gildarts Clive',TRUE,0),(gen_random_uuid(),q,'Makarov Dreyar',FALSE,1),(gen_random_uuid(),q,'Laxus Dreyar',FALSE,2),(gen_random_uuid(),q,'Natsu Dragneel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'who_said','medium','Quem disse: "Eu criei Natsu como uma arma viva, mas ele se tornou algo muito maior do que eu jamais imaginei"?','A frase é dita pelo mago sombrio e imortal responsável pela criação de Natsu.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zeref Dragneel',TRUE,0),(gen_random_uuid(),q,'Acnologia',FALSE,1),(gen_random_uuid(),q,'Mard Geer',FALSE,2),(gen_random_uuid(),q,'Hades',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'who_said','medium','Quem disse: "Eu governo os demônios do submundo com autoridade absoluta, e nenhum humano pode nos deter"?','A frase é dita pelo rei dos demônios, líder da guilda Tartaros.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mard Geer',TRUE,0),(gen_random_uuid(),q,'Silver Fullbuster',FALSE,1),(gen_random_uuid(),q,'Zeref',FALSE,2),(gen_random_uuid(),q,'Hades',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'who_said','medium','Quem disse: "Eu selei Deliora com meu próprio corpo, para que meus alunos pudessem viver em paz"?','A frase é dita, em memória, pela mestra sacrificial de Gray e Ur.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ur Milkovich',TRUE,0),(gen_random_uuid(),q,'Silver Fullbuster',FALSE,1),(gen_random_uuid(),q,'Mavis Vermilion',FALSE,2),(gen_random_uuid(),q,'Anna Heartfilia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'who_said','medium','Quem disse: "Eu fundei esta guilda com meus queridos amigos, e continuo observando cada geração crescer, mesmo invisível"?','A frase é dita pela fundadora espectral da guilda Fairy Tail.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mavis Vermilion',TRUE,0),(gen_random_uuid(),q,'Ur Milkovich',FALSE,1),(gen_random_uuid(),q,'Anna Heartfilia',FALSE,2),(gen_random_uuid(),q,'Layla Heartfilia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'who_said','medium','Quem disse: "Eu já fui mestre desta guilda antes de me tornar seu maior inimigo, e isso não me traz vergonha alguma"?','A frase é dita pelo antigo mestre de Fairy Tail, agora líder da guilda sombria Grimoire Heart.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hades (Precht)',TRUE,0),(gen_random_uuid(),q,'Mard Geer',FALSE,1),(gen_random_uuid(),q,'Jose Porla',FALSE,2),(gen_random_uuid(),q,'Ivan Dreyar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'who_said','hard','Quem disse: "Eu sou a criação mais poderosa que Zeref já fez, mais forte até que qualquer outro demônio de seu livro"?','A frase é dita pelo próprio Natsu ao descobrir sua verdadeira origem demoníaca.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Natsu Dragneel (E.N.D.)',TRUE,0),(gen_random_uuid(),q,'Zeref Dragneel',FALSE,1),(gen_random_uuid(),q,'Mard Geer',FALSE,2),(gen_random_uuid(),q,'Acnologia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'who_said','hard','Quem disse: "Eu perdi meu pai humano quando fui morto por Zeref, e agora meu corpo serve a um propósito bem diferente"?','A frase é dita pelo demônio reanimado, verdadeiro pai adotivo de Gray.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Silver Fullbuster',TRUE,0),(gen_random_uuid(),q,'Mard Geer',FALSE,1),(gen_random_uuid(),q,'Ur Milkovich',FALSE,2),(gen_random_uuid(),q,'Hades',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'who_said','hard','Quem disse: "Eu enviei cem magos ao futuro através da Porta de Eclipse, sabendo que talvez nunca mais os revisse"?','A frase é dita pela ancestral direta de Lucy, responsável pela grande migração temporal do passado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Anna Heartfilia',TRUE,0),(gen_random_uuid(),q,'Layla Heartfilia',FALSE,1),(gen_random_uuid(),q,'Mavis Vermilion',FALSE,2),(gen_random_uuid(),q,'Ur Milkovich',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'who_said','hard','Quem disse: "Eu traí minha própria guilda e meu próprio pai, tudo em nome de um poder que eu jamais mereci"?','A frase é dita pelo pai de Laxus, refletindo sobre sua traição no passado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ivan Dreyar',TRUE,0),(gen_random_uuid(),q,'Makarov Dreyar',FALSE,1),(gen_random_uuid(),q,'Hades',FALSE,2),(gen_random_uuid(),q,'Jose Porla',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'who_said','hard','Quem disse: "Eu sou o dragão mais temido de todos, e nem mesmo os deuses ousariam me desafiar diretamente"?','A frase é dita pelo Rei Dragão, considerado a maior ameaça já enfrentada pela série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Acnologia',TRUE,0),(gen_random_uuid(),q,'Igneel',FALSE,1),(gen_random_uuid(),q,'Zirconis',FALSE,2),(gen_random_uuid(),q,'Motherglare',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'who_said','hard','Quem disse: "Eu ataquei a guilda rival por ordens do meu mestre, mas nunca imaginei o quanto isso mudaria minha própria vida"?','A frase é dita pelo mago de ferro refletindo sobre seu passado antes de se juntar à Fairy Tail.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gajeel Redfox',TRUE,0),(gen_random_uuid(),q,'Gray Fullbuster',FALSE,1),(gen_random_uuid(),q,'Laxus Dreyar',FALSE,2),(gen_random_uuid(),q,'Elfman Strauss',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'who_said','impossible','Quem disse: "Eu fui o primeiro amor de Mavis, e minha morte trágica moldou toda a filosofia de proteção da guilda que ela fundou"?','A frase é dita, em memória, pelo antigo parceiro de Mavis Vermilion.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zeref Dragneel',TRUE,0),(gen_random_uuid(),q,'Precht Gaebolg',FALSE,1),(gen_random_uuid(),q,'Yuri Dreyar',FALSE,2),(gen_random_uuid(),q,'August',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'who_said','impossible','Quem disse: "Eu sou bisavô de Laxus, e ajudei a fundar esta guilda ao lado de Mavis e Precht há muitas gerações"?','A frase é dita pelo fundador conjunto original da guilda Fairy Tail.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yuri Dreyar',TRUE,0),(gen_random_uuid(),q,'Precht Gaebolg',FALSE,1),(gen_random_uuid(),q,'Zeref Dragneel',FALSE,2),(gen_random_uuid(),q,'August',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- EPISODE_ARC — 15 perguntas (7 medium / 6 hard / 2 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'episode_arc','medium','Em qual arco Lucy se junta oficialmente à guilda Fairy Tail, conhecendo Natsu e Happy pela primeira vez?','O arco estabelece as bases da amizade central entre os protagonistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Macao',TRUE,0),(gen_random_uuid(),q,'Arco de Phantom Lord',FALSE,1),(gen_random_uuid(),q,'Arco da Torre do Paraíso',FALSE,2),(gen_random_uuid(),q,'Arco de Tenrou Island',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'episode_arc','medium','Em qual arco a guilda Phantom Lord ataca diretamente o prédio da Fairy Tail e sequestra Lucy?','Erza e Gajeel travam um dos combates mais marcantes deste arco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Phantom Lord',TRUE,0),(gen_random_uuid(),q,'Arco de Macao',FALSE,1),(gen_random_uuid(),q,'Arco da Torre do Paraíso',FALSE,2),(gen_random_uuid(),q,'Arco de Tenrou Island',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'episode_arc','medium','Em qual arco é revelado o passado trágico de Erza, envolvendo escravidão e a construção de uma torre mágica proibida?','Jellal aparece pela primeira vez como antagonista neste arco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Torre do Paraíso',TRUE,0),(gen_random_uuid(),q,'Arco de Phantom Lord',FALSE,1),(gen_random_uuid(),q,'Arco de Edolas',FALSE,2),(gen_random_uuid(),q,'Arco de Tenrou Island',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'episode_arc','medium','Em qual arco os membros da guilda viajam até uma dimensão alternativa onde a magia funciona de forma completamente diferente?','Eles encontram versões alternativas de si mesmos neste mundo espelhado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Edolas',TRUE,0),(gen_random_uuid(),q,'Arco da Torre do Paraíso',FALSE,1),(gen_random_uuid(),q,'Arco de Tenrou Island',FALSE,2),(gen_random_uuid(),q,'Arco do Grande Jogo Mágico',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'episode_arc','medium','Em qual arco a guilda inteira é congelada no tempo por sete anos após um confronto contra Grimoire Heart e Acnologia?','O evento explica o hiato temporal explorado na segunda metade da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Tenrou Island',TRUE,0),(gen_random_uuid(),q,'Arco de Edolas',FALSE,1),(gen_random_uuid(),q,'Arco de Phantom Lord',FALSE,2),(gen_random_uuid(),q,'Arco do Grande Jogo Mágico',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'episode_arc','medium','Em qual arco a Fairy Tail retorna oficialmente ao Grande Jogo Mágico após anos de ausência forçada, provando que ainda é uma guilda relevante?','O arco reintroduz diversas guildas rivais importantes para a trama seguinte.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Grande Jogo Mágico',TRUE,0),(gen_random_uuid(),q,'Arco de Tenrou Island',FALSE,1),(gen_random_uuid(),q,'Arco de Edolas',FALSE,2),(gen_random_uuid(),q,'Arco de Tartaros',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'episode_arc','medium','Em qual arco a guilda sombria Tartaros ataca diretamente o Conselho Mágico e revela a verdadeira natureza demoníaca de vários personagens?','Natsu descobre sua origem como E.N.D. durante este confronto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Tartaros',TRUE,0),(gen_random_uuid(),q,'Arco do Grande Jogo Mágico',FALSE,1),(gen_random_uuid(),q,'Arco de Tenrou Island',FALSE,2),(gen_random_uuid(),q,'Arco de Edolas',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'episode_arc','hard','Em qual arco Gray finalmente enfrenta seu pai adotivo reanimado, Silver, revelando toda a verdade sobre seu passado?','O confronto emocional acontece durante os eventos de Tartaros.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Tartaros',TRUE,0),(gen_random_uuid(),q,'Arco do Grande Jogo Mágico',FALSE,1),(gen_random_uuid(),q,'Arco de Tenrou Island',FALSE,2),(gen_random_uuid(),q,'Arco de Edolas',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'episode_arc','hard','Em qual arco os membros mais fortes da guilda enfrentam diretamente Hades, antigo mestre revelado como líder de Grimoire Heart?','Makarov enfrenta seu antigo mentor em um confronto emocionalmente carregado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Tenrou Island',TRUE,0),(gen_random_uuid(),q,'Arco de Edolas',FALSE,1),(gen_random_uuid(),q,'Arco de Phantom Lord',FALSE,2),(gen_random_uuid(),q,'Arco do Grande Jogo Mágico',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'episode_arc','hard','Em qual arco é revelada a verdadeira identidade de Rogue do futuro, tentando prevenir um futuro sombrio através da Porta de Eclipse?','Este arco introduz Sting e Rogue como Matadores de Dragão modernos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Grande Jogo Mágico',TRUE,0),(gen_random_uuid(),q,'Arco de Tenrou Island',FALSE,1),(gen_random_uuid(),q,'Arco de Edolas',FALSE,2),(gen_random_uuid(),q,'Arco de Tartaros',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'episode_arc','hard','Em qual arco Zeref e Acnologia se envolvem diretamente na trama principal, elevando drasticamente a escala de ameaça da série?','O confronto entre os dois é referenciado como um evento catastrófico histórico.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Tenrou Island',TRUE,0),(gen_random_uuid(),q,'Arco de Tartaros',FALSE,1),(gen_random_uuid(),q,'Arco do Grande Jogo Mágico',FALSE,2),(gen_random_uuid(),q,'Arco de Edolas',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'episode_arc','hard','Em qual arco Laxus é expulso temporariamente da guilda após tentar assumir o controle usando magia proibida durante o Grande Jogo Mágico original?','Makarov toma essa difícil decisão para proteger a reputação da guilda.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Fantasia Batalha (Laxus)',TRUE,0),(gen_random_uuid(),q,'Arco de Phantom Lord',FALSE,1),(gen_random_uuid(),q,'Arco de Edolas',FALSE,2),(gen_random_uuid(),q,'Arco de Tenrou Island',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'episode_arc','impossible','Em qual arco é revelado o passado completo de Mavis Vermilion e sua relação com Zeref antes da fundação da guilda?','A revelação ocorre através de flashbacks extensos durante os eventos de Tenrou Island.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Tenrou Island',TRUE,0),(gen_random_uuid(),q,'Arco de Tartaros',FALSE,1),(gen_random_uuid(),q,'Arco do Grande Jogo Mágico',FALSE,2),(gen_random_uuid(),q,'Arco de Edolas',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'episode_arc','impossible','Em qual arco é revelada a verdadeira origem de Acnologia como um antigo Matador de Dragão transformado no próprio dragão que caçava?','A revelação recontextualiza completamente a natureza da maior ameaça da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Tartaros',TRUE,0),(gen_random_uuid(),q,'Arco de Tenrou Island',FALSE,1),(gen_random_uuid(),q,'Arco do Grande Jogo Mágico',FALSE,2),(gen_random_uuid(),q,'Arco de Edolas',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- CHRONOLOGICAL — 7 perguntas (4 hard / 3 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'chronological','hard','Ordene cronologicamente os arcos a seguir, do mais antigo ao mais recente.','Cobrem desde a entrada de Lucy na guilda até os eventos de Tartaros.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Macao',TRUE,0),(gen_random_uuid(),q,'Phantom Lord',FALSE,1),(gen_random_uuid(),q,'Tenrou Island',FALSE,2),(gen_random_uuid(),q,'Tartaros',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'chronological','hard','Ordene cronologicamente os seguintes eventos da jornada de Natsu, do mais antigo ao mais recente.','Cobrem desde o desaparecimento de Igneel até a descoberta de sua origem como E.N.D.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Igneel desaparece misteriosamente',TRUE,0),(gen_random_uuid(),q,'Junta-se à Fairy Tail ainda jovem',FALSE,1),(gen_random_uuid(),q,'Fica congelado por sete anos em Tenrou Island',FALSE,2),(gen_random_uuid(),q,'Descobre ser E.N.D., criação de Zeref',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre Gray, do mais antigo ao mais recente.','Cobrem desde a morte de Ur até o confronto contra Silver.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ur se sacrifica selando Deliora',TRUE,0),(gen_random_uuid(),q,'Gray se junta à Fairy Tail',FALSE,1),(gen_random_uuid(),q,'Descobre que seu pai foi reanimado como demônio',FALSE,2),(gen_random_uuid(),q,'Enfrenta Silver diretamente em combate',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre a guilda Fairy Tail, do mais antigo ao mais recente.','Cobrem desde sua fundação por Mavis até o retorno oficial ao Grande Jogo Mágico.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fundação da guilda por Mavis, Precht e Yuri',TRUE,0),(gen_random_uuid(),q,'Makarov se torna mestre da guilda',FALSE,1),(gen_random_uuid(),q,'Guilda é congelada por sete anos em Tenrou Island',FALSE,2),(gen_random_uuid(),q,'Retorno oficial ao Grande Jogo Mágico',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Zeref, do mais antigo ao mais recente.','Cobrem desde a morte de seu primeiro amor até sua ligação revelada com Natsu.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Perde seu primeiro amor ainda jovem',TRUE,0),(gen_random_uuid(),q,'Torna-se imortal e cria diversos demônios',FALSE,1),(gen_random_uuid(),q,'Cria Natsu como o demônio E.N.D.',FALSE,2),(gen_random_uuid(),q,'Reencontra Natsu séculos depois, já adulto',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Erza, do mais antigo ao mais recente.','Cobrem desde sua escravidão na Torre do Paraíso até sua ascensão como uma das magas mais fortes da guilda.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'É escravizada na construção da Torre do Paraíso',TRUE,0),(gen_random_uuid(),q,'Escapa e se junta à Fairy Tail',FALSE,1),(gen_random_uuid(),q,'Retorna para deter Jellal anos depois',FALSE,2),(gen_random_uuid(),q,'Torna-se uma das magas mais respeitadas da guilda',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Anna Heartfilia, do mais antigo ao mais recente.','Cobrem desde o envio dos 100 magos até a revelação de seu parentesco com Lucy.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Envia 100 magos ao futuro através da Porta de Eclipse',TRUE,0),(gen_random_uuid(),q,'Permanece no passado enquanto os outros avançam no tempo',FALSE,1),(gen_random_uuid(),q,'Sua linhagem chega até Layla Heartfilia',FALSE,2),(gen_random_uuid(),q,'É revelada como ancestral direta de Lucy',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- Complemento para fechar 150 perguntas na distribuição exata
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','easy','Qual é o nome do amigo de infância de Erza, mago culpado por um massacre enquanto possuído por uma entidade sombria?','Ele busca redenção ao longo de toda a série por seus atos passados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Jellal Fernandes',TRUE,0),(gen_random_uuid(),q,'Gerard Zeref',FALSE,1),(gen_random_uuid(),q,'Simon',FALSE,2),(gen_random_uuid(),q,'Wally Buchanan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','easy','Qual é o nome do animal de estimação semelhante a um pequeno cachorro-fantasma, invocado por Lucy através de uma chave prateada?','Ele aparece constantemente ao lado de Lucy, mesmo sem ser convocado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Plue',TRUE,0),(gen_random_uuid(),q,'Happy',FALSE,1),(gen_random_uuid(),q,'Carla',FALSE,2),(gen_random_uuid(),q,'Panther Lily',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','medium','Qual é o nome do espírito celestial mais poderoso e leal a Lucy, um touro gigante com machado?','Ele é apaixonado por Lucy de forma cômica e exagerada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Taurus',TRUE,0),(gen_random_uuid(),q,'Loke',FALSE,1),(gen_random_uuid(),q,'Aquarius',FALSE,2),(gen_random_uuid(),q,'Virgo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','medium','Qual é o nome do espírito celestial do Leão, membro do zodíaco dourado, que se disfarça como estudante humano por um tempo?','Ele é revelado como líder informal dos doze espíritos zodiacais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Loke',TRUE,0),(gen_random_uuid(),q,'Taurus',FALSE,1),(gen_random_uuid(),q,'Aquarius',FALSE,2),(gen_random_uuid(),q,'Virgo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','hard','Qual é o nome do amigo de infância de Erza e Jellal, morto sacrificando-se para salvá-la durante os eventos da Torre do Paraíso?','Sua morte marca profundamente a jornada emocional de Erza.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Simon',TRUE,0),(gen_random_uuid(),q,'Wally Buchanan',FALSE,1),(gen_random_uuid(),q,'Sho',FALSE,2),(gen_random_uuid(),q,'Millianna',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','hard','Qual é o nome do mago do Matador de Dragão das Sombras, rival de Natsu durante o Grande Jogo Mágico?','Ele é revelado como vindo de um futuro distópico junto de Sting.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rogue Cheney',TRUE,0),(gen_random_uuid(),q,'Sting Eucliffe',FALSE,1),(gen_random_uuid(),q,'Gajeel Redfox',FALSE,2),(gen_random_uuid(),q,'Laxus Dreyar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','impossible','Qual é o nome do braço direito de Zeref, mago extremamente poderoso e leal ao Império de Alvarez?','Ele é considerado o segundo mago mais forte do continente durante a saga final.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'August',TRUE,0),(gen_random_uuid(),q,'Precht Gaebolg',FALSE,1),(gen_random_uuid(),q,'Yuri Dreyar',FALSE,2),(gen_random_uuid(),q,'Hades',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'fill_blank','easy','O amigo de infância de Erza, mago culpado por um massacre enquanto possuído por uma entidade sombria, se chama ___.','Ele busca redenção ao longo de toda a série por seus atos passados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Jellal Fernandes',TRUE,0),(gen_random_uuid(),q,'Gerard Zeref',FALSE,1),(gen_random_uuid(),q,'Simon',FALSE,2),(gen_random_uuid(),q,'Wally Buchanan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'fill_blank','medium','O espírito celestial mais poderoso e leal a Lucy, um touro gigante com machado, se chama ___.','Ele é apaixonado por Lucy de forma cômica e exagerada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Taurus',TRUE,0),(gen_random_uuid(),q,'Loke',FALSE,1),(gen_random_uuid(),q,'Aquarius',FALSE,2),(gen_random_uuid(),q,'Virgo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'fill_blank','hard','O amigo de infância de Erza e Jellal, morto sacrificando-se para salvá-la durante os eventos da Torre do Paraíso, se chama ___.','Sua morte marca profundamente a jornada emocional de Erza.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Simon',TRUE,0),(gen_random_uuid(),q,'Wally Buchanan',FALSE,1),(gen_random_uuid(),q,'Sho',FALSE,2),(gen_random_uuid(),q,'Millianna',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'fill_blank','hard','O mago do Matador de Dragão das Sombras, rival de Natsu durante o Grande Jogo Mágico, se chama ___.','Ele é revelado como vindo de um futuro distópico junto de Sting.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rogue Cheney',TRUE,0),(gen_random_uuid(),q,'Sting Eucliffe',FALSE,1),(gen_random_uuid(),q,'Gajeel Redfox',FALSE,2),(gen_random_uuid(),q,'Laxus Dreyar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'fill_blank','impossible','O braço direito de Zeref, mago extremamente poderoso e leal ao Império de Alvarez, se chama ___.','Ele é considerado o segundo mago mais forte do continente durante a saga final.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'August',TRUE,0),(gen_random_uuid(),q,'Precht Gaebolg',FALSE,1),(gen_random_uuid(),q,'Yuri Dreyar',FALSE,2),(gen_random_uuid(),q,'Hades',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'who_said','easy','Quem disse: "Meeh! Eu adoro ficar ao lado da Lucy, mesmo sem ser chamado"?','A frase reflete o comportamento peculiar desse pequeno espírito celestial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Plue',TRUE,0),(gen_random_uuid(),q,'Happy',FALSE,1),(gen_random_uuid(),q,'Carla',FALSE,2),(gen_random_uuid(),q,'Panther Lily',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'who_said','medium','Quem disse: "Moo! Eu vou proteger a Lucy com meu machado, e talvez ganhar um abraço em troca"?','A frase reflete o comportamento cômico e apaixonado desse espírito celestial touro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Taurus',TRUE,0),(gen_random_uuid(),q,'Loke',FALSE,1),(gen_random_uuid(),q,'Aquarius',FALSE,2),(gen_random_uuid(),q,'Virgo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'who_said','medium','Quem disse: "Eu me disfarcei de estudante humano por um tempo, mas sempre fui leal a Lucy como líder dos espíritos zodiacais"?','A frase é dita pelo espírito celestial do Leão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Loke',TRUE,0),(gen_random_uuid(),q,'Taurus',FALSE,1),(gen_random_uuid(),q,'Aquarius',FALSE,2),(gen_random_uuid(),q,'Virgo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'who_said','hard','Quem disse: "Eu me sacrifiquei para salvar Erza durante nossa escravidão na torre, e não me arrependo nem por um segundo"?','A frase é dita, em memória, pelo amigo de infância de Erza e Jellal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Simon',TRUE,0),(gen_random_uuid(),q,'Wally Buchanan',FALSE,1),(gen_random_uuid(),q,'Sho',FALSE,2),(gen_random_uuid(),q,'Millianna',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'who_said','hard','Quem disse: "Eu sirvo ao Império de Alvarez com absoluta lealdade, e sou considerado o segundo mago mais forte deste continente"?','A frase é dita pelo braço direito de Zeref durante a saga final.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'August',TRUE,0),(gen_random_uuid(),q,'Precht Gaebolg',FALSE,1),(gen_random_uuid(),q,'Yuri Dreyar',FALSE,2),(gen_random_uuid(),q,'Hades',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'episode_arc','hard','Em qual arco Sting e Rogue, magos de guildas rivais, são apresentados formalmente durante o retorno da Fairy Tail ao Grande Jogo Mágico?','Rogue do futuro aparece posteriormente como uma ameaça alternativa neste mesmo arco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Grande Jogo Mágico',TRUE,0),(gen_random_uuid(),q,'Arco de Tenrou Island',FALSE,1),(gen_random_uuid(),q,'Arco de Edolas',FALSE,2),(gen_random_uuid(),q,'Arco de Tartaros',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','easy','Qual é o nome da espírita celestial da Águia, versão feminina de Loke, membro dos doze zodíacos dourados?','Ela é frequentemente confundida por sua semelhança com outros espíritos dourados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não é um espírito individualizado com destaque na série',TRUE,0),(gen_random_uuid(),q,'Aquarius',FALSE,1),(gen_random_uuid(),q,'Virgo',FALSE,2),(gen_random_uuid(),q,'Scorpio',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','easy','Qual é o nome da espírita celestial da Virgem, criada humilde que insiste em ser punida por Lucy?','Ela é capaz de cavar túneis subterrâneos rapidamente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Virgo',TRUE,0),(gen_random_uuid(),q,'Aquarius',FALSE,1),(gen_random_uuid(),q,'Taurus',FALSE,2),(gen_random_uuid(),q,'Loke',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','medium','Qual é o nome da espírita celestial do Aquário, com temperamento explosivo e forte ligação emocional com Lucy?','Sua chave é herdada diretamente da mãe de Lucy.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aquarius',TRUE,0),(gen_random_uuid(),q,'Virgo',FALSE,1),(gen_random_uuid(),q,'Taurus',FALSE,2),(gen_random_uuid(),q,'Loke',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','medium','Qual é o nome do amigo de infância de Erza e Jellal, especialista em magia de veneno durante a saga da Torre do Paraíso?','Ele também busca redenção junto com Jellal anos depois.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sho',TRUE,0),(gen_random_uuid(),q,'Wally Buchanan',FALSE,1),(gen_random_uuid(),q,'Simon',FALSE,2),(gen_random_uuid(),q,'Millianna',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','hard','Qual é o nome do dragão terrestre gigante que ameaça um reino inteiro durante o arco do Grande Jogo Mágico?','Wendy e outros Matadores de Dragão se unem para derrotá-lo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zirconis',TRUE,0),(gen_random_uuid(),q,'Motherglare',FALSE,1),(gen_random_uuid(),q,'Acnologia',FALSE,2),(gen_random_uuid(),q,'Igneel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','hard','Qual é o nome da entidade em forma de ovo gigante, capaz de gerar dragões artificiais durante o arco do Grande Jogo Mágico?','Ela é revelada como parte de um plano para destruir o reino usando exércitos dracônicos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Motherglare',TRUE,0),(gen_random_uuid(),q,'Zirconis',FALSE,1),(gen_random_uuid(),q,'Acnologia',FALSE,2),(gen_random_uuid(),q,'Igneel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','impossible','Qual é o nome do imperador do Império de Alvarez, revelado como Zeref governando sob identidade oculta durante a saga final?','Ele planeja atacar o Reino de Fiore usando seu vasto exército mágico.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zeref Dragneel (Imperador Spriggan)',TRUE,0),(gen_random_uuid(),q,'August',FALSE,1),(gen_random_uuid(),q,'Mard Geer',FALSE,2),(gen_random_uuid(),q,'Acnologia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'fill_blank','easy','A espírita celestial da Virgem, criada humilde que insiste em ser punida por Lucy, se chama ___.','Ela é capaz de cavar túneis subterrâneos rapidamente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Virgo',TRUE,0),(gen_random_uuid(),q,'Aquarius',FALSE,1),(gen_random_uuid(),q,'Taurus',FALSE,2),(gen_random_uuid(),q,'Loke',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'fill_blank','medium','A espírita celestial do Aquário, com temperamento explosivo e forte ligação emocional com Lucy, se chama ___.','Sua chave é herdada diretamente da mãe de Lucy.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aquarius',TRUE,0),(gen_random_uuid(),q,'Virgo',FALSE,1),(gen_random_uuid(),q,'Taurus',FALSE,2),(gen_random_uuid(),q,'Loke',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'fill_blank','hard','O dragão terrestre gigante que ameaça um reino inteiro durante o arco do Grande Jogo Mágico se chama ___.','Wendy e outros Matadores de Dragão se unem para derrotá-lo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zirconis',TRUE,0),(gen_random_uuid(),q,'Motherglare',FALSE,1),(gen_random_uuid(),q,'Acnologia',FALSE,2),(gen_random_uuid(),q,'Igneel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'fill_blank','impossible','O imperador do Império de Alvarez, revelado como Zeref governando sob identidade oculta, se chama ___.','Ele planeja atacar o Reino de Fiore usando seu vasto exército mágico.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zeref Dragneel (Imperador Spriggan)',TRUE,0),(gen_random_uuid(),q,'August',FALSE,1),(gen_random_uuid(),q,'Mard Geer',FALSE,2),(gen_random_uuid(),q,'Acnologia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','easy','Qual é o nome do amigo de infância de Erza especialista em magia de correntes durante a saga da Torre do Paraíso?','Ele também busca redenção anos depois ao lado de Jellal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Wally Buchanan',TRUE,0),(gen_random_uuid(),q,'Sho',FALSE,1),(gen_random_uuid(),q,'Simon',FALSE,2),(gen_random_uuid(),q,'Millianna',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','easy','Qual é o nome da amiga de infância de Erza obcecada por gatos, também sobrevivente da Torre do Paraíso?','Ela usa luvas com garras inspiradas em felinos durante os combates.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Millianna',TRUE,0),(gen_random_uuid(),q,'Sho',FALSE,1),(gen_random_uuid(),q,'Wally Buchanan',FALSE,2),(gen_random_uuid(),q,'Simon',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','medium','Qual é o nome do mago do Matador de Dragão Branco, capitão da guilda Sabertooth durante o Grande Jogo Mágico?','Ele demonstra grande arrogância inicial, amadurecendo ao longo da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sting Eucliffe',TRUE,0),(gen_random_uuid(),q,'Rogue Cheney',FALSE,1),(gen_random_uuid(),q,'Gajeel Redfox',FALSE,2),(gen_random_uuid(),q,'Laxus Dreyar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','medium','Qual é o nome da guilda rival liderada por Sting e Rogue durante o Grande Jogo Mágico, considerada a mais forte do momento?','Ela substitui simbolicamente a Fairy Tail como guilda número 1 durante a ausência forçada desta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sabertooth',TRUE,0),(gen_random_uuid(),q,'Lamia Scale',FALSE,1),(gen_random_uuid(),q,'Blue Pegasus',FALSE,2),(gen_random_uuid(),q,'Mermaid Heel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','hard','Qual é o nome do mestre da guilda Sabertooth durante o Grande Jogo Mágico, com métodos extremamente rígidos e cruéis de disciplina?','Ele expulsa membros que considera fracos sem qualquer hesitação.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Jiemma',TRUE,0),(gen_random_uuid(),q,'Makarov Dreyar',FALSE,1),(gen_random_uuid(),q,'Bob',FALSE,2),(gen_random_uuid(),q,'Ooba Babasaama',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','impossible','Qual é o nome do general do Império de Alvarez especialista em magia espacial, capaz de teletransportar exércitos inteiros?','Ele desempenha papel crucial na invasão ao Reino de Fiore.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não é individualizado com destaque próprio na série',TRUE,0),(gen_random_uuid(),q,'August',FALSE,1),(gen_random_uuid(),q,'Mard Geer',FALSE,2),(gen_random_uuid(),q,'Precht Gaebolg',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','impossible','Qual é o nome da guilda exclusivamente feminina que participa do Grande Jogo Mágico ao lado de Fairy Tail e Sabertooth?','Kagura é sua membro mais poderosa e notável.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mermaid Heel',TRUE,0),(gen_random_uuid(),q,'Lamia Scale',FALSE,1),(gen_random_uuid(),q,'Blue Pegasus',FALSE,2),(gen_random_uuid(),q,'Sabertooth',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ft,'text','impossible','Qual é o nome da guilda elegante e sofisticada, formada majoritariamente por magos que valorizam etiqueta e boas maneiras?','Ichiya é um de seus membros mais excêntricos e conhecidos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Blue Pegasus',TRUE,0),(gen_random_uuid(),q,'Lamia Scale',FALSE,1),(gen_random_uuid(),q,'Mermaid Heel',FALSE,2),(gen_random_uuid(),q,'Sabertooth',FALSE,3);

END $$;
