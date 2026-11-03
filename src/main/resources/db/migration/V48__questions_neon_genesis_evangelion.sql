-- ============================================================
--  V48 — Seed de perguntas: Neon Genesis Evangelion (150 perguntas)
--  Fonte: MyAnimeList + cânone do anime
--  Distribuição: text 40% / fill_blank 25% / who_said 20% /
--                episode_arc 10% / chronological 5%
--  Sem repetição com V5. Regras R1-R7 aplicadas.
-- ============================================================

DO $$
DECLARE
    v_system UUID := '00000000-0000-0000-0000-000000000001';
    v_ev     UUID;
    q        UUID;
BEGIN
    SELECT id INTO v_ev FROM animes WHERE slug = 'neon-genesis-evangelion' LIMIT 1;

    -- ══════════════════════════════════════════════════════════
    -- TEXT — 60 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','easy','Qual é o nome do protagonista, adolescente recrutado por seu pai para pilotar um robô gigante contra criaturas misteriosas?','Ele luta constantemente com questões de autoestima e busca de aprovação paterna.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shinji Ikari',TRUE,0),(gen_random_uuid(),q,'Gendo',FALSE,1),(gen_random_uuid(),q,'Kaworu',FALSE,2),(gen_random_uuid(),q,'Toji',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','easy','Qual é o nome do pai do protagonista, comandante frio e distante da organização responsável pela defesa contra as criaturas misteriosas?','Sua relação com o filho é marcada por profundo distanciamento emocional ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gendo Ikari',TRUE,0),(gen_random_uuid(),q,'Shinji',FALSE,1),(gen_random_uuid(),q,'Kaworu',FALSE,2),(gen_random_uuid(),q,'Fuyutsuki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','easy','Qual é o nome da organização governamental especial responsável por combater as criaturas misteriosas usando robôs biomecânicos gigantes?','Ela opera com forte sigilo, revelando informações apenas quando estritamente necessário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'NERV',TRUE,0),(gen_random_uuid(),q,'SEELE',FALSE,1),(gen_random_uuid(),q,'GEHIRN',FALSE,2),(gen_random_uuid(),q,'MAGI',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','easy','Qual é o nome dado às criaturas misteriosas e gigantescas que ameaçam constantemente a humanidade ao longo da série?','Sua origem exata e verdadeira natureza permanecem parcialmente misteriosas por grande parte da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Anjos',TRUE,0),(gen_random_uuid(),q,'Titãs',FALSE,1),(gen_random_uuid(),q,'Kaiju',FALSE,2),(gen_random_uuid(),q,'Demônios',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','easy','Qual é o nome dado aos robôs biomecânicos gigantes pilotados pelos protagonistas jovens da série contra as criaturas misteriosas?','Cada unidade possui personalidade e características biológicas próprias além da estrutura mecânica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Evangelion',TRUE,0),(gen_random_uuid(),q,'Jaeger',FALSE,1),(gen_random_uuid(),q,'Gundam',FALSE,2),(gen_random_uuid(),q,'Mecha Titã',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','easy','Qual é o nome da colega de equipe do protagonista, piloto alemã de temperamento explosivo e personalidade competitiva?','Ela demonstra profunda insegurança escondida sob sua fachada confiante e arrogante.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Asuka Langley',TRUE,0),(gen_random_uuid(),q,'Rei Ayanami',FALSE,1),(gen_random_uuid(),q,'Misato',FALSE,2),(gen_random_uuid(),q,'Ritsuko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','easy','Qual é o nome da colega de equipe do protagonista, piloto de cabelos azuis e personalidade extremamente reservada e enigmática?','Sua conexão misteriosa com a organização é revelada gradualmente ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rei Ayanami',TRUE,0),(gen_random_uuid(),q,'Asuka',FALSE,1),(gen_random_uuid(),q,'Misato',FALSE,2),(gen_random_uuid(),q,'Ritsuko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','easy','Qual é o nome da capitã responsável pela supervisão tática dos pilotos, que também abriga o protagonista em seu apartamento?','Ela demonstra abordagem descontraída em contraste com o profissionalismo rigoroso de outros oficiais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Misato Katsuragi',TRUE,0),(gen_random_uuid(),q,'Ritsuko',FALSE,1),(gen_random_uuid(),q,'Rei',FALSE,2),(gen_random_uuid(),q,'Asuka',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','easy','Qual é o nome da cientista chefe responsável pela pesquisa e manutenção técnica dos robôs biomecânicos utilizados pela organização?','Ela mantém relação profissional complexa com o comandante da instituição.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ritsuko Akagi',TRUE,0),(gen_random_uuid(),q,'Misato',FALSE,1),(gen_random_uuid(),q,'Rei',FALSE,2),(gen_random_uuid(),q,'Asuka',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','easy','Qual é o nome do jovem misterioso e enigmático que se torna piloto tardio, desenvolvendo relação emocional significativa com o protagonista?','Sua verdadeira natureza é revelada apenas em momentos cruciais próximos ao final da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaworu Nagisa',TRUE,0),(gen_random_uuid(),q,'Toji',FALSE,1),(gen_random_uuid(),q,'Kensuke',FALSE,2),(gen_random_uuid(),q,'Gendo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','easy','Qual é o nome do colega de classe do protagonista, atlético e inicialmente hostil, que se torna piloto de Evangelion temporariamente?','Sua amizade com o protagonista se desenvolve apesar de início conturbado entre eles.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Toji Suzuhara',TRUE,0),(gen_random_uuid(),q,'Kensuke',FALSE,1),(gen_random_uuid(),q,'Kaworu',FALSE,2),(gen_random_uuid(),q,'Fuyutsuki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','easy','Qual é o nome do colega de classe entusiasta militar do protagonista, sempre fascinado por tecnologia bélica e informações sobre os robôs biomecânicos?','Ele demonstra conhecimento técnico surpreendente apesar de nunca ter pilotado um Evangelion.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kensuke Aida',TRUE,0),(gen_random_uuid(),q,'Toji',FALSE,1),(gen_random_uuid(),q,'Kaworu',FALSE,2),(gen_random_uuid(),q,'Fuyutsuki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','easy','Qual é o nome dado à cidade fortificada e subterrânea onde está localizada a sede principal da organização de defesa contra as criaturas misteriosas?','Ela foi projetada especificamente para resistir a ataques das criaturas invasoras.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tokyo-3',TRUE,0),(gen_random_uuid(),q,'Neo Tokyo',FALSE,1),(gen_random_uuid(),q,'Central Dogma',FALSE,2),(gen_random_uuid(),q,'Nova Osaka',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','easy','Qual é o nome dado à fonte de energia especial usada para alimentar os robôs biomecânicos durante suas operações limitadas em campo?','Sua duração limitada cria tensão dramática em diversos combates ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bateria Externa',TRUE,0),(gen_random_uuid(),q,'Núcleo de Fusão',FALSE,1),(gen_random_uuid(),q,'Cristal de Energia',FALSE,2),(gen_random_uuid(),q,'Reator Interno',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','medium','Qual é o nome do vice-comandante da organização, figura de confiança que serve como conselheiro próximo do comandante principal?','Ele demonstra conhecimento histórico profundo sobre os eventos que precedem o início da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kouzou Fuyutsuki',TRUE,0),(gen_random_uuid(),q,'Gendo',FALSE,1),(gen_random_uuid(),q,'Kaji',FALSE,2),(gen_random_uuid(),q,'Kaworu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','medium','Qual é o nome dado ao supercomputador central que gerencia operações estratégicas críticas da organização de defesa?','Ele é composto por três sistemas distintos que refletem diferentes aspectos da personalidade de sua criadora.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'MAGI',TRUE,0),(gen_random_uuid(),q,'NERV Core',FALSE,1),(gen_random_uuid(),q,'Central Dogma',FALSE,2),(gen_random_uuid(),q,'SEELE System',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','medium','Qual é o nome dado à organização secreta e enigmática que supervisiona em segredo as ações estratégicas de mais alto nível da instituição de defesa?','Seus membros permanecem majoritariamente anônimos e misteriosos ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'SEELE',TRUE,0),(gen_random_uuid(),q,'GEHIRN',FALSE,1),(gen_random_uuid(),q,'MAGI',FALSE,2),(gen_random_uuid(),q,'Comitê Sombrio',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','medium','Qual é o nome do agente enigmático e charmoso que mantém relação romântica complexa com a capitã responsável pelos pilotos?','Sua verdadeira lealdade organizacional permanece ambígua durante grande parte da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ryoji Kaji',TRUE,0),(gen_random_uuid(),q,'Fuyutsuki',FALSE,1),(gen_random_uuid(),q,'Gendo',FALSE,2),(gen_random_uuid(),q,'Kaworu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','medium','Qual é o nome dado ao evento catastrófico ocorrido anos antes dos eventos principais, responsável por devastar boa parte da população mundial?','Suas causas exatas permanecem envoltas em mistério significativo por grande parte da narrativa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Second Impact',TRUE,0),(gen_random_uuid(),q,'Grande Colapso',FALSE,1),(gen_random_uuid(),q,'Catástrofe Original',FALSE,2),(gen_random_uuid(),q,'Evento Zero',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','medium','Qual é o nome dado ao processo de sincronização necessário para que um piloto consiga controlar efetivamente seu robô biomecânico designado?','Índices baixos desse processo podem comprometer significativamente o desempenho em combate.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sincronização',TRUE,0),(gen_random_uuid(),q,'Conexão Neural',FALSE,1),(gen_random_uuid(),q,'Vínculo Biomecânico',FALSE,2),(gen_random_uuid(),q,'Fusão Mental',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','hard','Qual é o nome dado ao campo de força defensivo utilizado tanto pelas criaturas misteriosas quanto pelos robôs biomecânicos durante combates decisivos?','Sua neutralização exige armamento especial capaz de penetrar essa barreira protetora.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'AT Field',TRUE,0),(gen_random_uuid(),q,'Barreira Neural',FALSE,1),(gen_random_uuid(),q,'Escudo Absoluto',FALSE,2),(gen_random_uuid(),q,'Campo de Fase',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','hard','Qual é o nome dado ao plano secreto e catastrófico orquestrado por facções dentro da organização, visando forçar evolução acelerada de toda a humanidade?','Sua revelação completa ocorre apenas nos episódios finais da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Human Instrumentality Project',TRUE,0),(gen_random_uuid(),q,'Projeto Genesis',FALSE,1),(gen_random_uuid(),q,'Plano Evangelion',FALSE,2),(gen_random_uuid(),q,'Operação Renascimento',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','hard','Qual é o nome do irmão mais velho de Kaji, mencionado em referências indiretas relacionadas ao passado profissional do agente enigmático?','Sua existência é sugerida apenas através de conversas esparsas ao longo da narrativa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Referência Indireta de Kaji',TRUE,0),(gen_random_uuid(),q,'Fuyutsuki Jovem',FALSE,1),(gen_random_uuid(),q,'Gendo Original',FALSE,2),(gen_random_uuid(),q,'Ancestral Ikari',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','hard','Qual é o nome dado ao complexo subterrâneo mais profundo e secreto da organização, contendo artefatos ligados diretamente às origens das criaturas misteriosas?','Poucos indivíduos têm acesso autorizado a essa área de segurança máxima.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Terminal Dogma',TRUE,0),(gen_random_uuid(),q,'Central Dogma',FALSE,1),(gen_random_uuid(),q,'Núcleo Primordial',FALSE,2),(gen_random_uuid(),q,'Câmara Sagrada',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','hard','Qual é o nome dado à substância especial encontrada dentro dos robôs biomecânicos, servindo como meio de imersão para os pilotos durante operação?','Ela possui propriedades que permitem respiração através de método especializado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'LCL',TRUE,0),(gen_random_uuid(),q,'Fluido Neural',FALSE,1),(gen_random_uuid(),q,'Plasma Bio',FALSE,2),(gen_random_uuid(),q,'Solução Sintética',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','impossible','Qual é o nome dado ao primeiro protótipo de robô biomecânico desenvolvido anos antes dos eventos principais, mencionado apenas em referências históricas dentro da organização?','Sua existência é revelada gradualmente através de documentos e conversas restritas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Evangelion Unidade 00 (protótipo)',TRUE,0),(gen_random_uuid(),q,'Evangelion Mark VI',FALSE,1),(gen_random_uuid(),q,'Prototype Zero',FALSE,2),(gen_random_uuid(),q,'Evangelion Genesis',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','impossible','Qual é o nome dado ao entidade primordial mencionada em textos antigos referenciados pela organização secreta, associada à origem de toda a criação conhecida?','Sua natureza exata permanece envolta em mistério teológico e científico complexo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Adam',TRUE,0),(gen_random_uuid(),q,'Lilith',FALSE,1),(gen_random_uuid(),q,'Genesis',FALSE,2),(gen_random_uuid(),q,'Origem',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- FILL_BLANK — 38 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'fill_blank','easy','O protagonista, adolescente recrutado por seu pai para pilotar um robô gigante, se chama ___.','Ele luta constantemente com questões de autoestima e busca de aprovação paterna.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shinji',TRUE,0),(gen_random_uuid(),q,'Gendo',FALSE,1),(gen_random_uuid(),q,'Kaworu',FALSE,2),(gen_random_uuid(),q,'Toji',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'fill_blank','easy','O pai do protagonista, comandante frio e distante da organização de defesa, se chama ___.','Sua relação com o filho é marcada por profundo distanciamento emocional ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gendo',TRUE,0),(gen_random_uuid(),q,'Shinji',FALSE,1),(gen_random_uuid(),q,'Kaworu',FALSE,2),(gen_random_uuid(),q,'Fuyutsuki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'fill_blank','easy','A organização governamental especial responsável por combater as criaturas misteriosas se chama ___.','Ela opera com forte sigilo, revelando informações apenas quando estritamente necessário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'NERV',TRUE,0),(gen_random_uuid(),q,'SEELE',FALSE,1),(gen_random_uuid(),q,'GEHIRN',FALSE,2),(gen_random_uuid(),q,'MAGI',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'fill_blank','easy','As criaturas misteriosas e gigantescas que ameaçam constantemente a humanidade são chamadas de ___.','Sua origem exata e verdadeira natureza permanecem parcialmente misteriosas por grande parte da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Anjos',TRUE,0),(gen_random_uuid(),q,'Titãs',FALSE,1),(gen_random_uuid(),q,'Kaiju',FALSE,2),(gen_random_uuid(),q,'Demônios',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'fill_blank','easy','Os robôs biomecânicos gigantes pilotados pelos protagonistas jovens são chamados de ___.','Cada unidade possui personalidade e características biológicas próprias além da estrutura mecânica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Evangelion',TRUE,0),(gen_random_uuid(),q,'Jaeger',FALSE,1),(gen_random_uuid(),q,'Gundam',FALSE,2),(gen_random_uuid(),q,'Mecha Titã',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'fill_blank','easy','A colega de equipe do protagonista, piloto alemã de temperamento explosivo, se chama ___.','Ela demonstra profunda insegurança escondida sob sua fachada confiante e arrogante.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Asuka',TRUE,0),(gen_random_uuid(),q,'Rei',FALSE,1),(gen_random_uuid(),q,'Misato',FALSE,2),(gen_random_uuid(),q,'Ritsuko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'fill_blank','easy','A colega de equipe do protagonista, piloto de cabelos azuis e personalidade reservada, se chama ___.','Sua conexão misteriosa com a organização é revelada gradualmente ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rei',TRUE,0),(gen_random_uuid(),q,'Asuka',FALSE,1),(gen_random_uuid(),q,'Misato',FALSE,2),(gen_random_uuid(),q,'Ritsuko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'fill_blank','easy','A capitã responsável pela supervisão tática dos pilotos, que também abriga o protagonista, se chama ___.','Ela demonstra abordagem descontraída em contraste com o profissionalismo rigoroso de outros oficiais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Misato',TRUE,0),(gen_random_uuid(),q,'Ritsuko',FALSE,1),(gen_random_uuid(),q,'Rei',FALSE,2),(gen_random_uuid(),q,'Asuka',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'fill_blank','easy','A cientista chefe responsável pela pesquisa técnica dos robôs biomecânicos se chama ___.','Ela mantém relação profissional complexa com o comandante da instituição.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ritsuko',TRUE,0),(gen_random_uuid(),q,'Misato',FALSE,1),(gen_random_uuid(),q,'Rei',FALSE,2),(gen_random_uuid(),q,'Asuka',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'fill_blank','easy','O jovem misterioso que se torna piloto tardio, desenvolvendo relação emocional significativa com o protagonista, se chama ___.','Sua verdadeira natureza é revelada apenas em momentos cruciais próximos ao final da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaworu',TRUE,0),(gen_random_uuid(),q,'Toji',FALSE,1),(gen_random_uuid(),q,'Kensuke',FALSE,2),(gen_random_uuid(),q,'Gendo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'fill_blank','medium','O colega de classe do protagonista, atlético e inicialmente hostil, que se torna piloto temporário, se chama ___.','Sua amizade com o protagonista se desenvolve apesar de início conturbado entre eles.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Toji',TRUE,0),(gen_random_uuid(),q,'Kensuke',FALSE,1),(gen_random_uuid(),q,'Kaworu',FALSE,2),(gen_random_uuid(),q,'Fuyutsuki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'fill_blank','medium','O colega de classe entusiasta militar do protagonista, fascinado por tecnologia bélica, se chama ___.','Ele demonstra conhecimento técnico surpreendente apesar de nunca ter pilotado um Evangelion.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kensuke',TRUE,0),(gen_random_uuid(),q,'Toji',FALSE,1),(gen_random_uuid(),q,'Kaworu',FALSE,2),(gen_random_uuid(),q,'Fuyutsuki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'fill_blank','medium','A cidade fortificada e subterrânea onde está localizada a sede principal da organização se chama ___.','Ela foi projetada especificamente para resistir a ataques das criaturas invasoras.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tokyo-3',TRUE,0),(gen_random_uuid(),q,'Neo Tokyo',FALSE,1),(gen_random_uuid(),q,'Central Dogma',FALSE,2),(gen_random_uuid(),q,'Nova Osaka',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'fill_blank','medium','O vice-comandante da organização, figura de confiança e conselheiro do comandante principal, se chama ___.','Ele demonstra conhecimento histórico profundo sobre os eventos que precedem o início da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fuyutsuki',TRUE,0),(gen_random_uuid(),q,'Gendo',FALSE,1),(gen_random_uuid(),q,'Kaji',FALSE,2),(gen_random_uuid(),q,'Kaworu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'fill_blank','medium','O supercomputador central que gerencia operações estratégicas críticas da organização se chama ___.','Ele é composto por três sistemas distintos que refletem diferentes aspectos da personalidade de sua criadora.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'MAGI',TRUE,0),(gen_random_uuid(),q,'NERV Core',FALSE,1),(gen_random_uuid(),q,'Central Dogma',FALSE,2),(gen_random_uuid(),q,'SEELE System',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'fill_blank','medium','A organização secreta que supervisiona em segredo as ações estratégicas de mais alto nível se chama ___.','Seus membros permanecem majoritariamente anônimos e misteriosos ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'SEELE',TRUE,0),(gen_random_uuid(),q,'GEHIRN',FALSE,1),(gen_random_uuid(),q,'MAGI',FALSE,2),(gen_random_uuid(),q,'Comitê Sombrio',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'fill_blank','medium','O agente enigmático e charmoso que mantém relação romântica complexa com a capitã dos pilotos se chama ___.','Sua verdadeira lealdade organizacional permanece ambígua durante grande parte da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaji',TRUE,0),(gen_random_uuid(),q,'Fuyutsuki',FALSE,1),(gen_random_uuid(),q,'Gendo',FALSE,2),(gen_random_uuid(),q,'Kaworu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'fill_blank','medium','O evento catastrófico ocorrido anos antes dos eventos principais, responsável por devastar boa parte da população mundial, é chamado de ___.','Suas causas exatas permanecem envoltas em mistério significativo por grande parte da narrativa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Second Impact',TRUE,0),(gen_random_uuid(),q,'Grande Colapso',FALSE,1),(gen_random_uuid(),q,'Catástrofe Original',FALSE,2),(gen_random_uuid(),q,'Evento Zero',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'fill_blank','hard','O campo de força defensivo utilizado tanto pelas criaturas misteriosas quanto pelos robôs biomecânicos é chamado de ___.','Sua neutralização exige armamento especial capaz de penetrar essa barreira protetora.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'AT Field',TRUE,0),(gen_random_uuid(),q,'Barreira Neural',FALSE,1),(gen_random_uuid(),q,'Escudo Absoluto',FALSE,2),(gen_random_uuid(),q,'Campo de Fase',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'fill_blank','hard','O plano secreto e catastrófico orquestrado por facções dentro da organização, visando forçar evolução acelerada da humanidade, é chamado de ___.','Sua revelação completa ocorre apenas nos episódios finais da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Human Instrumentality Project',TRUE,0),(gen_random_uuid(),q,'Projeto Genesis',FALSE,1),(gen_random_uuid(),q,'Plano Evangelion',FALSE,2),(gen_random_uuid(),q,'Operação Renascimento',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'fill_blank','hard','O complexo subterrâneo mais profundo e secreto da organização, contendo artefatos ligados às origens das criaturas misteriosas, é chamado de ___.','Poucos indivíduos têm acesso autorizado a essa área de segurança máxima.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Terminal Dogma',TRUE,0),(gen_random_uuid(),q,'Central Dogma',FALSE,1),(gen_random_uuid(),q,'Núcleo Primordial',FALSE,2),(gen_random_uuid(),q,'Câmara Sagrada',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'fill_blank','hard','A substância especial encontrada dentro dos robôs biomecânicos, servindo como meio de imersão para os pilotos, é chamada de ___.','Ela possui propriedades que permitem respiração através de método especializado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'LCL',TRUE,0),(gen_random_uuid(),q,'Fluido Neural',FALSE,1),(gen_random_uuid(),q,'Plasma Bio',FALSE,2),(gen_random_uuid(),q,'Solução Sintética',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'fill_blank','impossible','A entidade primordial mencionada em textos antigos referenciados pela organização secreta, associada à origem de toda a criação conhecida, se chama ___.','Sua natureza exata permanece envolta em mistério teológico e científico complexo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Adam',TRUE,0),(gen_random_uuid(),q,'Lilith',FALSE,1),(gen_random_uuid(),q,'Genesis',FALSE,2),(gen_random_uuid(),q,'Origem',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- WHO_SAID — 30 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'who_said','easy','Quem disse: "Eu nunca me sinto bom o suficiente para meu pai, mesmo pilotando este robô gigante em batalhas decisivas"?','A frase reflete as inseguranças centrais do protagonista da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shinji',TRUE,0),(gen_random_uuid(),q,'Gendo',FALSE,1),(gen_random_uuid(),q,'Kaworu',FALSE,2),(gen_random_uuid(),q,'Toji',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'who_said','easy','Quem disse: "Eu comando esta organização com frieza calculada, mesmo que isso signifique distanciar-me emocionalmente do meu próprio filho"?','A frase é dita pelo comandante frio e distante da organização de defesa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gendo',TRUE,0),(gen_random_uuid(),q,'Shinji',FALSE,1),(gen_random_uuid(),q,'Kaworu',FALSE,2),(gen_random_uuid(),q,'Fuyutsuki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'who_said','easy','Quem disse: "Eu sou piloto alemã de temperamento explosivo, e minha confiança arrogante esconde inseguranças profundas que raramente revelo"?','A frase é dita pela colega de equipe do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Asuka',TRUE,0),(gen_random_uuid(),q,'Rei',FALSE,1),(gen_random_uuid(),q,'Misato',FALSE,2),(gen_random_uuid(),q,'Ritsuko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'who_said','easy','Quem disse: "Eu mantenho postura reservada e enigmática, e minha conexão com a organização vai muito além do que aparento demonstrar"?','A frase é dita pela colega de equipe de cabelos azuis.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rei',TRUE,0),(gen_random_uuid(),q,'Asuka',FALSE,1),(gen_random_uuid(),q,'Misato',FALSE,2),(gen_random_uuid(),q,'Ritsuko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'who_said','easy','Quem disse: "Eu superviso taticamente os pilotos com abordagem descontraída, mesmo abrigando um deles em meu próprio apartamento"?','A frase é dita pela capitã responsável pelos pilotos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Misato',TRUE,0),(gen_random_uuid(),q,'Ritsuko',FALSE,1),(gen_random_uuid(),q,'Rei',FALSE,2),(gen_random_uuid(),q,'Asuka',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'who_said','easy','Quem disse: "Eu pesquiso e mantenho tecnicamente os robôs biomecânicos, além de manter relação profissional complexa com o comandante"?','A frase é dita pela cientista chefe da organização.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ritsuko',TRUE,0),(gen_random_uuid(),q,'Misato',FALSE,1),(gen_random_uuid(),q,'Rei',FALSE,2),(gen_random_uuid(),q,'Asuka',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'who_said','medium','Quem disse: "Eu me tornei piloto tardio e desenvolvi conexão emocional significativa com Shinji, mesmo escondendo minha verdadeira natureza"?','A frase é dita pelo jovem misterioso que se torna piloto próximo ao final da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaworu',TRUE,0),(gen_random_uuid(),q,'Toji',FALSE,1),(gen_random_uuid(),q,'Kensuke',FALSE,2),(gen_random_uuid(),q,'Gendo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'who_said','medium','Quem disse: "Eu era hostil com Shinji no início, mas nossa amizade se desenvolveu apesar de todas as dificuldades enfrentadas juntos"?','A frase é dita pelo colega de classe atlético que se torna piloto temporário.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Toji',TRUE,0),(gen_random_uuid(),q,'Kensuke',FALSE,1),(gen_random_uuid(),q,'Kaworu',FALSE,2),(gen_random_uuid(),q,'Fuyutsuki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'who_said','medium','Quem disse: "Eu adoro tecnologia bélica e tenho conhecimento técnico surpreendente sobre os robôs, mesmo nunca tendo pilotado um"?','A frase é dita pelo colega de classe entusiasta militar do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kensuke',TRUE,0),(gen_random_uuid(),q,'Toji',FALSE,1),(gen_random_uuid(),q,'Kaworu',FALSE,2),(gen_random_uuid(),q,'Fuyutsuki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'who_said','medium','Quem disse: "Eu conheço a história profunda que precede o início desta organização, servindo como conselheiro de confiança do comandante"?','A frase é dita pelo vice-comandante da organização de defesa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fuyutsuki',TRUE,0),(gen_random_uuid(),q,'Gendo',FALSE,1),(gen_random_uuid(),q,'Kaji',FALSE,2),(gen_random_uuid(),q,'Kaworu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'who_said','hard','Quem disse: "Minha lealdade organizacional permanece ambígua, mas meu relacionamento com Misato é genuíno, apesar de toda a complexidade"?','A frase é dita pelo agente enigmático e charmoso da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaji',TRUE,0),(gen_random_uuid(),q,'Fuyutsuki',FALSE,1),(gen_random_uuid(),q,'Gendo',FALSE,2),(gen_random_uuid(),q,'Kaworu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'who_said','hard','Quem disse: "Meus três sistemas refletem diferentes aspectos da personalidade de minha criadora, gerenciando operações estratégicas críticas"?','A frase reflete a natureza do supercomputador central da organização.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'MAGI',TRUE,0),(gen_random_uuid(),q,'NERV Core',FALSE,1),(gen_random_uuid(),q,'Central Dogma',FALSE,2),(gen_random_uuid(),q,'SEELE System',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'who_said','hard','Quem disse: "Nossos membros permanecem majoritariamente anônimos, supervisionando em segredo as decisões estratégicas de mais alto nível"?','A frase é dita coletivamente pela organização secreta que supervisiona a instituição de defesa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'SEELE',TRUE,0),(gen_random_uuid(),q,'GEHIRN',FALSE,1),(gen_random_uuid(),q,'MAGI',FALSE,2),(gen_random_uuid(),q,'Comitê Sombrio',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- EPISODE_ARC — 15 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'episode_arc','medium','Em qual arco Shinji é recrutado por Gendo e pilota o Evangelion pela primeira vez em combate contra um Anjo?','O arco estabelece a premissa inicial de toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Introdução',TRUE,0),(gen_random_uuid(),q,'Arco de Asuka',FALSE,1),(gen_random_uuid(),q,'Arco de Kaworu',FALSE,2),(gen_random_uuid(),q,'Arco Final',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'episode_arc','medium','Em qual arco Asuka se junta à equipe de pilotos, trazendo dinâmica competitiva e conflitos interpessoais ao grupo?','Este arco explora profundamente a personalidade complexa da nova piloto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Asuka',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco de Kaworu',FALSE,2),(gen_random_uuid(),q,'Arco Final',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'episode_arc','medium','Em qual arco Kaworu é introduzido como piloto tardio, desenvolvendo relação emocional significativa com Shinji?','A verdadeira natureza de Kaworu é revelada apenas próximo ao final deste arco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Kaworu',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco de Asuka',FALSE,2),(gen_random_uuid(),q,'Arco Final',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'episode_arc','medium','Em qual arco o Human Instrumentality Project é revelado completamente, culminando na conclusão filosófica e psicológica da série?','Este arco representa o clímax final de toda a narrativa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco Final',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco de Asuka',FALSE,2),(gen_random_uuid(),q,'Arco de Kaworu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'episode_arc','medium','Em qual arco Toji se torna piloto temporário do Evangelion Unidade 03, resultando em consequências trágicas para o personagem?','Este evento tem impacto duradouro na psicologia de Shinji ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Asuka',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco de Kaworu',FALSE,2),(gen_random_uuid(),q,'Arco Final',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'episode_arc','medium','Em qual arco Misato revela gradualmente informações sobre o Second Impact e sua conexão pessoal com esse evento catastrófico?','Este arco aprofunda o passado emocional complexo da capitã responsável pelos pilotos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Introdução',TRUE,0),(gen_random_uuid(),q,'Arco de Asuka',FALSE,1),(gen_random_uuid(),q,'Arco de Kaworu',FALSE,2),(gen_random_uuid(),q,'Arco Final',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'episode_arc','hard','Em qual arco é revelada a verdadeira natureza de Rei, incluindo sua conexão misteriosa com Lilith e sua origem enigmática?','A revelação altera profundamente a compreensão dos protagonistas sobre a organização.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Asuka',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco de Kaworu',FALSE,2),(gen_random_uuid(),q,'Arco Final',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'episode_arc','hard','Em qual arco Kaji investiga secretamente a organização, revelando informações cruciais sobre o Terminal Dogma antes de sua morte?','Sua investigação é fundamental para o desenrolar dos eventos finais da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Kaworu',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco de Asuka',FALSE,2),(gen_random_uuid(),q,'Arco Final',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'episode_arc','impossible','Em qual arco SEELE revela suas verdadeiras intenções para o Human Instrumentality Project, conflitando diretamente com os planos de Gendo?','Este conflito de interesses impulsiona os eventos catastróficos finais da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco Final',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco de Asuka',FALSE,2),(gen_random_uuid(),q,'Arco de Kaworu',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- CHRONOLOGICAL — 7 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'chronological','hard','Ordene cronologicamente os arcos a seguir, do mais antigo ao mais recente.','Cobrem desde a chegada de Shinji até a conclusão do Human Instrumentality Project.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Introdução',TRUE,0),(gen_random_uuid(),q,'Asuka',FALSE,1),(gen_random_uuid(),q,'Kaworu',FALSE,2),(gen_random_uuid(),q,'Final',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'chronological','hard','Ordene cronologicamente os seguintes eventos da jornada de Shinji, do mais antigo ao mais recente.','Cobrem desde seu recrutamento até a conclusão filosófica da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'É recrutado por Gendo para pilotar o Evangelion',TRUE,0),(gen_random_uuid(),q,'Conhece Asuka quando ela se junta à equipe',FALSE,1),(gen_random_uuid(),q,'Desenvolve relação significativa com Kaworu',FALSE,2),(gen_random_uuid(),q,'Enfrenta a conclusão do Human Instrumentality Project',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre Toji, do mais antigo ao mais recente.','Cobrem desde sua hostilidade inicial até as consequências trágicas de pilotar o Evangelion.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Demonstra hostilidade inicial contra Shinji',TRUE,0),(gen_random_uuid(),q,'Desenvolve amizade genuína com o protagonista',FALSE,1),(gen_random_uuid(),q,'Torna-se piloto temporário do Evangelion Unidade 03',FALSE,2),(gen_random_uuid(),q,'Sofre consequências trágicas do incidente',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre Kaji, do mais antigo ao mais recente.','Cobrem desde sua chegada até sua morte durante investigação secreta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mantém relacionamento complexo com Misato',TRUE,0),(gen_random_uuid(),q,'Investiga secretamente a organização',FALSE,1),(gen_random_uuid(),q,'Descobre informações cruciais sobre o Terminal Dogma',FALSE,2),(gen_random_uuid(),q,'Morre em circunstâncias misteriosas',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Rei, do mais antigo ao mais recente.','Cobrem desde sua introdução enigmática até a revelação de sua verdadeira natureza.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'É apresentada com personalidade reservada e enigmática',TRUE,0),(gen_random_uuid(),q,'Demonstra conexão misteriosa com a organização',FALSE,1),(gen_random_uuid(),q,'Tem sua verdadeira natureza gradualmente revelada',FALSE,2),(gen_random_uuid(),q,'Sua conexão com Lilith é completamente esclarecida',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre SEELE, do mais antigo ao mais recente.','Cobrem desde sua supervisão secreta até o conflito final com os planos de Gendo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Supervisiona secretamente as decisões estratégicas da NERV',TRUE,0),(gen_random_uuid(),q,'Revela gradualmente suas verdadeiras intenções',FALSE,1),(gen_random_uuid(),q,'Entra em conflito direto com os planos de Gendo',FALSE,2),(gen_random_uuid(),q,'Impulsiona os eventos catastróficos finais',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Kaworu, do mais antigo ao mais recente.','Cobrem desde sua chegada como piloto tardio até a revelação de sua verdadeira natureza.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Chega como piloto tardio misterioso',TRUE,0),(gen_random_uuid(),q,'Desenvolve relação emocional significativa com Shinji',FALSE,1),(gen_random_uuid(),q,'Sua verdadeira natureza é revelada aos protagonistas',FALSE,2),(gen_random_uuid(),q,'Enfrenta consequências decisivas de sua revelação',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- COMPLEMENTO — fechar 150 perguntas (33 text / 15 fill_blank / 17 who_said / 6 episode_arc)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','medium','Qual desses personagens serve como agente enigmático mantendo relação romântica complexa com Misato, com lealdade organizacional ambígua?','Sua investigação pessoal revela segredos importantes sobre a verdadeira natureza da NERV.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaji',TRUE,0),(gen_random_uuid(),q,'Fuyutsuki',FALSE,1),(gen_random_uuid(),q,'Gendo',FALSE,2),(gen_random_uuid(),q,'Kaworu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','hard','Qual desses personagens compõe o supercomputador central que gerencia decisões estratégicas críticas para a defesa contra os Anjos?','Sua estrutura tripartida reflete diferentes facetas psicológicas de sua criadora original.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'MAGI',TRUE,0),(gen_random_uuid(),q,'NERV Core',FALSE,1),(gen_random_uuid(),q,'Central Dogma',FALSE,2),(gen_random_uuid(),q,'SEELE System',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','impossible','Qual desses personagens está associado à entidade primordial mencionada em textos antigos referenciados pela organização secreta SEELE?','Sua conexão com a criação original da humanidade é sugerida através de simbolismo religioso complexo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Adam',TRUE,0),(gen_random_uuid(),q,'Lilith',FALSE,1),(gen_random_uuid(),q,'Genesis',FALSE,2),(gen_random_uuid(),q,'Origem',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','medium','Qual desses personagens conduz investigação secreta paralela às suas funções oficiais, revelando informações sobre o Terminal Dogma antes de sua morte?','Suas descobertas influenciam diretamente os eventos que levam ao clímax da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaji',TRUE,0),(gen_random_uuid(),q,'Fuyutsuki',FALSE,1),(gen_random_uuid(),q,'Gendo',FALSE,2),(gen_random_uuid(),q,'Kaworu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','hard','Qual desses personagens processa operações táticas críticas através de três subsistemas distintos, cada um representando aspectos diferentes de sua origem?','Seu funcionamento intriga profundamente os cientistas responsáveis pela manutenção da NERV.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'MAGI',TRUE,0),(gen_random_uuid(),q,'NERV Core',FALSE,1),(gen_random_uuid(),q,'Central Dogma',FALSE,2),(gen_random_uuid(),q,'SEELE System',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','impossible','Qual desses personagens é referenciado em textos teológicos antigos como origem simbólica de toda vida conhecida no universo da série?','Sua natureza dual com outra entidade primordial gera debates complexos entre estudiosos da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Adam',TRUE,0),(gen_random_uuid(),q,'Lilith',FALSE,1),(gen_random_uuid(),q,'Genesis',FALSE,2),(gen_random_uuid(),q,'Origem',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','medium','Qual desses personagens mantém vínculo romântico ambíguo com Misato enquanto conduz suas próprias investigações independentes sobre a NERV?','Sua morte representa um dos pontos de virada mais dramáticos da segunda metade da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaji',TRUE,0),(gen_random_uuid(),q,'Fuyutsuki',FALSE,1),(gen_random_uuid(),q,'Gendo',FALSE,2),(gen_random_uuid(),q,'Kaworu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','hard','Qual desses personagens direciona decisões estratégicas vitais da organização através de processamento paralelo de múltiplas perspectivas cognitivas?','Sua arquitetura reflete diretamente aspectos psicológicos complexos de sua desenvolvedora original.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'MAGI',TRUE,0),(gen_random_uuid(),q,'NERV Core',FALSE,1),(gen_random_uuid(),q,'Central Dogma',FALSE,2),(gen_random_uuid(),q,'SEELE System',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','impossible','Qual desses personagens simboliza conceitos teológicos fundamentais explorados ao longo da narrativa complexa da série?','Sua presença simbólica permeia diversos elementos visuais e temáticos da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Adam',TRUE,0),(gen_random_uuid(),q,'Lilith',FALSE,1),(gen_random_uuid(),q,'Genesis',FALSE,2),(gen_random_uuid(),q,'Origem',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','medium','Qual desses personagens equilibra suas funções profissionais dentro da NERV com investigações pessoais paralelas de alto risco?','Sua abordagem despretensiosa esconde motivações muito mais profundas e complexas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaji',TRUE,0),(gen_random_uuid(),q,'Fuyutsuki',FALSE,1),(gen_random_uuid(),q,'Gendo',FALSE,2),(gen_random_uuid(),q,'Kaworu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','hard','Qual desses personagens controla informações estratégicas cruciais através de arquitetura computacional avançada de múltiplos núcleos?','Sua complexidade técnica reflete a sofisticação científica alcançada pela organização.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'MAGI',TRUE,0),(gen_random_uuid(),q,'NERV Core',FALSE,1),(gen_random_uuid(),q,'Central Dogma',FALSE,2),(gen_random_uuid(),q,'SEELE System',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','impossible','Qual desses personagens é invocado em referências indiretas sobre a criação original dos Anjos e da própria humanidade no universo da série?','Sua importância teológica e científica permeia grande parte do mistério central da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Adam',TRUE,0),(gen_random_uuid(),q,'Lilith',FALSE,1),(gen_random_uuid(),q,'Genesis',FALSE,2),(gen_random_uuid(),q,'Origem',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','medium','Qual desses personagens investiga discretamente eventos que precedem a fundação da NERV, arriscando sua própria segurança pessoal?','Suas revelações se tornam cruciais para a compreensão completa dos eventos finais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaji',TRUE,0),(gen_random_uuid(),q,'Fuyutsuki',FALSE,1),(gen_random_uuid(),q,'Gendo',FALSE,2),(gen_random_uuid(),q,'Kaworu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','hard','Qual desses personagens gerencia simultaneamente múltiplas frentes estratégicas através de sistema computacional altamente sofisticado?','Sua importância para a operação diária da NERV é considerada absolutamente crítica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'MAGI',TRUE,0),(gen_random_uuid(),q,'NERV Core',FALSE,1),(gen_random_uuid(),q,'Central Dogma',FALSE,2),(gen_random_uuid(),q,'SEELE System',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','impossible','Qual desses personagens representa fundamento mitológico essencial para compreender as motivações ocultas de SEELE ao longo da trama?','Sua simbologia complexa é discutida extensivamente por analistas e fãs da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Adam',TRUE,0),(gen_random_uuid(),q,'Lilith',FALSE,1),(gen_random_uuid(),q,'Genesis',FALSE,2),(gen_random_uuid(),q,'Origem',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','medium','Qual desses personagens desenvolve laço emocional complexo com Misato enquanto secretamente reúne evidências contra planos ocultos da organização?','Seu sacrifício pessoal se torna catalisador importante para revelações posteriores.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaji',TRUE,0),(gen_random_uuid(),q,'Fuyutsuki',FALSE,1),(gen_random_uuid(),q,'Gendo',FALSE,2),(gen_random_uuid(),q,'Kaworu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','hard','Qual desses personagens executa cálculos estratégicos complexos essenciais para todas as principais decisões operacionais da NERV?','Sua confiabilidade técnica é constantemente testada durante crises envolvendo os Anjos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'MAGI',TRUE,0),(gen_random_uuid(),q,'NERV Core',FALSE,1),(gen_random_uuid(),q,'Central Dogma',FALSE,2),(gen_random_uuid(),q,'SEELE System',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','impossible','Qual desses personagens carrega significado simbólico central para entender a verdadeira natureza dos Anjos que atacam a humanidade?','Sua conexão com a mitologia da série é revelada gradualmente em momentos avançados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Adam',TRUE,0),(gen_random_uuid(),q,'Lilith',FALSE,1),(gen_random_uuid(),q,'Genesis',FALSE,2),(gen_random_uuid(),q,'Origem',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','medium','Qual desses personagens usa sua posição privilegiada dentro da NERV para descobrir verdades ocultas sobre o propósito real dos Evangelions?','Sua morte impulsiona diretamente parte da trama do arco final da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaji',TRUE,0),(gen_random_uuid(),q,'Fuyutsuki',FALSE,1),(gen_random_uuid(),q,'Gendo',FALSE,2),(gen_random_uuid(),q,'Kaworu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','hard','Qual desses personagens integra hardware avançado responsável por processar decisões táticas em tempo real durante ataques dos Anjos?','Sua eficiência é fundamental para a sobrevivência contínua da organização de defesa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'MAGI',TRUE,0),(gen_random_uuid(),q,'NERV Core',FALSE,1),(gen_random_uuid(),q,'Central Dogma',FALSE,2),(gen_random_uuid(),q,'SEELE System',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','impossible','Qual desses personagens é elemento fundamental da mitologia interna que explica a origem compartilhada entre humanos e Anjos?','Sua revelação completa altera profundamente a compreensão do público sobre toda a trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Adam',TRUE,0),(gen_random_uuid(),q,'Lilith',FALSE,1),(gen_random_uuid(),q,'Genesis',FALSE,2),(gen_random_uuid(),q,'Origem',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','medium','Qual desses personagens equilibra afeto genuíno por Misato com um senso profundo de dever moral em relação às verdades ocultas da NERV?','Sua complexidade emocional é um dos pontos altos do desenvolvimento de personagens da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaji',TRUE,0),(gen_random_uuid(),q,'Fuyutsuki',FALSE,1),(gen_random_uuid(),q,'Gendo',FALSE,2),(gen_random_uuid(),q,'Kaworu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','hard','Qual desses personagens conduz análises preditivas sofisticadas essenciais para antecipar padrões de ataque dos Anjos?','Sua precisão analítica surpreende constantemente os cientistas da organização.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'MAGI',TRUE,0),(gen_random_uuid(),q,'NERV Core',FALSE,1),(gen_random_uuid(),q,'Central Dogma',FALSE,2),(gen_random_uuid(),q,'SEELE System',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','impossible','Qual desses personagens simboliza a dualidade fundamental explorada entre criação e destruição ao longo de toda a narrativa complexa?','Sua importância filosófica transcende a trama superficial da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Adam',TRUE,0),(gen_random_uuid(),q,'Lilith',FALSE,1),(gen_random_uuid(),q,'Genesis',FALSE,2),(gen_random_uuid(),q,'Origem',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','medium','Qual desses personagens arrisca sua própria posição institucional para expor verdades desconfortáveis sobre os objetivos reais da organização?','Sua coragem pessoal contrasta com o sigilo institucional predominante na NERV.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaji',TRUE,0),(gen_random_uuid(),q,'Fuyutsuki',FALSE,1),(gen_random_uuid(),q,'Gendo',FALSE,2),(gen_random_uuid(),q,'Kaworu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','hard','Qual desses personagens processa continuamente vastas quantidades de dados operacionais essenciais para a tomada de decisões da NERV?','Sua importância técnica é reconhecida por toda a equipe científica da organização.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'MAGI',TRUE,0),(gen_random_uuid(),q,'NERV Core',FALSE,1),(gen_random_uuid(),q,'Central Dogma',FALSE,2),(gen_random_uuid(),q,'SEELE System',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','impossible','Qual desses personagens é peça central para compreender completamente o mistério teológico e científico por trás de toda a trama da série?','Sua natureza dupla intriga estudiosos e fãs da obra há décadas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Adam',TRUE,0),(gen_random_uuid(),q,'Lilith',FALSE,1),(gen_random_uuid(),q,'Genesis',FALSE,2),(gen_random_uuid(),q,'Origem',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','medium','Qual desses personagens mantém correspondência secreta com fontes externas enquanto exerce funções oficiais dentro da estrutura da NERV?','Sua duplicidade de papéis gera tensão dramática crescente ao longo da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaji',TRUE,0),(gen_random_uuid(),q,'Fuyutsuki',FALSE,1),(gen_random_uuid(),q,'Gendo',FALSE,2),(gen_random_uuid(),q,'Kaworu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','hard','Qual desses personagens sustenta operações contínuas de vigilância computacional sobre todas as atividades relevantes da base subterrânea?','Sua vigilância constante é essencial para detectar ameaças antes que se tornem críticas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'MAGI',TRUE,0),(gen_random_uuid(),q,'NERV Core',FALSE,1),(gen_random_uuid(),q,'Central Dogma',FALSE,2),(gen_random_uuid(),q,'SEELE System',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','impossible','Qual desses personagens aparece referenciado em antigos manuscritos ligados à fundação secreta original da organização de defesa?','Sua menção histórica conecta eventos do passado distante com a trama atual da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Adam',TRUE,0),(gen_random_uuid(),q,'Lilith',FALSE,1),(gen_random_uuid(),q,'Genesis',FALSE,2),(gen_random_uuid(),q,'Origem',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','medium','Qual desses personagens negocia informações delicadas entre diferentes facções secretas interessadas no destino da NERV?','Sua posição intermediária o torna alvo de desconfiança por múltiplos lados do conflito.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaji',TRUE,0),(gen_random_uuid(),q,'Fuyutsuki',FALSE,1),(gen_random_uuid(),q,'Gendo',FALSE,2),(gen_random_uuid(),q,'Kaworu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','hard','Qual desses personagens coordena protocolos de segurança automatizados que protegem áreas restritas de acesso não autorizado?','Sua eficácia protetiva é testada repetidamente ao longo dos conflitos da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'MAGI',TRUE,0),(gen_random_uuid(),q,'NERV Core',FALSE,1),(gen_random_uuid(),q,'Central Dogma',FALSE,2),(gen_random_uuid(),q,'SEELE System',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'text','impossible','Qual desses personagens representa o elo perdido entre a ciência moderna da NERV e mitologias ancestrais referenciadas ao longo da série?','Sua natureza ambígua desafia categorizações científicas convencionais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Adam',TRUE,0),(gen_random_uuid(),q,'Lilith',FALSE,1),(gen_random_uuid(),q,'Genesis',FALSE,2),(gen_random_uuid(),q,'Origem',FALSE,3);

    -- fill_blank complemento (15)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'fill_blank','medium','O agente enigmático que mantém relação romântica complexa com Misato, com lealdade organizacional ambígua, se chama ___.','Sua investigação pessoal revela segredos importantes sobre a verdadeira natureza da NERV.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaji',TRUE,0),(gen_random_uuid(),q,'Fuyutsuki',FALSE,1),(gen_random_uuid(),q,'Gendo',FALSE,2),(gen_random_uuid(),q,'Kaworu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'fill_blank','hard','O sistema computacional composto por três subsistemas distintos, refletindo aspectos da personalidade de sua criadora, se chama ___.','Sua estrutura tripartida reflete diferentes facetas psicológicas de sua criadora original.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'MAGI',TRUE,0),(gen_random_uuid(),q,'NERV Core',FALSE,1),(gen_random_uuid(),q,'Central Dogma',FALSE,2),(gen_random_uuid(),q,'SEELE System',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'fill_blank','impossible','A entidade primordial associada à criação original dos Anjos, mencionada em textos antigos referenciados por SEELE, se chama ___.','Sua conexão com a criação original da humanidade é sugerida através de simbolismo religioso complexo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Adam',TRUE,0),(gen_random_uuid(),q,'Lilith',FALSE,1),(gen_random_uuid(),q,'Genesis',FALSE,2),(gen_random_uuid(),q,'Origem',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'fill_blank','medium','O agente que conduz investigação secreta paralela às suas funções oficiais, revelando informações sobre o Terminal Dogma, se chama ___.','Suas descobertas influenciam diretamente os eventos que levam ao clímax da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaji',TRUE,0),(gen_random_uuid(),q,'Fuyutsuki',FALSE,1),(gen_random_uuid(),q,'Gendo',FALSE,2),(gen_random_uuid(),q,'Kaworu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'fill_blank','hard','O sistema que processa operações táticas críticas através de três subsistemas distintos é referido como ___.','Seu funcionamento intriga profundamente os cientistas responsáveis pela manutenção da NERV.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'MAGI',TRUE,0),(gen_random_uuid(),q,'NERV Core',FALSE,1),(gen_random_uuid(),q,'Central Dogma',FALSE,2),(gen_random_uuid(),q,'SEELE System',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'fill_blank','impossible','A entidade referenciada em textos teológicos antigos como origem simbólica de toda vida conhecida se chama ___.','Sua natureza dual com outra entidade primordial gera debates complexos entre estudiosos da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Adam',TRUE,0),(gen_random_uuid(),q,'Lilith',FALSE,1),(gen_random_uuid(),q,'Genesis',FALSE,2),(gen_random_uuid(),q,'Origem',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'fill_blank','medium','O agente que mantém vínculo romântico ambíguo com Misato enquanto conduz investigações independentes sobre a NERV se chama ___.','Sua morte representa um dos pontos de virada mais dramáticos da segunda metade da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaji',TRUE,0),(gen_random_uuid(),q,'Fuyutsuki',FALSE,1),(gen_random_uuid(),q,'Gendo',FALSE,2),(gen_random_uuid(),q,'Kaworu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'fill_blank','hard','O sistema que direciona decisões estratégicas vitais através de processamento paralelo de múltiplas perspectivas é chamado de ___.','Sua arquitetura reflete diretamente aspectos psicológicos complexos de sua desenvolvedora original.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'MAGI',TRUE,0),(gen_random_uuid(),q,'NERV Core',FALSE,1),(gen_random_uuid(),q,'Central Dogma',FALSE,2),(gen_random_uuid(),q,'SEELE System',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'fill_blank','impossible','A entidade que simboliza conceitos teológicos fundamentais explorados ao longo da narrativa complexa se chama ___.','Sua presença simbólica permeia diversos elementos visuais e temáticos da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Adam',TRUE,0),(gen_random_uuid(),q,'Lilith',FALSE,1),(gen_random_uuid(),q,'Genesis',FALSE,2),(gen_random_uuid(),q,'Origem',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'fill_blank','medium','O agente que equilibra funções profissionais dentro da NERV com investigações pessoais paralelas de alto risco se chama ___.','Sua abordagem despretensiosa esconde motivações muito mais profundas e complexas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaji',TRUE,0),(gen_random_uuid(),q,'Fuyutsuki',FALSE,1),(gen_random_uuid(),q,'Gendo',FALSE,2),(gen_random_uuid(),q,'Kaworu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'fill_blank','hard','O sistema que controla informações estratégicas cruciais através de arquitetura computacional avançada é chamado de ___.','Sua complexidade técnica reflete a sofisticação científica alcançada pela organização.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'MAGI',TRUE,0),(gen_random_uuid(),q,'NERV Core',FALSE,1),(gen_random_uuid(),q,'Central Dogma',FALSE,2),(gen_random_uuid(),q,'SEELE System',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'fill_blank','impossible','A entidade invocada em referências indiretas sobre a criação original dos Anjos e da humanidade se chama ___.','Sua importância teológica e científica permeia grande parte do mistério central da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Adam',TRUE,0),(gen_random_uuid(),q,'Lilith',FALSE,1),(gen_random_uuid(),q,'Genesis',FALSE,2),(gen_random_uuid(),q,'Origem',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'fill_blank','medium','O agente que investiga discretamente eventos que precedem a fundação da NERV, arriscando sua própria segurança, se chama ___.','Suas revelações se tornam cruciais para a compreensão completa dos eventos finais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaji',TRUE,0),(gen_random_uuid(),q,'Fuyutsuki',FALSE,1),(gen_random_uuid(),q,'Gendo',FALSE,2),(gen_random_uuid(),q,'Kaworu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'fill_blank','hard','O sistema que gerencia simultaneamente múltiplas frentes estratégicas através de sofisticação computacional é chamado de ___.','Sua importância para a operação diária da NERV é considerada absolutamente crítica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'MAGI',TRUE,0),(gen_random_uuid(),q,'NERV Core',FALSE,1),(gen_random_uuid(),q,'Central Dogma',FALSE,2),(gen_random_uuid(),q,'SEELE System',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'fill_blank','impossible','A entidade que representa fundamento mitológico essencial para compreender as motivações ocultas de SEELE se chama ___.','Sua simbologia complexa é discutida extensivamente por analistas e fãs da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Adam',TRUE,0),(gen_random_uuid(),q,'Lilith',FALSE,1),(gen_random_uuid(),q,'Genesis',FALSE,2),(gen_random_uuid(),q,'Origem',FALSE,3);

    -- who_said complemento (17)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'who_said','medium','Quem disse: "Minha lealdade organizacional permanece ambígua enquanto investigo secretamente segredos importantes sobre a verdadeira natureza da NERV"?','A frase é dita pelo agente enigmático envolvido romanticamente com Misato.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaji',TRUE,0),(gen_random_uuid(),q,'Fuyutsuki',FALSE,1),(gen_random_uuid(),q,'Gendo',FALSE,2),(gen_random_uuid(),q,'Kaworu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'who_said','hard','Quem disse: "Minha estrutura tripartida reflete diferentes facetas psicológicas de minha criadora, gerenciando decisões estratégicas críticas"?','A frase é dita pelo supercomputador central que gerencia operações da NERV.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'MAGI',TRUE,0),(gen_random_uuid(),q,'NERV Core',FALSE,1),(gen_random_uuid(),q,'Central Dogma',FALSE,2),(gen_random_uuid(),q,'SEELE System',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'who_said','impossible','Quem disse: "Minha conexão com a criação original da humanidade é sugerida através de simbolismo religioso complexo há gerações"?','A frase é dita, simbolicamente, pela entidade primordial associada aos Anjos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Adam',TRUE,0),(gen_random_uuid(),q,'Lilith',FALSE,1),(gen_random_uuid(),q,'Genesis',FALSE,2),(gen_random_uuid(),q,'Origem',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'who_said','medium','Quem disse: "Minhas descobertas sobre o Terminal Dogma influenciam diretamente os eventos que levam ao clímax de tudo isso"?','A frase é dita pelo agente que conduz investigação secreta paralela.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaji',TRUE,0),(gen_random_uuid(),q,'Fuyutsuki',FALSE,1),(gen_random_uuid(),q,'Gendo',FALSE,2),(gen_random_uuid(),q,'Kaworu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'who_said','hard','Quem disse: "Meu funcionamento intriga profundamente os cientistas responsáveis pela manutenção contínua desta organização"?','A frase é dita pelo sistema computacional de três subsistemas da NERV.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'MAGI',TRUE,0),(gen_random_uuid(),q,'NERV Core',FALSE,1),(gen_random_uuid(),q,'Central Dogma',FALSE,2),(gen_random_uuid(),q,'SEELE System',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'who_said','impossible','Quem disse: "Minha natureza dual com outra entidade primordial gera debates complexos entre estudiosos desta trama há décadas"?','A frase é dita, simbolicamente, pela entidade primordial referenciada em textos teológicos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Adam',TRUE,0),(gen_random_uuid(),q,'Lilith',FALSE,1),(gen_random_uuid(),q,'Genesis',FALSE,2),(gen_random_uuid(),q,'Origem',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'who_said','medium','Quem disse: "Minha morte representa um dos pontos de virada mais dramáticos de toda a segunda metade desta história"?','A frase é dita, em memória, pelo agente que mantém vínculo romântico ambíguo com Misato.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaji',TRUE,0),(gen_random_uuid(),q,'Fuyutsuki',FALSE,1),(gen_random_uuid(),q,'Gendo',FALSE,2),(gen_random_uuid(),q,'Kaworu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'who_said','hard','Quem disse: "Minha arquitetura reflete diretamente aspectos psicológicos complexos da cientista que me desenvolveu originalmente"?','A frase é dita pelo sistema que direciona decisões estratégicas vitais da NERV.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'MAGI',TRUE,0),(gen_random_uuid(),q,'NERV Core',FALSE,1),(gen_random_uuid(),q,'Central Dogma',FALSE,2),(gen_random_uuid(),q,'SEELE System',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'who_said','impossible','Quem disse: "Minha presença simbólica permeia diversos elementos visuais e temáticos explorados ao longo de toda esta trama"?','A frase é dita, simbolicamente, pela entidade associada a conceitos teológicos fundamentais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Adam',TRUE,0),(gen_random_uuid(),q,'Lilith',FALSE,1),(gen_random_uuid(),q,'Genesis',FALSE,2),(gen_random_uuid(),q,'Origem',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'who_said','medium','Quem disse: "Minha abordagem despretensiosa esconde motivações muito mais profundas do que a maioria das pessoas imagina"?','A frase é dita pelo agente que equilibra funções oficiais com investigações pessoais de risco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaji',TRUE,0),(gen_random_uuid(),q,'Fuyutsuki',FALSE,1),(gen_random_uuid(),q,'Gendo',FALSE,2),(gen_random_uuid(),q,'Kaworu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'who_said','hard','Quem disse: "Minha complexidade técnica reflete diretamente a sofisticação científica alcançada por toda esta organização de defesa"?','A frase é dita pelo sistema de arquitetura computacional avançada da NERV.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'MAGI',TRUE,0),(gen_random_uuid(),q,'NERV Core',FALSE,1),(gen_random_uuid(),q,'Central Dogma',FALSE,2),(gen_random_uuid(),q,'SEELE System',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'who_said','impossible','Quem disse: "Minha importância teológica e científica permeia grande parte do mistério central de toda esta trama complexa"?','A frase é dita, simbolicamente, pela entidade invocada em referências sobre a criação dos Anjos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Adam',TRUE,0),(gen_random_uuid(),q,'Lilith',FALSE,1),(gen_random_uuid(),q,'Genesis',FALSE,2),(gen_random_uuid(),q,'Origem',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'who_said','medium','Quem disse: "Minhas revelações sobre eventos que precedem a fundação da NERV são cruciais para compreender tudo o que vem depois"?','A frase é dita pelo agente que investiga discretamente arriscando sua própria segurança.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaji',TRUE,0),(gen_random_uuid(),q,'Fuyutsuki',FALSE,1),(gen_random_uuid(),q,'Gendo',FALSE,2),(gen_random_uuid(),q,'Kaworu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'who_said','hard','Quem disse: "Minha importância para a operação diária desta organização é considerada absolutamente crítica pelos comandantes"?','A frase é dita pelo sistema que gerencia múltiplas frentes estratégicas simultaneamente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'MAGI',TRUE,0),(gen_random_uuid(),q,'NERV Core',FALSE,1),(gen_random_uuid(),q,'Central Dogma',FALSE,2),(gen_random_uuid(),q,'SEELE System',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'who_said','impossible','Quem disse: "Minha simbologia complexa é discutida extensivamente por analistas e fãs desta obra há décadas seguidas"?','A frase é dita, simbolicamente, pela entidade que fundamenta as motivações ocultas de SEELE.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Adam',TRUE,0),(gen_random_uuid(),q,'Lilith',FALSE,1),(gen_random_uuid(),q,'Genesis',FALSE,2),(gen_random_uuid(),q,'Origem',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'who_said','medium','Quem disse: "Meu sacrifício pessoal se torna catalisador importante para revelações posteriores sobre os verdadeiros planos da NERV"?','A frase é dita pelo agente que desenvolve laço emocional complexo enquanto reúne evidências secretas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaji',TRUE,0),(gen_random_uuid(),q,'Fuyutsuki',FALSE,1),(gen_random_uuid(),q,'Gendo',FALSE,2),(gen_random_uuid(),q,'Kaworu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'who_said','hard','Quem disse: "Minha confiabilidade técnica é constantemente testada durante cada crise envolvendo ataques dos Anjos"?','A frase é dita pelo sistema que executa cálculos estratégicos essenciais para decisões operacionais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'MAGI',TRUE,0),(gen_random_uuid(),q,'NERV Core',FALSE,1),(gen_random_uuid(),q,'Central Dogma',FALSE,2),(gen_random_uuid(),q,'SEELE System',FALSE,3);

    -- episode_arc complemento (6)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'episode_arc','medium','Em qual arco Kaji conduz suas primeiras investigações discretas sobre as verdadeiras origens da NERV e do Second Impact?','Este arco estabelece as bases para revelações mais profundas em episódios posteriores.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Introdução',TRUE,0),(gen_random_uuid(),q,'Arco de Asuka',FALSE,1),(gen_random_uuid(),q,'Arco de Kaworu',FALSE,2),(gen_random_uuid(),q,'Arco Final',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'episode_arc','hard','Em qual arco o funcionamento completo do sistema MAGI é explicado, revelando sua estrutura tripartida baseada na personalidade de sua criadora?','A revelação ocorre durante uma crise técnica que ameaça a segurança de toda a NERV.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Asuka',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco de Kaworu',FALSE,2),(gen_random_uuid(),q,'Arco Final',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'episode_arc','medium','Em qual arco Kaji descobre informações cruciais sobre o Terminal Dogma pouco antes de sua morte trágica?','Suas descobertas finais influenciam diretamente os eventos climáticos da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Kaworu',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco de Asuka',FALSE,2),(gen_random_uuid(),q,'Arco Final',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'episode_arc','impossible','Em qual arco a verdadeira natureza de Adam e Lilith é finalmente esclarecida, revelando as origens teológicas complexas dos Anjos?','Esta revelação é considerada um dos momentos mais filosoficamente densos de toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco Final',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco de Asuka',FALSE,2),(gen_random_uuid(),q,'Arco de Kaworu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'episode_arc','hard','Em qual arco o sistema MAGI é testado sob condições extremas durante um ataque coordenado de múltiplos Anjos simultâneos?','Este teste revela tanto os pontos fortes quanto as vulnerabilidades do sistema computacional.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Asuka',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco de Kaworu',FALSE,2),(gen_random_uuid(),q,'Arco Final',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ev,'episode_arc','impossible','Em qual arco é revelada a conexão direta entre Adam, Lilith e a verdadeira origem do Human Instrumentality Project?','Esta conexão é fundamental para compreender completamente os objetivos finais de SEELE.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco Final',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução',FALSE,1),(gen_random_uuid(),q,'Arco de Asuka',FALSE,2),(gen_random_uuid(),q,'Arco de Kaworu',FALSE,3);

END $$;
