-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 01, 2024 at 04:43 PM
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
-- Database: `daisyspa_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `content`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Câu hỏi thường gặp (FAQs)', '<center>Hiện tại chưa có câu hỏi nào</center>', 'faqs', '2023-12-19 12:57:32', '2023-12-19 12:57:32'),
(2, 'Liên hệ với chúng tôi', '<p><strong>Địa chỉ</strong>:&nbsp;3, Đường số 1, phường T&acirc;n Th&agrave;nh, quận T&acirc;n Ph&uacute;, TP.HCM</p>\n<br>\n<p><strong>Số điện thoại</strong>:&nbsp;0707656583</p>\n<br>\n<p><strong>Facebook</strong>: <a href=\"https://www.facebook.com/daisy.beauty.vn\">Daisy Beauty (Click)</a></p>\n<br>\n<p><strong>Zalo</strong>:&nbsp;<a href=\"zalo://chat?phone=+84707656583\">0707656583</a></p>\n<br>\n<p><strong>Email</strong>:&nbsp;contact@daisyspa.vn</p>\n', 'contacts', '2023-12-19 12:57:32', '2023-12-19 12:57:32'),
(3, 'Chính sách bảo mật', '<p><strong>1. Mục Đ&iacute;ch v&agrave; Phạm Vi:</strong></p>\n\n<p>Ch&uacute;ng t&ocirc;i, <strong>Daisy Spa</strong>, cam kết bảo vệ th&ocirc;ng tin c&aacute; nh&acirc;n của kh&aacute;ch h&agrave;ng. Ch&iacute;nh s&aacute;ch bảo mật n&agrave;y m&ocirc; tả c&aacute;ch ch&uacute;ng t&ocirc;i thu thập, sử dụng v&agrave; bảo vệ th&ocirc;ng tin c&aacute; nh&acirc;n của bạn.</p>\n\n<p><strong>2. Th&ocirc;ng Tin Thu Thập:</strong></p>\n\n<p>Ch&uacute;ng t&ocirc;i chỉ thu thập th&ocirc;ng tin cần thiết v&agrave; li&ecirc;n quan đến việc cung cấp dịch vụ spa. C&aacute;c loại th&ocirc;ng tin c&oacute; thể bao gồm t&ecirc;n, địa chỉ, số điện thoại, địa chỉ email v&agrave; th&ocirc;ng tin thanh to&aacute;n.</p>\n\n<p><strong>3. Sử Dụng Th&ocirc;ng Tin:</strong></p>\n\n<p>Th&ocirc;ng tin c&aacute; nh&acirc;n của bạn sẽ chỉ được sử dụng để cung cấp dịch vụ spa v&agrave; li&ecirc;n quan đến c&aacute;c giao dịch của bạn với ch&uacute;ng t&ocirc;i. Ch&uacute;ng t&ocirc;i kh&ocirc;ng chia sẻ th&ocirc;ng tin n&agrave;y với bất kỳ b&ecirc;n thứ ba n&agrave;o m&agrave; kh&ocirc;ng c&oacute; sự đồng &yacute; của bạn.</p>\n\n<p><strong>4. Bảo Mật Th&ocirc;ng Tin:</strong></p>\n\n<p>Ch&uacute;ng t&ocirc;i thực hiện biện ph&aacute;p bảo mật vững chắc để ngăn chặn truy cập tr&aacute;i ph&eacute;p, mất m&aacute;t, ti&ecirc;u cực hay sử dụng kh&ocirc;ng đ&uacute;ng th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Ch&uacute;ng t&ocirc;i duy tr&igrave; c&aacute;c ti&ecirc;u chuẩn an to&agrave;n để bảo vệ th&ocirc;ng tin của bạn.</p>\n\n<p><strong>5. Tiếp Cận Th&ocirc;ng Tin:</strong></p>\n\n<p>Chỉ nh&acirc;n vi&ecirc;n c&oacute; thẩm quyền v&agrave; cần thiết để thực hiện c&ocirc;ng việc li&ecirc;n quan đến dịch vụ spa sẽ được cung cấp quyền truy cập v&agrave;o th&ocirc;ng tin c&aacute; nh&acirc;n của bạn. Ch&uacute;ng t&ocirc;i đảm bảo rằng mọi nh&acirc;n vi&ecirc;n được huấn luyện về quyền ri&ecirc;ng tư v&agrave; bảo mật th&ocirc;ng tin.</p>\n\n<p><strong>6. Đối T&aacute;c v&agrave; Dịch Vụ Thứ Ba:</strong></p>\n\n<p>Ch&uacute;ng t&ocirc;i chỉ chia sẻ th&ocirc;ng tin c&aacute; nh&acirc;n của bạn với đối t&aacute;c v&agrave; dịch vụ thứ ba nếu cần thiết để cung cấp dịch vụ spa. Ch&uacute;ng t&ocirc;i đảm bảo rằng họ cũng duy tr&igrave; c&aacute;c ti&ecirc;u chuẩn bảo mật tương đương.</p>\n\n<p><strong>7. Quyền Ri&ecirc;ng Tư của Kh&aacute;ch H&agrave;ng:</strong></p>\n\n<p>Bạn c&oacute; quyền y&ecirc;u cầu truy cập, chỉnh sửa, hoặc x&oacute;a th&ocirc;ng tin c&aacute; nh&acirc;n của m&igrave;nh. Bạn cũng c&oacute; quyền từ chối sự sử dụng th&ocirc;ng tin của m&igrave;nh cho mục đ&iacute;ch quảng c&aacute;o hoặc tiếp thị.</p>\n\n<p><strong>8. Sự Thay Đổi Trong Ch&iacute;nh S&aacute;ch:</strong></p>\n\n<p>Ch&uacute;ng t&ocirc;i c&oacute; thể điều chỉnh ch&iacute;nh s&aacute;ch bảo mật n&agrave;y theo thời gian v&agrave; sẽ th&ocirc;ng b&aacute;o cho bạn về bất kỳ thay đổi n&agrave;o.</p>\n\n<p><strong>9. Li&ecirc;n Hệ:</strong></p>\n\n<p>Nếu bạn c&oacute; bất kỳ c&acirc;u hỏi hoặc lo ngại n&agrave;o về ch&iacute;nh s&aacute;ch bảo mật của ch&uacute;ng t&ocirc;i, vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i theo th&ocirc;ng tin sau:</p>\n\n<p><strong>Daisy Spa<br />\nSố 3, Đường số 1, phường T&acirc;n Th&agrave;nh, quận T&acirc;n Ph&uacute;, TP.HCM</strong></p>\n', 'chinh-sach-bao-mat', '2023-12-19 12:57:32', '2023-12-19 12:57:32'),
(4, 'Bản đồ', '<p><strong>Địa chỉ:</strong> Số 3, Đường số 1, phường T&acirc;n Th&agrave;nh, quận T&acirc;n Ph&uacute;, TP.HCM</p>\n\n<p><strong>SDT</strong>:&nbsp;0707656583<br />\n<br />\n<iframe height=\"450\" src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15677.104127516293!2d106.632396!3d10.7901581!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f2dbdd9721f%3A0x8b018295c99ff181!2sDaisy%20Beauty%20(Spa%20%26%20Nail)!5e0!3m2!1svi!2s!4v1704098278416!5m2!1svi!2s\" style=\"border:0;\" width=\"100%\"></iframe></p>\n', 'maps', '2023-12-19 12:57:32', '2023-12-19 12:57:32');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_booking` date NOT NULL,
  `time_booking` time NOT NULL,
  `key_random` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `service_id` bigint UNSIGNED DEFAULT NULL,
  `ip_customer` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `image`, `slug`) VALUES
(1, 'Dưỡng da', '2023-12-19 12:57:32', '2023-12-19 12:57:32', 'https://i.imgur.com/99SEDPX.jpg', 'dich-vu-duong-da'),
(2, 'Chăm sóc da', '2023-12-19 12:57:32', '2023-12-19 12:57:32', 'https://i.imgur.com/99SEDPX.jpg', 'cham-soc-da'),
(3, 'Triệt lông', '2023-12-19 12:57:32', '2023-12-19 12:57:32', 'https://i.imgur.com/99SEDPX.jpg', 'dich-vu-triet-long');

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

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, '0cdba992-247a-40a9-9a55-3349a08cc4b1', 'database', 'default', '{\"uuid\":\"0cdba992-247a-40a9-9a55-3349a08cc4b1\",\"displayName\":\"App\\\\Jobs\\\\SeendTelegram\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SeendTelegram\",\"command\":\"O:22:\\\"App\\\\Jobs\\\\SeendTelegram\\\":4:{s:5:\\\"\\u0000*\\u0000id\\\";s:1:\\\"5\\\";s:7:\\\"\\u0000*\\u0000name\\\";s:16:\\\"pham hoang chinh\\\";s:8:\\\"\\u0000*\\u0000phone\\\";s:10:\\\"0123456787\\\";s:7:\\\"\\u0000*\\u0000date\\\";s:10:\\\"2023-12-26\\\";}\"}}', 'Error: Typed property App\\Jobs\\SeendTelegram::$text must not be accessed before initialization in C:\\Users\\phamc\\Documents\\Jobs\\DaisyBeauty\\backend-daisy-beauty\\app\\Jobs\\SeendTelegram.php:29\nStack trace:\n#0 C:\\Users\\phamc\\Documents\\Jobs\\DaisyBeauty\\backend-daisy-beauty\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SeendTelegram->handle()\n#1 C:\\Users\\phamc\\Documents\\Jobs\\DaisyBeauty\\backend-daisy-beauty\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#2 C:\\Users\\phamc\\Documents\\Jobs\\DaisyBeauty\\backend-daisy-beauty\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#3 C:\\Users\\phamc\\Documents\\Jobs\\DaisyBeauty\\backend-daisy-beauty\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#4 C:\\Users\\phamc\\Documents\\Jobs\\DaisyBeauty\\backend-daisy-beauty\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#5 C:\\Users\\phamc\\Documents\\Jobs\\DaisyBeauty\\backend-daisy-beauty\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#6 C:\\Users\\phamc\\Documents\\Jobs\\DaisyBeauty\\backend-daisy-beauty\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SeendTelegram))\n#7 C:\\Users\\phamc\\Documents\\Jobs\\DaisyBeauty\\backend-daisy-beauty\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SeendTelegram))\n#8 C:\\Users\\phamc\\Documents\\Jobs\\DaisyBeauty\\backend-daisy-beauty\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#9 C:\\Users\\phamc\\Documents\\Jobs\\DaisyBeauty\\backend-daisy-beauty\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SeendTelegram), false)\n#10 C:\\Users\\phamc\\Documents\\Jobs\\DaisyBeauty\\backend-daisy-beauty\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SeendTelegram))\n#11 C:\\Users\\phamc\\Documents\\Jobs\\DaisyBeauty\\backend-daisy-beauty\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SeendTelegram))\n#12 C:\\Users\\phamc\\Documents\\Jobs\\DaisyBeauty\\backend-daisy-beauty\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#13 C:\\Users\\phamc\\Documents\\Jobs\\DaisyBeauty\\backend-daisy-beauty\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SeendTelegram))\n#14 C:\\Users\\phamc\\Documents\\Jobs\\DaisyBeauty\\backend-daisy-beauty\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#15 C:\\Users\\phamc\\Documents\\Jobs\\DaisyBeauty\\backend-daisy-beauty\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#16 C:\\Users\\phamc\\Documents\\Jobs\\DaisyBeauty\\backend-daisy-beauty\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#17 C:\\Users\\phamc\\Documents\\Jobs\\DaisyBeauty\\backend-daisy-beauty\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\Users\\phamc\\Documents\\Jobs\\DaisyBeauty\\backend-daisy-beauty\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(138): Illuminate\\Queue\\Worker->daemon(\'database\', \'high,default\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\Users\\phamc\\Documents\\Jobs\\DaisyBeauty\\backend-daisy-beauty\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(121): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'high,default\')\n#20 C:\\Users\\phamc\\Documents\\Jobs\\DaisyBeauty\\backend-daisy-beauty\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#21 C:\\Users\\phamc\\Documents\\Jobs\\DaisyBeauty\\backend-daisy-beauty\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#22 C:\\Users\\phamc\\Documents\\Jobs\\DaisyBeauty\\backend-daisy-beauty\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#23 C:\\Users\\phamc\\Documents\\Jobs\\DaisyBeauty\\backend-daisy-beauty\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#24 C:\\Users\\phamc\\Documents\\Jobs\\DaisyBeauty\\backend-daisy-beauty\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#25 C:\\Users\\phamc\\Documents\\Jobs\\DaisyBeauty\\backend-daisy-beauty\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#26 C:\\Users\\phamc\\Documents\\Jobs\\DaisyBeauty\\backend-daisy-beauty\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#27 C:\\Users\\phamc\\Documents\\Jobs\\DaisyBeauty\\backend-daisy-beauty\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(181): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\Users\\phamc\\Documents\\Jobs\\DaisyBeauty\\backend-daisy-beauty\\vendor\\symfony\\console\\Application.php(1096): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#29 C:\\Users\\phamc\\Documents\\Jobs\\DaisyBeauty\\backend-daisy-beauty\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\Users\\phamc\\Documents\\Jobs\\DaisyBeauty\\backend-daisy-beauty\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\Users\\phamc\\Documents\\Jobs\\DaisyBeauty\\backend-daisy-beauty\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(201): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\Users\\phamc\\Documents\\Jobs\\DaisyBeauty\\backend-daisy-beauty\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 {main}', '2023-12-21 01:24:14');

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `id` bigint UNSIGNED NOT NULL,
  `key_infor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value_infor` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`id`, `key_infor`, `value_infor`, `note`, `created_at`, `updated_at`) VALUES
(1, 'phone', '0707656583', 'Số điện thoại', NULL, NULL),
(2, 'address', '3, Đường số 1, Tân Thành', 'Địa chỉ', NULL, NULL),
(3, 'link_facebook', 'https://www.facebook.com/daisy.beauty.vn', 'Địa chỉ Facebook', NULL, NULL),
(4, 'link_zalo', 'zalo://chat?phone=+84707656583', 'Địa chỉ Zalo', NULL, NULL),
(5, 'link_map', 'https://maps.app.goo.gl/xzHPHGZhEdwjCkV96', 'Google Map', NULL, NULL),
(6, 'mail', 'contact@daisyspa.vn', 'Mail', NULL, NULL),
(7, 'link_map_iframe', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d4014.7454350746148!2d106.63144678232109!3d10.790341586941345!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f2dbdd9721f%3A0x8b018295c99ff181!2sDaisy%20Beauty%20(Spa%20%26%20Nail)!5e0!3m2!1svi!2s!4v1703232522790!5m2!1svi!2s', 'Google Map', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(5, 'default', '{\"uuid\":\"98a10a07-b87e-4f8d-b8d8-7e6098b32ac3\",\"displayName\":\"App\\\\Jobs\\\\SeendTelegram\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SeendTelegram\",\"command\":\"O:22:\\\"App\\\\Jobs\\\\SeendTelegram\\\":4:{s:5:\\\"\\u0000*\\u0000id\\\";s:1:\\\"8\\\";s:7:\\\"\\u0000*\\u0000name\\\";s:11:\\\"dfgdfgfghgf\\\";s:8:\\\"\\u0000*\\u0000phone\\\";s:10:\\\"0123456789\\\";s:7:\\\"\\u0000*\\u0000date\\\";s:10:\\\"2023-12-24\\\";}\"}}', 0, NULL, 1703357060, 1703357060),
(6, 'default', '{\"uuid\":\"497671b8-b5cf-463c-8aab-e0b63d7d006e\",\"displayName\":\"App\\\\Jobs\\\\SeendTelegram\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SeendTelegram\",\"command\":\"O:22:\\\"App\\\\Jobs\\\\SeendTelegram\\\":4:{s:5:\\\"\\u0000*\\u0000id\\\";s:1:\\\"9\\\";s:7:\\\"\\u0000*\\u0000name\\\";s:11:\\\"pham hioang\\\";s:8:\\\"\\u0000*\\u0000phone\\\";s:10:\\\"0123456788\\\";s:7:\\\"\\u0000*\\u0000date\\\";s:10:\\\"2023-12-27\\\";}\"}}', 0, NULL, 1703524891, 1703524891),
(7, 'default', '{\"uuid\":\"b8697773-4fb3-4f35-ba3f-70eec7c5843f\",\"displayName\":\"App\\\\Jobs\\\\SeendTelegram\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SeendTelegram\",\"command\":\"O:22:\\\"App\\\\Jobs\\\\SeendTelegram\\\":4:{s:5:\\\"\\u0000*\\u0000id\\\";s:2:\\\"10\\\";s:7:\\\"\\u0000*\\u0000name\\\";s:16:\\\"pham hoang chinh\\\";s:8:\\\"\\u0000*\\u0000phone\\\";s:10:\\\"0123456789\\\";s:7:\\\"\\u0000*\\u0000date\\\";s:10:\\\"2023-12-28\\\";}\"}}', 0, NULL, 1703524970, 1703524970),
(8, 'default', '{\"uuid\":\"5729b735-aa27-454f-8926-4d40a6abd877\",\"displayName\":\"App\\\\Jobs\\\\SeendTelegram\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SeendTelegram\",\"command\":\"O:22:\\\"App\\\\Jobs\\\\SeendTelegram\\\":5:{s:5:\\\"\\u0000*\\u0000id\\\";s:2:\\\"11\\\";s:7:\\\"\\u0000*\\u0000name\\\";s:8:\\\"efgrefer\\\";s:8:\\\"\\u0000*\\u0000phone\\\";s:10:\\\"0123456789\\\";s:7:\\\"\\u0000*\\u0000date\\\";s:10:\\\"2023-12-20\\\";s:14:\\\"\\u0000*\\u0000serviceName\\\";s:19:\\\"Perferendis ut aut.\\\";}\"}}', 0, NULL, 1703741479, 1703741479),
(9, 'default', '{\"uuid\":\"09cec71f-f858-4aca-a4fb-c8dcb5651264\",\"displayName\":\"App\\\\Jobs\\\\SeendTelegram\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SeendTelegram\",\"command\":\"O:22:\\\"App\\\\Jobs\\\\SeendTelegram\\\":5:{s:5:\\\"\\u0000*\\u0000id\\\";s:2:\\\"12\\\";s:7:\\\"\\u0000*\\u0000name\\\";s:11:\\\"ergergerger\\\";s:8:\\\"\\u0000*\\u0000phone\\\";s:10:\\\"0123456789\\\";s:7:\\\"\\u0000*\\u0000date\\\";s:10:\\\"2023-12-28\\\";s:14:\\\"\\u0000*\\u0000serviceName\\\";s:9:\\\"Aut sunt.\\\";}\"}}', 0, NULL, 1703753182, 1703753182),
(10, 'default', '{\"uuid\":\"b9b504ad-3471-497c-8551-870f9d9f841f\",\"displayName\":\"App\\\\Jobs\\\\SeendTelegram\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SeendTelegram\",\"command\":\"O:22:\\\"App\\\\Jobs\\\\SeendTelegram\\\":5:{s:5:\\\"\\u0000*\\u0000id\\\";s:2:\\\"13\\\";s:7:\\\"\\u0000*\\u0000name\\\";s:10:\\\"erferferfe\\\";s:8:\\\"\\u0000*\\u0000phone\\\";s:10:\\\"0123456789\\\";s:7:\\\"\\u0000*\\u0000date\\\";s:10:\\\"2023-12-22\\\";s:14:\\\"\\u0000*\\u0000serviceName\\\";s:14:\\\"Dicta dolorum.\\\";}\"}}', 0, NULL, 1703757019, 1703757019);

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_18_170358_create_bookings_table', 1),
(6, '2023_12_18_170430_create_categories_table', 1),
(7, '2023_12_18_170627_create_information_table', 1),
(8, '2023_12_18_170653_create_blogs_table', 1),
(9, '2023_12_18_170733_create_services_table', 1),
(10, '2023_12_18_172520_add_user_id_and_service_id_in_bookings_table', 1),
(11, '2023_12_18_172748_add_column_category_id_in_services_table', 1),
(12, '2023_12_19_174429_add_column_service_id_in_bookings_table', 1),
(13, '2023_12_19_175319_add_column_ip_customer_in_bookings_table', 1),
(14, '2023_12_19_195152_add_column_slug_in_service_table', 1),
(15, '2023_12_20_040859_add_column_image_in_categories_table', 2),
(16, '2023_12_20_043709_add_column_image_in_services_table', 3),
(17, '2023_12_20_043708_add_column_image_in_services_table', 4),
(18, '2023_12_21_081552_create_jobs_table', 5),
(19, '2023_12_24_081331_add_column_slug_in_categories_table', 6);

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

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `description`, `created_at`, `updated_at`, `category_id`, `slug`, `image`) VALUES
(4, 'Chăm sóc da cơ bản', '<p>         Chăm sóc da cơ bản là trải nghiệm tuyệt vời để làm mới làn da của bạn. Quy trình này bao gồm các bước cơ bản như làm sạch sâu, tẩy tế bào chết và cung cấp dưỡng ẩm. Chúng tôi sử dụng sản phẩm chất lượng cao, kết hợp với kỹ thuật massage nhẹ nhàng để mang lại sự thư giãn tuyệt vời và làn da tươi trẻ.          Dịch vụ Chăm sóc da cơ bản không chỉ giúp duy trì sức khỏe cho làn da mà còn giúp cải thiện độ đàn hồi, ngăn chặn tác động có hại từ môi trường và giảm tình trạng mụn trứng cá. Hãy để chúng tôi chăm sóc làn da của bạn, mang lại cho bạn một cảm giác tự tin và tràn đầy năng lượng.          Đặt lịch ngay hôm nay để trải nghiệm dịch vụ Chăm sóc da cơ bản chuyên nghiệp và hiệu quả!     </p>', '2023-12-19 12:57:32', '2023-12-19 12:57:32', 1, 'cham-soc-da-co-ban', '/images/services/1.png'),
(5, 'Chăm sóc da nâng cao', '<p>         Chăm sóc da nâng cao là trải nghiệm hoàn hảo cho những ai mong muốn chăm sóc da một cách đặc biệt và chi tiết. Chúng tôi cung cấp một loạt các liệu pháp chăm sóc da chuyên sâu nhằm tái tạo làn da, làm mờ nếp nhăn và mang lại làn da trắng sáng và mịn màng.          Với dịch vụ này, bạn sẽ được tư vấn bởi các chuyên gia làm đẹp có kinh nghiệm, được sử dụng các sản phẩm chăm sóc da cao cấp và các phương pháp massage độc đáo. Chúng tôi cam kết mang lại cho bạn làn da khỏe mạnh, đầy sức sống và trẻ trung.          Đừng để làn da của bạn bị lão hóa sớm. Hãy đặt lịch ngay hôm nay để trải nghiệm dịch vụ Chăm sóc da nâng cao và đắm chìm trong không gian thoải mái và sang trọng của chúng tôi.     </p>', '2023-12-19 12:57:32', '2023-12-19 12:57:32', 1, 'cham-soc-da-nang-cao', '/images/services/2.png'),
(6, 'Cây phấn - Tảo xoắn - Hồng sâm - Tinh chất căng bóng', '<p>         Trải nghiệm đẳng cấp với dịch vụ Cây phấn - Tảo xoắn - Hồng sâm - Tinh chất căng bóng của chúng tôi. Chúng tôi sử dụng những thành phần tự nhiên như cây phấn, tảo xoắn, hồng sâm và tinh chất giữ ẩm để mang lại cho bạn làn da tinh tế và rạng rỡ.          Dịch vụ này không chỉ tập trung vào việc cung cấp dưỡng chất cần thiết mà còn tăng cường độ đàn hồi, giúp làn da trở nên căng bóng và mềm mại. Chúng tôi đảm bảo rằng mỗi bước chăm sóc đều được thực hiện chuyên nghiệp và kỹ lưỡng.          Hãy đặt lịch ngay hôm nay để trải nghiệm sự hoàn hảo và đẳng cấp từ dịch vụ Cây phấn - Tảo xoắn - Hồng sâm - Tinh chất căng bóng của chúng tôi.     </p>', '2023-12-19 12:57:32', '2023-12-19 12:57:32', 1, 'cay-phan-tao-xoan-hong-sam-tinh-chat-cang-bong', '/images/services/3.png'),
(7, 'Chạy Vitamin C mờ thâm chuyên sâu', '<p>         Dịch vụ Chạy Vitamin C mờ thâm chuyên sâu của chúng tôi là sự kết hợp hoàn hảo giữa công nghệ tiên tiến và thành phần tự nhiên. Vitamin C được biết đến với khả năng làm sáng da, giảm thâm và tái tạo tế bào da.          Chúng tôi sử dụng các sản phẩm chứa hàm lượng Vitamin C cao, kết hợp với các liệu pháp chuyên sâu để đảm bảo các vết thâm, tình trạng da không đều màu được cải thiện một cách rõ rệt. Đặt lịch ngay hôm nay để trải nghiệm sự hồi phục và làm mới từ dịch vụ Chạy Vitamin C chuyên sâu của chúng tôi.     </p>', '2023-12-19 12:57:32', '2023-12-19 12:57:32', 1, 'chay-vitamin-c-mo-tham-chuyen-sau', '/images/services/4.png'),
(8, 'Phục hồi da Diamond', ' <p>         Dịch vụ Phục hồi da Diamond là bước tiến đột phá trong việc chăm sóc da của bạn. Quy trình này bao gồm làm sạch sâu, loại bỏ tế bào chết và dầu nhờn trên da, cung cấp độ ẩm và thải độc tố cho da. Với các thành phần chăm sóc da chất lượng, da bạn sẽ trở nên tươi mới, mềm mại và rạng rỡ hơn.     </p>', '2023-12-19 12:57:32', '2023-12-19 12:57:32', 2, 'phuc-hoi-da-diamond', '/images/services/5.png'),
(9, 'Cấy HA căng bóng cấp ẩm', '<p>         Dịch vụ Cấy HA căng bóng cấp ẩm là giải pháp hoàn hảo để tái tạo làn da khô và thiếu sức sống. Chúng tôi sử dụng các phương pháp hiện đại để cấy Hyaluronic Acid (HA), giúp làn da trở nên căng bóng, mềm mại và đầy đặn ẩm. Đặt lịch ngay hôm nay để trải nghiệm sự thay đổi lớn trong làn da của bạn.     </p>', '2023-12-19 12:57:32', '2023-12-19 12:57:32', 1, 'cay-ha-cang-bong-cap-am', '/images/services/6.png'),
(10, 'Lấy nhân mụn mũi', '<p>         Dịch vụ Lấy nhân mụn mũi là một phần quan trọng của chăm sóc da để giữ cho làn da của bạn sạch sẽ và tránh tình trạng mụn đen không mong muốn. Chúng tôi thực hiện quy trình này một cách kỹ lưỡng để đảm bảo làn da của bạn luôn mịn màng và không có tình trạng mụn đen khó chịu.     </p>', '2023-12-19 12:57:32', '2023-12-19 12:57:32', 2, 'lay-nhan-mun-mui', '/images/services/7.png'),
(11, 'Thải độc tố da', '<p>         Dịch vụ Thải độc tố da giúp loại bỏ các chất độc hại và tác nhân gây hại từ môi trường khỏi làn da. Chúng tôi sử dụng các sản phẩm chăm sóc da chất lượng cao và kỹ thuật thải độc tố hiện đại để đảm bảo da bạn được làm mới và tái tạo, tràn đầy sức sống.     </p>', '2023-12-19 12:57:32', '2023-12-19 12:57:32', 1, 'thai-doc-to-da', '/images/services/8.png'),
(12, 'Lấy nhân mụn cơ bản', '<p>         Dịch vụ Lấy nhân mụn cơ bản giúp giảm thiểu tình trạng mụn và đảm bảo sự sạch sẽ cho da của bạn. Chúng tôi áp dụng các kỹ thuật chuyên nghiệp để loại bỏ nhân mụn một cách hiệu quả, giúp da trở nên mịn màng và khỏe mạnh.     </p>', '2023-12-19 12:57:32', '2023-12-19 12:57:32', 2, 'lay-nhan-mun-co-ban', '/images/services/9.png'),
(13, 'Lấy nhân mụn chuyên sâu', '<p>         Dịch vụ nặn mụn chuyên sâu là giải pháp đặc biệt dành cho những người có vấn đề về mụn nặng. Chúng tôi sử dụng các sản phẩm và phương pháp chăm sóc da chuyên sâu để kiểm soát tình trạng mụn và giúp da trở nên mềm mại và sáng bóng.     </p>', '2023-12-19 12:57:32', '2023-12-19 12:57:32', 2, 'lay-nhan-mun-chuyen-sau', '/images/services/10.png'),
(14, 'Lấy nhân mụn mủ, viêm', '<p>         Dịch vụ Lấy nhân mụn mủ, viêm là bước quan trọng trong việc xử lý mụn nặng và tình trạng da viêm. Chúng tôi thực hiện quy trình này một cách cẩn thận, đảm bảo an toàn và hiệu quả, để da bạn trở nên khỏe mạnh và không có tình trạng mụn viêm khó chịu.     </p>', '2023-12-19 12:57:32', '2023-12-19 12:57:32', 2, 'lay-nhan-mun-mu-viem', '/images/services/11.png'),
(15, 'Chăm sóc da bằng dược mỹ phẩm', '<p>         Chăm sóc da bằng dược mỹ phẩm là sự kết hợp của công nghệ tiên tiến và các sản phẩm dược mỹ phẩm chất lượng. Chúng tôi tùy chỉnh liệu pháp cho từng loại da cụ thể, giúp cải thiện vấn đề da và mang lại kết quả lâu dài.     </p>', '2023-12-19 12:57:32', '2023-12-19 12:57:32', 2, 'cham-soc-da-bang-duoc-my-pham', '/images/services/12.png'),
(16, 'Làm đẹp da bằng Carboxyl CO2', '<p>         Dịch vụ Carboxyl CO2 làm đẹp da mang lại hiệu quả làm trắng, se lỗ chân lông và tái tạo tế bào da. Chúng tôi sử dụng công nghệ Carboxyl CO2 tiên tiến để kích thích sự sản xuất collagen, giúp da trở nên săn chắc và tràn đầy sức sống. Đặt lịch ngay hôm nay để trải nghiệm làn da mới mẻ và rạng ngời.     </p>', '2023-12-19 12:57:32', '2023-12-19 12:57:32', 1, 'dich-vu-carboxyl-co2-lam-dep-da', '/images/services/13.png'),
(17, 'Dịch vụ Vi tảo chống lão hóa', '<p>         Dịch vụ Vi tảo chống lão hóa là hành trình chăm sóc da tận cùng với sức mạnh tự nhiên của vi tảo. Chúng tôi sử dụng công nghệ tiên tiến để truyền đạt những lợi ích tối đa từ vi tảo cho làn da của bạn. Vi tảo không chỉ giúp cung cấp dưỡng chất quan trọng mà còn kích thích tái tạo tế bào, giúp da trở nên săn chắc, đàn hồi và giảm thiểu dấu hiệu lão hóa.     </p>', '2023-12-19 12:57:32', '2023-12-19 12:57:32', 1, 'dich-vu-vi-tao-chong-lao-hoa', '/images/services/14.png'),
(18, 'Dịch vụ Phi kim trẻ hóa da', '<p>         Dịch vụ Phi kim trẻ hóa da là một bước nhảy vọt trong thế giới chăm sóc da. Chúng tôi sử dụng kỹ thuật Phi kim để kích thích sản xuất collagen và elastin, giúp làn da trở nên căng tràn sức sống. Quy trình này không chỉ giảm nếp nhăn mà còn cải thiện độ đàn hồi, mang lại cho bạn làn da trẻ trung và rạng rỡ.     </p>', '2023-12-19 12:57:32', '2023-12-19 12:57:32', 1, 'dich-vu-phi-kim-tre-hoa-da', '/images/services/15.png'),
(19, 'Dịch vụ Bóc tách sẹo', '<p>         Dịch vụ Bóc tách sẹo là giải pháp hiệu quả để giảm thiểu vết sẹo không mong muốn. Chúng tôi sử dụng các kỹ thuật hiện đại để loại bỏ tế bào da tổn thương và kích thích tái tạo tế bào mới. Quy trình này giúp sẹo trở nên nhạt màu hơn, đồng thời cải thiện độ đàn hồi và mịn màng cho vùng da xung quanh.     </p>', '2023-12-19 12:57:32', '2023-12-19 12:57:32', 2, 'dich-vu-boc-tach-seo', '/images/services/16.png'),
(20, 'Dịch vụ triệt lông', '<p>         Dịch vụ Triệt lông là bước quan trọng trong quá trình chăm sóc da và làm đẹp. Chúng tôi sử dụng phương pháp hiện đại để loại bỏ lông vĩnh viễn, mang lại cho bạn làn da mịn màng và không gặp khó khăn từ vấn đề lông thừa. Với chất lượng và an toàn hàng đầu, dịch vụ của chúng tôi cam kết đem lại kết quả lâu dài.     </p>', '2023-12-19 12:57:32', '2023-12-19 12:57:32', 3, 'dich-vu-triet-long', '/images/services/17.png'),
(21, 'Dịch vụ Peel phục hồi da nhiễm corticoids\n', '<p>         Dịch vụ Peel phục hồi da nhiễm corticoids là giải pháp chăm sóc da đặc biệt cho những người phải đối mặt với tình trạng da nhiễm corticoids. Chúng tôi sử dụng quy trình Peel chuyên sâu để loại bỏ tế bào da tổn thương và kích thích tái tạo tế bào mới. Điều này giúp cải thiện tình trạng da nhiễm corticoids, mang lại làn da khỏe mạnh và tràn đầy sức sống.     </p>', '2023-12-19 12:57:32', '2023-12-19 12:57:32', 2, 'dich-vu-peel-phuc-hoi-da-nhiem-corticoids', '/images/services/18.png');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_slug_unique` (`slug`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bookings_key_random_unique` (`key_random`),
  ADD KEY `bookings_user_id_foreign` (`user_id`),
  ADD KEY `bookings_service_id_foreign` (`service_id`);

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
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `information_key_infor_unique` (`key_infor`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `services_slug_unique` (`slug`),
  ADD KEY `services_category_id_foreign` (`category_id`);

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
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`),
  ADD CONSTRAINT `bookings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
