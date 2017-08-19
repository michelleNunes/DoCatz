-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.20


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema clinica_vet
--

CREATE DATABASE IF NOT EXISTS clinica_vet;
USE clinica_vet;

--
-- Definition of table `bairro`
--

DROP TABLE IF EXISTS `bairro`;
CREATE TABLE `bairro` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `cod_zona` int(11) NOT NULL,
  PRIMARY KEY (`cod`),
  UNIQUE KEY `cod` (`cod`),
  UNIQUE KEY `nome` (`nome`),
  KEY `cod_zona` (`cod_zona`),
  CONSTRAINT `bairro_ibfk_1` FOREIGN KEY (`cod_zona`) REFERENCES `zona` (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bairro`
--

/*!40000 ALTER TABLE `bairro` DISABLE KEYS */;
INSERT INTO `bairro` (`cod`,`nome`,`cod_zona`) VALUES 
 (1,'Cidade Nova',1),
 (2,'Sao Jose',3),
 (3,'Centro',6),
 (4,'Japiim',6),
 (5,'Sao Lazaro',6),
 (6,'Zumbi',3),
 (7,'Distrito Industrial',3),
 (8,'Flores',2),
 (9,'Adrianopolis',2),
 (10,'Aleixo',2),
 (11,'Chapada',2),
 (12,'Dom Pedro',4),
 (13,'Alvorada',4),
 (14,'Novo Aleixo',1),
 (15,'Cidade de Deus',1),
 (16,'Nova Cidade',1),
 (17,'Nova Esperança',5),
 (18,'Planalto',4),
 (19,'Parque 10 de novembro',2),
 (20,'Novo Israel',1),
 (21,'Nossa Senhora das Gracas',2),
 (22,'Lirio do vale',5),
 (23,'Presidente Vargas',6),
 (24,'Sao Jorge',5),
 (25,'Cachoeirinha',6),
 (26,'Praca 14 de janeiro',6),
 (27,'Educandos',6),
 (28,'Petropolis',6),
 (29,'Sao Francisco',6),
 (30,'Coroado',3),
 (31,'Redencao',4),
 (32,'Taruma',5);
/*!40000 ALTER TABLE `bairro` ENABLE KEYS */;


--
-- Definition of table `clinica`
--

DROP TABLE IF EXISTS `clinica`;
CREATE TABLE `clinica` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `cep` varchar(9) DEFAULT NULL,
  `telefone` int(10) DEFAULT NULL,
  `cod_bairro` int(11) NOT NULL,
  `horario_atd` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`cod`),
  UNIQUE KEY `cod` (`cod`),
  KEY `cod_bairro` (`cod_bairro`),
  KEY `cep` (`cep`) USING BTREE,
  CONSTRAINT `clinica_ibfk_1` FOREIGN KEY (`cod_bairro`) REFERENCES `bairro` (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clinica`
--

/*!40000 ALTER TABLE `clinica` DISABLE KEYS */;
INSERT INTO `clinica` (`cod`,`nome`,`endereco`,`cep`,`telefone`,`cod_bairro`,`horario_atd`) VALUES 
 (1,'Pet Shop Bicho Travesso','Av. B,24','69043-130',32383623,13,'08:00 as 18:00'),
 (2,'Amazon Animais Pet Shop','Hiper DB Cidade Nova, Av. Noel Nutels, 1762','69093-770',36362248,1,'9:30 as 21:30'),
 (3,'Maskote Pet Shop','Av. Darcy Vargas, 2262','69050-020',32383480,11,'8:00 as 18:00'),
 (4,'Bicharada Pet Center','Av. Camapuã, 3','69097-450',36411124,16,'8:00 as 18:30'),
 (5,'Pet Shop Ilha dos Bichos','Av. Noel Nutels, 1473','69095-000',36452313,1,''),
 (6,'Pet Shop é o Bicho','Av. Prof. Nilton Lins, 3522','69058-400',32360744,8,'8:00 as 19:00'),
 (7,'Mega Pet Stores','Av. Jorn. Umberto Calderaro Filho, Nº2, Conj. Abilio Nery, Quadra E','69057-015',32367003,9,'9:00 as 18:00'),
 (8,'Amazon Pet','R. dos Crisântemos, 214','69083-230',32480236,10,'8:00 as 20:00'),
 (9,'Minas Pet Shop','Rua Barão do Rio Branco, N° 01, Loja 03 - Parque das Laranjeiras','69058-581',30814994,8,'8:00 as 21:00'),
 (10,'Pet Shop DB Ponta Negra','Av. Coronel Teixeira, 7687','69037-473',36566360,17,'8:00 as 22:00'),
 (11,'Imperio Animal','Av. Irianeopolis Osvaldo Frota, 58 - Renato Souza Pinto','69095-500',32232521,1,'8:00 as 17:00'),
 (12,'Pet Shop do Cão','Rua Central, 807 - Campos Elisios','69046-000',36515618,18,'8:00 as 19:30'),
 (13,'Madagascar Pet Shop','Av. Constantino Nery, 2850','69050-001',32369910,11,'8:00 as 18:00'),
 (14,'Bichomania Pet Shop','Av. Djalma Batista, 482','69050-010',36311392,11,'10:00 as 20:00'),
 (15,'Clinica veterinaria Shopping da natureza','Rua Conde Santa Cruz, 49-Parque das Laranjeiras','69058-780',36369850,8,''),
 (16,'Clinica veterinaria J adore','Rua João Câmara, 1532','69098-320',32237100,1,'8:30 as 18:00'),
 (17,'Consultorio veterinaria Miau Auau','Avenida Tancredo Neves 31 Loja 2','',32369846,19,''),
 (18,'Happy pet Consultorio Veterianrio','Av. Margarita, 2654','69097-305',36674043,1,'8:30 as 18:00'),
 (20,'Clinica veterinaria Arca de Noé','Av. Djalma Batista, 455','69050-010',32363013,11,'8:00 as 18:00'),
 (21,'Casa Beagle','Av. Tancredo Neves, 9','69054-040',30873005,19,'8:00 as 19:00'),
 (22,'Pet Shop Nepal','Av. Nepal, 4','69097-315',36670966,1,'08:00 as 20:00'),
 (23,'Casa Doberman','R. 20, 1001','69055-750',32369665,19,'07:30 as 21:00'),
 (24,'Chiques e Cheirosos','Avenida Carlota Joaquina, 695','69055-011',32134417,19,''),
 (25,'Casa Canina','Av. Ivanete Machado, 935','',36480038,19,'08:00 as 20:00'),
 (26,'Pet Stop Animal Care','R. Rio Jutaí, 39','69053-020',30878448,21,'08:00 as 17:00'),
 (27,'Faro Fino Clínica Veterinária','Av. Humberto Calderaro, 678','69079-265',36114419,9,'24 horas'),
 (28,'Clínica Veterinária Diagnovet','Av. Coronel Teixeira, 6514','69038-015',32383926,22,'24 horas'),
 (29,'Clínica Veterinária Linameg','R. São Bento, 46','69033-160',32323032,24,'24 horas'),
 (30,'Pronto Vet','R. Belo Horizonte, 321','69057-060',32134223,9,'08:00 as 19:00'),
 (31,'Clínica Veterinária Dr Sócrates','Av. Gen. Rodrigo Otávio, 1023','69077-000',32376754,4,'08:00 as 18:00'),
 (32,'Centro Medico Veterinario de Manaus','Rua Boa Sorte,284','69025-360',32330194,23,'08:30 as 20:00'),
 (33,'Clinica Veterinaria An. Health','Av. Tefé,516','69065-020',36636345,25,'24 horas'),
 (34,'Auquimia Clínica Veterinária','Avenida Noel Nutels, 1761, Sumaúma Park Shopping-Lj 1012','69095-000',33429055,1,'10:00 as 22:00'),
 (35,'Clínica Veterinária Dr. Pires','Av. Guilherme Paraense, 5','69057-095',36461314,9,''),
 (36,'Vet Shop','Av. Pres. Castelo Branco, 183','69065-010',32336442,25,'08:00 as 18:00'),
 (37,'Bichomania','Av. Carvalho Leal, 1351','69065-001',30847109,25,'08:00 as 17:00'),
 (38,'Super Pet Shop','Av. Japurá, 1023','69020-180',32335566,26,'08:00 as 17:00'),
 (39,'Pegada Pet Shop','Av. Leopoldo Péres, 393','69070-250',32342059,27,'08:00 as 18:00'),
 (40,'Latidu s Dog','R. Visc. Porto Alegre','69020-130',32324463,3,'08:00 as 19:00'),
 (41,'Animal Society Pet Shop','R. Valério B. de Andrade, 245','69079-260',991413995,29,''),
 (42,'Casa dos Animais','R. Cel. Ferreira de Araújo, 558','69063-000',36317990,28,'07:30 as 19:30'),
 (43,'Auquimia Clínica Veterinária.','R. Rio Purús, 425','69053-050',35845931,21,'08:00 as 18:00'),
 (44,'Pepita Pet Shop','Av.G,30 - Conjunto Oswaldo Frota 2','69097-740',36317321,1,'08:00 as 18:00'),
 (45,'Pet Shop Bicho Travesso','Av. B,24','69043-130',32383623,13,'08:00 as 18:00'),
 (46,'Manaus Au Aus Clínica Veterinária','Rua Comendador Clementino,454','69046-000',36547833,3,'24 horas'),
 (47,'Pet shop Sol Nascente','Av. Desembargador João Machado, 1668','',982429807,13,''),
 (48,'Consultório Veterinário Dra. Cely Gomes','Av. Dom Pedro 1, 622','',992462097,12,'08:00 as 18:00'),
 (49,'Gipsy pet shop','Rua Ganabara, 43','',991320243,28,'08:00 as 21:00'),
 (50,'Conselho Regional de Medicina Veterinária do Am','Rua B Qd 03 Casa 01, Conj. Jardim Yolanda','69055-090',33043014,19,'08:00 as 17:00'),
 (51,'Clinipet Clínica Veterinária e Pet Shop','Rua Rio Purus, 425','69053-050',981043510,21,'08:00 as 18:00'),
 (52,'CaniCat PET SHOP','Av. Constantinopla, 01','69045-000',30854581,18,'08:00 as 18:00'),
 (53,'ProntoVet Centro Veterinário','R. Belo Horizonte, 321','69057-060',32134223,9,'08:00 as 19:00'),
 (54,'Consultório Veterinário Bom pra Cachorro','Av. Rio Mar, 650','69053-180',981137129,21,'09:00 as 17:00'),
 (55,'Consultório Veterinário Moti','Rua Paulo Lopes (antiga Amazonas), 169','69080-340',981727072,30,'08:00 as 17:00'),
 (56,'Recanto dos Bichos-Pet Shop e Consultório Veterinário','Avenida Jorge Amado,  128','69021-100',36549261,32,'08:30 as 17:30'),
 (57,'Pet Shop & Consultório Latemia','Rua Mantiqueira, 91','69047-760',36518022,31,'08:00 as 18:00'),
 (58,'Dogtor','R. Wilson de Castro, 32','69050-160',NULL,19,'08:30 as 17:00'),
 (59,'Mundo Animal Pet Shop','Av. D, 152','69029-189',NULL,1,'8:00 as 17:00'),
 (60,'CLinica veterinaria Q Lates','Av.  Autaz Mirim, 6155','69095-00',36445416,2,'24 horas');
/*!40000 ALTER TABLE `clinica` ENABLE KEYS */;


--
-- Definition of table `zona`
--

DROP TABLE IF EXISTS `zona`;
CREATE TABLE `zona` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) NOT NULL,
  PRIMARY KEY (`cod`),
  UNIQUE KEY `cod` (`cod`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zona`
--

/*!40000 ALTER TABLE `zona` DISABLE KEYS */;
INSERT INTO `zona` (`cod`,`nome`) VALUES 
 (4,'Centro-Oeste'),
 (2,'Centro-Sul'),
 (3,'Leste'),
 (1,'Norte'),
 (5,'Oeste'),
 (6,'Sul');
/*!40000 ALTER TABLE `zona` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
