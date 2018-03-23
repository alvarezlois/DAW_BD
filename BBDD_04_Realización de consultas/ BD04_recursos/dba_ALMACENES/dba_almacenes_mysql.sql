-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Xerado en: 23 de Mar de 2018 ás 08:17
-- Versión do servidor: 10.1.26-MariaDB-0+deb9u1
-- Versión do PHP: 7.0.27-0+deb9u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dba_almacenes`
--

-- --------------------------------------------------------

--
-- Estrutura da táboa `almacenes`
--

CREATE TABLE `almacenes` (
  `codigo` varchar(10) NOT NULL,
  `lugar` varchar(100) NOT NULL,
  `capacidad` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A extraer os datos da táboa `almacenes`
--

INSERT INTO `almacenes` (`codigo`, `lugar`, `capacidad`) VALUES
('', 'Barcelona', '3'),
('A01', 'Madrid', '4'),
('A02', 'Vigo', '6'),
('A03', 'Cangas', '5'),
('A04', 'Portugal', '4');

-- --------------------------------------------------------

--
-- Estrutura da táboa `cajas`
--

CREATE TABLE `cajas` (
  `numRef` varchar(10) NOT NULL,
  `contenido` varchar(100) NOT NULL,
  `valor` varchar(10) NOT NULL,
  `almacen` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A extraer os datos da táboa `cajas`
--

INSERT INTO `cajas` (`numRef`, `contenido`, `valor`, `almacen`) VALUES
('CJA1-01', 'Papel', '341', 'A01'),
('CJA1-02', 'DIN A4', '456', 'A01'),
('CJA1-03', 'DIN A3', '382', 'A01'),
('CJA1-04', 'DIN A2', '432', 'A01'),
('CJA1-05', 'DIN A1', '362', 'A01'),
('CJA2-01', 'Tuerca ISO-005', '2758.83', 'A02'),
('CJA2-02', 'Tuerca ISO-012', '3560.25', 'A02'),
('CJA2-03', 'Tuercas ISO-025', '2974.24', 'A02'),
('CJA2-04', 'Tornillo ISO-005', '3129.20', 'A02'),
('CJA2-05', 'Tornillo ISO-012', '2098.05', 'A02'),
('CJA2-06', 'Tornillo ISO-025', '581.83', 'A02'),
('CJA2-07', 'Arandela ISO-005', '319.20', 'A02'),
('CJA2-08', 'Arandela ISO-012', '568.05', 'A02'),
('CJA2-09', 'Arandela ISO-025', '881.19', 'A02'),
('CJA3-01', 'Bombilla NUT-27 9W', '9558.05', 'A03'),
('CJA3-02', 'Bombilla NUT-27 11W', '7654.05', 'A03'),
('CJA3-03', 'Bombilla NUT-27 13W', '8041.87', 'A03'),
('CJA3-04', 'Bombilla NUT-27 17W', '4591.73', 'A03'),
('CJA4-01', 'Tubo PVC .13', '5858.05', 'A04'),
('CJA4-02', 'Tubo PVC .16', '6058.05', 'A04'),
('CJA4-03', 'Tubo PVC .18', '5001.05', 'A04'),
('CJA4-04', 'Tubo PVC .20', '4058.69', 'A04'),
('CJA4-05', 'Tubo PVC .22', '3922.27', 'A04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `almacenes`
--
ALTER TABLE `almacenes`
  ADD PRIMARY KEY (`codigo`),
  ADD UNIQUE KEY `lugar` (`lugar`);

--
-- Indexes for table `cajas`
--
ALTER TABLE `cajas`
  ADD PRIMARY KEY (`numRef`),
  ADD KEY `index_almacen` (`almacen`);

--
-- Restricións para os envorcados das táboas
--

--
-- Restricións para a táboa `cajas`
--
ALTER TABLE `cajas`
  ADD CONSTRAINT `cajas_ibfk_1` FOREIGN KEY (`almacen`) REFERENCES `almacenes` (`codigo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
