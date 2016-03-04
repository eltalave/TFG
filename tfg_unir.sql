-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-03-2016 a las 17:13:01
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `tfg_unir`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cita`
--

CREATE TABLE IF NOT EXISTS `cita` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `asunto` varchar(300) NOT NULL,
  `paciente` varchar(9) NOT NULL,
  `fisioterapeuta` varchar(9) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `paciente` (`paciente`),
  KEY `fisioterapeuta` (`fisioterapeuta`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Volcado de datos para la tabla `cita`
--

INSERT INTO `cita` (`id`, `fecha`, `hora`, `asunto`, `paciente`, `fisioterapeuta`) VALUES
(31, '2016-03-03', '00:00:00', 'jj', '13333333k', '1'),
(32, '2016-03-04', '00:00:00', '', '13333333k', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE IF NOT EXISTS `factura` (
  `annio` int(4) NOT NULL,
  `numero` int(6) NOT NULL,
  `paciente` varchar(9) NOT NULL,
  PRIMARY KEY (`annio`,`numero`),
  KEY `paciente` (`paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fisioterapeuta`
--

CREATE TABLE IF NOT EXISTS `fisioterapeuta` (
  `dni` varchar(9) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `fisioterapeuta`
--

INSERT INTO `fisioterapeuta` (`dni`, `nombre`, `apellidos`) VALUES
('1', 'cris', 'o'),
('111111111', 'maria', 'jimenez'),
('55555qqqq', 'q', 'q'),
('89111111w', 'd', 'd'),
('q33333333', 'q', 'q'),
('qqqqq1213', 'qq', 'qq'),
('qqqqqq333', 'fas', 'asfd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE IF NOT EXISTS `historial` (
  `numero` int(11) NOT NULL AUTO_INCREMENT,
  `texto` longtext NOT NULL,
  `paciente` varchar(9) NOT NULL,
  PRIMARY KEY (`numero`),
  UNIQUE KEY `paciente_2` (`paciente`),
  KEY `paciente` (`paciente`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1404 ;

--
-- Volcado de datos para la tabla `historial`
--

INSERT INTO `historial` (`numero`, `texto`, `paciente`) VALUES
(1391, '', '16609997H'),
(1393, '', 'w88888333'),
(1394, '', '13333333k'),
(1395, '', 'q55555555'),
(1396, 'aaa', 'w22222222'),
(1397, '', '16609997p'),
(1398, '', '16609997O'),
(1399, '', '16609997k'),
(1400, '', '333333333'),
(1401, '', '598745632'),
(1402, '', '765587523'),
(1403, '', 'k58745698');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE IF NOT EXISTS `paciente` (
  `dni` varchar(9) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `nacimiento` date NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `cp` varchar(5) NOT NULL,
  `poblacion` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `club` tinyint(1) NOT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`dni`, `nombre`, `apellidos`, `nacimiento`, `direccion`, `cp`, `poblacion`, `email`, `telefono`, `club`) VALUES
('13333333k', '1', '1', '2016-03-02', '1', '1', '1', 'eltalave@gmail.com', '1', 0),
('16609997H', 'elena', 'talavera', '2016-03-01', 'ee', 'ee', 'ee', 'eltalave@gmail.com', '620022836', 1),
('16609997k', 'q', 'q', '2016-03-01', 'q', 'q', 'q', 'eltalave@gmail.com', 'q', 1),
('16609997O', '1', '1', '2016-03-01', '1', '1', '1', 'eltalave@gmail.com', '1', 1),
('16609997p', 'q', 'q', '2016-03-02', 'q', 'q', 'q', 'eltalave@gmail.com', 'q', 0),
('16617659W', 'maria', 'r', '2016-03-01', '3', 'e', 'e', '', '', 0),
('333333333', 'q', 'q', '2016-03-02', 'q', 'q', 'q', 'eltalave@gmail.com', 'q', 0),
('598745632', 'qq', 'q', '2016-03-01', 'q', 'q', 'q', 'eltalave@gmail.com', 'q', 0),
('765587523', '7', '7', '2016-03-01', '7', '7', '7', 'eltalave@gmail.com', '7', 0),
('k58745698', 'k', 'k', '2016-03-01', 'k', 'k', 'k', 'eltalave@gmail.com', 'k', 0),
('q55555555', 'q', 'q', '2016-03-08', 'q', 'q', 'q', 'eltalave@gmail.com', 'q', 1),
('w22222222', 'w', 'w', '2016-03-14', 'w', 'w', 'w', 'eltalave@gmail.com', 'w', 0),
('w88888333', 'j', 'w', '2016-03-01', 'w', 'w', 'w', 'eltalave@gmail.com', '620022836', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(10) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `password` varchar(20) NOT NULL,
  `rol` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuario` (`usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `apellidos`, `usuario`, `password`, `rol`) VALUES
(3, 'Ele', 'Talavera Íñiguez', 'eltalave', 'doli05', 1),
(4, 'María', 'Jiménez', 'mj', 'mj', 2);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cita`
--
ALTER TABLE `cita`
  ADD CONSTRAINT `cita_ibfk_1` FOREIGN KEY (`paciente`) REFERENCES `paciente` (`dni`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cita_ibfk_2` FOREIGN KEY (`fisioterapeuta`) REFERENCES `fisioterapeuta` (`dni`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`paciente`) REFERENCES `paciente` (`dni`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `historial`
--
ALTER TABLE `historial`
  ADD CONSTRAINT `historial_ibfk_1` FOREIGN KEY (`paciente`) REFERENCES `paciente` (`dni`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
