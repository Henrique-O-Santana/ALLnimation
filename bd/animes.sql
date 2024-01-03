-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 04-Maio-2023 às 01:45
-- Versão do servidor: 8.0.33
-- versão do PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `animes`
--
CREATE DATABASE IF NOT EXISTS `animes` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci;
USE `animes`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--

DROP TABLE IF EXISTS `contato`;
CREATE TABLE IF NOT EXISTS `contato` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `assunto` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `mensagem` varchar(3000) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_animes`
--

DROP TABLE IF EXISTS `tab_animes`;
CREATE TABLE IF NOT EXISTS `tab_animes` (
  `Codanime` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Genero` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Data` date NOT NULL,
  `Episodios` int NOT NULL,
  `Diretor` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Estudio` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `fEtaria` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Sinopse` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Capa` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`Codanime`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Extraindo dados da tabela `tab_animes`
--

INSERT INTO `tab_animes` (`Codanime`, `Nome`, `Genero`, `Data`, `Episodios`, `Diretor`, `Estudio`, `fEtaria`, `Sinopse`, `Capa`) VALUES
(2, 'Chainsaw Man', 'ação, fantasia e aventura', '2022-10-10', 12, 'Ryu Nakayama', 'MAPPA', '+16', 'Denji tem um sonho simples - viver uma vida feliz e pacífica, passando um tempo com uma garota de quem gosta. Isso está muito longe da realidade, no entanto, já que Denji é forçado pela yakuza a matar demônios para pagar suas dívidas esmagadoras. Usando seu demônio de estimação Pochita como arma, ele está pronto para fazer qualquer coisa por um pouco de dinheiro.', 'img/02c76083367f9c9929da910ff1d3de18.jpg'),
(6, 'Overlord', 'ação e fantasia', '2015-07-07', 13, 'Naoyuki Itō', 'Madhouse', '+16', 'A história começa com Yggdrasil, um popular jogo online que um dia é tranquilamente encerrado. No entanto, o protagonista, Momonga, decide não fazer logout. Como consequência, Momonga é transportado para o jogo e transformado na imagem de um esqueleto como “o bruxo mais poderoso”. Não tendo pais, amigos, ou lugar na sociedade, este jovem esforça-se, então, para dominar este novo mundo.', 'img/88218c5b9e33c2ce666f442aff444169.jpg'),
(29, 'Midget no Basket', 'Esporte, ação, drama, anão', '1981-03-03', 13, 'Marcelo Panda', 'MAPPA, CloverWorks e Toei Animation', '+18', 'Determinado a alcançar seu ídolo João, Midget-kun entra para o clube de basquete da escola de Tokoku Navhara, no qual se inicia sua nova jornada em busca das bolas de ouro. Com a ajuda de Vereador, Fumaça e Guilherme-sama, Midget-kun irá se tornar uma lenda do basquete japônes.', 'img/7f8252d2aecc8c3a4434e50abf6aa055.jpg'),
(8, 'Jujutsu Kaisen', 'ação, fantasia e aventura', '2020-10-03', 24, 'Seong Ho Park', 'MAPPA', '+16', 'Yuuji é um gênio do atletismo, mas não tem interesse algum em ficar correndo em círculos. Ele é feliz como membro no Clube de Estudo de Fenômenos Psíquicos. Apesar de estar no clube apenas por diversão, tudo fica sério quando um espírito de verdade aparece na escola! A vida está prestes a se tornar muito estranha na Escola Sugisawa.', 'img/9ebf30247b4b47fd25093d26645e05a2.jpg'),
(9, 'Shingeki no Kyojin', 'ação, fantasia, aventura, drama e mistério', '2013-04-07', 25, 'Tetsuro Araki', 'Wit Studio', '+18', 'A história de Shingeki no Kyojin gira em torno de uma humanidade que vem sendo exterminada por gigantes. Porém alguns seres humanos estão dispostos a mudar história e formar um exército de ataque aos seres assassinos. É assim que entra Eren, nosso protagonista, que após ver sua mãe ser devorada por um gigante decide que não deixará nenhum deles vivo e buscará sua vingança completa.', 'img/3d3b0224012c7b8874119604c90b4833.jpg'),
(10, 'Grand Blue', 'comédia', '2018-07-14', 13, 'Shinji Takamatsu', 'Zero-G', '+12', 'Uma nova vida começa para Kitahara Iori, que acaba de ingressar na faculdade, perto do mar na cidade de Izu. Emocionado por um novo começo, ele se muda para casa do seu tio, uma loja de mergulho chamada \"Grand Blue\". Lá, ele encontra um lindo oceano, belas mulheres e homens que gostam de mergulho e álcool....Será Iori capaz de viver sua tão sonhada vida universitária?', 'img/cf3676210c0fc5b40867af92eea129fe.jpg'),
(11, 'SPY X FAMILY', 'comédia e ação', '2022-04-09', 12, 'Kazuhiro Furuhashi', 'Wit Studio, CloverWorks', '+12', 'O espião Twilight é instruído a construir uma família como parte de seu trabalho. Acontece que, sem saber, ele foi casar justamente com uma assassina e adotou uma filha com a habilidade de ler mentes.', 'img/770b6bfae08cbc051d9632509be76fbe.jpg'),
(12, 'Nichijou', 'comédia', '2011-04-03', 26, 'Tatsuya Ishihara', 'Kyoto Animation', 'L', 'Nichijou conta a vida cotidiana de vários alunos do colegial da cidade de Tokisadame. Apesar de coisas absurdas como uma garota robô e um gato que fala, todos os personagens levam uma vida normal.', 'img/92b39a41acd2f4d117171dfa035e90a8.jpg'),
(13, 'Blue Lock', 'Esporte', '2022-10-08', 24, 'Tetsuaki Watanabe', '8bit', '+12', 'A Associação de Futebol Japonesa decide contratar Jinpachi Ego, um treinador enigmático e excêntrico, para alcançar o sonho de conquistar a Copa do Mundo, criando o Blue Lock uma estrutura onde 300 atacantes talentosos são isolados e jogados uns contra os outros. O sobrevivente do Blue Lock terá o direito de ser o artilheiro da seleção, e os outros que forem derrotados serão banidos.', 'img/b001975874acbbf4d324163784e4e431.jpg'),
(14, 'Aoashi', 'Esporte', '2022-04-09', 24, 'Akira Satou', 'Production I.G.', '+12', 'Ashito Aoi é um jovem aspirante a jogador de futebol de uma cidade atrasada no Japão. Suas esperanças de entrar no colégio com um bom clube de futebol são frustradas quando ele provoca um incidente durante uma partida crítica para seu time, que resulta na derrota e eliminação do torneio. Mesmo assim, ele chama a atenção de alguém importante que por acaso estava visitando de Tóquio.', 'img/75ac02acb2cfa87b4e68ee44413ffab0.jpg'),
(15, 'No Game No Life', 'Ação, aventura, comédia, fantasia', '2014-04-09', 12, 'Atsuko Ishizuka', 'Madhouse', '+12', 'A história gira em torno do garoto Sora e da garota Shiro, dois irmãos que carregam a reputação de serem mentes brilhantes. Os dois são gamers conhecidos por toda a internet pelos seus feitos, enquanto encaram a vida real apenas como um jogo chato, defeituoso. Um dia eles são “convidados” por um garoto chamado de Deus para uma espécie de mundo alternativo onde tudo é decidido na base dos jogos.', 'img/7e65b08a1db22536447f99140d75706e.jpg'),
(16, 'Assassination Classroom', 'Ação, comédia, fantasia', '2015-03-21', 22, 'Eiichirō Hasumi', 'Lerche', '+10', 'A Classe 3-E da escola Kunugigaoka é apresentada a uma figura estranha. Ele é um monstro em formato de polvo e é o novo professor deles! Ainda, esse monstro foi responsável por destruir parte da lua e quer fazer o mesmo com a Terra em um ano, mas antes ele irá treinar todos os alunos dessa sala para uma missão bem peculiar: ensinar eles a matá-lo em menos de um ano, antes que ele cometa tal ato.', 'img/3153fc446462076455be95dab56f81e0.jpg'),
(17, 'Assassination Classroom 2', 'Ação, animação, comédia', '2016-01-07', 25, 'Seiji Kishi', 'Lerche', '+14', 'Segunda temporada de Assassination Classroom.', 'img/d5fadd4e436e36c712ad97e88eeb4cc4.jpg'),
(18, 'Azumanga Daioh', 'Comédia', '2002-04-09', 26, 'Hiroshi Nishikiori', 'JCStaff', '+13', 'Chiyo Mihama começa sua carreira no ensino médio como uma das alunas mais estranhas de sua turma de calouros - uma miúda prodígio acadêmica de 10 anos que adora bonecos de pelúcia e comida caseira. Mas sua professora de sala de aula, Yukari Tanizaki, é o tipo de pessoa que roubaria a bicicleta de um aluno para evitar o atraso, então \"estranho\" é uma palavra relativa.', 'img/d92c00c1aa945a4d2e5642c6c0fdd224.jpg'),
(19, 'Black Lagoon', 'Ação', '2006-04-09', 12, 'Sunao Katabuchi', 'Madhouse', '+17', 'O assalariado Rokurou Okajima passa seus dias tentando subir na escada corporativa de sua empresa, até que um dia, quando uma negociação comercial na Tailândia dá errado. Durante o negócio fracassado, ele se torna refém da Lagoon Company um bando de ​​piratas mercenários. Deixado aos caprichos de seus captores depois que seus gerentes se recusam a pagar seu resgate, Rokurou faz o impensável: em vez de implorar por sua vida, ele se junta à mesma equipe que o sequestrou.', 'img/ea3bcb618f5ddc21989c50f54e820871.jpg'),
(20, 'Haikyu!!', 'Comédia, drama, esporte', '2014-04-06', 25, 'Susumu Mitsunaka', 'Production I.G.', '+10', 'Shouyou Hinata, ao ver uma partida de voleibol, fica fascinado com “o Pequeno Gigante”, um habilidoso jogador de vôlei, então decide juntar-se ao clube de vôlei de sua escola, no entanto ele é o único membro do clube. Após 3 anos ele finalmente completa o time e ruma para a disputa do Torneio de Primavera.', 'img/036f3f1ab44b4998eeb8c6a682486403.jpg'),
(26, 'Super Campeões', 'Esporte, família, infantil', '1983-10-10', 128, 'Hiroyoshi Mitsunobu', '', 'L', 'Super Campeões era um desenho animado japonês que narrava as aventuras da seleção japonesa de futebol, centradas em seu capitão, Oliver Tsubasa. O espetáculo é caracterizado por movimentos de futebol dinâmico contido em ações fantasiosas. Também mostram os relacionamentos entre os amigos, os rivais, os treinamentos, as competições e o andamento das partidas.', 'img/6f67ff31279f4ccc36ada6d14f5f449b.jpg'),
(27, 'Super Campeões (2018)', 'Ação, esporte', '2018-04-03', 52, 'Toshiyuki Kato', 'David Production', 'L', 'Oozora é um garoto de 11 anos apaixonado por futebol. O que era um hobby para seus amigos, se tornou sua obsessão. Afim de perseguir seus sonhos, ele se muda junto de sua mãe para a cidade de Nankatsu. Aqui, ele encontra novos amigos e novos rivais.', 'img/6fac7a03dc5b8fb87b6d88a3576a9e05.jpg'),
(22, 'Naruto Shippuden', 'Ação, aventura, fantasia', '2007-02-15', 500, 'Osamu Kobayashi', 'Pierrot', '+13', 'Já se passaram dois anos e meio desde que Naruto Uzumaki deixou Konohagakure, a Vila Oculta da Folha, para um treinamento intenso após eventos que alimentaram seu desejo de ser mais forte. Agora a Akatsuki, a misteriosa organização de ninjas rebeldes de elite, está se aproximando de seu grande plano que pode ameaçar a segurança de todo o mundo shinobi.', 'img/e16ecbfe50f018f0efe1a81e69b2efcf.jpg'),
(23, 'Bleach', 'Ação, aventura, fantasia', '2004-10-05', 366, 'Noriyuki Abe', 'Pierrot', '+13', 'Ichigo Kurosaki é um colegial comum, até que sua família é atacada por um Hollow, um espírito corrupto que procura devorar as almas humanas. É então que ele conhece um ladrão de almas chamado Rukia Kuchiki, que se machuca ao proteger a família de Ichigo do agressor. Para salvar sua família, Ichigo aceita a oferta de Rukia de tomar seus poderes e se torna um ladrão de almas como resultado.', 'img/42875835bda05da19578853e80207ab9.jpg'),
(24, 'Pokémon', 'Ação, aventura, comédia, fantasia', '1997-04-01', 276, 'Kunihiko Yuyama', 'OLM', 'L', 'O jovem Satoshi não sonhava apenas em se tornar um treinador Pokémon, mas também um \"Mestre Pokémon\" e, ao completar 10 anos, ele finalmente teve a chance de tornar esse sonho realidade. Infelizmente para ele, todos os três Pokémon disponíveis para treinadores iniciantes já foram escolhidos e apenas Pikachu, um Pokémon rebelde do tipo elétrico, permanece. No entanto, esse encontro casual marcaria o início de uma amizade para toda a vida e de uma aventura épica!', 'img/4ed916ed10d415322a6dec07219f8c27.jpg'),
(25, 'Inazuma Eleven', 'Esporte', '2008-10-05', 127, 'Katsuhito Akiyama', 'OLM', 'L', 'Enquanto outras escolas no Japão competem pelo título de melhor time de futebol do país, o clube de futebol da Raimon Middle School, Inazuma Eleven, luta para sair da iminência de ser dissolvido. O neto do goleiro de primeira geração do Inazuma Eleven e capitão do time, Mamoru Endou, aceita o desafio de colocar o time negligenciado de volta em forma. Para fazer isso, ele precisará de uma ajudinha e mais do que um pouco de sorte.', 'img/add5c4d2024bb45f6648d668abf83607.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_contas`
--

DROP TABLE IF EXISTS `tab_contas`;
CREATE TABLE IF NOT EXISTS `tab_contas` (
  `Codconta` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(70) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Email` varchar(70) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Senha` varchar(70) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `Adm` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`Codconta`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Extraindo dados da tabela `tab_contas`
--

INSERT INTO `tab_contas` (`Codconta`, `Nome`, `Email`, `Senha`, `Adm`) VALUES
(1, 'HENRIQUE', 'trabalhadorhonessto@gmail.com', 'a4dbfd6aef3b4045fe61aa0146debdf8', 'nao'),
(2, 'Henrique', 'superyki3000@gmail.com', 'a4dbfd6aef3b4045fe61aa0146debdf8', 'sim'),
(3, 'Harison', 'slashguitarra@gmail.com', '09ede8696ac5b8e0323e7a63ebd99e73', 'nao'),
(4, 'Nishi', 'naruto@hotmail.com', 'f87dab8d027236545a2257c668603a4d', 'sim'),
(6, 'Ana Ju', 'ana.ju@gmail.com', '202cb962ac59075b964b07152d234b70', 'nao'),
(7, 'João', 'joaokun@gmail.com', '202cb962ac59075b964b07152d234b70', 'nao');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
