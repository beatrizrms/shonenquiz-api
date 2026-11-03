-- ============================================================
--  V47 — Seed de perguntas: Konosuba (150 perguntas)
--  Fonte: MyAnimeList + cânone do anime
--  Distribuição: text 40% / fill_blank 25% / who_said 20% /
--                episode_arc 10% / chronological 5%
--  Sem repetição com V5. Regras R1-R7 aplicadas.
-- ============================================================

DO $$
DECLARE
    v_system UUID := '00000000-0000-0000-0000-000000000001';
    v_ks     UUID;
    q        UUID;
BEGIN
    SELECT id INTO v_ks FROM animes WHERE slug = 'konosuba' LIMIT 1;

    -- ══════════════════════════════════════════════════════════
    -- TEXT — 60 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','easy','Qual é o nome do protagonista, jovem hikikomori morto de forma humilhante que escolhe levar uma deusa consigo para o novo mundo?','Ele opta por uma vida comum no novo mundo em vez de poderes excepcionais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kazuma Satou',TRUE,0),(gen_random_uuid(),q,'Dust',FALSE,1),(gen_random_uuid(),q,'Vanir',FALSE,2),(gen_random_uuid(),q,'Mitsurugi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','easy','Qual é o nome da deusa inútil que acompanha o protagonista ao novo mundo, responsável indiretamente por sua morte original?','Ela é extremamente competente em gerenciar dívidas, mas praticamente inútil em combate direto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aqua',TRUE,0),(gen_random_uuid(),q,'Megumin',FALSE,1),(gen_random_uuid(),q,'Darkness',FALSE,2),(gen_random_uuid(),q,'Wiz',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','easy','Qual é o nome da maga arquimaga obcecada exclusivamente por um único feitiço de explosão extremamente poderoso, mas limitado?','Ela fica completamente exausta após usar sua única magia disponível uma vez por dia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Megumin',TRUE,0),(gen_random_uuid(),q,'Aqua',FALSE,1),(gen_random_uuid(),q,'Darkness',FALSE,2),(gen_random_uuid(),q,'Wiz',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','easy','Qual é o nome da cruzada masoquista que se junta ao grupo, obcecada em receber dano físico durante combates?','Ela atua como tanque do grupo, mas sua obsessão por dor prejudica sua eficácia estratégica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Darkness',TRUE,0),(gen_random_uuid(),q,'Aqua',FALSE,1),(gen_random_uuid(),q,'Megumin',FALSE,2),(gen_random_uuid(),q,'Wiz',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','easy','Qual é o nome dado ao grupo de aventureiros formado pelos quatro protagonistas principais da série?','Apesar de suas peculiaridades individuais, eles enfrentam diversos desafios juntos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cavaleiros do Crepúsculo Explosivo',TRUE,0),(gen_random_uuid(),q,'Guardiões de Axel',FALSE,1),(gen_random_uuid(),q,'Aliança dos Quatro',FALSE,2),(gen_random_uuid(),q,'Bando dos Aventureiros',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','easy','Qual é o nome da cidade inicial onde o grupo de protagonistas se estabelece, conhecida por sediar aventureiros de baixo nível?','Ela funciona como base de operações durante a maior parte da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Axel',TRUE,0),(gen_random_uuid(),q,'Alcanretia',FALSE,1),(gen_random_uuid(),q,'Elroad',FALSE,2),(gen_random_uuid(),q,'Wolbach',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','easy','Qual é o nome do senhor demônio que constantemente envia generais para eliminar o grupo de protagonistas, sem nunca aparecer diretamente?','Sua ameaça permanece constante ao longo de toda a série, mesmo sem confronto direto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Demon King',TRUE,0),(gen_random_uuid(),q,'Vanir',FALSE,1),(gen_random_uuid(),q,'Hans',FALSE,2),(gen_random_uuid(),q,'Beldia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','easy','Qual é o nome da dona de loja de itens mágicos, revelada posteriormente como uma poderosa lich aliada do grupo?','Ela oferece descontos e conselhos valiosos aos protagonistas ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Wiz',TRUE,0),(gen_random_uuid(),q,'Aqua',FALSE,1),(gen_random_uuid(),q,'Yunyun',FALSE,2),(gen_random_uuid(),q,'Chris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','easy','Qual é o nome do general demônio mascarado que serve como assistente da dona de loja de itens mágicos, especialista em previsões?','Ele demonstra fascínio peculiar por máscaras e comportamento excêntrico.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vanir',TRUE,0),(gen_random_uuid(),q,'Hans',FALSE,1),(gen_random_uuid(),q,'Beldia',FALSE,2),(gen_random_uuid(),q,'Dust',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','easy','Qual é o nome da amiga rival de Megumin, também praticante de magia explosiva, mas com desempenho socialmente constrangedor?','Ela busca constantemente reconhecimento e amizade verdadeira, sem muito sucesso inicial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yunyun',TRUE,0),(gen_random_uuid(),q,'Wiz',FALSE,1),(gen_random_uuid(),q,'Chris',FALSE,2),(gen_random_uuid(),q,'Iris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','easy','Qual é o nome do aventureiro trapaceiro e problemático, frequentemente envolvido em confusões cômicas com o grupo protagonista?','Ele é expulso de sua própria guilda por comportamento imprudente antes dos eventos principais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dust',TRUE,0),(gen_random_uuid(),q,'Vanir',FALSE,1),(gen_random_uuid(),q,'Mitsurugi',FALSE,2),(gen_random_uuid(),q,'Beldia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','easy','Qual é o nome dado ao vilarejo natal de Megumin e Yunyun, habitado exclusivamente por praticantes de magia especializados em explosões?','Sua cultura local gira inteiramente em torno da magia de destruição.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Crimson Demon Village',TRUE,0),(gen_random_uuid(),q,'Axel',FALSE,1),(gen_random_uuid(),q,'Alcanretia',FALSE,2),(gen_random_uuid(),q,'Elroad',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','medium','Qual é o nome do general demônio serial killer, primeiro grande antagonista enfrentado diretamente pelo grupo protagonista?','Sua morte é celebrada por Kazuma como uma de suas primeiras conquistas heroicas verdadeiras.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hans',TRUE,0),(gen_random_uuid(),q,'Vanir',FALSE,1),(gen_random_uuid(),q,'Beldia',FALSE,2),(gen_random_uuid(),q,'Verdia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','medium','Qual é o nome do general demônio cavaleiro morto-vivo, especializado em duelos de espada, derrotado pelo grupo através de estratégia inusitada?','Sua derrota envolve táticas anticonvencionais características do estilo de combate de Kazuma.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Verdia',TRUE,0),(gen_random_uuid(),q,'Hans',FALSE,1),(gen_random_uuid(),q,'Beldia',FALSE,2),(gen_random_uuid(),q,'Vanir',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','medium','Qual é o nome do general demônio necromante controlador de uma espada gigante amaldiçoada, derrotado através de ação inusitada de Darkness?','Sua derrota específica se torna um dos momentos mais memoravelmente absurdos da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Beldia',TRUE,0),(gen_random_uuid(),q,'Hans',FALSE,1),(gen_random_uuid(),q,'Verdia',FALSE,2),(gen_random_uuid(),q,'Vanir',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','medium','Qual é o nome do espadachim habilidoso, aventureiro de elite que ocasionalmente cruza caminhos com o grupo protagonista em situações competitivas?','Ele demonstra habilidades de combate muito superiores às da maioria dos aventureiros comuns.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mitsurugi',TRUE,0),(gen_random_uuid(),q,'Dust',FALSE,1),(gen_random_uuid(),q,'Vanir',FALSE,2),(gen_random_uuid(),q,'Hans',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','medium','Qual é o nome da ladra misteriosa que rouba itens de nobres corruptos, revelada posteriormente como avatar de uma deusa rival de Aqua?','Sua verdadeira identidade só é descoberta em momento avançado da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chris (Eris)',TRUE,0),(gen_random_uuid(),q,'Wiz',FALSE,1),(gen_random_uuid(),q,'Yunyun',FALSE,2),(gen_random_uuid(),q,'Iris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','medium','Qual é o nome dado à guilda de aventureiros onde os protagonistas se registram e recebem missões ao longo da série?','Ela também funciona como ponto de encontro social para diversos personagens secundários.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Guilda de Aventureiros de Axel',TRUE,0),(gen_random_uuid(),q,'Ordem dos Cavaleiros',FALSE,1),(gen_random_uuid(),q,'Círculo Mágico',FALSE,2),(gen_random_uuid(),q,'Conselho de Elroad',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','medium','Qual é o nome dado à jovem princesa do reino que desenvolve amizade próxima com Kazuma durante uma missão de proteção real?','Sua ingenuidade contrasta com os métodos pouco convencionais do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Iris',TRUE,0),(gen_random_uuid(),q,'Chris',FALSE,1),(gen_random_uuid(),q,'Yunyun',FALSE,2),(gen_random_uuid(),q,'Wiz',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','medium','Qual é o nome dado ao pai nobre e rígido de Darkness, senhor feudal responsável pela proteção de um território importante do reino?','Ele demonstra preocupação constante com as escolhas incomuns de sua filha.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dustiness Ford',TRUE,0),(gen_random_uuid(),q,'Mitsurugi',FALSE,1),(gen_random_uuid(),q,'Zesta',FALSE,2),(gen_random_uuid(),q,'Claire',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','hard','Qual é o nome do dragão ancião poderoso que ameaça uma cidade próxima, considerado desafio muito acima do nível normal do grupo protagonista?','Seu confronto força os protagonistas a considerarem estratégias extremas de sobrevivência.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dragão de Gelo',TRUE,0),(gen_random_uuid(),q,'Demon King',FALSE,1),(gen_random_uuid(),q,'Verdia',FALSE,2),(gen_random_uuid(),q,'Beldia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','hard','Qual é o nome do sistema de status e habilidades usado pelos aventureiros no novo mundo, revelado como estranhamente similar a jogos de vídeo game?','Aqua demonstra confusão constante sobre o funcionamento desse sistema peculiar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sistema de Níveis e Habilidades',TRUE,0),(gen_random_uuid(),q,'Registro Divino',FALSE,1),(gen_random_uuid(),q,'Compêndio dos Deuses',FALSE,2),(gen_random_uuid(),q,'Cristal de Poder',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','hard','Qual é o nome dado ao ritual anual de destruição praticado pelos habitantes do vilarejo natal de Megumin, celebrando explosões como forma de arte?','Este evento cultural único reflete a obsessão coletiva da vila por magia explosiva.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Festival das Explosões',TRUE,0),(gen_random_uuid(),q,'Ritual do Crepúsculo',FALSE,1),(gen_random_uuid(),q,'Celebração Carmesim',FALSE,2),(gen_random_uuid(),q,'Cerimônia Explosiva',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','hard','Qual é o nome dado à profissão especial rara que Kazuma escolhe no início da série, focada em roubo e negociação ao invés de combate?','Sua escolha reflete sua estratégia de sobrevivência através de astúcia ao invés de força bruta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aventureiro',TRUE,0),(gen_random_uuid(),q,'Cavaleiro',FALSE,1),(gen_random_uuid(),q,'Mago',FALSE,2),(gen_random_uuid(),q,'Sacerdote',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','hard','Qual é o nome da habilidade especial de Kazuma que permite roubar itens ou informações através de ação furtiva bem-sucedida?','Ela se torna fundamental para diversas estratégias inusitadas usadas pelo protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Steal',TRUE,0),(gen_random_uuid(),q,'Drain Touch',FALSE,1),(gen_random_uuid(),q,'Sniper',FALSE,2),(gen_random_uuid(),q,'Lurk',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','impossible','Qual é o nome dado à igreja dedicada ao culto da deusa Eris, popular entre grande parte da população do novo mundo?','Chris demonstra devoção significativa a essa organização religiosa ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Igreja de Eris',TRUE,0),(gen_random_uuid(),q,'Templo de Aqua',FALSE,1),(gen_random_uuid(),q,'Santuário Divino',FALSE,2),(gen_random_uuid(),q,'Ordem Celestial',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','impossible','Qual é o nome dado ao torneio de artes marciais disputado anualmente em Axel, cenário de diversos eventos cômicos envolvendo o grupo protagonista?','Personagens secundários frequentemente participam com resultados inesperados e hilários.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Torneio de Artes Marciais de Axel',TRUE,0),(gen_random_uuid(),q,'Copa dos Aventureiros',FALSE,1),(gen_random_uuid(),q,'Desafio Real',FALSE,2),(gen_random_uuid(),q,'Batalha dos Campeões',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','impossible','Qual é o nome dado ao artefato mágico antigo guardado pela família nobre de Darkness, associado à proteção de fronteiras territoriais importantes?','Sua existência é mencionada apenas em referências indiretas ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Selo de Proteção Fronteiriça',TRUE,0),(gen_random_uuid(),q,'Cristal da Guarda',FALSE,1),(gen_random_uuid(),q,'Amuleto Territorial',FALSE,2),(gen_random_uuid(),q,'Talismã de Fronteira',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- FILL_BLANK — 38 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'fill_blank','easy','O protagonista, jovem hikikomori morto de forma humilhante, se chama ___.','Ele opta por uma vida comum no novo mundo em vez de poderes excepcionais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kazuma',TRUE,0),(gen_random_uuid(),q,'Dust',FALSE,1),(gen_random_uuid(),q,'Vanir',FALSE,2),(gen_random_uuid(),q,'Mitsurugi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'fill_blank','easy','A deusa inútil que acompanha o protagonista ao novo mundo se chama ___.','Ela é extremamente competente em gerenciar dívidas, mas praticamente inútil em combate direto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aqua',TRUE,0),(gen_random_uuid(),q,'Megumin',FALSE,1),(gen_random_uuid(),q,'Darkness',FALSE,2),(gen_random_uuid(),q,'Wiz',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'fill_blank','easy','A maga arquimaga obcecada por um único feitiço de explosão extremamente poderoso se chama ___.','Ela fica completamente exausta após usar sua única magia disponível uma vez por dia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Megumin',TRUE,0),(gen_random_uuid(),q,'Aqua',FALSE,1),(gen_random_uuid(),q,'Darkness',FALSE,2),(gen_random_uuid(),q,'Wiz',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'fill_blank','easy','A cruzada masoquista que se junta ao grupo, obcecada em receber dano físico, se chama ___.','Ela atua como tanque do grupo, mas sua obsessão por dor prejudica sua eficácia estratégica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Darkness',TRUE,0),(gen_random_uuid(),q,'Aqua',FALSE,1),(gen_random_uuid(),q,'Megumin',FALSE,2),(gen_random_uuid(),q,'Wiz',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'fill_blank','easy','O grupo de aventureiros formado pelos quatro protagonistas principais da série se chama ___.','Apesar de suas peculiaridades individuais, eles enfrentam diversos desafios juntos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cavaleiros do Crepúsculo Explosivo',TRUE,0),(gen_random_uuid(),q,'Guardiões de Axel',FALSE,1),(gen_random_uuid(),q,'Aliança dos Quatro',FALSE,2),(gen_random_uuid(),q,'Bando dos Aventureiros',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'fill_blank','easy','A cidade inicial onde o grupo de protagonistas se estabelece se chama ___.','Ela funciona como base de operações durante a maior parte da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Axel',TRUE,0),(gen_random_uuid(),q,'Alcanretia',FALSE,1),(gen_random_uuid(),q,'Elroad',FALSE,2),(gen_random_uuid(),q,'Wolbach',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'fill_blank','easy','O senhor demônio que constantemente envia generais para eliminar o grupo protagonista, sem nunca aparecer diretamente, é referido como ___.','Sua ameaça permanece constante ao longo de toda a série, mesmo sem confronto direto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Demon King',TRUE,0),(gen_random_uuid(),q,'Vanir',FALSE,1),(gen_random_uuid(),q,'Hans',FALSE,2),(gen_random_uuid(),q,'Beldia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'fill_blank','easy','A dona de loja de itens mágicos, revelada como poderosa lich aliada do grupo, se chama ___.','Ela oferece descontos e conselhos valiosos aos protagonistas ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Wiz',TRUE,0),(gen_random_uuid(),q,'Aqua',FALSE,1),(gen_random_uuid(),q,'Yunyun',FALSE,2),(gen_random_uuid(),q,'Chris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'fill_blank','easy','O general demônio mascarado, assistente da dona de loja, especialista em previsões, se chama ___.','Ele demonstra fascínio peculiar por máscaras e comportamento excêntrico.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vanir',TRUE,0),(gen_random_uuid(),q,'Hans',FALSE,1),(gen_random_uuid(),q,'Beldia',FALSE,2),(gen_random_uuid(),q,'Dust',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'fill_blank','easy','A amiga rival de Megumin, também praticante de magia explosiva, se chama ___.','Ela busca constantemente reconhecimento e amizade verdadeira, sem muito sucesso inicial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yunyun',TRUE,0),(gen_random_uuid(),q,'Wiz',FALSE,1),(gen_random_uuid(),q,'Chris',FALSE,2),(gen_random_uuid(),q,'Iris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'fill_blank','medium','O general demônio serial killer, primeiro grande antagonista enfrentado diretamente pelo grupo, se chama ___.','Sua morte é celebrada por Kazuma como uma de suas primeiras conquistas heroicas verdadeiras.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hans',TRUE,0),(gen_random_uuid(),q,'Vanir',FALSE,1),(gen_random_uuid(),q,'Beldia',FALSE,2),(gen_random_uuid(),q,'Verdia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'fill_blank','medium','O general demônio cavaleiro morto-vivo, especializado em duelos de espada, se chama ___.','Sua derrota envolve táticas anticonvencionais características do estilo de combate de Kazuma.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Verdia',TRUE,0),(gen_random_uuid(),q,'Hans',FALSE,1),(gen_random_uuid(),q,'Beldia',FALSE,2),(gen_random_uuid(),q,'Vanir',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'fill_blank','medium','O general demônio necromante controlador de uma espada gigante amaldiçoada se chama ___.','Sua derrota específica se torna um dos momentos mais memoravelmente absurdos da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Beldia',TRUE,0),(gen_random_uuid(),q,'Hans',FALSE,1),(gen_random_uuid(),q,'Verdia',FALSE,2),(gen_random_uuid(),q,'Vanir',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'fill_blank','medium','O espadachim habilidoso, aventureiro de elite que ocasionalmente cruza caminhos com o grupo, se chama ___.','Ele demonstra habilidades de combate muito superiores às da maioria dos aventureiros comuns.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mitsurugi',TRUE,0),(gen_random_uuid(),q,'Dust',FALSE,1),(gen_random_uuid(),q,'Vanir',FALSE,2),(gen_random_uuid(),q,'Hans',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'fill_blank','medium','A ladra misteriosa que rouba itens de nobres corruptos, revelada como avatar de deusa rival de Aqua, se chama ___.','Sua verdadeira identidade só é descoberta em momento avançado da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chris',TRUE,0),(gen_random_uuid(),q,'Wiz',FALSE,1),(gen_random_uuid(),q,'Yunyun',FALSE,2),(gen_random_uuid(),q,'Iris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'fill_blank','medium','A jovem princesa do reino que desenvolve amizade próxima com Kazuma se chama ___.','Sua ingenuidade contrasta com os métodos pouco convencionais do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Iris',TRUE,0),(gen_random_uuid(),q,'Chris',FALSE,1),(gen_random_uuid(),q,'Yunyun',FALSE,2),(gen_random_uuid(),q,'Wiz',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'fill_blank','medium','O pai nobre e rígido de Darkness, senhor feudal responsável por território importante, se chama ___.','Ele demonstra preocupação constante com as escolhas incomuns de sua filha.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dustiness Ford',TRUE,0),(gen_random_uuid(),q,'Mitsurugi',FALSE,1),(gen_random_uuid(),q,'Zesta',FALSE,2),(gen_random_uuid(),q,'Claire',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'fill_blank','hard','O dragão ancião poderoso que ameaça uma cidade próxima, desafio muito acima do nível do grupo, se chama ___.','Seu confronto força os protagonistas a considerarem estratégias extremas de sobrevivência.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dragão de Gelo',TRUE,0),(gen_random_uuid(),q,'Demon King',FALSE,1),(gen_random_uuid(),q,'Verdia',FALSE,2),(gen_random_uuid(),q,'Beldia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'fill_blank','hard','O vilarejo natal de Megumin e Yunyun, habitado por praticantes de magia explosiva, se chama ___.','Sua cultura local gira inteiramente em torno da magia de destruição.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Crimson Demon Village',TRUE,0),(gen_random_uuid(),q,'Axel',FALSE,1),(gen_random_uuid(),q,'Alcanretia',FALSE,2),(gen_random_uuid(),q,'Elroad',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'fill_blank','hard','A habilidade especial de Kazuma que permite roubar itens ou informações através de ação furtiva bem-sucedida se chama ___.','Ela se torna fundamental para diversas estratégias inusitadas usadas pelo protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Steal',TRUE,0),(gen_random_uuid(),q,'Drain Touch',FALSE,1),(gen_random_uuid(),q,'Sniper',FALSE,2),(gen_random_uuid(),q,'Lurk',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'fill_blank','impossible','A igreja dedicada ao culto da deusa Eris, popular entre grande parte da população do novo mundo, se chama ___.','Chris demonstra devoção significativa a essa organização religiosa ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Igreja de Eris',TRUE,0),(gen_random_uuid(),q,'Templo de Aqua',FALSE,1),(gen_random_uuid(),q,'Santuário Divino',FALSE,2),(gen_random_uuid(),q,'Ordem Celestial',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'fill_blank','impossible','O torneio de artes marciais disputado anualmente em Axel, cenário de eventos cômicos, se chama ___.','Personagens secundários frequentemente participam com resultados inesperados e hilários.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Torneio de Artes Marciais de Axel',TRUE,0),(gen_random_uuid(),q,'Copa dos Aventureiros',FALSE,1),(gen_random_uuid(),q,'Desafio Real',FALSE,2),(gen_random_uuid(),q,'Batalha dos Campeões',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- WHO_SAID — 30 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'who_said','easy','Quem disse: "Eu escolhi uma vida comum neste novo mundo, sem poderes excepcionais, e ainda assim vivo aventuras absurdas todos os dias"?','A frase reflete a escolha inicial do protagonista da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kazuma',TRUE,0),(gen_random_uuid(),q,'Dust',FALSE,1),(gen_random_uuid(),q,'Vanir',FALSE,2),(gen_random_uuid(),q,'Mitsurugi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'who_said','easy','Quem disse: "Eu sou uma deusa incrível, mesmo sendo praticamente inútil em combate, e adoro gerenciar as dívidas do nosso grupo"?','A frase é dita pela deusa que acompanha o protagonista ao novo mundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aqua',TRUE,0),(gen_random_uuid(),q,'Megumin',FALSE,1),(gen_random_uuid(),q,'Darkness',FALSE,2),(gen_random_uuid(),q,'Wiz',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'who_said','easy','Quem disse: "Explosão é a magia suprema, e mesmo ficando exausta após usá-la, jamais trocaria por qualquer outro feitiço"?','A frase é dita pela maga obcecada por um único feitiço poderoso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Megumin',TRUE,0),(gen_random_uuid(),q,'Aqua',FALSE,1),(gen_random_uuid(),q,'Darkness',FALSE,2),(gen_random_uuid(),q,'Wiz',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'who_said','easy','Quem disse: "Eu absorvo todo o dano do grupo com prazer genuíno, mesmo que isso prejudique nossa estratégia em combate"?','A frase é dita pela cruzada masoquista que atua como tanque do grupo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Darkness',TRUE,0),(gen_random_uuid(),q,'Aqua',FALSE,1),(gen_random_uuid(),q,'Megumin',FALSE,2),(gen_random_uuid(),q,'Wiz',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'who_said','easy','Quem disse: "Eu ofereço descontos e conselhos valiosos aos aventureiros que visitam minha loja, mesmo escondendo minha verdadeira natureza"?','A frase é dita pela dona de loja de itens mágicos revelada como lich poderosa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Wiz',TRUE,0),(gen_random_uuid(),q,'Aqua',FALSE,1),(gen_random_uuid(),q,'Yunyun',FALSE,2),(gen_random_uuid(),q,'Chris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'who_said','easy','Quem disse: "Meu fascínio por máscaras é conhecido por todos, e sirvo minha senhora com previsões extremamente precisas"?','A frase é dita pelo general demônio mascarado assistente da loja de itens.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vanir',TRUE,0),(gen_random_uuid(),q,'Hans',FALSE,1),(gen_random_uuid(),q,'Beldia',FALSE,2),(gen_random_uuid(),q,'Dust',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'who_said','medium','Quem disse: "Eu busco reconhecimento e amizade verdadeira constantemente, mesmo enfrentando situações socialmente constrangedoras"?','A frase é dita pela amiga rival de Megumin, também praticante de magia explosiva.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yunyun',TRUE,0),(gen_random_uuid(),q,'Wiz',FALSE,1),(gen_random_uuid(),q,'Chris',FALSE,2),(gen_random_uuid(),q,'Iris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'who_said','medium','Quem disse: "Fui expulso da minha própria guilda por comportamento imprudente, mas isso nunca me impediu de me divertir com confusões cômicas"?','A frase é dita pelo aventureiro trapaceiro e problemático da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dust',TRUE,0),(gen_random_uuid(),q,'Vanir',FALSE,1),(gen_random_uuid(),q,'Mitsurugi',FALSE,2),(gen_random_uuid(),q,'Beldia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'who_said','medium','Quem disse: "Roubo itens de nobres corruptos como avatar secreto de uma deusa, e minha verdadeira identidade permanece oculta por enquanto"?','A frase é dita pela ladra misteriosa revelada como avatar de deusa rival.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chris',TRUE,0),(gen_random_uuid(),q,'Wiz',FALSE,1),(gen_random_uuid(),q,'Yunyun',FALSE,2),(gen_random_uuid(),q,'Iris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'who_said','medium','Quem disse: "Desenvolvi amizade próxima com Kazuma durante uma missão de proteção, apesar de minha ingenuidade sobre o mundo exterior"?','A frase é dita pela jovem princesa do reino que se aproxima do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Iris',TRUE,0),(gen_random_uuid(),q,'Chris',FALSE,1),(gen_random_uuid(),q,'Yunyun',FALSE,2),(gen_random_uuid(),q,'Wiz',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'who_said','hard','Quem disse: "Sou pai rígido e nobre, e me preocupo constantemente com as escolhas incomuns feitas pela minha própria filha"?','A frase é dita pelo pai de Darkness, senhor feudal responsável por território importante.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dustiness Ford',TRUE,0),(gen_random_uuid(),q,'Mitsurugi',FALSE,1),(gen_random_uuid(),q,'Zesta',FALSE,2),(gen_random_uuid(),q,'Claire',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'who_said','hard','Quem disse: "Minhas habilidades de combate superam em muito a maioria dos aventureiros comuns, e ocasionalmente cruzo caminhos com vocês em desafios competitivos"?','A frase é dita pelo espadachim habilidoso, aventureiro de elite.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mitsurugi',TRUE,0),(gen_random_uuid(),q,'Dust',FALSE,1),(gen_random_uuid(),q,'Vanir',FALSE,2),(gen_random_uuid(),q,'Hans',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'who_said','impossible','Quem disse: "Como general demônio serial killer, minha morte foi celebrada por Kazuma como uma das primeiras conquistas heroicas dele"?','A frase é dita, em memória, pelo primeiro grande antagonista enfrentado pelo grupo protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hans',TRUE,0),(gen_random_uuid(),q,'Vanir',FALSE,1),(gen_random_uuid(),q,'Beldia',FALSE,2),(gen_random_uuid(),q,'Verdia',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- EPISODE_ARC — 15 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'episode_arc','medium','Em qual arco Kazuma morre de forma humilhante e escolhe levar Aqua consigo para o novo mundo?','O arco estabelece a premissa cômica inicial de toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Introdução',TRUE,0),(gen_random_uuid(),q,'Arco de Verdia',FALSE,1),(gen_random_uuid(),q,'Arco do Dragão de Gelo',FALSE,2),(gen_random_uuid(),q,'Arco de Iris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'episode_arc','medium','Em qual arco o grupo forma a equipe completa, recrutando Megumin e Darkness como companheiras de aventura?','Este arco estabelece a dinâmica cômica central entre os quatro protagonistas principais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Introdução',TRUE,0),(gen_random_uuid(),q,'Arco de Verdia',FALSE,1),(gen_random_uuid(),q,'Arco do Dragão de Gelo',FALSE,2),(gen_random_uuid(),q,'Arco de Iris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'episode_arc','medium','Em qual arco o grupo enfrenta o general demônio cavaleiro morto-vivo através de estratégia anticonvencional envolvendo Kazuma?','Este confronto demonstra o estilo de combate inusitado característico do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Verdia',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco do Dragão de Gelo',FALSE,2),(gen_random_uuid(),q,'Arco de Iris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'episode_arc','medium','Em qual arco o grupo enfrenta um dragão ancião poderoso, considerando estratégias extremas de sobrevivência devido ao nível superior da ameaça?','Este confronto testa os limites das capacidades combinadas do grupo protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Dragão de Gelo',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco de Verdia',FALSE,2),(gen_random_uuid(),q,'Arco de Iris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'episode_arc','medium','Em qual arco Kazuma desenvolve amizade próxima com a jovem princesa Iris durante missão de proteção real?','Este arco explora a dinâmica entre o protagonista pouco convencional e a nobreza do reino.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Iris',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco de Verdia',FALSE,2),(gen_random_uuid(),q,'Arco do Dragão de Gelo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'episode_arc','medium','Em qual arco o grupo visita o vilarejo natal de Megumin, participando do festival anual de explosões da comunidade?','Este arco explora profundamente a cultura peculiar da vila de magos explosivos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Introdução',TRUE,0),(gen_random_uuid(),q,'Arco de Verdia',FALSE,1),(gen_random_uuid(),q,'Arco do Dragão de Gelo',FALSE,2),(gen_random_uuid(),q,'Arco de Iris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'episode_arc','hard','Em qual arco é revelada a verdadeira identidade de Chris como avatar de Eris, deusa rival de Aqua?','A revelação ocorre através de eventos ligados ao roubo de itens de nobres corruptos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Verdia',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco do Dragão de Gelo',FALSE,2),(gen_random_uuid(),q,'Arco de Iris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'episode_arc','hard','Em qual arco o grupo enfrenta o general demônio necromante controlador de espada gigante amaldiçoada?','Este confronto se torna um dos momentos mais memoravelmente absurdos da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Introdução',TRUE,0),(gen_random_uuid(),q,'Arco de Verdia',FALSE,1),(gen_random_uuid(),q,'Arco do Dragão de Gelo',FALSE,2),(gen_random_uuid(),q,'Arco de Iris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'episode_arc','impossible','Em qual arco o pai de Darkness expressa preocupação formal com as escolhas incomuns de vida feitas por sua filha nobre?','Este arco explora a tensão familiar entre tradição nobre e liberdade pessoal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Iris',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco de Verdia',FALSE,2),(gen_random_uuid(),q,'Arco do Dragão de Gelo',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- CHRONOLOGICAL — 7 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'chronological','hard','Ordene cronologicamente os arcos a seguir, do mais antigo ao mais recente.','Cobrem desde a morte de Kazuma até sua amizade com a princesa Iris.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Introdução',TRUE,0),(gen_random_uuid(),q,'Verdia',FALSE,1),(gen_random_uuid(),q,'Dragão de Gelo',FALSE,2),(gen_random_uuid(),q,'Iris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'chronological','hard','Ordene cronologicamente os seguintes eventos da jornada de Kazuma, do mais antigo ao mais recente.','Cobrem desde sua morte original até sua amizade com a princesa Iris.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Morre de forma humilhante e escolhe Aqua',TRUE,0),(gen_random_uuid(),q,'Forma equipe completa com Megumin e Darkness',FALSE,1),(gen_random_uuid(),q,'Derrota Verdia através de estratégia inusitada',FALSE,2),(gen_random_uuid(),q,'Desenvolve amizade com a princesa Iris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre os generais demônios, do mais antigo ao mais recente.','Cobrem desde o primeiro confronto até a derrota do necromante com espada amaldiçoada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hans é derrotado como primeiro grande antagonista',TRUE,0),(gen_random_uuid(),q,'Verdia enfrenta o grupo em duelo de espadas',FALSE,1),(gen_random_uuid(),q,'Beldia é derrotado através de ação inusitada de Darkness',FALSE,2),(gen_random_uuid(),q,'O Demon King continua enviando novos generais',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre Chris, do mais antigo ao mais recente.','Cobrem desde seus primeiros roubos até a revelação de sua verdadeira identidade divina.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rouba itens de nobres corruptos disfarçada',TRUE,0),(gen_random_uuid(),q,'Cruza caminho com o grupo protagonista',FALSE,1),(gen_random_uuid(),q,'Desenvolve confiança gradual com Kazuma',FALSE,2),(gen_random_uuid(),q,'Tem sua identidade como Eris finalmente revelada',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Wiz, do mais antigo ao mais recente.','Cobrem desde sua vida como lich secreta até se tornar aliada valiosa do grupo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Administra loja de itens mágicos escondendo sua natureza',TRUE,0),(gen_random_uuid(),q,'Conhece o grupo protagonista através de negócios',FALSE,1),(gen_random_uuid(),q,'Tem sua verdadeira identidade gradualmente revelada',FALSE,2),(gen_random_uuid(),q,'Torna-se aliada valiosa em momentos decisivos',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Yunyun, do mais antigo ao mais recente.','Cobrem desde sua rivalidade inicial com Megumin até seu desenvolvimento de amizades verdadeiras.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cresce no mesmo vilarejo que Megumin',TRUE,0),(gen_random_uuid(),q,'Busca reconhecimento constante sem muito sucesso',FALSE,1),(gen_random_uuid(),q,'Cruza caminho com o grupo protagonista completo',FALSE,2),(gen_random_uuid(),q,'Desenvolve laços de amizade mais genuínos',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Darkness, do mais antigo ao mais recente.','Cobrem desde sua origem nobre até suas escolhas de vida como aventureira incomum.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nasce em família nobre governada por pai rígido',TRUE,0),(gen_random_uuid(),q,'Escolhe se tornar aventureira ao invés de seguir tradição',FALSE,1),(gen_random_uuid(),q,'Junta-se ao grupo protagonista como tanque',FALSE,2),(gen_random_uuid(),q,'Enfrenta preocupação constante de seu pai sobre suas escolhas',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- COMPLEMENTO — fechar 150 perguntas (32 text / 16 fill_blank / 17 who_said / 6 episode_arc)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','easy','Qual desses personagens é aventureiro trapaceiro frequentemente envolvido em confusões cômicas com o grupo, expulso de sua própria guilda por imprudência?','Ele demonstra lealdade inesperada em momentos decisivos apesar do comportamento problemático.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dust',TRUE,0),(gen_random_uuid(),q,'Vanir',FALSE,1),(gen_random_uuid(),q,'Mitsurugi',FALSE,2),(gen_random_uuid(),q,'Beldia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','medium','Qual desses personagens é sistema de status usado pelos aventureiros no novo mundo, estranhamente similar a mecânicas de jogos de vídeo game?','Aqua demonstra confusão constante sobre o funcionamento peculiar desse sistema.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sistema de Níveis',TRUE,0),(gen_random_uuid(),q,'Registro Divino',FALSE,1),(gen_random_uuid(),q,'Compêndio dos Deuses',FALSE,2),(gen_random_uuid(),q,'Cristal de Poder',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','hard','Qual desses personagens guarda um artefato antigo associado à proteção de fronteiras territoriais importantes de sua família nobre?','Sua existência é mencionada apenas em referências indiretas ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dustiness Ford',TRUE,0),(gen_random_uuid(),q,'Mitsurugi',FALSE,1),(gen_random_uuid(),q,'Zesta',FALSE,2),(gen_random_uuid(),q,'Claire',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','impossible','Qual desses personagens é profissão especial rara escolhida por Kazuma, focada em roubo e negociação ao invés de combate direto?','Sua escolha reflete estratégia de sobrevivência através de astúcia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aventureiro',TRUE,0),(gen_random_uuid(),q,'Cavaleiro',FALSE,1),(gen_random_uuid(),q,'Mago',FALSE,2),(gen_random_uuid(),q,'Sacerdote',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','medium','Qual desses personagens frequentemente participa de confusões hilárias ao lado do grupo protagonista, apesar de já ter sido expulso de sua guilda de origem?','Sua presença gera situações cômicas recorrentes ao longo da narrativa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dust',TRUE,0),(gen_random_uuid(),q,'Vanir',FALSE,1),(gen_random_uuid(),q,'Mitsurugi',FALSE,2),(gen_random_uuid(),q,'Beldia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','hard','Qual desses personagens confunde Aqua constantemente devido à sua semelhança peculiar com mecânicas de jogos eletrônicos comuns?','Este sistema define níveis, habilidades e progressão dos aventureiros no novo mundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sistema de Níveis',TRUE,0),(gen_random_uuid(),q,'Registro Divino',FALSE,1),(gen_random_uuid(),q,'Compêndio dos Deuses',FALSE,2),(gen_random_uuid(),q,'Cristal de Poder',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','medium','Qual desses personagens exerce autoridade rígida sobre território nobre, expressando preocupação constante sobre escolhas de sua filha?','Sua posição social contrasta fortemente com o estilo de vida escolhido por Darkness.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dustiness Ford',TRUE,0),(gen_random_uuid(),q,'Mitsurugi',FALSE,1),(gen_random_uuid(),q,'Zesta',FALSE,2),(gen_random_uuid(),q,'Claire',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','impossible','Qual desses personagens permite que Kazuma pratique roubo estratégico e negociação como parte de suas habilidades profissionais únicas?','Esta escolha profissional o diferencia dos demais aventureiros focados apenas em combate.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aventureiro',TRUE,0),(gen_random_uuid(),q,'Cavaleiro',FALSE,1),(gen_random_uuid(),q,'Mago',FALSE,2),(gen_random_uuid(),q,'Sacerdote',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','easy','Qual desses personagens é figura recorrente em situações cômicas envolvendo o grupo protagonista, apesar do histórico problemático em sua guilda anterior?','Sua imprevisibilidade contribui para diversos momentos hilários da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dust',TRUE,0),(gen_random_uuid(),q,'Vanir',FALSE,1),(gen_random_uuid(),q,'Mitsurugi',FALSE,2),(gen_random_uuid(),q,'Beldia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','hard','Qual desses personagens estabelece regras claras sobre níveis e progressão de habilidades dos aventureiros, gerando confusão cômica em Aqua?','Sua estrutura remete diretamente a jogos eletrônicos conhecidos do mundo original de Kazuma.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sistema de Níveis',TRUE,0),(gen_random_uuid(),q,'Registro Divino',FALSE,1),(gen_random_uuid(),q,'Compêndio dos Deuses',FALSE,2),(gen_random_uuid(),q,'Cristal de Poder',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','medium','Qual desses personagens mantém posição de autoridade sobre importante território, sempre demonstrando preocupação paternal com decisões de sua filha aventureira?','Sua rigidez tradicional gera tensão familiar recorrente ao longo da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dustiness Ford',TRUE,0),(gen_random_uuid(),q,'Mitsurugi',FALSE,1),(gen_random_uuid(),q,'Zesta',FALSE,2),(gen_random_uuid(),q,'Claire',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','impossible','Qual desses personagens define a trajetória profissional de Kazuma como especialista em furtividade e negociação estratégica?','Sua natureza pouco convencional reflete o estilo de sobrevivência adotado pelo protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aventureiro',TRUE,0),(gen_random_uuid(),q,'Cavaleiro',FALSE,1),(gen_random_uuid(),q,'Mago',FALSE,2),(gen_random_uuid(),q,'Sacerdote',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','medium','Qual desses personagens é constantemente envolvido em situações embaraçosas ao lado do grupo, mantendo reputação duvidosa entre outros aventureiros?','Apesar disso, ele demonstra momentos de genuína camaradagem com Kazuma.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dust',TRUE,0),(gen_random_uuid(),q,'Vanir',FALSE,1),(gen_random_uuid(),q,'Mitsurugi',FALSE,2),(gen_random_uuid(),q,'Beldia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','hard','Qual desses personagens organiza a progressão de poder dos aventureiros através de níveis e habilidades específicas, intrigando profundamente Aqua?','Sua lógica interna reflete padrões familiares de jogos eletrônicos tradicionais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sistema de Níveis',TRUE,0),(gen_random_uuid(),q,'Registro Divino',FALSE,1),(gen_random_uuid(),q,'Compêndio dos Deuses',FALSE,2),(gen_random_uuid(),q,'Cristal de Poder',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','medium','Qual desses personagens supervisiona formalmente o território nobre de sua família, questionando constantemente as escolhas incomuns feitas por sua filha?','Sua expectativa tradicional contrasta com a liberdade buscada por Darkness.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dustiness Ford',TRUE,0),(gen_random_uuid(),q,'Mitsurugi',FALSE,1),(gen_random_uuid(),q,'Zesta',FALSE,2),(gen_random_uuid(),q,'Claire',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','impossible','Qual desses personagens caracteriza a profissão incomum adotada por Kazuma, priorizando estratégia furtiva sobre confronto físico direto?','Sua escolha profissional se destaca entre as opções mais convencionais disponíveis no jogo do novo mundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aventureiro',TRUE,0),(gen_random_uuid(),q,'Cavaleiro',FALSE,1),(gen_random_uuid(),q,'Mago',FALSE,2),(gen_random_uuid(),q,'Sacerdote',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','easy','Qual desses personagens contribui com momentos cômicos recorrentes apesar de seu histórico conturbado em guildas anteriores de aventureiros?','Sua amizade com Kazuma se fortalece através de diversas situações inusitadas compartilhadas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dust',TRUE,0),(gen_random_uuid(),q,'Vanir',FALSE,1),(gen_random_uuid(),q,'Mitsurugi',FALSE,2),(gen_random_uuid(),q,'Beldia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','hard','Qual desses personagens governa formalmente as mecânicas de progressão dos aventureiros, funcionando de maneira similar a jogos eletrônicos familiares a Kazuma?','Aqua frequentemente demonstra confusão ao tentar compreender completamente essa estrutura.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sistema de Níveis',TRUE,0),(gen_random_uuid(),q,'Registro Divino',FALSE,1),(gen_random_uuid(),q,'Compêndio dos Deuses',FALSE,2),(gen_random_uuid(),q,'Cristal de Poder',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','medium','Qual desses personagens administra rigidamente seu território nobre, questionando as decisões pouco tradicionais tomadas por sua filha aventureira?','Sua postura reflete valores conservadores típicos da nobreza do reino.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dustiness Ford',TRUE,0),(gen_random_uuid(),q,'Mitsurugi',FALSE,1),(gen_random_uuid(),q,'Zesta',FALSE,2),(gen_random_uuid(),q,'Claire',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','impossible','Qual desses personagens permite a Kazuma desenvolver estratégias de sobrevivência baseadas em astúcia ao invés de força bruta convencional?','Sua natureza incomum reflete a personalidade pragmática do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aventureiro',TRUE,0),(gen_random_uuid(),q,'Cavaleiro',FALSE,1),(gen_random_uuid(),q,'Mago',FALSE,2),(gen_random_uuid(),q,'Sacerdote',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','medium','Qual desses personagens participa ativamente de eventos cômicos junto ao grupo, mesmo carregando reputação problemática entre outros aventureiros da cidade?','Sua lealdade inesperada surpreende positivamente Kazuma em momentos decisivos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dust',TRUE,0),(gen_random_uuid(),q,'Vanir',FALSE,1),(gen_random_uuid(),q,'Mitsurugi',FALSE,2),(gen_random_uuid(),q,'Beldia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','hard','Qual desses personagens organiza estruturalmente os níveis e habilidades disponíveis para aventureiros no novo mundo, intrigando Aqua constantemente?','Sua semelhança com jogos eletrônicos é frequentemente comentada por Kazuma.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sistema de Níveis',TRUE,0),(gen_random_uuid(),q,'Registro Divino',FALSE,1),(gen_random_uuid(),q,'Compêndio dos Deuses',FALSE,2),(gen_random_uuid(),q,'Cristal de Poder',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','medium','Qual desses personagens exerce controle territorial rigoroso, sempre expressando dúvidas sobre as escolhas de vida não convencionais de sua filha?','Sua expectativa nobre tradicional gera tensão recorrente na dinâmica familiar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dustiness Ford',TRUE,0),(gen_random_uuid(),q,'Mitsurugi',FALSE,1),(gen_random_uuid(),q,'Zesta',FALSE,2),(gen_random_uuid(),q,'Claire',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','impossible','Qual desses personagens caracteriza a escolha profissional inicial de Kazuma, priorizando versatilidade estratégica sobre especialização em combate?','Esta escolha se mostra fundamental para diversas resoluções inusitadas ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aventureiro',TRUE,0),(gen_random_uuid(),q,'Cavaleiro',FALSE,1),(gen_random_uuid(),q,'Mago',FALSE,2),(gen_random_uuid(),q,'Sacerdote',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','easy','Qual desses personagens frequentemente aparece em situações caóticas ao lado do grupo protagonista, mantendo amizade genuína apesar da reputação instável?','Sua presença garante momentos cômicos memoráveis ao longo de toda a trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dust',TRUE,0),(gen_random_uuid(),q,'Vanir',FALSE,1),(gen_random_uuid(),q,'Mitsurugi',FALSE,2),(gen_random_uuid(),q,'Beldia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','medium','Qual desses personagens estrutura formalmente a progressão de força dos aventureiros, comparável diretamente a jogos eletrônicos familiares ao protagonista?','Sua lógica interna surpreende constantemente Aqua durante suas explicações.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sistema de Níveis',TRUE,0),(gen_random_uuid(),q,'Registro Divino',FALSE,1),(gen_random_uuid(),q,'Compêndio dos Deuses',FALSE,2),(gen_random_uuid(),q,'Cristal de Poder',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','medium','Qual desses personagens complementa as estratégias furtivas de Kazuma através de sua abordagem igualmente pouco convencional aos desafios de aventureiro?','Sua amizade com o protagonista se fortalece por meio de situações compartilhadas inusitadas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dust',TRUE,0),(gen_random_uuid(),q,'Vanir',FALSE,1),(gen_random_uuid(),q,'Mitsurugi',FALSE,2),(gen_random_uuid(),q,'Beldia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','hard','Qual desses personagens organiza a mecânica central de progressão de força dos personagens, com clara inspiração em jogos eletrônicos do mundo original de Kazuma?','Sua existência intriga tanto os protagonistas quanto os habitantes nativos do novo mundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sistema de Níveis',TRUE,0),(gen_random_uuid(),q,'Registro Divino',FALSE,1),(gen_random_uuid(),q,'Compêndio dos Deuses',FALSE,2),(gen_random_uuid(),q,'Cristal de Poder',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','medium','Qual desses personagens defende valores tradicionais rigorosos ao supervisionar o território de sua família nobre ao longo da série?','Sua rigidez reflete padrões conservadores comuns entre a nobreza do reino.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dustiness Ford',TRUE,0),(gen_random_uuid(),q,'Mitsurugi',FALSE,1),(gen_random_uuid(),q,'Zesta',FALSE,2),(gen_random_uuid(),q,'Claire',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','impossible','Qual desses personagens fundamenta a abordagem estratégica de Kazuma perante desafios que exigem mais astúcia do que força bruta?','Essa fundação profissional acompanha o protagonista ao longo de toda sua jornada no novo mundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aventureiro',TRUE,0),(gen_random_uuid(),q,'Cavaleiro',FALSE,1),(gen_random_uuid(),q,'Mago',FALSE,2),(gen_random_uuid(),q,'Sacerdote',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','easy','Qual desses personagens equilibra momentos de trapaça com atos genuínos de camaradagem ao lado do grupo protagonista?','Sua complexidade de caráter surpreende constantemente quem o conhece superficialmente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dust',TRUE,0),(gen_random_uuid(),q,'Vanir',FALSE,1),(gen_random_uuid(),q,'Mitsurugi',FALSE,2),(gen_random_uuid(),q,'Beldia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'text','hard','Qual desses personagens estabelece os parâmetros de evolução de habilidades disponíveis para todos os aventureiros registrados do novo mundo?','Sua estrutura complexa gera debates cômicos frequentes entre os membros do grupo protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sistema de Níveis',TRUE,0),(gen_random_uuid(),q,'Registro Divino',FALSE,1),(gen_random_uuid(),q,'Compêndio dos Deuses',FALSE,2),(gen_random_uuid(),q,'Cristal de Poder',FALSE,3);

    -- fill_blank complemento (16)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'fill_blank','medium','O sistema de status e habilidades usado pelos aventureiros no novo mundo, similar a jogos de vídeo game, é chamado de ___.','Aqua demonstra confusão constante sobre o funcionamento desse sistema peculiar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sistema de Níveis',TRUE,0),(gen_random_uuid(),q,'Registro Divino',FALSE,1),(gen_random_uuid(),q,'Compêndio dos Deuses',FALSE,2),(gen_random_uuid(),q,'Cristal de Poder',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'fill_blank','hard','O artefato mágico antigo guardado pela família nobre de Darkness, associado à proteção de fronteiras, é referido como ___.','Sua existência é mencionada apenas em referências indiretas ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Selo de Proteção Fronteiriça',TRUE,0),(gen_random_uuid(),q,'Cristal da Guarda',FALSE,1),(gen_random_uuid(),q,'Amuleto Territorial',FALSE,2),(gen_random_uuid(),q,'Talismã de Fronteira',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'fill_blank','easy','O aventureiro trapaceiro frequentemente envolvido em confusões cômicas com o grupo se chama ___.','Ele é expulso de sua própria guilda por comportamento imprudente antes dos eventos principais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dust',TRUE,0),(gen_random_uuid(),q,'Vanir',FALSE,1),(gen_random_uuid(),q,'Mitsurugi',FALSE,2),(gen_random_uuid(),q,'Beldia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'fill_blank','impossible','A profissão especial rara escolhida por Kazuma, focada em roubo e negociação, é chamada de ___.','Sua escolha reflete sua estratégia de sobrevivência através de astúcia ao invés de força bruta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aventureiro',TRUE,0),(gen_random_uuid(),q,'Cavaleiro',FALSE,1),(gen_random_uuid(),q,'Mago',FALSE,2),(gen_random_uuid(),q,'Sacerdote',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'fill_blank','medium','O sistema que confunde Aqua constantemente devido à semelhança com jogos eletrônicos comuns é chamado de ___.','Este sistema define níveis, habilidades e progressão dos aventureiros no novo mundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sistema de Níveis',TRUE,0),(gen_random_uuid(),q,'Registro Divino',FALSE,1),(gen_random_uuid(),q,'Compêndio dos Deuses',FALSE,2),(gen_random_uuid(),q,'Cristal de Poder',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'fill_blank','medium','O nobre que exerce autoridade rígida sobre território, expressando preocupação constante sobre escolhas de sua filha, se chama ___.','Sua posição social contrasta fortemente com o estilo de vida escolhido por Darkness.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dustiness Ford',TRUE,0),(gen_random_uuid(),q,'Mitsurugi',FALSE,1),(gen_random_uuid(),q,'Zesta',FALSE,2),(gen_random_uuid(),q,'Claire',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'fill_blank','impossible','A profissão que permite a Kazuma praticar roubo estratégico e negociação como habilidade única é chamada de ___.','Esta escolha profissional o diferencia dos demais aventureiros focados apenas em combate.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aventureiro',TRUE,0),(gen_random_uuid(),q,'Cavaleiro',FALSE,1),(gen_random_uuid(),q,'Mago',FALSE,2),(gen_random_uuid(),q,'Sacerdote',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'fill_blank','easy','O aventureiro que figura em situações cômicas apesar do histórico problemático em sua guilda anterior se chama ___.','Sua imprevisibilidade contribui para diversos momentos hilários da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dust',TRUE,0),(gen_random_uuid(),q,'Vanir',FALSE,1),(gen_random_uuid(),q,'Mitsurugi',FALSE,2),(gen_random_uuid(),q,'Beldia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'fill_blank','hard','O sistema que estabelece regras sobre níveis e progressão de habilidades, gerando confusão cômica em Aqua, é chamado de ___.','Sua estrutura remete diretamente a jogos eletrônicos conhecidos do mundo original de Kazuma.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sistema de Níveis',TRUE,0),(gen_random_uuid(),q,'Registro Divino',FALSE,1),(gen_random_uuid(),q,'Compêndio dos Deuses',FALSE,2),(gen_random_uuid(),q,'Cristal de Poder',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'fill_blank','medium','O nobre que mantém posição de autoridade sobre território, demonstrando preocupação paternal com decisões de sua filha aventureira, se chama ___.','Sua rigidez tradicional gera tensão familiar recorrente ao longo da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dustiness Ford',TRUE,0),(gen_random_uuid(),q,'Mitsurugi',FALSE,1),(gen_random_uuid(),q,'Zesta',FALSE,2),(gen_random_uuid(),q,'Claire',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'fill_blank','impossible','A profissão que define a trajetória de Kazuma como especialista em furtividade e negociação estratégica é chamada de ___.','Sua natureza pouco convencional reflete o estilo de sobrevivência adotado pelo protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aventureiro',TRUE,0),(gen_random_uuid(),q,'Cavaleiro',FALSE,1),(gen_random_uuid(),q,'Mago',FALSE,2),(gen_random_uuid(),q,'Sacerdote',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'fill_blank','medium','O aventureiro constantemente envolvido em situações embaraçosas ao lado do grupo, mantendo reputação duvidosa, se chama ___.','Apesar disso, ele demonstra momentos de genuína camaradagem com Kazuma.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dust',TRUE,0),(gen_random_uuid(),q,'Vanir',FALSE,1),(gen_random_uuid(),q,'Mitsurugi',FALSE,2),(gen_random_uuid(),q,'Beldia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'fill_blank','hard','O sistema que organiza a progressão de poder dos aventureiros através de níveis, intrigando profundamente Aqua, é chamado de ___.','Sua lógica interna reflete padrões familiares de jogos eletrônicos tradicionais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sistema de Níveis',TRUE,0),(gen_random_uuid(),q,'Registro Divino',FALSE,1),(gen_random_uuid(),q,'Compêndio dos Deuses',FALSE,2),(gen_random_uuid(),q,'Cristal de Poder',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'fill_blank','medium','O nobre que supervisiona formalmente território familiar, questionando escolhas incomuns feitas por sua filha, se chama ___.','Sua expectativa tradicional contrasta com a liberdade buscada por Darkness.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dustiness Ford',TRUE,0),(gen_random_uuid(),q,'Mitsurugi',FALSE,1),(gen_random_uuid(),q,'Zesta',FALSE,2),(gen_random_uuid(),q,'Claire',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'fill_blank','impossible','A profissão que caracteriza a escolha de Kazuma, priorizando estratégia furtiva sobre confronto físico direto, é chamada de ___.','Sua escolha profissional se destaca entre as opções mais convencionais disponíveis no jogo do novo mundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aventureiro',TRUE,0),(gen_random_uuid(),q,'Cavaleiro',FALSE,1),(gen_random_uuid(),q,'Mago',FALSE,2),(gen_random_uuid(),q,'Sacerdote',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'fill_blank','medium','O aventureiro que complementa as estratégias furtivas de Kazuma através de abordagem igualmente pouco convencional se chama ___.','Sua amizade com o protagonista se fortalece por meio de situações compartilhadas inusitadas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dust',TRUE,0),(gen_random_uuid(),q,'Vanir',FALSE,1),(gen_random_uuid(),q,'Mitsurugi',FALSE,2),(gen_random_uuid(),q,'Beldia',FALSE,3);

    -- who_said complemento (17)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'who_said','easy','Quem disse: "Fui expulso da minha guilda por imprudência, mas isso nunca me impediu de causar confusão cômica ao lado deste grupo"?','A frase é dita pelo aventureiro trapaceiro frequentemente envolvido em confusões.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dust',TRUE,0),(gen_random_uuid(),q,'Vanir',FALSE,1),(gen_random_uuid(),q,'Mitsurugi',FALSE,2),(gen_random_uuid(),q,'Beldia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'who_said','medium','Quem disse: "Minha estrutura de níveis e habilidades confunde Aqua constantemente, apesar de ser bastante familiar para Kazuma"?','A frase reflete o funcionamento peculiar do sistema de progressão dos aventureiros.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sistema de Níveis',TRUE,0),(gen_random_uuid(),q,'Registro Divino',FALSE,1),(gen_random_uuid(),q,'Compêndio dos Deuses',FALSE,2),(gen_random_uuid(),q,'Cristal de Poder',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'who_said','hard','Quem disse: "Guardo com cuidado um artefato antigo de proteção fronteiriça, herdado por gerações da minha família nobre"?','A frase é dita pelo pai rígido de Darkness sobre o artefato ancestral de sua linhagem.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dustiness Ford',TRUE,0),(gen_random_uuid(),q,'Mitsurugi',FALSE,1),(gen_random_uuid(),q,'Zesta',FALSE,2),(gen_random_uuid(),q,'Claire',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'who_said','impossible','Quem disse: "Escolhi essa profissão incomum de roubo e negociação porque prefiro sobreviver através de astúcia do que força bruta"?','A frase é dita pelo protagonista sobre sua escolha profissional inicial no novo mundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kazuma',TRUE,0),(gen_random_uuid(),q,'Dust',FALSE,1),(gen_random_uuid(),q,'Vanir',FALSE,2),(gen_random_uuid(),q,'Mitsurugi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'who_said','easy','Quem disse: "Minha imprevisibilidade contribui para diversos momentos hilários, mesmo carregando reputação problemática entre aventureiros"?','A frase é dita pelo aventureiro trapaceiro conhecido por confusões cômicas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dust',TRUE,0),(gen_random_uuid(),q,'Vanir',FALSE,1),(gen_random_uuid(),q,'Mitsurugi',FALSE,2),(gen_random_uuid(),q,'Beldia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'who_said','medium','Quem disse: "Minha lógica interna remete diretamente a jogos eletrônicos, algo que intriga profundamente Aqua sempre que ela tenta entender"?','A frase reflete a natureza peculiar do sistema de progressão dos aventureiros.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sistema de Níveis',TRUE,0),(gen_random_uuid(),q,'Registro Divino',FALSE,1),(gen_random_uuid(),q,'Compêndio dos Deuses',FALSE,2),(gen_random_uuid(),q,'Cristal de Poder',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'who_said','hard','Quem disse: "Minha posição social como nobre contrasta fortemente com o estilo de vida escolhido pela minha própria filha"?','A frase é dita pelo pai rígido de Darkness sobre a divergência de valores familiares.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dustiness Ford',TRUE,0),(gen_random_uuid(),q,'Mitsurugi',FALSE,1),(gen_random_uuid(),q,'Zesta',FALSE,2),(gen_random_uuid(),q,'Claire',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'who_said','impossible','Quem disse: "Esta escolha profissional me diferencia dos demais aventureiros focados apenas em combate direto e força bruta"?','A frase é dita pelo protagonista sobre sua profissão especial e incomum.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kazuma',TRUE,0),(gen_random_uuid(),q,'Dust',FALSE,1),(gen_random_uuid(),q,'Vanir',FALSE,2),(gen_random_uuid(),q,'Mitsurugi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'who_said','easy','Quem disse: "Minha lealdade inesperada surpreende positivamente Kazuma sempre que a situação exige mais de mim"?','A frase é dita pelo aventureiro trapaceiro apesar de sua reputação instável.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dust',TRUE,0),(gen_random_uuid(),q,'Vanir',FALSE,1),(gen_random_uuid(),q,'Mitsurugi',FALSE,2),(gen_random_uuid(),q,'Beldia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'who_said','medium','Quem disse: "Minha estrutura surpreende constantemente Aqua durante suas tentativas de compreender completamente meu funcionamento"?','A frase reflete a semelhança do sistema de progressão com jogos eletrônicos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sistema de Níveis',TRUE,0),(gen_random_uuid(),q,'Registro Divino',FALSE,1),(gen_random_uuid(),q,'Compêndio dos Deuses',FALSE,2),(gen_random_uuid(),q,'Cristal de Poder',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'who_said','hard','Quem disse: "Minha expectativa nobre tradicional gera tensão recorrente na dinâmica familiar com minha filha aventureira"?','A frase é dita pelo pai rígido de Darkness sobre suas expectativas familiares tradicionais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dustiness Ford',TRUE,0),(gen_random_uuid(),q,'Mitsurugi',FALSE,1),(gen_random_uuid(),q,'Zesta',FALSE,2),(gen_random_uuid(),q,'Claire',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'who_said','impossible','Quem disse: "Esta escolha se mostra fundamental para diversas resoluções inusitadas que enfrentei ao longo desta jornada"?','A frase é dita pelo protagonista sobre a importância de sua profissão incomum.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kazuma',TRUE,0),(gen_random_uuid(),q,'Dust',FALSE,1),(gen_random_uuid(),q,'Vanir',FALSE,2),(gen_random_uuid(),q,'Mitsurugi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'who_said','easy','Quem disse: "Minha presença garante momentos cômicos memoráveis, mesmo com minha reputação instável entre outros aventureiros da cidade"?','A frase é dita pelo aventureiro trapaceiro conhecido por sua imprevisibilidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dust',TRUE,0),(gen_random_uuid(),q,'Vanir',FALSE,1),(gen_random_uuid(),q,'Mitsurugi',FALSE,2),(gen_random_uuid(),q,'Beldia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'who_said','medium','Quem disse: "Minha lógica é frequentemente comentada por Kazuma devido à semelhança direta com jogos eletrônicos que ele conhecia antes"?','A frase reflete a estrutura peculiar do sistema de progressão dos aventureiros.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sistema de Níveis',TRUE,0),(gen_random_uuid(),q,'Registro Divino',FALSE,1),(gen_random_uuid(),q,'Compêndio dos Deuses',FALSE,2),(gen_random_uuid(),q,'Cristal de Poder',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'who_said','hard','Quem disse: "Minha rigidez tradicional como nobre gera tensão familiar recorrente ao longo de toda esta trajetória"?','A frase é dita pelo pai de Darkness sobre sua postura conservadora tradicional.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Dustiness Ford',TRUE,0),(gen_random_uuid(),q,'Mitsurugi',FALSE,1),(gen_random_uuid(),q,'Zesta',FALSE,2),(gen_random_uuid(),q,'Claire',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'who_said','impossible','Quem disse: "Minha natureza pouco convencional reflete diretamente o estilo de sobrevivência que adotei desde minha chegada a este mundo"?','A frase é dita pelo protagonista refletindo sobre sua abordagem pragmática de vida.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kazuma',TRUE,0),(gen_random_uuid(),q,'Dust',FALSE,1),(gen_random_uuid(),q,'Vanir',FALSE,2),(gen_random_uuid(),q,'Mitsurugi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'who_said','medium','Quem disse: "Minha estrutura complexa gera debates cômicos frequentes entre os membros deste grupo, especialmente quando tento explicar meu funcionamento"?','A frase reflete a natureza peculiar do sistema de progressão dos aventureiros.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sistema de Níveis',TRUE,0),(gen_random_uuid(),q,'Registro Divino',FALSE,1),(gen_random_uuid(),q,'Compêndio dos Deuses',FALSE,2),(gen_random_uuid(),q,'Cristal de Poder',FALSE,3);

    -- episode_arc complemento (6)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'episode_arc','medium','Em qual arco Dust se envolve em uma das confusões cômicas mais memoráveis ao lado do grupo protagonista, apesar de sua reputação problemática?','Este episódio destaca a dinâmica cômica característica entre Dust e Kazuma.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Introdução',TRUE,0),(gen_random_uuid(),q,'Arco de Verdia',FALSE,1),(gen_random_uuid(),q,'Arco do Dragão de Gelo',FALSE,2),(gen_random_uuid(),q,'Arco de Iris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'episode_arc','hard','Em qual arco o pai de Darkness confronta diretamente a filha sobre suas escolhas de vida incomuns como aventureira?','Este confronto familiar revela a tensão entre tradição nobre e liberdade pessoal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Iris',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco de Verdia',FALSE,2),(gen_random_uuid(),q,'Arco do Dragão de Gelo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'episode_arc','medium','Em qual arco Kazuma explica o funcionamento do sistema de níveis para seus companheiros, gerando confusão cômica em Aqua?','Este momento explora as semelhanças do novo mundo com jogos eletrônicos conhecidos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Introdução',TRUE,0),(gen_random_uuid(),q,'Arco de Verdia',FALSE,1),(gen_random_uuid(),q,'Arco do Dragão de Gelo',FALSE,2),(gen_random_uuid(),q,'Arco de Iris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'episode_arc','hard','Em qual arco Kazuma escolhe formalmente sua profissão de aventureiro, priorizando furtividade e negociação sobre combate direto?','Esta escolha profissional define grande parte de suas estratégias futuras.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Introdução',TRUE,0),(gen_random_uuid(),q,'Arco de Verdia',FALSE,1),(gen_random_uuid(),q,'Arco do Dragão de Gelo',FALSE,2),(gen_random_uuid(),q,'Arco de Iris',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'episode_arc','impossible','Em qual arco é mencionado pela primeira vez o artefato antigo de proteção fronteiriça guardado pela família nobre de Darkness?','A menção ocorre através de referências indiretas durante conversas familiares.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Iris',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco de Verdia',FALSE,2),(gen_random_uuid(),q,'Arco do Dragão de Gelo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ks,'episode_arc','impossible','Em qual arco Dust demonstra lealdade inesperada ao grupo protagonista durante momento decisivo de combate?','Este momento surpreende positivamente Kazuma sobre o verdadeiro caráter de seu amigo problemático.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Verdia',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco do Dragão de Gelo',FALSE,2),(gen_random_uuid(),q,'Arco de Iris',FALSE,3);

END $$;
