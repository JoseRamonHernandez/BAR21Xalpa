-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-11-2021 a las 00:12:36
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
(2, 'Caguama', 45, 'Solo una caguama', 'caguama.jpg'),
(3, 'Promo de caguamas', 120, '3 caguamas por el precio de 120', 'PromoCuagama.jpg'),
(4, 'Michelada 1L', 65, '', 'micheladas.jpg'),
(5, 'Michelada 1/2L', 45, '', 'micheladas.jpg'),
(6, 'Pitufo de 1L', 65, 'bebida de vodka', 'pitufo.jpg'),
(10, 'Pitufo de 1/2L', 45, 'pitufo de medio litro en vaso de plastico', 'pitufo.jpg');

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
(17, 'Promo de caguamas', 120, 1, 120, '2021-11-18', '05:01:46 pm');

--
-- Índices para tablas volcadas
--

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
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
