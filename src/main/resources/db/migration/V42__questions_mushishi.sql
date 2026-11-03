-- ============================================================
--  V42 — Seed de perguntas: Mushishi (150 perguntas)
--  Fonte: MyAnimeList + cânone do anime
--  Distribuição: text 40% / fill_blank 25% / who_said 20% /
--                episode_arc 10% / chronological 5%
--  Sem repetição com V5. Regras R1-R7 aplicadas.
-- ============================================================

DO $$
DECLARE
    v_system UUID := '00000000-0000-0000-0000-000000000001';
    v_ms     UUID;
    q        UUID;
BEGIN
    SELECT id INTO v_ms FROM animes WHERE slug = 'mushishi' LIMIT 1;

    -- ══════════════════════════════════════════════════════════
    -- TEXT — 60 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','easy','Qual é o nome do protagonista, viajante solitário especializado em investigar e lidar com criaturas sobrenaturais primitivas?','Ele percorre o Japão rural ajudando pessoas afetadas por essas criaturas misteriosas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ginko',TRUE,0),(gen_random_uuid(),q,'Nui',FALSE,1),(gen_random_uuid(),q,'Tanyuu',FALSE,2),(gen_random_uuid(),q,'Adashino',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','easy','Qual é o nome dado às formas de vida primitivas e sobrenaturais que constituem o foco central de investigação do protagonista?','Elas são consideradas mais próximas da essência original da vida do que plantas e animais comuns.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mushi',TRUE,0),(gen_random_uuid(),q,'Yokai',FALSE,1),(gen_random_uuid(),q,'Kami',FALSE,2),(gen_random_uuid(),q,'Oni',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','easy','Qual é o nome dado à profissão exercida pelo protagonista, especializada em estudar e lidar com essas criaturas primitivas?','Praticantes dessa profissão viajam constantemente, raramente permanecendo em um único lugar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mushishi',TRUE,0),(gen_random_uuid(),q,'Onmyoji',FALSE,1),(gen_random_uuid(),q,'Miko',FALSE,2),(gen_random_uuid(),q,'Yamabushi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','easy','Qual é a cor característica dos cabelos do protagonista, resultado de uma infestação incomum durante sua infância?','Essa característica física está diretamente ligada à sua sensibilidade especial a essas criaturas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Branco/prateado',TRUE,0),(gen_random_uuid(),q,'Vermelho',FALSE,1),(gen_random_uuid(),q,'Verde',FALSE,2),(gen_random_uuid(),q,'Azul',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','easy','Qual é o olho do protagonista que possui a habilidade especial de enxergar essas criaturas primitivas com maior clareza?','O outro olho perdeu parcialmente essa capacidade ao longo dos anos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Olho direito',TRUE,0),(gen_random_uuid(),q,'Olho esquerdo',FALSE,1),(gen_random_uuid(),q,'Ambos os olhos igualmente',FALSE,2),(gen_random_uuid(),q,'Nenhum dos olhos',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','easy','Qual é o hábito característico do protagonista, ligado ao controle de sua condição especial relacionada às criaturas primitivas?','Ele fuma constantemente um tabaco especial que serve como repelente natural.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fumar tabaco especial',TRUE,0),(gen_random_uuid(),q,'Usar amuletos sagrados',FALSE,1),(gen_random_uuid(),q,'Carregar espadas rituais',FALSE,2),(gen_random_uuid(),q,'Meditar diariamente',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','easy','Qual é o nome dado ao item que o protagonista carrega, feito de material especial capaz de armazenar essas criaturas primitivas capturadas?','Ele o utiliza durante suas investigações pelo Japão rural.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Caixa de mushi',TRUE,0),(gen_random_uuid(),q,'Talismã sagrado',FALSE,1),(gen_random_uuid(),q,'Amuleto de proteção',FALSE,2),(gen_random_uuid(),q,'Frasco espiritual',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','easy','Qual é o nome dado à criatura primitiva que se manifesta como fungo luminoso, atraindo pessoas para dentro de florestas durante a noite?','Ela é encontrada em diversos episódios ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hikari-goke',TRUE,0),(gen_random_uuid(),q,'Tokoyami',FALSE,1),(gen_random_uuid(),q,'Sui',FALSE,2),(gen_random_uuid(),q,'Nagareboshi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','easy','Qual é o nome dado à criatura que se manifesta na forma de rios subterrâneos, capazes de causar inundações inesperadas em vilas isoladas?','Sua presença está associada a mudanças bruscas na geografia local.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sui',TRUE,0),(gen_random_uuid(),q,'Hikari-goke',FALSE,1),(gen_random_uuid(),q,'Tokoyami',FALSE,2),(gen_random_uuid(),q,'Nagareboshi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','easy','Qual é o nome dado à criatura primitiva ligada à escuridão absoluta, capaz de devorar completamente a luz de determinado local?','Sua investigação exige cautela extrema por parte do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tokoyami',TRUE,0),(gen_random_uuid(),q,'Sui',FALSE,1),(gen_random_uuid(),q,'Hikari-goke',FALSE,2),(gen_random_uuid(),q,'Nagareboshi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','easy','Qual é o nome dado à criatura em forma de estrela cadente, cuja queda pode conceder desejos, mas com consequências graves para quem a encontra?','Ela é retratada como extremamente rara ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nagareboshi',TRUE,0),(gen_random_uuid(),q,'Tokoyami',FALSE,1),(gen_random_uuid(),q,'Sui',FALSE,2),(gen_random_uuid(),q,'Hikari-goke',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','easy','Qual é o nome dado à criatura sonora que se manifesta como zumbido constante, capaz de causar surdez gradual em quem a escuta por tempo prolongado?','Ela é investigada em um dos episódios centrados em perda auditiva progressiva.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bito',TRUE,0),(gen_random_uuid(),q,'Sui',FALSE,1),(gen_random_uuid(),q,'Tokoyami',FALSE,2),(gen_random_uuid(),q,'Nagareboshi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','easy','Qual é o nome dado à criatura que se alimenta de memórias humanas, causando esquecimento gradual e progressivo em suas vítimas?','Ela é retratada com especial sensibilidade emocional em seu episódio de introdução.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kokushi',TRUE,0),(gen_random_uuid(),q,'Sui',FALSE,1),(gen_random_uuid(),q,'Tokoyami',FALSE,2),(gen_random_uuid(),q,'Bito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','easy','Qual é o nome dado à criatura que cresce como planta, produzindo frutos que concedem vida eterna a quem os consome, com consequências trágicas?','Sua investigação envolve dilemas éticos complexos sobre a natureza da mortalidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tokoyami no Ki',TRUE,0),(gen_random_uuid(),q,'Hikari-goke',FALSE,1),(gen_random_uuid(),q,'Sui',FALSE,2),(gen_random_uuid(),q,'Bito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','medium','Qual é o nome do colega mushishi que atua como companheiro ocasional de Ginko, especializado em pesquisas escritas sobre criaturas primitivas?','Ele viaja com um assistente jovem que o acompanha em suas expedições.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Adashino',TRUE,0),(gen_random_uuid(),q,'Nui',FALSE,1),(gen_random_uuid(),q,'Tanyuu',FALSE,2),(gen_random_uuid(),q,'Mujika',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','medium','Qual é o nome do jovem assistente que acompanha Adashino em suas expedições de pesquisa sobre criaturas primitivas?','Ele demonstra interesse crescente em se tornar mushishi ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nui',TRUE,0),(gen_random_uuid(),q,'Ginko',FALSE,1),(gen_random_uuid(),q,'Tanyuu',FALSE,2),(gen_random_uuid(),q,'Mujika',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','medium','Qual é o nome da jovem que se torna hospedeira de uma criatura primitiva capaz de escrever registros sobre outras criaturas em seu próprio corpo?','Ela vive isolada devido à natureza incomum de sua condição especial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tanyuu',TRUE,0),(gen_random_uuid(),q,'Nui',FALSE,1),(gen_random_uuid(),q,'Mujika',FALSE,2),(gen_random_uuid(),q,'Ginko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','medium','Qual é o nome da criança misteriosa associada a criaturas primitivas de crescimento vegetal, capaz de fazer plantas florescerem instantaneamente ao seu redor?','Sua natureza incomum intriga profundamente Ginko durante sua investigação.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mujika',TRUE,0),(gen_random_uuid(),q,'Tanyuu',FALSE,1),(gen_random_uuid(),q,'Nui',FALSE,2),(gen_random_uuid(),q,'Ginko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','medium','Qual é o nome dado à criatura primitiva que se manifesta como corno crescendo na cabeça de uma pessoa, alterando gradualmente sua percepção do mundo?','Sua investigação é abordada em um dos episódios centrados em transformação corporal gradual.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tsuno',TRUE,0),(gen_random_uuid(),q,'Sui',FALSE,1),(gen_random_uuid(),q,'Bito',FALSE,2),(gen_random_uuid(),q,'Kokushi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','medium','Qual é o nome dado à criatura primitiva capaz de se manifestar como sombra duplicada, seguindo constantemente sua vítima humana?','Sua natureza está associada a temas de identidade e existência dual.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sube-hebi',TRUE,0),(gen_random_uuid(),q,'Tsuno',FALSE,1),(gen_random_uuid(),q,'Bito',FALSE,2),(gen_random_uuid(),q,'Kokushi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','medium','Qual é o nome dado à criatura primitiva ligada ao som de sinos, capaz de alterar a percepção de tempo de quem a escuta?','Sua investigação envolve um vilarejo isolado com tradições sonoras específicas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Suzu no Ne',TRUE,0),(gen_random_uuid(),q,'Bito',FALSE,1),(gen_random_uuid(),q,'Tsuno',FALSE,2),(gen_random_uuid(),q,'Sube-hebi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','medium','Qual é o nome dado ao conjunto de conhecimentos escritos sobre criaturas primitivas, compilados ao longo de gerações por diversos mushishi?','Esses registros são fundamentais para o trabalho de identificação e tratamento realizado por especialistas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Registros de Mushi',TRUE,0),(gen_random_uuid(),q,'Sutras Sagrados',FALSE,1),(gen_random_uuid(),q,'Almanaque Espiritual',FALSE,2),(gen_random_uuid(),q,'Compêndio Natural',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','hard','Qual é o nome dado ao evento traumático da infância de Ginko, no qual ele perdeu parte de sua memória e identidade original?','Este evento explica por que ele não se lembra completamente de seu passado antes de se tornar mushishi.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Perda de memória por Mushi',TRUE,0),(gen_random_uuid(),q,'Amaldiçoamento familiar',FALSE,1),(gen_random_uuid(),q,'Ritual de purificação',FALSE,2),(gen_random_uuid(),q,'Punição divina',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','hard','Qual é o nome dado à condição especial de Ginko que faz com que ele atraia mushi constantemente, tornando-o incapaz de permanecer muito tempo em um só lugar?','Esta condição é resultado direto do evento traumático de sua infância.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Atração natural a mushi',TRUE,0),(gen_random_uuid(),q,'Maldição ancestral',FALSE,1),(gen_random_uuid(),q,'Contrato espiritual',FALSE,2),(gen_random_uuid(),q,'Possessão permanente',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','hard','Qual é o nome dado ao ritual realizado por uma comunidade isolada para prevenir a manifestação de determinadas criaturas primitivas em suas terras?','Ele é abordado em episódios que exploram tradições locais específicas relacionadas a mushi.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ritual de contenção local',TRUE,0),(gen_random_uuid(),q,'Purificação xintoísta',FALSE,1),(gen_random_uuid(),q,'Exorcismo tradicional',FALSE,2),(gen_random_uuid(),q,'Sacrifício ritualístico',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','hard','Qual é o nome dado à jovem que se torna cega ao presenciar diretamente uma criatura primitiva especialmente poderosa, revelada em um dos episódios mais emocionais da série?','Sua história explora as consequências trágicas do contato direto com essas entidades raras.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nagashi',TRUE,0),(gen_random_uuid(),q,'Tanyuu',FALSE,1),(gen_random_uuid(),q,'Mujika',FALSE,2),(gen_random_uuid(),q,'Sui',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','hard','Qual é o nome dado ao lago misterioso onde criaturas primitivas se acumulam em concentração excepcionalmente alta, criando fenômeno raro investigado por Ginko?','Este local é conhecido por atrair mushishi de diversas regiões do Japão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Lago dos Mushi',TRUE,0),(gen_random_uuid(),q,'Vale Sagrado',FALSE,1),(gen_random_uuid(),q,'Floresta Ancestral',FALSE,2),(gen_random_uuid(),q,'Montanha Silenciosa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','hard','Qual é o nome dado à criatura primitiva capaz de se manifestar como arco-íris permanente sobre determinada região, alterando padrões climáticos locais?','Sua investigação envolve consequências ambientais duradouras para a comunidade afetada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Niji Mushi',TRUE,0),(gen_random_uuid(),q,'Sui',FALSE,1),(gen_random_uuid(),q,'Tokoyami',FALSE,2),(gen_random_uuid(),q,'Bito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','hard','Qual é o nome dado à erva especial usada por mushishi para preparar remédios capazes de repelir ou neutralizar determinadas criaturas primitivas?','Ginko carrega essa erva constantemente como parte de suas ferramentas essenciais de trabalho.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Erva Sagrada Mushishi',TRUE,0),(gen_random_uuid(),q,'Raiz de Purificação',FALSE,1),(gen_random_uuid(),q,'Folha Espiritual',FALSE,2),(gen_random_uuid(),q,'Semente Ancestral',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','impossible','Qual é o nome dado ao mestre mushishi idoso, mencionado como referência histórica dentro da comunidade de especialistas em criaturas primitivas?','Sua sabedoria é citada por outros personagens em momentos de dúvida sobre casos complexos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nui (mestre)',TRUE,0),(gen_random_uuid(),q,'Adashino',FALSE,1),(gen_random_uuid(),q,'Tanyuu',FALSE,2),(gen_random_uuid(),q,'Mujika',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','impossible','Qual é o nome dado à criatura primitiva relacionada a sonhos compartilhados entre múltiplas pessoas de uma mesma comunidade?','Sua investigação envolve fenômenos de conexão psíquica incomum entre moradores de uma vila isolada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yume Mushi',TRUE,0),(gen_random_uuid(),q,'Kokushi',FALSE,1),(gen_random_uuid(),q,'Bito',FALSE,2),(gen_random_uuid(),q,'Sube-hebi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','impossible','Qual é o nome dado à criatura primitiva associada especificamente ao fenômeno de neve fora de época, investigada por Ginko em episódio específico?','Sua manifestação altera temporariamente o clima de vilas montanhosas isoladas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yuki Mushi',TRUE,0),(gen_random_uuid(),q,'Niji Mushi',FALSE,1),(gen_random_uuid(),q,'Sui',FALSE,2),(gen_random_uuid(),q,'Tokoyami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','impossible','Qual é o nome dado à criatura primitiva que se manifesta como reflexo alterado em superfícies de água, capaz de trocar temporariamente a identidade de duas pessoas?','Sua investigação envolve dilemas filosóficos profundos sobre identidade pessoal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kagami Mushi',TRUE,0),(gen_random_uuid(),q,'Sube-hebi',FALSE,1),(gen_random_uuid(),q,'Yume Mushi',FALSE,2),(gen_random_uuid(),q,'Suzu no Ne',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- FILL_BLANK — 38 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'fill_blank','easy','O protagonista, viajante solitário especializado em investigar criaturas sobrenaturais primitivas, se chama ___.','Ele percorre o Japão rural ajudando pessoas afetadas por essas criaturas misteriosas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ginko',TRUE,0),(gen_random_uuid(),q,'Nui',FALSE,1),(gen_random_uuid(),q,'Tanyuu',FALSE,2),(gen_random_uuid(),q,'Adashino',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'fill_blank','easy','As formas de vida primitivas e sobrenaturais que constituem o foco de investigação do protagonista são chamadas de ___.','Elas são consideradas mais próximas da essência original da vida do que plantas e animais comuns.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mushi',TRUE,0),(gen_random_uuid(),q,'Yokai',FALSE,1),(gen_random_uuid(),q,'Kami',FALSE,2),(gen_random_uuid(),q,'Oni',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'fill_blank','easy','A profissão exercida pelo protagonista, especializada em estudar e lidar com criaturas primitivas, é chamada de ___.','Praticantes dessa profissão viajam constantemente, raramente permanecendo em um único lugar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mushishi',TRUE,0),(gen_random_uuid(),q,'Onmyoji',FALSE,1),(gen_random_uuid(),q,'Miko',FALSE,2),(gen_random_uuid(),q,'Yamabushi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'fill_blank','easy','O hábito característico do protagonista, ligado ao controle de sua condição especial relacionada a mushi, é ___.','Ele fuma constantemente um tabaco especial que serve como repelente natural.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fumar tabaco especial',TRUE,0),(gen_random_uuid(),q,'Usar amuletos sagrados',FALSE,1),(gen_random_uuid(),q,'Carregar espadas rituais',FALSE,2),(gen_random_uuid(),q,'Meditar diariamente',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'fill_blank','easy','O item que o protagonista carrega, feito de material especial capaz de armazenar criaturas primitivas capturadas, é chamado de ___.','Ele o utiliza durante suas investigações pelo Japão rural.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Caixa de mushi',TRUE,0),(gen_random_uuid(),q,'Talismã sagrado',FALSE,1),(gen_random_uuid(),q,'Amuleto de proteção',FALSE,2),(gen_random_uuid(),q,'Frasco espiritual',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'fill_blank','easy','A criatura primitiva que se manifesta como fungo luminoso, atraindo pessoas para dentro de florestas durante a noite, se chama ___.','Ela é encontrada em diversos episódios ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hikari-goke',TRUE,0),(gen_random_uuid(),q,'Tokoyami',FALSE,1),(gen_random_uuid(),q,'Sui',FALSE,2),(gen_random_uuid(),q,'Nagareboshi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'fill_blank','easy','A criatura que se manifesta na forma de rios subterrâneos, capazes de causar inundações inesperadas, se chama ___.','Sua presença está associada a mudanças bruscas na geografia local.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sui',TRUE,0),(gen_random_uuid(),q,'Hikari-goke',FALSE,1),(gen_random_uuid(),q,'Tokoyami',FALSE,2),(gen_random_uuid(),q,'Nagareboshi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'fill_blank','easy','A criatura primitiva ligada à escuridão absoluta, capaz de devorar completamente a luz de determinado local, se chama ___.','Sua investigação exige cautela extrema por parte do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tokoyami',TRUE,0),(gen_random_uuid(),q,'Sui',FALSE,1),(gen_random_uuid(),q,'Hikari-goke',FALSE,2),(gen_random_uuid(),q,'Nagareboshi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'fill_blank','easy','A criatura em forma de estrela cadente, cuja queda pode conceder desejos com consequências graves, se chama ___.','Ela é retratada como extremamente rara ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nagareboshi',TRUE,0),(gen_random_uuid(),q,'Tokoyami',FALSE,1),(gen_random_uuid(),q,'Sui',FALSE,2),(gen_random_uuid(),q,'Hikari-goke',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'fill_blank','easy','A criatura sonora que se manifesta como zumbido constante, capaz de causar surdez gradual, se chama ___.','Ela é investigada em um dos episódios centrados em perda auditiva progressiva.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bito',TRUE,0),(gen_random_uuid(),q,'Sui',FALSE,1),(gen_random_uuid(),q,'Tokoyami',FALSE,2),(gen_random_uuid(),q,'Nagareboshi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'fill_blank','medium','O colega mushishi que atua como companheiro ocasional de Ginko, especializado em pesquisas escritas, se chama ___.','Ele viaja com um assistente jovem que o acompanha em suas expedições.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Adashino',TRUE,0),(gen_random_uuid(),q,'Nui',FALSE,1),(gen_random_uuid(),q,'Tanyuu',FALSE,2),(gen_random_uuid(),q,'Mujika',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'fill_blank','medium','O jovem assistente que acompanha Adashino em suas expedições de pesquisa se chama ___.','Ele demonstra interesse crescente em se tornar mushishi ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nui',TRUE,0),(gen_random_uuid(),q,'Ginko',FALSE,1),(gen_random_uuid(),q,'Tanyuu',FALSE,2),(gen_random_uuid(),q,'Mujika',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'fill_blank','medium','A jovem que se torna hospedeira de uma criatura primitiva capaz de escrever registros em seu próprio corpo se chama ___.','Ela vive isolada devido à natureza incomum de sua condição especial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tanyuu',TRUE,0),(gen_random_uuid(),q,'Nui',FALSE,1),(gen_random_uuid(),q,'Mujika',FALSE,2),(gen_random_uuid(),q,'Ginko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'fill_blank','medium','A criança misteriosa associada a criaturas primitivas de crescimento vegetal se chama ___.','Sua natureza incomum intriga profundamente Ginko durante sua investigação.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mujika',TRUE,0),(gen_random_uuid(),q,'Tanyuu',FALSE,1),(gen_random_uuid(),q,'Nui',FALSE,2),(gen_random_uuid(),q,'Ginko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'fill_blank','medium','A criatura primitiva que se manifesta como corno crescendo na cabeça de uma pessoa se chama ___.','Sua investigação é abordada em um dos episódios centrados em transformação corporal gradual.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tsuno',TRUE,0),(gen_random_uuid(),q,'Sui',FALSE,1),(gen_random_uuid(),q,'Bito',FALSE,2),(gen_random_uuid(),q,'Kokushi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'fill_blank','medium','A criatura primitiva capaz de se manifestar como sombra duplicada, seguindo constantemente sua vítima, se chama ___.','Sua natureza está associada a temas de identidade e existência dual.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sube-hebi',TRUE,0),(gen_random_uuid(),q,'Tsuno',FALSE,1),(gen_random_uuid(),q,'Bito',FALSE,2),(gen_random_uuid(),q,'Kokushi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'fill_blank','medium','A criatura que se alimenta de memórias humanas, causando esquecimento gradual, se chama ___.','Ela é retratada com especial sensibilidade emocional em seu episódio de introdução.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kokushi',TRUE,0),(gen_random_uuid(),q,'Sui',FALSE,1),(gen_random_uuid(),q,'Tokoyami',FALSE,2),(gen_random_uuid(),q,'Bito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'fill_blank','hard','O evento traumático da infância de Ginko, no qual ele perdeu parte de sua memória e identidade original, é conhecido como ___.','Este evento explica por que ele não se lembra completamente de seu passado antes de se tornar mushishi.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Perda de memória por Mushi',TRUE,0),(gen_random_uuid(),q,'Amaldiçoamento familiar',FALSE,1),(gen_random_uuid(),q,'Ritual de purificação',FALSE,2),(gen_random_uuid(),q,'Punição divina',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'fill_blank','hard','A condição especial de Ginko que faz com que ele atraia mushi constantemente é conhecida como ___.','Esta condição é resultado direto do evento traumático de sua infância.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Atração natural a mushi',TRUE,0),(gen_random_uuid(),q,'Maldição ancestral',FALSE,1),(gen_random_uuid(),q,'Contrato espiritual',FALSE,2),(gen_random_uuid(),q,'Possessão permanente',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'fill_blank','hard','A jovem que se torna cega ao presenciar diretamente uma criatura primitiva especialmente poderosa se chama ___.','Sua história explora as consequências trágicas do contato direto com essas entidades raras.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nagashi',TRUE,0),(gen_random_uuid(),q,'Tanyuu',FALSE,1),(gen_random_uuid(),q,'Mujika',FALSE,2),(gen_random_uuid(),q,'Sui',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'fill_blank','hard','O lago misterioso onde criaturas primitivas se acumulam em concentração excepcionalmente alta se chama ___.','Este local é conhecido por atrair mushishi de diversas regiões do Japão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Lago dos Mushi',TRUE,0),(gen_random_uuid(),q,'Vale Sagrado',FALSE,1),(gen_random_uuid(),q,'Floresta Ancestral',FALSE,2),(gen_random_uuid(),q,'Montanha Silenciosa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'fill_blank','hard','A erva especial usada por mushishi para preparar remédios capazes de repelir criaturas primitivas é chamada de ___.','Ginko carrega essa erva constantemente como parte de suas ferramentas essenciais de trabalho.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Erva Sagrada Mushishi',TRUE,0),(gen_random_uuid(),q,'Raiz de Purificação',FALSE,1),(gen_random_uuid(),q,'Folha Espiritual',FALSE,2),(gen_random_uuid(),q,'Semente Ancestral',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'fill_blank','impossible','O mestre mushishi idoso, mencionado como referência histórica dentro da comunidade de especialistas, se chama ___.','Sua sabedoria é citada por outros personagens em momentos de dúvida sobre casos complexos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nui (mestre)',TRUE,0),(gen_random_uuid(),q,'Adashino',FALSE,1),(gen_random_uuid(),q,'Tanyuu',FALSE,2),(gen_random_uuid(),q,'Mujika',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'fill_blank','impossible','A criatura primitiva associada especificamente ao fenômeno de neve fora de época se chama ___.','Sua manifestação altera temporariamente o clima de vilas montanhosas isoladas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yuki Mushi',TRUE,0),(gen_random_uuid(),q,'Niji Mushi',FALSE,1),(gen_random_uuid(),q,'Sui',FALSE,2),(gen_random_uuid(),q,'Tokoyami',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- WHO_SAID — 30 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'who_said','easy','Quem disse: "Eu viajo constantemente porque mushi são atraídos por mim de forma incomum, resultado de um evento em minha infância"?','A frase reflete a condição especial do protagonista da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ginko',TRUE,0),(gen_random_uuid(),q,'Nui',FALSE,1),(gen_random_uuid(),q,'Tanyuu',FALSE,2),(gen_random_uuid(),q,'Adashino',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'who_said','easy','Quem disse: "Eu fumo este tabaco especial constantemente, pois ele serve como repelente natural contra certos tipos de mushi"?','A frase reflete o hábito característico do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ginko',TRUE,0),(gen_random_uuid(),q,'Nui',FALSE,1),(gen_random_uuid(),q,'Adashino',FALSE,2),(gen_random_uuid(),q,'Tanyuu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'who_said','easy','Quem disse: "Eu documento minhas pesquisas sobre mushi em registros escritos, sempre acompanhado do meu jovem assistente"?','A frase é dita pelo colega mushishi especializado em pesquisas escritas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Adashino',TRUE,0),(gen_random_uuid(),q,'Nui',FALSE,1),(gen_random_uuid(),q,'Tanyuu',FALSE,2),(gen_random_uuid(),q,'Mujika',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'who_said','easy','Quem disse: "Eu acompanho Adashino em suas expedições, e cada vez mais sinto vontade de me tornar mushishi eu também"?','A frase é dita pelo jovem assistente que viaja com Adashino.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nui',TRUE,0),(gen_random_uuid(),q,'Ginko',FALSE,1),(gen_random_uuid(),q,'Tanyuu',FALSE,2),(gen_random_uuid(),q,'Mujika',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'who_said','medium','Quem disse: "Eu vivo isolada porque meu corpo se tornou hospedeiro de uma criatura capaz de escrever registros sobre mushi"?','A frase é dita pela jovem que se torna hospedeira de uma criatura escritora.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tanyuu',TRUE,0),(gen_random_uuid(),q,'Nui',FALSE,1),(gen_random_uuid(),q,'Mujika',FALSE,2),(gen_random_uuid(),q,'Ginko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'who_said','medium','Quem disse: "Plantas florescem instantaneamente ao meu redor, e Ginko parece profundamente intrigado com essa minha natureza incomum"?','A frase é dita pela criança misteriosa associada a criaturas primitivas de crescimento vegetal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mujika',TRUE,0),(gen_random_uuid(),q,'Tanyuu',FALSE,1),(gen_random_uuid(),q,'Nui',FALSE,2),(gen_random_uuid(),q,'Ginko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'who_said','medium','Quem disse: "Eu me tornei cega após presenciar diretamente uma criatura especialmente poderosa, e essa experiência mudou minha vida para sempre"?','A frase é dita pela jovem cujo contato direto com mushi teve consequências trágicas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nagashi',TRUE,0),(gen_random_uuid(),q,'Tanyuu',FALSE,1),(gen_random_uuid(),q,'Mujika',FALSE,2),(gen_random_uuid(),q,'Sui',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'who_said','hard','Quem disse: "Minha sabedoria sobre mushi é reconhecida por gerações de mushishi mais jovens, que ainda recorrem aos meus ensinamentos antigos"?','A frase é dita pelo mestre mushishi idoso, referência histórica da profissão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nui (mestre)',TRUE,0),(gen_random_uuid(),q,'Adashino',FALSE,1),(gen_random_uuid(),q,'Tanyuu',FALSE,2),(gen_random_uuid(),q,'Mujika',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'who_said','hard','Quem disse: "Eu carrego uma caixa especial capaz de armazenar mushi capturados durante minhas investigações pelo Japão rural"?','A frase reflete um dos itens essenciais carregados pelo protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ginko',TRUE,0),(gen_random_uuid(),q,'Nui',FALSE,1),(gen_random_uuid(),q,'Adashino',FALSE,2),(gen_random_uuid(),q,'Tanyuu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'who_said','hard','Quem disse: "Meu olho direito enxerga mushi com clareza especial, enquanto o esquerdo perdeu parcialmente essa capacidade ao longo dos anos"?','A frase reflete uma característica física única do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ginko',TRUE,0),(gen_random_uuid(),q,'Nui',FALSE,1),(gen_random_uuid(),q,'Adashino',FALSE,2),(gen_random_uuid(),q,'Tanyuu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'who_said','impossible','Quem disse: "Eu carrego a erva sagrada dos mushishi constantemente, pois ela é essencial para preparar remédios que repelem certas criaturas"?','A frase reflete uma prática essencial do trabalho do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ginko',TRUE,0),(gen_random_uuid(),q,'Nui',FALSE,1),(gen_random_uuid(),q,'Adashino',FALSE,2),(gen_random_uuid(),q,'Tanyuu',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- EPISODE_ARC — 15 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'episode_arc','medium','Em qual episódio temático Ginko investiga uma criatura fúngica luminosa que atrai pessoas para dentro de florestas durante a noite?','O episódio explora o perigo de se perder em locais isolados sob influência de mushi.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Episódio do Hikari-goke',TRUE,0),(gen_random_uuid(),q,'Episódio do Sui',FALSE,1),(gen_random_uuid(),q,'Episódio do Tokoyami',FALSE,2),(gen_random_uuid(),q,'Episódio da Tanyuu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'episode_arc','medium','Em qual episódio temático Ginko investiga rios subterrâneos capazes de causar inundações inesperadas em vilas isoladas?','O episódio explora consequências geográficas causadas pela presença dessa criatura específica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Episódio do Sui',TRUE,0),(gen_random_uuid(),q,'Episódio do Hikari-goke',FALSE,1),(gen_random_uuid(),q,'Episódio do Tokoyami',FALSE,2),(gen_random_uuid(),q,'Episódio da Tanyuu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'episode_arc','medium','Em qual episódio temático Ginko conhece Tanyuu, jovem que se tornou hospedeira de criatura escritora de registros sobre mushi?','O episódio explora o isolamento causado pela natureza incomum de sua condição.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Episódio da Tanyuu',TRUE,0),(gen_random_uuid(),q,'Episódio do Sui',FALSE,1),(gen_random_uuid(),q,'Episódio do Hikari-goke',FALSE,2),(gen_random_uuid(),q,'Episódio do Tokoyami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'episode_arc','medium','Em qual episódio temático Ginko investiga a escuridão absoluta capaz de devorar completamente a luz de determinado local?','A investigação exige cautela extrema devido à natureza perigosa da criatura envolvida.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Episódio do Tokoyami',TRUE,0),(gen_random_uuid(),q,'Episódio do Sui',FALSE,1),(gen_random_uuid(),q,'Episódio do Hikari-goke',FALSE,2),(gen_random_uuid(),q,'Episódio da Tanyuu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'episode_arc','medium','Em qual episódio temático Ginko encontra Mujika, criança associada a criaturas de crescimento vegetal instantâneo?','O episódio explora a natureza intrigante da condição incomum da criança.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Episódio da Mujika',TRUE,0),(gen_random_uuid(),q,'Episódio do Sui',FALSE,1),(gen_random_uuid(),q,'Episódio do Tokoyami',FALSE,2),(gen_random_uuid(),q,'Episódio da Tanyuu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'episode_arc','medium','Em qual episódio temático Ginko investiga uma criatura sonora capaz de causar surdez gradual em quem a escuta por tempo prolongado?','O episódio aborda temas de perda sensorial progressiva.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Episódio do Bito',TRUE,0),(gen_random_uuid(),q,'Episódio do Sui',FALSE,1),(gen_random_uuid(),q,'Episódio do Tokoyami',FALSE,2),(gen_random_uuid(),q,'Episódio da Nagareboshi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'episode_arc','medium','Em qual episódio temático Ginko investiga uma criatura que se alimenta de memórias humanas, causando esquecimento gradual e progressivo?','O episódio é retratado com especial sensibilidade emocional.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Episódio do Kokushi',TRUE,0),(gen_random_uuid(),q,'Episódio do Sui',FALSE,1),(gen_random_uuid(),q,'Episódio do Tokoyami',FALSE,2),(gen_random_uuid(),q,'Episódio do Bito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'episode_arc','hard','Em qual episódio temático é revelado o evento traumático da infância de Ginko, explicando sua perda de memória e identidade original?','A revelação ocorre através de flashbacks parciais durante o episódio.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Episódio da Origem de Ginko',TRUE,0),(gen_random_uuid(),q,'Episódio do Sui',FALSE,1),(gen_random_uuid(),q,'Episódio do Tokoyami',FALSE,2),(gen_random_uuid(),q,'Episódio da Tanyuu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'episode_arc','hard','Em qual episódio temático Ginko investiga o lago misterioso onde mushi se acumulam em concentração excepcionalmente alta?','O local é conhecido por atrair mushishi de diversas regiões do Japão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Episódio do Lago dos Mushi',TRUE,0),(gen_random_uuid(),q,'Episódio do Sui',FALSE,1),(gen_random_uuid(),q,'Episódio do Tokoyami',FALSE,2),(gen_random_uuid(),q,'Episódio da Tanyuu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'episode_arc','hard','Em qual episódio temático Ginko conhece Nagashi, jovem que se tornou cega ao presenciar diretamente uma criatura especialmente poderosa?','O episódio explora as consequências trágicas do contato direto com mushi raros.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Episódio da Nagashi',TRUE,0),(gen_random_uuid(),q,'Episódio do Sui',FALSE,1),(gen_random_uuid(),q,'Episódio do Tokoyami',FALSE,2),(gen_random_uuid(),q,'Episódio da Tanyuu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'episode_arc','impossible','Em qual episódio temático é investigada a criatura relacionada a sonhos compartilhados entre múltiplas pessoas de uma mesma comunidade isolada?','O episódio explora fenômenos de conexão psíquica incomum entre moradores da vila.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Episódio do Yume Mushi',TRUE,0),(gen_random_uuid(),q,'Episódio do Sui',FALSE,1),(gen_random_uuid(),q,'Episódio do Tokoyami',FALSE,2),(gen_random_uuid(),q,'Episódio da Tanyuu',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- CHRONOLOGICAL — 7 perguntas
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'chronological','hard','Ordene cronologicamente os seguintes eventos da vida de Ginko, do mais antigo ao mais recente.','Cobrem desde o evento traumático de infância até sua jornada atual como mushishi.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sofre perda de memória por mushi na infância',TRUE,0),(gen_random_uuid(),q,'Desenvolve atração natural a mushi',FALSE,1),(gen_random_uuid(),q,'Torna-se mushishi profissional',FALSE,2),(gen_random_uuid(),q,'Viaja constantemente investigando casos',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'chronological','hard','Ordene cronologicamente os seguintes episódios temáticos, do mais antigo ao mais recente na trajetória narrativa da série.','Cobrem desde os primeiros casos investigados por Ginko até revelações mais profundas sobre sua origem.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Episódio do Hikari-goke',TRUE,0),(gen_random_uuid(),q,'Episódio do Sui',FALSE,1),(gen_random_uuid(),q,'Episódio da Tanyuu',FALSE,2),(gen_random_uuid(),q,'Episódio da Origem de Ginko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'chronological','hard','Ordene cronologicamente os seguintes eventos sobre Tanyuu, do mais antigo ao mais recente.','Cobrem desde sua transformação em hospedeira até seu encontro com Ginko.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Torna-se hospedeira da criatura escritora',TRUE,0),(gen_random_uuid(),q,'Passa a viver isolada devido à sua condição',FALSE,1),(gen_random_uuid(),q,'É visitada por Ginko durante sua investigação',FALSE,2),(gen_random_uuid(),q,'Compartilha seus registros escritos com o mushishi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Nagashi, do mais antigo ao mais recente.','Cobrem desde seu primeiro contato com mushi poderoso até as consequências trágicas duradouras.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Presencia diretamente uma criatura especialmente poderosa',TRUE,0),(gen_random_uuid(),q,'Perde a visão em consequência do contato',FALSE,1),(gen_random_uuid(),q,'Aprende a conviver com sua nova condição',FALSE,2),(gen_random_uuid(),q,'É investigada por Ginko sobre seu caso único',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Adashino e Nui, do mais antigo ao mais recente.','Cobrem desde o início da parceria entre mestre e aprendiz até seu desenvolvimento posterior.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Adashino recruta Nui como assistente jovem',TRUE,0),(gen_random_uuid(),q,'Nui acompanha expedições de pesquisa',FALSE,1),(gen_random_uuid(),q,'Nui demonstra interesse em se tornar mushishi',FALSE,2),(gen_random_uuid(),q,'Os dois cruzam caminho com Ginko em investigação conjunta',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre o Lago dos Mushi, do mais antigo ao mais recente.','Cobrem desde sua formação geológica até sua investigação por Ginko.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'O lago se forma através de fenômeno natural raro',TRUE,0),(gen_random_uuid(),q,'Mushi começam a se acumular em concentração excepcional',FALSE,1),(gen_random_uuid(),q,'Mushishi de diversas regiões passam a investigar o local',FALSE,2),(gen_random_uuid(),q,'Ginko chega para conduzir sua própria investigação',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'chronological','impossible','Ordene cronologicamente os seguintes eventos sobre Mujika, do mais antigo ao mais recente.','Cobrem desde o surgimento de sua condição incomum até seu encontro com Ginko.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Desenvolve associação incomum com mushi de crescimento vegetal',TRUE,0),(gen_random_uuid(),q,'Passa a fazer plantas florescerem instantaneamente',FALSE,1),(gen_random_uuid(),q,'Chama a atenção de comunidades locais por sua natureza',FALSE,2),(gen_random_uuid(),q,'É investigada por Ginko, profundamente intrigado',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- COMPLEMENTO — fechar 150 perguntas (27 text / 14 fill_blank / 19 who_said / 4 episode_arc)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','medium','Qual desses personagens produz frutos que concedem vida eterna a quem os consome, com consequências trágicas associadas ao seu consumo?','Sua investigação envolve dilemas éticos complexos sobre a natureza da mortalidade humana.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tokoyami no Ki',TRUE,0),(gen_random_uuid(),q,'Hikari-goke',FALSE,1),(gen_random_uuid(),q,'Sui',FALSE,2),(gen_random_uuid(),q,'Bito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','medium','Qual desses personagens está associado ao som de sinos, capaz de alterar a percepção de tempo de quem o escuta em um vilarejo isolado?','Sua investigação envolve tradições sonoras específicas locais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Suzu no Ne',TRUE,0),(gen_random_uuid(),q,'Bito',FALSE,1),(gen_random_uuid(),q,'Tsuno',FALSE,2),(gen_random_uuid(),q,'Sube-hebi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','hard','Qual desses personagens se manifesta como arco-íris permanente sobre determinada região, alterando padrões climáticos locais de forma duradoura?','Sua investigação envolve consequências ambientais para a comunidade afetada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Niji Mushi',TRUE,0),(gen_random_uuid(),q,'Sui',FALSE,1),(gen_random_uuid(),q,'Tokoyami',FALSE,2),(gen_random_uuid(),q,'Bito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','hard','Qual desses personagens é abordado através de um ritual de contenção local, praticado por uma comunidade isolada para prevenir sua manifestação?','O ritual é abordado em episódios que exploram tradições específicas de determinada região.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sube-hebi',TRUE,0),(gen_random_uuid(),q,'Tsuno',FALSE,1),(gen_random_uuid(),q,'Bito',FALSE,2),(gen_random_uuid(),q,'Kokushi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','impossible','Qual desses personagens se manifesta como reflexo alterado em superfícies de água, capaz de trocar temporariamente a identidade de duas pessoas?','Sua investigação envolve dilemas filosóficos profundos sobre identidade pessoal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kagami Mushi',TRUE,0),(gen_random_uuid(),q,'Sube-hebi',FALSE,1),(gen_random_uuid(),q,'Yume Mushi',FALSE,2),(gen_random_uuid(),q,'Suzu no Ne',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','easy','Qual desses personagens produz frutos capazes de conceder vida eterna, embora seu consumo traga consequências dramáticas para quem os come?','Ginko investiga essa criatura com cautela redobrada devido aos riscos envolvidos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tokoyami no Ki',TRUE,0),(gen_random_uuid(),q,'Hikari-goke',FALSE,1),(gen_random_uuid(),q,'Sui',FALSE,2),(gen_random_uuid(),q,'Bito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','medium','Qual desses personagens altera a percepção temporal de moradores através do som constante de sinos ecoando por um vilarejo isolado?','A investigação de Ginko revela tradições sonoras específicas dessa comunidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Suzu no Ne',TRUE,0),(gen_random_uuid(),q,'Bito',FALSE,1),(gen_random_uuid(),q,'Tsuno',FALSE,2),(gen_random_uuid(),q,'Sube-hebi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','hard','Qual desses personagens permanece sobre uma região específica alterando duradouramente o clima local através de sua manifestação incomum?','Sua investigação revela consequências ambientais duradouras para a comunidade próxima.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Niji Mushi',TRUE,0),(gen_random_uuid(),q,'Sui',FALSE,1),(gen_random_uuid(),q,'Tokoyami',FALSE,2),(gen_random_uuid(),q,'Bito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','medium','Qual desses personagens é contido através de rituais praticados por comunidades isoladas com tradições específicas transmitidas por gerações?','A investigação de Ginko explora essas práticas ancestrais locais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sube-hebi',TRUE,0),(gen_random_uuid(),q,'Tsuno',FALSE,1),(gen_random_uuid(),q,'Bito',FALSE,2),(gen_random_uuid(),q,'Kokushi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','impossible','Qual desses personagens cria reflexos alterados capazes de trocar temporariamente identidades entre duas pessoas próximas de superfícies de água?','A investigação de Ginko envolve questionamentos filosóficos profundos sobre identidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kagami Mushi',TRUE,0),(gen_random_uuid(),q,'Sube-hebi',FALSE,1),(gen_random_uuid(),q,'Yume Mushi',FALSE,2),(gen_random_uuid(),q,'Suzu no Ne',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','easy','Qual desses personagens concede a vida eterna através de frutos incomuns, embora sempre com um preço trágico envolvido?','Ginko trata esse caso com extremo cuidado devido às consequências duradouras.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tokoyami no Ki',TRUE,0),(gen_random_uuid(),q,'Hikari-goke',FALSE,1),(gen_random_uuid(),q,'Sui',FALSE,2),(gen_random_uuid(),q,'Bito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','medium','Qual desses personagens altera a passagem do tempo percebida por moradores através do toque sonoro de sinos ancestrais?','A tradição local em torno desse fenômeno intriga profundamente Ginko.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Suzu no Ne',TRUE,0),(gen_random_uuid(),q,'Bito',FALSE,1),(gen_random_uuid(),q,'Tsuno',FALSE,2),(gen_random_uuid(),q,'Sube-hebi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','hard','Qual desses personagens paira sobre uma região específica, mudando duradouramente as condições climáticas ao seu redor?','Ginko precisa investigar as consequências ambientais desse fenômeno raro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Niji Mushi',TRUE,0),(gen_random_uuid(),q,'Sui',FALSE,1),(gen_random_uuid(),q,'Tokoyami',FALSE,2),(gen_random_uuid(),q,'Bito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','medium','Qual desses personagens é mantido sob controle através de práticas ancestrais transmitidas por gerações em comunidades isoladas específicas?','Ginko documenta essas tradições durante sua investigação de campo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sube-hebi',TRUE,0),(gen_random_uuid(),q,'Tsuno',FALSE,1),(gen_random_uuid(),q,'Bito',FALSE,2),(gen_random_uuid(),q,'Kokushi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','impossible','Qual desses personagens gera reflexos capazes de trocar identidades temporariamente entre duas pessoas em contato com espelhos d''água?','Ginko reflete profundamente sobre as implicações filosóficas desse fenômeno raro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kagami Mushi',TRUE,0),(gen_random_uuid(),q,'Sube-hebi',FALSE,1),(gen_random_uuid(),q,'Yume Mushi',FALSE,2),(gen_random_uuid(),q,'Suzu no Ne',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','medium','Qual desses personagens oferece vida eterna através de frutos raros, sempre acompanhada de um preço trágico para quem os consome?','O episódio dedicado a essa criatura é considerado um dos mais emocionalmente intensos da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tokoyami no Ki',TRUE,0),(gen_random_uuid(),q,'Hikari-goke',FALSE,1),(gen_random_uuid(),q,'Sui',FALSE,2),(gen_random_uuid(),q,'Bito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','hard','Qual desses personagens muda a percepção de tempo de uma comunidade inteira através do som repetitivo de sinos rituais?','Ginko precisa entender a tradição sonora local antes de intervir no caso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Suzu no Ne',TRUE,0),(gen_random_uuid(),q,'Bito',FALSE,1),(gen_random_uuid(),q,'Tsuno',FALSE,2),(gen_random_uuid(),q,'Sube-hebi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','easy','Qual desses personagens fica pairando sobre uma área específica, criando fenômeno climático colorido e duradouro?','A investigação de Ginko revela as raízes desse evento incomum.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Niji Mushi',TRUE,0),(gen_random_uuid(),q,'Sui',FALSE,1),(gen_random_uuid(),q,'Tokoyami',FALSE,2),(gen_random_uuid(),q,'Bito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','medium','Qual desses personagens exige rituais de contenção específicos praticados há gerações por comunidades tradicionais isoladas?','Ginko aprende sobre essas práticas ao investigar o caso local.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sube-hebi',TRUE,0),(gen_random_uuid(),q,'Tsuno',FALSE,1),(gen_random_uuid(),q,'Bito',FALSE,2),(gen_random_uuid(),q,'Kokushi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','hard','Qual desses personagens permite a troca temporária de identidades entre pessoas ao entrarem em contato com sua manifestação em superfícies aquáticas?','Ginko reflete sobre implicações éticas ao investigar esse caso raro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kagami Mushi',TRUE,0),(gen_random_uuid(),q,'Sube-hebi',FALSE,1),(gen_random_uuid(),q,'Yume Mushi',FALSE,2),(gen_random_uuid(),q,'Suzu no Ne',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','medium','Qual desses personagens cresce como planta rara, cujos frutos concedem imortalidade acompanhada de consequências dramáticas irreversíveis?','Este é um dos episódios mais discutidos pelos fãs da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tokoyami no Ki',TRUE,0),(gen_random_uuid(),q,'Hikari-goke',FALSE,1),(gen_random_uuid(),q,'Sui',FALSE,2),(gen_random_uuid(),q,'Bito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','hard','Qual desses personagens é responsável pela alteração temporal percebida em uma vila através de sinos que ecoam continuamente pela região?','A origem exata dessa tradição sonora intriga profundamente Ginko.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Suzu no Ne',TRUE,0),(gen_random_uuid(),q,'Bito',FALSE,1),(gen_random_uuid(),q,'Tsuno',FALSE,2),(gen_random_uuid(),q,'Sube-hebi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','impossible','Qual desses personagens flutua sobre determinada área, alterando o clima local de forma colorida e duradoura?','Ginko busca entender a origem exata desse fenômeno raro durante sua investigação.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Niji Mushi',TRUE,0),(gen_random_uuid(),q,'Sui',FALSE,1),(gen_random_uuid(),q,'Tokoyami',FALSE,2),(gen_random_uuid(),q,'Bito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','medium','Qual desses personagens tem sua manifestação prevenida através de tradições ancestrais praticadas por comunidades específicas há gerações?','Ginko explora essas práticas locais em sua investigação de campo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sube-hebi',TRUE,0),(gen_random_uuid(),q,'Tsuno',FALSE,1),(gen_random_uuid(),q,'Bito',FALSE,2),(gen_random_uuid(),q,'Kokushi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','hard','Qual desses personagens cria trocas temporárias de identidade entre duas pessoas em contato com reflexos alterados de água?','Ginko medita sobre as implicações desse fenômeno único durante sua investigação.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kagami Mushi',TRUE,0),(gen_random_uuid(),q,'Sube-hebi',FALSE,1),(gen_random_uuid(),q,'Yume Mushi',FALSE,2),(gen_random_uuid(),q,'Suzu no Ne',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','hard','Qual desses personagens é considerado extremamente perigoso ao ser observado diretamente, sendo o único capaz de causar cegueira permanente?','Sua investigação exige distância segura e cautela extrema por parte do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mushi Raro (visão)',TRUE,0),(gen_random_uuid(),q,'Sui',FALSE,1),(gen_random_uuid(),q,'Tokoyami',FALSE,2),(gen_random_uuid(),q,'Bito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'text','impossible','Qual desses personagens está relacionado a sonhos compartilhados entre múltiplas pessoas de uma mesma comunidade isolada?','Sua investigação envolve fenômenos de conexão psíquica incomum entre moradores da vila.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yume Mushi',TRUE,0),(gen_random_uuid(),q,'Kokushi',FALSE,1),(gen_random_uuid(),q,'Bito',FALSE,2),(gen_random_uuid(),q,'Sube-hebi',FALSE,3);

    -- fill_blank complemento (14)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'fill_blank','medium','A criatura que cresce como planta, produzindo frutos que concedem vida eterna com consequências trágicas, se chama ___.','Sua investigação envolve dilemas éticos complexos sobre a natureza da mortalidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tokoyami no Ki',TRUE,0),(gen_random_uuid(),q,'Hikari-goke',FALSE,1),(gen_random_uuid(),q,'Sui',FALSE,2),(gen_random_uuid(),q,'Bito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'fill_blank','medium','A criatura primitiva ligada ao som de sinos, capaz de alterar a percepção de tempo, se chama ___.','Sua investigação envolve um vilarejo isolado com tradições sonoras específicas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Suzu no Ne',TRUE,0),(gen_random_uuid(),q,'Bito',FALSE,1),(gen_random_uuid(),q,'Tsuno',FALSE,2),(gen_random_uuid(),q,'Sube-hebi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'fill_blank','hard','A criatura que se manifesta como arco-íris permanente sobre determinada região, alterando o clima local, se chama ___.','Sua investigação envolve consequências ambientais duradouras para a comunidade afetada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Niji Mushi',TRUE,0),(gen_random_uuid(),q,'Sui',FALSE,1),(gen_random_uuid(),q,'Tokoyami',FALSE,2),(gen_random_uuid(),q,'Bito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'fill_blank','hard','A criatura primitiva capaz de se manifestar como sombra duplicada, prevenida através de rituais locais, se chama ___.','Sua natureza está associada a temas de identidade e existência dual.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sube-hebi',TRUE,0),(gen_random_uuid(),q,'Tsuno',FALSE,1),(gen_random_uuid(),q,'Bito',FALSE,2),(gen_random_uuid(),q,'Kokushi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'fill_blank','impossible','A criatura que se manifesta como reflexo alterado em superfícies de água, trocando identidades temporariamente, se chama ___.','Sua investigação envolve dilemas filosóficos profundos sobre identidade pessoal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kagami Mushi',TRUE,0),(gen_random_uuid(),q,'Sube-hebi',FALSE,1),(gen_random_uuid(),q,'Yume Mushi',FALSE,2),(gen_random_uuid(),q,'Suzu no Ne',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'fill_blank','easy','A criatura que produz frutos concedendo vida eterna, com consequências trágicas para quem os consome, se chama ___.','Ginko investiga essa criatura com cautela redobrada devido aos riscos envolvidos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tokoyami no Ki',TRUE,0),(gen_random_uuid(),q,'Hikari-goke',FALSE,1),(gen_random_uuid(),q,'Sui',FALSE,2),(gen_random_uuid(),q,'Bito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'fill_blank','medium','A criatura que altera a percepção temporal de moradores através do som de sinos ecoando por um vilarejo isolado se chama ___.','A investigação de Ginko revela tradições sonoras específicas dessa comunidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Suzu no Ne',TRUE,0),(gen_random_uuid(),q,'Bito',FALSE,1),(gen_random_uuid(),q,'Tsuno',FALSE,2),(gen_random_uuid(),q,'Sube-hebi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'fill_blank','hard','A criatura que permanece sobre uma região específica alterando duradouramente o clima local se chama ___.','Sua investigação revela consequências ambientais duradouras para a comunidade próxima.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Niji Mushi',TRUE,0),(gen_random_uuid(),q,'Sui',FALSE,1),(gen_random_uuid(),q,'Tokoyami',FALSE,2),(gen_random_uuid(),q,'Bito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'fill_blank','medium','A criatura contida através de rituais praticados por comunidades isoladas com tradições específicas transmitidas por gerações se chama ___.','A investigação de Ginko explora essas práticas ancestrais locais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sube-hebi',TRUE,0),(gen_random_uuid(),q,'Tsuno',FALSE,1),(gen_random_uuid(),q,'Bito',FALSE,2),(gen_random_uuid(),q,'Kokushi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'fill_blank','impossible','A criatura que cria reflexos alterados capazes de trocar temporariamente identidades entre duas pessoas próximas à água se chama ___.','A investigação de Ginko envolve questionamentos filosóficos profundos sobre identidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kagami Mushi',TRUE,0),(gen_random_uuid(),q,'Sube-hebi',FALSE,1),(gen_random_uuid(),q,'Yume Mushi',FALSE,2),(gen_random_uuid(),q,'Suzu no Ne',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'fill_blank','medium','A criatura que concede a vida eterna através de frutos incomuns, sempre com um preço trágico envolvido, se chama ___.','Ginko trata esse caso com extremo cuidado devido às consequências duradouras.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tokoyami no Ki',TRUE,0),(gen_random_uuid(),q,'Hikari-goke',FALSE,1),(gen_random_uuid(),q,'Sui',FALSE,2),(gen_random_uuid(),q,'Bito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'fill_blank','hard','A criatura que altera a passagem do tempo percebida por moradores através do toque sonoro de sinos ancestrais se chama ___.','A tradição local em torno desse fenômeno intriga profundamente Ginko.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Suzu no Ne',TRUE,0),(gen_random_uuid(),q,'Bito',FALSE,1),(gen_random_uuid(),q,'Tsuno',FALSE,2),(gen_random_uuid(),q,'Sube-hebi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'fill_blank','hard','A criatura que paira sobre uma região específica, mudando duradouramente as condições climáticas ao seu redor, se chama ___.','Ginko precisa investigar as consequências ambientais desse fenômeno raro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Niji Mushi',TRUE,0),(gen_random_uuid(),q,'Sui',FALSE,1),(gen_random_uuid(),q,'Tokoyami',FALSE,2),(gen_random_uuid(),q,'Bito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'fill_blank','impossible','A criatura relacionada a sonhos compartilhados entre múltiplas pessoas de uma mesma comunidade se chama ___.','Sua investigação envolve fenômenos de conexão psíquica incomum entre moradores de uma vila isolada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yume Mushi',TRUE,0),(gen_random_uuid(),q,'Kokushi',FALSE,1),(gen_random_uuid(),q,'Bito',FALSE,2),(gen_random_uuid(),q,'Sube-hebi',FALSE,3);

    -- who_said complemento (19)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'who_said','easy','Quem disse: "Meus frutos concedem vida eterna, mas sempre existe um preço trágico a ser pago por quem os consome"?','A frase reflete a natureza da criatura vegetal ligada à imortalidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tokoyami no Ki',TRUE,0),(gen_random_uuid(),q,'Hikari-goke',FALSE,1),(gen_random_uuid(),q,'Sui',FALSE,2),(gen_random_uuid(),q,'Bito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'who_said','easy','Quem disse: "Meu som ecoa constantemente por este vilarejo, alterando a percepção de tempo de todos que me escutam"?','A frase reflete a natureza da criatura sonora associada a sinos rituais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Suzu no Ne',TRUE,0),(gen_random_uuid(),q,'Bito',FALSE,1),(gen_random_uuid(),q,'Tsuno',FALSE,2),(gen_random_uuid(),q,'Sube-hebi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'who_said','medium','Quem disse: "Eu pairo sobre esta região há tempos, alterando duradouramente o clima local com minhas cores incomuns"?','A frase reflete a natureza da criatura associada ao fenômeno de arco-íris permanente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Niji Mushi',TRUE,0),(gen_random_uuid(),q,'Sui',FALSE,1),(gen_random_uuid(),q,'Tokoyami',FALSE,2),(gen_random_uuid(),q,'Bito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'who_said','medium','Quem disse: "Rituais ancestrais me mantêm contida, mas comunidades isoladas ainda temem minha presença silenciosa"?','A frase reflete a natureza da criatura prevenida através de tradições locais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sube-hebi',TRUE,0),(gen_random_uuid(),q,'Tsuno',FALSE,1),(gen_random_uuid(),q,'Bito',FALSE,2),(gen_random_uuid(),q,'Kokushi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'who_said','hard','Quem disse: "Eu crio reflexos alterados em superfícies de água, capazes de trocar temporariamente a identidade de duas pessoas"?','A frase reflete a natureza da criatura ligada a reflexos aquáticos e identidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kagami Mushi',TRUE,0),(gen_random_uuid(),q,'Sube-hebi',FALSE,1),(gen_random_uuid(),q,'Yume Mushi',FALSE,2),(gen_random_uuid(),q,'Suzu no Ne',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'who_said','easy','Quem disse: "Ginko trata meu caso com cautela redobrada, pois quem experimenta meus frutos enfrenta consequências irreversíveis"?','A frase reflete a natureza perigosa da criatura ligada à imortalidade trágica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tokoyami no Ki',TRUE,0),(gen_random_uuid(),q,'Hikari-goke',FALSE,1),(gen_random_uuid(),q,'Sui',FALSE,2),(gen_random_uuid(),q,'Bito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'who_said','medium','Quem disse: "A tradição sonora deste vilarejo gira em torno de mim, e Ginko precisa entendê-la antes de intervir"?','A frase reflete a natureza da criatura associada a sinos rituais e percepção temporal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Suzu no Ne',TRUE,0),(gen_random_uuid(),q,'Bito',FALSE,1),(gen_random_uuid(),q,'Tsuno',FALSE,2),(gen_random_uuid(),q,'Sube-hebi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'who_said','hard','Quem disse: "Minhas cores permanentes alteram o clima ao redor, e Ginko busca entender minhas raízes durante a investigação"?','A frase reflete a natureza da criatura associada ao fenômeno climático colorido.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Niji Mushi',TRUE,0),(gen_random_uuid(),q,'Sui',FALSE,1),(gen_random_uuid(),q,'Tokoyami',FALSE,2),(gen_random_uuid(),q,'Bito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'who_said','medium','Quem disse: "Práticas ancestrais transmitidas por gerações me mantêm sob controle nesta comunidade isolada"?','A frase reflete a natureza da criatura prevenida através de tradições locais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sube-hebi',TRUE,0),(gen_random_uuid(),q,'Tsuno',FALSE,1),(gen_random_uuid(),q,'Bito',FALSE,2),(gen_random_uuid(),q,'Kokushi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'who_said','hard','Quem disse: "Ginko medita profundamente sobre as implicações filosóficas da troca de identidades que eu causo"?','A frase reflete a natureza da criatura ligada a reflexos e identidade pessoal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kagami Mushi',TRUE,0),(gen_random_uuid(),q,'Sube-hebi',FALSE,1),(gen_random_uuid(),q,'Yume Mushi',FALSE,2),(gen_random_uuid(),q,'Suzu no Ne',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'who_said','easy','Quem disse: "Este episódio dedicado a mim é considerado um dos mais emocionalmente intensos entre os fãs da série"?','A frase reflete a natureza marcante da criatura ligada à imortalidade e sacrifício.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tokoyami no Ki',TRUE,0),(gen_random_uuid(),q,'Hikari-goke',FALSE,1),(gen_random_uuid(),q,'Sui',FALSE,2),(gen_random_uuid(),q,'Bito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'who_said','medium','Quem disse: "A origem exata da minha tradição sonora intriga profundamente Ginko durante sua investigação de campo"?','A frase reflete a natureza da criatura associada a sinos ecoando pela vila.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Suzu no Ne',TRUE,0),(gen_random_uuid(),q,'Bito',FALSE,1),(gen_random_uuid(),q,'Tsuno',FALSE,2),(gen_random_uuid(),q,'Sube-hebi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'who_said','hard','Quem disse: "Ginko busca entender a origem exata do meu fenômeno raro enquanto investiga a comunidade afetada"?','A frase reflete a natureza da criatura associada ao fenômeno climático colorido.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Niji Mushi',TRUE,0),(gen_random_uuid(),q,'Sui',FALSE,1),(gen_random_uuid(),q,'Tokoyami',FALSE,2),(gen_random_uuid(),q,'Bito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'who_said','medium','Quem disse: "Ginko explora as tradições locais praticadas há gerações para entender como sou contida"?','A frase reflete a natureza da criatura prevenida através de rituais comunitários.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sube-hebi',TRUE,0),(gen_random_uuid(),q,'Tsuno',FALSE,1),(gen_random_uuid(),q,'Bito',FALSE,2),(gen_random_uuid(),q,'Kokushi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'who_said','impossible','Quem disse: "Ginko reflete sobre as implicações éticas de investigar meu caso raro envolvendo trocas de identidade"?','A frase reflete a natureza da criatura ligada a reflexos aquáticos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kagami Mushi',TRUE,0),(gen_random_uuid(),q,'Sube-hebi',FALSE,1),(gen_random_uuid(),q,'Yume Mushi',FALSE,2),(gen_random_uuid(),q,'Suzu no Ne',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'who_said','impossible','Quem disse: "Este é um dos episódios mais discutidos pelos fãs, devido à natureza trágica de minha existência como fruto da imortalidade"?','A frase reflete a natureza marcante da criatura vegetal ligada à imortalidade.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tokoyami no Ki',TRUE,0),(gen_random_uuid(),q,'Hikari-goke',FALSE,1),(gen_random_uuid(),q,'Sui',FALSE,2),(gen_random_uuid(),q,'Bito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'who_said','impossible','Quem disse: "Minha origem exata como som ritual permanece um mistério intrigante mesmo para Ginko, apesar de anos de investigação"?','A frase reflete a natureza da criatura sonora associada a sinos ancestrais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Suzu no Ne',TRUE,0),(gen_random_uuid(),q,'Bito',FALSE,1),(gen_random_uuid(),q,'Tsuno',FALSE,2),(gen_random_uuid(),q,'Sube-hebi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'who_said','impossible','Quem disse: "Ginko precisa entender minhas consequências ambientais duradouras antes de decidir como intervir na comunidade"?','A frase reflete a natureza da criatura associada ao fenômeno climático colorido.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Niji Mushi',TRUE,0),(gen_random_uuid(),q,'Sui',FALSE,1),(gen_random_uuid(),q,'Tokoyami',FALSE,2),(gen_random_uuid(),q,'Bito',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'who_said','impossible','Quem disse: "Sonhos são compartilhados entre os moradores desta vila por minha causa, criando uma conexão psíquica incomum entre eles"?','A frase reflete a natureza da criatura ligada a sonhos compartilhados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yume Mushi',TRUE,0),(gen_random_uuid(),q,'Kokushi',FALSE,1),(gen_random_uuid(),q,'Bito',FALSE,2),(gen_random_uuid(),q,'Sube-hebi',FALSE,3);

    -- episode_arc complemento (4)
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'episode_arc','medium','Em qual episódio temático Ginko investiga a criatura ligada a frutos que concedem vida eterna com consequências trágicas?','O episódio explora dilemas éticos profundos sobre mortalidade e desejo humano.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Episódio do Tokoyami no Ki',TRUE,0),(gen_random_uuid(),q,'Episódio do Sui',FALSE,1),(gen_random_uuid(),q,'Episódio do Tokoyami',FALSE,2),(gen_random_uuid(),q,'Episódio da Tanyuu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'episode_arc','hard','Em qual episódio temático Ginko investiga o fenômeno de arco-íris permanente alterando padrões climáticos locais?','O episódio explora consequências ambientais duradouras causadas por essa criatura rara.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Episódio do Niji Mushi',TRUE,0),(gen_random_uuid(),q,'Episódio do Sui',FALSE,1),(gen_random_uuid(),q,'Episódio do Tokoyami',FALSE,2),(gen_random_uuid(),q,'Episódio da Tanyuu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'episode_arc','hard','Em qual episódio temático Ginko investiga a criatura de sombra duplicada, prevenida através de rituais de contenção local?','O episódio explora temas de identidade e existência dual através de tradições comunitárias.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Episódio do Sube-hebi',TRUE,0),(gen_random_uuid(),q,'Episódio do Sui',FALSE,1),(gen_random_uuid(),q,'Episódio do Tokoyami',FALSE,2),(gen_random_uuid(),q,'Episódio da Tanyuu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_ms,'episode_arc','impossible','Em qual episódio temático Ginko investiga a criatura de reflexo alterado, capaz de trocar identidades temporariamente entre pessoas próximas à água?','O episódio explora dilemas filosóficos profundos sobre identidade pessoal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Episódio do Kagami Mushi',TRUE,0),(gen_random_uuid(),q,'Episódio do Sui',FALSE,1),(gen_random_uuid(),q,'Episódio do Tokoyami',FALSE,2),(gen_random_uuid(),q,'Episódio da Tanyuu',FALSE,3);

END $$;
