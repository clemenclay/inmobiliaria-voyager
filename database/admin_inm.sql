-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 11-12-2018 a las 22:39:25
-- Versión del servidor: 5.7.24-0ubuntu0.16.04.1
-- Versión de PHP: 7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `admin_inm`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `barrios`
--

CREATE TABLE `barrios` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `barrios`
--

INSERT INTO `barrios` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Almagro', '2018-12-10 01:06:31', '2018-12-10 01:06:31'),
(2, 'Abasto', '2018-12-10 01:06:49', '2018-12-10 01:06:49'),
(3, 'Belgrano', '2018-12-10 01:06:56', '2018-12-10 01:06:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsTo","column":"role_id","key":"id","label":"display_name","pivot_table":"roles","pivot":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsToMany","column":"id","key":"id","label":"display_name","pivot_table":"user_roles","pivot":"1","taggable":"0"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, NULL, 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(23, 4, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(24, 4, 'titulo', 'text', 'Titulo', 0, 1, 1, 1, 1, 1, '{}', 2),
(25, 4, 'imagenes', 'multiple_images', 'Imagenes', 0, 1, 1, 1, 1, 1, '{}', 3),
(26, 4, 'precio', 'number', 'Precio', 0, 1, 1, 1, 1, 1, '{}', 4),
(27, 4, 'moneda_id', 'select_dropdown', 'Moneda Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(28, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 7),
(29, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(30, 5, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(31, 5, 'nombre', 'text', 'Nombre', 0, 1, 1, 1, 1, 1, '{}', 2),
(32, 5, 'valor', 'number', 'Valor', 0, 1, 1, 1, 1, 1, '{}', 3),
(33, 5, 'imagen', 'image', 'Imagen', 0, 1, 1, 1, 1, 1, '{}', 4),
(34, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(35, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(36, 4, 'propiedad_belongsto_moneda_relationship', 'relationship', 'Moneda', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Moneda","table":"monedas","type":"belongsTo","column":"moneda_id","key":"id","label":"nombre","pivot_table":"data_rows","pivot":"0","taggable":"0"}', 5),
(45, 10, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(46, 10, 'nombre', 'text', 'Nombre', 1, 1, 1, 1, 1, 1, '{}', 2),
(47, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(48, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(49, 4, 'barrio_id', 'select_dropdown', 'Barrio Id', 0, 1, 1, 1, 1, 1, '{}', 11),
(50, 4, 'propiedad_belongsto_barrio_relationship', 'relationship', 'Barrio', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Barrio","table":"barrios","type":"belongsTo","column":"barrio_id","key":"id","label":"nombre","pivot_table":"barrios","pivot":"0","taggable":"0"}', 8),
(51, 11, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(52, 11, 'nombre', 'text', 'Nombre', 1, 1, 1, 1, 1, 1, '{}', 2),
(53, 11, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
(54, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(55, 4, 'propiedad_belongsto_tipo_operacion_relationship', 'relationship', 'Tipo Operacion', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\TipoOperacion","table":"tipo_operacions","type":"belongsTo","column":"tipo_operacion_id","key":"id","label":"nombre","pivot_table":"barrios","pivot":"0","taggable":"0"}', 10),
(56, 4, 'tipo_operacion_id', 'select_dropdown', 'Tipo Operacion', 0, 1, 1, 1, 1, 1, '{}', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2018-12-09 14:24:39', '2018-12-09 14:24:39'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-12-09 14:24:39', '2018-12-09 14:24:39'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-12-09 14:24:39', '2018-12-09 14:24:39'),
(4, 'propiedads', 'propiedads', 'Propiedad', 'Propiedads', NULL, 'App\\Propiedad', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null}', '2018-12-09 14:30:26', '2018-12-10 14:14:03'),
(5, 'monedas', 'monedas', 'Moneda', 'Monedas', NULL, 'App\\Moneda', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null}', '2018-12-09 17:43:12', '2018-12-09 17:43:12'),
(7, 'barrio', 'barrio', 'Barrio', 'Barrios', NULL, 'App\\Barrio', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null}', '2018-12-10 01:00:33', '2018-12-10 01:00:33'),
(10, 'barrios', 'barrios', 'Barrio', 'Barrios', NULL, 'App\\Barrio', NULL, NULL, NULL, 1, 0, '{"order_column":"id","order_display_column":null}', '2018-12-10 01:06:20', '2018-12-10 01:06:20'),
(11, 'tipo_operacions', 'tipo-operacions', 'Tipo Operacion', 'Tipo Operacions', NULL, 'App\\TipoOperacion', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null}', '2018-12-10 14:09:11', '2018-12-10 14:09:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-12-09 14:24:39', '2018-12-09 14:24:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-12-09 14:24:39', '2018-12-09 14:24:39', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2018-12-09 14:24:39', '2018-12-09 14:24:39', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2018-12-09 14:24:39', '2018-12-09 14:24:39', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2018-12-09 14:24:39', '2018-12-09 14:24:39', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2018-12-09 14:24:39', '2018-12-09 14:24:39', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2018-12-09 14:24:39', '2018-12-09 14:24:39', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2018-12-09 14:24:39', '2018-12-09 14:24:39', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2018-12-09 14:24:39', '2018-12-09 14:24:39', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2018-12-09 14:24:39', '2018-12-09 14:24:39', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2018-12-09 14:24:39', '2018-12-09 14:24:39', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2018-12-09 14:24:39', '2018-12-09 14:24:39', 'voyager.hooks', NULL),
(12, 1, 'Propiedads', '', '_self', NULL, NULL, NULL, 15, '2018-12-09 14:30:26', '2018-12-09 14:30:26', 'voyager.propiedads.index', NULL),
(13, 1, 'Monedas', '', '_self', NULL, NULL, NULL, 16, '2018-12-09 17:43:12', '2018-12-09 17:43:12', 'voyager.monedas.index', NULL),
(14, 1, 'Barrios', '', '_self', NULL, NULL, NULL, 17, '2018-12-10 00:24:23', '2018-12-10 00:24:23', 'voyager.barrios.index', NULL),
(15, 1, 'Barrios', '', '_self', NULL, NULL, NULL, 18, '2018-12-10 01:00:33', '2018-12-10 01:00:33', 'voyager.barrio.index', NULL),
(16, 1, 'Tipo Operacions', '', '_self', NULL, NULL, NULL, 19, '2018-12-10 14:09:11', '2018-12-10 14:09:11', 'voyager.tipo-operacions.index', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monedas`
--

CREATE TABLE `monedas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` tinytext COLLATE utf8mb4_unicode_ci,
  `valor` double DEFAULT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `monedas`
--

INSERT INTO `monedas` (`id`, `nombre`, `valor`, `imagen`, `created_at`, `updated_at`) VALUES
(1, 'ARS', 1, 'monedas/December2018/FvbrjjavFocbzhQM9yFL.png', '2018-12-09 17:43:00', '2018-12-10 00:14:23'),
(2, 'USD', 37, 'monedas/December2018/aUZ4XIaGYRXAWCUFd2pz.png', '2018-12-09 17:43:00', '2018-12-10 00:14:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-12-09 14:24:39', '2018-12-09 14:24:39'),
(2, 'browse_bread', NULL, '2018-12-09 14:24:39', '2018-12-09 14:24:39'),
(3, 'browse_database', NULL, '2018-12-09 14:24:39', '2018-12-09 14:24:39'),
(4, 'browse_media', NULL, '2018-12-09 14:24:39', '2018-12-09 14:24:39'),
(5, 'browse_compass', NULL, '2018-12-09 14:24:39', '2018-12-09 14:24:39'),
(6, 'browse_menus', 'menus', '2018-12-09 14:24:39', '2018-12-09 14:24:39'),
(7, 'read_menus', 'menus', '2018-12-09 14:24:39', '2018-12-09 14:24:39'),
(8, 'edit_menus', 'menus', '2018-12-09 14:24:39', '2018-12-09 14:24:39'),
(9, 'add_menus', 'menus', '2018-12-09 14:24:39', '2018-12-09 14:24:39'),
(10, 'delete_menus', 'menus', '2018-12-09 14:24:39', '2018-12-09 14:24:39'),
(11, 'browse_roles', 'roles', '2018-12-09 14:24:39', '2018-12-09 14:24:39'),
(12, 'read_roles', 'roles', '2018-12-09 14:24:39', '2018-12-09 14:24:39'),
(13, 'edit_roles', 'roles', '2018-12-09 14:24:39', '2018-12-09 14:24:39'),
(14, 'add_roles', 'roles', '2018-12-09 14:24:39', '2018-12-09 14:24:39'),
(15, 'delete_roles', 'roles', '2018-12-09 14:24:39', '2018-12-09 14:24:39'),
(16, 'browse_users', 'users', '2018-12-09 14:24:39', '2018-12-09 14:24:39'),
(17, 'read_users', 'users', '2018-12-09 14:24:39', '2018-12-09 14:24:39'),
(18, 'edit_users', 'users', '2018-12-09 14:24:39', '2018-12-09 14:24:39'),
(19, 'add_users', 'users', '2018-12-09 14:24:39', '2018-12-09 14:24:39'),
(20, 'delete_users', 'users', '2018-12-09 14:24:39', '2018-12-09 14:24:39'),
(21, 'browse_settings', 'settings', '2018-12-09 14:24:39', '2018-12-09 14:24:39'),
(22, 'read_settings', 'settings', '2018-12-09 14:24:39', '2018-12-09 14:24:39'),
(23, 'edit_settings', 'settings', '2018-12-09 14:24:39', '2018-12-09 14:24:39'),
(24, 'add_settings', 'settings', '2018-12-09 14:24:39', '2018-12-09 14:24:39'),
(25, 'delete_settings', 'settings', '2018-12-09 14:24:39', '2018-12-09 14:24:39'),
(26, 'browse_hooks', NULL, '2018-12-09 14:24:39', '2018-12-09 14:24:39'),
(27, 'browse_propiedads', 'propiedads', '2018-12-09 14:30:26', '2018-12-09 14:30:26'),
(28, 'read_propiedads', 'propiedads', '2018-12-09 14:30:26', '2018-12-09 14:30:26'),
(29, 'edit_propiedads', 'propiedads', '2018-12-09 14:30:26', '2018-12-09 14:30:26'),
(30, 'add_propiedads', 'propiedads', '2018-12-09 14:30:26', '2018-12-09 14:30:26'),
(31, 'delete_propiedads', 'propiedads', '2018-12-09 14:30:26', '2018-12-09 14:30:26'),
(32, 'browse_monedas', 'monedas', '2018-12-09 17:43:12', '2018-12-09 17:43:12'),
(33, 'read_monedas', 'monedas', '2018-12-09 17:43:12', '2018-12-09 17:43:12'),
(34, 'edit_monedas', 'monedas', '2018-12-09 17:43:12', '2018-12-09 17:43:12'),
(35, 'add_monedas', 'monedas', '2018-12-09 17:43:12', '2018-12-09 17:43:12'),
(36, 'delete_monedas', 'monedas', '2018-12-09 17:43:12', '2018-12-09 17:43:12'),
(42, 'browse_barrio', 'barrio', '2018-12-10 01:00:33', '2018-12-10 01:00:33'),
(43, 'read_barrio', 'barrio', '2018-12-10 01:00:33', '2018-12-10 01:00:33'),
(44, 'edit_barrio', 'barrio', '2018-12-10 01:00:33', '2018-12-10 01:00:33'),
(45, 'add_barrio', 'barrio', '2018-12-10 01:00:33', '2018-12-10 01:00:33'),
(46, 'delete_barrio', 'barrio', '2018-12-10 01:00:33', '2018-12-10 01:00:33'),
(57, 'browse_barrios', 'barrios', '2018-12-10 01:06:20', '2018-12-10 01:06:20'),
(58, 'read_barrios', 'barrios', '2018-12-10 01:06:20', '2018-12-10 01:06:20'),
(59, 'edit_barrios', 'barrios', '2018-12-10 01:06:20', '2018-12-10 01:06:20'),
(60, 'add_barrios', 'barrios', '2018-12-10 01:06:20', '2018-12-10 01:06:20'),
(61, 'delete_barrios', 'barrios', '2018-12-10 01:06:20', '2018-12-10 01:06:20'),
(62, 'browse_tipo_operacions', 'tipo_operacions', '2018-12-10 14:09:11', '2018-12-10 14:09:11'),
(63, 'read_tipo_operacions', 'tipo_operacions', '2018-12-10 14:09:11', '2018-12-10 14:09:11'),
(64, 'edit_tipo_operacions', 'tipo_operacions', '2018-12-10 14:09:11', '2018-12-10 14:09:11'),
(65, 'add_tipo_operacions', 'tipo_operacions', '2018-12-10 14:09:11', '2018-12-10 14:09:11'),
(66, 'delete_tipo_operacions', 'tipo_operacions', '2018-12-10 14:09:11', '2018-12-10 14:09:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propiedads`
--

CREATE TABLE `propiedads` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` text COLLATE utf8mb4_unicode_ci,
  `imagenes` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `moneda_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `barrio_id` int(11) DEFAULT NULL,
  `tipo_operacion_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `propiedads`
--

INSERT INTO `propiedads` (`id`, `titulo`, `imagenes`, `precio`, `moneda_id`, `created_at`, `updated_at`, `barrio_id`, `tipo_operacion_id`) VALUES
(1, 'casa', '["propiedads\\\\December2018\\\\bv7PSybJBZV9TCYIBkYp.JPG","propiedads\\\\December2018\\\\eE5QM2qzeShcVxck1l2N.JPG"]', 12000, 1, '2018-12-09 14:30:00', '2018-12-10 14:12:07', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-12-09 14:24:39', '2018-12-09 14:24:39'),
(2, 'user', 'Normal User', '2018-12-09 14:24:39', '2018-12-09 14:24:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings/December2018/NczXhcZqffprVi6jibO7.png', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'BluePixel', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Bienvenido a su panel de Administración!', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings/December2018/OV2lsw4kbXZaEoQxDysT.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings/December2018/CwBX42MTrZ0W8rnj74xZ.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '55213896598-sndkma6bosvt2de325vpscbl9mjnr9ma.apps.googleusercontent.com', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_operacions`
--

CREATE TABLE `tipo_operacions` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_operacions`
--

INSERT INTO `tipo_operacions` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Compra', '2018-12-10 14:11:39', '2018-12-10 14:11:39'),
(2, 'Venta', '2018-12-10 14:11:45', '2018-12-10 14:11:45'),
(3, 'Alquiler', '2018-12-10 14:11:50', '2018-12-10 14:11:50'),
(4, 'Alquiler Temporario', '2018-12-10 14:11:59', '2018-12-10 14:11:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin@speednova.com', 'users/December2018/4P94HhzsIaXzRwhkxrf1.png', NULL, '$2y$10$SUTMUZOgnmDtXEkcvq.qiO5QKfzxrutXscsnm3nPBrW/7ugy3Cm5G', 'oaHadt3uDlpRqqX0GfEC6vvfEhpuDJcCuQjXhyCbGenyr7DnL6Ml9p06T9fx', '{"locale":"es"}', '2018-12-09 14:25:45', '2018-12-10 01:11:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `barrios`
--
ALTER TABLE `barrios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indices de la tabla `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indices de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `monedas`
--
ALTER TABLE `monedas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indices de la tabla `propiedads`
--
ALTER TABLE `propiedads`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indices de la tabla `tipo_operacions`
--
ALTER TABLE `tipo_operacions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `barrios`
--
ALTER TABLE `barrios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT de la tabla `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `monedas`
--
ALTER TABLE `monedas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT de la tabla `propiedads`
--
ALTER TABLE `propiedads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `tipo_operacions`
--
ALTER TABLE `tipo_operacions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
