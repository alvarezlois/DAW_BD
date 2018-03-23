-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Xerado en: 23 de Mar de 2018 ás 07:57
-- Versión do servidor: 10.1.26-MariaDB-0+deb9u1
-- Versión do PHP: 7.0.27-0+deb9u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dba_musica_test`
--

-- --------------------------------------------------------

--
-- Estrutura da táboa `artista`
--

CREATE TABLE `artista` (
  `dni` varchar(10) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A extraer os datos da táboa `artista`
--

INSERT INTO `artista` (`dni`, `nombre`) VALUES
('15453639a', 'Lee Tesche'),
('15453639b', 'Ryan Mahan'),
('15453639c', 'Franklin James Fisher'),
('15453639d', 'Natalie Judge'),
('25453639a', 'Simon Scott'),
('25453639b', 'Christian Savill'),
('25453639c', 'Neil Halstead'),
('25453639d', 'Rachel Goswell'),
('35453639a', 'Steve Queralt'),
('35453639b', 'Mark Gardener'),
('35453639c', 'Loz Colbert'),
('35453639d', 'Andy Bell');

-- --------------------------------------------------------

--
-- Estrutura da táboa `grupo`
--

CREATE TABLE `grupo` (
  `cod` varchar(5) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `fecha` date DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A extraer os datos da táboa `grupo`
--

INSERT INTO `grupo` (`cod`, `nombre`, `fecha`, `pais`) VALUES
('g01', 'ALGIERS', '0000-00-00', 'USA'),
('g02', 'SLOWDIVE', '0000-00-00', 'UK'),
('g03', 'RIDE', '0000-00-00', 'ESCOCIA'),
('g04', 'SINGLE', '0000-00-00', 'ESPAÑA'),
('g05', 'LA PLATA', '0000-00-00', 'ESPAÑA'),
('g06', 'SIERRA', '0000-00-00', 'ESPAÑA'),
('g07', 'AUSTRALIAN BLONDE', '0000-00-00', 'ESPAÑA');

-- --------------------------------------------------------

--
-- Estrutura da táboa `pertenece`
--

CREATE TABLE `pertenece` (
  `dni` varchar(10) NOT NULL,
  `cod` varchar(5) NOT NULL,
  `funcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A extraer os datos da táboa `pertenece`
--

INSERT INTO `pertenece` (`dni`, `cod`, `funcion`) VALUES
('15453639a', 'g01', 'GUITAR'),
('15453639b', 'g01', 'BASS'),
('15453639c', 'g01', 'DRUMS'),
('15453639d', 'g01', 'VOCALS'),
('25453639a', 'g02', 'GUITAR'),
('25453639b', 'g02', 'BASS'),
('25453639c', 'g02', 'DRUMS'),
('25453639d', 'g02', 'VOCALS'),
('35453639a', 'g03', 'GUITAR'),
('35453639b', 'g03', 'BASS'),
('35453639c', 'g03', 'DRUMS'),
('35453639d', 'g03', 'VOCALS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artista`
--
ALTER TABLE `artista`
  ADD PRIMARY KEY (`dni`);

--
-- Indexes for table `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`cod`);

--
-- Indexes for table `pertenece`
--
ALTER TABLE `pertenece`
  ADD KEY `index_dni` (`dni`),
  ADD KEY `index_cod_grupo` (`cod`);

--
-- Restricións para os envorcados das táboas
--

--
-- Restricións para a táboa `pertenece`
--
ALTER TABLE `pertenece`
  ADD CONSTRAINT `FK_artistas_dni` FOREIGN KEY (`dni`) REFERENCES `artista` (`dni`),
  ADD CONSTRAINT `FK_grupo_cod` FOREIGN KEY (`cod`) REFERENCES `grupo` (`cod`);


--
--

-- --------------------------------------------------------

--
-- Estrutura da táboa `cancion`
--

CREATE TABLE `cancion` (
  `cod` varchar(5) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `duracion` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A extraer os datos da táboa `cancion`
--

INSERT INTO `cancion` (`cod`, `titulo`, `duracion`) VALUES
('c01', 'Remains', '0305'),
('c02', 'Claudette', '0331'),
('c03', 'And When You Fall', '0341'),
('c04', 'Blood', '0401'),
('c11', 'Slomo', '0525'),
('c12', 'Star Roving', '0441'),
('c13', 'Dont Know Why', '0246'),
('c14', 'Sugar for the Pill', '0529'),
('c21', 'Lannoy Point', '0525'),
('c22', 'Charm Assault', '0412'),
('c23', 'All I Want', '357'),
('c24', 'Home Is a Feeling', '0319');

-- --------------------------------------------------------

--
-- Estrutura da táboa `club`
--

CREATE TABLE `club` (
  `cod` varchar(5) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `sede` varchar(50) NOT NULL,
  `num` varchar(5) NOT NULL,
  `cod_gru` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da táboa `companhia`
--

CREATE TABLE `companhia` (
  `cod` varchar(5) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `dir` varchar(50) NOT NULL,
  `tlf` varchar(15) NOT NULL,
  `fax` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A extraer os datos da táboa `companhia`
--

INSERT INTO `companhia` (`cod`, `nombre`, `dir`, `tlf`, `fax`) VALUES
('k01', 'Matador', 'Michigan', '555222111', '000111222'),
('k02', 'Dead Oceans Records', 'California', '555222112', '000111223'),
('k03', 'Phantasy Sound', 'Manchester', '555222113', '000111224'),
('k04', 'Elefant Records', 'Madrid', '555222114', '000111225'),
('k05', 'Subterfuge Records', 'Madrid', '555222115', '000111226'),
('k06', 'Sonido Muchacho', 'Madrid', '555222116', '000111227'),
('k07', 'Creation Records', 'Londres', '555222117', '000111228');

-- --------------------------------------------------------

--
-- Estrutura da táboa `disco`
--

CREATE TABLE `disco` (
  `cod` varchar(5) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `fecha` date NOT NULL,
  `cod_comp` varchar(5) NOT NULL,
  `cod_gru` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A extraer os datos da táboa `disco`
--

INSERT INTO `disco` (`cod`, `titulo`, `fecha`, `cod_comp`, `cod_gru`) VALUES
('disc0', 'Algiers', '0000-00-00', 'k01', 'g01'),
('LP01', 'Algiers', '0000-00-00', 'k01', 'g01'),
('LP02', 'Slowdive', '0000-00-00', 'k02', 'g02'),
('LP03', 'The Weather Diaries', '0000-00-00', 'k03', 'g03'),
('LP04', 'Mapas del Océano', '0000-00-00', 'k04', 'g04'),
('LP05', 'Mapas del Cielo', '0000-00-00', 'k05', 'g04'),
('LP06', 'Desorden', '0000-00-00', 'k06', 'g05'),
('LP07', 'A Ninguna Parte', '0000-00-00', 'k06', 'g06'),
('LP08', 'After Shave', '0000-00-00', 'k05', 'g07'),
('LP09', 'Cosmic EP', '0000-00-00', 'k05', 'g07'),
('LP10', 'Pygmalion', '0000-00-00', 'k07', 'g02');

-- --------------------------------------------------------

--
-- Estrutura da táboa `esta`
--

CREATE TABLE `esta` (
  `can` varchar(5) NOT NULL,
  `cod` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A extraer os datos da táboa `esta`
--

INSERT INTO `esta` (`can`, `cod`) VALUES
('c01', 'LP01'),
('c02', 'LP01'),
('c03', 'LP01'),
('c04', 'LP01'),
('c11', 'LP02'),
('c12', 'LP02'),
('c13', 'LP02'),
('c14', 'LP02'),
('c21', 'LP03'),
('c22', 'LP03'),
('c23', 'LP03'),
('c24', 'LP03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cancion`
--
ALTER TABLE `cancion`
  ADD PRIMARY KEY (`cod`);

--
-- Indexes for table `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`cod`),
  ADD KEY `cod_gru` (`cod_gru`);

--
-- Indexes for table `companhia`
--
ALTER TABLE `companhia`
  ADD PRIMARY KEY (`cod`);

--
-- Indexes for table `disco`
--
ALTER TABLE `disco`
  ADD PRIMARY KEY (`cod`),
  ADD KEY `cod_comp` (`cod_comp`),
  ADD KEY `cod_gru` (`cod_gru`);

--
-- Indexes for table `esta`
--
ALTER TABLE `esta`
  ADD KEY `cod` (`cod`),
  ADD KEY `can` (`can`);

--
-- Restricións para os envorcados das táboas
--

--
-- Restricións para a táboa `club`
--
ALTER TABLE `club`
  ADD CONSTRAINT `club_ibfk_1` FOREIGN KEY (`cod_gru`) REFERENCES `grupo` (`cod`);

--
-- Restricións para a táboa `disco`
--
ALTER TABLE `disco`
  ADD CONSTRAINT `disco_ibfk_1` FOREIGN KEY (`cod_comp`) REFERENCES `companhia` (`cod`),
  ADD CONSTRAINT `disco_ibfk_2` FOREIGN KEY (`cod_gru`) REFERENCES `grupo` (`cod`);

--
-- Restricións para a táboa `esta`
--
ALTER TABLE `esta`
  ADD CONSTRAINT `esta_ibfk_1` FOREIGN KEY (`cod`) REFERENCES `disco` (`cod`),
  ADD CONSTRAINT `esta_ibfk_2` FOREIGN KEY (`can`) REFERENCES `cancion` (`cod`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
