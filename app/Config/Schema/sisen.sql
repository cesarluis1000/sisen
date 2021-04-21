-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 21-04-2021 a las 13:42:48
-- Versión del servidor: 10.3.28-MariaDB-cll-lve
-- Versión de PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `elmundotec_sisen`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acos`
--

CREATE TABLE `acos` (
  `id` int(10) NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `acos`
--

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, NULL, NULL, 'controllers', 1, 154),
(8, 1, NULL, NULL, 'Groups', 2, 13),
(9, 8, NULL, NULL, 'index', 3, 4),
(10, 8, NULL, NULL, 'view', 5, 6),
(11, 8, NULL, NULL, 'add', 7, 8),
(12, 8, NULL, NULL, 'edit', 9, 10),
(13, 8, NULL, NULL, 'delete', 11, 12),
(20, 1, NULL, NULL, 'Pages', 14, 17),
(21, 20, NULL, NULL, 'display', 15, 16),
(22, 1, NULL, NULL, 'Parametros', 18, 29),
(23, 22, NULL, NULL, 'index', 19, 20),
(24, 22, NULL, NULL, 'view', 21, 22),
(25, 22, NULL, NULL, 'add', 23, 24),
(26, 22, NULL, NULL, 'edit', 25, 26),
(27, 22, NULL, NULL, 'delete', 27, 28),
(46, 1, NULL, NULL, 'Users', 30, 47),
(47, 46, NULL, NULL, 'login', 31, 32),
(48, 46, NULL, NULL, 'logout', 33, 34),
(49, 46, NULL, NULL, 'index', 35, 36),
(50, 46, NULL, NULL, 'view', 37, 38),
(51, 46, NULL, NULL, 'add', 39, 40),
(52, 46, NULL, NULL, 'edit', 41, 42),
(53, 46, NULL, NULL, 'delete', 43, 44),
(54, 1, NULL, NULL, 'AclExtras', 48, 49),
(55, 1, NULL, NULL, 'DebugKit', 50, 57),
(56, 55, NULL, NULL, 'ToolbarAccess', 51, 56),
(57, 56, NULL, NULL, 'history_state', 52, 53),
(58, 56, NULL, NULL, 'sql_explain', 54, 55),
(61, 46, NULL, NULL, 'initDB', 45, 46),
(62, 1, NULL, NULL, 'Permisos', 58, 71),
(63, 62, NULL, NULL, 'roles', 59, 60),
(64, 62, NULL, NULL, 'aplicaciones', 61, 62),
(65, 62, NULL, NULL, 'add', 63, 64),
(66, 62, NULL, NULL, 'acceso', 65, 66),
(67, 62, NULL, NULL, 'edit', 67, 68),
(68, 62, NULL, NULL, 'delete', 69, 70),
(73, 1, NULL, NULL, 'Menus', 72, 81),
(74, 73, NULL, NULL, 'index', 73, 74),
(75, 73, NULL, NULL, 'add', 75, 76),
(79, 73, NULL, NULL, 'delete', 77, 78),
(80, 73, NULL, NULL, 'edit', 79, 80),
(81, 1, NULL, NULL, 'Encuestas', 82, 99),
(82, 81, NULL, NULL, 'index', 83, 84),
(83, 81, NULL, NULL, 'view', 85, 86),
(84, 81, NULL, NULL, 'add', 87, 88),
(85, 81, NULL, NULL, 'edit', 89, 90),
(86, 81, NULL, NULL, 'delete', 91, 92),
(87, 1, NULL, NULL, 'Preguntas', 100, 111),
(88, 87, NULL, NULL, 'index', 101, 102),
(89, 87, NULL, NULL, 'view', 103, 104),
(90, 87, NULL, NULL, 'add', 105, 106),
(91, 87, NULL, NULL, 'edit', 107, 108),
(92, 87, NULL, NULL, 'delete', 109, 110),
(93, 1, NULL, NULL, 'Opciones', 112, 123),
(94, 93, NULL, NULL, 'index', 113, 114),
(95, 93, NULL, NULL, 'view', 115, 116),
(96, 93, NULL, NULL, 'add', 117, 118),
(97, 93, NULL, NULL, 'edit', 119, 120),
(98, 93, NULL, NULL, 'delete', 121, 122),
(99, 1, NULL, NULL, 'Respuestas', 124, 135),
(100, 99, NULL, NULL, 'index', 125, 126),
(101, 99, NULL, NULL, 'view', 127, 128),
(102, 99, NULL, NULL, 'add', 129, 130),
(103, 99, NULL, NULL, 'edit', 131, 132),
(104, 99, NULL, NULL, 'delete', 133, 134),
(105, 1, NULL, NULL, 'Encuestados', 136, 153),
(106, 105, NULL, NULL, 'index', 137, 138),
(107, 105, NULL, NULL, 'view', 139, 140),
(108, 105, NULL, NULL, 'add', 141, 142),
(109, 105, NULL, NULL, 'edit', 143, 144),
(110, 105, NULL, NULL, 'delete', 145, 146),
(111, 81, NULL, NULL, 'grafico', 93, 94),
(112, 105, NULL, NULL, 'correo', 147, 148),
(113, 105, NULL, NULL, 'add_list', 149, 150),
(114, 81, NULL, NULL, 'correos_video', 95, 96),
(115, 81, NULL, NULL, 'enlace_video', 97, 98),
(116, 105, NULL, NULL, 'correos', 151, 152);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aros`
--

CREATE TABLE `aros` (
  `id` int(10) NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `aros`
--

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, 'Group', 1, 'Administrador', 1, 4),
(2, NULL, 'Group', 2, 'managers', 5, 8),
(3, NULL, 'Group', 3, 'users', 9, 12),
(4, 1, 'User', 1, 'cramos', 2, 3),
(5, 2, 'User', 2, 'joselo', 6, 7),
(6, 3, 'User', 3, 'marisa', 10, 11),
(7, NULL, 'Group', 4, 'Vendedor', 13, 16),
(8, 7, 'User', 4, 'paco', 14, 15),
(9, NULL, 'Group', 5, 'Administrador Web', 17, 20),
(10, 9, 'User', 5, 'johanesp', 18, 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aros_acos`
--

CREATE TABLE `aros_acos` (
  `id` int(10) NOT NULL,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) NOT NULL DEFAULT '0',
  `_read` varchar(2) NOT NULL DEFAULT '0',
  `_update` varchar(2) NOT NULL DEFAULT '0',
  `_delete` varchar(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `aros_acos`
--

INSERT INTO `aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`) VALUES
(1, 1, 1, '1', '1', '1', '1'),
(2, 2, 1, '-1', '-1', '-1', '-1'),
(7, 3, 1, '-1', '-1', '-1', '-1'),
(10, 3, 48, '1', '1', '1', '1'),
(17, 2, 8, '1', '1', '1', '1'),
(18, 2, 12, '-1', '-1', '-1', '-1'),
(19, 9, 1, '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cake_sessions`
--

CREATE TABLE `cake_sessions` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `data` text DEFAULT NULL,
  `expires` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cake_sessions`
--

INSERT INTO `cake_sessions` (`id`, `data`, `expires`) VALUES
('8ebldj6bb3g448oh30t7ppbig2', 'Config|a:3:{s:9:\"userAgent\";s:32:\"e0fe61737b81db681501ad73d49f44e9\";s:4:\"time\";i:1618843402;s:9:\"countdown\";i:10;}Message|a:0:{}', 1618843402),
('9tige867auvdr3v2p09m46v5s3', 'Config|a:3:{s:9:\"userAgent\";s:32:\"e32399800612a48cca69d61aa97765f7\";s:4:\"time\";i:1618647046;s:9:\"countdown\";i:10;}Message|a:1:{s:4:\"auth\";a:4:{s:7:\"message\";s:51:\"No está autorizado para acceder a esta aplicación\";s:3:\"key\";s:4:\"auth\";s:7:\"element\";s:13:\"Flash/default\";s:6:\"params\";a:0:{}}}Auth|a:1:{s:4:\"User\";a:13:{s:2:\"id\";s:1:\"1\";s:7:\"nombres\";N;s:3:\"app\";N;s:3:\"apm\";N;s:6:\"correo\";N;s:8:\"username\";s:6:\"cramos\";s:8:\"group_id\";s:1:\"1\";s:6:\"estado\";s:1:\"A\";s:7:\"creador\";s:6:\"cramos\";s:6:\"creado\";s:19:\"2017-04-26 01:24:19\";s:11:\"modificador\";s:0:\"\";s:10:\"modificado\";N;s:5:\"Group\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:13:\"Administrador\";s:6:\"estado\";s:1:\"A\";s:7:\"creador\";s:6:\"cramos\";s:6:\"creado\";s:19:\"2017-04-26 01:19:00\";s:11:\"modificador\";s:0:\"\";s:10:\"modificado\";N;}}}', 1618647047),
('bi5quse8p118bfb6qkml02dnb1', 'Config|a:3:{s:9:\"userAgent\";s:32:\"e0fe61737b81db681501ad73d49f44e9\";s:4:\"time\";i:1618558286;s:9:\"countdown\";i:10;}Auth|a:1:{s:4:\"User\";a:13:{s:2:\"id\";s:1:\"1\";s:7:\"nombres\";N;s:3:\"app\";N;s:3:\"apm\";N;s:6:\"correo\";N;s:8:\"username\";s:6:\"cramos\";s:8:\"group_id\";s:1:\"1\";s:6:\"estado\";s:1:\"A\";s:7:\"creador\";s:6:\"cramos\";s:6:\"creado\";s:19:\"2017-04-26 01:24:19\";s:11:\"modificador\";s:0:\"\";s:10:\"modificado\";N;s:5:\"Group\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:13:\"Administrador\";s:6:\"estado\";s:1:\"A\";s:7:\"creador\";s:6:\"cramos\";s:6:\"creado\";s:19:\"2017-04-26 01:19:00\";s:11:\"modificador\";s:0:\"\";s:10:\"modificado\";N;}}}', 1618558286),
('e63b65emtune3c1jrhdpqtck12', 'Config|a:3:{s:9:\"userAgent\";s:32:\"e0fe61737b81db681501ad73d49f44e9\";s:4:\"time\";i:1619030360;s:9:\"countdown\";i:10;}Message|a:1:{s:4:\"auth\";a:4:{s:7:\"message\";s:51:\"No está autorizado para acceder a esta aplicación\";s:3:\"key\";s:4:\"auth\";s:7:\"element\";s:13:\"Flash/default\";s:6:\"params\";a:0:{}}}Auth|a:1:{s:4:\"User\";a:13:{s:2:\"id\";s:1:\"1\";s:7:\"nombres\";N;s:3:\"app\";N;s:3:\"apm\";N;s:6:\"correo\";N;s:8:\"username\";s:6:\"cramos\";s:8:\"group_id\";s:1:\"1\";s:6:\"estado\";s:1:\"A\";s:7:\"creador\";s:6:\"cramos\";s:6:\"creado\";s:19:\"2017-04-26 01:24:19\";s:11:\"modificador\";s:0:\"\";s:10:\"modificado\";N;s:5:\"Group\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:13:\"Administrador\";s:6:\"estado\";s:1:\"A\";s:7:\"creador\";s:6:\"cramos\";s:6:\"creado\";s:19:\"2017-04-26 01:19:00\";s:11:\"modificador\";s:0:\"\";s:10:\"modificado\";N;}}}', 1619030360),
('eemb2vlv7h8nlkk8ojc2otkgl4', 'Config|a:3:{s:9:\"userAgent\";s:32:\"d219a329493b3207e8e8dd94271dbde8\";s:4:\"time\";i:1619022771;s:9:\"countdown\";i:10;}Message|a:0:{}', 1619022771),
('f76ulakb7vho9knpbk8mh1dvu0', 'Config|a:3:{s:9:\"userAgent\";s:32:\"da799bb29551f8dfae31b8870841bb93\";s:4:\"time\";i:1618593511;s:9:\"countdown\";i:10;}Message|a:1:{s:4:\"auth\";a:4:{s:7:\"message\";s:51:\"No está autorizado para acceder a esta aplicación\";s:3:\"key\";s:4:\"auth\";s:7:\"element\";s:13:\"Flash/default\";s:6:\"params\";a:0:{}}}Auth|a:1:{s:8:\"redirect\";s:17:\"/Respuestas/add/8\";}', 1618593511),
('fpgo70u2qg2msgblctgsif8so1', 'Config|a:3:{s:9:\"userAgent\";s:32:\"e0fe61737b81db681501ad73d49f44e9\";s:4:\"time\";i:1618687174;s:9:\"countdown\";i:10;}', 1618687174),
('j1eu1ti6c93igo9r1fih41s3v0', 'Config|a:3:{s:9:\"userAgent\";s:32:\"e0fe61737b81db681501ad73d49f44e9\";s:4:\"time\";i:1618678943;s:9:\"countdown\";i:10;}Message|a:1:{s:4:\"auth\";a:4:{s:7:\"message\";s:51:\"No está autorizado para acceder a esta aplicación\";s:3:\"key\";s:4:\"auth\";s:7:\"element\";s:13:\"Flash/default\";s:6:\"params\";a:0:{}}}Auth|a:1:{s:4:\"User\";a:13:{s:2:\"id\";s:1:\"1\";s:7:\"nombres\";N;s:3:\"app\";N;s:3:\"apm\";N;s:6:\"correo\";N;s:8:\"username\";s:6:\"cramos\";s:8:\"group_id\";s:1:\"1\";s:6:\"estado\";s:1:\"A\";s:7:\"creador\";s:6:\"cramos\";s:6:\"creado\";s:19:\"2017-04-26 01:24:19\";s:11:\"modificador\";s:0:\"\";s:10:\"modificado\";N;s:5:\"Group\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:13:\"Administrador\";s:6:\"estado\";s:1:\"A\";s:7:\"creador\";s:6:\"cramos\";s:6:\"creado\";s:19:\"2017-04-26 01:19:00\";s:11:\"modificador\";s:0:\"\";s:10:\"modificado\";N;}}}', 1618678944),
('jtsetuncu1b0o3sd72lu3u5mn4', 'Config|a:3:{s:9:\"userAgent\";s:32:\"1227a525b45dbf6992274184e3910437\";s:4:\"time\";i:1618533309;s:9:\"countdown\";i:10;}Auth|a:1:{s:4:\"User\";a:13:{s:2:\"id\";s:1:\"1\";s:7:\"nombres\";N;s:3:\"app\";N;s:3:\"apm\";N;s:6:\"correo\";N;s:8:\"username\";s:6:\"cramos\";s:8:\"group_id\";s:1:\"1\";s:6:\"estado\";s:1:\"A\";s:7:\"creador\";s:6:\"cramos\";s:6:\"creado\";s:19:\"2017-04-26 01:24:19\";s:11:\"modificador\";s:0:\"\";s:10:\"modificado\";N;s:5:\"Group\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:13:\"Administrador\";s:6:\"estado\";s:1:\"A\";s:7:\"creador\";s:6:\"cramos\";s:6:\"creado\";s:19:\"2017-04-26 01:19:00\";s:11:\"modificador\";s:0:\"\";s:10:\"modificado\";N;}}}', 1618533309),
('knrrg7i70o7jduvvov5nmhnoo0', 'Config|a:3:{s:9:\"userAgent\";s:32:\"b248d19b2e59aa86e5c067b11039cd0e\";s:4:\"time\";i:1619022737;s:9:\"countdown\";i:10;}Message|a:0:{}', 1619022737),
('o6ujht77a69kpk4hkddsvbt0e1', 'Config|a:3:{s:9:\"userAgent\";s:32:\"e0fe61737b81db681501ad73d49f44e9\";s:4:\"time\";i:1619027960;s:9:\"countdown\";i:10;}Auth|a:1:{s:4:\"User\";a:13:{s:2:\"id\";s:1:\"1\";s:7:\"nombres\";N;s:3:\"app\";N;s:3:\"apm\";N;s:6:\"correo\";N;s:8:\"username\";s:6:\"cramos\";s:8:\"group_id\";s:1:\"1\";s:6:\"estado\";s:1:\"A\";s:7:\"creador\";s:6:\"cramos\";s:6:\"creado\";s:19:\"2017-04-26 01:24:19\";s:11:\"modificador\";s:0:\"\";s:10:\"modificado\";N;s:5:\"Group\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:13:\"Administrador\";s:6:\"estado\";s:1:\"A\";s:7:\"creador\";s:6:\"cramos\";s:6:\"creado\";s:19:\"2017-04-26 01:19:00\";s:11:\"modificador\";s:0:\"\";s:10:\"modificado\";N;}}}Message|a:0:{}', 1619027960),
('r3jg229n4nungoa64m2f4ccfj0', 'Config|a:3:{s:9:\"userAgent\";s:32:\"e32399800612a48cca69d61aa97765f7\";s:4:\"time\";i:1618709796;s:9:\"countdown\";i:10;}Auth|a:1:{s:4:\"User\";a:13:{s:2:\"id\";s:1:\"1\";s:7:\"nombres\";N;s:3:\"app\";N;s:3:\"apm\";N;s:6:\"correo\";N;s:8:\"username\";s:6:\"cramos\";s:8:\"group_id\";s:1:\"1\";s:6:\"estado\";s:1:\"A\";s:7:\"creador\";s:6:\"cramos\";s:6:\"creado\";s:19:\"2017-04-26 01:24:19\";s:11:\"modificador\";s:0:\"\";s:10:\"modificado\";N;s:5:\"Group\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:13:\"Administrador\";s:6:\"estado\";s:1:\"A\";s:7:\"creador\";s:6:\"cramos\";s:6:\"creado\";s:19:\"2017-04-26 01:19:00\";s:11:\"modificador\";s:0:\"\";s:10:\"modificado\";N;}}}', 1618709796),
('s7opsns7ft5mj2qgebip38i8v0', 'Config|a:3:{s:9:\"userAgent\";s:32:\"e32399800612a48cca69d61aa97765f7\";s:4:\"time\";i:1618613674;s:9:\"countdown\";i:10;}Auth|a:1:{s:4:\"User\";a:13:{s:2:\"id\";s:1:\"1\";s:7:\"nombres\";N;s:3:\"app\";N;s:3:\"apm\";N;s:6:\"correo\";N;s:8:\"username\";s:6:\"cramos\";s:8:\"group_id\";s:1:\"1\";s:6:\"estado\";s:1:\"A\";s:7:\"creador\";s:6:\"cramos\";s:6:\"creado\";s:19:\"2017-04-26 01:24:19\";s:11:\"modificador\";s:0:\"\";s:10:\"modificado\";N;s:5:\"Group\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:13:\"Administrador\";s:6:\"estado\";s:1:\"A\";s:7:\"creador\";s:6:\"cramos\";s:6:\"creado\";s:19:\"2017-04-26 01:19:00\";s:11:\"modificador\";s:0:\"\";s:10:\"modificado\";N;}}}Message|a:0:{}', 1618613674),
('t7e94bmnubhelu8ahgjqnk5hd0', 'Config|a:3:{s:9:\"userAgent\";s:32:\"e0fe61737b81db681501ad73d49f44e9\";s:4:\"time\";i:1618558287;s:9:\"countdown\";i:10;}Message|a:1:{s:4:\"auth\";a:4:{s:7:\"message\";s:51:\"No está autorizado para acceder a esta aplicación\";s:3:\"key\";s:4:\"auth\";s:7:\"element\";s:13:\"Flash/default\";s:6:\"params\";a:0:{}}}Auth|a:1:{s:8:\"redirect\";s:10:\"/Encuestas\";}', 1618558287),
('tu7vupd9qp6pvb0vt8mli9kms6', 'Config|a:3:{s:9:\"userAgent\";s:32:\"7f5043659afb52fb2a546b64fe295d55\";s:4:\"time\";i:1618619665;s:9:\"countdown\";i:10;}Auth|a:1:{s:4:\"User\";a:13:{s:2:\"id\";s:1:\"1\";s:7:\"nombres\";N;s:3:\"app\";N;s:3:\"apm\";N;s:6:\"correo\";N;s:8:\"username\";s:6:\"cramos\";s:8:\"group_id\";s:1:\"1\";s:6:\"estado\";s:1:\"A\";s:7:\"creador\";s:6:\"cramos\";s:6:\"creado\";s:19:\"2017-04-26 01:24:19\";s:11:\"modificador\";s:0:\"\";s:10:\"modificado\";N;s:5:\"Group\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:13:\"Administrador\";s:6:\"estado\";s:1:\"A\";s:7:\"creador\";s:6:\"cramos\";s:6:\"creado\";s:19:\"2017-04-26 01:19:00\";s:11:\"modificador\";s:0:\"\";s:10:\"modificado\";N;}}}', 1618619666);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuestados`
--

CREATE TABLE `encuestados` (
  `id` int(11) NOT NULL,
  `nombres` varchar(255) COLLATE utf8_bin NOT NULL,
  `app` varchar(255) COLLATE utf8_bin NOT NULL,
  `apm` varchar(255) COLLATE utf8_bin NOT NULL,
  `dni` varchar(8) COLLATE utf8_bin NOT NULL,
  `telefono` varchar(9) COLLATE utf8_bin DEFAULT NULL,
  `correo` varchar(255) COLLATE utf8_bin NOT NULL,
  `correo_enviado` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'N',
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `hash` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `encuesta_id` int(11) NOT NULL,
  `estado` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'A',
  `creador` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `creado` datetime DEFAULT NULL,
  `modificador` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `modificado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `encuestados`
--

INSERT INTO `encuestados` (`id`, `nombres`, `app`, `apm`, `dni`, `telefono`, `correo`, `correo_enviado`, `password`, `hash`, `encuesta_id`, `estado`, `creador`, `creado`, `modificador`, `modificado`) VALUES
(1, 'Cesar', 'Ramos', 'Cueva', '42684024', NULL, 'cesarluis1000@hotmail.com', 'N', NULL, 'd8b21902c5da652220c3acfcb0ee7a21', 1, 'E', 'cramos', '2021-04-06 01:31:44', 'cramos', '2021-04-06 01:49:25'),
(2, 'Silvia', 'Medrano', 'Pulido', '42684036', NULL, 'silvia@gmail.com', 'N', NULL, '7e59cb9bb4d5f1aa066d61d6765a41ea', 1, 'E', 'cramos', '2021-04-06 01:50:25', 'cramos', '2021-04-06 02:17:20'),
(3, 'Silvia', 'Medrano', 'Pulido', '12345678', '987654321', 'silvia@gmail.com', 'N', NULL, '5fa3efef8e662269245e95fe1886d0f2', 4, 'E', 'cramos', '2021-04-07 22:31:11', NULL, NULL),
(4, 'Jorge ', 'Duran', 'Morales', '23658963', '962531478', 'jorge@gmail.com', 'N', NULL, '5dc8f5c95021fb217fc59a9665301565', 5, 'E', 'cramos', '2021-04-07 23:50:04', NULL, NULL),
(5, 'Julia', 'Perez', 'Mendoza', '56987412', '965214587', 'julia@gmail.com', 'N', NULL, '620cc93b65451aeef8b2474dcd3132df', 5, 'E', 'cramos', '2021-04-07 23:58:56', NULL, NULL),
(6, 'Maria', 'Lluch', 'Melendez', '98521452', '965231458', 'maria@gmai.com', 'N', NULL, 'f11e6be5269a79f8751cad426d1dcdb1', 5, 'E', 'cramos', '2021-04-08 00:00:33', NULL, NULL),
(7, 'Pablo', 'Estepa', 'Velasco', '95647447', '962654123', 'pablo@gmail.com', 'N', NULL, '21f309b85f08fc15498514c176f83a04', 5, 'E', 'cramos', '2021-04-08 00:01:19', NULL, NULL),
(8, 'Martin', 'Santos', 'Benavent', '56987452', '965874112', 'martin@gmail.com', 'N', NULL, 'e958f632c64a44d22805d49d0dc58f14', 5, 'E', 'cramos', '2021-04-08 00:02:05', NULL, NULL),
(9, 'Emilia', 'Olalla', 'Gordon', '56874125', '965231400', 'emilia@gmail.com', 'N', NULL, '5f4b2ed184537632b7d85dc7631eade5', 5, 'E', 'cramos', '2021-04-08 00:03:09', NULL, NULL),
(10, 'Andrea', 'Carrillo', 'Parrado', '95547858', '962547896', 'andrea@gmail.com', 'N', NULL, 'd32244fd85578c4020db01c32f19b41f', 5, 'E', 'cramos', '2021-04-08 00:05:38', NULL, NULL),
(11, 'Eva', 'Fresno', 'Piedra', '96588541', '964121255', 'cesarluis1000@hotmail.com', 'Y', NULL, '6e21071485ef8fb5ea83470d1472082b', 5, 'A', 'cramos', '2021-04-08 00:06:14', 'cramos', '2021-04-19 14:56:37'),
(12, 'Angeles ', 'Miñano', 'Valdivia', '85654754', '985654754', 'cesarluis1000@yahoo.com', 'Y', NULL, '1bc988e4709f7f02d0c0d475b351cb0e', 5, 'E', 'cramos', '2021-04-08 00:06:52', 'cramos', '2021-04-19 08:44:35'),
(13, 'Lorena', 'Baños', 'Lage', '56854412', '962587458', 'lorena@gmail.com', 'N', NULL, 'c1855194bd918506c4bf482a931ced38', 5, 'E', 'cramos', '2021-04-08 00:08:00', NULL, NULL),
(14, 'Carlos Alberto ', 'Uribe', 'Antonio', '08551377', '994727584', 'c.uribe@cacsanfrancisco.com', 'N', NULL, '725e966ad516ca340d2162bbedd99d90', 6, 'E', 'cramos', '2021-04-08 11:50:11', 'cramos', '2021-04-08 18:41:39'),
(15, 'Marco Antonio', 'Villavicencio', 'Guardia', '22498668', '962683344', 'm.villavicencio@cacsanfrancisco.com', 'N', NULL, 'c054b0a0b4439c244251d5b16d19f3c3', 6, 'E', 'cramos', '2021-04-08 11:51:20', NULL, NULL),
(16, 'Omayra', 'Cachay', 'Suarez', '43546273', '931856255', 'o.cachay@cacsanfrancisco.com', 'N', NULL, '417679016a2ff8b9ee515fca0ff44fd1', 6, 'E', 'cramos', '2021-04-08 11:54:21', NULL, NULL),
(17, 'Fernando Augusto', 'Calderon ', 'Juarez', '43177536', '962983008', 'fcalderon@cacsf.pe', 'N', NULL, 'a783f8d332ba169c288137d251bfb5f7', 6, 'E', 'cramos', '2021-04-08 11:55:08', NULL, NULL),
(18, 'Jose Antonio', 'Valdivia', 'Jaimes', '48152730', '947544288', 'jvaldivia@cacsf.pe', 'N', NULL, 'd62eb556b9c9acb46c7dec3f50015385', 6, 'E', 'cramos', '2021-04-08 11:56:05', NULL, NULL),
(19, 'Johan Neisel', 'Espinoza', 'Soria', '42041946', '913701117', 'jespinoza@cacsf.pe', 'N', NULL, '2c4b98574c3da794c03c34c6a545e2e9', 6, 'E', 'cramos', '2021-04-08 11:57:11', NULL, NULL),
(20, 'Crecia Thalia', 'Trujillo', 'Melchor', '47240211', '996930900', 'c.trujillo@cacsf.pe', 'N', NULL, '4fe65652cf35dfd86df3970f0151705d', 6, 'E', 'cramos', '2021-04-08 11:57:53', NULL, NULL),
(21, 'Jhonatan Niels', 'Machuca', 'Verde', '44116017', '947476491', 'j.machuca@cacsf.pe', 'N', NULL, '9e07086559a0c59f7440d2a248bd0524', 6, 'E', 'cramos', '2021-04-08 11:58:32', NULL, NULL),
(22, 'Becker David', 'Acosta ', 'Lopez', '42674788', '943811875', 'b.acosta@cacsf.pe', 'N', NULL, '154138cff3d7b2a3f62e6480d1dc2736', 6, 'E', 'cramos', '2021-04-08 11:59:07', NULL, NULL),
(23, 'Elizabeth Jaqueline', 'Alvarez', 'Pajuelo', '42528491', '932000567', 'e.pejuelo@cacsf.pe', 'N', NULL, 'e9b64f82341afc9dfe90b03b022fe015', 6, 'E', 'cramos', '2021-04-08 11:59:47', NULL, NULL),
(24, 'CARLOS ALBERTO', 'URIBE', 'ALBERTO', '08551377', '994727584', 'c.uribe@cacsanfrancisco.com', 'N', NULL, '43ab688cc3bf142d0e63056f819275d7', 7, 'E', 'cramos', '2021-04-09 14:35:33', 'cramos', '2021-04-09 15:47:53'),
(25, 'MARCO ANTONIO', 'VILLAVICENCIO ', 'GUARDIA ', '22498668', '962683344', 'marcovillavicencioguardia123@gmail.com', 'N', NULL, '6d82e7e54d0281fed98703ba3763c1fc', 7, 'E', 'cramos', '2021-04-09 14:36:45', 'cramos', '2021-04-09 15:49:02'),
(26, 'OMAYRA', 'CACHAY', 'SUAREZ', '43546273', '931856255', 'o.cachay@cacsanfrancisco.com', 'N', NULL, 'f009da8e8faee901bd7cd8d35ab39cf2', 7, 'E', 'cramos', '2021-04-09 14:37:30', NULL, NULL),
(27, 'FERNANDO AUGUSTO', 'CALDERON', 'JUAREZ', '43177536', '962983008', 'fcalderon@cacsf.pe', 'N', NULL, '4919f4cdb9c4512da4299e5a83563c7c', 7, 'A', 'cramos', '2021-04-09 14:38:27', NULL, NULL),
(28, 'JOSE ANTONIO', 'VALDIVIA ', 'JAIMES', '48152730', '947544288', 'jvaldivia@cacsf.pe', 'N', NULL, '7b9b23086ff996006c949d667c372b99', 7, 'A', 'cramos', '2021-04-09 14:39:14', NULL, NULL),
(29, 'JOHAN NEISEL', 'ESPINOZA ', 'SORIA', '42041946', '913701117', 'jespinoza@cassanfrancisco.com', 'N', NULL, '88ce646bb7c435d3127518c795367a6f', 7, 'E', 'cramos', '2021-04-09 14:39:55', 'cramos', '2021-04-09 15:27:46'),
(30, 'JHONATAN NIELS', 'MACHUCA ', 'VERDE', '44116017', '947476491', 'j.machuca@cacsf.pe', 'N', NULL, 'e61726b2a962614a712c591b1d1b63f1', 7, 'A', 'cramos', '2021-04-09 14:40:41', NULL, NULL),
(31, 'CRECIA THALIA', 'TRUJILLO ', 'MELCHOR ', '47240211', '996930900', 'c.trujillo@cacsf.pe', 'N', NULL, 'd6ff8063ce0b2df3e949ab8a61650462', 7, 'A', 'cramos', '2021-04-09 14:41:25', NULL, NULL),
(32, 'BECKER DAVID', 'ACOSTA', 'LOPEZ', '42674788', '943811875', 'jespinoza@cacsf.pe', 'N', NULL, '8eb9e9d7eae62531706eca3d95150642', 7, 'E', 'cramos', '2021-04-09 14:42:04', 'cramos', '2021-04-09 15:28:57'),
(33, 'Cristhian', 'Ramos ', 'Cueva', '98565214', '989231175', 'cristhianramoscueva@gmail.com', 'N', NULL, '8916418557ccb66c1b4747e293e60630', 8, 'A', 'cramos', '2021-04-14 01:27:00', 'cramos', '2021-04-16 16:35:48'),
(34, 'JOHAN NEISEL', 'ESPINOZA ', 'soria', '42041946', '913701117', 'jespinoza@cacsf.pe', 'N', NULL, '1a78bbd89a9634168881083384326960', 9, 'A', 'cramos', '2021-04-15 12:01:36', NULL, NULL),
(35, 'Miguel ', 'Claudio', 'Berrospi', '41942046', '999262088', 'm.claudio@cacsf.pe', 'N', NULL, '02660f0c3ebd52a57707b0581301aff0', 9, 'E', 'cramos', '2021-04-15 12:02:40', NULL, NULL),
(36, 'clauido', 'miguel ', 'Berrospi', '5146513', '931856255', 'm.claudio@cacsanfrancisco.com', 'N', NULL, '1ccb94105cee882f0656ae99563ebb9c', 9, 'A', 'cramos', '2021-04-15 12:25:17', NULL, NULL),
(37, 'Cesar Luis', 'Ramos', 'Cueva', '42684024', '964121255', 'cesarluis1000@hotmail.com', 'N', NULL, '9eed1035b253c469c9d0fcd1c486413d', 8, 'D', 'cramos', '2021-04-16 11:15:13', 'cramos', '2021-04-16 16:35:52'),
(38, 'Miguel', 'Claudio', 'Berrospi', '43135773', '999262088', 'm.claudio@cacsf.pe', 'Y', NULL, '570dc96704268fe2eba5fdd93995e6d4', 10, 'E', 'cramos', '2021-04-17 08:58:19', NULL, NULL),
(39, 'JOHAN NEISEL', 'ESPINOZA ', 'SORIA', '42041946', '913701117', 'jespinoza@cacsf.pe', 'Y', NULL, '31eb49a380ab73a887ffa029fe6faf07', 10, 'A', 'cramos', '2021-04-17 08:58:44', NULL, NULL),
(40, 'JOHAN NEISEL', 'Claudio', 'Martinez', '42041946', '913701117', 'jespinoza@cacsf.pe', 'N', NULL, '21e79117f50dd5ec429bc11858418bf8', 10, 'A', 'cramos', '2021-04-17 11:02:17', NULL, NULL),
(41, 'JOHAN NEISEL', 'ESPINOZA ', 'SORIA', '42041946', '913701117', 'jespinoza@cacsf.pe', 'N', NULL, '0ebfa6dc3437c82f3d13067c4b2d6117', 11, 'E', 'cramos', '2021-04-20 11:22:38', NULL, NULL),
(42, 'Miguel', 'Claudio', 'Berrospi', '43135773', '999262088', 'm.claudio@cacsf.pe', 'N', NULL, 'e35751ae5b08d30f2a055a87cf509337', 11, 'E', 'cramos', '2021-04-20 11:24:10', NULL, NULL),
(43, 'Miguel', 'berrospi', 'claudio', '43135773', '962703545', 'm.claudio@cacsanfrancisco.com', 'N', NULL, 'ef3c3e89a0e254d428a78d6d1d934fbe', 11, 'A', 'cramos', '2021-04-20 11:24:58', NULL, NULL),
(44, 'Jose', 'VALDIVIA ', 'JAIMES', '48152730', '947544288', 'j.valdivia@cacssanfrancisco.com', 'N', NULL, 'f1ecb54e97fedccbe611451067675306', 11, 'A', 'cramos', '2021-04-20 11:26:37', NULL, NULL),
(45, 'neisel', 'johan', 'soria', '52042365', '913701117', 'jespinoza@cassanfrancisco.com', 'N', NULL, '489939076f8b22975aa2c791e508a145', 11, 'A', 'cramos', '2021-04-21 11:07:13', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuestas`
--

CREATE TABLE `encuestas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_fin` datetime NOT NULL,
  `enlace_zoom` varchar(255) DEFAULT NULL,
  `estado` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'A',
  `creador` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `creado` datetime DEFAULT NULL,
  `modificador` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `modificado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `encuestas`
--

INSERT INTO `encuestas` (`id`, `nombre`, `fecha_inicio`, `fecha_fin`, `enlace_zoom`, `estado`, `creador`, `creado`, `modificador`, `modificado`) VALUES
(1, 'Elecciones generales 2021', '2021-04-05 17:34:30', '2021-04-05 17:34:33', 'https://us05web.zoom.us/j/5641667630?pwd=bXhNSktpUWZiM25GZDFId3VwWTd1Zz09', 'D', 'cramos', '2021-04-05 17:34:39', 'cramos', '2021-04-20 09:55:36'),
(2, 'Elecciones generales 2022', '2021-04-05 20:22:38', '2021-04-05 20:22:40', 'https://us05web.zoom.us/j/5641667630?pwd=bXhNSktpUWZiM25GZDFId3VwWTd1Zz09', 'A', 'cramos', '2021-04-05 20:35:07', NULL, NULL),
(3, 'Elecciones generales 2023', '2021-04-05 21:22:16', '2021-04-05 21:22:19', '', 'A', 'cramos', '2021-04-05 21:22:29', NULL, NULL),
(4, 'Elecciones generales 2024', '2021-04-07 22:23:32', '2021-04-07 22:23:34', 'https://us05web.zoom.us/j/5641667630?pwd=bXhNSktpUWZiM25GZDFId3VwWTd1Zz09', 'A', 'cramos', '2021-04-07 22:23:39', NULL, NULL),
(5, 'Elecciones generales 2025', '2021-04-10 16:00:00', '2021-04-10 16:30:00', 'https://us05web.zoom.us/j/5641667630?pwd=bXhNSktpUWZiM25GZDFId3VwWTd1Zz09  ', 'A', 'cramos', '2021-04-07 23:40:21', 'cramos', '2021-04-13 12:10:26'),
(6, 'Cooperativa San Francisco', '2021-04-08 11:46:10', '2021-04-08 11:46:12', 'https://us05web.zoom.us/j/5641667630?pwd=bXhNSktpUWZiM25GZDFId3VwWTd1Zz09  ', 'A', 'cramos', '2021-04-08 11:47:47', 'cramos', '2021-04-16 01:37:28'),
(7, 'ENCUESTA PRUEBA', '2021-04-10 15:20:26', '2021-04-10 17:42:59', '', 'A', 'cramos', '2021-04-08 13:43:19', 'cramos', '2021-04-09 15:52:02'),
(8, 'ENCUENTA PRUEBA 2', '2021-04-09 15:20:08', '2021-04-09 17:50:25', '', 'A', 'cramos', '2021-04-08 13:50:38', NULL, NULL),
(9, 'encuesta prueba 3', '2021-04-15 13:30:06', '2021-04-16 17:56:29', 'https://zoom.us/j/99035095167?pwd=NHBmU05ZYVVCeERrdXhVaGdZOXdTUT09', 'D', 'cramos', '2021-04-15 11:59:36', 'cramos', '2021-04-17 08:51:54'),
(10, 'Elecciones 4', '2021-04-17 09:52:15', '2021-04-17 11:52:26', 'https://zoom.us/j/91815347584?pwd=ZDA3Q1hjVzdlREZObUc0Z21BdEFyZz09', 'A', 'cramos', '2021-04-17 08:54:06', 'cramos', '2021-04-17 09:04:38'),
(11, 'encuesta prueba 6', '2021-04-21 11:24:52', '2021-04-21 11:50:08', 'https://zoom.us/j/95532564243?pwd=SkFJUlJHZDBRT1BtRHdaZ0NPZlBqdz09', 'A', 'cramos', '2021-04-20 11:20:38', 'cramos', '2021-04-21 11:07:35'),
(12, 'Prueba ', '2021-04-21 15:30:29', '2021-04-21 16:30:00', '', 'D', 'cramos', '2021-04-21 11:59:20', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `estado` varchar(1) NOT NULL DEFAULT 'A',
  `creador` varchar(45) DEFAULT NULL,
  `creado` datetime DEFAULT NULL,
  `modificador` varchar(45) DEFAULT NULL,
  `modificado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `groups`
--

INSERT INTO `groups` (`id`, `name`, `estado`, `creador`, `creado`, `modificador`, `modificado`) VALUES
(1, 'Administrador', 'A', 'cramos', '2017-04-26 01:19:00', '', NULL),
(2, 'managers', 'A', 'cramos', '2017-04-26 01:22:43', '', NULL),
(3, 'users', 'A', 'cramos', '2017-04-26 01:22:56', '', NULL),
(4, 'Vendedor', 'A', 'cramos', '2017-05-06 05:53:41', '', NULL),
(5, 'Administrador Web', 'A', 'cramos', '2021-04-05 20:09:47', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  `aro_id` int(10) DEFAULT NULL,
  `aco_id` int(10) DEFAULT NULL,
  `creador` varchar(45) DEFAULT NULL,
  `creado` datetime DEFAULT NULL,
  `modificador` varchar(45) DEFAULT NULL,
  `modificado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `nombre`, `parent_id`, `lft`, `rght`, `aro_id`, `aco_id`, `creador`, `creado`, `modificador`, `modificado`) VALUES
(1, 'Permisos', NULL, 1, 12, 1, NULL, NULL, NULL, NULL, NULL),
(2, 'Grupos', 1, 2, 3, 1, 9, NULL, NULL, NULL, NULL),
(3, 'Usuarios', 1, 4, 5, 1, 49, NULL, NULL, NULL, NULL),
(4, 'Aplicaciones', 1, 6, 7, 1, 64, NULL, NULL, NULL, NULL),
(5, 'Accesos', 1, 8, 9, 1, 63, NULL, NULL, NULL, NULL),
(10, 'Permisos', NULL, 13, 14, 2, NULL, NULL, NULL, NULL, NULL),
(14, 'Menu', 1, 10, 11, 1, 74, NULL, NULL, NULL, NULL),
(15, 'Aplicaciones', NULL, 15, 26, 1, NULL, NULL, NULL, NULL, NULL),
(16, 'Encuestas', 15, 16, 17, 1, 82, NULL, NULL, NULL, NULL),
(17, 'Preguntas', 15, 18, 19, 1, 88, NULL, NULL, NULL, NULL),
(18, 'Opciones', 15, 20, 21, 1, 94, NULL, NULL, NULL, NULL),
(20, 'Encuestados', 15, 22, 23, 1, 106, NULL, NULL, NULL, NULL),
(21, 'Respuestas', 15, 24, 25, 1, 100, 'cramos', '2021-04-07 22:35:55', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `note` text NOT NULL,
  `color` varchar(20) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `notes`
--

INSERT INTO `notes` (`id`, `title`, `note`, `color`, `date`) VALUES
(1, 'title', 'note', '-8469267', '2020-04-18 20:31:37'),
(2, 'cesar', 'cesar', '-2184710', '2020-04-19 04:02:45'),
(3, 'cesar', 'cesar', '-2184710', '2020-04-19 04:05:25'),
(4, 'cesar', 'cesar', '-2184710', '2020-04-19 04:11:54'),
(5, 'cesar', 'cesar', '-2184710', '2020-04-19 04:20:28'),
(6, 'cesar', 'ramos', '-2184710', '2020-04-19 04:24:40'),
(7, 'title', 'note', '-8469267', '2020-04-19 04:48:19'),
(8, 'title', 'note', '-8469267', '2020-04-19 04:50:14'),
(9, 'title', 'note', '-8469267', '2020-04-19 04:52:08'),
(10, 'title', 'note', '-8469267', '2020-04-19 04:53:31'),
(11, 'cesar', 'cesar', '-2184710', '2020-04-19 05:09:14'),
(12, 'cesar', 'cesar', '-2184710', '2020-04-19 05:11:30'),
(13, 'Silvia', 'Silvia', '-2184710', '2020-04-19 05:18:55'),
(14, 'Karen', 'Karen', '-2184710', '2020-04-19 05:21:33'),
(15, 'Evelyn', 'Evelyn', '-2184710', '2020-04-19 05:22:55'),
(17, 'Gaby', 'Rodas', '-1222758', '2020-04-19 07:21:47'),
(18, 'Enma', 'Villareal', '-3081091', '2020-04-19 07:48:04'),
(19, 'Helen', 'Muñoz', '-13963914', '2020-04-19 08:19:07'),
(20, 'Cielo', 'Azul', '-8469267', '2020-04-19 08:20:53'),
(21, 'Alianza', 'Lima', '-8469267', '2020-04-19 08:31:26'),
(22, 'Hola', 'Mundo', '-13963914', '2020-05-01 23:51:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones`
--

CREATE TABLE `opciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_bin NOT NULL,
  `pregunta_id` int(11) NOT NULL,
  `estado` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'A',
  `creador` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `creado` datetime DEFAULT NULL,
  `modificador` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `modificado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `opciones`
--

INSERT INTO `opciones` (`id`, `nombre`, `pregunta_id`, `estado`, `creador`, `creado`, `modificador`, `modificado`) VALUES
(1, 'Yonhy Lescano', 1, 'A', 'cramos', '2021-04-05 23:28:18', 'cramos', '2021-04-05 23:29:59'),
(2, 'George Forsyth', 1, 'A', 'cramos', '2021-04-06 00:12:52', NULL, NULL),
(3, 'Keiko Fujimori', 1, 'A', 'cramos', '2021-04-06 00:13:50', NULL, NULL),
(4, 'Veronika Mendoza', 1, 'A', 'cramos', '2021-04-06 00:18:52', NULL, NULL),
(5, 'Yonhy Lescano', 2, 'A', 'cramos', '2021-04-06 09:05:03', NULL, NULL),
(6, 'George Forsyth', 2, 'A', 'cramos', '2021-04-06 09:05:13', NULL, NULL),
(7, 'Keiko Fujimori', 2, 'A', 'cramos', '2021-04-06 09:05:22', NULL, NULL),
(8, 'Veronika Mendoza', 2, 'A', 'cramos', '2021-04-06 09:05:29', NULL, NULL),
(9, 'Yonhy Lescano', 3, 'A', 'cramos', '2021-04-06 09:06:21', NULL, NULL),
(10, 'George Forsyth', 3, 'A', 'cramos', '2021-04-06 09:06:29', NULL, NULL),
(11, 'Keiko Fujimori', 3, 'A', 'cramos', '2021-04-06 09:06:36', NULL, NULL),
(12, 'Yonhy Lescano', 4, 'A', 'cramos', '2021-04-06 09:07:03', NULL, NULL),
(13, 'George Forsyth', 4, 'A', 'cramos', '2021-04-06 09:07:08', NULL, NULL),
(14, 'Yonhy Lescano', 5, 'A', 'cramos', '2021-04-07 20:04:51', NULL, NULL),
(15, 'George Forsyth', 5, 'A', 'cramos', '2021-04-07 20:05:10', NULL, NULL),
(16, 'Keiko Fujimori', 5, 'A', 'cramos', '2021-04-07 20:05:16', NULL, NULL),
(17, 'Veronika Mendoza', 5, 'A', 'cramos', '2021-04-07 20:20:18', NULL, NULL),
(18, 'Yonhy Lescano', 6, 'A', 'cramos', '2021-04-07 20:26:43', NULL, NULL),
(19, 'George Forsyth', 6, 'A', 'cramos', '2021-04-07 20:26:49', NULL, NULL),
(20, 'Yonhy Lescano', 7, 'A', 'cramos', '2021-04-07 20:27:44', NULL, NULL),
(21, 'George Forsyth', 7, 'A', 'cramos', '2021-04-07 20:27:53', NULL, NULL),
(22, 'Keiko Fujimori', 7, 'A', 'cramos', '2021-04-07 20:28:03', NULL, NULL),
(23, 'Veronika Mendoza', 7, 'A', 'cramos', '2021-04-07 20:28:10', NULL, NULL),
(24, 'Yonhy Lescano', 8, 'A', 'cramos', '2021-04-07 22:25:01', NULL, NULL),
(25, 'George Forsyth', 8, 'A', 'cramos', '2021-04-07 22:25:05', NULL, NULL),
(26, 'Keiko Fujimori', 8, 'A', 'cramos', '2021-04-07 22:25:13', NULL, NULL),
(27, 'Veronika Mendoza', 8, 'A', 'cramos', '2021-04-07 22:25:23', NULL, NULL),
(28, 'Yonhy Lescano', 9, 'A', 'cramos', '2021-04-07 22:28:05', NULL, NULL),
(29, 'George Forsyth', 9, 'A', 'cramos', '2021-04-07 22:28:15', NULL, NULL),
(30, 'Yonhy Lescano', 10, 'A', 'cramos', '2021-04-07 22:28:51', NULL, NULL),
(31, 'George Forsyth', 10, 'A', 'cramos', '2021-04-07 22:28:56', NULL, NULL),
(32, 'Keiko Fujimori', 10, 'A', 'cramos', '2021-04-07 22:29:00', NULL, NULL),
(33, 'Veronika Mendoza', 10, 'A', 'cramos', '2021-04-07 22:29:05', NULL, NULL),
(34, 'Rafael Aliaga', 10, 'A', 'cramos', '2021-04-07 22:29:24', NULL, NULL),
(35, 'Yonhy Lescano ', 11, 'A', 'cramos', '2021-04-07 23:48:35', NULL, NULL),
(36, 'George Forsyth ', 11, 'A', 'cramos', '2021-04-07 23:50:26', NULL, NULL),
(37, 'Keiko Fujimori 	', 11, 'A', 'cramos', '2021-04-07 23:50:42', NULL, NULL),
(38, 'Veronika Mendoza ', 12, 'A', 'cramos', '2021-04-07 23:51:20', NULL, NULL),
(39, 'George Forsyth ', 12, 'A', 'cramos', '2021-04-07 23:51:55', NULL, NULL),
(40, 'Keiko Fujimori ', 12, 'A', 'cramos', '2021-04-07 23:52:10', NULL, NULL),
(41, 'Yonhy Lescano ', 12, 'A', 'cramos', '2021-04-07 23:52:47', NULL, NULL),
(42, 'Yonhy Lescano ', 13, 'A', 'cramos', '2021-04-07 23:53:02', NULL, NULL),
(43, 'Veronika Mendoza ', 13, 'A', 'cramos', '2021-04-07 23:53:06', NULL, NULL),
(44, 'Keiko Fujimori ', 13, 'A', 'cramos', '2021-04-07 23:53:17', NULL, NULL),
(45, 'Keiko Fujimori ', 14, 'A', 'cramos', '2021-04-07 23:53:56', NULL, NULL),
(46, 'Yonhy Lescano ', 14, 'A', 'cramos', '2021-04-07 23:54:17', NULL, NULL),
(47, 'Veronika Mendoza ', 14, 'A', 'cramos', '2021-04-07 23:54:24', NULL, NULL),
(48, 'George Forsyth ', 14, 'A', 'cramos', '2021-04-07 23:54:44', NULL, NULL),
(49, 'Yonhy Lescano ', 15, 'A', 'cramos', '2021-04-07 23:55:36', NULL, NULL),
(50, 'George Forsyth ', 15, 'A', 'cramos', '2021-04-07 23:55:43', 'cramos', '2021-04-07 23:56:19'),
(51, 'Veronika Mendoza ', 15, 'A', 'cramos', '2021-04-07 23:57:48', NULL, NULL),
(52, 'JOHAN ESPINOZA', 16, 'A', 'cramos', '2021-04-08 13:45:38', 'cramos', '2021-04-09 14:33:07'),
(53, 'FERNANDO CALDERON', 16, 'A', 'cramos', '2021-04-08 13:45:52', NULL, NULL),
(55, 'JOSE VALDIVA', 16, 'A', 'cramos', '2021-04-08 13:47:52', 'cramos', '2021-04-08 13:48:04'),
(56, 'MARCO VILLAVICENCIO', 16, 'A', 'cramos', '2021-04-08 13:49:00', NULL, NULL),
(57, 'JOHAN ESPINOZA', 17, 'A', 'cramos', '2021-04-08 13:49:28', NULL, NULL),
(58, 'FERNANDO CALDERON', 17, 'A', 'cramos', '2021-04-08 13:49:36', NULL, NULL),
(59, 'JOSE VALDIVA', 17, 'A', 'cramos', '2021-04-08 13:49:44', NULL, NULL),
(60, 'MARCO VILLAVICENCIO', 17, 'A', 'cramos', '2021-04-08 13:49:50', NULL, NULL),
(61, 'JOHAN ESPINOZA', 20, 'A', 'cramos', '2021-04-08 14:38:44', NULL, NULL),
(62, 'FERNANDO CALDERON', 20, 'A', 'cramos', '2021-04-08 14:39:01', NULL, NULL),
(63, 'MARCO VILLAVICENCIO', 20, 'A', 'cramos', '2021-04-08 14:39:08', NULL, NULL),
(64, 'Johan Espinoza', 21, 'A', 'cramos', '2021-04-08 17:46:20', NULL, NULL),
(65, 'Fernando Calderon', 21, 'A', 'cramos', '2021-04-08 17:46:31', NULL, NULL),
(66, 'Jose Valdivia', 21, 'A', 'cramos', '2021-04-08 17:46:47', NULL, NULL),
(67, 'Marco Villavicencio', 21, 'A', 'cramos', '2021-04-08 17:47:02', 'cramos', '2021-04-08 17:49:19'),
(68, 'Johan Espinoza', 22, 'A', 'cramos', '2021-04-08 17:48:28', NULL, NULL),
(69, 'Fernando Calderon', 22, 'A', 'cramos', '2021-04-08 17:48:34', NULL, NULL),
(70, 'Jose Valdivia', 22, 'A', 'cramos', '2021-04-08 17:48:45', NULL, NULL),
(71, 'Marco Villavicencio', 22, 'A', 'cramos', '2021-04-08 17:48:59', NULL, NULL),
(72, 'JOHAN ESPINOZA', 18, 'A', 'cramos', '2021-04-09 15:13:34', NULL, NULL),
(73, 'FERNANDO CALDERON', 18, 'A', 'cramos', '2021-04-09 15:13:47', NULL, NULL),
(74, 'Fernando Calderon', 19, 'A', 'cramos', '2021-04-14 01:27:51', NULL, NULL),
(75, 'Johan Espinoza', 19, 'A', 'cramos', '2021-04-14 01:27:56', NULL, NULL),
(76, 'JOHAN ESPINOZA', 23, 'A', 'cramos', '2021-04-15 12:07:57', NULL, NULL),
(77, 'FERNANDO CALDERON', 23, 'A', 'cramos', '2021-04-15 12:08:05', NULL, NULL),
(78, 'MARCO VILLAVICENCIO', 23, 'A', 'cramos', '2021-04-15 12:08:11', NULL, NULL),
(79, 'Fernando Perez', 23, 'A', 'cramos', '2021-04-15 12:08:20', NULL, NULL),
(80, 'JOHAN ESPINOZA', 24, 'A', 'cramos', '2021-04-17 09:05:02', NULL, NULL),
(81, 'FERNANDO CALDERON', 24, 'A', 'cramos', '2021-04-17 09:05:08', NULL, NULL),
(82, 'MARCO VILLAVICENCIO', 24, 'A', 'cramos', '2021-04-17 09:05:13', NULL, NULL),
(83, 'JOSE VALDIVA', 24, 'A', 'cramos', '2021-04-17 09:05:17', NULL, NULL),
(84, 'JOHAN ESPINOZA', 26, 'A', 'cramos', '2021-04-20 11:21:45', NULL, NULL),
(85, 'FERNANDO CALDERON', 26, 'A', 'cramos', '2021-04-20 11:21:50', NULL, NULL),
(86, 'JOSE VALDIVA', 26, 'A', 'cramos', '2021-04-20 11:21:55', NULL, NULL),
(87, 'MARCO VILLAVICENCIO', 26, 'A', 'cramos', '2021-04-20 11:22:05', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parametros`
--

CREATE TABLE `parametros` (
  `id` int(10) UNSIGNED NOT NULL,
  `modulo` varchar(45) NOT NULL,
  `variable` varchar(45) NOT NULL,
  `valor` varchar(45) NOT NULL,
  `creador` varchar(45) DEFAULT NULL,
  `creado` datetime DEFAULT NULL,
  `modificador` varchar(45) DEFAULT NULL,
  `modificado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `parametros`
--

INSERT INTO `parametros` (`id`, `modulo`, `variable`, `valor`, `creador`, `creado`, `modificador`, `modificado`) VALUES
(3, 'migracion_productos', 'sizePag', '500', NULL, NULL, NULL, NULL),
(4, 'migracion_productos', 'page', '5', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `apellidos` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `name`, `apellidos`) VALUES
(1, 'Cesar', 'Ramos'),
(2, 'Vanessa', 'Medrano Pulido'),
(3, 'Lucia del Rosario', 'Diaz Mensoza'),
(5, 'Silvia', 'Medrano Pulido');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_bin NOT NULL,
  `encuesta_id` int(11) NOT NULL,
  `nro_respuesta` int(2) NOT NULL DEFAULT 1,
  `estado` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'A',
  `creador` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `creado` datetime DEFAULT NULL,
  `modificador` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `modificado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `nombre`, `encuesta_id`, `nro_respuesta`, `estado`, `creador`, `creado`, `modificador`, `modificado`) VALUES
(1, '¿Elección de Presidente?', 1, 1, 'A', 'cramos', '2021-04-05 20:58:01', NULL, NULL),
(2, '¿Elección de Secretario?', 1, 1, 'A', 'cramos', '2021-04-05 22:34:01', 'cramos', '2021-04-05 23:18:16'),
(3, '¿Elección de Tesorero?', 1, 1, 'A', 'cramos', '2021-04-05 22:35:18', 'cramos', '2021-04-05 23:18:20'),
(4, '¿Elección de Vocero?', 1, 1, 'A', 'cramos', '2021-04-05 22:39:05', 'cramos', '2021-04-05 23:19:20'),
(5, '¿Elección de Gerente?', 2, 1, 'A', 'cramos', '2021-04-07 19:55:32', 'cramos', '2021-04-07 21:47:50'),
(6, '¿Elección de Secretario?', 2, 1, 'A', 'cramos', '2021-04-07 20:26:27', NULL, NULL),
(7, '¿Elección de Vocero?', 2, 2, 'A', 'cramos', '2021-04-07 20:27:26', NULL, NULL),
(8, '¿Elección de Presidente?', 4, 1, 'A', 'cramos', '2021-04-07 22:24:09', NULL, NULL),
(9, '¿Elección de Secretario?', 4, 1, 'A', 'cramos', '2021-04-07 22:24:17', 'cramos', '2021-04-07 22:27:38'),
(10, '¿Elección de Voceros?', 4, 2, 'A', 'cramos', '2021-04-07 22:24:28', NULL, NULL),
(11, '¿Elección de Presidente? ', 5, 1, 'A', 'cramos', '2021-04-07 23:43:36', NULL, NULL),
(12, '¿Elección de Secretario? ', 5, 1, 'A', 'cramos', '2021-04-07 23:43:49', NULL, NULL),
(13, '¿Elección de Tesorero? ', 5, 1, 'A', 'cramos', '2021-04-07 23:44:00', NULL, NULL),
(14, '¿Elección de Vocero? ', 5, 1, 'A', 'cramos', '2021-04-07 23:44:22', NULL, NULL),
(15, '¿Elección de Gerente? ', 5, 1, 'A', 'cramos', '2021-04-07 23:45:03', NULL, NULL),
(16, 'DELEGADOS POR 1 AÑOS', 7, 1, 'A', 'cramos', '2021-04-08 13:44:23', 'cramos', '2021-04-09 15:46:55'),
(17, 'DELEGADOS POR 2 AÑOS', 7, 1, 'A', 'cramos', '2021-04-08 13:44:34', 'cramos', '2021-04-09 15:45:16'),
(18, 'DELEGADOS POR 3 AÑOS', 7, 1, 'A', 'cramos', '2021-04-08 13:44:43', 'cramos', '2021-04-09 15:45:39'),
(19, 'CONSEJO DE ADMINISTRACION', 8, 2, 'A', 'cramos', '2021-04-08 14:37:48', NULL, NULL),
(20, 'CONSEJO DE VIGILANCIA', 8, 2, 'A', 'cramos', '2021-04-08 14:37:54', 'cramos', '2021-04-08 14:38:07'),
(21, '¿Delegados por 2 años? ', 6, 1, 'A', 'cramos', '2021-04-08 17:45:58', NULL, NULL),
(22, '¿Delegados por 3 años? ', 6, 1, 'A', 'cramos', '2021-04-08 17:48:14', NULL, NULL),
(23, 'DELEGADOS POR 1 AÑO', 9, 1, 'D', 'cramos', '2021-04-15 12:00:53', NULL, NULL),
(24, 'DELEGADOS POR 2 AÑOS', 10, 1, 'A', 'cramos', '2021-04-17 08:56:36', 'cramos', '2021-04-17 09:04:50'),
(25, 'DELEGADOS POR 3 AÑOS', 10, 1, 'A', 'cramos', '2021-04-17 08:56:45', NULL, NULL),
(26, 'DELEGADOS POR 2 AÑOS', 11, 1, 'D', 'cramos', '2021-04-20 11:21:09', 'cramos', '2021-04-20 11:21:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas`
--

CREATE TABLE `respuestas` (
  `id` int(11) NOT NULL,
  `opcion_id` int(11) NOT NULL,
  `encuestado_id` int(11) NOT NULL,
  `estado` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'A',
  `creador` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `creado` datetime DEFAULT NULL,
  `modificador` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `modificado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `respuestas`
--

INSERT INTO `respuestas` (`id`, `opcion_id`, `encuestado_id`, `estado`, `creador`, `creado`, `modificador`, `modificado`) VALUES
(1, 1, 1, 'A', 'cramos', '2021-04-07 03:48:04', NULL, NULL),
(2, 6, 1, 'A', 'cramos', '2021-04-07 03:48:04', NULL, NULL),
(3, 11, 1, 'A', 'cramos', '2021-04-07 03:48:04', NULL, NULL),
(4, 12, 1, 'A', 'cramos', '2021-04-07 03:48:04', NULL, NULL),
(5, 3, 2, 'A', 'cramos', '2021-04-07 05:26:47', NULL, NULL),
(6, 6, 2, 'A', 'cramos', '2021-04-07 05:26:47', NULL, NULL),
(7, 11, 2, 'A', 'cramos', '2021-04-07 05:26:47', NULL, NULL),
(8, 13, 2, 'A', 'cramos', '2021-04-07 05:26:47', NULL, NULL),
(9, 24, 3, 'A', 'cramos', '2021-04-07 22:33:54', NULL, NULL),
(10, 29, 3, 'A', 'cramos', '2021-04-07 22:33:54', NULL, NULL),
(11, 32, 3, 'A', 'cramos', '2021-04-07 22:33:54', NULL, NULL),
(12, 35, 4, 'A', 'cramos', '2021-04-08 00:13:21', NULL, NULL),
(13, 38, 4, 'A', 'cramos', '2021-04-08 00:13:21', NULL, NULL),
(14, 42, 4, 'A', 'cramos', '2021-04-08 00:13:21', NULL, NULL),
(15, 45, 4, 'A', 'cramos', '2021-04-08 00:13:21', NULL, NULL),
(16, 50, 4, 'A', 'cramos', '2021-04-08 00:13:21', NULL, NULL),
(17, 36, 5, 'A', 'cramos', '2021-04-08 00:13:50', NULL, NULL),
(18, 41, 5, 'A', 'cramos', '2021-04-08 00:13:50', NULL, NULL),
(19, 44, 5, 'A', 'cramos', '2021-04-08 00:13:50', NULL, NULL),
(20, 46, 5, 'A', 'cramos', '2021-04-08 00:13:50', NULL, NULL),
(21, 50, 5, 'A', 'cramos', '2021-04-08 00:13:50', NULL, NULL),
(22, 37, 6, 'A', 'cramos', '2021-04-08 00:14:07', NULL, NULL),
(23, 41, 6, 'A', 'cramos', '2021-04-08 00:14:07', NULL, NULL),
(24, 44, 6, 'A', 'cramos', '2021-04-08 00:14:07', NULL, NULL),
(25, 48, 6, 'A', 'cramos', '2021-04-08 00:14:07', NULL, NULL),
(26, 49, 6, 'A', 'cramos', '2021-04-08 00:14:07', NULL, NULL),
(27, 36, 7, 'A', 'cramos', '2021-04-08 00:14:24', NULL, NULL),
(28, 39, 7, 'A', 'cramos', '2021-04-08 00:14:24', NULL, NULL),
(29, 43, 7, 'A', 'cramos', '2021-04-08 00:14:24', NULL, NULL),
(30, 45, 7, 'A', 'cramos', '2021-04-08 00:14:24', NULL, NULL),
(31, 50, 7, 'A', 'cramos', '2021-04-08 00:14:24', NULL, NULL),
(32, 37, 8, 'A', 'cramos', '2021-04-08 00:14:41', NULL, NULL),
(33, 40, 8, 'A', 'cramos', '2021-04-08 00:14:41', NULL, NULL),
(34, 43, 8, 'A', 'cramos', '2021-04-08 00:14:41', NULL, NULL),
(35, 47, 8, 'A', 'cramos', '2021-04-08 00:14:41', NULL, NULL),
(36, 49, 8, 'A', 'cramos', '2021-04-08 00:14:41', NULL, NULL),
(37, 37, 9, 'A', 'cramos', '2021-04-08 00:15:05', NULL, NULL),
(38, 40, 9, 'A', 'cramos', '2021-04-08 00:15:05', NULL, NULL),
(39, 42, 9, 'A', 'cramos', '2021-04-08 00:15:05', NULL, NULL),
(40, 46, 9, 'A', 'cramos', '2021-04-08 00:15:05', NULL, NULL),
(41, 51, 9, 'A', 'cramos', '2021-04-08 00:15:05', NULL, NULL),
(42, 36, 10, 'A', 'cramos', '2021-04-08 00:15:33', NULL, NULL),
(43, 38, 10, 'A', 'cramos', '2021-04-08 00:15:33', NULL, NULL),
(44, 42, 10, 'A', 'cramos', '2021-04-08 00:15:33', NULL, NULL),
(45, 47, 10, 'A', 'cramos', '2021-04-08 00:15:33', NULL, NULL),
(46, 50, 10, 'A', 'cramos', '2021-04-08 00:15:33', NULL, NULL),
(52, 35, 13, 'A', 'cramos', '2021-04-08 00:16:20', NULL, NULL),
(53, 39, 13, 'A', 'cramos', '2021-04-08 00:16:20', NULL, NULL),
(54, 43, 13, 'A', 'cramos', '2021-04-08 00:16:20', NULL, NULL),
(55, 45, 13, 'A', 'cramos', '2021-04-08 00:16:20', NULL, NULL),
(56, 50, 13, 'A', 'cramos', '2021-04-08 00:16:20', NULL, NULL),
(57, 65, 14, 'A', 'cramos', '2021-04-08 17:50:27', NULL, NULL),
(58, 71, 14, 'A', 'cramos', '2021-04-08 17:50:27', NULL, NULL),
(59, 64, 15, 'A', 'cramos', '2021-04-08 17:50:49', NULL, NULL),
(60, 69, 15, 'A', 'cramos', '2021-04-08 17:50:49', NULL, NULL),
(61, 66, 16, 'A', 'cramos', '2021-04-08 17:51:07', NULL, NULL),
(62, 68, 16, 'A', 'cramos', '2021-04-08 17:51:07', NULL, NULL),
(63, 67, 17, 'A', 'cramos', '2021-04-08 17:51:22', NULL, NULL),
(64, 69, 17, 'A', 'cramos', '2021-04-08 17:51:22', NULL, NULL),
(65, 67, 18, 'A', 'cramos', '2021-04-08 17:51:52', NULL, NULL),
(66, 68, 18, 'A', 'cramos', '2021-04-08 17:51:52', NULL, NULL),
(67, 64, 19, 'A', 'cramos', '2021-04-08 17:52:06', NULL, NULL),
(68, 71, 19, 'A', 'cramos', '2021-04-08 17:52:06', NULL, NULL),
(69, 65, 20, 'A', 'cramos', '2021-04-08 17:52:24', NULL, NULL),
(70, 71, 20, 'A', 'cramos', '2021-04-08 17:52:24', NULL, NULL),
(71, 66, 21, 'A', 'cramos', '2021-04-08 17:52:39', NULL, NULL),
(72, 68, 21, 'A', 'cramos', '2021-04-08 17:52:39', NULL, NULL),
(73, 67, 22, 'A', 'cramos', '2021-04-08 17:52:53', NULL, NULL),
(74, 70, 22, 'A', 'cramos', '2021-04-08 17:52:53', NULL, NULL),
(75, 65, 23, 'A', 'cramos', '2021-04-08 17:53:06', NULL, NULL),
(76, 68, 23, 'A', 'cramos', '2021-04-08 17:53:06', NULL, NULL),
(77, 52, 29, 'A', 'cramos', '2021-04-09 15:17:57', NULL, NULL),
(78, 58, 29, 'A', 'cramos', '2021-04-09 15:17:57', NULL, NULL),
(79, 73, 29, 'A', 'cramos', '2021-04-09 15:17:57', NULL, NULL),
(80, 52, 32, 'A', 'cramos', '2021-04-09 15:31:10', NULL, NULL),
(81, 57, 32, 'A', 'cramos', '2021-04-09 15:31:10', NULL, NULL),
(82, 72, 32, 'A', 'cramos', '2021-04-09 15:31:10', NULL, NULL),
(83, 53, 26, 'A', NULL, '2021-04-09 15:52:30', NULL, NULL),
(84, 60, 26, 'A', NULL, '2021-04-09 15:52:30', NULL, NULL),
(85, 72, 26, 'A', NULL, '2021-04-09 15:52:30', NULL, NULL),
(89, 55, 24, 'A', NULL, '2021-04-09 16:01:57', NULL, NULL),
(90, 60, 24, 'A', NULL, '2021-04-09 16:01:57', NULL, NULL),
(91, 73, 24, 'A', NULL, '2021-04-09 16:01:57', NULL, NULL),
(92, 56, 25, 'A', NULL, '2021-04-09 16:02:08', NULL, NULL),
(93, 60, 25, 'A', NULL, '2021-04-09 16:02:08', NULL, NULL),
(94, 72, 25, 'A', NULL, '2021-04-09 16:02:08', NULL, NULL),
(95, 55, 24, 'A', NULL, '2021-04-09 16:03:17', NULL, NULL),
(96, 58, 24, 'A', NULL, '2021-04-09 16:03:17', NULL, NULL),
(97, 73, 24, 'A', NULL, '2021-04-09 16:03:17', NULL, NULL),
(98, 52, 24, 'A', NULL, '2021-04-09 16:03:37', NULL, NULL),
(99, 58, 24, 'A', NULL, '2021-04-09 16:03:37', NULL, NULL),
(100, 73, 24, 'A', NULL, '2021-04-09 16:03:37', NULL, NULL),
(101, 53, 24, 'A', NULL, '2021-04-09 16:03:53', NULL, NULL),
(102, 57, 24, 'A', NULL, '2021-04-09 16:03:53', NULL, NULL),
(103, 73, 24, 'A', NULL, '2021-04-09 16:03:53', NULL, NULL),
(107, 55, 26, 'A', NULL, '2021-04-09 16:05:18', NULL, NULL),
(108, 58, 26, 'A', NULL, '2021-04-09 16:05:18', NULL, NULL),
(109, 72, 26, 'A', NULL, '2021-04-09 16:05:18', NULL, NULL),
(111, 78, 35, 'A', NULL, '2021-04-15 12:09:16', NULL, NULL),
(112, 75, 33, 'A', 'cramos', '2021-04-16 12:23:50', NULL, NULL),
(113, 62, 33, 'A', 'cramos', '2021-04-16 12:23:50', NULL, NULL),
(114, 75, 33, 'A', 'cramos', '2021-04-16 16:34:31', NULL, NULL),
(115, 62, 33, 'A', 'cramos', '2021-04-16 16:34:31', NULL, NULL),
(116, 82, 38, 'A', NULL, '2021-04-17 09:07:02', NULL, NULL),
(117, 36, 12, 'A', NULL, '2021-04-19 08:43:21', NULL, NULL),
(118, 39, 12, 'A', NULL, '2021-04-19 08:43:21', NULL, NULL),
(119, 43, 12, 'A', NULL, '2021-04-19 08:43:21', NULL, NULL),
(120, 46, 12, 'A', NULL, '2021-04-19 08:43:21', NULL, NULL),
(121, 50, 12, 'A', NULL, '2021-04-19 08:43:21', NULL, NULL),
(122, 87, 42, 'A', NULL, '2021-04-21 10:32:51', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nombres` varchar(45) DEFAULT NULL,
  `app` varchar(45) DEFAULT NULL,
  `apm` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` char(40) NOT NULL,
  `group_id` int(11) NOT NULL,
  `estado` varchar(1) NOT NULL DEFAULT 'A',
  `creador` varchar(45) DEFAULT NULL,
  `creado` datetime DEFAULT NULL,
  `modificador` varchar(45) DEFAULT NULL,
  `modificado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `nombres`, `app`, `apm`, `correo`, `username`, `password`, `group_id`, `estado`, `creador`, `creado`, `modificador`, `modificado`) VALUES
(1, NULL, NULL, NULL, NULL, 'cramos', '22c2b57f5874e00d79a0fdc49677aee7cb00272b', 1, 'A', 'cramos', '2017-04-26 01:24:19', '', NULL),
(2, NULL, NULL, NULL, NULL, 'joselo', 'bf6a2efc75b87407bbd2d59cd620f9c4948ce1c9', 2, 'A', 'cramos', '2017-04-26 01:26:18', '', '2017-04-26 01:26:20'),
(3, NULL, NULL, NULL, NULL, 'lucia', 'bf6a2efc75b87407bbd2d59cd620f9c4948ce1c9', 3, 'A', 'cramos', '2017-04-26 01:26:43', '', '2017-04-26 01:26:45'),
(4, NULL, NULL, NULL, NULL, 'paco', 'bf6a2efc75b87407bbd2d59cd620f9c4948ce1c9', 4, 'A', '', NULL, '', NULL),
(5, 'Johan', '', '', '', 'johanesp', '8ed787c92ff18d74e2391f173f7b085456ef221d', 5, 'A', '', '2021-04-05 19:15:20', '', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acos`
--
ALTER TABLE `acos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acos_lft_rght` (`lft`,`rght`),
  ADD KEY `idx_acos_alias` (`alias`);

--
-- Indices de la tabla `aros`
--
ALTER TABLE `aros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aros_lft_rght` (`lft`,`rght`),
  ADD KEY `idx_aros_alias` (`alias`);

--
-- Indices de la tabla `aros_acos`
--
ALTER TABLE `aros_acos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ARO_ACO_KEY` (`aro_id`,`aco_id`),
  ADD KEY `idx_aco_id` (`aco_id`);

--
-- Indices de la tabla `cake_sessions`
--
ALTER TABLE `cake_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `encuestados`
--
ALTER TABLE `encuestados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_encuestados_encuestas1_idx` (`encuesta_id`);

--
-- Indices de la tabla `encuestas`
--
ALTER TABLE `encuestas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_menus_acos1_idx` (`aco_id`),
  ADD KEY `fk_menus_arod1_idx` (`aro_id`) USING BTREE;

--
-- Indices de la tabla `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `opciones`
--
ALTER TABLE `opciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_opciones_preguntas1_idx` (`pregunta_id`);

--
-- Indices de la tabla `parametros`
--
ALTER TABLE `parametros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_preguntas_encuestas1_idx` (`encuesta_id`);

--
-- Indices de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_respuestas_opciones1_idx` (`opcion_id`),
  ADD KEY `fk_respuestas_encuestados1_idx` (`encuestado_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `fk_users_group1_idx` (`group_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acos`
--
ALTER TABLE `acos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT de la tabla `aros`
--
ALTER TABLE `aros`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `aros_acos`
--
ALTER TABLE `aros_acos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `encuestados`
--
ALTER TABLE `encuestados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `encuestas`
--
ALTER TABLE `encuestas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `opciones`
--
ALTER TABLE `opciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT de la tabla `parametros`
--
ALTER TABLE `parametros`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `encuestados`
--
ALTER TABLE `encuestados`
  ADD CONSTRAINT `fk_encuestados_encuestas1` FOREIGN KEY (`encuesta_id`) REFERENCES `encuestas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `fk_menus_acos1` FOREIGN KEY (`aco_id`) REFERENCES `acos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_menus_aros1` FOREIGN KEY (`aro_id`) REFERENCES `aros` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `opciones`
--
ALTER TABLE `opciones`
  ADD CONSTRAINT `fk_opciones_preguntas1` FOREIGN KEY (`pregunta_id`) REFERENCES `preguntas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD CONSTRAINT `fk_preguntas_encuestas1` FOREIGN KEY (`encuesta_id`) REFERENCES `encuestas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD CONSTRAINT `fk_respuestas_encuestados1` FOREIGN KEY (`encuestado_id`) REFERENCES `encuestados` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_respuestas_opciones1` FOREIGN KEY (`opcion_id`) REFERENCES `opciones` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
