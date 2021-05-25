-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 25-05-2021 a las 20:26:04
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `s05bd7e4_streetwear`
--
CREATE DATABASE IF NOT EXISTS `s05bd7e4_streetwear` DEFAULT CHARACTER SET latin1 COLLATE latin1_spanish_ci;
USE `s05bd7e4_streetwear`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
CREATE TABLE IF NOT EXISTS `comentarios` (
  `id_usuario` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `id_comentario` varchar(15) COLLATE latin1_spanish_ci NOT NULL,
  `comentario` varchar(140) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id_usuario`,`id_comentario`),
  KEY `comentarios_ibfk_2` (`id_comentario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineatransacciones`
--

DROP TABLE IF EXISTS `lineatransacciones`;
CREATE TABLE IF NOT EXISTS `lineatransacciones` (
  `id` varchar(10) COLLATE latin1_spanish_ci NOT NULL,
  `num_linea` int(11) NOT NULL,
  `descripcion_producto` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`id`,`num_linea`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  `marca` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `nombre` varchar(90) COLLATE latin1_spanish_ci NOT NULL,
  `precio` float NOT NULL DEFAULT '0',
  `id` varchar(15) COLLATE latin1_spanish_ci NOT NULL,
  `parte` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `comentario` varchar(140) COLLATE latin1_spanish_ci DEFAULT NULL,
  `sexo` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comentario` (`comentario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'camiseta tech marker para hombre', 240, 'p001', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Camiseta Bolt Arrow para hombre', 240, 'p002', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Camiseta Tech Marker con doble manga para hombre', 265, 'p003', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Camiseta logo rotulador para hombre', 250, 'p004', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Camiseta 90s Hand para hombre', 240, 'p005', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Camiseta logo rotulador para hombre gris', 250, 'p006', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Camiseta para hombre Apple Snake manga', 290, 'p007', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Camiseta Blue Marker para hombre', 250, 'p008', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Camiseta Caravaggio Boy para hombre', 250, 'p009', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Camiseta Spray Cans para hombre', 250, 'p010', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Camiseta Red Marker para hombre', 250, 'p011', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Camiseta Caravaggio Boy para hombre', 250, 'p012', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Camiseta logo Psych Type para hombre', 240, 'p013', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Camiseta para hombre Apple Snake', 260, 'p014', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Camiseta de rejilla para hombre', 285, 'p015', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Camiseta para hombre vintage Paint', 340, 'p016', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Camiseta para hombre Pascal Slim', 250, 'p017', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Camiseta para hombre Running Wolves', 240, 'p018', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Camiseta para hombre Offf Graff', 240, 'p019', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Camiseta para hombre Apple black', 340, 'p020', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Camiseta para hombre World Caterpilla', 220, 'p021', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Camiseta White Marker para hombre blanco', 220, 'p022', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Camiseta Spray Arrows para hombre', 250, 'p023', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Camiseta Spray Caravaggio', 220, 'p024', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Sudadera con capucha y cremallera Elves para hombre', 420, 'p025', 'sudaderas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Sudadera con capucha de desmaterialización para hombre', 420, 'p026', 'sudaderas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Sudadera con capucha Pascal para hombre', 420, 'p027', 'sudaderas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Sudadera con capucha Running Wolves para hombre', 420, 'p028', 'sudaderas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Sudadera con capucha para hombres', 420, 'p029', 'sudaderas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Sudadera con capucha y cremallera Vintage Paint para hombre', 555, 'p030', 'sudaderas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Sudadera con capucha Elf para hombre', 400, 'p031', 'sudaderas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Chaqueta camo para hombre', 960, 'p032', 'sudaderas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Sudadera con capucha Double Marker para hombre', 470, 'p033', 'sudaderas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Sudadera con capucha con logo de marcador para hombre', 430, 'p034', 'sudaderas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Sudadera con capucha con logo de marcador para hombre rosa', 430, 'p035', 'sudaderas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Sudadera con capucha Apple para hombre', 430, 'p036', 'sudaderas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Sudadera para hombre San Girolamo', 405, 'p037', 'sudaderas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Sudadera con capucha para hombre San Girolamo slim', 430, 'p038', 'sudaderas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Sudadera Swimming Man slim para hombre', 460, 'p039', 'sudaderas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Sudadera Swimming Man slim para hombre blanca', 460, 'p040', 'sudaderas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Sudadera para Hombre Ángel Caravaggio', 405, 'p041', 'sudaderas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Sudadera con Capucha Arrows Skeleton para Hombre', 440, 'p042', 'sudaderas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Sudadera con capucha Shaking Hands para hombre', 450, 'p043', 'sudaderas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Sudadera con capucha Trellis Worker para hombre', 435, 'p044', 'sudaderas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Camisa damero floral para hombre', 395, 'p045', 'camisas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Camisa de cuadros Arrows para hombre', 510, 'p046', 'camisas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Camisa de cuadros Arrows para hombre negra', 510, 'p047', 'camisas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Camisa Wet Floor para Hombre', 570, 'p048', 'camisas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Pantalón de chándal para hombre', 425, 'p049', 'pantalones', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Pantalón de chándal camo para hombre', 545, 'p050', 'pantalones', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Pantalón corto para hombre', 495, 'p051', 'pantalones', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Pantalón de vestir para hombre', 690, 'p052', 'pantalones', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Swimming Man Logo Joggers for Men', 455, 'p053', 'pantalones', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Swimming Man Logo Shorts for Men', 425, 'p054', 'pantalones', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Cargo Shorts for Men', 625, 'p055', 'pantalones', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Marker Logo Shorts for Men', 300, 'p056', 'pantalones', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Logo Shorts for Men', 310, 'p057', 'pantalones', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Belted Jeans for Men', 490, 'p058', 'pantalones', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Marker Logo Trousers for Men', 390, 'p059', 'pantalones', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('off-white', 'Pantalones cargo de nailon para hombre', 885, 'p060', 'pantalones', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('casablanca', 'Camisa de flores para hombre', 600, 'p061', 'camisas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('casablanca', 'Camisa Tropical para Hombre', 600, 'p062', 'camisas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('casablanca', 'Camisa Tropical para Hombre azul', 600, 'p063', 'camisas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('casablanca', 'Camisa Tropical para Hombre rosa', 600, 'p064', 'camisas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('casablanca', 'Chaqueta vaquera Lucid Dreams para hombre', 495, 'p065', 'camisas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('casablanca', 'Camisa Kamehamea para hombre', 650, 'p066', 'camisas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('casablanca', 'Chaqueta vaquera Huakai Beach para hombre', 495, 'p067', 'camisas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('casablanca', 'Camiseta con icono del club de tenis para hombre', 130, 'p068', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('casablanca', 'Camiseta Hibiscus para hombre', 120, 'p069', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('casablanca', 'Camiseta School Of Beautiful para hombre', 120, 'p070', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('casablanca', 'Camiseta de Tennis Club Island para hombre', 120, 'p071', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('casablanca', 'Camiseta con icono del club de tenis para hombre rosa', 130, 'p072', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('casablanca', 'Camiseta de Hawaii para hombre', 120, 'p073', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('casablanca', 'Camiseta Mountain Tennis Club para hombre', 155, 'p074', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('casablanca', 'Pantalones deportivos Casa Hawaii para hombre', 485, 'p075', 'pantalones', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('casablanca', 'Laurel Shorts para hombre', 250, 'p076', 'pantalones', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('casablanca', 'Shorts de tenis para hombre', 285, 'p077', 'pantalones', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('casablanca', 'Shorts de tenis para hombre blancos', 285, 'p078', 'pantalones', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('casablanca', 'Pantalones Rio para hombre', 470, 'p079', 'pantalones', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('casablanca', 'Shorts de baño para hombres', 150, 'p080', 'pantalones', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('casablanca', 'Shorts estampados para hombre rosas', 580, 'p081', 'pantalones', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('casablanca', 'Shorts estampados para hombre', 580, 'p082', 'pantalones', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('casablanca', 'Sudadera Laurel para hombre burdeos', 285, 'p083', 'sudaderas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('casablanca', 'Sudadera Laurel para hombre', 285, 'p084', 'sudaderas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('casablanca', 'Sudadera con capucha Laurel para hombre', 375, 'p085', 'sudaderas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('casablanca', 'Sudadera con capucha para hombres verde', 350, 'p086', 'sudaderas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('casablanca', 'Sudadera con capucha para hombres azul', 350, 'p087', 'sudaderas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('casablanca', 'Sudadera para hombre azul', 350, 'p088', 'sudaderas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('stussy', 'Camiseta con Texto para Hombre naranja', 50, 'p089', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('stussy', 'Camiseta con Texto para Hombre blanca', 50, 'p090', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('stussy', 'Camiseta Básica Stussy para Hombre blanca', 50, 'p091', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('stussy', 'Camiseta para Hombre Delusion Pigment', 60, 'p092', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('stussy', 'Camiseta Bola Ocho para hombre amarilla', 70, 'p093', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('stussy', 'Camiseta Peace Sign para hombre negra', 50, 'p094', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('stussy', 'Camiseta Peace Sign para hombre blanca', 50, 'p095', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('stussy', 'Camiseta Peace Sign para hombre naranja', 50, 'p096', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('stussy', 'Camiseta trébol pigment dye para hombre negra', 55, 'p097', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('stussy', 'Camiseta trébol pigment dye para hombre azul', 55, 'p098', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('stussy', 'Camiseta trébol pigment dye para hombre rosa', 55, 'p099', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('stussy', 'Camiseta básica para hombre blanca', 50, 'p100', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('stussy', 'Camiseta básica para hombre negra', 50, 'p101', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('stussy', 'Camiseta básica para hombre broto', 50, 'p102', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('stussy', 'Sudadera Basic Hood para hombre marron', 155, 'p103', 'sudaderas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('stussy', 'Sudadera Basic Hood para hombre amarilla', 155, 'p104', 'sudaderas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('stussy', 'Sudadera Logo Mock para hombre', 130, 'p105', 'sudaderas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('stussy', 'Sudadera con capucha Stock Logo para hombre negra', 110, 'p106', 'sudaderas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('stussy', 'Sudadera con capucha logo bordado para hombre marino', 115, 'p107', 'sudaderas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('stussy', 'Sudadera básica con capucha para hombre camel', 105, 'p108', 'sudaderas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('stussy', 'Chaqueta workwear tintada para hombre', 180, 'p109', 'sudaderas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('stussy', 'Sudadera Basic Hood para hombre negra', 155, 'p110', 'sudaderas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('gucci', 'Camisa tipo Caftan Floral para Hombre', 680, 'p111', 'camisas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('gucci', 'Camisa de Manga Corta a Cuadros para Hombre', 580, 'p112', 'camisas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('gucci', 'Camisa Oxford Fil Coupé con Símbolos', 490, 'p113', 'camisas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('gucci', 'Camisa Bowling Ken Scott x Gucci para hombre', 780, 'p114', 'camisas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('gucci', 'Camisa de lana a cuadros con GG para hombre', 780, 'p115', 'camisas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('gucci', 'Camisa de seda para hombre', 950, 'p116', 'camisas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('gucci', 'Camiseta con estampado original para hombre negra', 350, 'p117', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('gucci', 'Camiseta extragrande Mickey Mouse para hombre', 450, 'p118', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('gucci', 'Camiseta Disney x Gucci para hombre', 450, 'p119', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('gucci', 'Camiseta de Disney x Gucci para hombre gris', 450, 'p120', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('gucci', 'Camiseta oversize original Gucci negra', 475, 'p121', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('gucci', 'Camiseta oversize original Gucci blanca', 475, 'p122', 'camisetas', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('gucci', 'Pantalones de jogging hechos a medida', 620, 'p123', 'pantalones', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('gucci', 'Pantalones de cuadros para hombre beige', 880, 'p124', 'pantalones', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('gucci', 'Pantalones tapered con raya lateral para hombre', 950, 'p125', 'pantalones', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('gucci', 'Pantalones de chándal Ken Scott x Gucci para hombre', 980, 'p126', 'pantalones', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('gucci', 'Vaqueros con GG con lavado ecológico para hombre', 690, 'p127', 'pantalones', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('gucci', 'Pantalones de chándal de lona con GG para hombre', 760, 'p128', 'pantalones', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('gucci', 'Pantalón de pana para hombre marron Gucci', 880, 'p129', 'pantalones', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('gucci', 'Pantalones acampanados para hombre verde Gucci', 890, 'p130', 'pantalones', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('gucci', 'Shorts de dril de algodón para hombre Gucci roto', 650, 'p131', 'pantalones', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('gucci', 'Jeans para hombre Gucci', 690, 'p132', 'pantalones', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('gucci', 'Shorts con estampado Ken Scott para hombre', 680, 'p133', 'pantalones', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('gucci', 'Suéter Web Gucci', 980, 'p134', 'pantalones', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('gucci', 'Chaqueta con cremallera y estampado Ken Scott x Gucci ', 1380, 'p135', 'pantalones', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('gucci', 'Chaqueta de jersey técnico con cremallera', 1200, 'p136', 'pantalones', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('gucci', 'Sudadera corta con diseño de pato Donald de Disney x Gucci', 850, 'p137', 'pantalones', ' ', 'hombre');
INSERT INTO `productos` (`marca`, `nombre`, `precio`, `id`, `parte`, `comentario`, `sexo`) VALUES('gucci', 'Sudadera con capucha de Disney x Gucci para hombre', 950, 'p138', 'pantalones', ' ', 'hombre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tallas`
--

DROP TABLE IF EXISTS `tallas`;
CREATE TABLE IF NOT EXISTS `tallas` (
  `id` varchar(15) COLLATE latin1_spanish_ci NOT NULL,
  `talla` varchar(5) COLLATE latin1_spanish_ci NOT NULL,
  `cantidad` int(5) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `tallas`
--

INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p001', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p001', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p001', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p001', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p001', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p002', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p002', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p002', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p002', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p002', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p003', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p003', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p003', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p003', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p003', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p004', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p004', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p004', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p004', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p004', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p005', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p005', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p005', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p005', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p005', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p006', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p006', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p006', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p006', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p006', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p007', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p007', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p007', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p007', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p007', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p008', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p008', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p008', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p008', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p008', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p009', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p009', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p009', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p009', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p009', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p010', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p010', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p010', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p010', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p010', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p011', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p011', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p011', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p011', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p011', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p012', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p012', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p012', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p012', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p012', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p013', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p013', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p013', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p013', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p013', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p014', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p014', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p014', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p014', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p014', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p015', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p015', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p015', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p015', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p015', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p016', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p016', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p016', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p016', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p016', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p017', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p017', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p017', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p017', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p017', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p018', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p018', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p018', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p018', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p018', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p019', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p019', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p019', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p019', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p019', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p020', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p020', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p020', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p020', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p020', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p021', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p021', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p021', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p021', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p021', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p022', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p022', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p022', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p022', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p022', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p023', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p023', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p023', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p023', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p023', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p024', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p024', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p024', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p024', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p024', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p025', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p025', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p025', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p025', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p025', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p026', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p026', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p026', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p026', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p026', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p027', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p027', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p027', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p027', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p027', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p028', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p028', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p028', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p028', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p028', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p029', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p029', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p029', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p029', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p029', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p030', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p030', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p030', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p030', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p030', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p031', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p031', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p031', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p031', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p031', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p032', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p032', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p032', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p032', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p032', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p033', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p033', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p033', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p033', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p033', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p034', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p034', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p034', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p034', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p034', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p035', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p035', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p035', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p035', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p035', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p036', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p036', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p036', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p036', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p036', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p037', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p037', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p037', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p037', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p037', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p038', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p038', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p038', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p038', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p038', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p039', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p039', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p039', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p039', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p039', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p040', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p040', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p040', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p040', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p040', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p041', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p041', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p041', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p041', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p041', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p042', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p042', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p042', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p042', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p042', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p043', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p043', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p043', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p043', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p043', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p044', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p044', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p044', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p044', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p044', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p045', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p045', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p045', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p045', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p045', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p046', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p046', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p046', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p046', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p046', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p047', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p047', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p047', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p047', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p047', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p048', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p048', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p048', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p048', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p048', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p049', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p049', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p049', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p049', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p049', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p050', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p050', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p050', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p050', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p050', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p051', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p051', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p051', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p051', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p051', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p052', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p052', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p052', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p052', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p052', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p053', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p053', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p053', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p053', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p053', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p054', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p054', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p054', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p054', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p054', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p055', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p055', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p055', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p055', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p055', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p056', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p056', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p056', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p056', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p056', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p057', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p057', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p057', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p057', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p057', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p058', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p058', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p058', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p058', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p058', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p059', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p059', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p059', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p059', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p059', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p060', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p060', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p060', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p060', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p060', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p061', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p061', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p061', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p061', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p061', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p062', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p062', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p062', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p062', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p062', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p063', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p063', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p063', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p063', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p063', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p064', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p064', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p064', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p064', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p064', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p065', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p065', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p065', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p065', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p065', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p066', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p066', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p066', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p066', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p066', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p067', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p067', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p067', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p067', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p067', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p068', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p068', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p068', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p068', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p068', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p069', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p069', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p069', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p069', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p069', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p070', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p070', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p070', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p070', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p070', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p071', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p071', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p071', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p071', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p071', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p072', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p072', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p072', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p072', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p072', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p073', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p073', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p073', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p073', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p073', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p074', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p074', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p074', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p074', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p074', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p075', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p075', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p075', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p075', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p075', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p076', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p076', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p076', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p076', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p076', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p077', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p077', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p077', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p077', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p077', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p078', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p078', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p078', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p078', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p078', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p079', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p079', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p079', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p079', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p079', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p080', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p080', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p080', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p080', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p080', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p081', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p081', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p081', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p081', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p081', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p082', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p082', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p082', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p082', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p082', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p083', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p083', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p083', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p083', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p083', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p084', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p084', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p084', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p084', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p084', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p085', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p085', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p085', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p085', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p085', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p086', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p086', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p086', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p086', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p086', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p087', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p087', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p087', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p087', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p087', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p088', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p088', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p088', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p088', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p088', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p089', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p089', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p089', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p089', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p089', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p090', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p090', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p090', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p090', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p090', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p091', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p091', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p091', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p091', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p091', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p092', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p092', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p092', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p092', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p092', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p093', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p093', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p093', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p093', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p093', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p094', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p094', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p094', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p094', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p094', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p095', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p095', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p095', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p095', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p095', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p096', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p096', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p096', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p096', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p096', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p097', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p097', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p097', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p097', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p097', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p098', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p098', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p098', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p098', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p098', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p099', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p099', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p099', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p099', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p099', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p100', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p100', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p100', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p100', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p100', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p101', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p101', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p101', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p101', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p101', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p102', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p102', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p102', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p102', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p102', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p103', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p103', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p103', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p103', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p103', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p104', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p104', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p104', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p104', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p104', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p105', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p105', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p105', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p105', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p105', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p106', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p106', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p106', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p106', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p106', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p107', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p107', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p107', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p107', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p107', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p108', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p108', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p108', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p108', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p108', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p109', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p109', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p109', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p109', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p109', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p110', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p110', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p110', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p110', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p110', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p111', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p111', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p111', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p111', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p111', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p112', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p112', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p112', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p112', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p112', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p113', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p113', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p113', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p113', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p113', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p114', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p114', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p114', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p114', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p114', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p115', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p115', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p115', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p115', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p115', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p116', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p116', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p116', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p116', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p116', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p117', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p117', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p117', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p117', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p117', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p118', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p118', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p118', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p118', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p118', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p119', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p119', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p119', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p119', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p119', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p120', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p120', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p120', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p120', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p120', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p121', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p121', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p121', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p121', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p121', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p122', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p122', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p122', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p122', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p122', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p123', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p123', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p123', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p123', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p123', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p124', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p124', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p124', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p124', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p124', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p125', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p125', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p125', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p125', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p125', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p126', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p126', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p126', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p126', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p126', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p127', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p127', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p127', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p127', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p127', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p128', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p128', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p128', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p128', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p128', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p129', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p129', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p129', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p129', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p129', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p130', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p130', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p130', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p130', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p130', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p131', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p131', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p131', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p131', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p131', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p132', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p132', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p132', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p132', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p132', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p133', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p133', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p133', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p133', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p133', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p134', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p134', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p134', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p134', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p134', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p135', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p135', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p135', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p135', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p135', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p136', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p136', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p136', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p136', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p136', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p137', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p137', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p137', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p137', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p137', 'XL', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p138', 'XS', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p138', 'S', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p138', 'M', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p138', 'L', 5);
INSERT INTO `tallas` (`id`, `talla`, `cantidad`) VALUES('p138', 'XL', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transacciones`
--

DROP TABLE IF EXISTS `transacciones`;
CREATE TABLE IF NOT EXISTS `transacciones` (
  `id` varchar(10) COLLATE latin1_spanish_ci NOT NULL,
  `cantidad` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `id_usuario` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `comentario` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `nombre` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `id_usuario` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `clave` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `apellido` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `pais` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `region` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `codigoPostal` int(5) NOT NULL,
  `telefono` int(9) NOT NULL,
  `lineaDireccion1` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `lineaDireccion2` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`id_comentario`) REFERENCES `productos` (`comentario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `lineatransacciones`
--
ALTER TABLE `lineatransacciones`
  ADD CONSTRAINT `lineatransacciones_ibfk_1` FOREIGN KEY (`id`) REFERENCES `transacciones` (`id`);

--
-- Filtros para la tabla `tallas`
--
ALTER TABLE `tallas`
  ADD CONSTRAINT `tallas_ibfk_1` FOREIGN KEY (`id`) REFERENCES `productos` (`id`);

--
-- Filtros para la tabla `transacciones`
--
ALTER TABLE `transacciones`
  ADD CONSTRAINT `transacciones_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
