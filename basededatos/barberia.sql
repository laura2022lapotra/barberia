-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-06-2022 a las 03:32:14
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `barberia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` char(50) DEFAULT NULL,
  `UserName` char(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Administrador', 'admin', 7898799798, 'msevillab@cweb.com', '21232f297a57a5a743894a0e4a801fc3', '2019-07-25 06:21:50'),
(2, 'Administrador', 'laura', 70298698, 'laura@gmail.com', 'laura', '2022-05-25 16:04:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblappointment`
--

CREATE TABLE `tblappointment` (
  `ID` int(10) NOT NULL,
  `AptNumber` varchar(80) DEFAULT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `PhoneNumber` bigint(11) DEFAULT NULL,
  `AptDate` varchar(120) DEFAULT NULL,
  `AptTime` varchar(120) DEFAULT NULL,
  `Services` varchar(120) DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `RemarkDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblappointment`
--

INSERT INTO `tblappointment` (`ID`, `AptNumber`, `Name`, `Email`, `PhoneNumber`, `AptDate`, `AptTime`, `Services`, `ApplyDate`, `Remark`, `Status`, `RemarkDate`) VALUES
(8, '496532914', 'Roman Garcia', 'rgarcia@cweb.com', 3211076843, '1/23/2020', '6:30pm', 'Fruit Facial', '2020-01-23 23:50:09', 'Excelente Cliente', '1', '2020-01-23 23:52:03'),
(9, '304302609', 'Lucia grajales', 'lgrajales@cweb.com', 3065439781, '1/24/2020', '9:00am', 'Fruit Facial', '2020-01-24 13:56:31', 'La srta realizÃ³ el proceso correspondiente.', '1', '2020-01-24 13:57:43'),
(10, '604686038', 'JUAN ARANGO', 'JARANGO@CWEB.COM', 3147641979, '1/24/2020', '1:00pm', 'Masaje Facial', '2020-01-24 14:54:02', 'Excelente cliente, recomendado', '1', '2020-01-24 14:54:57'),
(11, '932355891', 'Dilan cabal', 'DCABAL@CWEB.COM', 3178674931, '1/24/2020', '10:30am', 'Masaje Facial', '2020-01-24 15:11:49', 'Se realizÃ³ el pedido a satisfacciÃ³n.', '1', '2020-01-24 15:12:54'),
(12, '182457009', 'Juan Gallego', 'JGALLEGO@CWEB.COM', 3163798467, '1/24/2020', '1:30am', 'Masaje Facial', '2020-01-24 16:20:12', 'Acepto', '1', '2020-01-24 16:21:20'),
(13, '958882735', 'Rocio Calam', 'rcalam@cweb.com', 3010123201, '1/24/2020', '10:30pm', 'Layer Haircut', '2020-01-24 16:43:01', 'Se le cobra', '2', '2020-01-24 16:44:55'),
(14, '503526704', 'jhgjhg', 'kjghd@hotmail.com', 956594, '10/20/2021', '1:00am', 'Manicure de Lujo', '2021-10-27 21:58:06', 'rth', '1', '2021-10-27 21:58:25'),
(15, '647681869', 'prueba', 'p@hotmail.com', 964654654, '11/4/2021', '11:30am', 'prueba', '2021-11-01 16:44:18', 'pendiente', '1', '2021-11-01 16:45:40'),
(16, '630351373', 'Nathalia Flores', 'alejustiniano26@gmail.com', 77372062, '5/31/2022', '3:30pm', 'Tinte de Cabello', '2022-05-25 16:18:44', 'Cupos llenos para ese horario\r\n', '2', '2022-05-25 16:25:35'),
(17, '350855854', 'Ruth flores', 'nathaliajustinianof@gmail.com', 77372062, '5/31/2022', '4:30pm', 'Tinte de Cabello', '2022-06-01 00:29:58', 'cita aceptada', '1', '2022-06-01 00:31:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcustomers`
--

CREATE TABLE `tblcustomers` (
  `ID` int(10) NOT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Gender` enum('Mujer','Hombre','No definido') DEFAULT NULL,
  `Details` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblcustomers`
--

INSERT INTO `tblcustomers` (`ID`, `Name`, `Email`, `MobileNumber`, `Gender`, `Details`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Juan Perez', 'jperez@cweb.com', 3144567894613, 'No definido', 'Taking Hair Spa', '2019-07-26 11:09:10', '2021-10-27 21:46:22'),
(2, 'Edith Velazco', 'dgarzon@cweb.com', 3014673497814, 'Mujer', 'Taken haircut by him', '2019-07-26 11:10:02', '2020-01-24 15:08:42'),
(3, 'Daniel Garzon', 'dgarzon@cweb.com', 3126743476978, 'Hombre', 'Buen Cliente', '2019-07-26 11:10:28', '2020-01-24 15:08:50'),
(4, 'Adrian Narvaez', 'anarvaez@cweb.com', 3149874625789, 'Hombre', 'Taking Body Spa', '2019-08-19 13:38:58', '2020-01-24 15:08:07'),
(5, 'Norman Palao', 'npalao@cweb.com', 3169463781497, 'Hombre', 'Cliente frecuente,  le gusta los servicios premium tenerlo muy en cuenta', '2019-08-21 16:24:53', '2020-01-24 15:08:58'),
(6, 'Roberto GalÃ¡n', 'rgalan@cweb.com', 3172232526, 'Hombre', 'Interesante cliente', '2020-01-24 14:56:35', '2020-01-24 18:12:27'),
(7, 'Humberto Gonzalez', 'hgonzalez@cweb.com', 3179768047, 'Hombre', 'Creado satisfactoriamente', '2020-01-24 17:06:53', '2020-01-24 17:09:40'),
(8, 'nuevo', 'kjhgs@gmail.com', 6465465, 'Hombre', 'dfh', '2021-10-27 21:46:07', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `id` int(11) NOT NULL,
  `Userid` int(11) DEFAULT NULL,
  `ServiceId` int(11) DEFAULT NULL,
  `BillingId` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblinvoice`
--

INSERT INTO `tblinvoice` (`id`, `Userid`, `ServiceId`, `BillingId`, `PostingDate`) VALUES
(26, 1, 1, 535139230, '2020-01-23 23:55:32'),
(27, 6, 1, 232733358, '2020-01-24 14:58:47'),
(28, 4, 10, 635394484, '2020-01-24 16:51:26'),
(29, 4, 15, 609822877, '2020-01-24 17:02:06'),
(30, 4, 16, 609822877, '2020-01-24 17:02:06'),
(31, 1, 7, 386003037, '2021-10-27 21:46:34'),
(32, 2, 1, 517649779, '2021-11-01 16:41:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'Acerca de', '<div>Somos un centro dirigido a mujeres, donde nuestro objetivo principal es lograr que las personas se sientan mejor consigo mismas, mediante&nbsp; nuestros servicios de&nbsp; cuidado facial y&nbsp; corporal, para mantener y/o mejorar la apariencia física, elevando la autoestima y por ende, obtener&nbsp; una mejor salud física y&nbsp; emocional;&nbsp; así como, el lograr&nbsp; olvidarse&nbsp; &nbsp;por&nbsp; un&nbsp; &nbsp;momento&nbsp; &nbsp;del&nbsp; &nbsp;estrés&nbsp; &nbsp;bajo&nbsp; el&nbsp; que&nbsp; vivimos,&nbsp; &nbsp;en&nbsp; un&nbsp; espacio&nbsp; lleno&nbsp; de&nbsp; armonía&nbsp; y profesionalismo para satisfacer las necesidad de verse y sentirse bien.</div><div><br></div><div>&nbsp;En este SPA, contamos con personal calificado, productos farmacosmeticos y aparatología médico-estético que cumple los mayores estándares calidad a nivel mundial, esto nos permite lograr excelentes resultados.</div>', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contacto', '                                                                        Santa Cruz - Bolivia', 'spa@gmail.com', 77372062, NULL, '08:00 am to 6:30 pm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblservices`
--

CREATE TABLE `tblservices` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `Cost` int(10) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblservices`
--

INSERT INTO `tblservices` (`ID`, `ServiceName`, `Cost`, `CreationDate`) VALUES
(1, 'Limpieza Facial', 120, '2022-05-25 15:26:38'),
(2, 'Tinte de Cabello', 200, '2022-05-25 15:28:08'),
(3, 'Mechas', 350, '2022-05-25 15:29:57'),
(4, 'Alisado Permanente', 300, '2022-05-25 15:30:20'),
(5, 'Lifting de Pestañas', 50, '2022-05-25 15:32:21'),
(6, 'Maquillaje + pestañas', 80, '2022-05-25 15:32:48'),
(7, 'Planchado', 50, '2022-05-25 15:33:19'),
(8, 'Uñas en Gel', 150, '2022-05-25 15:43:55'),
(9, 'Uñas Acrílicas', 200, '2022-05-25 15:44:22'),
(10, 'Uñas Esculturales', 250, '2022-05-25 15:44:44'),
(11, 'Masaje Reductor', 70, '2022-05-25 15:47:48'),
(12, 'Masaje Reafirmante', 70, '2022-05-25 15:48:12'),
(13, 'Hidratación Facial', 80, '2022-05-25 15:48:45'),
(14, 'Ondas en el cabello', 50, '2022-05-25 15:49:23'),
(15, 'Peinado recogido', 50, '2022-05-25 15:49:42'),
(16, 'Peinado en cola', 40, '2022-05-25 15:49:57'),
(17, 'Pedicure', 60, '2022-05-25 15:50:23'),
(18, 'Exfoliación Corporal', 100, '2022-05-25 15:51:24'),
(19, 'Nutrición en el Cabello', 50, '2022-05-25 15:51:54'),
(20, 'Balayage', 900, '2022-05-25 15:52:10'),
(21, 'Baño de Keratina', 60, '2022-05-25 15:52:40'),
(22, 'Baño de Chocolate', 50, '2022-05-25 15:53:02'),
(23, 'Baño de Botox', 60, '2022-05-25 15:53:20'),
(24, 'Corte de Cabello', 50, '2022-05-25 15:53:38'),
(25, 'Depilación de axilas', 40, '2022-05-25 15:54:03'),
(26, 'Manicure', 20, '2022-05-25 15:54:27'),
(27, 'Depilación de cejas', 20, '2022-05-25 15:55:14'),
(28, 'Depilación de rostro', 50, '2022-05-25 15:55:34'),
(29, 'Depilación de piernas', 80, '2022-05-25 15:56:12'),
(30, 'Depilación Zona Bikini', 120, '2022-05-25 15:56:33');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tblappointment`
--
ALTER TABLE `tblappointment`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tblcustomers`
--
ALTER TABLE `tblcustomers`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tblappointment`
--
ALTER TABLE `tblappointment`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `tblcustomers`
--
ALTER TABLE `tblcustomers`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
