-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-03-2025 a las 03:23:43
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `restaurante`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `cli_id` int(15) NOT NULL,
  `cli_nombre` varchar(60) DEFAULT NULL,
  `cli_apellidos` varchar(60) DEFAULT NULL,
  `cli_direccion` varchar(40) DEFAULT NULL,
  `cli_telefono` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comanda`
--

CREATE TABLE `comanda` (
  `com_id` int(11) NOT NULL,
  `mesa` int(2) DEFAULT NULL,
  `pla_id` int(11) DEFAULT NULL,
  `com_obs` varchar(60) NOT NULL,
  `est_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `est_id` int(11) NOT NULL,
  `est_descripcion` varchar(40) DEFAULT NULL,
  `tes_id` int(2) NOT NULL,
  `est_estado` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`est_id`, `est_descripcion`, `tes_id`, `est_estado`) VALUES
(1, 'En Preparación', 1, 'Activo'),
(2, 'Finalizada', 1, 'Activo'),
(3, 'Cancelada', 1, 'Activo'),
(4, 'Creado', 2, 'Activo'),
(5, 'Finalizado', 2, 'Activo'),
(6, 'Cancelado', 2, 'Activo'),
(7, 'Creado', 3, 'Activo'),
(8, 'Disponible', 3, 'Activo'),
(9, 'Inactivo', 3, 'Activo'),
(10, 'Agotado', 3, 'Activo'),
(11, 'Pendiente', 4, 'Activo'),
(12, 'Atendida', 4, 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `ped_id` int(11) NOT NULL,
  `ped_fecha` date DEFAULT NULL,
  `usu_id` int(11) DEFAULT NULL,
  `est_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_detalle`
--

CREATE TABLE `pedido_detalle` (
  `ped_det_id` int(11) NOT NULL,
  `ped_det_num_ped` int(11) DEFAULT NULL,
  `ped_det_cant` int(11) DEFAULT NULL,
  `ped_det_precio` float DEFAULT NULL,
  `ped_det_obser` varchar(40) DEFAULT NULL,
  `pla_id` int(11) DEFAULT NULL,
  `ped_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `perf_id` int(11) NOT NULL,
  `perf_descripcion` varchar(40) DEFAULT NULL,
  `perf_estado` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`perf_id`, `perf_descripcion`, `perf_estado`) VALUES
(1, 'Admin', 'Activo'),
(2, 'Auxiliar', 'Activo'),
(3, 'Cliente', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plato`
--

CREATE TABLE `plato` (
  `pla_id` int(11) NOT NULL,
  `pla_descripcion` varchar(40) DEFAULT NULL,
  `pla_precio` float DEFAULT NULL,
  `est_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pqrs`
--

CREATE TABLE `pqrs` (
  `pqrs_id` int(4) NOT NULL,
  `pqrs_fecha` date NOT NULL,
  `pqrs_descripcion` blob NOT NULL,
  `pqrs_correo` varchar(60) NOT NULL,
  `pqrs_telefono` varchar(20) NOT NULL,
  `tpqrs_id` int(2) NOT NULL,
  `est_id` int(2) NOT NULL,
  `pqrs_respuesta` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `pqrs`
--

INSERT INTO `pqrs` (`pqrs_id`, `pqrs_fecha`, `pqrs_descripcion`, `pqrs_correo`, `pqrs_telefono`, `tpqrs_id`, `est_id`, `pqrs_respuesta`) VALUES
(1, '2024-08-31', 0x45737461206573206c6120746572636572612070727565626120646520696e74656e7461722067756172646172206c612062617365206465206461746f73203a2775, 'prueba@correo.com', '3183944754', 3, 4, NULL),
(2, '2024-09-01', 0x4573746520657320656c20746578746f207961206564697461646f2c206c6120736567756e64612076657273696f6e2e, 'the99diego@gmail.com', '5547282', 2, 4, NULL),
(3, '2024-09-01', 0x56616d6f732061206c6c656e6172207175656a617320706172612074656e657220756e612062617365206461746f7320616d706c6961, 'diegoguapacha1998@gmail.com', '3183949163', 2, 4, NULL),
(4, '2024-09-01', 0x456c20717565206c6f206c656120657320676569, 'diegoguapacha98@hotmail.com', '3108282954', 4, 4, NULL),
(5, '2024-09-02', 0x48616365206672696f2079206573746f79206c65, 'danielbm1976@gmail.com', '3176458262', 3, 4, NULL),
(7, '2024-09-03', 0x43616d626961646f207072726f, 'sofixmf@gmail.com', '3127564934', 1, 4, NULL),
(8, '2024-09-06', 0x45737461206573206c612070727565626120646520636c61736520, 'ejemplo@ejemplo.com', '5549876', 2, 4, NULL),
(9, '2024-11-16', 0x457374616d6f732070726f62616e646f206c6f7320436f6d626f426f78206120766572207369206775617264616e20656e206c61204442, 'dguapacha@estudiante.uniajc.edu.co', '3183949163', 1, 4, NULL),
(10, '2024-11-16', 0x41686f72612076616d6f7320612061727265676c6172206c6f7320696e6469636573, 'dguapacha@estudiante.uniajc.edu.co', '3183949163', 3, 4, NULL),
(11, '2024-11-16', 0x4372656f20717565206c6f732061727265676c616d6f73204a616a616a6a6161, 'dguapacha@estudiante.uniajc.edu.co', '3183949163', 4, 4, NULL),
(12, '2024-11-16', 0x456e2065666563746f2046756e63696f6e61, 'dguapacha@estudiante.uniajc.edu.co', '3108282954', 1, 4, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recibo_caja`
--

CREATE TABLE `recibo_caja` (
  `rc_num` int(11) NOT NULL,
  `usu_id` int(15) NOT NULL,
  `rc_fecha` date NOT NULL,
  `ped_id` int(11) NOT NULL,
  `cli_id` int(15) NOT NULL,
  `rc_total` double NOT NULL,
  `rc_observacion` varchar(360) NOT NULL,
  `rc_estado` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recibo_caja_detalle`
--

CREATE TABLE `recibo_caja_detalle` (
  `rcd_id` int(11) NOT NULL,
  `rcd_num` int(11) NOT NULL,
  `pla_id` int(4) NOT NULL,
  `rcd_precio` double NOT NULL,
  `rcd_cantidad` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_estado`
--

CREATE TABLE `tipo_estado` (
  `tes_id` int(2) NOT NULL,
  `tes_descripcion` varchar(40) NOT NULL,
  `tes_esatdo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tipo_estado`
--

INSERT INTO `tipo_estado` (`tes_id`, `tes_descripcion`, `tes_esatdo`) VALUES
(1, 'Comanda', 'Activo'),
(2, 'Pedido', 'Activo'),
(3, 'Plato', 'Activo'),
(4, 'PQRS', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_tpqrs`
--

CREATE TABLE `tipo_tpqrs` (
  `tpqrs_id` int(2) NOT NULL,
  `tpqrs_descripcion` varchar(40) DEFAULT NULL,
  `tpqrs_estado` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tipo_tpqrs`
--

INSERT INTO `tipo_tpqrs` (`tpqrs_id`, `tpqrs_descripcion`, `tpqrs_estado`) VALUES
(1, 'Petición', 'Activo'),
(2, 'Queja', 'Activo'),
(3, 'Reclamo', 'Activo'),
(4, 'Sugerencia', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usu_id` int(11) NOT NULL,
  `usu_nombre` varchar(60) NOT NULL,
  `usu_apellido` varchar(60) NOT NULL,
  `usu_direccion` varchar(100) NOT NULL,
  `usu_telefono` varchar(20) NOT NULL,
  `usu_correo` varchar(70) NOT NULL,
  `perf_id` int(11) DEFAULT NULL,
  `usu_login` varchar(30) NOT NULL,
  `usu_pass` varchar(30) NOT NULL,
  `usu_estado` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usu_id`, `usu_nombre`, `usu_apellido`, `usu_direccion`, `usu_telefono`, `usu_correo`, `perf_id`, `usu_login`, `usu_pass`, `usu_estado`) VALUES
(1234, 'Admin', '', '', '', '', 1, 'admin', '1234', 'Activo'),
(1275, 'Carlos', 'Mosquera', 'Calle 5 #12-34', '3001234567', 'carlos.mosquera@restaurante.com', 1, 'cmosquera', 'admin123', 'Activo'),
(1276, 'Diana', 'López', 'Carrera 45 #23-56', '3109876543', 'diana.lopez@restaurante.com', 1, 'dlopez', 'admin456', 'Activo'),
(1277, 'Jorge', 'Valencia', 'Av. Roosevelt #10-20', '3205556677', 'jorge.valencia@restaurante.com', 1, 'jvalencia', 'admin789', 'Activo'),
(1278, 'Andrés', 'Caicedo', 'Calle 30 #45-67', '3112233445', 'andres.caicedo@restaurante.com', 2, 'acaicedo', 'aux123', 'Activo'),
(1279, 'Paola', 'Martínez', 'Carrera 7 #89-10', '3001122334', 'paola.martinez@restaurante.com', 2, 'pmartinez', 'aux456', 'Activo'),
(1280, 'Juan', 'González', 'Calle 13 #25-40', '3156677889', 'juan.gonzalez@restaurante.com', 2, 'jgonzalez', 'aux789', 'Activo'),
(1281, 'Luis', 'Córdoba', 'Carrera 50 #12-22', '3103344556', 'luis.cordoba@restaurante.com', 2, 'lcordoba', 'aux234', 'Activo'),
(1282, 'Natalia', 'Ríos', 'Calle 100 #15-30', '3014455667', 'natalia.rios@restaurante.com', 2, 'nrios', 'aux567', 'Activo'),
(1283, 'Sebastián', 'Mora', 'Calle 60 #45-78', '3125566778', 'sebastian.mora@restaurante.com', 2, 'smora', 'aux890', 'Activo'),
(1284, 'Carolina', 'Mejía', 'Carrera 8 #34-56', '3206677889', 'carolina.mejia@restaurante.com', 2, 'cmejia', 'aux321', 'Activo'),
(1285, 'Felipe', 'Ortega', 'Calle 22 #30-40', '3159988776', 'felipe.ortega@restaurante.com', 2, 'fortega', 'aux654', 'Activo'),
(1286, 'Ana', 'Sánchez', 'Calle 9 #20-15', '3121234567', 'ana.sanchez@gmail.com', 3, 'asanchez', 'cliente1', 'Activo'),
(1287, 'Diego', 'Rodríguez', 'Carrera 15 #10-30', '3119876543', 'diego.rodriguez@gmail.com', 3, 'drodriguez', 'cliente2', 'Activo'),
(1288, 'Laura', 'Gómez', 'Av. Pasoancho #34-56', '3203344556', 'laura.gomez@gmail.com', 3, 'lgomez', 'cliente3', 'Activo'),
(1289, 'Camilo', 'Fernández', 'Calle 70 #25-40', '3005566778', 'camilo.fernandez@gmail.com', 3, 'cfernandez', 'cliente4', 'Activo'),
(1290, 'María', 'Castro', 'Carrera 40 #50-60', '3126677889', 'maria.castro@gmail.com', 3, 'mcastro', 'cliente5', 'Activo'),
(1291, 'Julián', 'Pérez', 'Calle 19 #33-45', '3101122334', 'julian.perez@gmail.com', 3, 'jperez', 'cliente6', 'Activo'),
(1292, 'Sofía', 'Torres', 'Carrera 25 #44-55', '3014455667', 'sofia.torres@gmail.com', 3, 'storres', 'cliente7', 'Activo'),
(1293, 'Kevin', 'Salazar', 'Calle 50 #20-30', '3159988776', 'kevin.salazar@gmail.com', 3, 'ksalazar', 'cliente8', 'Activo'),
(1294, 'Andrea', 'Hernández', 'Carrera 60 #10-20', '3123344556', 'andrea.hernandez@gmail.com', 3, 'ahernandez', 'cliente9', 'Activo'),
(1295, 'Esteban', 'Quintero', 'Av. Roosevelt #22-33', '3205566778', 'esteban.quintero@gmail.com', 3, 'equintero', 'cliente10', 'Activo'),
(1296, 'Daniela', 'Ortiz', 'Calle 30 #14-25', '3106677889', 'daniela.ortiz@gmail.com', 3, 'dortiz', 'cliente11', 'Activo'),
(1297, 'Cristian', 'Ramos', 'Carrera 17 #23-34', '3003344556', 'cristian.ramos@gmail.com', 3, 'cramos', 'cliente12', 'Activo'),
(1298, 'Luisa', 'Villamizar', 'Calle 45 #56-67', '3125566778', 'luisa.villamizar@gmail.com', 3, 'lvillamizar', 'cliente13', 'Activo'),
(1299, 'Manuel', 'Vargas', 'Carrera 38 #10-20', '3206677889', 'manuel.vargas@gmail.com', 3, 'mvargas', 'cliente14', 'Activo'),
(1300, 'Jessica', 'Ramírez', 'Av. Sexta #22-33', '3159988776', 'jessica.ramirez@gmail.com', 3, 'jramirez', 'cliente15', 'Activo'),
(1301, 'Ricardo', 'Londoño', 'Calle 80 #34-45', '3101122334', 'ricardo.londono@gmail.com', 3, 'rlondono', 'cliente16', 'Activo'),
(1302, 'Valeria', 'Muñoz', 'Carrera 90 #12-24', '3124455667', 'valeria.munoz@gmail.com', 3, 'vmunoz', 'cliente17', 'Activo'),
(1303, 'Jonathan', 'Mendoza', 'Calle 11 #23-45', '3016677889', 'jonathan.mendoza@gmail.com', 3, 'jmendoza', 'cliente18', 'Activo'),
(1304, 'Natalia', 'Jiménez', 'Carrera 21 #34-56', '3203344556', 'natalia.jimenez@gmail.com', 3, 'njimenez', 'cliente19', 'Activo'),
(1305, 'Oscar', 'Beltrán', 'Calle 23 #45-67', '3106677889', 'oscar.beltran@gmail.com', 3, 'obeltran', 'cliente20', 'Activo'),
(1306, 'Marcela', 'Arboleda', 'Carrera 31 #56-78', '3153344556', 'marcela.arboleda@gmail.com', 3, 'marboleda', 'cliente21', 'Activo'),
(1307, 'David', 'Serna', 'Calle 12 #23-45', '3129988776', 'david.serna@gmail.com', 3, 'dserna', 'cliente22', 'Activo'),
(1308, 'Tatiana', 'Restrepo', 'Carrera 22 #34-56', '3014455667', 'tatiana.restrepo@gmail.com', 3, 'trestrepo', 'cliente23', 'Activo'),
(1309, 'Fernando', 'Rincón', 'Calle 99 #56-78', '3105566778', 'fernando.rincon@gmail.com', 3, 'frincon', 'cliente24', 'Activo'),
(1310, 'Cindy', 'Zapata', 'Carrera 14 #45-67', '3206677889', 'cindy.zapata@gmail.com', 3, 'czapata', 'cliente25', 'Activo'),
(1311, 'Mateo', 'Echeverry', 'Calle 34 #67-78', '3003344556', 'mateo.echeverry@gmail.com', 3, 'mecheverry', 'cliente26', 'Activo'),
(1312, 'Diana', 'Montoya', 'Carrera 25 #89-90', '3159988776', 'diana.montoya@gmail.com', 3, 'dmontoya', 'cliente27', 'Activo'),
(1313, 'Samuel', 'Rojas', 'Calle 10 #20-30', '3123344556', 'samuel.rojas@gmail.com', 3, 'srojas', 'cliente28', 'Activo'),
(1314, 'Camila', 'Patiño', 'Carrera 50 #15-25', '3205566778', 'camila.patino@gmail.com', 3, 'cpatino', 'cliente29', 'Activo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cli_id`);

--
-- Indices de la tabla `comanda`
--
ALTER TABLE `comanda`
  ADD PRIMARY KEY (`com_id`),
  ADD KEY `pla_id` (`pla_id`),
  ADD KEY `est_id` (`est_id`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`est_id`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`ped_id`),
  ADD KEY `est_id` (`est_id`),
  ADD KEY `usu_id` (`usu_id`);

--
-- Indices de la tabla `pedido_detalle`
--
ALTER TABLE `pedido_detalle`
  ADD PRIMARY KEY (`ped_det_id`),
  ADD KEY `pla_id` (`pla_id`),
  ADD KEY `ped_id` (`ped_id`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`perf_id`);

--
-- Indices de la tabla `plato`
--
ALTER TABLE `plato`
  ADD PRIMARY KEY (`pla_id`),
  ADD KEY `est_id` (`est_id`);

--
-- Indices de la tabla `pqrs`
--
ALTER TABLE `pqrs`
  ADD PRIMARY KEY (`pqrs_id`),
  ADD KEY `est_id` (`est_id`),
  ADD KEY `tpqrs_id` (`tpqrs_id`);

--
-- Indices de la tabla `recibo_caja`
--
ALTER TABLE `recibo_caja`
  ADD PRIMARY KEY (`rc_num`),
  ADD KEY `ped_id` (`ped_id`),
  ADD KEY `cli_id` (`cli_id`);

--
-- Indices de la tabla `recibo_caja_detalle`
--
ALTER TABLE `recibo_caja_detalle`
  ADD PRIMARY KEY (`rcd_id`),
  ADD KEY `pla_id` (`pla_id`);

--
-- Indices de la tabla `tipo_estado`
--
ALTER TABLE `tipo_estado`
  ADD PRIMARY KEY (`tes_id`);

--
-- Indices de la tabla `tipo_tpqrs`
--
ALTER TABLE `tipo_tpqrs`
  ADD PRIMARY KEY (`tpqrs_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usu_id`),
  ADD KEY `perf_id` (`perf_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `cli_id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `comanda`
--
ALTER TABLE `comanda`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `est_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `ped_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedido_detalle`
--
ALTER TABLE `pedido_detalle`
  MODIFY `ped_det_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `perf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `plato`
--
ALTER TABLE `plato`
  MODIFY `pla_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pqrs`
--
ALTER TABLE `pqrs`
  MODIFY `pqrs_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `recibo_caja`
--
ALTER TABLE `recibo_caja`
  MODIFY `rc_num` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `recibo_caja_detalle`
--
ALTER TABLE `recibo_caja_detalle`
  MODIFY `rcd_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_estado`
--
ALTER TABLE `tipo_estado`
  MODIFY `tes_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipo_tpqrs`
--
ALTER TABLE `tipo_tpqrs`
  MODIFY `tpqrs_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1315;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comanda`
--
ALTER TABLE `comanda`
  ADD CONSTRAINT `comanda_ibfk_1` FOREIGN KEY (`pla_id`) REFERENCES `plato` (`pla_id`),
  ADD CONSTRAINT `comanda_ibfk_2` FOREIGN KEY (`est_id`) REFERENCES `estado` (`est_id`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`est_id`) REFERENCES `estado` (`est_id`),
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`usu_id`) REFERENCES `usuario` (`usu_id`);

--
-- Filtros para la tabla `pedido_detalle`
--
ALTER TABLE `pedido_detalle`
  ADD CONSTRAINT `pedido_detalle_ibfk_1` FOREIGN KEY (`pla_id`) REFERENCES `plato` (`pla_id`),
  ADD CONSTRAINT `pedido_detalle_ibfk_2` FOREIGN KEY (`ped_id`) REFERENCES `pedido` (`ped_id`);

--
-- Filtros para la tabla `plato`
--
ALTER TABLE `plato`
  ADD CONSTRAINT `plato_ibfk_1` FOREIGN KEY (`est_id`) REFERENCES `estado` (`est_id`);

--
-- Filtros para la tabla `pqrs`
--
ALTER TABLE `pqrs`
  ADD CONSTRAINT `pqrs_ibfk_1` FOREIGN KEY (`est_id`) REFERENCES `estado` (`est_id`),
  ADD CONSTRAINT `pqrs_ibfk_2` FOREIGN KEY (`tpqrs_id`) REFERENCES `tipo_tpqrs` (`tpqrs_id`);

--
-- Filtros para la tabla `recibo_caja`
--
ALTER TABLE `recibo_caja`
  ADD CONSTRAINT `recibo_caja_ibfk_1` FOREIGN KEY (`ped_id`) REFERENCES `pedido` (`ped_id`),
  ADD CONSTRAINT `recibo_caja_ibfk_2` FOREIGN KEY (`cli_id`) REFERENCES `cliente` (`cli_id`);

--
-- Filtros para la tabla `recibo_caja_detalle`
--
ALTER TABLE `recibo_caja_detalle`
  ADD CONSTRAINT `recibo_caja_detalle_ibfk_1` FOREIGN KEY (`pla_id`) REFERENCES `plato` (`pla_id`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`perf_id`) REFERENCES `perfil` (`perf_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
