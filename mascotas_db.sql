-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-01-2017 a las 07:18:35
-- Versión del servidor: 10.0.17-MariaDB
-- Versión de PHP: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mascotas_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombres` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cedula` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `edad` int(11) NOT NULL,
  `telefono_habitacion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telefono_movil` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sexo` enum('masculino','femenino') COLLATE utf8_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estatus` enum('activo','inactivo') COLLATE utf8_unicode_ci NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombres`, `apellido`, `cedula`, `edad`, `telefono_habitacion`, `telefono_movil`, `sexo`, `direccion`, `descripcion`, `estatus`, `id_user`, `created_at`, `updated_at`) VALUES
(2, 'Aquiles', 'Brinco', '15165484', 10, '12312312', '123123123', 'masculino', 'asdads', 'adasdadsadsdasd', 'activo', 3, '2017-01-20 09:47:16', '2017-01-20 10:02:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id_departamento` int(11) NOT NULL,
  `nombre_departamento` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombres` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cedula` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `edad` int(11) NOT NULL,
  `telefono_habitacion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telefono_movil` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sexo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_departamento` int(11) NOT NULL,
  `id_municipio` int(11) NOT NULL,
  `estatus` int(11) NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombres`, `apellido`, `cedula`, `correo`, `edad`, `telefono_habitacion`, `telefono_movil`, `sexo`, `direccion`, `descripcion`, `id_departamento`, `id_municipio`, `estatus`, `id_user`, `created_at`, `updated_at`) VALUES
(1, 'Prueba1', 'Prueba1Ap', '123456', 'prueba@gmail.com', 55, '16511', '156651', 'mas', 'sadasd', 'asdads', 0, 0, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mas_acceso`
--

CREATE TABLE `mas_acceso` (
  `id_acceso` int(11) NOT NULL,
  `id_perfil` int(11) DEFAULT NULL,
  `id_modulo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mas_contrato`
--

CREATE TABLE `mas_contrato` (
  `id_contrato` int(11) NOT NULL,
  `id_clientes` int(11) DEFAULT NULL,
  `id_empleado` int(11) DEFAULT NULL,
  `id_servicios` int(11) DEFAULT NULL,
  `fecha_inicio_contrato` varchar(255) DEFAULT NULL,
  `fecha_fin_contrato` varchar(255) DEFAULT NULL,
  `descripcion_contrato` varchar(255) DEFAULT NULL,
  `estatus_contrato` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mas_contrato_estatus`
--

CREATE TABLE `mas_contrato_estatus` (
  `id_contrato_estatus` int(11) NOT NULL,
  `descripcion_contrato_estatus` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mas_mascota`
--

CREATE TABLE `mas_mascota` (
  `id_mascota` int(11) NOT NULL,
  `id_dueno` int(11) DEFAULT NULL,
  `nombre_mascota` varchar(255) DEFAULT NULL,
  `especie_mascota` int(11) DEFAULT NULL,
  `sexo_mascota` varchar(255) DEFAULT NULL,
  `edad_mascota` varchar(255) DEFAULT NULL,
  `raza_mascota` varchar(255) DEFAULT NULL,
  `estatus_mascota` int(11) DEFAULT NULL,
  `descripcion_mascota` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mas_mascota_especie`
--

CREATE TABLE `mas_mascota_especie` (
  `id_mascota_especie` int(11) NOT NULL,
  `id_mascota` int(11) NOT NULL,
  `especie_mascota` varchar(255) DEFAULT NULL,
  `estatus_mascota` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mas_mascota_habitos`
--

CREATE TABLE `mas_mascota_habitos` (
  `id_mascota_habitos` int(11) NOT NULL,
  `id_mascota` int(11) DEFAULT NULL,
  `descripcion_mascota_habitos` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mas_mascota_salud`
--

CREATE TABLE `mas_mascota_salud` (
  `id_mascota_salud` int(11) NOT NULL,
  `id_mascota` int(11) DEFAULT NULL,
  `problema_salud_mascota` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mas_modulo`
--

CREATE TABLE `mas_modulo` (
  `id_modulo` int(11) NOT NULL,
  `nombre_modulo` varchar(255) DEFAULT NULL,
  `estatus_modulo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mas_observaciones_contrato`
--

CREATE TABLE `mas_observaciones_contrato` (
  `id_observaciones_contrato` int(11) NOT NULL,
  `id_contrato` int(11) DEFAULT NULL,
  `id_empleado` int(11) DEFAULT NULL,
  `id_clientes` int(11) DEFAULT NULL,
  `descripcion_observaciones_contrato` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mas_perfil`
--

CREATE TABLE `mas_perfil` (
  `id_perfil` int(11) NOT NULL,
  `usuario_perfil` varchar(255) DEFAULT NULL,
  `estatus_perfil` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mas_servicios`
--

CREATE TABLE `mas_servicios` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre_servicios` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `costo_servicios` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion_servicios` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estatus_servicios` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mas_servicios`
--

INSERT INTO `mas_servicios` (`id`, `nombre_servicios`, `costo_servicios`, `descripcion_servicios`, `estatus_servicios`, `created_at`, `updated_at`) VALUES
(2, 'Cuidado de Mascota', '3000', 'Cuidado', 'Activo', '2017-01-12 07:15:19', '2017-01-12 07:15:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mas_servicios_empleados`
--

CREATE TABLE `mas_servicios_empleados` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_servicios` int(10) UNSIGNED NOT NULL,
  `id_empleados` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mas_servicios_empleados`
--

INSERT INTO `mas_servicios_empleados` (`id`, `id_servicios`, `id_empleados`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2017-01-18 04:00:00', '2017-01-18 04:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2017_01_12_001622_add_categoria_table', 1),
('2017_01_12_002936_add_empleados_table', 2),
('2017_01_12_002953_add_clientes_table', 2),
('2017_01_14_045618_create_oauth_identities_table', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE `municipio` (
  `id_municipio` int(11) NOT NULL,
  `id_departamento` int(11) DEFAULT NULL,
  `nombre_municipio` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_identities`
--

CREATE TABLE `oauth_identities` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provider_user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `access_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('cliente','empleado','admin') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'cliente',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Prueba', 'prueba@gmail.com', '$2y$10$qrB8NVHhBxT1UGHUxlqxO.ZEA3qoUHrWWjFiJeL4o/DFcpwnBz9xO', 'cliente', NULL, '2017-01-12 06:54:52', '2017-01-20 08:31:55'),
(2, 'Admin_prueba', 'adminprueba@gmail.com', '$2y$10$.dVOy51VXS1VHSxl.K5vwuJc3Tm.qHm1JTfBimPrbtxQmXxOn7Gtq', 'admin', NULL, '2017-01-12 06:56:19', '2017-01-12 06:56:19'),
(3, 'Prueba 2', 'prueba2@gmail.com', '$2y$10$rosTAMV1zOOPZNJ5MeG/G.95gADIGOluqbAc4wwLZkd0NSnwdCZ4u', 'cliente', NULL, '2017-01-12 09:29:18', '2017-01-12 09:29:18'),
(9, 'Prueba4', 'prueba4@gmail.com', '$2y$10$BoEvSp6u.YSwLCKoK7aLoObKxjryA0UCa0cPC0cFg6/zpJ1A0a5ly', 'empleado', NULL, '2017-01-20 05:04:04', '2017-01-20 05:04:04');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id_departamento`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `empleados_mas_id_user_foreign` (`id_user`);

--
-- Indices de la tabla `mas_acceso`
--
ALTER TABLE `mas_acceso`
  ADD PRIMARY KEY (`id_acceso`);

--
-- Indices de la tabla `mas_contrato`
--
ALTER TABLE `mas_contrato`
  ADD PRIMARY KEY (`id_contrato`);

--
-- Indices de la tabla `mas_contrato_estatus`
--
ALTER TABLE `mas_contrato_estatus`
  ADD PRIMARY KEY (`id_contrato_estatus`);

--
-- Indices de la tabla `mas_mascota`
--
ALTER TABLE `mas_mascota`
  ADD PRIMARY KEY (`id_mascota`);

--
-- Indices de la tabla `mas_mascota_especie`
--
ALTER TABLE `mas_mascota_especie`
  ADD PRIMARY KEY (`id_mascota_especie`);

--
-- Indices de la tabla `mas_mascota_habitos`
--
ALTER TABLE `mas_mascota_habitos`
  ADD PRIMARY KEY (`id_mascota_habitos`);

--
-- Indices de la tabla `mas_mascota_salud`
--
ALTER TABLE `mas_mascota_salud`
  ADD PRIMARY KEY (`id_mascota_salud`);

--
-- Indices de la tabla `mas_modulo`
--
ALTER TABLE `mas_modulo`
  ADD PRIMARY KEY (`id_modulo`);

--
-- Indices de la tabla `mas_observaciones_contrato`
--
ALTER TABLE `mas_observaciones_contrato`
  ADD PRIMARY KEY (`id_observaciones_contrato`);

--
-- Indices de la tabla `mas_perfil`
--
ALTER TABLE `mas_perfil`
  ADD PRIMARY KEY (`id_perfil`);

--
-- Indices de la tabla `mas_servicios`
--
ALTER TABLE `mas_servicios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mas_servicios_empleados`
--
ALTER TABLE `mas_servicios_empleados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mas_servicios_empleados_id_servicios_foreign` (`id_servicios`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`id_municipio`);

--
-- Indices de la tabla `oauth_identities`
--
ALTER TABLE `oauth_identities`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id_departamento` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `mas_acceso`
--
ALTER TABLE `mas_acceso`
  MODIFY `id_acceso` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mas_contrato`
--
ALTER TABLE `mas_contrato`
  MODIFY `id_contrato` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mas_contrato_estatus`
--
ALTER TABLE `mas_contrato_estatus`
  MODIFY `id_contrato_estatus` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mas_mascota`
--
ALTER TABLE `mas_mascota`
  MODIFY `id_mascota` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mas_mascota_especie`
--
ALTER TABLE `mas_mascota_especie`
  MODIFY `id_mascota_especie` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mas_mascota_habitos`
--
ALTER TABLE `mas_mascota_habitos`
  MODIFY `id_mascota_habitos` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mas_mascota_salud`
--
ALTER TABLE `mas_mascota_salud`
  MODIFY `id_mascota_salud` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mas_modulo`
--
ALTER TABLE `mas_modulo`
  MODIFY `id_modulo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mas_perfil`
--
ALTER TABLE `mas_perfil`
  MODIFY `id_perfil` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mas_servicios`
--
ALTER TABLE `mas_servicios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `mas_servicios_empleados`
--
ALTER TABLE `mas_servicios_empleados`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
  MODIFY `id_municipio` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `oauth_identities`
--
ALTER TABLE `oauth_identities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_mas_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `mas_servicios_empleados`
--
ALTER TABLE `mas_servicios_empleados`
  ADD CONSTRAINT `mas_servicios_empleados_id_servicios_foreign` FOREIGN KEY (`id_servicios`) REFERENCES `mas_servicios` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
