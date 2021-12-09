-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-12-2021 a las 01:41:31
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bar21`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos`
--

CREATE TABLE `gastos` (
  `id` int(11) NOT NULL,
  `gasto` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `fecha` varchar(100) NOT NULL,
  `hora` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `gastos`
--

INSERT INTO `gastos` (`id`, `gasto`, `descripcion`, `fecha`, `hora`) VALUES
(1, 420, 'CartÃ³n de caguamas', '2021-12-04', '04:12:34 pm'),
(2, 250, 'Vasos', '2021-12-04', '04:20:58 pm'),
(3, 300, 'Refrescos', '2021-12-04', '04:21:21 pm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `nombreP` varchar(100) NOT NULL,
  `precioP` int(11) NOT NULL,
  `descripcionP` varchar(100) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `nombreP`, `precioP`, `descripcionP`, `imagen`) VALUES
(2, 'Caguama', 35, 'Solo una caguama sin envase', 'caguama.jpg'),
(3, 'Promo de caguamas', 120, '3 caguamas por el precio de 120', 'PromoCuagama.jpg'),
(4, 'Michelada 1L', 65, '', 'micheladas.jpg'),
(5, 'Michelada 1/2L', 45, '', 'micheladas.jpg'),
(6, 'Pitufo de 1L', 65, 'bebida de vodka', 'pitufo.jpg'),
(13, 'Pitufo de 1/2L', 45, '', 'pitufo.jpg'),
(14, 'Smirnoff', 250, 'Boteella de smirnoff con refresco de 2lts squirt', 'smirnoff.jfif'),
(16, 'Tequila Puerta negra', 210, '', 'Puerta negra.jfif');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `user`, `pass`) VALUES
(1, 'marco', 'caco');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `nombreP` varchar(100) NOT NULL,
  `precioP` int(11) NOT NULL,
  `cantidadP` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `fecha` varchar(100) NOT NULL,
  `hora` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `nombreP`, `precioP`, `cantidadP`, `total`, `fecha`, `hora`) VALUES
(1, 'Caguama', 45, 2, 0, '11-18-2021', '11:22:28 am'),
(2, 'Promo de caguamas', 120, 2, 0, '11-18-2021', '11:23:04 am'),
(3, 'Michelada 1/2L', 45, 2, 90, '11-18-2021', '11:23:43 am'),
(4, 'Pitufo de 1/2L', 45, 10, 450, '11-18-2021', '12:10:32 pm'),
(5, 'Pitufo de 1L', 65, 3, 195, '11-18-2021', '12:33:16 pm'),
(6, 'Pitufo de 1/2L', 45, 10, 450, '11-18-2021', '12:40:15 pm'),
(7, 'Promo de caguamas', 120, 2, 240, '11-18-2021', '12:40:47 pm'),
(8, 'Caguama', 45, 10, 450, '11-18-2021', '12:43:33 pm'),
(9, 'Pitufo de 1L', 65, 3, 195, '11-18-2021', '12:47:37 pm'),
(10, 'Pitufo de 1/2L', 45, 10, 450, '11-18-2021', '12:48:53 pm'),
(11, 'Michelada 1/2L', 45, 2, 90, '2021-11-18', '03:44:47 pm'),
(12, 'Caguama', 45, 2, 90, '2021-11-18', '04:09:42 pm'),
(13, 'Pitufo de 1/2L', 45, 10, 450, '2021-11-18', '04:09:59 pm'),
(14, 'Michelada 1L', 65, 100, 6500, '2021-11-18', '04:46:37 pm'),
(15, 'Pitufo de 1/2L', 45, 1, 45, '2021-11-18', '04:57:30 pm'),
(16, 'Pitufo de 1L', 65, 5, 325, '2021-11-18', '04:57:48 pm'),
(17, 'Promo de caguamas', 120, 1, 120, '2021-11-18', '05:01:46 pm'),
(18, '', 0, 10, 0, '2021-11-19', '09:22:20 pm'),
(19, '', 0, 50, 0, '2021-11-19', '09:23:30 pm'),
(20, '', 0, 1, 0, '2021-11-19', '09:25:51 pm'),
(21, '', 0, 5, 0, '2021-11-19', '09:28:41 pm'),
(22, 'Pitufo de 1L', 65, 2, 130, '2021-11-19', '09:33:59 pm'),
(23, 'Promo de cantaritos', 80, 1, 80, '2021-11-19', '09:44:46 pm'),
(24, 'Promo de cantaritos', 80, 10, 800, '2021-11-19', '09:45:39 pm'),
(25, 'Michelada 1L', 65, 2, 130, '2021-11-19', '10:27:52 pm'),
(26, 'Promo de caguamas', 120, 5, 600, '2021-11-19', '10:32:32 pm'),
(27, 'Promo de caguamas', 120, 3, 360, '2021-12-04', '02:28:53 pm'),
(28, 'Smirnoff', 250, 1, 250, '2021-12-04', '03:42:17 pm'),
(29, 'Promo de caguamas', 120, 3, 360, '2021-12-04', '04:21:45 pm'),
(30, 'Michelada 1/2L', 45, 2, 90, '2021-12-04', '04:22:04 pm');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `gastos`
--
ALTER TABLE `gastos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
