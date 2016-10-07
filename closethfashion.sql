-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 15-09-2016 a las 16:50:55
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `closethfashion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes_1`
--

CREATE TABLE IF NOT EXISTS `clientes_1` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(15) DEFAULT NULL COMMENT 'Nombre persona',
  `password` varchar(60) NOT NULL COMMENT 'Contraseña de Ingreso',
  `rol` varchar(50) DEFAULT NULL,
  `Apellido` varchar(15) DEFAULT NULL COMMENT 'Apellido Persona',
  `Edad` int(11) DEFAULT NULL COMMENT 'Edad del usuario',
  `Direccion` varchar(50) DEFAULT NULL COMMENT 'Descripción de lugar  ',
  `Correo` varchar(50) DEFAULT NULL COMMENT 'Medio de comunicacion',
  `documento` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `Nombre` (`Nombre`),
  FULLTEXT KEY `Direccion` (`Direccion`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2147483648 ;

--
-- Volcado de datos para la tabla `clientes_1`
--

INSERT INTO `clientes_1` (`id`, `Nombre`, `password`, `rol`, `Apellido`, `Edad`, `Direccion`, `Correo`, `documento`) VALUES
(1, 'Closeth', '1124965', 'administrador', 'Fashion', 23, 'Carrera 21', 'closeth@', '1010104'),
(2, 'Yeison', '1124965', 'usuario', 'Gutierrez', 17, 'carrera 17', 'yfgutierrez@', '994651415424'),
(3, 'Natalia', '1124965', 'administrador', 'Lopez', 18, 'Calle 12', 'pnlopez9@misena.edu.co', '1073714203'),
(4, 'Camilo', '1124965', 'administrador', 'Amado', 17, 'Carrera 21', 'Jcamado@', '99042009861'),
(410, 'jgvcfc', 'jgvjgvjgv', '', 'cvkjcfh', 0, 'jgvgjv', 'jggvljgv', ''),
(1073714203, 'Camillo', '1124965', '', 'mimo', 15, 'caraah', 'canaja@jksjj', ''),
(0, '', '', NULL, '', 0, '', '', NULL),
(2147483647, '', '', NULL, '', 0, '', '', NULL),
(1010, 'jajaja', '122', NULL, 'jijiji', 15, 'cra45ui', 'uhy', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formulario`
--

CREATE TABLE IF NOT EXISTS `formulario` (
  `Codigo_Factura` decimal(50,0) NOT NULL COMMENT 'Numero de representacion',
  `Descripcion` varchar(50) NOT NULL COMMENT 'Explicacion',
  `Producto` varchar(50) NOT NULL,
  `Cantidad` int(50) NOT NULL COMMENT 'Cantidad de producto ',
  `Precio` varchar(50) NOT NULL COMMENT 'Valor por unidad ',
  `Documento_Comprador` decimal(20,0) NOT NULL,
  `Codigo_Productos` decimal(20,0) NOT NULL,
  PRIMARY KEY (`Codigo_Factura`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `formulario`
--

INSERT INTO `formulario` (`Codigo_Factura`, `Descripcion`, `Producto`, `Cantidad`, `Precio`, `Documento_Comprador`, `Codigo_Productos`) VALUES
('20000', '', 'camisas', 15, '45000', '1233', '1234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE IF NOT EXISTS `productos` (
  `id` int(50) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Cantidad` varchar(50) DEFAULT NULL,
  `Pecio` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subirimagen`
--

CREATE TABLE IF NOT EXISTS `subirimagen` (
  `id_productos` int(50) NOT NULL AUTO_INCREMENT,
  `categorias` varchar(50) NOT NULL,
  `precio` int(50) NOT NULL,
  `Ubicacion` varchar(50) NOT NULL,
  PRIMARY KEY (`id_productos`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `subirimagen`
--

INSERT INTO `subirimagen` (`id_productos`, `categorias`, `precio`, `Ubicacion`) VALUES
(1, 'pantalones', 100000, 'uploads/Camisas-de-hombre-2016-1.jpg '),
(2, 'camisas', 50000, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
