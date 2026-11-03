-- ============================================================
--  V46 — Seed de perguntas: No Game No Life (150 perguntas)
--  Fonte: MyAnimeList + cânone do anime
--  Distribuição: text 40% / fill_blank 25% / who_said 20% /
--                episode_arc 10% / chronological 5%
--  Sem repetição com V5. Regras R1-R7 aplicadas.
-- ============================================================

DO $$
DECLARE
    v_system UUID := '00000000-0000-0000-0000-000000000001';
    v_ngnl   UUID;
    q        UUID;
BEGIN
    SELECT id INTO v_ngnl FROM animes WHERE slug = 'no-game-no-life' LIMIT 1;

    -- ══════════════════════════════════════════════════════════
    -- TEXT — 60 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','easy','Qual é o nome do irmão mais velho da dupla de gamers reclusos, considerado o estrategista lógico da parceria?','Ele raramente sai de casa, preferindo interagir com o mundo através de jogos online.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sora',TRUE,0),(gen_random_uuid(),q,'Shiro',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','easy','Qual é o nome da irmã mais nova da dupla de gamers, prodígio matemática que complementa perfeitamente as habilidades do irmão?','Ela demonstra dificuldade extrema de comunicação quando separada de seu irmão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shiro',TRUE,0),(gen_random_uuid(),q,'Sora',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','easy','Qual é o nome dado ao apelido combinado usado pela dupla de irmãos quando jogam juntos online, invicta em qualquer competição?','Esse nome se torna lendário no mundo dos jogos antes mesmo dos eventos principais da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Blank',TRUE,0),(gen_random_uuid(),q,'Void',FALSE,1),(gen_random_uuid(),q,'Zero',FALSE,2),(gen_random_uuid(),q,'Ghost',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','easy','Qual é o nome do deus que convoca os dois irmãos para um mundo de fantasia onde todos os conflitos são resolvidos através de jogos?','Ele governa esse mundo através de dez regras absolutas conhecidas por todos os habitantes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tet',TRUE,0),(gen_random_uuid(),q,'Jibril',FALSE,1),(gen_random_uuid(),q,'Fiel',FALSE,2),(gen_random_uuid(),q,'Kurami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','easy','Qual é o nome dado ao mundo de fantasia para onde os dois irmãos são transportados, onde toda disputa é resolvida através de jogos?','Guerras físicas são estritamente proibidas dentro deste universo alternativo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Disboard',TRUE,0),(gen_random_uuid(),q,'Elkia',FALSE,1),(gen_random_uuid(),q,'Immanity',FALSE,2),(gen_random_uuid(),q,'Avant Heim',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','easy','Qual é o nome da raça humana no novo mundo, considerada a mais fraca entre as dezesseis espécies inteligentes existentes?','Sua fragilidade física é compensada apenas por astúcia estratégica excepcional.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Immanity',TRUE,0),(gen_random_uuid(),q,'Flügel',FALSE,1),(gen_random_uuid(),q,'Elf',FALSE,2),(gen_random_uuid(),q,'Dhampir',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','easy','Qual é o nome da anjo poderosa da raça Flügel, servidora que se une à dupla protagonista após ser derrotada em jogo estratégico?','Ela demonstra fascínio obsessivo por livros e conhecimento acumulado ao longo dos séculos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Jibril',TRUE,0),(gen_random_uuid(),q,'Stephanie',FALSE,1),(gen_random_uuid(),q,'Fiel',FALSE,2),(gen_random_uuid(),q,'Kurami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','easy','Qual é o nome da princesa deposta do reino Immanity, que se torna aliada relutante da dupla protagonista após sua chegada ao trono?','Ela demonstra frustração constante com os métodos pouco convencionais de seus aliados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Stephanie Dola',TRUE,0),(gen_random_uuid(),q,'Jibril',FALSE,1),(gen_random_uuid(),q,'Fiel',FALSE,2),(gen_random_uuid(),q,'Kurami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','easy','Qual é o nome do último rei humano antes da chegada dos protagonistas, avô de Stephanie, cujas dívidas de jogo quase destruíram o reino?','Sua incompetência estratégica levou Immanity à beira da extinção territorial completa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ex-Rei Dola',TRUE,0),(gen_random_uuid(),q,'Tet',FALSE,1),(gen_random_uuid(),q,'Fiel',FALSE,2),(gen_random_uuid(),q,'Kurami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','easy','Qual é o nome dado às dez regras absolutas que governam todos os conflitos dentro do mundo de fantasia, estabelecidas por Tet?','Elas garantem que nenhuma forma de violência física resolva disputas territoriais ou pessoais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Os Dez Compromissos',TRUE,0),(gen_random_uuid(),q,'As Leis Sagradas',FALSE,1),(gen_random_uuid(),q,'O Pacto Divino',FALSE,2),(gen_random_uuid(),q,'As Regras de Disboard',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','easy','Qual é o nome dado à raça élfica encontrada nas florestas do novo mundo, conhecida por sua magia avançada e cultura isolacionista?','Eles possuem histórico de conflitos territoriais antigos com outras raças do mundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Elf',TRUE,0),(gen_random_uuid(),q,'Flügel',FALSE,1),(gen_random_uuid(),q,'Dhampir',FALSE,2),(gen_random_uuid(),q,'Dragonia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','easy','Qual é o nome dado à raça anjo alada do mundo de fantasia, conhecida por poder militar avançado e tecnologia sofisticada?','Jibril pertence a esta raça, uma das mais poderosas entre as dezesseis existentes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Flügel',TRUE,0),(gen_random_uuid(),q,'Elf',FALSE,1),(gen_random_uuid(),q,'Dhampir',FALSE,2),(gen_random_uuid(),q,'Dragonia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','easy','Qual é o nome do jogo estratégico complexo utilizado pela dupla protagonista em seu primeiro grande desafio contra a raça élfica do novo mundo?','A vitória neste confronto expande drasticamente o território conquistado por Immanity.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Xadrez em Chessboard Gigante',TRUE,0),(gen_random_uuid(),q,'Jogo de Cartas Real',FALSE,1),(gen_random_uuid(),q,'Batalha de Estratégia',FALSE,2),(gen_random_uuid(),q,'Desafio dos Reis',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','medium','Qual é o nome da jovem elfa manipuladora que trabalha secretamente como espiã para desestabilizar o reino Immanity?','Sua verdadeira lealdade é revelada apenas após confronto direto com os protagonistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kurami Zell',TRUE,0),(gen_random_uuid(),q,'Fiel',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','medium','Qual é o nome dado ao território governado pela raça anjo, conhecido por conter uma biblioteca de conhecimento vastíssima acumulada ao longo de milênios?','Jibril demonstra devoção quase religiosa aos livros armazenados neste local.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Avant Heim',TRUE,0),(gen_random_uuid(),q,'Elkia',FALSE,1),(gen_random_uuid(),q,'Oceand',FALSE,2),(gen_random_uuid(),q,'Eastern Federation',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','medium','Qual é o nome dado ao reino humano fundado após a chegada dos protagonistas, capital de todos os territórios conquistados por Immanity?','Ele serve como base central de operações estratégicas ao longo da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Elkia',TRUE,0),(gen_random_uuid(),q,'Avant Heim',FALSE,1),(gen_random_uuid(),q,'Oceand',FALSE,2),(gen_random_uuid(),q,'Eastern Federation',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','medium','Qual é o nome da raça marinha subaquática encontrada no oceano do novo mundo, conhecida por dominar territórios aquáticos vastos?','Sua estrutura social é significativamente diferente das raças terrestres conhecidas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sirene',TRUE,0),(gen_random_uuid(),q,'Dhampir',FALSE,1),(gen_random_uuid(),q,'Dragonia',FALSE,2),(gen_random_uuid(),q,'Werebeast',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','medium','Qual é o nome dado à federação de nações localizada no leste do mapa do mundo, com cultura fortemente inspirada em tradições orientais?','Sua estrutura política difere significativamente da monarquia adotada por Immanity.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Eastern Federation',TRUE,0),(gen_random_uuid(),q,'Avant Heim',FALSE,1),(gen_random_uuid(),q,'Elkia',FALSE,2),(gen_random_uuid(),q,'Oceand',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','medium','Qual é o nome dado à raça dracônica poderosa do novo mundo, conhecida por força física devastadora e territórios montanhosos isolados?','Eles são considerados uma das raças mais fortes fisicamente entre as dezesseis existentes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dragonia',TRUE,0),(gen_random_uuid(),q,'Dhampir',FALSE,1),(gen_random_uuid(),q,'Werebeast',FALSE,2),(gen_random_uuid(),q,'Sirene',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','medium','Qual é o nome dado à raça meio-vampírica do novo mundo, conhecida por habilidades sobrenaturais e cultura aristocrática refinada?','Sua sociedade valoriza tradições antigas e hierarquia nobre rigorosa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dhampir',TRUE,0),(gen_random_uuid(),q,'Werebeast',FALSE,1),(gen_random_uuid(),q,'Sirene',FALSE,2),(gen_random_uuid(),q,'Dragonia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','medium','Qual é o nome dado à raça de bestas humanoides do novo mundo, conhecida por instintos aguçados e forte senso comunitário tribal?','Sua cultura valoriza fortemente laços de lealdade dentro de suas comunidades organizadas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Werebeast',TRUE,0),(gen_random_uuid(),q,'Dhampir',FALSE,1),(gen_random_uuid(),q,'Sirene',FALSE,2),(gen_random_uuid(),q,'Dragonia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','hard','Qual é o nome dado ao jogo de xadrez gigante disputado pelos protagonistas contra os elfos, decisivo para a expansão territorial de Immanity?','Sua vitória neste confronto específico consolida a reputação estratégica invencível da dupla.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Grande Partida Élfica',TRUE,0),(gen_random_uuid(),q,'Desafio dos Reis',FALSE,1),(gen_random_uuid(),q,'Batalha Estratégica',FALSE,2),(gen_random_uuid(),q,'Torneio das Raças',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','hard','Qual é o nome dado ao desafio complexo proposto por Jibril envolvendo múltiplos jogos simultâneos, testando os limites intelectuais dos protagonistas?','Este confronto revela a verdadeira profundidade estratégica da dupla de irmãos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Desafio de Jibril',TRUE,0),(gen_random_uuid(),q,'Torneio Angelical',FALSE,1),(gen_random_uuid(),q,'Prova dos Deuses',FALSE,2),(gen_random_uuid(),q,'Batalha Celestial',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','hard','Qual é o nome dado à condição especial estabelecida por Tet para a vitória final que determinaria o domínio completo do mundo de fantasia?','Alcançar essa condição exigiria a superação de todas as dezesseis raças existentes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Unificação de Disboard',TRUE,0),(gen_random_uuid(),q,'Conquista Suprema',FALSE,1),(gen_random_uuid(),q,'Domínio Absoluto',FALSE,2),(gen_random_uuid(),q,'Ascensão Divina',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','hard','Qual é o nome dado ao ser primordial anterior aos deuses conhecidos, mencionado em textos antigos do mundo de fantasia como origem de todo o conflito original?','Sua existência é referenciada apenas em fragmentos de lendas muito antigas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'A Antiga Guerra dos Deuses',TRUE,0),(gen_random_uuid(),q,'O Vazio Primordial',FALSE,1),(gen_random_uuid(),q,'O Caos Original',FALSE,2),(gen_random_uuid(),q,'A Era Sombria',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','hard','Qual é o nome dado ao território subaquático governado pela raça Sirene, cenário de negociações diplomáticas complexas envolvendo os protagonistas?','Este local apresenta desafios únicos de comunicação devido à natureza aquática de seus habitantes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Oceand',TRUE,0),(gen_random_uuid(),q,'Avant Heim',FALSE,1),(gen_random_uuid(),q,'Elkia',FALSE,2),(gen_random_uuid(),q,'Eastern Federation',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','impossible','Qual é o nome do vice-comandante Werebeast que participa de negociações territoriais complexas com os protagonistas durante sua expansão territorial?','Sua raça valoriza fortemente demonstrações de força e lealdade tribal durante negociações.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Comandante Werebeast',TRUE,0),(gen_random_uuid(),q,'Fiel',FALSE,1),(gen_random_uuid(),q,'Kurami',FALSE,2),(gen_random_uuid(),q,'Jibril',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','impossible','Qual é o nome dado ao artefato mágico antigo mencionado em lendas do mundo de fantasia, associado à criação original das dezesseis raças existentes?','Sua origem exata permanece parcialmente misteriosa mesmo para os habitantes mais antigos do mundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Núcleo Criador',TRUE,0),(gen_random_uuid(),q,'Coroa das Raças',FALSE,1),(gen_random_uuid(),q,'Semente Primordial',FALSE,2),(gen_random_uuid(),q,'Cristal Genesis',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- FILL_BLANK — 38 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'fill_blank','easy','O irmão mais velho da dupla de gamers reclusos, estrategista lógico da parceria, se chama ___.','Ele raramente sai de casa, preferindo interagir com o mundo através de jogos online.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sora',TRUE,0),(gen_random_uuid(),q,'Shiro',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'fill_blank','easy','A irmã mais nova da dupla de gamers, prodígio matemática, se chama ___.','Ela demonstra dificuldade extrema de comunicação quando separada de seu irmão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shiro',TRUE,0),(gen_random_uuid(),q,'Sora',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'fill_blank','easy','O apelido combinado usado pela dupla de irmãos quando jogam juntos online, invicta em qualquer competição, é ___.','Esse nome se torna lendário no mundo dos jogos antes mesmo dos eventos principais da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Blank',TRUE,0),(gen_random_uuid(),q,'Void',FALSE,1),(gen_random_uuid(),q,'Zero',FALSE,2),(gen_random_uuid(),q,'Ghost',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'fill_blank','easy','O deus que convoca os dois irmãos para um mundo de fantasia onde conflitos são resolvidos através de jogos se chama ___.','Ele governa esse mundo através de dez regras absolutas conhecidas por todos os habitantes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tet',TRUE,0),(gen_random_uuid(),q,'Jibril',FALSE,1),(gen_random_uuid(),q,'Fiel',FALSE,2),(gen_random_uuid(),q,'Kurami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'fill_blank','easy','O mundo de fantasia para onde os dois irmãos são transportados, onde toda disputa é resolvida através de jogos, se chama ___.','Guerras físicas são estritamente proibidas dentro deste universo alternativo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Disboard',TRUE,0),(gen_random_uuid(),q,'Elkia',FALSE,1),(gen_random_uuid(),q,'Immanity',FALSE,2),(gen_random_uuid(),q,'Avant Heim',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'fill_blank','easy','A raça humana no novo mundo, considerada a mais fraca entre as dezesseis espécies inteligentes, se chama ___.','Sua fragilidade física é compensada apenas por astúcia estratégica excepcional.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Immanity',TRUE,0),(gen_random_uuid(),q,'Flügel',FALSE,1),(gen_random_uuid(),q,'Elf',FALSE,2),(gen_random_uuid(),q,'Dhampir',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'fill_blank','easy','A anjo poderosa da raça Flügel, servidora que se une à dupla protagonista após ser derrotada em jogo estratégico, se chama ___.','Ela demonstra fascínio obsessivo por livros e conhecimento acumulado ao longo dos séculos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Jibril',TRUE,0),(gen_random_uuid(),q,'Stephanie',FALSE,1),(gen_random_uuid(),q,'Fiel',FALSE,2),(gen_random_uuid(),q,'Kurami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'fill_blank','easy','A princesa deposta do reino Immanity, que se torna aliada relutante da dupla protagonista, se chama ___.','Ela demonstra frustração constante com os métodos pouco convencionais de seus aliados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Stephanie',TRUE,0),(gen_random_uuid(),q,'Jibril',FALSE,1),(gen_random_uuid(),q,'Fiel',FALSE,2),(gen_random_uuid(),q,'Kurami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'fill_blank','easy','As dez regras absolutas que governam todos os conflitos dentro do mundo de fantasia, estabelecidas por Tet, são chamadas de ___.','Elas garantem que nenhuma forma de violência física resolva disputas territoriais ou pessoais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Os Dez Compromissos',TRUE,0),(gen_random_uuid(),q,'As Leis Sagradas',FALSE,1),(gen_random_uuid(),q,'O Pacto Divino',FALSE,2),(gen_random_uuid(),q,'As Regras de Disboard',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'fill_blank','easy','A raça élfica encontrada nas florestas do novo mundo, conhecida por magia avançada e cultura isolacionista, se chama ___.','Eles possuem histórico de conflitos territoriais antigos com outras raças do mundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Elf',TRUE,0),(gen_random_uuid(),q,'Flügel',FALSE,1),(gen_random_uuid(),q,'Dhampir',FALSE,2),(gen_random_uuid(),q,'Dragonia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'fill_blank','easy','A raça anjo alada do mundo de fantasia, conhecida por poder militar avançado, se chama ___.','Jibril pertence a esta raça, uma das mais poderosas entre as dezesseis existentes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Flügel',TRUE,0),(gen_random_uuid(),q,'Elf',FALSE,1),(gen_random_uuid(),q,'Dhampir',FALSE,2),(gen_random_uuid(),q,'Dragonia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'fill_blank','medium','A jovem elfa manipuladora que trabalha secretamente como espiã para desestabilizar o reino Immanity se chama ___.','Sua verdadeira lealdade é revelada apenas após confronto direto com os protagonistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kurami',TRUE,0),(gen_random_uuid(),q,'Fiel',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'fill_blank','medium','O território governado pela raça anjo, conhecido por conter uma biblioteca de conhecimento vastíssima, se chama ___.','Jibril demonstra devoção quase religiosa aos livros armazenados neste local.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Avant Heim',TRUE,0),(gen_random_uuid(),q,'Elkia',FALSE,1),(gen_random_uuid(),q,'Oceand',FALSE,2),(gen_random_uuid(),q,'Eastern Federation',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'fill_blank','medium','O reino humano fundado após a chegada dos protagonistas, capital dos territórios conquistados, se chama ___.','Ele serve como base central de operações estratégicas ao longo da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Elkia',TRUE,0),(gen_random_uuid(),q,'Avant Heim',FALSE,1),(gen_random_uuid(),q,'Oceand',FALSE,2),(gen_random_uuid(),q,'Eastern Federation',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'fill_blank','medium','A raça marinha subaquática encontrada no oceano do novo mundo se chama ___.','Sua estrutura social é significativamente diferente das raças terrestres conhecidas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sirene',TRUE,0),(gen_random_uuid(),q,'Dhampir',FALSE,1),(gen_random_uuid(),q,'Dragonia',FALSE,2),(gen_random_uuid(),q,'Werebeast',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'fill_blank','medium','A federação de nações localizada no leste do mapa do mundo, com cultura inspirada em tradições orientais, se chama ___.','Sua estrutura política difere significativamente da monarquia adotada por Immanity.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Eastern Federation',TRUE,0),(gen_random_uuid(),q,'Avant Heim',FALSE,1),(gen_random_uuid(),q,'Elkia',FALSE,2),(gen_random_uuid(),q,'Oceand',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'fill_blank','medium','A raça dracônica poderosa do novo mundo, conhecida por força física devastadora, se chama ___.','Eles são considerados uma das raças mais fortes fisicamente entre as dezesseis existentes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dragonia',TRUE,0),(gen_random_uuid(),q,'Dhampir',FALSE,1),(gen_random_uuid(),q,'Werebeast',FALSE,2),(gen_random_uuid(),q,'Sirene',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'fill_blank','hard','O jogo de xadrez gigante disputado pelos protagonistas contra os elfos, decisivo para expansão territorial, é chamado de ___.','Sua vitória neste confronto específico consolida a reputação estratégica invencível da dupla.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Grande Partida Élfica',TRUE,0),(gen_random_uuid(),q,'Desafio dos Reis',FALSE,1),(gen_random_uuid(),q,'Batalha Estratégica',FALSE,2),(gen_random_uuid(),q,'Torneio das Raças',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'fill_blank','hard','O desafio complexo proposto por Jibril envolvendo múltiplos jogos simultâneos é chamado de ___.','Este confronto revela a verdadeira profundidade estratégica da dupla de irmãos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Desafio de Jibril',TRUE,0),(gen_random_uuid(),q,'Torneio Angelical',FALSE,1),(gen_random_uuid(),q,'Prova dos Deuses',FALSE,2),(gen_random_uuid(),q,'Batalha Celestial',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'fill_blank','hard','A condição especial estabelecida por Tet para a vitória final que determinaria o domínio completo do mundo é chamada de ___.','Alcançar essa condição exigiria a superação de todas as dezesseis raças existentes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Unificação de Disboard',TRUE,0),(gen_random_uuid(),q,'Conquista Suprema',FALSE,1),(gen_random_uuid(),q,'Domínio Absoluto',FALSE,2),(gen_random_uuid(),q,'Ascensão Divina',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'fill_blank','hard','O território subaquático governado pela raça Sirene, cenário de negociações diplomáticas complexas, se chama ___.','Este local apresenta desafios únicos de comunicação devido à natureza aquática de seus habitantes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Oceand',TRUE,0),(gen_random_uuid(),q,'Avant Heim',FALSE,1),(gen_random_uuid(),q,'Elkia',FALSE,2),(gen_random_uuid(),q,'Eastern Federation',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'fill_blank','impossible','O artefato mágico antigo mencionado em lendas do mundo, associado à criação original das dezesseis raças, é referido como ___.','Sua origem exata permanece parcialmente misteriosa mesmo para os habitantes mais antigos do mundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Núcleo Criador',TRUE,0),(gen_random_uuid(),q,'Coroa das Raças',FALSE,1),(gen_random_uuid(),q,'Semente Primordial',FALSE,2),(gen_random_uuid(),q,'Cristal Genesis',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- WHO_SAID — 30 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'who_said','easy','Quem disse: "Minha irmã e eu nunca perdemos um jogo juntos, e não pretendemos começar agora, nem mesmo neste mundo estranho"?','A frase reflete a confiança do irmão mais velho da dupla invicta de jogadores.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sora',TRUE,0),(gen_random_uuid(),q,'Shiro',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'who_said','easy','Quem disse: "Eu calculo probabilidades instantaneamente, mas preciso do meu irmão por perto para me sentir segura"?','A frase é dita pela irmã mais nova, prodígio matemática da dupla.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shiro',TRUE,0),(gen_random_uuid(),q,'Sora',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'who_said','easy','Quem disse: "Eu criei este mundo onde todos os conflitos são resolvidos através de jogos, eliminando guerras físicas para sempre"?','A frase é dita pelo deus que estabelece as regras fundamentais do novo mundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tet',TRUE,0),(gen_random_uuid(),q,'Jibril',FALSE,1),(gen_random_uuid(),q,'Fiel',FALSE,2),(gen_random_uuid(),q,'Kurami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'who_said','easy','Quem disse: "Eu amo livros e conhecimento acima de quase tudo, e por isso me juntei a vocês após ser derrotada em nosso jogo"?','A frase é dita pela anjo poderosa que se une aos protagonistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Jibril',TRUE,0),(gen_random_uuid(),q,'Stephanie',FALSE,1),(gen_random_uuid(),q,'Fiel',FALSE,2),(gen_random_uuid(),q,'Kurami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'who_said','easy','Quem disse: "Eu fico frustrada constantemente com os métodos pouco convencionais de vocês dois, mas admito que sempre funcionam"?','A frase é dita pela princesa deposta que se torna aliada relutante.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Stephanie',TRUE,0),(gen_random_uuid(),q,'Jibril',FALSE,1),(gen_random_uuid(),q,'Fiel',FALSE,2),(gen_random_uuid(),q,'Kurami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'who_said','medium','Quem disse: "Eu trabalho secretamente contra o reino Immanity, e minha verdadeira lealdade só será revelada quando eu decidir"?','A frase é dita pela jovem elfa manipuladora envolvida em espionagem.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kurami',TRUE,0),(gen_random_uuid(),q,'Fiel',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'who_said','medium','Quem disse: "Minhas dívidas de jogo quase destruíram este reino, e deixo esse fardo para minha neta resolver"?','A frase é dita pelo último rei humano antes da chegada dos protagonistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ex-Rei Dola',TRUE,0),(gen_random_uuid(),q,'Tet',FALSE,1),(gen_random_uuid(),q,'Fiel',FALSE,2),(gen_random_uuid(),q,'Kurami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'who_said','medium','Quem disse: "Sou considerada a raça mais fraca fisicamente, mas minha astúcia estratégica compensa qualquer desvantagem física"?','A frase reflete a filosofia adotada pela raça humana do novo mundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sora (representando Immanity)',TRUE,0),(gen_random_uuid(),q,'Jibril',FALSE,1),(gen_random_uuid(),q,'Fiel',FALSE,2),(gen_random_uuid(),q,'Kurami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'who_said','medium','Quem disse: "Proponho um desafio envolvendo múltiplos jogos simultâneos, para testar verdadeiramente os limites intelectuais de vocês"?','A frase é dita pela anjo que propõe teste complexo aos protagonistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Jibril',TRUE,0),(gen_random_uuid(),q,'Stephanie',FALSE,1),(gen_random_uuid(),q,'Fiel',FALSE,2),(gen_random_uuid(),q,'Kurami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'who_said','hard','Quem disse: "A vitória neste xadrez gigante contra os elfos consolidou nossa reputação estratégica de forma definitiva"?','A frase é dita pelo irmão mais velho após confronto decisivo contra a raça élfica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sora',TRUE,0),(gen_random_uuid(),q,'Shiro',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'who_said','hard','Quem disse: "Estabeleci a condição de unificação completa de Disboard para determinar quem realmente merece meu trono"?','A frase é dita pelo deus que governa o mundo de fantasia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tet',TRUE,0),(gen_random_uuid(),q,'Jibril',FALSE,1),(gen_random_uuid(),q,'Fiel',FALSE,2),(gen_random_uuid(),q,'Kurami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'who_said','hard','Quem disse: "Nossa negociação diplomática com a raça Sirene apresenta desafios únicos, considerando a natureza aquática deles"?','A frase reflete a dificuldade de comunicação enfrentada pelos protagonistas em território subaquático.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sora',TRUE,0),(gen_random_uuid(),q,'Shiro',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- EPISODE_ARC — 15 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'episode_arc','medium','Em qual arco Sora e Shiro são convocados por Tet para o mundo de Disboard, iniciando sua jornada de jogos?','O arco estabelece a premissa inicial de toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Introdução',TRUE,0),(gen_random_uuid(),q,'Arco Élfico',FALSE,1),(gen_random_uuid(),q,'Arco de Jibril',FALSE,2),(gen_random_uuid(),q,'Arco de Oceand',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'episode_arc','medium','Em qual arco os protagonistas enfrentam a raça élfica em jogo de xadrez gigante, expandindo o território de Immanity?','Este confronto consolida a reputação estratégica invencível da dupla no novo mundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco Élfico',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco de Jibril',FALSE,2),(gen_random_uuid(),q,'Arco de Oceand',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'episode_arc','medium','Em qual arco Jibril desafia os protagonistas com múltiplos jogos simultâneos, sendo eventualmente derrotada e se juntando a eles?','Este arco introduz uma das aliadas mais poderosas da dupla protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Jibril',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco Élfico',FALSE,2),(gen_random_uuid(),q,'Arco de Oceand',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'episode_arc','medium','Em qual arco os protagonistas viajam até o território subaquático para negociações diplomáticas complexas com a raça Sirene?','Este arco explora desafios únicos de comunicação em ambiente aquático.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Oceand',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco Élfico',FALSE,2),(gen_random_uuid(),q,'Arco de Jibril',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'episode_arc','medium','Em qual arco Kurami é revelada como espiã trabalhando secretamente contra o reino Immanity?','A revelação ocorre através de confronto direto com os protagonistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco Élfico',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco de Jibril',FALSE,2),(gen_random_uuid(),q,'Arco de Oceand',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'episode_arc','medium','Em qual arco Stephanie se torna aliada relutante dos protagonistas após a chegada deles ao trono de Immanity?','O arco estabelece a dinâmica inicial entre a princesa deposta e a dupla de irmãos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Introdução',TRUE,0),(gen_random_uuid(),q,'Arco Élfico',FALSE,1),(gen_random_uuid(),q,'Arco de Jibril',FALSE,2),(gen_random_uuid(),q,'Arco de Oceand',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'episode_arc','hard','Em qual arco é revelado o passado do Ex-Rei Dola, explicando como suas dívidas de jogo quase destruíram o reino Immanity?','A revelação ocorre através de flashbacks durante os primeiros episódios da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Introdução',TRUE,0),(gen_random_uuid(),q,'Arco Élfico',FALSE,1),(gen_random_uuid(),q,'Arco de Jibril',FALSE,2),(gen_random_uuid(),q,'Arco de Oceand',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'episode_arc','hard','Em qual arco os protagonistas visitam a biblioteca vastíssima do território governado pela raça anjo?','Este arco explora profundamente a devoção de Jibril por conhecimento acumulado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Jibril',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco Élfico',FALSE,2),(gen_random_uuid(),q,'Arco de Oceand',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'episode_arc','impossible','Em qual arco é sugerida pela primeira vez a existência de uma guerra antiga entre os deuses, anterior aos eventos conhecidos da série?','A menção ocorre através de referências indiretas em textos antigos consultados pelos protagonistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Jibril',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco Élfico',FALSE,2),(gen_random_uuid(),q,'Arco de Oceand',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- CHRONOLOGICAL — 7 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'chronological','hard','Ordene cronologicamente os arcos a seguir, do mais antigo ao mais recente.','Cobrem desde a convocação inicial até as negociações com a raça Sirene.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Introdução',TRUE,0),(gen_random_uuid(),q,'Élfico',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Oceand',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'chronological','hard','Ordene cronologicamente os seguintes eventos da jornada de Sora e Shiro, do mais antigo ao mais recente.','Cobrem desde sua convocação por Tet até as negociações no território subaquático.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'São convocados por Tet para Disboard',TRUE,0),(gen_random_uuid(),q,'Vencem os elfos no jogo de xadrez gigante',FALSE,1),(gen_random_uuid(),q,'Derrotam Jibril em desafio de múltiplos jogos',FALSE,2),(gen_random_uuid(),q,'Negociam diplomaticamente com a raça Sirene',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre Jibril, do mais antigo ao mais recente.','Cobrem desde o desafio proposto até sua integração à equipe protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Propõe desafio de múltiplos jogos simultâneos',TRUE,0),(gen_random_uuid(),q,'É derrotada pelos protagonistas',FALSE,1),(gen_random_uuid(),q,'Torna-se serva leal da dupla de irmãos',FALSE,2),(gen_random_uuid(),q,'Compartilha conhecimento de sua biblioteca vasta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre Immanity, do mais antigo ao mais recente.','Cobrem desde as dívidas do antigo rei até a expansão territorial liderada pelos protagonistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'O Ex-Rei Dola acumula dívidas de jogo desastrosas',TRUE,0),(gen_random_uuid(),q,'Sora e Shiro chegam e assumem o trono',FALSE,1),(gen_random_uuid(),q,'O reino conquista território élfico em jogo decisivo',FALSE,2),(gen_random_uuid(),q,'Immanity expande influência através de negociações',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Kurami, do mais antigo ao mais recente.','Cobrem desde sua infiltração inicial até a revelação completa de sua verdadeira lealdade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Infiltra-se secretamente no reino Immanity',TRUE,0),(gen_random_uuid(),q,'Trabalha nos bastidores para desestabilizar o reino',FALSE,1),(gen_random_uuid(),q,'É confrontada diretamente pelos protagonistas',FALSE,2),(gen_random_uuid(),q,'Tem sua verdadeira lealdade finalmente revelada',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Stephanie, do mais antigo ao mais recente.','Cobrem desde a deposição de sua família até sua aliança com os novos governantes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sua família perde o trono devido às dívidas do avô',TRUE,0),(gen_random_uuid(),q,'Conhece Sora e Shiro após a chegada deles',FALSE,1),(gen_random_uuid(),q,'Torna-se aliada relutante da nova dupla governante',FALSE,2),(gen_random_uuid(),q,'Participa ativamente da expansão territorial de Immanity',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre a raça élfica, do mais antigo ao mais recente.','Cobrem desde os conflitos territoriais antigos até a derrota no xadrez gigante.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mantém conflitos territoriais antigos com outras raças',TRUE,0),(gen_random_uuid(),q,'Desafia os protagonistas em jogo de xadrez gigante',FALSE,1),(gen_random_uuid(),q,'É derrotada pela estratégia da dupla de irmãos',FALSE,2),(gen_random_uuid(),q,'Perde território significativo para Immanity',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- COMPLEMENTO — fechar 150 perguntas (32 text / 16 fill_blank / 18 who_said / 6 episode_arc)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','easy','Qual desses personagens é a jovem elfa aliada dos protagonistas, contrastando com a rival espiã da mesma raça?','Ela demonstra lealdade genuína em oposição à traição de Kurami.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fiel',TRUE,0),(gen_random_uuid(),q,'Kurami',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','medium','Qual desses personagens participa das negociações territoriais como vice-comandante Werebeast, representando os interesses de sua raça tribal?','Sua postura reflete os valores culturais de força e lealdade de seu povo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Comandante Werebeast',TRUE,0),(gen_random_uuid(),q,'Fiel',FALSE,1),(gen_random_uuid(),q,'Kurami',FALSE,2),(gen_random_uuid(),q,'Jibril',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','easy','Qual desses personagens acompanha Kurami em suas atividades de espionagem, também pertencendo à raça élfica?','Ela é aliada leal dos protagonistas, diferentemente da colega manipuladora.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fiel',TRUE,0),(gen_random_uuid(),q,'Kurami',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','medium','Qual desses personagens negocia territórios em nome de sua raça tribal, valorizando fortemente demonstrações de força durante encontros diplomáticos?','Sua cultura enfatiza lealdade comunitária acima de interesses individuais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Comandante Werebeast',TRUE,0),(gen_random_uuid(),q,'Fiel',FALSE,1),(gen_random_uuid(),q,'Kurami',FALSE,2),(gen_random_uuid(),q,'Jibril',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','easy','Qual desses personagens demonstra lealdade genuína aos protagonistas, contrastando fortemente com a traição de sua colega de mesma raça élfica?','Sua confiabilidade é reconhecida por toda a equipe ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fiel',TRUE,0),(gen_random_uuid(),q,'Kurami',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','hard','Qual desses personagens representa formalmente sua raça tribal durante negociações territoriais complexas com o reino Immanity?','Sua postura diplomática reflete valores culturais únicos de sua comunidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Comandante Werebeast',TRUE,0),(gen_random_uuid(),q,'Fiel',FALSE,1),(gen_random_uuid(),q,'Kurami',FALSE,2),(gen_random_uuid(),q,'Jibril',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','medium','Qual desses personagens é reconhecida como aliada confiável apesar de pertencer à mesma raça élfica que a espiã manipuladora Kurami?','Sua integridade contrasta diretamente com as motivações ocultas da colega.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fiel',TRUE,0),(gen_random_uuid(),q,'Kurami',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','hard','Qual desses personagens defende os interesses territoriais Werebeast durante negociações diplomáticas com Immanity, valorizando força e lealdade tribal?','Sua abordagem direta reflete a cultura comunitária de seu povo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Comandante Werebeast',TRUE,0),(gen_random_uuid(),q,'Fiel',FALSE,1),(gen_random_uuid(),q,'Kurami',FALSE,2),(gen_random_uuid(),q,'Jibril',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','easy','Qual desses personagens elfa mantém postura confiável e leal, sendo aliada valiosa dos protagonistas ao longo de toda a trama?','Ela nunca demonstra as intenções ocultas características de sua colega espiã.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fiel',TRUE,0),(gen_random_uuid(),q,'Kurami',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','medium','Qual desses personagens Werebeast participa ativamente de negociações territoriais, sempre representando os valores tribais de sua comunidade?','Sua presença nas negociações reflete a importância estratégica de sua raça.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Comandante Werebeast',TRUE,0),(gen_random_uuid(),q,'Fiel',FALSE,1),(gen_random_uuid(),q,'Kurami',FALSE,2),(gen_random_uuid(),q,'Jibril',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','hard','Qual desses personagens acompanha os protagonistas com lealdade constante, pertencendo à mesma raça élfica envolvida em conflitos territoriais antigos?','Sua postura genuína contrasta com a manipulação política de outros membros de sua raça.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fiel',TRUE,0),(gen_random_uuid(),q,'Kurami',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','medium','Qual desses personagens negocia formalmente em nome de sua comunidade tribal, demonstrando força e lealdade características de sua cultura?','Sua função diplomática é essencial para manter relações pacíficas com Immanity.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Comandante Werebeast',TRUE,0),(gen_random_uuid(),q,'Fiel',FALSE,1),(gen_random_uuid(),q,'Kurami',FALSE,2),(gen_random_uuid(),q,'Jibril',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','easy','Qual desses personagens élfica é reconhecida amplamente por sua confiabilidade constante junto aos protagonistas ao longo de toda a série?','Sua lealdade nunca vacila, mesmo diante de situações complexas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fiel',TRUE,0),(gen_random_uuid(),q,'Kurami',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','hard','Qual desses personagens Werebeast comparece a encontros diplomáticos importantes, sempre priorizando os valores tribais de sua raça?','Sua presença é fundamental durante negociações territoriais complexas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Comandante Werebeast',TRUE,0),(gen_random_uuid(),q,'Fiel',FALSE,1),(gen_random_uuid(),q,'Kurami',FALSE,2),(gen_random_uuid(),q,'Jibril',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','medium','Qual desses personagens élfica demonstra integridade constante, diferenciando-se claramente da manipulação política exercida pela colega espiã?','Sua conduta é frequentemente citada como exemplo de lealdade genuína.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fiel',TRUE,0),(gen_random_uuid(),q,'Kurami',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','hard','Qual desses personagens Werebeast atua como representante oficial em negociações territoriais decisivas para o futuro de sua comunidade?','Sua postura reflete profundo senso de responsabilidade tribal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Comandante Werebeast',TRUE,0),(gen_random_uuid(),q,'Fiel',FALSE,1),(gen_random_uuid(),q,'Kurami',FALSE,2),(gen_random_uuid(),q,'Jibril',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','easy','Qual desses personagens é elfa aliada leal, com conduta oposta à espiã manipuladora que compartilha sua mesma origem racial?','Sua presença ao lado dos protagonistas é constante durante toda a narrativa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fiel',TRUE,0),(gen_random_uuid(),q,'Kurami',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','medium','Qual desses personagens Werebeast estabelece diálogo diplomático constante com Immanity, defendendo interesses territoriais de sua raça?','Sua atuação diplomática busca sempre o benefício mútuo entre as duas nações.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Comandante Werebeast',TRUE,0),(gen_random_uuid(),q,'Fiel',FALSE,1),(gen_random_uuid(),q,'Kurami',FALSE,2),(gen_random_uuid(),q,'Jibril',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','hard','Qual desses personagens élfica mantém postura ética exemplar, sendo reconhecida por sua confiabilidade mesmo em situações de tensão política?','Sua lealdade constante a diferencia significativamente de outros membros de sua raça.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fiel',TRUE,0),(gen_random_uuid(),q,'Kurami',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','medium','Qual desses personagens Werebeast prioriza sempre os interesses coletivos de sua tribo durante negociações territoriais complexas?','Sua abordagem comunitária reflete valores centrais da cultura de sua raça.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Comandante Werebeast',TRUE,0),(gen_random_uuid(),q,'Fiel',FALSE,1),(gen_random_uuid(),q,'Kurami',FALSE,2),(gen_random_uuid(),q,'Jibril',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','hard','Qual desses personagens élfica é lembrada por sua lealdade duradoura aos protagonistas, mesmo diante de complicações políticas envolvendo sua raça?','Sua confiabilidade permanece constante ao longo de toda a trajetória narrativa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fiel',TRUE,0),(gen_random_uuid(),q,'Kurami',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','medium','Qual desses personagens Werebeast negocia ativamente em prol de sua comunidade, sempre respeitando tradições tribais durante conversas diplomáticas?','Sua dedicação aos valores tribais orienta todas as suas decisões estratégicas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Comandante Werebeast',TRUE,0),(gen_random_uuid(),q,'Fiel',FALSE,1),(gen_random_uuid(),q,'Kurami',FALSE,2),(gen_random_uuid(),q,'Jibril',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','impossible','Qual desses personagens élfica figura como contraponto ético direto à traição arquitetada por sua colega racial ao longo da narrativa?','Sua integridade moral é constantemente destacada em contraste com a manipulação alheia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fiel',TRUE,0),(gen_random_uuid(),q,'Kurami',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','impossible','Qual desses personagens Werebeast assume responsabilidade formal por decisões territoriais críticas envolvendo o futuro de sua comunidade tribal?','Sua liderança é reconhecida amplamente entre os membros de sua própria raça.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Comandante Werebeast',TRUE,0),(gen_random_uuid(),q,'Fiel',FALSE,1),(gen_random_uuid(),q,'Kurami',FALSE,2),(gen_random_uuid(),q,'Jibril',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','impossible','Qual desses personagens élfica se mantém como pilar de confiança dentro do grupo de aliados, mesmo diante de crises políticas complexas?','Sua presença estável contrasta com a instabilidade causada por outras figuras de sua raça.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fiel',TRUE,0),(gen_random_uuid(),q,'Kurami',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','impossible','Qual desses personagens Werebeast representa formalmente sua tribo em decisões estratégicas de longo alcance envolvendo Immanity?','Sua influência territorial é reconhecida amplamente por outras raças do continente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Comandante Werebeast',TRUE,0),(gen_random_uuid(),q,'Fiel',FALSE,1),(gen_random_uuid(),q,'Kurami',FALSE,2),(gen_random_uuid(),q,'Jibril',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','medium','Qual desses personagens élfica auxilia diretamente os protagonistas em decisões estratégicas, contrastando com a agenda oculta de sua colega racial?','Sua contribuição é valorizada por toda a equipe de aliados de Immanity.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fiel',TRUE,0),(gen_random_uuid(),q,'Kurami',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','hard','Qual desses personagens Werebeast contribui ativamente para acordos territoriais duradouros entre sua raça e o reino Immanity?','Seus esforços diplomáticos resultam em relações comerciais benéficas para ambos os lados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Comandante Werebeast',TRUE,0),(gen_random_uuid(),q,'Fiel',FALSE,1),(gen_random_uuid(),q,'Kurami',FALSE,2),(gen_random_uuid(),q,'Jibril',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','medium','Qual desses personagens élfica reforça constantemente a confiança da equipe através de ações consistentes e leais ao longo da narrativa?','Sua presença estabiliza o grupo em momentos de incerteza política.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fiel',TRUE,0),(gen_random_uuid(),q,'Kurami',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','hard','Qual desses personagens Werebeast estabelece precedentes diplomáticos importantes para futuras relações entre sua raça e outras nações?','Suas decisões moldam a política externa de sua comunidade por gerações.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Comandante Werebeast',TRUE,0),(gen_random_uuid(),q,'Fiel',FALSE,1),(gen_random_uuid(),q,'Kurami',FALSE,2),(gen_random_uuid(),q,'Jibril',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','impossible','Qual desses personagens élfica é citada como exemplo positivo de convivência interracial dentro do universo narrativo da série?','Sua conduta exemplar contrasta com episódios de desconfiança entre diferentes raças.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fiel',TRUE,0),(gen_random_uuid(),q,'Kurami',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'text','medium','Qual desses personagens Werebeast media conflitos internos de sua própria comunidade antes de representá-la em negociações externas?','Sua habilidade de mediação é reconhecida tanto interna quanto externamente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Comandante Werebeast',TRUE,0),(gen_random_uuid(),q,'Fiel',FALSE,1),(gen_random_uuid(),q,'Kurami',FALSE,2),(gen_random_uuid(),q,'Jibril',FALSE,3);

    -- fill_blank complemento (16)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'fill_blank','easy','A jovem elfa aliada dos protagonistas, contrastando com a rival espiã da mesma raça, se chama ___.','Ela demonstra lealdade genuína em oposição à traição de Kurami.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fiel',TRUE,0),(gen_random_uuid(),q,'Kurami',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'fill_blank','medium','O vice-comandante Werebeast que participa de negociações territoriais complexas com os protagonistas é referido como ___.','Sua raça valoriza fortemente demonstrações de força e lealdade tribal durante negociações.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Comandante Werebeast',TRUE,0),(gen_random_uuid(),q,'Fiel',FALSE,1),(gen_random_uuid(),q,'Kurami',FALSE,2),(gen_random_uuid(),q,'Jibril',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'fill_blank','easy','A elfa que acompanha Kurami em suas atividades, mas permanece leal aos protagonistas, se chama ___.','Ela é aliada leal dos protagonistas, diferentemente da colega manipuladora.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fiel',TRUE,0),(gen_random_uuid(),q,'Kurami',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'fill_blank','medium','O representante Werebeast que negocia territórios valorizando demonstrações de força durante encontros diplomáticos é referido como ___.','Sua cultura enfatiza lealdade comunitária acima de interesses individuais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Comandante Werebeast',TRUE,0),(gen_random_uuid(),q,'Fiel',FALSE,1),(gen_random_uuid(),q,'Kurami',FALSE,2),(gen_random_uuid(),q,'Jibril',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'fill_blank','easy','A elfa que demonstra lealdade genuína, contrastando com a traição de sua colega de mesma raça, se chama ___.','Sua confiabilidade é reconhecida por toda a equipe ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fiel',TRUE,0),(gen_random_uuid(),q,'Kurami',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'fill_blank','hard','O representante que defende formalmente sua raça tribal durante negociações territoriais complexas com Immanity é referido como ___.','Sua postura diplomática reflete valores culturais únicos de sua comunidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Comandante Werebeast',TRUE,0),(gen_random_uuid(),q,'Fiel',FALSE,1),(gen_random_uuid(),q,'Kurami',FALSE,2),(gen_random_uuid(),q,'Jibril',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'fill_blank','medium','A elfa reconhecida como aliada confiável apesar de pertencer à mesma raça da espiã manipuladora se chama ___.','Sua integridade contrasta diretamente com as motivações ocultas da colega.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fiel',TRUE,0),(gen_random_uuid(),q,'Kurami',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'fill_blank','hard','O representante Werebeast que defende interesses territoriais durante negociações com Immanity, valorizando força tribal, é referido como ___.','Sua abordagem direta reflete a cultura comunitária de seu povo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Comandante Werebeast',TRUE,0),(gen_random_uuid(),q,'Fiel',FALSE,1),(gen_random_uuid(),q,'Kurami',FALSE,2),(gen_random_uuid(),q,'Jibril',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'fill_blank','easy','A elfa que mantém postura confiável e leal, aliada valiosa dos protagonistas ao longo da trama, se chama ___.','Ela nunca demonstra as intenções ocultas características de sua colega espiã.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fiel',TRUE,0),(gen_random_uuid(),q,'Kurami',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'fill_blank','medium','O representante Werebeast que participa ativamente de negociações, representando os valores tribais de sua comunidade, é referido como ___.','Sua presença nas negociações reflete a importância estratégica de sua raça.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Comandante Werebeast',TRUE,0),(gen_random_uuid(),q,'Fiel',FALSE,1),(gen_random_uuid(),q,'Kurami',FALSE,2),(gen_random_uuid(),q,'Jibril',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'fill_blank','hard','A elfa que acompanha os protagonistas com lealdade constante, pertencendo à raça envolvida em conflitos territoriais antigos, se chama ___.','Sua postura genuína contrasta com a manipulação política de outros membros de sua raça.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fiel',TRUE,0),(gen_random_uuid(),q,'Kurami',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'fill_blank','medium','O representante que negocia formalmente em nome de sua comunidade tribal, demonstrando força e lealdade características de sua cultura, é referido como ___.','Sua função diplomática é essencial para manter relações pacíficas com Immanity.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Comandante Werebeast',TRUE,0),(gen_random_uuid(),q,'Fiel',FALSE,1),(gen_random_uuid(),q,'Kurami',FALSE,2),(gen_random_uuid(),q,'Jibril',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'fill_blank','impossible','A elfa reconhecida amplamente por sua confiabilidade constante junto aos protagonistas ao longo de toda a série se chama ___.','Sua lealdade nunca vacila, mesmo diante de situações complexas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fiel',TRUE,0),(gen_random_uuid(),q,'Kurami',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'fill_blank','hard','O representante Werebeast que comparece a encontros diplomáticos importantes, priorizando valores tribais, é referido como ___.','Sua presença é fundamental durante negociações territoriais complexas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Comandante Werebeast',TRUE,0),(gen_random_uuid(),q,'Fiel',FALSE,1),(gen_random_uuid(),q,'Kurami',FALSE,2),(gen_random_uuid(),q,'Jibril',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'fill_blank','impossible','A elfa que figura como contraponto ético direto à traição arquitetada por sua colega racial ao longo da narrativa se chama ___.','Sua integridade moral é constantemente destacada em contraste com a manipulação alheia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fiel',TRUE,0),(gen_random_uuid(),q,'Kurami',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'fill_blank','impossible','O representante Werebeast que assume responsabilidade formal por decisões territoriais críticas de sua comunidade tribal é referido como ___.','Sua liderança é reconhecida amplamente entre os membros de sua própria raça.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Comandante Werebeast',TRUE,0),(gen_random_uuid(),q,'Fiel',FALSE,1),(gen_random_uuid(),q,'Kurami',FALSE,2),(gen_random_uuid(),q,'Jibril',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'who_said','hard','Quem disse: "Minhas decisões diplomáticas moldam a política externa da minha comunidade por gerações, e levo essa responsabilidade a sério"?','A frase é dita pelo representante Werebeast que estabelece precedentes diplomáticos importantes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Comandante Werebeast',TRUE,0),(gen_random_uuid(),q,'Fiel',FALSE,1),(gen_random_uuid(),q,'Kurami',FALSE,2),(gen_random_uuid(),q,'Jibril',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'who_said','impossible','Quem disse: "Sou citada como exemplo positivo de convivência interracial, algo que me deixa orgulhosa apesar dos desafios enfrentados"?','A frase é dita pela elfa reconhecida por sua conduta exemplar entre diferentes raças.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fiel',TRUE,0),(gen_random_uuid(),q,'Kurami',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    -- who_said complemento (18)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'who_said','easy','Quem disse: "Eu sou leal aos protagonistas, ao contrário da minha colega elfa que trabalha secretamente contra Immanity"?','A frase é dita pela elfa aliada confiável dos protagonistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fiel',TRUE,0),(gen_random_uuid(),q,'Kurami',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'who_said','medium','Quem disse: "Eu represento minha tribo com orgulho durante estas negociações, valorizando sempre força e lealdade comunitária"?','A frase é dita pelo vice-comandante Werebeast em negociações territoriais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Comandante Werebeast',TRUE,0),(gen_random_uuid(),q,'Fiel',FALSE,1),(gen_random_uuid(),q,'Kurami',FALSE,2),(gen_random_uuid(),q,'Jibril',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'who_said','easy','Quem disse: "Minha confiabilidade é reconhecida por toda a equipe, mesmo sendo da mesma raça que a espiã manipuladora"?','A frase é dita pela elfa leal e confiável dos protagonistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fiel',TRUE,0),(gen_random_uuid(),q,'Kurami',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'who_said','medium','Quem disse: "Minha postura diplomática reflete os valores culturais únicos da minha comunidade tribal durante estas negociações"?','A frase é dita pelo representante Werebeast em negociações complexas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Comandante Werebeast',TRUE,0),(gen_random_uuid(),q,'Fiel',FALSE,1),(gen_random_uuid(),q,'Kurami',FALSE,2),(gen_random_uuid(),q,'Jibril',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'who_said','hard','Quem disse: "Minha integridade contrasta diretamente com as motivações ocultas da minha colega, e isso me deixa em paz comigo mesma"?','A frase é dita pela elfa confiável, contraponto ético de Kurami.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fiel',TRUE,0),(gen_random_uuid(),q,'Kurami',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'who_said','hard','Quem disse: "Minha abordagem direta reflete a cultura comunitária do meu povo durante todas as negociações com Immanity"?','A frase é dita pelo representante Werebeast em encontros diplomáticos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Comandante Werebeast',TRUE,0),(gen_random_uuid(),q,'Fiel',FALSE,1),(gen_random_uuid(),q,'Kurami',FALSE,2),(gen_random_uuid(),q,'Jibril',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'who_said','easy','Quem disse: "Eu nunca demonstro as intenções ocultas características da minha colega espiã, pois valorizo profundamente a lealdade"?','A frase é dita pela elfa leal e confiável dos protagonistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fiel',TRUE,0),(gen_random_uuid(),q,'Kurami',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'who_said','medium','Quem disse: "Minha presença nestas negociações reflete a importância estratégica da minha raça para o continente"?','A frase é dita pelo representante Werebeast em negociações territoriais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Comandante Werebeast',TRUE,0),(gen_random_uuid(),q,'Fiel',FALSE,1),(gen_random_uuid(),q,'Kurami',FALSE,2),(gen_random_uuid(),q,'Jibril',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'who_said','hard','Quem disse: "Minha postura genuína contrasta com a manipulação política exercida por outros membros da minha própria raça"?','A frase é dita pela elfa confiável em contraste com sua colega manipuladora.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fiel',TRUE,0),(gen_random_uuid(),q,'Kurami',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'who_said','hard','Quem disse: "Minha função diplomática é essencial para manter relações pacíficas duradouras entre minha tribo e o reino Immanity"?','A frase é dita pelo representante Werebeast responsável pelas relações diplomáticas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Comandante Werebeast',TRUE,0),(gen_random_uuid(),q,'Fiel',FALSE,1),(gen_random_uuid(),q,'Kurami',FALSE,2),(gen_random_uuid(),q,'Jibril',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'who_said','easy','Quem disse: "Minha lealdade nunca vacila, mesmo diante das situações mais complexas enfrentadas por esta equipe"?','A frase é dita pela elfa reconhecida por sua confiabilidade constante.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fiel',TRUE,0),(gen_random_uuid(),q,'Kurami',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'who_said','medium','Quem disse: "Minha presença é fundamental durante negociações territoriais complexas, sempre priorizando os valores da minha tribo"?','A frase é dita pelo representante Werebeast que comparece a encontros diplomáticos importantes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Comandante Werebeast',TRUE,0),(gen_random_uuid(),q,'Fiel',FALSE,1),(gen_random_uuid(),q,'Kurami',FALSE,2),(gen_random_uuid(),q,'Jibril',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'who_said','hard','Quem disse: "Minha integridade moral é constantemente destacada em contraste com a manipulação política de outros da minha raça"?','A frase é dita pela elfa que figura como contraponto ético direto de Kurami.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fiel',TRUE,0),(gen_random_uuid(),q,'Kurami',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'who_said','hard','Quem disse: "Minha liderança é reconhecida amplamente entre os membros da minha própria raça, especialmente em decisões críticas"?','A frase é dita pelo representante Werebeast que assume responsabilidade formal por decisões territoriais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Comandante Werebeast',TRUE,0),(gen_random_uuid(),q,'Fiel',FALSE,1),(gen_random_uuid(),q,'Kurami',FALSE,2),(gen_random_uuid(),q,'Jibril',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'who_said','impossible','Quem disse: "Minha presença estável contrasta com a instabilidade causada por outras figuras da minha raça ao longo desta história"?','A frase é dita pela elfa que se mantém como pilar de confiança dentro do grupo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fiel',TRUE,0),(gen_random_uuid(),q,'Kurami',FALSE,1),(gen_random_uuid(),q,'Jibril',FALSE,2),(gen_random_uuid(),q,'Stephanie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'who_said','impossible','Quem disse: "Minha influência territorial é reconhecida amplamente por outras raças do continente, e represento minha tribo com orgulho"?','A frase é dita pelo representante Werebeast com forte influência territorial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Comandante Werebeast',TRUE,0),(gen_random_uuid(),q,'Fiel',FALSE,1),(gen_random_uuid(),q,'Kurami',FALSE,2),(gen_random_uuid(),q,'Jibril',FALSE,3);

    -- episode_arc complemento (6)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'episode_arc','medium','Em qual arco Fiel se junta aos protagonistas como aliada elfa confiável, contrastando com a traição posterior de Kurami?','Sua introdução estabelece um contraponto moral importante dentro da mesma raça.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco Élfico',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco de Jibril',FALSE,2),(gen_random_uuid(),q,'Arco de Oceand',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'episode_arc','hard','Em qual arco o comandante Werebeast negocia territórios importantes com Immanity, representando os valores tribais de sua raça?','Este arco expande as relações diplomáticas de Immanity para além das raças já conhecidas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Oceand',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco Élfico',FALSE,2),(gen_random_uuid(),q,'Arco de Jibril',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'episode_arc','medium','Em qual arco a lealdade de Fiel é testada diretamente através de eventos ligados à traição de Kurami contra Immanity?','Este teste reforça a diferença moral entre as duas elfas ao longo da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco Élfico',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco de Jibril',FALSE,2),(gen_random_uuid(),q,'Arco de Oceand',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'episode_arc','hard','Em qual arco negociações territoriais complexas entre Werebeasts e Immanity resultam em acordos comerciais benéficos para ambas as partes?','Este arco demonstra a habilidade diplomática crescente dos protagonistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Oceand',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco Élfico',FALSE,2),(gen_random_uuid(),q,'Arco de Jibril',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'episode_arc','impossible','Em qual arco é destacada pela primeira vez a diferença ética entre Fiel e Kurami, apesar de ambas pertencerem à mesma raça élfica?','Esta comparação moral se torna um dos temas recorrentes envolvendo personagens secundários da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco Élfico',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco de Jibril',FALSE,2),(gen_random_uuid(),q,'Arco de Oceand',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ngnl,'episode_arc','impossible','Em qual arco o comandante Werebeast assume responsabilidade formal por decisões territoriais críticas envolvendo sua comunidade tribal?','Sua liderança é testada em momento decisivo para o futuro de sua raça.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Oceand',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco Élfico',FALSE,2),(gen_random_uuid(),q,'Arco de Jibril',FALSE,3);

END $$;
