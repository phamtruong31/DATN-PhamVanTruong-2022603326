-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2026 at 05:56 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `65_laravel_react_xedap3s`
--

-- --------------------------------------------------------

--
-- Table structure for table `attribute_products`
--
create database TMDT;

USE TMDT;


CREATE TABLE `attribute_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_product` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(150) NOT NULL,
  `value` varchar(1000) NOT NULL,
  `sort` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_products`
--

INSERT INTO `attribute_products` (`id`, `id_product`, `key`, `value`, `sort`, `created_at`, `updated_at`) VALUES
(21, 3, 'Màu sắc', 'Xanh navy, Trắng', NULL, '2025-04-29 13:12:18', '2026-02-24 10:56:25'),
(22, 3, 'Kích cỡ', '14 in', NULL, '2025-04-29 13:12:18', '2026-02-24 10:56:25'),
(23, 3, 'Chất liệu', 'Nhôm cấp', NULL, '2025-04-29 13:12:18', '2026-02-24 10:56:25'),
(28, 3, 'Trọng lượng', '1kg', NULL, '2025-04-29 13:12:18', '2026-02-24 10:56:25'),
(31, 4, 'Màu sắc', 'Đen, Xanh', NULL, '2025-04-29 13:12:18', '2026-01-21 00:20:50'),
(32, 4, 'Kích cỡ', '3in', NULL, '2025-04-29 13:12:18', '2026-01-21 00:20:50'),
(33, 4, 'Chất liệu', 'Nhôm', NULL, '2025-04-29 13:12:18', '2026-01-21 00:20:50'),
(37, 4, 'RAM', '4G', NULL, '2025-04-29 13:12:18', '2026-01-21 00:20:50'),
(38, 4, 'Trọng lượng', '800gam', NULL, '2025-04-29 13:12:18', '2026-01-21 00:20:50'),
(61, 7, 'Màu sắc', 'Trắng', NULL, '2025-04-29 13:12:18', '2026-02-24 09:30:05'),
(409, 52, 'A', '111', NULL, '2026-01-20 23:43:29', '2026-01-20 23:54:48'),
(410, 3, 'Bộ nhớ', '500 SSD', NULL, '2026-01-21 00:04:10', '2026-02-24 10:56:25'),
(411, 53, 'A', '111', NULL, '2026-01-21 00:25:57', '2026-01-21 00:26:32'),
(412, 54, 'Ram', '155GB', NULL, '2026-02-25 03:19:10', '2026-02-25 03:19:10');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `position` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0- unde 1:banner lon 2:banner trong section san pham ',
  `image` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL COMMENT 'Banner link URL',
  `title1` varchar(100) NOT NULL COMMENT 'Primary title',
  `title2` varchar(100) DEFAULT NULL COMMENT 'Secondary title',
  `sort` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `position`, `image`, `link`, `title1`, `title2`, `sort`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '/img/banner/banner-5.jpg', '#', 'xe đạp đua', 'khẳng định cá tính riêng của bạn', 1, '2025-04-29 13:12:16', '2026-02-23 11:32:09', '2026-02-23 11:32:09'),
(2, 1, '/img/banner/1771846406.jpg', '#', 'Primary Title 2', 'Secondary Title 2', 2, '2025-04-29 13:12:16', '2026-02-23 11:33:26', NULL),
(3, 1, '/img/banner/1771846414.jpg', '#', 'Primary Title 3', 'Secondary Title 3', 3, '2025-04-29 13:12:16', '2026-02-23 11:33:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `slug` varchar(100) NOT NULL,
  `sort` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT ' 0 - hidden, 1 - active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `logo`, `slug`, `sort`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Apple', 'img/brand/1771847405.png', 'apple', 1, 1, '2025-04-29 13:12:16', '2026-02-23 11:55:33', NULL),
(2, 'Lenovo', 'img/brand/1771847393.png', 'lenovo', 2, 1, '2025-04-29 13:12:16', '2026-02-23 12:10:24', NULL),
(3, 'HP', 'img/brand/hp.jpg', 'hp', 3, 1, '2025-04-29 13:12:16', '2026-02-23 11:49:21', NULL),
(4, 'Giant', 'img/brand/1771847474.jpg', 'giant', 4, 1, '2025-04-29 13:12:16', '2026-02-23 12:10:18', NULL),
(21, '1', 'img/brand/1771847560.png', '1', 1, 1, '2026-02-23 11:52:40', '2026-02-23 11:52:40', NULL),
(22, 'ty', 'img/brand/1771847792.png', 'ty', 2, 1, '2026-02-23 11:56:32', '2026-02-23 11:56:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_product` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(600) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 - hidden, 1 - display',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `id_user`, `id_product`, `content`, `status`, `created_at`, `updated_at`) VALUES
(6, 37, 4, 'rất oke', 1, '2026-02-25 03:53:17', '2026-02-25 03:53:17');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `discount_value` int(11) NOT NULL,
  `coupon_code` varchar(50) NOT NULL,
  `min_order` decimal(14,2) DEFAULT NULL,
  `max_order` decimal(14,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `content` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_segments`
--

CREATE TABLE `customer_segments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_segments`
--

INSERT INTO `customer_segments` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Trẻ Em', NULL, NULL),
(2, 'Nam', NULL, NULL),
(3, 'Nữ', NULL, NULL),
(4, 'Học sinh', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `value` int(11) DEFAULT NULL COMMENT 'Phần trăm khuyến mãi',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'status: 0 - hidden, 1 - active',
  `time_start` timestamp NULL DEFAULT current_timestamp() COMMENT 'Ngày nhập',
  `time_end` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `name`, `description`, `value`, `status`, `time_start`, `time_end`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Giảm 20% Tất Cả Sản Phẩm', 'Áp dụng cho tất cả sản phẩm trong cửa hàng.', 20, 1, '2026-02-23 13:12:16', '2026-03-13 13:12:16', NULL, '2026-02-24 10:56:53', NULL),
(2, 'Giảm 50K cho đơn từ 500K', 'Khuyến mãi áp dụng cho đơn hàng từ 500K trở lên.', 5, 1, '2026-02-20 13:12:16', '2026-03-14 10:01:24', NULL, '2026-02-24 10:57:01', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorite_products`
--

CREATE TABLE `favorite_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_product` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorite_products`
--

INSERT INTO `favorite_products` (`id`, `id_product`, `id_user`, `created_at`, `updated_at`) VALUES
(10, 3, 37, '2026-02-24 11:42:21', '2026-02-24 11:42:21'),
(11, 7, 37, '2026-02-25 03:13:28', '2026-02-25 03:13:28');

-- --------------------------------------------------------

--
-- Table structure for table `img_products`
--

CREATE TABLE `img_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_product` bigint(20) UNSIGNED NOT NULL,
  `img_products` varchar(250) NOT NULL,
  `sort` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `img_products`
--

INSERT INTO `img_products` (`id`, `id_product`, `img_products`, `sort`, `created_at`, `updated_at`) VALUES
(177, 52, 'img/product/1768978451_IC19565-0937-00-front-800x600.jpg', NULL, '2026-01-20 23:54:11', '2026-01-20 23:54:11'),
(178, 52, 'img/product/1768978451_FGmbfGXCTNgr9h4AA4oZ4N-1200-80.jpg', NULL, '2026-01-20 23:54:11', '2026-01-20 23:54:11'),
(179, 52, 'img/product/1768978451_pXHQjLUwGzxYQpcZj5Ahai.jpg', NULL, '2026-01-20 23:54:11', '2026-01-20 23:54:11'),
(180, 3, 'img/product/1768979050_9e9effc5-e7bc-416d-ab20-f908efd7c98c.__CR0,0,970,600_PT0_SX970_V1___.jpg', NULL, '2026-01-21 00:04:10', '2026-01-21 00:04:10'),
(181, 3, 'img/product/1768979050_main.jpg', NULL, '2026-01-21 00:04:10', '2026-01-21 00:04:10'),
(182, 3, 'img/product/1768979050_Asus-Vivobook-GO-E1504FAb.png', NULL, '2026-01-21 00:04:10', '2026-01-21 00:04:10'),
(183, 4, 'img/product/1768980050_maxresdefault-2-3 (1).jpg', NULL, '2026-01-21 00:20:50', '2026-01-21 00:20:50'),
(184, 4, 'img/product/1768980050_a7.png', NULL, '2026-01-21 00:20:50', '2026-01-21 00:20:50'),
(185, 4, 'img/product/1768980050_5169102095cf6e732a813cdada355eb0.png', NULL, '2026-01-21 00:20:50', '2026-01-21 00:20:50'),
(186, 53, 'img/product/1768980368_maxresdefault-2-3.jpg', NULL, '2026-01-21 00:26:08', '2026-01-21 00:26:08'),
(187, 53, 'img/product/1768980368_main.jpg', NULL, '2026-01-21 00:26:08', '2026-01-21 00:26:08'),
(188, 7, 'img/product/1771925405_(600x600)_samsung_galaxy_a56_5g_hong_thumb_600x600.png', NULL, '2026-02-24 09:30:05', '2026-02-24 09:30:05'),
(189, 7, 'img/product/1771925405_69067-samsung-galaxy-a56.jpg', NULL, '2026-02-24 09:30:05', '2026-02-24 09:30:05'),
(190, 54, 'img/product/1771989550_69067-samsung-galaxy-a56.jpg', NULL, '2026-02-25 03:19:10', '2026-02-25 03:19:10');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `main_categories`
--

CREATE TABLE `main_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `main_categories`
--

INSERT INTO `main_categories` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Máy tính', NULL, NULL, NULL),
(2, 'Điện thoại', NULL, NULL, NULL),
(3, 'Phụ kiện', NULL, NULL, NULL),
(4, 'Máy cũ', '2026-02-24 09:23:06', '2026-02-24 09:23:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_01_19_175248_create_brands_table', 1),
(5, '2025_01_19_175300_create_main_categories_table', 1),
(6, '2025_01_19_175301_create_sub_categories_table', 1),
(7, '2025_01_19_175302_create_discounts_table', 1),
(8, '2025_01_19_175346_create_products_table', 1),
(9, '2025_01_19_175347_create_product_variants_table', 1),
(10, '2025_01_19_175348_create_customer_segments_table', 1),
(11, '2025_01_19_175349_create_product_customer_segments_table', 1),
(12, '2025_01_19_175615_create_comments_table', 1),
(13, '2025_01_19_175722_create_user_reviews_table', 1),
(14, '2025_01_19_182414_create_img_products_table', 1),
(15, '2025_01_19_182450_create_attribute_products_table', 1),
(16, '2025_01_19_182506_create_banners_table', 1),
(17, '2025_01_19_182603_create_favorite_products_table', 1),
(18, '2025_01_19_183026_create_coupons_table', 1),
(19, '2025_01_19_183115_create_payments_table', 1),
(20, '2025_01_19_183137_create_orders_table', 1),
(21, '2025_01_19_183202_create_orders_details_table', 1),
(22, '2025_01_19_211316_create_post_categories_table', 1),
(23, '2025_01_19_211336_create_posts_table', 1),
(24, '2025_01_21_122721_create_personal_access_tokens_table', 1),
(25, '2025_03_03_201605_create_relate_products_table', 1),
(26, '2025_04_12_212946_add_deleted_at_to_main_categories_table', 1),
(27, '2025_04_12_222630_add_deleted_at_to_discounts_table', 1),
(28, '2025_04_12_230047_add_deleted_at_to_brands_table', 1),
(29, '2025_04_22_012613_add_deleted_at_to_post_categories_table', 1),
(30, '2025_04_23_093733_add_deleted_at_to_sub_categories', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_payment` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 - huy, 1 - xu ly ,2 - dang giao, 3 - ok',
  `thanh_toan` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 - unpaid, 1 - paid',
  `note` varchar(200) DEFAULT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày đặt',
  `total_price` decimal(14,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `id_user`, `id_payment`, `status`, `thanh_toan`, `note`, `phone`, `address`, `order_date`, `total_price`, `created_at`, `updated_at`) VALUES
(8, 37, 1, 3, 1, 'aaaa', '1234567811', '111, Xã Tô Mậu, Huyện Lục Yên, Tỉnh Yên Bái', '2026-02-24 18:07:43', '40560000.00', '2026-02-24 11:07:43', '2026-02-24 12:04:33'),
(9, 37, 2, 3, 1, 'abc', '1234567811', '111, Xã Phù Nham, Thị xã Nghĩa Lộ, Tỉnh Yên Bái', '2026-02-24 18:42:57', '44800000.00', '2026-02-24 11:42:57', '2026-02-24 11:45:08'),
(10, 37, 4, 1, 0, 'kj', '1234567811', '111, Xã Hồng Ca, Huyện Trấn Yên, Tỉnh Yên Bái', '2026-02-24 19:12:00', '10450000.00', '2026-02-24 12:12:00', '2026-02-24 12:12:00'),
(11, 37, 4, 1, 0, NULL, '1234567811', '111, Xã Hồng Ca, Huyện Trấn Yên, Tỉnh Yên Bái', '2026-02-24 19:13:12', '9660000.00', '2026-02-24 12:13:12', '2026-02-24 12:13:12'),
(12, 37, 4, 1, 0, NULL, '1234567811', '111, Xã Hồng Ca, Huyện Trấn Yên, Tỉnh Yên Bái', '2026-02-24 19:17:58', '10450000.00', '2026-02-24 12:17:58', '2026-02-24 12:17:58'),
(13, 37, 4, 1, 0, NULL, '1234567811', '111, Xã Hồng Ca, Huyện Trấn Yên, Tỉnh Yên Bái', '2026-02-24 19:21:45', '5420000.00', '2026-02-24 12:21:45', '2026-02-24 12:21:45'),
(14, 37, 4, 1, 0, NULL, '1234567811', '111, Xã Hồng Ca, Huyện Văn Yên, Tỉnh Yên Bái', '2026-02-24 19:26:45', '10450000.00', '2026-02-24 12:26:45', '2026-02-24 12:26:45'),
(15, 37, 4, 1, 0, NULL, '1234567811', '111, Xã Hồng Ca, Huyện Trấn Yên, Tỉnh Yên Bái', '2026-02-24 19:28:05', '10450000.00', '2026-02-24 12:28:05', '2026-02-24 12:28:05'),
(16, 37, 4, 1, 0, NULL, '1234567811', '111, Xã Hồng Ca, Huyện Trấn Yên, Tỉnh Yên Bái', '2026-02-24 19:29:25', '9660000.00', '2026-02-24 12:29:25', '2026-02-24 12:29:25'),
(17, 37, 4, 1, 0, NULL, '1234567811', '111, Xã Hồng Ca, Huyện Trấn Yên, Tỉnh Yên Bái', '2026-02-25 08:56:29', '9660000.00', '2026-02-25 01:56:29', '2026-02-25 01:56:29'),
(18, 37, 4, 1, 0, NULL, '1234567811', '111, Xã Hồng Ca, Huyện Trấn Yên, Tỉnh Yên Bái', '2026-02-25 09:27:01', '9660000.00', '2026-02-25 02:27:01', '2026-02-25 02:27:01'),
(19, 37, 4, 3, 1, NULL, '1234567811', '111, Xã Hồng Ca, Huyện Trấn Yên, Tỉnh Yên Bái', '2026-02-25 10:14:27', '19200000.00', '2026-02-25 03:14:27', '2026-02-25 03:19:38'),
(20, 37, 4, 1, 0, NULL, '1234567811', '111, Xã Hồng Ca, Huyện Trấn Yên, Tỉnh Yên Bái', '2026-02-25 11:05:26', '35200000.00', '2026-02-25 04:05:26', '2026-02-25 04:05:26');

-- --------------------------------------------------------

--
-- Table structure for table `orders_details`
--

CREATE TABLE `orders_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_variant` bigint(20) UNSIGNED NOT NULL,
  `id_order` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_details`
--

INSERT INTO `orders_details` (`id`, `id_variant`, `id_order`, `price`, `quantity`, `created_at`, `updated_at`) VALUES
(6, 80, 8, '35200000.00', 1, '2026-02-24 11:07:43', '2026-02-24 11:07:43'),
(7, 83, 8, '5360000.00', 1, '2026-02-24 11:07:43', '2026-02-24 11:07:43'),
(8, 7, 9, '9600000.00', 1, '2026-02-24 11:42:57', '2026-02-24 11:42:57'),
(9, 80, 9, '35200000.00', 1, '2026-02-24 11:42:57', '2026-02-24 11:42:57'),
(10, 84, 10, '10450000.00', 1, '2026-02-24 12:12:00', '2026-02-24 12:12:00'),
(11, 7, 11, '9600000.00', 1, '2026-02-24 12:13:12', '2026-02-24 12:13:12'),
(12, 84, 12, '10450000.00', 1, '2026-02-24 12:17:58', '2026-02-24 12:17:58'),
(13, 78, 13, '5360000.00', 1, '2026-02-24 12:21:45', '2026-02-24 12:21:45'),
(14, 84, 14, '10450000.00', 1, '2026-02-24 12:26:45', '2026-02-24 12:26:45'),
(15, 84, 15, '10450000.00', 1, '2026-02-24 12:28:05', '2026-02-24 12:28:05'),
(16, 7, 16, '9600000.00', 1, '2026-02-24 12:29:25', '2026-02-24 12:29:25'),
(17, 7, 17, '9600000.00', 1, '2026-02-25 01:56:29', '2026-02-25 01:56:29'),
(18, 7, 18, '9600000.00', 1, '2026-02-25 02:27:01', '2026-02-25 02:27:01'),
(19, 7, 19, '19200000.00', 2, '2026-02-25 03:14:27', '2026-02-25 03:14:27'),
(20, 80, 20, '35200000.00', 1, '2026-02-25 04:05:26', '2026-02-25 04:05:26');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `bank_number` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 - hidden, 1 - active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `payment_method`, `bank`, `bank_number`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Thanh toán tiền mặt tại cửa hàng 💵', NULL, NULL, 1, '2025-04-29 13:12:18', '2025-04-29 13:12:18'),
(2, 'Thanh toán online Vietcombank', 'Vietcombank', '1112221111', 1, '2025-04-29 13:12:18', '2026-02-24 09:47:48'),
(3, 'Thanh toán online LPO', 'LPOBank', '2233311', 1, '2025-04-29 13:12:18', '2026-02-24 09:48:11'),
(4, 'Thanh toán qua VNPay', 'VNPay', NULL, 1, '2026-02-24 12:10:02', '2026-02-24 12:10:02');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(7, 'App\\Models\\User', 10, 'auth_token', '2ab6f81c61be25737e6b85e46c67dcff93bbcf55208bb233b00af93815394e0f', '[\"*\"]', '2026-01-21 00:27:15', NULL, '2026-01-20 22:58:19', '2026-01-21 00:27:15'),
(13, 'App\\Models\\User', 37, 'auth_token', 'b9f60f3c1bd6e062eee3e06a9d91d003708a2379698b34af3bd685f1df7dfaf1', '[\"*\"]', '2026-02-25 04:05:26', NULL, '2026-02-25 03:52:33', '2026-02-25 04:05:26');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_category` int(10) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(250) NOT NULL,
  `short_description` varchar(1000) DEFAULT NULL,
  `hot` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Hot status: 0 - no, 1 - yes',
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT ' 0 - hidden, 1 - active',
  `image` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `published_date` date NOT NULL,
  `slug` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `id_category`, `id_user`, `title`, `short_description`, `hot`, `views`, `status`, `image`, `content`, `published_date`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 3, 6, 'Thị Trường Laptop Sinh Viên 2026', 'Thị trường laptop dành cho học sinh, sinh viên năm nay đang chứng kiến những sự thay đổi ngoạn mục. Không chỉ mỏng nhẹ và pin \"trâu\" hơn, sự phổ cập của các dòng chip tích hợp AI đang biến những chiếc laptop phân khúc phổ thông trở thành trợ lý học tập đắc lực.', 0, 6, 1, '/img/post/1771924431.jpg', '<p>Tháng 8 và tháng 9 hàng năm luôn là \"mùa vàng\" của thị trường máy tính xách tay khi hàng triệu tân sinh viên chuẩn bị bước vào giảng đường đại học. Tuy nhiên, năm 2026 mang đến một bức tranh hoàn toàn khác biệt so với những năm trước. Sinh viên giờ đây không chỉ tìm kiếm một cỗ máy để gõ Word, làm PowerPoint hay lướt web, mà họ đang hướng tới những thiết bị thông minh, hỗ trợ xử lý đa nhiệm và tích hợp trí tuệ nhân tạo sâu rộng.</p><h3>1. Kỷ nguyên của \"Laptop AI\" giá rẻ</h3><p>Nếu như vài năm trước, khái niệm laptop AI chỉ xuất hiện trên các dòng máy cao cấp trị giá hàng chục triệu đồng, thì nay mọi chuyện đã khác. Sự cạnh tranh gay gắt giữa Intel, AMD và Qualcomm (với dòng Snapdragon X) đã đẩy mức giá của các bộ vi xử lý có tích hợp NPU (Bộ xử lý thần kinh chuyên dụng cho AI) xuống mức vô cùng dễ chịu.</p><blockquote><strong>NPU mang lại lợi ích gì cho sinh viên?</strong> Nhờ NPU, máy tính có thể tự động tóm tắt tài liệu dài hàng chục trang, dịch thuật thời gian thực trong các cuộc họp nhóm online, hay khử tiếng ồn môi trường xuất sắc mà không làm hao hụt quá nhiều pin như trước đây.</blockquote><p>Chỉ với mức ngân sách từ <strong>13 - 18 triệu đồng</strong>, sinh viên hiện tại đã có thể sở hữu những chiếc máy tính được dán nhãn \"AI PC\" thế hệ mới, đáp ứng hoàn hảo cho ít nhất 4 năm đại học.</p><h3>2. Tiêu chí chọn máy phân hóa rõ rệt theo ngành học</h3><p>Thị trường năm nay cũng chứng kiến sự phân mảnh rõ rệt các dòng sản phẩm để phục vụ từng tệp sinh viên cụ thể:</p><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Khối Kinh tế, Ngôn ngữ, Xã hội:</strong> Ưu tiên hàng đầu là sự mỏng nhẹ, thiết kế thanh lịch và thời lượng pin cực khủng (lên tới 12-15 tiếng). Các mẫu Ultrabook màn hình OLED, viền mỏng và trọng lượng dưới 1.3kg từ các hãng như Asus (Vivobook), Lenovo (IdeaPad) hay Apple (MacBook Air M-series) tiếp tục thống trị bảng xếp hạng doanh số.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Khối Kỹ thuật, CNTT và Thiết kế Đồ họa:</strong> Thay vì những cỗ máy \"nồi đồng cối đá\" dày cộm, laptop gaming và đồ họa năm nay mang thiết kế tối giản và gọn gàng hơn rất nhiều. Yêu cầu tiêu chuẩn của nhóm này hiện đã được nâng lên mức RAM 16GB (thậm chí 32GB) và card đồ họa rời (như dòng RTX 40-series) để chạy mượt mà các phần mềm nặng như AutoCAD, Premiere hay rèn luyện kỹ năng lập trình AI.</li></ol><h3>3. Đua nhau tung khuyến mãi \"Back to School\"</h3><p>Để đón đầu mùa mua sắm, các hệ thống bán lẻ lớn tại Việt Nam đang tung ra hàng loạt chương trình ưu đãi chưa từng có.</p><p>Bên cạnh việc giảm giá trực tiếp từ 1 đến 5 triệu đồng tùy model, nhiều cửa hàng còn áp dụng chính sách:</p><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Tặng kèm màn hình rời hoặc balo chống sốc.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Trợ giá thu cũ đổi mới lên đến 2 triệu đồng.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Tặng bản quyền Office 365 và gói dung lượng Cloud miễn phí trong suốt 4 năm học thuật.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Giảm thêm % cho tân sinh viên dựa trên điểm thi đại học.</li></ol><h3>Lời khuyên cho các tân sinh viên</h3><p>\r\n</p>', '2026-02-24', 'nen-mua-xe-dap-the-thao-cua-thuong-hieu-nao-la-tot-ben-chat-luong-nha', '2025-04-29 13:12:18', '2026-02-24 11:40:48', NULL),
(5, 2, 6, 'Rất nhiều người không ngờ Kích cỡ xe đạp lại quan trọng đến như vậy và cách chọn kích cỡ xe', 'Bạn có biết rằng việc chọn sai kích cỡ xe đạp có thể biến những chuyến đi thú vị thành trải nghiệm đau nhức và khó chịu? Kích cỡ xe đạp không chỉ ảnh hưởng đến hiệu suất mà còn tác động đến sức khỏe lâu dài của người sử dụng. Để tối ưu hóa sự thoải mái và hiệu quả, việc hiểu rõ tầm quan trọng của kích cỡ xe và cách chọn xe phù hợp là điều mà bất kỳ biker cũng không nên bỏ qua.', 0, 0, 1, '/img/post/1748264470.jpg', '<p>aa</p>', '2025-04-29', 'rat-nhieu-nguoi-khong-ngo-kich-co-cua-xe-dap-lai-quan-trong-den-nhu-vay-va-cach-cho-kich-co-xe', '2025-04-29 13:12:18', '2026-02-24 09:13:56', '2026-02-24 09:13:56'),
(9, 1, 6, 'Điện Thoại Thông Minh 2026: Trợ Lý AI Bỏ Túi Và Cuộc Đua Camera Dành Cho Nhà Sáng Tạo', 'Thị trường smartphone năm nay không còn là cuộc đua thuần túy về cấu hình hay số \"chấm\" megapixel. Thay vào đó, trí tuệ nhân tạo (AI) tích hợp sâu và khả năng quay chụp chuyên nghiệp đang định hình lại cách người dùng tương tác với thiết bị di động mỗi ngày.', 0, 0, 1, '/img/post/1771924562_699d6c52b3bbe.jpg', '<p>Sau nhiều năm thiết kế điện thoại đi vào lối mòn, năm 2026 đánh dấu sự bùng nổ của những trải nghiệm phần mềm thực dụng. Người dùng giờ đây kỳ vọng chiếc điện thoại không chỉ là công cụ liên lạc hay giải trí, mà phải là một \"trợ lý đa năng\" hỗ trợ đắc lực cho công việc, phát triển ứng dụng, hay sáng tạo nội dung số.</p><h3>1. Kỷ nguyên của \"AI Phone\" thực thụ</h3><p>Khái niệm AI trên điện thoại không còn dừng lại ở việc nhận diện khuôn mặt hay chỉnh sửa ảnh đơn giản. Các dòng vi xử lý mới nhất từ Apple (A-series thế hệ mới), Qualcomm (Snapdragon 8 Gen series) và MediaTek đã tích hợp NPU siêu mạnh, cho phép các mô hình ngôn ngữ lớn (LLM) chạy trực tiếp trên thiết bị mà không cần kết nối internet.</p><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Trợ lý cá nhân thấu hiểu ngữ cảnh:</strong> Điện thoại giờ đây có thể tự động phân tích thói quen tiêu dùng để đưa ra gợi ý quản lý tài chính thông minh, hoặc tự động sắp xếp lịch trình làm việc, code dự án dựa trên email và tin nhắn.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Xử lý đa nhiệm mượt mà:</strong> Đối với những người thường xuyên phải test ứng dụng di động đa nền tảng hoặc quản lý hệ thống web phức tạp, khả năng tối ưu hóa RAM bằng AI giúp thiết bị duy trì hiệu năng đỉnh cao mà không bị quá nhiệt.</li></ol><h3>2. Camera \"Cân\" mọi góc nhìn – Từ vĩ mô đến vi mô</h3><p>Cuộc chiến nhiếp ảnh trên smartphone năm nay tập trung mạnh vào chất lượng thấu kính và khả năng quay video HDR.</p><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Quay Vlog chuyên nghiệp:</strong> Khả năng chống rung quang học (OIS) kết hợp với AI tracking giúp các nhà sáng tạo nội dung dễ dàng tự quay các video ngoài trời, vlog đời sống, hay hướng dẫn kỹ thuật với chất lượng tiệm cận máy ảnh chuyên nghiệp.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Ống kính Macro và Telephoto nâng cấp:</strong> Đây là một điểm sáng lớn. Các hãng đang trang bị ống kính macro với khả năng lấy nét ở khoảng cách cực gần, mang lại độ chi tiết đáng kinh ngạc. Trải nghiệm này đặc biệt hoàn hảo để ghi lại những thước phim cận cảnh sắc nét của tự nhiên, từ vân lá cây, dáng bonsai, cho đến hệ sinh thái thu nhỏ trong các bể thủy sinh.</li></ol><h3>3. Thiết kế bền bỉ cho lối sống năng động</h3><p>Sự dịch chuyển về vật liệu cũng là một xu hướng đáng chú ý. Khung viền titanium và kính cường lực thế hệ mới đang được phổ cập xuống các dòng máy cận cao cấp.</p><p>Bên cạnh đó, chuẩn kháng nước, kháng bụi IP68 dường như đã trở thành tiêu chuẩn bắt buộc. Nhờ vậy, người dùng có thể hoàn toàn yên tâm sử dụng điện thoại trong các môi trường độ ẩm cao hoặc nhiều bụi bẩn – từ các xưởng chăm sóc xe hơi, khu vườn ngoài trời cho đến các chuyến dã ngoại – mà không lo hỏng hóc thiết bị.</p><h3>Lời khuyên khi lên đời smartphone năm nay</h3><p>Thị trường hiện tại rất đa dạng với mức giá trải dài từ phổ thông đến siêu cao cấp. Khi chọn mua, người dùng nên cân nhắc kỹ:</p><ol><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Hệ sinh thái:</strong> Nếu bạn đang phát triển các ứng dụng đa nền tảng hoặc có nhu cầu đồng bộ dữ liệu liên tục giữa máy tính và điện thoại, hãy chọn thiết bị cùng hệ sinh thái (như Apple Ecosystem hoặc sự kết hợp giữa Android và Windows).</li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Dung lượng lưu trữ:</strong> Nhu cầu quay video 4K và lưu trữ dữ liệu ngày càng lớn, phiên bản 256GB hiện được xem là mức dung lượng tối thiểu để sử dụng thoải mái trong dài hạn.</li></ol><p>Một chiếc điện thoại xuất sắc là thiết bị không chỉ phục vụ tốt nhu cầu giải trí, mà còn thúc đẩy đam mê và hỗ trợ tối đa cho các dự án cá nhân của bạn.</p><h2>Bạn có muốn tôi đi sâu vào phân tích một xu hướng cụ thể nào đó (như khả năng quay video cho YouTube, hay tối ưu hóa điện thoại cho việc lập trình) để bổ sung cho chủ đề này không?</h2>', '2026-02-24', 'dien-thoai-thong-minh-2026-tro-ly-ai-bo-tui-va-cuoc-dua-camera-danh-cho-nha-sang-tao-9', '2026-02-24 09:16:02', '2026-02-24 09:16:02', NULL),
(10, 1, 6, 'Phụ Kiện Công Nghệ 2026: Nâng Tầm Trải Nghiệm Lập Trình Và Sáng Tạo Nội Dung Mọi Lúc Mọi Nơi', 'Phụ kiện công nghệ giờ đây không còn là những món đồ \"mua cho vui\" hay chỉ mang tính trang trí. Năm 2026, chúng đã trở thành những mảnh ghép bắt buộc phải có để hoàn thiện một hệ sinh thái làm việc chuyên nghiệp, đặc biệt là đối với giới lập trình viên và những nhà sáng tạo nội dung', 0, 0, 1, '/img/post/1771924805_699d6d45cd83d.jpg', '<p>Thị trường phụ kiện hiện tại đang phân hóa rất rõ rệt dựa trên nhu cầu đặc thù của từng ngành nghề. Người dùng sẵn sàng chi trả mức giá cao cho những món đồ thực sự giải quyết được \"nỗi đau\" (pain points) trong quá trình làm việc, giúp họ tối ưu hóa thời gian và bảo vệ sức khỏe khi phải ngồi trước màn hình hay hoạt động ngoài trời liên tục.</p><h3>1. Góc Setup \"Chuẩn Chỉ\" Cho Lập Trình Viên &amp; Phát Triển Ứng Dụng</h3><p>Đối với những người làm việc với những dòng code phức tạp hay phát triển các ứng dụng đa nền tảng (cả Web lẫn Mobile App), một không gian làm việc tối ưu là chìa khóa để duy trì sự tập trung.</p><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Bàn phím cơ công thái học:</strong> Xu hướng năm nay là các dòng bàn phím cơ layout chia đôi (split keyboard) hoặc Alice layout, kết hợp với switch Silent. Chúng mang lại cảm giác gõ chính xác, nảy nhưng không gây tiếng ồn, đồng thời giúp cổ tay duy trì tư thế tự nhiên nhất, giảm thiểu hội chứng ống cổ tay khi phải gõ liên tục hàng giờ.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Hub chuyển đổi (Docking Station) đa cổng hiệu suất cao:</strong> Khi các cổng kết nối trên laptop ngày càng bị lược bỏ, một chiếc Hub hỗ trợ xuất 2-3 màn hình rời cùng lúc (thông qua Thunderbolt 4) là vật bất ly thân. Nó cho phép các lập trình viên vừa theo dõi code backend, vừa test giao diện frontend và giả lập màn hình ứng dụng di động một cách bao quát nhất.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Chuột công thái học (Vertical Mouse):</strong> Thiết kế chuột dọc đang lên ngôi, giúp thay đổi góc cầm nắm, giảm áp lực lên cẳng tay – một sự nâng cấp nhỏ nhưng mang lại giá trị sức khỏe to lớn về lâu dài.</li></ol><h3>2. Đồ Nghề \"Tác Chiến\" Cho Nhà Sáng Tạo Nội Dung Ngoài Trời</h3><p>Trái ngược với môi trường văn phòng, những nhà sáng tạo nội dung (Creator) chuyên quay vlog ngoài trời, làm kênh YouTube về đời sống, thiên nhiên hay chăm sóc cây cảnh lại cần những phụ kiện đề cao tính linh hoạt, bền bỉ và khả năng thu âm xuất sắc.</p><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Micro thu âm không dây tích hợp AI lọc gió:</strong> Các dòng micro cài áo nhỏ gọn năm nay đã được nâng cấp thuật toán khử tiếng ồn môi trường. Dù bạn đang đứng giữa một khu vườn lộng gió hay trên đường phố ồn ào, giọng nói truyền tải đến người xem (đặc biệt là khán giả quốc tế cần nghe rõ phát âm) vẫn giữ được độ ấm và trong trẻo hoàn hảo.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Tripod linh hoạt và Gimbal chống rung:</strong> Một chiếc chân máy có thể uốn dẻo bám vào cành cây, hàng rào, kết hợp cùng Gimbal nhỏ gọn là combo tuyệt vời để bắt được những góc máy cận cảnh (macro) cực kỳ độc đáo. Điều này cực kỳ hữu ích khi cần quay chi tiết sự phát triển của mầm cây, vân lá, hay các góc máy nghệ thuật đòi hỏi sự tĩnh lặng tuyệt đối.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Đèn LED trợ sáng mini (RGB/Bi-color):</strong> Để có những thước phim chất lượng cao ngay cả trong điều kiện thiếu sáng hoặc sương sớm, các mẫu đèn LED bỏ túi với khả năng thay đổi nhiệt độ màu đang được giới vlogger cực kỳ săn đón.</li></ol><h3>3. Lưu Trữ Di Động Tốc Độ Siêu Tốc</h3><h2>Dù là lưu trữ hàng chục Gigabyte mã nguồn dự án, các file thiết kế UI/UX hay những bộ source video 4K nặng nề, ổ cứng SSD di động (Portable SSD) chuẩn PCIe Gen 4 đang là cứu cánh tuyệt vời. Với tốc độ đọc/ghi lên tới 2000MB/s, kích thước chỉ bằng một chiếc thẻ ATM và khả năng chống sốc, chống nước (IP65), dữ liệu của bạn luôn được bảo vệ an toàn trên mọi hành trình</h2>', '2026-02-24', 'phu-kien-cong-nghe-2026-nang-tam-trai-nghiem-lap-trinh-va-sang-tao-noi-dung-moi-luc-moi-noi-10', '2026-02-24 09:20:05', '2026-02-24 09:20:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT ' 0 - inactive, 1 - active',
  `sort` int(11) DEFAULT NULL,
  `slug` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `name`, `status`, `sort`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'TIN TỨC', 1, 1, 'tin-tuc', '2025-04-29 13:12:18', '2025-04-29 13:12:18', NULL),
(2, 'KINH NGHIỆM', 1, 2, 'kinh-nghiem', '2025-04-29 13:12:18', '2025-04-29 13:12:18', NULL),
(3, 'KHÁM PHÁ ', 1, 3, 'kham-pha', '2025-04-29 13:12:18', '2025-04-29 13:12:18', NULL),
(4, 'SỰ KIÊN', 1, 4, 'su-kien', '2025-04-29 13:12:18', '2025-04-29 13:12:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_category` int(10) UNSIGNED NOT NULL,
  `id_brand` int(10) UNSIGNED NOT NULL,
  `id_discount` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(150) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Product status: 0 - hidden, 1 - active',
  `import_date` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày nhập',
  `hot_product` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Hot product status: 0 - no, 1 - yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `id_category`, `id_brand`, `id_discount`, `name`, `slug`, `description`, `views`, `status`, `import_date`, `hot_product`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 1, 4, 1, 'Laptop Asus Vivobook Go 15 E1504FA', 'laptop-asus-vivobook-go-15-e1504fa', '<p>Laptop giá rẻ</p>', 18, 1, '2026-02-24 00:00:00', 1, '2025-04-29 13:12:16', '2026-02-25 04:05:02', NULL),
(4, 1, 4, 1, 'Điện thoại Samsung Galaxy A17', 'dien-thoai-samsung-galaxy-a17', '<p>\r\n                    Xe Đạp Đường Phố Touring GIANT Roam 4 - Phanh Đĩa, Bánh 700C - 2025\r\n                    Bạn đang tìm kiếm một chiếc xe có thể đồng hành cùng bạn trên mọi cung đường, từ đô thị đến những đoạn đường gồ ghề? GIANT Roam 4 - 2025 chính là sự lựa chọn lý tưởng, là một chiến binh đa dụng giúp bạn chinh phục mọi cung đường. Được thiết kế với sự kết hợp hoàn hảo giữa hiệu suất của xe đạp đường phố và khả năng chinh phục địa hình nhẹ của xe touring, Roam 4 mang lại trải nghiệm lái linh hoạt, ổn định và đầy hứng khởi.\r\n                    1. Thiết kế nhôm ALUXX cao cấp, linh hoạt cho mọi nhu cầu\r\n                    Khung xe được chế tạo từ hợp kim nhôm ALUXX cao cấp, mang đến sự cân bằng tối ưu giữa trọng lượng nhẹ và độ bền chắc. Đặc biệt, một trong những điểm khác biệt lớn của GIANT Roam 4 chính là hệ thống phuộc trước SR Suntour NEX HLO với hành trình 63mm. Nhờ đó, xe có khả năng giảm xóc hiệu quả trên các đoạn đường không bằng phẳng, mang lại cảm giác lái êm ái ngay cả khi di chuyển trên địa hình khó. Gam màu đen mạnh mẽ càng làm tăng thêm vẻ ngoài nam tính, hiện đại của xe.\r\n                    2. Hệ thống bánh xe lớn, bền bỉ chinh phục mọi con đường\r\n                    Một trong những điểm nổi bật của GIANT Roam 4 - 2025 chính là bộ bánh xe Giant CrossCut 700x42c với lớp bảo vệ chống đâm thủng giúp tăng khả năng bám đường, chống trơn trượt và mang lại cảm giác lái vững vàng hơn. Kết hợp với vành xe Giant double wall aluminum kết hợp cùng đùm hợp kim 32h đảm bảo độ bền tối đa, chịu được áp lực lớn khi di chuyển trên các địa hình khác nhau.\r\n                    3. Bộ truyền động mạnh mẽ, tối ưu hiệu suất đạp xe\r\n                    Xe được trang bị bộ truyền động Shimano 2x7 tốc độ với tay đề RapidFire Plus, giúp bạn chuyển số nhanh chóng và chính xác. Cụm chuyển đĩa Shimano FD-TY606 và chuyển líp Shimano Tourney hỗ trợ điều chỉnh linh hoạt, phù hợp cho cả những đoạn đường dốc và đường trường. Bộ líp Shimano CS-HG200 12x32 giúp mở rộng dải tốc độ, tối ưu hiệu suất đạp xe.\r\n                    4. Hệ thống phanh đĩa thủy lực, trao quyền kiểm soát tuyệt đối\r\n                    Hệ thống phanh đĩa thủy lực Tektro TKD-143 mang lại lực phanh mạnh mẽ và độ chính xác cao. Ngay cả trong điều kiện trời mưa hay địa hình trơn trượt, bạn vẫn có thể kiểm soát tốc độ dễ dàng. Tay thắng Tektro TKD-173 thiết kế thông minh giúp thao tác trở nên nhẹ nhàng, mang lại cảm giác an toàn tuyệt đối.\r\n                    5. Tối ưu sự thoải mái cho mọi hành trình\r\n                    Không chỉ tập trung vào hiệu suất, GIANT Roam 4 còn được thiết kế để tối ưu sự thoải mái cho người lái. Ghi đông Giant Sport XC 31.8mm mang lại tư thế cầm lái tự nhiên, giảm mỏi tay khi đi đường dài. Yên xe ErgoContact êm ái, kết hợp với cốt yên Giant D-Fuse giúp hấp thụ chấn động tốt hơn, mang đến trải nghiệm lái dễ chịu.\r\n                    Chính vì thế mà GIANT Roam 4 - 2025 không chỉ là một chiếc xe đạp đường phố, mà còn là lựa chọn hoàn hảo cho những ai yêu thích khám phá. Sự kết hợp giữa thiết kế chắc chắn, hệ thống phanh an toàn và truyền động linh hoạt giúp xe sẵn sàng cho mọi thử thách. Dù bạn đi làm, tập thể thao hay chinh phục những hành trình dài, GIANT Roam 4 sẽ luôn đồng hành cùng bạn.\r\n                    Hiện nay, mẫu xe đạp GIANT Roam 4 - 2025 đang được bày bán tại hệ thống cửa hàng Xedap.vn, với mức giá tốt và vô vàn ưu đãi hấp dẫn. Truy cập ngay website xedap3s.cloud hoặc liên hệ qua số Hotline 0987654321 để được tư vấn và đặt mua sản phẩm.</p>', 26, 1, '2026-01-21 00:00:00', 0, '2025-04-29 13:12:16', '2026-02-25 03:53:20', NULL),
(7, 1, 1, 2, 'Samsung Galaxy A56 5G 8GB 128GB', 'samsung-galaxy-a56-5g-8gb-128gb', '<table><tbody><tr><td data-row=\"1\"><span style=\"color: rgb(74, 74, 74); background-color: rgb(242, 242, 242);\">Kích thước màn hình</span></td><td data-row=\"1\"><span style=\"background-color: rgb(255, 255, 255); color: rgb(74, 74, 74);\">6.7 inches</span></td></tr><tr><td data-row=\"2\"><span style=\"color: rgb(74, 74, 74); background-color: rgb(242, 242, 242);\">Công nghệ màn hình</span></td><td data-row=\"2\"><a href=\"https://cellphones.com.vn/sforum/super-amoled-la-gi-co-that-su-tot-va-can-thiet\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: rgb(59, 130, 246);\">Super AMOLED</a></td></tr><tr><td data-row=\"3\"><span style=\"color: rgb(74, 74, 74); background-color: rgb(242, 242, 242);\">Camera sau</span></td><td data-row=\"3\"><span style=\"background-color: rgb(255, 255, 255); color: rgb(74, 74, 74);\">50.0 MP, F/1.8 + 12.0 MP, F/2.2 + 5.0 MP, F/2.4</span></td></tr><tr><td data-row=\"4\"><span style=\"color: rgb(74, 74, 74); background-color: rgb(242, 242, 242);\">Camera trước</span></td><td data-row=\"4\"><span style=\"background-color: rgb(255, 255, 255); color: rgb(74, 74, 74);\">12.0 MP, F/2.2</span></td></tr><tr><td data-row=\"5\"><span style=\"color: rgb(74, 74, 74); background-color: rgb(242, 242, 242);\">Chipset</span></td><td data-row=\"5\"><span style=\"background-color: rgb(255, 255, 255); color: rgb(74, 74, 74);\">Exynos 1580</span></td></tr><tr><td data-row=\"6\"><span style=\"color: rgb(74, 74, 74); background-color: rgb(242, 242, 242);\">Công nghệ NFC</span></td><td data-row=\"6\"><span style=\"background-color: rgb(255, 255, 255); color: rgb(74, 74, 74);\">Có</span></td></tr><tr><td data-row=\"7\"><span style=\"color: rgb(74, 74, 74); background-color: rgb(242, 242, 242);\">Dung lượng RAM</span></td><td data-row=\"7\"><span style=\"background-color: rgb(255, 255, 255); color: rgb(74, 74, 74);\">8 GB</span></td></tr></tbody></table><h2>\r\n</h2>', 18, 1, '2026-02-24 00:00:00', 1, '2025-04-29 13:12:16', '2026-02-24 12:27:52', NULL),
(52, 1, 2, 1, 'Laptop MacBook Pro 14 inch', 'laptop-macbook-pro-14-inch', '<ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong style=\"background-color: rgb(255, 255, 255); color: rgb(52, 64, 84);\">Công nghệ CPU:</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(52, 64, 84);\">Apple M5</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong style=\"background-color: rgb(255, 255, 255); color: rgb(52, 64, 84);\">Số nhân:</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(52, 64, 84);\">10</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong style=\"background-color: rgb(255, 255, 255); color: rgb(52, 64, 84);\">Số luồng:</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(52, 64, 84);\">Hãng không công bố</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong style=\"background-color: rgb(255, 255, 255); color: rgb(52, 64, 84);\">Tốc độ CPU:</strong><span style=\"background-color: rgb(255, 255, 255); color: rgb(52, 64, 84);\">153 GB/s memory ban</span></li></ol>', 11, 1, '2026-01-21 00:00:00', 1, '2026-01-20 23:43:29', '2026-02-24 12:21:34', NULL),
(53, 1, 2, 1, 'Laptop MacBook Pro 14 V2', 'laptop-macbook-pro-14-v2-53', '<p>a</p>', 9, 1, '2026-01-21 00:00:00', 0, '2026-01-21 00:25:57', '2026-02-24 11:07:14', NULL),
(54, 3, 2, 1, 'demo sp', 'demo-sp-54', '<h2>ssss</h2>', 0, 1, '2026-02-25 00:00:00', 1, '2026-02-25 03:19:10', '2026-02-25 03:19:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_customer_segments`
--

CREATE TABLE `product_customer_segments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_product` bigint(20) UNSIGNED NOT NULL,
  `id_customer_segment` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_customer_segments`
--

INSERT INTO `product_customer_segments` (`id`, `id_product`, `id_customer_segment`, `created_at`, `updated_at`) VALUES
(7, 4, 2, '2025-04-29 13:12:16', '2025-04-29 13:12:16'),
(8, 4, 3, '2025-04-29 13:12:16', '2025-04-29 13:12:16'),
(13, 7, 2, '2025-04-29 13:12:16', '2025-04-29 13:12:16'),
(14, 7, 3, '2025-04-29 13:12:16', '2025-04-29 13:12:16'),
(63, 54, 2, NULL, NULL),
(64, 54, 3, NULL, NULL),
(65, 54, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_product` bigint(20) UNSIGNED NOT NULL,
  `option` varchar(150) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `stock` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `id_product`, `option`, `price`, `image`, `stock`, `created_at`, `updated_at`) VALUES
(7, 4, '128G', '12000000.00', '/img/product/product_variants/1768980050_5169102095cf6e732a813cdada355eb0.png', 7, NULL, '2026-02-25 03:19:38'),
(78, 52, 'SSD', '6700000.00', '/img/product/product_variants/1768978488_IC19565-0937-00-front-800x600.jpg', 11, '2026-01-20 23:43:29', '2026-01-20 23:54:48'),
(79, 52, '500G', '44000000.00', '/img/product/product_variants/1768978451_FGmbfGXCTNgr9h4AA4oZ4N-1200-80.jpg', 11, '2026-01-20 23:54:11', '2026-01-20 23:54:11'),
(80, 3, '500G', '44000000.00', '/img/product/product_variants/1768979050_main.jpg', 6, '2026-01-21 00:04:10', '2026-02-24 12:04:33'),
(81, 3, '1000G', '50000000.00', NULL, 22, '2026-01-21 00:04:10', '2026-01-21 00:04:10'),
(82, 4, '256G', '11000000.00', '/img/product/product_variants/1768980050_maxresdefault-2-3.jpg', 1, '2026-01-21 00:20:50', '2026-01-21 00:20:50'),
(83, 53, 'SSD', '6700000.00', '/img/product/product_variants/1768980392_maxresdefault-2-3 (1).jpg', 7, '2026-01-21 00:25:57', '2026-02-24 12:04:33'),
(84, 7, 'A56', '11000000.00', '/img/product/product_variants/1771925405_69067-samsung-galaxy-a56.jpg', 1111, '2026-02-24 09:30:05', '2026-02-24 09:30:05'),
(85, 7, 'A36', '6700000.00', NULL, 1111, '2026-02-24 09:30:05', '2026-02-24 09:30:05'),
(86, 54, '128G', '8000000.00', '/img/product/product_variants/1771989550_69067-samsung-galaxy-a56.jpg', 111, '2026-02-25 03:19:10', '2026-02-25 03:19:10'),
(87, 54, '500G', '1111111.00', '/img/product/product_variants/1771989550_Logo-cong-ty-Samsung-lan-4.webp', 111, '2026-02-25 03:19:10', '2026-02-25 03:19:10');

-- --------------------------------------------------------

--
-- Table structure for table `relate_products`
--

CREATE TABLE `relate_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_product_main` bigint(20) UNSIGNED NOT NULL,
  `id_product_sub` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('dEmZM9GKEPexStPYKgHp5g0SVlWn2N7ZtY06G4tS', 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoic1ZQdmIwT3hKV0oyRGxlOWdraVFCa2FuY2JBTjkxa0NxSmtrUUJ0ZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MTg6ImZsYXNoZXI6OmVudmVsb3BlcyI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Njt9', 1771992357);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_main_category` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 - hidden, 1 - active',
  `sort` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `id_main_category`, `name`, `slug`, `image`, `status`, `sort`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Laptop sinh viên', 'xe-dap-the-thao-1', 'img/category/1771846479-hp-banner-blog-1440-900-1.jpg', 1, 1, '2025-04-29 13:12:16', '2026-02-23 11:37:44', NULL),
(2, 1, 'xe đạp đường trường', 'xe-dap-duong-truong-2', '/img/category/catexeduongtruong-2.png', 1, 2, '2025-04-29 13:12:16', '2026-01-20 23:45:42', '2026-01-20 23:45:42'),
(3, 1, 'Laptop sang xịn', 'xe-dap-dia-hinh-3', 'img/category/1771846498-banner-laptop-sinh-vien-scaled.jpg', 1, 3, '2025-04-29 13:12:16', '2026-02-23 11:37:53', NULL),
(4, 1, 'xe đạp đua', 'xe-dap-dua-4', '/img/category/xe-dap-duong-truong-25.png', 1, 4, '2025-04-29 13:12:16', '2026-01-20 23:45:30', '2026-01-20 23:45:30'),
(5, 1, 'xe đạp gấp', 'xe-dap-gap-5', '/img/category/xedap-gap-5.png', 1, 5, '2025-04-29 13:12:16', '2026-01-20 23:45:47', '2026-01-20 23:45:47'),
(6, 1, 'xe đạp phổ thông ', 'xe-dap-pho-thong-6', '/img/category/xe-dap-pho-thong-6.png', 0, 6, '2025-04-29 13:12:16', '2026-01-20 23:45:36', '2026-01-20 23:45:36'),
(26, 2, 'Iphone', 'iphone', '/img/category/1771925039-logo-apple-inkythuatso-01-28-13-19-50.jpg', 1, 1, '2026-02-24 09:23:59', '2026-02-24 09:23:59', NULL),
(27, 2, 'Samsung', 'samsung', '/img/category/1771925076-logo-cong-ty-samsung-lan-4.webp', 1, 2, '2026-02-24 09:24:36', '2026-02-24 09:24:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `dob` date DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `roles` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'User role: 1 - user, 2 - admin',
  `gender` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'User gender: 1 - male, 2 - female,0 false)',
  `account_lock` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Account lock status: 0 - locked, 1 - active',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `last_name`, `first_name`, `avatar`, `email`, `dob`, `password`, `phone`, `address`, `roles`, `gender`, `account_lock`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'Supper', 'Admin', '', 'admin@gmail.com', NULL, '$2y$12$Cd/efwf4C3/zPpMAZqk.tOeH5eHcqswrcwqcvUR/V7KysrbPSRVSu', '099999', 'hcm', 2, 1, 1, '2025-04-29 13:12:18', NULL, '2025-04-29 13:12:18', '2026-01-20 18:39:23'),
(14, 'khach2', 'khach2', NULL, 'dothanhnhan20k@gmail.com', NULL, '$2y$12$Cd/efwf4C3/zPpMAZqk.tOeH5eHcqswrcwqcvUR/V7KysrbPSRVSu', '0364877522', NULL, 3, 0, 1, '2025-04-29 13:12:18', NULL, '2026-02-05 01:01:46', '2026-02-24 11:13:12'),
(15, 'A', 'Nguyen Van', '', 'user@gmail.com', '2000-05-27', '$2y$12$cVuXpzgTGvxt7nlcrrz6DeuU9kwlDi38tS9wRHZRuQUYEfa83pFO6', '09888888', NULL, 1, 0, 1, NULL, NULL, NULL, NULL),
(37, 'demo9890', 'demo9890', NULL, 'luckydayne131@gmail.com', '2026-02-24', '$2y$12$mrFlazrzF5uYgLxGPmnnPeyvwAtx9AkB/U.MK8d60Yecoo1t1M9Mm', '1234567811', '111, Xã Hồng Ca, Huyện Trấn Yên, Tỉnh Yên Bái', 1, 2, 1, '2026-02-23 10:58:38', NULL, '2026-02-23 10:58:26', '2026-02-24 11:06:52');

-- --------------------------------------------------------

--
-- Table structure for table `user_reviews`
--

CREATE TABLE `user_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 - hidden, 1 - active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_reviews`
--

INSERT INTO `user_reviews` (`id`, `id_user`, `content`, `status`, `created_at`, `updated_at`) VALUES
(7, 37, 'rat oke', 0, '2026-02-24 11:44:00', '2026-02-24 11:45:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attribute_products`
--
ALTER TABLE `attribute_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_products_id_product_foreign` (`id_product`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

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
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_id_user_foreign` (`id_user`),
  ADD KEY `comments_id_product_foreign` (`id_product`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_coupon_code_unique` (`coupon_code`);

--
-- Indexes for table `customer_segments`
--
ALTER TABLE `customer_segments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favorite_products`
--
ALTER TABLE `favorite_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorite_products_id_product_foreign` (`id_product`),
  ADD KEY `favorite_products_id_user_foreign` (`id_user`);

--
-- Indexes for table `img_products`
--
ALTER TABLE `img_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `img_products_id_product_foreign` (`id_product`);

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
-- Indexes for table `main_categories`
--
ALTER TABLE `main_categories`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_id_user_foreign` (`id_user`),
  ADD KEY `orders_id_payment_foreign` (`id_payment`);

--
-- Indexes for table `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_details_id_variant_foreign` (`id_variant`),
  ADD KEY `orders_details_id_order_foreign` (`id_order`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_id_user_foreign` (`id_user`),
  ADD KEY `posts_id_category_foreign` (`id_category`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_categories_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_id_category_foreign` (`id_category`),
  ADD KEY `products_id_brand_foreign` (`id_brand`),
  ADD KEY `products_id_discount_foreign` (`id_discount`);

--
-- Indexes for table `product_customer_segments`
--
ALTER TABLE `product_customer_segments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_customer_segments_id_product_foreign` (`id_product`),
  ADD KEY `product_customer_segments_id_customer_segment_foreign` (`id_customer_segment`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variants_id_product_foreign` (`id_product`);

--
-- Indexes for table `relate_products`
--
ALTER TABLE `relate_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `relate_products_id_product_main_foreign` (`id_product_main`),
  ADD KEY `relate_products_id_product_sub_foreign` (`id_product_sub`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_categories_slug_unique` (`slug`),
  ADD KEY `sub_categories_id_main_category_foreign` (`id_main_category`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_reviews`
--
ALTER TABLE `user_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_reviews_id_user_foreign` (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attribute_products`
--
ALTER TABLE `attribute_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=413;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_segments`
--
ALTER TABLE `customer_segments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorite_products`
--
ALTER TABLE `favorite_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `img_products`
--
ALTER TABLE `img_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_categories`
--
ALTER TABLE `main_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `product_customer_segments`
--
ALTER TABLE `product_customer_segments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `relate_products`
--
ALTER TABLE `relate_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `user_reviews`
--
ALTER TABLE `user_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attribute_products`
--
ALTER TABLE `attribute_products`
  ADD CONSTRAINT `attribute_products_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `favorite_products`
--
ALTER TABLE `favorite_products`
  ADD CONSTRAINT `favorite_products_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorite_products_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `img_products`
--
ALTER TABLE `img_products`
  ADD CONSTRAINT `img_products_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_id_payment_foreign` FOREIGN KEY (`id_payment`) REFERENCES `payments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders_details`
--
ALTER TABLE `orders_details`
  ADD CONSTRAINT `orders_details_id_order_foreign` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_details_id_variant_foreign` FOREIGN KEY (`id_variant`) REFERENCES `product_variants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_id_category_foreign` FOREIGN KEY (`id_category`) REFERENCES `post_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_id_brand_foreign` FOREIGN KEY (`id_brand`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_id_category_foreign` FOREIGN KEY (`id_category`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_id_discount_foreign` FOREIGN KEY (`id_discount`) REFERENCES `discounts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_customer_segments`
--
ALTER TABLE `product_customer_segments`
  ADD CONSTRAINT `product_customer_segments_id_customer_segment_foreign` FOREIGN KEY (`id_customer_segment`) REFERENCES `customer_segments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_customer_segments_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD CONSTRAINT `product_variants_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `relate_products`
--
ALTER TABLE `relate_products`
  ADD CONSTRAINT `relate_products_id_product_main_foreign` FOREIGN KEY (`id_product_main`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `relate_products_id_product_sub_foreign` FOREIGN KEY (`id_product_sub`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_id_main_category_foreign` FOREIGN KEY (`id_main_category`) REFERENCES `main_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_reviews`
--
ALTER TABLE `user_reviews`
  ADD CONSTRAINT `user_reviews_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
