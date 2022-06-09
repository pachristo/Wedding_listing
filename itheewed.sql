-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 28, 2022 at 01:20 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fiver_ithwed`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `email`, `avatar`, `status`, `type`, `password`, `name`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'pachristo', 'chris@gmail.com', '', '0', '1', '$2y$10$EXEuBqfEkXGxVydYFvm5FOlPwBPFnMFT9cQIHmTC29F2Va7tdFLCi', 'Christian Umanah', NULL, '2022-04-20 07:20:46', '2022-04-20 07:20:46'),
(2, 'pachristo', 'peak@gmail.com', '', '0', '1', '$2y$10$7v0n5QLiFuISLb/33VtuCehI5SikZPjvL4JnOPzYqmG50.ldmQeQS', 'Christian Umanah', NULL, '2022-04-20 07:20:58', '2022-04-20 07:20:58'),
(3, 'pachristo', 'peaek@gmail.com', '', '0', '1', '$2y$10$40QLzyilF/8ONIqM3kCJJO90UvEi0tDYX.MixmAS2fZXJ1WJ0/duq', 'Christian Umanah', NULL, '2022-04-20 21:13:54', '2022-04-20 21:13:54');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `slug`, `name`, `image`, `description`, `status`, `created_at`, `updated_at`) VALUES
(20, 'florist', 'Florist', 'BLs0rwJ37yURelRWtnzXHlOCJpeQrcrhSKG5t2ec1619091721.png', 'A florist is someone whose job involves arranging and selling cut flowers.', NULL, '2022-04-21 10:42:01', '2022-04-21 10:42:01'),
(21, 'cake-and-dessert', 'Cake And Dessert', 'RQ1U0WwYBlW9pcHKo3mK8eutzx5TD2miFIArZ3PP1619091823.png', 'cake and dessert', NULL, '2022-04-21 10:43:43', '2022-04-21 10:43:43'),
(22, 'cake-and-dessert', 'Cake And Dessert', 'AszQDXsgxElmoWl2tQfRJOA3HtqCWXiM8Zajmc7b1650658288.png', 'cake and dessert', NULL, '2022-04-22 19:11:28', '2022-04-22 19:11:28');

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
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `videos` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `is_promoted` tinyint(1) NOT NULL DEFAULT 0,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `title`, `cat_id`, `user_id`, `address`, `price`, `city`, `state`, `region`, `country`, `status`, `description`, `images`, `videos`, `map_latitude`, `map_longitude`, `facebook_link`, `twitter_link`, `instagram_link`, `youtube_link`, `created_at`, `updated_at`, `is_featured`, `is_admin`, `is_promoted`, `is_approved`) VALUES
(5, 'Cake', '21', NULL, '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[{\"EMXF\":\"cake5jpegl3oczECck6msmUAeZj8SC7BVdbj2MAl9bFhMz2B4.jpeg\"},{\"64KI\":\"cake4jpeg4pbIWS4B2nV2q5Om1gPQFnxsaG2bxKBPzSjJXvG2.jpeg\"},{\"VjWd\":\"cake3jpegOoifc6lOQqTbphocsyLub5Wlfefx8cUPcetC9RY7.jpeg\"}]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-04-22 01:18:52', '2022-04-27 19:10:25', 0, 1, 1, 0),
(6, 'Cake', '21', NULL, '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[{\"EMXF\":\"cake5jpegl3oczECck6msmUAeZj8SC7BVdbj2MAl9bFhMz2B4.jpeg\"},{\"64KI\":\"cake4jpeg4pbIWS4B2nV2q5Om1gPQFnxsaG2bxKBPzSjJXvG2.jpeg\"},{\"VjWd\":\"cake3jpegOoifc6lOQqTbphocsyLub5Wlfefx8cUPcetC9RY7.jpeg\"}]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-04-22 01:18:52', '2022-04-22 01:18:52', 0, 1, 0, 0),
(7, 'Cake', '21', NULL, '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[{\"EMXF\":\"cake5jpegl3oczECck6msmUAeZj8SC7BVdbj2MAl9bFhMz2B4.jpeg\"},{\"64KI\":\"cake4jpeg4pbIWS4B2nV2q5Om1gPQFnxsaG2bxKBPzSjJXvG2.jpeg\"},{\"VjWd\":\"cake3jpegOoifc6lOQqTbphocsyLub5Wlfefx8cUPcetC9RY7.jpeg\"}]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-04-22 01:18:52', '2022-04-22 01:18:52', 0, 1, 0, 0),
(8, 'Cake', '21', NULL, '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[{\"EMXF\":\"cake5jpegl3oczECck6msmUAeZj8SC7BVdbj2MAl9bFhMz2B4.jpeg\"},{\"64KI\":\"cake4jpeg4pbIWS4B2nV2q5Om1gPQFnxsaG2bxKBPzSjJXvG2.jpeg\"},{\"VjWd\":\"cake3jpegOoifc6lOQqTbphocsyLub5Wlfefx8cUPcetC9RY7.jpeg\"}]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-04-22 01:18:52', '2022-04-22 01:18:52', 0, 1, 0, 0),
(9, 'Cake', '21', NULL, '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[{\"EMXF\":\"cake5jpegl3oczECck6msmUAeZj8SC7BVdbj2MAl9bFhMz2B4.jpeg\"},{\"64KI\":\"cake4jpeg4pbIWS4B2nV2q5Om1gPQFnxsaG2bxKBPzSjJXvG2.jpeg\"},{\"VjWd\":\"cake3jpegOoifc6lOQqTbphocsyLub5Wlfefx8cUPcetC9RY7.jpeg\"}]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-04-22 01:18:52', '2022-04-22 01:18:52', 0, 1, 0, 0),
(10, 'Cake', '21', NULL, '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[{\"EuPc\":\"cakejpegu0LahhWqb2HX0pt5RkGdOltzgjofMfKUJfIZCoHQ.jpeg\"},{\"IXcv\":\"cake2jpegKagtv98wFAjHzSQa7QsxT3LVD7nL8xHUENokzzhY.jpeg\"},{\"F60T\":\"cake3jpeggtbTpgddsQeTamGZ7wqhNLbhBC4XncnLmQOWqd7J.jpeg\"},{\"fj2Y\":\"cake4jpegJtrYeBUuSWBdEYAENqVALbbDwHpMmldX1tMUiFEc.jpeg\"},{\"HRhL\":\"cake5jpegXQeMXNkPJ8SuGCyPp4UNF2LNuNoj8Hq4mBFKQF7M.jpeg\"},{\"VB3Q\":\"cake_and_dessertpngxJzCZsJdNmlWVEUwT3pxwbTz67kQC2kJvot5gYGJ.png\"}]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-04-22 10:17:32', '2022-04-22 10:17:32', 0, 1, 0, 0),
(11, 'Cake', '21', NULL, '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[{\"KYKZ\":\"cakejpegJGmA5ehOdQm6MSviD1ywzByI8B96E8w94kGHoIe5.jpeg\"},{\"37ce\":\"cake2jpegTVoFKyeKaEdYwNGTY35PMjAeIcnZhTc2JIoowGg1.jpeg\"},{\"G1D7\":\"cake3jpeghrWhvPHP5RRVjlGLagY1s6bZjYPRzftsVRYFxq3p.jpeg\"},{\"BHwo\":\"cake4jpegUmKl3tmK0DeMhjMdtatLbUdbqCWfbrTcJMvGU0nB.jpeg\"},{\"egzL\":\"cake5jpeggjqKsCAqjtstzUmEJj5xszbMIJKGQ5OD82HJghoy.jpeg\"},{\"wBrM\":\"cake_and_dessertpngoYjUthH1yWM32d5APciEX5DfqOSo38XaVNLyRIEN.png\"}]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-04-22 10:18:40', '2022-04-22 10:18:40', 0, 1, 0, 0),
(12, 'Cake', '21', NULL, '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '1', 'cake', '[{\"bHsI\":\"cakejpegXreEKbHI5TnWfzoXTmKISI2GxBVAXYtd5Gkczdn2.jpeg\"},{\"NQ9A\":\"cake2jpegmCdtnjzp1s7t748HmYfTyxTv04RIVLnG470BR0o6.jpeg\"},{\"5ZKZ\":\"cake3jpeg9yCMcPTg9XEDP3DPEU5ihdUPZsO2ox6VSjOVREuW.jpeg\"},{\"Ezuu\":\"cake4jpegkxlH1b9LJ1nH0lPFVZXSPsg7shbw2hvZ0FxhDjdp.jpeg\"},{\"7ynD\":\"cake5jpegU7xWsguKM0JYPw2EtdeKrNFI1Bp9u3HyQdp37atM.jpeg\"},{\"J3FS\":\"cake_and_dessertpnga132oeaSerI2HtZ20tvgqpcQCut0mLHo2dVYoT9c.png\"}]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-04-22 10:37:51', '2022-04-22 17:12:20', 0, 1, 0, 0),
(13, 'Cake', '21', NULL, '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '4', 'cake', '[{\"F9Zu\":\"cakejpegDK41uQvSsuSgSekUDDeyQLlttAoTPoOMB4DdPzsH.jpeg\"},{\"TycW\":\"cake2jpegO0nIc149kBuCk9RPsHtHclZ6tY4FNNF8GbNigQYP.jpeg\"},{\"Gkg8\":\"cake3jpegVJ2cYdOHqFlRNggLmKaTRXDctZS5fnozuZFiFyui.jpeg\"},{\"tsmR\":\"cake4jpegABIG2eJFjW7QFVpWQv88DCxU0zdZTm2PEeGhvEgY.jpeg\"},{\"eWyN\":\"cake5jpegRU9w5Phc37yCqb3itBaqewhFYRArH6pll7Rh62R2.jpeg\"},{\"WPii\":\"cake_and_dessertpngulmAiQqyAz3GXlUffhUwasxg8xfCVBFqPP2iGbPy.png\"}]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-04-22 10:50:58', '2022-04-22 12:41:09', 0, 1, 0, 0),
(14, 'Cake 14', '21', NULL, '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[{\"vSGn\":\"cake3jpegxbmUAXV3rLN4AiRh1xio5bBioYks7G5AcquPb8IQ.jpeg\"},{\"zRlH\":\"cake2jpegH2VL4W7A6gRr6vSL9QbVeFihIPzqfosXomEpNl8Y.jpeg\"},{\"aptS\":\"cake3jpegZ7lf4K1wmU5l8JkPfqmcXJy58Abjfmzg1VOnNCTA.jpeg\"},{\"yix6\":\"cake2jpegf4qPoAnHAhbGtE0LZCCEKSqZbu0hTFVkGVKHhXrY.jpeg\"}]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-04-22 10:52:25', '2022-04-22 12:34:27', 0, 1, 0, 0),
(21, 'Cake 14', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '4', 'cake', '[{\"XhuW\":\"cake4jpegWsKRsHscyIqOJjlCQlD0j6burno3s3y7eeV0klUt.jpeg\"},{\"A7rX\":\"cake3jpeg3hCsPBbpGIiCHVVirWZYSNR0gGIC2SpGX6D7oF78.jpeg\"}]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-04-25 10:31:32', '2022-04-25 11:44:08', 0, 0, 0, 0),
(22, 'Cake', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[{\"SmwW\":\"cake5jpegYLbrpbtBSBiunWN3oFh8BPwT4y0e8O3jAqkvC5Yq.jpeg\"},{\"7Uco\":\"cake4jpeghsm1jA35U6YZ62JdyXvhiAnCbBCgChorR2pxbrGG.jpeg\"},{\"i7zd\":\"cake3jpegYDLxeeyozfSicTTIucPA1imQJsSiXtFcdnfr3gZQ.jpeg\"}]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-04-25 10:34:12', '2022-04-25 10:34:12', 0, 0, 0, 0),
(23, 'Cake', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[{\"EMXF\":\"cake5jpegl3oczECck6msmUAeZj8SC7BVdbj2MAl9bFhMz2B4.jpeg\"},{\"64KI\":\"cake4jpeg4pbIWS4B2nV2q5Om1gPQFnxsaG2bxKBPzSjJXvG2.jpeg\"},{\"VjWd\":\"cake3jpegOoifc6lOQqTbphocsyLub5Wlfefx8cUPcetC9RY7.jpeg\"}]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-04-25 10:58:47', '2022-04-25 10:58:47', 0, 0, 0, 0);

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_13_215334_user_add_token', 2),
(6, '2016_06_01_000001_create_oauth_auth_codes_table', 3),
(7, '2016_06_01_000002_create_oauth_access_tokens_table', 3),
(8, '2016_06_01_000003_create_oauth_refresh_tokens_table', 3),
(9, '2016_06_01_000004_create_oauth_clients_table', 3),
(10, '2016_06_01_000005_create_oauth_personal_access_clients_table', 3),
(11, '2022_04_14_103750_add_vendor_name', 4),
(12, '2022_04_14_105746_add_vendor_banner', 5),
(13, '2022_04_14_154320_add_first_last_name', 6),
(14, '2022_04_14_182039_create_subsciptions_table', 7),
(15, '2022_04_18_141942_create_subscriptions_table', 7),
(16, '2022_04_19_142219_create_admins_table', 8),
(17, '2022_04_20_210233_create_listings_table', 9),
(18, '2022_04_20_214211_create_categories_table', 10),
(19, '2022_04_21_163341_add_is_featured_and_supper_promoted', 11),
(20, '2022_04_22_032228_create_settings_table', 12),
(21, '2022_04_23_074518_add_status_users_now', 13),
(22, '2022_04_26_113351_subscription_add_plan', 14),
(23, '2022_04_26_193211_create_payment_intents_table', 15),
(24, '2022_04_26_193458_user_add_token_subscription_status', 15),
(26, '2022_04_27_101357_add_site_name_site_link_contact_email', 17),
(27, '2022_04_27_113344_setting_add_sitename', 18),
(28, '2022_04_27_125323_create_wishlists_table', 19),
(30, '2022_04_27_070147_createtoken_plan_id_user', 20),
(31, '2022_04_27_144406_add_listing_approved', 20);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('01ba00ddcb1286c7fdec8ed0de694972ed814a41520847918949c0218fd51a1ad54995035621d3e0', 13, 1, 'authToken', '[]', 0, '2022-04-14 16:32:46', '2022-04-14 16:32:46', '2023-04-14 17:32:46'),
('3e78e65ae529405802646a56e1ed04850aa55e330e99a0d1f6e1651281f49f156167120749009587', 6, 1, 'authToken', '[]', 0, '2022-04-14 07:29:10', '2022-04-14 07:29:10', '2023-04-14 08:29:10'),
('4fd985e9244fea215386e30ff01887626e051e138ab02959bcdefdffac9ed86da508e5152fa69cbe', 3, 1, 'authToken', '[]', 0, '2022-04-14 07:15:40', '2022-04-14 07:15:40', '2023-04-14 08:15:40'),
('513e6c268284d8912dfdf4d85dd4a18dd1a7a308382d21076b37d8d79c206d0a7a58f5b285f62930', 14, 1, 'authToken', '[]', 0, '2022-04-14 16:33:30', '2022-04-14 16:33:30', '2023-04-14 17:33:30'),
('5248b9e2b6a830f168cb91bfecc1af9a44bb4bf970870cad4bed278f8d87ddb5afd49621f479bc22', 7, 1, 'authToken', '[]', 0, '2022-04-14 15:12:13', '2022-04-14 15:12:13', '2023-04-14 16:12:13'),
('684c6c39fe6c1d695e2328ae04851413252c88d2488502e7eeb994fa242cde61916c0d04f9fe64a4', 11, 1, 'authToken', '[]', 0, '2022-04-14 15:29:58', '2022-04-14 15:29:58', '2023-04-14 16:29:58'),
('6b6557786b138021731a5064a6da97c4f200b443ec7302caace4278c9cfd3c6f2089dd101babab98', 5, 1, 'authToken', '[]', 0, '2022-04-14 07:21:33', '2022-04-14 07:21:33', '2023-04-14 08:21:33'),
('6e87155a7470ac6a121a0e36a4873b9cdcfb7b29178755790df614e5da1afe454429f1c6e282e70a', 14, 1, 'ithwedapp', '[]', 0, '2022-04-14 17:17:52', '2022-04-14 17:17:52', '2023-04-14 18:17:52'),
('7b04c6b07fd26e88c75c0b2cb74ce6380a323ed279dca585a8593c144355f32c6cde7cab7ecc2511', 9, 10, 'ithwedapp', '[]', 0, '2022-04-27 19:14:17', '2022-04-27 19:14:17', '2023-04-27 20:14:17'),
('8e580dc97f42523252803203c4db15cea14879e6d8d096f860d7ce61af00ab229274d3f7ccb21643', 14, 1, 'ithwedapp', '[]', 0, '2022-04-20 07:38:38', '2022-04-20 07:38:38', '2023-04-20 08:38:38'),
('b46c12cb5dce7403953c8cd1ce669fa5c3e33425eafb2e2872a359d96cdabe515c5089eb05af1c0b', 4, 1, 'authToken', '[]', 0, '2022-04-14 07:18:05', '2022-04-14 07:18:05', '2023-04-14 08:18:05'),
('c2f6c529b5aa21073dc63c1c2ffd93aa676a55c078b2d718498fb25b5a51b92f21f67fb5ac880455', 12, 1, 'authToken', '[]', 0, '2022-04-14 15:31:50', '2022-04-14 15:31:50', '2023-04-14 16:31:50'),
('d4d438e02690f4003ba3be8306dfcdd32b443c4093039ca47795d1f1314cf9c0544dff32b4536599', 10, 1, 'authToken', '[]', 0, '2022-04-14 15:28:55', '2022-04-14 15:28:55', '2023-04-14 16:28:55'),
('da5f3e8cb4dceaf5f71a9cbc122002fbb34589b138e0e108324fd7ebfcaa2cdfb1947689c2822167', 9, 1, 'ithwedapp', '[]', 0, '2022-04-14 17:12:29', '2022-04-14 17:12:29', '2023-04-14 18:12:29'),
('f103b7556b2f1eb7176c27b312f909f13649cd88566ba1704d00a8f9764acc51fdfec7f3f9afd90f', 9, 1, 'authToken', '[]', 0, '2022-04-14 15:20:24', '2022-04-14 15:20:24', '2023-04-14 16:20:24'),
('f1bae85d925a32b3c7698f91594c3534a27e508b778313dc21dc58a841a4a3d6f20c847708d48862', 2, 10, 'admin', '[]', 0, '2022-04-20 19:49:27', '2022-04-20 19:49:27', '2023-04-20 20:49:27'),
('f78ef4284210c079029fd65b261d4aa4ab29a44be1879c5864c8f620b5c2444b63447bc3df163509', 8, 1, 'authToken', '[]', 0, '2022-04-14 15:16:18', '2022-04-14 15:16:18', '2023-04-14 16:16:18'),
('f9d8b54db73f51edebefdec600e3f6dae166c9436d8ee5ad2b73667aca78508428494f2142fb05dd', 9, 10, 'ithwedapp', '[]', 0, '2022-04-25 10:01:56', '2022-04-25 10:01:56', '2023-04-25 11:01:56'),
('ff9baf309b4afd814348353d8cd83845bd470b86e750b8cf7a8398044e288f6c37ec72878c82f726', 2, 10, 'admin', '[]', 0, '2022-04-27 10:26:09', '2022-04-27 10:26:09', '2023-04-27 11:26:09');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '6fHmktMxoTGaWiL4zD76sm4G3wE4vStJ5ZHfcJpB', NULL, 'http://localhost', 1, 0, 0, '2022-04-14 00:53:49', '2022-04-14 00:53:49'),
(2, NULL, 'Laravel Password Grant Client', 'bgBGtb3KDJsacmFqVtIoGLsrLKDkXX33oGLjk7jd', 'admins', 'http://localhost', 0, 1, 0, '2022-04-14 00:53:50', '2022-04-14 00:53:50'),
(3, NULL, 'Laravel Personal Access Client', 'HUTlkZmJp4rSbegIPa5qAK2TjuN8B4grolVAACty', NULL, 'http://localhost', 1, 0, 0, '2022-04-20 17:21:07', '2022-04-20 17:21:07'),
(4, NULL, 'Laravel Password Grant Client', 'z3Ph0BftPAaou8goq7rZro5f9cCO6b6oVDwIBOyT', 'users', 'http://localhost', 0, 1, 0, '2022-04-20 17:21:07', '2022-04-20 17:21:07'),
(5, NULL, 'Laravel Personal Access Client', 'b0Iq0jV1SIPU3J69diIz3M1rpokUOUHIYB5smLk7', NULL, 'http://localhost', 1, 0, 0, '2022-04-20 17:22:56', '2022-04-20 17:22:56'),
(6, NULL, 'Laravel Password Grant Client', 'deE4UOzetkegZd6elv8RQVCm7TY403oMo6WchkKn', 'users', 'http://localhost', 0, 1, 0, '2022-04-20 17:22:56', '2022-04-20 17:22:56'),
(8, NULL, 'Laravel Personal Access Client', 'TZGnbURjpETjQydSzCaHcODBv66CpydbwdyBqs4Z', NULL, 'http://localhost', 1, 0, 0, '2022-04-20 18:42:43', '2022-04-20 18:42:43'),
(9, NULL, 'Laravel Password Grant Client', 'vo9tXQluHeGJ9aJqYIn5X4aQp6diLcmW3P4OJlkT', 'users', 'http://localhost', 0, 1, 0, '2022-04-20 18:42:44', '2022-04-20 18:42:44'),
(10, NULL, 'Laravel Personal Access Client', 'ShA9O6HmQf3vY4ze3QOUizoF6QqNyK1u3ao6ezGS', NULL, 'http://localhost', 1, 0, 0, '2022-04-20 18:46:23', '2022-04-20 18:46:23'),
(11, NULL, 'Laravel Password Grant Client', 'mug3vFe5z4IwzH1sKjjx59gqJICgmUa0fWCQfyDe', 'users', 'http://localhost', 0, 1, 0, '2022-04-20 18:46:23', '2022-04-20 18:46:23');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-04-14 00:53:49', '2022-04-14 00:53:49'),
(2, 3, '2022-04-20 17:21:07', '2022-04-20 17:21:07'),
(3, 5, '2022-04-20 17:22:56', '2022-04-20 17:22:56'),
(4, 8, '2022-04-20 18:42:44', '2022-04-20 18:42:44'),
(5, 10, '2022-04-20 18:46:23', '2022-04-20 18:46:23');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `payment_intents`
--

CREATE TABLE `payment_intents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trans_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\USER\\User', 1, 'authToken', '9f8ae5f2e35cbefc4cf5a13a43e2fde5d6990ff09dc1046de8e385988168ca25', '[\"*\"]', NULL, '2022-04-14 06:56:42', '2022-04-14 06:56:42'),
(2, 'App\\Models\\USER\\User', 2, 'authToken', '7c792efb1a600818bfbe72876dfa7e482c95fdf29e85e9376d532fcad0ca2ba0', '[\"*\"]', NULL, '2022-04-14 07:13:36', '2022-04-14 07:13:36');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contact_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flutterwave_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flutterwave_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_sign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintenance_mode` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `paypalKey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypalSecret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystackkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystackSecret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sitename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Ithwed',
  `sitelink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'http://fiver.ir/ithwed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `contact_email`, `skype`, `phone1`, `phone2`, `phone3`, `address`, `flutterwave_key`, `flutterwave_secret`, `currency_code`, `currency_sign`, `maintenance_mode`, `created_at`, `updated_at`, `paypalKey`, `paypalSecret`, `paystackkey`, `paystackSecret`, `sitename`, `sitelink`) VALUES
(1, 'info@itheewed.com.ng', NULL, '+234-812-834-0493', '+234-812-834-0493', '+234-812-834-0493', '23 Kunle Ogunba St, Lekki Phase I  100263, Lagos, Nigeria', 'FLWPUBK_TEST-54dafcfc4d1439dbeddafa1d68a4f63b-X', 'FLWSECK_TEST-f918939659bd03f568fa7db85f2e6ae9-X', 'NGN', '₦', 0, NULL, '2022-04-27 10:29:20', 'AZL4dLjYas-gQoZZgXzWu_7DL9fFDMiqHNqLF9SJCNcnRYKf1mUdM3lqNg57-eqHzLzsTGsuyXEUrBv5', 'ECAWWPJCiBrimoFSJm6pMvFlGrxxT7PuudKA92Fn9aJt8MZa96xP3tstpelgmd7dOlOe60cPwWorb8gc', 'pk_test_6bf927c4fcf4172fae59cf27c7b7688853682f74', 'sk_test_413bcc87331a629a73514f44258f42d8c42f85c5', 'Ithwed', 'http://fiver.ir/ithwed');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `units` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `plan_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `amount`, `currency`, `units`, `status`, `description`, `created_at`, `updated_at`, `plan_name`, `duration`) VALUES
(4, '300', 'USD', '500', '1', 'for medium scale business', '2022-04-28 10:03:25', '2022-04-28 10:03:25', 'Premium', '3 month'),
(5, '900', 'USD', '700', '1', 'for medium scale business', '2022-04-28 10:04:17', '2022-04-28 10:04:17', 'Premium', '6 month'),
(6, '700', 'USD', '550', '2', 'for small scale business', '2022-04-28 10:04:44', '2022-04-28 10:07:37', 'Basic', '7 months');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_vendor` tinyint(1) DEFAULT NULL,
  `is_couple` tinyint(1) DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_phone_verified` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_flagged` tinyint(1) NOT NULL DEFAULT 0,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `plan_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trans_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `is_vendor`, `is_couple`, `country`, `country_code`, `vendor_name`, `facebook`, `twitter`, `youtube`, `instagram`, `whatsapp`, `language`, `status`, `description`, `avatar`, `phone`, `is_phone_verified`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `token`, `username`, `vendor_banner`, `vendor_address`, `vendor_type`, `state`, `firstname`, `lastname`, `is_flagged`, `is_verified`, `plan_id`, `trans_id`) VALUES
(9, 'pachristo@gmail.com', 1, 0, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '07088800874', NULL, NULL, '$2y$10$SuEos4euvEsGxLwGnc.5seqtTRVqPc9VxvioKLFb7wwfz9AlGFoOi', NULL, '2022-04-14 15:20:24', '2022-04-14 15:20:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', NULL),
(11, 'chiomaflourltd@gmail.com', 1, 0, NULL, NULL, 'Chioma Flourist Ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+23566588855', NULL, NULL, '$2y$10$9iC8fEQOhPXiEHyojcs4b.QTetvDvwy.8Dk8d.gXgjvSOMYNVCYjK', NULL, '2022-04-14 15:29:58', '2022-04-14 15:29:58', NULL, NULL, NULL, '12 Abak Rd , Uyo Akwa Ibom', NULL, NULL, NULL, NULL, 0, 0, '', NULL),
(14, 'peakntf@gmail.com', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '234877885588', NULL, NULL, '$2y$10$MSLs9SwQ0xKEiaOT9TdgWecD4gIKlRAzpqxjzjD5lzIrchrjxYk9O', NULL, '2022-04-14 16:33:29', '2022-04-14 16:33:29', NULL, 'pachristo', NULL, NULL, NULL, NULL, 'Christian', 'Umanah', 0, 0, '', NULL),
(15, 'chiomvendorltd@gmail.com', 1, 0, NULL, NULL, 'Chioma Flourist Ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+23566588855', NULL, NULL, '$2y$10$RAQqI7GQqldjpZZuu8S7YeqJ6QkYYgUHwaaPH/Ol/9BQ69O/hgYMu', NULL, '2022-04-22 18:41:31', '2022-04-23 07:49:22', NULL, NULL, NULL, '12 Abak Rd , Uyo Akwa Ibom', NULL, NULL, NULL, NULL, 1, 0, '', NULL),
(16, 'peakcouple@gmail.com', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '234877885588', NULL, NULL, '$2y$10$on3K3DlwlALjBcvmkoOLq.ooMNID/xjNUW7nU4x2.u6OMGAqxhpae', NULL, '2022-04-23 06:17:09', '2022-04-23 06:17:09', NULL, 'peakcouple', NULL, NULL, NULL, NULL, 'Christian', 'Umanah', 0, 0, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `listing_id`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(3, '5', '9', NULL, '2022-04-28 09:37:25', '2022-04-28 09:37:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_intents`
--
ALTER TABLE `payment_intents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment_intents`
--
ALTER TABLE `payment_intents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
