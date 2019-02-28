-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2019 at 03:41 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ptw`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `code`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 'Ziemeberg', 'HT', 5, '2019-02-28 02:08:38', '2019-02-28 02:08:38'),
(2, 'Zacherybury', 'AT', 5, '2019-02-28 02:08:38', '2019-02-28 02:08:38'),
(3, 'Landenstad', 'SB', 5, '2019-02-28 02:08:38', '2019-02-28 02:08:38'),
(4, 'Dylanshire', 'BD', 4, '2019-02-28 02:08:38', '2019-02-28 02:08:38'),
(5, 'Keelinghaven', 'AM', 3, '2019-02-28 02:08:38', '2019-02-28 02:08:38'),
(6, 'West Reillybury', 'KI', 3, '2019-02-28 02:08:38', '2019-02-28 02:08:38'),
(7, 'Mullerbury', 'TR', 2, '2019-02-28 02:08:38', '2019-02-28 02:08:38'),
(8, 'Ricehaven', 'MC', 4, '2019-02-28 02:08:38', '2019-02-28 02:08:38'),
(9, 'Hayesville', 'PW', 1, '2019-02-28 02:08:39', '2019-02-28 02:08:39'),
(10, 'Rowebury', 'LS', 1, '2019-02-28 02:08:39', '2019-02-28 02:08:39'),
(11, 'North Janiya', 'ST', 4, '2019-02-28 02:08:39', '2019-02-28 02:08:39'),
(12, 'North Merlinmouth', 'AU', 2, '2019-02-28 02:08:39', '2019-02-28 02:08:39'),
(13, 'East Imogeneshire', 'SJ', 2, '2019-02-28 02:08:39', '2019-02-28 02:08:39'),
(14, 'Kiehnmouth', 'SM', 3, '2019-02-28 02:08:39', '2019-02-28 02:08:39'),
(15, 'Clementborough', 'CV', 5, '2019-02-28 02:08:39', '2019-02-28 02:08:39'),
(16, 'North Murl', 'CM', 1, '2019-02-28 02:08:39', '2019-02-28 02:08:39'),
(17, 'Lynchstad', 'TK', 1, '2019-02-28 02:08:39', '2019-02-28 02:08:39'),
(18, 'Clareside', 'CX', 5, '2019-02-28 02:08:39', '2019-02-28 02:08:39'),
(19, 'Javonteland', 'FO', 2, '2019-02-28 02:08:39', '2019-02-28 02:08:39'),
(20, 'Lake Avaburgh', 'WF', 2, '2019-02-28 02:08:39', '2019-02-28 02:08:39');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Myanmar', 'BIaaaa', '2019-02-28 02:08:37', '2019-02-28 02:42:05'),
(2, 'Cook Islands', 'RO', '2019-02-28 02:08:37', '2019-02-28 02:08:37'),
(3, 'South Georgia and the South Sandwich Islands', 'ET', '2019-02-28 02:08:38', '2019-02-28 02:08:38'),
(4, 'Tanzania', 'FM', '2019-02-28 02:08:38', '2019-02-28 02:08:38'),
(5, 'Cuba', 'GQ', '2019-02-28 02:08:38', '2019-02-28 02:08:38'),
(6, 'qweqweqe', 'qweqe', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `flightdetails`
--

CREATE TABLE `flightdetails` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(43, '2019_02_26_022557_reset', 1),
(132, '2014_10_12_000000_create_users_table', 2),
(133, '2014_10_12_100000_create_password_resets_table', 2),
(134, '2019_02_23_064120_create_countries_table', 2),
(135, '2019_02_23_085344_create_cities_table', 2),
(136, '2019_02_26_010600_create_searches_table', 2),
(137, '2019_02_26_013338_create_seatypes_table', 2),
(138, '2019_02_26_124456_create_flightdetails_table', 2),
(139, '2019_02_28_060314_create_registers_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registers`
--

CREATE TABLE `registers` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `searches`
--

CREATE TABLE `searches` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seattype`
--

CREATE TABLE `seattype` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seattype`
--

INSERT INTO `seattype` (`id`, `name`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Manley McKenzie', 44, '2019-02-28 02:08:39', '2019-02-28 02:08:39'),
(2, 'Holden Smith I', 9, '2019-02-28 02:08:39', '2019-02-28 02:08:39'),
(3, 'Reanna Botsford', 48, '2019-02-28 02:08:39', '2019-02-28 02:08:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempt` tinyint(4) NOT NULL DEFAULT '0',
  `last_access` timestamp NULL DEFAULT NULL,
  `expired` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `remember_token`, `attempt`, `last_access`, `expired`, `created_at`, `updated_at`) VALUES
(1, 'Letha Schuster', 'bergnaum.harry@example.net', '$2y$10$9oZkXn19G1uM3eN50G4Dsu7Ndk13Po1qGECe5DIxJ0hSvxGb1j3zm', '1d4WCCwJo0', 'bESqsx1OMoRFeoPiq2hkxeqDj6Yw44Bg3L8pCT1Lu6YFRgXbz9cOvJfKfBVp', 0, '2019-02-28 06:22:11', NULL, '2019-02-28 02:08:37', '2019-02-28 06:22:11'),
(2, 'Elwyn Senger', 'bridie17@example.org', '$2y$10$BZ2hSUo87pm7Uqx2iutVKe1GYP9hBr4.p5RHVx96P9F.HUO8Mu1vu', 'RUuWLqMyEZ', 'I5xPUvKKHAyrvgoV64CwZKdYB6L4GoTZNd1jryqdIh3jTeSt1TM0OTTiuWDq', 0, '2019-02-28 03:50:16', NULL, '2019-02-28 02:08:37', '2019-02-28 03:50:16'),
(3, 'Joanny Ferry', 'bart.renner@example.com', '$2y$10$BZ2hSUo87pm7Uqx2iutVKe1GYP9hBr4.p5RHVx96P9F.HUO8Mu1vu', 'ygfkuBjW63', 'P5EkQLWwCu', 0, NULL, NULL, '2019-02-28 02:08:37', '2019-02-28 02:08:37'),
(4, 'Mrs. Emely Rowe', 'enola.thiel@example.org', '$2y$10$BZ2hSUo87pm7Uqx2iutVKe1GYP9hBr4.p5RHVx96P9F.HUO8Mu1vu', 'EPUoCWSb3S', 'ApCliduTpw', 0, NULL, NULL, '2019-02-28 02:08:37', '2019-02-28 02:08:37'),
(5, 'Zena Weber', 'tristin52@example.org', '$2y$10$BZ2hSUo87pm7Uqx2iutVKe1GYP9hBr4.p5RHVx96P9F.HUO8Mu1vu', 'g6TZpWRooe', 'AQQgGxMH6q', 0, NULL, NULL, '2019-02-28 02:08:37', '2019-02-28 02:08:37'),
(6, 'admin@admin.com', 'admin@admin.com', '$2y$10$1XZFvYuQhJ4w7rZ.rY0kiubDjRz89fRy3kJNCbDx.PaNxVyrlVVWi', '1234657981', NULL, 0, NULL, NULL, '2019-02-28 02:50:58', '2019-02-28 02:50:58'),
(7, 'Lê Nguyễn Tấn Tài', 'chelsea881@example.net', '$2y$10$e0ttEnj1Ns2rJC/WRn9BKuM8dDnTZnERup0EoPXwJJIiPd3e/qf.2', '0123456789', 'aiGL4VLJxc2OGI9QczX1yPknAB56SvJ72xN3YzSxnufUtPHE06Jt0HcnHayS', 0, '2019-02-28 03:17:24', NULL, '2019-02-28 03:17:09', '2019-02-28 03:17:24'),
(8, 'admin123@admin.com', 'admin123@admin.com', '$2y$10$0F76OTmzqyKCDb1kUNnDQ.KXepjPlixH.RFS0iKVVqWmdAcJu0Bvq', '0123456789', NULL, 0, NULL, NULL, '2019-02-28 07:40:09', '2019-02-28 07:40:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cities_code_unique` (`code`),
  ADD KEY `cities_country_id_foreign` (`country_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countries_code_unique` (`code`);

--
-- Indexes for table `flightdetails`
--
ALTER TABLE `flightdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `registers`
--
ALTER TABLE `registers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `searches`
--
ALTER TABLE `searches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seattype`
--
ALTER TABLE `seattype`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `seattype_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `flightdetails`
--
ALTER TABLE `flightdetails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `registers`
--
ALTER TABLE `registers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `searches`
--
ALTER TABLE `searches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seattype`
--
ALTER TABLE `seattype`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
