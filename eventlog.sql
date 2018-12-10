-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-11-2017 a las 18:02:21
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `eventlog`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `IdAlumno` int(11) NOT NULL,
  `Alum_nombre` varchar(30) NOT NULL,
  `Alum_apellido` varchar(30) NOT NULL,
  `Alum_edad` varchar(30) NOT NULL,
  `Alumn_tel` varchar(30) NOT NULL,
  `Alumn_mail` varchar(30) NOT NULL,
  `Alum_empresa/carrera` varchar(30) NOT NULL,
  `Alum_book` tinyint(4) DEFAULT NULL,
  `IdCurso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `certificacion`
--

CREATE TABLE `certificacion` (
  `IdCertificacion` int(11) NOT NULL,
  `Cert_nombre` varchar(30) DEFAULT NULL,
  `Cert_costo` decimal(10,0) DEFAULT NULL,
  `Cert_fecha` date DEFAULT NULL,
  `Cert_horario` varchar(8) DEFAULT NULL,
  `IdAlumno` int(11) DEFAULT NULL,
  `IdMaestro` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `IdCurso` int(11) NOT NULL,
  `Curso_nombre` varchar(30) DEFAULT NULL,
  `Curso_estatus` varchar(10) DEFAULT NULL,
  `Curso_programa` varchar(30) DEFAULT NULL,
  `Curso_destinatarios` varchar(30) DEFAULT NULL,
  `Curso_costo` decimal(10,0) DEFAULT NULL,
  `Curso_fecha_inicio` date DEFAULT NULL,
  `Curso_fecha_fin` date DEFAULT NULL,
  `Curso_horario` varchar(30) DEFAULT NULL,
  `Curso_descripcion` text,
  `Curso_inscritos` int(11) DEFAULT NULL,
  `Curso_capacidad` int(11) DEFAULT NULL,
  `Curso_direccion` varchar(30) DEFAULT NULL,
  `Curso_pais` varchar(30) DEFAULT NULL,
  `Curso_ciudad` varchar(30) DEFAULT NULL,
  `idMaestro` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`IdCurso`, `Curso_nombre`, `Curso_estatus`, `Curso_programa`, `Curso_destinatarios`, `Curso_costo`, `Curso_fecha_inicio`, `Curso_fecha_fin`, `Curso_horario`, `Curso_descripcion`, `Curso_inscritos`, `Curso_capacidad`, `Curso_direccion`, `Curso_pais`, `Curso_ciudad`, `idMaestro`) VALUES
(1, 'PROGRAMACION', 'CONFIRMADO', 'NETBEANS ', 'TODOS', '891', '2017-11-30', '2017-12-31', '12 A 1', 'INTRODUCCION', NULL, 10, 'AV. PIE DE LA CUESTA', 'MEXICO', 'QRO', 1),
(2, 'JAVA', 'PENDIENTE', 'NETBEANS ', 'TODOS', '700', '2018-01-31', '2018-03-01', '1 PM A 3 PM', 'BASICO', NULL, 10, 'AV. PIE DE LA CUESTA', 'MEXICO', 'QRO', 1),
(3, 'VISUAL STUDIO', 'CONFIRMADO', 'C#', 'TODOS', '1500', '2017-11-15', '2018-02-01', '10 AM A 5 PM', 'INTRODUCCION A C#', NULL, 10, 'AV. PIE DE LA CUESTA', 'ESPAÃ?A', 'CATALUÃ?A', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursox_alumno`
--

CREATE TABLE `cursox_alumno` (
  `IdCursox_alumno` int(11) NOT NULL,
  `IdCurso` int(11) DEFAULT NULL,
  `IdAlumno` int(11) DEFAULT NULL,
  `IdMaestro` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursox_coorporativo`
--

CREATE TABLE `cursox_coorporativo` (
  `IdCursox_coorporativo` int(11) NOT NULL,
  `IdCurso` int(11) DEFAULT NULL,
  `IdCoorporativo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursox_grupo`
--

CREATE TABLE `cursox_grupo` (
  `IdCursox_grupo` int(11) NOT NULL,
  `IdCurso` int(11) DEFAULT NULL,
  `IdGrupo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examen`
--

CREATE TABLE `examen` (
  `IdExamen` int(11) NOT NULL,
  `Exam_nombre` varchar(30) DEFAULT NULL,
  `Exam_horario` varchar(8) DEFAULT NULL,
  `Exam_calificacion` decimal(10,0) DEFAULT NULL,
  `IdAlumno` int(11) DEFAULT NULL,
  `IdMaestro` int(11) DEFAULT NULL,
  `IdCurso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `IdFactura` int(11) NOT NULL,
  `Fact_razonsocial` varchar(30) DEFAULT NULL,
  `Fact_calle` varchar(30) DEFAULT NULL,
  `Fact_numero` varchar(10) DEFAULT NULL,
  `Fact_num-int` varchar(10) NOT NULL,
  `Fact_municipio` varchar(30) DEFAULT NULL,
  `Fact_estado` varchar(30) DEFAULT NULL,
  `Fact_pais` varchar(30) DEFAULT NULL,
  `Fact_CP` int(11) DEFAULT NULL,
  `Fact_e-mail` varchar(30) NOT NULL,
  `Fact_RFC` varchar(20) DEFAULT NULL,
  `Fact_IVA` decimal(10,0) DEFAULT NULL,
  `IdPago` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscrip-grupo`
--

CREATE TABLE `inscrip-grupo` (
  `IdGrupo` int(11) NOT NULL,
  `Grupo_nombre` varchar(30) DEFAULT NULL,
  `Grupo_cantidad` int(11) DEFAULT NULL,
  `IdAlumno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripcion`
--

CREATE TABLE `inscripcion` (
  `IdInscripcion` int(11) NOT NULL,
  `Inscrip_descuento` int(11) DEFAULT NULL,
  `inscrip_fecha_pago` date DEFAULT NULL,
  `inscrip_preinscripcion` tinyint(1) DEFAULT NULL,
  `Inscrip_preincripcion_fecha` date DEFAULT NULL,
  `IdAlumno` int(11) DEFAULT NULL,
  `IdGrupo` int(11) DEFAULT NULL,
  `IdCoorporativo` int(11) DEFAULT NULL,
  `IdCurso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscrip_coorporativo`
--

CREATE TABLE `inscrip_coorporativo` (
  `IdCoorporativo` int(11) NOT NULL,
  `Coorp_nombre` varchar(30) DEFAULT NULL,
  `Coorp_cantidad` int(11) DEFAULT NULL,
  `Coorp_lugar` varchar(30) DEFAULT NULL,
  `IdAlumno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logistica`
--

CREATE TABLE `logistica` (
  `IdLogistica` int(11) NOT NULL,
  `Logistica_status` varchar(2) DEFAULT NULL,
  `IdTemplate` int(11) DEFAULT NULL,
  `IdMaterial` int(11) DEFAULT NULL,
  `IdCurso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestro`
--

CREATE TABLE `maestro` (
  `IdMaestro` int(11) NOT NULL,
  `Maestro_nombre` varchar(30) DEFAULT NULL,
  `Maestro_paterno` varchar(30) DEFAULT NULL,
  `Maestro_materno` varchar(30) DEFAULT NULL,
  `Maestro_especialidad` varchar(30) DEFAULT NULL,
  `Maestro_edad` varchar(30) DEFAULT NULL,
  `Maestro_telefono` varchar(30) DEFAULT NULL,
  `Maestro_e-mail` varchar(30) DEFAULT NULL,
  `IdAlumno` int(11) DEFAULT NULL,
  `IdCurso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material`
--

CREATE TABLE `material` (
  `IdMaterial` int(11) NOT NULL,
  `Mat_tipo` varchar(30) DEFAULT NULL,
  `Mat_cantidad` int(11) DEFAULT NULL,
  `Mat_costo` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `IdPago` int(11) NOT NULL,
  `Pago_costo` decimal(10,0) DEFAULT NULL,
  `Pago_tipo` varchar(20) DEFAULT NULL,
  `Pago_fecha` date DEFAULT NULL,
  `Pago_IVA` int(11) NOT NULL,
  `Pago_descuento` int(11) NOT NULL,
  `IdIncrispcion` int(11) DEFAULT NULL,
  `IdCurso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `template`
--

CREATE TABLE `template` (
  `IdTemplate` int(11) NOT NULL,
  `Temp_salon` varchar(20) DEFAULT NULL,
  `Temp_descripcion` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`IdAlumno`);

--
-- Indices de la tabla `certificacion`
--
ALTER TABLE `certificacion`
  ADD PRIMARY KEY (`IdCertificacion`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`IdCurso`);

--
-- Indices de la tabla `cursox_alumno`
--
ALTER TABLE `cursox_alumno`
  ADD PRIMARY KEY (`IdCursox_alumno`);

--
-- Indices de la tabla `cursox_coorporativo`
--
ALTER TABLE `cursox_coorporativo`
  ADD PRIMARY KEY (`IdCursox_coorporativo`);

--
-- Indices de la tabla `cursox_grupo`
--
ALTER TABLE `cursox_grupo`
  ADD PRIMARY KEY (`IdCursox_grupo`);

--
-- Indices de la tabla `examen`
--
ALTER TABLE `examen`
  ADD PRIMARY KEY (`IdExamen`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`IdFactura`);

--
-- Indices de la tabla `inscrip-grupo`
--
ALTER TABLE `inscrip-grupo`
  ADD PRIMARY KEY (`IdGrupo`);

--
-- Indices de la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD PRIMARY KEY (`IdInscripcion`);

--
-- Indices de la tabla `inscrip_coorporativo`
--
ALTER TABLE `inscrip_coorporativo`
  ADD PRIMARY KEY (`IdCoorporativo`);

--
-- Indices de la tabla `logistica`
--
ALTER TABLE `logistica`
  ADD PRIMARY KEY (`IdLogistica`);

--
-- Indices de la tabla `maestro`
--
ALTER TABLE `maestro`
  ADD PRIMARY KEY (`IdMaestro`);

--
-- Indices de la tabla `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`IdMaterial`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`IdPago`);

--
-- Indices de la tabla `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`IdTemplate`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `IdAlumno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `certificacion`
--
ALTER TABLE `certificacion`
  MODIFY `IdCertificacion` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `IdCurso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `cursox_alumno`
--
ALTER TABLE `cursox_alumno`
  MODIFY `IdCursox_alumno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cursox_coorporativo`
--
ALTER TABLE `cursox_coorporativo`
  MODIFY `IdCursox_coorporativo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cursox_grupo`
--
ALTER TABLE `cursox_grupo`
  MODIFY `IdCursox_grupo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `examen`
--
ALTER TABLE `examen`
  MODIFY `IdExamen` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `IdFactura` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `inscrip-grupo`
--
ALTER TABLE `inscrip-grupo`
  MODIFY `IdGrupo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  MODIFY `IdInscripcion` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `inscrip_coorporativo`
--
ALTER TABLE `inscrip_coorporativo`
  MODIFY `IdCoorporativo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `logistica`
--
ALTER TABLE `logistica`
  MODIFY `IdLogistica` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `maestro`
--
ALTER TABLE `maestro`
  MODIFY `IdMaestro` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `material`
--
ALTER TABLE `material`
  MODIFY `IdMaterial` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `IdPago` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `template`
--
ALTER TABLE `template`
  MODIFY `IdTemplate` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
