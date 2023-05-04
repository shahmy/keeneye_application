-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2023 at 07:45 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `keeneyedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Darren Leannon', 'Ut repudiandae laborum dolores et quis voluptatum. Fuga tenetur deserunt et et veritatis sit. Iste quidem qui dolores omnis provident.', 36, '2023-05-03 08:24:11', '2023-05-03 08:24:11', NULL),
(2, 'Melisa Cremin', 'Fugiat sed tempora ut. Quae odio consequatur necessitatibus omnis sit sit. Sint nam facilis dolor pariatur ut aut.', 116, '2023-05-03 08:24:11', '2023-05-03 08:24:11', NULL),
(3, 'Emil Bayer', 'Sit id eum rerum id voluptatem adipisci eligendi. Rerum reprehenderit nam ullam quas explicabo excepturi aut repellendus. Qui nihil ipsum expedita ex.', 60, '2023-05-03 08:24:11', '2023-05-03 08:24:11', NULL),
(4, 'Mackenzie Kilback I', 'Aut quidem accusamus amet harum ab. Accusamus itaque magni explicabo aliquam. Earum quo recusandae tenetur pariatur sed quos voluptas.', 55, '2023-05-03 08:24:11', '2023-05-03 08:24:11', NULL),
(5, 'Hilbert Kirlin', 'Quos quidem quo laborum. Aut beatae est sint ipsam eveniet. Quos quas aut est. Ad odit odit dolore voluptates.', 12, '2023-05-03 08:24:11', '2023-05-03 08:24:11', NULL),
(6, 'Dr. Enos Buckridge', 'Sit perferendis non quidem. Maiores autem ex et consequatur nam aut. Nisi voluptas est rerum quo pariatur perspiciatis. Est molestiae porro tenetur blanditiis voluptas ut possimus nisi.', 48, '2023-05-03 08:24:11', '2023-05-03 08:24:11', NULL),
(7, 'Name is updated', 'this is description updated', 1, '2023-05-03 08:24:11', '2023-05-04 08:15:16', NULL),
(8, 'Jesus Wilkinson', 'Dolore consequuntur sunt impedit possimus provident reprehenderit. Beatae aut soluta qui vel nihil quae et ea. Eligendi aliquid ad qui modi impedit.', 42, '2023-05-03 08:24:11', '2023-05-04 08:15:52', '2023-05-04 08:15:52'),
(9, 'Godfrey Treutel', 'Sint odio consequuntur numquam ex quasi aut soluta. Earum qui ut voluptas sunt. Est veniam adipisci nostrum culpa reprehenderit neque et quia. Ipsam voluptas quas nam autem laborum qui totam.', 37, '2023-05-03 08:24:11', '2023-05-03 08:24:11', NULL),
(10, 'Laptops', 'lap category', 1, '2023-05-04 08:12:15', '2023-05-04 08:12:15', NULL),
(11, 'Laptops', 'lap category', 1, '2023-05-04 08:13:20', '2023-05-04 08:13:20', NULL),
(12, 'Laptops', 'lap category', 1, '2023-05-04 10:02:04', '2023-05-04 10:02:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `category_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`category_id`, `product_id`) VALUES
(1, 9),
(2, 9),
(5, 10),
(1, 11),
(2, 11),
(1, 12),
(2, 12),
(1, 13),
(2, 13),
(1, 14),
(2, 14),
(1, 15),
(2, 15),
(1, 16),
(2, 16),
(1, 20),
(2, 20),
(8, 20),
(1, 21),
(2, 21),
(8, 21);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint DEFAULT '0',
  `imageable_id` bigint UNSIGNED NOT NULL,
  `imageable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image`, `is_featured`, `imageable_id`, `imageable_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 45, 6, 'App\\Models\\Category', '2023-05-03 08:24:11', '2023-05-03 08:24:11', NULL),
(2, NULL, 107, 7, 'App\\Models\\Category', '2023-05-03 08:24:11', '2023-05-03 08:24:11', NULL),
(3, NULL, 97, 1, 'App\\Models\\Product', '2023-05-03 08:24:11', '2023-05-03 08:24:11', NULL),
(4, NULL, 122, 8, 'App\\Models\\Category', '2023-05-03 08:24:11', '2023-05-03 08:24:11', NULL),
(5, NULL, 17, 9, 'App\\Models\\Category', '2023-05-03 08:24:11', '2023-05-03 08:24:11', NULL),
(6, 'public/GdSq3dB3farOTtN82umm8JZ2VQHg2rpyxzuyYZ04.jpg', NULL, 11, 'App\\Models\\Product', '2023-05-04 09:14:12', '2023-05-04 09:14:12', NULL),
(7, 'public/products/zfzZY21EujOd3xPVjk2L5xbJMa6sA8Tm2LHIW8XR.jpg', NULL, 13, 'App\\Models\\Product', '2023-05-04 09:25:43', '2023-05-04 09:25:43', NULL),
(8, 'public/products/M0qhFtYN1DZseBXRDJluMR0fjG4hpm58tNXVC78S.jpg', NULL, 13, 'App\\Models\\Product', '2023-05-04 09:25:43', '2023-05-04 09:25:43', NULL),
(9, 'public/products/N73xMU693rqJW9EK7QfZPeLGZqHAru6rbcHxGLXG.jpg', 1, 15, 'App\\Models\\Product', '2023-05-04 09:31:58', '2023-05-04 09:31:58', NULL),
(10, 'public/products/BCE9OYOBNlq8dmBo3tuSerP1KXNuYg6TYJ0zmzyT.jpg', 1, 15, 'App\\Models\\Product', '2023-05-04 09:31:58', '2023-05-04 09:31:58', NULL),
(11, 'public/products/cxOX3fYofSg7xQFxDhIQ2PtyCSgRXpRdtXIMEJo4.jpg', 1, 16, 'App\\Models\\Product', '2023-05-04 09:33:12', '2023-05-04 09:33:12', NULL),
(12, 'public/products/AguIT315N4SqN4dnmu4AvfmMHAvJwdXkkcMCkRKq.jpg', 0, 16, 'App\\Models\\Product', '2023-05-04 09:33:12', '2023-05-04 09:33:12', NULL),
(13, 'public/products/MT2FCwGdOnNwicX2xlIRg003WqpktBJDWD5hoFEq.jpg', 1, 19, 'App\\Models\\Product', '2023-05-04 09:37:31', '2023-05-04 09:46:53', '2023-05-04 09:46:53'),
(14, 'public/products/1JODeCqPxvuUvakyMZjA0VxFpJyoTmJoyGX2HJXZ.jpg', 0, 19, 'App\\Models\\Product', '2023-05-04 09:37:31', '2023-05-04 09:46:53', '2023-05-04 09:46:53'),
(15, 'public/products/CX0btVGkpPn10vzxzIhUpcKjXkhseSv8cTI8KkQj.jpg', 1, 20, 'App\\Models\\Product', '2023-05-04 09:58:12', '2023-05-04 09:58:12', NULL),
(16, 'public/products/q5bIdFLqwhJMaukYM9v6ZD2ekhyoETTkFfPwkjxd.jpg', 0, 20, 'App\\Models\\Product', '2023-05-04 09:58:12', '2023-05-04 09:58:12', NULL),
(17, 'public/products/vcmbJS43SQiLG7d1ijJ8n4EOm9M2QZFvoKP9idXk.jpg', 1, 21, 'App\\Models\\Product', '2023-05-04 09:58:37', '2023-05-04 09:58:37', NULL),
(18, 'public/products/lqHuT1YCbO7n2ruBZKH8C5tFdap7OE7yefsI6Y3k.jpg', 0, 21, 'App\\Models\\Product', '2023-05-04 09:58:37', '2023-05-04 09:58:37', NULL),
(19, 'public/categories/81GrFiE7qH4Jg6InhCa9nqhqCy08D53nTFn8WPuX.jpg', 1, 12, 'App\\Models\\Category', '2023-05-04 10:02:04', '2023-05-04 10:02:04', NULL),
(20, 'public/categories/9J1MQQhrLG5K7mnBm4uiMvubrZW7duzxDqaIMAlp.png', 0, 12, 'App\\Models\\Category', '2023-05-04 10:02:04', '2023-05-04 10:02:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_05_03_000001_create_categories_table', 1),
(7, '2023_05_03_000002_create_category_product_table', 1),
(8, '2023_05_03_000003_create_images_table', 1),
(9, '2023_05_03_000004_create_products_table', 1),
(10, '2023_05_03_009001_add_foreigns_to_category_product_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth-token', '55550ac6c1deab5afbf02f741708439518baa1982288105b789b9167cb8dc98b', '[\"*\"]', '2023-05-04 08:13:20', NULL, '2023-05-04 06:41:55', '2023-05-04 08:13:20'),
(2, 'App\\Models\\User', 1, 'auth-token', 'a0fee56e92de117cc91a4c717c30f000abbd88a6f7789bc7aad127b4e8f00401', '[\"*\"]', '2023-05-04 10:02:45', NULL, '2023-05-04 08:13:38', '2023-05-04 10:02:45');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `price` decimal(8,2) NOT NULL,
  `quantity` int NOT NULL,
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_avilable` tinyint NOT NULL DEFAULT '1',
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `quantity`, `is_featured`, `is_avilable`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Marisa Frami', 'Quo quo ipsa eaque vitae aperiam architecto ut. Ipsum optio harum natus velit accusantium. Est quis pariatur non inventore eius iure. Quis dolores quia esse vitae dolor ut.', '6623.02', 7649, 35, 116, 124, '2023-05-03 08:24:11', '2023-05-03 08:24:11', NULL),
(2, 'Ms. Hailie Ebert', 'Ullam ea corrupti illo praesentium voluptate sint. Quae quae fugiat et autem. Natus quasi sunt et velit. Mollitia qui at cumque vel at a.', '957.76', 1029070, 66, 120, 110, '2023-05-03 08:24:11', '2023-05-03 08:24:11', NULL),
(3, 'Gregoria Aufderhar', 'Quasi dolor quis impedit eius consequuntur ut neque. Cumque rem voluptatem consequuntur assumenda odit vitae. Expedita ut sed voluptatem excepturi culpa impedit harum.', '5472.14', 77168, 96, 68, 105, '2023-05-03 08:24:11', '2023-05-03 08:24:11', NULL),
(4, 'Wendy King', 'Vel quis fugiat voluptatem vitae enim id quia et. Asperiores doloremque magni ad quia dolorem est eos. Asperiores doloribus doloremque porro fugiat.', '1307.07', 52, 96, 108, 116, '2023-05-03 08:24:11', '2023-05-03 08:24:11', NULL),
(5, 'Ms. Maddison Kerluke Jr.', 'Provident magni voluptate voluptas ducimus veritatis. Ipsum ab sed sit et natus id laborum. Occaecati soluta optio autem id et.', '9255.34', 1, 78, 121, 100, '2023-05-03 08:24:11', '2023-05-04 08:08:30', '2023-05-04 08:08:30'),
(6, 'Mireille Osinski', 'Deleniti eum nihil voluptatem molestiae aperiam commodi et. Ut excepturi dolorum quia nihil voluptatem. Ipsum mollitia enim enim aut neque et.', '3609.33', 930139, 45, 26, 22, '2023-05-03 08:24:11', '2023-05-03 08:24:11', NULL),
(7, 'Name is updated', 'this is description updated', '340000.00', 4, 1, 1, 1, '2023-05-04 07:24:19', '2023-05-04 08:17:35', '2023-05-04 08:17:35'),
(8, 'Mac Book Pro', 'Mac 15', '120000.00', 10, 0, 1, 1, '2023-05-04 07:25:18', '2023-05-04 08:09:23', '2023-05-04 08:09:23'),
(9, 'Mac Book Pro', 'Mac 15', '120000.00', 10, 0, 1, 1, '2023-05-04 07:28:31', '2023-05-04 07:28:31', NULL),
(10, 'Name is updated', 'this is description updated', '340000.00', 4, 1, 1, 1, '2023-05-04 07:31:00', '2023-05-04 08:19:04', NULL),
(11, 'Mac Book Pro', 'Mac 15', '120000.00', 10, 1, 1, 1, '2023-05-04 09:14:11', '2023-05-04 09:14:11', NULL),
(12, 'Mac Book Pro', 'Mac 15', '120000.00', 10, 0, 1, 1, '2023-05-04 09:25:01', '2023-05-04 09:25:01', NULL),
(13, 'Mac Book Pro', 'Mac 15', '120000.00', 10, 0, 1, 1, '2023-05-04 09:25:43', '2023-05-04 09:25:43', NULL),
(14, 'Mac Book Pro New', 'Mac 15', '120000.00', 10, 0, 1, 1, '2023-05-04 09:29:19', '2023-05-04 09:29:19', NULL),
(15, 'Mac Book Pro New', 'Mac 15', '120000.00', 10, 0, 1, 1, '2023-05-04 09:31:58', '2023-05-04 09:31:58', NULL),
(16, 'Mac Book Pro New', 'Mac 15', '120000.00', 10, 0, 1, 1, '2023-05-04 09:33:12', '2023-05-04 09:33:12', NULL),
(17, 'Mac Book Pro New', 'Mac 15', '120000.00', 10, 0, 1, 1, '2023-05-04 09:34:50', '2023-05-04 09:34:50', NULL),
(18, 'Name is updated wqwq', 'this is description updated', '340000.00', 4, 1, 1, 1, '2023-05-04 09:36:40', '2023-05-04 09:55:55', '2023-05-04 09:55:55'),
(19, 'Mac Book Pro New', 'Mac 15', '120000.00', 10, 0, 1, 1, '2023-05-04 09:37:31', '2023-05-04 09:46:53', '2023-05-04 09:46:53'),
(20, 'Mac Book Pro New', 'Mac 15', '120000.00', 10, 0, 1, 1, '2023-05-04 09:58:12', '2023-05-04 09:58:12', NULL),
(21, 'Mac Book Pro New', 'Mac 15', '120000.00', 10, 0, 1, 1, '2023-05-04 09:58:37', '2023-05-04 09:58:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `current_team_id` bigint UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Prof. Kristina Ward', 'admin@admin.com', '2023-05-03 08:24:11', '$2y$10$zA11m2rFYprsCiXqPXM3ouXHR38xkV6Jjz5Q3LXUFRlCD/BOSXGk.', 'y5iqhEjxmr', NULL, NULL, NULL, NULL, NULL, '2023-05-03 08:24:11', '2023-05-03 08:24:11', NULL),
(2, 'Mr. Dashawn Miller', 'winifred.sipes@morar.com', '2023-05-03 08:24:11', '$2y$10$uwi/K7r35yzDwl3bhV6ZXeR2EKORG09/iEWv.E4Jer11fiPwwRNkK', '8bQ8xy6y5G', NULL, NULL, NULL, NULL, NULL, '2023-05-03 08:24:12', '2023-05-03 08:24:12', NULL),
(3, 'Carroll Hand', 'lsporer@weber.com', '2023-05-03 08:24:11', '$2y$10$UdFGdyZNCU1HLP2O9GH8xuRdYebUfUhCemjJHg0Diln9i2Au923Z2', '2GgV5yPsE8', NULL, NULL, NULL, NULL, NULL, '2023-05-03 08:24:12', '2023-05-03 08:24:12', NULL),
(4, 'Rubie Dare', 'beulah50@huels.com', '2023-05-03 08:24:11', '$2y$10$xpS7sX1iHU5C4XayLlhGIe31eOFV6jFqY5n0XmPZshFyMoQmawfeq', 'Yf7cTk6YNB', NULL, NULL, NULL, NULL, NULL, '2023-05-03 08:24:12', '2023-05-03 08:24:12', NULL),
(5, 'Dr. Emmanuelle Barton', 'zbraun@gmail.com', '2023-05-03 08:24:11', '$2y$10$g5V/qEw6c2GqRxHFlVqojOu0pA3X87JxFnpB3/3Twpi51BUACiPd6', 'micjYx117t', NULL, NULL, NULL, NULL, NULL, '2023-05-03 08:24:12', '2023-05-03 08:24:12', NULL),
(6, 'Rosemarie Kuhic', 'collier.stevie@yahoo.com', '2023-05-03 08:24:12', '$2y$10$Hhng8y2lRC22/jCJWZwbI.EpCYj0XpHrQqY.G3FH2AyIGT3BTgvr2', 'slScIImFcC', NULL, NULL, NULL, NULL, NULL, '2023-05-03 08:24:12', '2023-05-03 08:24:12', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD KEY `category_product_category_id_foreign` (`category_id`),
  ADD KEY `category_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_imageable_id_index` (`imageable_id`),
  ADD KEY `images_imageable_type_index` (`imageable_type`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
