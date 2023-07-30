-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2023 at 04:22 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `food_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `food_id`, `quantity`, `created_at`, `updated_at`) VALUES
(5, '7', '14', '1', '2023-05-05 01:04:51', '2023-05-05 01:04:51'),
(7, '7', '10', '1', '2023-05-05 02:14:55', '2023-05-05 02:14:55'),
(9, '11', '14', '1', '2023-05-05 06:53:33', '2023-05-05 06:53:33'),
(10, '11', '8', '1', '2023-05-05 06:53:48', '2023-05-05 06:53:48'),
(11, '10', '12', '1', '2023-05-05 11:10:01', '2023-05-05 11:10:01'),
(12, '10', '13', '1', '2023-05-05 11:10:10', '2023-05-05 11:10:10'),
(13, '10', '14', '2', '2023-05-05 11:11:00', '2023-05-05 11:11:00'),
(14, '10', '12', '4', '2023-05-05 11:11:31', '2023-05-05 11:11:31'),
(15, '12', '8', '1', '2023-05-05 11:23:07', '2023-05-05 11:23:07'),
(16, '12', '12', '3', '2023-05-05 11:23:21', '2023-05-05 11:23:21'),
(17, '12', '13', '2', '2023-05-05 11:23:39', '2023-05-05 11:23:39'),
(18, '12', '8', '1', '2023-05-05 11:26:19', '2023-05-05 11:26:19'),
(19, '10', '12', '1', '2023-05-05 22:03:05', '2023-05-05 22:03:05'),
(20, '10', '10', '1', '2023-05-07 09:38:14', '2023-05-07 09:38:14'),
(22, '10', '8', '1', '2023-05-07 12:49:03', '2023-05-07 12:49:03');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `Title`, `Price`, `Image`, `Description`, `created_at`, `updated_at`) VALUES
(8, 'Sandwich', '160', '1683472550.jpeg', 'Enjoy', '2023-05-02 10:31:10', '2023-05-07 09:45:50'),
(10, 'Chocolate Cake', '400', '1683097304.jpeg', 'Scrumptious', '2023-05-03 01:31:44', '2023-05-03 01:31:44'),
(12, 'Cheese Burger', '110', '1683098254.jpeg', 'Yummy !!!', '2023-05-03 01:47:34', '2023-05-03 01:47:34'),
(13, 'Pizza', '280', '1683098389.jpeg', 'Tasty !!!!', '2023-05-03 01:49:49', '2023-05-03 01:49:49');

-- --------------------------------------------------------

--
-- Table structure for table `foodchefs`
--

CREATE TABLE `foodchefs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `speciality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `foodchefs`
--

INSERT INTO `foodchefs` (`id`, `name`, `speciality`, `image`, `created_at`, `updated_at`) VALUES
(4, 'John', 'Culinary Expertise', '1683143109.jpeg', '2023-05-03 14:15:09', '2023-05-03 14:15:09'),
(6, 'Khushi', 'Head Chef', '1683143171.jpg', '2023-05-03 14:16:11', '2023-05-03 14:16:11'),
(7, 'Michael', 'Bakery Expert', '1683304574.jpeg', '2023-05-05 11:06:14', '2023-05-05 11:06:14'),
(8, 'Faeez', 'Chinese Expert', '1683472618.jpeg', '2023-05-07 09:46:58', '2023-05-08 08:51:25');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_05_01_092943_create_sessions_table', 1),
(7, '2023_05_01_154001_create_food_table', 2),
(8, '2023_05_03_151512_create_reservations_table', 3),
(9, '2023_05_03_183543_create_foodchefs_table', 4),
(10, '2023_05_04_123006_create_carts_table', 5),
(11, '2023_05_05_105234_create_orders_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `foodname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `foodname`, `price`, `quantity`, `name`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Sandwich', '150', '1', 'Khushi', '7984345830', 'Ahmedabad', '2023-05-05 06:06:29', '2023-05-05 06:06:29'),
(2, 'Chocolate Cake', '400', '1', 'Khushi', '7984345830', 'Ahmedabad', '2023-05-05 06:06:29', '2023-05-05 06:06:29'),
(5, 'Sandwich', '150', '1', 'Sania', '7676345323', 'Mumbai', '2023-05-05 07:12:02', '2023-05-05 07:12:02'),
(6, 'Hot Coffee', '160', '1', 'Sania', '7676345323', 'Mumbai', '2023-05-05 07:12:02', '2023-05-05 07:12:02'),
(7, 'Hot Coffee', '160', '1', 'Isaac', '7365355277', 'Ahmedabad', '2023-05-05 11:28:48', '2023-05-05 11:28:48'),
(8, 'Cheese Burger', '110', '3', 'Isaac', '7365355277', 'Ahmedabad', '2023-05-05 11:28:48', '2023-05-05 11:28:48'),
(9, 'Pizza', '280', '2', 'Isaac', '7365355277', 'Ahmedabad', '2023-05-05 11:28:48', '2023-05-05 11:28:48'),
(10, 'Hot Coffee', '160', '1', 'Isaac', '7365355277', 'Ahmedabad', '2023-05-05 11:28:48', '2023-05-05 11:28:48'),
(11, 'Hot Coffee', '160', '1', 'Missy', '6677987678', 'Surat', '2023-05-05 11:30:12', '2023-05-05 11:30:12'),
(12, 'Cheese Burger', '110', '3', 'Missy', '6677987678', 'Surat', '2023-05-05 11:30:12', '2023-05-05 11:30:12'),
(13, 'Pizza', '280', '2', 'Missy', '6677987678', 'Surat', '2023-05-05 11:30:12', '2023-05-05 11:30:12'),
(14, 'Hot Coffee', '160', '1', 'Missy', '6677987678', 'Surat', '2023-05-05 11:30:12', '2023-05-05 11:30:12'),
(15, 'Cheese Burger', '110', '1', 'Khushi', '8529631470', 'Mumbai', '2023-05-05 22:04:13', '2023-05-05 22:04:13'),
(16, 'Pizza', '280', '1', 'Khushi', '8529631470', 'Mumbai', '2023-05-05 22:04:13', '2023-05-05 22:04:13'),
(17, 'Sandwich', '150', '2', 'Khushi', '8529631470', 'Mumbai', '2023-05-05 22:04:13', '2023-05-05 22:04:13'),
(18, 'Cheese Burger', '110', '4', 'Khushi', '8529631470', 'Mumbai', '2023-05-05 22:04:13', '2023-05-05 22:04:13'),
(19, 'Cheese Burger', '110', '1', 'Khushi', '8529631470', 'Mumbai', '2023-05-05 22:04:13', '2023-05-05 22:04:13'),
(20, 'Cheese Burger', '110', '1', 'Khushi', '7984345830', 'Ahmedabad', '2023-05-07 09:42:19', '2023-05-07 09:42:19'),
(21, 'Pizza', '280', '1', 'Khushi', '7984345830', 'Ahmedabad', '2023-05-07 09:42:19', '2023-05-07 09:42:19'),
(22, 'Sandwich', '150', '2', 'Khushi', '7984345830', 'Ahmedabad', '2023-05-07 09:42:19', '2023-05-07 09:42:19'),
(23, 'Cheese Burger', '110', '4', 'Khushi', '7984345830', 'Ahmedabad', '2023-05-07 09:42:19', '2023-05-07 09:42:19'),
(24, 'Cheese Burger', '110', '1', 'Khushi', '7984345830', 'Ahmedabad', '2023-05-07 09:42:19', '2023-05-07 09:42:19'),
(25, 'Chocolate Cake', '400', '1', 'Khushi', '7984345830', 'Ahmedabad', '2023-05-07 09:42:19', '2023-05-07 09:42:19');

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guests` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `name`, `email`, `phone`, `guests`, `date`, `time`, `message`, `created_at`, `updated_at`) VALUES
(1, 'abc', 'abc@gmail.com', '7984345830', '2', '06.05.2023', '20:53', ':)', '2023-05-03 10:53:18', '2023-05-03 10:53:18'),
(2, 'Sania', 'sania@gmail.com', '6677987678', '4', '07.05.2023', '12:00', 'Thanks !!!', '2023-05-05 09:17:17', '2023-05-05 09:17:17'),
(3, 'Faeez', 'faeez@gmail.com', '8764567888', '5', '08.05.2023', '21:00', 'Table for 5', '2023-05-07 09:50:02', '2023-05-07 09:50:02');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3eOPgcQyNWhVdacHVn4jdBWJ8ryhijPkd8LQpVeq', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOUNBNFNlVXRuTTBvUm9zTTNtNlEwWUZVd2ZVMlA3bXhScHVTb3FhQyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1683472846),
('EDpJhjL2h2LF2fteoXvWw6iSgfFNWEaJknRu5ZPK', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiV2lVU2Q1bHdWbGYwcHp2YmlZalQ0V1drSnRNZTdmbmJqdnhhaU43ZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1683472041),
('gO0lqfBLoccU4KZBEL2NMaUY69W3KWIDkjELbzqn', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQlpaUkZySkI3VWFsMUFZZG1iVG5Va2FVRnExYWUzWUVZYjEzdm85TCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9leHBvcnQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1683525875),
('MQuVG4WYXrITrrMvNmEgbiJTvWg5ux57jx3oexza', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaHVLcnljdjZORVZvUm9CZ1E0U0V4NDdWc0hxSjVlak1TeDhjd1hLdiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1683519245),
('pCaOBZXGZN3IGyi7VXpzwizAE67lS682AXZz5gfa', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieDlsSXRDZjdKSEdJQnJaYXBIcTJCQVRpZDhVRUhleXZadkl3RmlQcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC92aWV3Y2hlZiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1683555689),
('u3BKhAWCnUzk5Dfj04LGqvWTBIFYwOFO1aHXiWmt', 10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieWNXSVVBaVlRTThJRTh4WU9KN3Z3SXpodnJ0dUVUdDJFME56b2dzcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG93Y2FydC8xMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjEwO30=', 1683484186);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `usertype`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '7984345830', 'Ahmedabad', '1', NULL, '$2y$10$6Up9.6ngCt0HCbA/QjkmEOzWeMg7mi/dEs7UkkcOv5M0eLJMs4eUq', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-01 04:12:35', '2023-05-01 04:12:35'),
(4, 'Khushi', 'khushibharatgupta2001@gmail.com', '7676345323', 'Mumbai', '0', NULL, '$2y$10$q7fPb9BW1jK7ANXM8JSeGuQBOqvrabD84LQ38h4VBAaRVzlVnyZIq', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-01 09:41:56', '2023-05-01 09:41:56'),
(7, 'ABC', 'abc@gmail.com', '6746723789', 'Surat', '0', NULL, '$2y$10$qcev/5aJtJUJdAq5mfEQReLI7.K8J7cCgDTVVqx8hoN2GnVZ/gOHK', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-03 01:56:45', '2023-05-03 01:56:45'),
(10, 'KBG', 'khushibharatgupta2002@gmail.com', '7654568888', 'Ahmedabad', '0', NULL, '$2y$10$yE36QQH2Wn.aXcXaSg7ZZ.AGnvuks.X6WwVCNml7w.1/9HSw3bcRi', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-04 05:43:38', '2023-05-04 05:43:38'),
(11, 'xyz', 'xyz@gmail.com', '7645367899', 'Mumbai', '0', NULL, '$2y$10$YtedfM0mLN0Cj2dUHd3/y.mbRD3DpHsc.FUZ3stPZuLGl8/6mnbMq', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-05 06:52:54', '2023-05-05 06:52:54'),
(12, 'Isaac', 'isaac@gmail.com', '8787564555', 'Ahmedabad', '0', NULL, '$2y$10$df17mkALLwnGX012xu5E5OZ67aopqNsj8ptYsTvNLhn7HqwXH/95u', NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-05 11:22:52', '2023-05-05 11:22:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foodchefs`
--
ALTER TABLE `foodchefs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `foodchefs`
--
ALTER TABLE `foodchefs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
