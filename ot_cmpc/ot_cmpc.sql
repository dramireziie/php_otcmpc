SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS `ot_cmpc` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `ot_cmpc`;

CREATE TABLE `area` (
  `idArea` int(11) NOT NULL,
  `nombreArea` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `area` (`idArea`, `nombreArea`) VALUES
(1, 'Área Fibras'),
(2, 'Nave pulper y fibras'),
(3, 'Madera'),
(4, 'Efluente y Caldera'),
(5, 'Máquina papelera'),
(6, 'Mantenimientos menores');

CREATE TABLE `estado` (
  `idEstado` int(11) NOT NULL,
  `descrip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `estado` (`idEstado`, `descrip`) VALUES
(1, 'Nueva'),
(2, 'Completada'),
(3, 'Cerrada');

CREATE TABLE `imagen` (
  `idOrden` int(11) NOT NULL,
  `img` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `fuente` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `imagen` (`idOrden`, `img`, `fuente`) VALUES
(1, 'https://firebasestorage.googleapis.com/v0/b/cmpc-project.appspot.com/o/img%2FCaptura%20de%20pantalla%202021-08-10%20103537.png?alt=media&token=1d6b2f41-2fa6-4c86-a334-adb27b88c1f5', 'Apoyo'),
(1, 'https://firebasestorage.googleapis.com/v0/b/cmpc-project.appspot.com/o/img%2Fd9c946ecb56446711f59124f5b9c2bfc.png?alt=media&token=a0a0762c-0076-4ce9-b67f-69bb98be6c58', 'Apoyo'),
(1, 'https://firebasestorage.googleapis.com/v0/b/cmpc-project.appspot.com/o/img%2FWhatsApp%20Image%202021-11-29%20at%2019.28.07.jpeg?alt=media&token=e3e53bcc-16e8-48db-b6bb-6984e0e7501b', 'Evidencia'),
(3, 'https://firebasestorage.googleapis.com/v0/b/cmpc-project.appspot.com/o/img%2FCaptura%20de%20pantalla%202021-08-10%20103810.png?alt=media&token=dfb70187-2c30-492d-a341-2955b0421ddc', 'Apoyo'),
(3, 'https://firebasestorage.googleapis.com/v0/b/cmpc-project.appspot.com/o/img%2FWhatsApp%20Image%202021-11-29%20at%2019.28.08.jpeg?alt=media&token=17240b03-4d6d-47ad-a18e-b3ec7f0f3dc0', 'Evidencia'),
(4, 'https://firebasestorage.googleapis.com/v0/b/cmpc-project.appspot.com/o/img%2FWhatsApp%20Image%202021-11-29%20at%2019.26.05%20(1).jpeg?alt=media&token=97075975-1c55-4176-b80d-c0159600b68a', 'Apoyo'),
(4, 'https://firebasestorage.googleapis.com/v0/b/cmpc-project.appspot.com/o/img%2FWhatsApp%20Image%202021-11-29%20at%2019.28.08.jpeg?alt=media&token=a7d61d95-2565-4699-a6d1-42f2d342f0d6', 'Evidencia'),
(5, 'https://firebasestorage.googleapis.com/v0/b/cmpc-project.appspot.com/o/img%2FWhatsApp%20Image%202021-11-29%20at%2019.28.07.jpeg?alt=media&token=6967c389-6a96-4222-88d2-c2e00802a37a', 'Apoyo'),
(6, 'https://firebasestorage.googleapis.com/v0/b/cmpc-project.appspot.com/o/img%2FWhatsApp%20Image%202021-11-29%20at%2019.28.08.jpeg?alt=media&token=4229b3dd-72e7-4abf-8c26-e48e05ecf391', 'Apoyo'),
(6, 'https://firebasestorage.googleapis.com/v0/b/cmpc-project.appspot.com/o/img%2FWhatsApp%20Image%202021-11-29%20at%2019.28.08%20(1).jpeg?alt=media&token=b5cf6085-d78c-40b9-ae25-92f63e997ad0', 'Evidencia'),
(6, 'https://firebasestorage.googleapis.com/v0/b/cmpc-project.appspot.com/o/img%2FWhatsApp%20Image%202021-11-29%20at%2019.28.08%20(1).jpeg?alt=media&token=edb88ab8-6ebd-4a7a-87c3-928e0448707b', 'Evidencia'),
(7, 'https://firebasestorage.googleapis.com/v0/b/cmpc-project.appspot.com/o/img%2FWhatsApp%20Image%202021-11-29%20at%2019.26.05%20(2).jpeg?alt=media&token=a7f16c29-19f7-4452-87de-a8a7c4a568db', 'Apoyo'),
(7, 'https://firebasestorage.googleapis.com/v0/b/cmpc-project.appspot.com/o/img%2FWhatsApp%20Image%202021-11-29%20at%2019.26.05%203.jpeg?alt=media&token=48c07265-fdaf-439b-991e-8ad30bab8d5a', 'Evidencia'),
(7, 'https://firebasestorage.googleapis.com/v0/b/cmpc-project.appspot.com/o/img%2FWhatsApp%20Image%202021-11-29%20at%2019.28.07.jpeg?alt=media&token=f77afcce-2cba-42af-a1fa-130d480197dc', 'Apoyo'),
(7, 'https://firebasestorage.googleapis.com/v0/b/cmpc-project.appspot.com/o/img%2FWhatsApp%20Image%202021-11-29%20at%2019.28.07%20(2).jpeg?alt=media&token=eb2cc695-a8c3-47c6-9a7c-22d8806642b3', 'Evidencia'),
(8, 'https://firebasestorage.googleapis.com/v0/b/cmpc-project.appspot.com/o/img%2FCaptura%20de%20pantalla%202022-01-06%20151625.png?alt=media&token=2bfc29fe-610d-48e1-a593-b3d494d528d6', 'Evidencia');

CREATE TABLE `ordentrabajo` (
  `idOrden` int(11) NOT NULL,
  `fechaSolicitud` date NOT NULL,
  `fechaInicio` date DEFAULT NULL,
  `fechaTermino` date DEFAULT NULL,
  `idServicio` int(11) NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `estado` int(11) NOT NULL,
  `idSolicitante` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `observaciones` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `idEjecutor` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `conformidad` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `ordentrabajo` (`idOrden`, `fechaSolicitud`, `fechaInicio`, `fechaTermino`, `idServicio`, `descripcion`, `estado`, `idSolicitante`, `observaciones`, `idEjecutor`, `conformidad`) VALUES
(1, '2021-12-31', '2022-01-03', '2022-01-03', 60, 'En este caso vamos a cargar 2 imagenes', 3, 'dramirezr@utalca.cl', 'Tarea realizada con éxito ', 'dramirezr@utalca.cl', 1),
(3, '2021-12-31', '2022-01-03', '2022-01-04', 64, 'Error al cargar la imagen ', 2, 'dramirezr@utalca.cl', 'Nos demoramos 1 día', 'dramirezr@utalca.cl', 0),
(4, '2022-01-04', '2022-01-05', '2022-01-05', 12, 'Dejar todo impecable', 2, 'dramirezr@utalca.cl', 'la última tarea pendiente', 'dramirezr@utalca.cl', 0),
(5, '2022-01-03', NULL, NULL, 74, 'Una nueva orden', 1, 'dramirezr@utalca.cl', NULL, NULL, 0),
(6, '2022-01-03', '2022-01-04', '2022-01-04', 60, 'Limpiando las malezas del TQ ', 2, 'dramirezr@utalca.cl', 'Completado sin problemas', 'juan@gmail.com', 0),
(7, '2022-01-05', '2022-01-05', '2022-01-05', 3, 'Lavar con mucho cuidado', 2, 'dramirezr@utalca.cl', 'Pisos limpios sin problemas ', 'juan@gmail.com', 0),
(8, '0000-00-00', '2022-01-07', '2022-01-07', 68, 'Trabajo realizado según planificación', 3, '', 'Trabajo realizado según información previa', 'juan@gmail.com', 1);

CREATE TABLE `servicio` (
  `idServicio` int(11) NOT NULL,
  `actividad` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `frecuencia` varchar(50) NOT NULL,
  `criticidad` varchar(1) NOT NULL,
  `idArea` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `servicio` (`idServicio`, `actividad`, `frecuencia`, `criticidad`, `idArea`) VALUES
(1, 'Limpieza sector lavado de astillas ', 'Permanente en turno rotativo continuo', 'A', 1),
(2, 'Lavar tamices de filtros inclinados', 'Permanente en turno rotativo continuo', 'A', 1),
(3, 'Lavar pisos pavimentados', 'Permanente en turno rotativo continuo', 'A', 1),
(4, 'Retiro de materiales ajenos a los procesos', 'Permanente', 'A', 2),
(5, 'Limpieza y retiro de pasta en sector fundaciones prensas de bloqueo', '1 vez por semana', 'A', 2),
(6, 'Lavar pisos nivel 100 sector pulpers ', 'Diario diurno', 'A', 2),
(7, 'Lavar pisos sector pulpers', 'En periodo HP', 'A', 2),
(8, 'Limpieza de derrames de fibras sector pulpers ', 'A solicitud del supervisor', 'A', 2),
(9, 'Limpieza de pretiles torres TMP y recorte por derrames', 'A solicitud del supervisor', 'A', 2),
(10, 'Limpieza de pisos sector TQ latencia, reboiler y TQs Transferencia L1 y L2', 'Diario diurno', 'A', 2),
(11, 'Limpieza de pisos sector wet lap y torre de blanqueo', 'Diario diurno', 'A', 2),
(12, 'Limpieza de pulpers 121, 122, 131, y 132', 'Diario diurno', 'A', 2),
(13, 'Limpieza de escaleras nave de fibras', 'A solicitud del supervisor F&S', 'A', 2),
(14, 'Limpieza de trampa magnética de circuitos descarga pulpers 122 y 121', 'A solicitud del departamento', 'A', 2),
(15, 'Apoyo en destapar y limpiar tolva de astillas L1/L2 refinadores TMP', 'A solicitud del supervisor', 'A', 2),
(16, 'Apertura lavado interior y cierre de tapas de estanques y cubas de proceso ', 'A solicitud del supervisor F&S Parada Planta', 'A', 2),
(17, 'Apoyo Drenaje lavado químico Torres recorte', 'A solicitud del supervisor F&S Parada Planta', 'A', 2),
(18, 'Lavado interior Torre agua sin clarificar #2 ', 'A solicitud del supervisor F&S Parada Planta', 'A', 2),
(19, 'Lavado interior TQ Pulper 122', 'A solicitud del supervisor F&S Parada Planta', 'A', 2),
(20, 'Abrir/Cerrar y lavado coladores TMP', 'A solicitud del supervisor F&S Parada Planta', 'A', 2),
(21, 'Abrir/Cerrar y lavado ADS7', 'A solicitud del supervisor F&S Parada Planta', 'A', 2),
(22, 'Abrir/Cerrar y lavado Diabolo', 'A solicitud del supervisor F&S Parada Planta', 'A', 2),
(23, 'Limpieza trampas magnéticas alambres áreas 121/122', 'A solicitud del supervisor F&S Parada Planta', 'A', 2),
(24, 'Limpieza depuradores 121/122', 'A solicitud del supervisor F&S Parada Planta', 'A', 2),
(25, 'Vaciado pozos cadenas 131 y 132', 'A solicitud del supervisor F&S Parada Planta', 'A', 2),
(26, 'Limpieza manual solidos pozos cadenas 131 y 132', 'A solicitud del supervisor F&S Parada Planta', 'A', 2),
(27, 'Desagüe balde guillotina de rollos', 'A solicitud del supervisor F&S Parada Planta', 'A', 2),
(28, 'Lavado cadenas alim pulpers después de Mant (AAP y Detergente industrial)', 'A solicitud del supervisor F&S Parada Planta', 'A', 2),
(31, 'Destapar con Agua Alta Presión líneas de astillas obstruidas', 'A solicitud del supervisor F&S Parada Planta', 'A', 2),
(32, 'Lavar Mixer y ductos de entrada ', 'A solicitud del supervisor F&S Parada Planta', 'A', 2),
(33, 'Limpieza de pisos en subterráneo Refinadores L1 y L2 ', 'A solicitud del supervisor F&S (mín mensual)', 'A', 2),
(34, 'Drenado y lavado de poso flasheo Refinadores L1 y L2/TMP', 'Durante cambio de placas Refinador', 'A', 2),
(35, 'Apoyo emergencia para destapar lineas de proceso', 'A solicitud del supervisor F&S', 'A', 2),
(36, 'Apoyo emergencia para vaciar fozos inundados con agua o solidos proceso', 'A solicitud del supervisor F&S', 'A', 2),
(37, 'Limpieza de estructuras de correas transportadoras 013, 021, 025, 032, 034, 035', 'Parada planta', 'A', 3),
(38, 'Drenado y limpieza de residuos solidos de pozo de correa 032', '1 vez por semana ', 'A', 3),
(39, 'Limpieza de canal colector de cortezas', 'Parada planta', 'A', 2),
(40, 'Limpieza y mantención de pisos alrededor de harnero, reastillador y correas transortadoras', 'Diario', 'A', 3),
(41, 'Apoyo retiro de atascos en chute entrada reastillador ', 'Diario', 'A', 3),
(42, 'Limpieza foso polin cola correa', 'Según requerimiento ', 'A', 3),
(43, 'Vaciado astillas que quedan debajo del tornillo reclaimer ', 'Parada planta', 'A', 3),
(44, 'Limpieza interior de piso silo de astillas después de vaciado', 'Parada planta', 'A', 3),
(45, 'Vaciado manual trozos desde interior descortezador ', 'A solicitud del supervisor F&S Parada Planta', 'A', 3),
(46, 'Lavado interior tambor descortezador', 'A solicitud del supervisor F&S', 'A', 3),
(47, 'Limpieza y lavado Trampa arena', 'A solicitud del supervisor F&S', 'A', 3),
(48, 'Lavado estructura y polines correa 13 y 35', 'A solicitud del supervisor F&S Parada Planta', 'A', 3),
(49, 'Lavado y succión Foso cola correa 102', 'A solicitud del supervisor F&S', 'A', 3),
(50, 'Retiro atascos trozos entrada astillador con motosierra', 'A solicitud del supervisor F&S Parada Planta', 'A', 3),
(51, 'Limpieza y lavado piscina decantación Cancha Maderas', 'A solicitud del supervisor F&S', 'A', 3),
(52, 'Vaciado foso cuba espuma', 'A solicitud del supervisor F&S', 'A', 4),
(53, 'Limpieza filtros sopladores Efluentes (PTE)', '1 vez por semana', 'A', 4),
(54, 'Limpieza de estructura y pretil de correa 061', 'Diario diurno', 'A', 4),
(55, 'Desaguado y limpieza de pretiles torre de enfriamiento, ácido fosfórico y tanques de soda PTE', 'A solicitud del supervisor F&S', 'B', 4),
(56, 'Retiro de astillas y plásticos acopiados al lado cuba de espuma (residuos de la limpieza)', '1 vez por semana ', 'B', 4),
(57, 'Limpieza de precámara de efluentes', 'Diario diurno', 'B', 4),
(58, 'Limpieza chimenea y economizador para mediciones MP y Gases Calderas B&W 1 y 2', 'A solicitud del supervisor F&S', 'A', 4),
(59, 'Limpieza y desmalezado de pozos agua industrial', 'Mensual', 'B', 4),
(60, 'Desmalezado de TQ almacenamiento GLP', 'mensual', 'B', 4),
(61, 'Limpieza y desmalezado sector bombas incendio y agua industrial', 'mensual', 'B', 4),
(62, 'Vaciado agua lluvia y Limpieza de pretiles ', 'Cuando se requiera', 'B', 4),
(63, 'Lavado 5 torres en parada de plantas', 'en mantenciones programadas ', 'A', 5),
(64, 'Abrir, lavar y cerrar 8 estanques de cocina', 'en mantenciones programadas', 'A', 5),
(65, 'Limpieza de fugas de aceite en área requerida', 'según programa', 'A', 6),
(66, 'Limpieza de separador agua aceite en área madera', 'cada 2 semana', 'A', 6),
(67, 'Limpieza de filtros de cortadora de caños área de máquinas', 'Mensual', 'B', 6),
(68, 'Limpieza general y cambio de filtros sala sopladores en área de afluentes', 'cada 200 horas', 'A', 6),
(69, 'Limpieza y cambio de filtros sala compresores ', 'según programa', 'A', 6),
(70, 'Instalación bomba sumergible ', 'según programa ', 'B', 6),
(71, 'Limpieza extractor de humos maestranza ', 'Mensual', 'B', 6),
(72, 'Lavado de equipos en maestranza', 'según programa ', 'B', 6),
(73, 'Limpieza eléctrica conversión', 'Mensual', 'A', 6),
(74, 'Cambio de filtros (Poliéster) en celosías gabinetes PCU salas de racks ', 'Mensual', 'A', 6),
(75, 'Retiro de residuos peligrosos', 'según programa', 'A', 6);

CREATE TABLE `usuario` (
  `rut` varchar(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `funcion` varchar(30) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `telefono` varchar(12) NOT NULL,
  `clave` varchar(130) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `usuario` (`rut`, `nombre`, `funcion`, `correo`, `telefono`, `clave`) VALUES
('', '', '', '', '', '$2y$10$OTWMteAxdDJoXinI3uGRS.Bb2IlKXg7mbyN7jO/pf54O7gMu2jiP6'),
('usuario', 'nuevo', 'Nada', '123@123.com', '123', '$2y$10$K4BRxyvx9/ufxjH2LACicuRQ/GznUALIqnfRkL4jJadPzAUEAwqXa'),
('7751217', 'Armando', 'Todas', 'algun@alguns.com', '12354648131', '$2y$10$2onPIT5yvLZ9yUUpfQT55O9CPv.spfFHzNph/ZK.wug89b/gaewCy'),
('22333457-9', 'Jose Boric', 'Supervisor', 'boric@utalca.cl', '+56945262335', '$2y$10$TdRIFcEar9d2tWfxsP5PDOnwFDzXQZCE87iQmrnrUMkEbNJc0VLXm'),
('120267151', 'sddd', 'ssdsdss', 'corre222@utalca.cl', '451546d', '$2y$10$ltMklyQVqZ8TPrPelDdOhOUZpX1lnKQtxYN11F94OGPy8I.MKAPWa'),
('12026715s', 'sd', 'ssds', 'correo2@utalca.cl', '451546', '$2y$10$x56MnR.DrUti9shR4Qx/KeWZRkg7kav3O3RbPn9vrOrD.zkkLkPAG'),
('120267151', 'sdd', 'ssdsd', 'correo22@utalca.cl', '451546', '$2y$10$5UeC71cITZwxkgvjhGLN8ebf.q21rT4aN.nqSR48NsGdSxgtEKyu2'),
('120267151', 'sddd', 'ssdsds', 'correo222@utalca.cl', '451546d', '$2y$10$tACyY26xdoyx9jS19yUodebuU2XswhtaEYpBATS4.hf.Smev/72fa'),
('16998654', 'Darío Ramírez', 'Supervisor', 'dramirezr@utalca.cl', '945262335', '$2y$10$XTJqeUHnw4Ym50Q//vnouOkzcbgmR1LbfSprinMqRPaos5TbCD1ky'),
('21839134', 'Juan Gonzalez', 'Limpieza', 'juan@gmail.com', '12893912', '$2y$10$Qm1OvSlvtgUdM81ohczlmeQEypDZon8M7aQXXxIUMNRuhXGNMK1hu'),
('1111111-1', 'Darío Armando Ramírez Ramírez', 'Supervisor', 'mail@123mail.com', '356595887', '$2y$10$MFhvMVPebB/M/pc6YInJVOZDijH1VKYYFL1nmyMgatoLxHQiFtS.i'),
('123405', 'Darío', 'Todas', 'malcorreo@correo.cl', '2190238', '$2y$10$IcIMxz1aV1UFdys/rFwKGO8Hkqlq.yuYtNNchav5OLOjcALztZsYy'),
('18999384', 'Dante', 'Todas', 'nada@nada.com', '928375639', '$2y$10$oIRvBxJlGgI4MRxhgl3MmeQFRMv/kS6EeZgPBRXYXVPD.ypBpF./2'),
('18999384', 'Dante', 'Todas', 'nada2@nada.com', '928375639', '$2y$10$UX6NzUUYJ1tOI7O22ypbauejllRZcmmZeFBPsthGmE1.1VBpVRim.');


ALTER TABLE `area`
  ADD PRIMARY KEY (`idArea`);

ALTER TABLE `estado`
  ADD PRIMARY KEY (`idEstado`);

ALTER TABLE `imagen`
  ADD PRIMARY KEY (`idOrden`,`img`);

ALTER TABLE `ordentrabajo`
  ADD PRIMARY KEY (`idOrden`),
  ADD KEY `idServicio_fk` (`idServicio`),
  ADD KEY `estado_fk` (`estado`),
  ADD KEY `idSolicitante_fk` (`idSolicitante`);

ALTER TABLE `servicio`
  ADD PRIMARY KEY (`idServicio`),
  ADD KEY `idArea_fk` (`idArea`);

ALTER TABLE `usuario`
  ADD PRIMARY KEY (`correo`);


ALTER TABLE `area`
  MODIFY `idArea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `ordentrabajo`
  MODIFY `idOrden` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE `servicio`
  MODIFY `idServicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;


ALTER TABLE `imagen`
  ADD CONSTRAINT `idOrden` FOREIGN KEY (`idOrden`) REFERENCES `ordentrabajo` (`idOrden`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `ordentrabajo`
  ADD CONSTRAINT `estado_fk` FOREIGN KEY (`estado`) REFERENCES `estado` (`idEstado`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `idServicio_fk` FOREIGN KEY (`idServicio`) REFERENCES `servicio` (`idServicio`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `idSolicitante_fk` FOREIGN KEY (`idSolicitante`) REFERENCES `usuario` (`correo`) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE `servicio`
  ADD CONSTRAINT `idArea_fk` FOREIGN KEY (`idArea`) REFERENCES `area` (`idArea`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
