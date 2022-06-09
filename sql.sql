-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 09, 2022 at 09:48 PM
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
-- Table structure for table `budgets`
--

CREATE TABLE `budgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actual_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `estimated_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `paid_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `pending_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `budgets`
--

INSERT INTO `budgets` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`, `user_id`, `actual_price`, `estimated_price`, `paid_price`, `pending_price`) VALUES
(2, 'Decoration', 'This involves the decoration of the arena and items', NULL, '2022-05-03 17:00:54', '2022-05-03 17:00:54', '9', '800', '1000', '455', '545'),
(4, 'Food', 'Different types of food that will be served', NULL, '2022-05-07 06:04:08', '2022-05-07 06:04:08', '9', '2000', '5000', '0', '0'),
(5, 'Food', 'Different types of food that will be served', NULL, '2022-05-07 06:17:20', '2022-05-07 06:17:20', '9', '2000', '5000', '500', '1500'),
(6, 'Food', 'Different types of food that will be served', NULL, '2022-05-26 04:30:07', '2022-05-26 04:30:07', '9', '2000', '5000', '500', '1500'),
(7, 'Food', 'Different types of food that will be served', NULL, '2022-06-01 03:41:38', '2022-06-01 03:41:38', '9', '2000', '5000', '500', '1500'),
(26, 'Dog', 'Different types of food that will be served', NULL, '2022-06-03 19:58:38', '2022-06-03 19:58:38', '9', '2000', '5000', '500', '1500'),
(27, 'Dog', 'Different types of food that will be served', NULL, '2022-06-03 19:58:39', '2022-06-03 19:58:39', '9', '2000', '5000', '500', '1500'),
(28, 'Dog', 'Different types of food that will be served', NULL, '2022-06-03 19:58:41', '2022-06-03 19:58:41', '9', '2000', '5000', '500', '1500'),
(29, 'Dog', 'Different types of food that will be served', NULL, '2022-06-03 19:58:42', '2022-06-03 19:58:42', '9', '2000', '5000', '500', '1500'),
(30, 'Dog', 'Different types of food that will be served', NULL, '2022-06-03 19:58:43', '2022-06-03 19:58:43', '9', '2000', '5000', '500', '1500'),
(31, 'Dog', 'Different types of food that will be served', NULL, '2022-06-03 19:58:44', '2022-06-03 19:58:44', '9', '2000', '5000', '500', '1500'),
(32, 'Dog', 'Different types of food that will be served', NULL, '2022-06-03 19:58:45', '2022-06-03 19:58:45', '9', '2000', '5000', '500', '1500'),
(33, 'Dog', 'Different types of food that will be served', NULL, '2022-06-03 19:58:47', '2022-06-03 19:58:47', '9', '2000', '5000', '500', '1500'),
(34, 'Dog', 'Different types of food that will be served', NULL, '2022-06-03 19:58:48', '2022-06-03 19:58:48', '9', '2000', '5000', '500', '1500'),
(35, 'Dog', 'Different types of food that will be served', NULL, '2022-06-03 19:58:49', '2022-06-03 19:58:49', '9', '2000', '5000', '500', '1500'),
(36, 'Bag', 'Different types of food that will be served', NULL, '2022-06-03 19:59:00', '2022-06-03 19:59:00', '9', '2000', '5000', '500', '1500'),
(37, 'Bag', 'Different types of food that will be served', NULL, '2022-06-03 19:59:01', '2022-06-03 19:59:01', '9', '2000', '5000', '500', '1500');

-- --------------------------------------------------------

--
-- Table structure for table `budget_items`
--

CREATE TABLE `budget_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimated_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actual_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(5, 'Cake', '21', NULL, '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[{\"EMXF\":\"cake5jpegl3oczECck6msmUAeZj8SC7BVdbj2MAl9bFhMz2B4.jpeg\"},{\"64KI\":\"cake4jpeg4pbIWS4B2nV2q5Om1gPQFnxsaG2bxKBPzSjJXvG2.jpeg\"},{\"VjWd\":\"cake3jpegOoifc6lOQqTbphocsyLub5Wlfefx8cUPcetC9RY7.jpeg\"}]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-04-22 01:18:52', '2022-06-09 12:02:40', 0, 1, 1, 1),
(6, 'Cake', '21', NULL, '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[{\"EMXF\":\"cake5jpegl3oczECck6msmUAeZj8SC7BVdbj2MAl9bFhMz2B4.jpeg\"},{\"64KI\":\"cake4jpeg4pbIWS4B2nV2q5Om1gPQFnxsaG2bxKBPzSjJXvG2.jpeg\"},{\"VjWd\":\"cake3jpegOoifc6lOQqTbphocsyLub5Wlfefx8cUPcetC9RY7.jpeg\"}]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-04-22 01:18:52', '2022-06-09 12:02:40', 0, 1, 0, 1),
(7, 'Cake', '21', NULL, '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[{\"EMXF\":\"cake5jpegl3oczECck6msmUAeZj8SC7BVdbj2MAl9bFhMz2B4.jpeg\"},{\"64KI\":\"cake4jpeg4pbIWS4B2nV2q5Om1gPQFnxsaG2bxKBPzSjJXvG2.jpeg\"},{\"VjWd\":\"cake3jpegOoifc6lOQqTbphocsyLub5Wlfefx8cUPcetC9RY7.jpeg\"}]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-04-22 01:18:52', '2022-06-09 12:02:40', 0, 1, 0, 1),
(8, 'pan cake', '21', NULL, '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[{\"EMXF\":\"cake5jpegl3oczECck6msmUAeZj8SC7BVdbj2MAl9bFhMz2B4.jpeg\"},{\"64KI\":\"cake4jpeg4pbIWS4B2nV2q5Om1gPQFnxsaG2bxKBPzSjJXvG2.jpeg\"},{\"VjWd\":\"cake3jpegOoifc6lOQqTbphocsyLub5Wlfefx8cUPcetC9RY7.jpeg\"}]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-04-22 01:18:52', '2022-06-09 12:02:40', 0, 1, 0, 1),
(9, 'Cake', '21', NULL, '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[{\"EMXF\":\"cake5jpegl3oczECck6msmUAeZj8SC7BVdbj2MAl9bFhMz2B4.jpeg\"},{\"64KI\":\"cake4jpeg4pbIWS4B2nV2q5Om1gPQFnxsaG2bxKBPzSjJXvG2.jpeg\"},{\"VjWd\":\"cake3jpegOoifc6lOQqTbphocsyLub5Wlfefx8cUPcetC9RY7.jpeg\"}]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-04-22 01:18:52', '2022-06-09 12:02:40', 0, 1, 0, 1),
(10, 'Cake', '21', NULL, '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[{\"EuPc\":\"cakejpegu0LahhWqb2HX0pt5RkGdOltzgjofMfKUJfIZCoHQ.jpeg\"},{\"IXcv\":\"cake2jpegKagtv98wFAjHzSQa7QsxT3LVD7nL8xHUENokzzhY.jpeg\"},{\"F60T\":\"cake3jpeggtbTpgddsQeTamGZ7wqhNLbhBC4XncnLmQOWqd7J.jpeg\"},{\"fj2Y\":\"cake4jpegJtrYeBUuSWBdEYAENqVALbbDwHpMmldX1tMUiFEc.jpeg\"},{\"HRhL\":\"cake5jpegXQeMXNkPJ8SuGCyPp4UNF2LNuNoj8Hq4mBFKQF7M.jpeg\"},{\"VB3Q\":\"cake_and_dessertpngxJzCZsJdNmlWVEUwT3pxwbTz67kQC2kJvot5gYGJ.png\"}]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-04-22 10:17:32', '2022-06-09 12:02:40', 0, 1, 0, 1),
(11, 'Cake', '21', NULL, '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[{\"KYKZ\":\"cakejpegJGmA5ehOdQm6MSviD1ywzByI8B96E8w94kGHoIe5.jpeg\"},{\"37ce\":\"cake2jpegTVoFKyeKaEdYwNGTY35PMjAeIcnZhTc2JIoowGg1.jpeg\"},{\"G1D7\":\"cake3jpeghrWhvPHP5RRVjlGLagY1s6bZjYPRzftsVRYFxq3p.jpeg\"},{\"BHwo\":\"cake4jpegUmKl3tmK0DeMhjMdtatLbUdbqCWfbrTcJMvGU0nB.jpeg\"},{\"egzL\":\"cake5jpeggjqKsCAqjtstzUmEJj5xszbMIJKGQ5OD82HJghoy.jpeg\"},{\"wBrM\":\"cake_and_dessertpngoYjUthH1yWM32d5APciEX5DfqOSo38XaVNLyRIEN.png\"}]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-04-22 10:18:40', '2022-06-09 12:02:40', 0, 1, 0, 1),
(12, 'Cake', '21', NULL, '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '1', 'cake', '[{\"bHsI\":\"cakejpegXreEKbHI5TnWfzoXTmKISI2GxBVAXYtd5Gkczdn2.jpeg\"},{\"NQ9A\":\"cake2jpegmCdtnjzp1s7t748HmYfTyxTv04RIVLnG470BR0o6.jpeg\"},{\"5ZKZ\":\"cake3jpeg9yCMcPTg9XEDP3DPEU5ihdUPZsO2ox6VSjOVREuW.jpeg\"},{\"Ezuu\":\"cake4jpegkxlH1b9LJ1nH0lPFVZXSPsg7shbw2hvZ0FxhDjdp.jpeg\"},{\"7ynD\":\"cake5jpegU7xWsguKM0JYPw2EtdeKrNFI1Bp9u3HyQdp37atM.jpeg\"},{\"J3FS\":\"cake_and_dessertpnga132oeaSerI2HtZ20tvgqpcQCut0mLHo2dVYoT9c.png\"}]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-04-22 10:37:51', '2022-06-09 12:02:40', 0, 1, 0, 1),
(13, 'Cake', '21', NULL, '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '4', 'cake', '[{\"F9Zu\":\"cakejpegDK41uQvSsuSgSekUDDeyQLlttAoTPoOMB4DdPzsH.jpeg\"},{\"TycW\":\"cake2jpegO0nIc149kBuCk9RPsHtHclZ6tY4FNNF8GbNigQYP.jpeg\"},{\"Gkg8\":\"cake3jpegVJ2cYdOHqFlRNggLmKaTRXDctZS5fnozuZFiFyui.jpeg\"},{\"tsmR\":\"cake4jpegABIG2eJFjW7QFVpWQv88DCxU0zdZTm2PEeGhvEgY.jpeg\"},{\"eWyN\":\"cake5jpegRU9w5Phc37yCqb3itBaqewhFYRArH6pll7Rh62R2.jpeg\"},{\"WPii\":\"cake_and_dessertpngulmAiQqyAz3GXlUffhUwasxg8xfCVBFqPP2iGbPy.png\"}]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-04-22 10:50:58', '2022-06-09 12:02:40', 0, 1, 0, 1),
(14, 'Cake 14', '21', NULL, '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[{\"vSGn\":\"cake3jpegxbmUAXV3rLN4AiRh1xio5bBioYks7G5AcquPb8IQ.jpeg\"},{\"zRlH\":\"cake2jpegH2VL4W7A6gRr6vSL9QbVeFihIPzqfosXomEpNl8Y.jpeg\"},{\"aptS\":\"cake3jpegZ7lf4K1wmU5l8JkPfqmcXJy58Abjfmzg1VOnNCTA.jpeg\"},{\"yix6\":\"cake2jpegf4qPoAnHAhbGtE0LZCCEKSqZbu0hTFVkGVKHhXrY.jpeg\"}]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-04-22 10:52:25', '2022-06-09 12:02:40', 0, 1, 0, 1),
(21, 'Cake 14', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '4', 'cake', '[{\"XhuW\":\"cake4jpegWsKRsHscyIqOJjlCQlD0j6burno3s3y7eeV0klUt.jpeg\"},{\"A7rX\":\"cake3jpeg3hCsPBbpGIiCHVVirWZYSNR0gGIC2SpGX6D7oF78.jpeg\"}]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-04-25 10:31:32', '2022-06-09 12:02:40', 0, 0, 0, 1),
(22, 'Cake', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[{\"SmwW\":\"cake5jpegYLbrpbtBSBiunWN3oFh8BPwT4y0e8O3jAqkvC5Yq.jpeg\"},{\"7Uco\":\"cake4jpeghsm1jA35U6YZ62JdyXvhiAnCbBCgChorR2pxbrGG.jpeg\"},{\"i7zd\":\"cake3jpegYDLxeeyozfSicTTIucPA1imQJsSiXtFcdnfr3gZQ.jpeg\"}]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-04-25 10:34:12', '2022-06-09 12:02:40', 0, 0, 0, 1),
(23, 'Cake', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[{\"EMXF\":\"cake5jpegl3oczECck6msmUAeZj8SC7BVdbj2MAl9bFhMz2B4.jpeg\"},{\"64KI\":\"cake4jpeg4pbIWS4B2nV2q5Om1gPQFnxsaG2bxKBPzSjJXvG2.jpeg\"},{\"VjWd\":\"cake3jpegOoifc6lOQqTbphocsyLub5Wlfefx8cUPcetC9RY7.jpeg\"}]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-04-25 10:58:47', '2022-06-09 12:02:40', 0, 0, 0, 1),
(24, 'Cake', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-05-24 01:03:53', '2022-06-09 12:02:40', 0, 0, 0, 1),
(25, 'Cake', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-05-24 08:29:47', '2022-06-09 12:02:40', 0, 0, 0, 1),
(26, 'Cake', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-05-25 08:29:54', '2022-06-09 12:02:40', 0, 0, 0, 1),
(27, 'Cake', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-05-25 08:30:06', '2022-06-09 12:02:40', 0, 0, 0, 1),
(28, 'Cake', '21', '9', '12 Ibiam street Uyo', '2000', 'uyoi', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-05-25 08:47:29', '2022-06-09 12:02:40', 0, 0, 0, 1),
(29, 'Cake', '21', '9', '12 Ibiam street Uyo', '23232', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-05-25 09:21:57', '2022-06-09 12:02:40', 0, 0, 0, 1),
(30, 'Cake', '21', '9', '12 Ibiam street Uyo', '23232', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '4', 'cake', '[]', '[]', '112.32', '2233.45', NULL, NULL, '323', NULL, '2022-05-25 09:22:07', '2022-06-09 12:02:40', 0, 0, 0, 1),
(31, 'Cake', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-05-25 09:23:32', '2022-06-09 12:02:40', 0, 0, 0, 1),
(32, 'Cake', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[{\"2NrO\":\"screenshot_1pngwHacIOf1hzANLMSYeb2TvT5SVnF9U6rYaEnUGbAO.png\"},{\"widf\":\"screenshot_2pngV0lzTEumt8v8JOqpnLXK1EK8REH8R1d9yZBNmG15.png\"},{\"yDYT\":\"screenshot_3pngq8GkapgnZ0rLMuNV3xR1XjACXJfgmO24wGCHq1nA.png\"}]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-05-25 09:24:04', '2022-06-09 12:02:40', 0, 0, 0, 1),
(33, 'Cake', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[{\"3Sk0\":\"screenshot_1pngklweyapJ74jLTbYjqdHUQenwtmpAbqHht5ZOqy5i.png\"},{\"Bt8U\":\"screenshot_2pngCs9Y8LQVLxYJgCZCOPjWjw1bf7mFh2iXGH4gIoFO.png\"},{\"wm61\":\"screenshot_3pngxrqhu5aioKR7x2LzJQoHiSxf95pahWJKrNjphMNq.png\"}]', '[]', '112.32', NULL, NULL, NULL, NULL, NULL, '2022-05-25 09:26:36', '2022-06-09 12:02:40', 0, 0, 0, 1),
(34, 'Cake', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[{\"0dys\":\"screenshot_1pngD4KFfJAnnqdZnCHCfHuJHh8recrkU9RkT2AxHGKI.png\"},{\"uUOb\":\"screenshot_2pngllofBESNrfQw4LtPobeoEal7ZqMtkmEe1Xdw6NC0.png\"},{\"aJqq\":\"screenshot_3pngNJi0weXcIshvNZpHCE9LbysjU4G6nE0tLoRlYN04.png\"}]', '[]', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-25 09:26:50', '2022-06-09 12:02:40', 0, 0, 0, 1),
(35, 'Cake', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-05-25 09:47:10', '2022-06-09 12:02:40', 0, 0, 0, 1),
(36, 'Cake', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-05-25 09:53:07', '2022-06-09 12:02:40', 0, 0, 0, 1),
(37, 'Pie', '20', '9', '12 Ibiam street Polo', '50,000', 'Polo', 'Pawna', 'south south', 'India', '0', 'pie', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-05-25 23:29:19', '2022-06-09 12:02:40', 0, 0, 0, 1),
(38, 'Pie', '20', '9', '12 Ibiam street Polo', '50000', 'Polo', 'Pawna', 'south south', 'India', '0', 'pie', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-05-25 23:29:42', '2022-06-09 12:02:40', 0, 0, 0, 1),
(39, 'Pie', '20', '9', '12 Ibiam street Polo', '50000', 'Polo', 'Pawna', 'south south', 'India', '0', 'pie', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-05-25 23:33:40', '2022-06-09 12:02:40', 0, 0, 0, 1),
(40, 'Cake', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-05-26 03:27:07', '2022-06-09 12:02:40', 0, 0, 0, 1),
(41, 'Cake', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-05-26 03:27:10', '2022-06-09 12:02:40', 0, 0, 0, 1),
(42, 'Cake', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-05-26 03:27:12', '2022-06-09 12:02:40', 0, 0, 0, 1),
(43, 'Cake', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-05-26 03:27:13', '2022-06-09 12:02:40', 0, 0, 0, 1),
(44, 'Cake', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-05-26 03:27:14', '2022-06-09 12:02:40', 0, 0, 0, 1),
(45, 'Cake', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-05-26 03:27:15', '2022-06-09 12:02:40', 0, 0, 0, 1),
(46, 'Cake', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-05-26 03:27:16', '2022-06-09 12:02:40', 0, 0, 0, 1),
(47, 'Cake', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-05-26 03:27:17', '2022-06-09 12:02:40', 0, 0, 0, 1),
(48, 'Cake', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-05-26 03:27:18', '2022-06-09 12:02:40', 0, 0, 0, 1),
(49, 'Cake', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-05-26 03:27:19', '2022-06-09 12:02:40', 0, 0, 0, 1),
(50, 'Cake', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-05-26 03:27:20', '2022-06-09 12:02:40', 0, 0, 0, 1),
(51, 'Cake', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-05-26 03:27:22', '2022-06-09 12:02:40', 0, 0, 0, 1),
(52, 'Cake', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-05-26 03:27:23', '2022-06-09 12:02:40', 0, 0, 0, 1),
(53, 'Cake', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-05-26 03:27:24', '2022-06-09 12:02:40', 0, 0, 0, 1),
(54, 'Cake', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-05-26 03:27:25', '2022-06-09 12:02:40', 0, 0, 0, 1),
(55, 'Cake Shopping', '21', '9', 'No 12, Ibafo', '29000', 'Ogbomosho', 'Oyo', 'south north', 'Nigeria', '0', 'We bake for selling', '[]', '[]', '112', '2233', NULL, NULL, NULL, NULL, '2022-05-30 12:41:54', '2022-06-09 12:02:40', 0, 0, 0, 1),
(56, 'Cake Shopping', '12', '9', 'No 12, Ibafo', '29000', 'Ogbomosho', 'Oyo', 'south north', 'Nigeria', '4', 'We bake for selling', '[]', '[]', '112', '2233', NULL, NULL, NULL, NULL, '2022-05-30 12:42:11', '2022-06-09 12:02:40', 0, 0, 0, 1),
(57, 'Cake', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-05-30 12:46:30', '2022-06-09 12:02:40', 0, 0, 0, 1),
(58, 'Cake', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-05-30 14:42:24', '2022-06-09 12:02:40', 0, 0, 0, 1),
(59, 'Cake', NULL, '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '4', 'cake', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-05-30 14:43:02', '2022-06-09 12:02:40', 0, 0, 0, 1),
(60, 'Cake', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-05-30 14:43:13', '2022-06-09 12:02:40', 0, 0, 0, 1),
(61, 'Cake', '22', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '0', 'cake', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-05-30 14:43:21', '2022-06-09 12:02:40', 0, 0, 0, 1),
(62, 'Cake 14', '20', '9', '12 Ibiam street Uyo', '30000', 'uyo', 'Akwa Ibom', NULL, 'Nigeria', '0', 'hsjjsddhdj', '[]', '[]', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-30 14:43:39', '2022-06-09 12:02:40', 0, 0, 0, 1),
(63, 'Cake', '1', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '4', 'cake', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-05-30 14:43:47', '2022-06-09 12:02:40', 0, 0, 0, 1),
(64, 'Cake', '10', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '4', 'cake', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-05-30 14:43:57', '2022-06-09 12:02:40', 0, 0, 0, 1),
(65, 'Cake', '19', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '4', 'cake', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-05-30 14:44:09', '2022-06-09 12:02:40', 0, 0, 0, 1),
(66, 'Blessing', '20', '9', '12 Ibiam street Uyo', '20000', 'uyo', 'Akwa Ibom', NULL, 'Nigeria', '0', 'A florist is someone whose job arranging and selling cut flowers.', '[]', '[]', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-30 14:44:38', '2022-06-09 12:02:40', 0, 0, 0, 1),
(67, 'Cake', '20', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south', 'Nigeria', '4', 'cake', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-05-30 14:45:27', '2022-06-09 12:02:40', 0, 0, 0, 1),
(68, 'Cake', '20', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south', 'Nigeria', '4', 'cake', '[]', '[]', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-30 14:46:00', '2022-06-09 12:02:40', 0, 0, 0, 1),
(69, 'Cake', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '4', 'cake', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-05-30 15:09:43', '2022-06-09 12:02:40', 0, 0, 0, 1),
(70, 'Cake', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '4', 'cake', '[]', '[]', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31 19:06:58', '2022-06-09 12:02:40', 0, 0, 0, 1),
(71, 'Cake', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '4', 'cake', '[]', '[]', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31 19:07:45', '2022-06-09 12:02:40', 0, 0, 0, 1),
(72, 'Blessing', '21', '9', 'No1, Adorable novow street', '20000', 'Lagos', 'Lagos', 'South south', 'Nigeria', '4', 'jsjsjjsjdjsjsjdjdjdjdjdjjd', '[]', '[]', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31 20:16:33', '2022-06-09 12:02:40', 0, 0, 0, 1),
(73, 'Cake', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '4', 'cake', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-06-03 21:26:41', '2022-06-09 12:02:40', 0, 0, 0, 1),
(74, 'Cake', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '4', 'cake', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-06-06 03:53:15', '2022-06-09 12:02:40', 0, 0, 0, 1),
(75, 'Cake 14', '21', '9', '12 Ibiam street Uyo', '2000', 'uyo', 'Akwa Ibom', 'south south', 'Nigeria', '4', 'cake', '[]', '[]', '112.32', '2233.45', NULL, NULL, NULL, NULL, '2022-06-06 03:53:48', '2022-06-09 12:02:40', 0, 0, 0, 1),
(76, 'Good Baby', '21', '9', 'No 2, Omolola estate.', '15000', 'Lagos', 'Lagos', 'South', 'Nigeria', '0', 'The best service and support you want to assure', '[]', '[]', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-08 07:49:44', '2022-06-09 12:02:40', 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `listing_comments`
--

CREATE TABLE `listing_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listing_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_approved` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listing_comments`
--

INSERT INTO `listing_comments` (`id`, `user_id`, `listing_id`, `comment`, `is_approved`, `created_at`, `updated_at`) VALUES
(1, '14', '5', 'i love this cake', 1, '2022-06-09 00:14:49', '2022-06-09 00:14:49'),
(2, '14', '5', 'i love this cake', 1, '2022-06-09 00:14:56', '2022-06-09 00:14:56'),
(3, '14', '5', 'i love this cake', 1, '2022-06-09 00:14:58', '2022-06-09 00:14:58'),
(4, '14', '5', 'i love this cake', 1, '2022-06-09 00:14:59', '2022-06-09 00:14:59');

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
(31, '2022_04_27_144406_add_listing_approved', 20),
(32, '2022_05_03_091355_create_task_models_table', 21),
(33, '2022_05_03_120950_create_budgets_table', 22),
(34, '2022_05_03_124036_add_user_id_budgets', 23),
(35, '2022_05_03_180839_create_budget_items_table', 24),
(36, '2022_05_07_011034_add_column_to_budget_table', 25),
(37, '2022_05_12_210814_create_ratings_table', 26),
(38, '2022_05_12_215105_add_rating_row_column', 27),
(39, '2022_05_13_104401_add_dd_rating_auto_approve', 28),
(40, '2022_05_13_120038_add_status_type_payment_intent', 29),
(41, '2022_05_13_122340_add_status_type_payment_intent_next_due_date_58', 30),
(42, '2022_05_13_122455_add_status_type_payment_intent_next_due_date_58_sub_count', 31),
(43, '2022_05_13_195431_add_due_date_and_unit', 32),
(44, '2022_05_13_195921_create_transactions_table', 33),
(45, '2022_05_13_203011_add_next_due_date', 34),
(46, '2022_05_14_071756_add_next_due_date_active', 35),
(47, '2022_05_14_071833_add_sub_count', 35),
(48, '2022_05_14_073618_add_gateway', 36),
(49, '2022_06_08_202900_create_listing_comments_table', 37),
(50, '2022_06_09_001629_add_comment_is_auto_aapprove', 38),
(51, '2022_06_09_062043_create_react_listing_comments_table', 39);

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
('00c6de78b9f6360779087df862006ab8d02052946bbe1837d6470146a7a76d431165722ca40e42e9', 9, 10, 'ithwedapp', '[]', 0, '2022-05-19 16:03:00', '2022-05-19 16:03:00', '2023-05-19 12:03:00'),
('01ba00ddcb1286c7fdec8ed0de694972ed814a41520847918949c0218fd51a1ad54995035621d3e0', 13, 1, 'authToken', '[]', 0, '2022-04-14 16:32:46', '2022-04-14 16:32:46', '2023-04-14 17:32:46'),
('037ea9adba471d4459478cd0fbd7830fb43cba29bf8b11ffb9b73a6324bfdd60b2e52dbda41908df', 14, 10, 'ithwedapp', '[]', 0, '2022-05-25 19:17:53', '2022-05-25 19:17:53', '2023-05-25 15:17:53'),
('03f80e32104dbfa147d893d11a64de0472c0d8e071f39f9707568d576a62c1558199fe1567773fe5', 26, 10, 'authToken', '[]', 0, '2022-05-23 02:57:09', '2022-05-23 02:57:09', '2023-05-22 22:57:09'),
('04297c586973b280a5385cae395d5b5d8b48d9687ff7e81ad4d335f79fdf6a247011a2e9f1cd8bce', 34, 10, 'ithwedapp', '[]', 0, '2022-05-30 12:58:39', '2022-05-30 12:58:39', '2023-05-30 08:58:39'),
('05c9b038f7cacd64c8224002a7eef7da27480dd74c38a7a9ddc8ce8606a961c397bf5efb56573f15', 9, 10, 'ithwedapp', '[]', 0, '2022-05-31 19:04:44', '2022-05-31 19:04:44', '2023-05-31 15:04:44'),
('06020074feed0dac5a403a70857bc2e3a5d9f2d9929e00fcd7b08a88615210bea823bc5568577a86', 34, 10, 'ithwedapp', '[]', 0, '2022-05-28 02:06:25', '2022-05-28 02:06:25', '2023-05-27 22:06:25'),
('06e44d221b34002ab15baa40642cd5ff12c5710f77bfd74cfe5a92cc8fbaa0ffc8b7b3818475cec6', 14, 10, 'ithwedapp', '[]', 0, '2022-05-25 22:35:10', '2022-05-25 22:35:10', '2023-05-25 18:35:10'),
('08de6292546105bb93f4bd109fee56e9ff8d073adec8ffc1781021b27bbf28eccae21c54e7d2a378', 47, 10, 'ithwedapp', '[]', 0, '2022-06-08 09:42:16', '2022-06-08 09:42:16', '2023-06-08 05:42:16'),
('08f44d1f42caa76c9006d05d6b93c51a09a3154e4e2aab57f273740503e48a51dc73c455d23f6d50', 14, 10, 'ithwedapp', '[]', 0, '2022-05-22 00:15:13', '2022-05-22 00:15:13', '2023-05-21 20:15:13'),
('0a7177fc2931952767bfe6436ba6d62a5200c7329d87f63d0438fd081d8e85b29d69b9adbc3fb5e5', 14, 10, 'ithwedapp', '[]', 0, '2022-06-01 02:44:30', '2022-06-01 02:44:30', '2023-05-31 22:44:30'),
('0a78a988ef8e8766e52d83305e7eed17723e8bce51ce7b2595117cbdb5894107f9614f56da748649', 34, 10, 'ithwedapp', '[]', 0, '2022-05-30 15:13:09', '2022-05-30 15:13:09', '2023-05-30 11:13:09'),
('0b2c1318c950dcf8691bf2dd6d78b0ae2b9b3ca509ca265c5da99026e599def92747d4affc670c5f', 9, 10, 'ithwedapp', '[]', 0, '2022-05-25 07:38:28', '2022-05-25 07:38:28', '2023-05-25 03:38:28'),
('0eeac7a8d62536cccde1f9e44b13cc7067e7d0d2c29f51c50b510a988b616996da15cc9843549687', 14, 10, 'ithwedapp', '[]', 0, '2022-06-01 02:26:56', '2022-06-01 02:26:56', '2023-05-31 22:26:56'),
('10bd6f0a78724dda3bba9f64a6b15c856739b784c8d056687f104cdecc39962a97b8a08dd0f347ed', 9, 10, 'ithwedapp', '[]', 0, '2022-05-25 07:35:38', '2022-05-25 07:35:38', '2023-05-25 03:35:38'),
('121386c32c4a88f1e7f151356ebae92830e000e340f6a12129daa748a1033544a5592f37b61a6f65', 27, 10, 'authToken', '[]', 0, '2022-05-23 02:58:56', '2022-05-23 02:58:56', '2023-05-22 22:58:56'),
('124c767e1957bf14cbbc04c2f56394e0d107b71282ab117f976b89b574a39aba029c62034ab09298', 34, 10, 'ithwedapp', '[]', 0, '2022-06-03 05:32:53', '2022-06-03 05:32:53', '2023-06-03 01:32:53'),
('149d613104f0c1a1137ff4e25d972d284940381bc574f7640d0c2f8c023c27180f0505d264d7f8b9', 14, 10, 'ithwedapp', '[]', 0, '2022-05-25 22:44:35', '2022-05-25 22:44:35', '2023-05-25 18:44:35'),
('15119b587faa4e5fb29f1c91b51b2e667df01d6f5745f971e93ebc5f5a6d62592fb5653bb3a8b7ee', 9, 10, 'ithwedapp', '[]', 0, '2022-05-21 16:25:43', '2022-05-21 16:25:43', '2023-05-21 12:25:43'),
('162450c199152453a722cc58fdd2d4c7f282a78f7a9d9717c1c4533d74344ec6ede3fc325ef8bdca', 33, 10, 'authToken', '[]', 0, '2022-05-26 03:16:08', '2022-05-26 03:16:08', '2023-05-25 23:16:08'),
('1704eda91b171f117777af87d82f3bc5ea69c9582c40dda7b02971523699b1bb1b54acd3bba48fd3', 14, 10, 'ithwedapp', '[]', 0, '2022-05-25 23:35:10', '2022-05-25 23:35:10', '2023-05-25 19:35:10'),
('171d13ef87b02d2360f5ac4d9cc41ef63f0a01ef6315d5002c5d6dd8b89b947351130d78f281ff6b', 9, 10, 'ithwedapp', '[]', 0, '2022-05-25 08:45:13', '2022-05-25 08:45:13', '2023-05-25 04:45:13'),
('17e562bd28643a9cd3a12364f29070c316d2457f0ba268f5ecf6f44ba51f69a81533cd417e09f6cd', 9, 10, 'ithwedapp', '[]', 0, '2022-05-24 12:03:03', '2022-05-24 12:03:03', '2023-05-24 08:03:03'),
('17fd3298aa7161b8c060c48d0940a258f64355852362599d8d0c557ef24d72a363c13247264096c2', 34, 10, 'ithwedapp', '[]', 0, '2022-06-03 04:56:02', '2022-06-03 04:56:02', '2023-06-03 00:56:02'),
('181015a8da063150fdcb01668cc9f564860a27d7b4847310fe21b100a8e38f27547c53dac6fd17c8', 14, 10, 'ithwedapp', '[]', 0, '2022-04-28 13:18:01', '2022-04-28 13:18:01', '2023-04-28 14:18:01'),
('187d7a251521c82983cf05504b936447f3346f23edc03549fa2f2cfa1c31d5354be37f5970c7f608', 14, 10, 'ithwedapp', '[]', 0, '2022-05-22 00:11:31', '2022-05-22 00:11:31', '2023-05-21 20:11:31'),
('1979a0e10a9657ce55b426804554abdfdaf6345fe74dfd7e4aec4afaa565695ded405c0643fc48d2', 9, 10, 'ithwedapp', '[]', 0, '2022-05-21 16:13:13', '2022-05-21 16:13:13', '2023-05-21 12:13:13'),
('19c34b8484ff4ef870692d834ce66d1751f754eeb53ba4ac331197c86e28da04f0fe4e584ce74ead', 34, 10, 'ithwedapp', '[]', 0, '2022-05-30 12:56:56', '2022-05-30 12:56:56', '2023-05-30 08:56:56'),
('1a5302781166ad4766b8875ad6204024cabc075efaa6627065fabb425b6a0a4613c033affd48646f', 36, 10, 'authToken', '[]', 0, '2022-05-30 15:03:06', '2022-05-30 15:03:06', '2023-05-30 11:03:06'),
('1aa93db4949ab5d9938e40aec7390642eb14528cccd79ac0ce43f915ba0d77ee988f558450a05894', 14, 10, 'ithwedapp', '[]', 0, '2022-05-21 19:23:02', '2022-05-21 19:23:02', '2023-05-21 15:23:02'),
('1ae57b90bb5400aea05ac14c996c8407e474b5eae0f2567088ee6473143176d3c58afa3e8c44c5de', 9, 10, 'ithwedapp', '[]', 0, '2022-05-22 00:13:06', '2022-05-22 00:13:06', '2023-05-21 20:13:06'),
('1b9a6cc509e9972b0134ddf343cd4177ffa1b44ad52ad7d0b1531522c8e9d34fa47abf0ee222c025', 34, 10, 'ithwedapp', '[]', 0, '2022-05-31 22:04:24', '2022-05-31 22:04:24', '2023-05-31 18:04:24'),
('1d7bf434da06bbe91b4c397b878df06511319acadc38a59910f203e782d04c780cb85897c9449ff6', 9, 10, 'ithwedapp', '[]', 0, '2022-05-21 16:10:48', '2022-05-21 16:10:48', '2023-05-21 12:10:48'),
('1da6df08c0f40f25112fa8a155cd1d36e0cacbc8fed9b3f47b0edfa16dde681dd1c8d8cab40f5c5b', 9, 10, 'ithwedapp', '[]', 0, '2022-06-08 07:18:32', '2022-06-08 07:18:32', '2023-06-08 03:18:32'),
('1e17578db5aea20e64697a295679dc39aeee33b2d9927e769a674a639f9f2f3ff2e9eda6bc85dc47', 34, 10, 'ithwedapp', '[]', 0, '2022-06-03 05:08:22', '2022-06-03 05:08:22', '2023-06-03 01:08:22'),
('1f0de28eaa79ae87e9cb43677633ad17bd6179e8e338f84cebe78a9f14b09b44ec9e9d61f30bd205', 34, 10, 'ithwedapp', '[]', 0, '2022-06-04 16:25:51', '2022-06-04 16:25:51', '2023-06-04 12:25:51'),
('1f8ae7286e0d7532bb42a18ab99ddb9063e70caed76297fe2ddbcccd789526b8cd940aef7a497354', 34, 10, 'ithwedapp', '[]', 0, '2022-06-03 08:37:52', '2022-06-03 08:37:52', '2023-06-03 04:37:52'),
('20285d0ddb8662cd40484eeb8a40bfc667dcf671738f63ed06c1cbe6d3591a93280f760fe73d3e36', 34, 10, 'ithwedapp', '[]', 0, '2022-06-01 00:17:24', '2022-06-01 00:17:24', '2023-05-31 20:17:24'),
('2088d6edb4d5b5fe73e61bc30ca66b9962efdc5031edef0276926dee265110688b8317d3cd62e8ef', 34, 10, 'ithwedapp', '[]', 0, '2022-06-03 19:14:04', '2022-06-03 19:14:04', '2023-06-03 15:14:04'),
('20c22bf3bbb6514555753e972f149d4f27192fd8614cee904eeeec3790e90ada81f8371429deb6b5', 34, 10, 'ithwedapp', '[]', 0, '2022-06-04 22:25:13', '2022-06-04 22:25:13', '2023-06-04 18:25:13'),
('224585f34e200813ef778b36603bceda0a8922ebb1da3738312add02a9e40b040fb2b41370e1e7bb', 9, 10, 'ithwedapp', '[]', 0, '2022-05-25 08:49:39', '2022-05-25 08:49:39', '2023-05-25 04:49:39'),
('23f236d09486bc3ab4044da9d64e64511b759d1e05b669c1c2d376e465374605bd51ad7b3a5fe209', 47, 10, 'ithwedapp', '[]', 0, '2022-06-08 09:33:13', '2022-06-08 09:33:13', '2023-06-08 05:33:13'),
('24a5f533c059456860b08131fd0bbec6f38da4f8c1c541c3ee07a648d728f33bd1de94f0a53d89ff', 14, 10, 'ithwedapp', '[]', 0, '2022-06-01 02:23:34', '2022-06-01 02:23:34', '2023-05-31 22:23:34'),
('2505a1b5a836d7e236c25bb01534b4d83ca8505b228e094e3d18adf308234fa4e33c25e5a8034c84', 9, 10, 'ithwedapp', '[]', 0, '2022-05-21 15:35:56', '2022-05-21 15:35:56', '2023-05-21 11:35:56'),
('2564a4d18317e7e9ca90a40e7a969b4c475f0eb2fd855a9ded3f06fedcbc655274528d3075de9252', 14, 10, 'ithwedapp', '[]', 0, '2022-06-04 21:46:22', '2022-06-04 21:46:22', '2023-06-04 17:46:22'),
('256dcd29581fdb817872195539bf7e465e3f5b0c116a7e9a01414e56a269759f8e7d4120174fba63', 9, 10, 'ithwedapp', '[]', 0, '2022-05-21 15:39:00', '2022-05-21 15:39:00', '2023-05-21 11:39:00'),
('27a749b4edccc8380d33f177a9ae66d2c28d368fd04345a853ad73d5d4028e6a0ad2a8d80a10ae50', 9, 10, 'ithwedapp', '[]', 0, '2022-05-26 04:25:36', '2022-05-26 04:25:36', '2023-05-26 00:25:36'),
('2bf506b55f026bed0ac1f5c46dbf28bb94e247071c1e803b68be1c7e4467069c6bcc91362e83761d', 9, 10, 'ithwedapp', '[]', 0, '2022-05-21 16:37:06', '2022-05-21 16:37:06', '2023-05-21 12:37:06'),
('2c5c21223cd093d209e7d5d5cf209990e08b8b80f6330dded125158ba2ee29b5a0f317ff265e87b1', 9, 10, 'ithwedapp', '[]', 0, '2022-05-31 19:01:32', '2022-05-31 19:01:32', '2023-05-31 15:01:32'),
('2ca9c283c315a589c1148f4d0739e3917c9a063ee6320c8005d81ce9e0fc11d4bf487c8ecce54be3', 14, 10, 'ithwedapp', '[]', 0, '2022-06-01 01:29:10', '2022-06-01 01:29:10', '2023-05-31 21:29:10'),
('2dfe04d7a45e5b3e675b238294d534f3c82c658706f60fa018c5d15c7172be69164d397dc73b0792', 9, 10, 'ithwedapp', '[]', 0, '2022-06-07 07:39:36', '2022-06-07 07:39:36', '2023-06-07 03:39:36'),
('2ef108db210f86cad6ad619bbd712c1f9760c798b07cb472f83dca8fedd6fedf3256412ad84320af', 34, 10, 'ithwedapp', '[]', 0, '2022-05-28 02:02:00', '2022-05-28 02:02:00', '2023-05-27 22:02:00'),
('2f0e0eeca01f78bdeda4ae243cf5fe19e11022945cd4b54b6ddbf710fb3bf6011857fede86d734cd', 34, 10, 'ithwedapp', '[]', 0, '2022-05-28 02:11:48', '2022-05-28 02:11:48', '2023-05-27 22:11:48'),
('32839c29635162feebbce847fb3bb8be6dd1883c18d5ab599b2f4467a44f213255a8e30abe8fd5aa', 14, 10, 'ithwedapp', '[]', 0, '2022-05-23 19:22:13', '2022-05-23 19:22:13', '2023-05-23 15:22:13'),
('344a46a885e6b10e676fe1f8b9772d467cf89c362d3d2b88abe0b7c9aa70940dc269e147576f3511', 9, 10, 'ithwedapp', '[]', 0, '2022-05-25 09:18:12', '2022-05-25 09:18:12', '2023-05-25 05:18:12'),
('344d254e7649d8e75e451f4f06bd6a115de584b91f9b3e342e30bc11118e88dce373498cce81ea1d', 17, 10, 'ithwedapp', '[]', 0, '2022-05-23 19:50:23', '2022-05-23 19:50:23', '2023-05-23 15:50:23'),
('3460bb2d07bdb81f093c65673c95dd343531563d0582996f03ecc574e17536b644fd2df8160d5fec', 14, 10, 'ithwedapp', '[]', 0, '2022-06-01 02:10:26', '2022-06-01 02:10:26', '2023-05-31 22:10:26'),
('34733c135ede97142f05f5df066e0472c473e2a888360909482e8c40989bb8343c9805eb2e028d67', 34, 10, 'ithwedapp', '[]', 0, '2022-05-31 22:05:48', '2022-05-31 22:05:48', '2023-05-31 18:05:48'),
('35cfe9fe101e588637d434951bc29133e97ac3cc57e2ee643648be4da5be7ca21f49df8dc283521a', 9, 10, 'ithwedapp', '[]', 0, '2022-05-19 15:16:08', '2022-05-19 15:16:08', '2023-05-19 11:16:08'),
('37c97bc000880534d313a6ae178ef43f220018a7ecaa95135fcc2b21a40f62cc395f39edaea9eab8', 34, 10, 'ithwedapp', '[]', 0, '2022-05-28 02:51:36', '2022-05-28 02:51:36', '2023-05-27 22:51:36'),
('392290e8a2d0dc230eeeef2c7e559bc6b00f3ba45df6538a5b0173deb5f44b903c46a1c9058b257e', 14, 10, 'ithwedapp', '[]', 0, '2022-05-23 19:22:23', '2022-05-23 19:22:23', '2023-05-23 15:22:23'),
('39ea036001ed3f742fd28cd0bea1faacc7cac815fe384c60023ebcf2fcc215d3655440c6145d4eb5', 14, 10, 'ithwedapp', '[]', 0, '2022-05-26 17:29:56', '2022-05-26 17:29:56', '2023-05-26 13:29:56'),
('3a5b979ca08e0a62c2417254309771b074398ff028cbaf489c61f4d58fb0c8d311ac9703994db515', 32, 10, 'ithwedapp', '[]', 0, '2022-05-26 04:16:23', '2022-05-26 04:16:23', '2023-05-26 00:16:23'),
('3b76b82f677516aec92f1040da04e2d06de1dcc77fe01d1ef89ef2b43598cd24a2e2c8ae9fd218b2', 14, 10, 'ithwedapp', '[]', 0, '2022-05-25 18:24:00', '2022-05-25 18:24:00', '2023-05-25 14:24:00'),
('3cabcb995a90777d1221b3f122b960f91f980a9f418fc65c4ea63f3ac3afea22a73e9301d355d82e', 14, 10, 'ithwedapp', '[]', 0, '2022-06-04 02:19:38', '2022-06-04 02:19:38', '2023-06-03 22:19:38'),
('3cbc99835716edf9cdc13a664e2f1e70548a57641a23f2a3a4954b60ca6d05946232cff4adc36e7c', 9, 10, 'ithwedapp', '[]', 0, '2022-05-25 10:02:42', '2022-05-25 10:02:42', '2023-05-25 06:02:42'),
('3e78e65ae529405802646a56e1ed04850aa55e330e99a0d1f6e1651281f49f156167120749009587', 6, 1, 'authToken', '[]', 0, '2022-04-14 07:29:10', '2022-04-14 07:29:10', '2023-04-14 08:29:10'),
('42a585d0131525589881cc98427b3570d97f3ba95bb9ee069cf85f81ad64509254eb0f985db49277', 14, 10, 'ithwedapp', '[]', 0, '2022-05-21 18:33:46', '2022-05-21 18:33:46', '2023-05-21 14:33:46'),
('4386c3797dde910587ff4119fc5cece57dbe306533cf0fe00ebd4c4dd816043c037ea9568923fc0d', 34, 10, 'ithwedapp', '[]', 0, '2022-05-30 14:58:20', '2022-05-30 14:58:20', '2023-05-30 10:58:20'),
('439c7ba0f5ec5532f21e8033c3ebc15da4f7c87cc0bd3c006afbd0710d4a1645a63eb4d96cbe4ef5', 14, 10, 'ithwedapp', '[]', 0, '2022-05-25 19:11:47', '2022-05-25 19:11:47', '2023-05-25 15:11:47'),
('4775a4d4ec889754ac091d205364571e326c4ef82ee7ead88ec1be955baa42bb9ecf04af46754e6b', 41, 10, 'authToken', '[]', 0, '2022-06-01 19:59:26', '2022-06-01 19:59:26', '2023-06-01 15:59:26'),
('47bb94146393d3ee03b100967ca9cd592e07f93606f7d5247b6c02d440654f0b2f27b7f4cd0e89f4', 9, 10, 'ithwedapp', '[]', 0, '2022-06-07 03:00:50', '2022-06-07 03:00:50', '2023-06-06 23:00:50'),
('48574a205d37e62744d57972d17e20d1eb3736049cfaca35f3f44860c878f441c29db82137d5c318', 38, 10, 'ithwedapp', '[]', 0, '2022-06-07 20:11:02', '2022-06-07 20:11:02', '2023-06-07 16:11:02'),
('496dd014376aa70c2d1c27361797db1145b84e69d73ed94a3f0aba82dfee47f88f31b63754fcf6c6', 34, 10, 'ithwedapp', '[]', 0, '2022-06-03 19:08:39', '2022-06-03 19:08:39', '2023-06-03 15:08:39'),
('4cbdeea47d65be04531a9e826c0752c744abbbd16ef988ae9da030c9bfb5a35335dfb9c34ad2cd59', 34, 10, 'ithwedapp', '[]', 0, '2022-05-30 14:41:35', '2022-05-30 14:41:35', '2023-05-30 10:41:35'),
('4dc336f825b1828e4d6e7e8fcb99597589fdeb25760d201b65c34e310a3ffd29c99b4e128fc3a2b3', 14, 10, 'ithwedapp', '[]', 0, '2022-06-08 19:22:21', '2022-06-08 19:22:21', '2023-06-08 20:22:21'),
('4dd0033c0a03413ec617123b685378f1966503dc9ecdda39a9a9ba1c366ba21ea644787ae9f8bda4', 34, 10, 'ithwedapp', '[]', 0, '2022-05-30 13:04:07', '2022-05-30 13:04:07', '2023-05-30 09:04:07'),
('4f617e0096d173bba76d8147a8ed0bd016c38d45d2727d4072166a357d9325f66913ac5bfcda530b', 9, 10, 'ithwedapp', '[]', 0, '2022-06-08 08:55:15', '2022-06-08 08:55:15', '2023-06-08 04:55:15'),
('4fd985e9244fea215386e30ff01887626e051e138ab02959bcdefdffac9ed86da508e5152fa69cbe', 3, 1, 'authToken', '[]', 0, '2022-04-14 07:15:40', '2022-04-14 07:15:40', '2023-04-14 08:15:40'),
('504177fe88f1a113afe33f223cc0fcbf13abfb006af6cc34ffdc10316b428e6d27bf6f83231b0592', 14, 10, 'ithwedapp', '[]', 0, '2022-05-25 19:15:36', '2022-05-25 19:15:36', '2023-05-25 15:15:36'),
('513e6c268284d8912dfdf4d85dd4a18dd1a7a308382d21076b37d8d79c206d0a7a58f5b285f62930', 14, 1, 'authToken', '[]', 0, '2022-04-14 16:33:30', '2022-04-14 16:33:30', '2023-04-14 17:33:30'),
('51a1a4cd4b108ce76fea363ddc464019cd143fdc4d10eff8e613ac0878efe04cc65896c4fba67420', 43, 10, 'ithwedapp', '[]', 0, '2022-06-01 20:05:19', '2022-06-01 20:05:19', '2023-06-01 16:05:19'),
('51cafa8af5d9d4d110ea6d10778298ac6790b1749f220ffd4aeb12f1b100dbb83c7255ca217df572', 18, 10, 'authToken', '[]', 0, '2022-05-21 17:04:41', '2022-05-21 17:04:41', '2023-05-21 13:04:41'),
('5248b9e2b6a830f168cb91bfecc1af9a44bb4bf970870cad4bed278f8d87ddb5afd49621f479bc22', 7, 1, 'authToken', '[]', 0, '2022-04-14 15:12:13', '2022-04-14 15:12:13', '2023-04-14 16:12:13'),
('52cca26863d5c84a9a6e319b1fb882b302639db2dd9e12493f965cc48d20b53a078a9e1344b90b29', 39, 10, 'ithwedapp', '[]', 0, '2022-06-01 03:09:14', '2022-06-01 03:09:14', '2023-05-31 23:09:14'),
('54cdac1e3d6baa59528e9617f70774465eeca0e8c54f09f67a633c91c0dd3836f8fc1c7534e7ce4a', 32, 10, 'ithwedapp', '[]', 0, '2022-05-26 03:49:26', '2022-05-26 03:49:26', '2023-05-25 23:49:26'),
('55705907bfdd3ec9f5ad49ac782e4d0e7f2902bd613e03c98e1fe056f170de564048210c7c897c3a', 14, 10, 'ithwedapp', '[]', 0, '2022-05-28 11:28:50', '2022-05-28 11:28:50', '2023-05-28 07:28:50'),
('55d796dadb8e200d966f1ffc5999e5c8de1e0758d729cfd30b2f4299c5d583e4c3a2e2639546f597', 14, 10, 'ithwedapp', '[]', 0, '2022-05-25 18:12:45', '2022-05-25 18:12:45', '2023-05-25 14:12:45'),
('56f65e4a9da2779e696b001b46a564822cff180db9ad680295abb5da01590e26864ef5b14f8bf363', 23, 10, 'authToken', '[]', 0, '2022-05-21 18:12:31', '2022-05-21 18:12:31', '2023-05-21 14:12:31'),
('5769e34a8def24016842a5c66406c21d442ad6ff929d6fcb66d7059fd34497641da441cae8a18c7a', 34, 10, 'ithwedapp', '[]', 0, '2022-05-30 12:45:33', '2022-05-30 12:45:33', '2023-05-30 08:45:33'),
('577290b35d0f6709bd6b43a24695b6c1286f88ddcee0393e3bffa6576b7e42d293642237e99cabff', 9, 10, 'ithwedapp', '[]', 0, '2022-05-21 15:35:13', '2022-05-21 15:35:13', '2023-05-21 11:35:13'),
('583e670229dc954d78a23d2da20ffef0ec48141b3f85fb90bfc5440be7d52649582a5ec31a39a250', 9, 10, 'ithwedapp', '[]', 0, '2022-05-13 01:39:11', '2022-05-13 01:39:11', '2023-05-13 02:39:11'),
('594d35bedb8f59697f98004fb729652c5a7a62fe739b78d6ff358173780025d9cc101c59600083e1', 14, 10, 'ithwedapp', '[]', 0, '2022-05-21 18:14:52', '2022-05-21 18:14:52', '2023-05-21 14:14:52'),
('5987cc2f709a6b3fc188f4ae8ce1f9326b32e5abf09bc0bd81f35147012b23aaa6b2e51b04401e71', 9, 10, 'ithwedapp', '[]', 0, '2022-04-28 13:19:47', '2022-04-28 13:19:47', '2023-04-28 14:19:47'),
('5995927ad5f2a0aa088fd6a075c9df45a2f8fb2ca1edba76a6f91fcff502d1ea6afa7ba84dd64876', 9, 10, 'ithwedapp', '[]', 0, '2022-05-25 09:29:54', '2022-05-25 09:29:54', '2023-05-25 05:29:54'),
('5a1ed6e0eb136bbadffea98459ee0669477f988afc3784b4ab01d401dc45573c9cbf3d0b3b7e8618', 9, 10, 'ithwedapp', '[]', 0, '2022-05-24 07:12:48', '2022-05-24 07:12:48', '2023-05-24 03:12:48'),
('5b6b56cff5b76d94d13a1494d954d2b28b1af81a8dcb142b7a6b9e0de4de115cba202b4bf7b6ddcb', 47, 10, 'ithwedapp', '[]', 0, '2022-06-08 06:12:03', '2022-06-08 06:12:03', '2023-06-08 02:12:03'),
('5c3be382fcdec04d87748034a561c67c58145a15bfbdadba7e1fe1d3c430f1949bdceda384041c50', 9, 10, 'ithwedapp', '[]', 0, '2022-05-24 12:39:30', '2022-05-24 12:39:30', '2023-05-24 08:39:30'),
('5c477971b514a1aa406a6db00932b35e1b64759a24e4144d5bed1dd8d9549e8eeee616b72c729518', 47, 10, 'ithwedapp', '[]', 0, '2022-06-08 09:43:17', '2022-06-08 09:43:17', '2023-06-08 05:43:17'),
('5d203bf36ce92e65938ccba2d0c63a6dbce70469c635083e055abee9d0ad18d9f8854993dd09c206', 9, 10, 'ithwedapp', '[]', 0, '2022-06-01 01:29:26', '2022-06-01 01:29:26', '2023-05-31 21:29:26'),
('5db2696ac7ccc76f385abe9d1c64e5ea793ff7550bf7f2b3845e8c4a4817f775932632a3212a8327', 9, 10, 'ithwedapp', '[]', 0, '2022-06-07 05:21:11', '2022-06-07 05:21:11', '2023-06-07 01:21:11'),
('5f69a0e556ff6aef78a795ccad04d90881cb4e5fb7ac0ca7301f9c64ecb73ad7dc9e2b9974eb03f9', 46, 10, 'authToken', '[]', 0, '2022-06-01 21:10:12', '2022-06-01 21:10:12', '2023-06-01 17:10:12'),
('60164ae0d00c44af2219e3b51c47bae0992f621b5e610c20becb2ad46b8d7a940b25d74a99b6cabd', 9, 10, 'ithwedapp', '[]', 0, '2022-05-28 02:36:52', '2022-05-28 02:36:52', '2023-05-27 22:36:52'),
('608a126f17f2e7805459cff7235f1d3fb5a791712c9eed30dc566a0e169acc956382e6eb7aa43386', 34, 10, 'authToken', '[]', 0, '2022-05-28 01:39:06', '2022-05-28 01:39:06', '2023-05-27 21:39:06'),
('60980d019ae8e5aa4fc7bd03144905e0a8e143c22a5e5cb692c504944e62d4771677bfb542016fff', 14, 10, 'ithwedapp', '[]', 0, '2022-05-25 18:44:12', '2022-05-25 18:44:12', '2023-05-25 14:44:12'),
('60cbcd8397d8f8dbf869ba88eed3b4d7a7a9a8f365e2656daa8074fdd7d58175684f3b240341f44e', 32, 10, 'ithwedapp', '[]', 0, '2022-05-26 03:43:51', '2022-05-26 03:43:51', '2023-05-25 23:43:51'),
('618eb1093f848c26973d848555dd6636871c81934ec59fdc71937b9e39c6c05b6dd972e203b12ab5', 9, 10, 'ithwedapp', '[]', 0, '2022-05-21 03:00:04', '2022-05-21 03:00:04', '2023-05-20 23:00:04'),
('61b97422429e8525e1035e2f12582a6bfc16f5fa77815e2976151bad3ec26f00aeccb314a98a4f90', 36, 10, 'ithwedapp', '[]', 0, '2022-05-30 15:05:22', '2022-05-30 15:05:22', '2023-05-30 11:05:22'),
('62b5cddb5e8b45dbeac9141f97be79d237ff42c71de457eb360d2eb7775b5800dd60e2ac361ee5fd', 34, 10, 'ithwedapp', '[]', 0, '2022-05-30 14:28:19', '2022-05-30 14:28:19', '2023-05-30 10:28:19'),
('6361e060f39e512db8218bda3aa098b79582ca70302af152c4d7d71b03db80853d842797f3186ddd', 38, 10, 'ithwedapp', '[]', 0, '2022-06-07 20:11:01', '2022-06-07 20:11:01', '2023-06-07 16:11:01'),
('642dbc94fda469d794c0030e8b45f33408a373fc5dc7e816548879f94b959c701ee692d70f397d35', 9, 10, 'ithwedapp', '[]', 0, '2022-05-25 07:40:56', '2022-05-25 07:40:56', '2023-05-25 03:40:56'),
('646bd01eae13b128eb79508f1dbe61f1a1d3e31de89e67903b6ca5697a4e584a52f76df677c05f67', 30, 10, 'ithwedapp', '[]', 0, '2022-05-26 03:00:21', '2022-05-26 03:00:21', '2023-05-25 23:00:21'),
('6563d1b17a94cb34dbf1dd9e9348fe05bf947355da4ce926a0f48e761cf3d030cd54d46dcb745749', 34, 10, 'ithwedapp', '[]', 0, '2022-05-30 13:19:36', '2022-05-30 13:19:36', '2023-05-30 09:19:36'),
('666b966e201fcd100d4b78ac1d689d2c24126e1d0145514c01e252ee92f4675db4a5a91bbd6e021e', 9, 10, 'ithwedapp', '[]', 0, '2022-05-24 02:13:03', '2022-05-24 02:13:03', '2023-05-23 22:13:03'),
('677fce6c0e10032034b77a8a0381af1fb0a4c49636aaddb4cc9bb47bde5121c90916a4b4d395e98d', 14, 10, 'ithwedapp', '[]', 0, '2022-06-01 00:30:52', '2022-06-01 00:30:52', '2023-05-31 20:30:52'),
('684c6c39fe6c1d695e2328ae04851413252c88d2488502e7eeb994fa242cde61916c0d04f9fe64a4', 11, 1, 'authToken', '[]', 0, '2022-04-14 15:29:58', '2022-04-14 15:29:58', '2023-04-14 16:29:58'),
('689e1272447f65f4850998ef3b21c66505871e0cf76349c372698fa191e76749c083c7f85d2ddf27', 9, 10, 'ithwedapp', '[]', 0, '2022-05-25 05:55:21', '2022-05-25 05:55:21', '2023-05-25 01:55:21'),
('68c9d9715c15412c2a6fa65e0113def8968d1c798c9a556a79a210df224f936e26f9ddedd6e64e8f', 39, 10, 'ithwedapp', '[]', 0, '2022-06-01 02:58:27', '2022-06-01 02:58:27', '2023-05-31 22:58:27'),
('68e84281f8d182c851eff5b4a0135923210dfd0b86df23d27dde86202a273e6c0ef5d25e0be53029', 9, 10, 'ithwedapp', '[]', 0, '2022-05-25 08:01:53', '2022-05-25 08:01:53', '2023-05-25 04:01:53'),
('6b6557786b138021731a5064a6da97c4f200b443ec7302caace4278c9cfd3c6f2089dd101babab98', 5, 1, 'authToken', '[]', 0, '2022-04-14 07:21:33', '2022-04-14 07:21:33', '2023-04-14 08:21:33'),
('6b78b7197e5accf5e574e4499335b533a342e26924818571da68824d1501ca44842073512b5ea1c4', 20, 10, 'authToken', '[]', 0, '2022-05-21 17:05:50', '2022-05-21 17:05:50', '2023-05-21 13:05:50'),
('6c4ad0074d95e39bd230cdcae7cf05a0c4d31501907fd7ec1ae49f71584f75601f03ada8609b5d7d', 32, 10, 'ithwedapp', '[]', 0, '2022-05-26 03:06:59', '2022-05-26 03:06:59', '2023-05-25 23:06:59'),
('6e0bebef98229d646b06c63d963793a73896337c9e9c7386e6e2aa18f28eddfb16cb2662cd4d66d8', 19, 10, 'authToken', '[]', 0, '2022-05-21 17:05:42', '2022-05-21 17:05:42', '2023-05-21 13:05:42'),
('6e87155a7470ac6a121a0e36a4873b9cdcfb7b29178755790df614e5da1afe454429f1c6e282e70a', 14, 1, 'ithwedapp', '[]', 0, '2022-04-14 17:17:52', '2022-04-14 17:17:52', '2023-04-14 18:17:52'),
('6f5d8328929cf01c13165f75fc939b203d94146ab1188086a5668e6e1e03dc4a9594142a7ee73353', 34, 10, 'ithwedapp', '[]', 0, '2022-06-03 09:33:07', '2022-06-03 09:33:07', '2023-06-03 05:33:07'),
('6f927f2ded81df76fc74bcc80c2791d9b412ce3616702b1a90f6f3b8c81ad162349ffaf5dece49c2', 38, 10, 'ithwedapp', '[]', 0, '2022-06-01 00:57:06', '2022-06-01 00:57:06', '2023-05-31 20:57:06'),
('709afe54f554bd32c0ca2175a3a20fa4aeec3d06e7120589624c97b6aa9c1c28e3332268abf552f7', 9, 10, 'ithwedapp', '[]', 0, '2022-05-24 07:51:16', '2022-05-24 07:51:16', '2023-05-24 03:51:16'),
('70fc45cc4459d3a8d042a3d06209008e0c3f16833fc280ead9aee38807e7c2171447e4ebbf877028', 9, 10, 'ithwedapp', '[]', 0, '2022-05-24 08:09:07', '2022-05-24 08:09:07', '2023-05-24 04:09:07'),
('723a3c9bc84370e102c1f2673b5101208b58f65707fe0272ff0e1f153d4cd6327be518050397bffe', 47, 10, 'ithwedapp', '[]', 0, '2022-06-07 08:56:41', '2022-06-07 08:56:41', '2023-06-07 04:56:41'),
('739c980bcc666e9b0f2cde7d0f1c12f59f034befe9603dd15bda40e08b26893b704e704f92c1eb95', 47, 10, 'ithwedapp', '[]', 0, '2022-06-08 06:15:45', '2022-06-08 06:15:45', '2023-06-08 02:15:45'),
('742702e4b68a5c0f9de8774729d8dc50fa4722fb313a9546ff38e357fb9ea76d30f32efcc73c922b', 47, 10, 'ithwedapp', '[]', 0, '2022-06-08 06:56:39', '2022-06-08 06:56:39', '2023-06-08 02:56:39'),
('7625c4c7d36a5933743f2733192534d73d8340c487a06d691947674aea33b5fcd7825863521584f2', 32, 10, 'ithwedapp', '[]', 0, '2022-05-26 03:46:51', '2022-05-26 03:46:51', '2023-05-25 23:46:51'),
('7796b337865c467d0a90d76a648d16a17eac6827e4df18c1c3fb8b73b2658192c9d7e9cad64fe03a', 28, 10, 'authToken', '[]', 0, '2022-05-23 19:27:43', '2022-05-23 19:27:43', '2023-05-23 15:27:43'),
('7798640446c6c2ed1133a3e89699e06d5aa9f46d0b67d0e192cf71589ea0161791eb17dd24d6bc8e', 34, 10, 'ithwedapp', '[]', 0, '2022-05-30 13:21:15', '2022-05-30 13:21:15', '2023-05-30 09:21:15'),
('78ba8544e536ca8a5f164bfe217830a2003fa56a68f67a4cd6198558b4d80cc27ee68d7aed387e7f', 45, 10, 'authToken', '[]', 0, '2022-06-01 21:06:40', '2022-06-01 21:06:40', '2023-06-01 17:06:40'),
('78c5c7d564e71140558bc9fca388b15d9d07dd85932cf5491533655573be68625092fa66db39ad74', 14, 10, 'ithwedapp', '[]', 0, '2022-05-25 18:56:39', '2022-05-25 18:56:39', '2023-05-25 14:56:39'),
('79ff5d2dc44a0112c0e46082b2c7e6bcbfd77ac570dbbeeff3de1136422dced2dc4f906460d664f2', 9, 10, 'ithwedapp', '[]', 0, '2022-05-24 07:56:13', '2022-05-24 07:56:13', '2023-05-24 03:56:13'),
('7a77721b8bed0e91359558a4da143ba4ec35311f1667ce91781044667be1410242041e2a9d30ad10', 34, 10, 'ithwedapp', '[]', 0, '2022-05-30 12:25:11', '2022-05-30 12:25:11', '2023-05-30 08:25:11'),
('7ab0134b23fe7914aac5f27d6b8dc177456b0e76dc06e549e19399b71de41e5d43bc41d2cc80d201', 9, 10, 'ithwedapp', '[]', 0, '2022-05-23 02:44:26', '2022-05-23 02:44:26', '2023-05-22 22:44:26'),
('7b00eeb10798654e91925b63cc30677585f739fe1a8da46d793bab51a1e889e819a79c0a87d97f11', 21, 10, 'authToken', '[]', 0, '2022-05-21 17:06:35', '2022-05-21 17:06:35', '2023-05-21 13:06:35'),
('7b04c6b07fd26e88c75c0b2cb74ce6380a323ed279dca585a8593c144355f32c6cde7cab7ecc2511', 9, 10, 'ithwedapp', '[]', 0, '2022-04-27 19:14:17', '2022-04-27 19:14:17', '2023-04-27 20:14:17'),
('7d48ce04167bed9e1d06767757d913d26a1a2b41f217cb22211b8ebe242ee8c53b740fc6271e4279', 34, 10, 'ithwedapp', '[]', 0, '2022-05-31 19:56:39', '2022-05-31 19:56:39', '2023-05-31 15:56:39'),
('7e3093828065233b117849bf0927020d7c3412510dfc8e238dc1e4ceecfb3833bec374db85a027af', 14, 10, 'ithwedapp', '[]', 0, '2022-05-23 19:22:31', '2022-05-23 19:22:31', '2023-05-23 15:22:31'),
('7f41a3976c1dfa425a0a141c381b9f8a26736221ea94e7246018298542f8871372ec473e03d0f5f4', 30, 10, 'authToken', '[]', 0, '2022-05-26 02:57:25', '2022-05-26 02:57:25', '2023-05-25 22:57:25'),
('7f7802f60ebd29a34d17499b531787469df8a836b0a3f0c3d611b27ee040f3a158cd88d8139b07c5', 9, 10, 'ithwedapp', '[]', 0, '2022-05-21 16:37:56', '2022-05-21 16:37:56', '2023-05-21 12:37:56'),
('7fe202697d9bf1fbc863e4b5e1bcda5219335cfcc12a86605794014ff00ef413e002f0378208b860', 9, 10, 'ithwedapp', '[]', 0, '2022-05-21 16:17:46', '2022-05-21 16:17:46', '2023-05-21 12:17:46'),
('804ce6276f9a883172dbc8facdfc6a18613376caf75fb7c56d2e81a71038efdcc689274a2141036b', 34, 10, 'ithwedapp', '[]', 0, '2022-06-03 19:38:49', '2022-06-03 19:38:49', '2023-06-03 15:38:49'),
('80ac3af054893dbaac76787d5232dffb2de5f168f0c3ce13b6575cc803d799a160c216da816bb89f', 14, 10, 'ithwedapp', '[]', 0, '2022-05-30 15:38:12', '2022-05-30 15:38:12', '2023-05-30 11:38:12'),
('81ab45de2ceaee7fb59e3b18cb127852c5d638d6a374958cda3233337004792eac5a475e31d45c94', 32, 10, 'ithwedapp', '[]', 0, '2022-05-26 17:27:54', '2022-05-26 17:27:54', '2023-05-26 13:27:54'),
('824a87c608d3087b5e2cd6d9657d283198dd5207f0c0874fb9cb8ffb730fe4a0b37cfab9a4cca490', 39, 10, 'ithwedapp', '[]', 0, '2022-06-01 03:04:23', '2022-06-01 03:04:23', '2023-05-31 23:04:23'),
('83499d7b01f4c0a9293a08c97a9e274544d30a3cf51de46d29aef7cec2f35efff99e62ca5382da67', 47, 10, 'authToken', '[]', 0, '2022-06-02 09:21:24', '2022-06-02 09:21:24', '2023-06-02 05:21:24'),
('84103041f97630d78a88d1e14a13de4b1061dbe2c7d6beecad4253d34592c5775333535c141329e1', 14, 10, 'ithwedapp', '[]', 0, '2022-05-25 19:04:50', '2022-05-25 19:04:50', '2023-05-25 15:04:50'),
('84786cb3e9e3741ee143354964870a0be46ec10ee2d20826be180d16e0f75da6f79d9fa709889603', 23, 10, 'ithwedapp', '[]', 0, '2022-05-21 18:12:54', '2022-05-21 18:12:54', '2023-05-21 14:12:54'),
('867e6c9725d480cfc99c26729ab8565b12fabf369a642f045e3a5608a7ed45ad3223f11fccbf8174', 42, 10, 'authToken', '[]', 0, '2022-06-01 20:02:20', '2022-06-01 20:02:20', '2023-06-01 16:02:20'),
('87ac86d850429073888dfcbaf417b7bceb3b8dbf6c3c198bae43e82b775b4cce50504d3d608b389f', 14, 10, 'ithwedapp', '[]', 0, '2022-05-26 17:36:42', '2022-05-26 17:36:42', '2023-05-26 13:36:42'),
('88cff9247de01689c538fe7fe0cd0dbb60d0af9f6190327ac10396a3742b767581bd543265256e9a', 34, 10, 'ithwedapp', '[]', 0, '2022-05-30 12:44:23', '2022-05-30 12:44:23', '2023-05-30 08:44:23'),
('8adaa0436158f01f7201b341cac78dde425dc1ec4b99717806603fafa53e5ea07e5adda6351ceebe', 14, 10, 'ithwedapp', '[]', 0, '2022-05-25 09:44:41', '2022-05-25 09:44:41', '2023-05-25 05:44:41'),
('8d2e9536dfd2d82eb3e44caaa3207956df5685f5d05aee07a785db98fb368cf7874da14488053e18', 32, 10, 'authToken', '[]', 0, '2022-05-26 03:04:27', '2022-05-26 03:04:27', '2023-05-25 23:04:27'),
('8e2813e9a676a66f6eef8458399e14902d05e38190a4c2583d4c620fa9bc334fd162af0e952c910e', 34, 10, 'ithwedapp', '[]', 0, '2022-05-28 01:39:49', '2022-05-28 01:39:49', '2023-05-27 21:39:49'),
('8e2b050caf2e53cc33a86435ee04759cde3fadf0362bb108fc966b15e19259363bf165bf3cde3d6e', 9, 10, 'ithwedapp', '[]', 0, '2022-05-24 08:12:22', '2022-05-24 08:12:22', '2023-05-24 04:12:22'),
('8e580dc97f42523252803203c4db15cea14879e6d8d096f860d7ce61af00ab229274d3f7ccb21643', 14, 1, 'ithwedapp', '[]', 0, '2022-04-20 07:38:38', '2022-04-20 07:38:38', '2023-04-20 08:38:38'),
('8fa31381fb3e554e47f9ee34ced89209bf98f576044508de69ef39550b5654558177634934d17ca1', 34, 10, 'ithwedapp', '[]', 0, '2022-05-30 12:26:01', '2022-05-30 12:26:01', '2023-05-30 08:26:01'),
('90a4468c5b33f791490defbc4818938c8fe21bbb8790275240933dec59a86bce9cb3ecd72ec979fe', 34, 10, 'ithwedapp', '[]', 0, '2022-06-03 07:03:12', '2022-06-03 07:03:12', '2023-06-03 03:03:12'),
('90dc6d1ce6679ff9cb9ffcb3672f3d1aba4d8bbb2d37689f0234f132c3598deaa1e8387dd7d2ebd7', 9, 10, 'ithwedapp', '[]', 0, '2022-05-21 16:54:52', '2022-05-21 16:54:52', '2023-05-21 12:54:52'),
('915fba43fbcd63a9c7fd71a55d0c1c42339784e7d2ce3f3e9849434d27c155272bb1db4212ecbd5c', 9, 10, 'ithwedapp', '[]', 0, '2022-06-01 01:19:37', '2022-06-01 01:19:37', '2023-05-31 21:19:37'),
('9160cf4bc5c3a72c1980a0411c39e15a1f94607cf08e94d12f616d6dd29cb545a1a658973ffab91f', 34, 10, 'ithwedapp', '[]', 0, '2022-06-01 00:13:06', '2022-06-01 00:13:06', '2023-05-31 20:13:06'),
('926f1c1086b67e185675caee4ee3f13acf2fa45e9985acd71934648704b6cf577ef893aafb3cae48', 34, 10, 'ithwedapp', '[]', 0, '2022-06-01 18:28:57', '2022-06-01 18:28:57', '2023-06-01 14:28:57'),
('929c2ecfb9b753d95020673a5a8099397f17ee1b5b7c4008b67d62475f82d995cd31881f37843f05', 9, 10, 'ithwedapp', '[]', 0, '2022-05-21 15:53:51', '2022-05-21 15:53:51', '2023-05-21 11:53:51'),
('932a33051a9bd6d6020f4dea6f84c9bdb0719dfb5c73e8901faab8a1f5248b94e905548031ffc0b5', 40, 10, 'ithwedapp', '[]', 0, '2022-06-01 19:55:27', '2022-06-01 19:55:27', '2023-06-01 15:55:27'),
('93543d0a8c9f93215afb57c180f5916023ae3a26904cbaa6c5ca7a56e9b6fc3ead8fdb0a7394ec31', 36, 10, 'ithwedapp', '[]', 0, '2022-05-30 15:03:24', '2022-05-30 15:03:24', '2023-05-30 11:03:24'),
('96791282c808b5c60490ce6ceec28107400b94a11fbe89211b907fc921c452f623a6a30f0d1133a8', 38, 10, 'ithwedapp', '[]', 0, '2022-06-04 11:26:27', '2022-06-04 11:26:27', '2023-06-04 07:26:27'),
('98ac88bc42d58be89ba3138e129f348226fe09709235f61d1ef99287d19485d36818b48aed72ec3e', 9, 10, 'ithwedapp', '[]', 0, '2022-05-26 02:15:27', '2022-05-26 02:15:27', '2023-05-25 22:15:27'),
('98c8f4e153a89541fd9181955e557cfeae7e40bd43e72007a22caca73c18d59a2a8d8caccce07195', 34, 10, 'ithwedapp', '[]', 0, '2022-05-30 12:15:40', '2022-05-30 12:15:40', '2023-05-30 08:15:40'),
('98d573aa4f5e44f2c5149290911faa9d890381869620eabf44aa89743d555d2392e79a06ef1e21f1', 9, 10, 'ithwedapp', '[]', 0, '2022-05-23 00:23:06', '2022-05-23 00:23:06', '2023-05-22 20:23:06'),
('9949637ea8f805a1a323f85e958e7d044ab90f0faaefc308c2bbbeac5230509c6ec8ba25c33f78c5', 9, 10, 'ithwedapp', '[]', 0, '2022-05-23 02:44:31', '2022-05-23 02:44:31', '2023-05-22 22:44:31'),
('9c7908fc947ef7d737b2b69105064ca94d3358509896f27bee6673d385281bbd6acbd72d9de74c54', 9, 10, 'ithwedapp', '[]', 0, '2022-05-24 01:36:13', '2022-05-24 01:36:13', '2023-05-23 21:36:13'),
('9d8894c3abcbc42145726e489b7beb8546c819741cb06849bbecb8ba4f8b0d6f941420541756ef62', 34, 10, 'ithwedapp', '[]', 0, '2022-05-30 13:14:46', '2022-05-30 13:14:46', '2023-05-30 09:14:46'),
('9f080e54ab8cfc379582c88c2d09bdc71968779565dc065d6280ddbb5ccf968dcaf8bf45a9d1f912', 40, 10, 'authToken', '[]', 0, '2022-06-01 19:54:32', '2022-06-01 19:54:32', '2023-06-01 15:54:32'),
('9fcbf9b422bfb803625407154fbe70288cc0153c8d35ac15bbf62c7976e695c2580c005a480c2768', 34, 10, 'ithwedapp', '[]', 0, '2022-05-31 20:55:02', '2022-05-31 20:55:02', '2023-05-31 16:55:02'),
('a08be47129efc336afe33cf2bf718cc43fd4354c2be21e010bc3dc841627a178884b529eda3e9de8', 34, 10, 'ithwedapp', '[]', 0, '2022-06-03 19:23:59', '2022-06-03 19:23:59', '2023-06-03 15:23:59'),
('a167c9e5735819dc4256c72011ab97a12c567b3c7265480a54506f36f895401d2aecfc254f0f163f', 34, 10, 'ithwedapp', '[]', 0, '2022-05-30 13:05:29', '2022-05-30 13:05:29', '2023-05-30 09:05:29'),
('a1ead748965938899a1e48b36cd9b4b412f2cb9013010d6b44f82927449bcd9710872bccec176a37', 47, 10, 'ithwedapp', '[]', 0, '2022-06-08 09:47:37', '2022-06-08 09:47:37', '2023-06-08 05:47:37'),
('a2428f510a47f39211bd58fbe58f72854ca0aec92dda611dbb95616518a34857b86ca7e51d0bfd59', 34, 10, 'ithwedapp', '[]', 0, '2022-05-28 14:24:48', '2022-05-28 14:24:48', '2023-05-28 10:24:48'),
('a534c8f042254b283bac8cfe88f16c7dbff14c130b6086b467ff0fa35bcf3f29732a84b7fc9b2645', 9, 10, 'ithwedapp', '[]', 0, '2022-05-19 17:53:44', '2022-05-19 17:53:44', '2023-05-19 13:53:44'),
('a70d69682e22761f207e9d0e29e0a225485a3797ed7a5ab01242db1a1b9ca2c0a94b7870522aa1de', 9, 10, 'ithwedapp', '[]', 0, '2022-06-01 02:18:13', '2022-06-01 02:18:13', '2023-05-31 22:18:13'),
('a8790029c1bc4cb739e76239870cddf253b01e6e10f98c6b7a66b76750cb4851b45e41d9b889a8bf', 9, 10, 'ithwedapp', '[]', 0, '2022-05-21 15:36:14', '2022-05-21 15:36:14', '2023-05-21 11:36:14'),
('a8f0669c5f15b60493b2049c37bb120ce4ad52e3b6ec3bf6b14554b2b6e7ecf3c5800727bd2b148b', 39, 10, 'authToken', '[]', 0, '2022-06-01 02:58:04', '2022-06-01 02:58:04', '2023-05-31 22:58:04'),
('ac094f7a93f0298666c9628c1c6028ab960071834a30b154c21848d14be98e53d96bd4af472426a0', 25, 10, 'ithwedapp', '[]', 0, '2022-05-23 00:21:56', '2022-05-23 00:21:56', '2023-05-22 20:21:56'),
('accd828d518e51f2ab5e12e3d3d62e5dd01fc9de43f660e20c0f68be6600d86538128c68c3fe7c7c', 14, 10, 'ithwedapp', '[]', 0, '2022-06-04 21:37:02', '2022-06-04 21:37:02', '2023-06-04 17:37:02'),
('adb02c28e0ab465443394f861350c784ef30c11ed994352d31e9e2de6bea66837e354d228ca9459b', 22, 10, 'authToken', '[]', 0, '2022-05-21 17:39:32', '2022-05-21 17:39:32', '2023-05-21 13:39:32'),
('adcda82c2d9ff0d1b6adaadc6739b88f55d1d7e616edcbe091bbcbb131252acc4fd6141bf8da4cdf', 9, 10, 'ithwedapp', '[]', 0, '2022-05-25 09:16:39', '2022-05-25 09:16:39', '2023-05-25 05:16:39'),
('adfbec4d5b3b4ca4ad7ac8c2d5b2b50016b687349ede4bdd2f76cf57e22ccf51393edb484b8f8a7d', 14, 10, 'ithwedapp', '[]', 0, '2022-05-25 18:33:38', '2022-05-25 18:33:38', '2023-05-25 14:33:38'),
('ae5e6ff63a5adede6807b73b14b7f4dac2ea5838331bd6e6a0adf4283866911fe1f85646e59a06d8', 35, 10, 'authToken', '[]', 0, '2022-05-28 02:18:50', '2022-05-28 02:18:50', '2023-05-27 22:18:50'),
('aef26788bdc5dad664c77374bae15477dfd17ee1eff1ff0c15933423c96aae07136cf9a12897499b', 9, 10, 'ithwedapp', '[]', 0, '2022-05-25 07:26:58', '2022-05-25 07:26:58', '2023-05-25 03:26:58'),
('aef470d1058cebcb49ea4e98bdc786006f30e680f2072350e24c1ebfb784b1614fb5c2530a799cf5', 32, 10, 'ithwedapp', '[]', 0, '2022-05-26 17:19:51', '2022-05-26 17:19:51', '2023-05-26 13:19:51'),
('b216f623d088283eeb9ae4f8a958942eba07f1261cd2dae4f7e0442788e2c506851d52a97be841d5', 9, 10, 'ithwedapp', '[]', 0, '2022-05-25 07:46:08', '2022-05-25 07:46:08', '2023-05-25 03:46:08'),
('b377ec970eaa54017926691286c515e1085ba2ca9643403a88a4694896325e8aa1973d218738c620', 14, 10, 'ithwedapp', '[]', 0, '2022-06-01 02:28:15', '2022-06-01 02:28:15', '2023-05-31 22:28:15'),
('b3ca145882fbaacdbbeace5ab4cf93131ba4db020f93dc553abd28e1b01bc02e05d23b8646882f4c', 36, 10, 'ithwedapp', '[]', 0, '2022-05-30 15:11:14', '2022-05-30 15:11:14', '2023-05-30 11:11:14'),
('b46c12cb5dce7403953c8cd1ce669fa5c3e33425eafb2e2872a359d96cdabe515c5089eb05af1c0b', 4, 1, 'authToken', '[]', 0, '2022-04-14 07:18:05', '2022-04-14 07:18:05', '2023-04-14 08:18:05'),
('b681edbc2fc9826000152db08745fabc8086fe5b3a846e08f0ad324838fa94cddc3f59b1c9447598', 14, 10, 'ithwedapp', '[]', 0, '2022-06-01 02:41:29', '2022-06-01 02:41:29', '2023-05-31 22:41:29'),
('b8631e37bb2f63293d500c299be0088bdf2740904373394866e03306b404a268c365c8d3ca5861ef', 14, 10, 'ithwedapp', '[]', 0, '2022-05-26 17:38:17', '2022-05-26 17:38:17', '2023-05-26 13:38:17'),
('b8e6e23f81c64dd087f6983b0a9df0542e6daefd494847a4ccda0c491112474eef0430d44b89caee', 14, 10, 'ithwedapp', '[]', 0, '2022-06-01 02:53:50', '2022-06-01 02:53:50', '2023-05-31 22:53:50'),
('ba3f2fabfef7e82971bdf45886328ba384adbaeb63f9e0a8b46ac74a4bbf03f9c526dd3860e1c438', 47, 10, 'ithwedapp', '[]', 0, '2022-06-07 08:49:25', '2022-06-07 08:49:25', '2023-06-07 04:49:25'),
('bd1ecef63b9c033250f1c9f7cee4fad8de61f5e22ff2eeada27e1fb9443dc929d3a13fe7940bcec3', 14, 10, 'ithwedapp', '[]', 0, '2022-06-01 17:09:04', '2022-06-01 17:09:04', '2023-06-01 13:09:04'),
('bd7248d8e36614dcbdc4be233e638b6a89cdb3ec336c37de183ddfc2ca2bf0c60c1a33a94b4a448e', 9, 10, 'ithwedapp', '[]', 0, '2022-05-21 16:12:29', '2022-05-21 16:12:29', '2023-05-21 12:12:29'),
('bdb532dbfde6d43d6402637b553cf7dd59b635a1f6f1c20b17e13c41c681056312b226d84af2636c', 34, 10, 'ithwedapp', '[]', 0, '2022-05-30 13:02:15', '2022-05-30 13:02:15', '2023-05-30 09:02:15'),
('bf74e634a2f480b3862c92e72406c2567a47f48bdbd5c09be03dda22c226691370e26478e55c2a2f', 34, 10, 'ithwedapp', '[]', 0, '2022-06-02 17:45:29', '2022-06-02 17:45:29', '2023-06-02 13:45:29'),
('c2aa75879dd765a820908cc8f4eb783d9d62bef982751e7bcb0f2980fb7f3c357f0b8f0319e3aaac', 17, 10, 'authToken', '[]', 0, '2022-05-19 14:04:13', '2022-05-19 14:04:13', '2023-05-19 10:04:13'),
('c2f6c529b5aa21073dc63c1c2ffd93aa676a55c078b2d718498fb25b5a51b92f21f67fb5ac880455', 12, 1, 'authToken', '[]', 0, '2022-04-14 15:31:50', '2022-04-14 15:31:50', '2023-04-14 16:31:50'),
('c33163969d29adf9f2bd2a7bc2310cf12c8b2ac29ac17b528b5513694ef62808698a2a38a8fb4347', 9, 10, 'ithwedapp', '[]', 0, '2022-05-21 16:35:37', '2022-05-21 16:35:37', '2023-05-21 12:35:37'),
('c3ba416d9206bb8302d724e904f17a57c82def1c664d90414780453b3a025b909d358541a9bd1b86', 34, 10, 'ithwedapp', '[]', 0, '2022-06-03 09:47:08', '2022-06-03 09:47:08', '2023-06-03 05:47:08'),
('c4c0fa04769b12990f60966cabf63d71f7c3e61f423ca8966cc12c1899aafb08b84f390f2b770995', 34, 10, 'ithwedapp', '[]', 0, '2022-05-30 12:22:13', '2022-05-30 12:22:13', '2023-05-30 08:22:13'),
('c5a6424157bb6cc01f65f40208f857bd31a071b498350631b8890a88b3a5c2756fcc14e9c94b542d', 9, 10, 'ithwedapp', '[]', 0, '2022-05-31 18:38:49', '2022-05-31 18:38:49', '2023-05-31 14:38:49'),
('c60fb97f66dc5f743ec49b2d00703a2ba94a472fcf74d69a1b8e6f5fc9c905f42566553b8c60bfbd', 14, 10, 'ithwedapp', '[]', 0, '2022-05-25 18:59:22', '2022-05-25 18:59:22', '2023-05-25 14:59:22'),
('c67af01c450c1322d1cbfee736d73ea1d967c0c1dc83124960e26e8160deaef7d343282cf2623a0b', 14, 10, 'ithwedapp', '[]', 0, '2022-05-26 00:36:03', '2022-05-26 00:36:03', '2023-05-25 20:36:03'),
('c70f442f11c3e11eacff7a10122fc6b1659ba0ff149a40bee34fd0474359df2149676e68815a96c9', 32, 10, 'ithwedapp', '[]', 0, '2022-05-26 03:28:38', '2022-05-26 03:28:38', '2023-05-25 23:28:38'),
('c92bfb9ac30a79fc6fe9897deaf011a8c62d4d4eefed9cd881a204c01b6a07ca44c5e89a25dc9052', 25, 10, 'authToken', '[]', 0, '2022-05-23 00:12:08', '2022-05-23 00:12:08', '2023-05-22 20:12:08'),
('c962e3fb5655c858ffc3cd9c27326c08827306d036e0e0fa9a8c635cbba86a80294e1366f5f39b16', 43, 10, 'authToken', '[]', 0, '2022-06-01 20:05:03', '2022-06-01 20:05:03', '2023-06-01 16:05:03'),
('c9e967e62c33a754f8d7d90ec26b51294f2fa54b2099e676d9022a3d0d84883908f31d63bea5d75f', 14, 10, 'ithwedapp', '[]', 0, '2022-05-25 19:10:03', '2022-05-25 19:10:03', '2023-05-25 15:10:03'),
('c9ec29550cae28812d2f165e73b5e4d9a5f1c2f7c81e1139df307200f3258961b680ee8a0d26a21b', 14, 10, 'ithwedapp', '[]', 0, '2022-05-25 18:49:03', '2022-05-25 18:49:03', '2023-05-25 14:49:03'),
('ca3ba325f8f6e0951e732f932a3a93b9be594c7635d456a64cc3cb7730f70e26b6835fd4f2c017f8', 9, 10, 'ithwedapp', '[]', 0, '2022-06-01 02:39:03', '2022-06-01 02:39:03', '2023-05-31 22:39:03'),
('cac79f8fd617ad66e0107bcefbaf3ebcc32f6253c654fafdb0efdb34b54ee8d55d18da9a14a83b63', 14, 10, 'ithwedapp', '[]', 0, '2022-05-26 04:01:31', '2022-05-26 04:01:31', '2023-05-26 00:01:31'),
('cb781d4a08c5df4676331fcca6a2f83b91f262f7ccbbad86fd507229a24721b47196894e08a0fdde', 34, 10, 'ithwedapp', '[]', 0, '2022-06-01 21:28:02', '2022-06-01 21:28:02', '2023-06-01 17:28:02'),
('cc900e05fc9f00a5859c4680143f81506d05f7908054b1abd118d640d70b879b505180d7a6677ada', 9, 10, 'ithwedapp', '[]', 0, '2022-06-07 08:27:00', '2022-06-07 08:27:00', '2023-06-07 04:27:00'),
('cd4d42e4200edafef1cf67bd2ad7505fc69659455fb8bb17c70fa43b2e119c292d43d36153d5a972', 14, 10, 'ithwedapp', '[]', 0, '2022-05-25 18:57:44', '2022-05-25 18:57:44', '2023-05-25 14:57:44'),
('cd9c23681fd5c94332e35f33befa058612f9bfc4334e1ff3ea36208d0333e1571c43dafda55fd8d8', 9, 10, 'ithwedapp', '[]', 0, '2022-05-24 07:53:51', '2022-05-24 07:53:51', '2023-05-24 03:53:51'),
('cdc443ef674477fa748376d19578018337da02d6c8299452d0dd78632f885a7dba40f94abcadab3c', 34, 10, 'ithwedapp', '[]', 0, '2022-05-31 21:27:27', '2022-05-31 21:27:27', '2023-05-31 17:27:27'),
('cdf6f22a26a58fbd0e6674f5e29cefe35f669b99bb0e0f3297f430fdc723941a73e5917f65422db0', 9, 10, 'ithwedapp', '[]', 0, '2022-05-24 12:27:15', '2022-05-24 12:27:15', '2023-05-24 08:27:15'),
('cea07288b88171338c7b4eed005293f2b31ad5ca003c9a50515aec661b7891ac1ff642882c26a5c4', 34, 10, 'ithwedapp', '[]', 0, '2022-05-28 02:38:42', '2022-05-28 02:38:42', '2023-05-27 22:38:42'),
('cf3038c1b8e01c04515b0bf41fb8ebd90ba321ca45d005ab6dec650bd3ecfd78f3d0f6bb4044ed41', 9, 10, 'ithwedapp', '[]', 0, '2022-05-21 04:12:35', '2022-05-21 04:12:35', '2023-05-21 00:12:35'),
('d05994eb3013b527b52eb5984be7529f03e2158cc68812121c9360a6efde64e6ece535e9fc7fd5c9', 9, 10, 'ithwedapp', '[]', 0, '2022-05-21 15:19:48', '2022-05-21 15:19:48', '2023-05-21 11:19:48'),
('d2231112d110dfa4ea86fef6b4953df20986391c95b303519253235fc6b8da71d650d46977d5b6d2', 37, 10, 'authToken', '[]', 0, '2022-05-31 18:42:28', '2022-05-31 18:42:28', '2023-05-31 14:42:28'),
('d2de72592d235bfbdf3df59b1a67c00adcb4c7c4eb1a265cfb4946add6b704ce8b3a836f205c4786', 34, 10, 'ithwedapp', '[]', 0, '2022-05-30 12:59:47', '2022-05-30 12:59:47', '2023-05-30 08:59:47'),
('d3033f1f44f2989823591fbf1818bca9a7738948b378032a6f3039f207f567ae4d9d3c5da57c3a6b', 9, 10, 'ithwedapp', '[]', 0, '2022-06-04 11:29:06', '2022-06-04 11:29:06', '2023-06-04 07:29:06'),
('d3dc66171e074c43b2087ff6e2fcbcdf9fe66433652e17ecfe38c56ad4d3c1e036a9faf2b56d0b28', 34, 10, 'ithwedapp', '[]', 0, '2022-06-03 19:57:30', '2022-06-03 19:57:30', '2023-06-03 15:57:30'),
('d43449a592496096bb23ef4e88173b632fb33f674a2bfa9cb199746229cfb59b89670f6431b800cb', 9, 10, 'ithwedapp', '[]', 0, '2022-06-08 14:00:06', '2022-06-08 14:00:06', '2023-06-08 10:00:06'),
('d46f21f288ea5c00e2f509e62570d46abaf9772432ed184c2c01433c3362faea25e9f4436b3e2ec5', 44, 10, 'authToken', '[]', 0, '2022-06-01 20:36:12', '2022-06-01 20:36:12', '2023-06-01 16:36:12'),
('d4d438e02690f4003ba3be8306dfcdd32b443c4093039ca47795d1f1314cf9c0544dff32b4536599', 10, 1, 'authToken', '[]', 0, '2022-04-14 15:28:55', '2022-04-14 15:28:55', '2023-04-14 16:28:55'),
('d5ff9bdc4a90bde6d9a4689baca63daf9202278180077a652529326b5d671ea0c80aa59847544505', 9, 10, 'ithwedapp', '[]', 0, '2022-06-06 03:49:21', '2022-06-06 03:49:21', '2023-06-05 23:49:21'),
('d6e9ef6f7cce1f9c84cc2dd0032b482dc3a6afb2d87570043d4421583b0cac2a3d04ebd25fd1ecc0', 9, 10, 'ithwedapp', '[]', 0, '2022-05-24 12:17:26', '2022-05-24 12:17:26', '2023-05-24 08:17:26'),
('d9014071cf61a85f6142c8208eb0a93907bad9a3541eea4c2df7a13d7cd983b9dd682c4d3e605bbb', 34, 10, 'ithwedapp', '[]', 0, '2022-05-30 15:01:02', '2022-05-30 15:01:02', '2023-05-30 11:01:02'),
('da5f3e8cb4dceaf5f71a9cbc122002fbb34589b138e0e108324fd7ebfcaa2cdfb1947689c2822167', 9, 1, 'ithwedapp', '[]', 0, '2022-04-14 17:12:29', '2022-04-14 17:12:29', '2023-04-14 18:12:29'),
('ddaf0c4efbef74918b758c19d5d9b39930c24de180aaa7dcaa3f09828def833e4931c35aca04c08b', 14, 10, 'ithwedapp', '[]', 0, '2022-05-26 04:19:16', '2022-05-26 04:19:16', '2023-05-26 00:19:16'),
('df4af1235ed8aecb05bc34b302f848d1e7c3109048ce91554cba6029b705484220c8b8328fcca490', 34, 10, 'ithwedapp', '[]', 0, '2022-06-03 20:33:49', '2022-06-03 20:33:49', '2023-06-03 16:33:49'),
('df6721c7b64af1cc8306a79faad86b6ff3e0c56c224e882506a015e09633166ec23303b09b104e7c', 9, 10, 'ithwedapp', '[]', 0, '2022-05-21 15:08:34', '2022-05-21 15:08:34', '2023-05-21 11:08:34'),
('df6d0607271b8221375744a0614acc77f4c72f8f0a55463c4383e17f39838873fbe9ebbc89714036', 47, 10, 'ithwedapp', '[]', 0, '2022-06-08 08:27:17', '2022-06-08 08:27:17', '2023-06-08 04:27:17'),
('e03522d11d311d8e4820a295d8dd2966bd08835470836db23d0c1a267cae148737aaf774f23f4501', 9, 10, 'ithwedapp', '[]', 0, '2022-05-21 16:23:06', '2022-05-21 16:23:06', '2023-05-21 12:23:06'),
('e235f3c4d74a0934c280dda0007d3cf23b91566aec4978c2559600163973ad8eb45388811a1115ed', 34, 10, 'ithwedapp', '[]', 0, '2022-06-03 09:35:46', '2022-06-03 09:35:46', '2023-06-03 05:35:46'),
('e28e4fd3295e2c12682e966560fc72401609384465f80b20853bd6c74db41ba42d9c3066f51b94dc', 47, 10, 'ithwedapp', '[]', 0, '2022-06-08 07:17:05', '2022-06-08 07:17:05', '2023-06-08 03:17:05'),
('e37a65b34a83f6747db7f2638385758367898e78ac82850839aba081867cf48475b2ff2a730c714a', 9, 10, 'ithwedapp', '[]', 0, '2022-05-25 05:16:52', '2022-05-25 05:16:52', '2023-05-25 01:16:52'),
('e41e8ce72069f91b4ad23807fca421a304df7fb9b76448d3a760cc431c133f647352d005e51b9fd3', 9, 10, 'ithwedapp', '[]', 0, '2022-05-25 07:32:32', '2022-05-25 07:32:32', '2023-05-25 03:32:32'),
('e604fcf1914cf8a7c33b52e97a6e99427b56549cc2fb4817b2a66769f14708adfa7f70c33824ede0', 9, 10, 'ithwedapp', '[]', 0, '2022-05-21 02:43:57', '2022-05-21 02:43:57', '2023-05-20 22:43:57'),
('e699d2d1ea6187838830f2699153c7cff1b9ded96851e7c61e954e5c9e50e1af82c8f2a29f5937b3', 34, 10, 'ithwedapp', '[]', 0, '2022-05-31 20:45:37', '2022-05-31 20:45:37', '2023-05-31 16:45:37'),
('e7a2d5a739e6655f5ca465da6fe1c23970caa806f888b9a1552f89afdf2ff7269a07c0c04d29d7c2', 9, 10, 'ithwedapp', '[]', 0, '2022-05-21 03:02:48', '2022-05-21 03:02:48', '2023-05-20 23:02:48'),
('e946be2b0173cd51bef1d7b7c11ad0e013e4d7f09c288fa8b4994fc627df601fd4709a29caff1232', 9, 10, 'ithwedapp', '[]', 0, '2022-05-21 16:15:46', '2022-05-21 16:15:46', '2023-05-21 12:15:46'),
('e956c429520d94e91c304e0fdc5a06528fcab59ccc7d93a24a5193fc76009c91acb5da60329a9979', 34, 10, 'ithwedapp', '[]', 0, '2022-05-30 12:19:19', '2022-05-30 12:19:19', '2023-05-30 08:19:19'),
('e99ad63481cd3d2f0368fee2f43720c88e32177e54dc94932cbbd0aba6b062427d29c680fc246b3e', 34, 10, 'ithwedapp', '[]', 0, '2022-05-31 23:54:33', '2022-05-31 23:54:33', '2023-05-31 19:54:33'),
('eaefec98f1cc4aef9e834292beb09a5415333689af6b030527da80a523a040ee55a7f456e0fe065c', 9, 10, 'ithwedapp', '[]', 0, '2022-06-01 02:20:45', '2022-06-01 02:20:45', '2023-05-31 22:20:45'),
('eb0bc10d89ac83649056ee99b7eea7661aa99fa2eb9ed272648066b3513eb4d5c94dc9f7a5b133c8', 34, 10, 'ithwedapp', '[]', 0, '2022-05-31 21:09:39', '2022-05-31 21:09:39', '2023-05-31 17:09:39'),
('ec5632cb20880471aed707ef384ee653d9f8053026b1b6410d4a50c99dd63b2a52768d7f1613efd1', 14, 10, 'ithwedapp', '[]', 0, '2022-05-25 18:42:02', '2022-05-25 18:42:02', '2023-05-25 14:42:02'),
('ecc62ffd4f1df9b19373d73443b3858e2a78ed0cd877b5e31efefebec8badf3cbfa7a39c1e7ce60e', 9, 10, 'ithwedapp', '[]', 0, '2022-05-21 16:21:03', '2022-05-21 16:21:03', '2023-05-21 12:21:03'),
('ed3129df3230c58c03670af55c23396af561ea8a40ecafb1a7a368a7beada9ea3b59455517064ebb', 31, 10, 'authToken', '[]', 0, '2022-05-26 03:01:53', '2022-05-26 03:01:53', '2023-05-25 23:01:53'),
('ef35813ba842d06cbdef5bc2cfa8883fc0b79c1f512013c7d804108a0719ea08864b194b33ceed0b', 9, 10, 'ithwedapp', '[]', 0, '2022-06-07 08:05:28', '2022-06-07 08:05:28', '2023-06-07 04:05:28'),
('f103b7556b2f1eb7176c27b312f909f13649cd88566ba1704d00a8f9764acc51fdfec7f3f9afd90f', 9, 1, 'authToken', '[]', 0, '2022-04-14 15:20:24', '2022-04-14 15:20:24', '2023-04-14 16:20:24'),
('f158312d7e7fa6872674d1b7b19adb7c19440229fd1074392ef469223a17efc67fe2865bbe552af2', 34, 10, 'ithwedapp', '[]', 0, '2022-06-06 03:30:22', '2022-06-06 03:30:22', '2023-06-05 23:30:22'),
('f19a5c02602dc278be0c159292cba55950d15299bbe9ae73cd1701b743f70da08ccbb0acc404d747', 33, 10, 'ithwedapp', '[]', 0, '2022-05-26 03:16:31', '2022-05-26 03:16:31', '2023-05-25 23:16:31'),
('f1bae85d925a32b3c7698f91594c3534a27e508b778313dc21dc58a841a4a3d6f20c847708d48862', 2, 10, 'admin', '[]', 0, '2022-04-20 19:49:27', '2022-04-20 19:49:27', '2023-04-20 20:49:27'),
('f1e3d6677e0090bdb3c5fb631e4a8493e92c93e65969106d3796cc15aa281b13597dcc40da19fdd1', 34, 10, 'ithwedapp', '[]', 0, '2022-06-03 05:14:21', '2022-06-03 05:14:21', '2023-06-03 01:14:21'),
('f2a63549e62d38e351fa6a8d4caed7a20ab76412eab3820ebe846643cd76829e547b638ea06149bc', 38, 10, 'ithwedapp', '[]', 0, '2022-06-02 08:41:32', '2022-06-02 08:41:32', '2023-06-02 04:41:32'),
('f42d0a194005c4e1be78ee48bdadf65afb33e02289a9b4f347ef65c0a77bb06d2d1ce313b8f5dfcc', 34, 10, 'ithwedapp', '[]', 0, '2022-05-30 14:14:48', '2022-05-30 14:14:48', '2023-05-30 10:14:48'),
('f4608f7263f4a5af77d6b02830cff1779dd08b50925eada4944ffc360faa9a5faa8b4438371edd3b', 34, 10, 'ithwedapp', '[]', 0, '2022-05-30 12:24:18', '2022-05-30 12:24:18', '2023-05-30 08:24:18'),
('f4ffce5efe67d8c1d241ca2c1fca6c532877f7b5e32e53173109bdf6632c0bbd22a062f98f0180e6', 9, 10, 'ithwedapp', '[]', 0, '2022-05-25 08:36:17', '2022-05-25 08:36:17', '2023-05-25 04:36:17'),
('f52156d9213589bfe9646ac2f97f397f469d003f27d414779df9b11867a32671474b0f8b26fa770d', 34, 10, 'ithwedapp', '[]', 0, '2022-05-31 20:42:45', '2022-05-31 20:42:45', '2023-05-31 16:42:45');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('f572d8892aab6838a420062f96f21f4387ecb41b1e305c5fd9d64941b2f114f3f2e0ac2da637d0b1', 20, 10, 'ithwedapp', '[]', 0, '2022-05-21 17:08:02', '2022-05-21 17:08:02', '2023-05-21 13:08:02'),
('f601a6856efef1254f6274b7bb07357e66761390efcea3c9b4a0daf96223a20dc41838b0113d5733', 9, 10, 'ithwedapp', '[]', 0, '2022-05-22 00:10:54', '2022-05-22 00:10:54', '2023-05-21 20:10:54'),
('f683c977a1037c0c0acf9442ffd5b66355f8340b2376ebccf5b35a4aef7a4ad3e336808f59af81ea', 34, 10, 'ithwedapp', '[]', 0, '2022-06-04 22:19:56', '2022-06-04 22:19:56', '2023-06-04 18:19:56'),
('f6ed5e3f5b00b3b961a761dbb6749e9787693f8d1e45f5e8c7167fbafc61b04366a69556f48151e3', 34, 10, 'ithwedapp', '[]', 0, '2022-05-30 14:31:36', '2022-05-30 14:31:36', '2023-05-30 10:31:36'),
('f73e3f28da076b86246d7af6e49ad7a1f3ea6fbf76491fd6009f0a8bc822ee21bf0972cadd2a4260', 38, 10, 'authToken', '[]', 0, '2022-06-01 00:56:36', '2022-06-01 00:56:36', '2023-05-31 20:56:36'),
('f78ef4284210c079029fd65b261d4aa4ab29a44be1879c5864c8f620b5c2444b63447bc3df163509', 8, 1, 'authToken', '[]', 0, '2022-04-14 15:16:18', '2022-04-14 15:16:18', '2023-04-14 16:16:18'),
('f905d14d2e328352fce261b345f46822dfae1bab4de490ffc7f1013096395ab3dd9457f2a40a968d', 34, 10, 'ithwedapp', '[]', 0, '2022-05-30 13:08:59', '2022-05-30 13:08:59', '2023-05-30 09:08:59'),
('f9d8b54db73f51edebefdec600e3f6dae166c9436d8ee5ad2b73667aca78508428494f2142fb05dd', 9, 10, 'ithwedapp', '[]', 0, '2022-04-25 10:01:56', '2022-04-25 10:01:56', '2023-04-25 11:01:56'),
('fa35be376cbc3f0496e0f5d37abfd73e28e83a1698c69e61ebf81e3d1eb17e3895895ec82bbb6ee7', 34, 10, 'ithwedapp', '[]', 0, '2022-06-01 00:48:07', '2022-06-01 00:48:07', '2023-05-31 20:48:07'),
('fcb5ac8eef4ddb26db201208c45f75dca3f1e59db1c1ead36adedea8b8fd9b21c6d3d427c12901a6', 34, 10, 'ithwedapp', '[]', 0, '2022-05-28 14:23:04', '2022-05-28 14:23:04', '2023-05-28 10:23:04'),
('fd3f6510b44953671872d76f60bd5e9ff129e00ff5567ae1c2c7731fa533fa9f5577e2ffffc9c653', 29, 10, 'authToken', '[]', 0, '2022-05-26 02:39:01', '2022-05-26 02:39:01', '2023-05-25 22:39:01'),
('ff706eec14bd8c40f093b86068923299f12876b730b7635617827f1c30dc2f95d60aaea590d413b4', 24, 10, 'authToken', '[]', 0, '2022-05-23 00:04:44', '2022-05-23 00:04:44', '2023-05-22 20:04:44'),
('ff9baf309b4afd814348353d8cd83845bd470b86e750b8cf7a8398044e288f6c37ec72878c82f726', 2, 10, 'admin', '[]', 0, '2022-04-27 10:26:09', '2022-04-27 10:26:09', '2023-04-27 11:26:09'),
('ffb7705efcc5d98839545de71f76a9cad8801b1f673a7861c53cd364dbe8c0377c877096c0e58ebe', 34, 10, 'ithwedapp', '[]', 0, '2022-05-30 15:36:12', '2022-05-30 15:36:12', '2023-05-30 11:36:12');

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
-- Table structure for table `payment_intent`
--

CREATE TABLE `payment_intent` (
  `id` int(11) NOT NULL,
  `transaction_id` varchar(222) DEFAULT NULL,
  `user_id` varchar(222) DEFAULT NULL,
  `package_id` varchar(222) DEFAULT NULL,
  `is_payment_verified` varchar(222) DEFAULT 'no',
  `currency` varchar(222) DEFAULT NULL,
  `amount` varchar(222) DEFAULT NULL,
  `user_email` varchar(222) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nextDueDate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_count` int(11) DEFAULT 0
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
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listing_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `type`, `rating_no`, `listing_id`, `status`, `created_at`, `updated_at`, `comment`) VALUES
(8, '9', NULL, '5', '8', '0', '2022-05-13 06:44:13', '2022-06-08 19:24:16', 'This is the best service ever'),
(9, '9', NULL, '5', '8', '0', '2022-05-13 10:07:22', '2022-05-13 10:07:22', 'This is the best service ever'),
(11, '9', NULL, '5', '8', '1', '2022-05-13 10:12:33', '2022-05-13 10:12:33', 'This is the best service ever'),
(12, '9', NULL, '5', '8', '1', '2022-06-08 18:59:33', '2022-06-08 18:59:33', 'This is the best service ever');

-- --------------------------------------------------------

--
-- Table structure for table `react_listing_comments`
--

CREATE TABLE `react_listing_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `sitelink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'http://fiver.ir/ithwed',
  `is_rating_auto_approve` tinyint(1) DEFAULT 1,
  `is_listing_auto_approve` tinyint(1) DEFAULT 1,
  `is_vendor_account_auto_approve` tinyint(1) DEFAULT 1,
  `is_couple_account_auto_approve` tinyint(1) DEFAULT 1,
  `is_listing_comment_approved` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `contact_email`, `skype`, `phone1`, `phone2`, `phone3`, `address`, `flutterwave_key`, `flutterwave_secret`, `currency_code`, `currency_sign`, `maintenance_mode`, `created_at`, `updated_at`, `paypalKey`, `paypalSecret`, `paystackkey`, `paystackSecret`, `sitename`, `sitelink`, `is_rating_auto_approve`, `is_listing_auto_approve`, `is_vendor_account_auto_approve`, `is_couple_account_auto_approve`, `is_listing_comment_approved`) VALUES
(1, 'info@itheewed.com.ng', NULL, '+234-812-834-0493', '+234-812-834-0493', '+234-812-834-0493', '23 Kunle Ogunba St, Lekki Phase I  100263, Lagos, Nigeria', 'FLWPUBK_TEST-54dafcfc4d1439dbeddafa1d68a4f63b-X', 'FLWSECK_TEST-f918939659bd03f568fa7db85f2e6ae9-X', 'NGN', '₦', 0, NULL, '2022-04-27 10:29:20', 'AZL4dLjYas-gQoZZgXzWu_7DL9fFDMiqHNqLF9SJCNcnRYKf1mUdM3lqNg57-eqHzLzsTGsuyXEUrBv5', 'ECAWWPJCiBrimoFSJm6pMvFlGrxxT7PuudKA92Fn9aJt8MZa96xP3tstpelgmd7dOlOe60cPwWorb8gc', 'pk_test_6bf927c4fcf4172fae59cf27c7b7688853682f74', 'sk_test_413bcc87331a629a73514f44258f42d8c42f85c5', 'Ithwed', 'http://fiver.ir/ithwed', 1, 1, 1, 1, 1);

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
(4, '300', 'USD', '500', '1', 'for medium scale business', '2022-04-28 10:03:25', '2022-04-28 10:03:25', 'Premium', '3 months'),
(5, '900', 'USD', '700', '1', 'for medium scale business', '2022-04-28 10:04:17', '2022-04-28 10:04:17', 'Premium', '6 months'),
(6, '700', 'USD', '550', '2', 'for small scale business', '2022-04-28 10:04:44', '2022-04-28 10:07:37', 'Basic', '7 months');

-- --------------------------------------------------------

--
-- Table structure for table `task_models`
--

CREATE TABLE `task_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `task_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `task_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_complete` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_models`
--

INSERT INTO `task_models` (`id`, `user_id`, `task_name`, `task_date`, `is_complete`, `created_at`, `updated_at`) VALUES
(1, '9', 'Visit Chioma Rentals ltd', '11-04-2022', 1, '2022-05-03 10:45:45', '2022-06-08 08:57:22'),
(2, '9', 'Visit Chioma Rentals', '11-04-2022', 0, '2022-05-21 20:13:59', '2022-05-21 20:13:59'),
(3, '9', 'Visit Chioma Rentals', '11-04-2022', 0, '2022-06-01 03:29:48', '2022-06-01 03:29:48'),
(4, '9', 'Visit Chioma Rentals', '11-04-2022', 0, '2022-06-02 08:59:28', '2022-06-02 08:59:28'),
(5, '9', 'Visit Chioma Rentals', '11-04-2022', 0, '2022-06-03 09:32:59', '2022-06-03 09:32:59'),
(6, '9', 'Visit Chioma Rentals', '11-04-2022', 0, '2022-06-03 19:03:30', '2022-06-03 19:03:30'),
(7, '9', 'Visit Chioma Rentals', '11-04-2022', 0, '2022-06-03 19:08:06', '2022-06-03 19:08:06'),
(8, '9', 'Visit Chioma Rentals', '11-04-2022', 0, '2022-06-04 10:59:54', '2022-06-04 10:59:54');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txn_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_count` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `next_due_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `sub_id`, `unit`, `amount`, `txn_id`, `sub_count`, `created_at`, `updated_at`, `next_due_date`, `sub_date`, `gateway`) VALUES
(2, '9', '4', '447', '300', '', 1, '2022-05-14 08:59:00', '2022-06-08 07:49:44', '2022-08-14 09:59:00', '2022-05-14 09:59:00', 'flutterwave');

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
  `plan_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trans_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `next_due_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 0,
  `sub_count` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `is_vendor`, `is_couple`, `country`, `country_code`, `vendor_name`, `facebook`, `twitter`, `youtube`, `instagram`, `whatsapp`, `language`, `status`, `description`, `avatar`, `phone`, `is_phone_verified`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `token`, `username`, `vendor_banner`, `vendor_address`, `vendor_type`, `state`, `firstname`, `lastname`, `is_flagged`, `is_verified`, `plan_id`, `trans_id`, `next_due_date`, `sub_date`, `is_active`, `sub_count`) VALUES
(9, 'pachristo@gmail.com', 1, 0, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '07088800874', NULL, NULL, '$2y$10$SuEos4euvEsGxLwGnc.5seqtTRVqPc9VxvioKLFb7wwfz9AlGFoOi', NULL, '2022-04-14 15:20:24', '2022-05-14 08:59:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '4', '2', '2022-08-14 09:59:00', '2022-05-14 09:59:00', 1, 1),
(11, 'chiomaflourltd@gmail.com', 1, 0, NULL, NULL, 'Chioma Flourist Ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+23566588855', NULL, NULL, '$2y$10$9iC8fEQOhPXiEHyojcs4b.QTetvDvwy.8Dk8d.gXgjvSOMYNVCYjK', NULL, '2022-04-14 15:29:58', '2022-04-14 15:29:58', NULL, NULL, NULL, '12 Abak Rd , Uyo Akwa Ibom', NULL, NULL, NULL, NULL, 0, 0, '', NULL, NULL, NULL, 0, 0),
(14, 'peakntf@gmail.com', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '234877885588', NULL, NULL, '$2y$10$MSLs9SwQ0xKEiaOT9TdgWecD4gIKlRAzpqxjzjD5lzIrchrjxYk9O', NULL, '2022-04-14 16:33:29', '2022-04-14 16:33:29', NULL, 'pachristo', NULL, NULL, NULL, NULL, 'Christian', 'Umanah', 0, 0, '', NULL, NULL, NULL, 0, 0),
(15, 'chiomvendorltd@gmail.com', 1, 0, NULL, NULL, 'Chioma Flourist Ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+23566588855', NULL, NULL, '$2y$10$RAQqI7GQqldjpZZuu8S7YeqJ6QkYYgUHwaaPH/Ol/9BQ69O/hgYMu', NULL, '2022-04-22 18:41:31', '2022-05-21 18:08:48', NULL, NULL, NULL, '12 Abak Rd , Uyo Akwa Ibom', NULL, NULL, NULL, NULL, 1, 0, '', NULL, NULL, NULL, 0, 0),
(16, 'peakcouple@gmail.com', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '234877885588', NULL, NULL, '$2y$10$on3K3DlwlALjBcvmkoOLq.ooMNID/xjNUW7nU4x2.u6OMGAqxhpae', NULL, '2022-04-23 06:17:09', '2022-04-23 06:17:09', NULL, 'peakcouple', NULL, NULL, NULL, NULL, 'Christian', 'Umanah', 0, 0, '', NULL, NULL, NULL, 0, 0),
(17, 'peakdone@gmail.com', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '234877885588', NULL, NULL, '$2y$10$sUnEarj38kGi4xQ4MIvUxuyhGQVDukSMXWHqbBxOztmp4OmqDRrje', NULL, '2022-05-19 14:04:13', '2022-05-19 14:04:13', '6125', 'peakdon', NULL, NULL, NULL, NULL, 'Christian', 'Umanah', 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(18, 'chiomaflourltd2@gmail.com', 1, 0, NULL, NULL, 'Chioma Flourist Ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+23566588855', NULL, NULL, '$2y$10$FENFvnZGVvLGvlwQEWK2f.vx.y22ubLjd24dKMDkHxSCxR0tTkxWq', NULL, '2022-05-21 17:04:41', '2022-05-21 17:04:41', NULL, NULL, NULL, '12 Abak Rd , Uyo Akwa Ibom', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(19, 'chiomaflourtd2@gmail.com', 1, 0, NULL, NULL, 'Chioma Flourist Ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+23566588855', NULL, NULL, '$2y$10$25jR8bOyrUZTLIcItZjXfuQ5B0QYXCHiTRUDCgrJIcmUe6NOMI9Gu', NULL, '2022-05-21 17:05:42', '2022-05-21 17:05:42', NULL, NULL, NULL, '12 Abak Rd , Uyo Akwa Ibom', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(20, 'chiomaflouritd2@gmail.com', 1, 0, NULL, NULL, 'Chioma Flourist Ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+23566588855', NULL, NULL, '$2y$10$ShnI8vljop6vQggw6tKkT.g37eBGknpFaHoXhcV6lFYGnlsX248TG', NULL, '2022-05-21 17:05:50', '2022-05-21 17:05:50', NULL, NULL, NULL, '12 Abak Rd , Uyo Akwa Ibom', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(21, 'chiomaflouritd@gmail.com', 1, 0, NULL, NULL, 'Chioma Flourist Ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+23566588855', NULL, NULL, '$2y$10$OhqiQUZOW.d4vIgaQh7dnOov..tVWaS4luNbtAcbm4M.CKIRigGLy', NULL, '2022-05-21 17:06:35', '2022-05-21 17:06:35', NULL, NULL, NULL, '12 Abak Rd , Uyo Akwa Ibom', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(22, 'blessing@gmail.com', 1, 0, NULL, NULL, 'Blessing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '09033463917', NULL, NULL, '$2y$10$JdhrBIfJazZCkZsno87XAO2qt8bcNVfDhg9BD19gY2xL/UsFxZYaq', NULL, '2022-05-21 17:39:32', '2022-05-21 17:39:32', NULL, NULL, NULL, 'Ogbomosho', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(23, 'blessingdur@gmail.com', 1, 0, NULL, NULL, 'Blessing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '09036251480', NULL, NULL, '$2y$10$i5hUB58R5TJN24ccBZ3o0uGo85oAznK0BhGMsSO89n.c28SKfs0Dy', NULL, '2022-05-21 18:12:31', '2022-05-21 18:12:31', NULL, NULL, NULL, 'Ogbomosho', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(24, 'chiomaflourlt@gmail.com', 1, 0, NULL, NULL, 'Chioma Flourist Ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+23566588855', NULL, NULL, '$2y$10$JlWidwP0adGjwsPvnopaPul/VhRs7C4rMaIH9ox4nJLd/ud40bBia', NULL, '2022-05-23 00:04:44', '2022-05-23 00:04:44', NULL, NULL, NULL, '12 Abak Rd , Uyo Akwa Ibom', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(25, 'chiomaflour@gmail.com', 1, 0, NULL, NULL, 'Chioma Flourist Ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+23566588855', NULL, NULL, '$2y$10$DU6GYxdgufg0Lt4fbDfejeeo4Y.g4mbnG4e2Mb9T5pn/8BwMgti6K', NULL, '2022-05-23 00:12:08', '2022-05-23 00:12:08', NULL, NULL, NULL, '12 Abak Rd , Uyo Akwa Ibom', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(26, 'chiomaflou2@gmail.com', 1, 0, NULL, NULL, 'Chioma Flourist Ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+23566588855', NULL, NULL, '$2y$10$gEJ68rUs3283ao3wkMdJR.xToEECIRQkl1btR7wtSRUxwJKsvI5oS', NULL, '2022-05-23 02:57:09', '2022-05-23 02:57:09', NULL, NULL, NULL, '12 Abak Rd , Uyo Akwa Ibom', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(27, 'chiomaflo2@gmail.com', 1, 0, NULL, NULL, 'Chioma Flourist Ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+23566588855', NULL, NULL, '$2y$10$.M9y3uxL1J/Hpa1BRQWzteprv2ogQ/t0gsyw3/uIpz5KSdJ0TJPIG', NULL, '2022-05-23 02:58:56', '2022-05-23 02:58:56', NULL, NULL, NULL, '12 Abak Rd , Uyo Akwa Ibom', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(28, 'peakdone256@gmail.com', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '234877885588', NULL, NULL, '$2y$10$dreTRGXj/bx66AVn82UpdeqAA3/iRy.rd.0acHfiEXWSODnLLneeW', NULL, '2022-05-23 19:27:43', '2022-05-23 19:27:43', '1169', 'peakdon3', NULL, NULL, NULL, NULL, 'Christian', 'Umanah', 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(29, 'blessing1@gmail.com', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '234877885588', NULL, NULL, '$2y$10$bXSPpOJfmcy0rx2YLpLDh.rX8IXQkGHRlXUTMBMmcd1Mzmak1j4S2', NULL, '2022-05-26 02:39:01', '2022-05-26 02:39:01', '4192', 'blessing1', NULL, NULL, NULL, NULL, 'Christian', 'Umanah', 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(30, 'blazzerd@gmail.com', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9033463917', NULL, NULL, '$2y$10$llEO8w.RzarR/INcarjKou/varfmpa1lp9ll/4rNrkiSeXkALknFm', NULL, '2022-05-26 02:57:25', '2022-05-26 02:57:25', '6323', 'mic', NULL, NULL, NULL, NULL, 'Happy', 'Dahn', 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(31, 'nicko@gmail.com', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9033463917', NULL, NULL, '$2y$10$/TtEEMlHzUk8MLEEMDa1b.CZpJdCJ8yPq0EaBPTMDsJja/C44ItmW', NULL, '2022-05-26 03:01:53', '2022-05-26 03:01:53', '7330', 'blacdemon', NULL, NULL, NULL, NULL, 'Black', 'Demon', 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(32, 'hot@gmail.com', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9033463917', NULL, NULL, '$2y$10$UeNUdaegJtVllHNU1tIgRuGytEjF5vdS7OwdgzfSmOJryff2PRbQ.', NULL, '2022-05-26 03:04:27', '2022-05-26 03:04:27', '438', 'thjhgf', NULL, NULL, NULL, NULL, 'Gffhh', 'Rthhut', 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(33, 'gob@gmail.com', 1, 0, NULL, NULL, 'Balls', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9033469317', NULL, NULL, '$2y$10$OvAMQjAb6BkXXsM1GHPTBObjKUndZfETmnlB2Slo4mnjPXDn2VB5S', NULL, '2022-05-26 03:16:08', '2022-05-26 03:16:08', NULL, NULL, NULL, 'adorable', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(34, 'samdan@gmail.com', 1, 0, NULL, NULL, 'Dahmiz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9033424697', NULL, NULL, '$2y$10$DGV.dyvq2CyilJbwgOkMVeL4kronRyfYs7RsmD15V74P5M.H8np4u', NULL, '2022-05-28 01:39:06', '2022-05-28 01:39:06', NULL, NULL, NULL, 'Abuja', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(35, 'chiomaflorltd2@gmail.com', 1, 0, NULL, NULL, 'Chioma Flourist Lt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+23566588855', NULL, NULL, '$2y$10$MJa4wsw1f9WAj375UqvxB.FgbOMQk0bPfZOcJEc9x2GfHGsd0M3m.', NULL, '2022-05-28 02:18:50', '2022-05-28 02:18:50', NULL, NULL, NULL, '12 Abak Rd , Uyo Akwa Ibom', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(36, 'dopeman@gmail.com', 1, 0, NULL, NULL, 'Malcolm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9033669947', NULL, NULL, '$2y$10$yqXcwPuBuy1A0upgA760DOz6iLlAu1hL4zccZpi/m6vvcbsRSr.4K', NULL, '2022-05-30 15:03:06', '2022-05-30 15:03:06', NULL, NULL, NULL, 'Oyo', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(37, 'baggo@gmail.com', 1, 0, NULL, NULL, 'Baggo Ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+23566588889', NULL, NULL, '$2y$10$MhPoe8psVFMZ0gpGin2LnuI3RIPBjPUMQVaLF3upio5fAKXBj4xum', NULL, '2022-05-31 18:42:28', '2022-05-31 18:42:28', NULL, NULL, NULL, '12 Abak Rd , Uyo Akwa Ibom', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(38, 'pachristong@gmail.com', 1, 0, NULL, NULL, 'Pachristo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '07088800874', NULL, NULL, '$2y$10$OqpNqazp/9v9kzJCAT3dR.uTpOSTD9Ge8JuZEQJ1mzVA20sWx25hi', NULL, '2022-06-01 00:56:36', '2022-06-01 00:56:36', NULL, NULL, NULL, '12 aka Rd uyo', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(39, 'dog@gmail.com', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9033446679', NULL, NULL, '$2y$10$x/.pZoZrceHpo.4QW315euUj8cibK1NBjzgmIlEBHelHi.l9kCnSy', NULL, '2022-06-01 02:58:04', '2022-06-01 02:58:04', '7511', 'nagoya', NULL, NULL, NULL, NULL, 'Giga', 'Hoyo', 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(40, 'blessing123@gmail.com', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9025361485', NULL, NULL, '$2y$10$JPgiF45Ne0XT4DFtpWm/C.KKz/fQ5Nnq7Lfr4VyVZfJjY40b70ore', NULL, '2022-06-01 19:54:32', '2022-06-01 19:54:32', '1323', 'redneck', NULL, NULL, NULL, NULL, 'Readub', 'Miko', 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(41, 'home@gmail.com', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9033463917', NULL, NULL, '$2y$10$fxVTU75vlVjdwjHGRDR0KuEwWOsdqqbRKgPEKFABD1NVMkgN7pppK', NULL, '2022-06-01 19:59:26', '2022-06-01 19:59:26', '8221', 'hamalapp', NULL, NULL, NULL, NULL, 'Home', 'Lapping', 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(42, 'davison@gmail.com', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9033463917', NULL, NULL, '$2y$10$nK34JjESyQkcuCt7GXJ1GuNrWIt5TZIKR7vyaTEYjxin97xPQFm6m', NULL, '2022-06-01 20:02:20', '2022-06-01 20:02:20', '6311', 'davidson', NULL, NULL, NULL, NULL, 'Blessing', 'David', 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(43, 'damtaible@gmail.com', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9033463987', NULL, NULL, '$2y$10$frIC58rMWG351jrdqw0XauYTzLU4JZHiDDirxdwikEX5aijTA3Aze', NULL, '2022-06-01 20:05:03', '2022-06-01 20:05:03', '320', 'div', NULL, NULL, NULL, NULL, 'Niko', 'Span', 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(44, 'taic6629@gmail.com', 1, 0, NULL, NULL, 'Ble', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9033464894', NULL, NULL, '$2y$10$2W/YOexJYASXPUF86UM0KeXzaDM6dPBwlKmrSpFyZK7W0sPmjLU8y', NULL, '2022-06-01 20:36:12', '2022-06-01 20:36:12', NULL, NULL, NULL, 'hgff', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(45, 'iyanudaniel56@gmail.com', 1, 0, NULL, NULL, 'Iccucuvu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9033655558', NULL, NULL, '$2y$10$2dD11.eQN1BZyYHZMK6a/OkuS2e9k4Fhhex8IvNn6iJotBrq9L49a', NULL, '2022-06-01 21:06:40', '2022-06-01 21:06:40', NULL, NULL, NULL, 'gbbbhh', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(46, 'omotolaadeyemi72@gmail.com', 1, 0, NULL, NULL, 'Iccucuvu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9033655558', NULL, NULL, '$2y$10$SUAppATdT5OAe.2aPTH0DuE.IJIxtyrkWwvzbs44QIYWRzVCtZ/56', NULL, '2022-06-01 21:10:12', '2022-06-01 21:10:12', NULL, NULL, NULL, 'gbbbhh', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(47, 'sterwanmarvi16@gmail.com', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9085256555', NULL, NULL, '$2y$10$lWknvE46p7sGm0Z9iTVQpeOnCQLqgzJlNEUZS.kOzvdEg.SRmk6YS', NULL, '2022-06-02 09:21:24', '2022-06-02 09:21:24', '3468', 'doug\'s', NULL, NULL, NULL, NULL, 'Great', 'Dakota', 0, 0, NULL, NULL, NULL, NULL, 0, 0);

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
(5, '5', '14', NULL, '2022-06-01 01:40:12', '2022-06-01 01:40:12'),
(6, '21', '14', NULL, '2022-06-01 01:40:28', '2022-06-01 01:40:28'),
(7, '2', '14', NULL, '2022-06-01 02:17:37', '2022-06-01 02:17:37'),
(8, '2', '39', NULL, '2022-06-01 02:59:05', '2022-06-01 02:59:05'),
(13, '5', '9', NULL, '2022-06-03 19:16:21', '2022-06-03 19:16:21'),
(15, '6', '9', NULL, '2022-06-03 21:12:16', '2022-06-03 21:12:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `budgets`
--
ALTER TABLE `budgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `budget_items`
--
ALTER TABLE `budget_items`
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
-- Indexes for table `listing_comments`
--
ALTER TABLE `listing_comments`
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
-- Indexes for table `payment_intent`
--
ALTER TABLE `payment_intent`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `react_listing_comments`
--
ALTER TABLE `react_listing_comments`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `task_models`
--
ALTER TABLE `task_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
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
-- AUTO_INCREMENT for table `budgets`
--
ALTER TABLE `budgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `budget_items`
--
ALTER TABLE `budget_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `listing_comments`
--
ALTER TABLE `listing_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

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
-- AUTO_INCREMENT for table `payment_intent`
--
ALTER TABLE `payment_intent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_intents`
--
ALTER TABLE `payment_intents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `react_listing_comments`
--
ALTER TABLE `react_listing_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `task_models`
--
ALTER TABLE `task_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
