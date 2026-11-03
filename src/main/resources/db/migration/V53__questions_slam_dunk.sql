-- V53: 150 perguntas para Slam Dunk (60 text, 38 fill_blank, 30 who_said, 15 episode_arc, 7 chronological)
DO $$
DECLARE
    v_sd UUID;
    v_system UUID := '00000000-0000-0000-0000-000000000001';
    q UUID;
BEGIN
    SELECT id INTO v_sd FROM animes WHERE slug = 'slam-dunk' LIMIT 1;

    -- ===================== TEXT (60) =====================
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','easy','Qual é o nome do protagonista de Slam Dunk, um garoto de cabelo vermelho famoso por ser rejeitado por garotas 50 vezes?','Ele entra para o time de basquete da escola após se apaixonar por uma colega.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hanamichi Sakuragi',TRUE,0),(gen_random_uuid(),q,'Kaede Rukawa',FALSE,1),(gen_random_uuid(),q,'Takenori Akagi',FALSE,2),(gen_random_uuid(),q,'Ryota Miyagi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','easy','Qual é o nome da garota por quem Sakuragi se apaixona no início da série, motivando-o a entrar no time?','Sua paixão por ela é o motivo original de sua entrada no basquete.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Haruko Akagi',TRUE,0),(gen_random_uuid(),q,'Ayako',FALSE,1),(gen_random_uuid(),q,'Fujii',FALSE,2),(gen_random_uuid(),q,'Momoko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','easy','Qual é o nome do colégio onde se passa a maior parte da trama de Slam Dunk?','A escola é o centro da rivalidade esportiva ao longo de toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Shohoku',TRUE,0),(gen_random_uuid(),q,'Ryonan',FALSE,1),(gen_random_uuid(),q,'Kainan',FALSE,2),(gen_random_uuid(),q,'Shoyo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','medium','Qual é o nome do jogador frio e talentoso do Shohoku, rival direto de Sakuragi e alvo de admiração de muitas garotas?','Sua rivalidade com o protagonista é uma das dinâmicas centrais do time.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaede Rukawa',TRUE,0),(gen_random_uuid(),q,'Hanamichi Sakuragi',FALSE,1),(gen_random_uuid(),q,'Ryota Miyagi',FALSE,2),(gen_random_uuid(),q,'Hisashi Mitsui',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','medium','Qual é o nome do capitão e pivô do time de basquete do Shohoku, irmão mais velho de Haruko?','Ele é conhecido por sua força física e liderança dentro de quadra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Takenori Akagi',TRUE,0),(gen_random_uuid(),q,'Kaede Rukawa',FALSE,1),(gen_random_uuid(),q,'Hisashi Mitsui',FALSE,2),(gen_random_uuid(),q,'Ryota Miyagi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','medium','Qual é o nome do armador baixinho e habilidoso do Shohoku, ex-líder de uma gangue antes de retornar ao basquete?','Ele é responsável por organizar as jogadas ofensivas do time.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ryota Miyagi',TRUE,0),(gen_random_uuid(),q,'Hisashi Mitsui',FALSE,1),(gen_random_uuid(),q,'Takenori Akagi',FALSE,2),(gen_random_uuid(),q,'Kaede Rukawa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','medium','Qual é o nome do atirador de três pontos do Shohoku, ex-astro do basquete no ensino fundamental que se afastou do esporte por um tempo?','Seu retorno ao time é um dos arcos emocionais mais marcantes da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hisashi Mitsui',TRUE,0),(gen_random_uuid(),q,'Ryota Miyagi',FALSE,1),(gen_random_uuid(),q,'Takenori Akagi',FALSE,2),(gen_random_uuid(),q,'Kaede Rukawa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','easy','Qual é o nome do técnico veterano e experiente do time de basquete do Shohoku?','Sua experiência prévia como treinador de sucesso é revelada ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mitsuyoshi Anzai',TRUE,0),(gen_random_uuid(),q,'Taoka',FALSE,1),(gen_random_uuid(),q,'Kesuke Uozumi',FALSE,2),(gen_random_uuid(),q,'Moichi Kiyota',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','easy','Qual é o nome da gerente do time de basquete do Shohoku, responsável por organizar treinos e cuidar da equipe?','Ela frequentemente precisa lidar com a indisciplina de Sakuragi no início da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ayako',TRUE,0),(gen_random_uuid(),q,'Haruko Akagi',FALSE,1),(gen_random_uuid(),q,'Fujii',FALSE,2),(gen_random_uuid(),q,'Momoko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','medium','Qual é o apelido dado a Sakuragi pelos colegas de time, referência ao seu comportamento impulsivo e cabeça-quente?','O apelido reflete tanto seu temperamento quanto sua energia intensa em quadra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Do''aho',TRUE,0),(gen_random_uuid(),q,'Tensai',FALSE,1),(gen_random_uuid(),q,'Kitsune',FALSE,2),(gen_random_uuid(),q,'Gorira',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','medium','Qual escola rival é conhecida por seu ala-armador habilidoso Sendoh, principal rival de Rukawa?','A rivalidade entre os dois jogadores é um destaque das partidas envolvendo essa escola.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ryonan',TRUE,0),(gen_random_uuid(),q,'Kainan',FALSE,1),(gen_random_uuid(),q,'Shoyo',FALSE,2),(gen_random_uuid(),q,'Toyotama',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','medium','Qual é o nome do ala-armador estrela do Ryonan, conhecido por sua versatilidade e jogadas criativas?','Ele é frequentemente comparado a Rukawa em termos de talento natural.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Akira Sendoh',TRUE,0),(gen_random_uuid(),q,'Jun Uozumi',FALSE,1),(gen_random_uuid(),q,'Kicchou Fukuda',FALSE,2),(gen_random_uuid(),q,'Ikegami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','hard','Qual escola é apresentada como a campeã nacional reinante e principal obstáculo do Shohoku na busca pelo título?','Enfrentar essa equipe é considerado o maior desafio competitivo da temporada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sannoh Kogyo',TRUE,0),(gen_random_uuid(),q,'Kainan',FALSE,1),(gen_random_uuid(),q,'Ryonan',FALSE,2),(gen_random_uuid(),q,'Toyotama',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','hard','Qual é o nome do ala-pivô prodígio do Sannoh, considerado o melhor jogador do ensino médio em todo o Japão?','Sua habilidade excepcional o torna um dos adversários mais temidos por Shohoku.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Toru Hanagata',TRUE,0),(gen_random_uuid(),q,'Yasuharu Fukatsu',FALSE,1),(gen_random_uuid(),q,'Jun Kawata',FALSE,2),(gen_random_uuid(),q,'Kiyota',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','medium','Qual é a posição em quadra ocupada por Sakuragi após ingressar no time, apesar de sua inexperiência inicial no esporte?','Sua altura o torna adequado para essa posição, apesar da falta de técnica no começo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ala-pivô',TRUE,0),(gen_random_uuid(),q,'Armador',FALSE,1),(gen_random_uuid(),q,'Ala-armador',FALSE,2),(gen_random_uuid(),q,'Pivô',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','easy','Qual esporte é o tema central de Slam Dunk?','A série retrata a jornada de um time de basquete escolar em busca do título nacional.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Basquete',TRUE,0),(gen_random_uuid(),q,'Vôlei',FALSE,1),(gen_random_uuid(),q,'Futebol',FALSE,2),(gen_random_uuid(),q,'Beisebol',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','medium','Quantas vezes Sakuragi havia sido rejeitado por garotas antes de conhecer Haruko, conforme estabelecido no início da série?','Esse histórico de rejeições é usado como piada recorrente sobre seu passado romântico.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'50 vezes',TRUE,0),(gen_random_uuid(),q,'30 vezes',FALSE,1),(gen_random_uuid(),q,'70 vezes',FALSE,2),(gen_random_uuid(),q,'20 vezes',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','hard','Qual lesão grave Sakuragi sofre durante o jogo final contra o Sannoh, comprometendo seriamente seu futuro no esporte?','O incidente ocorre em um momento crucial da partida, exigindo grande sacrifício pessoal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Lesão nas costas',TRUE,0),(gen_random_uuid(),q,'Fratura no braço',FALSE,1),(gen_random_uuid(),q,'Torção no tornozelo',FALSE,2),(gen_random_uuid(),q,'Lesão no joelho',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','medium','Qual jogador do Shohoku é o irmão mais novo de Haruko Akagi?','Ele exerce forte influência sobre a irmã em relação ao interesse dela pelo basquete.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nenhum — Takenori é o irmão mais velho',TRUE,0),(gen_random_uuid(),q,'Ryota Miyagi',FALSE,1),(gen_random_uuid(),q,'Hisashi Mitsui',FALSE,2),(gen_random_uuid(),q,'Kaede Rukawa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','medium','Qual time Mitsui liderava como astro no ensino fundamental antes de se afastar do basquete no ensino médio?','Sua trajetória antes de entrar no Shohoku é revelada em flashbacks importantes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Time do ensino fundamental de Akagi',TRUE,0),(gen_random_uuid(),q,'Time do Ryonan',FALSE,1),(gen_random_uuid(),q,'Time do Kainan',FALSE,2),(gen_random_uuid(),q,'Time do Sannoh',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','hard','Qual técnica ofensiva Sakuragi treina intensamente sob orientação de Anzai, focando em arremessos de curta distância?','O treinamento repetitivo dessa técnica é retratado como fundamental para seu desenvolvimento.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arremesso próximo à cesta (gorira dunk)',TRUE,0),(gen_random_uuid(),q,'Arremesso de três pontos',FALSE,1),(gen_random_uuid(),q,'Lance livre',FALSE,2),(gen_random_uuid(),q,'Passe sem olhar',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','medium','Qual escola é conhecida por seu pivô gigante Uozumi, apelidado de "Grande Bicudo" pelos rivais?','Sua estatura imponente representa um desafio físico considerável para os adversários.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kainan',TRUE,0),(gen_random_uuid(),q,'Ryonan',FALSE,1),(gen_random_uuid(),q,'Sannoh',FALSE,2),(gen_random_uuid(),q,'Toyotama',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','hard','Qual é o nome do capitão do time Kainan, considerado um gênio do basquete e rival histórico de Akagi?','Sua rivalidade acadêmica e esportiva com Akagi remonta a anos anteriores à trama principal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Jun Uozumi',TRUE,0),(gen_random_uuid(),q,'Akira Sendoh',FALSE,1),(gen_random_uuid(),q,'Toru Hanagata',FALSE,2),(gen_random_uuid(),q,'Kiyota',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','medium','Qual competição é o principal objetivo do time do Shohoku ao longo da série?','Alcançar essa competição nacional representa a meta máxima da equipe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Campeonato Nacional Interescolar',TRUE,0),(gen_random_uuid(),q,'Copa Regional Amistosa',FALSE,1),(gen_random_uuid(),q,'Torneio de Verão Local',FALSE,2),(gen_random_uuid(),q,'Liga Universitária',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','medium','Qual jogador do Shohoku é descrito como tendo abandonado uma gangue de rua para retornar ao basquete no colegial?','Seu passado conturbado é revelado gradualmente ao longo da narrativa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ryota Miyagi',TRUE,0),(gen_random_uuid(),q,'Hisashi Mitsui',FALSE,1),(gen_random_uuid(),q,'Kaede Rukawa',FALSE,2),(gen_random_uuid(),q,'Takenori Akagi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','hard','Qual jogador de Ryonan é conhecido como um dos melhores reboteiros do torneio, apesar de baixa estatura para a posição?','Sua habilidade de saltar compensa a desvantagem de altura frente a adversários maiores.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kicchou Fukuda',TRUE,0),(gen_random_uuid(),q,'Jun Uozumi',FALSE,1),(gen_random_uuid(),q,'Toru Hanagata',FALSE,2),(gen_random_uuid(),q,'Ikegami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','medium','Qual é a principal fraqueza técnica de Sakuragi apontada por seus colegas de time no início de sua jornada no basquete?','Sua falta de fundamentos básicos é motivo de treinamentos intensivos e específicos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Falta de fundamentos básicos',TRUE,0),(gen_random_uuid(),q,'Baixa estatura',FALSE,1),(gen_random_uuid(),q,'Falta de força física',FALSE,2),(gen_random_uuid(),q,'Lentidão excessiva',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','medium','Qual é o nome do jogador reserva do Shohoku conhecido por seu jump shot confiável e personalidade tranquila?','Ele complementa o time nos momentos em que titulares precisam descansar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yasuharu Kogure',TRUE,0),(gen_random_uuid(),q,'Kenji Kakuta',FALSE,1),(gen_random_uuid(),q,'Shinji Ishii',FALSE,2),(gen_random_uuid(),q,'Satoshi Kawata',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','hard','Qual estratégia defensiva o Shohoku usa para conter o pivô prodígio do Sannoh durante o jogo decisivo?','A estratégia envolve sacrifício físico considerável por parte dos jogadores designados.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Marcação individual intensa por Sakuragi',TRUE,0),(gen_random_uuid(),q,'Zona 2-3 padrão',FALSE,1),(gen_random_uuid(),q,'Pressão total em quadra',FALSE,2),(gen_random_uuid(),q,'Marcação apenas no perímetro',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','medium','Qual é o motivo pelo qual Mitsui havia abandonado o basquete antes dos eventos do Shohoku retratados na série?','Uma lesão e desilusão pessoal o afastaram do esporte por um longo período.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Lesão no joelho e desilusão pessoal',TRUE,0),(gen_random_uuid(),q,'Expulsão da escola',FALSE,1),(gen_random_uuid(),q,'Mudança de cidade',FALSE,2),(gen_random_uuid(),q,'Problemas financeiros familiares',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','medium','Qual jogador é conhecido por sua expressão facial quase sempre séria e postura reservada, raramente demonstrando emoções em quadra?','Seu temperamento contrasta fortemente com a personalidade explosiva de Sakuragi.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaede Rukawa',TRUE,0),(gen_random_uuid(),q,'Hanamichi Sakuragi',FALSE,1),(gen_random_uuid(),q,'Ryota Miyagi',FALSE,2),(gen_random_uuid(),q,'Mitsuyoshi Anzai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','hard','Qual jogador de Sannoh é descrito como capitão e principal armador estratégico da equipe campeã nacional?','Sua capacidade de organizar o jogo coletivo é essencial para o domínio da equipe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yasuharu Fukatsu',TRUE,0),(gen_random_uuid(),q,'Toru Hanagata',FALSE,1),(gen_random_uuid(),q,'Jun Kawata',FALSE,2),(gen_random_uuid(),q,'Sawakita',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','medium','Qual é a característica física marcante de Sakuragi frequentemente destacada por seus adversários em quadra?','Sua altura considerável para um novato é notada repetidamente por jogadores rivais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Grande altura',TRUE,0),(gen_random_uuid(),q,'Baixa estatura',FALSE,1),(gen_random_uuid(),q,'Peso reduzido',FALSE,2),(gen_random_uuid(),q,'Braços curtos',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','medium','Qual jogador do Ryonan é conhecido por sua rivalidade amistosa e comparações constantes com Rukawa desde o ensino fundamental?','Os dois jogadores se conhecem há anos, criando uma rivalidade construída ao longo do tempo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Akira Sendoh',TRUE,0),(gen_random_uuid(),q,'Kicchou Fukuda',FALSE,1),(gen_random_uuid(),q,'Jun Uozumi',FALSE,2),(gen_random_uuid(),q,'Ikegami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','hard','Qual é o nome do técnico do time Sannoh, conhecido por seu histórico impressionante de títulos nacionais consecutivos?','Sua reputação de sucesso torna a equipe extremamente respeitada e temida por adversários.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Technical Moichi Kiyota (treinador Sannoh)',TRUE,0),(gen_random_uuid(),q,'Mitsuyoshi Anzai',FALSE,1),(gen_random_uuid(),q,'Taoka',FALSE,2),(gen_random_uuid(),q,'Kesuke Uozumi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','medium','Qual é a reação inicial de Akagi ao saber que Sakuragi, um completo novato, deseja entrar para o time titular?','Ele demonstra ceticismo considerável quanto à capacidade do novato de contribuir imediatamente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ceticismo e desconfiança',TRUE,0),(gen_random_uuid(),q,'Entusiasmo imediato',FALSE,1),(gen_random_uuid(),q,'Indiferença total',FALSE,2),(gen_random_uuid(),q,'Medo de ser superado',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','medium','Qual jogador de Kainan é conhecido por sua agilidade excepcional e apelido relacionado a um animal selvagem?','Seu estilo de jogo agressivo e veloz lhe rendeu o apelido característico entre torcedores.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kiyota (Macaco Selvagem)',TRUE,0),(gen_random_uuid(),q,'Jun Uozumi',FALSE,1),(gen_random_uuid(),q,'Toru Hanagata',FALSE,2),(gen_random_uuid(),q,'Sawakita',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','hard','Qual é o principal motivo pelo qual Rukawa recebe múltiplas propostas de escolas americanas ao longo da série?','Seu talento excepcional atrai a atenção de olheiros internacionais interessados em recrutá-lo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Talento excepcional reconhecido internacionalmente',TRUE,0),(gen_random_uuid(),q,'Conexões familiares nos EUA',FALSE,1),(gen_random_uuid(),q,'Bolsa de estudos acadêmica',FALSE,2),(gen_random_uuid(),q,'Convite de um parente distante',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','medium','Qual expressão Sakuragi costuma usar para se autodenominar, refletindo sua confiança exagerada apesar da inexperiência?','A expressão se torna uma espécie de bordão cômico recorrente ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tensai (Gênio)',TRUE,0),(gen_random_uuid(),q,'Saikyou (O Mais Forte)',FALSE,1),(gen_random_uuid(),q,'Eiyuu (Herói)',FALSE,2),(gen_random_uuid(),q,'Ouja (Rei)',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','medium','Qual jogador do Shohoku costuma se envolver em brigas físicas com Sakuragi devido a desentendimentos frequentes entre os dois?','Apesar dos conflitos, os dois desenvolvem respeito mútuo ao longo da temporada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaede Rukawa',TRUE,0),(gen_random_uuid(),q,'Ryota Miyagi',FALSE,1),(gen_random_uuid(),q,'Hisashi Mitsui',FALSE,2),(gen_random_uuid(),q,'Takenori Akagi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','hard','Qual é o resultado final do confronto entre Shohoku e Sannoh no clímax do arco do campeonato nacional?','O desfecho dessa partida é considerado um dos momentos mais icônicos de toda a série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Vitória apertada do Shohoku',TRUE,0),(gen_random_uuid(),q,'Vitória fácil do Sannoh',FALSE,1),(gen_random_uuid(),q,'Empate técnico',FALSE,2),(gen_random_uuid(),q,'Jogo suspenso por lesão',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','medium','Qual jogador é elogiado por Anzai como tendo um enorme potencial de crescimento, apesar de começar como o pior jogador tecnicamente do time?','O treinador reconhece cedo o potencial físico bruto do novato, apesar da falta de técnica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hanamichi Sakuragi',TRUE,0),(gen_random_uuid(),q,'Kaede Rukawa',FALSE,1),(gen_random_uuid(),q,'Ryota Miyagi',FALSE,2),(gen_random_uuid(),q,'Hisashi Mitsui',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','medium','Qual jogador de Ryonan é conhecido como o técnico mais jovem e um dos mentores mais respeitados da equipe?','Sua abordagem estratégica contribui significativamente para os resultados obtidos pelo time.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Taoka (treinador Ryonan)',TRUE,0),(gen_random_uuid(),q,'Mitsuyoshi Anzai',FALSE,1),(gen_random_uuid(),q,'Kesuke Uozumi',FALSE,2),(gen_random_uuid(),q,'Moichi Kiyota',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','hard','Qual jogador do Shohoku desenvolve uma rivalidade pessoal intensa com Sendoh do Ryonan ao longo da temporada?','Essa rivalidade específica é destacada em múltiplos confrontos diretos entre as equipes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaede Rukawa',TRUE,0),(gen_random_uuid(),q,'Hanamichi Sakuragi',FALSE,1),(gen_random_uuid(),q,'Ryota Miyagi',FALSE,2),(gen_random_uuid(),q,'Takenori Akagi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','medium','Qual é o principal ponto forte de Akagi como jogador, reconhecido tanto por aliados quanto por adversários ao longo da série?','Sua dominância física sob a cesta é um dos pilares ofensivos e defensivos do time.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Força física e domínio no rebote',TRUE,0),(gen_random_uuid(),q,'Velocidade excepcional',FALSE,1),(gen_random_uuid(),q,'Precisão em três pontos',FALSE,2),(gen_random_uuid(),q,'Visão de jogo para passes',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','medium','Qual jogador demonstra crescimento pessoal significativo ao superar o trauma de uma lesão anterior durante o decorrer da série?','Sua superação emocional é retratada como um dos arcos mais tocantes da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hisashi Mitsui',TRUE,0),(gen_random_uuid(),q,'Ryota Miyagi',FALSE,1),(gen_random_uuid(),q,'Kaede Rukawa',FALSE,2),(gen_random_uuid(),q,'Takenori Akagi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','hard','Qual é a razão pela qual Miyagi havia se afastado do time de basquete antes de retornar ao Shohoku?','Conflitos pessoais e envolvimento com uma gangue de rua o levaram a abandonar o esporte temporariamente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Envolvimento com uma gangue de rua',TRUE,0),(gen_random_uuid(),q,'Lesão grave no joelho',FALSE,1),(gen_random_uuid(),q,'Expulsão por indisciplina',FALSE,2),(gen_random_uuid(),q,'Mudança de escola forçada',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','medium','Qual jogador reserva do Shohoku é conhecido por sua estatura elevada, atuando como pivô suplente da equipe?','Ele entra em quadra principalmente quando Akagi precisa de descanso ou está em apuros com faltas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Yasuharu Kogure',TRUE,0),(gen_random_uuid(),q,'Kenji Kakuta',FALSE,1),(gen_random_uuid(),q,'Shinji Ishii',FALSE,2),(gen_random_uuid(),q,'Satoshi Kawata',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','hard','Qual estratégia Sannoh utiliza inicialmente para desmoralizar psicologicamente o time do Shohoku durante o confronto direto?','A abordagem visa quebrar a confiança do adversário antes mesmo do início efetivo do jogo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Domínio esmagador nos minutos iniciais',TRUE,0),(gen_random_uuid(),q,'Provocações verbais constantes',FALSE,1),(gen_random_uuid(),q,'Jogadas ilegais deliberadas',FALSE,2),(gen_random_uuid(),q,'Substituições surpresa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','medium','Qual jogador do Shohoku assume papel de liderança emocional do time em momentos de pressão extrema durante partidas decisivas?','Sua capacidade de motivar os colegas se torna essencial nos momentos mais tensos dos jogos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Takenori Akagi',TRUE,0),(gen_random_uuid(),q,'Kaede Rukawa',FALSE,1),(gen_random_uuid(),q,'Hanamichi Sakuragi',FALSE,2),(gen_random_uuid(),q,'Ryota Miyagi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','medium','Qual é o principal objetivo pessoal declarado por Akagi desde muito antes do início da trama de Slam Dunk?','Esse sonho de longa data é a motivação central por trás de sua dedicação extrema ao esporte.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Levar o Shohoku ao topo nacional',TRUE,0),(gen_random_uuid(),q,'Jogar profissionalmente nos EUA',FALSE,1),(gen_random_uuid(),q,'Vencer apenas Kainan',FALSE,2),(gen_random_uuid(),q,'Se tornar técnico após formar-se',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','hard','Qual jogador de Sannoh é descrito como tendo físico comparável ao de Akagi, gerando um confronto direto e equilibrado sob a cesta?','O duelo entre os dois pivôs é um dos pontos altos táticos do confronto entre as equipes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Jun Kawata',TRUE,0),(gen_random_uuid(),q,'Toru Hanagata',FALSE,1),(gen_random_uuid(),q,'Yasuharu Fukatsu',FALSE,2),(gen_random_uuid(),q,'Sawakita',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','medium','Qual é a atitude de Rukawa em relação às demonstrações de afeto de garotas que o cercam constantemente na escola?','Ele se mostra indiferente à atenção romântica, focando exclusivamente no basquete.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Indiferença total',TRUE,0),(gen_random_uuid(),q,'Interesse recíproco evidente',FALSE,1),(gen_random_uuid(),q,'Constrangimento visível',FALSE,2),(gen_random_uuid(),q,'Irritação agressiva',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','medium','Qual é o traço de personalidade mais evidente de Ayako ao lidar com o comportamento indisciplinado de Sakuragi nos treinos?','Sua firmeza e autoridade são essenciais para manter a ordem dentro do grupo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Firmeza e autoridade',TRUE,0),(gen_random_uuid(),q,'Timidez excessiva',FALSE,1),(gen_random_uuid(),q,'Indiferença total',FALSE,2),(gen_random_uuid(),q,'Passividade constante',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','hard','Qual jogador de Kainan é reconhecido por sua inteligência tática excepcional, sendo considerado o cérebro estratégico da equipe?','Sua capacidade analítica em quadra compensa eventuais limitações físicas frente a outros adversários.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Toru Hanagata',TRUE,0),(gen_random_uuid(),q,'Jun Uozumi',FALSE,1),(gen_random_uuid(),q,'Kiyota',FALSE,2),(gen_random_uuid(),q,'Sawakita',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','medium','Qual jogador do Shohoku costuma ser retratado com expressões cômicas exageradas durante momentos de tensão nas partidas?','Esse recurso visual contribui para o alívio cômico em meio a cenas dramáticas de competição.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hanamichi Sakuragi',TRUE,0),(gen_random_uuid(),q,'Kaede Rukawa',FALSE,1),(gen_random_uuid(),q,'Takenori Akagi',FALSE,2),(gen_random_uuid(),q,'Mitsuyoshi Anzai',FALSE,3);

    -- ===================== FILL_BLANK (38) =====================
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'fill_blank','easy','O protagonista de Slam Dunk se chama Hanamichi _____.','Seu sobrenome é usado com frequência por colegas e rivais ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sakuragi',TRUE,0),(gen_random_uuid(),q,'Rukawa',FALSE,1),(gen_random_uuid(),q,'Akagi',FALSE,2),(gen_random_uuid(),q,'Miyagi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'fill_blank','easy','O rival frio de Sakuragi no time se chama Kaede _____.','Seu talento natural o torna alvo de admiração de muitas garotas na escola.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rukawa',TRUE,0),(gen_random_uuid(),q,'Sakuragi',FALSE,1),(gen_random_uuid(),q,'Akagi',FALSE,2),(gen_random_uuid(),q,'Mitsui',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'fill_blank','medium','O capitão e pivô do Shohoku se chama Takenori _____.','Ele é irmão mais velho de Haruko, colega de Sakuragi.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Akagi',TRUE,0),(gen_random_uuid(),q,'Rukawa',FALSE,1),(gen_random_uuid(),q,'Miyagi',FALSE,2),(gen_random_uuid(),q,'Mitsui',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'fill_blank','medium','A garota por quem Sakuragi se apaixona no início da série se chama _____ Akagi.','Ela é a irmã mais nova do capitão do time de basquete.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Haruko',TRUE,0),(gen_random_uuid(),q,'Ayako',FALSE,1),(gen_random_uuid(),q,'Fujii',FALSE,2),(gen_random_uuid(),q,'Momoko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'fill_blank','medium','O armador baixinho do Shohoku, ex-líder de gangue, se chama Ryota _____.','Ele é responsável por organizar as jogadas ofensivas da equipe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Miyagi',TRUE,0),(gen_random_uuid(),q,'Mitsui',FALSE,1),(gen_random_uuid(),q,'Akagi',FALSE,2),(gen_random_uuid(),q,'Rukawa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'fill_blank','medium','O atirador de três pontos que retorna ao basquete se chama Hisashi _____.','Seu retorno é um dos arcos emocionais mais marcantes da trama.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mitsui',TRUE,0),(gen_random_uuid(),q,'Miyagi',FALSE,1),(gen_random_uuid(),q,'Akagi',FALSE,2),(gen_random_uuid(),q,'Rukawa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'fill_blank','easy','O técnico experiente do Shohoku se chama Mitsuyoshi _____.','Sua experiência prévia como treinador de sucesso é revelada gradualmente na série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Anzai',TRUE,0),(gen_random_uuid(),q,'Taoka',FALSE,1),(gen_random_uuid(),q,'Uozumi',FALSE,2),(gen_random_uuid(),q,'Kiyota',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'fill_blank','easy','A gerente do time do Shohoku se chama _____.','Ela é responsável por organizar treinos e cuidar da equipe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ayako',TRUE,0),(gen_random_uuid(),q,'Haruko',FALSE,1),(gen_random_uuid(),q,'Fujii',FALSE,2),(gen_random_uuid(),q,'Momoko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'fill_blank','medium','O apelido dado a Sakuragi por seus colegas, referindo-se a seu temperamento impulsivo, é "_____".','O apelido reflete tanto seu comportamento explosivo quanto sua energia em quadra.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Do''aho',TRUE,0),(gen_random_uuid(),q,'Tensai',FALSE,1),(gen_random_uuid(),q,'Kitsune',FALSE,2),(gen_random_uuid(),q,'Ouja',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'fill_blank','medium','A escola rival conhecida pelo ala-armador Sendoh se chama _____.','A rivalidade entre Sendoh e Rukawa é um destaque das partidas envolvendo essa escola.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ryonan',TRUE,0),(gen_random_uuid(),q,'Kainan',FALSE,1),(gen_random_uuid(),q,'Shoyo',FALSE,2),(gen_random_uuid(),q,'Toyotama',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'fill_blank','medium','O ala-armador estrela do Ryonan se chama Akira _____.','Ele é frequentemente comparado a Rukawa em termos de talento natural.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sendoh',TRUE,0),(gen_random_uuid(),q,'Fukuda',FALSE,1),(gen_random_uuid(),q,'Uozumi',FALSE,2),(gen_random_uuid(),q,'Hanagata',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'fill_blank','hard','A escola campeã nacional reinante, principal obstáculo do Shohoku, se chama _____ Kogyo.','Enfrentar essa equipe é considerado o maior desafio competitivo da temporada.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sannoh',TRUE,0),(gen_random_uuid(),q,'Kainan',FALSE,1),(gen_random_uuid(),q,'Ryonan',FALSE,2),(gen_random_uuid(),q,'Toyotama',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'fill_blank','hard','O ala-pivô prodígio do Sannoh, considerado o melhor jogador do ensino médio japonês, se chama Toru _____.','Sua habilidade excepcional o torna um dos adversários mais temidos por Shohoku.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hanagata',TRUE,0),(gen_random_uuid(),q,'Fukatsu',FALSE,1),(gen_random_uuid(),q,'Kawata',FALSE,2),(gen_random_uuid(),q,'Kiyota',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'fill_blank','medium','O jogador do Shohoku que ocupa a posição de ala-pivô, apesar da inexperiência inicial, é _____.','Sua altura o torna adequado para essa posição, apesar da falta de técnica no começo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Sakuragi',TRUE,0),(gen_random_uuid(),q,'Rukawa',FALSE,1),(gen_random_uuid(),q,'Miyagi',FALSE,2),(gen_random_uuid(),q,'Mitsui',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'fill_blank','easy','O esporte central retratado em Slam Dunk é o _____.','A série retrata a jornada de um time escolar em busca do título nacional.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Basquete',TRUE,0),(gen_random_uuid(),q,'Vôlei',FALSE,1),(gen_random_uuid(),q,'Futebol',FALSE,2),(gen_random_uuid(),q,'Beisebol',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'fill_blank','hard','Durante o jogo final contra o Sannoh, Sakuragi sofre uma grave lesão nas _____.','O incidente ocorre em um momento crucial da partida, exigindo grande sacrifício pessoal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Costas',TRUE,0),(gen_random_uuid(),q,'Pernas',FALSE,1),(gen_random_uuid(),q,'Mãos',FALSE,2),(gen_random_uuid(),q,'Costelas',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'fill_blank','hard','Mitsui havia se afastado do basquete devido a uma lesão no _____ e desilusão pessoal.','Uma lesão e desilusão pessoal o afastaram do esporte por um longo período.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Joelho',TRUE,0),(gen_random_uuid(),q,'Tornozelo',FALSE,1),(gen_random_uuid(),q,'Ombro',FALSE,2),(gen_random_uuid(),q,'Cotovelo',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'fill_blank','medium','A técnica ofensiva de arremesso próximo à cesta treinada por Sakuragi é apelidada de "_____ dunk".','O treinamento repetitivo dessa técnica é retratado como fundamental para seu desenvolvimento.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gorira',TRUE,0),(gen_random_uuid(),q,'Kitsune',FALSE,1),(gen_random_uuid(),q,'Tensai',FALSE,2),(gen_random_uuid(),q,'Ouja',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'fill_blank','medium','O pivô gigante do Kainan, apelidado de "Grande Bicudo", se chama Jun _____.','Sua estatura imponente representa um desafio físico considerável para os adversários.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Uozumi',TRUE,0),(gen_random_uuid(),q,'Sendoh',FALSE,1),(gen_random_uuid(),q,'Hanagata',FALSE,2),(gen_random_uuid(),q,'Fukuda',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'fill_blank','hard','O capitão do time Kainan, rival histórico de Akagi, se chama Jun _____.','Sua rivalidade acadêmica e esportiva com Akagi remonta a anos anteriores à trama principal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Uozumi',TRUE,0),(gen_random_uuid(),q,'Sendoh',FALSE,1),(gen_random_uuid(),q,'Hanagata',FALSE,2),(gen_random_uuid(),q,'Kiyota',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'fill_blank','medium','O jogador do Shohoku que abandonou uma gangue de rua para retornar ao basquete é _____.','Seu passado conturbado é revelado gradualmente ao longo da narrativa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Miyagi',TRUE,0),(gen_random_uuid(),q,'Mitsui',FALSE,1),(gen_random_uuid(),q,'Rukawa',FALSE,2),(gen_random_uuid(),q,'Akagi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'fill_blank','hard','O reboteiro de baixa estatura do Ryonan se chama Kicchou _____.','Sua habilidade de saltar compensa a desvantagem de altura frente a adversários maiores.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fukuda',TRUE,0),(gen_random_uuid(),q,'Uozumi',FALSE,1),(gen_random_uuid(),q,'Hanagata',FALSE,2),(gen_random_uuid(),q,'Sendoh',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'fill_blank','medium','O reserva do Shohoku conhecido por seu jump shot confiável se chama Yasuharu _____.','Ele complementa o time nos momentos em que titulares precisam descansar.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kogure',TRUE,0),(gen_random_uuid(),q,'Kakuta',FALSE,1),(gen_random_uuid(),q,'Ishii',FALSE,2),(gen_random_uuid(),q,'Kawata',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'fill_blank','hard','O principal armador estratégico do Sannoh se chama Yasuharu _____.','Sua capacidade de organizar o jogo coletivo é essencial para o domínio da equipe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Fukatsu',TRUE,0),(gen_random_uuid(),q,'Hanagata',FALSE,1),(gen_random_uuid(),q,'Kawata',FALSE,2),(gen_random_uuid(),q,'Sawakita',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'fill_blank','medium','O jogador de Kainan conhecido por sua agilidade e apelido de "Macaco Selvagem" se chama _____.','Seu estilo de jogo agressivo e veloz lhe rendeu o apelido característico entre torcedores.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kiyota',TRUE,0),(gen_random_uuid(),q,'Uozumi',FALSE,1),(gen_random_uuid(),q,'Hanagata',FALSE,2),(gen_random_uuid(),q,'Sawakita',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'fill_blank','medium','A expressão que Sakuragi usa para se autodenominar, refletindo confiança exagerada, é "_____" (Gênio).','A expressão se torna uma espécie de bordão cômico recorrente ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Tensai',TRUE,0),(gen_random_uuid(),q,'Saikyou',FALSE,1),(gen_random_uuid(),q,'Eiyuu',FALSE,2),(gen_random_uuid(),q,'Ouja',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'fill_blank','medium','O ponto forte de Akagi como jogador é sua força física e domínio no _____.','Sua dominância física sob a cesta é um dos pilares ofensivos e defensivos do time.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rebote',TRUE,0),(gen_random_uuid(),q,'Drible',FALSE,1),(gen_random_uuid(),q,'Passe',FALSE,2),(gen_random_uuid(),q,'Arremesso',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'fill_blank','hard','Miyagi havia se afastado do basquete devido ao envolvimento com uma _____ de rua.','Conflitos pessoais o levaram a abandonar o esporte temporariamente antes de retornar ao Shohoku.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Gangue',TRUE,0),(gen_random_uuid(),q,'Equipe rival',FALSE,1),(gen_random_uuid(),q,'Escola diferente',FALSE,2),(gen_random_uuid(),q,'Família distante',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'fill_blank','medium','O pivô suplente do Shohoku, de estatura elevada, se chama Yasuharu _____.','Ele entra em quadra principalmente quando Akagi precisa de descanso ou está em apuros com faltas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kogure',TRUE,0),(gen_random_uuid(),q,'Kakuta',FALSE,1),(gen_random_uuid(),q,'Ishii',FALSE,2),(gen_random_uuid(),q,'Kawata',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'fill_blank','medium','O objetivo declarado por Akagi desde antes do início da trama é levar o Shohoku ao topo _____.','Esse sonho de longa data é a motivação central por trás de sua dedicação extrema ao esporte.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Nacional',TRUE,0),(gen_random_uuid(),q,'Regional',FALSE,1),(gen_random_uuid(),q,'Municipal',FALSE,2),(gen_random_uuid(),q,'Internacional',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'fill_blank','hard','O jogador de Sannoh com físico comparável ao de Akagi se chama Jun _____.','O duelo entre os dois pivôs é um dos pontos altos táticos do confronto entre as equipes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kawata',TRUE,0),(gen_random_uuid(),q,'Hanagata',FALSE,1),(gen_random_uuid(),q,'Fukatsu',FALSE,2),(gen_random_uuid(),q,'Sawakita',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'fill_blank','medium','A gerente Ayako é conhecida por sua _____ ao lidar com o comportamento indisciplinado de Sakuragi.','Sua firmeza e autoridade são essenciais para manter a ordem dentro do grupo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Firmeza',TRUE,0),(gen_random_uuid(),q,'Timidez',FALSE,1),(gen_random_uuid(),q,'Indiferença',FALSE,2),(gen_random_uuid(),q,'Passividade',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'fill_blank','hard','O jogador de Kainan reconhecido como o cérebro estratégico da equipe se chama Toru _____.','Sua capacidade analítica em quadra compensa eventuais limitações físicas frente a outros adversários.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hanagata',TRUE,0),(gen_random_uuid(),q,'Uozumi',FALSE,1),(gen_random_uuid(),q,'Kiyota',FALSE,2),(gen_random_uuid(),q,'Sawakita',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'fill_blank','medium','O técnico do Ryonan se chama _____.','Sua abordagem estratégica contribui significativamente para os resultados obtidos pelo time.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Taoka',TRUE,0),(gen_random_uuid(),q,'Anzai',FALSE,1),(gen_random_uuid(),q,'Uozumi',FALSE,2),(gen_random_uuid(),q,'Kiyota',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'fill_blank','medium','Sakuragi havia sido rejeitado por garotas _____ vezes antes de conhecer Haruko.','Esse histórico de rejeições é usado como piada recorrente sobre seu passado romântico.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'50',TRUE,0),(gen_random_uuid(),q,'30',FALSE,1),(gen_random_uuid(),q,'70',FALSE,2),(gen_random_uuid(),q,'20',FALSE,3);

    -- ===================== WHO_SAID (30) =====================
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'who_said','easy','Quem declara repetidamente ser um "gênio" (tensai) apesar de sua total inexperiência no basquete?','A fala reflete a confiança exagerada e cômica desse personagem.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hanamichi Sakuragi',TRUE,0),(gen_random_uuid(),q,'Kaede Rukawa',FALSE,1),(gen_random_uuid(),q,'Takenori Akagi',FALSE,2),(gen_random_uuid(),q,'Ryota Miyagi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'who_said','medium','Quem afirma que "basquete é tudo" para si mesmo, recusando propostas de vida social em favor do esporte?','A fala reflete a dedicação quase obsessiva desse jogador ao esporte.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaede Rukawa',TRUE,0),(gen_random_uuid(),q,'Hanamichi Sakuragi',FALSE,1),(gen_random_uuid(),q,'Ryota Miyagi',FALSE,2),(gen_random_uuid(),q,'Hisashi Mitsui',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'who_said','medium','Quem expressa firmemente o desejo de levar o Shohoku ao topo nacional, sonho perseguido desde antes da trama começar?','A fala reforça a motivação de longa data desse jogador para o sucesso da equipe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Takenori Akagi',TRUE,0),(gen_random_uuid(),q,'Kaede Rukawa',FALSE,1),(gen_random_uuid(),q,'Hisashi Mitsui',FALSE,2),(gen_random_uuid(),q,'Ryota Miyagi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'who_said','medium','Quem, ao retornar ao time após anos afastado, declara emocionadamente que ainda ama o basquete apesar de tudo?','A fala marca um dos momentos mais emocionantes de seu arco de redenção pessoal.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hisashi Mitsui',TRUE,0),(gen_random_uuid(),q,'Ryota Miyagi',FALSE,1),(gen_random_uuid(),q,'Kaede Rukawa',FALSE,2),(gen_random_uuid(),q,'Takenori Akagi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'who_said','easy','Quem repreende Sakuragi frequentemente por seu comportamento indisciplinado durante os treinos do time?','A fala demonstra a firmeza característica dessa personagem ao lidar com o protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ayako',TRUE,0),(gen_random_uuid(),q,'Haruko Akagi',FALSE,1),(gen_random_uuid(),q,'Fujii',FALSE,2),(gen_random_uuid(),q,'Momoko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'who_said','medium','Quem elogia o potencial físico bruto de Sakuragi, reconhecendo cedo sua capacidade de se tornar um grande jogador?','A fala reflete a experiência desse técnico em identificar talentos ainda não desenvolvidos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mitsuyoshi Anzai',TRUE,0),(gen_random_uuid(),q,'Taoka',FALSE,1),(gen_random_uuid(),q,'Kesuke Uozumi',FALSE,2),(gen_random_uuid(),q,'Moichi Kiyota',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'who_said','medium','Quem expressa ceticismo inicial quanto à capacidade de Sakuragi contribuir imediatamente com o time por ser um completo novato?','A fala reflete a desconfiança inicial desse personagem quanto ao potencial do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Takenori Akagi',TRUE,0),(gen_random_uuid(),q,'Kaede Rukawa',FALSE,1),(gen_random_uuid(),q,'Ryota Miyagi',FALSE,2),(gen_random_uuid(),q,'Hisashi Mitsui',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'who_said','hard','Quem desafia abertamente Rukawa em quadra, insistindo em provar ser tecnicamente superior ao rival do Ryonan?','A fala reflete a rivalidade amistosa de longa data construída entre os dois jogadores.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Akira Sendoh',TRUE,0),(gen_random_uuid(),q,'Kicchou Fukuda',FALSE,1),(gen_random_uuid(),q,'Jun Uozumi',FALSE,2),(gen_random_uuid(),q,'Ikegami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'who_said','medium','Quem confessa sentir remorso profundo por ter abandonado o basquete e desperdiçado anos de sua trajetória esportiva?','A fala reflete o arrependimento sincero desse jogador sobre seu passado recente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hisashi Mitsui',TRUE,0),(gen_random_uuid(),q,'Ryota Miyagi',FALSE,1),(gen_random_uuid(),q,'Kaede Rukawa',FALSE,2),(gen_random_uuid(),q,'Takenori Akagi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'who_said','hard','Quem afirma categoricamente que o Shohoku "não tem chance" contra o Sannoh antes do início do confronto direto?','A fala reflete a confiança excessiva dos adversários antes de subestimarem a força do protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Toru Hanagata',TRUE,0),(gen_random_uuid(),q,'Yasuharu Fukatsu',FALSE,1),(gen_random_uuid(),q,'Jun Kawata',FALSE,2),(gen_random_uuid(),q,'Kiyota',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'who_said','medium','Quem grita "rebote é meu!" com frequência durante partidas, reforçando sua determinação em dominar essa área do jogo?','A fala reflete o foco intenso desse jogador em uma habilidade específica que treinou arduamente.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hanamichi Sakuragi',TRUE,0),(gen_random_uuid(),q,'Kaede Rukawa',FALSE,1),(gen_random_uuid(),q,'Ryota Miyagi',FALSE,2),(gen_random_uuid(),q,'Hisashi Mitsui',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'who_said','medium','Quem tranquiliza os colegas de time nos momentos de maior pressão, mantendo a calma mesmo em situações de placar apertado?','A fala demonstra a liderança emocional exercida por esse jogador nos jogos decisivos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Takenori Akagi',TRUE,0),(gen_random_uuid(),q,'Kaede Rukawa',FALSE,1),(gen_random_uuid(),q,'Hanamichi Sakuragi',FALSE,2),(gen_random_uuid(),q,'Ryota Miyagi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'who_said','hard','Quem observa com admiração silenciosa o crescimento técnico surpreendente de Sakuragi ao longo dos treinos intensivos?','A fala reflete o reconhecimento gradual do talento do protagonista por parte de um rival direto.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaede Rukawa',TRUE,0),(gen_random_uuid(),q,'Akira Sendoh',FALSE,1),(gen_random_uuid(),q,'Toru Hanagata',FALSE,2),(gen_random_uuid(),q,'Jun Uozumi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'who_said','medium','Quem incentiva Haruko a continuar apoiando o time mesmo diante das dificuldades enfrentadas pelo irmão em quadra?','A fala reflete a proximidade e cumplicidade entre essas duas personagens amigas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ayako',TRUE,0),(gen_random_uuid(),q,'Fujii',FALSE,1),(gen_random_uuid(),q,'Momoko',FALSE,2),(gen_random_uuid(),q,'Matsuzaki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'who_said','hard','Quem elogia publicamente a defesa agressiva de Sakuragi sobre o pivô prodígio do Sannoh durante o confronto decisivo?','A fala reconhece o sacrifício físico considerável realizado pelo protagonista naquele momento.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mitsuyoshi Anzai',TRUE,0),(gen_random_uuid(),q,'Taoka',FALSE,1),(gen_random_uuid(),q,'Kesuke Uozumi',FALSE,2),(gen_random_uuid(),q,'Moichi Kiyota',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'who_said','medium','Quem declara que pretende jogar basquete nos Estados Unidos após receber propostas de escolas estrangeiras interessadas em seu talento?','A fala reflete as ambições internacionais desse jogador talentoso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaede Rukawa',TRUE,0),(gen_random_uuid(),q,'Hanamichi Sakuragi',FALSE,1),(gen_random_uuid(),q,'Ryota Miyagi',FALSE,2),(gen_random_uuid(),q,'Takenori Akagi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'who_said','medium','Quem provoca Sakuragi constantemente com comentários irônicos sobre sua falta de habilidade técnica no início da temporada?','A fala reflete a rivalidade e o atrito recorrente entre esses dois colegas de time.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaede Rukawa',TRUE,0),(gen_random_uuid(),q,'Ryota Miyagi',FALSE,1),(gen_random_uuid(),q,'Hisashi Mitsui',FALSE,2),(gen_random_uuid(),q,'Takenori Akagi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'who_said','hard','Quem descreve Sannoh como "o time mais forte que o Japão já viu" antes do confronto decisivo entre as equipes?','A fala reforça a reputação intimidadora construída pela equipe campeã ao longo dos anos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mitsuyoshi Anzai',TRUE,0),(gen_random_uuid(),q,'Taoka',FALSE,1),(gen_random_uuid(),q,'Ayako',FALSE,2),(gen_random_uuid(),q,'Kesuke Uozumi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'who_said','medium','Quem confidencia a Ayako sua preocupação sincera com o bem-estar físico do irmão durante os jogos mais intensos?','A fala reflete o carinho fraternal dessa personagem em relação ao capitão do time.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Haruko Akagi',TRUE,0),(gen_random_uuid(),q,'Fujii',FALSE,1),(gen_random_uuid(),q,'Momoko',FALSE,2),(gen_random_uuid(),q,'Matsuzaki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'who_said','medium','Quem exclama repetidamente "vamos, Shohoku!" durante os jogos decisivos, incentivando os colegas de equipe a persistirem?','A fala demonstra o espírito de torcida e apoio incondicional dessa personagem ao time.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Haruko Akagi',TRUE,0),(gen_random_uuid(),q,'Fujii',FALSE,1),(gen_random_uuid(),q,'Momoko',FALSE,2),(gen_random_uuid(),q,'Matsuzaki',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'who_said','hard','Quem reconhece publicamente que subestimou completamente o Shohoku antes do início do confronto direto entre as equipes?','A fala reflete a surpresa dos adversários diante da força inesperada demonstrada pelo time protagonista.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Jun Kawata',TRUE,0),(gen_random_uuid(),q,'Toru Hanagata',FALSE,1),(gen_random_uuid(),q,'Yasuharu Fukatsu',FALSE,2),(gen_random_uuid(),q,'Sawakita',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'who_said','medium','Quem afirma que vencer o Kainan seria "o maior momento de sua vida esportiva até então"?','A fala reflete a longa rivalidade histórica entre essas duas equipes tradicionais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Takenori Akagi',TRUE,0),(gen_random_uuid(),q,'Kaede Rukawa',FALSE,1),(gen_random_uuid(),q,'Hisashi Mitsui',FALSE,2),(gen_random_uuid(),q,'Ryota Miyagi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'who_said','medium','Quem promete a si mesmo nunca mais abandonar o basquete, independentemente das dificuldades futuras que possa enfrentar?','A fala marca a determinação renovada desse jogador após seu retorno emocional à equipe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Hisashi Mitsui',TRUE,0),(gen_random_uuid(),q,'Ryota Miyagi',FALSE,1),(gen_random_uuid(),q,'Kaede Rukawa',FALSE,2),(gen_random_uuid(),q,'Takenori Akagi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'who_said','hard','Quem elogia a evolução tática do Shohoku ao longo do torneio, reconhecendo publicamente o crescimento da equipe adversária?','A fala reflete o respeito esportivo desenvolvido por esse técnico rival ao longo da competição.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Taoka',TRUE,0),(gen_random_uuid(),q,'Mitsuyoshi Anzai',FALSE,1),(gen_random_uuid(),q,'Kesuke Uozumi',FALSE,2),(gen_random_uuid(),q,'Moichi Kiyota',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'who_said','medium','Quem declara que Sakuragi "tem o coração de um verdadeiro jogador de basquete", apesar da falta de técnica refinada?','A fala reconhece a paixão genuína do protagonista, independentemente de sua inexperiência técnica.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Mitsuyoshi Anzai',TRUE,0),(gen_random_uuid(),q,'Taoka',FALSE,1),(gen_random_uuid(),q,'Kesuke Uozumi',FALSE,2),(gen_random_uuid(),q,'Ayako',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'who_said','medium','Quem confessa que se sente responsável por manter a disciplina do time, mesmo quando isso significa confrontar Sakuragi diretamente?','A fala reflete o senso de dever dessa personagem em relação à harmonia da equipe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Ayako',TRUE,0),(gen_random_uuid(),q,'Haruko Akagi',FALSE,1),(gen_random_uuid(),q,'Fujii',FALSE,2),(gen_random_uuid(),q,'Momoko',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'who_said','hard','Quem admite, após a derrota, que o Shohoku foi "o adversário mais difícil" enfrentado durante toda a temporada nacional?','A fala reflete o reconhecimento sincero do valor competitivo do time protagonista por parte de um rival de peso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Toru Hanagata',TRUE,0),(gen_random_uuid(),q,'Yasuharu Fukatsu',FALSE,1),(gen_random_uuid(),q,'Jun Kawata',FALSE,2),(gen_random_uuid(),q,'Kiyota',FALSE,3);

    -- ===================== EPISODE_ARC (15) =====================
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'episode_arc','easy','Em qual arco Sakuragi se apaixona por Haruko e decide entrar para o time de basquete do Shohoku?','O arco estabelece a premissa inicial de toda a jornada do protagonista na série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Introdução ao Basquete',TRUE,0),(gen_random_uuid(),q,'Arco do Campeonato Nacional',FALSE,1),(gen_random_uuid(),q,'Arco de Mitsui',FALSE,2),(gen_random_uuid(),q,'Arco Final contra Sannoh',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'episode_arc','medium','Em qual arco Mitsui retorna ao basquete após anos afastado, confrontando seu passado e se reconciliando com Akagi?','O arco explora profundamente o trauma emocional e a redenção pessoal desse jogador.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Retorno de Mitsui',TRUE,0),(gen_random_uuid(),q,'Arco de Introdução ao Basquete',FALSE,1),(gen_random_uuid(),q,'Arco contra Ryonan',FALSE,2),(gen_random_uuid(),q,'Arco Final contra Sannoh',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'episode_arc','medium','Em qual arco o Shohoku enfrenta o Ryonan pela primeira vez, destacando a rivalidade entre Rukawa e Sendoh?','O arco apresenta um dos primeiros grandes testes competitivos enfrentados pela equipe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco contra Ryonan',TRUE,0),(gen_random_uuid(),q,'Arco do Retorno de Mitsui',FALSE,1),(gen_random_uuid(),q,'Arco contra Kainan',FALSE,2),(gen_random_uuid(),q,'Arco Final contra Sannoh',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'episode_arc','medium','Em qual arco o Shohoku enfrenta o Kainan, equipe conhecida pela rivalidade histórica com Akagi desde o ensino fundamental?','O arco aprofunda a motivação pessoal de Akagi em superar um rival de longa data.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco contra Kainan',TRUE,0),(gen_random_uuid(),q,'Arco contra Ryonan',FALSE,1),(gen_random_uuid(),q,'Arco do Retorno de Mitsui',FALSE,2),(gen_random_uuid(),q,'Arco Final contra Sannoh',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'episode_arc','hard','Em qual arco o Shohoku enfrenta o Sannoh, campeão nacional reinante, no confronto mais decisivo de toda a série?','O arco representa o clímax dramático e competitivo de toda a trajetória do time.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco Final contra Sannoh',TRUE,0),(gen_random_uuid(),q,'Arco contra Kainan',FALSE,1),(gen_random_uuid(),q,'Arco contra Ryonan',FALSE,2),(gen_random_uuid(),q,'Arco do Retorno de Mitsui',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'episode_arc','medium','Em qual arco Sakuragi treina intensamente sob orientação de Anzai, focando exclusivamente em fundamentos básicos do basquete?','O arco é fundamental para o desenvolvimento técnico do protagonista ao longo da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Treinamento Básico',TRUE,0),(gen_random_uuid(),q,'Arco do Retorno de Mitsui',FALSE,1),(gen_random_uuid(),q,'Arco contra Kainan',FALSE,2),(gen_random_uuid(),q,'Arco Final contra Sannoh',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'episode_arc','hard','Em qual arco Sakuragi sofre uma grave lesão nas costas durante o confronto decisivo contra o Sannoh?','O arco culmina em um dos momentos mais dramáticos e sacrificiais de toda a narrativa.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco Final contra Sannoh',TRUE,0),(gen_random_uuid(),q,'Arco contra Kainan',FALSE,1),(gen_random_uuid(),q,'Arco contra Ryonan',FALSE,2),(gen_random_uuid(),q,'Arco de Treinamento Básico',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'episode_arc','medium','Em qual arco Miyagi retorna ao time de basquete após conflitos pessoais relacionados ao envolvimento com uma gangue de rua?','O arco explora o passado conturbado desse jogador e sua jornada de reconciliação com o esporte.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco do Retorno de Miyagi',TRUE,0),(gen_random_uuid(),q,'Arco do Retorno de Mitsui',FALSE,1),(gen_random_uuid(),q,'Arco contra Ryonan',FALSE,2),(gen_random_uuid(),q,'Arco Final contra Sannoh',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'episode_arc','medium','Em qual arco o Shohoku disputa vaga no torneio nacional interescolar, competindo contra diversas equipes regionais?','O arco estabelece as bases competitivas para os confrontos decisivos que se seguem na série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco Classificatório Regional',TRUE,0),(gen_random_uuid(),q,'Arco Final contra Sannoh',FALSE,1),(gen_random_uuid(),q,'Arco do Retorno de Mitsui',FALSE,2),(gen_random_uuid(),q,'Arco de Treinamento Básico',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'episode_arc','hard','Em qual arco Rukawa recebe múltiplas propostas de escolas americanas interessadas em seu talento excepcional?','O arco expande o universo competitivo da série ao introduzir ambições internacionais.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco das Propostas Internacionais de Rukawa',TRUE,0),(gen_random_uuid(),q,'Arco contra Kainan',FALSE,1),(gen_random_uuid(),q,'Arco contra Ryonan',FALSE,2),(gen_random_uuid(),q,'Arco Final contra Sannoh',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'episode_arc','medium','Em qual arco a rivalidade entre Sakuragi e Rukawa atinge seu ponto mais tenso, quase comprometendo a harmonia do time?','O arco explora o conflito interno da equipe antes de uma reconciliação gradual entre os dois.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Conflito Interno',TRUE,0),(gen_random_uuid(),q,'Arco do Retorno de Mitsui',FALSE,1),(gen_random_uuid(),q,'Arco contra Kainan',FALSE,2),(gen_random_uuid(),q,'Arco Final contra Sannoh',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'episode_arc','hard','Em qual arco Akagi reflete sobre seu longo caminho até se tornar capitão, revisitando memórias do início de sua trajetória esportiva?','O arco aprofunda o desenvolvimento emocional desse personagem central da equipe.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Reflexão de Akagi',TRUE,0),(gen_random_uuid(),q,'Arco de Treinamento Básico',FALSE,1),(gen_random_uuid(),q,'Arco contra Ryonan',FALSE,2),(gen_random_uuid(),q,'Arco Final contra Sannoh',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'episode_arc','medium','Em qual arco o Shohoku desenvolve estratégias defensivas específicas para conter os principais jogadores do Sannoh antes do confronto direto?','O arco de preparação tática é essencial para o desempenho da equipe no clímax da série.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco de Preparação Tática',TRUE,0),(gen_random_uuid(),q,'Arco contra Kainan',FALSE,1),(gen_random_uuid(),q,'Arco do Retorno de Miyagi',FALSE,2),(gen_random_uuid(),q,'Arco Final contra Sannoh',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'episode_arc','medium','Em qual arco Hanagata do Kainan reconhece publicamente o crescimento técnico surpreendente do time Shohoku ao longo da temporada?','O arco reflete o reconhecimento gradual do valor competitivo da equipe protagonista por adversários experientes.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco contra Kainan',TRUE,0),(gen_random_uuid(),q,'Arco contra Ryonan',FALSE,1),(gen_random_uuid(),q,'Arco do Retorno de Mitsui',FALSE,2),(gen_random_uuid(),q,'Arco Final contra Sannoh',FALSE,3);

    -- ===================== COMPLEMENTO =====================
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','medium','Qual é a característica mais notável do estilo de liderança de Akagi frente aos calouros recém-chegados ao time?','Sua rigidez inicial esconde uma preocupação genuína com o desenvolvimento de cada jogador novato.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rigidez disciplinar combinada com cuidado',TRUE,0),(gen_random_uuid(),q,'Total permissividade',FALSE,1),(gen_random_uuid(),q,'Indiferença aos calouros',FALSE,2),(gen_random_uuid(),q,'Favoritismo evidente',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','easy','Qual jogador do Shohoku é frequentemente mostrado dormindo em sala de aula, refletindo seu desinteresse geral pelos estudos?','Esse comportamento contrasta com sua total dedicação exclusiva ao basquete.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaede Rukawa',TRUE,0),(gen_random_uuid(),q,'Takenori Akagi',FALSE,1),(gen_random_uuid(),q,'Hisashi Mitsui',FALSE,2),(gen_random_uuid(),q,'Mitsuyoshi Anzai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','medium','Qual jogador de Ryonan demonstra grande respeito esportivo por Akagi, apesar da rivalidade competitiva entre as equipes?','Esse reconhecimento mútuo reflete o espírito esportivo presente mesmo entre adversários diretos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kesuke Uozumi',TRUE,0),(gen_random_uuid(),q,'Akira Sendoh',FALSE,1),(gen_random_uuid(),q,'Kicchou Fukuda',FALSE,2),(gen_random_uuid(),q,'Ikegami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'text','hard','Qual é a postura de Sendoh ao perceber que Sakuragi, apesar de novato, representa ameaça real em quadra durante o confronto contra o Ryonan?','Ele passa a tratar o novato com seriedade crescente ao longo da partida.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Respeito crescente e cautela',TRUE,0),(gen_random_uuid(),q,'Desprezo constante',FALSE,1),(gen_random_uuid(),q,'Indiferença total',FALSE,2),(gen_random_uuid(),q,'Provocação agressiva contínua',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'fill_blank','medium','O jogador de Ryonan que demonstra grande respeito esportivo por Akagi se chama Kesuke _____.','Esse reconhecimento mútuo reflete o espírito esportivo presente mesmo entre adversários diretos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Uozumi',TRUE,0),(gen_random_uuid(),q,'Sendoh',FALSE,1),(gen_random_uuid(),q,'Fukuda',FALSE,2),(gen_random_uuid(),q,'Hanagata',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'fill_blank','easy','O jogador do Shohoku frequentemente mostrado dormindo em sala de aula é _____.','Esse comportamento contrasta com sua total dedicação exclusiva ao basquete.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Rukawa',TRUE,0),(gen_random_uuid(),q,'Akagi',FALSE,1),(gen_random_uuid(),q,'Mitsui',FALSE,2),(gen_random_uuid(),q,'Anzai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'fill_blank','medium','A postura de Sendoh ao perceber a ameaça real de Sakuragi em quadra é de respeito crescente e _____.','Ele passa a tratar o novato com seriedade crescente ao longo da partida.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Cautela',TRUE,0),(gen_random_uuid(),q,'Desprezo',FALSE,1),(gen_random_uuid(),q,'Indiferença',FALSE,2),(gen_random_uuid(),q,'Provocação',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'who_said','medium','Quem elogia publicamente o espírito esportivo de Akagi mesmo após ser derrotado por ele em quadra?','A fala reflete o respeito mútuo desenvolvido entre adversários competitivos.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kesuke Uozumi',TRUE,0),(gen_random_uuid(),q,'Akira Sendoh',FALSE,1),(gen_random_uuid(),q,'Kicchou Fukuda',FALSE,2),(gen_random_uuid(),q,'Ikegami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'who_said','medium','Quem admite que passou a levar Sakuragi a sério depois de perceber sua ameaça real durante o confronto contra o Ryonan?','A fala demonstra a mudança de percepção desse rival experiente sobre o novato.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Akira Sendoh',TRUE,0),(gen_random_uuid(),q,'Kesuke Uozumi',FALSE,1),(gen_random_uuid(),q,'Kicchou Fukuda',FALSE,2),(gen_random_uuid(),q,'Ikegami',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'who_said','easy','Quem é frequentemente flagrado dormindo em sala de aula por professores irritados com seu desinteresse acadêmico?','A fala do professor reflete a frustração recorrente com o comportamento desse aluno.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Kaede Rukawa',TRUE,0),(gen_random_uuid(),q,'Takenori Akagi',FALSE,1),(gen_random_uuid(),q,'Hisashi Mitsui',FALSE,2),(gen_random_uuid(),q,'Mitsuyoshi Anzai',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'episode_arc','medium','Em qual arco o Shohoku enfrenta pela primeira vez um time forte o suficiente para expor claramente as fraquezas técnicas de Sakuragi?','O arco serve como catalisador para o treinamento intensivo que o protagonista realiza em seguida.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Arco contra Ryonan',TRUE,0),(gen_random_uuid(),q,'Arco contra Kainan',FALSE,1),(gen_random_uuid(),q,'Arco do Retorno de Mitsui',FALSE,2),(gen_random_uuid(),q,'Arco Final contra Sannoh',FALSE,3);

    -- ===================== CHRONOLOGICAL (7) =====================
    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'chronological','medium','Qual evento ocorre primeiro na cronologia da série: a entrada de Sakuragi no time ou o retorno de Mitsui ao basquete?','A sequência estabelece a base narrativa antes das reconciliações posteriores entre os personagens.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Entrada de Sakuragi no time',TRUE,0),(gen_random_uuid(),q,'Retorno de Mitsui ao basquete',FALSE,1),(gen_random_uuid(),q,'Confronto contra o Sannoh',FALSE,2),(gen_random_uuid(),q,'Propostas internacionais a Rukawa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'chronological','medium','Qual confronto ocorre antes cronologicamente: o jogo contra o Ryonan ou o jogo contra o Sannoh?','A sequência de confrontos reflete a escalada de dificuldade competitiva ao longo do torneio.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Jogo contra o Ryonan',TRUE,0),(gen_random_uuid(),q,'Jogo contra o Sannoh',FALSE,1),(gen_random_uuid(),q,'Jogo contra o Kainan',FALSE,2),(gen_random_uuid(),q,'Nenhum — ocorrem simultaneamente',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'chronological','hard','Qual evento ocorre antes cronologicamente: o treinamento intensivo de Sakuragi em fundamentos básicos ou sua lesão nas costas contra o Sannoh?','A sequência mostra a evolução técnica do protagonista antes do sacrifício físico decisivo.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Treinamento intensivo em fundamentos',TRUE,0),(gen_random_uuid(),q,'Lesão nas costas contra o Sannoh',FALSE,1),(gen_random_uuid(),q,'Retorno de Mitsui',FALSE,2),(gen_random_uuid(),q,'Propostas internacionais a Rukawa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'chronological','medium','Qual evento ocorre antes cronologicamente: o confronto contra o Kainan ou o confronto final contra o Sannoh?','A sequência de partidas reflete o avanço progressivo do Shohoku rumo ao clímax do torneio.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Confronto contra o Kainan',TRUE,0),(gen_random_uuid(),q,'Confronto final contra o Sannoh',FALSE,1),(gen_random_uuid(),q,'Retorno de Miyagi',FALSE,2),(gen_random_uuid(),q,'Entrada de Sakuragi no time',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'chronological','hard','Qual evento ocorre antes cronologicamente: o retorno de Miyagi ao time ou a primeira partida oficial do Shohoku no torneio classificatório?','A sequência estabelece a formação completa do elenco titular antes das competições decisivas.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Retorno de Miyagi ao time',TRUE,0),(gen_random_uuid(),q,'Primeira partida do torneio classificatório',FALSE,1),(gen_random_uuid(),q,'Confronto final contra o Sannoh',FALSE,2),(gen_random_uuid(),q,'Lesão de Sakuragi',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'chronological','medium','Qual evento ocorre antes cronologicamente: a reconciliação entre Mitsui e Akagi ou o confronto direto contra o Ryonan?','A sequência mostra o fortalecimento do time antes de enfrentar adversários de peso.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Reconciliação entre Mitsui e Akagi',TRUE,0),(gen_random_uuid(),q,'Confronto direto contra o Ryonan',FALSE,1),(gen_random_uuid(),q,'Confronto final contra o Sannoh',FALSE,2),(gen_random_uuid(),q,'Propostas internacionais a Rukawa',FALSE,3);

    q := gen_random_uuid();
    INSERT INTO questions VALUES (q,v_sd,'chronological','hard','Qual evento ocorre por último cronologicamente entre os principais marcos da temporada: a lesão de Sakuragi ou o resultado final do confronto contra o Sannoh?','A sequência culmina no desfecho dramático da parte mais intensa da narrativa competitiva.',NULL,NULL,NULL,NULL,NULL,TRUE,v_system,NOW());
    INSERT INTO question_options VALUES (gen_random_uuid(),q,'Resultado final do confronto contra o Sannoh',TRUE,0),(gen_random_uuid(),q,'Lesão de Sakuragi',FALSE,1),(gen_random_uuid(),q,'Retorno de Mitsui',FALSE,2),(gen_random_uuid(),q,'Entrada de Sakuragi no time',FALSE,3);

END $$;
