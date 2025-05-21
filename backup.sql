-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 08, 2025 at 12:37 PM
-- Server version: 8.0.30
-- PHP Version: 8.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techcarefix`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint UNSIGNED NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `content`, `created_at`, `updated_at`) VALUES
(1, '<p data-start=\"415\" data-end=\"651\" class=\"\">Chào mừng bạn đến với Techcare !<br data-start=\"452\" data-end=\"455\">\r\nChúng tôi tự hào là địa chỉ mua sắm trực tuyến uy tín, chuyên cung cấp các sản phẩm về thiết bị điện tử chính hãng, chất lượng cao với giá cả hợp lý.</p><p data-start=\"653\" data-end=\"725\" class=\"\">Với phương châm <strong data-start=\"669\" data-end=\"698\">\"Khách hàng là trung tâm\"</strong>, Techcare cam kết:</p><ul data-start=\"726\" data-end=\"888\">\r\n<li data-start=\"726\" data-end=\"774\" class=\"\">\r\n<p data-start=\"728\" data-end=\"774\" class=\"\">Sản phẩm 100% chính hãng, rõ ràng nguồn gốc.</p>\r\n</li>\r\n<li data-start=\"775\" data-end=\"832\" class=\"\">\r\n<p data-start=\"777\" data-end=\"832\" class=\"\">Tư vấn tận tâm, giao hàng nhanh chóng trên toàn quốc.</p>\r\n</li>\r\n<li data-start=\"833\" data-end=\"888\" class=\"\">\r\n<p data-start=\"835\" data-end=\"888\" class=\"\">Chính sách đổi trả minh bạch, hỗ trợ khách hàng 24/7.</p>\r\n</li>\r\n</ul><p>\r\n\r\n\r\n</p><p data-start=\"890\" data-end=\"1108\" class=\"\">Chúng tôi không ngừng cập nhật các sản phẩm mới, mang đến cho bạn trải nghiệm mua sắm an toàn, tiện lợi ngay tại nhà.<br data-start=\"1007\" data-end=\"1010\">\r\nCảm ơn bạn đã tin tưởng và lựa chọn Techcare.<br data-start=\"1061\" data-end=\"1064\">\r\n<strong data-start=\"1064\" data-end=\"1108\">Chúng tôi rất hân hạnh được phục vụ bạn!</strong></p>', '2025-03-28 11:18:04', '2025-04-27 01:42:50');

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(4, 'homepage_section_banner_two', '{\"banner_one\":{\"banner_url\":\"banner 1\",\"status\":1,\"banner_image\":\"uploads\\/media_68197b8fc4db6.jpg\"},\"banner_two\":{\"banner_url\":\"banner 2\",\"status\":1,\"banner_image\":\"uploads\\/media_68197b8fc539a.jpg\"}}', '2025-03-24 03:18:57', '2025-05-05 20:01:35'),
(5, 'homepage_section_banner_three', '{\"banner_one\":{\"banner_url\":\"banner 1\",\"status\":1,\"banner_image\":\"uploads\\/media_68197bb6d8693.jpg\"},\"banner_two\":{\"banner_url\":\"banner 2\",\"status\":1,\"banner_image\":\"uploads\\/media_68197bb6d8bbe.jpg\"},\"banner_three\":{\"banner_url\":\"banner 3\",\"status\":1,\"banner_image\":\"uploads\\/media_68197bb6d90c0.jpg\"}}', '2025-03-24 04:15:19', '2025-05-05 20:02:14'),
(6, 'homepage_section_banner_four', '{\"banner_one\":{\"banner_url\":\"banner 4\",\"status\":0,\"banner_image\":\"uploads\\/media_67faa9aa9ae71.jfif\"}}', '2025-03-24 04:23:35', '2025-05-08 03:01:56'),
(7, 'homepage_section_banner_one', '{\"banner_one\":{\"banner_url\":\"banner 1\",\"status\":1,\"banner_image\":\"uploads\\/media_68197b7f8b7a4.jpg\"}}', '2025-03-24 04:24:37', '2025-05-05 20:01:19'),
(8, 'productpage_banner_section', '{\"banner_one\":{\"banner_url\":\"banner product\",\"status\":1,\"banner_image\":\"uploads\\/media_68197bf4b3668.jpg\"}}', '2025-03-24 06:35:48', '2025-05-05 20:03:16'),
(9, 'cartpage_banner_section', '{\"banner_one\":{\"banner_url\":\"banner 1\",\"status\":1,\"banner_image\":\"uploads\\/media_68197bd999908.jpg\"},\"banner_two\":{\"banner_url\":\"banner 2\",\"status\":1,\"banner_image\":\"uploads\\/media_68197bd999e0d.jpg\"}}', '2025-03-24 06:48:06', '2025-05-05 20:02:49');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `category_id` int NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `user_id`, `category_id`, `image`, `title`, `slug`, `description`, `seo_title`, `seo_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'uploads/media_67fab407ee675.jfif', 'Iphone 13 prooo', 'iphone-13-prooo', '<p><br></p><p>TechCare là đơn vị tiên phong trong lĩnh vực cung cấp các sản phẩm công nghệ chính hãng với giá cả cạnh tranh. Chúng tôi chuyên phân phối điện thoại, phụ kiện, đồ gia dụng thông minh và nhiều mặt hàng điện tử chất lượng cao.</p><p>Với phương châm \"Khách hàng là trung tâm\", TechCare luôn đặt trải nghiệm người dùng lên hàng đầu. Chúng tôi không ngừng cải tiến dịch vụ, tối ưu quy trình giao hàng và mở rộng chính sách bảo hành để mang lại sự yên tâm tối đa cho khách hàng.</p><p>Hãy đồng hành cùng TechCare để tận hưởng trải nghiệm mua sắm hiện đại, nhanh chóng và an toàn</p><div><br></div>', 'ggggggggggg', 'nnnnnnnnnnnnnnnnnnnnnn', 1, '2025-04-12 11:42:15', '2025-04-12 11:42:15'),
(2, 1, 2, 'uploads/media_6816d865e1e1b.jpg', 'iPhone 16 dòng sản phẩm mới nhất của nhà apple', 'iphone-16-dong-san-pham-moi-nhat-cua-nha-apple', '<p data-start=\"456\" data-end=\"513\" class=\"\"><strong data-start=\"456\" data-end=\"513\">iPhone 16 – Đỉnh cao công nghệ trong lòng bàn tay bạn</strong></p><p data-start=\"515\" data-end=\"690\" class=\"\">Apple tiếp tục khẳng định vị thế dẫn đầu trong ngành công nghệ với sự ra mắt của <strong data-start=\"596\" data-end=\"609\">iPhone 16</strong> – một bước tiến vượt bậc về cả thiết kế, hiệu năng lẫn trải nghiệm người dùng.</p><h4 data-start=\"692\" data-end=\"740\" class=\"\"><strong data-start=\"697\" data-end=\"738\">Thiết kế mới mỏng hơn, sang trọng hơn</strong></h4><p data-start=\"741\" data-end=\"1014\" class=\"\">iPhone 16 mang đến một thiết kế mới tinh gọn với viền mỏng hơn, chất liệu titan cao cấp, đồng thời giới thiệu thêm màu sắc mới như <strong data-start=\"872\" data-end=\"886\">Titan Blue</strong> và <strong data-start=\"890\" data-end=\"903\">Rose Gold</strong>. Mặt lưng kính mờ chống bám vân tay kết hợp hoàn hảo với khung titan, tạo nên một vẻ đẹp sang trọng và bền bỉ.</p><h4 data-start=\"1016\" data-end=\"1066\" class=\"\"><strong data-start=\"1021\" data-end=\"1064\">Hiệu năng vượt trội với chip A18 Bionic</strong></h4><p data-start=\"1067\" data-end=\"1324\" class=\"\">Được trang bị <strong data-start=\"1081\" data-end=\"1100\">chip A18 Bionic</strong> sản xuất trên tiến trình 3nm mới nhất, iPhone 16 mang đến tốc độ xử lý vượt trội, tiết kiệm pin và hỗ trợ tốt cho các tác vụ AI. Bạn có thể chỉnh sửa video 4K, chơi game đồ họa cao hay chạy đa nhiệm mượt mà hơn bao giờ hết.</p><h4 data-start=\"1326\" data-end=\"1372\" class=\"\"><strong data-start=\"1331\" data-end=\"1370\">Camera đột phá với cảm biến lớn hơn</strong></h4><p data-start=\"1373\" data-end=\"1601\" class=\"\">Camera chính 48MP được nâng cấp với cảm biến lớn hơn, hỗ trợ chụp ảnh thiếu sáng tốt hơn và quay video điện ảnh 8K. Tính năng <strong data-start=\"1499\" data-end=\"1516\">Zoom Quang 5X</strong> độc quyền trên dòng Pro Max vẫn được giữ lại, đáp ứng mọi nhu cầu sáng tạo hình ảnh.</p><h4 data-start=\"1603\" data-end=\"1657\" class=\"\"><strong data-start=\"1608\" data-end=\"1655\">Màn hình ProMotion 120Hz và độ sáng cao hơn</strong></h4><p data-start=\"1658\" data-end=\"1842\" class=\"\">Màn hình OLED Super Retina XDR mới với độ sáng lên tới <strong data-start=\"1713\" data-end=\"1726\">2800 nits</strong>, hiển thị rõ ràng dưới ánh sáng mạnh. Tần số quét 120Hz mang đến trải nghiệm vuốt chạm mượt mà trong từng thao tác.</p><h4 data-start=\"1844\" data-end=\"1883\" class=\"\"><strong data-start=\"1849\" data-end=\"1881\">Pin lâu hơn và sạc nhanh hơn</strong></h4><p data-start=\"1884\" data-end=\"2047\" class=\"\">Dung lượng pin được cải thiện đáng kể với thời lượng sử dụng kéo dài lên tới 28 giờ. Sạc nhanh 30W và sạc MagSafe vẫn được giữ lại, giúp bạn luôn sẵn sàng kết nối.</p><h4 data-start=\"2049\" data-end=\"2092\" class=\"\"><strong data-start=\"2054\" data-end=\"2090\">Tích hợp AI thông minh và iOS 18</strong></h4><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p data-start=\"2093\" data-end=\"2323\" class=\"\">iPhone 16 được tối ưu cho iOS 18 – hệ điều hành mới hỗ trợ AI mạnh mẽ, cho phép người dùng trải nghiệm các tính năng như <strong data-start=\"2214\" data-end=\"2288\">tự động viết email, dịch hội thoại trực tiếp, tổ chức hình ảnh bằng AI</strong> và nhiều tiện ích thông minh khác.</p>', 'iPhone 16 – Bước đột phá công nghệ mới với thiết kế đỉnh cao và hiệu năng vượt trội', 'Khám phá iPhone 16 – Siêu phẩm công nghệ mới nhất từ Apple với chip A18 Bionic, camera cải tiến, thiết kế tinh tế và nhiều tính năng thông minh vượt trội.', 1, '2025-05-03 20:00:53', '2025-05-03 20:00:53');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Iphone 13 pro mới', 'iphone-13-pro-moi', 1, '2025-04-12 11:38:56', '2025-04-12 11:38:56'),
(2, 'iPhone 16', 'iphone-16', 1, '2025-05-03 19:39:19', '2025-05-03 19:39:19');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `blog_id` int NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_comments`
--

INSERT INTO `blog_comments` (`id`, `user_id`, `blog_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 'rất hay', '2025-05-05 10:47:18', '2025-05-05 10:47:18');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint UNSIGNED NOT NULL,
  `logo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `logo`, `name`, `slug`, `is_featured`, `status`, `created_at`, `updated_at`) VALUES
(2, 'uploads/media_6818e8221c206.jpg', 'Asus', 'asus', 1, 1, '2025-03-04 17:26:03', '2025-05-05 02:32:34'),
(3, 'uploads/media_6818e8499f886.jpg', 'Dell', 'dell', 1, 1, '2025-04-25 03:33:02', '2025-05-05 02:33:13'),
(4, 'uploads/media_6818e85773544.jpg', 'Oppo', 'oppo', 1, 1, '2025-04-25 03:33:42', '2025-05-05 02:33:27'),
(5, 'uploads/media_6818e86120ced.jpg', 'Iphone', 'iphone', 1, 1, '2025-04-25 03:34:00', '2025-05-05 02:33:37'),
(6, 'uploads/media_6818e86ba4614.jpg', 'Samsung', 'samsung', 1, 1, '2025-04-25 03:35:34', '2025-05-05 02:33:47'),
(8, 'uploads/media_6818e875151e4.jpg', 'Xiaomi', 'xiaomi', 1, 1, '2025-04-25 03:36:04', '2025-05-05 02:33:57'),
(9, 'uploads/media_6818e87de61e6.jpg', 'Vivo', 'vivo', 1, 1, '2025-04-26 02:02:39', '2025-05-05 02:34:05'),
(10, 'uploads/media_6815a314c2e41.png', 'Macbook', 'macbook', 1, 0, '2025-05-02 15:01:08', '2025-05-05 21:11:40');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Điện thoại', 'dien-thoai', 'fas fa-address-card', 1, NULL, '2025-04-25 09:53:49'),
(4, 'Lap top', 'lap-top', 'fab fa-accessible-icon', 1, NULL, '2025-04-25 09:51:54'),
(5, 'Phụ kiện', 'phu-kien', 'fab fa-algolia', 1, '2025-05-03 20:01:22', '2025-05-03 20:01:22');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint UNSIGNED NOT NULL,
  `sender_id` bigint UNSIGNED NOT NULL,
  `receiver_id` bigint UNSIGNED NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `child_categories`
--

CREATE TABLE `child_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` int NOT NULL,
  `sub_category_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `child_categories`
--

INSERT INTO `child_categories` (`id`, `category_id`, `sub_category_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'Iphone Pro Max', 'iphone-pro-max', 1, '2025-02-27 06:12:02', '2025-05-03 21:00:49'),
(2, 3, 2, 'Galaxy A', 'galaxy-a', 1, NULL, '2025-04-25 10:13:19'),
(3, 4, 3, 'Asus Vivobook', 'asus-vivobook', 1, NULL, '2025-04-25 10:01:46'),
(4, 4, 4, 'Inspiron', 'inspiron', 1, NULL, '2025-04-25 10:03:36'),
(9, 3, 9, 'Vivo Y', 'vivo-y', 1, '2025-04-26 07:28:43', '2025-04-26 07:28:43'),
(10, 4, 10, 'Macbook Air M4', 'macbook-air-m4', 1, '2025-04-26 07:29:41', '2025-05-04 01:00:03'),
(14, 3, 1, 'iPhone Plus', 'iphone-plus', 1, '2025-05-02 20:52:22', '2025-05-03 21:00:28'),
(15, 3, 9, 'Vivo V', 'vivo-v', 1, '2025-05-02 21:23:57', '2025-05-02 21:23:57'),
(16, 3, 2, 'Galaxy S25 Series', 'galaxy-s25-series', 1, '2025-05-02 21:33:49', '2025-05-02 21:33:49'),
(17, 4, 10, 'MacBook Air', 'macbook-air', 1, '2025-05-02 21:57:47', '2025-05-02 21:57:47'),
(18, 3, 1, 'iPhone Pro', 'iphone-pro', 1, '2025-05-03 21:01:04', '2025-05-03 21:01:04'),
(19, 5, 14, 'Sạc dự phòng', 'sac-du-phong', 1, '2025-05-04 01:26:43', '2025-05-04 01:26:43'),
(20, 5, 14, 'Sạc, cáp', 'sac-cap', 1, '2025-05-04 01:27:15', '2025-05-04 01:27:15'),
(21, 5, 15, 'Chuột máy tính', 'chuot-may-tinh', 1, '2025-05-04 01:27:47', '2025-05-04 01:27:47'),
(22, 5, 15, 'Bàn phím', 'ban-phim', 1, '2025-05-04 01:28:01', '2025-05-04 01:28:01');

-- --------------------------------------------------------

--
-- Table structure for table `cod_settings`
--

CREATE TABLE `cod_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cod_settings`
--

INSERT INTO `cod_settings` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  `max_use` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `discount_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `total_used` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `product_id`, `name`, `code`, `quantity`, `max_use`, `start_date`, `end_date`, `discount_type`, `discount`, `status`, `total_used`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Siêu sale hè', 'SUM2024', 1223, 10, '2025-03-04', '2025-04-30', 'Phần trăm', 12, 1, 111, NULL, NULL),
(3, 1, 'siêu tiết kiệm', 'SUM', 3, 1, '2025-03-30', '2025-03-29', 'percent', 1000, 1, 0, '2025-03-30 08:16:11', '2025-03-30 08:16:11'),
(5, 1, 'siêu nhanh', 'SGM', 1, 2, '2025-03-30', '2025-03-31', 'percent', 50, 1, 0, '2025-03-30 08:58:46', '2025-03-30 08:58:46'),
(15, NULL, 'giảm giá', 'GIAMGIA', 1, 1, '2025-04-10', '2025-04-12', 'percent', 50, 1, 0, '2025-04-09 23:43:25', '2025-04-09 23:43:25'),
(17, NULL, 'siêu giảm giá', 'SGG', 5, 5, '2025-04-26', '2025-05-03', 'amount', 50, 1, 0, '2025-04-26 03:38:04', '2025-04-26 03:38:04'),
(19, NULL, 'giam gia 20%', 'SUM2024', 10, 1, '2025-05-06', '2025-05-09', 'percent', 20, 1, 0, '2025-05-05 22:11:59', '2025-05-05 22:11:59');

-- --------------------------------------------------------

--
-- Table structure for table `customer_status_histories`
--

CREATE TABLE `customer_status_histories` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `changed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_sales`
--

CREATE TABLE `flash_sales` (
  `id` bigint UNSIGNED NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sales`
--

INSERT INTO `flash_sales` (`id`, `end_date`, `created_at`, `updated_at`) VALUES
(1, '2025-08-23', '2025-03-04 23:19:59', '2025-05-05 10:31:21');

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale_items`
--

CREATE TABLE `flash_sale_items` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `flash_sale_id` int NOT NULL,
  `show_at_home` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sale_items`
--

INSERT INTO `flash_sale_items` (`id`, `product_id`, `flash_sale_id`, `show_at_home`, `status`, `created_at`, `updated_at`) VALUES
(3, 1, 1, 1, 1, '2025-03-05 04:51:13', '2025-03-05 05:04:29'),
(4, 2, 1, 1, 1, '2025-03-05 04:52:02', '2025-03-05 04:52:02'),
(5, 4, 1, 1, 1, '2025-03-05 10:54:29', '2025-05-08 04:36:47'),
(6, 19, 1, 1, 1, '2025-05-08 04:37:06', '2025-05-08 04:37:06'),
(7, 9, 1, 1, 1, '2025-05-08 04:37:17', '2025-05-08 04:37:17');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `site_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `layout` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_zone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_name`, `layout`, `contact_email`, `contact_phone`, `contact_address`, `map`, `currency_name`, `currency_icon`, `time_zone`, `created_at`, `updated_at`) VALUES
(1, 'Techcare', 'LTR', 'nguyenquangthuong23082004@gmail.com', '+84327540277', 'VietNam', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d57271.723193786725!2d105.70194874863282!3d20.993032900000003!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313453007bdf9a11%3A0x1ceff12f9e015420!2sAn%20Th%E1%BB%8Bnh%20Decor!5e1!3m2!1svi!2s!4v1746502743950!5m2!1svi!2s', 'VND', 'đ', 'Asia/Ho_Chi_Minh', '2025-02-28 15:07:12', '2025-05-08 01:49:25');

-- --------------------------------------------------------

--
-- Table structure for table `home_page_settings`
--

CREATE TABLE `home_page_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_page_settings`
--

INSERT INTO `home_page_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'popular_category_section', '[{\"category\":\"3\",\"sub_category\":\"1\",\"child_category\":\"1\"},{\"category\":\"3\",\"sub_category\":\"1\",\"child_category\":\"14\"},{\"category\":\"3\",\"sub_category\":\"2\",\"child_category\":\"2\"},{\"category\":\"3\",\"sub_category\":\"2\",\"child_category\":\"16\"}]', '2023-04-17 05:40:26', '2025-05-02 22:16:42'),
(3, 'product_slider_section_one', '{\"category\":\"4\",\"sub_category\":\"3\",\"child_category\":\"3\"}', '2023-04-18 03:33:40', '2025-05-02 22:16:56'),
(4, 'product_slider_section_two', '{\"category\":\"3\",\"sub_category\":\"2\",\"child_category\":\"2\"}', '2023-04-18 05:22:15', '2025-04-25 10:41:05'),
(5, 'product_slider_section_three', '[{\"category\":\"4\",\"sub_category\":null,\"child_category\":null},{\"category\":\"3\",\"sub_category\":null,\"child_category\":null}]', '2023-04-18 22:06:29', '2025-05-04 22:17:44');

-- --------------------------------------------------------

--
-- Table structure for table `logo_settings`
--

CREATE TABLE `logo_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `logo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_logo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `favicon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logo_settings`
--

INSERT INTO `logo_settings` (`id`, `logo`, `footer_logo`, `favicon`, `created_at`, `updated_at`) VALUES
(1, 'uploads/media_6819862620557.png', NULL, 'uploads/media_6818e2e983972.jpg', '2025-04-02 02:27:06', '2025-05-05 20:46:46');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_02_23_103120_create_categories_table', 1),
(6, '2025_02_23_182859_create_sub_categories_table', 1),
(7, '2025_02_24_072629_create_sliders_table', 1),
(8, '2025_02_24_131528_create_child_categories_table', 1),
(9, '2025_02_26_104335_create_brands_table', 1),
(10, '2025_02_26_125902_create_vendors_table', 1),
(11, '2025_02_26_141747_create_products_table', 1),
(12, '2025_02_26_142628_create_coupons_table', 1),
(13, '2025_02_26_162649_add_shop_name_to_vendors_table', 1),
(14, '2025_02_27_041713_create_product_image_galleries_table', 1),
(15, '2025_02_27_091426_create_user_addresses_table', 1),
(16, '2025_02_27_100001_create_product_variants_table', 1),
(17, '2025_02_27_113144_create_product_variant_items_table', 1),
(18, '2025_03_02_013146_create_shipping_rules_table', 1),
(19, '2025_03_05_050315_create_flash_sales_table', 1),
(20, '2025_03_05_050424_create_flash_sale_items_table', 1),
(21, '2025_03_05_111529_create_orders_table', 1),
(22, '2025_03_05_164913_create_transactions_table', 1),
(23, '2025_03_07_063918_create_wishlists_table', 1),
(24, '2025_03_10_044448_create_shipper_profiles_table', 1),
(25, '2025_03_10_045313_create_shippers_table', 1),
(26, '2025_03_10_064850_create_shipper_orders_table', 1),
(27, '2025_03_12_144221_create_home_page_settings_table', 1),
(28, '2025_03_12_170210_create_product_reviews_table', 1),
(29, '2025_03_12_172021_create_product_review_galleries_table', 1),
(30, '2025_03_15_021003_create_paypal_settings_table', 1),
(31, '2025_03_19_030857_create_blog_categories_table', 1),
(32, '2025_03_20_080213_create_blogs_table', 1),
(33, '2025_03_20_095107_create_order_products_table', 1),
(34, '2025_03_22_071138_create_advertisements_table', 1),
(35, '2025_03_22_141946_create_vendor_conditions_table', 1),
(36, '2025_03_22_170854_create_abouts_table', 1),
(37, '2025_03_23_024513_create_terms_and_conditions_table', 1),
(38, '2025_03_24_085254_create_blog_comments_table', 1),
(39, '2025_03_24_163928_create_stripe_settings_table', 1),
(40, '2025_03_26_213039_add_status_to_vendors_table', 2),
(41, '2025_03_27_191433_create_momo_settings_table', 2),
(42, '2025_03_28_094038_create_cod_settings_table', 2),
(43, '2025_03_30_123913_add_product_id_to_coupons_table', 2),
(44, '2025_03_31_121510_create_order_status_histories_table', 2),
(45, '2025_04_02_074308_create_logo_settings_table', 2),
(46, '2025_04_03_010454_create_pusher_settings_table', 3),
(47, '2025_04_04_165257_create_chats_table', 3),
(48, '2025_04_11_051013_add_column_qty_table', 4),
(49, '2025_04_11_053028_create_vnpay_settings_table', 5),
(50, '2025_04_14_042425_create_product_variant_combinations_table', 5),
(51, '2025_04_14_042651_add_image_to_product_variant_combinations', 5),
(52, '2025_04_15_075821_add_sku_to_product_variant_combinations_table', 5),
(53, '2025_04_16_102355_add_warranty_columns_products_table', 6),
(54, '2025_04_16_105747_add_is_paid_to_orders_table', 6),
(55, '2025_04_16_232432_add_warranty_to_product_variant_combinations_table', 6),
(56, '2025_04_16_232648_update_warranty_codes_in_product_variant_combinations', 6),
(57, '2025_04_23_101029_create_customer_status_histories_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `momo_settings`
--

CREATE TABLE `momo_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `mode` tinyint(1) NOT NULL,
  `country_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` double NOT NULL,
  `partner_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `momo_settings`
--

INSERT INTO `momo_settings` (`id`, `status`, `mode`, `country_name`, `currency_name`, `currency_rate`, `partner_code`, `access_key`, `secret_key`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'Vietnam', 'VND', 25000, 'MOMOBKUN20180529', 'klm05TvNBzhg7h7j', 'at67qH6mk8w5Y1nAyMoYKMWACiEi2bsa', '2025-03-27 01:15:24', '2025-03-27 01:37:50');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `invocie_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `sub_total` double NOT NULL,
  `amount` double NOT NULL,
  `currency_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` int NOT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` int NOT NULL,
  `order_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shpping_method` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `vendor_id` int NOT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `variants` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `variant_total` int DEFAULT NULL,
  `unit_price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_status_histories`
--

CREATE TABLE `order_status_histories` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `changed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paypal_settings`
--

CREATE TABLE `paypal_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `mode` tinyint(1) NOT NULL,
  `country_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` double NOT NULL,
  `client_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paypal_settings`
--

INSERT INTO `paypal_settings` (`id`, `status`, `mode`, `country_name`, `currency_name`, `currency_rate`, `client_id`, `secret_key`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'Vietnam', 'USD', 1, 'AapexiN6aoZkio3cP9hQ7Z0i-Ugd78ITsMyyYJs2kR3TJ5jpqt6amRhYBSQKK0Mcrs8QCFo9XFt2TcJb', 'EMzaOXXIlLC5yfxisDyqc2SHwtvJ5GoPdC8xZXGbVg6bmnWc9U2nEoMDQXDm8TmB-YiwqtLM6D1U92cd', '2025-03-14 19:42:24', '2025-03-24 08:11:57');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` int NOT NULL,
  `category_id` int NOT NULL,
  `sub_category_id` int DEFAULT NULL,
  `child_category_id` int DEFAULT NULL,
  `brand_id` int NOT NULL,
  `qty` int NOT NULL,
  `short_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sku` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL,
  `offer_price` double DEFAULT NULL,
  `offer_start_date` date DEFAULT NULL,
  `offer_end_date` date DEFAULT NULL,
  `product_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `is_approved` int NOT NULL DEFAULT '0',
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `warranty_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warranty_duration` int DEFAULT NULL,
  `warranty_expiration_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `thumb_image`, `vendor_id`, `category_id`, `sub_category_id`, `child_category_id`, `brand_id`, `qty`, `short_description`, `long_description`, `video_link`, `sku`, `price`, `offer_price`, `offer_start_date`, `offer_end_date`, `product_type`, `status`, `is_approved`, `seo_title`, `seo_description`, `created_at`, `updated_at`, `warranty_code`, `warranty_duration`, `warranty_expiration_date`) VALUES
(1, 'Iphone 12 64GB', 'iphone-12-64gb', 'uploads/media_680c3495f14c5.jpg', 1, 3, 1, 1, 5, 492, 'iPhone 12 – Hiệu suất mạnh mẽ với chip A14 Bionic, màn hình Super Retina XDR sắc nét và thiết kế thời thượng, sẵn sàng cho trải nghiệm 5G vượt trội.', '<h3 style=\"margin: 20px 0px 15px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 20px; line-height: 28px; font-family: Arial, Helvetica, sans-serif; color: rgb(16, 16, 16); outline: 0px; text-align: justify;\"><p data-start=\"267\" data-end=\"601\" class=\"\"><span style=\"font-family: \"Times New Roman\";\">iPhone 12 mang đến sự kết hợp hoàn hảo giữa hiệu năng và thiết kế hiện đại. Với chip A14 Bionic – bộ vi xử lý mạnh mẽ nhất của Apple thời điểm ra mắt, iPhone 12 cho tốc độ xử lý vượt trội, tối ưu cả hiệu suất lẫn tiết kiệm pin. Màn hình Super Retina XDR 6.1 inch cho hình ảnh sống động, sắc nét, màu sắc chuẩn xác đến từng chi tiết.</span></p><span style=\"font-family: \"Times New Roman\";\">\r\n</span><p data-start=\"608\" data-end=\"946\" class=\"\"><span style=\"font-family: \"Times New Roman\";\">Thiết kế vuông vức bằng khung nhôm cao cấp, mặt kính Ceramic Shield giúp tăng độ bền gấp 4 lần so với thế hệ trước. Camera kép 12MP với chế độ Night Mode nâng cao cho phép bạn chụp ảnh tuyệt đẹp ngay cả trong điều kiện thiếu sáng. Đồng thời, iPhone 12 hỗ trợ kết nối 5G, mở ra trải nghiệm internet tốc độ cao cho công việc lẫn giải trí.</span></p><span style=\"font-family: \"Times New Roman\";\">\r\n</span><p data-start=\"953\" data-end=\"1070\" class=\"\"><span style=\"font-family: \"Times New Roman\";\">Sở hữu iPhone 12, bạn sẽ tận hưởng hiệu suất mạnh mẽ, thiết kế thời thượng và công nghệ tiên tiến trong lòng bàn tay.</span></p></h3>', 'http://127.0.0.1:8000', '12', 11990000, 0, '2025-03-01', '2025-03-21', 'new_arrival', 1, 1, 'Mua iPhone 12 Chính Hãng Giá Tốt | Chip A14, Màn Hình Super Retina XDR', 'iPhone 12 chính hãng, thiết kế cao cấp, hiệu năng mạnh mẽ với chip A14 Bionic, màn hình Super Retina XDR sắc nét. Giá tốt, hỗ trợ trả góp 0%, giao hàng nhanh!', '2025-03-01 09:01:37', '2025-05-05 21:48:18', NULL, 3, NULL),
(2, 'Samsung Galaxy A16', 'samsung-galaxy-a16', 'uploads/media_680c3e76afbc6.jpg', 1, 3, 2, 2, 6, 497, 'Samsung Galaxy A16 nổi bật với thiết kế trẻ trung, màn hình lớn sắc nét, camera chụp ảnh ấn tượng và hiệu năng mượt mà, đáp ứng tốt nhu cầu giải trí, học tập và công việc hằng ngày.', '<p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" white-space-collapse:=\"\" preserve;\"=\"\">Samsung Galaxy A16 là chiếc smartphone lý tưởng cho những ai tìm kiếm một thiết bị vừa thời trang vừa mạnh mẽ trong tầm giá. Máy sở hữu màn hình lớn với độ phân giải cao, mang lại trải nghiệm hình ảnh sống động. Camera đa chức năng cho phép bạn bắt trọn mọi khoảnh khắc đẹp trong cuộc sống với chất lượng ảnh ấn tượng. Bên cạnh đó, Galaxy A16 còn được trang bị viên pin dung lượng lớn, giúp bạn yên tâm sử dụng suốt cả ngày dài. Hiệu năng ổn định với vi xử lý mới, kết hợp cùng giao diện One UI thân thiện, đảm bảo các tác vụ từ học tập, làm việc đến giải trí đều được xử lý nhanh chóng và mượt mà. Thiết kế trẻ trung, màu sắc thời thượng của Galaxy A16 chắc chắn sẽ làm hài lòng những người yêu thích sự năng động và cá tính.</p><div><br></div>', 'http://127.0.0.1:8000', 'samsunggalaxya16', 7000000, 6200000, '2025-03-02', '2025-04-05', 'top_product', 1, 1, 'Samsung Galaxy A16 - Thiết Kế Trẻ Trung, Pin Khủng, Giá Tốt', 'Mua Samsung Galaxy A16 chính hãng, màn hình lớn, hiệu năng ổn định, camera sắc nét, pin siêu trâu. Giá tốt, nhiều ưu đãi hấp dẫn tại', '2025-03-05 00:28:30', '2025-05-05 10:09:00', NULL, 3, NULL),
(3, 'Asus Vivobook 15 Oled', 'asus-vivobook-15-oled', 'uploads/media_680c4372f0df7.jpg', 1, 4, 3, 3, 2, 491, 'Asus Vivobook 15 OLED – Laptop màn hình OLED sống động, hiệu năng mạnh mẽ, thiết kế trẻ trung, lý tưởng cho học tập, làm việc và giải trí.', '<p>Asus Vivobook 15 OLED là sự kết hợp hoàn hảo giữa hiệu suất và thẩm mỹ. Máy được trang bị màn hình OLED 15.6 inch chuẩn màu 100% DCI-P3, hiển thị hình ảnh rực rỡ và chân thực. Cấu hình mạnh mẽ với vi xử lý Intel thế hệ mới hoặc AMD Ryzen, đi kèm RAM lớn và ổ cứng SSD tốc độ cao, mang lại trải nghiệm mượt mà cho mọi nhu cầu học tập, làm việc và giải trí. Thiết kế máy trẻ trung, trọng lượng nhẹ, thời lượng pin bền bỉ cùng hệ thống bảo mật vân tay tiện lợi, Vivobook 15 OLED là lựa chọn lý tưởng cho giới trẻ năng động.</p>', 'http://127.0.0.1:8000', 'asusvivobook', 20000000, 16700000, '2025-03-05', '2025-04-26', 'featured_product', 1, 1, 'Asus Vivobook 15 OLED - Laptop màn hình đẹp, hiệu năng mạnh, giá tốt 2025', 'Khám phá Asus Vivobook 15 OLED với màn hình OLED chuẩn màu, thiết kế mỏng nhẹ, hiệu năng ổn định. Phù hợp học tập, làm việc, giải trí. Mua ngay giá tốt!', '2025-03-05 07:20:56', '2025-05-05 10:18:32', NULL, 12, NULL),
(4, 'Dell Inspiron 15 3520', 'dell-inspiron-15-3520', 'uploads/media_680c489e11033.jpg', 1, 4, 4, 4, 3, 484, 'Dell Inspiron là dòng laptop phổ thông với thiết kế hiện đại, hiệu năng ổn định và mức giá hợp lý, phù hợp cho học sinh, sinh viên và nhân viên văn phòng.', '<p class=\"QN2lPu\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" white-space-collapse:=\"\" preserve;\"=\"\">Dell Inspiron mang đến trải nghiệm sử dụng mượt mà với bộ vi xử lý Intel thế hệ mới, RAM dung lượng lớn và ổ cứng SSD tốc độ cao. Thiết kế thanh lịch, mỏng nhẹ nhưng vẫn đảm bảo độ bền chắc chắn. Màn hình Full HD sắc nét cùng bàn phím thoải mái giúp học tập và làm việc hiệu quả hơn. Dell Inspiron là lựa chọn tối ưu cho những ai tìm kiếm một chiếc laptop chất lượng, giá phải chăng và thương hiệu uy tín.</p>', 'http://127.0.0.1:8000', 'inspiron', 20700000, 19500000, '2025-05-01', '2025-06-28', 'best_product', 1, 1, 'Dell Inspiron - Laptop học tập, làm việc bền bỉ, giá tốt 2025', 'Laptop Dell Inspiron với thiết kế mỏng nhẹ, hiệu năng mạnh mẽ, màn hình sắc nét, phù hợp học tập và văn phòng. Mua ngay giá ưu đãi, bảo hành chính hãng!', '2025-03-05 10:53:47', '2025-05-05 10:18:29', NULL, 3, NULL),
(9, 'Vivo Y 100', 'vivo-y-100', 'uploads/media_680de88e81a95.webp', 1, 3, 9, 9, 9, 494, 'Vivo Y series mang đến trải nghiệm mượt mà với pin siêu lâu, thiết kế trẻ trung và camera sắc nét, đáp ứng mọi nhu cầu học tập, giải trí và làm việc.', '<p>Dòng điện thoại Vivo Y series nổi bật với thiết kế hiện đại, hiệu năng ổn định và mức giá cực kỳ hợp lý. Sở hữu viên pin dung lượng lớn, khả năng sạc nhanh tiện lợi cùng hệ thống camera cải tiến, Vivo Y mang đến trải nghiệm sử dụng bền bỉ suốt ngày dài. Màn hình rộng rãi, hiển thị sắc nét, cùng hiệu suất mượt mà từ chip xử lý mạnh mẽ, giúp bạn dễ dàng học tập, làm việc và giải trí mọi lúc mọi nơi. Nếu bạn đang tìm kiếm một chiếc smartphone giá tốt, chất lượng ổn định và kiểu dáng trẻ trung, thì Vivo Y chắc chắn là lựa chọn lý tưởng dành cho bạn.</p><div><br></div>', 'http://127.0.0.1:8000', '22', 6900000, 6490000, '2025-04-27', '2025-05-03', 'new_arrival', 1, 1, 'Vivo Y Series - Smartphone Giá Tốt, Pin Khủng, Camera Đẹp', 'Khám phá Vivo Y series - dòng smartphone lý tưởng cho giới trẻ: thiết kế đẹp, pin trâu, camera chất lượng, hiệu năng ổn định. Giá tốt, ưu đãi hấp dẫn tại [Tên cửa hàng của bạn].', '2025-04-27 01:19:26', '2025-05-05 10:16:48', NULL, 3, NULL),
(10, 'Điện thoại iPhone 16 Pro Max 256GB', 'dien-thoai-iphone-16-pro-max-256gb', 'uploads/media_681596518b709.jpg', 1, 3, 1, 14, 5, 493, 'iPhone 16 Pro Max sở hữu chip A18 Pro, camera nâng cấp, màn hình ProMotion 120Hz – hàng chính hãng, giao nhanh, hỗ trợ trả góp 0%.', '<p data-start=\"612\" data-end=\"986\" class=\"\">iPhone 16 Pro Max là flagship mới nhất của Apple ra mắt năm 2025, mang đến đột phá mạnh mẽ với chip <strong data-start=\"712\" data-end=\"729\">Apple A18 Pro</strong>, màn hình <strong data-start=\"740\" data-end=\"769\">Super Retina XDR 6.7 inch</strong>, tần số quét <strong data-start=\"783\" data-end=\"792\">120Hz</strong>, cùng hệ thống <strong data-start=\"808\" data-end=\"835\">camera cải tiến mạnh mẽ</strong> chụp ảnh đêm và quay video điện ảnh. Thiết kế titan siêu nhẹ, kháng nước IP68, hỗ trợ sạc nhanh và <strong data-start=\"935\" data-end=\"955\">USB-C tốc độ cao</strong> giúp tăng hiệu quả làm việc.</p><p>\r\n</p><p data-start=\"993\" data-end=\"1089\" class=\"\">Sản phẩm chính hãng, bảo hành 12 tháng, hỗ trợ <strong data-start=\"1040\" data-end=\"1054\">trả góp 0%</strong> và giao hàng nhanh trên toàn quốc.</p>', 'http://techcare.test/', 'eeee', 40000000, 37590000, '2025-05-03', '2025-05-31', 'new_arrival', 1, 1, 'iPhone 16 Pro Max Chính Hãng - Giá Tốt Nhất 2025', 'Mua iPhone 16 Pro Max Mới 100% Giá Rẻ, Trả Góp 0% – Bảo Hành 12 Tháng', '2025-05-02 20:58:51', '2025-05-05 10:18:32', NULL, 3, NULL),
(12, 'Điện thoại Samsung Galaxy S25 Ultra 5G 12GB/256GB', 'dien-thoai-samsung-galaxy-s25-ultra-5g-12gb256gb', 'uploads/media_6815aafdf29be.jpg', 1, 3, 2, 16, 6, 492, 'Samsung Galaxy S25 Ultra 5G trang bị chip Snapdragon 8 Gen 4, RAM 12GB, camera 200MP, pin trâu 5000mAh – chính hãng, giá tốt, giao nhanh.', '<p data-start=\"661\" data-end=\"856\" class=\"\"><strong data-start=\"661\" data-end=\"692\">Samsung Galaxy S25 Ultra 5G</strong> là siêu phẩm cao cấp mới nhất năm 2025, mang đến trải nghiệm đỉnh cao với <strong data-start=\"767\" data-end=\"803\">màn hình Dynamic AMOLED 6.8 inch</strong>, độ phân giải QHD+ và tần số quét 120Hz siêu mượt.</p><p data-start=\"863\" data-end=\"1139\" class=\"\">Máy được trang bị <strong data-start=\"881\" data-end=\"916\">chip Snapdragon 8 Gen 4 mạnh mẽ</strong>, RAM 12GB, bộ nhớ trong 256GB giúp xử lý đa nhiệm mượt mà, chiến game nặng ổn định. Điểm nhấn ấn tượng là <strong data-start=\"1023\" data-end=\"1045\">camera chính 200MP</strong> kết hợp AI cho khả năng chụp ảnh chi tiết, sắc nét, hỗ trợ zoom quang học và quay video 8K.</p><p data-start=\"1146\" data-end=\"1276\" class=\"\">Galaxy S25 Ultra còn sở hữu <strong data-start=\"1174\" data-end=\"1189\">pin 5000mAh</strong>, sạc nhanh 65W, hỗ trợ bút S Pen tiện dụng và bảo mật vân tay siêu âm dưới màn hình.</p><p>\r\n\r\n\r\n</p><p data-start=\"1283\" data-end=\"1377\" class=\"\">Đây là lựa chọn hàng đầu cho người dùng yêu thích công nghệ, nhiếp ảnh và hiệu năng vượt trội.</p>', 'http://techcare.test/', 'galaxy25', 33990000, 28990000, '2025-04-27', '2025-05-17', 'featured_product', 1, 1, 'Samsung Galaxy S25 Ultra 5G 256GB Chính Hãng Mới Nhất', 'Mua Samsung S25 Ultra 5G 12GB/256GB – Chip Mạnh, Camera 200MP, Trả Góp 0%', '2025-05-02 21:37:06', '2025-05-05 10:09:20', NULL, 3, NULL),
(13, 'MacBook Air 13 inch M4 16GB/256GB', 'macbook-air-13-inch-m4-16gb256gb', 'uploads/media_6815a3bd0d0a8.jpg', 1, 4, 10, 17, 10, 491, 'MacBook Air 13 inch chip M1/M2/M3 mạnh mẽ, thiết kế mỏng nhẹ, pin đến 18 giờ – chính hãng Apple, giá tốt, bảo hành 12 tháng.', '<p data-start=\"582\" data-end=\"887\" class=\"\"><strong data-start=\"582\" data-end=\"605\">MacBook Air 13 inch</strong> là dòng laptop mỏng nhẹ nổi bật của Apple, lý tưởng cho sinh viên, dân văn phòng và người thường xuyên di chuyển. Máy được trang bị <strong data-start=\"738\" data-end=\"769\">chip Apple Silicon M1/M2/M3</strong>, hiệu suất vượt trội nhưng vẫn tiết kiệm điện năng, đảm bảo xử lý mượt mọi tác vụ từ học tập đến làm việc sáng tạo.</p><p data-start=\"894\" data-end=\"1141\" class=\"\">Thiết kế nhôm nguyên khối cao cấp, trọng lượng chỉ khoảng <strong data-start=\"952\" data-end=\"962\">1.24kg</strong>, độ dày siêu mỏng giúp bạn dễ dàng mang theo mọi nơi. Màn hình <strong data-start=\"1026\" data-end=\"1056\">Retina 13.3 inch/13.6 inch</strong> sắc nét, hỗ trợ dải màu rộng P3, bàn phím Magic Keyboard và trackpad lớn nhạy bén.</p><p>\r\n\r\n</p><p data-start=\"1148\" data-end=\"1322\" class=\"\">Thời lượng pin lên đến <strong data-start=\"1171\" data-end=\"1181\">18 giờ</strong>, hỗ trợ sạc nhanh, hệ điều hành macOS tối ưu hiệu suất và bảo mật cao. MacBook Air 13 là lựa chọn hoàn hảo để học tập, làm việc và giải trí.</p>', 'http://techcare.test/', 'ff', 26990000, 0, '2025-05-01', '2025-05-15', 'featured_product', 1, 1, 'MacBook Air 13 inch Chính Hãng – Siêu Mỏng, Siêu Nhẹ', 'Mua MacBook Air 13 M1/M2/M3 Giá Tốt – Pin Trâu, Thiết Kế Gọn Nhẹ', '2025-05-02 22:03:57', '2025-05-05 10:18:29', NULL, 3, NULL),
(14, 'Điện thoại Samsung Galaxy S25 Ultra 5G 12GB/512GB', 'dien-thoai-samsung-galaxy-s25-ultra-5g-12gb512gb', 'uploads/media_6815a8cff3e9f.jpg', 1, 3, 2, 16, 6, 492, 'Samsung Galaxy S25 Ultra 5G 512GB – chip Snapdragon 8 Gen 4, RAM 12GB, camera 200MP, pin 5000mAh – hiệu năng cực mạnh, chính hãng, giá tốt.', '<p data-start=\"657\" data-end=\"888\" class=\"\"><strong data-start=\"657\" data-end=\"699\">Samsung Galaxy S25 Ultra 5G 12GB/512GB</strong> là flagship cao cấp nhất của Samsung trong năm 2025. Sở hữu thiết kế đẳng cấp với khung viền titan, mặt kính cường lực Gorilla Armor, máy mang lại vẻ ngoài sang trọng và độ bền ấn tượng.</p><p data-start=\"895\" data-end=\"1147\" class=\"\">Điểm nổi bật chính là cụm <strong data-start=\"921\" data-end=\"941\">camera sau 200MP</strong> với khả năng zoom quang học 10x, hỗ trợ quay video 8K, chụp đêm rõ nét nhờ AI xử lý hình ảnh tiên tiến. Màn hình <strong data-start=\"1055\" data-end=\"1089\">Dynamic AMOLED 6.8 inch, 120Hz</strong>, độ sáng cao giúp hiển thị hoàn hảo ngay cả ngoài trời.</p><p data-start=\"1154\" data-end=\"1395\" class=\"\">Cấu hình khủng với <strong data-start=\"1173\" data-end=\"1200\">chip Snapdragon 8 Gen 4</strong>, <strong data-start=\"1202\" data-end=\"1214\">RAM 12GB</strong>, bộ nhớ lớn <strong data-start=\"1227\" data-end=\"1236\">512GB</strong>, đáp ứng tốt mọi nhu cầu từ công việc nặng đến giải trí, chơi game. <strong data-start=\"1305\" data-end=\"1320\">Pin 5000mAh</strong>, sạc nhanh 65W, hỗ trợ bút S Pen tiện lợi và giao diện One UI 7 mượt mà.</p><p>\r\n\r\n\r\n</p><p data-start=\"1402\" data-end=\"1509\" class=\"\">Đây là lựa chọn hoàn hảo cho người dùng yêu cầu hiệu năng cao, camera chuyên nghiệp và thiết kế sang trọng.</p>', 'http://techcare.test/', 'samssungs25', 37490000, 31790000, '2025-05-04', '2025-05-10', 'featured_product', 1, 1, 'Samsung S25 Ultra 5G 512GB Chính Hãng – Mạnh Mẽ, Đỉnh Cao', 'Mua Samsung Galaxy S25 Ultra 5G 12GB/512GB – Camera 200MP, Pin 5000mAh', '2025-05-02 22:25:36', '2025-05-05 10:10:21', NULL, 3, NULL),
(15, 'Điện thoại Samsung Galaxy S25 5G 12GB/256GB', 'dien-thoai-samsung-galaxy-s25-5g-12gb256gb', 'uploads/media_6815acbc1dfae.jpg', 1, 3, 2, 16, 6, 490, 'Samsung Galaxy S25 5G bản 256GB, RAM 12GB, chip Snapdragon 8 Gen 4, camera 50MP, màn hình 120Hz – thiết kế đẹp, hiệu năng cao, giá hợp lý.', '<p data-start=\"607\" data-end=\"861\" class=\"\"><strong data-start=\"607\" data-end=\"643\">Samsung Galaxy S25 5G 12GB/256GB</strong> là dòng flagship tiêu chuẩn năm 2025, phù hợp cho người dùng muốn trải nghiệm công nghệ mới nhất trong mức giá hợp lý. Máy sở hữu <strong data-start=\"774\" data-end=\"810\">màn hình Dynamic AMOLED 6.1 inch</strong>, tần số quét 120Hz, hiển thị sắc nét và mượt mà.</p><p data-start=\"868\" data-end=\"1034\" class=\"\">S25 5G được trang bị <strong data-start=\"889\" data-end=\"916\">chip Snapdragon 8 Gen 4</strong> mạnh mẽ, đi kèm <strong data-start=\"933\" data-end=\"945\">RAM 12GB</strong>, <strong data-start=\"947\" data-end=\"963\">bộ nhớ 256GB</strong>, giúp xử lý đa nhiệm, chơi game nặng và chỉnh sửa ảnh/video mượt mà.</p><p data-start=\"1041\" data-end=\"1236\" class=\"\">Hệ thống <strong data-start=\"1050\" data-end=\"1071\">camera chính 50MP</strong> chụp ảnh chân thực, hỗ trợ quay video 8K, chống rung quang học OIS và công nghệ AI tối ưu hình ảnh. Pin <strong data-start=\"1176\" data-end=\"1187\">4500mAh</strong>, sạc nhanh 45W giúp sử dụng thoải mái cả ngày.</p><p>\r\n\r\n\r\n</p><p data-start=\"1243\" data-end=\"1378\" class=\"\">Galaxy S25 5G là lựa chọn hoàn hảo cho người dùng yêu thích thiết kế nhỏ gọn, hiệu năng mạnh và trải nghiệm Android cao cấp từ Samsung.</p>', 'http://techcare.test/', 'galaxys25', 22990000, 19290000, '2025-05-03', '2025-05-24', 'featured_product', 1, 1, 'Samsung Galaxy S25 5G 256GB – Hiệu Năng Mạnh, Giá Tốt', 'Mua Galaxy S25 5G 12GB/256GB – Chip Mạnh, Camera 50MP, Pin Trâu', '2025-05-02 22:42:20', '2025-05-05 10:18:30', NULL, 3, NULL),
(16, 'Điện thoại Samsung Galaxy S25 Plus 5G 12GB/256GB', 'dien-thoai-samsung-galaxy-s25-plus-5g-12gb256gb', 'uploads/media_6815b0dd867ae.jpg', 1, 3, 2, 16, 6, 495, 'Samsung Galaxy S25 Plus 5G – màn hình lớn 6.7\", chip Snapdragon 8 Gen 4, RAM 12GB, camera 50MP, pin 4800mAh, chính hãng, hiệu năng mạnh mẽ.', '<p data-start=\"592\" data-end=\"747\" class=\"\"><strong data-start=\"592\" data-end=\"633\">Samsung Galaxy S25 Plus 5G 12GB/256GB</strong> là lựa chọn lý tưởng cho người dùng yêu thích smartphone màn hình lớn, cấu hình mạnh mẽ và thiết kế sang trọng.</p><p data-start=\"754\" data-end=\"1015\" class=\"\">Thiết bị được trang bị <strong data-start=\"777\" data-end=\"816\">màn hình Dynamic AMOLED 2X 6.7 inch</strong> độ phân giải cao, tần số quét 120Hz, hiển thị mượt mà và sống động. Với <strong data-start=\"889\" data-end=\"920\">vi xử lý Snapdragon 8 Gen 4</strong>, đi kèm <strong data-start=\"929\" data-end=\"941\">RAM 12GB</strong>, máy mang đến trải nghiệm đa nhiệm mượt, chơi game nặng không giật lag.</p><p data-start=\"1022\" data-end=\"1179\" class=\"\">Camera chính <strong data-start=\"1035\" data-end=\"1043\">50MP</strong>, kết hợp AI xử lý hình ảnh tối ưu, hỗ trợ quay video chuẩn 8K và chụp đêm sắc nét. Bộ nhớ trong <strong data-start=\"1140\" data-end=\"1149\">256GB</strong> cho phép lưu trữ thoải mái.</p><p data-start=\"1186\" data-end=\"1379\" class=\"\">Viên <strong data-start=\"1191\" data-end=\"1206\">pin 4800mAh</strong> đủ dùng cả ngày, hỗ trợ <strong data-start=\"1231\" data-end=\"1248\">sạc nhanh 45W</strong> giúp tiết kiệm thời gian. Máy vẫn giữ thiết kế cao cấp với mặt lưng kính, khung viền kim loại và khả năng kháng nước chuẩn IP68.</p><p>\r\n\r\n\r\n\r\n</p><p data-start=\"1386\" data-end=\"1522\" class=\"\">Galaxy S25 Plus 5G là sự cân bằng hoàn hảo giữa hiệu năng, kích thước màn hình và thời lượng pin – phù hợp với cả công việc và giải trí.</p>', 'http://techcare.test/', 'SamsungGalaxyS25Plus', 26990000, 22790000, '2025-05-01', '2025-05-17', 'featured_product', 1, 1, 'Samsung Galaxy S25+ 5G 256GB – Hiệu Năng Đỉnh, Thiết Kế Mỏng', 'Mua Galaxy S25 Plus 5G 12GB/256GB – Màn Hình Lớn, Pin Trâu, Giá Tốt', '2025-05-02 22:59:57', '2025-05-05 10:07:31', NULL, 3, NULL),
(17, 'Điện thoại Samsung Galaxy S25 Plus 5G 12GB/512GB', 'dien-thoai-samsung-galaxy-s25-plus-5g-12gb512gb', 'uploads/media_6815b4b20f5ae.jpg', 1, 3, 2, 16, 6, 493, 'Galaxy S25 Plus 5G – màn hình 6.7 inch, chip Snapdragon 8 Gen 4, camera 50MP, pin 4800mAh, thiết kế sang trọng, hiệu năng vượt trội năm 2025.', '<p data-start=\"638\" data-end=\"948\" class=\"\"><strong data-start=\"638\" data-end=\"668\">Samsung Galaxy S25 Plus 5G</strong> là phiên bản trung cấp của dòng Galaxy S25 mới nhất, nổi bật với thiết kế tinh tế, màn hình lớn và cấu hình mạnh mẽ. Máy sở hữu <strong data-start=\"797\" data-end=\"836\">màn hình Dynamic AMOLED 2X 6.7 inch</strong>, độ phân giải cao, hỗ trợ HDR10+ và tần số quét 120Hz – mang đến trải nghiệm thị giác sống động và siêu mượt.</p><p data-start=\"955\" data-end=\"1218\" class=\"\">Galaxy S25 Plus được trang bị <strong data-start=\"985\" data-end=\"1018\">chip Snapdragon 8 Gen 4 (4nm)</strong> – bộ vi xử lý mạnh mẽ hàng đầu, giúp chạy đa nhiệm, chơi game, chỉnh sửa video nhanh chóng. Hệ thống <strong data-start=\"1120\" data-end=\"1141\">camera chính 50MP</strong> kết hợp AI thông minh giúp chụp ảnh rõ nét trong nhiều điều kiện ánh sáng.</p><p data-start=\"1225\" data-end=\"1454\" class=\"\">Máy tích hợp <strong data-start=\"1238\" data-end=\"1253\">pin 4800mAh</strong>, hỗ trợ <strong data-start=\"1262\" data-end=\"1279\">sạc nhanh 45W</strong>, đảm bảo thời lượng sử dụng cả ngày. Ngoài ra, thiết bị còn đạt chuẩn chống nước <strong data-start=\"1361\" data-end=\"1369\">IP68</strong>, hỗ trợ kết nối 5G, Wi-Fi 7, vân tay dưới màn hình và giao diện One UI 7 mới nhất.</p><p>\r\n\r\n\r\n</p><p data-start=\"1461\" data-end=\"1619\" class=\"\">Với sự cân bằng giữa thiết kế cao cấp, màn hình lớn và hiệu năng mạnh mẽ, Galaxy S25 Plus 5G là lựa chọn hàng đầu cho người dùng yêu công nghệ trong năm 2025.</p>', 'http://techcare.test/', 'SamsungGalaxy', 25790000, 0, '2025-05-03', '2025-05-03', 'featured_product', 1, 1, 'Samsung Galaxy S25 Plus 5G – Flagship Màn Hình Lớn 2025', 'Mua Samsung Galaxy S25 Plus 5G – Thiết Kế Cao Cấp, Cấu Hình Khủng', '2025-05-02 23:16:18', '2025-05-05 10:07:33', NULL, 3, NULL),
(18, 'Điện thoại Samsung Galaxy S25 5G 12GB/512GB', 'dien-thoai-samsung-galaxy-s25-5g-12gb512gb', 'uploads/media_6815ba7d0d35e.jpg', 1, 3, 2, 16, 6, 491, 'Galaxy S25 5G bản 512GB, RAM 12GB, chip Snapdragon 8 Gen 4, camera 50MP, màn hình 120Hz – nhỏ gọn, sang trọng, hiệu năng mạnh mẽ.', '<p data-start=\"559\" data-end=\"706\" class=\"\"><strong data-start=\"559\" data-end=\"595\">Samsung Galaxy S25 5G 12GB/512GB</strong> là chiếc điện thoại cao cấp phù hợp với người dùng yêu cầu cao về hiệu năng, thiết kế và dung lượng lưu trữ.</p><p data-start=\"713\" data-end=\"1012\" class=\"\">Máy sở hữu <strong data-start=\"724\" data-end=\"760\">màn hình Dynamic AMOLED 6.1 inch</strong>, độ phân giải cao, tần số quét 120Hz cho trải nghiệm mượt mà, sống động. Dù kích thước nhỏ gọn nhưng cấu hình lại cực mạnh với <strong data-start=\"888\" data-end=\"910\">Snapdragon 8 Gen 4</strong>, <strong data-start=\"912\" data-end=\"924\">RAM 12GB</strong> và <strong data-start=\"928\" data-end=\"958\">bộ nhớ trong lên tới 512GB</strong>, đáp ứng tốt mọi nhu cầu từ công việc đến giải trí.</p><p data-start=\"1019\" data-end=\"1228\" class=\"\">Camera chính <strong data-start=\"1032\" data-end=\"1040\">50MP</strong>, hỗ trợ chụp đêm, chống rung OIS và quay video 8K. Ngoài ra, máy có <strong data-start=\"1109\" data-end=\"1124\">pin 4500mAh</strong>, sạc nhanh 45W và các công nghệ mới như 5G, Wi-Fi 7, cảm biến vân tay dưới màn hình, chống nước IP68.</p><p>\r\n\r\n\r\n</p><p data-start=\"1235\" data-end=\"1376\" class=\"\">Galaxy S25 5G 512GB là lựa chọn lý tưởng cho người dùng thích điện thoại nhỏ gọn nhưng mạnh mẽ, lưu trữ nhiều dữ liệu mà không lo hết bộ nhớ.</p>', 'http://techcare.test/', 'S25_5G12GB/512GB', 26490000, 22290000, '2025-05-03', '2025-05-30', 'featured_product', 1, 1, 'Samsung Galaxy S25 5G 512GB – Nhỏ Gọn, Mạnh Mẽ', 'Mua Galaxy S25 5G 12GB/512GB – Hiệu Năng Cực Khủng, Lưu Trữ Lớn', '2025-05-02 23:41:01', '2025-05-05 10:16:50', NULL, 3, NULL),
(19, 'Điện thoại iPhone 16 Plus 128GB', 'dien-thoai-iphone-16-plus-128gb', 'uploads/media_6815bc7a22c4c.jpg', 1, 3, 1, 14, 5, 491, 'iPhone 16 Plus 128GB – màn hình lớn 6.7\", chip A18 Bionic, camera kép 48MP, pin trâu, hiệu năng vượt trội, trải nghiệm mượt mà và bền bỉ.', '<p data-start=\"611\" data-end=\"765\" class=\"\"><strong data-start=\"611\" data-end=\"635\">iPhone 16 Plus 128GB</strong> là phiên bản màn hình lớn trong dòng iPhone 16 mới nhất, sở hữu thiết kế cao cấp, hiệu năng mạnh mẽ và thời lượng pin ấn tượng.</p><p data-start=\"772\" data-end=\"1026\" class=\"\">Thiết bị được trang bị <strong data-start=\"795\" data-end=\"833\">màn hình Super Retina XDR 6.7 inch</strong>, mang đến trải nghiệm hiển thị rộng rãi, sắc nét, hỗ trợ công nghệ HDR10 và True Tone. Bộ vi xử lý <strong data-start=\"933\" data-end=\"953\">Apple A18 Bionic</strong> giúp tối ưu hiệu suất, tiết kiệm pin và xử lý mượt mà mọi tác vụ nặng.</p><p data-start=\"1033\" data-end=\"1259\" class=\"\">iPhone 16 Plus sở hữu cụm <strong data-start=\"1059\" data-end=\"1078\">camera kép 48MP</strong>, tích hợp chế độ chụp ban đêm, quay video 4K, chống rung quang học và AI xử lý hình ảnh thông minh. Dung lượng <strong data-start=\"1190\" data-end=\"1199\">128GB</strong> đủ cho người dùng lưu trữ ảnh, video, ứng dụng thoải mái.</p><p data-start=\"1266\" data-end=\"1441\" class=\"\">Viên <strong data-start=\"1271\" data-end=\"1293\">pin dung lượng lớn</strong>, kết hợp tối ưu hệ điều hành iOS mới, cho thời gian sử dụng lâu hơn. Máy hỗ trợ <strong data-start=\"1374\" data-end=\"1385\">Face ID</strong>, sạc không dây MagSafe và tiêu chuẩn chống nước IP68.</p><p>\r\n\r\n\r\n\r\n</p><p data-start=\"1448\" data-end=\"1623\" class=\"\">Với kích thước lớn, pin bền và hiệu năng mạnh mẽ, <strong data-start=\"1498\" data-end=\"1522\">iPhone 16 Plus 128GB</strong> là lựa chọn lý tưởng cho người yêu thích iPhone nhưng cần một thiết bị pin trâu, hiển thị thoải mái.</p>', 'http://techcare.test/', 'ip16-', 25990000, 22990000, '2025-05-03', '2025-05-16', 'new_arrival', 1, 1, 'iPhone 16 Plus 128GB – Hiệu Năng Mạnh, Thiết Kế Sang', 'Mua iPhone 16 Plus 128GB – Màn Hình Lớn, Pin Trâu, Giá Tốt', '2025-05-02 23:49:30', '2025-05-05 10:18:30', NULL, 3, NULL),
(20, 'Điện thoại iPhone 16 Pro 128GB', 'dien-thoai-iphone-16-pro-128gb', 'uploads/media_6815c0e5d62c3.jpg', 1, 3, 1, 18, 5, 495, 'iPhone 16 128GB – chip A18 Bionic mới, camera 48MP, Face ID, pin tốt, thiết kế sang trọng, màn hình 6.1 inch, hiệu năng mạnh mẽ cho mọi nhu cầu.', '<p data-start=\"608\" data-end=\"778\" class=\"\"><strong data-start=\"608\" data-end=\"627\">iPhone 16 128GB</strong> là phiên bản tiêu chuẩn trong dòng iPhone 16 mới ra mắt của Apple, sở hữu thiết kế cao cấp, hiệu năng ấn tượng và trải nghiệm mượt mà trong tầm tay.</p><p data-start=\"785\" data-end=\"1029\" class=\"\">Máy được trang bị <strong data-start=\"803\" data-end=\"841\">màn hình Super Retina XDR 6.1 inch</strong>, hiển thị sắc nét, màu sắc chân thực và hỗ trợ HDR10, True Tone. <strong data-start=\"907\" data-end=\"939\">Bộ vi xử lý Apple A18 Bionic</strong> thế hệ mới mang lại hiệu suất mạnh mẽ, tiết kiệm năng lượng và tối ưu cho iOS mới nhất.</p><p data-start=\"1036\" data-end=\"1225\" class=\"\">Camera chính <strong data-start=\"1049\" data-end=\"1057\">48MP</strong> kết hợp cảm biến thông minh và AI xử lý ảnh, hỗ trợ chụp đêm, quay phim 4K siêu nét. Camera selfie cũng được cải tiến cho khả năng chụp ảnh rõ ràng và chân thực hơn.</p><p data-start=\"1232\" data-end=\"1473\" class=\"\">Với <strong data-start=\"1236\" data-end=\"1256\">dung lượng 128GB</strong>, người dùng có thể thoải mái lưu trữ dữ liệu, ứng dụng và hình ảnh. Thiết bị còn hỗ trợ <strong data-start=\"1345\" data-end=\"1356\">Face ID</strong>, <strong data-start=\"1358\" data-end=\"1364\">5G</strong>, <strong data-start=\"1366\" data-end=\"1378\">Wi-Fi 6E</strong>, <strong data-start=\"1380\" data-end=\"1393\">sạc nhanh</strong> và đạt chuẩn <strong data-start=\"1407\" data-end=\"1426\">chống nước IP68</strong>, phù hợp cho nhu cầu sử dụng bền bỉ lâu dài.</p><p>\r\n\r\n\r\n\r\n</p><p data-start=\"1480\" data-end=\"1615\" class=\"\"><strong data-start=\"1480\" data-end=\"1499\">iPhone 16 128GB</strong> là lựa chọn lý tưởng cho người dùng yêu thích sự gọn nhẹ, hiệu năng mạnh và trải nghiệm hệ sinh thái Apple mượt mà.</p>', 'http://techcare.test/', 'ip16-128gb', 28990000, 22990000, '2025-05-03', '2025-05-22', 'new_arrival', 1, 1, 'iPhone 16 128GB – Thiết Kế Gọn, Hiệu Năng Cực Mạnh', 'Mua iPhone 16 128GB – Chip A18, Camera 48MP, Giá Hấp Dẫn', '2025-05-03 00:08:21', '2025-05-05 10:09:17', NULL, 3, NULL),
(21, 'Điện thoại iPhone 16 Pro 128GB', 'dien-thoai-iphone-16-pro-128gb', 'uploads/media_6815c436bb522.jpg', 1, 3, 1, 14, 5, 495, 'iPhone 16 Pro 128GB – chip A18 Pro, camera 3 ống kính 48MP, màn hình 120Hz, thiết kế titan đẳng cấp, hiệu năng vượt trội và tối ưu cho công việc.', '<p data-start=\"626\" data-end=\"866\" class=\"\"><strong data-start=\"626\" data-end=\"649\">iPhone 16 Pro 128GB</strong> là mẫu flagship cao cấp từ Apple, được thiết kế với chất liệu <strong data-start=\"712\" data-end=\"721\">Titan</strong> bền bỉ, sang trọng cùng hiệu năng dẫn đầu thị trường. Thiết bị phù hợp với người dùng yêu cầu cao về cấu hình, camera và trải nghiệm tổng thể.</p><p data-start=\"873\" data-end=\"1158\" class=\"\">Máy sở hữu <strong data-start=\"884\" data-end=\"922\">màn hình Super Retina XDR 6.1 inch</strong>, tần số quét <strong data-start=\"936\" data-end=\"955\">120Hz ProMotion</strong>, hỗ trợ HDR10, mang đến trải nghiệm hiển thị siêu mượt và sắc nét. Bên trong là <strong data-start=\"1036\" data-end=\"1058\">chip Apple A18 Pro</strong> – dòng vi xử lý mới nhất, mạnh mẽ, tiết kiệm pin và tối ưu cho AI, đồ họa, game, chỉnh sửa video.</p><p data-start=\"1165\" data-end=\"1409\" class=\"\">Hệ thống <strong data-start=\"1174\" data-end=\"1208\">3 camera sau độ phân giải 48MP</strong> gồm camera chính, góc siêu rộng và tele hỗ trợ zoom quang 5x, quay video 4K ProRes. Tính năng xử lý hình ảnh được nâng cấp mạnh mẽ, mang lại những bức ảnh chuyên nghiệp trong mọi điều kiện ánh sáng.</p><p data-start=\"1416\" data-end=\"1608\" class=\"\">Với <strong data-start=\"1420\" data-end=\"1436\">bộ nhớ 128GB</strong>, người dùng có thể lưu trữ thoải mái ảnh, video và tài liệu. Máy còn hỗ trợ <strong data-start=\"1513\" data-end=\"1574\">Face ID, 5G, Wi-Fi 6E, sạc nhanh và sạc không dây MagSafe</strong>, đạt chuẩn <strong data-start=\"1586\" data-end=\"1605\">chống nước IP68</strong>.</p><p>\r\n\r\n\r\n\r\n</p><p data-start=\"1615\" data-end=\"1781\" class=\"\"><strong data-start=\"1615\" data-end=\"1638\">iPhone 16 Pro 128GB</strong> là lựa chọn hoàn hảo cho người dùng cần một thiết bị nhỏ gọn, nhưng sở hữu hiệu suất chuyên nghiệp và trải nghiệm công nghệ hàng đầu từ Apple.</p>', 'http://techcare.test/', '16-pro-128', 40090000, 25390000, '2025-05-03', '2025-05-24', 'new_arrival', 1, 1, 'iPhone 16 Pro 128GB – Sang Trọng, Siêu Hiệu Năng', 'Mua iPhone 16 Pro 128GB – Chip A18 Pro, Camera Đỉnh, Giá Tốt', '2025-05-03 00:22:30', '2025-05-05 10:08:59', NULL, 3, NULL),
(22, 'Điện thoại iPhone 16 Plus 128GB', 'dien-thoai-iphone-16-plus-128gb', 'uploads/media_6815cac5372d8.jpg', 1, 3, 1, 14, 5, 492, 'iPhone 16e 128GB – Thiết kế tinh tế, chip A18 mạnh mẽ, màn hình sắc nét, camera chất lượng, giá hợp lý, phù hợp cho học sinh, sinh viên và người dùng phổ thông.', '<p data-start=\"678\" data-end=\"857\" class=\"\"><strong data-start=\"678\" data-end=\"698\">iPhone 16e 128GB</strong> là phiên bản hướng đến phân khúc người dùng phổ thông trong dòng iPhone 16 mới nhất, giữ được thiết kế sang trọng, hiệu năng ổn định và mức giá dễ tiếp cận.</p><p data-start=\"864\" data-end=\"1097\" class=\"\">Thiết bị sở hữu <strong data-start=\"880\" data-end=\"908\">màn hình Retina 6.1 inch</strong>, hiển thị sắc nét, màu sắc chân thực. Bên trong là <strong data-start=\"960\" data-end=\"982\">vi xử lý Apple A18</strong>, cho khả năng xử lý nhanh nhạy, mượt mà mọi tác vụ từ lướt web, xem phim, chơi game cho đến học tập và làm việc.</p><p data-start=\"1104\" data-end=\"1304\" class=\"\">Camera chính <strong data-start=\"1117\" data-end=\"1125\">48MP</strong> được nâng cấp từ các phiên bản trước, hỗ trợ chụp ảnh rõ nét, chống rung tốt và quay video chất lượng cao. Camera selfie cho ảnh chân dung tự nhiên, hỗ trợ FaceTime HD mượt mà.</p><p data-start=\"1311\" data-end=\"1546\" class=\"\">Dung lượng <strong data-start=\"1322\" data-end=\"1331\">128GB</strong> phù hợp lưu trữ ảnh, video, ứng dụng. iPhone 16e vẫn trang bị đầy đủ các tính năng hiện đại như <strong data-start=\"1428\" data-end=\"1439\">Face ID</strong>, <strong data-start=\"1441\" data-end=\"1455\">kết nối 5G</strong>, <strong data-start=\"1457\" data-end=\"1468\">Wi-Fi 6</strong>, <strong data-start=\"1470\" data-end=\"1483\">sạc nhanh</strong>, <strong data-start=\"1485\" data-end=\"1501\">iOS mới nhất</strong> và thiết kế đạt chuẩn <strong data-start=\"1524\" data-end=\"1543\">chống nước IP68</strong>.</p><p>\r\n\r\n\r\n\r\n</p><p data-start=\"1553\" data-end=\"1760\" class=\"\">Với mức giá hợp lý cùng hiệu năng đáng giá, <strong data-start=\"1597\" data-end=\"1617\">iPhone 16e 128GB</strong> là lựa chọn tuyệt vời cho học sinh, sinh viên, người dùng phổ thông hoặc ai đang tìm kiếm một chiếc iPhone nhỏ gọn, dễ dùng nhưng vẫn mạnh mẽ.</p>', 'http://techcare.test/', '16e-128GB', 25590000, 16290000, '2025-05-03', '2025-05-15', 'new_arrival', 1, 1, 'iPhone 16e 128GB – Nhỏ Gọn, Hiệu Năng Vượt Trội', 'Mua iPhone 16e 128GB – Chip A18, Giá Tốt, Hiệu Năng Mạnh Mẽ', '2025-05-03 00:50:29', '2025-05-05 10:07:33', NULL, 3, NULL),
(24, 'Điện thoại Samsung Galaxy A56 5G 8GB/128GB', 'dien-thoai-samsung-galaxy-a56-5g-8gb128gb', 'uploads/media_6816e02d7c36b.jpg', 1, 3, 2, 2, 6, 490, 'Samsung Galaxy A56 5G sở hữu màn hình Super AMOLED mượt mà, hiệu năng ổn định với chip Snapdragon mạnh mẽ, RAM 8GB, ROM 128GB, pin 5000mAh và kết nối 5G siêu nhanh, phù hợp cho mọi nhu cầu học tập, làm việc và giải trí.', '<h3 data-start=\"629\" data-end=\"708\" class=\"\"><strong data-start=\"633\" data-end=\"708\">Samsung Galaxy A56 5G 8GB/128GB – Sức mạnh vượt trội, kết nối tương lai</strong></h3><p data-start=\"710\" data-end=\"1058\" class=\"\">Samsung tiếp tục khẳng định vị thế trên thị trường smartphone tầm trung với mẫu <strong data-start=\"790\" data-end=\"807\">Galaxy A56 5G</strong> – một chiếc điện thoại hiện đại, hiệu năng mạnh, thiết kế tinh tế cùng kết nối siêu nhanh chuẩn 5G. Với <strong data-start=\"912\" data-end=\"923\">RAM 8GB</strong>, <strong data-start=\"925\" data-end=\"947\">bộ nhớ trong 128GB</strong> và viên pin dung lượng lớn, Galaxy A56 đáp ứng mượt mà mọi tác vụ từ học tập, làm việc đến chơi game giải trí.</p><hr data-start=\"1060\" data-end=\"1063\" class=\"\"><h3 data-start=\"1065\" data-end=\"1135\" class=\"\"><strong data-start=\"1069\" data-end=\"1135\">Màn hình Super AMOLED 6.6 inch – Sống động đến từng khung hình</strong></h3><p>\r\n\r\n\r\n\r\n</p><p data-start=\"1137\" data-end=\"1378\" class=\"\">Samsung trang bị cho Galaxy A56 5G màn hình <strong data-start=\"1181\" data-end=\"1206\">Super AMOLED 6.6 inch</strong>, độ phân giải Full HD+ cùng tần số quét 120Hz, cho trải nghiệm hình ảnh mượt mà, màu sắc rực rỡ, độ tương phản cao – lý tưởng để xem phim, lướt mạng xã hội hoặc chơi game.</p>', 'http://techcare.test/', 'A565G8GB/128GB', 9490000, NULL, '2025-05-04', '2025-05-04', 'best_product', 1, 1, 'Samsung Galaxy A56 5G 8GB/128GB – Thiết kế sang trọng, hiệu năng mạnh mẽ, kết nối siêu tốc', 'Bạn đang tìm một chiếc điện thoại tầm trung có hiệu năng mạnh mẽ, thiết kế hiện đại, hỗ trợ 5G và pin trâu? Samsung Galaxy A56 5G 8GB/128GB chính là lựa chọn đáng giá trong phân khúc.', '2025-05-03 20:34:05', '2025-05-05 10:18:29', NULL, 3, NULL),
(25, 'Điện thoại Samsung Galaxy A26 5G 6GB/128GB', 'dien-thoai-samsung-galaxy-a26-5g-6gb128gb', 'uploads/media_6816e2e5c582b.jpg', 1, 3, 2, 2, 6, 490, 'Samsung Galaxy A26 5G sở hữu thiết kế trẻ trung, chip xử lý mượt mà, RAM 6GB, bộ nhớ 128GB, pin 5000mAh bền bỉ và hỗ trợ 5G tốc độ cao – lựa chọn lý tưởng cho người dùng phổ thông cần hiệu năng ổn định.', '<strong data-start=\"824\" data-end=\"849\">Samsung Galaxy A26 5G</strong> là mẫu điện thoại tầm trung đáng chú ý năm 2024, mang đến trải nghiệm sử dụng mượt mà, pin siêu bền và kết nối mạng 5G thời thượng. Với <strong data-start=\"986\" data-end=\"997\">RAM 6GB</strong>, <strong data-start=\"999\" data-end=\"1021\">bộ nhớ trong 128GB</strong>, cùng thiết kế trẻ trung và màn hình sắc nét, Galaxy A26 phù hợp với học sinh, sinh viên, nhân viên văn phòng và người dùng phổ thông muốn sở hữu smartphone có hiệu năng tốt với giá hợp lý.', 'http://techcare.test/', 'A265G6GB/128GB', 7000000, 6000000, '2025-05-04', '2025-05-22', 'top_product', 1, 1, 'Samsung Galaxy A26 5G 6GB/128GB – Smartphone 5G giá tốt, pin khỏe', 'Samsung Galaxy A26 5G 6GB/128GB – Thiết kế hiện đại, chip mạnh, pin trâu, kết nối 5G siêu tốc', '2025-05-03 20:45:41', '2025-05-05 10:18:29', NULL, 3, NULL),
(26, 'Điện thoại iPhone 15 Pro Max 256GB', 'dien-thoai-iphone-15-pro-max-256gb', 'uploads/media_6816e80fd3b4b.jpg', 1, 3, 1, 1, 5, 490, 'iPhone 15 Pro Max 256GB nổi bật với thiết kế titan bền nhẹ, chip A17 Pro mạnh mẽ, camera zoom quang 5x đột phá, màn hình Super Retina XDR 120Hz và cổng USB-C tiện dụng – mang đến trải nghiệm đỉnh cao trong mọi tác vụ.', '<p>iPhone 15 Pro Max là chiếc flagship cao cấp nhất của Apple trong năm 2023, đánh dấu bước tiến vượt bậc cả về thiết kế, hiệu năng lẫn công nghệ camera. Phiên bản <strong data-start=\"1003\" data-end=\"1012\">256GB</strong> là lựa chọn lý tưởng cho người dùng muốn lưu trữ nhiều ảnh, video chất lượng cao mà vẫn đảm bảo hiệu suất mượt mà, bền bỉ trong nhiều năm sử dụng.</p><p><br></p>', 'http://techcare.test/', 'ProMax256GB', 30990000, 29990000, '2025-05-04', '2025-05-17', 'new_arrival', 1, 1, 'iPhone 15 Pro Max 256GB – Đẳng cấp flagship, hiệu năng vượt trội', 'iPhone 15 Pro Max 256GB – Thiết kế Titan siêu nhẹ, chip A17 Pro mạnh mẽ, camera đỉnh cao', '2025-05-03 21:07:43', '2025-05-05 21:48:18', NULL, 3, NULL),
(27, 'Điện thoại Samsung Galaxy A06 5G 6GB/128GB', 'dien-thoai-samsung-galaxy-a06-5g-6gb128gb', 'uploads/media_6816ec65d0be7.jpg', 1, 3, 2, 2, 6, 490, 'Samsung Galaxy A06 5G với RAM 6GB, ROM 128GB, pin 5000mAh, màn hình lớn 6.5 inch và kết nối 5G, mang đến hiệu năng ổn định và trải nghiệm mượt mà cho người dùng phổ thông.', '<h3 data-start=\"739\" data-end=\"819\" class=\"\"><strong data-start=\"743\" data-end=\"819\">Samsung Galaxy A06 5G 6GB/128GB – Giá rẻ, cấu hình tốt, kết nối hiện đại</strong></h3><p>\r\n</p><p data-start=\"821\" data-end=\"1245\" class=\"\">Samsung tiếp tục mở rộng dòng Galaxy A phổ thông với mẫu <strong data-start=\"878\" data-end=\"895\">Galaxy A06 5G</strong>, mang lại hiệu năng ổn định, thiết kế trẻ trung và hỗ trợ mạng 5G – tất cả gói gọn trong một mức giá hợp lý. Với <strong data-start=\"1009\" data-end=\"1020\">RAM 6GB</strong>, <strong data-start=\"1022\" data-end=\"1044\">bộ nhớ trong 128GB</strong>, màn hình lớn và viên pin bền bỉ, Galaxy A06 5G là lựa chọn phù hợp cho học sinh, sinh viên, người dùng phổ thông hoặc những ai cần một chiếc smartphone tiết kiệm nhưng vẫn đủ mạnh để sử dụng lâu dài.</p>', 'http://techcare.test/', 'A065G6GB/128GB', 4990000, 0, '2025-05-04', '2025-05-04', 'top_product', 1, 1, 'Samsung Galaxy A06 5G 6GB/128GB – Giá tốt, cấu hình ổn, kết nối 5G', 'Samsung Galaxy A06 5G 6GB/128GB – Smartphone phổ thông mạnh mẽ, pin lớn, màn hình rộng, kết nối 5G tốc độ cao', '2025-05-03 21:26:13', '2025-05-05 10:07:33', NULL, 3, NULL),
(28, 'Điện thoại Samsung Galaxy A36 5G 8GB/128GB', 'dien-thoai-samsung-galaxy-a36-5g-8gb128gb', 'uploads/media_6816ee8c55574.jpg', 1, 3, 2, 2, 6, 492, 'Samsung Galaxy A36 5G với RAM 8GB, bộ nhớ 128GB, màn hình 6.6 inch, chip xử lý mạnh mẽ, pin 5000mAh và kết nối 5G – là lựa chọn đáng giá cho người dùng muốn hiệu năng cao trong phân khúc giá hợp lý.', 'Samsung tiếp tục chinh phục phân khúc tầm trung với chiếc <strong data-start=\"747\" data-end=\"764\">Galaxy A36 5G</strong>, một smartphone có thiết kế thanh lịch, cấu hình mạnh mẽ, kết nối 5G hiện đại cùng viên pin lớn 5000mAh. Với <strong data-start=\"874\" data-end=\"885\">RAM 8GB</strong> và <strong data-start=\"889\" data-end=\"911\">bộ nhớ trong 128GB</strong>, Galaxy A36 giúp người dùng trải nghiệm mượt mà các tác vụ từ cơ bản đến nâng cao, phục vụ tốt cả công việc và giải trí.', 'http://techcare.test/', 'A365G8GB/128GB', 7690000, 0, '2025-05-04', '2025-05-04', 'best_product', 1, 1, 'Samsung Galaxy A36 5G 8GB/128GB – Hiệu năng mạnh, pin trâu, giá hợp lý', 'Samsung Galaxy A36 5G 8GB/128GB – Smartphone tầm trung mạnh mẽ, RAM lớn, kết nối 5G siêu tốc', '2025-05-03 21:35:24', '2025-05-05 10:07:34', NULL, 3, NULL),
(29, 'Điện thoại Samsung Galaxy A16 8GB/128GB', 'dien-thoai-samsung-galaxy-a16-8gb128gb', 'uploads/media_6816f04db79c8.jpg', 1, 3, 2, 2, 6, 495, 'Samsung Galaxy A16 sở hữu RAM 8GB, bộ nhớ 128GB, pin 5000mAh, màn hình lớn 6.5 inch và thiết kế trẻ trung – là lựa chọn lý tưởng cho người dùng phổ thông muốn hiệu năng ổn định, giá hợp lý.', '<p data-start=\"819\" data-end=\"1160\" class=\"\">Samsung tiếp tục mở rộng dòng A-series phổ thông với mẫu <strong data-start=\"876\" data-end=\"890\">Galaxy A16</strong>, mang đến một chiếc smartphone có hiệu năng tốt, màn hình lớn, pin dung lượng cao và thiết kế hiện đại. Phiên bản <strong data-start=\"1005\" data-end=\"1029\">8GB RAM và 128GB ROM</strong> phù hợp với người dùng trẻ, học sinh – sinh viên hoặc người có nhu cầu sử dụng lâu dài, mượt mà trong các tác vụ cơ bản hàng ngày.</p>', 'http://techcare.test/', 'A168GB/128GB', 6000000, 0, '2025-05-04', '2025-05-04', 'top_product', 1, 1, 'Samsung Galaxy A16 8GB/128GB – Cấu hình tốt, pin trâu, giá hấp dẫn', 'Samsung Galaxy A16 8GB/128GB – Smartphone giá rẻ, RAM lớn, pin 5000mAh, đáp ứng mọi nhu cầu', '2025-05-03 21:42:53', '2025-05-05 10:18:32', NULL, 3, NULL),
(30, 'iPhone 12 Pro Max 256GB', 'iphone-12-pro-max-256gb', 'uploads/media_6816f37727231.webp', 1, 3, 1, 1, 5, 493, 'iPhone 12 Pro Max 256GB sở hữu màn hình OLED 6.7 inch siêu nét, chip A14 Bionic, camera chuyên nghiệp và thiết kế cao cấp – là lựa chọn lý tưởng cho người yêu công nghệ, sáng tạo nội dung và chơi game hiệu năng cao.', '<li data-start=\"3151\" data-end=\"3220\" class=\"\"><p data-start=\"3153\" data-end=\"3220\" class=\"\">Ra mắt cuối năm 2020, <strong data-start=\"875\" data-end=\"902\">iPhone 12 Pro Max 256GB</strong> là một trong những dòng sản phẩm cao cấp của Apple, nổi bật với thiết kế sang trọng, hiệu năng vượt trội và hệ thống camera chuyên nghiệp. Dù đã ra mắt được một thời gian, iPhone 12 Pro Max vẫn là lựa chọn được nhiều người ưa chuộng nhờ hiệu năng ổn định, chụp ảnh đẹp và trải nghiệm mượt mà.</p></li>', 'http://techcare.test/', '12ProMax256GB', 31990000, 30990000, '2025-05-04', '2025-05-20', 'best_product', 1, 1, 'iPhone 12 Pro Max 256GB – Hiệu năng mạnh, camera đỉnh, màn hình lớn', 'iPhone 12 Pro Max 256GB – Thiết kế sang trọng, chip A14 Bionic mạnh mẽ, camera chuyên nghiệp, màn hình Super Retina XDR 6.7 inch', '2025-05-03 21:56:23', '2025-05-05 10:09:00', NULL, 3, NULL),
(31, 'iPhone 15 Pro Max 1TB', 'iphone-15-pro-max-1tb', 'uploads/media_6816f659855de.webp', 1, 3, 1, 1, 5, 492, 'iPhone 15 Pro Max 1TB là chiếc smartphone cao cấp nhất của Apple với thiết kế titan siêu nhẹ, chip A17 Pro mạnh mẽ, camera chuyên nghiệp và bộ nhớ khủng 1TB cho người dùng sáng tạo nội dung và chuyên nghiệp.', '<li data-start=\"3550\" data-end=\"3615\" class=\"\"><p data-start=\"3552\" data-end=\"3615\" class=\"\">iPhone 15 Pro Max là dòng cao cấp nhất của Apple, hướng đến người dùng đòi hỏi hiệu năng cực mạnh, thiết kế cao cấp và tính năng chụp ảnh, quay phim chuyên nghiệp. Phiên bản <strong data-start=\"917\" data-end=\"924\">1TB</strong> không chỉ mang lại khả năng lưu trữ khổng lồ mà còn là lựa chọn hàng đầu cho <strong data-start=\"1002\" data-end=\"1071\">dân làm phim, nhiếp ảnh gia, designer hay người sáng tạo nội dung</strong>.</p></li>', 'http//techcare.testiPhone 15 Pro Max 1TB – Siêu phẩm mạnh nhất, lưu trữ cực đại', '15ProMax1TB', 40000000, 39000000, '2025-05-04', '2025-05-23', 'top_product', 1, 1, 'iPhone 15 Pro Max 1TB – Siêu phẩm mạnh nhất, lưu trữ cực đại', 'iPhone 15 Pro Max 1TB – Thiết kế titan đẳng cấp, chip A17 Pro mạnh mẽ, quay video ProRes chuẩn điện ảnh', '2025-05-03 22:08:41', '2025-05-05 10:16:50', NULL, 3, NULL),
(32, 'iPhone 14 Pro Max 128GB', 'iphone-14-pro-max-128gb', 'uploads/media_6816fcf2e9cc6.png', 1, 3, 1, 1, 5, 495, 'iPhone 14 Pro Max 128GB sở hữu màn hình OLED 6.7 inch, chip A16 Bionic, camera 48MP cực nét, quay video chuẩn điện ảnh và thiết kế sang trọng – là lựa chọn lý tưởng cho người yêu công nghệ.', '<li data-start=\"2954\" data-end=\"3009\" class=\"\"><p data-start=\"2956\" data-end=\"3009\" class=\"\">Ra mắt vào cuối năm 2022, <strong data-start=\"818\" data-end=\"845\">iPhone 14 Pro Max 128GB</strong> là một trong những chiếc điện thoại cao cấp đáng sở hữu nhất của Apple. Với nhiều nâng cấp nổi bật như <strong data-start=\"949\" data-end=\"984\">màn hình Dynamic Island độc đáo</strong>, <strong data-start=\"986\" data-end=\"1001\">camera 48MP</strong>, <strong data-start=\"1003\" data-end=\"1022\">chip A16 Bionic</strong> và thời lượng pin ấn tượng, thiết bị này mang lại trải nghiệm toàn diện cho người dùng từ làm việc đến giải trí.</p></li>', 'http://techcare.test/', '14ProMax128GB', 25590000, 0, '2025-05-04', '2025-05-04', 'top_product', 1, 1, 'iPhone 14 Pro Max 128GB – Hiệu năng mạnh, thiết kế sang, camera 48MP', 'iPhone 14 Pro Max 128GB – Màn hình Dynamic Island, chip A16 Bionic, quay phim điện ảnh, camera 48MP đột phá', '2025-05-03 22:36:50', '2025-05-05 09:56:01', NULL, 3, NULL),
(33, 'iPhone 13 Pro Max 128GB', 'iphone-13-pro-max-128gb', 'uploads/media_6817027e99a96.webp', 1, 3, 1, 1, 5, 495, 'iPhone 13 Pro Max 128GB sở hữu chip A15 Bionic, màn hình OLED 6.7 inch 120Hz, cụm 3 camera chuyên nghiệp và thời lượng pin vượt trội – là lựa chọn lý tưởng cho người dùng yêu công nghệ và hiệu năng cao.', '<li data-start=\"2950\" data-end=\"3005\" class=\"\"><p data-start=\"2952\" data-end=\"3005\" class=\"\">Là mẫu flagship của Apple ra mắt năm 2021, <strong data-start=\"837\" data-end=\"864\">iPhone 13 Pro Max 128GB</strong> vẫn giữ được sức hút mạnh mẽ nhờ vào thiết kế cao cấp, hiệu năng mạnh mẽ và khả năng chụp ảnh – quay phim chuyên nghiệp. Dù đã ra mắt được một thời gian, iPhone 13 Pro Max vẫn là chiếc smartphone cao cấp đáng sở hữu trong phân khúc.</p></li>', 'http://techcare.test/', '13ProMax128GB', 22990000, 0, '2025-05-04', '2025-05-04', 'best_product', 1, 1, 'iPhone 13 Pro Max 128GB – Mạnh mẽ, sang trọng, camera siêu nét', 'iPhone 13 Pro Max 128GB – Màn hình 120Hz mượt mà, chip A15 Bionic mạnh mẽ, camera chụp đêm xuất sắc', '2025-05-03 23:00:30', '2025-05-05 10:07:32', NULL, 3, NULL),
(34, 'iPhone 14 Plus 128GB', 'iphone-14-plus-128gb', 'uploads/media_6817051582e90.webp', 1, 3, 1, 14, 5, 491, 'iPhone 14 Plus 128GB sở hữu màn hình lớn 6.7 inch, chip A15 Bionic mạnh mẽ, camera kép 12MP chụp ảnh xuất sắc và thời lượng pin dài nhất từng có trên iPhone – lựa chọn đáng giá trong phân khúc cao cấp.', '<li data-start=\"2864\" data-end=\"2912\" class=\"\"><h3 data-start=\"703\" data-end=\"783\" class=\"\"><strong data-start=\"785\" data-end=\"809\" style=\"font-size: 14px;\">iPhone 14 Plus 128GB</strong><span style=\"font-weight: 500; font-size: 14px;\"> là phiên bản đặc biệt của dòng iPhone 14, mang đến trải nghiệm màn hình siêu lớn nhưng mức giá hợp lý hơn so với dòng Pro Max. Với chip A15 Bionic, cụm camera kép chất lượng cao, thời lượng pin cực tốt và màn hình 6.7 inch – đây là lựa chọn tuyệt vời cho người dùng thích màn hình rộng, dùng lâu, hiệu năng mạnh.</span></h3></li>', 'http//techcare.test', '14Plus128GB', 15990000, 0, '2025-05-04', '2025-05-04', 'best_product', 1, 1, 'iPhone 14 Plus 128GB – Màn hình lớn, pin khỏe, hiệu năng mạnh', 'iPhone 14 Plus 128GB – Màn hình 6.7 inch cực lớn, chip A15 Bionic, pin dùng 2 ngày, camera kép siêu nét', '2025-05-03 23:11:33', '2025-05-05 10:09:22', NULL, 3, NULL),
(35, 'iPhone 14 Plus 256GB', 'iphone-14-plus-256gb', 'uploads/media_681709a58baee.webp', 1, 3, 1, 14, 5, 490, 'iPhone 14 Plus 256GB nổi bật với màn hình 6.7 inch OLED sắc nét, chip A15 Bionic mạnh mẽ, camera kép 12MP hỗ trợ quay phim điện ảnh và dung lượng pin siêu lâu – lựa chọn lý tưởng cho người dùng yêu thích giải trí và lưu trữ lớn.', '<p><strong data-start=\"826\" data-end=\"850\">iPhone 14 Plus 256GB</strong> mang đến trải nghiệm cao cấp với <strong data-start=\"884\" data-end=\"909\">màn hình lớn 6.7 inch</strong>, hiệu năng mạnh mẽ từ <strong data-start=\"932\" data-end=\"957\">chip Apple A15 Bionic</strong>, bộ nhớ trong rộng rãi <strong data-start=\"981\" data-end=\"990\">256GB</strong> cùng <strong data-start=\"996\" data-end=\"1023\">thời lượng pin ấn tượng</strong> – phù hợp cho cả công việc, giải trí lẫn lưu trữ dữ liệu cá nhân. Đây là lựa chọn hoàn hảo cho người dùng muốn trải nghiệm gần như Pro Max nhưng với mức giá hợp lý hơn.</p>', 'http//techcare.test', '14Plus256GB', 19490000, 0, '2025-05-04', '2025-05-04', 'best_product', 1, 1, 'iPhone 14 Plus 256GB – Màn hình lớn, hiệu năng mạnh, pin khủng', 'iPhone 14 Plus 256GB – Màn hình OLED 6.7 inch siêu lớn, chip A15 Bionic, bộ nhớ 256GB, pin bền bỉ cả ngày dài', '2025-05-03 23:31:01', '2025-05-05 10:09:02', NULL, 3, NULL);
INSERT INTO `products` (`id`, `name`, `slug`, `thumb_image`, `vendor_id`, `category_id`, `sub_category_id`, `child_category_id`, `brand_id`, `qty`, `short_description`, `long_description`, `video_link`, `sku`, `price`, `offer_price`, `offer_start_date`, `offer_end_date`, `product_type`, `status`, `is_approved`, `seo_title`, `seo_description`, `created_at`, `updated_at`, `warranty_code`, `warranty_duration`, `warranty_expiration_date`) VALUES
(36, '8GB/256GB', '8gb256gb', 'uploads/media_68170c480bb0b.png', 1, 3, 9, 15, 9, 489, 'vivo V50 Lite 8GB/256GB nổi bật với thiết kế trẻ trung, màn hình AMOLED 6.67 inch sắc nét, chip Snapdragon 4 Gen 2, RAM 8GB, bộ nhớ 256GB, camera AI 50MP và pin 5000mAh hỗ trợ sạc nhanh 44W – lý tưởng cho người dùng năng động.', '<p data-start=\"831\" data-end=\"1134\" class=\"\"><strong data-start=\"831\" data-end=\"848\">vivo V50 Lite</strong> là một trong những smartphone tầm trung mới nổi bật năm 2024, mang phong cách thiết kế hiện đại cùng cấu hình hấp dẫn. Với <strong data-start=\"972\" data-end=\"983\">RAM 8GB</strong>, bộ nhớ lớn <strong data-start=\"996\" data-end=\"1005\">256GB</strong>, chip Snapdragon mới, cụm camera chất lượng và viên pin bền bỉ – máy đáp ứng tốt mọi nhu cầu từ học tập, công việc đến giải trí.</p>', 'http://techcare.test/', 'vivoV50Lite 8GB/256GB', 8990000, 0, '2025-05-04', '2025-05-04', 'best_product', 1, 1, 'vivo V50 Lite 8GB/256GB – Thiết kế trẻ trung, hiệu năng ổn định', 'vivo V50 Lite 8GB/256GB – Thiết kế thời thượng, chip Snapdragon mượt mà, camera AI 50MP, pin 5000mAh sạc nhanh 44W', '2025-05-03 23:42:16', '2025-05-05 10:18:27', NULL, 3, NULL),
(37, 'Laptop Asus Vivobook 15 OLED A1505ZA i5 12500H/16GB/512GB/120Hz/Win11 (MA415W)', 'laptop-asus-vivobook-15-oled-a1505za-i5-12500h16gb512gb120hzwin11-ma415w', 'uploads/media_68170f388eeb9.jpg', 1, 4, 3, 3, 2, 500, 'Asus Vivobook 15 OLED A1505ZA trang bị chip Intel Core i5-12500H mạnh mẽ, RAM 16GB, SSD 512GB, màn hình OLED 15.6\" FHD 120Hz sắc nét, tần số quét cao – phù hợp cho cả học tập, làm việc văn phòng và sáng tạo nội dung.', '<p><strong data-start=\"875\" data-end=\"917\">Asus Vivobook 15 OLED A1505ZA (MA415W)</strong> là dòng laptop mỏng nhẹ hướng tới người dùng văn phòng, sinh viên và sáng tạo nội dung cơ bản. Máy nổi bật với <strong data-start=\"1029\" data-end=\"1060\">màn hình OLED cao cấp 120Hz</strong>, bộ vi xử lý mạnh mẽ <strong data-start=\"1082\" data-end=\"1106\">Intel Core i5-12500H</strong>, RAM lớn 16GB và ổ cứng SSD 512GB – đảm bảo hiệu suất ổn định trong mọi tác vụ.</p>', 'http//techcare.test', 'Vivobook15OLEDA1505ZAi512500H/16GB/512GB/120Hz/Win11(MA415W)', 170000000, 0, '2025-05-04', '2025-05-04', 'featured_product', 1, 1, 'Laptop Asus Vivobook 15 OLED A1505ZA – i5 Gen 12, RAM 16GB, màn OLED 120Hz', 'Laptop Asus Vivobook 15 OLED A1505ZA i5-12500H – Màn OLED 15.6\" 120Hz siêu mượt, RAM 16GB, SSD 512GB, thiết kế mỏng nhẹ, chạy Win 11 bản quyền', '2025-05-03 23:54:48', '2025-05-03 23:54:48', NULL, 3, NULL),
(38, 'Laptop Asus Vivobook X1404ZA i3 1215U/8GB/512GB/Win11 (NK246W)', 'laptop-asus-vivobook-x1404za-i3-1215u8gb512gbwin11-nk246w', 'uploads/media_6817108e36bbe.jpg', 1, 4, 3, 3, 2, 500, 'Asus Vivobook X1404ZA i3-1215U với thiết kế gọn nhẹ, màn hình 14 inch Full HD, chip Intel Core i3 Gen 12, RAM 8GB, SSD 512GB – lý tưởng cho học sinh, sinh viên và người dùng văn phòng.', '<p><strong data-start=\"828\" data-end=\"862\">Asus Vivobook X1404ZA (NK246W)</strong> là mẫu laptop mỏng nhẹ trong phân khúc phổ thông, hướng tới người dùng văn phòng, sinh viên hoặc học sinh cần một chiếc máy bền bỉ, hiệu năng ổn định và thiết kế nhỏ gọn dễ di chuyển. Máy trang bị <strong data-start=\"1060\" data-end=\"1102\">vi xử lý Intel Core i3-1215U thế hệ 12</strong>, RAM 8GB, SSD 512GB cùng nhiều cổng kết nối hữu ích.</p>', 'http://techcare.test/', 'AsusVivobookX1404ZAi31215U/8GB/512GB/Win11(NK246W)', 10690000, 0, '2025-05-04', '2025-05-04', 'new_arrival', 1, 1, 'Asus Vivobook X1404ZA i3 Gen 12 – Mỏng nhẹ, hiệu năng ổn định', 'Laptop Asus Vivobook X1404ZA i3-1215U/8GB/512GB – Thiết kế mỏng nhẹ, chip Intel Gen 12 mạnh mẽ, phù hợp học tập và văn phòng', '2025-05-04 00:00:30', '2025-05-04 07:21:05', NULL, 3, NULL),
(39, 'Dell Inspiron 15 3520 1255U (N5I7125W1)', 'dell-inspiron-15-3520-1255u-n5i7125w1', 'uploads/media_681711a416d19.jpg', 1, 4, 4, 4, 3, 494, 'Laptop Dell Inspiron 15 3520 trang bị chip Intel Core i5-1255U Gen 12, RAM 8GB, SSD 512GB, màn hình 15.6” FHD, pin khỏe, độ bền cao – lý tưởng cho dân văn phòng, sinh viên và người làm việc di động.', '<p data-start=\"862\" data-end=\"1186\" class=\"\"><strong data-start=\"862\" data-end=\"899\">Dell Inspiron 15 3520 (N5I7125W1)</strong> là dòng laptop phổ thông nổi bật với độ bền cao, hiệu năng ổn định và thiết kế chắc chắn đặc trưng của Dell. Máy được trang bị vi xử lý <strong data-start=\"1036\" data-end=\"1066\">Intel Core i5-1255U Gen 12</strong>, RAM 8GB, SSD 512GB và màn hình lớn 15.6 inch – phù hợp cho học sinh, sinh viên, dân văn phòng hoặc làm việc đa tác vụ.</p>', 'http://techcare.test/', 'DellInspiron1535201255U(N5I7125W1)', 19990000, 0, '2025-05-04', '2025-05-04', 'featured_product', 1, 1, 'Dell Inspiron 15 3520 i5 Gen 12 – Laptop văn phòng mạnh mẽ, bền bỉ', 'Laptop Dell Inspiron 15 3520 i5-1255U (N5I7125W1) – Hiệu năng mạnh mẽ, màn hình 15.6 inch FHD, thiết kế cứng cáp, phù hợp học tập – làm việc văn phòng', '2025-05-04 00:05:08', '2025-05-05 10:09:22', NULL, 3, NULL),
(40, 'Laptop Dell Inspiron 15 3520 i7 1255U/16GB/512GB/120Hz/OfficeHS/KYHD/Win11 (25P2315)', 'laptop-dell-inspiron-15-3520-i7-1255u16gb512gb120hzofficehskyhdwin11-25p2315', 'uploads/media_6817135d143a1.jpg', 1, 4, 4, 4, 3, 500, 'Laptop Dell Inspiron 15 3520 (25P2315) trang bị Intel Core i7-1255U, RAM 16GB, SSD 512GB, màn hình 15.6\" FHD 120Hz, tặng Office Home & Student bản quyền – phù hợp làm việc văn phòng, học tập và đa tác vụ.', '<p><strong data-start=\"892\" data-end=\"927\">Dell Inspiron 15 3520 (25P2315)</strong> là mẫu laptop văn phòng tầm trung cao được trang bị cấu hình mạnh mẽ, thiết kế bền bỉ và màn hình 120Hz siêu mượt. Với chip Intel Core i7-1255U Gen 12, RAM 16GB, SSD 512GB và tặng kèm <strong data-start=\"1112\" data-end=\"1156\">Office Home &amp; Student bản quyền trọn đời</strong>, đây là lựa chọn tối ưu cho dân văn phòng, sinh viên công nghệ hoặc người dùng cần hiệu năng cao, ổn định lâu dài.</p>', 'http://techcare.test/', 'LaptopDellInspiron153520i71255U/16GB/512GB/120Hz/OfficeHS/KYHD/Win11(25P2315)', 19690000, 0, '2025-05-04', '2025-05-04', 'featured_product', 1, 1, 'Dell Inspiron 15 3520 i7 Gen 12 – Laptop mạnh mẽ cho học tập và văn phòng', 'Laptop Dell Inspiron 15 3520 i7-1255U/16GB/512GB/120Hz – Màn hình mượt, hiệu năng cao, tặng kèm Office bản quyền', '2025-05-04 00:12:29', '2025-05-04 00:12:29', NULL, 3, NULL),
(41, 'Laptop MacBook Air 13 inch M4 16GB/256GB', 'laptop-macbook-air-13-inch-m4-16gb256gb', 'uploads/media_681810dbae882.jpg', 1, 4, 10, 10, 10, 487, 'MacBook Air 13 inch M4 2024 trang bị chip Apple M4, RAM 16GB, SSD 256GB, màn Liquid Retina siêu nét, pin 18 giờ – là lựa chọn hoàn hảo cho học tập, văn phòng và sáng tạo nội dung di động.', '<p>MacBook Air 13 inch M4 (2024) tiếp tục khẳng định vị thế <strong data-start=\"851\" data-end=\"890\">laptop mỏng nhẹ mạnh nhất phân khúc</strong> với thiết kế tối giản sang trọng, <strong data-start=\"925\" data-end=\"963\">hiệu năng đột phá từ chip Apple M4</strong>, tiết kiệm năng lượng vượt trội và màn hình sắc nét. Với bộ nhớ RAM 16GB và SSD 256GB, máy lý tưởng cho người dùng cần hiệu suất ổn định để làm việc, học tập hay sáng tạo nội dung.</p>', 'http://techcare.test/', 'MacBookAir13 inchM416GB/256GB', 26990000, 0, '2025-05-04', '2025-05-04', 'new_arrival', 1, 1, 'MacBook Air 13 M4 (2024) – Siêu nhẹ, siêu mạnh, pin trâu', 'Laptop Apple MacBook Air 13 inch M4 2024 – Chip M4 mới, RAM 16GB, thiết kế mỏng nhẹ, pin lên đến 18 giờ', '2025-05-04 00:40:53', '2025-05-05 10:18:32', NULL, 3, NULL),
(42, 'Laptop MacBook Air 13 inch M4 16GB/526GB', 'laptop-macbook-air-13-inch-m4-16gb526gb', 'uploads/media_6818100182de6.jpg', 1, 4, 10, 10, 10, 493, 'MacBook Air 13 inch M4 (2022) sở hữu thiết kế mỏng nhẹ chỉ 1.24kg, chip Apple M2 mạnh mẽ, RAM 16GB, SSD 256GB, màn hình Liquid Retina siêu sắc nét – là lựa chọn hoàn hảo cho dân văn phòng, sinh viên và người sáng tạo nội dung.', '<p data-start=\"841\" data-end=\"1198\" class=\"\"><strong data-start=\"841\" data-end=\"867\">MacBook Air M4 13 inch</strong> là phiên bản nâng cấp toàn diện từ Apple, không chỉ thay đổi thiết kế vuông vức sang trọng, mà còn nâng cấp hiệu năng nhờ con chip Apple M2 mạnh mẽ. Với <strong data-start=\"1021\" data-end=\"1033\">RAM 16GB</strong> và <strong data-start=\"1037\" data-end=\"1050\">SSD 256GB</strong>, sản phẩm mang lại hiệu suất vượt trội trong một thiết bị siêu nhẹ, pin dùng lâu đến 18 tiếng – hoàn hảo cho làm việc di động, học tập và sáng tạo.</p>', 'http://techcare.test/', 'MacBookAir13inchM416GB/526GB', 21490000, 0, '2025-05-04', '2025-05-04', 'featured_product', 1, 1, 'MacBook Air 13 M4 – Mỏng nhẹ, mạnh mẽ, pin bền bỉ', 'Laptop Apple MacBook Air 13 inch  (2022) – RAM 16GB, SSD 256GB, hiệu năng mạnh, pin đến 18 giờ, thiết kế siêu mỏng nhẹ', '2025-05-04 00:50:21', '2025-05-05 10:09:19', NULL, 3, NULL),
(43, 'Laptop MacBook Air 15 inch M4 24GB/256GB', 'laptop-macbook-air-15-inch-m4-24gb256gb', 'uploads/media_68180f7394b65.jpg', 1, 4, 10, 10, 10, 490, 'MacBook Air 15 inch M4 2024 sở hữu màn hình lớn 15.3 inch sắc nét, chip Apple M4 mạnh mẽ, RAM 24GB siêu đa nhiệm, SSD 256GB, pin 18 giờ – hoàn hảo cho người làm việc chuyên nghiệp và sáng tạo nội dung.', '<p data-start=\"891\" data-end=\"1172\" class=\"\"><strong data-start=\"891\" data-end=\"912\">MacBook Air 15 M4</strong> là phiên bản mới nhất năm 2024, mang đến sự kết hợp hoàn hảo giữa <strong data-start=\"979\" data-end=\"1005\">màn hình lớn 15.3 inch</strong>, <strong data-start=\"1007\" data-end=\"1035\">chip Apple M4 thế hệ mới</strong>, và <strong data-start=\"1040\" data-end=\"1060\">RAM lên tới 24GB</strong>, lý tưởng cho công việc cần xử lý đa nhiệm nặng, sáng tạo nội dung, thiết kế, lập trình hoặc dựng video cơ bản.</p>', 'http://techcare.test/', 'MacBookAir15inchM424GB/256GB', 36980000, 35980000, '2025-05-04', '2025-05-04', 'new_arrival', 1, 1, 'MacBook Air 15 M4 – Màn lớn, mạnh mẽ, RAM khủng 24GB', 'Laptop Apple MacBook Air 15 inch M4 2024 – RAM 24GB, SSD 256GB, màn lớn, hiệu năng vượt trội, thiết kế siêu mỏng nhẹ', '2025-05-04 01:04:15', '2025-05-05 10:18:33', NULL, 3, NULL),
(44, 'Laptop MacBook Air 13 inch M2 24GB/512GB', 'laptop-macbook-air-13-inch-m2-24gb512gb', 'uploads/media_68180ed41e5d3.jpg', 1, 4, 10, 17, 10, 485, 'MacBook Air 13 inch M2 với RAM 24GB, SSD 512GB và chip Apple M2 mạnh mẽ mang đến hiệu năng vượt trội trong thiết kế siêu mỏng nhẹ – lý tưởng cho dân văn phòng, lập trình viên, thiết kế đồ họa và người làm nội dung chuyên nghiệp.', '<p><strong data-start=\"940\" data-end=\"966\">MacBook Air M2 13 inch</strong> là sự lựa chọn hoàn hảo cho người dùng yêu cầu <strong data-start=\"1014\" data-end=\"1059\">hiệu năng cao, máy mỏng nhẹ và pin bền bỉ</strong>. Với <strong data-start=\"1065\" data-end=\"1077\">RAM 24GB</strong> và <strong data-start=\"1081\" data-end=\"1094\">SSD 512GB</strong>, thiết bị đáp ứng tốt các tác vụ nặng, đa nhiệm nhiều phần mềm, làm đồ họa, lập trình hoặc biên tập nội dung. Thiết kế sang trọng, thời lượng pin dài cùng hệ sinh thái Apple mượt mà giúp nâng tầm trải nghiệm người dùng.</p>', 'http://techcare.test/', 'mac2', 30990000, 0, '2025-05-04', '2025-05-04', 'featured_product', 1, 1, 'MacBook Air 13 M2 – RAM 24GB, SSD 512GB, mỏng nhẹ hiệu năng cao', 'Laptop Apple MacBook Air 13 inch M2 (2022) – RAM 24GB, SSD 512GB, thiết kế siêu mỏng, pin trâu, hiệu năng vượt trội cho người dùng chuyên nghiệp', '2025-05-04 01:14:52', '2025-05-05 10:10:21', NULL, 3, NULL),
(45, 'Laptop MacBook Air 13 inch M4 32GB/256GB', 'laptop-macbook-air-13-inch-m4-32gb256gb', 'uploads/media_68180e818361e.jpg', 1, 4, 10, 17, 10, 497, 'MacBook Air 13 inch M4 (2024) trang bị chip Apple M4 mới nhất, RAM khủng 32GB, SSD 256GB và thiết kế siêu mỏng – phù hợp cho người dùng chuyên nghiệp, lập trình viên, thiết kế, dựng video, làm việc AI và xử lý đa nhiệm hiệu quả.', '<p><strong data-start=\"913\" data-end=\"944\">MacBook Air M4 13 inch 2024</strong> là phiên bản mới nhất trong dòng Air của Apple, mang trong mình sức mạnh <strong data-start=\"1018\" data-end=\"1035\">chip Apple M4</strong> được sản xuất trên tiến trình 3nm và đặc biệt trang bị <strong data-start=\"1091\" data-end=\"1111\">RAM lên tới 32GB</strong> – cực kỳ phù hợp cho người dùng chuyên nghiệp làm việc nặng, xử lý dữ liệu lớn, lập trình, thiết kế UI/UX, sử dụng máy ảo hoặc dựng video 4K cơ bản.</p>', 'http://techcare.test/', 'LaptopMacBookAir13inchM432GB/256GB', 369900000, 0, '2025-05-04', '2025-05-04', 'best_product', 1, 1, 'MacBook Air 13 M4 – RAM 32GB, chip mới mạnh mẽ, thiết kế siêu mỏng', 'Laptop Apple MacBook Air 13 inch M4 (2024) – RAM 32GB, SSD 256GB, chip M4 AI mạnh mẽ, mỏng nhẹ, pin trâu, dành cho người dùng chuyên sâu', '2025-05-04 01:21:38', '2025-05-05 09:48:38', NULL, 3, NULL),
(46, 'Pin sạc dự phòng 20000mAh Type C PD 45W Samsung EB-P4520', 'pin-sac-du-phong-20000mah-type-c-pd-45w-samsung-eb-p4520', 'uploads/media_68180e0c3b716.jpg', 1, 5, 14, 19, 6, 500, 'Samsung EB-P4520 là pin sạc dự phòng 20000mAh hỗ trợ sạc nhanh PD 45W qua cổng Type-C, sạc nhanh được cả smartphone, tablet và laptop – thiết kế cao cấp, an toàn, nhỏ gọn tiện lợi mang theo mọi nơi.', '<p><strong data-start=\"780\" data-end=\"800\">Samsung EB-P4520</strong> là mẫu <strong data-start=\"808\" data-end=\"847\">pin sạc dự phòng cao cấp chính hãng</strong>, dung lượng <strong data-start=\"860\" data-end=\"872\">20000mAh</strong>, hỗ trợ công nghệ <strong data-start=\"891\" data-end=\"918\">Power Delivery (PD) 45W</strong>, đặc biệt <strong data-start=\"929\" data-end=\"978\">sạc được cả laptop, điện thoại, máy tính bảng</strong> nhanh chóng và an toàn. Với thiết kế nhỏ gọn, vỏ nhôm sang trọng và khả năng tương thích rộng, sản phẩm này là người bạn đồng hành lý tưởng cho công việc và du lịch.</p>', 'http://techcare.test/', 'sacduphong1', 890000, 0, '2025-05-04', '2025-05-04', 'new_arrival', 1, 1, 'Pin sạc dự phòng Samsung 20000mAh EB-P4520 – Sạc nhanh 45W, Type-C PD', 'Pin sạc dự phòng Samsung EB-P4520 20000mAh – Sạc nhanh PD 45W, 2 cổng Type-C, hỗ trợ sạc laptop, smartphone tiện lợi', '2025-05-04 01:31:35', '2025-05-04 18:02:04', NULL, 3, NULL),
(47, 'Pin sạc dự phòng 10000 mAh Type C PD 25W Samsung EB-P3400', 'pin-sac-du-phong-10000-mah-type-c-pd-25w-samsung-eb-p3400', 'uploads/media_68180df22c093.jpg', 1, 5, 14, 19, 6, 500, 'Pin sạc dự phòng Samsung EB-P3400 dung lượng 10000mAh, hỗ trợ sạc nhanh PD 25W qua cổng Type-C, thiết kế nhỏ gọn, sang trọng, an toàn tuyệt đối – lý tưởng cho người dùng thường xuyên di chuyển.', '<p><strong data-start=\"875\" data-end=\"895\">Samsung EB-P3400</strong> là dòng <strong data-start=\"904\" data-end=\"935\">pin sạc dự phòng chính hãng</strong>, dung lượng <strong data-start=\"948\" data-end=\"961\">10.000mAh</strong>, hỗ trợ <strong data-start=\"970\" data-end=\"1007\">sạc nhanh Power Delivery (PD) 25W</strong>, giúp sạc nhanh chóng cho điện thoại, máy tính bảng và các thiết bị khác. Với thiết kế mỏng nhẹ, hiện đại và chất lượng đạt chuẩn Samsung, sản phẩm này là lựa chọn lý tưởng cho người dùng yêu cầu sự gọn nhẹ, hiệu năng ổn định và an toàn cao.</p>', 'http://techcare.test/', 'sacduphong2', 590000, 0, '2025-05-04', '2025-05-04', 'new_arrival', 1, 1, 'Pin sạc dự phòng Samsung EB-P3400 10000mAh – Hỗ trợ sạc nhanh PD 25W, 2 cổng USB-C, thiết kế mỏng nhẹ tiện dụng', 'Pin sạc dự phòng Samsung EB-P3400 dung lượng 10000mAh, hỗ trợ sạc nhanh PD 25W qua cổng Type-C, thiết kế nhỏ gọn, sang trọng, an toàn tuyệt đối – lý tưởng cho người dùng thường xuyên di chuyển.', '2025-05-04 01:35:03', '2025-05-04 18:01:38', NULL, 3, NULL),
(48, 'Pin sạc dự phòng 10000mAh Không dây Type C PD 25W Samsung EB-U2510', 'pin-sac-du-phong-10000mah-khong-day-type-c-pd-25w-samsung-eb-u2510', 'uploads/media_68180dca22784.jpg', 1, 5, 14, 19, 6, 500, 'Samsung EB-U2510 là pin sạc dự phòng 10000mAh tích hợp sạc không dây chuẩn Qi, hỗ trợ sạc nhanh PD 25W qua cổng Type-C, thiết kế nhỏ gọn, tiện lợi, an toàn – lý tưởng cho người dùng di động hiện đại.', '<p>Pin sạc dự phòng <strong data-start=\"899\" data-end=\"919\">Samsung EB-U2510</strong> là giải pháp năng lượng lý tưởng cho người dùng hiện đại. Với dung lượng <strong data-start=\"993\" data-end=\"1005\">10000mAh</strong>, hỗ trợ <strong data-start=\"1014\" data-end=\"1041\">sạc nhanh PD 25W có dây</strong> và <strong data-start=\"1045\" data-end=\"1093\">sạc không dây chuẩn Qi công suất lên tới 15W</strong>, sản phẩm này mang đến sự tiện lợi tối đa, đặc biệt phù hợp cho điện thoại thông minh hỗ trợ sạc không dây như <strong data-start=\"1205\" data-end=\"1233\">Galaxy, iPhone, Pixel...</strong></p>', 'http://techcare.test/', 'sacduphong3', 805000, 0, '2025-05-04', '2025-05-04', 'top_product', 1, 1, 'Pin sạc dự phòng không dây Samsung EB-U2510 10000mAh – Sạc nhanh PD 25W, Qi Wireless, 2 cổng Type-C, nhỏ gọn tiện lợi', 'Samsung EB-U2510 là pin sạc dự phòng 10000mAh tích hợp sạc không dây chuẩn Qi, hỗ trợ sạc nhanh PD 25W qua cổng Type-C, thiết kế nhỏ gọn, tiện lợi, an toàn – lý tưởng cho người dùng di động hiện đại.', '2025-05-04 01:52:59', '2025-05-04 18:00:58', NULL, 3, NULL),
(49, 'Bộ Adapter sạc kèm cáp Type C - Type C PD 45W Samsung EP-T4511', 'bo-adapter-sac-kem-cap-type-c-type-c-pd-45w-samsung-ep-t4511', 'uploads/media_68180da81753d.jpg', 1, 5, 14, 20, 6, 500, 'Bộ sạc nhanh Samsung EP-T4511 công suất 45W hỗ trợ PD & PPS, đi kèm cáp Type-C to C dài 1m, tương thích điện thoại, tablet, laptop – chính hãng, an toàn, sạc siêu tốc.', '<h3 data-start=\"746\" data-end=\"821\" class=\"\"><strong data-start=\"753\" data-end=\"821\">Sạc nhanh chuẩn Samsung – An toàn, bền bỉ, công suất lên tới 45W</strong></h3><p data-start=\"823\" data-end=\"1038\" class=\"\">Bộ sạc nhanh <strong data-start=\"836\" data-end=\"856\">Samsung EP-T4511</strong> là combo gồm <strong data-start=\"870\" data-end=\"899\">adapter sạc công suất 45W</strong> và <strong data-start=\"903\" data-end=\"931\">cáp sạc Type-C to Type-C</strong>, hỗ trợ <strong data-start=\"940\" data-end=\"986\">chuẩn sạc nhanh Power Delivery (PD) và PPS</strong>, giúp sạc thiết bị một cách nhanh chóng và an toàn.</p><p>\r\n\r\n</p><p data-start=\"1040\" data-end=\"1148\" class=\"\">Đây là lựa chọn lý tưởng cho người dùng điện thoại Galaxy, máy tính bảng, và cả laptop hỗ trợ sạc qua USB-C.</p>', 'http://techcare.test/', 'sac1', 850000, 0, '2025-05-04', '2025-05-04', 'new_arrival', 1, 1, 'Bộ sạc nhanh Samsung EP-T4511 45W kèm cáp Type C chính hãng', 'Bộ Adapter sạc nhanh Samsung EP-T4511 45W kèm cáp Type-C to Type-C – Sạc nhanh PD PPS cho điện thoại, máy tính bảng, laptop', '2025-05-04 01:59:41', '2025-05-04 18:00:24', NULL, 3, NULL),
(50, 'Bộ Đế sạc không dây 3 in 1 15W MagGo kèm Cáp Type C - Type C 1.5m Anker B2557', 'bo-de-sac-khong-day-3-in-1-15w-maggo-kem-cap-type-c-type-c-15m-anker-b2557', 'uploads/media_68180d947a1a7.jpg', 1, 5, 14, 20, 5, 500, 'Anker MagGo B2557 là đế sạc không dây 3 trong 1 công suất 15W, sạc đồng thời iPhone, Apple Watch, AirPods, đi kèm cáp Type-C dài 1.5m, thiết kế nhỏ gọn, chuẩn Qi, an toàn và tiện lợi.', '<h3 data-start=\"761\" data-end=\"839\" class=\"\"><strong data-start=\"768\" data-end=\"839\">Anker MagGo B2557 – Sạc không dây 3 trong 1, gọn nhẹ, chuẩn MagSafe</strong></h3><p data-start=\"841\" data-end=\"1055\" class=\"\"><strong data-start=\"841\" data-end=\"862\">Anker B2557 MagGo</strong> là giải pháp sạc toàn diện dành cho người dùng thiết bị Apple. Với thiết kế <strong data-start=\"939\" data-end=\"949\">3 in 1</strong> cực kỳ gọn gàng, bạn có thể <strong data-start=\"978\" data-end=\"1025\">sạc cùng lúc iPhone, Apple Watch và AirPods</strong> chỉ với một bộ đế duy nhất.</p><p>\r\n\r\n</p><p data-start=\"1057\" data-end=\"1182\" class=\"\">Tích hợp sạc không dây <strong data-start=\"1080\" data-end=\"1103\">chuẩn Qi và MagSafe</strong>, công suất tối đa <strong data-start=\"1122\" data-end=\"1137\">lên đến 15W</strong>, mang lại tốc độ sạc nhanh chóng và ổn định.</p>', 'http://techcare.test/', 'sac2', 1990000, 0, '2025-05-04', '2025-05-04', 'top_product', 1, 1, 'Đế sạc không dây Anker MagGo 3 in 1 B2557 – Sạc 15W, kèm cáp Type-C', 'Bộ đế sạc không dây Anker MagGo 3 in 1 15W B2557 – Sạc đồng thời iPhone, Apple Watch, AirPods – kèm cáp Type-C 1.5m, chuẩn Qi, nhỏ gọn, tiện lợi', '2025-05-04 02:02:09', '2025-05-04 18:00:04', NULL, 3, NULL),
(51, 'Adapter chuyển đổi Type C 4 in 1 Xmobile DS606H', 'adapter-chuyen-doi-type-c-4-in-1-xmobile-ds606h', 'uploads/media_68180cfb863f6.jpg', 1, 5, 14, 20, 6, 500, 'Adapter Xmobile DS606H tích hợp 4 cổng chuyển đổi: HDMI, USB 3.0, thẻ nhớ SD/TF, hỗ trợ độ phân giải 4K – Kết nối nhanh chóng, thiết kế nhỏ gọn, tiện lợi mang theo mọi nơi.', '<h3 data-start=\"690\" data-end=\"779\" class=\"\"><strong data-start=\"697\" data-end=\"779\">Xmobile DS606H – Giải pháp chuyển đổi Type-C 4 trong 1 cho người dùng hiện đại</strong></h3><p>\r\n</p><p data-start=\"781\" data-end=\"1057\" class=\"\"><strong data-start=\"781\" data-end=\"818\">Adapter chuyển đổi Xmobile DS606H</strong> là thiết bị mở rộng cổng Type-C tiện lợi, đặc biệt phù hợp với <strong data-start=\"882\" data-end=\"933\">laptop, MacBook, tablet hoặc điện thoại Android</strong> không có đủ cổng kết nối. Sản phẩm tích hợp <strong data-start=\"978\" data-end=\"1018\">4 chức năng trong 1 thiết bị nhỏ gọn</strong>, dễ dàng mang theo và sử dụng mọi lúc.</p>', 'http//techcare.test', 'sac3', 400000, 350000, '2025-05-04', '2025-05-04', 'featured_product', 1, 1, 'Adapter chuyển đổi Xmobile DS606H 4 in 1 cổng Type-C', 'Adapter chuyển đổi Xmobile DS606H 4 in 1 – Cổng Type-C sang HDMI, USB, đọc thẻ nhớ – Nhỏ gọn, tiện dụng cho laptop, MacBook, tablet', '2025-05-04 02:04:25', '2025-05-05 10:44:28', NULL, 3, NULL),
(52, 'Chuột Bluetooth Silent Logitech M240', 'chuot-bluetooth-silent-logitech-m240', 'uploads/media_68180cc221044.jpg', 1, 5, 15, 21, 2, 493, 'Chuột Bluetooth Logitech M240 Silent mang đến trải nghiệm siêu êm với độ ồn giảm 90%, kết nối nhanh, tương thích Windows, macOS, Chrome OS, Android – thiết kế gọn nhẹ, tiết kiệm pin tối ưu.', '<p>Chuột không dây <strong data-start=\"821\" data-end=\"845\">Logitech M240 Silent</strong> là lựa chọn tuyệt vời cho người dùng văn phòng, học sinh – sinh viên và những ai cần không gian làm việc yên tĩnh. Với <strong data-start=\"965\" data-end=\"990\">công nghệ SilentTouch</strong> độc quyền, M240 giảm đến <strong data-start=\"1016\" data-end=\"1047\">90% tiếng ồn khi nhấn chuột</strong>, tạo cảm giác êm ái mà vẫn giữ độ phản hồi chính xác.</p>', 'http://techcare.test/', 'chuot1', 280000, 0, '2025-05-04', '2025-05-04', 'best_product', 1, 1, 'Chuột Bluetooth Logitech M240 Silent – Kết nối nhanh, siêu êm', 'Chuột Bluetooth Silent Logitech M240 – Thiết kế nhỏ gọn, giảm ồn 90%, kết nối ổn định, pin 18 tháng, tương thích đa thiết bị', '2025-05-04 02:09:30', '2025-05-05 10:09:19', NULL, 3, NULL),
(53, 'Chuột Có dây Gaming Zadez G156M', 'chuot-co-day-gaming-zadez-g156m', 'uploads/media_68180cae8523b.jpg', 1, 5, 15, 21, 2, 500, 'Chuột Gaming Zadez G156M có dây nổi bật với đèn LED RGB, DPI lên đến 7200, thiết kế công thái học và nút bấm siêu bền, mang lại trải nghiệm game chính xác, ổn định, giá tốt cho game thủ phổ thông.', '<h3 data-start=\"680\" data-end=\"756\" class=\"\"> <strong data-start=\"687\" data-end=\"756\">Zadez G156M – Chuột gaming có dây giá rẻ, hiệu năng vượt mong đợi</strong></h3><p>\r\n</p><p data-start=\"758\" data-end=\"1058\" class=\"\"><strong data-start=\"758\" data-end=\"786\">Chuột có dây Zadez G156M</strong> là lựa chọn hoàn hảo cho game thủ phổ thông cần một thiết bị ổn định, chính xác và có thiết kế đẹp mắt. Sản phẩm trang bị <strong data-start=\"909\" data-end=\"948\">cảm biến quang học độ phân giải cao</strong>, đèn <strong data-start=\"954\" data-end=\"972\">LED RGB rực rỡ</strong>, nút bấm bền bỉ và thiết kế <strong data-start=\"1001\" data-end=\"1018\">công thái học</strong> hỗ trợ chơi game lâu dài không mỏi tay.</p>', 'http://techcare.test/', 'chuot2', 270000, 0, '2025-05-04', '2025-05-04', 'best_product', 1, 1, 'Chuột Gaming Zadez G156M có dây – DPI cao, LED RGB', 'Chuột Gaming Zadez G156M có dây – Thiết kế công thái học, LED RGB đa màu, DPI 7200, nút bấm độ bền cao, chơi game mượt mà', '2025-05-04 02:15:44', '2025-05-04 17:56:14', NULL, 3, NULL),
(54, 'Chuột Có dây Zadez M213', 'chuot-co-day-zadez-m213', 'uploads/media_68180c9671313.jpg', 1, 5, 15, 21, 9, 500, 'Chuột Zadez M213 có dây với độ phân giải 1000 DPI, thiết kế ôm tay, nút bấm bền bỉ và kết nối nhanh chóng qua cổng USB – phù hợp cho dân văn phòng, học sinh, sinh viên.', '<h3 data-start=\"712\" data-end=\"782\" class=\"\"><strong data-start=\"720\" data-end=\"782\">Zadez M213 – Chuột có dây ổn định, đơn giản nhưng hiệu quả</strong></h3><p>\r\n</p><p data-start=\"784\" data-end=\"1047\" class=\"\">Chuột có dây <strong data-start=\"797\" data-end=\"811\">Zadez M213</strong> là một trong những lựa chọn phổ thông được ưa chuộng nhờ <strong data-start=\"869\" data-end=\"907\">thiết kế gọn nhẹ, độ chính xác cao</strong>, và mức giá hợp lý. Phù hợp sử dụng trong môi trường văn phòng, học tập hoặc sử dụng tại nhà, M213 đáp ứng tốt các tác vụ cơ bản hàng ngày.</p>', 'http://techcare.test/', 'chuot3', 100000, 0, '2025-05-04', '2025-05-04', 'new_arrival', 1, 1, 'Chuột có dây Zadez M213 – Thiết kế công thái học, độ bền cao', 'Chuột Zadez M213 có dây với độ phân giải 1000 DPI, thiết kế ôm tay, nút bấm bền bỉ và kết nối nhanh chóng qua cổng USB – phù hợp cho dân văn phòng, học sinh, sinh viên.', '2025-05-04 02:18:52', '2025-05-04 17:55:50', NULL, 3, NULL),
(55, 'Bàn Phím Bluetooth Asus Marshmallow KW100', 'ban-phim-bluetooth-asus-marshmallow-kw100', 'uploads/media_6817f5e8397e3.jpg', 1, 5, 15, 22, 2, 488, 'Asus Marshmallow KW100 là bàn phím Bluetooth mỏng nhẹ, kết nối cùng lúc 3 thiết bị, phím bấm êm ái, thiết kế thời trang – phù hợp cho văn phòng hiện đại, học tập và làm việc di động.', '<h3 data-start=\"710\" data-end=\"791\" class=\"\"><strong data-start=\"717\" data-end=\"791\">Asus Marshmallow KW100 – Bàn phím không dây đa năng, gọn gàng và êm ái</strong></h3><p>\r\n</p><p data-start=\"793\" data-end=\"1143\" class=\"\"><strong data-start=\"793\" data-end=\"807\">Asus KW100</strong> là bàn phím Bluetooth thuộc dòng Marshmallow thời trang, được thiết kế tối giản, nhẹ nhàng và tiện dụng – hướng đến người dùng văn phòng, học sinh – sinh viên hoặc những ai yêu thích sự gọn gàng. Với khả năng kết nối cùng lúc <strong data-start=\"1034\" data-end=\"1048\">3 thiết bị</strong>, phím bấm <strong data-start=\"1059\" data-end=\"1082\">êm ái và độ nảy tốt</strong>, sản phẩm giúp nâng cao hiệu suất làm việc mọi lúc, mọi nơi.</p>', 'http://techcare.test/', 'banphim1', 710000, 0, '2025-05-04', '2025-05-04', 'top_product', 1, 1, 'Bàn phím Bluetooth Asus KW100 – Nhẹ, êm, thời trang', 'Bàn phím Bluetooth Asus Marshmallow KW100 – Thiết kế tối giản, kết nối 3 thiết bị, phím êm ái, dùng pin AAA tiện lợi', '2025-05-04 02:22:29', '2025-05-05 10:09:21', NULL, 3, NULL),
(56, 'Bàn Phím Cơ Bluetooth Akko MOD007B-HE PC Tokyo Sakura Pink Magnetic Switch', 'ban-phim-co-bluetooth-akko-mod007b-he-pc-tokyo-sakura-pink-magnetic-switch', 'uploads/media_6817f5bf11383.jpg', 1, 5, 15, 22, 9, 500, 'Akko MOD007B-HE Tokyo Sakura Pink là bàn phím cơ không dây cao cấp trang bị Magnetic Switch siêu nhạy, kết nối 3 chế độ, thiết kế nghệ thuật lấy cảm hứng từ hoa anh đào Nhật Bản.', '<h3 data-start=\"766\" data-end=\"884\" class=\"\"><strong data-start=\"773\" data-end=\"884\">Akko MOD007B-HE Sakura – Bàn phím cơ cao cấp với thiết kế nghệ thuật và công nghệ cảm biến từ tính hiện đại</strong></h3><p>\r\n</p><p data-start=\"886\" data-end=\"1246\" class=\"\">Phiên bản đặc biệt <strong data-start=\"905\" data-end=\"945\">Akko MOD007B-HE PC Tokyo Sakura Pink</strong> là sự kết hợp hoàn hảo giữa <strong data-start=\"974\" data-end=\"996\">công nghệ hiện đại</strong> và <strong data-start=\"1000\" data-end=\"1027\">nghệ thuật truyền thống</strong>. Lấy cảm hứng từ hoa anh đào Nhật Bản, bàn phím mang đến vẻ đẹp dịu dàng, tinh tế trong từng chi tiết, đồng thời được trang bị <strong data-start=\"1155\" data-end=\"1193\">công tắc từ tính (Magnetic Switch)</strong> – cho tốc độ phản hồi cực nhanh và độ bền vượt trội.</p>', 'http://techcare.test/', 'banphim2', 2520000, 0, '2025-05-04', '2025-05-04', 'top_product', 1, 1, 'Bàn phím cơ Akko MOD007B-HE Sakura Bluetooth – Magnetic Switch độc đáo', 'Bàn phím cơ Bluetooth Akko MOD007B-HE Tokyo Sakura Pink – Magnetic Switch siêu nhạy, thiết kế nghệ thuật, hỗ trợ 3 mode kết nối', '2025-05-04 02:26:35', '2025-05-04 16:18:23', NULL, 3, NULL),
(57, 'Bàn Phím Có Dây Gaming Asus TUF K1', 'ban-phim-co-day-gaming-asus-tuf-k1', 'uploads/media_6817f5864e56b.jpg', 1, 5, 15, 22, 2, 500, 'Asus TUF K1 là bàn phím gaming giả cơ có dây với thiết kế chống nước, đèn nền RGB sống động và núm xoay điều chỉnh âm lượng – phù hợp cho game thủ và người dùng văn phòng yêu thích sự bền bỉ và mạnh mẽ.', '<h3 data-start=\"714\" data-end=\"787\" class=\"\"><strong data-start=\"721\" data-end=\"787\">Asus TUF K1 – Bàn phím gaming bền bỉ, thiết kế chuẩn chiến đấu</strong></h3><p>\r\n</p><p data-start=\"789\" data-end=\"1098\" class=\"\"><strong data-start=\"789\" data-end=\"804\">Asus TUF K1</strong> thuộc dòng TUF Gaming nổi tiếng của Asus, mang đến trải nghiệm bấm êm ái, phản hồi tốt nhờ switch giả cơ được tối ưu cho cả chơi game và làm việc. Với thiết kế chống tràn nước, đèn nền RGB đa vùng mạnh mẽ và núm điều chỉnh âm lượng tiện dụng, TUF K1 là lựa chọn lý tưởng cho game thủ hiện đại.</p>', 'http://techcare.test/', 'bànphim3', 720000, 0, '2025-05-04', '2025-05-04', 'featured_product', 1, 1, 'Bàn phím Gaming Asus TUF K1 – Bền bỉ, RGB mạnh mẽ', 'Bàn phím có dây Gaming Asus TUF K1 – Switch giả cơ êm tay, chống nước, đèn RGB đa vùng, núm âm lượng tiện dụng', '2025-05-04 02:28:59', '2025-05-04 16:17:26', NULL, 3, NULL),
(58, 'Iphone 11', 'iphone-11', 'uploads/media_6819987a750bc.jpg', 1, 3, 1, 18, 5, 99, 'a', '<p>a</p>', 'a.com', 'ahd', 11000000, 120000000, '2025-05-06', '2025-05-06', 'new_arrival', 1, 1, 'aa', 'aaa', '2025-05-05 22:04:58', '2025-05-05 22:04:58', NULL, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_image_galleries`
--

CREATE TABLE `product_image_galleries` (
  `id` bigint UNSIGNED NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_image_galleries`
--

INSERT INTO `product_image_galleries` (`id`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(3, 'uploads/media_681844e494c3b.jpg', 1, '2025-05-04 21:56:04', '2025-05-04 21:56:04');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  `vendor_id` int NOT NULL,
  `review` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_review_galleries`
--

CREATE TABLE `product_review_galleries` (
  `id` bigint UNSIGNED NOT NULL,
  `product_review_id` int NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `name`, `product_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Màu', 5, 1, '2025-04-06 14:52:17', '2025-04-25 22:14:39'),
(2, 'Kích thước mặt', 5, 1, '2025-04-06 14:52:50', '2025-04-25 22:13:56'),
(3, 'Màu', 8, 1, '2025-04-11 20:53:38', '2025-04-25 22:38:47'),
(4, 'Dung lượng bộ nhớ', 8, 1, '2025-04-11 20:53:51', '2025-04-25 22:38:37'),
(5, 'Màu', 1, 1, '2025-04-25 18:21:26', '2025-04-25 18:21:26'),
(6, 'Dung lượng bộ nhớ', 1, 1, '2025-04-25 18:22:26', '2025-04-25 18:22:26'),
(7, 'Màu', 2, 1, '2025-04-25 19:02:12', '2025-04-25 19:02:12'),
(8, 'Dung lượng bộ nhớ', 2, 1, '2025-04-25 19:02:24', '2025-04-25 19:02:24'),
(9, 'Màn hình', 3, 1, '2025-04-25 19:24:06', '2025-04-25 19:24:06'),
(10, 'cpu', 3, 1, '2025-04-25 19:24:34', '2025-04-25 19:24:34'),
(11, 'Màn hình', 4, 1, '2025-04-25 19:46:09', '2025-04-25 19:46:09'),
(12, 'Cpu', 4, 1, '2025-04-25 19:46:20', '2025-04-25 19:46:20'),
(13, 'Màu', 7, 1, '2025-04-25 22:24:19', '2025-04-25 22:24:19'),
(14, 'Màu', 9, 1, '2025-04-27 01:20:12', '2025-04-27 01:20:12'),
(15, 'Màu', 10, 1, '2025-05-02 20:59:39', '2025-05-02 20:59:39'),
(16, 'Dung lượng', 10, 1, '2025-05-02 20:59:51', '2025-05-02 20:59:51'),
(17, 'Màu', 11, 1, '2025-05-02 21:28:17', '2025-05-02 21:28:17'),
(18, 'Màu', 12, 1, '2025-05-02 21:37:30', '2025-05-02 21:37:30'),
(19, 'Dung lượng', 12, 1, '2025-05-02 21:37:41', '2025-05-02 21:37:41'),
(20, 'Màn hình', 13, 1, '2025-05-02 22:05:22', '2025-05-02 22:05:22'),
(21, 'CPU', 13, 1, '2025-05-02 22:05:33', '2025-05-02 22:05:33'),
(22, 'Hệ điều hành', 14, 1, '2025-05-02 22:26:09', '2025-05-02 22:26:09'),
(23, 'Tốc độ CPU', 14, 1, '2025-05-02 22:26:37', '2025-05-02 22:26:44'),
(24, 'Màu', 15, 1, '2025-05-02 22:43:06', '2025-05-02 22:43:06'),
(25, 'Dung lượng', 15, 1, '2025-05-02 22:44:16', '2025-05-02 22:44:16'),
(26, 'Màu', 16, 1, '2025-05-02 23:00:15', '2025-05-02 23:00:15'),
(27, 'Dung lượng', 16, 1, '2025-05-02 23:01:02', '2025-05-02 23:01:02'),
(28, 'Màu', 17, 1, '2025-05-02 23:16:29', '2025-05-02 23:16:29'),
(29, 'Dung lượng', 17, 1, '2025-05-02 23:17:22', '2025-05-02 23:17:30'),
(30, 'Màu', 18, 1, '2025-05-02 23:41:14', '2025-05-02 23:41:14'),
(31, 'Dung lượng', 18, 1, '2025-05-02 23:42:00', '2025-05-02 23:42:00'),
(32, 'Màu', 19, 1, '2025-05-02 23:49:40', '2025-05-02 23:49:40'),
(33, 'Dung lượng', 19, 1, '2025-05-02 23:51:11', '2025-05-02 23:51:11'),
(34, 'Dung lượng', 20, 1, '2025-05-03 00:08:36', '2025-05-03 00:08:36'),
(35, 'Màu', 20, 1, '2025-05-03 00:08:50', '2025-05-03 00:08:50'),
(36, 'Màu', 21, 1, '2025-05-03 00:22:41', '2025-05-03 00:22:41'),
(37, 'Dung lượng', 21, 1, '2025-05-03 00:24:19', '2025-05-03 00:24:19'),
(38, 'Màu', 22, 1, '2025-05-03 19:14:28', '2025-05-03 19:14:28'),
(39, 'Dung lượng', 22, 1, '2025-05-03 19:23:19', '2025-05-03 19:23:19'),
(40, 'Màu', 23, 1, '2025-05-03 20:09:05', '2025-05-03 20:09:05'),
(41, 'Dung lượng', 23, 1, '2025-05-03 20:09:41', '2025-05-03 20:09:41'),
(42, 'Màu', 24, 1, '2025-05-03 20:34:37', '2025-05-03 20:34:37'),
(43, 'Dung lượng', 24, 1, '2025-05-03 20:35:24', '2025-05-03 20:35:24'),
(44, 'Màu', 25, 1, '2025-05-03 20:45:56', '2025-05-03 20:45:56'),
(45, 'Dung lượng', 25, 1, '2025-05-03 20:46:44', '2025-05-03 20:46:44'),
(46, 'Màu', 26, 1, '2025-05-03 21:07:57', '2025-05-03 21:07:57'),
(47, 'Dung lượng', 26, 1, '2025-05-03 21:08:37', '2025-05-03 21:08:37'),
(48, 'Màu', 27, 1, '2025-05-03 21:26:28', '2025-05-03 21:26:28'),
(49, 'Dung lượng', 27, 1, '2025-05-03 21:27:22', '2025-05-03 21:27:22'),
(50, 'Màu', 28, 1, '2025-05-03 21:35:38', '2025-05-03 21:35:38'),
(51, 'Dung lượng', 28, 1, '2025-05-03 21:36:31', '2025-05-03 21:36:31'),
(52, 'Màu', 29, 1, '2025-05-03 21:43:10', '2025-05-03 21:43:10'),
(53, 'Dung lượng', 29, 1, '2025-05-03 21:44:22', '2025-05-03 21:44:22'),
(54, 'Màu', 30, 1, '2025-05-03 21:56:34', '2025-05-03 21:56:34'),
(55, 'Dung lượng', 30, 1, '2025-05-03 21:57:47', '2025-05-03 21:57:47'),
(56, 'Màu', 31, 1, '2025-05-03 22:08:56', '2025-05-03 22:08:56'),
(57, 'Dung lượng', 31, 1, '2025-05-03 22:19:13', '2025-05-03 22:19:13'),
(58, 'Màu', 32, 1, '2025-05-03 22:38:36', '2025-05-03 22:38:36'),
(59, 'Dung lượng', 32, 1, '2025-05-03 22:40:39', '2025-05-03 22:40:39'),
(60, 'Màu', 33, 1, '2025-05-03 23:03:23', '2025-05-03 23:03:23'),
(61, 'Dung lượng', 33, 1, '2025-05-03 23:04:40', '2025-05-03 23:04:40'),
(62, 'Màu', 34, 1, '2025-05-03 23:19:57', '2025-05-03 23:19:57'),
(63, 'Dung lượng', 34, 1, '2025-05-03 23:20:52', '2025-05-03 23:20:52'),
(64, 'Màu', 35, 1, '2025-05-03 23:31:11', '2025-05-03 23:31:11'),
(65, 'Dung lượng', 35, 1, '2025-05-03 23:32:05', '2025-05-03 23:32:05'),
(66, 'Màu', 36, 1, '2025-05-03 23:42:27', '2025-05-03 23:42:27'),
(67, 'Thông số CPU', 39, 1, '2025-05-04 00:05:44', '2025-05-04 00:05:44'),
(68, 'Màu', 41, 1, '2025-05-04 00:41:17', '2025-05-04 00:41:17'),
(69, 'Dung lượng', 41, 1, '2025-05-04 00:41:58', '2025-05-04 00:41:58'),
(70, 'Màu', 42, 1, '2025-05-04 00:50:40', '2025-05-04 00:50:40'),
(71, 'Màu', 43, 1, '2025-05-04 01:04:27', '2025-05-04 01:04:27'),
(72, 'Màu', 44, 1, '2025-05-04 01:15:30', '2025-05-04 01:15:30'),
(73, 'Màu', 45, 1, '2025-05-04 01:21:54', '2025-05-04 01:21:54'),
(74, 'Màu', 52, 1, '2025-05-04 02:09:44', '2025-05-04 02:09:44'),
(75, 'Màu', 55, 1, '2025-05-04 02:22:42', '2025-05-04 02:22:42'),
(76, 'Mau sac', 58, 1, '2025-05-05 22:05:43', '2025-05-05 22:05:43');

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_combinations`
--

CREATE TABLE `product_variant_combinations` (
  `id` bigint UNSIGNED NOT NULL,
  `sku` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `warranty_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warranty_duration` int DEFAULT NULL,
  `warranty_expiration_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product_variant_combinations`
--

INSERT INTO `product_variant_combinations` (`id`, `sku`, `product_id`, `name`, `value`, `price`, `quantity`, `image`, `status`, `created_at`, `updated_at`, `warranty_code`, `warranty_duration`, `warranty_expiration_date`) VALUES
(1, 'IPHONE12-DEN-128GB', 1, 'Dung lượng bộ nhớ: 128GB | Màu: Đen', '\"{\\\"M\\\\u00e0u\\\":[\\\"\\\\u0110en\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng b\\\\u1ed9 nh\\\\u1edb\\\":[\\\"128GB\\\"]}\"', 10990000.00, 23, 'uploads/media_680c37417404d.jpg', '1', '2025-04-25 18:30:41', '2025-05-05 21:48:18', NULL, NULL, NULL),
(2, 'IPHONE12-DEN-64GB', 1, 'Dung lượng bộ nhớ: 64GB | Màu: Đen', '\"{\\\"M\\\\u00e0u\\\":[\\\"\\\\u0110en\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng b\\\\u1ed9 nh\\\\u1edb\\\":[\\\"64GB\\\"]}\"', 9990000.00, 25, 'uploads/media_680c3c98512d8.jpg', '1', '2025-04-25 18:32:16', '2025-04-25 18:53:28', NULL, NULL, NULL),
(3, 'IPHONE12-TIM-64GB', 1, 'Dung lượng bộ nhớ: 64GB | Màu: Tím', '\"{\\\"M\\\\u00e0u\\\":[\\\"T\\\\u00edm\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng b\\\\u1ed9 nh\\\\u1edb\\\":[\\\"64GB\\\"]}\"', 9990000.00, 24, 'uploads/media_680c386ee0bdc.jpg', '1', '2025-04-25 18:35:42', '2025-05-05 09:48:30', NULL, NULL, NULL),
(4, 'IPHONE12-TIM-128GB', 1, 'Dung lượng bộ nhớ: 128GB | Màu: Tím', '\"{\\\"M\\\\u00e0u\\\":[\\\"T\\\\u00edm\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng b\\\\u1ed9 nh\\\\u1edb\\\":[\\\"128GB\\\"]}\"', 10990000.00, 25, 'uploads/media_680c3cae117f0.jpg', '1', '2025-04-25 18:37:32', '2025-05-03 01:36:02', NULL, NULL, NULL),
(5, 'IPHONE12-XANHLA-64GB', 1, 'Dung lượng bộ nhớ: 64GB | Màu: Xanh lá', '\"{\\\"M\\\\u00e0u\\\":[\\\"Xanh l\\\\u00e1\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng b\\\\u1ed9 nh\\\\u1edb\\\":[\\\"64GB\\\"]}\"', 9990000.00, 23, 'uploads/media_680c3ad7ca050.jpg', '1', '2025-04-25 18:45:59', '2025-05-05 09:57:20', NULL, NULL, NULL),
(6, 'IPHONE12-XANHLA-128GB', 1, 'Dung lượng bộ nhớ: 128GB | Màu: Xanh lá', '\"{\\\"M\\\\u00e0u\\\":[\\\"Xanh l\\\\u00e1\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng b\\\\u1ed9 nh\\\\u1edb\\\":[\\\"128GB\\\"]}\"', 10990000.00, 25, 'uploads/media_680c3ce00ce48.jpg', '1', '2025-04-25 18:54:40', '2025-04-25 18:54:40', NULL, NULL, NULL),
(7, 'IPHONE12-TRANG-64GB', 1, 'Dung lượng bộ nhớ: 64GB | Màu: Trắng', '\"{\\\"M\\\\u00e0u\\\":[\\\"Tr\\\\u1eafng\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng b\\\\u1ed9 nh\\\\u1edb\\\":[\\\"64GB\\\"]}\"', 9990000.00, 23, 'uploads/media_680c3d0ead656.jpg', '1', '2025-04-25 18:55:26', '2025-05-05 10:07:07', NULL, NULL, NULL),
(8, 'IPHONE12-TRANG-128GB', 1, 'Dung lượng bộ nhớ: 128GB | Màu: Trắng', '\"{\\\"M\\\\u00e0u\\\":[\\\"Tr\\\\u1eafng\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng b\\\\u1ed9 nh\\\\u1edb\\\":[\\\"128GB\\\"]}\"', 10990000.00, 24, 'uploads/media_680c3d25a68da.jpg', '1', '2025-04-25 18:55:49', '2025-05-05 09:48:29', NULL, NULL, NULL),
(9, 'SAMSUNGGA-VANG-256GB', 2, 'Dung lượng bộ nhớ: 256GB | Màu: Vàng', '\"{\\\"M\\\\u00e0u\\\":[\\\"V\\\\u00e0ng\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng b\\\\u1ed9 nh\\\\u1edb\\\":[\\\"256GB\\\"]}\"', 6200000.00, 24, 'uploads/media_680c4061d5499.jpg', '1', '2025-04-25 19:09:37', '2025-05-05 09:56:03', NULL, NULL, NULL),
(10, 'SAMSUNGGA-VANG-128GB', 2, 'Dung lượng bộ nhớ: 128GB | Màu: Vàng', '\"{\\\"M\\\\u00e0u\\\":[\\\"V\\\\u00e0ng\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng b\\\\u1ed9 nh\\\\u1edb\\\":[\\\"128GB\\\"]}\"', 5200000.00, 24, 'uploads/media_680c408010da6.jpg', '1', '2025-04-25 19:10:08', '2025-05-05 09:46:23', NULL, NULL, NULL),
(11, 'SAMSUNGGA-XANHLA-256GB', 2, 'Dung lượng bộ nhớ: 256GB | Màu: Xanh lá', '\"{\\\"M\\\\u00e0u\\\":[\\\"Xanh l\\\\u00e1\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng b\\\\u1ed9 nh\\\\u1edb\\\":[\\\"256GB\\\"]}\"', 6200000.00, 25, 'uploads/media_680c410bdb31f.jpg', '1', '2025-04-25 19:12:27', '2025-04-25 19:12:27', NULL, NULL, NULL),
(12, 'SAMSUNGGA-XANHLA-128GB', 2, 'Dung lượng bộ nhớ: 128GB | Màu: Xanh lá', '\"{\\\"M\\\\u00e0u\\\":[\\\"Xanh l\\\\u00e1\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng b\\\\u1ed9 nh\\\\u1edb\\\":[\\\"128GB\\\"]}\"', 5200000.00, 24, 'uploads/media_680c412a0cf04.jpg', '1', '2025-04-25 19:12:58', '2025-05-05 10:09:00', NULL, NULL, NULL),
(13, 'SAMSUNGGA-DEN-256GB', 2, 'Dung lượng bộ nhớ: 256GB | Màu: Đen', '\"{\\\"M\\\\u00e0u\\\":[\\\"\\\\u0110en\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng b\\\\u1ed9 nh\\\\u1edb\\\":[\\\"256GB\\\"]}\"', 6900000.00, 25, 'uploads/media_680c41484ac6d.jpg', '1', '2025-04-25 19:13:28', '2025-04-25 22:51:32', NULL, NULL, NULL),
(14, 'SAMSUNGGA-DEN-128GB', 2, 'Dung lượng bộ nhớ: 128GB | Màu: Đen', '\"{\\\"M\\\\u00e0u\\\":[\\\"\\\\u0110en\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng b\\\\u1ed9 nh\\\\u1edb\\\":[\\\"128GB\\\"]}\"', 5500000.00, 25, 'uploads/media_680c416a39840.jpg', '1', '2025-04-25 19:14:02', '2025-04-25 19:14:02', NULL, NULL, NULL),
(15, 'ASUSVIVOB-156FULLHD1920X1080OLED-I513500H26GHZ', 3, 'Màn hình: 15.6\", Full HD (1920 x 1080) OLED | cpu: i5, 13500H, 2.6GHz', '\"{\\\"M\\\\u00e0n h\\\\u00ecnh\\\":[\\\"15.6\\\\\\\", Full HD (1920 x 1080) OLED\\\"],\\\"cpu\\\":[\\\"i5, 13500H, 2.6GHz\\\"]}\"', 16700000.00, 23, 'uploads/media_680c45a8b09b7.jpg', '1', '2025-04-25 19:32:08', '2025-05-05 10:07:28', NULL, NULL, NULL),
(16, 'ASUSVIVOB-156FULLHD1920X1080OLED-I512500H25GHZ', 3, 'Màn hình: 15.6\", Full HD (1920 x 1080) OLED | cpu: i5, 12500H, 2.5GHz', '\"{\\\"M\\\\u00e0n h\\\\u00ecnh\\\":[\\\"15.6\\\\\\\", Full HD (1920 x 1080) OLED\\\"],\\\"cpu\\\":[\\\"i5, 12500H, 2.5GHz\\\"]}\"', 16100000.00, 23, 'uploads/media_680c460ccab54.jpg', '1', '2025-04-25 19:33:48', '2025-05-05 10:09:23', NULL, NULL, NULL),
(17, 'ASUSVIVOB-15628K2880X1620OLED120HZ-I513500H26GHZ', 3, 'Màn hình: 15.6\", 2.8K (2880 x 1620) - OLED, 120Hz | cpu: i5, 13500H, 2.6GHz', '\"{\\\"M\\\\u00e0n h\\\\u00ecnh\\\":[\\\"15.6\\\\\\\", 2.8K (2880 x 1620) - OLED, 120Hz\\\"],\\\"cpu\\\":[\\\"i5, 13500H, 2.6GHz\\\"]}\"', 16700000.00, 22, 'uploads/media_680c4693bd105.jpg', '1', '2025-04-25 19:36:03', '2025-05-05 09:52:58', NULL, NULL, NULL),
(18, 'ASUSVIVOB-15628K2880X1620OLED120HZ-I512500H25GHZ', 3, 'Màn hình: 15.6\", 2.8K (2880 x 1620) - OLED, 120Hz | cpu: i5, 12500H, 2.5GHz', '\"{\\\"M\\\\u00e0n h\\\\u00ecnh\\\":[\\\"15.6\\\\\\\", 2.8K (2880 x 1620) - OLED, 120Hz\\\"],\\\"cpu\\\":[\\\"i5, 12500H, 2.5GHz\\\"]}\"', 16100000.00, 23, 'uploads/media_680c46c9bba81.jpg', '1', '2025-04-25 19:36:57', '2025-05-05 10:18:32', NULL, NULL, NULL),
(19, 'DELLINSPI-146FULLHD1920X1080120HZ-I71255U17GHZ', 4, 'Cpu: i7, 1255U, 1.7GHz | Màn hình: 14.6\", Full HD (1920 x 1080), 120Hz', '\"{\\\"M\\\\u00e0n h\\\\u00ecnh\\\":[\\\"14.6\\\\\\\", Full HD (1920 x 1080), 120Hz\\\"],\\\"Cpu\\\":[\\\"i7, 1255U, 1.7GHz\\\"]}\"', 19500000.00, 20, 'uploads/media_680c4c216229c.jpg', '1', '2025-04-25 19:59:45', '2025-05-05 10:09:23', NULL, NULL, NULL),
(20, 'DELLINSPI-146FULLHD1920X1080120HZ-I51235U13GHZ', 4, 'Cpu: i5, 1235U, 1.3GHz | Màn hình: 14.6\", Full HD (1920 x 1080), 120Hz', '\"{\\\"M\\\\u00e0n h\\\\u00ecnh\\\":[\\\"14.6\\\\\\\", Full HD (1920 x 1080), 120Hz\\\"],\\\"Cpu\\\":[\\\"i5, 1235U, 1.3GHz\\\"]}\"', 19500000.00, 19, 'uploads/media_680c57c012edf.jpg', '1', '2025-04-25 20:49:20', '2025-05-05 10:10:21', NULL, NULL, NULL),
(21, 'DELLINSPI-156FULLHD1920X1080120HZ-I71255U17GHZ', 4, 'Cpu: i7, 1255U, 1.7GHz | Màn hình: 15.6\", Full HD (1920 x 1080), 120Hz', '\"{\\\"M\\\\u00e0n h\\\\u00ecnh\\\":[\\\"15.6\\\\\\\", Full HD (1920 x 1080), 120Hz\\\"],\\\"Cpu\\\":[\\\"i7, 1255U, 1.7GHz\\\"]}\"', 20000000.00, 24, 'uploads/media_680c57e84f04d.jpg', '1', '2025-04-25 20:50:00', '2025-05-05 10:18:29', NULL, NULL, NULL),
(22, 'DELLINSPI-156FULLHD1920X1080120HZ-I51235U13GHZ', 4, 'Cpu: i5, 1235U, 1.3GHz | Màn hình: 15.6\", Full HD (1920 x 1080), 120Hz', '\"{\\\"M\\\\u00e0n h\\\\u00ecnh\\\":[\\\"15.6\\\\\\\", Full HD (1920 x 1080), 120Hz\\\"],\\\"Cpu\\\":[\\\"i5, 1235U, 1.3GHz\\\"]}\"', 19700000.00, 21, 'uploads/media_680c58198e948.jpg', '1', '2025-04-25 20:50:49', '2025-05-05 10:07:30', NULL, NULL, NULL),
(38, 'VIVOY100-XANH', 9, 'Màu: Xanh', '\"{\\\"M\\\\u00e0u\\\":[\\\"Xanh\\\"]}\"', 6490000.00, 23, 'uploads/media_680de972a7c5d.webp', '1', '2025-04-27 01:23:14', '2025-05-05 10:16:48', NULL, NULL, NULL),
(39, 'VIVOY100-DEN', 9, 'Màu: Đen', '\"{\\\"M\\\\u00e0u\\\":[\\\"\\\\u0110en\\\"]}\"', 6000000.00, 21, 'uploads/media_680de98c664fe.webp', '1', '2025-04-27 01:23:40', '2025-05-05 10:09:02', NULL, NULL, NULL),
(40, 'IPHONE16-TITANSAMAC-256GB', 10, 'Dung lượng: 256GB | Màu: Titan sa mạc', '\"{\\\"M\\\\u00e0u\\\":[\\\"Titan sa m\\\\u1ea1c\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"256GB\\\"]}\"', 31090000.00, 24, 'uploads/media_68159679d5487.jpg', '1', '2025-05-02 21:07:21', '2025-05-05 10:08:59', NULL, NULL, NULL),
(41, 'IPHONE16-TITANSAMAC-512GB', 10, 'Dung lượng: 512GB | Màu: Titan sa mạc', '\"{\\\"M\\\\u00e0u\\\":[\\\"Titan sa m\\\\u1ea1c\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"512GB\\\"]}\"', 37590000.00, 25, 'uploads/media_681596ce8015e.jpg', '1', '2025-05-02 21:08:46', '2025-05-02 21:08:46', NULL, NULL, NULL),
(42, 'IPHONE16-TITANSAMAC-1TB', 10, 'Dung lượng: 1TB | Màu: Titan sa mạc', '\"{\\\"M\\\\u00e0u\\\":[\\\"Titan sa m\\\\u1ea1c\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"1TB\\\"]}\"', 42090000.00, 25, 'uploads/media_68159711e30e5.jpg', '1', '2025-05-02 21:09:53', '2025-05-05 09:06:41', NULL, NULL, NULL),
(43, 'IPHONE16-TITANTRANG-256GB', 10, 'Dung lượng: 256GB | Màu: Titan trắng', '\"{\\\"M\\\\u00e0u\\\":[\\\"Titan tr\\\\u1eafng\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"256GB\\\"]}\"', 31090000.00, 23, 'uploads/media_6815974a16d7d.jpg', '1', '2025-05-02 21:10:50', '2025-05-05 09:48:29', NULL, NULL, NULL),
(44, 'IPHONE16-TITANTRANG-512GB', 10, 'Dung lượng: 512GB | Màu: Titan trắng', '\"{\\\"M\\\\u00e0u\\\":[\\\"Titan tr\\\\u1eafng\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"512GB\\\"]}\"', 37590000.00, 25, 'uploads/media_681597bb500c5.jpg', '1', '2025-05-02 21:12:43', '2025-05-02 21:12:43', NULL, NULL, NULL),
(45, 'IPHONE16-TITANTRANG-1TB', 10, 'Dung lượng: 1TB | Màu: Titan trắng', '\"{\\\"M\\\\u00e0u\\\":[\\\"Titan tr\\\\u1eafng\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"1TB\\\"]}\"', 43090000.00, 24, 'uploads/media_681597d841c99.jpg', '1', '2025-05-02 21:13:12', '2025-05-05 10:09:18', NULL, NULL, NULL),
(46, 'IPHONE16-TITANDEN-256GB', 10, 'Dung lượng: 256GB | Màu: Titan đen', '\"{\\\"M\\\\u00e0u\\\":[\\\"Titan \\\\u0111en\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"256GB\\\"]}\"', 31090000.00, 25, 'uploads/media_6815986b1d632.jpg', '1', '2025-05-02 21:15:39', '2025-05-02 21:15:39', NULL, NULL, NULL),
(47, 'IPHONE16-TITANDEN-512GB', 10, 'Dung lượng: 512GB | Màu: Titan đen', '\"{\\\"M\\\\u00e0u\\\":[\\\"Titan \\\\u0111en\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"512GB\\\"]}\"', 37590000.00, 24, 'uploads/media_6815988c20301.jpg', '1', '2025-05-02 21:16:12', '2025-05-05 10:09:17', NULL, NULL, NULL),
(48, 'IPHONE16-TITANDEN-1TB', 10, 'Dung lượng: 1TB | Màu: Titan đen', '\"{\\\"M\\\\u00e0u\\\":[\\\"Titan \\\\u0111en\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"1TB\\\"]}\"', 43090000.00, 25, 'uploads/media_681598a70b7fe.jpg', '1', '2025-05-02 21:16:39', '2025-05-05 09:06:45', NULL, NULL, NULL),
(49, 'IPHONE16-TITANTUNHIEN-256GB', 10, 'Dung lượng: 256GB | Màu: Titan tự nhiên', '\"{\\\"M\\\\u00e0u\\\":[\\\"Titan t\\\\u1ef1 nhi\\\\u00ean\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"256GB\\\"]}\"', 31190000.00, 24, 'uploads/media_6815996ab0a46.jpg', '1', '2025-05-02 21:19:54', '2025-05-05 10:18:32', NULL, NULL, NULL),
(50, 'IPHONE16-TITANTUNHIEN-512GB', 10, 'Dung lượng: 512GB | Màu: Titan tự nhiên', '\"{\\\"M\\\\u00e0u\\\":[\\\"Titan t\\\\u1ef1 nhi\\\\u00ean\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"512GB\\\"]}\"', 37590000.00, 25, 'uploads/media_6815998d64aa1.jpg', '1', '2025-05-02 21:20:29', '2025-05-02 21:20:29', NULL, NULL, NULL),
(51, 'IPHONE16-TITANTUNHIEN-1TB', 10, 'Dung lượng: 1TB | Màu: Titan tự nhiên', '\"{\\\"M\\\\u00e0u\\\":[\\\"Titan t\\\\u1ef1 nhi\\\\u00ean\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"1TB\\\"]}\"', 43090000.00, 24, 'uploads/media_681599a81605a.jpg', '1', '2025-05-02 21:20:56', '2025-05-05 09:53:00', NULL, NULL, NULL),
(54, 'DIENTHOAI-XANHDUONG-256GB', 12, 'Dung lượng: 256GB | Màu: Xanh dương', '\"{\\\"M\\\\u00e0u\\\":[\\\"Xanh d\\\\u01b0\\\\u01a1ng\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"256GB\\\"]}\"', 28990000.00, 23, 'uploads/media_68159e9d4518a.jpg', '1', '2025-05-02 21:42:05', '2025-05-05 10:07:07', NULL, NULL, NULL),
(55, 'DIENTHOAI-XANHDUONG-1TB', 12, 'Dung lượng: 1TB | Màu: Xanh dương', '\"{\\\"M\\\\u00e0u\\\":[\\\"Xanh d\\\\u01b0\\\\u01a1ng\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"1TB\\\"]}\"', 35490000.00, 24, 'uploads/media_68159ec257575.jpg', '1', '2025-05-02 21:42:42', '2025-05-05 09:48:30', NULL, NULL, NULL),
(56, 'DIENTHOAI-DEN-256GB', 12, 'Dung lượng: 256GB | Màu: Đen', '\"{\\\"M\\\\u00e0u\\\":[\\\"\\\\u0110en\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"256GB\\\"]}\"', 28990000.00, 24, 'uploads/media_68159ee093567.jpg', '1', '2025-05-02 21:43:12', '2025-05-05 10:07:33', NULL, NULL, NULL),
(57, 'DIENTHOAI-DEN-1TB', 12, 'Dung lượng: 1TB | Màu: Đen', '\"{\\\"M\\\\u00e0u\\\":[\\\"\\\\u0110en\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"1TB\\\"]}\"', 35490000.00, 25, 'uploads/media_68159effd1896.jpg', '1', '2025-05-02 21:43:43', '2025-05-05 09:07:07', NULL, NULL, NULL),
(58, 'DIENTHOAI-XAM-1TB', 12, 'Dung lượng: 1TB | Màu: Xám', '\"{\\\"M\\\\u00e0u\\\":[\\\"X\\\\u00e1m\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"1TB\\\"]}\"', 35490000.00, 23, 'uploads/media_68159f4fab65b.jpg', '1', '2025-05-02 21:45:03', '2025-05-05 10:09:20', NULL, NULL, NULL),
(59, 'DIENTHOAI-XAM-256GB', 12, 'Dung lượng: 256GB | Màu: Xám', '\"{\\\"M\\\\u00e0u\\\":[\\\"X\\\\u00e1m\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"256GB\\\"]}\"', 28990000.00, 23, 'uploads/media_68159f620e992.jpg', '1', '2025-05-02 21:45:22', '2025-05-05 09:57:28', NULL, NULL, NULL),
(60, 'MACBOOKAI-136LIQUIDRETINA2560X1664-APPLEM4120GBSMEMORYBANDWIDTH', 13, 'CPU: Apple M4, 120 GB/s memory bandwidth | Màn hình: 13.6\", Liquid Retina (2560 x 1664)', '\"{\\\"M\\\\u00e0n h\\\\u00ecnh\\\":[\\\"13.6\\\\\\\", Liquid Retina (2560 x 1664)\\\"],\\\"CPU\\\":[\\\"Apple M4, 120 GB\\\\\\/s memory bandwidth\\\"]}\"', 26990000.00, 16, 'uploads/media_6815a5ce819f8.jpg', '1', '2025-05-02 22:12:46', '2025-05-05 10:18:29', NULL, NULL, NULL),
(61, 'DIENTHOAI-ANDROID15-447GHZ', 14, 'Hệ điều hành: android 15 | Tốc độ CPU: 4.47 GHz', '\"{\\\"H\\\\u1ec7 \\\\u0111i\\\\u1ec1u h\\\\u00e0nh\\\":[\\\"android 15\\\"],\\\"T\\\\u1ed1c \\\\u0111\\\\u1ed9 CPU\\\":[\\\"4.47 GHz\\\"]}\"', 31790000.00, 17, 'uploads/media_6815a99e40f07.jpg', '1', '2025-05-02 22:29:02', '2025-05-05 10:10:21', NULL, NULL, NULL),
(62, 'DIENTHOAI-XANHLA-256GB', 15, 'Dung lượng: 256GB | Màu: Xanh lá', '\"{\\\"M\\\\u00e0u\\\":[\\\"Xanh l\\\\u00e1\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"256GB\\\"]}\"', 19290000.00, 18, 'uploads/media_6815ae1d6b1e3.jpg', '1', '2025-05-02 22:48:13', '2025-05-05 10:18:30', NULL, NULL, NULL),
(63, 'DIENTHOAI-XANHLA-512GB', 15, 'Dung lượng: 512GB | Màu: Xanh lá', '\"{\\\"M\\\\u00e0u\\\":[\\\"Xanh l\\\\u00e1\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"512GB\\\"]}\"', 22290000.00, 23, 'uploads/media_6815ae3ccf3fc.jpg', '1', '2025-05-02 22:48:44', '2025-05-05 10:07:09', NULL, NULL, NULL),
(64, 'DIENTHOAI-XANHNAUY-256GB', 15, 'Dung lượng: 256GB | Màu: Xanh Nauy', '\"{\\\"M\\\\u00e0u\\\":[\\\"Xanh Nauy\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"256GB\\\"]}\"', 19290000.00, 24, 'uploads/media_6815ae831b62d.jpg', '1', '2025-05-02 22:49:55', '2025-05-05 09:48:21', NULL, NULL, NULL),
(65, 'DIENTHOAI-XANHNAUY-512GB', 15, 'Dung lượng: 512GB | Màu: Xanh Nauy', '\"{\\\"M\\\\u00e0u\\\":[\\\"Xanh Nauy\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"512GB\\\"]}\"', 22290000.00, 25, 'uploads/media_6815ae9921392.jpg', '1', '2025-05-02 22:50:17', '2025-05-02 22:50:17', NULL, NULL, NULL),
(66, 'DIENTHOAI-XANHDUONGNHAT-256', 16, 'Dung lượng: 256 | Màu: Xanh dương nhạt', '\"{\\\"M\\\\u00e0u\\\":[\\\"Xanh d\\\\u01b0\\\\u01a1ng nh\\\\u1ea1t\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"256\\\"]}\"', 22790000.00, 24, 'uploads/media_6815b1f2790a8.jpg', '1', '2025-05-02 23:04:34', '2025-05-05 09:48:45', NULL, NULL, NULL),
(67, 'DIENTHOAI-XANHDUONGNHAT-512GB', 16, 'Dung lượng: 512GB | Màu: Xanh dương nhạt', '\"{\\\"M\\\\u00e0u\\\":[\\\"Xanh d\\\\u01b0\\\\u01a1ng nh\\\\u1ea1t\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"512GB\\\"]}\"', 25790000.00, 23, 'uploads/media_6815b215d4025.jpg', '1', '2025-05-02 23:05:09', '2025-05-05 10:07:28', NULL, NULL, NULL),
(68, 'DIENTHOAI-XAM-256', 16, 'Dung lượng: 256 | Màu: Xám', '\"{\\\"M\\\\u00e0u\\\":[\\\"X\\\\u00e1m\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"256\\\"]}\"', 22790000.00, 23, 'uploads/media_6815b22d83aa9.jpg', '1', '2025-05-02 23:05:33', '2025-05-05 10:07:31', NULL, NULL, NULL),
(69, 'DIENTHOAI-XAM-512GB', 16, 'Dung lượng: 512GB | Màu: Xám', '\"{\\\"M\\\\u00e0u\\\":[\\\"X\\\\u00e1m\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"512GB\\\"]}\"', 25790000.00, 25, 'uploads/media_6815b241ccc7b.jpg', '1', '2025-05-02 23:05:53', '2025-05-02 23:05:53', NULL, NULL, NULL),
(70, 'DIENTHOAI-XANHDUONGNHAT-256GB', 17, 'Dung lượng: 256GB | Màu: Xanh dương nhạt', '\"{\\\"M\\\\u00e0u\\\":[\\\"Xanh d\\\\u01b0\\\\u01a1ng nh\\\\u1ea1t\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"256GB\\\"]}\"', 25790000.00, 18, 'uploads/media_6815b55e9850d.jpg', '1', '2025-05-02 23:19:10', '2025-05-05 10:07:33', NULL, NULL, NULL),
(71, 'DIENTHOAI-XANH-256GB', 18, 'Dung lượng: 256GB | Màu: Xanh', '\"{\\\"M\\\\u00e0u\\\":[\\\"Xanh\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"256GB\\\"]}\"', 22290000.00, 21, 'uploads/media_6815bb06b6350.jpg', '1', '2025-05-02 23:43:18', '2025-05-05 10:16:50', NULL, NULL, NULL),
(72, 'DIENTHOAI-XANH-512GB', 18, 'Dung lượng: 512GB | Màu: Xanh', '\"{\\\"M\\\\u00e0u\\\":[\\\"Xanh\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"512GB\\\"]}\"', 25790000.00, 20, 'uploads/media_6815bb1f0906f.jpg', '1', '2025-05-02 23:43:43', '2025-05-05 10:07:33', NULL, NULL, NULL),
(73, 'DIENTHOAI-XANHLUULY-256GB', 19, 'Dung lượng: 256GB | Màu: Xanh lưu ly', '\"{\\\"M\\\\u00e0u\\\":[\\\"Xanh l\\\\u01b0u ly\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"256GB\\\"]}\"', 25990000.00, 24, 'uploads/media_6815be4a55486.jpg', '1', '2025-05-02 23:57:14', '2025-05-05 10:16:50', NULL, NULL, NULL),
(74, 'DIENTHOAI-XANHMONGKET-128GB', 19, 'Dung lượng: 128GB | Màu: Xanh mòng két', '\"{\\\"M\\\\u00e0u\\\":[\\\"Xanh m\\\\u00f2ng k\\\\u00e9t\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"128GB\\\"]}\"', 22390000.00, 23, 'uploads/media_6815be6bb6e79.jpg', '1', '2025-05-02 23:57:47', '2025-05-05 10:18:30', NULL, NULL, NULL),
(75, 'DIENTHOAI-TRANG-256GB', 19, 'Dung lượng: 256GB | Màu: Trắng', '\"{\\\"M\\\\u00e0u\\\":[\\\"Tr\\\\u1eafng\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"256GB\\\"]}\"', 25990000.00, 24, 'uploads/media_6815be91eeea0.jpg', '1', '2025-05-02 23:58:25', '2025-05-05 10:07:27', NULL, NULL, NULL),
(76, 'DIENTHOAI-HONG-512GB', 19, 'Dung lượng: 512GB | Màu: Hồng', '\"{\\\"M\\\\u00e0u\\\":[\\\"H\\\\u1ed3ng\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"512GB\\\"]}\"', 31990000.00, 23, 'uploads/media_6815bec276d52.jpg', '1', '2025-05-02 23:59:14', '2025-05-05 09:48:39', NULL, NULL, NULL),
(77, 'DIENTHOAI-DEN-512GB', 19, 'Dung lượng: 512GB | Màu: Đen', '\"{\\\"M\\\\u00e0u\\\":[\\\"\\\\u0110en\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"512GB\\\"]}\"', 31990000.00, 22, 'uploads/media_6815bedb5e852.jpg', '1', '2025-05-02 23:59:39', '2025-05-05 09:56:45', NULL, NULL, NULL),
(78, 'DIENTHOAI-128GB-XANHMONGKET', 20, 'Dung lượng: 128GB | Màu: Xanh mòng két', '\"{\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"128GB\\\"],\\\"M\\\\u00e0u\\\":[\\\"Xanh m\\\\u00f2ng k\\\\u00e9t\\\"]}\"', 19290000.00, 24, 'uploads/media_6815c1b761968.jpg', '1', '2025-05-03 00:11:51', '2025-05-05 09:48:21', NULL, NULL, NULL),
(79, 'DIENTHOAI-512GB-DEN', 20, 'Dung lượng: 512GB | Màu: Đen', '\"{\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"512GB\\\"],\\\"M\\\\u00e0u\\\":[\\\"\\\\u0110en\\\"]}\"', 28990000.00, 25, 'uploads/media_6815c1e8e389a.jpg', '1', '2025-05-03 00:12:40', '2025-05-03 00:12:40', NULL, NULL, NULL),
(80, 'DIENTHOAI-256GB-TRANG', 20, 'Dung lượng: 256GB | Màu: Trắng', '\"{\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"256GB\\\"],\\\"M\\\\u00e0u\\\":[\\\"Tr\\\\u1eafng\\\"]}\"', 22990000.00, 24, 'uploads/media_6815c20d967f4.jpg', '1', '2025-05-03 00:13:17', '2025-05-05 09:48:21', NULL, NULL, NULL),
(81, 'DIENTHOAI-128GB-HONG', 20, 'Dung lượng: 128GB | Màu: Hồng', '\"{\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"128GB\\\"],\\\"M\\\\u00e0u\\\":[\\\"H\\\\u1ed3ng\\\"]}\"', 19290000.00, 24, 'uploads/media_6815c233346a6.jpg', '1', '2025-05-03 00:13:55', '2025-05-05 10:09:17', NULL, NULL, NULL),
(82, 'DIENTHOAI-256GB-XANHLUULY', 20, 'Dung lượng: 256GB | Màu: Xanh lưu ly', '\"{\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"256GB\\\"],\\\"M\\\\u00e0u\\\":[\\\"Xanh l\\\\u01b0u ly\\\"]}\"', 22990000.00, 23, 'uploads/media_6815c254e0e1b.jpg', '1', '2025-05-03 00:14:28', '2025-05-05 09:54:03', NULL, NULL, NULL),
(83, 'DIENTHOAI-TITANSAMAC-512GB', 21, 'Dung lượng: 512GB | Màu: Titan sa mạc', '\"{\\\"M\\\\u00e0u\\\":[\\\"Titan sa m\\\\u1ea1c\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"512GB\\\"]}\"', 34690000.00, 25, 'uploads/media_6815c5384ed26.jpg', '1', '2025-05-03 00:26:48', '2025-05-05 09:06:41', NULL, NULL, NULL),
(84, 'DIENTHOAI-TITANTRANG-1TB', 21, 'Dung lượng: 1TB | Màu: Titan trắng', '\"{\\\"M\\\\u00e0u\\\":[\\\"Titan tr\\\\u1eafng\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"1TB\\\"]}\"', 40090000.00, 21, 'uploads/media_6815c55a060bc.jpg', '1', '2025-05-03 00:27:22', '2025-05-05 10:08:59', NULL, NULL, NULL),
(85, 'DIENTHOAI-TITANDEN-128GB', 21, 'Dung lượng: 128GB | Màu: Titan đen', '\"{\\\"M\\\\u00e0u\\\":[\\\"Titan \\\\u0111en\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"128GB\\\"]}\"', 25290000.00, 24, 'uploads/media_6815c57bee867.jpg', '1', '2025-05-03 00:27:55', '2025-05-05 10:07:33', NULL, NULL, NULL),
(86, 'DIENTHOAI-TRANG-128GB', 22, 'Dung lượng: 128GB | Màu: Trắng', '\"{\\\"M\\\\u00e0u\\\":[\\\"Tr\\\\u1eafng\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"128GB\\\"]}\"', 16290000.00, 21, 'uploads/media_6816d01a07cc3.jpg', '1', '2025-05-03 19:25:30', '2025-05-05 10:07:30', NULL, NULL, NULL),
(87, 'DIENTHOAI-TRANG-512GB', 22, 'Dung lượng: 512GB | Màu: Trắng', '\"{\\\"M\\\\u00e0u\\\":[\\\"Tr\\\\u1eafng\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"512GB\\\"]}\"', 25590000.00, 24, 'uploads/media_6816d06fe2a4f.jpg', '1', '2025-05-03 19:26:55', '2025-05-05 09:48:30', NULL, NULL, NULL),
(88, 'DIENTHOAI-DEN-128GB', 22, 'Dung lượng: 128GB | Màu: Đen', '\"{\\\"M\\\\u00e0u\\\":[\\\"\\\\u0110en\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"128GB\\\"]}\"', 19390000.00, 22, 'uploads/media_6816d0b848274.jpg', '1', '2025-05-03 19:28:08', '2025-05-05 10:07:33', NULL, NULL, NULL),
(89, 'DIENTHOAI-XANHLA-18GB256GB', 24, 'Dung lượng: 18GB-256GB | Màu: Xanh lá', '\"{\\\"M\\\\u00e0u\\\":[\\\"Xanh l\\\\u00e1\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"18GB-256GB\\\"]}\"', 11490000.00, 21, 'uploads/media_6816e0f069a0e.jpg', '1', '2025-05-03 20:37:20', '2025-05-05 10:09:17', NULL, NULL, NULL),
(90, 'DIENTHOAI-XAM-8GB128GB', 24, 'Dung lượng: 8GB-128GB | Màu: Xám', '\"{\\\"M\\\\u00e0u\\\":[\\\"X\\\\u00e1m\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"8GB-128GB\\\"]}\"', 9490000.00, 23, 'uploads/media_6816e10aac6a7.jpg', '1', '2025-05-03 20:37:46', '2025-05-05 09:54:04', NULL, NULL, NULL),
(91, 'DIENTHOAI-DEN-8GB256GB', 24, 'Dung lượng: 8GB-256GB | Màu: Đen', '\"{\\\"M\\\\u00e0u\\\":[\\\"\\\\u0110en\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"8GB-256GB\\\"]}\"', 10490000.00, 21, 'uploads/media_6816e1262c993.jpg', '1', '2025-05-03 20:38:14', '2025-05-05 10:18:29', NULL, NULL, NULL),
(92, 'DIENTHOAI-DEN-8GB128GB', 25, 'Dung lượng: 8GB-128GB | Màu: Đen', '\"{\\\"M\\\\u00e0u\\\":[\\\"\\\\u0110en\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"8GB-128GB\\\"]}\"', 5690000.00, 21, 'uploads/media_6816e3b7067dd.jpg', '1', '2025-05-03 20:49:11', '2025-05-05 10:07:09', NULL, NULL, NULL),
(93, 'DIENTHOAI-XANHLA-6GB128GB', 25, 'Dung lượng: 6GB-128GB | Màu: Xanh lá', '\"{\\\"M\\\\u00e0u\\\":[\\\"Xanh l\\\\u00e1\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"6GB-128GB\\\"]}\"', 6790000.00, 22, 'uploads/media_6816e3ee57fea.jpg', '1', '2025-05-03 20:49:42', '2025-05-05 09:55:24', NULL, NULL, NULL),
(94, 'DIENTHOAI-HONG-8GB256GB', 25, 'Dung lượng: 8GB-256GB | Màu: Hồng', '\"{\\\"M\\\\u00e0u\\\":[\\\"H\\\\u1ed3ng\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"8GB-256GB\\\"]}\"', 6790000.00, 22, 'uploads/media_6816e422489d6.jpg', '1', '2025-05-03 20:50:58', '2025-05-05 10:18:29', NULL, NULL, NULL),
(95, 'DIENTHOAI-TITANXANH-256GB', 26, 'Dung lượng: 256GB | Màu: Titan xanh', '\"{\\\"M\\\\u00e0u\\\":[\\\"Titan xanh\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"256GB\\\"]}\"', 29990000.00, 25, 'uploads/media_6816eab87624b.jpg', '1', '2025-05-03 21:19:04', '2025-05-03 21:19:04', NULL, NULL, NULL),
(96, 'DIENTHOAI-TITANXANH-512GB', 26, 'Dung lượng: 512GB | Màu: Titan xanh', '\"{\\\"M\\\\u00e0u\\\":[\\\"Titan xanh\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"512GB\\\"]}\"', 32990000.00, 18, 'uploads/media_6816eadd1b1e0.jpg', '1', '2025-05-03 21:19:41', '2025-05-05 21:48:18', NULL, NULL, NULL),
(97, 'DIENTHOAI-TITANDEN-256GB', 26, 'Dung lượng: 256GB | Màu: Titan đen', '\"{\\\"M\\\\u00e0u\\\":[\\\"Titan \\\\u0111en\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"256GB\\\"]}\"', 29990000.00, 25, 'uploads/media_6816eb05522a3.jpg', '1', '2025-05-03 21:20:21', '2025-05-03 21:20:21', NULL, NULL, NULL),
(98, 'DIENTHOAI-TITANDEN-512GB', 26, 'Dung lượng: 512GB | Màu: Titan đen', '\"{\\\"M\\\\u00e0u\\\":[\\\"Titan \\\\u0111en\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"512GB\\\"]}\"', 39990000.00, 22, 'uploads/media_6816eb1bd9ddb.jpg', '1', '2025-05-03 21:20:43', '2025-05-05 21:48:18', NULL, NULL, NULL),
(99, 'DIENTHOAI-DEN-4GB', 27, 'Dung lượng: 4GB | Màu: Đen', '\"{\\\"M\\\\u00e0u\\\":[\\\"\\\\u0110en\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"4GB\\\"]}\"', 3490000.00, 21, 'uploads/media_6816ed25d2398.jpg', '1', '2025-05-03 21:29:25', '2025-05-05 10:07:33', NULL, NULL, NULL),
(100, 'DIENTHOAI-XANHLA-6GB', 27, 'Dung lượng: 6GB | Màu: Xanh lá', '\"{\\\"M\\\\u00e0u\\\":[\\\"Xanh l\\\\u00e1\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"6GB\\\"]}\"', 4990000.00, 23, 'uploads/media_6816ed39d879f.jpg', '1', '2025-05-03 21:29:45', '2025-05-05 10:07:30', NULL, NULL, NULL),
(101, 'DIENTHOAI-XAM-6GB', 27, 'Dung lượng: 6GB | Màu: Xám', '\"{\\\"M\\\\u00e0u\\\":[\\\"X\\\\u00e1m\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"6GB\\\"]}\"', 4490000.00, 21, 'uploads/media_6816ed4fe2094.jpg', '1', '2025-05-03 21:30:07', '2025-05-05 09:56:01', NULL, NULL, NULL),
(102, 'DIENTHOAI-TIM-8GB128GB', 28, 'Dung lượng: 8GB-128GB | Màu: Tím', '\"{\\\"M\\\\u00e0u\\\":[\\\"T\\\\u00edm\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"8GB-128GB\\\"]}\"', 7690000.00, 23, 'uploads/media_6816ef35d8a57.jpg', '1', '2025-05-03 21:38:13', '2025-05-05 09:50:27', NULL, NULL, NULL),
(103, 'DIENTHOAI-XANHLA-8GB256GB', 28, 'Dung lượng: 8GB-256GB | Màu: Xanh lá', '\"{\\\"M\\\\u00e0u\\\":[\\\"Xanh l\\\\u00e1\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"8GB-256GB\\\"]}\"', 890000.00, 24, 'uploads/media_6816ef5525d63.jpg', '1', '2025-05-03 21:38:45', '2025-05-05 09:48:39', NULL, NULL, NULL),
(104, 'DIENTHOAI-DEN-12GB256GB', 28, 'Dung lượng: 12GB-256GB | Màu: Đen', '\"{\\\"M\\\\u00e0u\\\":[\\\"\\\\u0110en\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"12GB-256GB\\\"]}\"', 9000000.00, 20, 'uploads/media_6816ef69f344e.jpg', '1', '2025-05-03 21:39:05', '2025-05-05 10:07:34', NULL, NULL, NULL),
(105, 'DIENTHOAI-XANHLA-8GB128GB', 29, 'Dung lượng: 8GB-128GB | Màu: Xanh lá', '\"{\\\"M\\\\u00e0u\\\":[\\\"Xanh l\\\\u00e1\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"8GB-128GB\\\"]}\"', 5000000.00, 23, 'uploads/media_6816f0f46fd8f.jpg', '1', '2025-05-03 21:45:40', '2025-05-05 09:55:25', NULL, NULL, NULL),
(106, 'DIENTHOAI-XAM-8GB256GB', 29, 'Dung lượng: 8GB-256GB | Màu: Xám', '\"{\\\"M\\\\u00e0u\\\":[\\\"X\\\\u00e1m\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"8GB-256GB\\\"]}\"', 5900000.00, 22, 'uploads/media_6816f10ddc471.jpg', '1', '2025-05-03 21:46:05', '2025-05-05 10:18:32', NULL, NULL, NULL),
(107, 'IPHONE12-BAC-128GB', 30, 'Dung lượng: 128GB | Màu: Bạc', '\"{\\\"M\\\\u00e0u\\\":[\\\"B\\\\u1ea1c\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"128GB\\\"]}\"', 23490000.00, 23, 'uploads/media_6816f43410c2c.webp', '1', '2025-05-03 21:59:32', '2025-05-05 09:48:44', NULL, NULL, NULL),
(108, 'IPHONE12-XAM-256GB', 30, 'Dung lượng: 256GB | Màu: Xám', '\"{\\\"M\\\\u00e0u\\\":[\\\"X\\\\u00e1m\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"256GB\\\"]}\"', 27590000.00, 24, 'uploads/media_6816f46208900.webp', '1', '2025-05-03 22:00:18', '2025-05-05 09:48:22', NULL, NULL, NULL),
(109, 'IPHONE12-VANG-512GB', 30, 'Dung lượng: 512GB | Màu: Vàng', '\"{\\\"M\\\\u00e0u\\\":[\\\"V\\\\u00e0ng\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"512GB\\\"]}\"', 33000000.00, 22, 'uploads/media_6816f481e0a56.webp', '1', '2025-05-03 22:00:49', '2025-05-05 10:09:00', NULL, NULL, NULL),
(110, 'IPHONE12-XANHDUONG-512GB', 30, 'Dung lượng: 512GB | Màu: Xanh dương', '\"{\\\"M\\\\u00e0u\\\":[\\\"Xanh d\\\\u01b0\\\\u01a1ng\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"512GB\\\"]}\"', 29000000.00, 24, 'uploads/media_6816f498632fc.webp', '1', '2025-05-03 22:01:12', '2025-05-05 09:48:38', NULL, NULL, NULL),
(111, 'IPHONE15-TITANDEN-256GB', 31, 'Dung lượng: 256GB | Màu: Titan đen', '\"{\\\"M\\\\u00e0u\\\":[\\\"Titan \\\\u0111en\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"256GB\\\"]}\"', 27990000.00, 24, 'uploads/media_6816f96a1b43f.webp', '1', '2025-05-03 22:21:46', '2025-05-05 09:48:34', NULL, NULL, NULL),
(112, 'IPHONE15-TITANTUNHIEN-512GB', 31, 'Dung lượng: 512GB | Màu: Titan tự nhiên', '\"{\\\"M\\\\u00e0u\\\":[\\\"Titan t\\\\u1ef1 nhi\\\\u00ean\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"512GB\\\"]}\"', 31990000.00, 21, 'uploads/media_6816f9a2534c9.webp', '1', '2025-05-03 22:22:42', '2025-05-05 10:09:22', NULL, NULL, NULL),
(113, 'IPHONE15-TITANTRANG-1TB', 31, 'Dung lượng: 1TB | Màu: Titan trắng', '\"{\\\"M\\\\u00e0u\\\":[\\\"Titan tr\\\\u1eafng\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"1TB\\\"]}\"', 34990000.00, 22, 'uploads/media_6816f9c5f20d1.webp', '1', '2025-05-03 22:23:17', '2025-05-05 10:16:50', NULL, NULL, NULL),
(114, 'IPHONE14-VANG-256GB', 32, 'Dung lượng: 256GB | Màu: Vàng', '\"{\\\"M\\\\u00e0u\\\":[\\\"V\\\\u00e0ng\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"256GB\\\"]}\"', 30990000.00, 25, 'uploads/media_6816fe33ebda7.webp', '1', '2025-05-03 22:42:11', '2025-05-03 22:42:11', NULL, NULL, NULL),
(115, 'IPHONE14-BAC-512GB', 32, 'Dung lượng: 512GB | Màu: Bạc', '\"{\\\"M\\\\u00e0u\\\":[\\\"B\\\\u1ea1c\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"512GB\\\"]}\"', 30590000.00, 23, 'uploads/media_6816fe5155407.webp', '1', '2025-05-03 22:42:41', '2025-05-05 09:54:35', NULL, NULL, NULL),
(116, 'IPHONE14-TIM-1TB', 32, 'Dung lượng: 1TB | Màu: Tím', '\"{\\\"M\\\\u00e0u\\\":[\\\"T\\\\u00edm\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"1TB\\\"]}\"', 35000000.00, 22, 'uploads/media_6816fe6880902.webp', '1', '2025-05-03 22:43:04', '2025-05-05 09:56:01', NULL, NULL, NULL),
(117, 'IPHONE13-XANHLA-512GB', 33, 'Dung lượng: 512GB | Màu: Xanh lá', '\"{\\\"M\\\\u00e0u\\\":[\\\"Xanh l\\\\u00e1\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"512GB\\\"]}\"', 22990000.00, 25, 'uploads/media_681703bacdc18.webp', '1', '2025-05-03 23:05:46', '2025-05-05 09:06:46', NULL, NULL, NULL),
(118, 'IPHONE13-BAC-1TB1', 33, 'Dung lượng: 1TB1 | Màu: Bạc', '\"{\\\"M\\\\u00e0u\\\":[\\\"B\\\\u1ea1c\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"1TB1\\\"]}\"', 25990000.00, 22, 'uploads/media_681703ccc5539.webp', '1', '2025-05-03 23:06:04', '2025-05-05 10:07:32', NULL, NULL, NULL),
(119, 'IPHONE13-VANG-1TB1', 33, 'Dung lượng: 1TB1 | Màu: Vàng', '\"{\\\"M\\\\u00e0u\\\":[\\\"V\\\\u00e0ng\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"1TB1\\\"]}\"', 25990000.00, 23, 'uploads/media_681703e2d45d7.webp', '1', '2025-05-03 23:06:26', '2025-05-05 09:48:36', NULL, NULL, NULL),
(120, 'IPHONE14-XANH-256GB', 34, 'Dung lượng: 256GB | Màu: Xanh', '\"{\\\"M\\\\u00e0u\\\":[\\\"Xanh\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"256GB\\\"]}\"', 17990000.00, 22, 'uploads/media_6817078271045.webp', '1', '2025-05-03 23:21:54', '2025-05-05 10:09:17', NULL, NULL, NULL),
(121, 'IPHONE14-TRANG-256GB', 34, 'Dung lượng: 256GB | Màu: Trắng', '\"{\\\"M\\\\u00e0u\\\":[\\\"Tr\\\\u1eafng\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"256GB\\\"]}\"', 17990000.00, 23, 'uploads/media_68170793769a6.webp', '1', '2025-05-03 23:22:11', '2025-05-05 10:09:22', NULL, NULL, NULL),
(122, 'IPHONE14-DEN-256GB', 34, 'Dung lượng: 256GB | Màu: Đen', '\"{\\\"M\\\\u00e0u\\\":[\\\"\\\\u0110en\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"256GB\\\"]}\"', 17990000.00, 21, 'uploads/media_681707a76ad9b.webp', '1', '2025-05-03 23:22:31', '2025-05-05 10:09:22', NULL, NULL, NULL),
(123, 'IPHONE14-TRANG-128GB', 35, 'Dung lượng: 128GB | Màu: Trắng', '\"{\\\"M\\\\u00e0u\\\":[\\\"Tr\\\\u1eafng\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"128GB\\\"]}\"', 19990000.00, 22, 'uploads/media_68170a8658c25.webp', '1', '2025-05-03 23:34:46', '2025-05-05 10:09:02', NULL, NULL, NULL),
(124, 'IPHONE14-XANH-128GB', 35, 'Dung lượng: 128GB | Màu: Xanh', '\"{\\\"M\\\\u00e0u\\\":[\\\"Xanh\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"128GB\\\"]}\"', 19990000.00, 18, 'uploads/media_68170aad682b7.webp', '1', '2025-05-03 23:35:25', '2025-05-05 10:07:28', NULL, NULL, NULL),
(125, '8GB256GB-TIM', 36, 'Màu: Tím', '\"{\\\"M\\\\u00e0u\\\":[\\\"T\\\\u00edm\\\"]}\"', 8990000.00, 20, 'uploads/media_68170d110c71d.png', '1', '2025-05-03 23:45:37', '2025-05-05 10:18:27', NULL, NULL, NULL),
(126, '8GB256GB-DEN', 36, 'Màu: Đen', '\"{\\\"M\\\\u00e0u\\\":[\\\"\\\\u0110en\\\"]}\"', 89900000.00, 19, 'uploads/media_68170d24648a3.png', '1', '2025-05-03 23:45:56', '2025-05-05 10:07:33', NULL, NULL, NULL),
(127, 'DELLINSPI-INTELCOREI7ALDERLAKE1255U', 39, 'Thông số CPU: Intel Core i7 Alder Lake - 1255U', '\"{\\\"Th\\\\u00f4ng s\\\\u1ed1 CPU\\\":[\\\"Intel Core i7 Alder Lake - 1255U\\\"]}\"', 19990000.00, 23, 'uploads/media_681712124a6f7.jpg', '1', '2025-05-04 00:06:58', '2025-05-05 09:57:19', NULL, NULL, NULL),
(128, 'DELLINSPI-INTELCOREI5ALDERLAKE1235U', 39, 'Thông số CPU: Intel Core i5 Alder Lake - 1235U', '\"{\\\"Th\\\\u00f4ng s\\\\u1ed1 CPU\\\":[\\\"Intel Core i5 Alder Lake - 1235U\\\"]}\"', 16990000.00, 21, 'uploads/media_6817122ebc90b.jpg', '1', '2025-05-04 00:07:26', '2025-05-05 10:09:22', NULL, NULL, NULL),
(129, 'LAPTOPMAC-DEN-256GB', 41, 'Dung lượng: 256GB | Màu: Đen', '\"{\\\"M\\\\u00e0u\\\":[\\\"\\\\u0110en\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"256GB\\\"]}\"', 26990000.00, 23, 'uploads/media_68181145ee58b.jpg', '1', '2025-05-04 00:45:09', '2025-05-05 09:53:00', NULL, NULL, NULL),
(130, 'LAPTOPMAC-DEN-512GB', 41, 'Dung lượng: 512GB | Màu: Đen', '\"{\\\"M\\\\u00e0u\\\":[\\\"\\\\u0110en\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"512GB\\\"]}\"', 30990000.00, 23, 'uploads/media_6818116c5c9d5.jpg', '1', '2025-05-04 00:45:26', '2025-05-05 10:07:30', NULL, NULL, NULL),
(131, 'LAPTOPMAC-XANH-256GB', 41, 'Dung lượng: 256GB | Màu: Xanh', '\"{\\\"M\\\\u00e0u\\\":[\\\"Xanh\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"256GB\\\"]}\"', 26990000.00, 21, 'uploads/media_68181191c2642.jpg', '1', '2025-05-04 00:45:49', '2025-05-05 10:08:59', NULL, NULL, NULL),
(132, 'LAPTOPMAC-XANH-512GB', 41, 'Dung lượng: 512GB | Màu: Xanh', '\"{\\\"M\\\\u00e0u\\\":[\\\"Xanh\\\"],\\\"Dung l\\\\u01b0\\\\u1ee3ng\\\":[\\\"512GB\\\"]}\"', 30990000.00, 20, 'uploads/media_681811bf88d3b.jpg', '1', '2025-05-04 00:46:12', '2025-05-05 10:18:32', NULL, NULL, NULL),
(133, 'LAPTOPMAC-VANGDONG', 42, 'Màu: Vàng đồng', '\"{\\\"M\\\\u00e0u\\\":[\\\"V\\\\u00e0ng \\\\u0111\\\\u1ed3ng\\\"]}\"', 21490000.00, 21, 'uploads/media_68181055190ca.jpg', '1', '2025-05-04 00:52:44', '2025-05-05 09:57:19', NULL, NULL, NULL),
(134, 'LAPTOPMAC-XANHDEN', 42, 'Màu: Xanh đen', '\"{\\\"M\\\\u00e0u\\\":[\\\"Xanh \\\\u0111en\\\"]}\"', 21490000.00, 23, 'uploads/media_68181082f1272.jpg', '1', '2025-05-04 00:53:02', '2025-05-05 10:09:19', NULL, NULL, NULL),
(135, 'LAPTOPMAC-XAM', 42, 'Màu: Xám', '\"{\\\"M\\\\u00e0u\\\":[\\\"X\\\\u00e1m\\\"]}\"', 21490000.00, 24, 'uploads/media_681810bb29374.jpg', '1', '2025-05-04 00:53:17', '2025-05-05 10:07:09', NULL, NULL, NULL),
(136, 'LAPTOPMAC-VANG', 43, 'Màu: Vàng', '\"{\\\"M\\\\u00e0u\\\":[\\\"V\\\\u00e0ng\\\"]}\"', 35990000.00, 20, 'uploads/media_68180f940491e.jpg', '1', '2025-05-04 01:06:13', '2025-05-05 10:18:33', NULL, NULL, NULL),
(137, 'LAPTOPMAC-XANHDATROINHAT', 43, 'Màu: Xanh da trời nhạt', '\"{\\\"M\\\\u00e0u\\\":[\\\"Xanh da tr\\\\u1eddi nh\\\\u1ea1t\\\"]}\"', 36980000.00, 20, 'uploads/media_68180fd24ffbd.jpg', '1', '2025-05-04 01:06:36', '2025-05-05 10:08:59', NULL, NULL, NULL),
(138, 'LAPTOPMAC-BAC', 44, 'Màu: Bạc', '\"{\\\"M\\\\u00e0u\\\":[\\\"B\\\\u1ea1c\\\"]}\"', 39990000.00, 10, 'uploads/media_68180f488e53f.jpg', '1', '2025-05-04 01:16:49', '2025-05-05 10:10:21', NULL, NULL, NULL),
(139, 'LAPTOPMAC-XANHDATROI', 45, 'Màu: Xanh da trời', '\"{\\\"M\\\\u00e0u\\\":[\\\"Xanh da tr\\\\u1eddi\\\"]}\"', 30890000.00, 22, 'uploads/media_68180eaa5263e.jpg', '1', '2025-05-04 01:24:42', '2025-05-05 09:48:38', NULL, NULL, NULL),
(140, 'CHUOTBLUE-DEN', 52, 'Màu: Đen', '\"{\\\"M\\\\u00e0u\\\":[\\\"\\\\u0110en\\\"]}\"', 280000.00, 22, 'uploads/media_68180cd69550e.jpg', '1', '2025-05-04 02:10:51', '2025-05-05 09:56:02', NULL, NULL, NULL),
(141, 'CHUOTBLUE-HONG', 52, 'Màu: Hồng', '\"{\\\"M\\\\u00e0u\\\":[\\\"H\\\\u1ed3ng\\\"]}\"', 280000.00, 21, 'uploads/media_68180ce2be8a7.jpg', '1', '2025-05-04 02:11:24', '2025-05-05 10:09:19', NULL, NULL, NULL),
(142, 'BANPHIMB-NAUNHAT', 55, 'Màu: Nâu nhạt', '\"{\\\"M\\\\u00e0u\\\":[\\\"N\\\\u00e2u nh\\\\u1ea1t\\\"]}\"', 710000.00, 19, 'uploads/media_6817f654457cc.jpg', '1', '2025-05-04 02:23:40', '2025-05-05 10:07:33', NULL, NULL, NULL),
(143, 'BANPHIMB-XANHMIN', 55, 'Màu: Xanh min', '\"{\\\"M\\\\u00e0u\\\":[\\\"Xanh min\\\"]}\"', 710000.00, 19, 'uploads/media_6817f67ab5ada.jpg', '1', '2025-05-04 02:23:55', '2025-05-05 10:09:21', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_items`
--

CREATE TABLE `product_variant_items` (
  `id` bigint UNSIGNED NOT NULL,
  `product_variant_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variant_items`
--

INSERT INTO `product_variant_items` (`id`, `product_variant_id`, `name`, `is_default`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Đen bóng', 1, 0, '2025-04-06 14:54:30', '2025-04-25 22:15:14'),
(2, 1, 'Bạc', 0, 0, '2025-04-06 14:56:19', '2025-04-25 22:15:02'),
(3, 2, '46mm', 0, 1, '2025-04-06 14:56:50', '2025-04-25 22:14:27'),
(4, 2, '42mm', 1, 1, '2025-04-06 14:57:14', '2025-04-25 22:14:18'),
(5, 6, '64GB', 0, 1, '2025-04-25 18:23:10', '2025-04-25 18:25:21'),
(6, 6, '128GB', 1, 1, '2025-04-25 18:25:37', '2025-04-25 18:27:38'),
(7, 5, 'Đen', 1, 1, '2025-04-25 18:26:53', '2025-04-25 18:26:53'),
(8, 5, 'Tím', 0, 1, '2025-04-25 18:27:03', '2025-04-25 18:27:03'),
(9, 5, 'Xanh lá', 0, 1, '2025-04-25 18:27:14', '2025-04-25 18:27:14'),
(10, 5, 'Trắng', 0, 1, '2025-04-25 18:27:24', '2025-04-25 18:27:24'),
(11, 7, 'Vàng', 1, 1, '2025-04-25 19:02:42', '2025-04-25 19:02:42'),
(12, 7, 'Xanh lá', 0, 1, '2025-04-25 19:02:54', '2025-04-25 19:02:54'),
(13, 7, 'Đen', 0, 1, '2025-04-25 19:03:08', '2025-04-25 19:03:08'),
(14, 8, '256GB', 1, 1, '2025-04-25 19:03:43', '2025-04-25 19:03:43'),
(15, 8, '128GB', 0, 1, '2025-04-25 19:03:57', '2025-04-25 19:03:57'),
(16, 9, '15.6\", 2.8K (2880 x 1620) - OLED, 120Hz', 1, 1, '2025-04-25 19:26:36', '2025-04-25 19:27:47'),
(17, 9, '15.6\", Full HD (1920 x 1080) OLED', 0, 1, '2025-04-25 19:29:05', '2025-04-25 19:29:05'),
(18, 10, 'i5, 12500H, 2.5GHz', 1, 1, '2025-04-25 19:29:34', '2025-04-25 19:29:34'),
(19, 10, 'i5, 13500H, 2.6GHz', 0, 1, '2025-04-25 19:29:54', '2025-04-25 19:29:54'),
(20, 11, '15.6\", Full HD (1920 x 1080), 120Hz', 1, 1, '2025-04-25 19:46:40', '2025-04-25 19:46:40'),
(21, 11, '14.6\", Full HD (1920 x 1080), 120Hz', 0, 1, '2025-04-25 19:46:52', '2025-04-25 19:46:52'),
(22, 12, 'i5, 1235U, 1.3GHz', 1, 1, '2025-04-25 19:47:18', '2025-04-25 19:47:18'),
(23, 12, 'i7, 1255U, 1.7GHz', 0, 1, '2025-04-25 19:47:36', '2025-04-25 19:47:36'),
(24, 13, 'Xám', 1, 1, '2025-04-25 22:25:14', '2025-04-25 22:25:14'),
(25, 13, 'Bạc', 0, 1, '2025-04-25 22:25:22', '2025-04-25 22:25:22'),
(26, 13, 'Hồng', 0, 1, '2025-04-25 22:25:32', '2025-04-25 22:25:32'),
(27, 13, 'Xanh dương', 0, 1, '2025-04-25 22:25:42', '2025-04-25 22:25:42'),
(28, 13, 'Đen', 0, 1, '2025-04-25 22:25:53', '2025-04-25 22:25:53'),
(29, 3, 'Xanh dương', 1, 1, '2025-04-25 22:39:36', '2025-04-25 22:39:36'),
(30, 3, 'Đen-xám', 0, 1, '2025-04-25 22:39:54', '2025-04-25 22:39:54'),
(31, 3, 'Tím', 0, 1, '2025-04-25 22:40:04', '2025-04-25 22:40:04'),
(32, 4, '128GB', 1, 1, '2025-04-25 22:40:32', '2025-04-25 22:40:32'),
(33, 4, '512GB', 0, 1, '2025-04-25 22:40:42', '2025-04-25 22:40:42'),
(34, 14, 'Xanh', 1, 1, '2025-04-27 01:20:32', '2025-04-27 01:20:32'),
(35, 14, 'Đen', 0, 1, '2025-04-27 01:20:42', '2025-04-27 01:20:42'),
(36, 16, '256GB', 1, 1, '2025-05-02 21:00:48', '2025-05-02 21:00:48'),
(37, 16, '512GB', 0, 1, '2025-05-02 21:01:03', '2025-05-02 21:01:03'),
(38, 16, '1TB', 0, 1, '2025-05-02 21:01:15', '2025-05-02 21:01:15'),
(39, 15, 'Titan sa mạc', 1, 1, '2025-05-02 21:01:39', '2025-05-02 21:01:39'),
(40, 15, 'Titan trắng', 0, 1, '2025-05-02 21:01:49', '2025-05-02 21:01:49'),
(41, 15, 'Titan đen', 0, 1, '2025-05-02 21:02:04', '2025-05-02 21:02:04'),
(42, 15, 'Titan tự nhiên', 0, 1, '2025-05-02 21:02:16', '2025-05-02 21:02:16'),
(43, 17, 'Tím', 1, 1, '2025-05-02 21:28:49', '2025-05-02 21:28:49'),
(44, 17, 'Đen', 0, 1, '2025-05-02 21:28:59', '2025-05-02 21:28:59'),
(45, 18, 'Xanh dương', 1, 1, '2025-05-02 21:38:01', '2025-05-02 21:38:01'),
(46, 18, 'Đen', 0, 1, '2025-05-02 21:38:17', '2025-05-02 21:38:17'),
(47, 18, 'Xám', 0, 1, '2025-05-02 21:38:29', '2025-05-02 21:38:29'),
(48, 19, '256GB', 1, 1, '2025-05-02 21:39:00', '2025-05-02 21:39:00'),
(49, 19, '1TB', 0, 1, '2025-05-02 21:39:18', '2025-05-02 21:39:18'),
(50, 20, '13.6\", Liquid Retina (2560 x 1664)', 1, 1, '2025-05-02 22:06:33', '2025-05-02 22:06:33'),
(51, 21, 'Apple M4, 120 GB/s memory bandwidth', 1, 1, '2025-05-02 22:07:04', '2025-05-02 22:07:04'),
(52, 23, '4.47 GHz', 1, 1, '2025-05-02 22:27:16', '2025-05-02 22:27:16'),
(53, 22, 'android 15', 1, 1, '2025-05-02 22:27:37', '2025-05-02 22:27:37'),
(54, 24, 'Xanh lá', 1, 1, '2025-05-02 22:43:33', '2025-05-02 22:43:33'),
(56, 24, 'Xanh Nauy', 0, 1, '2025-05-02 22:43:56', '2025-05-02 22:43:56'),
(57, 25, '256GB', 1, 1, '2025-05-02 22:44:34', '2025-05-02 22:44:34'),
(58, 25, '512GB', 0, 1, '2025-05-02 22:44:48', '2025-05-02 22:44:48'),
(59, 26, 'Xanh dương nhạt', 1, 1, '2025-05-02 23:00:39', '2025-05-02 23:00:39'),
(60, 26, 'Xanh Nauy', 0, 1, '2025-05-02 23:00:47', '2025-05-02 23:09:27'),
(61, 27, '256GB', 1, 1, '2025-05-02 23:01:20', '2025-05-02 23:06:18'),
(62, 27, '512GB', 0, 1, '2025-05-02 23:01:31', '2025-05-02 23:01:38'),
(64, 28, 'Xanh dương nhạt', 0, 1, '2025-05-02 23:17:06', '2025-05-02 23:17:06'),
(65, 29, '256GB', 1, 1, '2025-05-02 23:17:58', '2025-05-02 23:17:58'),
(67, 30, 'Xanh', 1, 1, '2025-05-02 23:41:33', '2025-05-02 23:41:33'),
(69, 31, '256GB', 1, 1, '2025-05-02 23:42:19', '2025-05-02 23:42:19'),
(70, 31, '512GB', 0, 1, '2025-05-02 23:42:30', '2025-05-02 23:42:30'),
(71, 32, 'Xanh lưu ly', 1, 1, '2025-05-02 23:50:01', '2025-05-02 23:50:01'),
(72, 32, 'Xanh mòng két', 0, 1, '2025-05-02 23:50:23', '2025-05-02 23:50:23'),
(73, 32, 'Trắng', 0, 1, '2025-05-02 23:50:36', '2025-05-02 23:50:36'),
(74, 32, 'Hồng', 0, 1, '2025-05-02 23:50:46', '2025-05-02 23:50:46'),
(75, 32, 'Đen', 0, 1, '2025-05-02 23:50:55', '2025-05-02 23:50:55'),
(76, 33, '128GB', 1, 1, '2025-05-02 23:51:29', '2025-05-02 23:51:29'),
(77, 33, '256GB', 0, 1, '2025-05-02 23:51:40', '2025-05-02 23:51:40'),
(78, 33, '512GB', 0, 1, '2025-05-02 23:51:57', '2025-05-02 23:51:57'),
(79, 35, 'Xanh mòng két', 1, 1, '2025-05-03 00:09:09', '2025-05-03 00:09:09'),
(80, 35, 'Đen', 0, 1, '2025-05-03 00:09:23', '2025-05-03 00:09:23'),
(81, 35, 'Trắng', 0, 1, '2025-05-03 00:09:31', '2025-05-03 00:09:31'),
(82, 35, 'Hồng', 0, 1, '2025-05-03 00:09:40', '2025-05-03 00:09:40'),
(83, 35, 'Xanh lưu ly', 0, 1, '2025-05-03 00:10:02', '2025-05-03 00:10:02'),
(84, 34, '128GB', 1, 1, '2025-05-03 00:10:27', '2025-05-03 00:10:27'),
(85, 34, '256GB', 0, 1, '2025-05-03 00:10:39', '2025-05-03 00:10:39'),
(86, 34, '512GB', 0, 1, '2025-05-03 00:10:58', '2025-05-03 00:10:58'),
(87, 36, 'Titan sa mạc', 1, 1, '2025-05-03 00:23:06', '2025-05-03 00:23:14'),
(88, 36, 'Titan trắng', 0, 1, '2025-05-03 00:23:29', '2025-05-03 00:23:29'),
(89, 36, 'Titan đen', 0, 1, '2025-05-03 00:23:46', '2025-05-03 00:23:46'),
(91, 37, '128GB', 1, 1, '2025-05-03 00:24:44', '2025-05-03 00:24:44'),
(93, 37, '512GB', 0, 1, '2025-05-03 00:25:07', '2025-05-03 00:25:07'),
(94, 37, '1TB', 0, 1, '2025-05-03 00:25:23', '2025-05-03 00:25:23'),
(95, 38, 'Trắng', 1, 1, '2025-05-03 19:14:55', '2025-05-03 19:14:55'),
(96, 38, 'Đen', 0, 1, '2025-05-03 19:15:17', '2025-05-03 19:15:17'),
(97, 39, '128GB', 1, 1, '2025-05-03 19:23:46', '2025-05-03 19:23:46'),
(99, 39, '512GB', 0, 1, '2025-05-03 19:24:07', '2025-05-03 19:24:07'),
(100, 40, 'Đen', 1, 1, '2025-05-03 20:09:18', '2025-05-03 20:09:18'),
(101, 40, 'Trắng', 0, 1, '2025-05-03 20:09:31', '2025-05-03 20:09:31'),
(102, 41, '256GB', 1, 1, '2025-05-03 20:10:58', '2025-05-03 20:10:58'),
(103, 41, '512GB', 0, 1, '2025-05-03 20:11:08', '2025-05-03 20:11:08'),
(104, 41, '128GB', 0, 1, '2025-05-03 20:11:18', '2025-05-03 20:11:18'),
(105, 42, 'Xanh lá', 1, 1, '2025-05-03 20:34:57', '2025-05-03 20:34:57'),
(106, 42, 'Xám', 0, 1, '2025-05-03 20:35:05', '2025-05-03 20:35:05'),
(107, 42, 'Đen', 0, 1, '2025-05-03 20:35:15', '2025-05-03 20:35:15'),
(108, 43, '8GB-128GB', 1, 1, '2025-05-03 20:36:04', '2025-05-03 20:36:04'),
(109, 43, '8GB-256GB', 0, 1, '2025-05-03 20:36:27', '2025-05-03 20:36:27'),
(110, 43, '18GB-256GB', 0, 1, '2025-05-03 20:36:40', '2025-05-03 20:36:40'),
(111, 44, 'Đen', 1, 1, '2025-05-03 20:46:14', '2025-05-03 20:46:14'),
(112, 44, 'Xanh lá', 0, 1, '2025-05-03 20:46:23', '2025-05-03 20:46:23'),
(113, 44, 'Hồng', 0, 1, '2025-05-03 20:46:34', '2025-05-03 20:46:34'),
(114, 45, '8GB-128GB', 1, 1, '2025-05-03 20:48:06', '2025-05-03 20:48:06'),
(115, 45, '6GB-128GB', 0, 1, '2025-05-03 20:48:16', '2025-05-03 20:48:16'),
(116, 45, '8GB-256GB', 0, 1, '2025-05-03 20:48:36', '2025-05-03 20:48:36'),
(117, 46, 'Titan xanh', 1, 1, '2025-05-03 21:08:15', '2025-05-03 21:08:15'),
(118, 46, 'Titan đen', 0, 1, '2025-05-03 21:08:25', '2025-05-03 21:08:25'),
(119, 47, '256GB', 1, 1, '2025-05-03 21:08:53', '2025-05-03 21:08:53'),
(120, 47, '512GB', 0, 1, '2025-05-03 21:09:02', '2025-05-03 21:09:02'),
(121, 48, 'Đen', 1, 1, '2025-05-03 21:26:48', '2025-05-03 21:26:48'),
(122, 48, 'Xanh lá', 0, 1, '2025-05-03 21:26:58', '2025-05-03 21:26:58'),
(123, 48, 'Xám', 0, 1, '2025-05-03 21:27:08', '2025-05-03 21:27:08'),
(124, 49, '4GB', 1, 1, '2025-05-03 21:27:43', '2025-05-03 21:27:43'),
(125, 49, '6GB', 0, 1, '2025-05-03 21:27:53', '2025-05-03 21:27:53'),
(126, 50, 'Tím', 1, 1, '2025-05-03 21:35:55', '2025-05-03 21:35:55'),
(127, 50, 'Xanh lá', 0, 1, '2025-05-03 21:36:06', '2025-05-03 21:36:06'),
(128, 50, 'Đen', 0, 1, '2025-05-03 21:36:16', '2025-05-03 21:36:16'),
(129, 51, '8GB-128GB', 1, 1, '2025-05-03 21:36:54', '2025-05-03 21:36:54'),
(130, 51, '8GB-256GB', 0, 1, '2025-05-03 21:37:05', '2025-05-03 21:37:05'),
(131, 51, '12GB-256GB', 0, 1, '2025-05-03 21:37:29', '2025-05-03 21:37:29'),
(132, 52, 'Xanh lá', 1, 1, '2025-05-03 21:43:39', '2025-05-03 21:43:39'),
(133, 52, 'Xám', 0, 1, '2025-05-03 21:43:51', '2025-05-03 21:43:51'),
(135, 53, '8GB-128GB', 1, 1, '2025-05-03 21:44:37', '2025-05-03 21:44:37'),
(136, 53, '8GB-256GB', 0, 1, '2025-05-03 21:44:50', '2025-05-03 21:44:50'),
(138, 54, 'Bạc', 1, 1, '2025-05-03 21:56:58', '2025-05-03 21:56:58'),
(139, 54, 'Xám', 0, 1, '2025-05-03 21:57:09', '2025-05-03 21:57:09'),
(140, 54, 'Vàng', 0, 1, '2025-05-03 21:57:21', '2025-05-03 21:57:21'),
(141, 54, 'Xanh dương', 0, 1, '2025-05-03 21:57:35', '2025-05-03 21:57:35'),
(142, 55, '128GB', 1, 1, '2025-05-03 21:58:15', '2025-05-03 21:58:15'),
(143, 55, '256GB', 0, 1, '2025-05-03 21:58:27', '2025-05-03 21:58:27'),
(144, 55, '512GB', 0, 1, '2025-05-03 21:58:38', '2025-05-03 21:58:38'),
(145, 56, 'Titan đen', 1, 1, '2025-05-03 22:19:40', '2025-05-03 22:19:40'),
(146, 56, 'Titan tự nhiên', 0, 1, '2025-05-03 22:19:57', '2025-05-03 22:19:57'),
(147, 56, 'Titan trắng', 0, 1, '2025-05-03 22:20:18', '2025-05-03 22:20:18'),
(148, 57, '256GB', 1, 1, '2025-05-03 22:20:37', '2025-05-03 22:20:37'),
(149, 57, '512GB', 0, 1, '2025-05-03 22:20:46', '2025-05-03 22:20:46'),
(150, 57, '1TB', 0, 1, '2025-05-03 22:20:54', '2025-05-03 22:20:54'),
(151, 58, 'Vàng', 1, 1, '2025-05-03 22:39:00', '2025-05-03 22:39:00'),
(152, 58, 'Bạc', 0, 1, '2025-05-03 22:39:11', '2025-05-03 22:39:11'),
(153, 58, 'Tím', 0, 1, '2025-05-03 22:39:20', '2025-05-03 22:39:20'),
(154, 59, '256GB', 1, 1, '2025-05-03 22:40:59', '2025-05-03 22:40:59'),
(155, 59, '512GB', 0, 1, '2025-05-03 22:41:09', '2025-05-03 22:41:09'),
(156, 59, '1TB', 0, 1, '2025-05-03 22:41:19', '2025-05-03 22:41:19'),
(157, 60, 'Xanh lá', 1, 1, '2025-05-03 23:03:57', '2025-05-03 23:03:57'),
(158, 60, 'Bạc', 0, 1, '2025-05-03 23:04:10', '2025-05-03 23:04:18'),
(159, 60, 'Vàng', 0, 1, '2025-05-03 23:04:32', '2025-05-03 23:04:32'),
(160, 61, '512GB', 1, 1, '2025-05-03 23:05:01', '2025-05-03 23:05:01'),
(161, 61, '1TB1', 0, 1, '2025-05-03 23:05:13', '2025-05-03 23:05:13'),
(162, 62, 'Xanh', 1, 1, '2025-05-03 23:20:18', '2025-05-03 23:20:18'),
(163, 62, 'Trắng', 0, 1, '2025-05-03 23:20:27', '2025-05-03 23:20:27'),
(164, 62, 'Đen', 0, 1, '2025-05-03 23:20:37', '2025-05-03 23:20:37'),
(165, 63, '256GB', 1, 1, '2025-05-03 23:21:12', '2025-05-03 23:21:12'),
(167, 64, 'Trắng', 1, 1, '2025-05-03 23:31:44', '2025-05-03 23:35:56'),
(168, 64, 'Xanh', 0, 1, '2025-05-03 23:31:57', '2025-05-03 23:31:57'),
(169, 65, '256GB', 1, 1, '2025-05-03 23:33:30', '2025-05-03 23:33:30'),
(170, 65, '128GB', 0, 1, '2025-05-03 23:33:41', '2025-05-03 23:33:41'),
(171, 66, 'Tím', 1, 1, '2025-05-03 23:42:44', '2025-05-03 23:42:44'),
(172, 66, 'Đen', 0, 1, '2025-05-03 23:42:59', '2025-05-03 23:42:59'),
(173, 67, 'Intel Core i7 Alder Lake - 1255U', 1, 1, '2025-05-04 00:06:06', '2025-05-04 00:06:06'),
(174, 67, 'Intel Core i5 Alder Lake - 1235U', 0, 1, '2025-05-04 00:06:31', '2025-05-04 00:06:31'),
(175, 68, 'Đen', 1, 1, '2025-05-04 00:41:32', '2025-05-04 00:41:32'),
(176, 68, 'Xanh', 0, 1, '2025-05-04 00:41:45', '2025-05-04 00:44:38'),
(177, 69, '256GB', 1, 1, '2025-05-04 00:42:15', '2025-05-04 00:42:15'),
(178, 69, '512GB', 0, 1, '2025-05-04 00:42:27', '2025-05-04 00:42:27'),
(179, 70, 'Vàng đồng', 1, 1, '2025-05-04 00:51:01', '2025-05-04 00:51:01'),
(180, 70, 'Xanh đen', 0, 1, '2025-05-04 00:51:12', '2025-05-04 00:51:12'),
(181, 70, 'Xám', 0, 1, '2025-05-04 00:51:20', '2025-05-04 00:51:20'),
(182, 71, 'Vàng', 1, 1, '2025-05-04 01:04:59', '2025-05-04 01:04:59'),
(183, 71, 'Xanh da trời nhạt', 0, 1, '2025-05-04 01:05:25', '2025-05-04 01:05:25'),
(185, 72, 'Bạc', 1, 1, '2025-05-04 01:15:46', '2025-05-04 01:15:46'),
(186, 72, 'Vàng đồng', 0, 1, '2025-05-04 01:16:00', '2025-05-04 01:16:00'),
(187, 72, 'Xanh đen', 0, 1, '2025-05-04 01:16:14', '2025-05-04 01:16:14'),
(188, 73, 'Xanh da trời', 1, 1, '2025-05-04 01:22:51', '2025-05-04 01:24:03'),
(189, 73, 'Vàng', 0, 1, '2025-05-04 01:24:15', '2025-05-04 01:24:15'),
(190, 74, 'Đen', 1, 1, '2025-05-04 02:09:58', '2025-05-04 02:09:58'),
(191, 74, 'Hồng', 0, 1, '2025-05-04 02:10:12', '2025-05-04 02:10:12'),
(192, 75, 'Nâu nhạt', 1, 1, '2025-05-04 02:23:00', '2025-05-04 02:23:00'),
(193, 75, 'Xanh min', 0, 1, '2025-05-04 02:23:10', '2025-05-04 02:23:10'),
(194, 76, 'Mau do', 1, 1, '2025-05-05 22:08:10', '2025-05-05 22:08:10');

-- --------------------------------------------------------

--
-- Table structure for table `pusher_settings`
--

CREATE TABLE `pusher_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `pusher_app_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pusher_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pusher_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pusher_cluster` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pusher_settings`
--

INSERT INTO `pusher_settings` (`id`, `pusher_app_id`, `pusher_key`, `pusher_secret`, `pusher_cluster`, `created_at`, `updated_at`) VALUES
(1, '1985737', '6e104516c368551f4cd2', 'b40187970e0818cc5282', 'ap1', '2023-11-28 09:59:44', '2023-11-28 10:04:08');

-- --------------------------------------------------------

--
-- Table structure for table `shippers`
--

CREATE TABLE `shippers` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tw_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insta_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipper_orders`
--

CREATE TABLE `shipper_orders` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipper_profiles`
--

CREATE TABLE `shipper_profiles` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tw_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insta_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipping_rules`
--

CREATE TABLE `shipping_rules` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_cost` double DEFAULT NULL,
  `cost` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_rules`
--

INSERT INTO `shipping_rules` (`id`, `name`, `type`, `min_cost`, `cost`, `status`, `created_at`, `updated_at`) VALUES
(1, 'miễn phí vận chuyển', 'min_cost', 500000, 0, 1, '2025-04-02 18:11:37', '2025-05-04 01:48:48'),
(2, 'hỏa tốc', 'flat_cost', 0, 100000, 1, '2025-04-10 00:18:05', '2025-05-04 01:47:13');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `starting_price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `banner`, `type`, `title`, `starting_price`, `btn_url`, `serial`, `status`, `created_at`, `updated_at`) VALUES
(2, 'uploads/media_67faa77174470.webp', 'banner1', 'chào hè', '600000', 'http://127.0.0.1:8000/flash-sale', 1, 0, '2025-04-12 10:48:33', '2025-05-05 20:44:03'),
(3, 'uploads/media_6818f4f6d5106.jpg', 'banner2', 'samsung', '6000000', 'http://127.0.0.1:8000/products?subcategory=samsung', 2, 1, '2025-04-12 10:49:04', '2025-05-05 20:42:04'),
(4, 'uploads/media_6818f47a44751.jpg', 'banner3', 'iphone', '6000000', 'http://127.0.0.1:8000/products?subcategory=iphone', 3, 1, '2025-04-12 10:49:46', '2025-05-05 20:42:23'),
(5, 'uploads/media_6817020dd8735.png', 'banner 4', 'Công nghệ', '10', 'http://techcare.test/admin/slider/create', 4, 0, '2025-05-03 22:58:37', '2025-05-05 10:26:11'),
(6, 'uploads/media_681702206dbca.png', 'banner 5', 'Công nghệ', '10', 'http://techcare.test/admin/slider/create', 5, 0, '2025-05-03 22:58:56', '2025-05-05 10:26:19'),
(7, 'uploads/media_681708ab500f6.jpg', 'SamSung S24 ultra', 'Sale 20%', '10', 'http://techcare.test/admin/slider/create', 6, 0, '2025-05-03 23:26:51', '2025-05-05 02:28:09'),
(9, 'uploads/media_68170eb0af450.jpg', 'Iphone 16 Pro Max', 'Sale 50%', '5', 'http://127.0.0.1:8000/admin/slider/create', 4, 0, '2025-05-03 23:52:32', '2025-05-05 02:28:17');

-- --------------------------------------------------------

--
-- Table structure for table `stripe_settings`
--

CREATE TABLE `stripe_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `mode` tinyint(1) NOT NULL,
  `country_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` double NOT NULL,
  `client_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stripe_settings`
--

INSERT INTO `stripe_settings` (`id`, `status`, `mode`, `country_name`, `currency_name`, `currency_rate`, `client_id`, `secret_key`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'Vietnam', 'VND', 25000, 'at67qH6mk8w5Y1nAyMoYKMWACiEi2bsa', 'at67qH6mk8w5Y1nAyMoYKMWACiEi2bsa', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 'Iphone', 'iphone', 1, '2025-03-07 10:20:20', '2025-04-25 09:55:24'),
(2, 3, 'Samsung', 'samsung', 1, '2025-03-07 12:31:54', '2025-04-25 09:55:47'),
(3, 4, 'Asus', 'asus', 1, NULL, '2025-05-02 19:22:25'),
(4, 4, 'Dell', 'dell', 1, NULL, '2025-04-25 09:56:13'),
(9, 3, 'Vivo', 'vivo', 1, '2025-04-26 07:25:52', '2025-04-26 07:25:52'),
(10, 4, 'Macbook', 'macbook', 1, '2025-04-26 07:26:26', '2025-04-26 07:26:26'),
(14, 5, 'Phụ kiện di động', 'phu-kien-di-dong', 1, '2025-05-03 20:02:20', '2025-05-03 20:02:20'),
(15, 5, 'Phụ kiện laptop', 'phu-kien-laptop', 1, '2025-05-03 20:02:33', '2025-05-03 20:02:33');

-- --------------------------------------------------------

--
-- Table structure for table `terms_and_conditions`
--

CREATE TABLE `terms_and_conditions` (
  `id` bigint UNSIGNED NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms_and_conditions`
--

INSERT INTO `terms_and_conditions` (`id`, `content`, `created_at`, `updated_at`) VALUES
(1, '<h1 data-start=\"171\" data-end=\"205\" class=\"\">Điều khoản và Điều kiện Mua Hàng</h1><p data-start=\"207\" data-end=\"405\" class=\"\">Khi bạn truy cập và mua hàng trên website của chúng tôi, bạn đồng ý tuân thủ và ràng buộc bởi các điều khoản và điều kiện dưới đây. Vui lòng đọc kỹ trước khi thực hiện giao dịch.</p><p data-start=\"407\" data-end=\"434\" class=\"\"><strong data-start=\"407\" data-end=\"432\">1. Thông tin sản phẩm</strong></p><ul data-start=\"435\" data-end=\"606\">\n<li data-start=\"435\" data-end=\"504\" class=\"\">\n<p data-start=\"437\" data-end=\"504\" class=\"\">Chúng tôi cam kết cung cấp thông tin sản phẩm rõ ràng, chính xác.</p>\n</li>\n<li data-start=\"505\" data-end=\"606\" class=\"\">\n<p data-start=\"507\" data-end=\"606\" class=\"\">Màu sắc, kích thước thực tế có thể có sự chênh lệch nhỏ do điều kiện ánh sáng và thiết bị hiển thị.</p>\n</li>\n</ul><p data-start=\"608\" data-end=\"637\" class=\"\"><strong data-start=\"608\" data-end=\"635\">2. Giá cả và thanh toán</strong></p><ul data-start=\"638\" data-end=\"834\">\n<li data-start=\"638\" data-end=\"745\" class=\"\">\n<p data-start=\"640\" data-end=\"745\" class=\"\">Giá sản phẩm đã bao gồm thuế VAT (nếu có) nhưng chưa bao gồm phí vận chuyển (trừ khi có quy định khác).</p>\n</li>\n<li data-start=\"746\" data-end=\"834\" class=\"\">\n<p data-start=\"748\" data-end=\"834\" class=\"\">Khách hàng cần thanh toán đầy đủ giá trị đơn hàng theo phương thức thanh toán đã chọn.</p>\n</li>\n</ul><p data-start=\"836\" data-end=\"865\" class=\"\"><strong data-start=\"836\" data-end=\"863\">3. Chính sách giao hàng</strong></p><ul data-start=\"866\" data-end=\"1064\">\n<li data-start=\"866\" data-end=\"942\" class=\"\">\n<p data-start=\"868\" data-end=\"942\" class=\"\">Thời gian giao hàng dự kiến sẽ được thông báo sau khi xác nhận đơn hàng.</p>\n</li>\n<li data-start=\"943\" data-end=\"1064\" class=\"\">\n<p data-start=\"945\" data-end=\"1064\" class=\"\">Chúng tôi không chịu trách nhiệm cho các trường hợp giao hàng trễ do thiên tai, dịch bệnh hoặc các lý do bất khả kháng.</p>\n</li>\n</ul><p data-start=\"1066\" data-end=\"1098\" class=\"\"><strong data-start=\"1066\" data-end=\"1096\">4. Chính sách đổi/trả hàng</strong></p><ul data-start=\"1099\" data-end=\"1391\">\n<li data-start=\"1099\" data-end=\"1235\" class=\"\">\n<p data-start=\"1101\" data-end=\"1235\" class=\"\">Khách hàng được yêu cầu đổi/trả hàng trong vòng [7-14 ngày] kể từ ngày nhận hàng nếu sản phẩm bị lỗi do nhà sản xuất hoặc giao nhầm.</p>\n</li>\n<li data-start=\"1236\" data-end=\"1301\" class=\"\">\n<p data-start=\"1238\" data-end=\"1301\" class=\"\">Sản phẩm cần giữ nguyên bao bì, nhãn mác và chưa qua sử dụng.</p>\n</li>\n<li data-start=\"1302\" data-end=\"1391\" class=\"\">\n<p data-start=\"1304\" data-end=\"1391\" class=\"\">Phí vận chuyển khi đổi/trả sẽ do [bên nào chịu trách nhiệm] tùy từng trường hợp cụ thể.</p>\n</li>\n</ul><p data-start=\"1393\" data-end=\"1434\" class=\"\"><strong data-start=\"1393\" data-end=\"1432\">5. Quyền và nghĩa vụ của khách hàng</strong></p><ul data-start=\"1435\" data-end=\"1574\">\n<li data-start=\"1435\" data-end=\"1493\" class=\"\">\n<p data-start=\"1437\" data-end=\"1493\" class=\"\">Cung cấp thông tin chính xác, trung thực khi đặt hàng.</p>\n</li>\n<li data-start=\"1494\" data-end=\"1574\" class=\"\">\n<p data-start=\"1496\" data-end=\"1574\" class=\"\">Kiểm tra sản phẩm ngay khi nhận hàng và thông báo cho chúng tôi nếu có vấn đề.</p>\n</li>\n</ul><p data-start=\"1576\" data-end=\"1616\" class=\"\"><strong data-start=\"1576\" data-end=\"1614\">6. Quyền và nghĩa vụ của chúng tôi</strong></p><ul data-start=\"1617\" data-end=\"1824\">\n<li data-start=\"1617\" data-end=\"1734\" class=\"\">\n<p data-start=\"1619\" data-end=\"1734\" class=\"\">Chúng tôi có quyền từ chối đơn hàng nếu phát hiện thông tin khách hàng không chính xác hoặc có dấu hiệu gian lận.</p>\n</li>\n<li data-start=\"1735\" data-end=\"1824\" class=\"\">\n<p data-start=\"1737\" data-end=\"1824\" class=\"\">Chúng tôi cam kết bảo vệ thông tin cá nhân của khách hàng theo đúng quy định pháp luật.</p>\n</li>\n</ul><p data-start=\"1826\" data-end=\"1853\" class=\"\"><strong data-start=\"1826\" data-end=\"1851\">7. Chính sách bảo mật</strong></p><ul data-start=\"1854\" data-end=\"2038\">\n<li data-start=\"1854\" data-end=\"1958\" class=\"\">\n<p data-start=\"1856\" data-end=\"1958\" class=\"\">Mọi thông tin khách hàng cung cấp sẽ chỉ được sử dụng cho mục đích giao dịch và chăm sóc khách hàng.</p>\n</li>\n<li data-start=\"1959\" data-end=\"2038\" class=\"\">\n<p data-start=\"1961\" data-end=\"2038\" class=\"\">Tuyệt đối không chia sẻ cho bên thứ ba nếu không có sự đồng ý của khách hàng.</p>\n</li>\n</ul><p data-start=\"2040\" data-end=\"2070\" class=\"\"><strong data-start=\"2040\" data-end=\"2068\">8. Điều chỉnh điều khoản</strong></p><ul data-start=\"2071\" data-end=\"2184\">\n<li data-start=\"2071\" data-end=\"2184\" class=\"\">\n<p data-start=\"2073\" data-end=\"2184\" class=\"\">Chúng tôi có quyền thay đổi điều khoản và điều kiện bất kỳ lúc nào. Mọi thay đổi sẽ được cập nhật trên website.</p>\n</li>\n</ul><p data-start=\"2186\" data-end=\"2233\" class=\"\"><strong data-start=\"2186\" data-end=\"2231\">9. Luật áp dụng và giải quyết tranh chấp</strong></p><p>\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n</p><ul data-start=\"2234\" data-end=\"2423\">\n<li data-start=\"2234\" data-end=\"2297\" class=\"\">\n<p data-start=\"2236\" data-end=\"2297\" class=\"\">Các điều khoản này được điều chỉnh theo pháp luật Việt Nam.</p>\n</li>\n<li data-start=\"2298\" data-end=\"2423\" class=\"\">\n<p data-start=\"2300\" data-end=\"2423\" class=\"\">Mọi tranh chấp phát sinh sẽ được ưu tiên giải quyết bằng thương lượng, nếu không thành công sẽ đưa ra Tòa án có thẩm quyền.</p>\n</li>\n</ul>', '2025-03-28 11:18:31', '2025-04-27 01:36:31');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` int NOT NULL,
  `transaction_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `amount_real_currency` double NOT NULL,
  `amount_real_currency_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','vendor','user','shipper') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `image`, `phone`, `email`, `role`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Quản lý cửa hàng', 'adminuser', '/uploads/1125540305_484712368_vn-11134207-7ras8-m2fiwnrocvxu4e.webp', '0327540277', 'admin@gmail.com', 'admin', 'active', '2025-04-27 15:51:13', '$2y$12$8GRn0Pxd7CS1EV71c1fePevpBwk6eRls/Liz1VVH2KA/n9I/H1Phi', NULL, NULL, '2025-05-05 10:30:45'),
(2, 'Vendor user', 'vendoruser', NULL, NULL, 'vendor@gmail.com', 'vendor', 'active', NULL, '$2y$12$hMO2AaE7DeU69GmqW.43EeiNsjEaDXqgy5nOvGaqOQC1hWxUDYKTm', NULL, NULL, NULL),
(4, 'Shipper', 'shipper', NULL, NULL, 'shipper@gmail.com', 'shipper', 'active', NULL, '$2y$12$4cK1igYNV0kT7/vaofWqBuY250J1I/9A/F1CQXVSiksrVQLLFyK6C', NULL, NULL, NULL),
(19, 'quangthuong', NULL, NULL, NULL, 'nguyenquangthuong23082004@gmail.com', 'user', 'active', '2025-05-08 04:31:03', '$2y$12$et3yVt.PqBfXMObIIfnbGeLPJYeHhrllyyJdz21xk00TieKb9o9KO', NULL, '2025-05-08 04:27:03', '2025-05-08 04:31:03');

-- --------------------------------------------------------

--
-- Table structure for table `user_addresses`
--

CREATE TABLE `user_addresses` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint UNSIGNED NOT NULL,
  `banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tw_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insta_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `banner`, `shop_name`, `phone`, `email`, `address`, `description`, `fb_link`, `tw_link`, `insta_link`, `user_id`, `created_at`, `updated_at`, `status`) VALUES
(1, 'uploads/1343.jpg', 'Admin shop', '12321312', 'admin@gmail.com', 'Usa', 'shop description', NULL, NULL, NULL, 1, '2025-03-01 08:57:26', '2025-03-01 08:57:26', 0),
(2, 'upload/1343.jpg', 'Expample : Vendor Shop', 'Example :0866910764', 'Example :vendor@gmail.com', 'Example :VietNam', 'Example :FPT POLYTECHNIC', NULL, NULL, NULL, 2, '2025-03-04 08:04:22', '2025-04-08 06:05:27', 1),
(3, 'upload/1343.jpg', 'Expample : Vendor Shop', 'Example :0866910764', 'Example :vendor@gmail.com', 'Example :VietNam', 'Example :FPT POLYTECHNIC', NULL, NULL, NULL, 2, '2025-04-06 18:57:20', '2025-04-06 18:57:20', 1),
(4, 'uploads/1343.jpg', 'Admin shop', '12321312', 'admin@gmail.com', 'Usa', 'shop description', NULL, NULL, NULL, 1, '2025-04-06 18:58:10', '2025-04-06 19:20:58', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_conditions`
--

CREATE TABLE `vendor_conditions` (
  `id` bigint UNSIGNED NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vnpay_settings`
--

CREATE TABLE `vnpay_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `mode` tinyint(1) NOT NULL,
  `tmn_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hash_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `return_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ipn_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vnpay_settings`
--

INSERT INTO `vnpay_settings` (`id`, `status`, `mode`, `tmn_code`, `hash_secret`, `payment_url`, `return_url`, `ipn_url`, `created_at`, `updated_at`) VALUES
(2, 1, 0, '44VDAJSE', 'KMBH4ZQWMNY8NWXDTB6K9EY25M7AL3UK', 'https://sandbox.vnpayment.vn/paymentv2/vpcpay.html', 'http://127.0.0.1:8000/user/vnpay/return', 'http://127.0.0.1:8000/user/vnpay/ipn', '2025-04-11 16:56:19', '2025-04-11 16:56:19');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 1, 3, '2025-05-05 03:15:43', '2025-05-05 03:15:43'),
(5, 2, 15, '2025-05-05 10:42:57', '2025-05-05 10:42:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `child_categories`
--
ALTER TABLE `child_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cod_settings`
--
ALTER TABLE `cod_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupons_product_id_foreign` (`product_id`);

--
-- Indexes for table `customer_status_histories`
--
ALTER TABLE `customer_status_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_status_histories_user_id_foreign` (`user_id`),
  ADD KEY `customer_status_histories_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `flash_sales`
--
ALTER TABLE `flash_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_sale_items`
--
ALTER TABLE `flash_sale_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_page_settings`
--
ALTER TABLE `home_page_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logo_settings`
--
ALTER TABLE `logo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `momo_settings`
--
ALTER TABLE `momo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status_histories`
--
ALTER TABLE `order_status_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_status_histories_order_id_foreign` (`order_id`),
  ADD KEY `order_status_histories_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `paypal_settings`
--
ALTER TABLE `paypal_settings`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_warranty_code_unique` (`warranty_code`);

--
-- Indexes for table `product_image_galleries`
--
ALTER TABLE `product_image_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_review_galleries`
--
ALTER TABLE `product_review_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variant_combinations`
--
ALTER TABLE `product_variant_combinations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_variant_combinations_sku_unique` (`sku`),
  ADD KEY `product_variant_combinations_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_variant_items`
--
ALTER TABLE `product_variant_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pusher_settings`
--
ALTER TABLE `pusher_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippers`
--
ALTER TABLE `shippers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shippers_email_unique` (`email`),
  ADD KEY `shippers_user_id_foreign` (`user_id`);

--
-- Indexes for table `shipper_orders`
--
ALTER TABLE `shipper_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipper_profiles`
--
ALTER TABLE `shipper_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shipper_profiles_email_unique` (`email`),
  ADD KEY `shipper_profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `shipping_rules`
--
ALTER TABLE `shipping_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stripe_settings`
--
ALTER TABLE `stripe_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms_and_conditions`
--
ALTER TABLE `terms_and_conditions`
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
-- Indexes for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_conditions`
--
ALTER TABLE `vendor_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vnpay_settings`
--
ALTER TABLE `vnpay_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `child_categories`
--
ALTER TABLE `child_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `cod_settings`
--
ALTER TABLE `cod_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `customer_status_histories`
--
ALTER TABLE `customer_status_histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flash_sales`
--
ALTER TABLE `flash_sales`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `flash_sale_items`
--
ALTER TABLE `flash_sale_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_page_settings`
--
ALTER TABLE `home_page_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `logo_settings`
--
ALTER TABLE `logo_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `momo_settings`
--
ALTER TABLE `momo_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2381;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1777;

--
-- AUTO_INCREMENT for table `order_status_histories`
--
ALTER TABLE `order_status_histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `paypal_settings`
--
ALTER TABLE `paypal_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `product_image_galleries`
--
ALTER TABLE `product_image_galleries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_review_galleries`
--
ALTER TABLE `product_review_galleries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `product_variant_combinations`
--
ALTER TABLE `product_variant_combinations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `product_variant_items`
--
ALTER TABLE `product_variant_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `pusher_settings`
--
ALTER TABLE `pusher_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippers`
--
ALTER TABLE `shippers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipper_orders`
--
ALTER TABLE `shipper_orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipper_profiles`
--
ALTER TABLE `shipper_profiles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipping_rules`
--
ALTER TABLE `shipping_rules`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `stripe_settings`
--
ALTER TABLE `stripe_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `terms_and_conditions`
--
ALTER TABLE `terms_and_conditions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1775;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vendor_conditions`
--
ALTER TABLE `vendor_conditions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vnpay_settings`
--
ALTER TABLE `vnpay_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_status_histories`
--
ALTER TABLE `customer_status_histories`
  ADD CONSTRAINT `customer_status_histories_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `customer_status_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_status_histories`
--
ALTER TABLE `order_status_histories`
  ADD CONSTRAINT `order_status_histories_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_status_histories_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_variant_combinations`
--
ALTER TABLE `product_variant_combinations`
  ADD CONSTRAINT `product_variant_combinations_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shippers`
--
ALTER TABLE `shippers`
  ADD CONSTRAINT `shippers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shipper_profiles`
--
ALTER TABLE `shipper_profiles`
  ADD CONSTRAINT `shipper_profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
