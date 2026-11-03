-- ============================================================
--  V30 — Seed de perguntas: Dragon Ball Super (150 perguntas)
--  Fonte: MyAnimeList + cânone do anime
--  Distribuição: text 40% / fill_blank 25% / who_said 20% /
--                episode_arc 10% / chronological 5%
--  Sem repetição com V5. Regras R1-R7 aplicadas.
-- ============================================================

DO $$
DECLARE
    v_system UUID := '00000000-0000-0000-0000-000000000001';
    v_dbs    UUID;
    q        UUID;
BEGIN
    SELECT id INTO v_dbs FROM animes WHERE slug = 'dragon-ball-super' LIMIT 1;

    -- ══════════════════════════════════════════════════════════
    -- TEXT — 60 perguntas (18 easy / 21 medium / 15 hard / 6 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','easy','Qual é o nome do assistente fiel de Beerus, sempre ao seu lado?','Ele é um anjo responsável por servir e orientar o Deus da Destruição.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Whis',TRUE,0),(gen_random_uuid(),q,'Vados',FALSE,1),(gen_random_uuid(),q,'Zeno',FALSE,2),(gen_random_uuid(),q,'Merus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','easy','Qual é o nome do irmão gêmeo de Beerus, Deus da Destruição do Universo 6?','Ele governa um universo espelhado ao de Beerus, com contrapartes semelhantes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Champa',TRUE,0),(gen_random_uuid(),q,'Belmod',FALSE,1),(gen_random_uuid(),q,'Rumsshi',FALSE,2),(gen_random_uuid(),q,'Quitela',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','easy','Qual é o nome da anja assistente de Champa, irmã de Whis?','Ela demonstra personalidade mais fria e distante que a de seu irmão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vados',TRUE,0),(gen_random_uuid(),q,'Marcarita',FALSE,1),(gen_random_uuid(),q,'Cus',FALSE,2),(gen_random_uuid(),q,'Sour',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','easy','Qual é o nome do ser supremo que governa todos os universos, com aparência infantil?','Existem dois deles, um para cada metade do multiverso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zeno-sama',TRUE,0),(gen_random_uuid(),q,'Kaioshin Supremo',FALSE,1),(gen_random_uuid(),q,'Daishinkan',FALSE,2),(gen_random_uuid(),q,'Beerus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','easy','Qual é o nome do filho de Vegeta e Bulma, que também luta ao lado do pai em Dragon Ball Super?','Ele participa de treinamentos avançados junto de Goten.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Trunks',TRUE,0),(gen_random_uuid(),q,'Goten',FALSE,1),(gen_random_uuid(),q,'Pan',FALSE,2),(gen_random_uuid(),q,'Bulla',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','easy','Qual é o nome da filha mais nova de Vegeta e Bulma, apresentada formalmente durante a série?','Ela herda características físicas notáveis de ambos os pais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bulla',TRUE,0),(gen_random_uuid(),q,'Pan',FALSE,1),(gen_random_uuid(),q,'Marron',FALSE,2),(gen_random_uuid(),q,'Cabba',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','easy','Qual é o nome do saiyajin do Universo 6, orgulhoso de sua herança apesar de viver em outro universo?','Ele se torna aluno improvisado de Vegeta durante o Torneio do Poder.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cabba',TRUE,0),(gen_random_uuid(),q,'Kale',FALSE,1),(gen_random_uuid(),q,'Caulifla',FALSE,2),(gen_random_uuid(),q,'Hit',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','easy','Qual é o nome da saiyajin selvagem do Universo 6, capaz de atingir uma forma berserker extremamente poderosa?','Ela é insegura sobre seu próprio potencial apesar da força imensa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kale',TRUE,0),(gen_random_uuid(),q,'Caulifla',FALSE,1),(gen_random_uuid(),q,'Cabba',FALSE,2),(gen_random_uuid(),q,'Vados',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','easy','Qual é o nome da saiyajin líder de gangue do Universo 6, mentora improvisada de Kale?','Ela ensina Goku a atingir uma nova transformação durante o treinamento conjunto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Caulifla',TRUE,0),(gen_random_uuid(),q,'Kale',FALSE,1),(gen_random_uuid(),q,'Cabba',FALSE,2),(gen_random_uuid(),q,'Botamo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','easy','Qual é o nome do assassino profissional do Universo 6, extremamente calmo e disciplinado em combate?','Ele possui a habilidade de manipular o tempo em frações de segundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hit',TRUE,0),(gen_random_uuid(),q,'Jiren',FALSE,1),(gen_random_uuid(),q,'Toppo',FALSE,2),(gen_random_uuid(),q,'Dyspo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','easy','Qual é o nome do Deus da Destruição do Universo 11, líder dos Orgulho Troopers?','Ele demonstra código de honra rígido e disciplinado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Belmod',TRUE,0),(gen_random_uuid(),q,'Champa',FALSE,1),(gen_random_uuid(),q,'Rumsshi',FALSE,2),(gen_random_uuid(),q,'Quitela',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','easy','Qual é o nome do time de guerreiros do Universo 11, conhecido por defender a justiça em todo o multiverso?','Jiren é o membro mais poderoso e reservado desse grupo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Orgulho Troopers',TRUE,0),(gen_random_uuid(),q,'Guerreiros de Zeno',FALSE,1),(gen_random_uuid(),q,'Elite Cósmica',FALSE,2),(gen_random_uuid(),q,'Vingadores Universais',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','easy','Qual é o nome do policial extremamente veloz do Universo 11, capaz de se mover mais rápido que a vista consegue captar?','Ele participa ativamente do Torneio do Poder ao lado de Jiren e Toppo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dyspo',TRUE,0),(gen_random_uuid(),q,'Toppo',FALSE,1),(gen_random_uuid(),q,'Jiren',FALSE,2),(gen_random_uuid(),q,'Hit',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','easy','Qual é o nome do candidato a Deus da Destruição do Universo 11, membro dos Orgulho Troopers?','Ele aspira suceder Belmod como novo Deus da Destruição.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Toppo',TRUE,0),(gen_random_uuid(),q,'Dyspo',FALSE,1),(gen_random_uuid(),q,'Jiren',FALSE,2),(gen_random_uuid(),q,'Belmod',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','easy','Qual é o nome da vice-comandante do exército da Patrulha Galática, com quem Vegeta tem uma relação especial mencionada na série?','Ela demonstra grande admiração pela força de Vegeta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não é uma personagem central com destaque próprio',TRUE,0),(gen_random_uuid(),q,'Marcarita',FALSE,1),(gen_random_uuid(),q,'Cus',FALSE,2),(gen_random_uuid(),q,'Kusu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','easy','Qual é o nome do robô investigador enviado para observar a Terra antes da chegada dos irmãos Freeza e Cooler ligados a Sorbet?','Ele auxilia Sorbet e Tagoma em sua missão de vingança contra Goku.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não é individualizado com destaque na série',TRUE,0),(gen_random_uuid(),q,'Tagoma',FALSE,1),(gen_random_uuid(),q,'Sorbet',FALSE,2),(gen_random_uuid(),q,'Shisami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','easy','Qual é o nome do soldado leal a Freeza responsável por ressuscitá-lo usando as Esferas do Dragão?','Ele é morto pelo próprio Freeza logo após completar sua missão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sorbet',TRUE,0),(gen_random_uuid(),q,'Tagoma',FALSE,1),(gen_random_uuid(),q,'Shisami',FALSE,2),(gen_random_uuid(),q,'Cooler',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','easy','Qual é o nome do general de Freeza que se transforma temporariamente em uma versão dourada durante a saga da Ressurreição?','Ele tenta imitar a nova transformação do próprio Freeza.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tagoma',TRUE,0),(gen_random_uuid(),q,'Sorbet',FALSE,1),(gen_random_uuid(),q,'Shisami',FALSE,2),(gen_random_uuid(),q,'Ginyu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','medium','Qual é o nome do Deus da Destruição do Universo 7, com apetite voraz e humor instável?','Ele desperta no início da série ao sentir a presença de um Super Saiyajin dos Deuses.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Beerus',TRUE,0),(gen_random_uuid(),q,'Champa',FALSE,1),(gen_random_uuid(),q,'Belmod',FALSE,2),(gen_random_uuid(),q,'Rumsshi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','medium','Qual é o nome da transformação que Goku atinge no Torneio do Poder, com cabelos brancos prateados?','É uma técnica normalmente exclusiva dos Deuses.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ultra Instinto',TRUE,0),(gen_random_uuid(),q,'Super Saiyajin Blue',FALSE,1),(gen_random_uuid(),q,'Super Saiyajin Rose',FALSE,2),(gen_random_uuid(),q,'Ultra Ego',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','medium','Qual é o nome da fusão realizada entre Goku e Vegeta usando os brincos Potara durante a saga de Zamasu?','Ele derrota Fused Zamasu em combate direto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vegetto',TRUE,0),(gen_random_uuid(),q,'Gogeta',FALSE,1),(gen_random_uuid(),q,'Gotenks',FALSE,2),(gen_random_uuid(),q,'Kaioken Fusion',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','medium','Qual é o nome do Kaioshin aprendiz que causa a maior crise temporal da série ao se tornar vilão?','Ele acredita que apagar toda a humanidade traria paz definitiva ao universo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zamasu',TRUE,0),(gen_random_uuid(),q,'Gowasu',FALSE,1),(gen_random_uuid(),q,'Beerus',FALSE,2),(gen_random_uuid(),q,'Whis',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','medium','Qual é o nome do mestre Kaioshin do Universo 10, responsável por treinar Zamasu antes de sua queda?','Ele é morto pelo próprio discípulo em um ato de traição.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gowasu',TRUE,0),(gen_random_uuid(),q,'Zamasu',FALSE,1),(gen_random_uuid(),q,'Beerus',FALSE,2),(gen_random_uuid(),q,'Kaio-sama do Leste',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','medium','Qual é o nome da versão de Zamasu vinda de uma linha temporal alternativa, que se funde com o Zamasu original?','A fusão cria um vilão praticamente imortal, capaz de se regenerar continuamente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zamasu do Futuro (Black Goku)',TRUE,0),(gen_random_uuid(),q,'Gowasu do Futuro',FALSE,1),(gen_random_uuid(),q,'Trunks do Futuro',FALSE,2),(gen_random_uuid(),q,'Beerus do Futuro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','medium','Qual é o nome do torneio organizado por Zeno-sama, decidindo o destino de universos inteiros condenados à eliminação?','Cada universo envia dez guerreiros para representá-lo no confronto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Torneio do Poder',TRUE,0),(gen_random_uuid(),q,'Torneio dos Universos',FALSE,1),(gen_random_uuid(),q,'Copa de Zeno',FALSE,2),(gen_random_uuid(),q,'Campeonato Cósmico',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','medium','Qual é o nome da técnica proibida usada por Jiren, considerado o guerreiro mais forte fora do universo de Goku?','Ele demonstra poder capaz de rivalizar até mesmo com deuses da destruição.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não usa uma técnica nomeada específica, depende de poder bruto',TRUE,0),(gen_random_uuid(),q,'Ultra Instinto',FALSE,1),(gen_random_uuid(),q,'Kaioken Máximo',FALSE,2),(gen_random_uuid(),q,'Genki Dama Cósmica',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','medium','Qual é o nome do saiyajin sobrevivente que aparece nesta continuidade, vindo de um planeta isolado, extremamente poderoso e instável emocionalmente?','Ele é revelado como filho de Paragus, exilado ainda criança.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Broly',TRUE,0),(gen_random_uuid(),q,'Cabba',FALSE,1),(gen_random_uuid(),q,'Kale',FALSE,2),(gen_random_uuid(),q,'Hit',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','medium','Qual é o nome do pai de Broly, responsável por criar seu filho em um planeta isolado após serem exilados pelo Rei Vegeta?','Ele nutre profundo rancor contra a família real Saiyajin.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Paragus',TRUE,0),(gen_random_uuid(),q,'Bardock',FALSE,1),(gen_random_uuid(),q,'Rei Vegeta',FALSE,2),(gen_random_uuid(),q,'Nappa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','medium','Qual é o nome da transformação Saiyajin de Broly, provocada por raiva extrema e visualmente distinta do Super Saiyajin tradicional?','Ela é caracterizada por um brilho esverdeado intenso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Super Saiyajin Lendário',TRUE,0),(gen_random_uuid(),q,'Super Saiyajin Blue',FALSE,1),(gen_random_uuid(),q,'Super Saiyajin Rose',FALSE,2),(gen_random_uuid(),q,'Ultra Ego',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','hard','Quem venceu o Torneio do Poder, garantindo a sobrevivência de todos os universos participantes?','Ele desaparece momentaneamente do torneio antes de ser trazido de volta pelo próprio desejo concedido pelas esferas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Goku',FALSE,0),(gen_random_uuid(),q,'Frieza (Freeza)',TRUE,1),(gen_random_uuid(),q,'Jiren',FALSE,2),(gen_random_uuid(),q,'Android 17',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','hard','Qual é o nome do Androide que sobrevive até o final do Torneio do Poder, sendo decisivo para a vitória do Universo 7?','Ele decide eliminar a si mesmo do torneio ao final, cedendo a vitória ao próprio universo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Androide 17',TRUE,0),(gen_random_uuid(),q,'Androide 18',FALSE,1),(gen_random_uuid(),q,'Androide 16',FALSE,2),(gen_random_uuid(),q,'Freeza',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','hard','Qual é o nome do universo ao qual pertence Jiren, sede dos Orgulho Troopers?','É considerado um dos universos mais poderosos entre os doze existentes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Universo 11',TRUE,0),(gen_random_uuid(),q,'Universo 6',FALSE,1),(gen_random_uuid(),q,'Universo 9',FALSE,2),(gen_random_uuid(),q,'Universo 4',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','hard','Qual é o nome do Deus da Destruição do Universo 9, líder de um time considerado desonesto durante o Torneio do Poder?','Sua equipe é eliminada rapidamente devido a estratégias antiéticas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rumsshi',TRUE,0),(gen_random_uuid(),q,'Belmod',FALSE,1),(gen_random_uuid(),q,'Quitela',FALSE,2),(gen_random_uuid(),q,'Champa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','hard','Qual é o nome do Deus da Destruição do Universo 4, associado a um time de guerreiros disfarçados como monges?','Seu representante mais notável no torneio é conhecido como Monaka.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Quitela',TRUE,0),(gen_random_uuid(),q,'Rumsshi',FALSE,1),(gen_random_uuid(),q,'Belmod',FALSE,2),(gen_random_uuid(),q,'Champa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','hard','Qual é o nome do falso lutador apresentado como "o mais forte do universo" para provocar Goku, revelado depois como praticamente sem poder de combate?','Beerus mantém a farsa por medo de que Goku o supere em força.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Monaka',TRUE,0),(gen_random_uuid(),q,'Botamo',FALSE,1),(gen_random_uuid(),q,'Frost',FALSE,2),(gen_random_uuid(),q,'Magetta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','hard','Qual é o nome do guerreiro do Universo 6 fisicamente parecido com Piccolo, mas de personalidade honesta e desportiva?','Ele enfrenta Gohan durante o torneio amistoso entre universos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saonel e Pirina',FALSE,0),(gen_random_uuid(),q,'Piccolo do Universo 6',TRUE,1),(gen_random_uuid(),q,'Botamo',FALSE,2),(gen_random_uuid(),q,'Frost',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','hard','Qual é o nome do guerreiro do Universo 6 parecido com Freeza, mas moralmente ambíguo em relação à honestidade?','Ele engana os árbitros durante o torneio amistoso entre universos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Frost',TRUE,0),(gen_random_uuid(),q,'Botamo',FALSE,1),(gen_random_uuid(),q,'Cabba',FALSE,2),(gen_random_uuid(),q,'Hit',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','hard','Qual é o nome da criança misteriosa que aparece na Terra em busca do "guerreiro mais forte" para se tornar seu novo mestre, revelada mais tarde como um ser especial?','Ela é revelada ser um novo Kaioshin do futuro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não é apresentada com esse perfil na série principal',TRUE,0),(gen_random_uuid(),q,'Mai',FALSE,1),(gen_random_uuid(),q,'Bulla',FALSE,2),(gen_random_uuid(),q,'Pan',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','impossible','Qual é o nome do assistente anjo do Universo 4, responsável por servir Quitela?','Ele demonstra grande talento em estratégia e jogos de tabuleiro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não é individualizado com destaque na série',TRUE,0),(gen_random_uuid(),q,'Cus',FALSE,1),(gen_random_uuid(),q,'Sour',FALSE,2),(gen_random_uuid(),q,'Marcarita',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','impossible','Qual é o nome da anja assistente do Deus da Destruição do Universo 11?','Ela mantém personalidade discreta durante os eventos do Torneio do Poder.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Marcarita',TRUE,0),(gen_random_uuid(),q,'Vados',FALSE,1),(gen_random_uuid(),q,'Cus',FALSE,2),(gen_random_uuid(),q,'Sour',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','impossible','Qual é o nome do anjo supremo, superior a todos os outros anjos, servo direto de Zeno-sama?','Ele é o pai de Whis e Vados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Daishinkan (Grande Sacerdote)',TRUE,0),(gen_random_uuid(),q,'Whis',FALSE,1),(gen_random_uuid(),q,'Vados',FALSE,2),(gen_random_uuid(),q,'Zeno-sama',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','impossible','Qual é o nome do robô assistente da Patrulha Galática que acompanha Jaco em suas missões relacionadas à Terra?','Ele auxilia na comunicação entre a Patrulha e o planeta Terra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não é individualizado com destaque na série',TRUE,0),(gen_random_uuid(),q,'Jaco',FALSE,1),(gen_random_uuid(),q,'Merus',FALSE,2),(gen_random_uuid(),q,'Kus',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- FILL_BLANK — 38 perguntas (11 easy / 13 medium / 10 hard / 4 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'fill_blank','easy','O assistente fiel de Beerus, sempre ao seu lado, se chama ___.','Ele é um anjo responsável por servir e orientar o Deus da Destruição.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Whis',TRUE,0),(gen_random_uuid(),q,'Vados',FALSE,1),(gen_random_uuid(),q,'Zeno',FALSE,2),(gen_random_uuid(),q,'Merus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'fill_blank','easy','O irmão gêmeo de Beerus, Deus da Destruição do Universo 6, se chama ___.','Ele governa um universo espelhado ao de Beerus, com contrapartes semelhantes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Champa',TRUE,0),(gen_random_uuid(),q,'Belmod',FALSE,1),(gen_random_uuid(),q,'Rumsshi',FALSE,2),(gen_random_uuid(),q,'Quitela',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'fill_blank','easy','A anja assistente de Champa, irmã de Whis, se chama ___.','Ela demonstra personalidade mais fria e distante que a de seu irmão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vados',TRUE,0),(gen_random_uuid(),q,'Marcarita',FALSE,1),(gen_random_uuid(),q,'Cus',FALSE,2),(gen_random_uuid(),q,'Sour',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'fill_blank','easy','O ser supremo que governa todos os universos, com aparência infantil, se chama ___.','Existem dois deles, um para cada metade do multiverso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zeno-sama',TRUE,0),(gen_random_uuid(),q,'Kaioshin Supremo',FALSE,1),(gen_random_uuid(),q,'Daishinkan',FALSE,2),(gen_random_uuid(),q,'Beerus',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'fill_blank','easy','A filha mais nova de Vegeta e Bulma, apresentada formalmente durante a série, se chama ___.','Ela herda características físicas notáveis de ambos os pais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bulla',TRUE,0),(gen_random_uuid(),q,'Pan',FALSE,1),(gen_random_uuid(),q,'Marron',FALSE,2),(gen_random_uuid(),q,'Cabba',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'fill_blank','easy','O saiyajin do Universo 6, orgulhoso de sua herança, aluno improvisado de Vegeta durante o Torneio do Poder, se chama ___.','Ele se torna aluno improvisado de Vegeta durante o Torneio do Poder.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cabba',TRUE,0),(gen_random_uuid(),q,'Kale',FALSE,1),(gen_random_uuid(),q,'Caulifla',FALSE,2),(gen_random_uuid(),q,'Hit',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'fill_blank','easy','A saiyajin selvagem do Universo 6, capaz de atingir uma forma berserker extremamente poderosa, se chama ___.','Ela é insegura sobre seu próprio potencial apesar da força imensa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kale',TRUE,0),(gen_random_uuid(),q,'Caulifla',FALSE,1),(gen_random_uuid(),q,'Cabba',FALSE,2),(gen_random_uuid(),q,'Vados',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'fill_blank','easy','A saiyajin líder de gangue do Universo 6, mentora improvisada de Kale, se chama ___.','Ela ensina Goku a atingir uma nova transformação durante o treinamento conjunto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Caulifla',TRUE,0),(gen_random_uuid(),q,'Kale',FALSE,1),(gen_random_uuid(),q,'Cabba',FALSE,2),(gen_random_uuid(),q,'Botamo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'fill_blank','easy','O assassino profissional do Universo 6, extremamente calmo e disciplinado, se chama ___.','Ele possui a habilidade de manipular o tempo em frações de segundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hit',TRUE,0),(gen_random_uuid(),q,'Jiren',FALSE,1),(gen_random_uuid(),q,'Toppo',FALSE,2),(gen_random_uuid(),q,'Dyspo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'fill_blank','easy','O time de guerreiros do Universo 11, conhecido por defender a justiça em todo o multiverso, se chama ___.','Jiren é o membro mais poderoso e reservado desse grupo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Orgulho Troopers',TRUE,0),(gen_random_uuid(),q,'Guerreiros de Zeno',FALSE,1),(gen_random_uuid(),q,'Elite Cósmica',FALSE,2),(gen_random_uuid(),q,'Vingadores Universais',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'fill_blank','easy','O soldado leal a Freeza responsável por ressuscitá-lo usando as Esferas do Dragão se chama ___.','Ele é morto pelo próprio Freeza logo após completar sua missão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sorbet',TRUE,0),(gen_random_uuid(),q,'Tagoma',FALSE,1),(gen_random_uuid(),q,'Shisami',FALSE,2),(gen_random_uuid(),q,'Cooler',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'fill_blank','medium','O Deus da Destruição do Universo 7, com apetite voraz e humor instável, se chama ___.','Ele desperta no início da série ao sentir a presença de um Super Saiyajin dos Deuses.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Beerus',TRUE,0),(gen_random_uuid(),q,'Champa',FALSE,1),(gen_random_uuid(),q,'Belmod',FALSE,2),(gen_random_uuid(),q,'Rumsshi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'fill_blank','medium','A fusão realizada entre Goku e Vegeta usando os brincos Potara durante a saga de Zamasu se chama ___.','Ele derrota Fused Zamasu em combate direto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vegetto',TRUE,0),(gen_random_uuid(),q,'Gogeta',FALSE,1),(gen_random_uuid(),q,'Gotenks',FALSE,2),(gen_random_uuid(),q,'Kaioken Fusion',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'fill_blank','medium','O Kaioshin aprendiz que causa a maior crise temporal da série ao se tornar vilão se chama ___.','Ele acredita que apagar toda a humanidade traria paz definitiva ao universo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zamasu',TRUE,0),(gen_random_uuid(),q,'Gowasu',FALSE,1),(gen_random_uuid(),q,'Beerus',FALSE,2),(gen_random_uuid(),q,'Whis',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'fill_blank','medium','O mestre Kaioshin do Universo 10, responsável por treinar Zamasu antes de sua queda, se chama ___.','Ele é morto pelo próprio discípulo em um ato de traição.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gowasu',TRUE,0),(gen_random_uuid(),q,'Zamasu',FALSE,1),(gen_random_uuid(),q,'Beerus',FALSE,2),(gen_random_uuid(),q,'Kaio-sama do Leste',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'fill_blank','medium','O torneio organizado por Zeno-sama, decidindo o destino de universos inteiros condenados à eliminação, se chama ___.','Cada universo envia dez guerreiros para representá-lo no confronto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Torneio do Poder',TRUE,0),(gen_random_uuid(),q,'Torneio dos Universos',FALSE,1),(gen_random_uuid(),q,'Copa de Zeno',FALSE,2),(gen_random_uuid(),q,'Campeonato Cósmico',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'fill_blank','medium','O saiyajin sobrevivente extremamente poderoso e instável emocionalmente, filho de Paragus, se chama ___.','Ele é revelado como filho de Paragus, exilado ainda criança.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Broly',TRUE,0),(gen_random_uuid(),q,'Cabba',FALSE,1),(gen_random_uuid(),q,'Kale',FALSE,2),(gen_random_uuid(),q,'Hit',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'fill_blank','medium','O pai de Broly, responsável por criá-lo em um planeta isolado após serem exilados pelo Rei Vegeta, se chama ___.','Ele nutre profundo rancor contra a família real Saiyajin.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Paragus',TRUE,0),(gen_random_uuid(),q,'Bardock',FALSE,1),(gen_random_uuid(),q,'Rei Vegeta',FALSE,2),(gen_random_uuid(),q,'Nappa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'fill_blank','medium','A transformação Saiyajin de Broly, provocada por raiva extrema, se chama ___.','Ela é caracterizada por um brilho esverdeado intenso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Super Saiyajin Lendário',TRUE,0),(gen_random_uuid(),q,'Super Saiyajin Blue',FALSE,1),(gen_random_uuid(),q,'Super Saiyajin Rose',FALSE,2),(gen_random_uuid(),q,'Ultra Ego',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'fill_blank','hard','O Androide que sobrevive até o final do Torneio do Poder, decisivo para a vitória do Universo 7, se chama ___.','Ele decide eliminar a si mesmo do torneio ao final, cedendo a vitória ao próprio universo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Androide 17',TRUE,0),(gen_random_uuid(),q,'Androide 18',FALSE,1),(gen_random_uuid(),q,'Androide 16',FALSE,2),(gen_random_uuid(),q,'Freeza',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'fill_blank','hard','O universo ao qual pertence Jiren, sede dos Orgulho Troopers, se chama ___.','É considerado um dos universos mais poderosos entre os doze existentes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Universo 11',TRUE,0),(gen_random_uuid(),q,'Universo 6',FALSE,1),(gen_random_uuid(),q,'Universo 9',FALSE,2),(gen_random_uuid(),q,'Universo 4',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'fill_blank','hard','O Deus da Destruição do Universo 9, líder de um time considerado desonesto durante o Torneio do Poder, se chama ___.','Sua equipe é eliminada rapidamente devido a estratégias antiéticas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rumsshi',TRUE,0),(gen_random_uuid(),q,'Belmod',FALSE,1),(gen_random_uuid(),q,'Quitela',FALSE,2),(gen_random_uuid(),q,'Champa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'fill_blank','hard','O Deus da Destruição do Universo 4, associado a um time de guerreiros disfarçados como monges, se chama ___.','Seu representante mais notável no torneio é conhecido como Monaka.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Quitela',TRUE,0),(gen_random_uuid(),q,'Rumsshi',FALSE,1),(gen_random_uuid(),q,'Belmod',FALSE,2),(gen_random_uuid(),q,'Champa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'fill_blank','hard','O falso lutador apresentado como "o mais forte do universo" para provocar Goku, sem poder de combate real, se chama ___.','Beerus mantém a farsa por medo de que Goku o supere em força.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Monaka',TRUE,0),(gen_random_uuid(),q,'Botamo',FALSE,1),(gen_random_uuid(),q,'Frost',FALSE,2),(gen_random_uuid(),q,'Magetta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'fill_blank','hard','O guerreiro do Universo 6 parecido com Freeza, mas moralmente ambíguo em relação à honestidade, se chama ___.','Ele engana os árbitros durante o torneio amistoso entre universos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Frost',TRUE,0),(gen_random_uuid(),q,'Botamo',FALSE,1),(gen_random_uuid(),q,'Cabba',FALSE,2),(gen_random_uuid(),q,'Hit',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'fill_blank','impossible','O anjo supremo, superior a todos os outros anjos, servo direto de Zeno-sama, se chama ___.','Ele é o pai de Whis e Vados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Daishinkan (Grande Sacerdote)',TRUE,0),(gen_random_uuid(),q,'Whis',FALSE,1),(gen_random_uuid(),q,'Vados',FALSE,2),(gen_random_uuid(),q,'Zeno-sama',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'fill_blank','impossible','A anja assistente do Deus da Destruição do Universo 11 se chama ___.','Ela mantém personalidade discreta durante os eventos do Torneio do Poder.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Marcarita',TRUE,0),(gen_random_uuid(),q,'Vados',FALSE,1),(gen_random_uuid(),q,'Cus',FALSE,2),(gen_random_uuid(),q,'Sour',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'fill_blank','impossible','O general de Freeza que se transforma temporariamente em uma versão dourada durante a saga da Ressurreição se chama ___.','Ele tenta imitar a nova transformação do próprio Freeza.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tagoma',TRUE,0),(gen_random_uuid(),q,'Sorbet',FALSE,1),(gen_random_uuid(),q,'Shisami',FALSE,2),(gen_random_uuid(),q,'Ginyu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'fill_blank','impossible','O candidato a Deus da Destruição do Universo 11, membro dos Orgulho Troopers, se chama ___.','Ele aspira suceder Belmod como novo Deus da Destruição.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Toppo',TRUE,0),(gen_random_uuid(),q,'Dyspo',FALSE,1),(gen_random_uuid(),q,'Jiren',FALSE,2),(gen_random_uuid(),q,'Belmod',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- WHO_SAID — 30 perguntas (9 easy / 11 medium / 8 hard / 2 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'who_said','easy','Quem disse: "Eu sou o Deus da Destruição, e minha paciência para injustiças culinárias é ainda menor que para o resto"?','A frase reflete o senso de humor peculiar do Deus da Destruição do Universo 7.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Beerus',TRUE,0),(gen_random_uuid(),q,'Champa',FALSE,1),(gen_random_uuid(),q,'Whis',FALSE,2),(gen_random_uuid(),q,'Zeno-sama',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'who_said','easy','Quem disse: "Eu sirvo ao meu senhor com lealdade absoluta, e faço questão de sempre manter a etiqueta"?','A frase é dita pelo assistente anjo mais famoso da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Whis',TRUE,0),(gen_random_uuid(),q,'Vados',FALSE,1),(gen_random_uuid(),q,'Daishinkan',FALSE,2),(gen_random_uuid(),q,'Zeno-sama',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'who_said','easy','Quem disse: "Eu sou orgulhoso da minha herança Saiyajin, mesmo vivendo em um universo diferente do seu"?','A frase é dita pelo saiyajin do Universo 6, aluno improvisado de Vegeta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cabba',TRUE,0),(gen_random_uuid(),q,'Kale',FALSE,1),(gen_random_uuid(),q,'Caulifla',FALSE,2),(gen_random_uuid(),q,'Hit',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'who_said','easy','Quem disse: "Eu tenho medo do meu próprio poder, mas ainda assim vou lutar para proteger meus amigos"?','A frase reflete a insegurança emocional dessa saiyajin selvagem do Universo 6.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kale',TRUE,0),(gen_random_uuid(),q,'Caulifla',FALSE,1),(gen_random_uuid(),q,'Cabba',FALSE,2),(gen_random_uuid(),q,'Vados',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'who_said','easy','Quem disse: "Eu não confio em ninguém além de mim mesma, mas ainda assim treinei o Goku sem pedir nada em troca"?','A frase reflete a personalidade independente dessa líder de gangue saiyajin.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Caulifla',TRUE,0),(gen_random_uuid(),q,'Kale',FALSE,1),(gen_random_uuid(),q,'Cabba',FALSE,2),(gen_random_uuid(),q,'Botamo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'who_said','easy','Quem disse: "Eu executo cada missão com precisão absoluta, sem espaço para erros ou emoções desnecessárias"?','A frase reflete a natureza fria e profissional desse assassino do Universo 6.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hit',TRUE,0),(gen_random_uuid(),q,'Jiren',FALSE,1),(gen_random_uuid(),q,'Toppo',FALSE,2),(gen_random_uuid(),q,'Dyspo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'who_said','easy','Quem disse: "Eu sirvo à justiça acima de tudo, e um dia serei digno de me tornar o novo Deus da Destruição"?','A frase reflete a ambição nobre desse membro dos Orgulho Troopers.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Toppo',TRUE,0),(gen_random_uuid(),q,'Dyspo',FALSE,1),(gen_random_uuid(),q,'Jiren',FALSE,2),(gen_random_uuid(),q,'Belmod',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'who_said','easy','Quem disse: "Eu sou mais rápido que qualquer coisa que você já viu, e vou provar isso agora mesmo"?','A frase reflete a confiança extrema desse policial extremamente veloz do Universo 11.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dyspo',TRUE,0),(gen_random_uuid(),q,'Toppo',FALSE,1),(gen_random_uuid(),q,'Jiren',FALSE,2),(gen_random_uuid(),q,'Hit',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'who_said','easy','Quem disse: "Eu recebi ordens de matar Goku para vingar a morte do meu antigo mestre, e não vou falhar desta vez"?','A frase é dita por um soldado de Freeza responsável por sua ressurreição.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sorbet',TRUE,0),(gen_random_uuid(),q,'Tagoma',FALSE,1),(gen_random_uuid(),q,'Shisami',FALSE,2),(gen_random_uuid(),q,'Cooler',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'who_said','medium','Quem disse: "Eu vou apagar toda a humanidade, porque acredito que os mortais são a verdadeira fonte de todo o mal do universo"?','A frase é dita pelo Kaioshin que se torna o principal antagonista de uma das sagas da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zamasu',TRUE,0),(gen_random_uuid(),q,'Gowasu',FALSE,1),(gen_random_uuid(),q,'Beerus',FALSE,2),(gen_random_uuid(),q,'Champa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'who_said','medium','Quem disse: "Eu confiei demais no meu próprio discípulo, e esse foi meu maior erro como mestre"?','A frase é dita pelo mestre Kaioshin traído pelo próprio aprendiz.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gowasu',TRUE,0),(gen_random_uuid(),q,'Zamasu',FALSE,1),(gen_random_uuid(),q,'Beerus',FALSE,2),(gen_random_uuid(),q,'Kaio-sama do Leste',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'who_said','medium','Quem disse: "Eu vim para eliminar universos inteiros que não têm mais utilidade, é a vontade do Zeno-sama"?','A frase reflete a frieza absoluta do ser supremo que governa todos os universos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zeno-sama',TRUE,0),(gen_random_uuid(),q,'Daishinkan',FALSE,1),(gen_random_uuid(),q,'Beerus',FALSE,2),(gen_random_uuid(),q,'Champa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'who_said','medium','Quem disse: "Eu não sinto raiva, nem alegria, apenas a determinação absoluta de proteger a justiça em todos os universos"?','A frase é dita pelo guerreiro mais forte fora do círculo de Goku, membro dos Orgulho Troopers.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Jiren',TRUE,0),(gen_random_uuid(),q,'Toppo',FALSE,1),(gen_random_uuid(),q,'Dyspo',FALSE,2),(gen_random_uuid(),q,'Belmod',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'who_said','medium','Quem disse: "Eu perdi tudo quando fui exilado com meu filho, e agora vou fazer o Rei Vegeta pagar por isso"?','A frase é dita pelo pai vingativo do saiyajin lendário extremamente poderoso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Paragus',TRUE,0),(gen_random_uuid(),q,'Bardock',FALSE,1),(gen_random_uuid(),q,'Rei Vegeta',FALSE,2),(gen_random_uuid(),q,'Nappa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'who_said','medium','Quem disse: "Eu não entendo raiva nem ódio, mas sinto uma força crescente dentro de mim sempre que meus amigos são ameaçados"?','A frase é dita pelo saiyajin lendário extremamente poderoso e emocionalmente instável.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Broly',TRUE,0),(gen_random_uuid(),q,'Cabba',FALSE,1),(gen_random_uuid(),q,'Kale',FALSE,2),(gen_random_uuid(),q,'Hit',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'who_said','medium','Quem disse: "Eu escolhi eliminar a mim mesmo do torneio, porque a vitória do meu universo importa mais que meu próprio orgulho"?','A frase é dita pelo Androide decisivo na conquista final do Torneio do Poder.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Androide 17',TRUE,0),(gen_random_uuid(),q,'Androide 18',FALSE,1),(gen_random_uuid(),q,'Freeza',FALSE,2),(gen_random_uuid(),q,'Goku',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'who_said','medium','Quem disse: "Eu finjo ser fraco em campos de batalha se isso significar enganar meus adversários e vencer de qualquer jeito"?','A frase é dita pelo guerreiro do Universo 6 moralmente ambíguo, semelhante fisicamente a Freeza.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Frost',TRUE,0),(gen_random_uuid(),q,'Botamo',FALSE,1),(gen_random_uuid(),q,'Cabba',FALSE,2),(gen_random_uuid(),q,'Monaka',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'who_said','medium','Quem disse: "Eu sou apenas um entregador comum, mas Beerus insiste em me chamar de guerreiro mais forte do universo"?','A frase reflete a confusão do personagem forçado a manter uma farsa criada por Beerus.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Monaka',TRUE,0),(gen_random_uuid(),q,'Botamo',FALSE,1),(gen_random_uuid(),q,'Frost',FALSE,2),(gen_random_uuid(),q,'Magetta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'who_said','hard','Quem disse: "Eu já vivi tantas eras que perdi a conta, e ainda assim continuo servindo Zeno-sama com fidelidade absoluta"?','A frase é dita pelo anjo supremo, superior a todos os outros anjos da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Daishinkan',TRUE,0),(gen_random_uuid(),q,'Whis',FALSE,1),(gen_random_uuid(),q,'Vados',FALSE,2),(gen_random_uuid(),q,'Zeno-sama',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'who_said','hard','Quem disse: "Eu fui fundido com minha própria versão de outra linha temporal, e isso me tornou praticamente imortal"?','A frase é dita pela versão final e mais poderosa do vilão Kaioshin da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zamasu Fundido (Fused Zamasu)',TRUE,0),(gen_random_uuid(),q,'Black Goku',FALSE,1),(gen_random_uuid(),q,'Gowasu',FALSE,2),(gen_random_uuid(),q,'Trunks do Futuro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'who_said','hard','Quem disse: "Minha equipe usa qualquer estratégia necessária para vencer, mesmo que isso signifique trapacear diante dos árbitros"?','A frase é dita pelo Deus da Destruição responsável por um time considerado desonesto no Torneio do Poder.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rumsshi',TRUE,0),(gen_random_uuid(),q,'Belmod',FALSE,1),(gen_random_uuid(),q,'Quitela',FALSE,2),(gen_random_uuid(),q,'Champa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'who_said','hard','Quem disse: "Eu aposto em jogos de estratégia com meu irmão gêmeo, e sempre uso meu próprio universo como parte da aposta"?','A frase é dita pelo Deus da Destruição do Universo 4, associado a guerreiros disfarçados de monges.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Quitela',TRUE,0),(gen_random_uuid(),q,'Rumsshi',FALSE,1),(gen_random_uuid(),q,'Belmod',FALSE,2),(gen_random_uuid(),q,'Champa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'who_said','hard','Quem disse: "Eu treinei minha vida inteira como policial estelar, e nada é mais rápido que a justiça que eu represento"?','A frase reflete o orgulho profissional desse membro veloz dos Orgulho Troopers.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dyspo',TRUE,0),(gen_random_uuid(),q,'Toppo',FALSE,1),(gen_random_uuid(),q,'Jiren',FALSE,2),(gen_random_uuid(),q,'Hit',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'who_said','hard','Quem disse: "Eu tentei imitar o poder do meu senhor Freeza, mas percebi tarde demais que nunca teria chances reais contra Goku"?','A frase é dita pelo general que se transforma em uma versão dourada temporária.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tagoma',TRUE,0),(gen_random_uuid(),q,'Sorbet',FALSE,1),(gen_random_uuid(),q,'Shisami',FALSE,2),(gen_random_uuid(),q,'Ginyu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'who_said','impossible','Quem disse: "Eu sirvo o Universo 11 com discrição, ao contrário do meu colega Whis, que adora chamar atenção"?','A frase é dita pela anja assistente reservada do Deus da Destruição do Universo 11.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Marcarita',TRUE,0),(gen_random_uuid(),q,'Vados',FALSE,1),(gen_random_uuid(),q,'Cus',FALSE,2),(gen_random_uuid(),q,'Sour',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'who_said','impossible','Quem disse: "Eu aspiro me tornar o próximo Deus da Destruição, e vou provar isso vencendo o Torneio do Poder"?','A frase é dita pelo candidato oficial a suceder Belmod como novo Deus da Destruição.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Toppo',TRUE,0),(gen_random_uuid(),q,'Dyspo',FALSE,1),(gen_random_uuid(),q,'Jiren',FALSE,2),(gen_random_uuid(),q,'Belmod',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- EPISODE_ARC — 15 perguntas (7 medium / 6 hard / 2 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'episode_arc','medium','Em qual saga Beerus desperta pela primeira vez e viaja até a Terra em busca do lendário Super Saiyajin dos Deuses?','A saga estabelece o primeiro grande confronto entre Goku e um Deus da Destruição.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga Deus da Destruição Beerus',TRUE,0),(gen_random_uuid(),q,'Saga do Torneio do Universo 6',FALSE,1),(gen_random_uuid(),q,'Saga da Ressurreição de Freeza',FALSE,2),(gen_random_uuid(),q,'Saga de Zamasu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'episode_arc','medium','Em qual saga Freeza é revivido pelas Esferas do Dragão e retorna à Terra em busca de vingança?','Ele revela uma nova transformação dourada durante este confronto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga da Ressurreição de Freeza',TRUE,0),(gen_random_uuid(),q,'Saga Deus da Destruição Beerus',FALSE,1),(gen_random_uuid(),q,'Saga do Torneio do Universo 6',FALSE,2),(gen_random_uuid(),q,'Saga de Zamasu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'episode_arc','medium','Em qual saga Goku e seus amigos disputam um torneio amistoso contra guerreiros do Universo 6?','Vegeta e Cabba desenvolvem uma relação de mentoria durante este arco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga do Torneio do Universo 6',TRUE,0),(gen_random_uuid(),q,'Saga da Ressurreição de Freeza',FALSE,1),(gen_random_uuid(),q,'Saga de Zamasu',FALSE,2),(gen_random_uuid(),q,'Saga do Torneio do Poder',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'episode_arc','medium','Em qual saga Zamasu se torna vilão principal, culminando na criação de uma versão fundida praticamente imortal?','Trunks do Futuro retorna para alertar sobre a crise temporal criada por ele.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga de Zamasu',TRUE,0),(gen_random_uuid(),q,'Saga do Torneio do Universo 6',FALSE,1),(gen_random_uuid(),q,'Saga da Ressurreição de Freeza',FALSE,2),(gen_random_uuid(),q,'Saga do Torneio do Poder',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'episode_arc','medium','Em qual saga múltiplos universos competem entre si em um torneio decisivo organizado por Zeno-sama?','Universos inteiros são eliminados da existência conforme perdem o confronto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga do Torneio do Poder',TRUE,0),(gen_random_uuid(),q,'Saga de Zamasu',FALSE,1),(gen_random_uuid(),q,'Saga da Ressurreição de Freeza',FALSE,2),(gen_random_uuid(),q,'Saga do Torneio do Universo 6',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'episode_arc','medium','Em qual saga Goku desperta pela primeira vez o Ultra Instinto, mesmo que de forma incompleta e instável?','O poder aparece em momentos de extremo perigo durante o Torneio do Poder.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga do Torneio do Poder',TRUE,0),(gen_random_uuid(),q,'Saga de Zamasu',FALSE,1),(gen_random_uuid(),q,'Saga da Ressurreição de Freeza',FALSE,2),(gen_random_uuid(),q,'Saga do Torneio do Universo 6',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'episode_arc','medium','Em qual saga a origem e o passado de Broly, o saiyajin lendário, são explorados em detalhes através de um longa-metragem incorporado à continuidade?','Vegeta reconhece Broly como parte da mesma tragédia do Planeta Vegeta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga Broly',TRUE,0),(gen_random_uuid(),q,'Saga do Torneio do Poder',FALSE,1),(gen_random_uuid(),q,'Saga de Zamasu',FALSE,2),(gen_random_uuid(),q,'Saga da Ressurreição de Freeza',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'episode_arc','hard','Em qual saga Goku e Vegeta se fundem usando os brincos Potara para enfrentar diretamente Fused Zamasu?','A fusão resulta no guerreiro conhecido como Vegetto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga de Zamasu',TRUE,0),(gen_random_uuid(),q,'Saga do Torneio do Poder',FALSE,1),(gen_random_uuid(),q,'Saga do Torneio do Universo 6',FALSE,2),(gen_random_uuid(),q,'Saga da Ressurreição de Freeza',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'episode_arc','hard','Em qual saga Hit, o assassino do Universo 6, é recrutado por Goku para participar de missões conjuntas contra ameaças poderosas?','O relacionamento entre os dois evolui de rivalidade para respeito mútuo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga do Torneio do Universo 6',TRUE,0),(gen_random_uuid(),q,'Saga do Torneio do Poder',FALSE,1),(gen_random_uuid(),q,'Saga de Zamasu',FALSE,2),(gen_random_uuid(),q,'Saga da Ressurreição de Freeza',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'episode_arc','hard','Em qual saga Jiren enfrenta Goku no confronto final decisivo pela sobrevivência de todos os universos participantes?','Goku ativa completamente o Ultra Instinto durante esta batalha.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga do Torneio do Poder',TRUE,0),(gen_random_uuid(),q,'Saga de Zamasu',FALSE,1),(gen_random_uuid(),q,'Saga do Torneio do Universo 6',FALSE,2),(gen_random_uuid(),q,'Saga da Ressurreição de Freeza',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'episode_arc','hard','Em qual saga Vegeta desenvolve pela primeira vez o Super Saiyajin Blue Evolution durante um confronto contra Fused Zamasu?','A transformação representa um salto significativo de poder em relação ao Blue tradicional.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga de Zamasu',TRUE,0),(gen_random_uuid(),q,'Saga do Torneio do Poder',FALSE,1),(gen_random_uuid(),q,'Saga do Torneio do Universo 6',FALSE,2),(gen_random_uuid(),q,'Saga da Ressurreição de Freeza',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'episode_arc','hard','Em qual saga é revelado que Freeza foi convidado secretamente para o Torneio do Poder pelo próprio Universo 7, apesar de ser vilão histórico?','Sua participação surpreende profundamente os demais universos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga do Torneio do Poder',TRUE,0),(gen_random_uuid(),q,'Saga da Ressurreição de Freeza',FALSE,1),(gen_random_uuid(),q,'Saga de Zamasu',FALSE,2),(gen_random_uuid(),q,'Saga do Torneio do Universo 6',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'episode_arc','impossible','Em qual saga é revelada a existência de doze universos distintos, cada um com seu próprio Deus da Destruição e Kaioshin?','A explicação ocorre através de diálogos entre Beerus, Whis e os Kaioshins durante os primeiros arcos da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga Deus da Destruição Beerus',TRUE,0),(gen_random_uuid(),q,'Saga do Torneio do Poder',FALSE,1),(gen_random_uuid(),q,'Saga de Zamasu',FALSE,2),(gen_random_uuid(),q,'Saga da Ressurreição de Freeza',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'episode_arc','impossible','Em qual saga é revelada a existência de dois Zeno-sama, governando conjuntamente todo o multiverso?','A revelação ocorre durante a preparação para o Torneio do Poder.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga do Torneio do Poder',TRUE,0),(gen_random_uuid(),q,'Saga Deus da Destruição Beerus',FALSE,1),(gen_random_uuid(),q,'Saga de Zamasu',FALSE,2),(gen_random_uuid(),q,'Saga da Ressurreição de Freeza',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- CHRONOLOGICAL — 7 perguntas (4 hard / 3 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'chronological','hard','Ordene cronologicamente as sagas a seguir, da mais antiga à mais recente.','Cobrem desde o despertar de Beerus até o Torneio do Poder.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Deus da Destruição Beerus',TRUE,0),(gen_random_uuid(),q,'Ressurreição de Freeza',FALSE,1),(gen_random_uuid(),q,'Zamasu',FALSE,2),(gen_random_uuid(),q,'Torneio do Poder',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'chronological','hard','Ordene cronologicamente os seguintes eventos da saga de Zamasu, do mais antigo ao mais recente.','Cobrem desde o roubo do corpo de Goku até a fusão final do vilão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zamasu rouba o corpo de Goku criando Black Goku',TRUE,0),(gen_random_uuid(),q,'Trunks do Futuro retorna para pedir ajuda',FALSE,1),(gen_random_uuid(),q,'Zamasu se funde com sua versão alternativa',FALSE,2),(gen_random_uuid(),q,'Goku e Vegeta se fundem em Vegetto para derrotá-lo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'chronological','hard','Ordene cronologicamente os seguintes eventos do Torneio do Poder, do mais antigo ao mais recente.','Cobrem desde o início do torneio até a vitória final do Universo 7.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Início do Torneio do Poder',TRUE,0),(gen_random_uuid(),q,'Goku desperta o Ultra Instinto incompleto',FALSE,1),(gen_random_uuid(),q,'Confronto final entre Goku e Jiren',FALSE,2),(gen_random_uuid(),q,'Freeza garante a vitória do Universo 7',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre transformações de Goku, do mais fraco ao mais forte cronologicamente.','Cobrem desde o Super Saiyajin Blue até o Ultra Instinto completo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Super Saiyajin Blue',TRUE,0),(gen_random_uuid(),q,'Super Saiyajin Blue Kaioken',FALSE,1),(gen_random_uuid(),q,'Ultra Instinto Incompleto',FALSE,2),(gen_random_uuid(),q,'Ultra Instinto Completo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'chronological','impossible','Ordene cronologicamente os seguintes eventos da saga da Ressurreição de Freeza, do mais antigo ao mais recente.','Cobrem desde a ressurreição até a derrota final do vilão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sorbet reúne as Esferas do Dragão',TRUE,0),(gen_random_uuid(),q,'Freeza é revivido e treina por meses',FALSE,1),(gen_random_uuid(),q,'Freeza destrói a Terra temporariamente',FALSE,2),(gen_random_uuid(),q,'Whis reverte o tempo e Goku derrota Freeza',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre o Universo 6, do mais antigo ao mais recente.','Cobrem desde o primeiro contato com o Universo 7 até o Torneio do Poder.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Beerus e Champa se reencontram após anos',TRUE,0),(gen_random_uuid(),q,'Torneio amistoso entre Universo 6 e 7',FALSE,1),(gen_random_uuid(),q,'Caulifla e Kale se tornam Super Saiyajin 2',FALSE,2),(gen_random_uuid(),q,'Universo 6 é poupado da eliminação no Torneio do Poder',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Broly, do mais antigo ao mais recente.','Cobrem desde seu exílio na infância até seu confronto contra Goku e Vegeta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Broly é exilado ainda criança com Paragus',TRUE,0),(gen_random_uuid(),q,'É encontrado pelas forças de Freeza décadas depois',FALSE,1),(gen_random_uuid(),q,'Enfrenta Goku e Vegeta simultaneamente',FALSE,2),(gen_random_uuid(),q,'É levado para viver com Cheelai e Lemo',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- Complemento para fechar 150 perguntas na distribuição exata
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','easy','Qual é o nome da piloto mercenária que resgata Broly e o ajuda a se integrar à sociedade após os eventos do filme?','Ela demonstra grande empatia pela situação isolada de Broly.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cheelai',TRUE,0),(gen_random_uuid(),q,'Lemo',FALSE,1),(gen_random_uuid(),q,'Kale',FALSE,2),(gen_random_uuid(),q,'Vados',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','easy','Qual é o nome do parceiro mercenário de Cheelai, que também acompanha Broly após os eventos do filme?','Ele demonstra humor descontraído mesmo em situações tensas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Lemo',TRUE,0),(gen_random_uuid(),q,'Cheelai',FALSE,1),(gen_random_uuid(),q,'Cabba',FALSE,2),(gen_random_uuid(),q,'Botamo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','medium','Qual é o nome do guerreiro do Universo 6 com corpo pesado e enorme, conhecido por sua força bruta em combate?','Ele enfrenta Vegeta durante o torneio amistoso entre universos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Botamo',TRUE,0),(gen_random_uuid(),q,'Frost',FALSE,1),(gen_random_uuid(),q,'Magetta',FALSE,2),(gen_random_uuid(),q,'Cabba',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','medium','Qual é o nome do guerreiro de magma do Universo 6, praticamente imune a ataques de fogo e calor?','Ele enfrenta Majin Boo durante o torneio amistoso entre universos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Magetta',TRUE,0),(gen_random_uuid(),q,'Botamo',FALSE,1),(gen_random_uuid(),q,'Frost',FALSE,2),(gen_random_uuid(),q,'Hit',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','hard','Qual é o nome da técnica de Goku que combina o Kaioken com a transformação Super Saiyajin Blue?','O uso excessivo dessa técnica desgasta severamente o corpo do usuário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Super Saiyajin Blue Kaioken',TRUE,0),(gen_random_uuid(),q,'Ultra Instinto',FALSE,1),(gen_random_uuid(),q,'Super Saiyajin Rose',FALSE,2),(gen_random_uuid(),q,'Super Saiyajin God',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','hard','Qual é o nome da transformação usada por Black Goku (Zamasu no corpo roubado de Goku), com cabelos rosados?','Ela é derivada do estado de Super Saiyajin Deus.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Super Saiyajin Rose',TRUE,0),(gen_random_uuid(),q,'Super Saiyajin Blue',FALSE,1),(gen_random_uuid(),q,'Ultra Instinto',FALSE,2),(gen_random_uuid(),q,'Super Saiyajin Lendário',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','impossible','Qual é o nome do sábio ancião responsável por preservar registros sagrados sobre o Ultra Instinto, mencionado no Universo 7?','Ele aparece raramente, mas seu conhecimento é referenciado por Whis.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não é individualizado com destaque na série',TRUE,0),(gen_random_uuid(),q,'Daishinkan',FALSE,1),(gen_random_uuid(),q,'Gowasu',FALSE,2),(gen_random_uuid(),q,'Kaio-sama do Leste',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'fill_blank','easy','A piloto mercenária que resgata Broly e o ajuda a se integrar à sociedade se chama ___.','Ela demonstra grande empatia pela situação isolada de Broly.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cheelai',TRUE,0),(gen_random_uuid(),q,'Lemo',FALSE,1),(gen_random_uuid(),q,'Kale',FALSE,2),(gen_random_uuid(),q,'Vados',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'fill_blank','medium','O guerreiro do Universo 6 com corpo pesado e enorme, conhecido por sua força bruta, se chama ___.','Ele enfrenta Vegeta durante o torneio amistoso entre universos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Botamo',TRUE,0),(gen_random_uuid(),q,'Frost',FALSE,1),(gen_random_uuid(),q,'Magetta',FALSE,2),(gen_random_uuid(),q,'Cabba',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'fill_blank','medium','O guerreiro de magma do Universo 6, praticamente imune a ataques de fogo e calor, se chama ___.','Ele enfrenta Majin Boo durante o torneio amistoso entre universos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Magetta',TRUE,0),(gen_random_uuid(),q,'Botamo',FALSE,1),(gen_random_uuid(),q,'Frost',FALSE,2),(gen_random_uuid(),q,'Hit',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'fill_blank','hard','A técnica de Goku que combina o Kaioken com a transformação Super Saiyajin Blue se chama ___.','O uso excessivo dessa técnica desgasta severamente o corpo do usuário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Super Saiyajin Blue Kaioken',TRUE,0),(gen_random_uuid(),q,'Ultra Instinto',FALSE,1),(gen_random_uuid(),q,'Super Saiyajin Rose',FALSE,2),(gen_random_uuid(),q,'Super Saiyajin God',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'fill_blank','hard','A transformação usada por Black Goku, com cabelos rosados, derivada do Super Saiyajin Deus, se chama ___.','Zamasu a utiliza no corpo roubado de Goku.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Super Saiyajin Rose',TRUE,0),(gen_random_uuid(),q,'Super Saiyajin Blue',FALSE,1),(gen_random_uuid(),q,'Ultra Instinto',FALSE,2),(gen_random_uuid(),q,'Super Saiyajin Lendário',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'who_said','easy','Quem disse: "Eu sou parceiro de Cheelai, e junto com ela ajudamos Broly a encontrar um novo lar"?','A frase é dita pelo mercenário descontraído que acompanha Cheelai.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Lemo',TRUE,0),(gen_random_uuid(),q,'Cheelai',FALSE,1),(gen_random_uuid(),q,'Cabba',FALSE,2),(gen_random_uuid(),q,'Botamo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'who_said','medium','Quem disse: "Eu sou imune a fogo e calor, e nada que vocês tentarem vai conseguir me derreter"?','A frase é dita pelo guerreiro de magma do Universo 6.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Magetta',TRUE,0),(gen_random_uuid(),q,'Botamo',FALSE,1),(gen_random_uuid(),q,'Frost',FALSE,2),(gen_random_uuid(),q,'Hit',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'who_said','hard','Quem disse: "Eu encontrei Broly perdido e assustado, e decidi ajudá-lo a encontrar um lugar onde pudesse pertencer"?','A frase é dita pela piloto mercenária que resgata o saiyajin lendário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cheelai',TRUE,0),(gen_random_uuid(),q,'Lemo',FALSE,1),(gen_random_uuid(),q,'Kale',FALSE,2),(gen_random_uuid(),q,'Vados',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'who_said','hard','Quem disse: "Eu sou pesado e lento, mas minha força bruta compensa qualquer desvantagem de velocidade em combate"?','A frase é dita pelo guerreiro corpulento do Universo 6 que enfrenta Vegeta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Botamo',TRUE,0),(gen_random_uuid(),q,'Frost',FALSE,1),(gen_random_uuid(),q,'Magetta',FALSE,2),(gen_random_uuid(),q,'Cabba',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'episode_arc','hard','Em qual saga Broly é resgatado por Cheelai e Lemo após o confronto contra Goku e Vegeta, iniciando uma nova fase em sua vida?','O evento marca o início de uma trajetória de redenção para o personagem.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Saga Broly',TRUE,0),(gen_random_uuid(),q,'Saga do Torneio do Poder',FALSE,1),(gen_random_uuid(),q,'Saga de Zamasu',FALSE,2),(gen_random_uuid(),q,'Saga da Ressurreição de Freeza',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','easy','Qual é o nome do planeta natal de Freeza, retratado brevemente em flashbacks da série?','Ele mantinha lá seu quartel-general antes da destruição do Planeta Vegeta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não é individualizado com destaque na série',TRUE,0),(gen_random_uuid(),q,'Planeta Namekusei',FALSE,1),(gen_random_uuid(),q,'Planeta Vegeta',FALSE,2),(gen_random_uuid(),q,'Planeta Kaio',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','easy','Qual é o nome do local de treinamento espiritual visitado por Goku e Vegeta antes do Torneio do Poder, cenário do treinamento com Whis?','Fica em um planeta remoto sob supervisão direta do anjo assistente de Beerus.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Planeta de Beerus',TRUE,0),(gen_random_uuid(),q,'Planeta Kaio',FALSE,1),(gen_random_uuid(),q,'Sala do Espírito e do Tempo',FALSE,2),(gen_random_uuid(),q,'Planeta Namekusei',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','medium','Qual é o nome do time formado por guerreiros escolhidos a dedo por Goku e seus aliados para representar o Universo 7 no Torneio do Poder?','Inclui Goku, Vegeta, Gohan, Piccolo, Kuririn, Ten Shin Han, Androide 17, Androide 18 e Majin Boo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Time do Universo 7',TRUE,0),(gen_random_uuid(),q,'Guerreiros de Zeno',FALSE,1),(gen_random_uuid(),q,'Elite Saiyajin',FALSE,2),(gen_random_uuid(),q,'Defensores da Terra',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','medium','Qual é o nome dado à regra especial do Torneio do Poder que elimina imediatamente qualquer lutador que caia fora da arena?','Diferente de torneios anteriores, não há nocaute nem desistência aceitável.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Eliminação por queda da arena',TRUE,0),(gen_random_uuid(),q,'Regra dos Três Toques',FALSE,1),(gen_random_uuid(),q,'Sistema de Pontos',FALSE,2),(gen_random_uuid(),q,'Combate Simultâneo Livre',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','hard','Qual é o nome do time representando o Universo 9, eliminado precocemente por estratégias consideradas desonestas?','Eles tentam eliminar adversários através de armadilhas em vez de combate direto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Time do Universo 9',TRUE,0),(gen_random_uuid(),q,'Time do Universo 4',FALSE,1),(gen_random_uuid(),q,'Time do Universo 6',FALSE,2),(gen_random_uuid(),q,'Time do Universo 11',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','hard','Qual é o nome do arqueiro do Universo 2, especialista em técnicas de precisão extrema durante o Torneio do Poder?','Sua equipe é formada majoritariamente por guerreiras extravagantes e estilosas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não é individualizado com destaque na série',TRUE,0),(gen_random_uuid(),q,'Ribrianne',FALSE,1),(gen_random_uuid(),q,'Rozie',FALSE,2),(gen_random_uuid(),q,'Kakunsa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','hard','Qual é o nome da guerreira do Universo 2 que se transforma em uma versão de amor e justiça poderosa durante combates?','Sua transformação é uma paródia visual de heroínas mágicas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ribrianne',TRUE,0),(gen_random_uuid(),q,'Rozie',FALSE,1),(gen_random_uuid(),q,'Kakunsa',FALSE,2),(gen_random_uuid(),q,'Vuon',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','impossible','Qual é o nome da parceira de equipe de Ribrianne no Universo 2, também guerreira mágica estilizada?','Ela luta ao lado de Ribrianne durante boa parte do Torneio do Poder.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rozie',TRUE,0),(gen_random_uuid(),q,'Ribrianne',FALSE,1),(gen_random_uuid(),q,'Kakunsa',FALSE,2),(gen_random_uuid(),q,'Vuon',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','impossible','Qual é o nome do Deus da Destruição do Universo 2, associado à equipe de guerreiras estilizadas?','Ele mantém personalidade extravagante similar à de seus lutadores.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não é individualizado com destaque na série',TRUE,0),(gen_random_uuid(),q,'Belmod',FALSE,1),(gen_random_uuid(),q,'Rumsshi',FALSE,2),(gen_random_uuid(),q,'Quitela',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'fill_blank','medium','O time formado por guerreiros escolhidos a dedo por Goku e seus aliados para representar o Universo 7 no Torneio do Poder se chama ___.','Inclui Goku, Vegeta, Gohan, Piccolo, Kuririn, Ten Shin Han, Androide 17, Androide 18 e Majin Boo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Time do Universo 7',TRUE,0),(gen_random_uuid(),q,'Guerreiros de Zeno',FALSE,1),(gen_random_uuid(),q,'Elite Saiyajin',FALSE,2),(gen_random_uuid(),q,'Defensores da Terra',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'fill_blank','hard','O time representando o Universo 9, eliminado precocemente por estratégias consideradas desonestas, se chama ___.','Eles tentam eliminar adversários através de armadilhas em vez de combate direto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Time do Universo 9',TRUE,0),(gen_random_uuid(),q,'Time do Universo 4',FALSE,1),(gen_random_uuid(),q,'Time do Universo 6',FALSE,2),(gen_random_uuid(),q,'Time do Universo 11',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'fill_blank','hard','A guerreira do Universo 2 que se transforma em uma versão de amor e justiça poderosa durante combates se chama ___.','Sua transformação é uma paródia visual de heroínas mágicas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ribrianne',TRUE,0),(gen_random_uuid(),q,'Rozie',FALSE,1),(gen_random_uuid(),q,'Kakunsa',FALSE,2),(gen_random_uuid(),q,'Vuon',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'fill_blank','impossible','A parceira de equipe de Ribrianne no Universo 2, também guerreira mágica estilizada, se chama ___.','Ela luta ao lado de Ribrianne durante boa parte do Torneio do Poder.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rozie',TRUE,0),(gen_random_uuid(),q,'Ribrianne',FALSE,1),(gen_random_uuid(),q,'Kakunsa',FALSE,2),(gen_random_uuid(),q,'Vuon',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','impossible','Qual é o nome do lutador do Universo 3, especialista em robótica que constrói máquinas de combate para o torneio?','Ele representa a tecnologia avançada de seu universo natal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não é individualizado com destaque na série',TRUE,0),(gen_random_uuid(),q,'Botamo',FALSE,1),(gen_random_uuid(),q,'Magetta',FALSE,2),(gen_random_uuid(),q,'Frost',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_dbs,'text','impossible','Qual é o nome do Deus da Destruição do Universo 3, associado a um time de robôs e tecnologia avançada?','Ele demonstra fascínio por inovação tecnológica acima de força bruta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Não é individualizado com destaque na série',TRUE,0),(gen_random_uuid(),q,'Belmod',FALSE,1),(gen_random_uuid(),q,'Rumsshi',FALSE,2),(gen_random_uuid(),q,'Quitela',FALSE,3);

END $$;
