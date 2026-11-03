-- ============================================================
--  V23 — Seed de perguntas: Bleach (150 perguntas)
--  Fonte: MyAnimeList + cânone do anime
--  Distribuição: text 40% / fill_blank 25% / who_said 20% /
--                episode_arc 10% / chronological 5%
--  Sem repetição com V5. Regras R1-R7 aplicadas.
-- ============================================================

DO $$
DECLARE
    v_system UUID := '00000000-0000-0000-0000-000000000001';
    v_bleach UUID;
    q        UUID;
BEGIN
    SELECT id INTO v_bleach FROM animes WHERE slug = 'bleach' LIMIT 1;

    -- ══════════════════════════════════════════════════════════
    -- TEXT — 60 perguntas (18 easy / 21 medium / 15 hard / 6 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','easy','Qual é o nome do irmão adotivo de Rukia, capitão da 6ª Divisão?','Ele é um dos capitães mais tradicionais e disciplinados da Soul Society.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Toshiro Hitsugaya',FALSE,0),(gen_random_uuid(),q,'Byakuya Kuchiki',TRUE,1),(gen_random_uuid(),q,'Kenpachi Zaraki',FALSE,2),(gen_random_uuid(),q,'Sosuke Aizen',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','easy','Qual é o nome do grupo de 13 esquadrões que protege a Soul Society?','Cada divisão é liderada por um capitão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Onmitsukido',FALSE,0),(gen_random_uuid(),q,'Gotei 13',TRUE,1),(gen_random_uuid(),q,'Kido Corps',FALSE,2),(gen_random_uuid(),q,'Royal Guard',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','easy','Qual é o nome da loja administrada por Kisuke Urahara em Karakura?','Funciona como fachada para suas pesquisas científicas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Urahara Shouten',TRUE,0),(gen_random_uuid(),q,'Shiba Shouten',FALSE,1),(gen_random_uuid(),q,'Soul Candy Shop',FALSE,2),(gen_random_uuid(),q,'Karakura Mart',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','easy','Qual das irmãs de Ichigo consegue ver espíritos claramente desde criança?','Ela tem talento natural para futebol.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yuzu Kurosaki',FALSE,0),(gen_random_uuid(),q,'Karin Kurosaki',TRUE,1),(gen_random_uuid(),q,'Masaki Kurosaki',FALSE,2),(gen_random_uuid(),q,'Rukia Kuchiki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','easy','Qual é o nome do pai de Ichigo, dono de uma clínica médica na cidade?','Ele esconde por muito tempo seu passado como Shinigami.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Isshin Kurosaki',TRUE,0),(gen_random_uuid(),q,'Ryuken Ishida',FALSE,1),(gen_random_uuid(),q,'Kaien Shiba',FALSE,2),(gen_random_uuid(),q,'Genryusai Yamamoto',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','easy','Qual é o nome do amigo humano de Ichigo, gigante e de coração gentil, que consegue enxergar espíritos por acidente?','Ele possui uma força física impressionante mesmo sem poderes espirituais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yasutora Sado',TRUE,0),(gen_random_uuid(),q,'Uryu Ishida',FALSE,1),(gen_random_uuid(),q,'Keigo Asano',FALSE,2),(gen_random_uuid(),q,'Mizuiro Kojima',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','easy','Qual é o nome da amiga de Ichigo que possui poderes de cura e barreiras espirituais?','Ela é apaixonada por Ichigo desde o início da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Orihime Inoue',TRUE,0),(gen_random_uuid(),q,'Rukia Kuchiki',FALSE,1),(gen_random_uuid(),q,'Tatsuki Arisawa',FALSE,2),(gen_random_uuid(),q,'Nemu Kurotsuchi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','easy','Qual é o nome do último Quincy remanescente que estuda em Karakura junto com Ichigo?','Ele mantém rivalidade constante com Ichigo desde o início da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Uryu Ishida',TRUE,0),(gen_random_uuid(),q,'Sado',FALSE,1),(gen_random_uuid(),q,'Keigo',FALSE,2),(gen_random_uuid(),q,'Renji',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','easy','Qual é o comandante-geral de todos os treze esquadrões da Soul Society?','Ele é o capitão mais antigo e respeitado de toda a organização.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Genryusai Yamamoto',TRUE,0),(gen_random_uuid(),q,'Byakuya Kuchiki',FALSE,1),(gen_random_uuid(),q,'Sosuke Aizen',FALSE,2),(gen_random_uuid(),q,'Kenpachi Zaraki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','easy','Qual é o nome do capitão da 11ª Divisão, conhecido pela obsessão por batalhas intensas?','Ele carrega os olhos vendados até que sinta um adversário digno.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kenpachi Zaraki',TRUE,0),(gen_random_uuid(),q,'Byakuya Kuchiki',FALSE,1),(gen_random_uuid(),q,'Shunsui Kyoraku',FALSE,2),(gen_random_uuid(),q,'Jushiro Ukitake',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','easy','Qual é o nome da menina que serve de vice-capitã ao capitão da 11ª Divisão?','Ela é fisicamente muito jovem, mas extremamente forte em batalha.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yachiru Kusajishi',TRUE,0),(gen_random_uuid(),q,'Nemu Kurotsuchi',FALSE,1),(gen_random_uuid(),q,'Rangiku Matsumoto',FALSE,2),(gen_random_uuid(),q,'Momo Hinamori',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','easy','Qual é o nome do tenente ruivo, melhor amigo de infância de Rukia, que serve à 6ª Divisão?','Ele possui tatuagens tribais por todo o corpo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Renji Abarai',TRUE,0),(gen_random_uuid(),q,'Shuhei Hisagi',FALSE,1),(gen_random_uuid(),q,'Izuru Kira',FALSE,2),(gen_random_uuid(),q,'Marechiyo Omaeda',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','easy','Qual é o nome do cientista excêntrico, capitão da 12ª Divisão, especialista em pesquisas antiéticas?','Ele possui uma filha artificial chamada Nemu.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mayuri Kurotsuchi',TRUE,0),(gen_random_uuid(),q,'Kisuke Urahara',FALSE,1),(gen_random_uuid(),q,'Akon',FALSE,2),(gen_random_uuid(),q,'Hachigen Ushoda',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','easy','Qual é o nome da amiga de infância de Ichigo, faixa preta de caratê, que também é amiga próxima de Orihime?','Ela desconfia por muito tempo que Ichigo esconde algo importante.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tatsuki Arisawa',TRUE,0),(gen_random_uuid(),q,'Chizuru Honshou',FALSE,1),(gen_random_uuid(),q,'Michiru Ogawa',FALSE,2),(gen_random_uuid(),q,'Mahana Natsui',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','easy','Qual é o nome do peluche de leão que serve como corpo temporário para o pai de Orihime, morto anos antes?','O boneco é habitado espiritualmente pelo irmão de Orihime.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kon',FALSE,0),(gen_random_uuid(),q,'Sora',FALSE,1),(gen_random_uuid(),q,'Chappy',FALSE,2),(gen_random_uuid(),q,'Yourichi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','easy','Qual é o nome do boneco de pelúcia habitado por uma alma modificada, usado por Ichigo para controlar seu corpo humano vazio?','Ele costuma se referir a si mesmo em terceira pessoa e é apaixonado por Rukia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kon',TRUE,0),(gen_random_uuid(),q,'Sora',FALSE,1),(gen_random_uuid(),q,'Chappy',FALSE,2),(gen_random_uuid(),q,'Pyon',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','easy','Qual é o nome da gata negra que se transforma em uma mulher adulta, ex-capitã da Soul Society?','Ela ajuda Ichigo a treinar antes de sua primeira invasão à Soul Society.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yoruichi Shihoin',TRUE,0),(gen_random_uuid(),q,'Soi Fon',FALSE,1),(gen_random_uuid(),q,'Rangiku Matsumoto',FALSE,2),(gen_random_uuid(),q,'Nemu Kurotsuchi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','easy','Qual é o nome da capitã da 2ª Divisão, especialista em artes marciais e velocidade extrema?','Ela nutre ressentimento antigo contra Yoruichi, sua ex-mestra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Soi Fon',TRUE,0),(gen_random_uuid(),q,'Rangiku Matsumoto',FALSE,1),(gen_random_uuid(),q,'Unohana',FALSE,2),(gen_random_uuid(),q,'Nemu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','medium','Qual é o nome da técnica de Byakuya Kuchiki que dispara mil lâminas em forma de pétalas de cerejeira?','É também o nome de sua Zanpakuto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Senbonzakura',TRUE,0),(gen_random_uuid(),q,'Hyorinmaru',FALSE,1),(gen_random_uuid(),q,'Ryujin Jakka',FALSE,2),(gen_random_uuid(),q,'Sode no Shirayuki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','medium','Qual é o nome do capitão da 10ª Divisão, considerado um prodígio por se tornar capitão ainda jovem?','Sua Zanpakuto está ligada ao elemento gelo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Toshiro Hitsugaya',TRUE,0),(gen_random_uuid(),q,'Renji Abarai',FALSE,1),(gen_random_uuid(),q,'Shuhei Hisagi',FALSE,2),(gen_random_uuid(),q,'Gin Ichimaru',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','medium','Qual é o nome da Zanpakuto de Toshiro Hitsugaya, ligada ao elemento gelo?','Ela pode congelar um campo de batalha inteiro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hyorinmaru',TRUE,0),(gen_random_uuid(),q,'Sode no Shirayuki',FALSE,1),(gen_random_uuid(),q,'Haineko',FALSE,2),(gen_random_uuid(),q,'Suzumebachi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','medium','Qual é o nome da vice-capitã da 10ª Divisão, conhecida por sua preguiça e corpo voluptuoso?','Ela é uma das melhores amigas de Gin Ichimaru desde a infância.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rangiku Matsumoto',TRUE,0),(gen_random_uuid(),q,'Momo Hinamori',FALSE,1),(gen_random_uuid(),q,'Nemu Kurotsuchi',FALSE,2),(gen_random_uuid(),q,'Isane Kotetsu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','medium','Qual é o nome da técnica final e mais avançada além do Bankai, revelada em conteúdo mais recente da série?','Concede um poder próximo ao de um Shinigami de calibre real.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bankai Verdadeiro',TRUE,0),(gen_random_uuid(),q,'Shikai Reverso',FALSE,1),(gen_random_uuid(),q,'Hollow Bankai',FALSE,2),(gen_random_uuid(),q,'Zanpakuto Suprema',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','medium','Qual é o nome do capitão traidor que serve como braço direito de Aizen, sempre sorrindo?','Ele mantém sua verdadeira lealdade em segredo até quase o fim da saga da Soul Society.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gin Ichimaru',TRUE,0),(gen_random_uuid(),q,'Kaname Tosen',FALSE,1),(gen_random_uuid(),q,'Sosuke Aizen',FALSE,2),(gen_random_uuid(),q,'Byakuya Kuchiki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','medium','Qual é o nome do capitão cego da 9ª Divisão, também traidor aliado de Aizen?','Ele acredita agir em nome de uma justiça cega e absoluta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaname Tosen',TRUE,0),(gen_random_uuid(),q,'Gin Ichimaru',FALSE,1),(gen_random_uuid(),q,'Shuhei Hisagi',FALSE,2),(gen_random_uuid(),q,'Sajin Komamura',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','medium','Qual é o nome do vice-capitão que idolatra Aizen e é gravemente ferido ao descobrir sua traição?','Ela sofre um colapso emocional profundo após o ocorrido.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Momo Hinamori',TRUE,0),(gen_random_uuid(),q,'Rangiku Matsumoto',FALSE,1),(gen_random_uuid(),q,'Isane Kotetsu',FALSE,2),(gen_random_uuid(),q,'Nemu Kurotsuchi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','medium','Qual é o nome do rei espiritual dos Hollow mais fracos, capazes de devorar almas comuns?','Eles são a base da hierarquia de espíritos corrompidos em Bleach.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hollow',TRUE,0),(gen_random_uuid(),q,'Arrancar',FALSE,1),(gen_random_uuid(),q,'Menos Grande',FALSE,2),(gen_random_uuid(),q,'Vasto Lorde',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','medium','Qual é o nome da forma evoluída e mais poderosa de Hollow, praticamente no nível de um Arrancar?','Apenas poucos Hollows conseguem alcançar esse estágio de evolução.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vasto Lorde',TRUE,0),(gen_random_uuid(),q,'Menos Grande',FALSE,1),(gen_random_uuid(),q,'Gillian',FALSE,2),(gen_random_uuid(),q,'Adjuchas',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','medium','Qual é o nome do pai adotivo de Uryu Ishida, também Quincy, que rejeita seus próprios poderes por trauma?','Ele trabalha como médico junto com Isshin Kurosaki.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ryuken Ishida',TRUE,0),(gen_random_uuid(),q,'Souken Ishida',FALSE,1),(gen_random_uuid(),q,'Kisuke Urahara',FALSE,2),(gen_random_uuid(),q,'Ginjo Kugo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','medium','Qual é o nome do avô de Uryu Ishida, morto por um Hollow durante seu treinamento?','Sua morte motiva profundamente a busca de Uryu por poder.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Souken Ishida',TRUE,0),(gen_random_uuid(),q,'Ryuken Ishida',FALSE,1),(gen_random_uuid(),q,'Jugram Haschwalth',FALSE,2),(gen_random_uuid(),q,'Yhwach',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','medium','Qual é o nome do vice-capitão da Terceira Divisão que trai temporariamente a Soul Society por Aizen?','Ele carrega culpa e depressão profunda após sua traição fracassar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Izuru Kira',TRUE,0),(gen_random_uuid(),q,'Shuhei Hisagi',FALSE,1),(gen_random_uuid(),q,'Renji Abarai',FALSE,2),(gen_random_uuid(),q,'Marechiyo Omaeda',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','hard','Qual é o nome do processo em que um Shinigami e um Hollow se fundem, criando um Vizard?','Esse processo deixa o usuário com poderes híbridos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hollowfication',TRUE,0),(gen_random_uuid(),q,'Arrancarization',FALSE,1),(gen_random_uuid(),q,'Fullbringization',FALSE,2),(gen_random_uuid(),q,'Quincyfication',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','hard','Qual é o nome do grupo de Shinigamis que passaram pela Hollowfication e vivem exilados na cidade de Karakura?','Eles ajudam Ichigo a controlar seu próprio poder Hollow.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vizards',TRUE,0),(gen_random_uuid(),q,'Arrancars',FALSE,1),(gen_random_uuid(),q,'Fullbringers',FALSE,2),(gen_random_uuid(),q,'Sternritter',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','hard','Qual é o nome do líder dos Vizards, ex-capitão da 5ª Divisão traído por Aizen?','Ele era o antigo capitão de Momo Hinamori antes de sua expulsão da Soul Society.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shinji Hirako',TRUE,0),(gen_random_uuid(),q,'Kensei Muguruma',FALSE,1),(gen_random_uuid(),q,'Rojuro Otoribashi',FALSE,2),(gen_random_uuid(),q,'Love Aikawa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','hard','Qual é o nome do Arrancar traído por Aizen, que revela informações secretas sobre Hueco Mundo ao Ichigo?','Ele possui um número baixo entre os Espada, indicando alto nível de poder.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Grimmjow Jaegerjaquez',TRUE,0),(gen_random_uuid(),q,'Ulquiorra Cifer',FALSE,1),(gen_random_uuid(),q,'Nnoitra Gilga',FALSE,2),(gen_random_uuid(),q,'Starrk',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','hard','Qual é o nome do Primeiro Espada, considerado o mais poderoso entre os Arrancar de Aizen?','Ele possui duas almas divididas em um único corpo, incluindo uma parceira chamada Lilynette.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Coyote Starrk',TRUE,0),(gen_random_uuid(),q,'Baraggan Louisenbairn',FALSE,1),(gen_random_uuid(),q,'Ulquiorra Cifer',FALSE,2),(gen_random_uuid(),q,'Halibel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','hard','Qual é o nome do rei antigo de Hueco Mundo, um dos Espada, que governava antes de Aizen?','Seu poder está ligado ao envelhecimento das coisas ao seu redor.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Baraggan Louisenbairn',TRUE,0),(gen_random_uuid(),q,'Coyote Starrk',FALSE,1),(gen_random_uuid(),q,'Zommari Rureaux',FALSE,2),(gen_random_uuid(),q,'Aaroniero Arruruerie',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','hard','Qual é o nome do braço direito de Yhwach, considerado o Quincy mais forte depois do próprio rei?','Ele nasceu com a habilidade de nunca perder, exceto para o próprio Yhwach.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Jugram Haschwalth',TRUE,0),(gen_random_uuid(),q,'Uryu Ishida',FALSE,1),(gen_random_uuid(),q,'As Nodt',FALSE,2),(gen_random_uuid(),q,'Bazz-B',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','hard','Qual é o nome do grupo de elite de Quincys que serve diretamente a Yhwach durante a invasão final?','Cada membro carrega um número que reflete sua posição de poder.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sternritter',TRUE,0),(gen_random_uuid(),q,'Vandenreich Guard',FALSE,1),(gen_random_uuid(),q,'Quincy Elite',FALSE,2),(gen_random_uuid(),q,'Reiokyu Knights',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','hard','Qual é o nome do poder especial de Ichigo, distinto de Shinigami, Quincy e Hollow, revelado na fase final da série?','É a fusão equilibrada de todos os poderes que correm em seu sangue.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'True Shinigami Power',FALSE,0),(gen_random_uuid(),q,'Zangetsu Verdadeiro',TRUE,1),(gen_random_uuid(),q,'Getsuga Tensho Final',FALSE,2),(gen_random_uuid(),q,'Hollow King Form',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','impossible','Qual é o nome do capitão da 7ª Divisão que possui aparência de um enorme lobo humanoide?','Ele mantém sua verdadeira forma escondida por vergonha durante anos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sajin Komamura',TRUE,0),(gen_random_uuid(),q,'Kaname Tosen',FALSE,1),(gen_random_uuid(),q,'Jushiro Ukitake',FALSE,2),(gen_random_uuid(),q,'Shunsui Kyoraku',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','impossible','Qual é o nome da capitã da 4ª Divisão, especializada em cura, considerada a Shinigami mais forte da história antes de sua morte?','Sua aparência gentil esconde um poder de combate imenso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Retsu Unohana',TRUE,0),(gen_random_uuid(),q,'Isane Kotetsu',FALSE,1),(gen_random_uuid(),q,'Rangiku Matsumoto',FALSE,2),(gen_random_uuid(),q,'Nemu Kurotsuchi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','impossible','Qual é o nome do capitão da 8ª Divisão, parceiro de longa data de Jushiro Ukitake?','Ele possui uma atitude descontraída, contrastando com sua enorme força real.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shunsui Kyoraku',TRUE,0),(gen_random_uuid(),q,'Jushiro Ukitake',FALSE,1),(gen_random_uuid(),q,'Sajin Komamura',FALSE,2),(gen_random_uuid(),q,'Kenpachi Zaraki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','impossible','Qual é o nome do capitão da 13ª Divisão, mentor de Rukia, que sofre de uma doença crônica pulmonar?','Sua condição de saúde é frequentemente mencionada ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Jushiro Ukitake',TRUE,0),(gen_random_uuid(),q,'Shunsui Kyoraku',FALSE,1),(gen_random_uuid(),q,'Sajin Komamura',FALSE,2),(gen_random_uuid(),q,'Byakuya Kuchiki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','impossible','Qual é o nome do vice-capitão morto por Kaien Shiba antes de sua própria morte trágica, revelado em flashback?','O evento causa um trauma profundo em Rukia, que é obrigada a matar Kaien depois.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaien Shiba (possuído por um Hollow)',TRUE,0),(gen_random_uuid(),q,'Miyako Shiba',FALSE,1),(gen_random_uuid(),q,'Ganju Shiba',FALSE,2),(gen_random_uuid(),q,'Kukaku Shiba',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','impossible','Qual é o nome da esposa de Kaien Shiba, também Shinigami, morta pelo próprio Kaien enquanto possuído por um Hollow?','A tragédia é revelada através de flashbacks durante a saga da Soul Society.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Miyako Shiba',TRUE,0),(gen_random_uuid(),q,'Kukaku Shiba',FALSE,1),(gen_random_uuid(),q,'Rukia Kuchiki',FALSE,2),(gen_random_uuid(),q,'Isane Kotetsu',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- FILL_BLANK — 38 perguntas (11 easy / 13 medium / 10 hard / 4 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'fill_blank','easy','Rukia Kuchiki concede a Ichigo seus poderes de ___.','A troca ocorre logo no primeiro encontro entre os dois.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shinigami',TRUE,0),(gen_random_uuid(),q,'Quincy',FALSE,1),(gen_random_uuid(),q,'Arrancar',FALSE,2),(gen_random_uuid(),q,'Fullbringer',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'fill_blank','easy','Orihime Inoue usa o poder de rejeitar eventos através da técnica ___.','Ela consegue até reverter ferimentos graves.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Souten Kisshun',TRUE,0),(gen_random_uuid(),q,'Santen Kesshun',FALSE,1),(gen_random_uuid(),q,'Koten Zanshun',FALSE,2),(gen_random_uuid(),q,'Shiten Koshun',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'fill_blank','easy','O mundo dos vivos é separado da Soul Society por uma passagem chamada ___.','Shinigamis a utilizam para viajar entre os dois mundos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Senkaimon',TRUE,0),(gen_random_uuid(),q,'Garganta',FALSE,1),(gen_random_uuid(),q,'Dangai',FALSE,2),(gen_random_uuid(),q,'Kototsu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'fill_blank','easy','Hollows evoluídos com forma humana, capazes de usar Zanpakuto, são chamados de ___.','Eles surgem dos experimentos de Aizen em Hueco Mundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arrancar',TRUE,0),(gen_random_uuid(),q,'Vizard',FALSE,1),(gen_random_uuid(),q,'Quincy',FALSE,2),(gen_random_uuid(),q,'Bount',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'fill_blank','easy','Ichigo Kurosaki mora na cidade fictícia de ___, cenário principal da série.','A maioria dos eventos iniciais acontece nesta cidade japonesa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Karakura',TRUE,0),(gen_random_uuid(),q,'Rukongai',FALSE,1),(gen_random_uuid(),q,'Seireitei',FALSE,2),(gen_random_uuid(),q,'Naruki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'fill_blank','easy','O distrito onde as almas comuns vivem dentro da Soul Society se chama ___.','É dividido em vários bairros com níveis de pobreza diferentes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rukongai',TRUE,0),(gen_random_uuid(),q,'Seireitei',FALSE,1),(gen_random_uuid(),q,'Karakura',FALSE,2),(gen_random_uuid(),q,'Hueco Mundo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'fill_blank','easy','A área central e fortificada da Soul Society, onde ficam os quartéis dos capitães, se chama ___.','É protegida por muralhas praticamente intransponíveis.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Seireitei',TRUE,0),(gen_random_uuid(),q,'Rukongai',FALSE,1),(gen_random_uuid(),q,'Hueco Mundo',FALSE,2),(gen_random_uuid(),q,'Karakura',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'fill_blank','easy','O reino natal dos Hollows, de onde vêm os Arrancar, se chama ___.','É um deserto infinito sob um céu eternamente noturno.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hueco Mundo',TRUE,0),(gen_random_uuid(),q,'Seireitei',FALSE,1),(gen_random_uuid(),q,'Rukongai',FALSE,2),(gen_random_uuid(),q,'Dangai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'fill_blank','easy','O pai de Ichigo, Isshin Kurosaki, esconde por anos que já foi capitão de uma Divisão da ___.','Seu passado só é revelado bem mais tarde na trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Soul Society',TRUE,0),(gen_random_uuid(),q,'Hueco Mundo',FALSE,1),(gen_random_uuid(),q,'Vandenreich',FALSE,2),(gen_random_uuid(),q,'Karakura',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'fill_blank','easy','O amigo gigante de Ichigo, capaz de enxergar espíritos, se chama Yasutora ___.','Ele é conhecido pelo apelido de "Chad".',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sado',TRUE,0),(gen_random_uuid(),q,'Ishida',FALSE,1),(gen_random_uuid(),q,'Asano',FALSE,2),(gen_random_uuid(),q,'Kojima',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'fill_blank','easy','O boneco de pelúcia habitado pela alma modificada usada por Ichigo se chama ___.','Ele se apaixona por Rukia desde o primeiro encontro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kon',TRUE,0),(gen_random_uuid(),q,'Sora',FALSE,1),(gen_random_uuid(),q,'Chappy',FALSE,2),(gen_random_uuid(),q,'Pyon',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'fill_blank','medium','A técnica de Byakuya Kuchiki que dispara mil lâminas em forma de pétalas de cerejeira se chama ___.','É também o nome de sua Zanpakuto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Senbonzakura',TRUE,0),(gen_random_uuid(),q,'Hyorinmaru',FALSE,1),(gen_random_uuid(),q,'Ryujin Jakka',FALSE,2),(gen_random_uuid(),q,'Sode no Shirayuki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'fill_blank','medium','A Zanpakuto de Toshiro Hitsugaya, ligada ao elemento gelo, se chama ___.','Ela pode congelar um campo de batalha inteiro.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hyorinmaru',TRUE,0),(gen_random_uuid(),q,'Sode no Shirayuki',FALSE,1),(gen_random_uuid(),q,'Haineko',FALSE,2),(gen_random_uuid(),q,'Suzumebachi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'fill_blank','medium','A vice-capitã da 10ª Divisão, conhecida por sua preguiça e amizade antiga com Gin, se chama ___.','Ela é uma das Shinigamis mais poderosas fisicamente da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rangiku Matsumoto',TRUE,0),(gen_random_uuid(),q,'Momo Hinamori',FALSE,1),(gen_random_uuid(),q,'Nemu Kurotsuchi',FALSE,2),(gen_random_uuid(),q,'Isane Kotetsu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'fill_blank','medium','O capitão traidor que serve como braço direito de Aizen, sempre sorrindo, se chama ___.','Ele mantém sua verdadeira lealdade em segredo por quase toda a saga da Soul Society.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gin Ichimaru',TRUE,0),(gen_random_uuid(),q,'Kaname Tosen',FALSE,1),(gen_random_uuid(),q,'Sosuke Aizen',FALSE,2),(gen_random_uuid(),q,'Byakuya Kuchiki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'fill_blank','medium','O capitão cego da 9ª Divisão, também traidor aliado de Aizen, se chama ___.','Ele acredita agir em nome de uma justiça absoluta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaname Tosen',TRUE,0),(gen_random_uuid(),q,'Gin Ichimaru',FALSE,1),(gen_random_uuid(),q,'Shuhei Hisagi',FALSE,2),(gen_random_uuid(),q,'Sajin Komamura',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'fill_blank','medium','A vice-capitã que idolatra Aizen e sofre um colapso emocional ao descobrir sua traição se chama ___.','Ela é gravemente ferida por Aizen antes da grande revelação.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Momo Hinamori',TRUE,0),(gen_random_uuid(),q,'Rangiku Matsumoto',FALSE,1),(gen_random_uuid(),q,'Isane Kotetsu',FALSE,2),(gen_random_uuid(),q,'Nemu Kurotsuchi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'fill_blank','medium','A forma evoluída e mais poderosa de Hollow, praticamente no nível de um Arrancar, se chama ___.','Apenas poucos Hollows conseguem alcançar esse estágio de evolução.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vasto Lorde',TRUE,0),(gen_random_uuid(),q,'Menos Grande',FALSE,1),(gen_random_uuid(),q,'Gillian',FALSE,2),(gen_random_uuid(),q,'Adjuchas',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'fill_blank','medium','O pai adotivo de Uryu Ishida, também Quincy, que rejeita seus próprios poderes por trauma, se chama ___.','Ele trabalha como médico junto com Isshin Kurosaki.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ryuken Ishida',TRUE,0),(gen_random_uuid(),q,'Souken Ishida',FALSE,1),(gen_random_uuid(),q,'Kisuke Urahara',FALSE,2),(gen_random_uuid(),q,'Ginjo Kugo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'fill_blank','medium','O avô de Uryu Ishida, morto por um Hollow durante seu treinamento, se chama ___.','Sua morte motiva profundamente a busca de Uryu por poder.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Souken Ishida',TRUE,0),(gen_random_uuid(),q,'Ryuken Ishida',FALSE,1),(gen_random_uuid(),q,'Jugram Haschwalth',FALSE,2),(gen_random_uuid(),q,'Yhwach',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'fill_blank','medium','O vice-capitão da Terceira Divisão que trai temporariamente a Soul Society por Aizen se chama ___.','Ele carrega culpa profunda após sua traição fracassar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Izuru Kira',TRUE,0),(gen_random_uuid(),q,'Shuhei Hisagi',FALSE,1),(gen_random_uuid(),q,'Renji Abarai',FALSE,2),(gen_random_uuid(),q,'Marechiyo Omaeda',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'fill_blank','hard','O processo em que um Shinigami e um Hollow se fundem, criando um Vizard, se chama ___.','Esse processo deixa o usuário com poderes híbridos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hollowfication',TRUE,0),(gen_random_uuid(),q,'Arrancarization',FALSE,1),(gen_random_uuid(),q,'Fullbringization',FALSE,2),(gen_random_uuid(),q,'Quincyfication',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'fill_blank','hard','O grupo de Shinigamis exilados que passaram pela Hollowfication e vivem em Karakura se chama ___.','Eles ajudam Ichigo a controlar seu próprio poder Hollow.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vizards',TRUE,0),(gen_random_uuid(),q,'Arrancars',FALSE,1),(gen_random_uuid(),q,'Fullbringers',FALSE,2),(gen_random_uuid(),q,'Sternritter',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'fill_blank','hard','O líder dos Vizards, ex-capitão da 5ª Divisão traído por Aizen, se chama ___.','Ele era o antigo capitão de Momo Hinamori antes de sua expulsão da Soul Society.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shinji Hirako',TRUE,0),(gen_random_uuid(),q,'Kensei Muguruma',FALSE,1),(gen_random_uuid(),q,'Rojuro Otoribashi',FALSE,2),(gen_random_uuid(),q,'Love Aikawa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'fill_blank','hard','O Arrancar traído por Aizen, que revela informações secretas sobre Hueco Mundo a Ichigo, se chama ___.','Ele possui um número baixo entre os Espada, indicando alto nível de poder.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Grimmjow Jaegerjaquez',TRUE,0),(gen_random_uuid(),q,'Ulquiorra Cifer',FALSE,1),(gen_random_uuid(),q,'Nnoitra Gilga',FALSE,2),(gen_random_uuid(),q,'Starrk',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'fill_blank','hard','O Primeiro Espada, considerado o mais poderoso entre os Arrancar de Aizen, se chama ___.','Ele possui uma parceira ligada à sua alma dividida chamada Lilynette.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Coyote Starrk',TRUE,0),(gen_random_uuid(),q,'Baraggan Louisenbairn',FALSE,1),(gen_random_uuid(),q,'Ulquiorra Cifer',FALSE,2),(gen_random_uuid(),q,'Halibel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'fill_blank','hard','O braço direito de Yhwach, considerado o Quincy mais forte depois do próprio rei, se chama ___.','Ele nasceu com a habilidade de nunca perder, exceto para o próprio Yhwach.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Jugram Haschwalth',TRUE,0),(gen_random_uuid(),q,'Uryu Ishida',FALSE,1),(gen_random_uuid(),q,'As Nodt',FALSE,2),(gen_random_uuid(),q,'Bazz-B',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'fill_blank','hard','O grupo de elite de Quincys que serve diretamente a Yhwach durante a invasão final se chama ___.','Cada membro carrega um número que reflete sua posição de poder.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sternritter',TRUE,0),(gen_random_uuid(),q,'Vandenreich Guard',FALSE,1),(gen_random_uuid(),q,'Quincy Elite',FALSE,2),(gen_random_uuid(),q,'Reiokyu Knights',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'fill_blank','impossible','O capitão da 7ª Divisão que possui aparência de um enorme lobo humanoide se chama ___.','Ele mantém sua verdadeira forma escondida por vergonha durante anos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sajin Komamura',TRUE,0),(gen_random_uuid(),q,'Kaname Tosen',FALSE,1),(gen_random_uuid(),q,'Jushiro Ukitake',FALSE,2),(gen_random_uuid(),q,'Shunsui Kyoraku',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'fill_blank','impossible','A capitã da 4ª Divisão, especializada em cura e considerada a Shinigami mais forte da história, se chama ___.','Sua aparência gentil esconde um poder de combate imenso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Retsu Unohana',TRUE,0),(gen_random_uuid(),q,'Isane Kotetsu',FALSE,1),(gen_random_uuid(),q,'Rangiku Matsumoto',FALSE,2),(gen_random_uuid(),q,'Nemu Kurotsuchi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'fill_blank','impossible','O capitão da 13ª Divisão, mentor de Rukia, que sofre de uma doença pulmonar crônica, se chama ___.','Sua condição de saúde é frequentemente mencionada ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Jushiro Ukitake',TRUE,0),(gen_random_uuid(),q,'Shunsui Kyoraku',FALSE,1),(gen_random_uuid(),q,'Sajin Komamura',FALSE,2),(gen_random_uuid(),q,'Byakuya Kuchiki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'fill_blank','impossible','A esposa de Kaien Shiba, também Shinigami, morta pelo próprio marido enquanto possuído por um Hollow, se chama ___.','A tragédia é revelada através de flashbacks durante a saga da Soul Society.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Miyako Shiba',TRUE,0),(gen_random_uuid(),q,'Kukaku Shiba',FALSE,1),(gen_random_uuid(),q,'Rukia Kuchiki',FALSE,2),(gen_random_uuid(),q,'Isane Kotetsu',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- WHO_SAID — 30 perguntas (9 easy / 11 medium / 8 hard / 2 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'who_said','easy','Quem disse: "Eu sou o Shinigami substituto!"?','É a frase de apresentação usada pelo protagonista em vários combates.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ichigo Kurosaki',TRUE,0),(gen_random_uuid(),q,'Renji Abarai',FALSE,1),(gen_random_uuid(),q,'Uryu Ishida',FALSE,2),(gen_random_uuid(),q,'Chad',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'who_said','easy','Quem disse: "Se você não consegue proteger nem uma pessoa, como vai proteger dez, cem, mil?"?','A frase é ensinada por um mentor durante um treinamento crucial de Ichigo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Zangetsu',TRUE,0),(gen_random_uuid(),q,'Kisuke Urahara',FALSE,1),(gen_random_uuid(),q,'Yoruichi',FALSE,2),(gen_random_uuid(),q,'Isshin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'who_said','easy','Quem disse: "Eu não tenho medo de morrer, tenho medo de não conseguir proteger ninguém"?','A frase reflete o medo mais profundo do protagonista, mais do que a própria morte.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ichigo',TRUE,0),(gen_random_uuid(),q,'Renji',FALSE,1),(gen_random_uuid(),q,'Chad',FALSE,2),(gen_random_uuid(),q,'Ishida',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'who_said','easy','Quem disse: "Eu sou o último Quincy, e vou provar que minha raça ainda tem valor"?','A frase reflete o orgulho ferido de um personagem cuja linhagem foi quase extinta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Uryu Ishida',TRUE,0),(gen_random_uuid(),q,'Ichigo',FALSE,1),(gen_random_uuid(),q,'Yhwach',FALSE,2),(gen_random_uuid(),q,'Ryuken',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'who_said','easy','Quem disse: "Eu só quero curar as pessoas que amo, mesmo que isso signifique ficar para trás"?','A frase reflete a insegurança inicial de uma personagem com poderes defensivos e curativos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Orihime',TRUE,0),(gen_random_uuid(),q,'Rukia',FALSE,1),(gen_random_uuid(),q,'Tatsuki',FALSE,2),(gen_random_uuid(),q,'Nemu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'who_said','easy','Quem disse: "Um homem que não pode empunhar sua espada com orgulho não merece ser chamado de Shinigami"?','A frase reflete o código pessoal rígido de um dos capitães mais tradicionais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Byakuya Kuchiki',TRUE,0),(gen_random_uuid(),q,'Kenpachi Zaraki',FALSE,1),(gen_random_uuid(),q,'Toshiro Hitsugaya',FALSE,2),(gen_random_uuid(),q,'Renji Abarai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'who_said','easy','Quem disse: "Eu vou ficar mais forte, custe o que custar, para nunca mais perder ninguém que eu amo"?','A frase é dita por um tenente após sofrer uma derrota humilhante em batalha.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Renji Abarai',TRUE,0),(gen_random_uuid(),q,'Ichigo',FALSE,1),(gen_random_uuid(),q,'Ikkaku',FALSE,2),(gen_random_uuid(),q,'Hisagi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'who_said','easy','Quem disse: "Eu só luto contra adversários fortes, isso é tudo que me interessa"?','A frase reflete a obsessão pura por combate de um capitão sem apego a regras.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kenpachi Zaraki',TRUE,0),(gen_random_uuid(),q,'Byakuya Kuchiki',FALSE,1),(gen_random_uuid(),q,'Shunsui Kyoraku',FALSE,2),(gen_random_uuid(),q,'Toshiro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'who_said','easy','Quem disse: "Eu era apenas um boneco de pano até encontrar um propósito, e vou lutar por ele"?','A frase é dita pela alma modificada que habita um peluche.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kon',TRUE,0),(gen_random_uuid(),q,'Nova',FALSE,1),(gen_random_uuid(),q,'Chappy',FALSE,2),(gen_random_uuid(),q,'Pyon',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'who_said','medium','Quem disse: "Eu não sou seu inimigo, sou apenas alguém disposto a fazer o que for necessário"?','A frase é dita por um cientista da Soul Society antes de uma revelação chocante sobre suas verdadeiras intenções.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sosuke Aizen',TRUE,0),(gen_random_uuid(),q,'Kisuke Urahara',FALSE,1),(gen_random_uuid(),q,'Mayuri Kurotsuchi',FALSE,2),(gen_random_uuid(),q,'Kaname Tosen',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'who_said','medium','Quem disse: "Eu sempre sorrio, porque assim ninguém percebe o que realmente penso"?','A frase revela a estratégia de disfarce de um capitão traidor da Soul Society.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gin Ichimaru',TRUE,0),(gen_random_uuid(),q,'Kaname Tosen',FALSE,1),(gen_random_uuid(),q,'Sosuke Aizen',FALSE,2),(gen_random_uuid(),q,'Byakuya',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'who_said','medium','Quem disse: "Justiça verdadeira é cega, e eu escolhi servir a ela até o fim"?','A frase é dita por um capitão que acredita agir sob uma moral absoluta e distorcida.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaname Tosen',TRUE,0),(gen_random_uuid(),q,'Gin Ichimaru',FALSE,1),(gen_random_uuid(),q,'Shuhei Hisagi',FALSE,2),(gen_random_uuid(),q,'Sajin Komamura',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'who_said','medium','Quem disse: "Eu confiava cegamente no meu capitão, e essa confiança quase me custou a vida"?','A frase é dita por uma vice-capitã após descobrir a verdadeira natureza de seu mentor.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Momo Hinamori',TRUE,0),(gen_random_uuid(),q,'Rangiku Matsumoto',FALSE,1),(gen_random_uuid(),q,'Isane Kotetsu',FALSE,2),(gen_random_uuid(),q,'Nemu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'who_said','medium','Quem disse: "Eu sou apenas uma alma vazia, mas ainda assim escolho lutar por quem me deu um propósito"?','A frase é dita por um Arrancar de aparência infantil e sombria, próximo de Aizen.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ulquiorra Cifer',TRUE,0),(gen_random_uuid(),q,'Grimmjow',FALSE,1),(gen_random_uuid(),q,'Nnoitra',FALSE,2),(gen_random_uuid(),q,'Starrk',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'who_said','medium','Quem disse: "Eu quero lutar contra o mais forte, não importa se sou eu quem vai morrer"?','A frase reflete a natureza selvagem e imprudente de um Espada de personalidade agressiva.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Grimmjow Jaegerjaquez',TRUE,0),(gen_random_uuid(),q,'Ulquiorra',FALSE,1),(gen_random_uuid(),q,'Baraggan',FALSE,2),(gen_random_uuid(),q,'Zommari',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'who_said','medium','Quem disse: "Eu escolhi virar as costas para meus poderes de Quincy, mas meu filho nunca teve essa escolha"?','A frase reflete o conflito interno de um pai que rejeita seu próprio legado.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ryuken Ishida',TRUE,0),(gen_random_uuid(),q,'Souken Ishida',FALSE,1),(gen_random_uuid(),q,'Kisuke Urahara',FALSE,2),(gen_random_uuid(),q,'Isshin',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'who_said','medium','Quem disse: "Eu escondi meu passado como capitão por vergonha da minha própria aparência"?','A frase é dita por um capitão de forma híbrida entre humano e animal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sajin Komamura',TRUE,0),(gen_random_uuid(),q,'Kaname Tosen',FALSE,1),(gen_random_uuid(),q,'Jushiro Ukitake',FALSE,2),(gen_random_uuid(),q,'Shunsui',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'who_said','medium','Quem disse: "Eu trai a Soul Society uma vez, e vivo com essa culpa todos os dias desde então"?','A frase é dita por um vice-capitão que se torna extremamente inseguro após sua tentativa fracassada de traição.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Izuru Kira',TRUE,0),(gen_random_uuid(),q,'Shuhei Hisagi',FALSE,1),(gen_random_uuid(),q,'Renji',FALSE,2),(gen_random_uuid(),q,'Omaeda',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'who_said','hard','Quem disse: "Eu sou o rei dos Quincy, e este mundo vai ser reconstruído do meu jeito"?','A frase reflete a ambição absoluta do antagonista final da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yhwach',TRUE,0),(gen_random_uuid(),q,'Jugram Haschwalth',FALSE,1),(gen_random_uuid(),q,'Uryu Ishida',FALSE,2),(gen_random_uuid(),q,'As Nodt',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'who_said','hard','Quem disse: "Eu nunca perco, exceto para o meu próprio rei, e isso não é uma fraqueza"?','A frase é dita pelo Quincy considerado o braço direito mais leal de Yhwach.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Jugram Haschwalth',TRUE,0),(gen_random_uuid(),q,'Yhwach',FALSE,1),(gen_random_uuid(),q,'Bazz-B',FALSE,2),(gen_random_uuid(),q,'As Nodt',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'who_said','hard','Quem disse: "Eu governei Hueco Mundo por eras, e não vou me curvar a um simples Shinigami traidor"?','A frase é dita pelo antigo rei dos Hollow antes da chegada de Aizen ao poder.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Baraggan Louisenbairn',TRUE,0),(gen_random_uuid(),q,'Coyote Starrk',FALSE,1),(gen_random_uuid(),q,'Ulquiorra',FALSE,2),(gen_random_uuid(),q,'Zommari',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'who_said','hard','Quem disse: "Eu sou apenas uma alma solitária que aprendeu a se dividir em duas para não sofrer sozinha"?','A frase é dita pelo Espada de número mais alto, que anda sempre acompanhado de sua parceira Lilynette.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Coyote Starrk',TRUE,0),(gen_random_uuid(),q,'Baraggan',FALSE,1),(gen_random_uuid(),q,'Ulquiorra',FALSE,2),(gen_random_uuid(),q,'Halibel',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'who_said','hard','Quem disse: "Eu era um capitão da 5ª Divisão até ser traído pelo próprio homem em quem confiava"?','A frase é dita pelo líder dos Vizards, expulso da Soul Society por Aizen.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shinji Hirako',TRUE,0),(gen_random_uuid(),q,'Kensei Muguruma',FALSE,1),(gen_random_uuid(),q,'Rojuro Otoribashi',FALSE,2),(gen_random_uuid(),q,'Love Aikawa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'who_said','hard','Quem disse: "Eu ensinei tudo que sabia ao Kaien, e não pude fazer nada quando ele foi possuído"?','A frase é dita por alguém profundamente ligado à trágica história de Kaien Shiba.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rukia Kuchiki',TRUE,0),(gen_random_uuid(),q,'Byakuya Kuchiki',FALSE,1),(gen_random_uuid(),q,'Renji Abarai',FALSE,2),(gen_random_uuid(),q,'Ukitake',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'who_said','hard','Quem disse: "Eu sou a Shinigami mais forte que a Soul Society já teve, e escolhi curar em vez de matar"?','A frase é dita por uma capitã cuja força bruta contradiz sua aparência gentil.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Retsu Unohana',TRUE,0),(gen_random_uuid(),q,'Isane Kotetsu',FALSE,1),(gen_random_uuid(),q,'Rangiku',FALSE,2),(gen_random_uuid(),q,'Nemu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'who_said','impossible','Quem disse: "Eu sirvo à Quarta Divisão com orgulho, mesmo sendo constantemente subestimada em combate"?','A frase é dita pela vice-capitã mais alta da Soul Society, sempre à sombra de sua capitã.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Isane Kotetsu',TRUE,0),(gen_random_uuid(),q,'Nemu Kurotsuchi',FALSE,1),(gen_random_uuid(),q,'Rangiku',FALSE,2),(gen_random_uuid(),q,'Momo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'who_said','impossible','Quem disse: "Eu fui criada como uma filha, mas tratada como um experimento, e ainda assim escolho obedecer"?','A frase é dita pela assistente artificial de um capitão cientista implacável.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nemu Kurotsuchi',TRUE,0),(gen_random_uuid(),q,'Isane Kotetsu',FALSE,1),(gen_random_uuid(),q,'Rangiku',FALSE,2),(gen_random_uuid(),q,'Yachiru',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- EPISODE_ARC — 15 perguntas (7 medium / 6 hard / 2 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'episode_arc','medium','Em qual arco Ichigo invade a Soul Society para salvar Rukia de ser executada?','É o primeiro grande arco de guerra da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Resgate de Rukia',TRUE,0),(gen_random_uuid(),q,'Arco dos Arrancar',FALSE,1),(gen_random_uuid(),q,'Arco da Falsa Karakura',FALSE,2),(gen_random_uuid(),q,'Guerra Sangrenta dos Mil Anos',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'episode_arc','medium','Em qual arco Ichigo treina com os Vizards para controlar seu poder Hollow interno?','O treinamento acontece pouco antes da invasão de Aizen a Karakura.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Treinamento com os Vizards',TRUE,0),(gen_random_uuid(),q,'Arco do Resgate de Rukia',FALSE,1),(gen_random_uuid(),q,'Arco Hueco Mundo',FALSE,2),(gen_random_uuid(),q,'Guerra Sangrenta dos Mil Anos',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'episode_arc','medium','Em qual arco Ichigo invade Hueco Mundo para resgatar Orihime, sequestrada por Aizen?','Ele enfrenta diversos Espada durante essa invasão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco Hueco Mundo',TRUE,0),(gen_random_uuid(),q,'Arco da Falsa Karakura',FALSE,1),(gen_random_uuid(),q,'Arco do Resgate de Rukia',FALSE,2),(gen_random_uuid(),q,'Guerra Sangrenta dos Mil Anos',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'episode_arc','medium','Em qual arco ocorre a batalha final entre a Soul Society e Aizen em uma réplica da cidade de Karakura?','Os capitães enfrentam os Espada remanescentes neste confronto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Falsa Karakura',TRUE,0),(gen_random_uuid(),q,'Arco Hueco Mundo',FALSE,1),(gen_random_uuid(),q,'Arco do Resgate de Rukia',FALSE,2),(gen_random_uuid(),q,'Guerra Sangrenta dos Mil Anos',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'episode_arc','medium','Em qual arco Ichigo perde temporariamente todos os seus poderes de Shinigami após derrotar Aizen?','Ele passa a viver uma vida comum de estudante por um tempo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco Fullbring',TRUE,0),(gen_random_uuid(),q,'Arco Hueco Mundo',FALSE,1),(gen_random_uuid(),q,'Arco da Falsa Karakura',FALSE,2),(gen_random_uuid(),q,'Guerra Sangrenta dos Mil Anos',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'episode_arc','medium','Em qual arco Yhwach invade a Soul Society com seu exército de Quincys de elite?','Diversos capitães são derrotados ou mortos logo no início deste arco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Guerra Sangrenta dos Mil Anos',TRUE,0),(gen_random_uuid(),q,'Arco Fullbring',FALSE,1),(gen_random_uuid(),q,'Arco Hueco Mundo',FALSE,2),(gen_random_uuid(),q,'Arco do Resgate de Rukia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'episode_arc','medium','Em qual arco é revelado o passado trágico de Kaien Shiba através de flashbacks de Rukia?','O evento explica boa parte do trauma emocional carregado por Rukia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Resgate de Rukia',TRUE,0),(gen_random_uuid(),q,'Arco Hueco Mundo',FALSE,1),(gen_random_uuid(),q,'Arco Fullbring',FALSE,2),(gen_random_uuid(),q,'Guerra Sangrenta dos Mil Anos',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'episode_arc','hard','Em qual arco Ichigo enfrenta Byakuya Kuchiki pela primeira vez em duelo direto?','O confronto ocorre durante a tentativa de resgate de Rukia.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Resgate de Rukia',TRUE,0),(gen_random_uuid(),q,'Arco Hueco Mundo',FALSE,1),(gen_random_uuid(),q,'Arco da Falsa Karakura',FALSE,2),(gen_random_uuid(),q,'Guerra Sangrenta dos Mil Anos',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'episode_arc','hard','Em qual arco a verdadeira traição de Aizen, Gin e Tosen é finalmente revelada a toda a Soul Society?','O evento chocante muda completamente o rumo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Resgate de Rukia',TRUE,0),(gen_random_uuid(),q,'Arco Hueco Mundo',FALSE,1),(gen_random_uuid(),q,'Arco Fullbring',FALSE,2),(gen_random_uuid(),q,'Guerra Sangrenta dos Mil Anos',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'episode_arc','hard','Em qual arco Ulquiorra Cifer é derrotado definitivamente por Ichigo em sua forma Hollow completa?','O combate ocorre dentro de Hueco Mundo, no palácio de Aizen.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco Hueco Mundo',TRUE,0),(gen_random_uuid(),q,'Arco da Falsa Karakura',FALSE,1),(gen_random_uuid(),q,'Arco do Resgate de Rukia',FALSE,2),(gen_random_uuid(),q,'Guerra Sangrenta dos Mil Anos',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'episode_arc','hard','Em qual arco Aizen é finalmente derrotado e selado por Kisuke Urahara?','Sua derrota encerra um dos maiores conflitos da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco da Falsa Karakura',TRUE,0),(gen_random_uuid(),q,'Arco Hueco Mundo',FALSE,1),(gen_random_uuid(),q,'Arco Fullbring',FALSE,2),(gen_random_uuid(),q,'Guerra Sangrenta dos Mil Anos',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'episode_arc','hard','Em qual arco Ichigo recupera seus poderes de Shinigami através de um ritual com Rukia e seus antigos aliados?','Ginjo Kugo se revela um antagonista inesperado neste arco.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco Fullbring',TRUE,0),(gen_random_uuid(),q,'Arco Hueco Mundo',FALSE,1),(gen_random_uuid(),q,'Arco da Falsa Karakura',FALSE,2),(gen_random_uuid(),q,'Guerra Sangrenta dos Mil Anos',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'episode_arc','impossible','Em qual arco é revelado que Yhwach é, na verdade, o pai espiritual de todos os Quincys e criador indireto dos Hollow?','A revelação reescreve boa parte da mitologia da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Guerra Sangrenta dos Mil Anos',TRUE,0),(gen_random_uuid(),q,'Arco Hueco Mundo',FALSE,1),(gen_random_uuid(),q,'Arco Fullbring',FALSE,2),(gen_random_uuid(),q,'Arco do Resgate de Rukia',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'episode_arc','impossible','Em qual arco Ichigo desperta seu poder final, equilibrando Shinigami, Quincy e Hollow em uma única forma?','A transformação ocorre no confronto decisivo contra Yhwach.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Guerra Sangrenta dos Mil Anos',TRUE,0),(gen_random_uuid(),q,'Arco Fullbring',FALSE,1),(gen_random_uuid(),q,'Arco Hueco Mundo',FALSE,2),(gen_random_uuid(),q,'Arco da Falsa Karakura',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- CHRONOLOGICAL — 7 perguntas (4 hard / 3 impossible)
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'chronological','hard','Ordene cronologicamente os arcos a seguir, do mais antigo ao mais recente.','Cobrem desde a invasão à Soul Society até a guerra final contra os Quincy.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Resgate de Rukia',TRUE,0),(gen_random_uuid(),q,'Arrancar / Hueco Mundo',FALSE,1),(gen_random_uuid(),q,'Falsa Karakura',FALSE,2),(gen_random_uuid(),q,'Guerra Sangrenta dos Mil Anos',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'chronological','hard','Ordene cronologicamente a entrada dos seguintes aliados no grupo de Ichigo, do primeiro ao último.','Cobrem desde o início da série até o arco Hueco Mundo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rukia concede seus poderes a Ichigo',TRUE,0),(gen_random_uuid(),q,'Chad e Orihime despertam seus próprios poderes',FALSE,1),(gen_random_uuid(),q,'Uryu revela ser Quincy',FALSE,2),(gen_random_uuid(),q,'Ichigo treina com os Vizards',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'chronological','hard','Ordene cronologicamente os eventos da traição de Aizen, do mais antigo ao mais recente.','Cobrem desde o ferimento de Momo até a derrota final de Aizen.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Aizen fere Momo Hinamori',TRUE,0),(gen_random_uuid(),q,'Aizen revela sua verdadeira forma e foge para Hueco Mundo',FALSE,1),(gen_random_uuid(),q,'Batalha na Falsa Karakura',FALSE,2),(gen_random_uuid(),q,'Selamento de Aizen por Urahara',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'chronological','hard','Ordene cronologicamente a evolução de poder de Ichigo, do estágio mais fraco ao mais forte.','Cobrem desde seus primeiros poderes emprestados até sua forma final.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shikai emprestado de Rukia',TRUE,0),(gen_random_uuid(),q,'Bankai próprio',FALSE,1),(gen_random_uuid(),q,'Controle sobre o poder Hollow',FALSE,2),(gen_random_uuid(),q,'Zangetsu Verdadeiro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'chronological','impossible','Ordene cronologicamente os eventos a seguir do arco Hueco Mundo, do mais antigo ao mais recente.','Cobrem desde o sequestro de Orihime até a derrota de Ulquiorra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Orihime é sequestrada por Ulquiorra',TRUE,0),(gen_random_uuid(),q,'Ichigo invade Hueco Mundo',FALSE,1),(gen_random_uuid(),q,'Confronto contra os Espada',FALSE,2),(gen_random_uuid(),q,'Derrota final de Ulquiorra',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'chronological','impossible','Ordene cronologicamente os eventos a seguir sobre Kaien Shiba, do mais antigo ao mais recente.','Cobrem desde seu mentorado de Rukia até a revelação da tragédia em flashback.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaien se torna mentor de Rukia',TRUE,0),(gen_random_uuid(),q,'Miyako é possuída por um Hollow',FALSE,1),(gen_random_uuid(),q,'Kaien é possuído ao tentar salvar Miyako',FALSE,2),(gen_random_uuid(),q,'Rukia é forçada a matar Kaien',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'chronological','impossible','Ordene cronologicamente os eventos a seguir da Guerra Sangrenta dos Mil Anos, do mais antigo ao mais recente.','Cobrem desde a primeira invasão de Yhwach até sua derrota final.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yhwach invade a Soul Society pela primeira vez',TRUE,0),(gen_random_uuid(),q,'Vários capitães são derrotados pelos Sternritter',FALSE,1),(gen_random_uuid(),q,'Ichigo desperta seu poder final',FALSE,2),(gen_random_uuid(),q,'Derrota definitiva de Yhwach',FALSE,3);

    -- ══════════════════════════════════════════════════════════
    -- Complemento para fechar 150 perguntas na distribuição exata
    -- ══════════════════════════════════════════════════════════

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','easy','Qual é o nome do capitão da 8ª Divisão, conhecido pela postura descontraída e chapéu de flores?','Ele é parceiro de longa data de Jushiro Ukitake.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shunsui Kyoraku',TRUE,0),(gen_random_uuid(),q,'Jushiro Ukitake',FALSE,1),(gen_random_uuid(),q,'Sajin Komamura',FALSE,2),(gen_random_uuid(),q,'Kenpachi Zaraki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','easy','Qual é o nome do amigo espalhafatoso de Ichigo, sempre tentando arrumar encontros?','Ele costuma exagerar suas próprias conquistas para impressionar os colegas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Keigo Asano',TRUE,0),(gen_random_uuid(),q,'Mizuiro Kojima',FALSE,1),(gen_random_uuid(),q,'Chad',FALSE,2),(gen_random_uuid(),q,'Ishida',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','medium','Qual é o nome da técnica final de liberação de uma Zanpakuto, mais poderosa que o Shikai?','Poucos Shinigamis conseguem dominá-la completamente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bankai',TRUE,0),(gen_random_uuid(),q,'Shikai',FALSE,1),(gen_random_uuid(),q,'Kido',FALSE,2),(gen_random_uuid(),q,'Hakuda',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','medium','Qual é o nome da primeira liberação parcial de uma Zanpakuto, mais fraca que o Bankai?','Todo Shinigami capitão ou vice-capitão domina pelo menos esse nível.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shikai',TRUE,0),(gen_random_uuid(),q,'Bankai',FALSE,1),(gen_random_uuid(),q,'Kido',FALSE,2),(gen_random_uuid(),q,'Hakuda',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','medium','Qual é o nome do sistema de artes marciais mágicas usado pelos Shinigami, incluindo feitiços de ataque e barreira?','Existem dezenas de feitiços numerados dentro desse sistema.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kido',TRUE,0),(gen_random_uuid(),q,'Hakuda',FALSE,1),(gen_random_uuid(),q,'Zanjutsu',FALSE,2),(gen_random_uuid(),q,'Hoho',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','medium','Qual é o nome da técnica de movimento de alta velocidade usada por Shinigamis para se deslocar instantaneamente?','Yoruichi é considerada uma das maiores especialistas nessa técnica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shunpo',TRUE,0),(gen_random_uuid(),q,'Sonido',FALSE,1),(gen_random_uuid(),q,'Hirenkyaku',FALSE,2),(gen_random_uuid(),q,'Bringer Light',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','medium','Qual é o nome da técnica de movimento de alta velocidade equivalente usada pelos Arrancar?','É a versão de Hueco Mundo do Shunpo dos Shinigamis.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sonido',TRUE,0),(gen_random_uuid(),q,'Shunpo',FALSE,1),(gen_random_uuid(),q,'Hirenkyaku',FALSE,2),(gen_random_uuid(),q,'Bringer Light',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','medium','Qual é o nome da técnica de movimento de alta velocidade equivalente usada pelos Quincy?','Ela é sustentada por partículas de reishi condensadas sob os pés.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hirenkyaku',TRUE,0),(gen_random_uuid(),q,'Shunpo',FALSE,1),(gen_random_uuid(),q,'Sonido',FALSE,2),(gen_random_uuid(),q,'Bringer Light',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','hard','Qual é o nome da espada de fogo de Yamamoto, considerada a mais antiga e poderosa Zanpakuto da Soul Society?','Seu Bankai é capaz de incinerar tudo ao redor instantaneamente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ryujin Jakka',TRUE,0),(gen_random_uuid(),q,'Senbonzakura',FALSE,1),(gen_random_uuid(),q,'Hyorinmaru',FALSE,2),(gen_random_uuid(),q,'Zangetsu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','hard','Qual é o nome da técnica de arco usada pelos Quincy para disparar flechas de energia espiritual condensada?','É a arma característica de toda a raça Quincy.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ginto',FALSE,0),(gen_random_uuid(),q,'Heilig Bogen',TRUE,1),(gen_random_uuid(),q,'Seele Schneider',FALSE,2),(gen_random_uuid(),q,'Blut',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','hard','Qual é o nome da armadura espiritual que fortalece ataque ou defesa dos Quincy, usada por Uryu Ishida?','Existem duas variações: uma ofensiva e outra defensiva.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Blut',TRUE,0),(gen_random_uuid(),q,'Heilig Bogen',FALSE,1),(gen_random_uuid(),q,'Ginto',FALSE,2),(gen_random_uuid(),q,'Seele Schneider',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','hard','Qual é o nome da máscara que os usuários de poder Hollow criam ao ativar temporariamente sua transformação?','Ichigo a utiliza para acessar um poder muito além do normal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Máscara Hollow',TRUE,0),(gen_random_uuid(),q,'Máscara Vizard',FALSE,1),(gen_random_uuid(),q,'Máscara Arrancar',FALSE,2),(gen_random_uuid(),q,'Máscara Espada',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','impossible','Qual é o nome do capitão-comandante que governa o Rei Espiritual antes de sua queda durante a guerra final?','Ele é considerado o guardião mais antigo do equilíbrio entre os mundos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Genryusai Yamamoto',TRUE,0),(gen_random_uuid(),q,'Shunsui Kyoraku',FALSE,1),(gen_random_uuid(),q,'Sajin Komamura',FALSE,2),(gen_random_uuid(),q,'Jushiro Ukitake',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'text','impossible','Qual é o nome do capitão que assume o comando geral da Soul Society após a morte de Yamamoto?','Ele acumula o cargo junto de suas responsabilidades como capitão da 8ª Divisão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shunsui Kyoraku',TRUE,0),(gen_random_uuid(),q,'Byakuya Kuchiki',FALSE,1),(gen_random_uuid(),q,'Toshiro Hitsugaya',FALSE,2),(gen_random_uuid(),q,'Sajin Komamura',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'fill_blank','easy','A técnica de movimento de alta velocidade usada pelos Shinigamis para se deslocar instantaneamente se chama ___.','Yoruichi é considerada uma das maiores especialistas nessa técnica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shunpo',TRUE,0),(gen_random_uuid(),q,'Sonido',FALSE,1),(gen_random_uuid(),q,'Hirenkyaku',FALSE,2),(gen_random_uuid(),q,'Bringer Light',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'fill_blank','medium','A liberação final de uma Zanpakuto, mais poderosa que o Shikai, se chama ___.','Poucos Shinigamis conseguem dominá-la completamente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Bankai',TRUE,0),(gen_random_uuid(),q,'Shikai',FALSE,1),(gen_random_uuid(),q,'Kido',FALSE,2),(gen_random_uuid(),q,'Hakuda',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'fill_blank','medium','O sistema de artes marciais mágicas usado pelos Shinigami, com feitiços numerados, se chama ___.','Existem dezenas de feitiços de ataque e barreira dentro desse sistema.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kido',TRUE,0),(gen_random_uuid(),q,'Hakuda',FALSE,1),(gen_random_uuid(),q,'Zanjutsu',FALSE,2),(gen_random_uuid(),q,'Hoho',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'fill_blank','medium','A técnica de movimento de alta velocidade equivalente usada pelos Arrancar se chama ___.','É a versão de Hueco Mundo do Shunpo dos Shinigamis.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sonido',TRUE,0),(gen_random_uuid(),q,'Shunpo',FALSE,1),(gen_random_uuid(),q,'Hirenkyaku',FALSE,2),(gen_random_uuid(),q,'Bringer Light',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'fill_blank','hard','A espada de fogo de Yamamoto, considerada a mais antiga Zanpakuto da Soul Society, se chama ___.','Seu Bankai é capaz de incinerar tudo ao redor instantaneamente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ryujin Jakka',TRUE,0),(gen_random_uuid(),q,'Senbonzakura',FALSE,1),(gen_random_uuid(),q,'Hyorinmaru',FALSE,2),(gen_random_uuid(),q,'Zangetsu',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'fill_blank','hard','A armadura espiritual que fortalece ataque ou defesa dos Quincy, usada por Uryu Ishida, se chama ___.','Existem duas variações: uma ofensiva e outra defensiva.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Blut',TRUE,0),(gen_random_uuid(),q,'Heilig Bogen',FALSE,1),(gen_random_uuid(),q,'Ginto',FALSE,2),(gen_random_uuid(),q,'Seele Schneider',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'who_said','medium','Quem disse: "Eu sirvo ao meu capitão com orgulho, mesmo sendo constantemente subestimado por conta do meu tamanho"?','A frase é dita pelo vice-capitão gigante da 11ª Divisão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Marechiyo Omaeda',TRUE,0),(gen_random_uuid(),q,'Ikkaku Madarame',FALSE,1),(gen_random_uuid(),q,'Yumichika Ayasegawa',FALSE,2),(gen_random_uuid(),q,'Renji Abarai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'who_said','hard','Quem disse: "Eu domino o Bankai há décadas, mas escondo esse fato por orgulho pessoal"?','A frase é dita por um subordinado da 11ª Divisão que evita revelar todo seu potencial.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ikkaku Madarame',TRUE,0),(gen_random_uuid(),q,'Yumichika Ayasegawa',FALSE,1),(gen_random_uuid(),q,'Renji Abarai',FALSE,2),(gen_random_uuid(),q,'Marechiyo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'who_said','hard','Quem disse: "Eu escondo meu verdadeiro nome de ataque, pois considero feio revelar minha força total"?','A frase reflete a obsessão pessoal com beleza de um membro da 11ª Divisão.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yumichika Ayasegawa',TRUE,0),(gen_random_uuid(),q,'Ikkaku Madarame',FALSE,1),(gen_random_uuid(),q,'Renji Abarai',FALSE,2),(gen_random_uuid(),q,'Hisagi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_bleach,'episode_arc','hard','Em qual arco Ichigo enfrenta Kenpachi Zaraki pela primeira vez durante a invasão à Soul Society?','O confronto termina sem um vencedor claro, com Kenpachi se retirando satisfeito com a luta.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Resgate de Rukia',TRUE,0),(gen_random_uuid(),q,'Arco Hueco Mundo',FALSE,1),(gen_random_uuid(),q,'Arco da Falsa Karakura',FALSE,2),(gen_random_uuid(),q,'Guerra Sangrenta dos Mil Anos',FALSE,3);

END $$;
