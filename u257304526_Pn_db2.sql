/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 8.0.35 : Database - u257304526_Pn_db1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`u257304526_Pn_db1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `u257304526_Pn_db1`;

/*Table structure for table `cache` */

DROP TABLE IF EXISTS `cache`;

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*Data for the table `cache` */

/*Table structure for table `cache_locks` */

DROP TABLE IF EXISTS `cache_locks`;

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*Data for the table `cache_locks` */

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `job_batches` */

DROP TABLE IF EXISTS `job_batches`;

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb3_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*Data for the table `job_batches` */

/*Table structure for table `jobs` */

DROP TABLE IF EXISTS `jobs`;

CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*Data for the table `jobs` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'0001_01_01_000000_create_users_table',1),
(2,'0001_01_01_000001_create_cache_table',1),
(3,'0001_01_01_000002_create_jobs_table',1),
(4,'2024_10_01_151012_cls',1),
(5,'2024_10_01_151108_pneshop',1),
(6,'2024_10_01_151118_pneshop',1),
(7,'2024_10_01_151205_pneshop',1),
(8,'2024_10_04_010712_pneshop',1),
(9,'2024_10_04_010927_pneshop',1),
(10,'2024_10_04_013707_1',1),
(11,'2024_10_04_014721_1',1),
(12,'2024_10_10_005428_1',2),
(13,'2024_10_10_005553_1',3),
(14,'2024_10_13_022407_create_categories_table',4),
(15,'2024_10_16_022851_create_products_table',5);

/*Table structure for table `password_reset_tokens` */

DROP TABLE IF EXISTS `password_reset_tokens`;

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*Data for the table `password_reset_tokens` */

/*Table structure for table `product_details` */

DROP TABLE IF EXISTS `product_details`;

CREATE TABLE `product_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `total_items` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*Data for the table `product_details` */

/*Table structure for table `sessions` */

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb3_unicode_ci,
  `payload` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*Data for the table `sessions` */

insert  into `sessions`(`id`,`user_id`,`ip_address`,`user_agent`,`payload`,`last_activity`) values 
('3H6zxlf2tM1ZY6odrKWvyE1inzX92k6vvIGW2kmF',NULL,'127.0.0.1','Mozilla/5.0 (Linux; Android 7.0; SM-G615F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.91 Mobile Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMTJIV1ZPN3dodDRHZzczOTV1RWxybGxibk1tMWZmZTFPNDdnZGVYZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1733210285),
('FQruhamkb5oNdTp1IoqAXXcxTSlcGYzxusfEEoz9',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMG9iblFNbnFTcFFEeFVBbEp3c2Z4UWNrOXhURjc1RThMNWs5b1dJdCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=',1733213435),
('iOidrD9LZRRKYnYTSismzdR1yy41m4Vz3EftqXZt',NULL,'127.0.0.1','Mozilla/5.0 (Linux; Android 7.0; SM-G615F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.91 Mobile Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoidWtLOXZmR2lLd21nMEZOSEZwekZwWjJCdlM3RUJnMktBRlRHdEtxbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1733212261),
('JXvkjZ2SUrJcEZawtdVc6kPVXw4jTuZLIFnnuGI7',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSmRUcWZyNm53eEZ5eW83TW5JZzNmcEFvNEExUnVJMTJNUTRZQ3JZZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1733671535),
('lBoLAgSIByDP0tbBd3jrVPF4ojQvrybQHUqvlKVq',NULL,'127.0.0.1','Mozilla/5.0 (Linux; Android 7.0; SM-G615F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.91 Mobile Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQTFEME83NVNDb0p5VFJUUnJzeG5GdHMwRDdLcFlQVUhQR0RkZGgydiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG9wIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1733213374),
('mm6TQpZ0gGCekwVjuv6fUbsf5mOPl0Cu6WKy3Wwh',NULL,'127.0.0.1','Mozilla/5.0 (Linux; Android 9; Samsung Galaxy Note 9 Build/SM-N960N) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/5.2 Chrome/71.0.3578.99 Mobile Safari/604.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOVNpQ1RRU1d6TzhhREtuMTNSd1drUXE3SHgwNkhYWVRxQzUxOEk5QSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1733212305),
('nMFEO73KR9fypnUQaDOCGtkveLil9Wtfd6PJCOVs',NULL,'127.0.0.1','Mozilla/5.0 (Linux; Android 9; ONEPLUS A6000 Build/PKQ1. 180716.001; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/70.0. 3538.64 Mobile Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ3psd2ZTZXA3R3dsd1I0R1Z0QzdVVlgxN010ZjlWcUxYMGg4ekJUZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG9wIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1733213426),
('QaLlu5nZ2HXwYW3ShiIaJJiijheERYwCWvC30Rzf',NULL,'127.0.0.1','Mozilla/5.0 (Linux; Android 9; Samsung Galaxy Note 9 Build/SM-N960N) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/5.2 Chrome/71.0.3578.99 Mobile Safari/604.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoicTMzbHZESXNDMWZSRHJVdTRnUEFSckxqa2xyeU16RVBoSndEeXE2eCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG9wIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1733213372),
('ReR9Gsau95aRWeJmylyQA1ZxwGlZqy9LNaaAf5m8',NULL,'127.0.0.1','Mozilla/5.0 (Linux; Android 7.0; SM-G615F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.91 Mobile Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoid2NHamxJRkNENWZvdVd5QTlnM0cxTGZYQldjWWp3ZDg0SWlWWkR4RiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1733212232),
('RFnTQRoA74NdEiJMrSFTyhK8K9C0IH9xGhGQQLCx',NULL,'127.0.0.1','Mozilla/5.0 (Linux; Android 7.0; SM-G615F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.91 Mobile Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRlhSQVNPWk9lZlNlQWEwcGh6eFQwNDZ3OXZDZWdqcXNRc053ZURDeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1733212249),
('RFpzpL6rgdGW5DUyBDAKX54NICPRF88l0X8lCYgu',NULL,'127.0.0.1','Mozilla/5.0 (Linux; Android 9; Samsung Galaxy Note 9 Build/SM-N960N) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/5.2 Chrome/71.0.3578.99 Mobile Safari/604.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoidTVWRE9jYmxLdzJrbHlqdW1lQ3Q4Z1N5bk15eFJ3bU9JQkVuc1EzSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1733210285),
('sfXpLPeg9aQJduXiyeofYBK0YPcbs5MHQYAuYKf0',NULL,'127.0.0.1','Mozilla/5.0 (Linux; Android 7.0; SM-G615F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.91 Mobile Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoicHA0cTZQazlhSTFoRVg2bVZxS3hwNWhkVHY4M2tZU0ZMczlaakJqSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1733212236),
('SUtoXhCiuVVt7djfCSWMPos3xUnsPPSSo76pEkhz',NULL,'127.0.0.1','Mozilla/5.0 (Linux; Android 7.0; SM-G615F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.91 Mobile Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUmlZN1c2aDlKRk54M3J3RTd2ZkVVQkE3R01QZ3ZiemlncFFRakpydiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG9wIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1733213370),
('TnQwiXnKSZB6dJLWFKwC0Ia8pAG1XoRAf7cY4BdA',NULL,'127.0.0.1','Mozilla/5.0 (Linux; Android 9; Samsung Galaxy Note 9 Build/SM-N960N) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/5.2 Chrome/71.0.3578.99 Mobile Safari/604.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoid1o0OGFuS2ZjWGVLcEVXY3g5aHVnRlVNQWJuRURxT055Y2tjUzVGQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1733212246),
('UR2AzkBZpbKjYGOGWU0Xlsz3euPmCj6qp3Uikx7Z',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUm9vaVRqRUcwM3VqeWQ3aU1EeUdtbE5wWmVPRGVvZGU1M2lscEh6bSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0dmlldzI2Ijt9fQ==',1733671207),
('VD2VTLdAsSyHQQqcmlfFM4tF2au5cwlbw7WkvQYT',NULL,'127.0.0.1','Mozilla/5.0 (Linux; Android 9; Samsung Galaxy Note 9 Build/SM-N960N) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/5.2 Chrome/71.0.3578.99 Mobile Safari/604.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSkZTc0g4RW9wMGVQWHp5RUJOb1BXWmpySVRzTkdDS1FDWG9KNEtzMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1733212234),
('XD1ASlyCRDklrnZJ48aggdFMOutvMVPu9bImJ1I3',NULL,'127.0.0.1','Mozilla/5.0 (Linux; Android 9; Samsung Galaxy Note 9 Build/SM-N960N) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/5.2 Chrome/71.0.3578.99 Mobile Safari/604.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVWEyRksyUHFLaFg0NmZreGo4MzZoaWxWN2JpZ0FzWDVEVXQ3Y045TCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG9wIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1733213431),
('ykxtYrCr6YsSVGc3WF1zygIL4cqZw20SoX7Ako1T',NULL,'127.0.0.1','Mozilla/5.0 (Linux; Android 9; Samsung Galaxy Note 9 Build/SM-N960N) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/5.2 Chrome/71.0.3578.99 Mobile Safari/604.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoicmF5dVZOS0E1V253dkJYTFN4dExwd1VERjlTRDBnMVA5WnhmZTdJdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1733212263),
('ZhAeaekdZOmdPHwk36xDNbILnw0Mk2xD3a8HZa7y',NULL,'127.0.0.1','Mozilla/5.0 (Linux; Android 9; Samsung Galaxy Note 9 Build/SM-N960N) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/5.2 Chrome/71.0.3578.99 Mobile Safari/604.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOXpTQ3pNSjBDOW9hRUw3VllldmpqNU1XWXFacUhKeU1iREJURGNCMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG9wIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1733213386);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`role`,`remember_token`,`created_at`,`updated_at`) values 
(3,'admin','admin@gmail.com',NULL,'$2y$12$8xiBUoJBC2KCV02iDtMoWeSUFbb6o2z6moEG.4KyGxmmbz7Fhov7C','admin',NULL,NULL,NULL),
(9,'Ali Younas','aliyounas6216@gmail.com',NULL,'$2y$12$gnLiOW0C/mQfeeMsaUkdUOrh4DJ9fEyhwKBGrzfKhPJyHa3aWy5JS','user',NULL,'2024-11-29 19:21:13','2024-11-29 19:21:13');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
