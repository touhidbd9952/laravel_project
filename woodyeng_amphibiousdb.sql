-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 18, 2022 at 10:38 AM
-- Server version: 5.7.37-log-cll-lve
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `woodyeng_amphibiousdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_jp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `description_jp` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `publish_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpublish',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `title_jp`, `description`, `description_jp`, `image`, `user_id`, `publish_status`, `created_at`, `updated_at`) VALUES
(1, 'Amphibious Excavator', '水陸両用掘削機', 'An amphibious excavator is a type of excavator that can perform dredging while afloat on soft terrain such as swamp, wet land, and shallow water.', '水陸両用掘削機は、沼地、湿地、浅瀬などの軟弱な地形に浮かんでいるときに浚渫を行うことができる掘削機の一種です。', 'uploads/images/category/1711473206660543.jpg', 1, 'publish', '2021-09-20 15:35:01', '2021-09-20 16:34:00'),
(2, 'Water Management Equipment', '水管理機器', 'Water Management Equipment for clean water by taking garbage', 'きれいな水のための水管理装置ゴミを取ることによって', 'uploads/images/category/1711491181208447.jpg', 1, 'publish', '2021-09-20 22:19:42', NULL),
(3, 'Manatee (Pontoon)', 'マナティー（水上平底型掘削機）', 'The manatee is an amphibious item that can use multipurpose such as dredging, ranking, piling and more. It has a submersible cutter pump. Its dredging capacity 500-900 meter cube per hour. Discharging up to 1,5 km distance. In construction application, infrastructure projects in the water environment. Industrial applications, pond maintenance and recovering of valuable materials. It can be used for all shallow water work from dry ground to 6 meters', 'マナティーは、浚渫、ランク付け、積み上げなどの多目的に使用できる水陸両用アイテムです。 水中カッターポンプを搭載しています。 その浚渫能力は1時間あたり500-900メートル立方体です。 最大1.5kmの距離で放電します。 建設アプリケーションでは、水環境でのインフラストラクチャプロジェクト。 産業用途、池のメンテナンス、貴重な材料の回収。 乾いた地面から6メートルまでのすべての浅瀬作業に使用できます', 'uploads/images/category/1733125130439256.jpg', 1, 'publish', '2021-09-23 18:12:19', '2022-05-17 17:22:04'),
(4, 'Excavator', '掘削機', 'Excavators are heavy construction equipment consisting of a boom, dipper (or stick), bucket', '掘削機は、ブーム、ディッパー（またはスティック）、バケットで構成される重機です。', 'uploads/images/category/1718819081340110.jpg', 1, 'publish', '2021-12-10 19:33:32', NULL),
(5, 'Excavator Fork', 'ショベルフォーク', 'Hydraulic Fork Grab', '油圧フォークグラブ', 'uploads/images/category/1718992808488212.PNG', 1, 'publish', '2021-12-12 17:34:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_mails`
--

CREATE TABLE `customer_mails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `companyname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `delete_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(5, '2021_09_02_022027_create_categories_table', 1),
(6, '2021_09_02_022059_create_products_table', 1),
(7, '2021_09_02_022150_create_product_multiple_images_table', 1),
(8, '2021_09_02_031447_create_product_multiple_videos_table', 1),
(9, '2021_09_08_065335_create_customer_mails_table', 1),
(10, '2021_09_09_022454_create_contacts_table', 1),
(11, '2021_09_09_232830_create_our_projects_table', 1),
(12, '2021_09_10_231516_create_sliders_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `our_projects`
--

CREATE TABLE `our_projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_jp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_des` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_des_jp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_des` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_des_jp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpublish',
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_jp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_des` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_des_jp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_des` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_des_jp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpublish',
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `cat_id`, `title`, `title_jp`, `thumbnail_image`, `short_des`, `short_des_jp`, `detail_des`, `detail_des_jp`, `publish_status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Amphibious Excavator', '水陸両用掘削機', 'uploads/images/product/thambnail/1711486796089659.jpg', 'Amphibious excavators are a type of excavator designed to be used for dredging in shallow water', '水陸両用掘削機は、浅瀬での浚渫に使用するように設計された掘削機の一種です', 'An amphibious excavator is a type of excavator that can perform dredging while afloat on soft terrain such as swamp, wet land, and shallow water.', '水陸両用掘削機は、沼地、湿地、浅瀬などの軟弱な地形に浮かんでいるときに浚渫を行うことができる掘削機の一種です', 'publish', 1, '2021-09-20 21:10:00', NULL),
(2, 2, 'Water Management Equipment', '水管理機器', 'uploads/images/product/thambnail/1711491668813766.jpg', 'Water Management Equipment for clean water by taking garbage', 'きれいな水のための水管理装置ゴミを取ることによって、', 'Water Management Equipment for clean water by taking garbage', 'きれいな水のための水管理装置ゴミを取ることによって、', 'publish', 1, '2021-09-20 22:27:27', NULL),
(3, 3, 'Manatee (Pontoon)', 'マナティー（水上平底型掘削機）', 'uploads/images/product/thambnail/1733125167447677.jpg', 'The manatee is an amphibious item that can use multipurpose such as dredging, ranking, piling and more. \r\nIt can be used various attachments like beaker, cutter pump and so on.\r\nIt can be used for all shallow water work from dry ground to 6 meters.(period)', 'マナティー（水上平底型掘削機）は浚渫、ランク付け、杭打ちなどの多目的に使用できる水陸両用アイテムです。 												\r\nブレーカー、カッターポンプなどの様々なアタッチメントが使用可能です。												\r\n乾いた地面から6メートルまでのすべての浅瀬作業に使用できます。', 'The manatee is an amphibious item that can use multipurpose such as dredging, ranking, piling and more. \r\nIt can be used various attachments like beaker, cutter pump and so on.\r\nIt can be used for all shallow water work from dry ground to 6 meters.(period)', 'マナティー（水上平底型掘削機）は浚渫、ランク付け、杭打ちなどの多目的に使用できる水陸両用アイテムです。 												\r\nブレーカー、カッターポンプなどの様々なアタッチメントが使用可能です。												\r\n乾いた地面から6メートルまでのすべての浅瀬作業に使用できます。', 'publish', 1, '2021-09-23 18:15:36', '2022-05-17 17:41:15'),
(4, 4, 'Excavator  HITACHI EX200LC-3 #14C-30510', 'Excavator HITACHI EX200LC-3 #14C-30510', 'uploads/images/product/thambnail/1718819408740915.jpg', 'Excavators are heavy construction equipment consisting of a boom, dipper (or stick), bucket', '掘削機は、ブーム、ディッパー（またはスティック）、バケットで構成される重機です。', 'HITACHI EX200LC-3 #14C-30510,\r\nYear : 1995,\r\nHour : 6540,\r\n700G,\r\nCAB,\r\nA/C,\r\nCondition as it is', 'HITACHI EX200LC-3 #14C-30510,\r\nYear : 1995,\r\nHour : 6540,\r\n700G,\r\nCAB,\r\nA/C,\r\n現状有姿', 'publish', 1, '2021-12-10 19:38:44', '2022-05-16 18:44:59'),
(5, 4, 'Excavator KOBELCO SK235SRLC #YU04-00895', 'Excavator KOBELCO SK235SRLC #YU04-00895', 'uploads/images/product/thambnail/1718820620490487.jpg', '18m super long front,\r\nKOBELCO SK235SRLC #YU04-00895,\r\nYear : 2004,\r\nELEVATOR CABIN,\r\n800G,\r\nCondition as it is', '18m super long front,\r\nKOBELCO SK235SRLC #YU04-00895,\r\nYear : 2004,\r\nELEVATOR CABIN,\r\n800G,\r\n現状有姿', '18m super long front,\r\nKOBELCO SK235SRLC #YU04-00895,\r\nYear : 2004,\r\nELEVATOR CABIN,\r\n800G,\r\nCondition as it is', '18m super long front,\r\nKOBELCO SK235SRLC #YU04-00895,\r\nYear : 2004,\r\nELEVATOR CABIN,\r\n800G,\r\n現状有姿', 'publish', 1, '2021-12-10 19:58:00', '2022-05-16 18:44:17'),
(6, 4, 'Excavator KOMATSU PC210LC-6 #30510', 'Excavator KOMATSU PC210LC-6 #30510', 'uploads/images/product/thambnail/1718821029733065.jpg', '18M SUPER LONG FRONT,\r\nKOMATSU PC210LC-6 #30510,\r\nYear : 1994,\r\n800G,\r\nCAB,\r\nA/C,\r\nCondition as it is', '18M SUPER LONG FRONT,\r\nKOMATSU PC210LC-6 #30510,\r\nYear : 1994,\r\n800G,\r\nCAB,\r\nA/C,\r\n現状有姿', '18M SUPER LONG FRONT,\r\nKOMATSU PC210LC-6 #30510,\r\nYear : 1994,\r\n800G,\r\nCAB,\r\nA/C,\r\nCondition as it is', '18M SUPER LONG FRONT,\r\nKOMATSU PC210LC-6 #30510,\r\nYear : 1994,\r\n800G,\r\nCAB,\r\nA/C,\r\n現状有姿', 'publish', 1, '2021-12-10 20:04:30', '2022-05-16 18:45:33'),
(8, 1, 'Woody Multipurpose Amphibious Machine', 'ウッディー多目的水陸両用機械', 'uploads/images/product/thambnail/1719109669902550.png', 'Woody Multipurpose Amphibious Machine is specialized vehicles that should be of robust aluminum construction, small  in size and capable of working in various types of climates', 'ウッディー多目的水陸両用機械は、頑丈なアルミニウム構造で、サイズが小さく、さまざまなタイプの気候で動作できる特殊な機械です。', 'Woody Multipurpose Amphibious Machine is specialized vehicles that should be of robust aluminum construction, small  in size and capable of working in various types of climates', 'ウッディー多目的水陸両用機械は、頑丈なアルミニウム構造で、サイズが小さく、さまざまなタイプの気候で動作できる特殊な機械です。', 'publish', 1, '2021-12-14 00:32:19', '2022-05-16 16:52:19'),
(10, 3, 'Manatee (Pontoon)', 'マナティー（水上平底型掘削機）', 'uploads/images/product/thambnail/1721636573575467.jpg', 'The manatee is an amphibious item that can use multipurpose such as dredging, ranking, piling and more. \r\nIt can be used various attachments like beaker, cutter pump and so on.\r\nIt can be used for all shallow water work from dry ground to 6 meters.(period)', 'マナティー（水上平底型掘削機）は浚渫、ランク付け、杭打ちなどの多目的に使用できる水陸両用アイテムです。 												\r\nブレーカー、カッターポンプなどの様々なアタッチメントが使用可能です。												\r\n乾いた地面から6メートルまでのすべての浅瀬作業に使用できます。', 'The manatee is an amphibious item that can use multipurpose such as dredging, ranking, piling and more. \r\nIt can be used various attachments like beaker, cutter pump and so on.\r\nIt can be used for all shallow water work from dry ground to 6 meters.(period)', 'マナティー（水上平底型掘削機）は浚渫、ランク付け、杭打ちなどの多目的に使用できる水陸両用アイテムです。 												\r\nブレーカー、カッターポンプなどの様々なアタッチメントが使用可能です。												\r\n乾いた地面から6メートルまでのすべての浅瀬作業に使用できます。', 'publish', 1, '2021-12-21 21:36:29', '2022-05-17 17:39:26'),
(11, 4, 'Excavator Caterpillar 308ECR', 'Excavator Caterpillar 308ECR', 'uploads/images/product/thambnail/1721004258648204.jpg', 'We customize  boom, arm, and other attachment as requirement of customer to comfort their work', '私達はお客様が快適に作業ができるようにご要望に合わせてブーム、アーム、付属品をカスタマイズ致します。', 'We customize  boom, arm, and other attachment as requirement of customer to comfort their work', '私達はお客様が快適に作業ができるようにご要望に合わせてブーム、アーム、付属品をカスタマイズ致します。', 'publish', 1, '2022-01-03 22:26:00', '2022-05-16 18:49:53');

-- --------------------------------------------------------

--
-- Table structure for table `product_multiple_images`
--

CREATE TABLE `product_multiple_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpublish',
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_multiple_images`
--

INSERT INTO `product_multiple_images` (`id`, `product_id`, `image`, `publish_status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'uploads/images/product/multipleimage/1711486896103053.jpg', 'publish', 1, '2021-09-20 21:11:35', NULL),
(2, 1, 'uploads/images/product/multipleimage/1711486896274024.jpg', 'publish', 1, '2021-09-20 21:11:36', NULL),
(3, 1, 'uploads/images/product/multipleimage/1711486896483667.jpg', 'publish', 1, '2021-09-20 21:11:36', NULL),
(4, 1, 'uploads/images/product/multipleimage/1711486896642750.jpg', 'publish', 1, '2021-09-20 21:11:36', NULL),
(5, 1, 'uploads/images/product/multipleimage/1711486896804685.jpg', 'publish', 1, '2021-09-20 21:11:36', NULL),
(6, 2, 'uploads/images/product/multipleimage/1711491690554590.jpg', 'publish', 1, '2021-09-20 22:27:48', NULL),
(7, 2, 'uploads/images/product/multipleimage/1711491690620338.jpg', 'publish', 1, '2021-09-20 22:27:48', NULL),
(8, 2, 'uploads/images/product/multipleimage/1711491690674303.jpg', 'publish', 1, '2021-09-20 22:27:48', NULL),
(9, 3, 'uploads/images/product/multipleimage/1711747720878072.jpg', 'publish', 1, '2021-09-23 18:17:17', NULL),
(10, 3, 'uploads/images/product/multipleimage/1711747720948152.jpg', 'publish', 1, '2021-09-23 18:17:17', NULL),
(11, 3, 'uploads/images/product/multipleimage/1711747721015407.jpg', 'publish', 1, '2021-09-23 18:17:17', NULL),
(12, 3, 'uploads/images/product/multipleimage/1711747721074483.jpg', 'publish', 1, '2021-09-23 18:17:17', NULL),
(13, 3, 'uploads/images/product/multipleimage/1711747721131490.jpg', 'publish', 1, '2021-09-23 18:17:17', NULL),
(14, 3, 'uploads/images/product/multipleimage/1711747721184201.jpg', 'publish', 1, '2021-09-23 18:17:17', NULL),
(15, 3, 'uploads/images/product/multipleimage/1711747721244887.jpg', 'publish', 1, '2021-09-23 18:17:18', NULL),
(16, 3, 'uploads/images/product/multipleimage/1711747721360739.jpg', 'publish', 1, '2021-09-23 18:17:18', NULL),
(17, 3, 'uploads/images/product/multipleimage/1711747721408769.jpg', 'publish', 1, '2021-09-23 18:17:18', NULL),
(18, 3, 'uploads/images/product/multipleimage/1711747721464920.jpg', 'publish', 1, '2021-09-23 18:17:18', NULL),
(19, 4, 'uploads/images/product/multipleimage/1718819460517807.jpg', 'publish', 1, '2021-12-10 19:39:34', NULL),
(20, 4, 'uploads/images/product/multipleimage/1718819460630278.jpg', 'publish', 1, '2021-12-10 19:39:34', NULL),
(21, 4, 'uploads/images/product/multipleimage/1718819460735822.jpg', 'publish', 1, '2021-12-10 19:39:34', NULL),
(22, 4, 'uploads/images/product/multipleimage/1718819460846440.jpg', 'publish', 1, '2021-12-10 19:39:34', NULL),
(23, 4, 'uploads/images/product/multipleimage/1718819460965482.jpg', 'publish', 1, '2021-12-10 19:39:34', NULL),
(24, 4, 'uploads/images/product/multipleimage/1718819461069052.jpg', 'publish', 1, '2021-12-10 19:39:34', NULL),
(25, 4, 'uploads/images/product/multipleimage/1718819461179329.jpg', 'publish', 1, '2021-12-10 19:39:34', NULL),
(26, 5, 'uploads/images/product/multipleimage/1718820695366199.jpg', 'publish', 1, '2021-12-10 19:59:11', NULL),
(27, 5, 'uploads/images/product/multipleimage/1718820695488830.jpg', 'publish', 1, '2021-12-10 19:59:11', NULL),
(28, 5, 'uploads/images/product/multipleimage/1718820695604534.jpg', 'publish', 1, '2021-12-10 19:59:12', NULL),
(29, 5, 'uploads/images/product/multipleimage/1718820695763355.jpg', 'publish', 1, '2021-12-10 19:59:12', NULL),
(30, 5, 'uploads/images/product/multipleimage/1718820695869035.jpg', 'publish', 1, '2021-12-10 19:59:12', NULL),
(31, 5, 'uploads/images/product/multipleimage/1718820695974607.jpg', 'publish', 1, '2021-12-10 19:59:12', NULL),
(32, 5, 'uploads/images/product/multipleimage/1718820696079387.jpg', 'publish', 1, '2021-12-10 19:59:12', NULL),
(33, 5, 'uploads/images/product/multipleimage/1718820696183702.jpg', 'publish', 1, '2021-12-10 19:59:12', NULL),
(34, 5, 'uploads/images/product/multipleimage/1718820696286513.jpg', 'publish', 1, '2021-12-10 19:59:12', NULL),
(35, 5, 'uploads/images/product/multipleimage/1718820696404072.jpg', 'publish', 1, '2021-12-10 19:59:12', NULL),
(36, 5, 'uploads/images/product/multipleimage/1718820696510108.jpg', 'publish', 1, '2021-12-10 19:59:12', NULL),
(37, 5, 'uploads/images/product/multipleimage/1718820696622624.jpg', 'publish', 1, '2021-12-10 19:59:13', NULL),
(38, 5, 'uploads/images/product/multipleimage/1718820696781385.jpg', 'publish', 1, '2021-12-10 19:59:13', NULL),
(39, 5, 'uploads/images/product/multipleimage/1718820696888123.jpg', 'publish', 1, '2021-12-10 19:59:13', NULL),
(40, 5, 'uploads/images/product/multipleimage/1718820696996464.jpg', 'publish', 1, '2021-12-10 19:59:13', NULL),
(41, 6, 'uploads/images/product/multipleimage/1718821095897858.jpg', 'publish', 1, '2021-12-10 20:05:33', NULL),
(42, 6, 'uploads/images/product/multipleimage/1718821096032681.jpg', 'publish', 1, '2021-12-10 20:05:33', NULL),
(43, 6, 'uploads/images/product/multipleimage/1718821096169783.jpg', 'publish', 1, '2021-12-10 20:05:34', NULL),
(44, 6, 'uploads/images/product/multipleimage/1718821096323176.jpg', 'publish', 1, '2021-12-10 20:05:34', NULL),
(45, 6, 'uploads/images/product/multipleimage/1718821096426304.jpg', 'publish', 1, '2021-12-10 20:05:34', NULL),
(46, 6, 'uploads/images/product/multipleimage/1718821096527787.jpg', 'publish', 1, '2021-12-10 20:05:34', NULL),
(47, 6, 'uploads/images/product/multipleimage/1718821096638368.jpg', 'publish', 1, '2021-12-10 20:05:34', NULL),
(48, 6, 'uploads/images/product/multipleimage/1718821096763630.jpg', 'publish', 1, '2021-12-10 20:05:34', NULL),
(49, 6, 'uploads/images/product/multipleimage/1718821096870356.jpg', 'publish', 1, '2021-12-10 20:05:34', NULL),
(50, 6, 'uploads/images/product/multipleimage/1718821096997708.jpg', 'publish', 1, '2021-12-10 20:05:34', NULL),
(51, 6, 'uploads/images/product/multipleimage/1718821097112524.jpg', 'publish', 1, '2021-12-10 20:05:34', NULL),
(52, 6, 'uploads/images/product/multipleimage/1718821097235150.jpg', 'publish', 1, '2021-12-10 20:05:35', NULL),
(53, 6, 'uploads/images/product/multipleimage/1718821097390112.jpg', 'publish', 1, '2021-12-10 20:05:35', NULL),
(54, 6, 'uploads/images/product/multipleimage/1718821097494816.jpg', 'publish', 1, '2021-12-10 20:05:35', NULL),
(55, 6, 'uploads/images/product/multipleimage/1718821097598965.jpg', 'publish', 1, '2021-12-10 20:05:35', NULL),
(56, 6, 'uploads/images/product/multipleimage/1718821097705517.jpg', 'publish', 1, '2021-12-10 20:05:35', NULL),
(74, 10, 'uploads/images/product/multipleimage/1719823418708515.jpeg', 'publish', 1, '2021-12-21 21:37:03', NULL),
(75, 10, 'uploads/images/product/multipleimage/1719823418752525.jpeg', 'publish', 1, '2021-12-21 21:37:03', NULL),
(76, 10, 'uploads/images/product/multipleimage/1719823418801339.jpeg', 'publish', 1, '2021-12-21 21:37:03', NULL),
(77, 10, 'uploads/images/product/multipleimage/1721636507423886.jpg', 'publish', 1, '2021-12-21 21:37:03', '2022-01-10 21:55:19'),
(78, 10, 'uploads/images/product/multipleimage/1719825039855602.jpeg', 'publish', 1, '2021-12-21 21:37:03', '2021-12-21 22:02:49'),
(79, 10, 'uploads/images/product/multipleimage/1719823418936507.jpeg', 'publish', 1, '2021-12-21 21:37:03', NULL),
(82, 10, 'uploads/images/product/multipleimage/1719825140688699.jpg', 'publish', 1, '2021-12-21 21:37:03', '2021-12-21 22:04:25'),
(83, 10, 'uploads/images/product/multipleimage/1719825168391296.jpeg', 'publish', 1, '2021-12-21 21:37:03', '2021-12-21 22:04:51'),
(85, 2, 'uploads/images/product/multipleimage/1719827808860423.jpg', 'publish', 1, '2021-12-21 22:46:50', NULL),
(86, 2, 'uploads/images/product/multipleimage/1719828072264526.jpg', 'publish', 1, '2021-12-21 22:51:01', NULL),
(87, 2, 'uploads/images/product/multipleimage/1719828072364211.jpg', 'publish', 1, '2021-12-21 22:51:01', NULL),
(88, 2, 'uploads/images/product/multipleimage/1719828072454832.jpg', 'publish', 1, '2021-12-21 22:51:01', NULL),
(89, 2, 'uploads/images/product/multipleimage/1719828072559997.jpg', 'publish', 1, '2021-12-21 22:51:01', NULL),
(90, 2, 'uploads/images/product/multipleimage/1719828072620616.jpg', 'publish', 1, '2021-12-21 22:51:01', NULL),
(91, 11, 'uploads/images/product/multipleimage/1721004290356605.jpg', 'publish', 1, '2022-01-03 22:26:30', NULL),
(92, 11, 'uploads/images/product/multipleimage/1721004290464734.jpg', 'publish', 1, '2022-01-03 22:26:30', NULL),
(93, 11, 'uploads/images/product/multipleimage/1721004290574613.jpg', 'publish', 1, '2022-01-03 22:26:30', NULL),
(94, 11, 'uploads/images/product/multipleimage/1721004290679667.jpg', 'publish', 1, '2022-01-03 22:26:30', NULL),
(95, 11, 'uploads/images/product/multipleimage/1721004290784277.jpg', 'publish', 1, '2022-01-03 22:26:30', NULL),
(96, 11, 'uploads/images/product/multipleimage/1721004290887592.jpg', 'publish', 1, '2022-01-03 22:26:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_multiple_videos`
--

CREATE TABLE `product_multiple_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpublish',
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_multiple_videos`
--

INSERT INTO `product_multiple_videos` (`id`, `product_id`, `video`, `publish_status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'uploads/videos/product/multiplevideo/1718814993732866.mp4', 'publish', 1, '2021-12-10 18:28:35', NULL),
(2, 1, 'uploads/videos/product/multiplevideo/1718815018842930.mp4', 'publish', 1, '2021-12-10 18:28:58', NULL),
(3, 1, 'uploads/videos/product/multiplevideo/1718815392388629.mp4', 'publish', 1, '2021-12-10 18:34:56', NULL),
(4, 4, 'uploads/videos/product/multiplevideo/1718819533431350.mp4', 'publish', 1, '2021-12-10 19:40:51', NULL),
(5, 4, 'uploads/videos/product/multiplevideo/1718819581441525.mp4', 'publish', 1, '2021-12-10 19:41:35', NULL),
(8, 6, 'uploads/videos/product/multiplevideo/1718821190858569.mp4', 'publish', 1, '2021-12-10 20:07:13', NULL),
(9, 7, 'uploads/videos/product/multiplevideo/1718993091798397.mp4', 'publish', 1, '2021-12-12 17:39:23', NULL),
(10, 7, 'uploads/videos/product/multiplevideo/1718993593105716.mp4', 'publish', 1, '2021-12-12 17:47:22', NULL),
(11, 2, 'uploads/videos/product/multiplevideo/1719108976248301.mp4', 'publish', 1, '2021-12-14 00:21:18', NULL),
(12, 8, 'uploads/videos/product/multiplevideo/1719109752746360.mp4', 'publish', 1, '2021-12-14 00:33:39', NULL),
(13, 10, 'uploads/videos/product/multiplevideo/1719823474500092.mp4', 'publish', 1, '2021-12-21 21:37:56', NULL),
(14, 10, 'uploads/videos/product/multiplevideo/1719823843209391.mp4', 'publish', 1, '2021-12-21 21:43:48', NULL),
(16, 10, 'uploads/videos/product/multiplevideo/1719823895097864.mp4', 'publish', 1, '2021-12-21 21:44:37', NULL),
(17, 8, 'uploads/videos/product/multiplevideo/1719827395567698.mp4', 'publish', 1, '2021-12-21 22:40:15', NULL),
(18, 11, 'uploads/videos/product/multiplevideo/1721004316910656.mp4', 'publish', 1, '2022-01-03 22:26:56', NULL),
(19, 11, 'uploads/videos/product/multiplevideo/1721004345295040.mp4', 'publish', 1, '2022-01-03 22:27:25', NULL),
(20, 11, 'uploads/videos/product/multiplevideo/1721004363925337.mp4', 'publish', 1, '2022-01-03 22:27:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_jp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle_jp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpublish',
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `title_jp`, `subtitle`, `subtitle_jp`, `slider_image`, `publish_status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '', '', '', '', 'uploads/images/slider/1711468955582464.jpg', 'publish', '1', '2021-09-20 15:26:26', NULL),
(2, '', '', '', '', 'uploads/images/slider/1711468967343544.jpg', 'publish', '1', '2021-09-20 15:26:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '2',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 3, 'Super Admin', 'admin@woodyltd.com', '2021-09-20 15:22:57', '$2y$10$RERhpCI1LXnpECwDxN9sPO10zBQJbatkY9PQ6kQcBPmlATOyhz7x.', 'fQrwjlT3L1jMzkSUDkYWGICbAf8H7CGIeNYoIg4sL6plmt1XudYGfCl6EMdJ', '2021-09-20 15:22:57', '2021-09-20 15:22:57');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visitor_ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visit_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_visit` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `visitor_ip`, `visit_date`, `total_visit`, `created_at`, `updated_at`) VALUES
(1, '35.243.227.179', '2021-10-29 04:01:07', 1, '2021-10-28 20:01:07', NULL),
(2, '17.121.115.179', '2021-10-30 22:08:24', 1, '2021-10-30 14:08:24', NULL),
(3, '161.35.134.117', '2021-10-31 04:58:23', 1, '2021-10-30 20:58:23', NULL),
(4, '69.164.220.126', '2021-10-31 08:08:40', 1, '2021-10-31 00:08:40', NULL),
(5, '102.64.187.154', '2021-10-31 10:02:26', 1, '2021-10-31 02:02:26', '2021-10-31 02:03:05'),
(6, '121.2.147.145', '2021-10-31 11:53:35', 1, '2021-10-31 03:53:35', '2022-05-04 02:53:41'),
(7, '54.216.225.222', '2021-11-01 11:55:14', 1, '2021-11-01 03:55:14', NULL),
(8, '119.83.219.66', '2021-11-02 16:25:44', 1, '2021-11-02 08:25:44', '2021-11-02 08:29:06'),
(9, '159.203.80.98', '2021-11-04 11:40:27', 1, '2021-11-04 03:40:27', NULL),
(10, '157.245.218.133', '2021-11-04 12:14:44', 1, '2021-11-04 04:14:44', NULL),
(11, '207.46.13.143', '2021-11-05 00:49:22', 1, '2021-11-04 16:49:22', NULL),
(12, '117.24.14.242', '2021-11-05 03:40:35', 1, '2021-11-04 19:40:35', '2021-11-21 12:20:38'),
(13, '121.1.189.146', '2021-11-06 03:45:10', 1, '2021-11-05 19:45:10', '2021-11-30 01:21:34'),
(14, '132.232.75.2', '2021-11-06 07:34:36', 1, '2021-11-05 23:34:36', '2021-11-05 23:34:41'),
(15, '117.24.14.242', '2021-11-06 22:20:58', 1, '2021-11-06 14:20:58', '2021-11-21 12:20:38'),
(16, '35.231.187.8', '2021-11-07 14:14:01', 1, '2021-11-07 06:14:01', NULL),
(17, '117.24.14.242', '2021-11-08 00:33:09', 1, '2021-11-07 16:33:09', '2021-11-21 12:20:38'),
(18, '66.249.71.6', '2021-11-08 11:31:57', 1, '2021-11-08 03:31:57', '2022-05-12 02:15:07'),
(19, '66.249.71.10', '2021-11-08 12:54:29', 1, '2021-11-08 04:54:29', '2022-05-13 08:17:26'),
(20, '121.1.189.146', '2021-11-10 08:12:53', 1, '2021-11-10 00:12:53', '2021-11-30 01:21:34'),
(21, '66.249.71.6', '2021-11-10 11:46:31', 1, '2021-11-10 03:46:31', '2022-05-12 02:15:07'),
(22, '66.249.71.14', '2021-11-11 01:14:37', 1, '2021-11-10 17:14:37', '2022-05-12 04:19:44'),
(23, '18.132.209.206', '2021-11-11 20:52:14', 1, '2021-11-11 12:52:14', NULL),
(24, '34.74.181.250', '2021-11-13 12:58:28', 1, '2021-11-13 04:58:28', NULL),
(25, '117.44.170.20', '2021-11-15 08:16:54', 1, '2021-11-15 00:16:54', NULL),
(26, '220.177.144.139', '2021-11-15 08:16:59', 1, '2021-11-15 00:16:59', NULL),
(27, '121.1.189.146', '2021-11-16 02:48:53', 1, '2021-11-15 18:48:53', '2021-11-30 01:21:34'),
(28, '126.194.104.101', '2021-11-18 10:52:42', 1, '2021-11-18 02:52:42', NULL),
(29, '34.77.162.29', '2021-11-19 00:42:50', 1, '2021-11-18 16:42:50', '2022-03-15 02:18:41'),
(30, '34.77.162.31', '2021-11-19 04:34:57', 1, '2021-11-18 20:34:57', NULL),
(31, '185.220.101.4', '2021-11-19 05:11:34', 1, '2021-11-18 21:11:34', NULL),
(32, '103.140.113.239', '2021-11-19 14:06:34', 1, '2021-11-19 06:06:34', '2021-11-19 06:07:48'),
(33, '117.24.14.242', '2021-11-19 23:37:27', 1, '2021-11-19 15:37:27', '2021-11-21 12:20:38'),
(34, '36.99.136.132', '2021-11-20 04:35:30', 1, '2021-11-19 20:35:30', NULL),
(35, '15.237.94.67', '2021-11-20 04:54:10', 1, '2021-11-19 20:54:10', NULL),
(36, '14.3.44.169', '2021-11-20 06:05:26', 1, '2021-11-19 22:05:26', '2022-01-04 01:11:49'),
(37, '18.203.98.143', '2021-11-20 16:30:51', 1, '2021-11-20 08:30:51', NULL),
(38, '92.118.160.45', '2021-11-21 00:36:44', 1, '2021-11-20 16:36:44', NULL),
(39, '106.72.51.64', '2021-11-21 05:12:15', 1, '2021-11-20 21:12:15', '2021-11-20 21:15:58'),
(40, '133.201.148.0', '2021-11-21 12:05:13', 1, '2021-11-21 04:05:13', '2022-03-13 07:01:41'),
(41, '103.127.59.118', '2021-11-21 13:03:45', 1, '2021-11-21 05:03:45', NULL),
(42, '108.5.183.203', '2021-11-21 17:42:10', 1, '2021-11-21 09:42:10', NULL),
(43, '117.24.14.242', '2021-11-21 20:20:38', 1, '2021-11-21 12:20:38', NULL),
(44, '175.177.44.221', '2021-11-22 15:18:25', 1, '2021-11-22 07:18:25', '2021-11-22 07:19:38'),
(45, '34.77.162.23', '2021-11-22 19:32:17', 1, '2021-11-22 11:32:17', NULL),
(46, '92.118.160.1', '2021-11-23 01:15:41', 1, '2021-11-22 17:15:41', '2022-01-10 16:11:38'),
(47, '34.77.162.17', '2021-11-24 01:06:13', 1, '2021-11-23 17:06:13', NULL),
(48, '121.1.189.146', '2021-11-24 02:51:47', 1, '2021-11-23 18:51:47', '2021-11-30 01:21:34'),
(49, '34.96.130.14', '2021-11-25 19:38:13', 1, '2021-11-25 11:38:13', NULL),
(50, '51.158.108.61', '2021-11-25 19:52:32', 1, '2021-11-25 11:52:32', '2022-04-26 03:29:39'),
(51, '14.3.44.169', '2021-11-26 08:47:18', 1, '2021-11-26 00:47:18', '2022-01-04 01:11:49'),
(52, '34.77.162.7', '2021-11-27 04:10:14', 1, '2021-11-26 20:10:14', NULL),
(53, '133.201.148.0', '2021-11-27 13:50:16', 1, '2021-11-27 05:50:16', '2022-03-13 07:01:41'),
(54, '82.135.67.121', '2021-11-27 13:51:41', 1, '2021-11-27 05:51:41', '2021-11-27 05:59:52'),
(55, '66.220.149.21', '2021-11-28 05:44:53', 1, '2021-11-27 21:44:53', '2021-11-27 21:44:54'),
(56, '106.53.82.40', '2021-11-28 13:18:17', 1, '2021-11-28 05:18:17', NULL),
(57, '139.59.181.37', '2021-11-29 02:16:38', 1, '2021-11-28 18:16:38', NULL),
(58, '69.171.231.5', '2021-11-29 08:57:18', 1, '2021-11-29 00:57:18', NULL),
(59, '69.171.231.119', '2021-11-29 08:57:19', 1, '2021-11-29 00:57:19', '2022-04-22 22:20:25'),
(60, '103.127.59.116', '2021-11-29 13:30:42', 1, '2021-11-29 05:30:42', '2021-11-29 07:01:20'),
(61, '92.118.160.17', '2021-11-30 01:54:47', 1, '2021-11-29 17:54:47', '2022-01-15 23:15:32'),
(62, '69.171.231.120', '2021-11-30 09:09:02', 1, '2021-11-30 01:09:02', '2022-04-20 00:17:29'),
(63, '69.171.231.2', '2021-11-30 09:13:39', 1, '2021-11-30 01:13:39', '2022-04-20 00:17:28'),
(64, '121.1.189.146', '2021-11-30 09:20:17', 1, '2021-11-30 01:20:17', '2021-11-30 01:21:34'),
(65, '51.158.108.61', '2021-11-30 10:34:03', 1, '2021-11-30 02:34:03', '2022-04-26 03:29:39'),
(66, '202.208.159.20', '2021-12-01 08:32:22', 1, '2021-12-01 00:32:22', '2022-01-03 22:28:30'),
(67, '173.173.127.222', '2021-12-02 01:44:42', 1, '2021-12-01 17:44:42', NULL),
(68, '202.208.159.20', '2021-12-02 02:13:54', 1, '2021-12-01 18:13:54', '2022-01-03 22:28:30'),
(69, '81.71.118.139', '2021-12-02 13:10:48', 1, '2021-12-02 05:10:48', NULL),
(70, '128.199.127.143', '2021-12-05 02:04:23', 1, '2021-12-04 18:04:23', '2021-12-17 11:52:52'),
(71, '34.249.225.170', '2021-12-06 19:29:25', 1, '2021-12-06 11:29:25', NULL),
(72, '66.249.71.10', '2021-12-06 21:45:15', 1, '2021-12-06 13:45:15', '2022-05-13 08:17:26'),
(73, '66.249.71.14', '2021-12-06 22:23:59', 1, '2021-12-06 14:23:59', '2022-05-12 04:19:44'),
(74, '159.89.42.77', '2021-12-07 02:36:53', 1, '2021-12-06 18:36:53', NULL),
(75, '165.227.126.31', '2021-12-07 02:57:29', 1, '2021-12-06 18:57:29', NULL),
(76, '212.83.146.233', '2021-12-07 08:34:12', 1, '2021-12-07 00:34:12', NULL),
(77, '51.15.191.81', '2021-12-07 08:48:43', 1, '2021-12-07 00:48:43', NULL),
(78, '62.210.10.77', '2021-12-07 09:42:04', 1, '2021-12-07 01:42:04', '2021-12-07 01:42:34'),
(79, '51.254.49.96', '2021-12-07 10:27:36', 1, '2021-12-07 02:27:36', NULL),
(80, '51.254.49.99', '2021-12-07 11:23:19', 1, '2021-12-07 03:23:19', NULL),
(81, '202.208.159.20', '2021-12-08 13:01:40', 1, '2021-12-08 05:01:40', '2022-01-03 22:28:30'),
(82, '195.154.61.206', '2021-12-08 16:31:55', 1, '2021-12-08 08:31:55', NULL),
(83, '51.254.49.102', '2021-12-08 17:43:21', 1, '2021-12-08 09:43:21', NULL),
(84, '125.196.211.32', '2021-12-09 00:28:02', 1, '2021-12-08 16:28:02', '2022-01-25 17:43:09'),
(85, '34.219.182.137', '2021-12-09 00:39:34', 1, '2021-12-08 16:39:34', NULL),
(86, '69.197.185.43', '2021-12-09 05:33:27', 1, '2021-12-08 21:33:27', NULL),
(87, '66.249.71.14', '2021-12-09 16:24:40', 1, '2021-12-09 08:24:40', '2022-05-12 04:19:44'),
(88, '66.249.64.45', '2021-12-09 22:09:29', 1, '2021-12-09 14:09:29', NULL),
(89, '52.47.99.13', '2021-12-10 12:57:26', 1, '2021-12-10 04:57:26', NULL),
(90, '202.208.159.20', '2021-12-11 02:20:30', 1, '2021-12-10 18:20:30', '2022-01-03 22:28:30'),
(91, '123.6.49.38', '2021-12-11 04:37:05', 1, '2021-12-10 20:37:05', NULL),
(92, '180.163.220.66', '2021-12-11 04:38:59', 1, '2021-12-10 20:38:59', '2022-03-02 19:08:24'),
(93, '42.236.10.106', '2021-12-11 04:39:39', 1, '2021-12-10 20:39:39', NULL),
(94, '123.6.49.6', '2021-12-11 04:39:57', 1, '2021-12-10 20:39:57', NULL),
(95, '202.208.159.20', '2021-12-11 05:00:23', 1, '2021-12-10 21:00:23', '2022-01-03 22:28:30'),
(96, '221.130.37.188', '2021-12-11 08:06:27', 1, '2021-12-11 00:06:27', '2022-03-23 20:16:41'),
(97, '202.208.159.20', '2021-12-11 08:31:17', 1, '2021-12-11 00:31:17', '2022-01-03 22:28:30'),
(98, '103.156.124.121', '2021-12-11 10:33:59', 1, '2021-12-11 02:33:59', NULL),
(99, '202.208.159.20', '2021-12-13 00:24:38', 1, '2021-12-12 16:24:38', '2022-01-03 22:28:30'),
(100, '35.212.72.131', '2021-12-13 02:01:01', 1, '2021-12-12 18:01:01', NULL),
(101, '202.208.159.20', '2021-12-13 08:46:33', 1, '2021-12-13 00:46:33', '2022-01-03 22:28:30'),
(102, '42.236.10.93', '2021-12-13 09:00:44', 1, '2021-12-13 01:00:44', '2022-03-02 19:24:52'),
(103, '27.115.124.45', '2021-12-13 10:49:37', 1, '2021-12-13 02:49:37', NULL),
(104, '62.201.255.225', '2021-12-13 18:22:39', 1, '2021-12-13 10:22:39', NULL),
(105, '202.208.159.20', '2021-12-14 03:24:30', 1, '2021-12-13 19:24:30', '2022-01-03 22:28:30'),
(106, '3.99.46.82', '2021-12-14 07:05:17', 1, '2021-12-13 23:05:17', NULL),
(107, '202.208.159.20', '2021-12-14 08:20:27', 1, '2021-12-14 00:20:27', '2022-01-03 22:28:30'),
(108, '34.77.162.11', '2021-12-14 09:58:30', 1, '2021-12-14 01:58:30', '2022-01-11 16:49:02'),
(109, '66.249.71.10', '2021-12-16 04:46:15', 1, '2021-12-15 20:46:15', '2022-05-13 08:17:26'),
(110, '202.208.159.20', '2021-12-16 10:07:08', 1, '2021-12-16 02:07:08', '2022-01-03 22:28:30'),
(111, '133.201.148.0', '2021-12-16 11:32:38', 1, '2021-12-16 03:32:38', '2022-03-13 07:01:41'),
(112, '103.134.43.119', '2021-12-16 11:37:14', 1, '2021-12-16 03:37:14', '2021-12-16 12:04:07'),
(113, '133.201.148.0', '2021-12-16 11:37:48', 1, '2021-12-16 03:37:48', '2022-03-13 07:01:41'),
(114, '66.249.71.6', '2021-12-16 17:05:05', 1, '2021-12-16 09:05:05', '2022-05-12 02:15:07'),
(115, '103.134.43.119', '2021-12-16 20:04:07', 1, '2021-12-16 12:04:07', NULL),
(116, '34.96.130.23', '2021-12-16 21:52:49', 1, '2021-12-16 13:52:49', NULL),
(117, '34.247.89.124', '2021-12-17 19:21:49', 1, '2021-12-17 11:21:49', NULL),
(118, '128.199.127.143', '2021-12-17 19:52:52', 1, '2021-12-17 11:52:52', NULL),
(119, '92.118.160.37', '2021-12-17 22:29:29', 1, '2021-12-17 14:29:29', '2021-12-19 10:52:43'),
(120, '35.243.210.242', '2021-12-18 03:48:45', 1, '2021-12-17 19:48:45', NULL),
(121, '66.249.71.14', '2021-12-19 06:27:13', 1, '2021-12-18 22:27:13', '2022-05-12 04:19:44'),
(122, '92.118.160.37', '2021-12-19 18:52:43', 1, '2021-12-19 10:52:43', NULL),
(123, '66.249.71.10', '2021-12-21 07:42:26', 1, '2021-12-20 23:42:26', '2022-05-13 08:17:26'),
(124, '34.86.35.22', '2021-12-21 11:00:00', 1, '2021-12-21 03:00:00', '2021-12-23 17:45:37'),
(125, '34.96.130.5', '2021-12-21 21:02:53', 1, '2021-12-21 13:02:53', '2022-02-24 14:37:10'),
(126, '202.208.159.20', '2021-12-22 01:41:39', 1, '2021-12-21 17:41:39', '2022-01-03 22:28:30'),
(127, '69.160.160.53', '2021-12-22 12:45:12', 1, '2021-12-22 04:45:12', NULL),
(128, '167.94.138.116', '2021-12-22 23:06:30', 1, '2021-12-22 15:06:30', '2021-12-22 15:06:30'),
(129, '17.121.113.14', '2021-12-23 06:37:44', 1, '2021-12-22 22:37:44', NULL),
(130, '207.46.13.127', '2021-12-23 08:44:07', 1, '2021-12-23 00:44:07', NULL),
(131, '34.242.122.42', '2021-12-23 13:25:45', 1, '2021-12-23 05:25:45', NULL),
(132, '66.249.71.10', '2021-12-23 15:02:43', 1, '2021-12-23 07:02:43', '2022-05-13 08:17:26'),
(133, '34.255.192.243', '2021-12-23 20:51:18', 1, '2021-12-23 12:51:18', NULL),
(134, '34.86.35.22', '2021-12-24 01:45:37', 1, '2021-12-23 17:45:37', NULL),
(135, '192.99.18.122', '2021-12-25 07:53:56', 1, '2021-12-24 23:53:56', NULL),
(136, '34.77.162.21', '2021-12-28 04:55:13', 1, '2021-12-27 20:55:13', NULL),
(137, '34.77.162.28', '2021-12-28 05:11:36', 1, '2021-12-27 21:11:36', NULL),
(138, '34.86.35.8', '2021-12-28 14:23:31', 1, '2021-12-28 06:23:31', '2022-02-28 15:56:45'),
(139, '34.96.130.29', '2021-12-28 20:58:56', 1, '2021-12-28 12:58:56', NULL),
(140, '34.86.35.26', '2021-12-30 22:31:52', 1, '2021-12-30 14:31:52', NULL),
(141, '34.96.130.22', '2021-12-31 02:19:38', 1, '2021-12-30 18:19:38', NULL),
(142, '34.96.130.26', '2021-12-31 19:09:58', 1, '2021-12-31 11:09:58', NULL),
(143, '51.158.98.24', '2022-01-01 03:12:37', 1, '2021-12-31 19:12:37', NULL),
(144, '51.15.251.143', '2022-01-01 03:45:58', 1, '2021-12-31 19:45:58', '2022-01-18 14:42:07'),
(145, '66.249.71.6', '2022-01-02 06:35:57', 1, '2022-01-01 22:35:57', '2022-05-12 02:15:07'),
(146, '92.118.160.13', '2022-01-02 15:23:41', 1, '2022-01-02 07:23:41', '2022-02-26 13:14:09'),
(147, '92.118.160.61', '2022-01-02 23:11:58', 1, '2022-01-02 15:11:58', '2022-01-08 09:59:00'),
(148, '68.183.49.245', '2022-01-03 02:19:50', 1, '2022-01-02 18:19:50', NULL),
(149, '34.86.35.20', '2022-01-04 04:56:59', 1, '2022-01-03 20:56:59', '2022-03-05 01:32:57'),
(150, '14.3.44.169', '2022-01-04 05:53:31', 1, '2022-01-03 21:53:31', '2022-01-04 01:11:49'),
(151, '202.208.159.20', '2022-01-04 06:03:43', 1, '2022-01-03 22:03:43', '2022-01-03 22:28:30'),
(152, '14.3.44.169', '2022-01-04 06:27:26', 1, '2022-01-03 22:27:26', '2022-01-04 01:11:49'),
(153, '202.208.159.20', '2022-01-04 06:28:30', 1, '2022-01-03 22:28:30', NULL),
(154, '14.3.44.169', '2022-01-04 08:33:54', 1, '2022-01-04 00:33:54', '2022-01-04 01:11:49'),
(155, '52.90.105.119', '2022-01-04 13:23:28', 1, '2022-01-04 05:23:28', NULL),
(156, '34.86.35.30', '2022-01-04 16:16:44', 1, '2022-01-04 08:16:44', NULL),
(157, '34.96.130.8', '2022-01-05 03:15:12', 1, '2022-01-04 19:15:12', NULL),
(158, '126.227.175.29', '2022-01-05 15:02:23', 1, '2022-01-05 07:02:23', NULL),
(159, '108.174.8.20', '2022-01-05 15:28:34', 1, '2022-01-05 07:28:34', NULL),
(160, '108.174.8.21', '2022-01-05 15:29:10', 1, '2022-01-05 07:29:10', NULL),
(161, '14.3.184.209', '2022-01-07 06:56:18', 1, '2022-01-06 22:56:18', '2022-02-03 16:28:10'),
(162, '45.129.18.205', '2022-01-07 07:20:38', 1, '2022-01-06 23:20:38', NULL),
(163, '14.3.184.209', '2022-01-07 08:42:49', 1, '2022-01-07 00:42:49', '2022-02-03 16:28:10'),
(164, '34.77.162.20', '2022-01-07 10:52:48', 1, '2022-01-07 02:52:48', NULL),
(165, '34.76.168.140', '2022-01-07 15:49:18', 1, '2022-01-07 07:49:18', NULL),
(166, '54.36.148.124', '2022-01-07 16:25:28', 1, '2022-01-07 08:25:28', '2022-05-01 20:23:56'),
(167, '34.96.130.0', '2022-01-07 16:27:18', 1, '2022-01-07 08:27:18', '2022-02-25 11:03:05'),
(168, '34.77.162.18', '2022-01-07 23:41:13', 1, '2022-01-07 15:41:13', NULL),
(169, '159.203.165.41', '2022-01-08 05:12:54', 1, '2022-01-07 21:12:54', NULL),
(170, '167.172.248.95', '2022-01-08 05:17:45', 1, '2022-01-07 21:17:45', NULL),
(171, '66.249.71.6', '2022-01-08 11:45:40', 1, '2022-01-08 03:45:40', '2022-05-12 02:15:07'),
(172, '92.118.160.61', '2022-01-08 13:09:47', 1, '2022-01-08 05:09:47', '2022-01-08 09:59:00'),
(173, '66.249.71.14', '2022-01-08 19:02:56', 1, '2022-01-08 11:02:56', '2022-05-12 04:19:44'),
(174, '66.249.71.10', '2022-01-08 19:44:22', 1, '2022-01-08 11:44:22', '2022-05-13 08:17:26'),
(175, '34.75.100.57', '2022-01-09 15:08:59', 1, '2022-01-09 07:08:59', NULL),
(176, '66.249.71.10', '2022-01-09 15:59:25', 1, '2022-01-09 07:59:25', '2022-05-13 08:17:26'),
(177, '92.118.160.13', '2022-01-09 19:52:27', 1, '2022-01-09 11:52:27', '2022-02-26 13:14:09'),
(178, '13.37.57.142', '2022-01-10 05:00:10', 1, '2022-01-09 21:00:10', NULL),
(179, '37.111.205.222', '2022-01-10 08:48:10', 1, '2022-01-10 00:48:10', NULL),
(180, '14.3.184.209', '2022-01-10 11:31:30', 1, '2022-01-10 03:31:30', '2022-02-03 16:28:10'),
(181, '92.118.160.1', '2022-01-11 00:11:38', 1, '2022-01-10 16:11:38', NULL),
(182, '45.129.18.196', '2022-01-11 01:41:19', 1, '2022-01-10 17:41:19', NULL),
(183, '14.3.184.209', '2022-01-11 04:51:42', 1, '2022-01-10 20:51:42', '2022-02-03 16:28:10'),
(184, '34.77.162.9', '2022-01-11 12:22:39', 1, '2022-01-11 04:22:39', NULL),
(185, '34.96.130.0', '2022-01-11 23:05:42', 1, '2022-01-11 15:05:42', '2022-02-25 11:03:05'),
(186, '34.77.162.11', '2022-01-12 00:49:02', 1, '2022-01-11 16:49:02', NULL),
(187, '14.3.184.209', '2022-01-12 01:58:29', 1, '2022-01-11 17:58:29', '2022-02-03 16:28:10'),
(188, '34.77.162.0', '2022-01-12 04:09:46', 1, '2022-01-11 20:09:46', '2022-03-03 18:34:43'),
(189, '66.249.71.6', '2022-01-12 14:06:27', 1, '2022-01-12 06:06:27', '2022-05-12 02:15:07'),
(190, '66.249.71.14', '2022-01-13 00:57:00', 1, '2022-01-12 16:57:00', '2022-05-12 04:19:44'),
(191, '66.249.71.10', '2022-01-13 01:25:13', 1, '2022-01-12 17:25:13', '2022-05-13 08:17:26'),
(192, '66.249.71.14', '2022-01-13 01:32:31', 1, '2022-01-12 17:32:31', '2022-05-12 04:19:44'),
(193, '17.121.114.29', '2022-01-14 18:55:51', 1, '2022-01-14 10:55:51', NULL),
(194, '34.86.35.20', '2022-01-14 20:22:15', 1, '2022-01-14 12:22:15', '2022-03-05 01:32:57'),
(195, '34.96.130.21', '2022-01-15 00:53:43', 1, '2022-01-14 16:53:43', NULL),
(196, '103.60.163.201', '2022-01-15 04:24:19', 1, '2022-01-14 20:24:19', NULL),
(197, '92.118.160.17', '2022-01-16 07:15:32', 1, '2022-01-15 23:15:32', NULL),
(198, '92.118.160.41', '2022-01-16 23:08:52', 1, '2022-01-16 15:08:52', NULL),
(199, '92.118.160.13', '2022-01-17 12:56:14', 1, '2022-01-17 04:56:14', '2022-02-26 13:14:09'),
(200, '143.92.56.239', '2022-01-17 14:22:45', 1, '2022-01-17 06:22:45', '2022-04-02 05:30:42'),
(201, '34.77.162.8', '2022-01-18 00:48:48', 1, '2022-01-17 16:48:48', NULL),
(202, '34.73.156.163', '2022-01-18 08:29:29', 1, '2022-01-18 00:29:29', NULL),
(203, '66.249.71.10', '2022-01-18 12:48:42', 1, '2022-01-18 04:48:42', '2022-05-13 08:17:26'),
(204, '66.249.71.14', '2022-01-18 12:52:38', 1, '2022-01-18 04:52:38', '2022-05-12 04:19:44'),
(205, '66.249.71.10', '2022-01-18 12:53:08', 1, '2022-01-18 04:53:08', '2022-05-13 08:17:26'),
(206, '66.249.71.6', '2022-01-18 12:53:37', 1, '2022-01-18 04:53:37', '2022-05-12 02:15:07'),
(207, '66.249.71.10', '2022-01-18 12:54:09', 1, '2022-01-18 04:54:09', '2022-05-13 08:17:26'),
(208, '34.77.162.16', '2022-01-18 17:14:47', 1, '2022-01-18 09:14:47', NULL),
(209, '34.96.130.18', '2022-01-18 17:40:16', 1, '2022-01-18 09:40:16', NULL),
(210, '51.15.251.143', '2022-01-18 22:42:07', 1, '2022-01-18 14:42:07', NULL),
(211, '51.15.195.246', '2022-01-19 08:02:22', 1, '2022-01-19 00:02:22', '2022-02-16 16:23:41'),
(212, '66.249.71.10', '2022-01-19 14:26:33', 1, '2022-01-19 06:26:33', '2022-05-13 08:17:26'),
(213, '66.249.71.14', '2022-01-20 03:02:48', 1, '2022-01-19 19:02:48', '2022-05-12 04:19:44'),
(214, '211.75.240.56', '2022-01-20 03:44:19', 1, '2022-01-19 19:44:19', '2022-01-19 19:44:48'),
(215, '185.119.81.104', '2022-01-20 07:53:16', 1, '2022-01-19 23:53:16', '2022-02-14 21:44:58'),
(216, '143.92.56.239', '2022-01-22 04:26:25', 1, '2022-01-21 20:26:25', '2022-04-02 05:30:42'),
(217, '54.36.148.124', '2022-01-22 08:14:02', 1, '2022-01-22 00:14:02', '2022-05-01 20:23:56'),
(218, '167.248.133.58', '2022-01-22 14:43:02', 1, '2022-01-22 06:43:02', '2022-01-22 06:43:03'),
(219, '143.92.56.239', '2022-01-23 09:00:57', 1, '2022-01-23 01:00:57', '2022-04-02 05:30:43'),
(220, '180.163.220.67', '2022-01-24 15:54:55', 1, '2022-01-24 07:54:55', NULL),
(221, '125.196.211.32', '2022-01-26 01:43:09', 1, '2022-01-25 17:43:09', NULL),
(222, '35.166.143.124', '2022-01-26 01:56:58', 1, '2022-01-25 17:56:58', NULL),
(223, '14.3.184.209', '2022-01-26 12:41:06', 1, '2022-01-26 04:41:06', '2022-02-03 16:28:10'),
(224, '143.92.56.239', '2022-01-27 05:48:02', 1, '2022-01-26 21:48:02', '2022-04-02 05:30:43'),
(225, '66.249.71.6', '2022-01-27 05:50:53', 1, '2022-01-26 21:50:53', '2022-05-12 02:15:07'),
(226, '35.85.230.208', '2022-01-27 20:56:51', 1, '2022-01-27 12:56:51', NULL),
(227, '143.92.56.239', '2022-01-29 04:28:07', 1, '2022-01-28 20:28:07', '2022-04-02 05:30:43'),
(228, '103.102.204.63', '2022-01-29 14:11:27', 1, '2022-01-29 06:11:27', NULL),
(229, '192.99.18.136', '2022-01-29 22:27:13', 1, '2022-01-29 14:27:13', '2022-04-28 18:23:39'),
(230, '203.159.80.103', '2022-01-30 10:45:57', 1, '2022-01-30 02:45:57', NULL),
(231, '66.249.71.6', '2022-02-01 13:47:52', 1, '2022-02-01 05:47:52', '2022-05-12 02:15:07'),
(232, '66.249.71.10', '2022-02-01 14:19:50', 1, '2022-02-01 06:19:50', '2022-05-13 08:17:26'),
(233, '66.249.71.14', '2022-02-01 15:47:05', 1, '2022-02-01 07:47:05', '2022-05-12 04:19:44'),
(234, '185.119.81.104', '2022-02-02 06:58:35', 1, '2022-02-01 22:58:35', '2022-02-14 21:44:58'),
(235, '76.235.211.219', '2022-02-03 02:38:47', 1, '2022-02-02 18:38:47', NULL),
(236, '66.249.71.10', '2022-02-03 15:40:16', 1, '2022-02-03 07:40:16', '2022-05-13 08:17:26'),
(237, '14.3.184.209', '2022-02-04 00:28:10', 1, '2022-02-03 16:28:10', NULL),
(238, '66.249.71.6', '2022-02-05 05:56:11', 1, '2022-02-04 21:56:11', '2022-05-12 02:15:07'),
(239, '54.36.148.124', '2022-02-05 07:46:36', 1, '2022-02-04 23:46:36', '2022-05-01 20:23:56'),
(240, '5.9.70.72', '2022-02-05 13:49:29', 1, '2022-02-05 05:49:29', NULL),
(241, '161.35.182.170', '2022-02-05 23:12:50', 1, '2022-02-05 15:12:50', NULL),
(242, '157.245.219.138', '2022-02-05 23:24:08', 1, '2022-02-05 15:24:08', NULL),
(243, '13.40.188.235', '2022-02-06 00:36:31', 1, '2022-02-05 16:36:31', NULL),
(244, '157.55.39.56', '2022-02-06 08:07:00', 1, '2022-02-06 00:07:00', NULL),
(245, '133.201.148.0', '2022-02-06 14:13:35', 1, '2022-02-06 06:13:35', '2022-03-13 07:01:41'),
(246, '66.249.71.14', '2022-02-06 14:38:16', 1, '2022-02-06 06:38:16', '2022-05-12 04:19:44'),
(247, '103.248.236.98', '2022-02-06 14:43:15', 1, '2022-02-06 06:43:15', '2022-02-06 07:00:41'),
(248, '66.249.71.6', '2022-02-06 14:50:49', 1, '2022-02-06 06:50:49', '2022-05-12 02:15:07'),
(249, '103.248.236.98', '2022-02-06 15:00:41', 1, '2022-02-06 07:00:41', NULL),
(250, '35.190.219.27', '2022-02-07 09:45:59', 1, '2022-02-07 01:45:59', NULL),
(251, '34.73.31.205', '2022-02-07 12:42:02', 1, '2022-02-07 04:42:02', NULL),
(252, '34.138.216.172', '2022-02-07 14:32:54', 1, '2022-02-07 06:32:54', NULL),
(253, '34.138.23.246', '2022-02-07 16:17:07', 1, '2022-02-07 08:17:07', NULL),
(254, '35.237.250.14', '2022-02-07 18:05:44', 1, '2022-02-07 10:05:44', NULL),
(255, '66.249.71.10', '2022-02-07 23:31:36', 1, '2022-02-07 15:31:36', '2022-05-13 08:17:26'),
(256, '133.201.148.0', '2022-02-08 11:02:08', 1, '2022-02-08 03:02:08', '2022-03-13 07:01:41'),
(257, '143.92.56.239', '2022-02-10 07:36:47', 1, '2022-02-09 23:36:47', '2022-04-02 05:30:43'),
(258, '185.119.81.104', '2022-02-10 11:01:56', 1, '2022-02-10 03:01:56', '2022-02-14 21:44:58'),
(259, '35.231.179.57', '2022-02-11 23:43:33', 1, '2022-02-11 15:43:33', NULL),
(260, '34.139.156.115', '2022-02-12 01:33:20', 1, '2022-02-11 17:33:20', NULL),
(261, '35.243.151.212', '2022-02-12 03:10:37', 1, '2022-02-11 19:10:37', '2022-03-18 07:53:30'),
(262, '17.121.114.192', '2022-02-12 09:09:24', 1, '2022-02-12 01:09:24', NULL),
(263, '162.156.245.52', '2022-02-12 20:27:38', 1, '2022-02-12 12:27:38', NULL),
(264, '93.158.161.70', '2022-02-13 03:41:50', 1, '2022-02-12 19:41:50', NULL),
(265, '35.86.223.131', '2022-02-13 22:48:44', 1, '2022-02-13 14:48:44', NULL),
(266, '128.31.0.13', '2022-02-14 16:20:03', 1, '2022-02-14 08:20:03', NULL),
(267, '51.158.124.23', '2022-02-15 04:38:27', 1, '2022-02-14 20:38:27', NULL),
(268, '185.119.81.104', '2022-02-15 05:44:51', 1, '2022-02-14 21:44:51', '2022-02-14 21:44:58'),
(269, '66.249.71.10', '2022-02-15 18:58:17', 1, '2022-02-15 10:58:17', '2022-05-13 08:17:26'),
(270, '51.15.195.246', '2022-02-17 00:23:41', 1, '2022-02-16 16:23:41', NULL),
(271, '77.88.5.166', '2022-02-17 02:22:58', 1, '2022-02-16 18:22:58', NULL),
(272, '51.158.109.3', '2022-02-17 02:41:01', 1, '2022-02-16 18:41:01', NULL),
(273, '221.130.37.213', '2022-02-17 21:39:06', 1, '2022-02-17 13:39:06', NULL),
(274, '35.243.207.89', '2022-02-18 11:50:57', 1, '2022-02-18 03:50:57', NULL),
(275, '54.36.148.124', '2022-02-19 05:12:09', 1, '2022-02-18 21:12:09', '2022-05-01 20:23:56'),
(276, '14.3.188.31', '2022-02-19 09:53:59', 1, '2022-02-19 01:53:59', '2022-05-17 17:47:04'),
(277, '133.201.148.0', '2022-02-19 11:11:47', 1, '2022-02-19 03:11:47', '2022-03-13 07:01:41'),
(278, '66.249.71.14', '2022-02-19 12:29:30', 1, '2022-02-19 04:29:30', '2022-05-12 04:19:44'),
(279, '14.3.188.31', '2022-02-20 00:12:58', 1, '2022-02-19 16:12:58', '2022-05-17 17:47:04'),
(280, '133.201.148.0', '2022-02-20 00:38:22', 1, '2022-02-19 16:38:22', '2022-03-13 07:01:41'),
(281, '17.121.114.164', '2022-02-20 01:56:38', 1, '2022-02-19 17:56:38', NULL),
(282, '14.3.188.31', '2022-02-20 06:08:48', 1, '2022-02-19 22:08:48', '2022-05-17 17:47:04'),
(283, '133.201.148.0', '2022-02-20 07:07:30', 1, '2022-02-19 23:07:30', '2022-03-13 07:01:41'),
(284, '69.171.231.1', '2022-02-20 13:56:21', 1, '2022-02-20 05:56:21', '2022-04-20 00:17:28'),
(285, '34.77.162.3', '2022-02-21 23:06:48', 1, '2022-02-21 15:06:48', NULL),
(286, '34.86.35.31', '2022-02-22 21:26:59', 1, '2022-02-22 13:26:59', NULL),
(287, '180.235.60.232', '2022-02-24 08:26:30', 1, '2022-02-24 00:26:30', '2022-05-17 00:50:20'),
(288, '34.96.130.5', '2022-02-24 22:37:10', 1, '2022-02-24 14:37:10', NULL),
(289, '103.140.113.236', '2022-02-25 08:12:43', 1, '2022-02-25 00:12:43', '2022-02-25 00:12:54'),
(290, '210.139.253.4', '2022-02-25 08:12:46', 1, '2022-02-25 00:12:46', NULL),
(291, '210.253.46.70', '2022-02-25 08:12:47', 1, '2022-02-25 00:12:47', NULL),
(292, '103.140.113.236', '2022-02-25 08:12:54', 1, '2022-02-25 00:12:54', NULL),
(293, '66.249.71.14', '2022-02-25 15:10:14', 1, '2022-02-25 07:10:14', '2022-05-12 04:19:44'),
(294, '66.249.71.10', '2022-02-25 16:49:13', 1, '2022-02-25 08:49:13', '2022-05-13 08:17:26'),
(295, '66.249.71.14', '2022-02-25 16:50:07', 1, '2022-02-25 08:50:07', '2022-05-12 04:19:44'),
(296, '66.249.71.6', '2022-02-25 16:50:41', 1, '2022-02-25 08:50:41', '2022-05-12 02:15:07'),
(297, '34.96.130.0', '2022-02-25 19:03:05', 1, '2022-02-25 11:03:05', NULL),
(298, '92.118.160.13', '2022-02-26 21:14:09', 1, '2022-02-26 13:14:09', NULL),
(299, '124.223.60.26', '2022-02-27 22:41:06', 1, '2022-02-27 14:41:06', '2022-05-05 07:35:18'),
(300, '34.86.35.8', '2022-02-28 23:56:45', 1, '2022-02-28 15:56:45', NULL),
(301, '14.3.188.31', '2022-03-01 09:03:30', 1, '2022-03-01 01:03:30', '2022-05-17 17:47:04'),
(302, '133.201.148.0', '2022-03-01 12:05:32', 1, '2022-03-01 04:05:32', '2022-03-13 07:01:41'),
(303, '66.220.149.1', '2022-03-01 12:06:06', 1, '2022-03-01 04:06:06', NULL),
(304, '66.220.149.33', '2022-03-01 12:06:08', 1, '2022-03-01 04:06:08', NULL),
(305, '14.3.188.31', '2022-03-01 12:08:39', 1, '2022-03-01 04:08:39', '2022-05-17 17:47:04'),
(306, '14.3.188.31', '2022-03-01 12:08:39', 1, '2022-03-01 04:08:39', '2022-05-17 17:47:04'),
(307, '34.96.130.4', '2022-03-02 02:36:51', 1, '2022-03-01 18:36:51', NULL),
(308, '14.3.188.31', '2022-03-03 00:34:26', 1, '2022-03-02 16:34:26', '2022-05-17 17:47:04'),
(309, '180.163.220.66', '2022-03-03 03:08:24', 1, '2022-03-02 19:08:24', NULL),
(310, '42.236.10.93', '2022-03-03 03:24:52', 1, '2022-03-02 19:24:52', NULL),
(311, '35.81.164.198', '2022-03-03 22:20:53', 1, '2022-03-03 14:20:53', NULL),
(312, '34.77.162.0', '2022-03-04 02:34:43', 1, '2022-03-03 18:34:43', NULL),
(313, '34.77.162.6', '2022-03-04 12:29:38', 1, '2022-03-04 04:29:38', NULL),
(314, '34.86.35.20', '2022-03-05 09:32:57', 1, '2022-03-05 01:32:57', NULL),
(315, '185.191.171.15', '2022-03-05 09:58:23', 1, '2022-03-05 01:58:23', NULL),
(316, '54.36.148.124', '2022-03-05 19:11:13', 1, '2022-03-05 11:11:13', '2022-05-01 20:23:56'),
(317, '17.121.114.134', '2022-03-06 07:58:21', 1, '2022-03-05 23:58:21', NULL),
(318, '173.252.95.11', '2022-03-06 14:10:17', 1, '2022-03-06 06:10:17', NULL),
(319, '173.252.95.18', '2022-03-06 14:10:19', 1, '2022-03-06 06:10:19', NULL),
(320, '133.201.148.0', '2022-03-06 14:24:24', 1, '2022-03-06 06:24:24', '2022-03-13 07:01:41'),
(321, '52.12.176.204', '2022-03-09 00:56:23', 1, '2022-03-08 16:56:23', NULL),
(322, '34.86.35.19', '2022-03-09 02:29:13', 1, '2022-03-08 18:29:13', NULL),
(323, '180.235.60.232', '2022-03-09 08:17:24', 1, '2022-03-09 00:17:24', '2022-05-17 00:50:20'),
(324, '167.248.133.44', '2022-03-09 14:40:12', 1, '2022-03-09 06:40:12', '2022-03-09 06:40:12'),
(325, '143.92.56.239', '2022-03-09 14:51:39', 1, '2022-03-09 06:51:39', '2022-04-02 05:30:43'),
(326, '138.197.98.232', '2022-03-10 03:01:22', 1, '2022-03-09 19:01:22', NULL),
(327, '64.225.54.35', '2022-03-10 05:41:03', 1, '2022-03-09 21:41:03', NULL),
(328, '34.86.35.23', '2022-03-11 06:53:56', 1, '2022-03-10 22:53:56', NULL),
(329, '17.121.115.129', '2022-03-11 20:23:45', 1, '2022-03-11 12:23:45', NULL),
(330, '157.55.39.59', '2022-03-13 03:25:53', 1, '2022-03-12 19:25:53', NULL),
(331, '133.201.148.0', '2022-03-13 15:01:41', 1, '2022-03-13 07:01:41', NULL),
(332, '66.249.71.6', '2022-03-14 00:48:37', 1, '2022-03-13 16:48:37', '2022-05-12 02:15:07'),
(333, '157.55.39.52', '2022-03-14 01:48:38', 1, '2022-03-13 17:48:38', '2022-03-26 21:50:17'),
(334, '66.249.71.6', '2022-03-14 04:06:18', 1, '2022-03-13 20:06:18', '2022-05-12 02:15:07'),
(335, '23.82.33.65', '2022-03-14 05:34:33', 1, '2022-03-13 21:34:33', NULL),
(336, '180.235.60.232', '2022-03-14 06:09:47', 1, '2022-03-13 22:09:47', '2022-05-17 00:50:20'),
(337, '157.55.39.52', '2022-03-14 11:38:46', 1, '2022-03-14 03:38:46', '2022-03-26 21:50:17'),
(338, '34.77.162.29', '2022-03-15 10:18:41', 1, '2022-03-15 02:18:41', NULL),
(339, '157.55.39.52', '2022-03-15 10:23:30', 1, '2022-03-15 02:23:30', '2022-03-26 21:50:17'),
(340, '216.244.66.229', '2022-03-15 14:27:30', 1, '2022-03-15 06:27:30', NULL),
(341, '157.55.39.52', '2022-03-15 23:18:55', 1, '2022-03-15 15:18:55', '2022-03-26 21:50:17'),
(342, '143.92.56.239', '2022-03-16 09:58:24', 1, '2022-03-16 01:58:24', '2022-04-02 05:30:43'),
(343, '157.55.39.52', '2022-03-16 22:05:30', 1, '2022-03-16 14:05:30', '2022-03-26 21:50:17'),
(344, '104.45.194.225', '2022-03-17 00:22:27', 1, '2022-03-16 16:22:27', NULL),
(345, '51.158.118.231', '2022-03-17 03:17:07', 1, '2022-03-16 19:17:07', NULL),
(346, '157.55.39.52', '2022-03-17 07:53:30', 1, '2022-03-16 23:53:30', '2022-03-26 21:50:17'),
(347, '27.124.45.75', '2022-03-17 15:27:01', 1, '2022-03-17 07:27:01', '2022-03-20 16:46:10'),
(348, '157.55.39.52', '2022-03-17 20:52:52', 1, '2022-03-17 12:52:52', '2022-03-26 21:50:17'),
(349, '34.77.162.27', '2022-03-17 21:42:44', 1, '2022-03-17 13:42:44', NULL),
(350, '157.55.39.52', '2022-03-18 06:14:46', 1, '2022-03-17 22:14:46', '2022-03-26 21:50:17'),
(351, '35.243.151.212', '2022-03-18 15:53:30', 1, '2022-03-18 07:53:30', NULL),
(352, '54.75.190.163', '2022-03-18 17:17:23', 1, '2022-03-18 09:17:23', NULL),
(353, '157.55.39.52', '2022-03-18 19:41:34', 1, '2022-03-18 11:41:34', '2022-03-26 21:50:17'),
(354, '173.252.83.9', '2022-03-19 18:38:06', 1, '2022-03-19 10:38:06', NULL),
(355, '54.36.148.124', '2022-03-20 01:33:00', 1, '2022-03-19 17:33:00', '2022-05-01 20:23:56'),
(356, '157.55.39.52', '2022-03-20 03:42:31', 1, '2022-03-19 19:42:31', '2022-03-26 21:50:17'),
(357, '17.121.114.180', '2022-03-20 10:15:45', 1, '2022-03-20 02:15:45', NULL),
(358, '14.3.188.31', '2022-03-20 13:17:46', 1, '2022-03-20 05:17:46', '2022-05-17 17:47:04'),
(359, '157.55.39.52', '2022-03-20 13:30:19', 1, '2022-03-20 05:30:19', '2022-03-26 21:50:17'),
(360, '27.124.45.75', '2022-03-21 00:46:10', 1, '2022-03-20 16:46:10', NULL),
(361, '157.55.39.52', '2022-03-21 04:23:47', 1, '2022-03-20 20:23:47', '2022-03-26 21:50:17'),
(362, '212.115.42.246', '2022-03-21 12:37:18', 1, '2022-03-21 04:37:18', NULL),
(363, '14.3.188.31', '2022-03-22 12:41:38', 1, '2022-03-22 04:41:38', '2022-05-17 17:47:04'),
(364, '35.187.176.112', '2022-03-23 20:08:19', 1, '2022-03-23 12:08:19', NULL),
(365, '221.130.37.188', '2022-03-24 04:16:41', 1, '2022-03-23 20:16:41', NULL),
(366, '66.249.71.14', '2022-03-25 15:18:03', 1, '2022-03-25 07:18:03', '2022-05-12 04:19:44'),
(367, '66.249.71.10', '2022-03-25 15:29:29', 1, '2022-03-25 07:29:29', '2022-05-13 08:17:26'),
(368, '66.249.71.6', '2022-03-25 15:38:37', 1, '2022-03-25 07:38:37', '2022-05-12 02:15:07'),
(369, '17.121.114.91', '2022-03-25 17:17:39', 1, '2022-03-25 09:17:39', NULL),
(370, '42.192.173.236', '2022-03-25 22:12:28', 1, '2022-03-25 14:12:28', NULL),
(371, '157.55.39.52', '2022-03-27 05:50:17', 1, '2022-03-26 21:50:17', NULL),
(372, '222.186.175.12', '2022-03-28 19:20:39', 1, '2022-03-28 11:20:39', NULL),
(373, '66.249.71.6', '2022-03-29 03:32:40', 1, '2022-03-28 19:32:40', '2022-05-12 02:15:07'),
(374, '66.249.71.14', '2022-03-29 14:22:39', 1, '2022-03-29 06:22:39', '2022-05-12 04:19:44'),
(375, '66.249.71.10', '2022-03-30 04:09:12', 1, '2022-03-29 20:09:12', '2022-05-13 08:17:26'),
(376, '49.36.176.59', '2022-03-30 05:37:11', 1, '2022-03-29 21:37:11', NULL),
(377, '103.159.44.186', '2022-03-30 05:59:16', 1, '2022-03-29 21:59:16', '2022-03-29 21:59:16'),
(378, '66.249.71.6', '2022-03-31 02:06:24', 1, '2022-03-30 18:06:24', '2022-05-12 02:15:07'),
(379, '69.171.231.117', '2022-03-31 03:24:33', 1, '2022-03-30 19:24:33', '2022-04-10 07:56:27'),
(380, '69.171.231.119', '2022-03-31 03:24:34', 1, '2022-03-30 19:24:34', '2022-04-22 22:20:25'),
(381, '14.3.188.31', '2022-03-31 03:28:26', 1, '2022-03-30 19:28:26', '2022-05-17 17:47:04'),
(382, '31.13.115.13', '2022-03-31 03:51:52', 1, '2022-03-30 19:51:52', NULL),
(383, '173.252.127.5', '2022-03-31 04:49:55', 1, '2022-03-30 20:49:55', NULL),
(384, '192.99.18.136', '2022-03-31 09:00:15', 1, '2022-03-31 01:00:15', '2022-04-28 18:23:39'),
(385, '173.252.95.10', '2022-03-31 09:22:37', 1, '2022-03-31 01:22:37', '2022-04-01 19:49:22'),
(386, '126.47.153.89', '2022-03-31 14:09:22', 1, '2022-03-31 06:09:22', NULL),
(387, '124.223.60.26', '2022-03-31 19:44:52', 1, '2022-03-31 11:44:52', '2022-05-05 07:35:18'),
(388, '66.249.71.6', '2022-03-31 21:28:44', 1, '2022-03-31 13:28:44', '2022-05-12 02:15:07'),
(389, '66.249.71.14', '2022-03-31 21:58:47', 1, '2022-03-31 13:58:47', '2022-05-12 04:19:44'),
(390, '126.233.79.219', '2022-04-01 02:04:15', 1, '2022-03-31 18:04:15', NULL),
(391, '69.171.231.117', '2022-04-02 02:11:04', 1, '2022-04-01 18:11:04', '2022-04-10 07:56:27'),
(392, '69.171.231.1', '2022-04-02 02:11:04', 1, '2022-04-01 18:11:04', '2022-04-20 00:17:28'),
(393, '69.171.231.119', '2022-04-02 02:11:05', 1, '2022-04-01 18:11:05', '2022-04-22 22:20:25'),
(394, '69.171.231.116', '2022-04-02 02:11:06', 1, '2022-04-01 18:11:06', '2022-04-21 04:02:44'),
(395, '69.171.231.3', '2022-04-02 02:11:10', 1, '2022-04-01 18:11:10', NULL),
(396, '69.171.231.1', '2022-04-02 02:11:12', 1, '2022-04-01 18:11:12', '2022-04-20 00:17:28'),
(397, '173.252.95.10', '2022-04-02 03:49:22', 1, '2022-04-01 19:49:22', NULL),
(398, '173.252.107.17', '2022-04-02 03:49:57', 1, '2022-04-01 19:49:57', NULL),
(399, '31.13.127.116', '2022-04-02 06:33:55', 1, '2022-04-01 22:33:55', NULL),
(400, '31.13.127.25', '2022-04-02 06:34:31', 1, '2022-04-01 22:34:31', NULL),
(401, '143.92.56.239', '2022-04-02 13:30:43', 1, '2022-04-02 05:30:43', NULL),
(402, '17.121.112.109', '2022-04-03 01:41:46', 1, '2022-04-02 17:41:46', NULL),
(403, '173.252.83.19', '2022-04-03 06:56:56', 1, '2022-04-02 22:56:56', NULL),
(404, '173.252.83.7', '2022-04-03 06:56:56', 1, '2022-04-02 22:56:56', NULL),
(405, '173.252.87.120', '2022-04-03 07:10:04', 1, '2022-04-02 23:10:04', NULL),
(406, '34.74.130.16', '2022-04-03 08:50:44', 1, '2022-04-03 00:50:44', NULL),
(407, '66.220.149.13', '2022-04-03 18:00:19', 1, '2022-04-03 10:00:19', NULL),
(408, '66.220.149.12', '2022-04-03 18:00:54', 1, '2022-04-03 10:00:54', NULL),
(409, '54.36.148.124', '2022-04-03 18:42:55', 1, '2022-04-03 10:42:55', '2022-05-01 20:23:56'),
(410, '5.45.207.143', '2022-04-04 03:18:32', 1, '2022-04-03 19:18:32', NULL),
(411, '66.220.149.17', '2022-04-04 13:12:06', 1, '2022-04-04 05:12:06', NULL),
(412, '66.220.149.7', '2022-04-04 13:12:07', 1, '2022-04-04 05:12:07', NULL),
(413, '69.160.160.60', '2022-04-05 16:02:39', 1, '2022-04-05 08:02:39', NULL),
(414, '64.225.56.253', '2022-04-05 20:34:27', 1, '2022-04-05 12:34:27', NULL),
(415, '138.197.100.107', '2022-04-05 21:37:53', 1, '2022-04-05 13:37:53', NULL),
(416, '72.55.136.154', '2022-04-06 09:22:56', 1, '2022-04-06 01:22:56', '2022-04-06 01:22:59'),
(417, '69.171.231.116', '2022-04-06 12:43:57', 1, '2022-04-06 04:43:57', '2022-04-21 04:02:44'),
(418, '69.171.231.4', '2022-04-06 12:43:58', 1, '2022-04-06 04:43:58', '2022-05-03 03:12:35'),
(419, '111.13.63.122', '2022-04-06 15:16:04', 1, '2022-04-06 07:16:04', NULL),
(420, '66.220.149.19', '2022-04-07 03:57:55', 1, '2022-04-06 19:57:55', NULL),
(421, '173.252.127.28', '2022-04-07 03:58:33', 1, '2022-04-06 19:58:33', NULL),
(422, '74.125.151.72', '2022-04-07 06:28:17', 1, '2022-04-06 22:28:17', NULL),
(423, '3.133.141.11', '2022-04-07 11:40:04', 1, '2022-04-07 03:40:04', NULL),
(424, '122.138.92.26', '2022-04-07 17:42:31', 1, '2022-04-07 09:42:31', NULL),
(425, '175.31.228.219', '2022-04-07 17:42:32', 1, '2022-04-07 09:42:32', NULL),
(426, '14.3.188.31', '2022-04-08 13:00:34', 1, '2022-04-08 05:00:34', '2022-05-17 17:47:04'),
(427, '66.249.71.6', '2022-04-09 03:54:37', 1, '2022-04-08 19:54:37', '2022-05-12 02:15:07'),
(428, '66.249.71.14', '2022-04-09 04:08:14', 1, '2022-04-08 20:08:14', '2022-05-12 04:19:44'),
(429, '69.171.231.117', '2022-04-09 07:06:34', 1, '2022-04-08 23:06:34', '2022-04-10 07:56:27'),
(430, '66.249.71.14', '2022-04-09 09:36:29', 1, '2022-04-09 01:36:29', '2022-05-12 04:19:44'),
(431, '124.223.60.26', '2022-04-09 13:33:29', 1, '2022-04-09 05:33:29', '2022-05-05 07:35:18'),
(432, '111.13.63.124', '2022-04-09 15:20:39', 1, '2022-04-09 07:20:39', NULL),
(433, '106.75.32.201', '2022-04-09 21:14:52', 1, '2022-04-09 13:14:52', NULL),
(434, '69.171.231.2', '2022-04-10 15:56:27', 1, '2022-04-10 07:56:27', '2022-04-20 00:17:28'),
(435, '69.171.231.117', '2022-04-10 15:56:27', 1, '2022-04-10 07:56:27', NULL),
(436, '139.155.243.177', '2022-04-11 02:52:25', 1, '2022-04-10 18:52:25', NULL),
(437, '66.249.71.10', '2022-04-11 11:15:20', 1, '2022-04-11 03:15:20', '2022-05-13 08:17:26'),
(438, '66.249.71.14', '2022-04-11 11:28:35', 1, '2022-04-11 03:28:35', '2022-05-12 04:19:44'),
(439, '66.249.71.10', '2022-04-12 02:40:57', 1, '2022-04-11 18:40:57', '2022-05-13 08:17:26'),
(440, '54.241.90.25', '2022-04-13 07:37:27', 1, '2022-04-12 23:37:27', NULL),
(441, '66.249.71.6', '2022-04-14 02:59:46', 1, '2022-04-13 18:59:46', '2022-05-12 02:15:07'),
(442, '175.31.228.248', '2022-04-14 13:28:13', 1, '2022-04-14 05:28:13', NULL),
(443, '66.249.71.10', '2022-04-14 13:58:23', 1, '2022-04-14 05:58:23', '2022-05-13 08:17:26'),
(444, '185.191.171.9', '2022-04-14 14:02:33', 1, '2022-04-14 06:02:33', NULL),
(445, '66.249.71.14', '2022-04-14 21:31:41', 1, '2022-04-14 13:31:41', '2022-05-12 04:19:44'),
(446, '72.14.199.13', '2022-04-15 09:21:24', 1, '2022-04-15 01:21:24', NULL),
(447, '14.3.188.31', '2022-04-15 12:32:05', 1, '2022-04-15 04:32:05', '2022-05-17 17:47:04'),
(448, '173.252.79.13', '2022-04-15 17:58:11', 1, '2022-04-15 09:58:11', NULL),
(449, '17.121.115.67', '2022-04-15 19:46:38', 1, '2022-04-15 11:46:38', NULL),
(450, '185.191.171.3', '2022-04-16 17:47:49', 1, '2022-04-16 09:47:49', NULL),
(451, '104.196.165.78', '2022-04-17 05:48:59', 1, '2022-04-16 21:48:59', NULL),
(452, '202.84.33.98', '2022-04-17 17:38:37', 1, '2022-04-17 09:38:37', NULL),
(453, '54.36.148.124', '2022-04-18 00:32:11', 1, '2022-04-17 16:32:11', '2022-05-01 20:23:56'),
(454, '180.235.60.232', '2022-04-18 05:42:31', 1, '2022-04-17 21:42:31', '2022-05-17 00:50:20'),
(455, '14.3.188.31', '2022-04-18 06:12:53', 1, '2022-04-17 22:12:53', '2022-05-17 17:47:04'),
(456, '151.106.120.184', '2022-04-18 07:09:15', 1, '2022-04-17 23:09:15', '2022-04-17 23:09:17'),
(457, '14.3.188.31', '2022-04-18 07:20:24', 1, '2022-04-17 23:20:24', '2022-05-17 17:47:04'),
(458, '51.255.62.9', '2022-04-18 10:05:09', 1, '2022-04-18 02:05:09', NULL),
(459, '219.76.137.192', '2022-04-18 11:17:51', 1, '2022-04-18 03:17:51', '2022-04-21 02:34:56'),
(460, '51.254.49.104', '2022-04-18 13:04:38', 1, '2022-04-18 05:04:38', NULL),
(461, '69.171.251.18', '2022-04-18 13:16:10', 1, '2022-04-18 05:16:10', '2022-04-18 09:38:54'),
(462, '69.171.251.12', '2022-04-18 13:16:10', 1, '2022-04-18 05:16:10', NULL),
(463, '69.171.251.7', '2022-04-18 13:16:10', 1, '2022-04-18 05:16:10', NULL),
(464, '69.171.251.3', '2022-04-18 13:16:11', 1, '2022-04-18 05:16:11', NULL),
(465, '69.171.249.24', '2022-04-18 13:16:48', 1, '2022-04-18 05:16:48', NULL),
(466, '173.252.95.5', '2022-04-18 14:23:08', 1, '2022-04-18 06:23:08', NULL),
(467, '173.252.107.19', '2022-04-18 14:23:53', 1, '2022-04-18 06:23:53', NULL),
(468, '69.171.251.18', '2022-04-18 17:38:54', 1, '2022-04-18 09:38:54', NULL),
(469, '69.171.249.8', '2022-04-18 17:39:33', 1, '2022-04-18 09:39:33', NULL),
(470, '35.237.199.72', '2022-04-18 19:23:26', 1, '2022-04-18 11:23:26', NULL),
(471, '124.223.60.26', '2022-04-19 03:02:26', 1, '2022-04-18 19:02:26', '2022-05-05 07:35:18'),
(472, '69.171.231.4', '2022-04-19 03:40:12', 1, '2022-04-18 19:40:12', '2022-05-03 03:12:35'),
(473, '69.171.231.118', '2022-04-19 03:40:12', 1, '2022-04-18 19:40:12', NULL),
(474, '69.171.231.2', '2022-04-19 03:40:24', 1, '2022-04-18 19:40:24', '2022-04-20 00:17:28'),
(475, '69.171.231.4', '2022-04-19 03:40:25', 1, '2022-04-18 19:40:25', '2022-05-03 03:12:35'),
(476, '103.140.113.238', '2022-04-19 08:47:48', 1, '2022-04-19 00:47:48', '2022-04-19 05:14:40'),
(477, '69.171.251.22', '2022-04-19 13:05:04', 1, '2022-04-19 05:05:04', NULL),
(478, '69.63.189.119', '2022-04-19 13:05:39', 1, '2022-04-19 05:05:39', NULL),
(479, '103.140.113.238', '2022-04-19 13:14:40', 1, '2022-04-19 05:14:40', NULL),
(480, '180.235.60.232', '2022-04-20 07:10:16', 1, '2022-04-19 23:10:16', '2022-05-17 00:50:20'),
(481, '69.171.231.4', '2022-04-20 08:17:27', 1, '2022-04-20 00:17:27', '2022-05-03 03:12:35'),
(482, '69.171.231.1', '2022-04-20 08:17:28', 1, '2022-04-20 00:17:28', NULL),
(483, '69.171.231.120', '2022-04-20 08:17:28', 1, '2022-04-20 00:17:28', '2022-04-20 00:17:29'),
(484, '69.171.231.2', '2022-04-20 08:17:28', 1, '2022-04-20 00:17:28', NULL),
(485, '173.252.83.8', '2022-04-20 08:17:28', 1, '2022-04-20 00:17:28', NULL),
(486, '69.171.231.4', '2022-04-20 08:17:28', 1, '2022-04-20 00:17:28', '2022-05-03 03:12:35'),
(487, '69.171.231.120', '2022-04-20 08:17:29', 1, '2022-04-20 00:17:29', NULL),
(488, '66.249.71.6', '2022-04-20 12:32:42', 1, '2022-04-20 04:32:42', '2022-05-12 02:15:07'),
(489, '66.249.71.14', '2022-04-20 12:32:42', 1, '2022-04-20 04:32:42', '2022-05-12 04:19:44'),
(490, '69.171.251.2', '2022-04-20 19:33:59', 1, '2022-04-20 11:33:59', NULL),
(491, '69.63.184.4', '2022-04-20 19:34:36', 1, '2022-04-20 11:34:36', NULL),
(492, '69.171.249.5', '2022-04-21 09:45:55', 1, '2022-04-21 01:45:55', NULL),
(493, '69.171.249.11', '2022-04-21 09:45:56', 1, '2022-04-21 01:45:56', NULL),
(494, '219.76.137.192', '2022-04-21 10:34:56', 1, '2022-04-21 02:34:56', NULL),
(495, '52.58.232.56', '2022-04-21 10:59:25', 1, '2022-04-21 02:59:25', NULL),
(496, '69.171.231.116', '2022-04-21 12:02:44', 1, '2022-04-21 04:02:44', NULL),
(497, '165.22.71.66', '2022-04-21 21:18:22', 1, '2022-04-21 13:18:22', NULL),
(498, '54.74.197.90', '2022-04-22 03:03:20', 1, '2022-04-21 19:03:20', NULL),
(499, '114.31.1.70', '2022-04-22 05:28:39', 1, '2022-04-21 21:28:39', NULL),
(500, '103.21.42.196', '2022-04-22 05:28:40', 1, '2022-04-21 21:28:40', NULL),
(501, '211.1.149.4', '2022-04-22 05:28:41', 1, '2022-04-21 21:28:41', NULL),
(502, '219.117.33.69', '2022-04-22 05:28:47', 1, '2022-04-21 21:28:47', NULL),
(503, '45.118.245.70', '2022-04-22 05:29:20', 1, '2022-04-21 21:29:20', NULL),
(504, '180.235.60.232', '2022-04-22 06:34:09', 1, '2022-04-21 22:34:09', '2022-05-17 00:50:20'),
(505, '198.235.24.13', '2022-04-22 10:02:41', 1, '2022-04-22 02:02:41', NULL),
(506, '198.235.24.3', '2022-04-22 10:30:09', 1, '2022-04-22 02:30:09', NULL),
(507, '69.171.231.4', '2022-04-23 06:20:22', 1, '2022-04-22 22:20:22', '2022-05-03 03:12:35'),
(508, '69.171.231.119', '2022-04-23 06:20:25', 1, '2022-04-22 22:20:25', NULL),
(509, '74.125.150.22', '2022-04-23 16:16:05', 1, '2022-04-23 08:16:05', NULL),
(510, '35.237.231.239', '2022-04-24 23:54:44', 1, '2022-04-24 15:54:44', NULL),
(511, '182.1.196.124', '2022-04-25 00:01:15', 1, '2022-04-24 16:01:15', NULL),
(512, '198.235.24.22', '2022-04-25 21:58:31', 1, '2022-04-25 13:58:31', NULL),
(513, '198.235.24.137', '2022-04-26 04:42:00', 1, '2022-04-25 20:42:00', NULL),
(514, '51.158.108.61', '2022-04-26 11:29:39', 1, '2022-04-26 03:29:39', NULL),
(515, '14.3.188.31', '2022-04-27 06:53:35', 1, '2022-04-26 22:53:35', '2022-05-17 17:47:04'),
(516, '66.220.149.15', '2022-04-27 16:32:01', 1, '2022-04-27 08:32:01', NULL),
(517, '66.220.149.30', '2022-04-27 16:32:02', 1, '2022-04-27 08:32:02', NULL),
(518, '167.248.133.61', '2022-04-27 20:43:04', 1, '2022-04-27 12:43:04', '2022-04-27 12:43:05'),
(519, '180.235.60.232', '2022-04-28 02:14:14', 1, '2022-04-27 18:14:14', '2022-05-17 00:50:20'),
(520, '66.249.71.10', '2022-04-28 02:49:53', 1, '2022-04-27 18:49:53', '2022-05-13 08:17:26'),
(521, '180.235.60.232', '2022-04-28 03:06:48', 1, '2022-04-27 19:06:48', '2022-05-17 00:50:20'),
(522, '66.249.71.14', '2022-04-28 05:44:34', 1, '2022-04-27 21:44:34', '2022-05-12 04:19:44'),
(523, '180.235.60.232', '2022-04-28 05:51:07', 1, '2022-04-27 21:51:07', '2022-05-17 00:50:20'),
(524, '192.99.18.136', '2022-04-29 02:23:28', 1, '2022-04-28 18:23:28', '2022-04-28 18:23:39'),
(525, '205.210.31.137', '2022-04-29 05:36:44', 1, '2022-04-28 21:36:44', NULL),
(526, '167.248.133.62', '2022-04-29 18:12:43', 1, '2022-04-29 10:12:43', '2022-04-29 10:12:43'),
(527, '205.210.31.18', '2022-04-29 21:12:55', 1, '2022-04-29 13:12:55', NULL),
(528, '173.252.79.9', '2022-04-29 23:38:13', 1, '2022-04-29 15:38:13', NULL),
(529, '173.252.95.117', '2022-04-30 07:32:18', 1, '2022-04-29 23:32:18', NULL),
(530, '173.252.107.13', '2022-04-30 07:32:56', 1, '2022-04-29 23:32:56', NULL),
(531, '173.252.87.9', '2022-04-30 08:58:12', 1, '2022-04-30 00:58:12', NULL),
(532, '69.171.251.13', '2022-04-30 08:58:47', 1, '2022-04-30 00:58:47', NULL),
(533, '163.172.148.199', '2022-04-30 10:26:48', 1, '2022-04-30 02:26:48', NULL),
(534, '173.252.107.23', '2022-04-30 14:17:00', 1, '2022-04-30 06:17:00', NULL),
(535, '72.14.199.182', '2022-05-02 00:22:42', 1, '2022-05-01 16:22:42', '2022-05-10 10:38:34'),
(536, '66.249.71.6', '2022-05-02 00:23:21', 1, '2022-05-01 16:23:21', '2022-05-12 02:15:07'),
(537, '66.249.71.14', '2022-05-02 00:23:21', 1, '2022-05-01 16:23:21', '2022-05-12 04:19:44'),
(538, '180.235.60.232', '2022-05-02 02:31:32', 1, '2022-05-01 18:31:32', '2022-05-17 00:50:20'),
(539, '54.36.148.124', '2022-05-02 04:23:56', 1, '2022-05-01 20:23:56', NULL),
(540, '124.223.60.26', '2022-05-02 06:30:26', 1, '2022-05-01 22:30:26', '2022-05-05 07:35:18'),
(541, '180.235.60.232', '2022-05-02 07:26:32', 1, '2022-05-01 23:26:32', '2022-05-17 00:50:20'),
(542, '69.63.184.5', '2022-05-02 08:05:43', 1, '2022-05-02 00:05:43', NULL),
(543, '142.54.177.163', '2022-05-02 19:18:10', 1, '2022-05-02 11:18:10', NULL),
(544, '161.35.135.135', '2022-05-03 08:34:07', 1, '2022-05-03 00:34:07', NULL),
(545, '69.171.231.4', '2022-05-03 11:12:35', 1, '2022-05-03 03:12:35', NULL),
(546, '205.210.31.11', '2022-05-03 23:55:26', 1, '2022-05-03 15:55:26', NULL),
(547, '198.235.24.151', '2022-05-04 01:59:43', 1, '2022-05-03 17:59:43', NULL),
(548, '2.58.149.15', '2022-05-04 04:51:53', 1, '2022-05-03 20:51:53', NULL),
(549, '121.2.147.145', '2022-05-04 10:53:41', 1, '2022-05-04 02:53:41', NULL),
(550, '124.223.60.26', '2022-05-05 15:35:18', 1, '2022-05-05 07:35:18', NULL),
(551, '103.140.113.242', '2022-05-06 13:31:01', 1, '2022-05-06 05:31:01', NULL),
(552, '205.210.31.21', '2022-05-07 02:36:38', 1, '2022-05-06 18:36:38', NULL),
(553, '198.235.24.132', '2022-05-07 10:10:25', 1, '2022-05-07 02:10:25', NULL),
(554, '205.210.31.134', '2022-05-07 14:55:49', 1, '2022-05-07 06:55:49', NULL),
(555, '173.252.79.117', '2022-05-07 18:08:27', 1, '2022-05-07 10:08:27', NULL),
(556, '205.210.31.12', '2022-05-08 12:33:01', 1, '2022-05-08 04:33:01', NULL),
(557, '164.90.140.79', '2022-05-08 13:18:34', 1, '2022-05-08 05:18:34', NULL),
(558, '167.172.255.177', '2022-05-08 16:47:41', 1, '2022-05-08 08:47:41', NULL),
(559, '35.237.206.237', '2022-05-09 13:57:43', 1, '2022-05-09 05:57:43', NULL),
(560, '72.14.199.182', '2022-05-10 18:38:34', 1, '2022-05-10 10:38:34', NULL),
(561, '66.249.71.6', '2022-05-11 18:38:36', 1, '2022-05-11 10:38:36', '2022-05-12 02:15:07'),
(562, '66.249.71.10', '2022-05-11 20:53:31', 1, '2022-05-11 12:53:31', '2022-05-13 08:17:26'),
(563, '66.249.71.6', '2022-05-12 10:15:06', 1, '2022-05-12 02:15:06', '2022-05-12 02:15:07'),
(564, '66.249.71.14', '2022-05-12 12:19:44', 1, '2022-05-12 04:19:44', NULL),
(565, '66.249.71.10', '2022-05-13 01:34:14', 1, '2022-05-12 17:34:14', '2022-05-13 08:17:26'),
(566, '180.235.60.232', '2022-05-13 04:21:11', 1, '2022-05-12 20:21:11', '2022-05-17 00:50:20'),
(567, '66.249.71.10', '2022-05-13 16:17:26', 1, '2022-05-13 08:17:26', NULL),
(568, '35.188.63.26', '2022-05-14 01:00:37', 1, '2022-05-13 17:00:37', NULL),
(569, '3.127.85.26', '2022-05-14 03:00:16', 1, '2022-05-13 19:00:16', NULL),
(570, '157.55.39.199', '2022-05-15 04:12:31', 1, '2022-05-14 20:12:31', NULL),
(571, '17.121.114.162', '2022-05-15 08:28:51', 1, '2022-05-15 00:28:51', NULL),
(572, '3.144.158.235', '2022-05-15 11:20:13', 1, '2022-05-15 03:20:13', NULL),
(573, '180.235.60.232', '2022-05-16 04:54:55', 1, '2022-05-15 20:54:55', '2022-05-17 00:50:20'),
(574, '34.74.41.187', '2022-05-16 15:34:29', 1, '2022-05-16 07:34:29', NULL),
(575, '51.222.253.11', '2022-05-16 20:12:42', 1, '2022-05-16 12:12:42', NULL),
(576, '14.3.188.31', '2022-05-17 00:25:22', 1, '2022-05-16 16:25:22', '2022-05-17 17:47:04'),
(577, '180.235.60.232', '2022-05-17 06:26:07', 1, '2022-05-16 22:26:07', '2022-05-17 00:50:20'),
(578, '14.3.188.31', '2022-05-17 06:27:46', 1, '2022-05-16 22:27:46', '2022-05-17 17:47:04'),
(579, '180.235.60.232', '2022-05-17 08:25:54', 1, '2022-05-17 00:25:54', '2022-05-17 00:50:20'),
(580, '14.3.188.31', '2022-05-17 08:54:00', 1, '2022-05-17 00:54:00', '2022-05-17 17:47:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_mails`
--
ALTER TABLE `customer_mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_projects`
--
ALTER TABLE `our_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- Indexes for table `product_multiple_images`
--
ALTER TABLE `product_multiple_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_multiple_videos`
--
ALTER TABLE `product_multiple_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_mails`
--
ALTER TABLE `customer_mails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `our_projects`
--
ALTER TABLE `our_projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_multiple_images`
--
ALTER TABLE `product_multiple_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `product_multiple_videos`
--
ALTER TABLE `product_multiple_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=581;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
