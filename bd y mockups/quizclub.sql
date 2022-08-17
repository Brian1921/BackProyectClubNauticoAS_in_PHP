-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-08-2022 a las 23:18:04
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `quizclub`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `amarre`
--

CREATE TABLE `amarre` (
  `id_amarre` int(6) NOT NULL,
  `tamaño_amarre` varchar(100) NOT NULL,
  `cuota_amarre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `amarre`
--

INSERT INTO `amarre` (`id_amarre`, `tamaño_amarre`, `cuota_amarre`) VALUES
(1, '100 metros', '40000'),
(2, '50 metros', '30000'),
(3, '50 metros', '30000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `barco`
--

CREATE TABLE `barco` (
  `id_barco` int(6) NOT NULL,
  `nom_barco` varchar(100) NOT NULL,
  `id_socio` int(6) NOT NULL,
  `id_amarre` int(6) NOT NULL,
  `id_estado_barco` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `barco`
--

INSERT INTO `barco` (`id_barco`, `nom_barco`, `id_socio`, `id_amarre`, `id_estado_barco`) VALUES
(1012, 'El Capi', 1234, 1, 1),
(1013, 'Juanchis', 1234, 1, 1),
(1112, 'Sardi', 5632, 2, 1),
(1210, 'Titanic', 1652, 3, 1),
(1312, 'Aloy', 1235, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_barco`
--

CREATE TABLE `estado_barco` (
  `id_estado_barco` int(6) NOT NULL,
  `estado` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estado_barco`
--

INSERT INTO `estado_barco` (`id_estado_barco`, `estado`) VALUES
(1, 'Activo'),
(2, 'Inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_patron`
--

CREATE TABLE `estado_patron` (
  `id_estado_patron` int(6) NOT NULL,
  `estado` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estado_patron`
--

INSERT INTO `estado_patron` (`id_estado_patron`, `estado`) VALUES
(1, 'Activo'),
(2, 'Inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_socio`
--

CREATE TABLE `estado_socio` (
  `id_estado_socio` int(6) NOT NULL,
  `estado` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estado_socio`
--

INSERT INTO `estado_socio` (`id_estado_socio`, `estado`) VALUES
(1, 'Activo'),
(2, 'Inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_usuario`
--

CREATE TABLE `estado_usuario` (
  `id_estado_usuario` int(6) NOT NULL,
  `estado` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estado_usuario`
--

INSERT INTO `estado_usuario` (`id_estado_usuario`, `estado`) VALUES
(1, 'Activo'),
(2, 'Inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_viaje`
--

CREATE TABLE `estado_viaje` (
  `id_estado_viaje` int(6) NOT NULL,
  `estado` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estado_viaje`
--

INSERT INTO `estado_viaje` (`id_estado_viaje`, `estado`) VALUES
(1, 'Activo'),
(2, 'Inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `patrones`
--

CREATE TABLE `patrones` (
  `id_patron` int(6) NOT NULL,
  `nom_patron` varchar(100) NOT NULL,
  `ape_patron` varchar(100) NOT NULL,
  `tel_patron` varchar(20) NOT NULL,
  `em_patron` varchar(100) NOT NULL,
  `id_estado_patron` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `patrones`
--

INSERT INTO `patrones` (`id_patron`, `nom_patron`, `ape_patron`, `tel_patron`, `em_patron`, `id_estado_patron`) VALUES
(901, 'William', 'Rincon', '3213955057', 'william12@gmail.com', 1),
(1234, 'Brian', 'Pineda', '3133605070', 'brapinedao@correo.udistrital.edu.co', 1),
(1458, 'Jhonatan', 'Hernandez', '3212548757', 'jhonatan123@gmail.com', 1),
(4321, 'Laura', 'Rodriguez', '3512456215', 'laura123@gmail.com', 2),
(5214, 'Anuel', 'AA', '325662214', 'brrr@gmail.com', 2),
(6541, 'Maria', 'Perez C', '3133605070', 'maria@gmail.com', 1),
(8787, 'Camilo', 'Cruz', '3029102', 'camicruz@gmail.com', 1),
(9999, 'Valentina', 'Lopez', '3287983748', 'valelopez@gmail.com', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `pregunta` varchar(500) NOT NULL,
  `id_pregunta` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`pregunta`, `id_pregunta`) VALUES
('¿Cuál fue tu primer colegio?', 1),
('¿Cómo es el nombre de tu abuela?', 2),
('¿Cómo es el nombre de tu mascota?', 3),
('¿En qué ciudad se conocieron tus padres?', 4),
('¿Cuál era tu apodo de pequeño?', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id_rol` int(6) NOT NULL,
  `descrip_rol` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_rol`, `descrip_rol`) VALUES
(1, 'ADMINISTRADOR'),
(2, 'SOCIO'),
(3, 'PATRON');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socios`
--

CREATE TABLE `socios` (
  `id_socio` int(6) NOT NULL,
  `nom_socio` varchar(100) NOT NULL,
  `ape_socio` varchar(100) NOT NULL,
  `tel_socio` varchar(20) NOT NULL,
  `em_socio` varchar(100) NOT NULL,
  `id_estado_socio` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `socios`
--

INSERT INTO `socios` (`id_socio`, `nom_socio`, `ape_socio`, `tel_socio`, `em_socio`, `id_estado_socio`) VALUES
(1, 'Alberto', 'Posada', '300002155', 'albertisposa@gmail.com', 1),
(1234, 'Brian A', 'Pineda O', '3213955055', 'brapinedao@correo.udistrital.edu.com', 1),
(1235, 'Alejandra', 'Cruz', '3152645752', 'maleja123@gmail.com', 1),
(1652, 'Luis', 'Tellez', '3115952651', 'luis@gmail.com', 1),
(4554, 'Alex', 'Pardo', '325556502', 'alex@gmail.com', 1),
(5621, 'Matias', 'Pardo', '320001151', 'mati@gmail.com', 2),
(5632, 'Natalia', 'Ramirez', '300000000', 'luisa1@gmail.com', 2),
(5762, 'Mauricio', 'Giraldo', '324878393', 'maugi@gmail.com', 2),
(5763, 'Jersson', 'Savedraaa', '3012557856', 'brianpineda1908@gmail.com', 2),
(8874, 'Alejandra', 'Melo', '32550112', 'aleja1@gmail.com', 2),
(9856, 'Bad', 'Bunny', '325665522', 'pr@gmail.com', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_u` int(6) NOT NULL,
  `usuario` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `id_rol` int(6) NOT NULL,
  `respuesta` varchar(200) NOT NULL,
  `id_estado_usuario` int(6) NOT NULL,
  `id_pregunta` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_u`, `usuario`, `password`, `id_rol`, `respuesta`, `id_estado_usuario`, `id_pregunta`) VALUES
(1, 'alberto', 'Albert1223', 2, 'Maria', 1, 1),
(901, 'williamr', 'williamr', 2, 'Colegio', 1, 1),
(1111, 'admin', 'admin1234', 1, 'lara bonilla', 1, 1),
(1234, 'brian19', 'brian19', 2, 'José María Córdoba', 1, 1),
(1235, 'malejiji', 'Aloy', 2, 'Aloy', 1, 3),
(4554, 'alex', 'Alex123', 2, 'Maria', 1, 1),
(5214, 'AnuelAA', 'Yailin123', 2, 'Bebesita', 2, 1),
(5621, 'matias', 'Matias123', 2, 'matias', 2, 1),
(5762, 'mauro10', 'mauro11', 2, 'porfirio', 2, 1),
(5763, 'jersson123', 'jersson123', 2, 'Colegio', 2, 1),
(8787, 'camilo45', 'camilo45', 3, 'María', 1, 2),
(8874, 'ferxxito', 'mojandoasientos', 2, 'Feid', 1, 1),
(9856, 'badbunny', 'badbunny123', 2, 'puertorico', 2, 1),
(9999, 'valelop', 'valelop', 3, 'Cualquiera', 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `viajes`
--

CREATE TABLE `viajes` (
  `id_viaje` int(6) NOT NULL,
  `fecha_salida` datetime NOT NULL,
  `fecha_llegada` datetime NOT NULL,
  `destino` varchar(100) NOT NULL,
  `id_barco` int(6) NOT NULL,
  `id_patron` int(6) NOT NULL,
  `id_estado_viaje` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `viajes`
--

INSERT INTO `viajes` (`id_viaje`, `fecha_salida`, `fecha_llegada`, `destino`, `id_barco`, `id_patron`, `id_estado_viaje`) VALUES
(8, '2022-04-08 18:29:00', '2022-04-09 18:29:00', 'Filipinas', 1112, 6541, 2),
(15, '2022-03-01 03:20:00', '2022-03-04 00:00:00', 'Miami', 1012, 6541, 1),
(17, '2022-03-02 11:42:24', '2022-03-04 17:42:24', 'Bahamas', 1112, 1458, 1),
(18, '2022-02-23 08:20:38', '2022-03-01 11:37:38', 'Florida', 1012, 1234, 1),
(20, '2022-02-01 11:44:56', '2022-03-01 11:44:56', 'Acapulco', 1012, 1234, 1),
(30, '2022-03-16 06:00:00', '2022-03-20 22:28:31', 'spain', 1013, 4321, 1),
(78, '2022-04-15 17:38:00', '2022-04-18 17:38:00', 'Angola', 1312, 8787, 2),
(89, '2022-04-09 17:39:00', '2022-04-17 17:39:00', 'Bahamas', 1312, 6541, 1),
(90, '2022-03-10 16:45:00', '2022-03-15 13:33:50', 'Bogota', 1012, 1234, 1),
(906, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Jamaica', 1312, 9999, 1),
(4565, '2022-05-12 22:27:00', '2022-05-13 22:28:49', 'Afganistán', 1012, 1234, 1),
(5555, '2022-07-23 12:18:00', '2022-07-31 12:18:00', 'Angola', 1112, 1458, 1),
(5556, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Spain', 1012, 4321, 1),
(6457, '2022-03-19 13:30:00', '2022-03-28 20:26:34', 'Santa Marta', 1210, 4321, 1),
(6544, '2022-03-18 00:12:00', '2022-03-21 00:16:06', 'Malvinas', 1312, 9999, 1),
(7887, '2022-07-24 12:21:00', '2022-07-29 12:21:00', 'Afganistán', 1012, 6541, 1),
(8729, '2022-04-01 10:00:00', '2022-04-07 18:36:54', 'Bogotá', 1112, 9999, 1),
(8789, '2022-03-19 11:00:00', '2022-03-20 23:06:13', 'tu corazon', 1312, 9999, 1),
(8988, '2022-07-25 12:22:00', '2022-08-05 12:22:00', 'Yemen', 1013, 9999, 1),
(9632, '2022-08-03 15:17:00', '2022-08-16 15:17:00', 'Angola', 1012, 1458, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `amarre`
--
ALTER TABLE `amarre`
  ADD PRIMARY KEY (`id_amarre`);

--
-- Indices de la tabla `barco`
--
ALTER TABLE `barco`
  ADD PRIMARY KEY (`id_barco`),
  ADD KEY `id_socio` (`id_socio`),
  ADD KEY `id_amarre` (`id_amarre`),
  ADD KEY `id_estado_barco` (`id_estado_barco`);

--
-- Indices de la tabla `estado_barco`
--
ALTER TABLE `estado_barco`
  ADD PRIMARY KEY (`id_estado_barco`);

--
-- Indices de la tabla `estado_patron`
--
ALTER TABLE `estado_patron`
  ADD PRIMARY KEY (`id_estado_patron`);

--
-- Indices de la tabla `estado_socio`
--
ALTER TABLE `estado_socio`
  ADD PRIMARY KEY (`id_estado_socio`);

--
-- Indices de la tabla `estado_usuario`
--
ALTER TABLE `estado_usuario`
  ADD PRIMARY KEY (`id_estado_usuario`);

--
-- Indices de la tabla `estado_viaje`
--
ALTER TABLE `estado_viaje`
  ADD PRIMARY KEY (`id_estado_viaje`);

--
-- Indices de la tabla `patrones`
--
ALTER TABLE `patrones`
  ADD PRIMARY KEY (`id_patron`),
  ADD KEY `id_estado_patron` (`id_estado_patron`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id_pregunta`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `socios`
--
ALTER TABLE `socios`
  ADD PRIMARY KEY (`id_socio`),
  ADD KEY `id_estado_socio` (`id_estado_socio`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_u`),
  ADD UNIQUE KEY `usuario` (`usuario`),
  ADD UNIQUE KEY `usuario_2` (`usuario`),
  ADD KEY `id_rol` (`id_rol`),
  ADD KEY `id_estado_usuario` (`id_estado_usuario`),
  ADD KEY `id_pregunta` (`id_pregunta`) USING BTREE;

--
-- Indices de la tabla `viajes`
--
ALTER TABLE `viajes`
  ADD PRIMARY KEY (`id_viaje`),
  ADD KEY `id_patron` (`id_patron`),
  ADD KEY `id_barco` (`id_barco`),
  ADD KEY `id_estado_viaje` (`id_estado_viaje`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `barco`
--
ALTER TABLE `barco`
  ADD CONSTRAINT `barco_ibfk_1` FOREIGN KEY (`id_socio`) REFERENCES `socios` (`id_socio`),
  ADD CONSTRAINT `barco_ibfk_2` FOREIGN KEY (`id_amarre`) REFERENCES `amarre` (`id_amarre`),
  ADD CONSTRAINT `barco_ibfk_3` FOREIGN KEY (`id_estado_barco`) REFERENCES `estado_barco` (`id_estado_barco`);

--
-- Filtros para la tabla `patrones`
--
ALTER TABLE `patrones`
  ADD CONSTRAINT `patrones_ibfk_1` FOREIGN KEY (`id_estado_patron`) REFERENCES `estado_patron` (`id_estado_patron`);

--
-- Filtros para la tabla `socios`
--
ALTER TABLE `socios`
  ADD CONSTRAINT `socios_ibfk_1` FOREIGN KEY (`id_estado_socio`) REFERENCES `estado_socio` (`id_estado_socio`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`),
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`id_estado_usuario`) REFERENCES `estado_usuario` (`id_estado_usuario`),
  ADD CONSTRAINT `usuarios_ibfk_3` FOREIGN KEY (`id_pregunta`) REFERENCES `preguntas` (`id_pregunta`);

--
-- Filtros para la tabla `viajes`
--
ALTER TABLE `viajes`
  ADD CONSTRAINT `viajes_ibfk_1` FOREIGN KEY (`id_patron`) REFERENCES `patrones` (`id_patron`),
  ADD CONSTRAINT `viajes_ibfk_2` FOREIGN KEY (`id_barco`) REFERENCES `barco` (`id_barco`),
  ADD CONSTRAINT `viajes_ibfk_3` FOREIGN KEY (`id_estado_viaje`) REFERENCES `estado_viaje` (`id_estado_viaje`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
