-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-12-2024 a las 10:03:01
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
-- Base de datos: `farmavidav3_`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `ID_Categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(100) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `imagen_categoria` varchar(255) DEFAULT NULL,
  `fecha_actualizacion` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`ID_Categoria`, `nombre_categoria`, `descripcion`, `imagen_categoria`, `fecha_actualizacion`) VALUES
(112, 'Medicamentos ', 'Medicamentos vía oral', 'https://cdn2.salud180.com/sites/default/files/istock-1160558107.jpg', '2024-06-04 18:54:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `ID_CLIENTE` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `correo_electronico` varchar(100) DEFAULT NULL,
  `fecha_actualizacion` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`ID_CLIENTE`, `nombre`, `direccion`, `ciudad`, `telefono`, `correo_electronico`, `fecha_actualizacion`) VALUES
(1, 'Carlos Tovar', 'Clle 76 - D sur 40 ', 'Bagota', '3213232', 'carlos@gmail.com', '2024-08-14 18:38:35'),
(2, 'Samuel Sanabria', 'crra 7 # 84- 25 ', 'Bogotá', '323243534', 'samuel@gmail.com', '2024-12-18 18:38:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `ID_Empleado` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  `UsuarioID_Usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `ID_ESTADO` int(11) NOT NULL,
  `nombre_estado` varchar(50) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`ID_ESTADO`, `nombre_estado`, `descripcion`) VALUES
(1, 'Activo', 'Estado activo en el sistema'),
(2, 'Inactivo', 'Estado inactivo en el sistema');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `iva`
--

CREATE TABLE `iva` (
  `ID_IVA` int(11) NOT NULL,
  `tasa` decimal(5,2) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `iva`
--

INSERT INTO `iva` (`ID_IVA`, `tasa`, `descripcion`, `fecha_inicio`) VALUES
(10, 1.00, 'tasa en aumento ', '2024-10-14'),
(20, 0.20, 'tasa en descuento ', '2024-08-12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laboratorio`
--

CREATE TABLE `laboratorio` (
  `ID_Laboratorio` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `correo_electronico` varchar(100) DEFAULT NULL,
  `pagina_web` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `laboratorio`
--

INSERT INTO `laboratorio` (`ID_Laboratorio`, `nombre`, `direccion`, `ciudad`, `telefono`, `correo_electronico`, `pagina_web`) VALUES
(1, 'simkl', 'CALLE 76 D SUR N 14 D-40 ESTE', 'san Cristóbal', '3224848149', 'chaisd@gmail.com', 'https://co.pinterest.com/ideas/'),
(4, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento_stock`
--

CREATE TABLE `movimiento_stock` (
  `ID_STOCK` int(11) NOT NULL,
  `ProductoID_PRODUCTO` int(11) NOT NULL,
  `fecha_hora_movimiento` datetime DEFAULT current_timestamp(),
  `cantidad` int(11) NOT NULL,
  `tipo_movimiento` varchar(100) DEFAULT NULL,
  `observaciones` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `movimiento_stock`
--

INSERT INTO `movimiento_stock` (`ID_STOCK`, `ProductoID_PRODUCTO`, `fecha_hora_movimiento`, `cantidad`, `tipo_movimiento`, `observaciones`) VALUES
(1, 1, '2024-12-05 21:50:21', 50, 'Entrada', 'Lote nuevo recibido'),
(2, 1, '2024-12-05 21:50:22', 50, 'Entrada', 'Lote nuevo recibido'),
(3, 1, '2024-12-05 21:51:50', 50, 'Entrada', 'Lote nuevo recibido'),
(4, 1, '2024-12-05 21:51:50', 50, 'Entrada', 'Lote nuevo recibido'),
(5, 1, '2024-12-05 21:51:51', 50, 'Entrada', 'Lote nuevo recibido'),
(6, 1, '2024-12-05 21:51:52', 50, 'Entrada', 'Lote nuevo recibido'),
(7, 1, '2024-12-05 21:52:46', 50, 'Entrada', 'Lote nuevo recibido'),
(8, 1, '2024-12-05 21:52:47', 50, 'Entrada', 'Lote nuevo recibido');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `ID_PRODUCTO` int(11) NOT NULL,
  `fecha_entrada` date DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `imagen_producto` varchar(255) DEFAULT NULL,
  `valor_unitario` decimal(19,0) DEFAULT NULL,
  `CategoriaID_Categoria` int(11) DEFAULT NULL,
  `LaboratorioID_Laboratorio` int(11) DEFAULT NULL,
  `IVAID_IVA` int(11) DEFAULT NULL,
  `stock_minimo` int(11) NOT NULL,
  `fecha_actualizacion` date DEFAULT NULL,
  `lote` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`ID_PRODUCTO`, `fecha_entrada`, `nombre`, `descripcion`, `imagen_producto`, `valor_unitario`, `CategoriaID_Categoria`, `LaboratorioID_Laboratorio`, `IVAID_IVA`, `stock_minimo`, `fecha_actualizacion`, `lote`) VALUES
(1, '2024-09-01', 'Electrolit', 'Suero Hidratante ', 'https://cdn2.salud180.com/sites/default/files/istock-1160558107.jpg', 10000, 112, 4, 10, 12, '2024-10-07', '12323');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `ID_ROL` int(11) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `permisos` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`ID_ROL`, `descripcion`, `permisos`) VALUES
(1, 'Admin', 'todos'),
(2, 'Empleado', 'registrar_ventas, consultar_inventario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_usuario`
--

CREATE TABLE `rol_usuario` (
  `ROLID_ROL` int(11) NOT NULL,
  `UsuarioID_Usuario` int(11) NOT NULL,
  `fecha_asignacion` date DEFAULT NULL,
  `permisos_especificos` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol_usuario`
--

INSERT INTO `rol_usuario` (`ROLID_ROL`, `UsuarioID_Usuario`, `fecha_asignacion`, `permisos_especificos`) VALUES
(1, 22, '2024-10-08', '\r\nPermiso a registro de medicamentos ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ID_Usuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `contrasena_usuario` varchar(255) NOT NULL,
  `fecha_registro` datetime DEFAULT current_timestamp(),
  `ClienteID_CLIENTE` int(11) DEFAULT NULL,
  `ROLID_ROL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ID_Usuario`, `nombre`, `apellido`, `correo`, `contrasena_usuario`, `fecha_registro`, `ClienteID_CLIENTE`, `ROLID_ROL`) VALUES
(22, 'Carlos ', 'Tovar', 'Tovar@gmail.com', 'clarlos 82137', '2024-12-03 18:54:04', 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `ID_VENTA` int(11) NOT NULL,
  `fecha_venta` date DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `subtotal` decimal(19,0) DEFAULT NULL,
  `total_venta` decimal(19,0) DEFAULT NULL,
  `cantidad_total` int(11) DEFAULT NULL,
  `ClienteID_CLIENTE` int(11) DEFAULT NULL,
  `EmpleadoID_Empleado` int(11) DEFAULT NULL,
  `EstadoID_ESTADO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_producto`
--

CREATE TABLE `venta_producto` (
  `VentaID_VENTA` int(11) NOT NULL,
  `ProductoID_PRODUCTO` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio_unitario` decimal(19,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`ID_Categoria`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`ID_CLIENTE`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`ID_Empleado`),
  ADD KEY `UsuarioID_Usuario` (`UsuarioID_Usuario`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`ID_ESTADO`);

--
-- Indices de la tabla `iva`
--
ALTER TABLE `iva`
  ADD PRIMARY KEY (`ID_IVA`);

--
-- Indices de la tabla `laboratorio`
--
ALTER TABLE `laboratorio`
  ADD PRIMARY KEY (`ID_Laboratorio`);

--
-- Indices de la tabla `movimiento_stock`
--
ALTER TABLE `movimiento_stock`
  ADD PRIMARY KEY (`ID_STOCK`),
  ADD KEY `ProductoID_PRODUCTO` (`ProductoID_PRODUCTO`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`ID_PRODUCTO`),
  ADD KEY `CategoriaID_Categoria` (`CategoriaID_Categoria`),
  ADD KEY `LaboratorioID_Laboratorio` (`LaboratorioID_Laboratorio`),
  ADD KEY `IVAID_IVA` (`IVAID_IVA`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`ID_ROL`);

--
-- Indices de la tabla `rol_usuario`
--
ALTER TABLE `rol_usuario`
  ADD PRIMARY KEY (`ROLID_ROL`,`UsuarioID_Usuario`),
  ADD KEY `UsuarioID_Usuario` (`UsuarioID_Usuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID_Usuario`),
  ADD UNIQUE KEY `correo` (`correo`),
  ADD KEY `ROLID_ROL` (`ROLID_ROL`),
  ADD KEY `ClienteID_CLIENTE` (`ClienteID_CLIENTE`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`ID_VENTA`),
  ADD KEY `ClienteID_CLIENTE` (`ClienteID_CLIENTE`),
  ADD KEY `EmpleadoID_Empleado` (`EmpleadoID_Empleado`),
  ADD KEY `EstadoID_ESTADO` (`EstadoID_ESTADO`);

--
-- Indices de la tabla `venta_producto`
--
ALTER TABLE `venta_producto`
  ADD PRIMARY KEY (`VentaID_VENTA`,`ProductoID_PRODUCTO`),
  ADD KEY `ProductoID_PRODUCTO` (`ProductoID_PRODUCTO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `ID_Categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `ID_CLIENTE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `ID_Empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `ID_ESTADO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `iva`
--
ALTER TABLE `iva`
  MODIFY `ID_IVA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `laboratorio`
--
ALTER TABLE `laboratorio`
  MODIFY `ID_Laboratorio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `movimiento_stock`
--
ALTER TABLE `movimiento_stock`
  MODIFY `ID_STOCK` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `ID_PRODUCTO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `ID_ROL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `ID_VENTA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`UsuarioID_Usuario`) REFERENCES `usuario` (`ID_Usuario`);

--
-- Filtros para la tabla `movimiento_stock`
--
ALTER TABLE `movimiento_stock`
  ADD CONSTRAINT `movimiento_stock_ibfk_1` FOREIGN KEY (`ProductoID_PRODUCTO`) REFERENCES `producto` (`ID_PRODUCTO`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`CategoriaID_Categoria`) REFERENCES `categoria` (`ID_Categoria`),
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`LaboratorioID_Laboratorio`) REFERENCES `laboratorio` (`ID_Laboratorio`),
  ADD CONSTRAINT `producto_ibfk_3` FOREIGN KEY (`IVAID_IVA`) REFERENCES `iva` (`ID_IVA`);

--
-- Filtros para la tabla `rol_usuario`
--
ALTER TABLE `rol_usuario`
  ADD CONSTRAINT `rol_usuario_ibfk_1` FOREIGN KEY (`ROLID_ROL`) REFERENCES `rol` (`ID_ROL`),
  ADD CONSTRAINT `rol_usuario_ibfk_2` FOREIGN KEY (`UsuarioID_Usuario`) REFERENCES `usuario` (`ID_Usuario`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`ROLID_ROL`) REFERENCES `rol` (`ID_ROL`),
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`ClienteID_CLIENTE`) REFERENCES `cliente` (`ID_CLIENTE`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`ClienteID_CLIENTE`) REFERENCES `cliente` (`ID_CLIENTE`),
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`EmpleadoID_Empleado`) REFERENCES `empleado` (`ID_Empleado`),
  ADD CONSTRAINT `venta_ibfk_3` FOREIGN KEY (`EstadoID_ESTADO`) REFERENCES `estado` (`ID_ESTADO`);

--
-- Filtros para la tabla `venta_producto`
--
ALTER TABLE `venta_producto`
  ADD CONSTRAINT `venta_producto_ibfk_1` FOREIGN KEY (`VentaID_VENTA`) REFERENCES `venta` (`ID_VENTA`),
  ADD CONSTRAINT `venta_producto_ibfk_2` FOREIGN KEY (`ProductoID_PRODUCTO`) REFERENCES `producto` (`ID_PRODUCTO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
