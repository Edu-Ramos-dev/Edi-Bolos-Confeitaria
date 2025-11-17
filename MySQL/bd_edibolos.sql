CREATE DATABASE IF NOT EXISTS bd_edibolos
  DEFAULT CHARACTER SET utf8mb4
  DEFAULT COLLATE utf8mb4_unicode_ci;

USE bd_edibolos;

SET SQL_MODE = NO_AUTO_VALUE_ON_ZERO;
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = +0000;

CREATE TABLE tb_areas (
  id_Area int(11) NOT NULL,
  titulo varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO tb_areas (id_Area, titulo) VALUES
(1, 'Bolo caseiro'),
(2, 'Bolo de Festa'),
(3, 'Slice Cake'),
(4, 'Cupcake  Bolos de pote');

CREATE TABLE tb_login (
  idLogin int(11) NOT NULL,
  dataCad datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  nome varchar(255) NOT NULL,
  email varchar(255) NOT NULL,
  senha varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO tb_login (idLogin, dataCad, nome, email, senha) VALUES
(1, '2024-03-04 213652', 'Gustavo Lima', 'gustavolsantos2022@gmail.com', '046184f04d4d8e35a4258bd0df1181d4'),
(2, '2024-03-04 213659', 'Lucas Felippe', 'lucasfelippe@gmail.com', 'a4e7524e9680f0c8784b46ac9072505e'),
(3, '2024-03-04 213722', 'Caelton', 'Caeltonmatiasmaiamaia@gmail.com', '1e7826b120f6982643ef78aabec5026b'),
(4, '2024-03-04 213728', 'Eduardo', 'eduardo@edibolos.com.br', 'b1af585fe244e6f45986890bd5ef541d'),
(5, '2024-03-05 222546', 'admin', 'admin!@gmail.com', 'b55680b058fd15a460817554d66cd842');

CREATE TABLE tb_produts (
  id_Produts int(11) NOT NULL,
  titulo varchar(255) NOT NULL,
  img varchar(255) DEFAULT NULL,
  imgThumb varchar(255) DEFAULT NULL,
  descricao longtext NOT NULL,
  preco decimal(64,2) DEFAULT NULL,
  id_Area int(11) NOT NULL,
  recheio varchar(255) DEFAULT NULL,
  decoracao varchar(255) DEFAULT NULL,
  cobertura varchar(255) DEFAULT NULL,
  massa varchar(255) DEFAULT NULL,
  tema varchar(255) DEFAULT NULL,
  kgpeso decimal(3,2) DEFAULT NULL,
  ativo tinyint(4) DEFAULT NULL,
  home tinyint(4) DEFAULT NULL,
  visualizacao int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tb_produts` (`id_Produts`, `titulo`, `img`, `imgThumb`, `descricao`, `preco`, `id_Area`, `recheio`, `decoracao`, `cobertura`, `massa`, `tema`, `kgpeso`, `ativo`, `home`, `visualizacao`) VALUES
(1, 'Bolo do Kakashi', 'bolo_01.jpg', 'bolo_01.jpg', '\r\nApresentamos o \"Bolo do Kakashi\" da confeitaria Edi, uma homenagem deliciosa a um dos personagens mais icônicos do mundo anime! Este bolo é uma verdadeira obra de arte comestível, inspirada na personalidade única e no estilo marcante do Kakashi.', '80.00', 2, 'Doce de leite', 'Kakashi', 'Chantilly', 'Baunilha', 'Kakashi', '3.00', 1, 0, NULL),
(2, 'Bolo Show da Luna', 'bolo_03.jpg', 'bolo_03.jpg', 'Apresentamos o \"Bolo Show da Luna\" da confeitaria Edi, uma homenagem deliciosa à adorável personagem que conquistou o coração das crianças e dos adultos! Este bolo é uma verdadeira celebração da curiosidade, da exploração e da diversão.', '80.00', 2, 'Doce de leite', 'Show da Luna', 'Chantilly', 'Baunilha', 'Show da Luna', '4.00', 1, 1, NULL),
(3, 'Bolo de bodas', 'bolo_02.jpg', 'bolo_02.jpg', 'O \"Bolo de Bodas\" da confeitaria Edi é uma celebração do amor e da união que resistiram ao teste do tempo. Este bolo é mais do que uma simples sobremesa; é um símbolo do compromisso e da dedicação que permeiam cada ano de uma jornada compartilhada.', '80.00', 2, 'Doce de leite', 'Alianças', 'Chantilly', 'Baunilha', 'Bodas', '4.00', 1, 1, NULL),
(4, 'Chantilly festivo', 'bolo_04.jpg', 'bolo_04.jpg', ' O \"Bolo de Chantilly com Morango Festivo\" da confeitaria Edi é uma celebração da combinação clássica e irresistível de chantilly leve e cremoso com a doçura fresca e suculenta dos morangos. Este bolo é uma festa para os sentidos, com cada camada macia e úmida sendo cuidadosamente montada para criar uma experiência gastronômica verdadeiramente memorável. ', '80.00', 2, 'Doce de leite', 'Aniversário', 'baunilha', 'Chocolate Branco', 'aniversario', '3.00', 1, 1, NULL),
(5, 'Bolo do Quico', 'bolo_05.jpg', 'bolo_05.jpg', '\r\nCelebre o aniversário com um bolo inspirado no personagem mais querido da série \"Chaves\" - o Quico! O Bolo de Aniversário do Quico do Chaves é uma delícia artesanal que vai encantar os fãs de todas as idades. Com camadas macias de bolo de baunilha recheado com doce de leite cremoso, este bolo é uma verdadeira festa para o paladar.', '70.00', 2, 'Doce de leite', 'Aniversário', 'baunilha', 'Chocolate Branco', 'aniversario', '3.00', 1, 1, NULL),
(6, 'Bolo Fantástico', 'bolo_06.jpg', 'bolo_06.jpg', '  Bolo de cenoura com nozes é uma união encantadora de sabores e texturas que proporciona uma experiencia irresistivel para os amantes de bolos.  ', '60.00', 2, 'Doce de Leite', 'Arroz', 'Chantilly ', 'Coco', 'Festa', '1.00', 1, 1, NULL),
(7, 'Cupcake Zelândia', 'cupcake3.jpg', 'cupcake3.jpg', '\r\nApresentamos o \"Cupcake Nova Zelândia\" da confeitaria Edi, uma homenagem deliciosa e encantadora à beleza e aos sabores únicos deste país fascinante. Cada mordida deste cupcake é uma jornada sensorial através das paisagens deslumbrantes e dos ingredientes frescos da Nova Zelândia.', '16.00', 4, 'Chocolate', 'Nova Zelandia', 'Chantilly', 'Chocolate', 'Países', '1.00', 1, 1, NULL),
(8, 'Cupcake do cruzeiro', 'cupcake6.jpg', 'cupcake6.jpg', 'Apresentamos o \"Cupcake Cruzeiro\" da confeitaria Edi, uma deliciosa viagem culinária que evoca o glamour e a emoção de um cruzeiro luxuoso. Este cupcake é uma celebração da aventura, do relaxamento e do prazer que acompanham uma jornada pelo mar.', '15.00', 4, 'Chocolate', 'Cruzeiro', 'Chocolate', 'Chocolate', 'aniversario', '1.00', 1, 1, NULL),
(11, 'Bolo do Stitch', 'bolo_07.jpg', 'bolo_07.jpg', 'O Bolo Stitch da confeitaria Edi é uma homenagem deliciosa e encantadora ao adorável personagem azul do filme \"Lilo & Stitch\". Este bolo é uma celebração da diversão, da inocência e do espírito aventureiro que Stitch representa, e cada detalhe é cuidadosamente elaborado para capturar sua essência única.', '90.00', 2, 'Chocolate branco', 'Aniversário', 'Tutti Frutti', 'Chocolate Branco', 'Aniversario', '5.00', 1, 1, NULL),
(14, 'Bolo de abacaxi', 'bolo_09.jpg', 'bolo_09.jpg', '   Desfrute de uma explosão tropical de sabores com nosso irresistível bolo de abacaxi. Esta obra-prima da confeitaria combina a suavidade da massa fofa com a intensidade do abacaxi fresco, criando uma experiência única para o paladar. Cada mordida é uma mistura equilibrada de doçura e acidez, enquanto pedaços suculentos de abacaxi adicionam uma textura suculenta e refrescante.   ', '120.00', 2, 'Abacaxi com Creme', 'happy birthday com a cor azul com detalhes ourados', 'Pão de ló', 'Chocolate Branco', 'Aniversário', '4.00', 1, 1, NULL),
(16, 'Cupcake Dinossauro', 'cupcake1.jpg', 'cupcake1.jpg', 'Os cupcakes dinossauro são uma aventura deliciosa para os amantes desses animais pré-históricos. Cada mordida é uma jornada de descoberta, com sabores divertidos e uma decoração encantadora que transporta os comensais de volta aos tempos antigos.', '12.00', 4, 'abacaxi', 'festa', 'morango', 'chocolate', 'safari', '9.99', 1, 0, NULL),
(17, 'Cupcake tropical', 'cupcake2.jpg', 'cupcake2.jpg', '    Os cupcakes tropicais são uma explosão de sabores exóticos e frescos que evocam as brisas quentes e ensolaradas das ilhas paradisíacas. Cada mordida é uma viagem sensorial para um paraíso tropical, com uma combinação única de frutas suculentas, especiarias exóticas e sabores refrescantes.', '13.00', 4, 'Chocolate', 'festa', 'chocolate', 'borda', 'festa', '9.99', 1, 0, NULL),
(18, 'Cupcake Real', 'cupcake4.jpg', 'cupcake4.jpg', ' Os cupcakes da realeza são uma verdadeira indulgência digna de um palácio! Cada cupcake é uma obra-prima culinária, feita com os melhores ingredientes e decorada com elegância e sofisticação. A base macia e delicada é uma homenagem à nobreza, enquanto a cobertura de buttercream é como uma coroa de glória, adornada com detalhes de luxo. ', '15.00', 4, 'manga', 'aniversario', 'leite', 'borda', 'realeza', '9.99', 1, 0, NULL),
(19, 'Cupcake Inverno', 'cupcake5.jpg', 'cupcake5.jpg', 'Os cupcakes de aniversário são uma explosão de alegria e celebração em forma de doce. Cada cupcake é uma pequena festa, com uma massa macia e fofinha, delicadamente perfumada e cheia de sabor. Decorados com uma cobertura de buttercream colorida e vibrante, e talvez até mesmo alguns confeitos festivos ou uma vela brilhante, esses cupcakes são uma adição encantadora a qualquer comemoração de aniversário.', '12.00', 4, 'borda', 'churrasco', 'morango', 'azul', 'aniversario', '9.99', 1, 0, NULL),
(20, 'Cupcake de Baunilha', 'cupcake7.jpg', 'cupcake7.jpg', 'Os cupcakes de baunilha são uma deliciosa interpretação de um clássico da confeitaria. Cada cupcake é uma pequena obra-prima, com uma massa leve e fofinha, delicadamente perfumada com o aroma doce e reconfortante da baunilha. Ao morder, você é recebido por uma textura macia e um sabor suave e reconfortante, que traz à mente lembranças de infância e momentos felizes.', '12.00', 4, 'morango', 'festa', 'baunilha', 'borda', 'prata', '9.99', 1, 0, NULL),
(21, 'Cupcake Minnie', 'cupcake8.jpg', 'cupcake8.jpg', 'Os cupcakes Cupcake da Minnie são uma adorável homenagem à icônica personagem da Disney, Minnie Mouse. Cada cupcake é uma obra de arte comestível, decorada com detalhes que capturam a essência do charme e da alegria da Minnie.', '12.00', 4, 'maça', 'festa', 'morango', 'redonda', 'eu mesmo', '9.99', 1, 0, NULL),
(22, 'Doce encanto', 'cupcake9.jpg', 'cupcake9.jpg', 'Os cupcakes Doce Encanto são pequenas obras de arte culinárias que capturam a essência do prazer e da indulgência. Cada mordida é uma experiência de puro deleite, onde a suavidade da massa se encontra com o cremoso recheio e a cobertura sedosa, criando uma explosão de sabores que encantam os sentidos.', '12.00', 4, 'Doce de leite', 'festa', 'Chocolate', 'Chocolate', 'Sabor irresístivel', '1.99', 1, 0, NULL),
(26, 'Bolo do Flock', 'caseiro2.jpg', 'caseiro2.jpg', '    ', '350.00', 1, 'Abacaxi', 'Flock', 'Confetes com Chantilly', 'Massa branca', 'Meme do Flock', '2.00', 1, 1, 0),
(27, 'Bolo Floral', 'caseiro3.jpg', 'caseiro3.jpg', '  \r\nApresentamos o \"Bolo Floral Primaveril\" da confeitaria Edi, uma obra-prima que combina elegância e delicadeza em cada detalhe. Este bolo é uma celebração da beleza das flores, trazendo para a sua mesa um toque de primavera durante o ano inteiro.', '80.00', 1, 'Creme com Pêssegos', 'Flores de Chantilly', 'Chantilly', 'Massa de Pão de Ló', 'Floral', '1.00', 1, 0, 0),
(28, 'Bolo do Chefinho ', 'bolo_08.jpg', 'bolo_08.jpg', 'A cobertura de pão de ló leve e macia adiciona uma camada de sabor suave e textura delicada. Decorada com uma camada fina de glacê branco, esta cobertura representa a elegância e a classe que o Chefinho exibe em suas missões.', '150.00', 2, 'Doce de Leite', 'Desenho do Poderoso Chefinho', 'Pão de Ló', 'Floresta Negra', 'Desenho Animado', '4.00', 1, 1, 0),
(29, 'Bolo Azul Marinho', 'caseiro9.jpg', 'caseiro9.jpg', '  O \"Bolo Azul Marinho\" da confeitaria Edi é uma escolha sofisticada e elegante para uma variedade de ocasiões especiais. Com sua cor profunda e rica, este bolo evoca uma sensação de serenidade e elegância, perfeito para eventos como casamentos, aniversários formais ou celebrações corporativas.', '300.00', 1, 'Geleia de framboesa', 'Chantilly Azul Marinho com Pérolas', 'Chantilly', 'Massa de Chocolate Branco', 'Simples', '5.00', 1, 0, 0),
(31, 'Bolo de Maracujá', 'caseiro5.jpg', 'caseiro5.jpg', '  \r\nApresentamos o Bolo Tentação de Maracujá da confeitaria Edi, uma explosão de sabor tropical que vai te transportar para um paraíso de delícias! Este bolo é uma verdadeira celebração do maracujá, com cada mordida inundando seu paladar com o frescor e a doçura dessa fruta exótica.', '100.00', 1, 'Maracuja', 'Maracuja', 'Maracuja', 'Baunilha', 'Tentação de maracujá', '5.00', 1, 1, 0),
(32, 'Bolo de Chantilly', 'caseiro10.jpg', 'caseiro10.jpg', '   Apresentando o Bolo Dupla Delícia da confeitaria Edi, uma combinação celestial de sabores que vai encantar os seus sentidos! Este bolo é uma celebração da harmonia entre o doce e o refrescante, perfeito para momentos especiais ou simplesmente para se deliciar. ', '100.00', 1, 'Doce de leite', 'Morango com chocolate Branco', 'Morango', 'Baunilha', 'Morango irresístivel', '5.00', 1, 1, 0),
(33, 'Slice Cake ', 'slicecake1.jpg', 'slicecake1.jpg', '   Apresentamos o \"Bolo Trio de Delícias\" da confeitaria Edi, uma tentação irresistível para os amantes de chocolate e frutas! Este bolo combina o sabor intenso do chocolate com a doçura dos morangos frescos, o cremoso brigadeiro e o tradicional beijinho, proporcionando uma explosão de sabores em cada mordida. ', '20.00', 3, 'Chocolate', 'Chcocolate', 'Chocolate', 'Chocolate', 'Trio irresístivel', '1.00', 1, 1, 0),
(35, 'Slice cake  namorados', 'slicecake4.jpg', 'slicecake4.jpg', '  Apresentando a Slice Cake \"Doce Amor\" da confeitaria Edi, a maneira perfeita de celebrar o Dia dos Namorados com muito romance e sabor! Esta fatia de bolo é uma verdadeira declaração de amor em forma de sobremesa.', '15.00', 3, 'Chocolate', 'Dia dos namorados', 'Chocolate', 'Chocolate', 'Dia dos namorados', '1.00', 1, 1, 0),
(40, 'Slice cake com recheio de morango', 'slicecake9.webp', 'slicecake9.webp', '    ', '0.00', 3, '', '', '', '', '', '0.00', 0, 0, 0),
(41, 'Slice cake ChocoBrigadeiro', 'slicecake8.jpg', 'slicecake8.jpg', 'Apresentamos a Slice Cake \"ChocoBrigadeiro\" da confeitaria Edi, uma irresistível tentação para os amantes de chocolate e brigadeiro! Esta fatia de bolo é uma verdadeira indulgência para os apreciadores de sabores intensos.', '0.00', 3, 'Chocolate', 'Chocolate e brigadeiro', 'Chocolate', 'Chocolate', 'Sabor irresístivel', '1.00', 0, 0, 0),
(42, 'Cupcakes Coloridos', 'cupcake10.jpg', 'cupcake10.jpg', '  Apresentando os Cupcakes Arco-Íris de Chocolate da confeitaria Edi - uma explosão de sabor e cor em cada mordida! Esses cupcakes deliciosos são feitos com uma massa rica e fofinha de chocolate, que derrete na boca e deixa um sabor irresistível. ', '8.00', 4, 'Chocolate', 'Colorido', 'Chocolate', 'Chocolate', 'Arco-íris', '1.00', 1, 1, 0);


ALTER TABLE tb_areas
  ADD PRIMARY KEY (id_Area);

ALTER TABLE tb_login
  ADD PRIMARY KEY (idLogin);

ALTER TABLE tb_produts
  ADD PRIMARY KEY (id_Produts);

ALTER TABLE tb_areas
  MODIFY id_Area int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE tb_login
  MODIFY idLogin int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE tb_produts
  MODIFY id_Produts int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

COMMIT;
