-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: sql207.infinityfree.com
-- Tiempo de generación: 25-05-2025 a las 16:50:45
-- Versión del servidor: 10.6.19-MariaDB
-- Versión de PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `if0_39067954_miniweb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `patanegras`
--

CREATE TABLE `patanegras` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `equipo` varchar(100) DEFAULT NULL,
  `posicion` varchar(50) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `patanegras`
--

INSERT INTO `patanegras` (`id`, `nombre`, `equipo`, `posicion`, `descripcion`, `foto`) VALUES
(1, 'Fali', 'Cadiz', 'Defensa', 'Conocido por ser uno de los jugadores más importantes del Cádiz, siempre cumple en el terreno de juego con su función de parar a los delanteros.', 'fali.jpg'),
(2, 'Damián Suárez', 'Peñarol', 'Defensa', 'Ex jugador del Getafe, en todos los partidos los delanteros del equipo rival recibían unos cuantos palos de su parte.', 'damian.jpg'),
(3, 'Diego Costa', 'Sin equipo', 'Delantero', 'Jugador que peleaba todos los balones en ataque y le daba igual si tenía que lesionar a alguien.', 'diego.jpg'),
(4, 'Casemiro', 'Manchester United', 'Mediocentro', 'Mítico ex jugador del Real Madrid, su única función era hacer que los delanteros del equipo rival no ataquen a base de patadas criminales.', 'casemiro.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `patanegras`
--
ALTER TABLE `patanegras`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `patanegras`
--
ALTER TABLE `patanegras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
