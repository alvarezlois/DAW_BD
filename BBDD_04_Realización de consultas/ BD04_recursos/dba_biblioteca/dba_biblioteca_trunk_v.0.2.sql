-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Xerado en: 23 de Mar de 2018 �s 11:58
-- Versi�n do servidor: 10.1.26-MariaDB-0+deb9u1
-- Versi�n do PHP: 7.0.27-0+deb9u1

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
-- Estrutura da t�boa `amigo`
--

CREATE TABLE `amigo` (
  `num` int(5) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `telefono` varchar(10) NOT NULL
) ;

--
-- A extraer os datos da t�boa `amigo`
--

INSERT INTO `amigo` (`num`, `nombre`, `telefono`) VALUES
(60001, 'Adri�n Alvarez Lois', '5554440001'),
(60002, 'Rosa Maria Urquijo de Z�rate', '5554440002'),
(60003, 'Philip Johanson', '5554440003'),
(60005, 'Clamores Supinos', '5554440005');

-- --------------------------------------------------------

--
-- Estrutura da t�boa `autor`
--

CREATE TABLE `autor` (
  `autor_id` char(4) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `nacionalidad` varchar(20) DEFAULT NULL
) ;

--
-- A extraer os datos da t�boa `autor`
--

INSERT INTO `autor` (`autor_id`, `nombre`, `nacionalidad`) VALUES
('3001', 'Ram�n Lopez Saavedra', 'Espa�a'),
('3002', 'Isabel Gomez Iturbe', 'Espa�a'),
('3003', 'John Collins', 'UK'),
('3004', 'Kate Johnston', 'UK'),
('3005', 'Herv�', 'Belgica'),
('3006', 'Alexei Chernakovsky', 'Rusia'),
('3007', 'Isaac Asimov', 'USA'),
('3008', 'Hiro Mishima', 'Japo'),
('3009', 'Suso de Toro', 'Galiza'),
('3010', 'Jon Sarriberria', 'Euskadi');

-- --------------------------------------------------------

--
-- Estrutura da t�boa `escribir`
--

CREATE TABLE `escribir` (
  `autor_id` char(4) NOT NULL,
  `cod_obra` int(10) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estrutura da t�boa `esta_en`
--

CREATE TABLE `esta_en` (
  `cod_ob` int(10) NOT NULL,
  `id_lib` varchar(10) NOT NULL
) ;

--
-- A extraer os datos da t�boa `esta_en`
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
-- Estrutura da t�boa `libro`
--

CREATE TABLE `libro` (
  `id_lib` varchar(10) NOT NULL,
  `titulo` varchar(20) NOT NULL,
  `a�o` int(5) NOT NULL,
  `num_obras` int(5) NOT NULL
) ;

--
-- A extraer os datos da t�boa `libro`
--

INSERT INTO `libro` (`id_lib`, `titulo`, `a�o`, `num_obras`) VALUES
('isbn000001', 'Diccionario da RAG', 2011, 2),
('isbn000002', 'Diccionario RAE', 2008, 3),
('isbn000003', 'Dico. Collins Pocket', 1986, 1),
('isbn000004', 'Oxford Dict.', 1998, 4),
('isbn000005', 'Tint�n en el Congo', 2001, 1),
('isbn000006', 'Tint�n en Nigeria', 2002, 1),
('isbn000007', 'Introducci�n a SQL', 2017, 2);

-- --------------------------------------------------------

--
-- Estrutura da t�boa `obra`
--

CREATE TABLE `obra` (
  `cod_ob` int(10) NOT NULL,
  `titulo` varchar(80) NOT NULL,
  `tematica` varchar(20) DEFAULT NULL
) ;

--
-- A extraer os datos da t�boa `obra`
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
(900000011, 'Tint�n en el Congo', 'Comic'),
(900000012, 'Tint�n en Nigeria', 'Comic'),
(900000013, 'Introducci�n a SQL. Lo B�sico', 'Manuales'),
(900000014, 'Introducci�n a SQL. Lo Pro', 'Manuales');

-- --------------------------------------------------------

--
-- Estrutura da t�boa `prestamo`
--

CREATE TABLE `prestamo` (
  `num` int(5) NOT NULL,
  `id_lib` varchar(10) NOT NULL
) ;

--
-- A extraer os datos da t�boa `prestamo`
--

INSERT INTO `prestamo` (`num`, `id_lib`) VALUES
(60001, 'isbn000001'),
(60002, 'isbn000002'),
(60003, 'isbn000003'),
(60004, 'isbn000004'),
(60005, 'isbn000005');

-- --------------------------------------------------------

--
-- Estrutura da t�boa `tema`
--

CREATE TABLE `tema` (
  `tematica` varchar(20) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ;

--
-- A extraer os datos da t�boa `tema`
--

INSERT INTO `tema` (`tematica`, `descripcion`) VALUES
('Comic', 'Banda Dese�ada'),
('Diccionarios BI', 'Diccionarios de traducci�n de l�xico en 2 idiomas'),
('Diccionarios MONO', 'Diccionarios de l�xico nun mesmo idioma'),
('Manuales', 'Manuales t�cnicos');

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
-- Restrici�ns para os envorcados das t�boas
--

--
-- Restrici�ns para a t�boa `amigo`
--
ALTER TABLE `amigo`
  ADD CONSTRAINT `amigo_ibfk_1` FOREIGN KEY (`num`) REFERENCES `prestamo` (`num`);

--
-- Restrici�ns para a t�boa `escribir`
--
ALTER TABLE `escribir`
  ADD CONSTRAINT `escribir_ibfk_1` FOREIGN KEY (`autor_id`) REFERENCES `autor` (`autor_id`),
  ADD CONSTRAINT `escribir_ibfk_2` FOREIGN KEY (`cod_obra`) REFERENCES `obra` (`cod_ob`);

--
-- Restrici�ns para a t�boa `esta_en`
--
ALTER TABLE `esta_en`
  ADD CONSTRAINT `esta_en_ibfk_1` FOREIGN KEY (`id_lib`) REFERENCES `libro` (`id_lib`);

--
-- Restrici�ns para a t�boa `obra`
--
ALTER TABLE `obra`
  ADD CONSTRAINT `obra_ibfk_1` FOREIGN KEY (`tematica`) REFERENCES `tema` (`tematica`),
  ADD CONSTRAINT `obra_ibfk_2` FOREIGN KEY (`cod_ob`) REFERENCES `esta_en` (`cod_ob`);

--
-- Restrici�ns para a t�boa `prestamo`
--
ALTER TABLE `prestamo`
  ADD CONSTRAINT `prestamo_ibfk_1` FOREIGN KEY (`id_lib`) REFERENCES `libro` (`id_lib`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
