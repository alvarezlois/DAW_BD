-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Xerado en: 23 de Mar de 2018 ás 11:58
-- Versión do servidor: 10.1.26-MariaDB-0+deb9u1
-- Versión do PHP: 7.0.27-0+deb9u1

SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES latin1 */;

--
-- Base de datos: `dba_biblioteca`
--

-- --------------------------------------------------------

--
-- Estrutura da táboa `amigo`
--

CREATE TABLE `amigo` (
  `num` int(5) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `telefono` varchar(10) NOT NULL
) ;

--
-- A extraer os datos da táboa `amigo`
--

INSERT INTO `amigo` (`num`, `nombre`, `telefono`) VALUES
(60001, 'Adrián Alvarez Lois', '5554440001'),
(60002, 'Rosa Maria Urquijo de Zárate', '5554440002'),
(60003, 'Philip Johanson', '5554440003'),
(60005, 'Clamores Supinos', '5554440005');

-- --------------------------------------------------------

--
-- Estrutura da táboa `autor`
--

CREATE TABLE `autor` (
  `autor_id` char(4) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `nacionalidad` varchar(20) DEFAULT NULL
) ;

--
-- A extraer os datos da táboa `autor`
--

INSERT INTO `autor` (`autor_id`, `nombre`, `nacionalidad`) VALUES
('3001', 'Ramón Lopez Saavedra', 'España'),
('3002', 'Isabel Gomez Iturbe', 'España'),
('3003', 'John Collins', 'UK'),
('3004', 'Kate Johnston', 'UK'),
('3005', 'Hervé', 'Belgica'),
('3006', 'Alexei Chernakovsky', 'Rusia'),
('3007', 'Isaac Asimov', 'USA'),
('3008', 'Hiro Mishima', 'Japo'),
('3009', 'Suso de Toro', 'Galiza'),
('3010', 'Jon Sarriberria', 'Euskadi');

-- --------------------------------------------------------

--
-- Estrutura da táboa `escribir`
--

CREATE TABLE `escribir` (
  `autor_id` char(4) NOT NULL,
  `cod_obra` int(10) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estrutura da táboa `esta_en`
--

CREATE TABLE `esta_en` (
  `cod_ob` int(10) NOT NULL,
  `id_lib` varchar(10) NOT NULL
) ;

--
-- A extraer os datos da táboa `esta_en`
--

INSERT INTO `esta_en` (`cod_ob`, `id_lib`) VALUES
(900000001, 'isbn000001'),
(900000002, 'isbn000001'),
(900000003, 'isbn000002'),
(900000004, 'isbn000002'),
(900000005, 'isbn000002'),
(900000006, 'isbn000003'),
(900000007, 'isbn000004'),
(900000008, 'isbn000004'),
(900000009, 'isbn000004'),
(900000010, 'isbn000004'),
(900000011, 'isbn000005'),
(900000012, 'isbn000006'),
(900000013, 'isbn000007'),
(900000014, 'isbn000007');

-- --------------------------------------------------------

--
-- Estrutura da táboa `libro`
--

CREATE TABLE `libro` (
  `id_lib` varchar(10) NOT NULL,
  `titulo` varchar(20) NOT NULL,
  `año` int(5) NOT NULL,
  `num_obras` int(5) NOT NULL
) ;

--
-- A extraer os datos da táboa `libro`
--

INSERT INTO `libro` (`id_lib`, `titulo`, `año`, `num_obras`) VALUES
('isbn000001', 'Diccionario da RAG', 2011, 2),
('isbn000002', 'Diccionario RAE', 2008, 3),
('isbn000003', 'Dico. Collins Pocket', 1986, 1),
('isbn000004', 'Oxford Dict.', 1998, 4),
('isbn000005', 'Tintín en el Congo', 2001, 1),
('isbn000006', 'Tintín en Nigeria', 2002, 1),
('isbn000007', 'Introducción a SQL', 2017, 2);

-- --------------------------------------------------------

--
-- Estrutura da táboa `obra`
--

CREATE TABLE `obra` (
  `cod_ob` int(10) NOT NULL,
  `titulo` varchar(80) NOT NULL,
  `tematica` varchar(20) DEFAULT NULL
) ;

--
-- A extraer os datos da táboa `obra`
--

INSERT INTO `obra` (`cod_ob`, `titulo`, `tematica`) VALUES
(900000001, 'Diccionario RAG TOMO 01', 'Diccionarios MONO'),
(900000002, 'Diccionario RAG TOMO 02', 'Diccionarios MONO'),
(900000003, 'Diccionario de la RAE TOMO 01', 'Diccionarios MONO'),
(900000004, 'Diccionario de la RAE TOMO 01', 'Diccionarios MONO'),
(900000006, 'Diccionario Collins', 'Diccionarios BI'),
(900000007, 'Oxford Dict. VOL 01', 'Diccionarios BI'),
(900000008, 'Oxford Dict. VOL 02', 'Diccionarios BI'),
(900000009, 'Oxford Dict. VOL 03', 'Diccionarios BI'),
(900000010, 'Oxford Dict. VOL 04', 'Diccionarios BI'),
(900000011, 'Tintín en el Congo', 'Comic'),
(900000012, 'Tintín en Nigeria', 'Comic'),
(900000013, 'Introducción a SQL. Lo Básico', 'Manuales'),
(900000014, 'Introducción a SQL. Lo Pro', 'Manuales');

-- --------------------------------------------------------

--
-- Estrutura da táboa `prestamo`
--

CREATE TABLE `prestamo` (
  `num` int(5) NOT NULL,
  `id_lib` varchar(10) NOT NULL
) ;

--
-- A extraer os datos da táboa `prestamo`
--

INSERT INTO `prestamo` (`num`, `id_lib`) VALUES
(60001, 'isbn000001'),
(60002, 'isbn000002'),
(60003, 'isbn000003'),
(60004, 'isbn000004'),
(60005, 'isbn000005');

-- --------------------------------------------------------

--
-- Estrutura da táboa `tema`
--

CREATE TABLE `tema` (
  `tematica` varchar(20) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ;

--
-- A extraer os datos da táboa `tema`
--

INSERT INTO `tema` (`tematica`, `descripcion`) VALUES
('Comic', 'Banda Deseñada'),
('Diccionarios BI', 'Diccionarios de traducción de léxico en 2 idiomas'),
('Diccionarios MONO', 'Diccionarios de léxico nun mesmo idioma'),
('Manuales', 'Manuales técnicos');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amigo`
--
ALTER TABLE `amigo`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`autor_id`);

--
-- Indexes for table `escribir`
--
ALTER TABLE `escribir`
  ADD PRIMARY KEY (`autor_id`,`cod_obra`),
  ADD KEY `cod_obra` (`cod_obra`);

--
-- Indexes for table `esta_en`
--
ALTER TABLE `esta_en`
  ADD PRIMARY KEY (`cod_ob`,`id_lib`),
  ADD KEY `id_lib` (`id_lib`);

--
-- Indexes for table `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`id_lib`);

--
-- Indexes for table `obra`
--
ALTER TABLE `obra`
  ADD PRIMARY KEY (`cod_ob`),
  ADD KEY `tematica` (`tematica`);

--
-- Indexes for table `prestamo`
--
ALTER TABLE `prestamo`
  ADD PRIMARY KEY (`num`,`id_lib`),
  ADD KEY `id_lib` (`id_lib`);

--
-- Indexes for table `tema`
--
ALTER TABLE `tema`
  ADD PRIMARY KEY (`tematica`);

--
-- Restricións para os envorcados das táboas
--

--
-- Restricións para a táboa `amigo`
--
ALTER TABLE `amigo`
  ADD CONSTRAINT `amigo_ibfk_1` FOREIGN KEY (`num`) REFERENCES `prestamo` (`num`);

--
-- Restricións para a táboa `escribir`
--
ALTER TABLE `escribir`
  ADD CONSTRAINT `escribir_ibfk_1` FOREIGN KEY (`autor_id`) REFERENCES `autor` (`autor_id`),
  ADD CONSTRAINT `escribir_ibfk_2` FOREIGN KEY (`cod_obra`) REFERENCES `obra` (`cod_ob`);

--
-- Restricións para a táboa `esta_en`
--
ALTER TABLE `esta_en`
  ADD CONSTRAINT `esta_en_ibfk_1` FOREIGN KEY (`id_lib`) REFERENCES `libro` (`id_lib`);

--
-- Restricións para a táboa `obra`
--
ALTER TABLE `obra`
  ADD CONSTRAINT `obra_ibfk_1` FOREIGN KEY (`tematica`) REFERENCES `tema` (`tematica`),
  ADD CONSTRAINT `obra_ibfk_2` FOREIGN KEY (`cod_ob`) REFERENCES `esta_en` (`cod_ob`);

--
-- Restricións para a táboa `prestamo`
--
ALTER TABLE `prestamo`
  ADD CONSTRAINT `prestamo_ibfk_1` FOREIGN KEY (`id_lib`) REFERENCES `libro` (`id_lib`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
