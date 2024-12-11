-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 01, 2024 at 09:32 PM
-- Server version: 10.11.9-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u257304526_Pn_db1`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `status` enum('1','e') NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Dairy Products', '1', '2024-10-14 11:33:32', '2024-10-29 14:37:07'),
(6, NULL, 'Honey', '1', '2024-10-14 11:49:42', '2024-10-29 14:37:43'),
(11, NULL, 'Masala', '1', '2024-10-16 11:24:29', '2024-10-29 14:40:18'),
(15, NULL, 'Milk Products', '1', '2024-10-29 14:49:06', '2024-10-29 14:49:06'),
(16, 1, 'Ghee', '1', '2024-10-29 14:50:07', '2024-11-06 01:10:07'),
(17, 6, 'Big Bee Honey', '1', '2024-10-30 01:48:35', '2024-11-06 01:08:35'),
(18, 6, 'Small Bee Honey', '1', '2024-11-06 01:08:50', '2024-11-06 01:08:50');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_10_01_151012_cls', 1),
(5, '2024_10_01_151108_pneshop', 1),
(6, '2024_10_01_151118_pneshop', 1),
(7, '2024_10_01_151205_pneshop', 1),
(8, '2024_10_04_010712_pneshop', 1),
(9, '2024_10_04_010927_pneshop', 1),
(10, '2024_10_04_013707_1', 1),
(11, '2024_10_04_014721_1', 1),
(12, '2024_10_10_005428_1', 2),
(13, '2024_10_10_005553_1', 3),
(14, '2024_10_13_022407_create_categories_table', 4),
(15, '2024_10_16_022851_create_products_table', 5),
(16, '2024_10_19_134256_product_details', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `image` varchar(191) NOT NULL,
  `status` enum('1','e') NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `image`, `status`, `created_at`, `updated_at`) VALUES
(22, 16, 'Dessi Ghee 1KG دیسی گھی', 3000.00, '291020241730213900.jpg', '1', '2024-10-29 14:58:20', '2024-11-05 14:00:10'),
(23, 17, 'Sider Big Bee Honey 1kg  شہد بیری بڑا', 3500.00, '301020241730253177.png', '1', '2024-10-30 01:52:57', '2024-11-09 02:19:38'),
(24, 17, 'Sider Big Bee Honey 500gm شہد بیری بڑا', 1850.00, '051120241730815153.jpg', '1', '2024-10-30 01:56:14', '2024-11-09 02:19:55'),
(25, 16, 'Dessi Ghee 500gm دیسی گھی', 1650.00, '051120241730815325.jpg', '1', '2024-11-05 14:02:05', '2024-11-05 14:02:05'),
(26, 17, 'Sider Big Bee Honey 250gm شہد بیری بڑا', 950.00, '051120241730815420.jpg', '1', '2024-11-05 14:03:40', '2024-11-09 02:20:12');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `total_items` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `product_id`, `title`, `total_items`, `description`, `created_at`, `updated_at`) VALUES
(3, 22, 'DESI GHEE دیسی گھی', '100', 'Pattoki Naturalas\' Desi Ghee - Nourishing Tradition in Every Spoonful\r\n\r\nExperience the rich, creamy goodness of Pattoki Naturalas\' Desi Ghee, crafted with love and care using traditional methods. Our Desi Ghee is made from the finest quality butter, sourced from local farms, and simmered to perfection to bring out its unique nutty flavor and aroma.\r\n\r\nBenefits of Pattoki Naturalas\' Desi Ghee\r\n\r\n- Rich in fat-soluble vitamins A, D, E, and K\r\n- Excellent source of conjugated linoleic acid (CLA) and medium-chain triglycerides (MCTs)\r\n- Supports healthy digestion and immune function\r\n- Nourishes skin and hair with its moisturizing properties\r\n- Adds a rich, creamy flavor to cooking and baking\r\n\r\nProduct Features\r\n\r\n- Made from high-quality milk sourced from local farms\r\n- Traditional slow-cooking process to preserve nutrients and flavor\r\n- No additives, preservatives, or artificial flavorings\r\n- Available in various packaging sizes to suit your needs\r\n\r\nWhy Choose Pattoki Naturalas\' Desi Ghee?\r\n\r\nAt Pattoki Naturalas, we\'re dedicated to preserving traditional practices and providing our customers with the finest quality products. Our Desi Ghee is a testament to our commitment to quality and tradition. Taste the difference for yourself!\r\n\r\nOrder Now and Experience the Nourishing Goodness of Pattoki Naturalas\' Desi Ghee!', '2024-10-31 02:02:52', '2024-11-27 14:05:34'),
(4, 23, 'Sider Small Bee Honey بیری کا چھوٹی مکھی کا شہد', '200', 'Sider Honey by Pattoki Naturalas - Pure Wild Honey for a Healthier You\r\n\r\nExperience the rich, velvety smoothness of Sider Honey, harvested from the pristine wilderness to bring you the finest quality wild honey. Our honey is carefully extracted and packaged to preserve its natural goodness, ensuring you get the best of nature in every jar.\r\n\r\nBenefits of Sider Honey\r\n\r\n- Rich in antioxidants and essential nutrients\r\n- Soothes coughs and sore throats\r\n- Aids in digestion and boosts energy\r\n- Natural remedy for wound healing and skin care\r\n- Supports immune system function\r\n\r\nProduct Features\r\n\r\n- 100% pure wild honey, free from additives and preservatives\r\n- Available in three convenient packaging sizes: 1000g, 500g, and 250g\r\n- Carefully harvested and extracted to preserve natural enzymes and nutrients\r\n- Perfect for cooking, baking, or as a natural sweetener\r\n\r\nWhy Choose Pattoki Naturalas\' Sider Honey?\r\n\r\nAt Pattoki Naturalas, we\'re committed to providing you with the highest quality wild honey, sourced directly from nature. Our honey is carefully crafted to bring you the best of the wilderness, every time. With our expertise and dedication to quality, you can trust Pattoki Naturalas to deliver the purest and most natural honey products.\r\n\r\nOrder Now and Experience the Power of Pure Wild Honey!', '2024-10-31 02:03:15', '2024-11-27 14:03:22'),
(5, 24, 'Sider Small Honey بیری چھوٹی مکھی کا شہد', '100', 'Sider Honey by Pattoki Naturalas - Pure Wild Honey for a Healthier You\r\n\r\nExperience the rich, velvety smoothness of Sider Honey, harvested from the pristine wilderness to bring you the finest quality wild honey. Our honey is carefully extracted and packaged to preserve its natural goodness, ensuring you get the best of nature in every jar.\r\n\r\nBenefits of Sider Honey\r\n\r\n- Rich in antioxidants and essential nutrients\r\n- Soothes coughs and sore throats\r\n- Aids in digestion and boosts energy\r\n- Natural remedy for wound healing and skin care\r\n- Supports immune system function\r\n\r\nProduct Features\r\n\r\n- 100% pure wild honey, free from additives and preservatives\r\n- Available in three convenient packaging sizes: 1000g, 500g, and 250g\r\n- Carefully harvested and extracted to preserve natural enzymes and nutrients\r\n- Perfect for cooking, baking, or as a natural sweetener\r\n\r\nWhy Choose Pattoki Naturalas\' Sider Honey?\r\n\r\nAt Pattoki Naturalas, we\'re committed to providing you with the highest quality wild honey, sourced directly from nature. Our honey is carefully crafted to bring you the best of the wilderness, every time. With our expertise and dedication to quality, you can trust Pattoki Naturalas to deliver the purest and most natural honey products.\r\n\r\nOrder Now and Experience the Power of Pure Wild Honey!', '2024-10-31 02:03:33', '2024-11-27 14:04:11'),
(6, 26, 'Sider Big Bee Honey 250gm شہد بیری بڑا', '100', 'Sider Honey by Pattoki Naturalas - Pure Wild Honey for a Healthier You\r\n\r\nExperience the rich, velvety smoothness of Sider Honey, harvested from the pristine wilderness to bring you the finest quality wild honey. Our honey is carefully extracted and packaged to preserve its natural goodness, ensuring you get the best of nature in every jar.\r\n\r\nBenefits of Sider Honey\r\n\r\n- Rich in antioxidants and essential nutrients\r\n- Soothes coughs and sore throats\r\n- Aids in digestion and boosts energy\r\n- Natural remedy for wound healing and skin care\r\n- Supports immune system function\r\n\r\nProduct Features\r\n\r\n- 100% pure wild honey, free from additives and preservatives\r\n- Available in three convenient packaging sizes: 1000g, 500g, and 250g\r\n- Carefully harvested and extracted to preserve natural enzymes and nutrients\r\n- Perfect for cooking, baking, or as a natural sweetener\r\n\r\nWhy Choose Pattoki Naturalas\' Sider Honey?\r\n\r\nAt Pattoki Naturalas, we\'re committed to providing you with the highest quality wild honey, sourced directly from nature. Our honey is carefully crafted to bring you the best of the wilderness, every time. With our expertise and dedication to quality, you can trust Pattoki Naturalas to deliver the purest and most natural honey products.\r\n\r\nOrder Now and Experience the Power of Pure Wild Honey!', '2024-11-25 15:57:10', '2024-11-27 14:04:30'),
(7, 25, 'Dessi Ghee 500gm دیسی گھی', '100', 'Pattoki Naturalas\' Desi Ghee - Nourishing Tradition in Every Spoonful\r\n\r\nExperience the rich, creamy goodness of Pattoki Naturalas\' Desi Ghee, crafted with love and care using traditional methods. Our Desi Ghee is made from the finest quality butter, sourced from local farms, and simmered to perfection to bring out its unique nutty flavor and aroma.\r\n\r\nBenefits of Pattoki Naturalas\' Desi Ghee\r\n\r\n- Rich in fat-soluble vitamins A, D, E, and K\r\n- Excellent source of conjugated linoleic acid (CLA) and medium-chain triglycerides (MCTs)\r\n- Supports healthy digestion and immune function\r\n- Nourishes skin and hair with its moisturizing properties\r\n- Adds a rich, creamy flavor to cooking and baking\r\n\r\nProduct Features\r\n\r\n- Made from high-quality milk sourced from local farms\r\n- Traditional slow-cooking process to preserve nutrients and flavor\r\n- No additives, preservatives, or artificial flavorings\r\n- Available in various packaging sizes to suit your needs\r\n\r\nWhy Choose Pattoki Naturalas\' Desi Ghee?\r\n\r\nAt Pattoki Naturalas, we\'re dedicated to preserving traditional practices and providing our customers with the finest quality products. Our Desi Ghee is a testament to our commitment to quality and tradition. Taste the difference for yourself!\r\n\r\nOrder Now and Experience the Nourishing Goodness of Pattoki Naturalas\' Desi Ghee!', '2024-11-27 14:06:24', '2024-11-27 14:06:24');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('6sgYZ1rUWissL01EzB0x5kdfiIY0iWRzpZGiHyQI', NULL, '66.249.68.7', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRkF5WEpIRmZWd1RWaDloV3VGMVpnb29uNFJ6dThqcWpoWDNQZVVXWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vd3d3LnBhdHRva2luYXR1cmFscy5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1733088423),
('prGNPkdomVjxMbyxgEbzrhHylrtWJtBWXB6D3xRg', NULL, '66.249.68.1', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYlFWTG00ZTF2R0xVdnhmZ3poYmZiVlIxUUJXY1RrdkNzYUFmNlpLbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vd3d3LnBhdHRva2luYXR1cmFscy5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1733088423),
('sDPK4k9Bj1JMkLEXbmORme8ORsUJRmfcjs3gXiCE', NULL, '66.249.68.7', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.6778.69 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSTJhRXlmek9CcHZmaDhZSkU1QWpQdzlxbUptRzlZdFFGN3BYT0h0UyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vd3d3LnBhdHRva2luYXR1cmFscy5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1733088410);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'admin', 'admin@gmail.com', NULL, '$2y$12$8xiBUoJBC2KCV02iDtMoWeSUFbb6o2z6moEG.4KyGxmmbz7Fhov7C', 'admin', NULL, NULL, NULL),
(9, 'Ali Younas', 'aliyounas6216@gmail.com', NULL, '$2y$12$gnLiOW0C/mQfeeMsaUkdUOrh4DJ9fEyhwKBGrzfKhPJyHa3aWy5JS', 'user', NULL, '2024-11-29 14:21:13', '2024-11-29 14:21:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_details`
--
ALTER TABLE `product_details`
  ADD CONSTRAINT `product_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
