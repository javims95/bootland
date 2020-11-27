-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-11-2020 a las 22:21:14
-- Versión del servidor: 10.4.16-MariaDB
-- Versión de PHP: 7.3.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `panther`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` double NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(400) NOT NULL,
  `imagen` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `descripcion`, `imagen`) VALUES
(1, 'Mujer', 'Ropa de mujer', ''),
(2, 'Caballeros', 'sdfsdfsf', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` int(11) NOT NULL,
  `name` varchar(70) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `subject` varchar(150) DEFAULT NULL,
  `message` varchar(350) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cupones`
--

CREATE TABLE `cupones` (
  `id` int(11) NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `valor` varchar(50) NOT NULL,
  `fecha_vencimiento` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cupones`
--

INSERT INTO `cupones` (`id`, `codigo`, `status`, `tipo`, `valor`, `fecha_vencimiento`) VALUES
(1, 'PNT293100', 'activo', 'moneda', '10', '2020-11-25'),
(2, 'PNT65102', 'activo', 'moneda', '30', '2020-11-29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envios`
--

CREATE TABLE `envios` (
  `id_envio` int(11) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `cp` varchar(5) NOT NULL,
  `id_venta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `envios`
--

INSERT INTO `envios` (`id_envio`, `pais`, `company`, `direccion`, `estado`, `cp`, `id_venta`) VALUES
(1, '2', 'Jamusa', 'Calle Burguillos, 26', 'Málaga', '29190', 2),
(2, '2', 'Vaporlibre', 'C/ Abetos 18', 'MÁLAGA', '29190', 3),
(3, '1', '', '', '', '', 4),
(4, '1', '', '', '', '', 5),
(5, '1', '', '', '', '', 6),
(6, '1', '', '', '', '', 7),
(7, '1', '', '', '', '', 8),
(8, '', '', '', '', '', 1),
(9, '1', '', '', '', '', 2),
(10, '1', '', '', '', '', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(300) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` double NOT NULL,
  `imagen` varchar(200) NOT NULL,
  `inventario` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `talla` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `imagen`, `inventario`, `id_categoria`, `talla`, `color`) VALUES
(1, 'Producto 0', 'Esta es la descripción para el producto nº0', 223, 'shoe.png', 30, 1, 'L', 'Blue'),
(2, 'Producto 1', 'Esta es la descripción para el producto nº1', 10, 'shoe.png', 82, 1, 'L', 'Blue'),
(3, 'Producto 2', 'Esta es la descripción para el producto nº2', 43, 'shoe.png', 89, 1, 'L', 'Blue'),
(4, 'Producto 3', 'Esta es la descripción para el producto nº3', 211, 'shoe.png', 50, 1, 'L', 'Blue'),
(5, 'Producto 4', 'Esta es la descripción para el producto nº4', 54, 'shoe.png', 81, 1, 'L', 'Blue'),
(6, 'Producto 5', 'Esta es la descripción para el producto nº5', 244, 'shoe.png', 3, 1, 'L', 'Blue'),
(7, 'Producto 6', 'Esta es la descripción para el producto nº6', 222, 'shoe.png', 75, 1, 'L', 'Blue'),
(9, 'Producto 8', 'Esta es la descripción para el producto nº8', 38, 'shoe.png', 47, 1, 'L', 'Blue'),
(10, 'Producto 9', 'Esta es la descripción para el producto nº9', 148, 'shoe.png', 78, 1, 'L', 'Blue'),
(11, 'Producto 10', 'Esta es la descripción para el producto nº10', 64, 'shoe.png', 47, 1, 'L', 'Blue'),
(12, 'Producto 11', 'Esta es la descripción para el producto nº11', 133, 'shoe.png', 85, 1, 'L', 'Blue'),
(13, 'Producto 12', 'Esta es la descripción para el producto nº12', 155, 'shoe.png', 3, 1, 'L', 'Blue'),
(14, 'Producto 13', 'Esta es la descripción para el producto nº13', 106, 'shoe.png', 19, 1, 'L', 'Blue'),
(15, 'Producto 14', 'Esta es la descripción para el producto nº14', 107, 'shoe.png', 78, 1, 'L', 'Blue'),
(16, 'Producto 15', 'Esta es la descripción para el producto nº15', 208, 'shoe.png', 87, 1, 'L', 'Blue'),
(17, 'Producto 16', 'Esta es la descripción para el producto nº16', 147, 'shoe.png', 58, 1, 'L', 'Blue'),
(18, 'Producto 17', 'Esta es la descripción para el producto nº17', 181, 'shoe.png', 54, 1, 'L', 'Blue'),
(19, 'Producto 18', 'Esta es la descripción para el producto nº18', 232, 'shoe.png', 20, 1, 'L', 'Blue'),
(20, 'Producto 19', 'Esta es la descripción para el producto nº19', 196, 'shoe.png', 68, 1, 'L', 'Blue'),
(21, 'Producto 20', 'Esta es la descripción para el producto nº20', 61, 'shoe.png', 1, 1, 'L', 'Blue'),
(22, 'Producto 21', 'Esta es la descripción para el producto nº21', 92, 'shoe.png', 18, 1, 'L', 'Blue'),
(23, 'Producto 22', 'Esta es la descripción para el producto nº22', 181, 'shoe.png', 38, 1, 'L', 'Blue'),
(24, 'Producto 23', 'Esta es la descripción para el producto nº23', 47, 'shoe.png', 53, 1, 'L', 'Blue'),
(25, 'Producto 24', 'Esta es la descripción para el producto nº24', 64, 'shoe.png', 23, 1, 'L', 'Blue'),
(26, 'Producto 25', 'Esta es la descripción para el producto nº25', 40, 'shoe.png', 43, 1, 'L', 'Blue'),
(27, 'Producto 26', 'Esta es la descripción para el producto nº26', 184, 'shoe.png', 82, 1, 'L', 'Blue'),
(28, 'Producto 27', 'Esta es la descripción para el producto nº27', 22, 'shoe.png', 51, 1, 'L', 'Blue'),
(29, 'Producto 28', 'Esta es la descripción para el producto nº28', 173, 'shoe.png', 40, 1, 'L', 'Blue'),
(30, 'Producto 29', 'Esta es la descripción para el producto nº29', 154, 'shoe.png', 56, 1, 'L', 'Blue'),
(31, 'Producto 30', 'Esta es la descripción para el producto nº30', 195, 'shoe.png', 45, 1, 'L', 'Blue'),
(32, 'Producto 31', 'Esta es la descripción para el producto nº31', 234, 'shoe.png', 49, 1, 'L', 'Blue'),
(33, 'Producto 32', 'Esta es la descripción para el producto nº32', 195, 'shoe.png', 82, 1, 'L', 'Blue'),
(34, 'Producto 33', 'Esta es la descripción para el producto nº33', 150, 'shoe.png', 13, 1, 'L', 'Blue'),
(35, 'Producto 34', 'Esta es la descripción para el producto nº34', 132, 'shoe.png', 1, 1, 'L', 'Blue'),
(36, 'Producto 35', 'Esta es la descripción para el producto nº35', 183, 'shoe.png', 10, 1, 'L', 'Blue'),
(37, 'Producto 36', 'Esta es la descripción para el producto nº36', 103, 'shoe.png', 49, 1, 'L', 'Blue'),
(38, 'Producto 37', 'Esta es la descripción para el producto nº37', 40, 'shoe.png', 64, 1, 'L', 'Blue'),
(39, 'Producto 38', 'Esta es la descripción para el producto nº38', 187, 'shoe.png', 71, 1, 'L', 'Blue'),
(40, 'Producto 39', 'Esta es la descripción para el producto nº39', 63, 'shoe.png', 69, 1, 'L', 'Blue'),
(41, 'Producto 40', 'Esta es la descripción para el producto nº40', 118, 'shoe.png', 62, 1, 'L', 'Blue'),
(42, 'Producto 41', 'Esta es la descripción para el producto nº41', 185, 'shoe.png', 77, 1, 'L', 'Blue'),
(43, 'Producto 42', 'Esta es la descripción para el producto nº42', 82, 'shoe.png', 16, 1, 'L', 'Blue'),
(44, 'Producto 43', 'Esta es la descripción para el producto nº43', 119, 'shoe.png', 29, 1, 'L', 'Blue'),
(45, 'Producto 44', 'Esta es la descripción para el producto nº44', 152, 'shoe.png', 40, 1, 'L', 'Blue'),
(46, 'Producto 45', 'Esta es la descripción para el producto nº45', 122, 'shoe.png', 59, 1, 'L', 'Blue'),
(47, 'Producto 46', 'Esta es la descripción para el producto nº46', 243, 'shoe.png', 17, 1, 'L', 'Blue'),
(48, 'Producto 47', 'Esta es la descripción para el producto nº47', 82, 'shoe.png', 80, 1, 'L', 'Blue'),
(49, 'Producto 48', 'Esta es la descripción para el producto nº48', 35, 'shoe.png', 72, 1, 'L', 'Blue');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_venta`
--

CREATE TABLE `productos_venta` (
  `id` int(11) NOT NULL,
  `id_venta` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` double NOT NULL,
  `precio` double NOT NULL,
  `subtotal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos_venta`
--

INSERT INTO `productos_venta` (`id`, `id_venta`, `id_producto`, `cantidad`, `precio`, `subtotal`) VALUES
(1, 1, 50, 1, 84, 84),
(2, 1, 46, 1, 122, 122),
(3, 2, 50, 1, 84, 84),
(4, 2, 46, 1, 122, 122),
(5, 3, 49, 4, 35, 140),
(6, 3, 50, 1, 84, 84),
(7, 3, 44, 1, 119, 119),
(8, 4, 50, 1, 84, 84),
(9, 5, 49, 1, 35, 35),
(10, 6, 49, 1, 35, 35),
(11, 8, 55, 1, 45, 45),
(12, 2, 49, 3, 35, 105),
(13, 3, 45, 1, 152, 152),
(14, 3, 46, 1, 122, 122);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `telefono` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `img_perfil` varchar(300) NOT NULL,
  `nivel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `telefono`, `email`, `password`, `img_perfil`, `nivel`) VALUES
(3, 'Adrián Carrascoooo', '633863859', 'javier_ms95@hotmail.com', '395a0f552e5739f8be17ed988bf73688b3720c89', 'user7-128x128.jpg', 'admin'),
(4, ' ', '', 'javier_ms95@hotmail.com', '395a0f552e5739f8be17ed988bf73688b3720c89', 'person_3.jpg', 'cliente'),
(5, ' ', '', 'javier_ms95@hotmail.com', '395a0f552e5739f8be17ed988bf73688b3720c89', 'person_2.jpg', ''),
(6, ' ', '', 'javier_ms95@hotmail.com', '395a0f552e5739f8be17ed988bf73688b3720c89', '', ''),
(9, ' ', '', 'javier_ms95@hotmail.com', '395a0f552e5739f8be17ed988bf73688b3720c89', '', ''),
(11, 'fgdsfg', '693216252', 'javier_ms95@hotmail.com', '506da6907f960f50cad09ca45512519f91515237', '1606407772.jpg', 'cliente'),
(12, ' ', '', 'javier_ms95@hotmail.com', '395a0f552e5739f8be17ed988bf73688b3720c89', '', ''),
(13, ' ', '', 'javier_ms95@hotmail.com', '395a0f552e5739f8be17ed988bf73688b3720c89', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `total` double NOT NULL,
  `fecha` datetime NOT NULL,
  `status` varchar(20) NOT NULL,
  `id_pago` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `id_usuario`, `total`, `fecha`, `status`, `id_pago`) VALUES
(1, 10, 0, '2020-11-25 08:11:07', 'Pagado', 0),
(2, 12, 105, '2020-11-26 05:11:25', 'Pagado', 0),
(3, 13, 274, '2020-11-26 06:11:11', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitas`
--

CREATE TABLE `visitas` (
  `idvisitas` int(7) NOT NULL,
  `enlace` varchar(300) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `visitas`
--

INSERT INTO `visitas` (`idvisitas`, `enlace`, `fecha`) VALUES
(1, 'localhost/panther/', '2020-11-25 08:11:52'),
(2, 'localhost/panther/index.php', '2020-11-26 08:11:33');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cupones`
--
ALTER TABLE `cupones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `envios`
--
ALTER TABLE `envios`
  ADD PRIMARY KEY (`id_envio`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos_venta`
--
ALTER TABLE `productos_venta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `visitas`
--
ALTER TABLE `visitas`
  ADD PRIMARY KEY (`idvisitas`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cupones`
--
ALTER TABLE `cupones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `envios`
--
ALTER TABLE `envios`
  MODIFY `id_envio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `productos_venta`
--
ALTER TABLE `productos_venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `visitas`
--
ALTER TABLE `visitas`
  MODIFY `idvisitas` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
