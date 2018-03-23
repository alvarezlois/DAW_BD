-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Xerado en: 23 de Mar de 2018 ás 08:19
-- Versión do servidor: 10.1.26-MariaDB-0+deb9u1
-- Versión do PHP: 7.0.27-0+deb9u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dba_empleados`
--

-- --------------------------------------------------------

--
-- Estrutura da táboa `departamentos`
--

CREATE TABLE `departamentos` (
  `codigo` varchar(5) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `presupuesto` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A extraer os datos da táboa `departamentos`
--

INSERT INTO `departamentos` (`codigo`, `nombre`, `presupuesto`) VALUES
('d01', 'FISICA', '37850'),
('d02', 'MATEMATICAS', '35550'),
('d03', 'ELECTRONICA', '31540'),
('d04', 'SISTEMAS', '39850'),
('d05', 'ECONOMIA', '34050'),
('d06', 'CALIDAD', '33950'),
('d07', 'ROBOTICA', '38170'),
('d08', 'BASES DE DATOS', '32295'),
('d09', 'PROGRAMACION', '35685');

-- --------------------------------------------------------

--
-- Estrutura da táboa `empleados`
--

CREATE TABLE `empleados` (
  `dni` varchar(10) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `cod_dep` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A extraer os datos da táboa `empleados`
--

INSERT INTO `empleados` (`dni`, `nombre`, `apellidos`, `cod_dep`) VALUES
('15453639B', 'Miguel', 'Cervantes Saavedra', 'd01'),
('15453639C', 'Lorem', 'Ipsum', 'd01'),
('25453639A', 'Adriana', 'Lopez Gaarcia', 'd02'),
('25453639B', 'Isaac', 'Becerra Perez', 'd02'),
('25453639C', 'Pablo', 'Honey Honey', 'd02'),
('25453639D', 'Ruhola', 'Homeini Pahlavi', 'd02'),
('35453639A', 'Adrian', 'Alvarez Lois', 'd03'),
('35453639B', 'Raquel', 'Gonzalez Garrido', 'd03'),
('35453639C', 'Don', 'Willians', 'd03'),
('35453639D', 'Carla', 'Fraga Oubiña', 'd03'),
('35453639E', 'Emiliana', 'Pradera Rojo', 'd03'),
('35453639F', 'Laura', 'Douglas', 'd03'),
('45453639A', 'Mike', 'Mills', 'd04'),
('45453639B', 'RX', 'Ibañez', 'd04'),
('45453639C', 'Marta', 'Carrasco Fernandez', 'd04'),
('55453639A', 'Lourençp', 'Maia de Oliveira', 'd05'),
('55453639B', 'Aritz', 'Urruticoetxea Iparragirre', 'd05'),
('55453639C', 'Pere', 'Capdevila i Font', 'd05'),
('55453639D', 'Felipe', 'Perez Garcia', 'd05'),
('55453639E', 'Linus', 'Torvals', 'd05'),
('65453639A', 'Alejo', 'Prieto Caneda', 'd06'),
('65453639B', 'Elena', 'Benavente Garcia', 'd06'),
('785453639A', 'Curtis', 'Mayfield', 'd07'),
('85453639A', 'Rulis', 'Horchata Blanco', 'd08'),
('85453639B', 'Iria', 'Cameselle Haro', 'd08'),
('91453639A', 'Pedro', 'Hinojosa Lopez', 'd09'),
('91453639B', 'Ruud', 'Van Nistelroy', 'd09'),
('91453639C', 'Ruud', 'Gullit', 'd09'),
('91453639D', 'Rita', 'Gonçalvez de Brito Antunes', 'd09'),
('91453639E', 'Alexia', 'Schneider Velazquez', 'd09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`codigo`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indexes for table `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`dni`),
  ADD UNIQUE KEY `dni` (`dni`),
  ADD KEY `cod_dep` (`cod_dep`);

--
-- Restricións para os envorcados das táboas
--

--
-- Restricións para a táboa `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`cod_dep`) REFERENCES `departamentos` (`codigo`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
