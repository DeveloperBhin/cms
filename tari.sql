-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2025 at 04:05 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tari`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_links`
--

CREATE TABLE `about_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) NOT NULL,
  `title_en` varchar(191) DEFAULT NULL,
  `link` tinyint(1) NOT NULL DEFAULT 0,
  `url` varchar(191) NOT NULL,
  `url_external` varchar(191) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `parent` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_links`
--

INSERT INTO `about_links` (`id`, `title_sw`, `title_en`, `link`, `url`, `url_external`, `active`, `parent`, `position`, `created_at`, `updated_at`) VALUES
(1, 'TIRA Establishment', 'TIRA Establishment', 1, 'pages/tira-establishment', NULL, 1, 0, 1, '2022-02-22 10:19:16', '2022-08-10 14:15:44'),
(2, 'Mission and Vision', 'Mission and Vision', 1, 'pages/mission-and-vision', NULL, 1, 0, 1, '2022-02-22 10:19:36', '2022-08-10 14:16:10'),
(3, 'Objectives and Functions', 'Objectives and Functions', 1, 'pages/our-objectives', NULL, 1, 0, 1, '2022-08-10 14:17:18', '2022-08-10 14:17:18'),
(4, 'Organization Structure', 'Organization Structure', 1, 'pages/organization-structure', NULL, 1, 0, 1, '2022-08-10 14:17:41', '2022-08-10 14:18:13');

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) NOT NULL,
  `title_en` varchar(191) NOT NULL,
  `summary_sw` text DEFAULT NULL,
  `summary_en` text DEFAULT NULL,
  `content_sw` text DEFAULT NULL,
  `content_en` text DEFAULT NULL,
  `photo_url` varchar(191) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `icon` text DEFAULT NULL,
  `color` text DEFAULT NULL,
  `specials` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `achievements`
--

INSERT INTO `achievements` (`id`, `title_sw`, `title_en`, `summary_sw`, `summary_en`, `content_sw`, `content_en`, `photo_url`, `active`, `slug`, `created_at`, `updated_at`, `user_id`, `icon`, `color`, `specials`) VALUES
(1, 'Real Possibilities on Enhancement of the Achievable Estimates', 'Real Possibilities on Enhancement of the Achievable Estimates', NULL, NULL, '<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>', '<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>', '5d98d83f16201818172542dd6bc9ba14.jpeg', 1, 'real-possibilities-on-enhancement-of-the-achievable-estimates', '2021-08-02 04:59:37', '2022-06-30 17:18:35', 0, 'icon-1646651310', NULL, NULL),
(2, 'Real Possibilities on Enhancement of the Achievable Estimates', 'Real Possibilities on Enhancement of the Achievable Estimates', NULL, NULL, '<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>', '<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>', '19c85af6feaf700d95b0653f677ebdf9.jpeg', 0, 'real-possibilities-on-enhancement-of-the-achievable-estimates-2', '2021-08-02 05:00:05', '2022-03-07 08:08:06', 0, 'icon-1646651286', NULL, NULL),
(3, 'Real Possibilities on Enhancement of the Achievable Estimates', 'Real Possibilities on Enhancement of the Achievable Estimates', NULL, NULL, '<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>', '<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>', '70d612c847bc081f67c2abb6dbf83043.jpeg', 1, 'real-possibilities-on-enhancement-of-the-achievable-estimates-3', '2021-08-02 05:03:54', '2022-06-30 17:15:34', 0, 'icon-1646651268', NULL, NULL),
(6, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', NULL, NULL, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit</p>', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit</p>', '36ea13cd32bb5e75aaaf4fdee5ffd27f.jpeg', 1, 'lorem-ipsum-dolor-sit-amet-consectetur-adipisicing-elit', '2022-06-30 17:08:49', '2022-06-30 17:08:49', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `achievement_types`
--

CREATE TABLE `achievement_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `slug` varchar(40) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `achievement_types`
--

INSERT INTO `achievement_types` (`id`, `name`, `slug`, `created_at`, `updated_at`, `icon`) VALUES
(1, 'Matter Handled', NULL, NULL, NULL, 'site/images/icons/procecussion.jfif'),
(2, 'Conviction Rate', NULL, NULL, NULL, 'site/images/icons/handcuffs.jpg'),
(3, 'Conclusion Rate', NULL, NULL, NULL, 'site/images/icons/conclusion.png'),
(4, 'Success Rate ', NULL, NULL, NULL, 'site/images/icons/success.png');

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `log_name` varchar(191) DEFAULT NULL,
  `description` text NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `subject_type` varchar(191) DEFAULT NULL,
  `causer_id` int(11) DEFAULT NULL,
  `causer_type` varchar(191) DEFAULT NULL,
  `properties` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `administration_categories`
--

CREATE TABLE `administration_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) NOT NULL,
  `title_en` varchar(191) DEFAULT NULL,
  `summary_sw` text DEFAULT NULL,
  `summary_en` text DEFAULT NULL,
  `featured` tinyint(4) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `content` text DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `administration_categories`
--

INSERT INTO `administration_categories` (`id`, `title_sw`, `title_en`, `summary_sw`, `summary_en`, `featured`, `slug`, `content`, `active`, `created_at`, `updated_at`) VALUES
(2, 'Management Team', 'Management Team', 'Management Team', 'Management Team', 1, 'administration', NULL, 1, '2022-08-17 08:21:41', '2022-10-15 12:35:38'),
(5, 'Ministerial Advisory Board', 'Ministerial Advisory Board', 'Ministerial Advisory Board', 'Ministerial Advisory Board', 1, 'ministerial-advisory-board', NULL, 1, '2023-01-16 07:47:19', '2023-01-16 07:47:19');

-- --------------------------------------------------------

--
-- Table structure for table `administration_categories_members`
--

CREATE TABLE `administration_categories_members` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `title_en` varchar(64) DEFAULT NULL,
  `title_sw` varchar(64) DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `administration_categories_members`
--

INSERT INTO `administration_categories_members` (`id`, `category_id`, `member_id`, `title_en`, `title_sw`, `parent`, `position`, `created_at`, `updated_at`) VALUES
(27, 4, 21, 'Developer', 'Developer', 0, 3, '2022-10-15 14:40:27', '2023-01-16 06:36:17');

-- --------------------------------------------------------

--
-- Table structure for table `administration_members`
--

CREATE TABLE `administration_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `salutation_en` text DEFAULT NULL,
  `salutation_sw` text DEFAULT NULL,
  `fullname` varchar(191) NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `title_sw` varchar(191) NOT NULL,
  `title_en` varchar(191) NOT NULL,
  `content_sw` text DEFAULT NULL,
  `content_en` text DEFAULT NULL,
  `photo_url` varchar(191) NOT NULL,
  `email` text DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `administration_members`
--

INSERT INTO `administration_members` (`id`, `salutation_en`, `salutation_sw`, `fullname`, `position`, `title_sw`, `title_en`, `content_sw`, `content_en`, `photo_url`, `email`, `phone`, `created_at`, `updated_at`, `slug`) VALUES
(21, 'Mr', 'Bw', 'Andrew W. Masawe', 1, 'Mwenyekiti wa bodi', 'Board Chairman', '<p>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '256c7fa64a83f589f4c38c6c50f22045.jpeg', NULL, '099999999', '2022-10-15 14:36:36', '2025-05-30 13:59:50', 'dg'),
(25, 'Dr', 'Dr', 'Thomas N. Bwana', 2, 'Mkulugenzi Mkuu', 'Director General', '<p>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'e37815b866f0a572c2163f0fda3ce373.png', NULL, '0999999999', '2023-01-16 09:29:29', '2025-05-30 14:01:23', 'naibu');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) NOT NULL,
  `title_en` varchar(191) DEFAULT NULL,
  `content_sw` text NOT NULL,
  `content_en` text DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `location` text DEFAULT NULL,
  `file_en` text DEFAULT NULL,
  `file_sw` text DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `title_sw`, `title_en`, `content_sw`, `content_en`, `start_date`, `end_date`, `location`, `file_en`, `file_sw`, `active`, `slug`, `created_at`, `updated_at`) VALUES
(6, 'KUFUNGULIWA KWA CHUO', 'UNIVERSITY OPENINGS', '<h1>Lorem Ipsum</h1>', '<h1>Lorem Ipsum</h1>', NULL, NULL, NULL, NULL, NULL, 1, '', '2025-05-30 14:44:52', '2025-05-30 14:44:52'),
(7, 'UTEUZI WA WAKULIGENZI', 'UTEUZI WA WAKULUGENZI', '<h1>Lorem Ipsum</h1>', '<h1>Lorem Ipsum</h1>', NULL, NULL, NULL, NULL, NULL, 1, '', '2025-05-30 14:45:28', '2025-05-30 14:45:28');

-- --------------------------------------------------------

--
-- Table structure for table `backgrounds`
--

CREATE TABLE `backgrounds` (
  `id` int(11) NOT NULL,
  `main_bg` varchar(255) NOT NULL,
  `banner_bg` varchar(255) NOT NULL,
  `second_bg` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `backgrounds`
--

INSERT INTO `backgrounds` (`id`, `main_bg`, `banner_bg`, `second_bg`, `user_id`, `created_at`, `updated_at`) VALUES
(8, '/uploads/backgrounds/1666067134-desola-lanre-ologun-IgUR1iX0mqM-unsplash.jpg', '', NULL, 1, '2022-10-18 01:25:34', '2022-10-18 01:25:34');

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) NOT NULL,
  `title_en` varchar(191) NOT NULL,
  `summary_sw` text DEFAULT NULL,
  `summary_en` text DEFAULT NULL,
  `content_sw` text DEFAULT NULL,
  `content_en` text DEFAULT NULL,
  `photo_url` varchar(191) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `icon` text DEFAULT NULL,
  `color` text DEFAULT NULL,
  `specials` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `title_sw`, `title_en`, `summary_sw`, `summary_en`, `content_sw`, `content_en`, `photo_url`, `active`, `slug`, `created_at`, `updated_at`, `user_id`, `icon`, `color`, `specials`) VALUES
(1, 'Real Possibilities on Enhancement of the Achievable Estimates', 'Real Possibilities on Enhancement of the Achievable Estimates', NULL, NULL, '<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>', '<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>', '5f0814d557088a67edbbe7b8a2ea1fa5.jpeg', 1, 'real-possibilities-on-enhancement-of-the-achievable-estimates', '2021-08-02 04:59:37', '2022-03-07 08:08:30', 0, 'icon-1646651310', NULL, NULL),
(2, 'Real Possibilities on Enhancement of the Achievable Estimates', 'Real Possibilities on Enhancement of the Achievable Estimates', NULL, NULL, '<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>', '<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>', '19c85af6feaf700d95b0653f677ebdf9.jpeg', 0, 'real-possibilities-on-enhancement-of-the-achievable-estimates-2', '2021-08-02 05:00:05', '2022-03-07 08:08:06', 0, 'icon-1646651286', NULL, NULL),
(3, 'Real Possibilities on Enhancement of the Achievable Estimates', 'Real Possibilities on Enhancement of the Achievable Estimates', NULL, NULL, '<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>', '<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>', 'e153ca773f33545712009cb3b44d8680.jpeg', 1, 'real-possibilities-on-enhancement-of-the-achievable-estimates-3', '2021-08-02 05:03:54', '2022-03-07 08:07:48', 0, 'icon-1646651268', NULL, NULL),
(4, 'Real Possibilities on Enhancement of the Achievable Estimates', 'Real Possibilities on Enhancement of the Achievable Estimates', NULL, NULL, '<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>', '<p>Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;Real Possibilities on Enhancement of the Achievable Estimates&nbsp;</p>', '93179b6450b24999094300288cd655a4.jpeg\n', 1, 'real-possibilities-on-enhancement-of-the-achievable-estimates-4', '2021-08-02 05:05:24', '2022-03-07 08:07:34', 0, 'icon-1646651254', NULL, NULL),
(5, 'Demo', 'Demo', NULL, NULL, '<p>Demo</p>', '<p>Demo</p>', 'f7c20b6f413b5930a0c4321b4994cef3.jpeg', 1, 'demo', '2021-09-11 09:24:32', '2022-06-21 16:27:10', 0, 'icon-1646651240', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `colateral_managers`
--

CREATE TABLE `colateral_managers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `address` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colateral_managers`
--

INSERT INTO `colateral_managers` (`id`, `name`, `phone`, `email`, `address`, `active`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'good berter', '07854121542', 'engotheta@gmail.com', 'P.0 58725', 1, 'winner-winei', '2022-06-30 20:58:30', '2022-06-30 21:00:01'),
(2, 'winner winei', '07854121542', 'engotheta@gmail.com', 'P.0 58725', 1, 'winner-winei-2', '2022-06-30 20:59:42', '2022-06-30 20:59:42');

-- --------------------------------------------------------

--
-- Table structure for table `communities`
--

CREATE TABLE `communities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `telephone` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `region` text DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `address` text NOT NULL,
  `website` varchar(191) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) NOT NULL,
  `photo_url` varchar(191) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `community_categories`
--

CREATE TABLE `community_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) NOT NULL,
  `title_en` varchar(191) DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `specials` int(11) DEFAULT NULL,
  `services` int(11) DEFAULT NULL,
  `photo_url` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `community_categories`
--

INSERT INTO `community_categories` (`id`, `title_sw`, `title_en`, `slug`, `active`, `created_at`, `updated_at`, `featured`, `specials`, `services`, `photo_url`) VALUES
(1, 'Schools', 'Schools', 'schools', 1, '2022-10-15 13:31:23', '2022-10-17 02:18:30', 0, NULL, NULL, '/uploads/communities/1665983909-desola-lanre-ologun-IgUR1iX0mqM-unsplash.jpg'),
(2, 'Universities', 'Universities', 'universities', 1, '2022-10-15 14:30:56', '2022-10-17 02:16:20', 0, NULL, NULL, '/uploads/communities/1665983780-honey-yanibel-minaya-cruz-laORtJZaieU-unsplash.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `complainants`
--

CREATE TABLE `complainants` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_en` varchar(191) NOT NULL,
  `name_sw` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) NOT NULL,
  `middle_name` varchar(191) NOT NULL,
  `last_name` varchar(191) NOT NULL,
  `work` varchar(191) NOT NULL,
  `designation` varchar(191) NOT NULL,
  `organization` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `phone` varchar(191) NOT NULL,
  `fax` varchar(191) NOT NULL,
  `customer_type` enum('Internal','External') NOT NULL,
  `complainant_id` int(11) NOT NULL,
  `grievance_level_id` int(11) NOT NULL,
  `subject` varchar(191) DEFAULT NULL,
  `message` text NOT NULL,
  `defect` varchar(191) NOT NULL,
  `location` varchar(191) NOT NULL,
  `date` date NOT NULL,
  `complained_before` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `first_name`, `middle_name`, `last_name`, `work`, `designation`, `organization`, `address`, `phone`, `fax`, `customer_type`, `complainant_id`, `grievance_level_id`, `subject`, `message`, `defect`, `location`, `date`, `complained_before`, `created_at`, `updated_at`, `email`) VALUES
(1, 'Oren', '', '', '', '', 'Cox and Fisher Inc', NULL, '255786624753', '', 'Internal', 0, 0, 'Sunt tempore libero', 'Iusto lorem eu dolor', '', '', '0000-00-00', 0, '2023-01-31 12:01:51', '2023-01-31 12:01:51', 'muqo@mailinator.com');

-- --------------------------------------------------------

--
-- Table structure for table `dg_messages`
--

CREATE TABLE `dg_messages` (
  `id` int(11) NOT NULL,
  `summary_en` text DEFAULT NULL,
  `summary_sw` text DEFAULT NULL,
  `content_sw` text DEFAULT NULL,
  `content_en` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) NOT NULL,
  `title_en` varchar(191) DEFAULT NULL,
  `file_sw` varchar(191) NOT NULL,
  `file_en` varchar(191) NOT NULL,
  `featured` tinyint(1) DEFAULT 0,
  `active` tinyint(1) NOT NULL,
  `published_date` date NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `title_sw`, `title_en`, `file_sw`, `file_en`, `featured`, `active`, `published_date`, `category_id`, `created_at`, `updated_at`) VALUES
(22, 'UJENZI WA OFISI YA MAKAO MAKUU NA MIKOA ZA OFISI YA TAIFA YA MASHTAKA', 'UJENZI WA OFISI YA MAKAO MAKUU NA MIKOA ZA OFISI YA TAIFA YA MASHTAKA', 'sw1667979842-TAARIFA YA UJENZI WA OFISI -MAKALA.docx', 'en1667979842-TAARIFA YA UJENZI WA OFISI -MAKALA.docx', 0, 1, '2022-11-09', 22, '2022-11-09 01:44:02', '2022-11-09 01:44:02');

-- --------------------------------------------------------

--
-- Table structure for table `document_categories`
--

CREATE TABLE `document_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) NOT NULL,
  `title_en` varchar(191) DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `specials` int(11) DEFAULT NULL,
  `services` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `document_categories`
--

INSERT INTO `document_categories` (`id`, `title_sw`, `title_en`, `slug`, `active`, `created_at`, `updated_at`, `featured`, `specials`, `services`) VALUES
(22, 'Fomu', 'Forms', 'forms', 1, '2018-06-27 03:11:13', '2018-06-27 03:11:13', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `event_date` date DEFAULT NULL,
  `event_time` varchar(18) NOT NULL,
  `location` varchar(64) NOT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `title_sw` varchar(191) NOT NULL,
  `title_en` varchar(191) DEFAULT NULL,
  `summary_sw` text NOT NULL,
  `summary_en` text DEFAULT NULL,
  `content_sw` text NOT NULL,
  `content_en` text DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `photo_url` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_date`, `event_time`, `location`, `contact`, `title_sw`, `title_en`, `summary_sw`, `summary_en`, `content_sw`, `content_en`, `active`, `user_id`, `slug`, `photo_url`, `created_at`, `updated_at`) VALUES
(2, '2025-05-30', '7:00 AM', 'dodoma', 'test@gmail.com', 'Lorem Ipsum', 'Lorem Ipsum', '', NULL, '<h1>Lorem Ipsum</h1>', '<h1>Lorem Ipsum</h1>', 1, 6, 'lorem-ipsum', 'd24217f7bf8e42b4c3529199eae4c1cb.jpeg', '2025-05-30 14:42:54', '2025-05-30 14:42:54'),
(3, '2025-05-31', '7:00 AM', 'dodoma', 'test@gmail.com', 'Lorem Ipsum', 'Lorem Ipsum', '', NULL, '<h1>Lorem Ipsum</h1>', '<h1>Lorem Ipsum</h1>', 1, 6, 'lorem-ipsum-2', 'fee926a3912608810b9993714ffa129c.jpeg', '2025-05-30 14:43:46', '2025-05-30 14:43:46');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_sw` varchar(191) NOT NULL,
  `question_en` varchar(191) DEFAULT NULL,
  `answer_sw` text NOT NULL,
  `answer_en` text DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `specials` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question_sw`, `question_en`, `answer_sw`, `answer_en`, `active`, `slug`, `created_at`, `updated_at`, `specials`) VALUES
(4, 'What is Risk Management?', 'What is Risk Management?', '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Answer:</p>\r\n\r\n<p><em>Risk management is the identification, analysis and economic control of those risks which can threaten the assets or earning capacity of an enterprise.</em></p>\r\n\r\n<p>&nbsp;</p>', '<p>Answer:</p>\r\n\r\n<p><em>Risk management is the identification, analysis and economic control of those risks which can threaten the assets or earning capacity of an enterprise.</em></p>\r\n\r\n<p>&nbsp;</p>', 1, 'what-is-risk-management', '2022-08-11 11:13:11', '2022-08-11 11:13:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fin_years`
--

CREATE TABLE `fin_years` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `slug` varchar(40) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fin_years`
--

INSERT INTO `fin_years` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, '2017/2018', NULL, NULL, NULL),
(2, '2018/2019', NULL, NULL, NULL),
(3, '2019/2020', NULL, NULL, NULL),
(4, '2020/2021', NULL, NULL, NULL),
(5, '2021/2022', NULL, NULL, NULL),
(6, '2022/2023', NULL, '2023-02-02 13:36:33', '2023-02-02 13:36:33'),
(7, '2024/2025', NULL, '2025-05-30 17:12:30', '2025-05-30 17:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` text DEFAULT NULL,
  `title_en` text DEFAULT NULL,
  `content_sw` text DEFAULT NULL,
  `content_en` text DEFAULT NULL,
  `type` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `title_sw`, `title_en`, `content_sw`, `content_en`, `type`, `slug`, `featured`, `status`, `created_at`, `updated_at`) VALUES
(27, 'Sliders', 'Sliders', 'Sliders', 'Sliders', 'photos', 'sliders', 1, 1, '2025-05-30 14:12:08', '2025-05-30 14:12:08');

-- --------------------------------------------------------

--
-- Table structure for table `google_maps`
--

CREATE TABLE `google_maps` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` text NOT NULL,
  `office_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `google_maps`
--

INSERT INTO `google_maps` (`id`, `url`, `office_id`, `user_id`, `created_at`, `updated_at`) VALUES
(9, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3961.65148407604!2d39.28604441528041!3d-6.812177168524247!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x185c4b9f45e37f19%3A0x9fa3effbdc78d7bc!2sNational%20Prosecutions%20Service.%20Office%20of%20the%20Director%20of%20Public%20Prosecutions.%20Dar%20es%20salaam.!5e0!3m2!1sen!2stz!4v1673937386261!5m2!1sen!2stz\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, 5, '2022-08-07 11:32:43', '2023-01-17 03:37:52');

-- --------------------------------------------------------

--
-- Table structure for table `home_links`
--

CREATE TABLE `home_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) NOT NULL,
  `title_en` varchar(191) DEFAULT NULL,
  `link` tinyint(1) NOT NULL DEFAULT 0,
  `url` varchar(191) NOT NULL,
  `url_external` varchar(191) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `link_type` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_links`
--

INSERT INTO `home_links` (`id`, `title_sw`, `title_en`, `link`, `url`, `url_external`, `active`, `link_type`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Programu', 'Programme', 0, 'https://mail.site.go.tz', 'https://mail.site.go.tz', 1, 'fa-list', 'programme', '2022-02-24 06:02:44', '2022-02-24 06:20:50'),
(3, 'Kozi za Muda Mfupi', 'Short Courses', 1, 'announcements', NULL, 1, 'fa-book-open', 'short-courses', '2022-02-24 06:23:25', '2022-02-24 06:23:25');

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `contact` varchar(191) DEFAULT NULL,
  `address` varchar(191) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(161) DEFAULT NULL,
  `slug` varchar(191) NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `how_do_i`
--

CREATE TABLE `how_do_i` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) NOT NULL,
  `title_en` varchar(191) NOT NULL,
  `content_sw` text DEFAULT NULL,
  `content_en` text DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `how_do_i`
--

INSERT INTO `how_do_i` (`id`, `title_sw`, `title_en`, `content_sw`, `content_en`, `active`, `slug`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 'How do I apply for a teaching position?', 'How do I apply for a teaching position?', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1, 'how-do-i-apply-for-a-teaching-position', 1, '2021-12-01 03:17:10', '2021-12-01 03:17:10'),
(5, 'How Do I get a License?', 'How Do I get a License?', '<p>How Do I get a License explained ....</p>', '<p>How Do I get a License explained</p>', 1, 'how-do-i-get-a-license', 1, '2022-02-14 10:18:43', '2022-02-14 10:18:54'),
(6, 'How do I apply for a teaching position?', 'How do I apply for a teaching position?', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1, 'how-do-i-apply-for-a-teaching-position', 1, '2021-12-01 03:17:10', '2021-12-01 03:17:10');

-- --------------------------------------------------------

--
-- Table structure for table `ict_links`
--

CREATE TABLE `ict_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) NOT NULL,
  `title_en` varchar(191) DEFAULT NULL,
  `link` tinyint(1) NOT NULL DEFAULT 0,
  `url` varchar(191) NOT NULL,
  `url_external` varchar(191) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `parent` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ict_links`
--

INSERT INTO `ict_links` (`id`, `title_sw`, `title_en`, `link`, `url`, `url_external`, `active`, `parent`, `position`, `created_at`, `updated_at`) VALUES
(1, 'Staff Portals', 'Staff Portals', 0, 'https://mail.site.go.tz', 'https://mail.site.go.tz', 1, 0, 1, '2022-02-22 10:16:25', '2022-02-22 10:16:54'),
(2, 'Student Portal', 'Student Portal', 1, 'announcements', NULL, 1, 0, 1, '2022-02-22 10:17:24', '2022-02-22 10:17:24');

-- --------------------------------------------------------

--
-- Table structure for table `important_links`
--

CREATE TABLE `important_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) NOT NULL,
  `title_en` varchar(191) DEFAULT NULL,
  `url` varchar(191) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `important_links`
--

INSERT INTO `important_links` (`id`, `title_sw`, `title_en`, `url`, `active`, `created_at`, `updated_at`, `parent`, `position`) VALUES
(1, 'MoF', 'MoF', 'http://mof.go.tz', 1, '2021-07-28 06:16:15', '2023-01-31 08:52:36', 0, 2),
(3, 'TRA', 'TRA', 'http://tra.go.tz', 1, '2021-07-28 06:17:24', '2023-01-31 08:52:36', 0, 3),
(4, 'ZRB', 'ZRB', 'http://zanrevenue.org', 1, '2021-07-28 06:17:43', '2023-01-31 08:52:36', 0, 4),
(6, 'NIDA', 'NIDA', 'http://nida.go.tz', 1, '2021-07-28 06:18:36', '2023-01-31 08:52:36', 0, 5),
(7, 'ZCSRA', 'ZCSRA', 'https://zcsra.go.tz/', 1, '2021-10-13 08:18:42', '2023-01-31 08:52:36', 0, 6),
(8, 'BRELA', 'BRELA', 'https://brela.go.tz', 1, '2021-07-28 06:16:15', '2023-01-31 08:52:36', 0, 7),
(9, 'BPRA', 'BPRA', 'https://bpra.go.tz', 1, '2021-07-28 06:17:24', '2023-01-31 08:52:36', 0, 8),
(10, 'LATRA', 'LATRA', 'https://latra.go.tz', 1, '2021-07-28 06:17:43', '2023-01-31 08:52:36', 0, 9),
(11, 'Police Force', 'Police Force', 'https://police.go.tz', 1, '2021-07-28 06:18:36', '2023-01-31 08:52:36', 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `licensed_entities`
--

CREATE TABLE `licensed_entities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `telephone` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `region` text DEFAULT NULL,
  `address` text NOT NULL,
  `principal_officer` varchar(191) NOT NULL,
  `fax` varchar(191) DEFAULT NULL,
  `class_of_business` varchar(191) DEFAULT NULL,
  `website` varchar(191) DEFAULT NULL,
  `license_type` varchar(191) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `licensed_entities`
--

INSERT INTO `licensed_entities` (`id`, `name`, `phone`, `telephone`, `email`, `region`, `address`, `principal_officer`, `fax`, `class_of_business`, `website`, `license_type`, `active`, `slug`, `category_id`, `created_at`, `updated_at`) VALUES
(2, 'Thorn', '069226104', '+255 22 2122121', 'thorn.limited@yahoo.com', 'Dar es salaam', 'NIC Life House Sokoine/ohio Street, 6th Floor P.O. Box 10177 DAR ES SALAAM', 'A.S. Balisidya', '+255 22 2122105', NULL, '', NULL, 1, 'mnazi-juuu-kusini', 7, '2022-06-30 20:47:08', '2022-08-07 08:01:10'),
(3, 'Assemble Insurance Tanzania Limited', '255 767 111260', '+255 022 2780020 | +255 022 2780651', 'info@aar.co.tz', 'Dar es salaam', 'AAR Insurance (T) Ltd Plot 74 Serengeti Road, Warioba Street Off Mwai Kibaki Road, Mikocheni P.O Box 9600, Dar Es Salam', 'Ms. Violet Mordichai', '+255 022 2781472 | +255 022 2781204', 'Non-Life', 'http://aar-insurance.com', 'Perpetual', 1, 'mnazi-juuu-kusini', 9, '2022-06-30 20:47:08', '2022-08-28 03:47:16'),
(5, 'Equity Insurance Brokers Ltd', '+255 754 264559', NULL, 'infor@equityinsurancebrokers.co.tz', 'Dar es salaam', '5th floor Luther House, Sokoine Drive P.O. Box 2900 DAR ES SALAAM', 'Mr. Octavian Temu', NULL, 'Non-Life', NULL, 'Perpetual', 1, 'equity-insurance-brokers-ltd', 7, '2022-08-07 07:57:34', '2022-08-07 07:57:34'),
(6, 'MIC', '+255 777 52555 5', '+255 22 2120433', 'smmaherali@micglobalrisks.com', 'Dar es salaam', '8th Floor, Amani Place Ohio Street P.O. Box 10936 DAR ES SALAAM', 'Mr. Shiraz M. Maherali', NULL, NULL, NULL, NULL, 1, 'mic', 7, '2022-08-07 07:58:34', '2022-08-07 07:58:34'),
(8, 'MEJU INSURANCE SURVEYORS AND LOSS ASSESSORS', NULL, NULL, NULL, 'Dar es salaam', 'DAR', 'TBA', NULL, 'Non-Life', NULL, NULL, 0, 'meju-insurance-surveyors-and-loss-assessors-2', 10, '2022-08-07 08:06:04', '2022-08-07 08:06:04'),
(9, 'Eagle Surveyors and Loss Assessors', '0765 453940', NULL, 'eagleadjusters@gmail.com', 'Dar es salaam', 'P.O. Box 42466, EAGT Building Bohari Street, Plot No. 1, 2nd Floor Room 274 Temeke - Dar es salaam', 'Samson Andongisye Mwamakula', NULL, NULL, NULL, NULL, 1, 'eagle-surveyors-and-loss-assessors', 10, '2022-08-07 08:08:17', '2022-08-07 08:08:17'),
(12, 'Alliance Insurance Corporation Limited', '+255 754 780050/714 041155', '0411200104', 'admin@alliance.co.tz', 'Dar es salaam', 'Ghana Avenue 7th floor EXIM Tower P.O. Box 9942 DAR ES SALAAM.', 'Mr. K.V. Krishnan', '+255 22 2139098', 'Non-Life', 'www.alliance.co.tz', 'Perpetual', 1, 'alliance-insurance-corporation-ltd', 9, '2022-08-13 04:14:51', '2022-08-28 03:42:17'),
(13, 'Britam Insurance Tanzania Limited', '+255 22 213 8058', '+255 22 213 8058 /212 9384-7', 'info@britam.com', 'Dar es salaam', '2nd Floor PPF Towers Ohio Street/Ghana Avenue P.O. Box 75433 DAR ES SALAAM', 'Mr. Raymond Komanga', '+255 22 213 8059', 'Non-Life', 'www.Britam.co.tz', 'Perpetual', 1, 'britam-insurance-tanzania-ltd', 9, '2022-08-13 04:40:10', '2022-08-28 03:30:21'),
(14, 'Bumaco Insurance Company Limited', '+255 22 212 4654', '+255 22 212 4654', 'bumacodar@yahoo.com', 'Dar es salaam', '3rd Floor, Luther House Sokoine Drive P.O. Box 13147 DAR ES SALAAM', 'Mr. Ramadhani Mongi', '+255 22 212 4654', 'Non-Life', 'www.bumaco.co.tz', 'Perpetual', 1, 'bumaco-insurance-company-ltd', 9, '2022-08-13 04:43:56', '2022-08-28 03:28:26'),
(15, 'First Assurance Company Limited', '+255767818101 / +255783543939', '255 222 2122130', 'enquiries@firstassurance.co.tz', 'Dar es salaam', 'Peugeot House, Office No. 2 Ground Floor, Upanga Road\r\n	P.O. Box 5799 Dsm', 'Mr. Bosco Bugali', '+255767818101 / +255783543939', 'Non-Life', 'http://www.firstassurance.co.tz', 'Perpetual', 1, 'first-assurance-company-limited', 9, '2022-08-13 04:51:36', '2022-08-28 03:22:09'),
(16, 'GA Insurance Tanzania Limited', '255 713 323 564', '255 713 323 564', 'insure@gatanzania.co.tz', 'Dar es salaam', '4th Floor IT Plaza Ohio Street/Garden Avenue P.O. Box 75908 Dar Es Salaam', 'Mr. Amit Srivastava', '+255 22 2110311/2', 'Non-Life', 'www.gakenya.com/ga-tanzania/', 'Perpetual', 1, 'ga-insurance-tanzania-limited', 9, '2022-08-13 05:34:34', '2022-08-28 03:19:37'),
(17, 'The Heritage Insurance Company Tanzania Limited', '255 22 2664210,774 783318', '255 22 2664210,774 783318', 'info@heritagetanzania.com', 'Dar es salaam', 'OysterBay Office Complex 368 Msasani Road, P.O. Box 7390 Dar es salaam', 'Mr. Shanmugarajan Natarajan', '+255(22)2138696', 'Non-Life', 'www.heritagetanzania.com', 'Perpetual', 1, 'the-heritage-insurance-company-tanzania-limited', 9, '2022-08-13 05:46:34', '2022-08-28 03:16:35'),
(18, 'ICEA Lion Insurance Co Tanzania Limited', '+55 754 244333', '+255 22 277 4999/277 5039', 'insurance@icealion-tz.com', 'Dar es salaam', 'Plot No. 331, Kambarage Road Mikocheni A P.O. Box 1948 DAR ES SALAAM', 'Mr. Ravinarayanan Krishnamurthy', '+255 22 277 5094', 'Non-Life', 'www.icealion-tz.com', 'Perpetual', 1, 'icea-lion-general-insurance-company-t-limited', 9, '2022-08-13 05:50:17', '2022-08-28 03:14:49'),
(19, 'Insurance Group of Tanzania Limited', '+255 22 2131481', '255 22 2131481/0652 289123', 'Info@igt.co.tz', 'Dar es salaam', 'P.O.Box 1605 Dsm', 'Mr. Samuel Muhindi', '+255 22 2131482', 'Non-Life', 'www.igt.co.tz', 'Perpetual', 1, 'insurance-group-of-tanzania-limited', 9, '2022-08-13 05:59:55', '2022-08-28 03:12:35'),
(20, 'Jubilee General Insurance Company of Tanzania Limited', '+255 22 213 5124', '+255 22 213 5121/124', 'jictz@jubileetanzania.com', 'Dar es salaam', 'Amani Place 4th Floor Ohio Street P.O. Box 20524 DAR ES SALAAM', 'Mr. Dipankar Acharya', '+255(22)2135116', 'Non-Life', 'www.jubileeinsurance.com', 'Perpetual', 1, 'the-jubilee-insurance-company-of-tanzania-limited', 9, '2022-08-13 06:03:52', '2022-08-28 02:31:16'),
(21, 'Jubilee Life Insurance Corporation of Tanzania Limited', '255 22 21 35116', '255 22 21 35116', 'enquiry@jubileetanzania.com', 'Dar es salaam', 'P.O.Box 20524 Dsm\r\n\r\n\r\nAmani Place, Ohio Street, 9th Floor P.O. Box 20524 DAR ES SALAAM', 'Mr. Kumar S.  Gaurav', '255 22 2135121', 'Life', 'www.noweb.co,tz', 'Perpetual', 1, 'jubilee-life-insurance-company-ltd', 9, '2022-08-13 06:09:50', '2022-08-28 03:10:22'),
(23, 'Metropolitan Tanzania Insurance Company Limited', '+255 22 211 0630/1', '+255 22 211 0630/1', 'GFortes@metropolitantz.com', 'Dar es salaam', 'Diamond Plaza, 6th Floor P.O. Box 77016 DAR ES SALAAM', 'AG. Mr. Amani Boma', '+255 22 219 7601', 'Life', 'www.noweb.co.tz', 'Perpetual', 1, 'metropolitan-tanzania-insurance-company-limited', 9, '2022-08-13 06:16:45', '2022-08-13 06:16:45'),
(24, 'Metropolitan Tanzania Life Assurance Company Limited', '255 22 2197600', '255 22 2197600', 'info@metropolitantz.com', 'Dar es salaam', '5th Floor, Diamond Plaza,Crn of Mirambo and Samora Avenue\r\n	P.O. Box 77016 Dsm', 'Mr. Suresh Kumar', '(+255) 22 212 0114', 'Non-Life', 'www.metropolitantz.com', 'Perpetual', 1, 'metropolitan-tanzania-life-assurance-company-limited', 9, '2022-08-13 06:19:18', '2022-08-28 03:03:10'),
(25, 'Milembe Insurance Company Limited', '255 22 2666215', '255 22 2666215', 'info@milembeinsurance.com', 'Dar es salaam', '2nd Floor Viva Towers, Ali Hassan Mwinyi Road Dar es Salaam – City Centre P.O. Box 14548 Dar es Salaam, Tanzania', 'Mr. Lexon Makundi', '-', 'Non-Life', 'milembeinsurance.co.tz', 'Perpetual', 1, 'milembe-insurance', 9, '2022-08-13 06:23:51', '2022-08-28 02:56:58'),
(26, 'MO Assurance Company Limited', '+255 22 212 7398', '+255 22 212 7398', 'infomoa@moassurance.co.tz', 'Dar es salaam', '8th Floor, CRDB Building Azikiwe Street P.O. Box 20660 DAR ES SALAAM', 'Mr. Pulin Bihari', '+255 22 212 7268', 'Non-Life', 'www.moassurance.co.tz', 'Perpetual', 1, 'mo-assurance-company-limited', 9, '2022-08-13 06:26:41', '2022-08-28 02:54:24'),
(27, 'National Insurance Corporation of Tanzania Limited', '(255) 22 2113823/9', '(255) 22 2113823/9', 'info-nic@nictanzania.com', 'Dar es salaam', 'P.O.Box 9264 Dsm', 'Dr. Elirehema Joshua Doriye', '-', 'Life', 'www.no.co.tz', 'Perpetual', 1, 'national-insurance-corp-t-ltd', 9, '2022-08-13 06:33:17', '2022-08-28 02:52:46'),
(28, 'Phoenix of Tanzania Assurance Company Limited', '+255 22 212 2777', '+255 22 212 2777', 'info@phoenixtanzania.com', 'Dar es salaam', 'I.P.S. Bld, 8th Floor Samora Avenue/Azikiwe Street P.O. Box 5961 DAR ES SALAAM', 'Mr. Pradeep Srivastava', '+255 22 212 2761', 'Non-Life', 'www.phoenixtanzania.com', 'Perpetual', 1, 'phoenix-of-tanzania-assurance-co-ltd', 9, '2022-08-13 06:39:52', '2022-08-28 02:50:19'),
(29, 'Reliance Insurance Company Tanzania Limited', '+255 22 212 0088-90', '+255 22 212 0088-90', 'insure@reliance.co.tz', 'Dar es salaam', 'Reliance House 3rd & 4th Floor, Plot No 356 United Nation Road Upanga', 'Mr. Parameswaran Rajaram', '+255(22)2112903', 'Non-Life', 'www.reliance.co.tz', 'Perpetual', 1, 'reliance-insurance-co-tanzania-ltd', 9, '2022-08-13 06:43:29', '2022-08-28 02:48:40'),
(30, 'Sanlam General Insurance Tanzania', '+255 786 524 277', '+255 22 212 0188/9', 'info@sanlamgeneralinsurance.co.tz', 'Dar es salaam', '4th Floor, Amani Place, Ohio Street PO Box 21228 Dar es Salaam', 'Mr. Julius Magabe', '+255 22 212 0193', 'Non-Life', 'www.sanlam.co.tz', 'Perpetual', 1, 'sanlam-general-insurance', 9, '2022-08-13 06:46:32', '2022-08-28 02:43:21'),
(31, 'Factory Mutual Insurance Company', '-', '-', 'michaela.chira@fmglobal.com', 'USA', 'USA', 'Mr. Michaela Chira', '-', 'Life', '-', '3 years', 1, 'factory-mutual-insurance-company', 11, '2022-08-27 11:35:32', '2022-08-27 11:35:32'),
(32, 'Mapfre Asistencia, Campania De Seguros Y Reaseguris, S.A', '-', '-', 'diezz@mapfre.com', 'Spain', 'Spain', 'Ms. Leire Jimenez Ayesa', '-', 'Life', '-', '3 years', 1, 'mapfre-asistencia-campania-de-seguros-y-reaseguris-s-a', 11, '2022-08-27 11:38:00', '2022-08-27 11:38:00'),
(33, 'Optimum Global Insurance Company Limited', '-', '-', 'james.webber.@robusgroup.com', 'Guernsey Island', 'Guernsey Island', 'Mr. James Webber', '-', 'Life', '-', '3 years', 1, 'optimum-global-insurance-company-limited', 11, '2022-08-27 11:39:55', '2022-08-27 11:39:55'),
(34, 'Score Se', '-', '-', 'cramamonjiarisoa@scor.com', 'France', 'France', 'Mr. Dennis Kessler', '-', 'Life', '-', '3 years', 1, 'score-se', 11, '2022-08-27 11:41:51', '2022-08-27 11:41:51'),
(35, 'East Africa Reinsurance Company', '-', '-', 'info@eastafricare.com', 'Kenya', 'Kenya', 'Mr. Peter Maina', '-', 'Life', '-', '3 years', 1, 'east-africa-reinsurance-company', 11, '2022-08-27 11:50:44', '2022-08-27 11:50:44'),
(36, 'Ghana Reinsurance Company(Kenya) Limited', '-', '-', 'info@ghanare.com', 'Kenya', 'Kenya', 'Mrs.  Madeleine T. Nangayo', '-', 'Life', '-', '3 years', 1, 'ghana-reinsurance-company-kenya-limited', 11, '2022-08-27 11:52:41', '2022-08-27 11:52:41'),
(37, 'Rochester Reinsurance PLC', '-', '-', 'office@rochester-re.com', 'Union of Comoros', 'Union of Comoros', 'Agota Miklos', '-', 'Life', '-', '3 years', 1, 'rochester-reinsurance-plc', 11, '2022-08-27 11:54:24', '2022-08-27 11:54:24'),
(38, 'Swan Reinsurance PCC', '-', '-', 'corporatefinance@swanforlife.com', 'Mauritius', 'Mauritius', 'Mr. Neelkamal RAGOO', '-', 'Life', '-', '3 years', 1, 'swan-reinsurance-pcc', 11, '2022-08-27 11:58:35', '2022-08-27 11:58:35'),
(39, 'Constantia Insurance Company Limited', '-', '-', 'seanb@constantiagroup.co.za', 'South Africa', 'South Africa', 'Mr. Peter  Geoffrey Todd', '-', 'Life', '-', '3 years', 1, 'constantia-insurance-company-limited', 11, '2022-08-27 12:00:27', '2022-08-27 12:00:27'),
(40, 'International General Insurance Co. Ltd', '-', '-', 'Rawan.Alsulaiman@iginsure.com', 'Bermuda', 'Bermuda', 'Mr. Wasef Jabsheh', '-', 'Life', '-', '3 years', 1, 'international-general-insurance-co-ltd', 11, '2022-08-27 12:02:56', '2022-08-27 12:02:56'),
(41, 'Grand Reinsurance Company Private Limited', '-', '-', 'info@grandre.co.zw', 'Zimbabwe', 'Zimbabwe', 'Mr. Tatenda Katoma', '-', 'Life', '-', '3 years', 1, 'grand-reinsurance-company-private-limited', 11, '2022-08-27 12:04:15', '2022-08-27 12:04:15'),
(42, 'Munich Reinsurance Company of Africa Ltd', '-', '-', 'Btonat@munichre.com', 'South Africa', 'South Africa', 'Mr. Clemance Gorajena', '-', 'Life', '-', '3 years', 1, 'munich-reinsurance-company-of-africa-ltd', 11, '2022-08-27 12:05:47', '2022-08-27 12:05:47'),
(43, 'Continental Reinsurance Limited', NULL, '-', 'info@continental-re.com', 'Kenya', 'Kenya', 'Mr. Souvik Banerjea', '-', 'Life', '-', '3 years', 1, 'continental-reinsurance-limited', 11, '2022-08-27 12:07:25', '2022-08-27 12:07:25'),
(44, 'The Hollard Insurance Company', '-', '-', '-', 'South Africa', 'South Africa', 'Mr. Sakhiwo Ntombela', '-', 'Life', 'www.Hollard.co.za', '3 years', 1, 'the-hollard-insurance-company', 11, '2022-08-27 12:09:12', '2022-08-27 12:09:12'),
(45, 'Ocean International Reinsurance Company Limited', '-', '-', 'compliance@oceanre.biz', 'Barbados', 'Barbados', 'Mr. Carlos G. Chamorro', '-', 'Life', '-', '3 years', 1, 'ocean-international-reinsurance-company-limited', 11, '2022-08-27 12:10:32', '2022-08-27 12:10:32'),
(46, 'Guardrisk International Limited Pcc', '-', '-', 'RamlochunV@guardrisk.co.za', 'Mauritius', 'Mauritius', 'Mr. Shophie Ng Cheong Sang', '-', 'Life', '-', '3 years', 1, 'guardrisk-international-limited-pcc', 11, '2022-08-27 12:14:32', '2022-08-27 12:14:32'),
(47, 'Guardrisk Insurance Compoany Limited', '-', '-', 'bettonb@guardrisk.co.za', 'South Africa', 'South Africa', 'Mr. Herman Schoeman', '-', 'Life', '-', '3 years', 1, 'guardrisk-insurance-compoany-limited', 11, '2022-08-27 12:18:53', '2022-08-27 12:18:53'),
(48, 'Allianz Global Corporate & Specialty SE', '-', '-', 'markus.humberg@allianz.com', 'Germany', 'Germany', 'Mr. Joachim Mueller', '-', 'Life', '-', '3 years', 1, 'allianz-global-corporate-specialty-se', 11, '2022-08-27 12:24:07', '2022-08-27 12:24:07'),
(49, 'Cica-Re', '-', '-', 'cica-re@cica-re.com', 'Togo', 'Togo', 'Mr. Diarassouba Karim', '-', 'Life', '-', '3 years', 1, 'cica-re', 11, '2022-08-27 12:25:33', '2022-08-27 12:25:33'),
(50, 'Santam Limited', '-', '-', '-', 'South Africa', 'South Africa', 'Ms. Leire Lambrechts', '-', 'Life', '-', '3 years', 1, 'santam-limited', 11, '2022-08-27 12:27:41', '2022-08-27 12:27:41'),
(51, 'New Reinsurance Company Limited', '-', '-', 'dwalti@newre.com', 'Swirtzerland', 'Swirtzerland', 'Thomas Braune', '-', 'Life', '-', '3 years', 1, 'new-reinsurance-company-limited', 11, '2022-08-27 12:31:09', '2022-08-27 12:31:09'),
(52, 'Waica Reinsurance (Kenya) Limited', '-', '-', 'info@waicare.com', 'Kenya', 'Kenya', 'Mr. Charles Etemesi', '-', 'Life', '-', '3 years', 1, 'waica-reinsurance-kenya-limited', 11, '2022-08-27 12:33:08', '2022-08-27 12:33:08'),
(53, 'AFRO ASIAN REINSURANCE BROKERS (T) LTD', '-', '-', '-', 'Tanzania', 'Tanzania', '-', '-', 'Life', '-', '3 years', 1, '1-afro-asian-reinsurance-brokers-t-ltd', 13, '2022-08-27 12:59:19', '2022-08-27 14:09:21'),
(54, 'MIC REINSURANCE BROKERS LIMITED', '-', '-', '-', 'Tanzania', 'Tanzania', '-', '-', 'Non-Life', '-', '3 years', 1, '2-mic-reinsurance-brokers-limited', 13, '2022-08-27 13:01:09', '2022-08-27 14:09:12'),
(55, 'TAPEX REINSURANCE BROKERS LIMITED', '-', '-', '-', 'Tanzania', 'Tanzania', '-', '-', 'Non-Life', '-', '3 years', 1, 'tapex-reinsurance-brokers-limited', 13, '2022-08-27 13:01:55', '2022-08-27 13:01:55'),
(56, 'WILLMARS REISURANCE BROKERS LIMITED', '-', '-', '-', 'Tanzania', 'Tanzania', '-', '-', 'Non-Life', '-', '3 years', 1, '4-willmars-reisurance-brokers-limited', 13, '2022-08-27 13:02:39', '2022-08-27 14:09:02'),
(57, 'ARIS', '-', '_', '-', 'Tanzania', 'Tanzania', '-', '-', 'Non-Life', '-', '3 years', 1, 'aris', 13, '2022-08-27 13:03:48', '2022-08-27 13:03:48'),
(58, 'Reinsurance Solution International Limited', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'reinsurance-solution-international-limited', 12, '2022-08-27 13:07:24', '2022-08-27 13:07:24'),
(59, 'Pioneer Insurance & Reinsurance Brokers Pvt Ltd', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, '2-pioneer-insurance-reinsurance-brokers-pvt-ltd', 12, '2022-08-27 13:08:18', '2022-08-27 13:14:00'),
(60, 'CG Re (Africa) Limited', '-', '-', '-', '-', '-', '-', '-', 'Non-Life', '-', '3 years', 1, 'cg-re-africa-limited', 12, '2022-08-27 13:19:45', '2022-08-27 13:19:45'),
(61, 'Group risk  Management Services Limited', '-', '-', '-', '-', '-', '-', '-', 'Non-Life', '-', '3 years', 1, 'group-risk-management-services-limited', 12, '2022-08-27 13:20:54', '2022-08-27 13:20:54'),
(62, 'Specialised Risk Management(SRM )', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'specialised-risk-management-srm', 12, '2022-08-27 13:22:20', '2022-08-27 13:22:20'),
(63, 'India Insure Risk Management& Insurance Broking Services PVT Ltd', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'india-insure-risk-management-insurance-broking-services-pvt-ltd', 12, '2022-08-27 13:23:19', '2022-08-27 13:23:19'),
(64, 'Afro-Asian Insurance Servises Limited', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'afro-asian-insurance-servises-limited', 12, '2022-08-27 13:24:10', '2022-08-27 13:24:10'),
(65, 'Bharat Re-Insurance Broker Pvt Ltd', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'bharat-re-insurance-broker-pvt-ltd', 12, '2022-08-27 13:24:55', '2022-08-27 13:24:55'),
(66, 'Guy Carpenter & Company (pty) Limited', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'guy-carpenter-company-pty-limited', 12, '2022-08-27 13:25:40', '2022-08-27 13:25:40'),
(67, 'First  Reinsurance Brokers Africa Ltd', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'first-reinsurance-brokers-africa-ltd', 12, '2022-08-27 13:27:05', '2022-08-27 13:27:05'),
(68, 'Alesco Risk Management Services Limited', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'alesco-risk-management-services-limited-2', 12, '2022-08-27 13:28:12', '2022-08-27 13:28:12'),
(69, 'DJA Aviation (PTY) Ltd', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'dja-aviation-pty-ltd', 12, '2022-08-27 13:29:07', '2022-08-27 13:29:07'),
(70, 'Maksure Financial Holdings t/a Maksure Risk Solutions', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'maksure-financial-holdings-t-a-maksure-risk-solutions', 12, '2022-08-27 13:30:13', '2022-08-27 13:30:13'),
(71, 'Apex Reinsurance Brokers Limited', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'apex-reinsurance-brokers-limited', 12, '2022-08-27 13:30:53', '2022-08-27 13:30:53'),
(72, 'Marsh Limited Reinsurance Broker', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'marsh-limited-reinsurance-broker', 12, '2022-08-27 13:31:57', '2022-08-27 13:31:57'),
(73, 'Arthur J. Gallagher (UK) Limited', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'arthur-j-gallagher-uk-limited', 12, '2022-08-27 13:32:42', '2022-08-27 13:32:42'),
(74, 'Total Risk Solutions (London) Limited', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'total-risk-solutions-london-limited', 12, '2022-08-27 13:33:20', '2022-08-27 13:33:20'),
(75, 'J.B.BODA Reinsurance Brokers', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'j-b-boda-reinsurance-brokers', 12, '2022-08-27 13:34:08', '2022-08-27 13:34:08'),
(76, 'Howden UK Group Limited', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'howden-uk-group-limited', 12, '2022-08-27 13:34:48', '2022-08-27 13:34:48'),
(77, 'Nasco France Sas', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'nasco-france-sas', 12, '2022-08-27 13:35:29', '2022-08-27 13:35:29'),
(78, 'Siaci Saint Honore Sas', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'siaci-saint-honore-sas', 12, '2022-08-27 13:36:03', '2022-08-27 13:36:03'),
(79, 'Crispin Speers and Partners', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'crispin-speers-and-partners', 12, '2022-08-27 13:36:45', '2022-08-27 13:36:45'),
(80, 'Genesis Risk Managers', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'genesis-risk-managers', 12, '2022-08-27 13:37:34', '2022-08-27 13:37:34'),
(81, 'Price Forbes & Partners Limited', '-', '-', '-', '-', '-', '-', '-', 'Non-Life', '-', '3 years', 1, 'price-forbes-partners-limited', 12, '2022-08-27 13:38:20', '2022-08-27 13:38:20'),
(82, 'Marsh Africa (PTY) Limited', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'marsh-africa-pty-limited', 12, '2022-08-27 13:38:58', '2022-08-27 13:38:58'),
(83, 'STS International', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'sts-international', 12, '2022-08-27 13:39:42', '2022-08-27 13:39:42'),
(84, 'Lockton (Mena) Limited', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'lockton-mena-limited', 12, '2022-08-27 13:40:18', '2022-08-27 13:40:18'),
(85, 'Foten Reinsurance Broker', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'foten-reinsurance-broker', 12, '2022-08-27 13:41:02', '2022-08-27 13:41:02'),
(86, 'Kek Reinsurance Broker', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'kek-reinsurance-broker', 12, '2022-08-27 13:41:32', '2022-08-27 13:41:32'),
(87, 'Minet Kenya Insurance Brokers Limited', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'minet-kenya-insurance-brokers-limited', 12, '2022-08-27 13:42:09', '2022-08-27 13:42:09'),
(88, 'Howden Insurance Brokers LLC', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'howden-insurance-brokers-llc', 12, '2022-08-27 13:42:39', '2022-08-27 13:42:39'),
(89, 'GIC Re South Africa Limited', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'gic-re-south-africa-limited', 12, '2022-08-27 13:43:11', '2022-08-27 13:43:11'),
(90, 'African Reinsurance Consultants Limited', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'african-reinsurance-consultants-limited', 12, '2022-08-27 13:43:45', '2022-08-27 13:43:45'),
(91, 'Fair Insurance & Reinsurance Brokers Ltd', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'fair-insurance-reinsurance-brokers-ltd', 12, '2022-08-27 13:44:29', '2022-08-27 13:44:29'),
(92, 'Mukoma Financial Services', '-', '-', '-', '-', '-', '-', '-', 'Life', '-', '3 years', 1, 'mukoma-financial-services', 12, '2022-08-27 13:45:09', '2022-08-27 13:45:09'),
(93, 'Tanzania Reinsurance Company Ltd', '255 22 292 2341/3,0757 211 000', '255 22 292 2341/3,0757 211 000', 'mail@tan-re.co.tz', 'Dar es Salaam', 'P.O. Box 1505 Dsm', 'Mr. R. Kakusa', '255 22 292 2341/3,0757 211 000', 'Life', '-', '3 years', 1, 'tanzania-reinsurance-company-ltd', 14, '2022-08-27 13:56:54', '2022-08-27 13:56:54'),
(94, 'Grand Reinsurance Company', '255 689 663 398', '255 689 663 398', ' jechek@grandreinsurance.com', 'Dar es Salaam', 'P.O BOX 38658 Dsm', 'Mr. Kudakwashe Jeche', '-', 'Life', '-', '3 years', 1, 'grand-reinsurance-company', 14, '2022-08-27 13:58:24', '2022-08-27 13:58:24'),
(95, 'CRDB BANK PLC', '-', '-', '-', 'Daresalaam', 'P.O BOX 268 DSM', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'crdb-bank-plc', 15, '2022-08-27 14:08:19', '2022-08-27 14:08:19'),
(96, 'NMB BANK', '-', '-', '-', 'Daresalaam', 'P.O BOX 9213 DSM', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'nmb-bank', 15, '2022-08-27 14:10:49', '2022-08-27 14:10:49'),
(97, 'AZANIA BANK', '-', '-', '-', 'Daresalaam', 'P.O BOX 32089 DSM', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'azania-bank', 15, '2022-08-27 14:11:47', '2022-08-27 14:11:47'),
(98, 'MWALIMU COMMERCIAL BANK PLC', '-', '-', '-', 'Daresalaam', 'P.O BOX 61002 DSM', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'mwalimu-commercial-bank-plc', 15, '2022-08-27 14:13:01', '2022-08-27 14:13:01'),
(99, 'MKOMBOZI COMMERCIAL BANK', '-', '-', '-', 'Daresalaam', 'P.O BOX 38448 DSM', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'mkombozi-commercial-bank', 15, '2022-08-27 14:15:57', '2022-08-27 14:19:29'),
(100, 'DIAMOND TRUST BANK (T) LTD', '-', '-', '-', 'Daresalaam', 'P.O BOX 115 DSM', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'diamond-trust-bank-t-ltd', 15, '2022-08-27 14:16:46', '2022-08-27 14:19:14'),
(101, 'STANBIC BANK TANZANIA LTD', '-', '-', '-', 'Daresalaam', 'P.O BOX 72647 DSM', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'stanbic-bank-tanzania-ltd', 15, '2022-08-27 14:17:28', '2022-08-27 14:19:02'),
(102, 'TPB BANK', '-', '-', '-', 'Daresalaam', 'P.O BOX 9300 DSM', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'tpb-bank', 15, '2022-08-27 14:18:29', '2022-08-27 14:18:29'),
(103, 'ABSA BANK TANZANIA LTD', '-', '-', '-', 'Daresalaam', 'P.O BOX 5137 DSM', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'absa-bank-tanzania-ltd', 15, '2022-08-27 14:20:27', '2022-08-27 14:20:27'),
(104, 'STANDARD CHARTERED BANK TZ LTD', '-', '-', '-', 'Daresalaam', 'P.O BOX 9011 DSM', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'standard-chartered-bank-tz-ltd', 15, '2022-08-27 14:21:17', '2022-08-27 14:21:17'),
(105, 'FIRST NATIONAL BANK TANZANIA', '-', '-', '-', 'Daresalaam', 'P.O BOX 72290 DSM', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'first-national-bank-tanzania', 15, '2022-08-27 14:22:01', '2022-08-27 14:22:01'),
(106, 'DCB COMMERCIAL BANK PLC', '-', '-', '-', 'Daresalaam', 'P.O.BOX 19798 DSM', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'dcb-commercial-bank-plc', 15, '2022-08-27 14:23:09', '2022-08-27 14:23:09'),
(107, 'EXIM BANK TANZANIA LTD', '-', '-', '-', 'Daresalaam', 'P.O.BOX 1431 DSM', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'exim-bank-tanzania-ltd', 15, '2022-08-27 14:24:14', '2022-08-27 14:24:14'),
(108, 'LETSHEGO BANK TANZANIA LTD', '-', '-', '-', 'Daresalaam', 'P.O.BOX 34459 DSM', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'letshego-bank-tanzania-ltd', 15, '2022-08-27 14:25:11', '2022-08-27 14:25:11'),
(109, 'ECOBANK TANZANIA LIMITED', '-', '-', '-', '-', 'P.O BOX 20500 DSM', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'ecobank-tanzania-limited', 15, '2022-08-27 14:25:52', '2022-08-27 14:25:52'),
(110, 'UCHUMI COMMERCIAL BANK LIMITED', '-', '-', '-', 'Daresalaam', '-', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'uchumi-commercial-bank-limited', 15, '2022-08-27 14:26:58', '2022-08-27 14:26:58'),
(111, 'BANK OF AFRIA TANZANIA LIMITED', '-', '-', '-', 'Daresalaam', '-', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'bank-of-afria-tanzania-limited', 15, '2022-08-27 14:27:44', '2022-08-27 14:27:44'),
(112, 'EQUITY BANK TANZANIA LIMITED', '-', '-', '-', 'Daresalaam', '-', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'equity-bank-tanzania-limited', 15, '2022-08-27 14:28:59', '2022-08-27 14:28:59'),
(113, 'MWANGA HAKIKA MICROFINANCE BANK LIMITED', '-', '-', '-', 'Daresalaam', '-', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'mwanga-hakika-microfinance-bank-limited', 15, '2022-08-27 14:30:33', '2022-08-27 14:30:33'),
(114, 'FINCA MICROFINANCE BANK LIMITED', '-', '-', '-', 'Daresalaam', '-', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'finca-microfinance-bank-limited', 15, '2022-08-27 14:31:19', '2022-08-27 14:31:19'),
(115, 'KCB BANK TANZANIA LIMITED', '-', '-', '-', 'Daresalaam', '-', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'kcb-bank-tanzania-limited', 15, '2022-08-27 14:32:01', '2022-08-27 14:32:01'),
(116, 'I & M BANK TANZANIA LIMITED', '-', '-', '-', 'Daresalaam', '-', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'i-m-bank-tanzania-limited', 15, '2022-08-27 14:32:47', '2022-08-27 14:32:47'),
(117, 'FIRST HOUSING FINANCE TANZANIA LIMITED', '-', '-', '-', 'Daresalaam', '-', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'first-housing-finance-tanzania-limited', 15, '2022-08-27 14:33:23', '2022-08-27 14:33:23'),
(118, 'AKIBA COMM. BANK', '-', '-', '-', 'Daresalaam', '-', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'akiba-comm-bank', 15, '2022-08-27 14:34:15', '2022-08-27 14:34:15'),
(119, 'MAENDELEO BANK', '-', '-', '-', 'Daresalaam', '-', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'maendeleo-bank', 15, '2022-08-27 14:34:57', '2022-08-27 14:34:57'),
(120, 'MUCOBA BANK PUBLIC LIMITED COMPANY', '-', '-', '-', 'Daresalaam', '-', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'mucoba-bank-public-limited-company', 15, '2022-08-27 14:35:47', '2022-08-27 14:35:47'),
(121, 'COMMERCIAL BANK OF AFRICA (NCBA)', '-', '-', '-', 'Daresalaam', '-', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'commercial-bank-of-africa-ncba', 15, '2022-08-27 14:36:24', '2022-08-27 14:36:24'),
(122, 'Zanzibar Insurance Corporstion', '255 242232676', '255 242232676', 'zic@zitec.org', 'Zanzibar', 'P.O.Box 432 Znz', '-', '-', 'Non-Life', '-', 'Perpetual', 1, 'zanzibar-insurance-corporstion', 9, '2022-08-28 02:23:22', '2022-08-28 02:23:22'),
(123, 'UAP Insurance Tanzania Insurance Limited', '255 22 213 7324/5', '255 22 213 7324/5', 'uaptanzania@uap-group.com', 'Dar es Salaam', 'P.O.Box 432  Dsm', 'Mr.Stephen Lokonyo', '-', 'Non-Life', '-', 'Perpetual', 1, 'uap-insurance-tanzania-insurance-limited', 9, '2022-08-28 02:27:08', '2022-08-28 02:27:08'),
(124, 'Jubilee Health Insurance Company of Tanzania Limited', '-', '-', 'enquiry@jubileetanzania.co.tz', 'Dar es Salaam', 'P.O BOX 20524 Dsm', 'Harold Adamson', '-', 'Non-Life', '-', 'Perpetual', 1, 'jubilee-health-insurance-company-of-tanzania-limited', 9, '2022-08-28 02:33:29', '2022-08-28 02:33:29'),
(125, 'Tanzindia Assurance Company Ltd', '255 22 2122914/916', '255 22 2122914/916', 'bima@tanzindia.co.tz', 'Dar es Salaam', 'P.O.Box 70065 Dsm', 'Mr. B. S. Sharma', '-', 'Non-Life', '-', 'Perpetual', 1, 'tanzindia-assurance-company-ltd', 9, '2022-08-28 02:37:11', '2022-08-28 02:37:11'),
(126, 'Sanlam Life Insurance Tanzania Ltd', '255 2127151/2/3', '255 2127151/2/3', 'info@sanlam.co.tz', 'Dar es Salaam', 'P.O.Box 79651 Dsm', 'Mr. Khamis Suleiman', '-', 'Life', '-', 'Perpetual', 1, 'sanlam-life-insurance-tanzania-ltd', 9, '2022-08-28 02:39:52', '2022-08-28 02:39:52'),
(127, 'Resolution Insurance Ltd', '255 22 2210700', '255 22 2210700', 'info@resolution.co.tz', 'Dar es Salaam', 'P.O.Box 105486 Dsm', 'Ms.Maryanne Mugo', '-', 'Non-Life', '-', 'Perpetual', 1, 'resolution-insurance-ltd', 9, '2022-08-28 02:46:33', '2022-08-28 02:46:33'),
(128, 'Mgen Tanzania Insurance Company Ltd', '225 22 2600921/925', '225 22 2600921/925', 'info@mgentanzania.co.tz', 'Dar es Salaam', 'P.O. Box 7495 Dsm', 'Mr. C. Sumbwe', '-', 'Non-Life', '-', 'Perpetual', 1, 'mgen-tanzania-insurance-company-ltd', 9, '2022-08-28 02:58:46', '2022-08-28 02:58:46'),
(129, 'Mayfair Insurance Company Tanzania Limited', '255 2922337/338', '255 2922337/338', 'info@mayfair.co.tz', 'Dar es Salaam', 'P.O.Box 110007 Dsm', 'Mr. Mustafa Rajabali Rashid', '-', 'Non-Life', '-', 'Perpetual', 1, 'mayfair-insurance-company-tanzania-limited', 9, '2022-08-28 03:05:32', '2022-08-28 03:05:32'),
(130, 'Maxinsure Tanzania Limited', '255 22 234 5500', '255 22 234 5500', 'info@maxinsure-tz.com', 'Dar es Salaam', 'P.O.Box 38353 Dsm', 'Mr. Sanjay Singh', '-', 'Non-Life', '-', 'Perpetual', 1, 'maxinsure-tanzania-limited', 9, '2022-08-28 03:07:50', '2022-08-28 03:07:50'),
(131, 'Bumaco Life Insurance Company', '255 27 2753032', '255 27 2753032', 'info@bumacolife.co.tz', 'Moshi', 'P.O.Box 1747 Dsm', 'Mr Samwel Mchopa', '-', 'Life', '-', 'Perpetual', 1, 'bumaco-life-insurance-company', 9, '2022-08-28 03:26:35', '2022-08-28 03:26:35'),
(132, 'Alliance Life Assurance Limited', '255 22 2103300/01', '255 22 2103300/01', 'life@alliancelife.co.tz', 'Dar es Salaam', 'P.O.Box 11522 Dsm', 'Mr. Byford Mutimusakwa', '-', 'Life', '-', 'Perpetual', 1, 'alliance-life-assurance-limited', 9, '2022-08-28 03:32:09', '2022-08-28 03:32:09');

-- --------------------------------------------------------

--
-- Table structure for table `licensed_entity_categories`
--

CREATE TABLE `licensed_entity_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) NOT NULL,
  `title_en` varchar(191) DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `specials` int(11) DEFAULT NULL,
  `services` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `licensed_entity_categories`
--

INSERT INTO `licensed_entity_categories` (`id`, `title_sw`, `title_en`, `slug`, `active`, `created_at`, `updated_at`, `featured`, `specials`, `services`) VALUES
(7, 'Insurance Brokers', 'Insurance Brokers', 'insurance-brokers', 1, '2021-09-14 09:36:38', '2022-06-22 15:56:40', 0, NULL, NULL),
(8, 'Insurance Agents', 'Insurance Agents', 'insurance-agents', 1, '2021-09-14 09:38:57', '2022-06-30 15:56:51', 1, NULL, NULL),
(9, 'Insurance Companies', 'Insurance Companies', 'insurance-companies', 1, '2021-10-13 06:40:40', '2022-06-30 15:47:26', 1, NULL, NULL),
(10, 'Loss Adjustors-Assesors', 'Loss Adjustors-Assesors', 'loss-adjustors-assesors', 1, '2022-08-07 08:05:04', '2022-08-07 08:05:04', 0, NULL, NULL),
(11, 'Accredited Reinsurance Companies', 'Accredited Reinsurance Companies', 'accredited-reinsurance-companies', 1, '2022-08-09 16:24:46', '2022-08-09 16:24:46', 0, NULL, NULL),
(12, 'Accredited Reinsurance Brokers', 'Accredited Reinsurance Brokers', 'accredited-reinsurance-brokers', 1, '2022-08-09 16:25:22', '2022-08-09 16:25:22', 0, NULL, NULL),
(13, 'Local Reinsurance Brokers', 'Local Reinsurance Brokers', 'local-reinsurance-brokers', 1, '2022-08-27 12:57:25', '2022-08-27 12:57:25', 0, NULL, NULL),
(14, 'Local Reinsurance Company', 'Local Reinsurance Company', 'local-reinsurance-company', 1, '2022-08-27 13:54:48', '2022-08-27 13:54:48', 0, NULL, NULL),
(15, 'Bancassurance Agency', 'Bancassurance Agency', 'bancassurance-agency', 1, '2022-08-27 14:06:21', '2022-08-27 14:06:21', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_sw` varchar(255) NOT NULL,
  `content_en` text NOT NULL,
  `content_sw` text NOT NULL,
  `mime` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `iconurl` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `gallery_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `title_en`, `title_sw`, `content_en`, `content_sw`, `mime`, `path`, `url`, `filename`, `iconurl`, `slug`, `user_id`, `gallery_id`, `status`, `created_at`, `updated_at`) VALUES
(173, 'WCF Training', 'Mafunzo WCF', 'WCF Training', 'Mafunzo WCF', 'image/jpeg', '/uploads/gallery/', '', '1530193695-PICS 2.jpg', '', '1530193695-pics-2-jpg', 0, 17, 1, '2018-06-28 10:48:15', '2018-06-28 10:48:15'),
(175, 'WCF Training', 'Mafunzo WCF', 'WCF Training', 'Mafunzo WCF', 'image/jpeg', '/uploads/gallery/', '', '1530193893-PICS-4.jpg', '', '1530193893-pics-4-jpg', 0, 17, 1, '2018-06-28 10:51:33', '2018-06-28 10:51:33'),
(176, 'WCF Training', 'Mafunzo WCF', 'Mafunzo WCF', 'Mafunzo WCF', 'image/jpeg', '/uploads/gallery/', '', '1530194207-images ...jpg', '', '1530194207-images-jpg', 0, 17, 1, '2018-06-28 10:56:47', '2018-06-28 10:56:47'),
(177, 'WCF Training', 'Mafunzo WCF', 'Mafunzo WCF', 'Mafunzo WCF', 'image/jpeg', '/uploads/gallery/', '', '1530194697-PICS 1.jpg', '', '1530194697-pics-1-jpg', 0, 17, 1, '2018-06-28 11:04:57', '2018-06-28 11:04:57'),
(178, 'WCF Training', 'Mafunzo WCF', 'WCF Training', 'Mafunzo WCF', 'image/jpeg', '/uploads/gallery/', '', '1530195024-PICS 5.jpg', '', '1530195024-pics-5-jpg', 0, 17, 1, '2018-06-28 11:10:24', '2018-06-28 11:10:24'),
(180, 'Rais Dkt. Magufuli Azungumza na Jeshi la Polisi na Waendesha Mashtaka Mjini Dodoma', 'Rais Dkt. Magufuli Azungumza na Jeshi la Polisi na Waendesha Mashtaka Mjini Dodoma', 'Rais Dkt. Magufuli Azungumza na Jeshi la Polisi na Waendesha Mashtaka Mjini Dodoma', 'Rais Dkt. Magufuli Azungumza na Jeshi la Polisi na Waendesha Mashtaka Mjini Dodoma', '', '', 'https://www.youtube.com/watch?v=NQ1g-HXH0-o', '', '', '', 0, 14, 1, '2018-06-29 08:58:33', '2018-06-29 08:59:11'),
(181, 'Rais Magufuli amelitaka Jeshi la Polisi na Ofisi ya Mwendesha mashitaka kutekeleza wajibu wao.', 'https://www.youtube.com/watch?v=f3Xm-s_TqVI', 'Rais Magufuli amelitaka Jeshi la Polisi na Ofisi ya Mwendesha mashitaka kutekeleza wajibu wao.', 'Rais Magufuli amelitaka Jeshi la Polisi na Ofisi ya Mwendesha mashitaka kutekeleza wajibu wao.', '', '', 'https://www.youtube.com/watch?v=f3Xm-s_TqVI', '', '', '', 0, 14, 1, '2018-06-29 09:01:18', '2018-06-29 09:01:54'),
(182, 'Nzega District Commissioner, Godfrey Ngupura and the Director of Prosecution (DPP) Mr. Biswalo Mganga signing vistors books after the launching of the National Prosecutions Services Office for Nzega District in Tabora', 'Mkuu wa Wilaya ya Nzega Mhe. Godfrey Ngupura na Mkurugenzi wa Mashtaka (DPP) bw. Biswalo Mganga wakitia saini vitabu vya wageni baada ya uzinduzi wa Ofisi ya Taifa ya Mashitaka wilayani Nzega mkoani Tabora', 'Nzega District Commissioner, Godfrey Ngupura and the Director of Prosecution (DPP) Mr. Biswalo Mganga signing vistors books after the launching of the National Prosecutions Services Office for Nzega District in Tabora', 'Mkuu wa Wilaya ya Nzega Mhe. Godfrey Ngupura na Mkurugenzi wa Mashtaka (DPP) bw. Biswalo Mganga wakitia saini vitabu vya wageni baada ya uzinduzi wa Ofisi ya Taifa ya Mashitaka wilayani Nzega mkoani Tabora', 'image/jpeg', '/uploads/gallery/', '', '1532431070-4.jpg', '', '1532431070-4-jpg', 0, 1, 1, '2018-07-24 08:17:50', '2018-07-24 08:17:50'),
(184, 'Prime Minister Hon. Kasim Majaliwa cutting the strip as a sign of launching the Attorney General\'s office, the National Prosecution\'s Office and the Office of the of Solicitor General in the capital Dodoma. ', 'Waziri Mkuu Mhe. Kasim Majaliwa akikata utepe ikiwa ni ishara ya kuzindua ofisi ya Mwanasheria Mkuu wa Serikali, Ofisi ya Taifa ya Mashtaka na Ofisi ya Wakili Mkuu wa Serikali . Uzinduzi huo ulifanyika eneo la Chuo Kikuu cha Dodoma ambako ndiko iliko  Ofi', 'Prime Minister Hon. Kasim Majaliwa cutting the strip as a sign of launching the Attorney General\'s office, the National Prosecution\'s Office and the Office of the of Solicitor General in the capital Dodoma. ', 'Waziri Mkuu Mhe. Kasim Majaliwa akikata utepe ikiwa ni ishara ya kuzindua ofisi ya Mwanasheria Mkuu wa Serikali, Ofisi ya Taifa ya Mashtaka na Ofisi ya Wakili Mkuu wa Serikali . Uzinduzi huo ulifanyika eneo la Chuo Kikuu cha Dodoma ambako ndiko iliko  Ofisi ya Taifa ya Mashtaka kwa sasa katika jiji la Dodoma.', 'image/jpeg', '/uploads/gallery/', '', '1534750772-5.jpg', '', '1534750772-5-jpg', 0, 1, 1, '2018-08-20 04:39:32', '2018-08-20 04:39:32'),
(186, 'Minister for Constitution and Legal Affairs Hon. Prof. Palamagamba Kabudi showing a list of former directors of Public Prosecutions attached to the wall to hon. Prime Minister Mr. Kasim Majaliwa when he visited National Prosecutor\'s Office after launching', 'Waziri wa Katiba na Sheria Prof. Palamagamba Kabudi alienyoosha mkono akimuonyesha Waziri Mkuu Mhe. Kasim Majaliwa orodha ya waliopata kuwa Wakurugenzi wa Mashtaka nchini katika orodha iliyobandikwa ukutani baada ya kuzindua Ofisi ya Mwanasheria Mkuu wa S', 'Minister for Constitution and Legal Affairs Hon. Prof. Palamagamba Kabudi showing a list of former directors of Public Prosecutions attached to the wall to hon. Prime Minister Mr. Kasim Majaliwa when he visited National Prosecutor\'s Office after launching the Attorney General\'s Office, the National Prosecutor\'s Office and the Office of the Attorney General in the capital Dodoma.', 'Waziri wa Katiba na Sheria Prof. Palamagamba Kabudi alienyoosha mkono akimuonyesha Waziri Mkuu Mhe. Kasim Majaliwa orodha ya waliopata kuwa Wakurugenzi wa Mashtaka nchini katika orodha iliyobandikwa ukutani baada ya kuzindua Ofisi ya Mwanasheria Mkuu wa Serikali, Ofisi ya Taifa ya Mashtaka na Ofisi ya Wakili Mkuu wa Serikali jijini Dodoma', 'image/jpeg', '/uploads/gallery/', '', '1534751382-11.JPG', '', '1534751382-11-jpg', 0, 1, 1, '2018-08-20 04:49:43', '2018-08-20 04:49:43'),
(190, 'Director of Public Prosecution Mr. Biswalo Mganga holding white paper addresing Press in the Capital Dodoma', 'Mkurugenzi wa Mashtaka nchini (DPP) Bw. Biswalo Mganga aliyeshika karatasi akiongea na waandishi wa habari jijini Dodoma', '', '', 'image/jpeg', '/uploads/gallery/', '', '1563263839-Pix 3 DPP.jpg', '', '1563263839-pix-3-dpp-jpg', 0, 1, 1, '2019-07-16 04:57:19', '2019-07-16 04:57:19'),
(195, 'Minister for Constitution and Legal Affairs Hon. Dr. Augustine Mahiga (left) handing set of Publications to Vice President Hon. Samia Suluhu Hassan to launch them at the 10th years Annivessary of ARINSA held in Dar es Salaam at JNICC ', ' Waziri wa Katiba na Sheria Mhe. Dkt. Augustine Mahiga akimkabidhi Makamu wa Rais Mhe. Samia Suluhu Hassan Machapisho ya ARINSA ili ayazindue  wakati wa maadhimisho ya miaka 10 ya ARINSA yaliyofanyika jijini Dar es Salaam.', '', '', 'image/jpeg', '/uploads/gallery/', '', '1563268376-Arinsa 61.jpg', '', '1563268376-arinsa-61-jpg', 0, 1, 1, '2019-07-16 06:12:56', '2019-07-16 06:12:56'),
(196, 'Vice president Hon. Samia Suluhu Hassan showing a publication she lauched during the 10th year Annivessary of  ARINSA held in Dar es Salaam at Julius Nyerere International Conference Center', ' Makamu wa Rais Mhe. Samia Suluhu Hassan akionyesha kitabu alichozindua wakati wa maadhimisho ya miaka 10 ya ARINSA yaliyofanyika jijini Dar es Salaam', '', '', 'image/jpeg', '/uploads/gallery/', '', '1563268796-arinsa 31.jpg', '', '1563268796-arinsa-31-jpg', 0, 1, 1, '2019-07-16 06:19:56', '2019-07-16 06:19:56'),
(198, 'Vice President Hon. Samia Suluhu Hassan addressing 10th Anniversary Commemorations held in Dar es Salaam', 'Makamu wa Rais Mhe. Samia Suluhu Hassan akizungumza wakati wa maadhimisho ya miaka 10 ya ARINSA yaliyofanyika jijini Dar es Salaa.', '\r\n', '', 'image/jpeg', '/uploads/gallery/', '', '1563270104-arinsa 11.jpg', '', '1563270104-arinsa-11-jpg', 0, 1, 1, '2019-07-16 06:41:44', '2019-07-16 06:41:44'),
(200, 'Director of Public Prosecution Mr. Biswalo Mganga  with Permanent Secretary Treasury Mr. Dotto James holding foreign currencies seized from economic crime cases handled by the office of National prosecutions in Dar es Salaam', 'Mkurugenzi wa Mashtaka nchini (DPP) Bw. Biswalo Mganga pamoja na Katibu Mkuu Hazina Bw. Dotto James wakiwa wameshika fedha za kigeni zilizotokana na kesi za uhujumu uchumi zilizoendeshwa na Ofisi ya Taifa ya Mashtaka (NPS) na Mahakama kuamuru zitaifishwe', '', '', 'image/jpeg', '/uploads/gallery/', '', '1563271636-gold 21.jpg', '', '1563271636-gold-21-jpg', 0, 1, 1, '2019-07-16 07:07:17', '2019-07-16 07:07:17'),
(201, 'Ministers holding pieces of Gold during the event of handing over of gold, foreign currencies and germ stones which comes from economic crime cases done by DPP to the Permanent Secretary Treasury held at The Bank of Tannzania Offices in Dar es Salaam', 'Baadhi ya Mawaziri walioshuhudia tukio la kukabidhi Fedha za kigeni, Dhahabu na Madini ya vito vilivyotokana na kesi za uhujumu uchumi  kulikofanywa na DPP kwa Katibu Mkuu Hazina jijini Dar es Salaam', '', '', 'image/jpeg', '/uploads/gallery/', '', '1563272178-gold 11.jpg', '', '1563272178-gold-11-jpg', 0, 1, 1, '2019-07-16 07:16:18', '2019-07-16 07:16:18'),
(203, 'KENYA WAKABIDHI DHAHABU KWA MHE. RAIS', 'KENYA WAKABIDHI DHAHABU KWA MHE. RAIS', 'Wawakilishi wa Jamhuri ya Kenya wakimkabidhi Mheshimiwa Rais Dkt. John Pombe Magufuli  dhahabu zilizokua zimetoroshwa kutoka Tanzania kwenda nchini Kenya ambazo Kenya walizirudisha nchini ili zitumike kama kielelezo kwenye kesi iliyofunguliwa Mwanza', 'Wawakilishi wa Jamhuri ya Kenya wakimkabidhi Mheshimiwa Rais Dkt. John Pombe Magufuli  dhahabu zilizokua zimetoroshwa kutoka Tanzania kwenda nchini Kenya ambazo Kenya walizirudisha nchini ili zitumike kama kielelezo kwenye kesi iliyofunguliwa Mwanza', 'image/jpeg', '/uploads/gallery/', '', '1566992382-IMG-20190822-WA0091.jpg', '', '1566992382-img-20190822-wa0091-jpg', 0, 1, 1, '2019-08-28 08:39:42', '2019-08-28 08:39:42'),
(204, 'Alichosema Mkurugenzi wa Mashtaka Mr Biswalo Mganga   Baada ya Mheshimiwa Rais Dkt JohnPombe Magufuli  Kuwaombea Msamaha Wahujumu Uchumi', 'Alichosema Mkurugenzi wa Mashtaka Mr Biswalo Mganga   Baada ya Mheshimiwa Rais Dkt JohnPombe Magufuli  Kuwaombea Msamaha Wahujumu Uchumi', 'The Director of Public Prosecutions (DPP), Biswalo Mganga said his office was ready to act on the advice of President Magufuli who wanted to be heard by detainees facing economic misconduct if they were willing to confess and return government money to be pardoned.\r\nThe DPP said this was possible if the defendant personally wrote a letter to the Prosecutor\'s Office and insisted that the letter should be written by the suspect himself in prison and not the lawyer.\r\n\"The order is that, the inmate himself is required to write a letter to the prison officer acknowledging the offense and asking for repentance as soon as possible and we will take action.\r\n“Only the defendant should write a letter, not an attorney. You know the lawyer can change and even suspect that I have not sent him to do what he did on my behalf, that is why the suspects who always apologize and confess write their own handwriting through the head of the prison ”said DPP Mganga.\r\nSpeaking yesterday during the swearing in of some of his elected officials, President Magufuli called on the DDP within seven days to look into the possibility of pardoning some of the long-held suspects for economic misconduct \r\n', 'Mkurugenzi wa Mashtaka Nchini (DPP), Biswalo Mganga amesema ofisi yake ipo tayari kutekeleza ushauri wa Rais Magufuli aliyetaka kusikilizwa kwa mahabusu wanaokabiliwa na makosa ya uhujumu uchumi iwapo watakuwa tayari kukiri na kurejesha fedha za serikali wasamehewe.\r\nMganga amesema jambo hilo linawezekana endapo mshtakiwa mwenyewe ataiandikia ofisi yake barua kupitia kwa Mkuu wa Gereza na kusisitiza kuwa barua hiyo inapaswa kuandikwa na mtuhumiwa mwenyewe aliye gerezani na siyo wakili.\r\n“Utaratibu ni kwamba, mtuhumiwa mwenyewe aliyeko mahabusu anatakiwa aniandikie barua kupitia kwa mkuu wa gereza akikiri kosa na kuomba kutubu haraka iwezekanavyo na sisi tutachukua hatua.\r\n“Ni mtuhumiwa mwenyewe ndiye anatakiwa kuandika barua, siyo wakili. Unajua wakili anaweza kubadilika na hata mtuhumiwa kumkana kuwa sijamtuma afanye alichofanya kwa niaba yangu, ndiyo maana mara zote watuhumiwa wanaoomba msamaha na kukiri huandika barua wenyewe kwa mkono wao kupitia kwa mkuu wa gereza” Amesema DPP Mganga.\r\nAkizungumza jana wakati wa kuwaapisha baadhi ya viongozi aliowateua, Rais Magufuli alimuomba DDP ndani ya siku saba kuangalia uwezekano wa kusamehewa baadhi ya watuhumiwa waliokaa muda mrefu mahabusu kwa makosa ya uhujumu uchumi endapo watatubu, akisema anatamani kuona Watanzania wote wanaishi huru ili kushiriki ujenzi wa taifa.\r\n\r\n', 'image/png', '/uploads/gallery/', '', '1569316475-DPP.png', '', '1569316475-dpp-png', 0, 1, 1, '2019-09-24 06:14:35', '2019-09-24 07:03:54'),
(205, 'Mkurugenzi wa Mashtaka (DPP) Bw. Biswalo Mganga akizungumza katika hafla ya kumkabidhi taarifa ya utekelezaji Mhe. Rais Ikulu jijini Dar es Salaam', 'Mkurugenzi wa Mashtaka (DPP) Bw. Biswalo Mganga akizungumza katika hafla ya kumkabidhi taarifa ya utekelezaji Mhe. Rais Ikulu jijini Dar es Salaam', 'Mkurugenzi wa Mashtaka (DPP) Bw. Biswalo Mganga akizungumza katika hqafla ya kumkabidhi taarifa ya utekelezaji wa ushauri alioutoa  Rais wa Jamhuri ya Muungano wa Tanzania Dkt. John Magufuli wa kuwasamehe watuhumiwa wa uhujumu uchumi walio tayari kutubu na kurejesha fedha na mali kwenye hafla fupi iliyofanyika Ikulu jijini Dar es salaam Septemba 30, 2019', 'Mkurugenzi wa Mashtaka (DPP) Bw. Biswalo Mganga akizungumza katika hqafla ya kumkabidhi taarifa ya utekelezaji wa ushauri alioutoa  Rais wa Jamhuri ya Muungano wa Tanzania Dkt. John Magufuli wa kuwasamehe watuhumiwa wa uhujumu uchumi walio tayari kutubu na kurejesha fedha na mali kwenye hafla fupi iliyofanyika Ikulu jijini Dar es salaam Septemba 30, 2019', 'image/jpeg', '/uploads/gallery/', '', '1569919317-9.jpg', '', '1569919317-9-jpg', 0, 1, 1, '2019-10-01 05:41:58', '2019-10-01 05:41:58'),
(206, 'Rais wa Jamhuri ya Muungano wa Tanzania Dkt. John Pombe Magufuli akiangalia taarifa aliyokabidhiwa na Mkurugenzi wa Mashtaka (DPP)Biswalo Mganga', 'Rais wa Jamhuri ya Muungano wa Tanzania Dkt. John Pombe Magufuli akiangalia taarifa aliyokabidhiwa na Mkurugenzi wa Mashtaka (DPP)Biswalo Mganga', ' Rais wa Jamhuri ya Muungano wa Tanzania Dkt. John Pombe Magufuli akiangalia taarifa ya utekelezaji wa ushauri alioutoa wa kuwasamehe watuhumiwa wa uhujumu uchumi walio tayari kutubu na kurejesha fedha na malialiyoipokea kutoka kwa Mkurugenzi wa Mashtaka (DPP) Bw. Biswalo Mganga  kwenye hafla fupi iliyofanyika Ikulu jijini Dar es salaam Septemba 30, 2019.', ' Rais wa Jamhuri ya Muungano wa Tanzania Dkt. John Pombe Magufuli akiangalia taarifa ya utekelezaji wa ushauri alioutoa wa kuwasamehe watuhumiwa wa uhujumu uchumi walio tayari kutubu na kurejesha fedha na malialiyoipokea kutoka kwa Mkurugenzi wa Mashtaka (DPP) Bw. Biswalo Mganga  kwenye hafla fupi iliyofanyika Ikulu jijini Dar es salaam Septemba 30, 2019.', 'image/jpeg', '/uploads/gallery/', '', '1569919504-2.jpg', '', '1569919504-2-jpg', 0, 1, 1, '2019-10-01 05:45:05', '2019-10-01 05:45:05'),
(207, 'Mkurugenzi wa Mashtaka (DPP) Bw. Biswalo Mganga akizungumza wakati wa kukabidhi taarifa yake kwa Mhe. Rais Ikulu jijini Dar es salaam Septemba 30,2019', 'Mkurugenzi wa Mashtaka (DPP) Bw. Biswalo Mganga akizungumza wakati wa kukabidhi taarifa yake kwa Mhe. Rais Ikulu jijini Dar es salaam Septemba 30,2019', 'Mkurugenzi wa Mashtaka (DPP) Bw. Biswalo Mganga akizungumza katika hafla ya kumkabidhi taarifa ya utekelezaji wa ushauri alioutoa  Rais wa Jamhuri ya Muungano wa Tanzania Dkt. John Magufuli wa kuwasamehe watuhumiwa wa uhujumu uchumi walio tayari kutubu na kurejesha fedha na mali kwenye hafla fupi iliyofanyika Ikulu jijini Dar es salaam Septemba 30, 2019', 'Mkurugenzi wa Mashtaka (DPP) Bw. Biswalo Mganga akizungumza katika hafla ya kumkabidhi taarifa ya utekelezaji wa ushauri alioutoa  Rais wa Jamhuri ya Muungano wa Tanzania Dkt. John Magufuli wa kuwasamehe watuhumiwa wa uhujumu uchumi walio tayari kutubu na kurejesha fedha na mali kwenye hafla fupi iliyofanyika Ikulu jijini Dar es salaam Septemba 30, 2019', 'image/jpeg', '/uploads/gallery/', '', '1569919596-8.jpg', '', '1569919596-8-jpg', 0, 1, 1, '2019-10-01 05:46:37', '2019-10-01 05:46:37'),
(208, 'Rais wa Jamhuri ya Muungano wa Tanzania Dkt. John Pombe Magufuli akiwa na Mkurugenzi wa Mashtaka (DPP) Bw. Biswalo Mganga katika picha ya pamoja na ujumbe wake mara baada ya kupokea taarifa ya DPP Ikulu Dar es Salaam', 'Rais wa Jamhuri ya Muungano wa Tanzania Dkt. John Pombe Magufuli akiwa na Mkurugenzi wa Mashtaka (DPP) Bw. Biswalo Mganga katika picha ya pamoja na ujumbe wake mara baada ya kupokea taarifa ya DPP Ikulu Dar es Salaam', 'Rais wa Jamhuri ya Muungano wa Tanzania Dkt. John Pombe Magufuli akiwa na Mkurugenzi wa Mashtaka (DPP) Bw. Biswalo Mganga katika picha ya pamoja na ujumbe wake mara baada ya kupokea taarifa ya utekelezaji wa ushauri alioutoa wa kuwasamehe watuhumiwa wa uhujumu uchumi walio tayari kutubu na kurejesha fedha na mali kwenye hafla fupi iliyofanyika Ikulu jijini Dar es salaam Septemba 30, 2019.', 'Rais wa Jamhuri ya Muungano wa Tanzania Dkt. John Pombe Magufuli akiwa na Mkurugenzi wa Mashtaka (DPP) Bw. Biswalo Mganga katika picha ya pamoja na ujumbe wake mara baada ya kupokea taarifa ya utekelezaji wa ushauri alioutoa wa kuwasamehe watuhumiwa wa uhujumu uchumi walio tayari kutubu na kurejesha fedha na mali kwenye hafla fupi iliyofanyika Ikulu jijini Dar es salaam Septemba 30, 2019.\r\n\r\n', 'image/jpeg', '/uploads/gallery/', '', '1569919685-12.jpg', '', '1569919685-12-jpg', 0, 1, 1, '2019-10-01 05:48:05', '2019-10-01 05:48:05'),
(209, 'Mkurugenzi wa Mashtaka nchini (DPP) Bw. Biswalo Mganga akizungumza wakati wa kukabidhi kwa Katibu Mkuu Wiizara ya Fedha na Mipango Bw. Dotto James mali  zilizotaifishwa kutokana na kesi zinazohusiana na uhalifu  na fedha zilizolipwa kutokana na kesi za ma', 'Mkurugenzi wa Mashtaka nchini (DPP) Bw. Biswalo Mganga akizungumza wakati wa kukabidhi kwa Katibu Mkuu Wiizara ya Fedha na Mipango Bw. Dotto James mali  zilizotaifishwa kutokana na kesi zinazohusiana na uhalifu  na fedha zilizolipwa kutokana na kesi za ma', 'Mkurugenzi wa Mashtaka nchini (DPP) Bw. Biswalo Mganga akizungumza wakati wa kukabidhi kwa Katibu Mkuu Wiizara ya Fedha na Mipango Bw. Dotto James mali  zilizotaifishwa kutokana na kesi zinazohusiana na uhalifu  na fedha zilizolipwa kutokana na kesi za madini zilizopo katika akaunti ya AFR katika Benki Kuu ya Tanzani zenye thamani ya Tsh Bilioni 58.6 kushoto ni Waziri wa Madini Mhe. Dotto Biteko na Katibu Mkuu wa Wizara ya Katiba na Sheria Prof. Sifuni Mchome.   \r\n\r\n\r\n', 'Mkurugenzi wa Mashtaka nchini (DPP) Bw. Biswalo Mganga akizungumza wakati wa kukabidhi kwa Katibu Mkuu Wiizara ya Fedha na Mipango Bw. Dotto James mali  zilizotaifishwa kutokana na kesi zinazohusiana na uhalifu  na fedha zilizolipwa kutokana na kesi za madini zilizopo katika akaunti ya AFR katika Benki Kuu ya Tanzani zenye thamani ya Tsh Bilioni 58.6 kushoto ni Waziri wa Madini Mhe. Dotto Biteko na Katibu Mkuu wa Wizara ya Katiba na Sheria Prof. Sifuni Mchome.   \r\n\r\n\r\n', 'image/jpeg', '/uploads/gallery/', '', '1581500041-IMG_7746.jpg', '', '1581500041-img-7746-jpg', 0, 1, 1, '2020-02-12 06:34:02', '2020-02-12 06:34:02'),
(211, 'Mawaziri mhe. Dotto Biteko wa Madini wa pili kulia, Mhe. Dkt. Agustine Mahiga wa Katiba na Sheria na Mhe. Dkt. Philip Mpango wa Fedha na Mipango wakionesha madini yaliyorejeshwa kutoka nchini Kenya  kutoka kulia ni Mkurugenzi wa Mashtaka nchini (DPP) Bw. ', 'Mawaziri mhe. Dotto Biteko wa Madini wa pili kulia, Mhe. Dkt. Agustine Mahiga wa Katiba na Sheria na Mhe. Dkt. Philip Mpango wa Fedha na Mipango wakionesha madini yaliyorejeshwa kutoka nchini Kenya  kutoka kulia ni Mkurugenzi wa Mashtaka nchini (DPP) Bw. ', 'Mawaziri mhe. Dotto Biteko wa Madini wa pili kulia, Mhe. Dkt. Agustine Mahiga wa Katiba na Sheria na Mhe. Dkt. Philip Mpango wa Fedha na Mipango wakionesha madini yaliyorejeshwa kutoka nchini Kenya  kutoka kulia ni Mkurugenzi wa Mashtaka nchini (DPP) Bw. Biswalo Mganga na Katibu Mkuu wa Wizara ya Katiba na Sheria Prof. Sifuni Mchome, kushoto ni Katibu Mkuu wa Wizara ya Fedha na Mipango Bw. Dotto James na Gavana wa Benki Kuu ya Tanzania Profesa Florens Luoga.   \r\n\r\n', 'Mawaziri mhe. Dotto Biteko wa Madini wa pili kulia, Mhe. Dkt. Agustine Mahiga wa Katiba na Sheria na Mhe. Dkt. Philip Mpango wa Fedha na Mipango wakionesha madini yaliyorejeshwa kutoka nchini Kenya  kutoka kulia ni Mkurugenzi wa Mashtaka nchini (DPP) Bw. Biswalo Mganga na Katibu Mkuu wa Wizara ya Katiba na Sheria Prof. Sifuni Mchome, kushoto ni Katibu Mkuu wa Wizara ya Fedha na Mipango Bw. Dotto James na Gavana wa Benki Kuu ya Tanzania Profesa Florens Luoga.   \r\n\r\n', 'image/jpeg', '/uploads/gallery/', '', '1581500214-IMG_7747.jpg', '', '1581500214-img-7747-jpg', 0, 1, 1, '2020-02-12 06:36:54', '2020-02-12 06:36:54'),
(212, 'Baadhi  ya vipande vya dhahabu vikiwa katika begi maalum.    ', 'Baadhi  ya vipande vya dhahabu vikiwa katika begi maalum.    ', 'Baadhi  ya vipande vya dhahabu vikiwa katika begi maalum.  \r\n \r\n', 'Baadhi  ya vipande vya dhahabu vikiwa katika begi maalum.  \r\n \r\n', 'image/jpeg', '/uploads/gallery/', '', '1581500268-IMG_7750.jpg', '', '1581500268-img-7750-jpg', 0, 1, 1, '2020-02-12 06:37:48', '2020-02-12 06:37:48'),
(213, 'Waziri wa Sheria na Katibu Mhe. Dkt. Agustine Mahiga akizungumza katika makabidhiano hayo.   Gavana wa Benki Kuu ya Tanzania Prof. Florens Luoga akizungumza neno wakati wa hacks ya makabidhiano ya fedha na Mali hizo kwa Serikali yaliyofanyika katika kumbi', 'Waziri wa Sheria na Katibu Mhe. Dkt. Agustine Mahiga akizungumza katika makabidhiano hayo.   Gavana wa Benki Kuu ya Tanzania Prof. Florens Luoga akizungumza neno wakati wa hacks ya makabidhiano ya fedha na Mali hizo kwa Serikali yaliyofanyika katika kumbi', 'Waziri wa Sheria na Katibu Mhe. Dkt. Agustine Mahiga akizungumza katika makabidhiano hayo.   Gavana wa Benki Kuu ya Tanzania Prof. Florens Luoga akizungumza neno wakati wa hacks ya makabidhiano ya fedha na Mali hizo kwa Serikali yaliyofanyika katika kumbi za benki ili zihifadhiwe na benki hiyo.  \r\n\r\n', 'Waziri wa Sheria na Katibu Mhe. Dkt. Agustine Mahiga akizungumza katika makabidhiano hayo.   Gavana wa Benki Kuu ya Tanzania Prof. Florens Luoga akizungumza neno wakati wa hacks ya makabidhiano ya fedha na Mali hizo kwa Serikali yaliyofanyika katika kumbi za benki ili zihifadhiwe na benki hiyo.  \r\n\r\n', 'image/jpeg', '/uploads/gallery/', '', '1581500313-IMG_7753.jpg', '', '1581500313-img-7753-jpg', 0, 1, 1, '2020-02-12 06:38:33', '2020-02-12 06:38:33'),
(214, 'Waziri wa Madini Mhe. Dotto Biteko akizungumza katika makabidhiano hayo yaliofanyika kwenye ukumbi wa Benki Kuu ya Tanzania BoT jijini Dar es salaam.     ', 'Waziri wa Madini Mhe. Dotto Biteko akizungumza katika makabidhiano hayo yaliofanyika kwenye ukumbi wa Benki Kuu ya Tanzania BoT jijini Dar es salaam.     ', 'Waziri wa Madini Mhe. Dotto Biteko akizungumza katika makabidhiano hayo yaliofanyika kwenye ukumbi wa Benki Kuu ya Tanzania BoT jijini Dar es salaam.  \r\n\r\n \r\n', 'Waziri wa Madini Mhe. Dotto Biteko akizungumza katika makabidhiano hayo yaliofanyika kwenye ukumbi wa Benki Kuu ya Tanzania BoT jijini Dar es salaam.  \r\n\r\n \r\n', 'image/jpeg', '/uploads/gallery/', '', '1581500370-IMG_7751.jpg', '', '1581500370-img-7751-jpg', 0, 1, 1, '2020-02-12 06:39:30', '2020-02-12 06:39:30'),
(215, 'Waziri wa Fedha na Mipango Mhe. Dkt. Philip Mpango akizungumza katika hafla ya makabidhiano hayo.    ', 'Waziri wa Fedha na Mipango Mhe. Dkt. Philip Mpango akizungumza katika hafla ya makabidhiano hayo.    ', 'Waziri wa Fedha na Mipango Mhe. Dkt. Philip Mpango akizungumza katika hafla ya makabidhiano hayo.    \r\n\r\n', 'Waziri wa Fedha na Mipango Mhe. Dkt. Philip Mpango akizungumza katika hafla ya makabidhiano hayo.    \r\n\r\n', 'image/jpeg', '/uploads/gallery/', '', '1581500409-IMG_7752.jpg', '', '1581500409-img-7752-jpg', 0, 1, 1, '2020-02-12 06:40:09', '2020-02-12 06:40:09'),
(216, 'Makasha mbalimbali yaliyohifadhi dhahabu na fedha yakiigizwa ukumbini kabla ya kukabidhiwa rasmi.    Baadhi ya viongozi wa taasisi mbalimbali za Serikali waliohudhuria katika hafla hiyo Iliyofanyika jijini Dar Es Salaam.    ', 'Makasha mbalimbali yaliyohifadhi dhahabu na fedha yakiigizwa ukumbini kabla ya kukabidhiwa rasmi.    Baadhi ya viongozi wa taasisi mbalimbali za Serikali waliohudhuria katika hafla hiyo Iliyofanyika jijini Dar Es Salaam.    ', 'Makasha mbalimbali yaliyohifadhi dhahabu na fedha yakiigizwa ukumbini kabla ya kukabidhiwa rasmi.    Baadhi ya viongozi wa taasisi mbalimbali za Serikali waliohudhuria katika hafla hiyo Iliyofanyika jijini Dar Es Salaam.  \r\n \r\n', 'Makasha mbalimbali yaliyohifadhi dhahabu na fedha yakiigizwa ukumbini kabla ya kukabidhiwa rasmi.    Baadhi ya viongozi wa taasisi mbalimbali za Serikali waliohudhuria katika hafla hiyo Iliyofanyika jijini Dar Es Salaam.  \r\n \r\n', 'image/jpeg', '/uploads/gallery/', '', '1581500453-IMG_7755.jpg', '', '1581500453-img-7755-jpg', 0, 1, 1, '2020-02-12 06:40:53', '2020-02-12 06:40:53'),
(217, 'Mkurugenzi wa Mashtaka nchini DPP  Bw. Biswalo Mganga akionesha moja ya kipande cha dhahabu ambacho Ofisi yake imeikabidhi kwa Serikali baada ya kutaifishwa kwa amri ya Mahakama ', 'Mkurugenzi wa Mashtaka nchini DPP  Bw. Biswalo Mganga akionesha moja ya kipande cha dhahabu ambacho Ofisi yake imeikabidhi kwa Serikali baada ya kutaifishwa kwa amri ya Mahakama ', 'Mkurugenzi wa Mashtaka nchini DPP \r\nBw. Biswalo Mganga akionesha moja ya kipande cha dhahabu ambacho Ofisi yake imeikabidhi kwa Serikali baada ya kutaifishwa kwa amri ya Mahakama alipokuwa akimkabidhi rasmi Katibu Mkuu Wizara ya Fedha na Mipango Bw. Dotto James jijini Dar Es Salaam.  \r\n', 'Mkurugenzi wa Mashtaka nchini DPP \r\nBw. Biswalo Mganga akionesha moja ya kipande cha dhahabu ambacho Ofisi yake imeikabidhi kwa Serikali baada ya kutaifishwa kwa amri ya Mahakama alipokuwa akimkabidhi rasmi Katibu Mkuu Wizara ya Fedha na Mipango Bw. Dotto James jijini Dar Es Salaam.  \r\n', 'image/jpeg', '/uploads/gallery/', '', '1581664281-IIMG_7745.jpg', '', '1581664281-iimg-7745-jpg', 0, 1, 1, '2020-02-14 04:11:21', '2020-02-14 04:11:21'),
(218, ' Mkurugenzi wa Mashtaka nchini Bw Biswalo Mganga,aliongoza timu ya Mawakili wa  Serikali Bw Shadrack Kimaro ambaye pia  ni Mkurugenzi Msaidizi na Wakili wa Serikali Mwandamizi Bw Christopher Msigwa', ' Mkurugenzi wa Mashtaka nchini Bw Biswalo Mganga ,aliongoza timu ya Mawakili wa  Serikali Bw Shadrack Kimaro ambaye pia ni Mkurugenzi Msaidizi na Wakili wa Serikali Mwandamizi Bw Christopher Msigwa . ', 'Mnamo tarehe 30 Machi, 2020 Mkurugenzi wa Mashtaka nchini,aliongoza timu ya Mawakili wa  Serikali bwana Shadrack Kimaro ambaye pia ni Mkurugenzi Msaidizi anayeshughulikia Utaifishaji wa mali zitokanazo na Uhalifu na Wakili wa Serikali Mwandamizi bwana Chiristopher Msigwa kuwasilisisha hoja za Jamhuri katika Shauri la Maombi ya kutaifisha jumla ya  Shilingi za kitanzania  Bilioni kumi na sita , million miasaba ishirin, laki nane na hamsini na nane elfu mia tano sabini na tisa na senti arobaini na saba (16,720,858,579.47) ambazo ni mazalia ya uhalifu unaotokana na Mchezo  wa Upatu ambao unaokatazwa kisheria .\r\nMaombi hayo yalisikilizwa mbele ya Mheshimiwa Jaji E.Luvanda wa Mahakama Kuu Divisheni ya Makosa ya Uhujumu Uchumi na Rushwa. Imekuwa ni kawaida kwa Mkurugenzi wa Mashtaka nchini kuinuka yeye mwenyewe na kwenda Mahakamani kuendesha kesi akiambatana na Mawakili wa Serikali.Utaratibu huu ni mzuri kwa kuwa unawajengea Mawakili wa Serikali wa Ofisi ya Taifa ya Mashtaka kujiamini zaidi. \r\nMahakama kwa upande wake imepangam kutoa uamuzi dhidi ya maombi hayo mnamo tarehe 3 April,2020.\r\n', 'Mnamo tarehe 30 Machi, 2020 Mkurugenzi wa Mashtaka nchini,aliongoza timu ya Mawakili wa  Serikali bwana Shadrack Kimaro ambaye pia ni Mkurugenzi Msaidizi anayeshughulikia Utaifishaji wa mali zitokanazo na Uhalifu na Wakili wa Serikali Mwandamizi bwana Chiristopher Msigwa kuwasilisisha hoja za Jamhuri katika Shauri la Maombi ya kutaifisha jumla ya  Shilingi za kitanzania  Bilioni kumi na sita , million miasaba ishirin, laki nane na hamsini na nane elfu mia tano sabini na tisa na senti arobaini na saba (16,720,858,579.47) ambazo ni mazalia ya uhalifu unaotokana na Mchezo  wa Upatu ambao unaokatazwa kisheria .\r\nMaombi hayo yalisikilizwa mbele ya Mheshimiwa Jaji E.Luvanda wa Mahakama Kuu Divisheni ya Makosa ya Uhujumu Uchumi na Rushwa. Imekuwa ni kawaida kwa Mkurugenzi wa Mashtaka nchini kuinuka yeye mwenyewe na kwenda Mahakamani kuendesha kesi akiambatana na Mawakili wa Serikali.Utaratibu huu ni mzuri kwa kuwa unawajengea Mawakili wa Serikali wa Ofisi ya Taifa ya Mashtaka kujiamini zaidi. \r\nMahakama kwa upande wake imepangam kutoa uamuzi dhidi ya maombi hayo mnamo tarehe 3 April,2020.\r\n', 'image/jpeg', '/uploads/gallery/', '', '1585649268-IMG-20200331-WA0038.jpg', '', '1585649268-img-20200331-wa0038-jpg', 0, 1, 1, '2020-03-31 07:07:49', '2020-03-31 07:07:49'),
(229, 'Mkurugenzi  wa Mashtaka  Nchini  (DPP)   Bw: Biswalo E.K  Mganga akikabidhiwa vifaa vya TEHAMA kutoka   Mamlaka ya  Mawasiliano  Tanzania (TCRA) ', 'Mkurugenzi  wa Mashtaka  Nchini  (DPP)   Bw: Biswalo E.K  Mganga akikabidhiwa vifaa vya TEHAMA kutoka   Mamlaka ya  Mawasiliano  Tanzania (TCRA) ', 'Mkurugenzi  wa Mashtaka  Nchini  (DPP)   Bw: Biswalo E.K  Mganga akikabidhiwa vifaa vya TEHAMA kutoka   Mamlaka ya  Mawasiliano  Tanzania (TCRA)  katika hafla fupi iliyofanyika katika Ofisi ya Taifa ya Mashtaka  mjini Dodoma. Kulia ni Mkurugenzi  wa  Sheria  wa TCRA  Bw: Joannes Karungura', 'Mkurugenzi  wa Mashtaka  Nchini  (DPP)   Bw: Biswalo E.K  Mganga akikabidhiwa vifaa vya TEHAMA kutoka   Mamlaka ya  Mawasiliano  Tanzania (TCRA)  katika hafla fupi iliyofanyika katika Ofisi ya Taifa ya Mashtaka  mjini Dodoma. Kulia ni Mkurugenzi  wa  Sheria  wa TCRA  Bw: Joannes Karungura', 'image/jpeg', '/uploads/gallery/', '', '1590590014-IMG-20200527-WA0093.jpg', '', '1590590014-img-20200527-wa0093-jpg', 0, 1, 1, '2020-05-27 11:33:34', '2020-05-27 11:33:34'),
(230, 'Dhahabu kiasi cha kilogramu 27.4 yenye thamani ya shillingi  2.968 Bilioni imetaifishwa  tarehe 16/6/2020  wilayani Tarime ', 'Dhahabu kiasi cha kilogramu 27.4 yenye thamani ya shillingi  2.968 Bilioni imetaifishwa  tarehe 16/6/2020  wilayani Tarime ', 'Dhahabu kiasi cha kilogramu 27.4 yenye thamani ya TZS 2.968 Bilioni ambayo imetaifishwa mnamo tarehe 16/6/2020 baada ya Ofisi ya Mashtaka Wilayani Tarime kumfikisha Mahakamani  mshitakiwa Bwaweshi Gandecha na Mahakama kutoa amri ya kutaifisha dhahabu hiyo na pia kuagiza mshitakiwa huyo kulipa faini na fidia inayofikia TZS 315 milioni', 'Dhahabu kiasi cha kilogramu 27.4 yenye thamani ya TZS 2.968 Bilioni ambayo imetaifishwa mnamo tarehe 16/6/2020 baada ya Ofisi ya Mashtaka Wilayani Tarime kumfikisha Mahakamani  mshitakiwa Bwaweshi Gandecha na Mahakama kutoa amri ya kutaifisha dhahabu hiyo na pia kuagiza mshitakiwa huyo kulipa faini na fidia inayofikia TZS 315 milioni', 'image/jpeg', '/uploads/gallery/', '', '1592542777-IMG-20200618-WA0020.jpg', '', '1592542777-img-20200618-wa0020-jpg', 0, 1, 1, '2020-06-19 01:59:37', '2020-06-19 01:59:37'),
(231, 'Dhahabu kiasi cha kilogramu 27.4 yenye thamani ya shillingi  2.968 Bilioni imetaifishwa  tarehe 16/6/2020  wilayani Tarime', 'Dhahabu kiasi cha kilogramu 27.4 yenye thamani ya shillingi  2.968 Bilioni imetaifishwa  tarehe 16/6/2020  wilayani Tarime', 'Dhahabu kiasi cha kilogramu 27.4 yenye thamani ya TZS 2.968 Bilioni ambayo imetaifishwa mnamo tarehe 16/6/2020 baada ya Ofisi ya Mashtaka Wilayani Tarime kumfikisha Mahakamani  mshitakiwa Bwaweshi Gandecha na Mahakama kutoa amri ya kutaifisha dhahabu hiyo na pia kuagiza mshitakiwa huyo kulipa faini na fidia inayofikia TZS 315 milioni', 'Dhahabu kiasi cha kilogramu 27.4 yenye thamani ya TZS 2.968 Bilioni ambayo imetaifishwa mnamo tarehe 16/6/2020 baada ya Ofisi ya Mashtaka Wilayani Tarime kumfikisha Mahakamani  mshitakiwa Bwaweshi Gandecha na Mahakama kutoa amri ya kutaifisha dhahabu hiyo na pia kuagiza mshitakiwa huyo kulipa faini na fidia inayofikia TZS 315 milioni', 'image/jpeg', '/uploads/gallery/', '', '1592542976-IMG-20200618-WA0021.jpg', '', '1592542976-img-20200618-wa0021-jpg', 0, 1, 1, '2020-06-19 02:02:56', '2020-06-19 02:02:56'),
(232, 'Dhahabu kiasi cha kilogramu 27.4 yenye thamani ya shillingi  2.968 Bilioni imetaifishwa  tarehe 16/6/2020  wilayani Tarime', 'Dhahabu kiasi cha kilogramu 27.4 yenye thamani ya shillingi  2.968 Bilioni imetaifishwa  tarehe 16/6/2020  wilayani Tarime', 'Dhahabu kiasi cha kilogramu 27.4 yenye thamani ya TZS 2.968 Bilioni ambayo imetaifishwa mnamo tarehe 16/6/2020 baada ya Ofisi ya Mashtaka Wilayani Tarime kumfikisha Mahakamani  mshitakiwa Bwaweshi Gandecha na Mahakama kutoa amri ya kutaifisha dhahabu hiyo na pia kuagiza mshitakiwa huyo kulipa faini na fidia inayofikia TZS 315 milioni', 'Dhahabu kiasi cha kilogramu 27.4 yenye thamani ya TZS 2.968 Bilioni ambayo imetaifishwa mnamo tarehe 16/6/2020 baada ya Ofisi ya Mashtaka Wilayani Tarime kumfikisha Mahakamani  mshitakiwa Bwaweshi Gandecha na Mahakama kutoa amri ya kutaifisha dhahabu hiyo na pia kuagiza mshitakiwa huyo kulipa faini na fidia inayofikia TZS 315 milioni', 'image/jpeg', '/uploads/gallery/', '', '1592543136-IMG-20200618-WA0023.jpg', '', '1592543136-img-20200618-wa0023-jpg', 0, 1, 1, '2020-06-19 02:05:36', '2020-06-19 02:05:36'),
(233, 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga na Wakili Mkuu wa Serikali Dkt Clement Mashamba', 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga na Wakili Mkuu wa Serikali Dkt Clement Mashamba', 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga (kulia), akiwa pamoja na Wakili Mkuu wa Serikali(Solicitor General) Dkt Clement Mashamba(kushoto), wakiongoza jopo la Mawakili wa Serikali katika Mahakama ya Rufaa ya Tanzania iliyopo Jijini Dar es salaam wakati wa kusikilizwa kwa Rufaa ya Serikali kupinga uamuzi wa Mahakama kuu uliotolewa tarehe 6/07/2020 kufuta kifungu cha 148(5) cha Sheria ya mwenendo wa Mashauri ya Jinai kinachozuia dhamana kwa baadhi ya makosa.', 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga (kulia), akiwa pamoja na Wakili Mkuu wa Serikali(Solicitor General) Dkt Clement Mashamba(kushoto), wakiongoza jopo la Mawakili wa Serikali katika Mahakama ya Rufaa ya Tanzania iliyopo Jijini Dar es salaam wakati wa kusikilizwa kwa Rufaa ya Serikali kupinga uamuzi wa Mahakama kuu uliotolewa tarehe 6/07/2020 kufuta kifungu cha 148(5) cha Sheria ya mwenendo wa Mashauri ya Jinai kinachozuia dhamana kwa baadhi ya makosa.', 'image/jpeg', '/uploads/gallery/', '', '1594280719-IMG-20200709-WA0044.jpg', '', '1594280719-img-20200709-wa0044-jpg', 0, 1, 1, '2020-07-09 04:45:19', '2020-07-09 04:45:19'),
(234, 'Jopo la Mawakili wa Serikali likiongozwa na Mkurugenzi wa Mashtaka Bw. Biswalo Mganga ', 'Jopo la Mawakili wa Serikali likiongozwa na Mkurugenzi wa Mashtaka Bw. Biswalo Mganga ', 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga  akiwa pamoja na Wakili Mkuu wa Serikali Dkt Clement Mashamba  wakiongoza jopo la Mawakili wa Serikali katika Mahakama ya Rufaa ya Tanzania iliyopo Jijini Dar es salaam wakati wa kusikilizwa kwa Rufaa ya Serikali kupinga uamuzi wa Mahakama kuu uliotolewa tarehe 6/07/2020 kufuta kifungu cha 148(5) cha Sheria ya mwenendo wa Mashauri ya Jinai kinachozuia dhamana kwa baadhi ya makosa.', 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga (kulia), akiwa pamoja na Wakili Mkuu wa Serikali(Solicitor General) Dkt Clement Mashamba(kushoto), wakiongoza jopo la Mawakili wa Serikali katika Mahakama ya Rufaa ya Tanzania iliyopo Jijini Dar es salaam wakati wa kusikilizwa kwa Rufaa ya Serikali kupinga uamuzi wa Mahakama kuu uliotolewa tarehe 6/07/2020 kufuta kifungu cha 148(5) cha Sheria ya mwenendo wa Mashauri ya Jinai kinachozuia dhamana kwa baadhi ya makosa.', 'image/jpeg', '/uploads/gallery/', '', '1594281440-IMG-20200709-WA0039.jpg', '', '1594281440-img-20200709-wa0039-jpg', 0, 1, 1, '2020-07-09 04:57:20', '2020-07-09 04:57:20'),
(237, 'Jopo la Mawakili wa Serikali', 'Jopo Mawakili wa serikali', 'Mawakili wa serikali walioshIriki katika kesi ya kufutwa  kwa kifungu cha 148(5) cha sheria wa mwenendo wa makosa ya jinai', 'Mawakili wa serikali walioshIriki katika kesi ya kufutwa  kwa kifungu cha 148(5) cha sheria wa mwenendo wa makosa ya jinai', 'image/jpeg', '/uploads/gallery/', '', '1596633246-IMG-20200805-WA0088.jpg', '', '1596633246-img-20200805-wa0088-jpg', 0, 1, 1, '2020-08-05 10:14:06', '2020-08-05 10:14:06'),
(238, 'UFUNGUZI WA OFISI YA TAIFA MSHTAKA ,WILAYA YA SERENGETI,MUGUMU SERENGETI MKOA WA MARA', 'UFUNGUZI WA OFISI YA TAIFA MSHTAKA ,WILAYA YA SERENGETI,MUGUMU SERENGETI MKOA WA MARA', 'UFUNGUZI WA OFISI YA TAIFA MSHTAKA ,WILAYA YA SERENGETI,MUGUMU SERENGETI MKOA WA MARA', 'UFUNGUZI WA OFISI YA TAIFA MSHTAKA ,WILAYA YA SERENGETI,MUGUMU SERENGETI MKOA WA MARA', 'image/jpeg', '/uploads/gallery/', '', '1597306405-IMG-20200813-WA0016.jpg', '', '1597306405-img-20200813-wa0016-jpg', 0, 1, 1, '2020-08-13 05:13:25', '2020-08-13 05:13:25'),
(241, 'Hafla ya ufunguzi wa Ofisi ya Taifa ya Mashtaka Wilaya ya Serengeti, Mugumu.', 'Hafla ya ufunguzi wa Ofisi ya Taifa ya Mashtaka Wilaya ya Serengeti, Mugumu.', 'Mkurugenzi wa Ofisi ya Taifa ya Mashtaka, Bw. Biswalo Mganga akikata utepe katika uzinduzi wa Ofisi ya Taifa ya Mashtaka Wilaya ya Serengeti, Mugumu, mkoani Mara', 'Mkurugenzi wa Ofisi ya Taifa ya Mashtaka, Bw. Biswalo Mganga akikata utepe katika uzinduzi wa Ofisi ya Taifa ya Mashtaka Wilaya ya Serengeti, Mugumu, mkoani Mara', 'image/jpeg', '/uploads/gallery/', '', '1597733807-DSC04686.jpg', '', '1597733807-dsc04686-jpg', 0, 1, 1, '2020-08-18 03:56:47', '2020-08-18 03:56:47'),
(242, 'Hafla ya ufunguzi wa Ofisi ya Taifa ya Mashtaka Wilaya ya Serengeti, Mugumu.', 'Hafla ya ufunguzi wa Ofisi ya Taifa ya Mashtaka Wilaya ya Serengeti, Mugumu.', 'Mkurugenzi wa Ofisi ya Taifa ya Mashtaka, Bw. Biswalo Mganga akikata utepe katika uzinduzi wa Ofisi ya Taifa ya Mashtaka Wilaya ya Serengeti, Mugumu, mkoani Mara', 'Mkurugenzi wa Ofisi ya Taifa ya Mashtaka, Bw. Biswalo Mganga akikata utepe katika uzinduzi wa Ofisi ya Taifa ya Mashtaka Wilaya ya Serengeti, Mugumu, mkoani Mara', 'image/jpeg', '/uploads/gallery/', '', '1597734145-DSC04685.jpg', '', '1597734145-dsc04685-jpg', 0, 1, 1, '2020-08-18 04:02:25', '2020-08-18 04:02:25'),
(243, 'Naibu Mkurugenzi wa Mashtaka nchini Bw. Edson Makallo akitoa taarifa ya magari yaliyokamatwa kwa Mhe, Dkt. John Pombe Magufuli', 'Naibu Mkurugenzi wa Mashtaka nchini Bw. Edson Makallo akitoa taarifa ya magari yaliyokamatwa kwa Mhe, Dkt. John Pombe Magufuli', 'Naibu Mkurugenzi wa Mashtaka nchini Bw. Edson Makallo akitoa taarifa ya magari na mali yaliyokamatwa katika makosa mbalimbali ya Uhujumu  Uchumi yaliyotaifishwa na Serikali baada ya kuendesha kesi na kushinda. Mhe. Rais  alimtaka  Naibu Mkurugenzi Makallo kufikisha salama za pongezi kwa watumishi wote wa Ofisi ya Taifa ya Mashtaka chini ya Mkurugenzi wa Mashtaka Bw. Biswalo  Mganga kwa kazi nzuri wanayoifanya ya kulinda mali za Serikali', 'Naibu Mkurugenzi wa Mashtaka nchini Bw. Edson Makallo akitoa taarifa ya magari na mali yaliyokamatwa katika makosa mbalimbali ya Uhujumu  Uchumi yaliyotaifishwa na Serikali baada ya kuendesha kesi na kushinda. Mhe. Rais  alimtaka  Naibu Mkurugenzi Makallo kufikisha salama za pongezi kwa watumishi wote wa Ofisi ya Taifa ya Mashtaka chini ya Mkurugenzi wa Mashtaka Bw. Biswalo  Mganga kwa kazi nzuri wanayoifanya ya kulinda mali za Serikali', 'image/jpeg', '/uploads/gallery/', '', '1598362661-t24.jpg', '', '1598362661-t24-jpg', 0, 1, 1, '2020-08-25 10:37:45', '2020-08-25 10:37:45'),
(244, 'Rais wa Jamhuri ya Muungano wa Tanzania Mhe. John Pombe Magufuli akipokea taarifa ya idadi ya magari na mali zilizotaifishwa.', 'Rais wa Jamhuri ya Muungano wa Tanzania Mhe. John Pombe Magufuli akipokea taarifa ya idadi ya magari na mali zilizotaifishwa.', 'Rais wa Jamhuri ya Muungano wa Tanzania Mhe. John Pombe Joseph Magufuli akipokea taarifa ya Idadi ya Magari na Mali zingine mbalimbali zilizotaifishwa kutokana na Makosa ya Uhujumu Uchumi kutoka kwa kwa Naibu Mkurugenzi wa Mashtaka nchini Bw. Edson Makallo.', 'Rais wa Jamhuri ya Muungano wa Tanzania Mhe. John Pombe Joseph Magufuli akipokea taarifa ya Idadi ya Magari na Mali zingine mbalimbali zilizotaifishwa kutokana na Makosa ya Uhujumu Uchumi kutoka kwa kwa Naibu Mkurugenzi wa Mashtaka nchini Bw. Edson Makallo.', 'image/jpeg', '/uploads/gallery/', '', '1598363745-t18.jpg', '', '1598363745-t18-jpg', 0, 1, 1, '2020-08-25 10:55:49', '2020-08-25 10:55:49'),
(245, 'Rais wa Jamhuri ya Muungano wa Tanzania Mhe. John Pombe Magufuli akipokea taarifa ya idadi ya magari na mali zilizotaifishwa.', 'Rais wa Jamhuri ya Muungano wa Tanzania Mhe. John Pombe Magufuli akipokea taarifa ya idadi ya magari na mali zilizotaifishwa.', 'Rais wa Jamhuri ya Muungano wa Tanzania Mhe. John Pombe Joseph Magufuli akipokea taarifa ya Idadi ya Magari na Mali zingine mbalimbali zilizotaifishwa kutokana na Makosa ya Uhujumu Uchumi kutoka kwa kwa Naibu Mkurugenzi wa Mashtaka nchini Bw. Edson Makallo.', 'Rais wa Jamhuri ya Muungano wa Tanzania Mhe. John Pombe Joseph Magufuli akipokea taarifa ya Idadi ya Magari na Mali zingine mbalimbali zilizotaifishwa kutokana na Makosa ya Uhujumu Uchumi kutoka kwa kwa Naibu Mkurugenzi wa Mashtaka nchini Bw. Edson Makallo.', 'image/jpeg', '/uploads/gallery/', '', '1598363749-t18.jpg', '', '1598363749-t18-jpg', 0, 1, 1, '2020-08-25 10:55:52', '2020-08-25 10:55:52'),
(246, 'Rais wa Jamhuri ya Muungano wa Tanzania Mhe. John Pombe Magufuli akipokea taarifa ya idadi ya magari na mali zilizotaifishwa.', 'Rais wa Jamhuri ya Muungano wa Tanzania Mhe. John Pombe Magufuli akipokea taarifa ya idadi ya magari na mali zilizotaifishwa.', 'Rais wa Jamhuri ya Muungano wa Tanzania Mhe. John Pombe Joseph Magufuli akikagua magari yaliyotaifishwa  baada ya kuhusika katika matukio ya Uhujumu Uchumi na kuhifadhiwa katika kituo cha mabasi cha zamani jijini Dodoma.   Baada ya kukagua magari hayo Mhe. Rais aliagiza magari hayo yagaiwe kwa taasisi mbalimbali za Serikali ili yasaidie katika utendaji kazi na kutoa huduma kwa wananchi. ', 'Rais wa Jamhuri ya Muungano wa Tanzania Mhe. John Pombe Joseph Magufuli akikagua magari yaliyotaifishwa  baada ya kuhusika katika matukio ya Uhujumu Uchumi na kuhifadhiwa katika kituo cha mabasi cha zamani jijini Dodoma.   Baada ya kukagua magari hayo Mhe. Rais aliagiza magari hayo yagaiwe kwa taasisi mbalimbali za Serikali ili yasaidie katika utendaji kazi na kutoa huduma kwa wananchi. ', 'image/jpeg', '/uploads/gallery/', '', '1598432932-t15.jpg', '', '1598432932-t15-jpg', 0, 1, 1, '2020-08-26 06:08:56', '2020-08-26 06:08:56'),
(247, 'Kaimu Kamishina wa Wanyamapori nchini Mabula Nyanda  akimkabidhi Mkurugenzi Mkuu wa Mashitaka nchini Biswalo Mganga hati ya makabidhiano ya jengo', 'Kaimu Kamishina wa Wanyamapori nchini Mabula Nyanda  akimkabidhi Mkurugenzi Mkuu wa Mashitaka nchini Biswalo Mganga hati ya makabidhiano ya jengo', 'Mamlaka ya Wanyamapori   Tanzania (TAWA) imeikabidhi ofisi ya taifa ya Mashitaka chini ya DPP   jengo lililokuwa likitumiwa na mamlaka hiyo kanda ya Kigosi lililopo wilayani kahama mkoani  Shinyanga, baada ya mapori waliyokuwa wakiyasimamia kupandishwa hadhi na kuwa hifadhi  za taifa ambapo jengo hilo litatumika kuendesha kesi za jinai ikiwa ni mkakati wa serikali wa kupunguza Msongamano wa  maabusu na waafungwa  katika  Magereza nchini.\r\n\r\n\r\n', 'Mamlaka ya Wanyamapori   Tanzania (TAWA) imeikabidhi ofisi ya taifa ya Mashitaka chini ya DPP   jengo lililokuwa likitumiwa na mamlaka hiyo kanda ya Kigosi lililopo wilayani kahama mkoani  Shinyanga, baada ya mapori waliyokuwa wakiyasimamia kupandishwa hadhi na kuwa hifadhi  za taifa ambapo jengo hilo litatumika kuendesha kesi za jinai ikiwa ni mkakati wa serikali wa kupunguza Msongamano wa  maabusu na waafungwa  katika  Magereza nchini.\r\n\r\n\r\n', 'image/jpeg', '/uploads/gallery/', '', '1599077413-GF.jpg', '', '1599077413-gf-jpg', 0, 1, 1, '2020-09-02 17:10:14', '2020-09-02 17:10:14'),
(248, 'Kushoto ni Mkurugenzi Mkuu wa Mashitaka nchini(DPP) Biswalo Mganga akisaini hati ya makabidhiano ya jengo pamoja na Kaimu Kamishina wa Wanyamapori nchini(TAWA) Mabula Nyanda', 'Kushoto ni Mkurugenzi Mkuu wa Mashitaka nchini(DPP) Biswalo Mganga akisaini hati ya makabidhiano ya jengo pamoja na Kaimu Kamishina wa Wanyamapori nchini(TAWA) Mabula Nyanda', 'Kushoto ni Mkurugenzi Mkuu wa Mashitaka nchini(DPP) Biswalo Mganga akisaini hati ya makabidhiano ya jengo pamoja na Kaimu Kamishina wa Wanyamapori nchini(TAWA) Mabula Nyanda mbele ya Naibu katibu Mkuu  wizara ya katiba na Sheria Amon Mpanju ', 'Kushoto ni Mkurugenzi Mkuu wa Mashitaka nchini(DPP) Biswalo Mganga akisaini hati ya makabidhiano ya jengo pamoja na Kaimu Kamishina wa Wanyamapori nchini(TAWA) Mabula Nyanda mbele ya Naibu katibu Mkuu  wizara ya katiba na Sheria Amon Mpanju ', 'image/jpeg', '/uploads/gallery/', '', '1599077814-sad.jpg', '', '1599077814-sad-jpg', 0, 1, 1, '2020-09-02 17:16:55', '2020-09-02 17:16:55'),
(249, 'jengo la mamlaka ya wanyama pori lililokuwa likitumiwa kama ofisi ya kanda ya kigosi baada ya baadhi ya mapori yaliyokuwa yakisimamiwa kupandishwa hadhi na kuwa hifadhi za taifa sasa limekabidhiwa kwa mwendesha mashitaka mkuu  wa serikali DPP', 'jengo la mamlaka ya wanyama pori lililokuwa likitumiwa kama ofisi ya kanda ya kigosi baada ya baadhi ya mapori yaliyokuwa yakisimamiwa kupandishwa hadhi na kuwa hifadhi za taifa sasa limekabidhiwa kwa mwendesha mashitaka mkuu  wa serikali DPP', 'jengo la mamlaka ya wanyama pori lililokuwa likitumiwa kama ofisi ya kanda ya kigosi baada ya baadhi ya mapori yaliyokuwa yakisimamiwa kupandishwa hadhi na kuwa hifadhi za taifa sasa limekabidhiwa kwa mwendesha mashitaka mkuu  wa serikali DPP ili liweze kutumika kutoa huduma kwa wakazi wa Kahama,Mbogwe na Bukombe  ili kupunguza msongamano kwa maabusu katika Gereza la Wilaya ya Kahama.', 'jengo la mamlaka ya wanyama pori lililokuwa likitumiwa kama ofisi ya kanda ya kigosi baada ya baadhi ya mapori yaliyokuwa yakisimamiwa kupandishwa hadhi na kuwa hifadhi za taifa sasa limekabidhiwa kwa mwendesha mashitaka mkuu  wa serikali DPP ili liweze kutumika kutoa huduma kwa wakazi wa Kahama,Mbogwe na Bukombe  ili kupunguza msongamano kwa maabusu katika Gereza la Wilaya ya Kahama.', 'image/jpeg', '/uploads/gallery/', '', '1599078125-nh.jpg', '', '1599078125-nh-jpg', 0, 1, 1, '2020-09-02 17:22:05', '2020-09-02 17:22:05'),
(250, ' Naibu Katibu Mkuu Wizara ya Katiba na Sheria Amon Mpanju  walio kaa kwenye wa tatu kutoka Kushoto akiwa katika picha ya pamoja na viongozi mbalimbali ', ' Naibu Katibu Mkuu Wizara ya Katiba na Sheria Amon Mpanju  walio kaa kwenye wa tatu kutoka Kushoto akiwa katika picha ya pamoja na viongozi mbalimbali ', ' Naibu Katibu Mkuu Wizara ya Katiba na Sheria Amon Mpanju  walio kaa kwenye wa tatu kutoka Kushoto akiwa katika picha ya pamoja na viongozi mbalimbali  mara baada ya makabidhiano ya jengo litakalotumiwa na ofisi ya DPP wilaya ya Kahama mkoani Shinyanga ', ' Naibu Katibu Mkuu Wizara ya Katiba na Sheria Amon Mpanju  walio kaa kwenye wa tatu kutoka Kushoto akiwa katika picha ya pamoja na viongozi mbalimbali  mara baada ya makabidhiano ya jengo litakalotumiwa na ofisi ya DPP wilaya ya Kahama mkoani Shinyanga ', 'image/jpeg', '/uploads/gallery/', '', '1599078222-werr.jpg', '', '1599078222-werr-jpg', 0, 1, 1, '2020-09-02 17:23:43', '2020-09-02 17:23:43'),
(251, 'Naibu Katibu Mkuu Wizara ya Sheria na Katiba Amon Mpanju akiwasili katika Viwanja vya Ofisi za Mashitaka Wilaya ya Kahama kwa ajili y ufunguzi wa ofisi hiyo ', 'Naibu Katibu Mkuu Wizara ya Sheria na Katiba Amon Mpanju akiwasili katika Viwanja vya Ofisi za Mashitaka Wilaya ya Kahama kwa ajili y ufunguzi wa ofisi hiyo ', 'Naibu katibu mkuu Wizara ya Katiba na Sheria Amon Mpanju akisalimiana na baadhi ya viongozi  mbalimbali waliowasili katika hafla ya ufunguzi wa Ofisi ya Taifa ya Mashtaka Wilayani Kahama mkoani Shinyanga ', 'Naibu katibu mkuu Wizara ya Katiba na Sheria Amon Mpanju akisalimiana na baadhi ya viongozi  mbalimbali waliowasili katika hafla ya ufunguzi wa Ofisi ya Taifa ya Mashtaka Wilayani Kahama mkoani Shinyanga ', 'image/jpeg', '/uploads/gallery/', '', '1599495287-aaa.jpg', '', '1599495287-aaa-jpg', 0, 1, 1, '2020-09-07 13:14:48', '2020-09-07 13:14:48'),
(252, 'Mkurugenzi mkuu wa Mashtaka nchini Biswalo  Mganga  akisalimiana na viongozi mbalimbali ', 'Mkurugenzi mkuu wa Mashtaka nchini Biswalo  Mganga  akisalimiana na viongozi mbalimbali ', 'Mkurugenzi mkuu wa Mashtaka nchini Biswalo  Mganga  akisalimiana na viongozi mbalimbali katika eneo la viwanja vya Ofisi ya Mashtaka Wilaya ya Kahama  ', 'Mkurugenzi mkuu wa Mashtaka nchini Biswalo  Mganga  akisalimiana na viongozi mbalimbali katika eneo la viwanja vya Ofisi ya Mashtaka Wilaya ya Kahama  ', 'image/jpeg', '/uploads/gallery/', '', '1599495517-bd.jpg', '', '1599495517-bd-jpg', 0, 1, 1, '2020-09-07 13:18:37', '2020-09-07 13:18:37'),
(253, 'Picha ya pamoja kati ya viongozi mbalimbali na wakazi wa wilaya ya Kahama ', 'Picha ya pamoja kati ya viongozi mbalimbali na wakazi wa wilaya ya Kahama ', 'Picha ya pamoja kati ya viongozi mbalimbali na wakazi wa wilaya ya Kahama iliyopigwa mara baada ya kuhitimishwa kwa zoezi ufunguzi wa Ofisi ya Taifa ya Mashtaka Wilaya ya Kahama ', 'Picha ya pamoja kati ya viongozi mbalimbali na wakazi wa wilaya ya Kahama iliyopigwa mara baada ya kuhitimishwa kwa zoezi ufunguzi wa Ofisi ya Taifa ya Mashtaka Wilaya ya Kahama ', 'image/jpeg', '/uploads/gallery/', '', '1599495681-adg.jpg', '', '1599495681-adg-jpg', 0, 1, 1, '2020-09-07 13:21:22', '2020-09-07 13:21:22');
INSERT INTO `media` (`id`, `title_en`, `title_sw`, `content_en`, `content_sw`, `mime`, `path`, `url`, `filename`, `iconurl`, `slug`, `user_id`, `gallery_id`, `status`, `created_at`, `updated_at`) VALUES
(254, 'Viongozi waliokaa kwenye viti wakiwa katika picha ya pamoja na baadhi ya watumishi ', 'Viongozi waliokaa kwenye viti wakiwa katika picha ya pamoja na baadhi ya watumishi ', 'Viongozi waliokaa kwenye viti wakiwa katika picha ya pamoja na baadhi ya watumishi wa Ofisi ya Taifa ya Mashtaka mjini Kahama wakiwemo toka wilya za Nzega,Serengeti na Mbogwe ', 'Viongozi waliokaa kwenye viti wakiwa katika picha ya pamoja na baadhi ya watumishi wa Ofisi ya Taifa ya Mashtaka mjini Kahama wakiwemo toka wilya za Nzega,Serengeti na Mbogwe ', 'image/jpeg', '/uploads/gallery/', '', '1599495826-qwww.jpg', '', '1599495826-qwww-jpg', 0, 1, 1, '2020-09-07 13:23:46', '2020-09-07 13:23:46'),
(255, 'Mkurugenzi wa Mashtaka akiwa na baadhi ya Viongozi kutoka Ofisi ya Taifa ta Mashtaka', 'Mkurugenzi wa Mashtaka akiwa na baadhi ya Viongozi kutoka Ofisi ya Taifa ta Mashtaka', 'Mkurugenzi wa Ofisi ya Taifa ya Mashtaka Bw. Biswalo Mganga akiwa na baadhi ya Viongozi kutoka Ofisi ya Taifa ya Mashtaka tarehe 17/9/2020 amefanya mazungumzo na Wahariri wa Vyombo vya Habari Jijini Dar es salaam.', 'Mkurugenzi wa Ofisi ya Taifa ya Mashtaka Bw. Biswalo Mganga akiwa na baadhi ya Viongozi kutoka Ofisi ya Taifa ya Mashtaka tarehe 17/9/2020 amefanya mazungumzo na Wahariri wa Vyombo vya Habari Jijini Dar es salaam.', 'image/jpeg', '/uploads/gallery/', '', '1600777698-PCHA WAHARIRI.DPP.jpg', '', '1600777698-pcha-wahariri-dpp-jpg', 0, 1, 1, '2020-09-22 09:28:18', '2020-09-22 09:28:18'),
(256, 'Picha ya pamoja ya baadhi ya Viongozi kutoka Ofisi ya Taifa ya Mashtaka na Wahariri wa Vyombo vya Habari', 'Picha ya pamoja ya baadhi ya Viongozi  kutoka Ofisi ya Taifa ya Mashtaka na Wahariri wa Vyombo vya Habari', 'Baadhi ya Viongozi kutoka Ofisi ya Taifa ya Mashtaka, wakiongozwa na Mkurugenzi Mkuu Bw. Biswalo Mganga, wakiwa katika picha ya pamoja na Wahariri wa vyombo vya habari walioshiriki katika kikao cha Ofisi ya Taifa ya Mashtaka Jijini Dar es salaam.', 'Baadhi ya Viongozi kutoka Ofisi ya Taifa ya Mashtaka, wakiongozwa na Mkurugenzi Mkuu Bw. Biswalo Mganga, wakiwa katika picha ya pamoja na Wahariri wa vyombo vya habari walioshiriki katika kikao cha Ofisi ya Taifa ya Mashtaka Jijini Dar es salaam.', 'image/jpeg', '/uploads/gallery/', '', '1600778374-PCHA WAHARIRI.jpg', '', '1600778374-pcha-wahariri-jpg', 0, 1, 1, '2020-09-22 09:39:34', '2020-09-22 09:39:34'),
(257, 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akizungumza na Wahariri wa Vyombo vya Habari Jijini Dar es salaaam.', 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akizungumza na Wahariri wa Vyombo vya Habari Jijini Dar es salaaam.', 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akizungumza na Wahariri wa Vyombo vya Habari Jijini Dar es salaaam akielezea juu ya Muundo, Majukumu ya Ofisi ya Taifa ya Mashtaka, na Mafanikio tangu kuanzishwa kwake hadi kufikia sasa.', 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akizungumza na Wahariri wa Vyombo vya Habari Jijini Dar es salaaam akielezea juu ya Muundo, Majukumu ya Ofisi ya Taifa ya Mashtaka, na Mafanikio tangu kuanzishwa kwake hadi kufikia sasa.', 'image/jpeg', '/uploads/gallery/', '', '1600787276-WAHARIRI WOTE.jpg', '', '1600787276-wahariri-wote-jpg', 0, 1, 1, '2020-09-22 12:07:56', '2020-09-22 12:07:56'),
(258, 'Mkurugenzi wa Sheria Mamlaka ya Mawasiliano Tanzania Bw. Joannes Karungura akikabidhi nyaraka za vifaa vya TEHAMA', 'Mkurugenzi wa Sheria Mamlaka ya Mawasiliano Tanzania Bw. Joannes Karungura akikabidhi nyaraka za vifaa vya TEHAMA', 'Mkurugenzi wa Sheria Mamlaka ya Mawasiliano Tanzania Bw. Joannes Karungura akikabidhi nyaraka za vifaa vya TEHAMA ambavyo vimetolewa na Mamlaka hiyo kwa Ofisi ya Taifa ya Mashtaka Jijini Dodoma', 'Mkurugenzi wa Sheria Mamlaka ya Mawasiliano Tanzania Bw. Joannes Karungura akikabidhi nyaraka za vifaa vya TEHAMA ambavyo vimetolewa na Mamlaka hiyo kwa Ofisi ya Taifa ya Mashtaka Jijini Dodoma', 'image/jpeg', '/uploads/gallery/', '', '1600806196-PCHA TCRA.5.jpg', '', '1600806196-pcha-tcra-5-jpg', 0, 1, 1, '2020-09-22 17:23:16', '2020-09-22 17:23:16'),
(262, 'Mtaalamu wa Teknolojia ya Habari na Mawasiliano (TEHAMA) akimuonyesha Mkurugenzi wa Mashtaka namna Printa iliyotolewa na TCRA inavyofanya kazi.', 'Mtaalamu wa Teknolojia ya Habari na Mawasiliano (TEHAMA) akimuonyesha Mkurugenzi wa Mashtaka namna Printa iliyotolewa na TCRA inavyofanya kazi.', 'Mtaalamu wa Teknolojia ya Habari na Mawasiliano (TEHAMA) Bw. William Massawe akimuonyesha Mkurugenzi wa Mashtaka Bw. Biswalo Mganga namna Printa iliyotolewa na Mamlaka ya Mawasiliano  Tanzania kwa Ofisi ya Taifa ya Mashtaka inavyofanya kazi wakati wa makabidhiano yaliyofanyika leo Makao Makuu ya Ofisi ya Taifa ya Mashtaka.', 'Mtaalamu wa Teknolojia ya Habari na Mawasiliano (TEHAMA) Bw. William Massawe akimuonyesha Mkurugenzi wa Mashtaka Bw. Biswalo Mganga namna Printa iliyotolewa na Mamlaka ya Mawasiliano  Tanzania kwa Ofisi ya Taifa ya Mashtaka inavyofanya kazi wakati wa makabidhiano yaliyofanyika leo Makao Makuu ya Ofisi ya Taifa ya Mashtaka.', 'image/jpeg', '/uploads/gallery/', '', '1600846848-tcra vifaa.2.jpg', '', '1600846848-tcra-vifaa-2-jpg', 0, 1, 1, '2020-09-23 04:40:48', '2020-09-23 04:40:48'),
(263, 'Naibu Mkurugenzi wa Mashtaka Bw. Edson Makallo akitambulisha wageni waliohudhuria katika hafla fupi ya uzinduzi wa Ofisi ya Taifa ya Mashtaka Wilaya ya Mufindi iliyopo mjini Mafinga ', 'Naibu Mkurugenzi wa Mashtaka Bw. Edson Makallo akitambulisha wageni waliohudhuria katika hafla fupi ya uzinduzi wa Ofisi ya Taifa ya Mashtaka Wilaya ya Mufindi iliyopo mjini Mafinga ', 'Naibu Mkurugenzi wa Mashtaka Bw. Edson Makallo akitambulisha wageni waliohudhuria katika hafla fupi ya uzinduzi wa Ofisi ya Taifa ya Mashtaka Wilaya ya Mufindi iliyopo mjini Mafinga  Mkoani Iringa mapema leo october 22 ikiwa ni mwendelezo wa uzinduzi wa ofisi  za taifa za mashtaka nchini ', 'Naibu Mkurugenzi wa Mashtaka Bw. Edson Makallo akitambulisha wageni waliohudhuria katika hafla fupi ya uzinduzi wa Ofisi ya Taifa ya Mashtaka Wilaya ya Mufindi iliyopo mjini Mafinga  Mkoani Iringa mapema leo october 22 ikiwa ni mwendelezo wa uzinduzi wa ofisi  za taifa za mashtaka nchini ', 'image/jpeg', '/uploads/gallery/', '', '1603395402-VGH.jpg', '', '1603395402-vgh-jpg', 0, 1, 1, '2020-10-22 16:36:42', '2020-10-22 16:36:42'),
(264, 'Baadhi ya Waalikwa wakiwepo Wakuu wa Vyombo vya Ulinzi na Usalama, Viongozi wa Dini, Wananchi na Watumishi kutoka Ofisi ya Taifa ya Mashtaka Wilaya ya Mufindi wakifuatilia hotuba katika hafla ya Uzinduzi wa Ofisi ya Taifa ya Mashtaka Wilaya ya Mufindi', 'Baadhi ya Waalikwa wakiwepo Wakuu wa Vyombo vya Ulinzi na Usalama, Viongozi wa Dini, Wananchi na Watumishi kutoka Ofisi ya Taifa ya Mashtaka Wilaya ya Mufindi wakifuatilia hotuba katika hafla ya Uzinduzi wa Ofisi ya Taifa ya Mashtaka Wilaya ya Mufindi', 'Baadhi ya Waalikwa wakiwepo Wakuu wa Vyombo vya Ulinzi na Usalama, Viongozi wa Dini, Wananchi na Watumishi kutoka Ofisi ya Taifa ya Mashtaka Wilaya ya Mufindi wakifuatilia hotuba katika hafla ya Uzinduzi wa Ofisi ya Taifa ya Mashtaka Wilaya ya Mufindi Iiliyofanyika Makao Makuu ya Wilaya ya Mufindi mjini Mafinga leo', 'Baadhi ya Waalikwa wakiwepo Wakuu wa Vyombo vya Ulinzi na Usalama, Viongozi wa Dini, Wananchi na Watumishi kutoka Ofisi ya Taifa ya Mashtaka Wilaya ya Mufindi wakifuatilia hotuba zinazotolewa katika hafla ya Uzinduzi wa Ofisi ya Taifa ya Mashtaka Wilaya ya Mufindi Iiliyofanyika Makao Makuu ya Wilaya ya Mufindi mjini Mafinga leo', 'image/jpeg', '/uploads/gallery/', '', '1603395547-PICHAN 1.jpg', '', '1603395547-pichan-1-jpg', 0, 1, 1, '2020-10-22 16:39:07', '2020-10-22 16:39:07'),
(265, 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akiwa na Mkuu wa Wilaya ya Mufindi Mhe. Jamhuri William wakikata utepe kuashiria Uzinduzi wa Ofisi ya Taifa ya Mashtaka Wilaya ya Mufindi katika hafla fupi iiliyofanyika  Makao Makuu ya Wilaya hiyo mjini  Mafinga', 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akiwa na Mkuu wa Wilaya ya Mufindi Mhe. Jamhuri William wakikata utepe kuashiria Uzinduzi wa Ofisi ya Taifa ya Mashtaka Wilaya ya Mufindi katika hafla fupi iiliyofanyika  Makao Makuu ya Wilaya hiyo mjini  Mafinga', 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akiwa na Mkuu wa Wilaya ya Mufindi Mhe. Jamhuri William wakikata utepe  wakati wa Uzinduzi wa Ofisi ya Taifa ya Mashtaka Wilaya ya Mufindi katika hafla fupi iiliyofanyika  Makao Makuu ya Wilaya hiyo yaliyopo  mjini  Mafinga Mkoani Iringa', 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akiwa na Mkuu wa Wilaya ya Mufindi Mhe. Jamhuri William wakikata utepe kuashiria Uzinduzi wa Ofisi ya Taifa ya Mashtaka Wilaya ya Mufindi katika hafla fupi iiliyofanyika  Makao Makuu ya Wilaya hiyo yaliyopo mjini  Mafinga Mkoani Iringa ', 'image/jpeg', '/uploads/gallery/', '', '1603395738-cdfdf.jpg', '', '1603395738-cdfdf-jpg', 0, 1, 1, '2020-10-22 16:42:19', '2020-10-22 16:42:19'),
(266, 'Mkuu wa Wilaya ya Mufindi Mhe. Jamhuri William akizungumza katika hafla ya uzinduzi wa Ofisi ya Taifa ya Mashtaka Wilaya ya Mufindi katika hafla iliyofanyika Makao Makuu ya Wilaya ya Mufindi yaliyopo mjini Mafinga Leo', 'Mkuu wa Wilaya ya Mufindi Mhe. Jamhuri William akizungumza katika hafla ya uzinduzi wa Ofisi ya Taifa ya Mashtaka Wilaya ya Mufindi katika hafla iliyofanyika Makao Makuu ya Wilaya ya Mufindi yaliyopo mjini Mafinga Leo', 'Mkuu wa Wilaya ya Mufindi Mhe. Jamhuri William akizungumza katika hafla ya uzinduzi wa Ofisi ya Taifa ya Mashtaka Wilaya ya Mufindi katika hafla iliyofanyika Makao Makuu ya Wilaya ya Mufindi yaliyopo mjini Mafinga Leo october 22 ambapo ni mwendelezo wa kusogeza huduma kwa jamii ', 'Mkuu wa Wilaya ya Mufindi Mhe. Jamhuri William akizungumza katika hafla ya uzinduzi wa Ofisi ya Taifa ya Mashtaka Wilaya ya Mufindi katika hafla iliyofanyika Makao Makuu ya Wilaya ya Mufindi yaliyopo mjini Mafinga Leo october 22 ambapo ni mwendelezo wa kusogeza huduma kwa jamii ', 'image/jpeg', '/uploads/gallery/', '', '1603395802-BBB.jpg', '', '1603395802-bbb-jpg', 0, 1, 1, '2020-10-22 16:43:22', '2020-10-22 16:43:22'),
(268, 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akisalimiana na baadhi ya viongozi mbalimbali waliohudhuria katika hafla ya uzinduzi wa Ofisi ya Taifa ya Mashtaka Mkoani Songwe.', 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akisalimiana na baadhi ya viongozi mbalimbali waliohudhuria katika hafla ya uzinduzi wa Ofisi ya Taifa ya Mashtaka Mkoani Songwe.', 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akisalimiana na baadhi ya viongozi mbalimbali waliohudhuria katika hafla ya uzinduzi wa Ofisi ya Taifa ya Mashtaka Mkoani Songwe.', 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akisalimiana na baadhi ya viongozi mbalimbali waliohudhuria katika hafla ya uzinduzi wa Ofisi ya Taifa ya Mashtaka Mkoani Songwe.', 'image/jpeg', '/uploads/gallery/', '', '1603604084-WEEEEE.jpg', '', '1603604084-weeeee-jpg', 0, 17, 1, '2020-10-25 02:34:44', '2020-10-25 02:34:44'),
(269, 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga  akikata utepe kuashiria Uzinduzi wa Ofisi ya Taifa ya Mashtaka Mkoani Songwe, akiwa pamoja na viongozi wengine', 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga  akikata utepe kuashiria Uzinduzi wa Ofisi ya Taifa ya Mashtaka Mkoani Songwe, akiwa pamoja na viongozi wengine', 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga  akikata utepe kuashiria Uzinduzi wa Ofisi ya Taifa ya Mashtaka Mkoani Songwe, akiwa pamoja na viongozi wengine', 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga  akikata utepe kuashiria Uzinduzi wa Ofisi ya Taifa ya Mashtaka Mkoani Songwe, akiwa pamoja na viongozi wengine', 'image/jpeg', '/uploads/gallery/', '', '1603604207-WEEEEE.jpg', '', '1603604207-weeeee-jpg', 0, 1, 1, '2020-10-25 02:36:47', '2020-10-26 03:24:29'),
(270, 'Mkuu wa Mkoa wa Songwe Brigedia Jenerali Nicodemas Mwangela amesema uwepo wa Ofisi ya Taifa ya Mashtaka utarahisisha upatikanaji wa huduma kwa wananchi na kupunguza malalamiko yaliyokuwa yakitolewa na wananchi juu ya ucheleweshaji wa upatikanaji wa haki. ', 'Mkuu wa Mkoa wa Songwe Brigedia Jenerali Nicodemas Mwangela amesema uwepo wa Ofisi ya Taifa ya Mashtaka utarahisisha upatikanaji wa huduma kwa wananchi na kupunguza malalamiko yaliyokuwa yakitolewa na wananchi juu ya ucheleweshaji wa upatikanaji wa haki. ', 'Mkuu wa Mkoa wa Songwe Brigedia Jenerali Nicodemas Mwangela amesema uwepo wa Ofisi ya Taifa ya Mashtaka utarahisisha upatikanaji wa huduma kwa wananchi na kupunguza malalamiko yaliyokuwa yakitolewa na wananchi juu ya ucheleweshaji wa upatikanaji wa haki.\r\nAmeyasema hayo wakati wa uzinduzi wa Ofisi ya Taifa ya Mashtaka Mkoani Songwe.', 'Mkuu wa Mkoa wa Songwe Brigedia Jenerali Nicodemas Mwangela amesema uwepo wa Ofisi ya Taifa ya Mashtaka utarahisisha upatikanaji wa huduma kwa wananchi na kupunguza malalamiko yaliyokuwa yakitolewa na wananchi juu ya ucheleweshaji wa upatikanaji wa haki.\r\nAmeyasema hayo wakati wa uzinduzi wa Ofisi ya Taifa ya Mashtaka Mkoani Songwe.', 'image/jpeg', '/uploads/gallery/', '', '1603604793-VG 1.jpg', '', '1603604793-vg-1-jpg', 0, 1, 1, '2020-10-25 02:46:34', '2020-10-25 02:46:34'),
(271, 'Naibu Mkurugenzi wa Mashtaka Bw. Edson Makallo amewashukuru viongozi wa dini kwa namna wanavyoliombea Taifa pia amemuhakikishis Mkuu wa Mkoa wa Songwe  juu ya Mtumishi yeyote wa Serikali atakaebainika  kujihusisha na vitendo vya rushwa Ofisi yake haitosit', 'Naibu Mkurugenzi wa Mashtaka Bw. Edson Makallo amewashukuru viongozi wa dini kwa namna wanavyoliombea Taifa pia amemuhakikishis Mkuu wa Mkoa wa Songwe  juu ya Mtumishi yeyote wa Serikali atakaebainika  kujihusisha na vitendo vya rushwa Ofisi yake haitosit', 'Naibu Mkurugenzi wa Mashtaka Bw. Edson Makallo amewashukuru viongozi wa dini kwa namna wanavyoliombea Taifa pia amemuhakikishis Mkuu wa Mkoa wa Songwe  juu ya Mtumishi yeyote wa Serikali atakaebainika  kujihusisha na vitendo vya rushwa Ofisi yake haitosita kusaini barua ya kumsimamisha kazi. Kwan kufanya hivyo ni kukandamiza haki za watu wengine.\r\nAmeyasema hayo wakati wa hafla ya uzinduzi wa Ofisi ya Taifa ya Mashtaka Mkoani Songwe.', 'Naibu Mkurugenzi wa Mashtaka Bw. Edson Makallo amewashukuru viongozi wa dini kwa namna wanavyoliombea Taifa pia amemuhakikishis Mkuu wa Mkoa wa Songwe  juu ya Mtumishi yeyote wa Serikali atakaebainika  kujihusisha na vitendo vya rushwa Ofisi yake haitosita kusaini barua ya kumsimamisha kazi. Kwan kufanya hivyo ni kukandamiza haki za watu wengine.\r\nAmeyasema hayo wakati wa hafla ya uzinduzi wa Ofisi ya Taifa ya Mashtaka Mkoani Songwe.', 'image/jpeg', '/uploads/gallery/', '', '1603605443-CG 1.jpg', '', '1603605443-cg-1-jpg', 0, 1, 1, '2020-10-25 02:57:24', '2020-10-25 02:57:24'),
(272, 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Biswalo Mganga (katikati), Mkuu wa Mkoa, (wa tatu kutoka kulia),Naibu Mkurugenzi Msaidizi Bw. Edson Makallo (wa pili kutoka kulia), Kamanda wa Takukuru Mkoa wa Songwe Bw. Damas Suta (wa kwanza kulia),', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Biswalo Mganga (katikati), Mkuu wa Mkoa, (wa tatu kutoka kulia),Naibu Mkurugenzi Msaidizi Bw. Edson Makallo (wa pili kutoka kulia), Kamanda wa Takukuru Mkoa wa Songwe Bw. Damas Suta (wa kwanza kulia),', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Biswalo Mganga (katikati), Mkuu wa Mkoa, (wa tatu kutoka kulia),Naibu Mkurugenzi Msaidizi Bw. Edson Makallo (wa pili kutoka kulia), Kamanda wa Takukuru Mkoa wa Songwe Bw. Damas Suta (wa kwanza kulia), Mkuu wa Wilaya ya Mbozi  Mhe. John Palingo (wa pili kushoto), Katibu Tawala Dkt. Seif Shekilage (Wakwanza kushoto)waliohudhuria katika uzinduzi wa Ofisi ya Taifa ya Mashtaka Mkoani Songwe', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Biswalo Mganga (katikati), Mkuu wa Mkoa, (wa tatu kutoka kulia),Naibu Mkurugenzi Msaidizi Bw. Edson Makallo (wa pili kutoka kulia), Kamanda wa Takukuru Mkoa wa Songwe Bw. Damas Suta (wa kwanza kulia), Mkuu wa Wilaya ya Mbozi  Mhe. John Palingo (wa pili kushoto), Katibu Tawala Dkt. Seif Shekilage (Wakwanza kushoto)waliohudhuria katika uzinduzi wa Ofisi ya Taifa ya Mashtaka Mkoani Songwe', 'image/jpeg', '/uploads/gallery/', '', '1603605501-MJ 1.jpg', '', '1603605501-mj-1-jpg', 0, 1, 1, '2020-10-25 02:58:22', '2020-10-25 02:58:22'),
(273, 'Picha ya pamoja  baadhi ya  viongozi mbalimbali wakiwa pamoja na baadhi ya mawakili wa Serikali  Ofisi ya Taifa ya Mashtaka waliohudhuria katika hafla ya uzinduzi wa Ofisi ya Taifa ya Mashtaka Mkoani Songwe', 'Picha ya pamoja  baadhi ya  viongozi mbalimbali wakiwa pamoja na baadhi ya mawakili wa Serikali  Ofisi ya Taifa ya Mashtaka waliohudhuria katika hafla ya uzinduzi wa Ofisi ya Taifa ya Mashtaka Mkoani Songwe', 'Picha ya pamoja  baadhi ya  viongozi mbalimbali wakiwa pamoja na baadhi ya mawakili wa Serikali  Ofisi ya Taifa ya Mashtaka waliohudhuria katika hafla ya uzinduzi wa Ofisi ya Taifa ya Mashtaka Mkoani Songwe', 'Picha ya pamoja  baadhi ya  viongozi mbalimbali wakiwa pamoja na baadhi ya mawakili wa Serikali  Ofisi ya Taifa ya Mashtaka waliohudhuria katika hafla ya uzinduzi wa Ofisi ya Taifa ya Mashtaka Mkoani Songwe', 'image/jpeg', '/uploads/gallery/', '', '1603605545-MK 1.jpg', '', '1603605545-mk-1-jpg', 0, 1, 1, '2020-10-25 02:59:06', '2020-10-25 02:59:06'),
(274, 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akisalimiana na baadhi ya viongozi mbalimbali waliohudhuria katika hafla ya uzinduzi wa Ofisi ya Taifa ya Mashtaka Mkoani Songwe', 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akisalimiana na baadhi ya viongozi mbalimbali waliohudhuria katika hafla ya uzinduzi wa Ofisi ya Taifa ya Mashtaka Mkoani Songwe', 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akisalimiana na baadhi ya viongozi mbalimbali waliohudhuria katika hafla ya uzinduzi wa Ofisi ya Taifa ya Mashtaka Mkoani Songwe', 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akisalimiana na baadhi ya viongozi mbalimbali waliohudhuria katika hafla ya uzinduzi wa Ofisi ya Taifa ya Mashtaka Mkoani Songwe', 'image/jpeg', '/uploads/gallery/', '', '1603693560-vt.jpg', '', '1603693560-vt-jpg', 0, 1, 1, '2020-10-26 03:26:01', '2020-10-26 03:26:01'),
(275, 'Jaji wa Mahakama Kuu Mhe. Edwin Kakolaki (kushoto) Akiweka kumbukumbu ya Dawa  za kulevya zinazotarajiwa kuteketezwa baada ya kesi zake kukamilika akiwa  pamoja na Mkurugenzi  wa  Mashtaka Bw. Biswalo Mganga (kulia).', 'Jaji wa Mahakama Kuu Mhe. Edwin Kakolaki (kushoto) Akiweka kumbukumbu ya Dawa  za kulevya zinazotarajiwa kuteketezwa baada ya kesi zake kukamilika akiwa  pamoja na Mkurugenzi  wa  Mashtaka Bw. Biswalo Mganga (kulia).', 'Jaji wa Mahakama Kuu Mhe. Edwin Kakolaki (kushoto) Akiweka kumbukumbu ya Dawa  za kulevya zinazotarajiwa kuteketezwa baada ya kesi zake kukamilika akiwa  pamoja na Mkurugenzi  wa  Mashtaka Bw. Biswalo Mganga (kulia) kabla ya kuanza kwa zoezi la Kuteketeza Dawa hizo katika Kiwanda cha Twiga Cement eneo la Wazo Jijini Dar es salaam.', 'Jaji wa Mahakama Kuu Mhe. Edwin Kakolaki (kushoto) Akiweka kumbukumbu ya Dawa  za kulevya zinazotarajiwa kuteketezwa baada ya kesi zake kukamilika akiwa  pamoja na Mkurugenzi  wa  Mashtaka Bw. Biswalo Mganga (kulia) kabla ya kuanza kwa zoezi la Kuteketeza Dawa hizo katika Kiwanda cha Twiga Cement eneo la Wazo Jijini Dar es salaam.', 'image/jpeg', '/uploads/gallery/', '', '1605271576-IMG-20201113-WA0004.jpg', '', '1605271576-img-20201113-wa0004-jpg', 0, 1, 1, '2020-11-13 09:46:16', '2020-11-13 09:46:16'),
(276, 'Jaji wa Mahakama Kuu Mhe. Edwin Kakolaki akishirikiana na Mkurugenzi wa Mashtaka Bw. Biswalo Mganga kuteketeza Madawa ya Kulevya  katika zoezi maalum walilolifanya Jijini Dar es Salaam', 'Jaji wa Mahakama Kuu Mhe. Edwin Kakolaki akishirikiana na Mkurugenzi wa Mashtaka Bw. Biswalo Mganga kuteketeza Madawa ya Kulevya  katika zoezi maalum walilolifanya Jijini Dar es Salaam', 'Jaji wa Mahakama Kuu Mhe. Edwin Kakolaki akishirikiana na Mkurugenzi wa Mashtaka Bw. Biswalo Mganga kuteketeza Madawa ya Kulevya  katika zoezi maalum walilolifanya Jijini Dar es Salaam', 'Jaji wa Mahakama Kuu Mhe. Edwin Kakolaki akishirikiana na Mkurugenzi wa Mashtaka Bw. Biswalo Mganga kuteketeza Madawa ya Kulevya  katika zoezi maalum walilolifanya Jijini Dar es Salaam', 'image/jpeg', '/uploads/gallery/', '', '1605272006-IMG-20201113-WA0033.jpg', '', '1605272006-img-20201113-wa0033-jpg', 0, 1, 1, '2020-11-13 09:53:26', '2020-11-13 09:53:26'),
(277, 'Madawa ya kulevya yaliyokusanywa ili  kuteketezwa Jijini Dar es salaam mara baada ya kesi zake kufanyiwa kazi , na watuhumiwa kusomewa hukumu zao, ambapo zoezi hilo liliongozwa na Jaji wa Mahakama Kuu Mhe. Edwin Kakolaki kwa kushirikiana na Mkurugenzi wa ', 'Madawa ya kulevya yaliyokusanywa ili  kuteketezwa Jijini Dar es salaam mara baada ya kesi zake kufanyiwa kazi, na watuhumiwa kusomewa hukumu zao, ambapo zoezi hilo liliongozwa na Jaji wa Mahakama Kuu Mhe. Edwin Kakolaki kwa kushirikiana na Mkurugenzi wa M', 'Madawa ya kulevya yaliyokusanywa ili  kuteketezwa Jijini Dar es salaam mara baada ya kesi zake kufanyiwa kazi, na watuhumiwa kusomewa hukumu zao, ambapo zoezi hilo liliongozwa na Jaji wa Mahakama Kuu Mhe. Edwin Kakolaki kwa kushirikiana na Mkurugenzi wa Mashtaka Bw. Biswalo Mganga, Mamlaka ya Kudhibiti na Kupambana na Madawa ya Kulevya, NEMC, na Mawakili wa kujitegemea.', 'Madawa ya kulevya yaliyokusanywa ili  kuteketezwa Jijini Dar es salaam mara baada ya kesi zake kufanyiwa kazi, na watuhumiwa kusomewa hukumu zao, ambapo zoezi hilo liliongozwa na Jaji wa Mahakama Kuu Mhe. Edwin Kakolaki kwa kushirikiana na Mkurugenzi wa Mashtaka Bw. Biswalo Mganga, Mamlaka ya Kudhibiti na Kupambana na Madawa ya Kulevya, NEMC, na Mawakili wa kujitegemea.', 'image/jpeg', '/uploads/gallery/', '', '1605272927-IMG-20201113-WA0031.jpg', '', '1605272927-img-20201113-wa0031-jpg', 0, 1, 1, '2020-11-13 10:08:47', '2020-11-13 10:08:47'),
(278, 'Madawa ya kulevya yaliyokusanywa ili  kuteketezwa Jijini Dar es salaam mara baada ya kesi zake kufanyiwa kazi, na watuhumiwa kusomewa hukumu zao, ambapo zoezi hilo liliongozwa na Jaji wa Mahakama Kuu Mhe. Edwin Kakolaki kwa kushirikiana na Mkurugenzi wa M', 'Madawa ya kulevya yaliyokusanywa ili  kuteketezwa Jijini Dar es salaam mara baada ya kesi zake kufanyiwa kazi, na watuhumiwa kusomewa hukumu zao, ambapo zoezi hilo liliongozwa na Jaji wa Mahakama Kuu Mhe. Edwin Kakolaki kwa kushirikiana na Mkurugenzi wa M', 'Madawa ya kulevya yaliyokusanywa ili  kuteketezwa Jijini Dar es salaam mara baada ya kesi zake kufanyiwa kazi, na watuhumiwa kusomewa hukumu zao, ambapo zoezi hilo liliongozwa na Jaji wa Mahakama Kuu Mhe. Edwin Kakolaki kwa kushirikiana na Mkurugenzi wa Mashtaka Bw. Biswalo Mganga, Mamlaka ya Kudhibiti na Kupambana na Madawa ya Kulevya, NEMC, na Mawakili wa kujitegemea.', 'Madawa ya kulevya yaliyokusanywa ili  kuteketezwa Jijini Dar es salaam mara baada ya kesi zake kufanyiwa kazi, na watuhumiwa kusomewa hukumu zao, ambapo zoezi hilo liliongozwa na Jaji wa Mahakama Kuu Mhe. Edwin Kakolaki kwa kushirikiana na Mkurugenzi wa Mashtaka Bw. Biswalo Mganga, Mamlaka ya Kudhibiti na Kupambana na Madawa ya Kulevya, NEMC, na Mawakili wa kujitegemea.', 'image/jpeg', '/uploads/gallery/', '', '1605273133-IMG-20201113-WA0029.jpg', '', '1605273133-img-20201113-wa0029-jpg', 0, 1, 1, '2020-11-13 10:12:13', '2020-11-13 10:12:13'),
(279, 'Madawa ya kulevya yaliyokusanywa ili  kuteketezwa Jijini Dar es salaam mara baada ya kesi zake kufanyiwa kazi, na watuhumiwa kusomewa hukumu zao, ambapo zoezi hilo liliongozwa na Jaji wa Mahakama Kuu Mhe. Edwin Kakolaki kwa kushirikiana na Mkurugenzi wa M', 'Madawa ya kulevya yaliyokusanywa ili  kuteketezwa Jijini Dar es salaam mara baada ya kesi zake kufanyiwa kazi, na watuhumiwa kusomewa hukumu zao, ambapo zoezi hilo liliongozwa na Jaji wa Mahakama Kuu Mhe. Edwin Kakolaki kwa kushirikiana na Mkurugenzi wa M', 'Madawa ya kulevya yaliyokusanywa ili  kuteketezwa Jijini Dar es salaam mara baada ya kesi zake kufanyiwa kazi, na watuhumiwa kusomewa hukumu zao, ambapo zoezi hilo liliongozwa na Jaji wa Mahakama Kuu Mhe. Edwin Kakolaki kwa kushirikiana na Mkurugenzi wa Mashtaka Bw. Biswalo Mganga, Mamlaka ya Kudhibiti na Kupambana na Madawa ya Kulevya, NEMC, na Mawakili wa kujitegemea.', 'Madawa ya kulevya yaliyokusanywa ili  kuteketezwa Jijini Dar es salaam mara baada ya kesi zake kufanyiwa kazi, na watuhumiwa kusomewa hukumu zao, ambapo zoezi hilo liliongozwa na Jaji wa Mahakama Kuu Mhe. Edwin Kakolaki kwa kushirikiana na Mkurugenzi wa Mashtaka Bw. Biswalo Mganga, Mamlaka ya Kudhibiti na Kupambana na Madawa ya Kulevya, NEMC, na Mawakili wa kujitegemea.', 'image/jpeg', '/uploads/gallery/', '', '1605273310-IMG-20201113-WA0021.jpg', '', '1605273310-img-20201113-wa0021-jpg', 0, 1, 1, '2020-11-13 10:15:10', '2020-11-13 10:15:10'),
(280, 'MADAWA YA KULEVYA YATEKETEZWA JIJINI DAR ES SALAAM DPP BISWALO MGANGA  NA JAJI MAHAKAMA KUU EDWIN KAKOLAKI WAONGOZA ZOEZI', 'MADAWA YA KULEVYA YATEKETEZWA JIJINI DAR ES SALAAM DPP BISWALO MGANGA  NA JAJI MAHAKAMA KUU EDWIN KAKOLAKI WAONGOZA ZOEZI', 'https://www.youtube.com/watch?v=BTJEkNd8mag&feature=youtu.be', 'https://www.youtube.com/watch?v=BTJEkNd8mag&feature=youtu.be', '', '', 'https://www.youtube.com/watch?v=BTJEkNd8mag&feature=youtu.be', '', '', '', 0, 14, 1, '2020-11-13 12:33:17', '2020-11-13 12:33:17'),
(281, 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akiwa ameongozana na Mkurugenzi Idara ya Urejeshaji wa Mali  zinazohusiana na Uhalifu  wa Kupangwa Unaovuka mipaka (kulia) Bw. Paul Kadushi na Mkuu wa gereza la Karanga Moshi Frank Mwakijingu (kushoto) wakiwa kati', 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akiwa ameongozana na Mkurugenzi Idara ya Urejeshaji wa Mali  zinazohusiana na Uhalifu  wa Kupangwa Unaovuka mipaka (kulia) Bw. Paul Kadushi na Mkuu wa gereza la Karanga Moshi Frank Mwakijingu (kushoto) wakiwa kati', 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akiwa ameongozana na Mkurugenzi Idara ya Urejeshaji wa Mali  zinazohusiana na Uhalifu  wa Kupangwa Unaovuka mipaka (kulia) Bw. Paul Kadushi na Mkuu wa gereza la Karanga Moshi Frank Mwakijingu (kushoto) wakiwa katika ziara ya kutembelea gereza la Karanga Moshi. Katika ziara hiyo Mkurugenzi wa Mashtaka alipata nafasi ya kuwasikiliza Wafungwa na Mahabusu waliokuwepo katika gereza hilo na hatimaye Mkurugenzi wa Mashtaka aliwaachia baadhi ya Mahabusu baada ya kuwasikiliza na kuangalia mwenendo wao wa makosa.', 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akiwa ameongozana na Mkurugenzi Idara ya Urejeshaji wa Mali  zinazohusiana na Uhalifu  wa Kupangwa Unaovuka mipaka (kulia) Bw. Paul Kadushi na Mkuu wa gereza la Karanga Moshi Frank Mwakijingu (kushoto) wakiwa katika ziara ya kutembelea gereza la Karanga Moshi. Katika ziara hiyo Mkurugenzi wa Mashtaka alipata nafasi ya kuwasikiliza Wafungwa na Mahabusu waliokuwepo katika gereza hilo na hatimaye Mkurugenzi wa Mashtaka aliwaachia baadhi ya Mahabusu baada ya kuwasikiliza na kuangalia mwenendo wao wa makosa.', 'image/jpeg', '/uploads/gallery/', '', '1606947643-nN.jpg', '', '1606947643-nn-jpg', 0, 1, 1, '2020-12-02 19:20:44', '2020-12-02 19:20:44'),
(282, 'Timu kutoka Ofisi ya Taifa ya Mashtaka ikiongozwa na Mkurugenzi wa Mashtaka Bw. Biswalo Mganga ukiwa katika ofisi ya Katibu Tawala Mkoa wa Kilimanjaro Dkt. Khatib Malimi Kazungu tayari kwa kuanza shughuli za ufuatiliaji wa utendaji kazi Mkoa wa Kilimanjar', 'Timu kutoka Ofisi ya Taifa ya Mashtaka ikiongozwa na Mkurugenzi wa Mashtaka Bw. Biswalo Mganga ukiwa katika ofisi ya Katibu Tawala Mkoa wa Kilimanjaro Dkt. Khatib Malimi Kazungu tayari kwa kuanza shughuli za ufuatiliaji wa utendaji kazi Mkoa wa Kilimanjar', 'Timu kutoka Ofisi ya Taifa ya Mashtaka ikiongozwa na Mkurugenzi wa Mashtaka Bw. Biswalo Mganga ukiwa katika ofisi ya Katibu Tawala Mkoa wa Kilimanjaro Dkt. Khatib Malimi Kazungu tayari kwa kuanza shughuli za ufuatiliaji wa utendaji kazi Mkoa wa Kilimanjaro.', 'Timu kutoka Ofisi ya Taifa ya Mashtaka ikiongozwa na Mkurugenzi wa Mashtaka Bw. Biswalo Mganga ukiwa katika ofisi ya Katibu Tawala Mkoa wa Kilimanjaro Dkt. Khatib Malimi Kazungu tayari kwa kuanza shughuli za ufuatiliaji wa utendaji kazi Mkoa wa Kilimanjaro.', 'image/jpeg', '/uploads/gallery/', '', '1606947819-TT.jpg', '', '1606947819-tt-jpg', 0, 1, 1, '2020-12-02 19:23:39', '2020-12-02 19:23:39'),
(283, 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akisalimiana na Askari Magereza wa gereza la Karanga wakati wa ziara yake ya kutembelea gereza hilo', 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akisalimiana na Askari Magereza wa gereza la Karanga wakati wa ziara yake ya kutembelea gereza hilo', 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akisalimiana na Askari Magereza wa gereza la Karanga wakati wa ziara yake ya kutembelea gereza hilo', 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akisalimiana na Askari Magereza wa gereza la Karanga wakati wa ziara yake ya kutembelea gereza hilo', 'image/jpeg', '/uploads/gallery/', '', '1606947895-VB.jpg', '', '1606947895-vb-jpg', 0, 1, 1, '2020-12-02 19:24:56', '2020-12-02 19:24:56'),
(284, 'Baadhi ya Makatibu Sheria  Ofisi ya Taifa ya Mashtaka kutoka  Mikoa Ishirini na Sita.(26) Tanzania  wakiwa  katika picha ya pamoja na Mkurugenzi wa Mashtaka Bw. Biswalo Mganga pamoja na menejimenti ya Ofisi ya taifa ya Mashtaka', 'Baadhi ya Makatibu Sheria  Ofisi ya Taifa ya Mashtaka kutoka  Mikoa Ishirini na Sita.(26) Tanzania  wakiwa  katika picha ya pamoja na Mkurugenzi wa Mashtaka Bw. Biswalo Mganga pamoja na menejimenti ya Ofisi ya taifa ya Mashtaka', 'Baadhi ya Makatibu Sheria  Ofisi ya Taifa ya Mashtaka kutoka  Mikoa Ishirini na Sita.(26) Tanzania  wakiwa  katika picha ya pamoja na Mkurugenzi wa Mashtaka Bw. Biswalo Mganga pamoja na menejimenti ya Ofisi ya taifa ya Mashtaka', 'Baadhi ya Makatibu Sheria  Ofisi ya Taifa ya Mashtaka kutoka  Mikoa Ishirini na Sita.(26) Tanzania  wakiwa  katika picha ya pamoja na Mkurugenzi wa Mashtaka Bw. Biswalo Mganga pamoja na menejimenti ya Ofisi ya taifa ya Mashtaka', 'image/jpeg', '/uploads/gallery/', '', '1612852901-444.jpg', '', '1612852901-444-jpg', 0, 1, 1, '2021-02-09 03:41:41', '2021-02-09 03:41:41'),
(286, 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akitazama mafunzo kwa vitendo baada ya Makatibu Sheria kutoka Mikoa Ishirini na Sita (26) nchini kupewa Mafunzo  ya Ukusanyaji, Uchakataji, Utumaji na Utunzaji wa Takwimu za Kesi za Jinai na  Makosa ya Rushwa.', 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akitazama mafunzo kwa vitendo baada ya Makatibu Sheria kutoka Mikoa Ishirini na Sita (26) nchini kupewa Mafunzo  ya Ukusanyaji, Uchakataji, Utumaji na Utunzaji wa Takwimu za Kesi za Jinai na  Makosa ya Rushwa.', 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akitazama mafunzo kwa vitendo baada ya Makatibu Sheria kutoka Mikoa Ishirini na Sita (26) nchini kupewa Mafunzo  ya Ukusanyaji, Uchakataji, Utumaji na Utunzaji wa Takwimu za Kesi za Jinai na  Makosa ya Rushwa.', 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akitazama mafunzo kwa vitendo baada ya Makatibu Sheria kutoka Mikoa Ishirini na Sita (26) nchini kupewa Mafunzo  ya Ukusanyaji, Uchakataji, Utumaji na Utunzaji wa Takwimu za Kesi za Jinai na  Makosa ya Rushwa.', 'image/jpeg', '/uploads/gallery/', '', '1612853054-333.jpg', '', '1612853054-333-jpg', 0, 1, 1, '2021-02-09 03:44:14', '2021-02-09 03:47:14'),
(288, 'Baadhi ya Makatibu Sheria  Ofisi ya Taifa ya Mashtaka kutoka  Mikoa Ishirini na Sita.(26) wakiwa katika mafunzo kwa  vitendo kuhusiana na mfumo mpya wa Ukusanyaji,Uchakataji, Utumaji na Utunzaji wa Takwimu za Kesi za Jinai, na Makosa ya Rushwa.', 'Baadhi ya Makatibu Sheria  Ofisi ya Taifa ya Mashtaka kutoka  Mikoa Ishirini na Sita.(26) wakiwa katika mafunzo kwa  vitendo kuhusiana na mfumo mpya wa Ukusanyaji,Uchakataji, Utumaji na Utunzaji wa Takwimu za Kesi za Jinai, na Makosa ya Rushwa.', 'Baadhi ya Makatibu Sheria  Ofisi ya Taifa ya Mashtaka kutoka  Mikoa Ishirini na Sita.(26) wakiwa katika mafunzo kwa  vitendo kuhusiana na mfumo mpya wa Ukusanyaji,Uchakataji, Utumaji na Utunzaji wa Takwimu za Kesi za Jinai, na Makosa ya Rushwa.', 'Baadhi ya Makatibu Sheria  Ofisi ya Taifa ya Mashtaka kutoka  Mikoa Ishirini na Sita.(26) wakiwa katika mafunzo kwa  vitendo kuhusiana na mfumo mpya wa Ukusanyaji,Uchakataji, Utumaji na Utunzaji wa Takwimu za Kesi za Jinai, na Makosa ya Rushwa.', 'image/jpeg', '/uploads/gallery/', '', '1612853382-222.jpg', '', '1612853382-222-jpg', 0, 1, 1, '2021-02-09 03:49:42', '2021-02-09 03:49:42'),
(290, 'Washiriki wa Mafunzo ya kuhusiana na  mfumo mpya wa Ukusanyaji,Uchakataji, Utumaji na Utunzaji wa Takwimu za Kesi za Jinai, na kumbukumbu za  Makosa ya Rushwa wakiwa katika picha ya pamoja na Mkurugenzi wa Mashtaka Bw.Biswalo Mganga.', 'Washiriki wa Mafunzo ya kuhusiana na  mfumo mpya wa Ukusanyaji,Uchakataji, Utumaji na Utunzaji wa Takwimu za Kesi za Jinai, na kumbukumbu za  Makosa ya Rushwa wakiwa katika picha ya pamoja na Mkurugenzi wa Mashtaka Bw.Biswalo Mganga.', 'Washiriki wa Mafunzo ya kuhusiana na  mfumo mpya wa Ukusanyaji,Uchakataji, Utumaji na Utunzaji wa Takwimu za Kesi za Jinai, na kumbukumbu za  Makosa ya Rushwa wakiwa katika picha ya pamoja na Mkurugenzi wa Mashtaka Bw.Biswalo Mganga.', 'Washiriki wa Mafunzo ya kuhusiana na  mfumo mpya wa Ukusanyaji,Uchakataji, Utumaji na Utunzaji wa Takwimu za Kesi za Jinai, na kumbukumbu za  Makosa ya Rushwa wakiwa katika picha ya pamoja na Mkurugenzi wa Mashtaka Bw.Biswalo Mganga.', 'image/jpeg', '/uploads/gallery/', '', '1612853638-bgtt.jpg', '', '1612853638-bgtt-jpg', 0, 1, 1, '2021-02-09 03:53:59', '2021-02-09 03:53:59'),
(292, 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akifungua mafunzo kwa  mawakili 29 wa serikali toka mikoa yote nchini  juu ya kuwajengea uwezo wa Utendaji kazi', 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akifungua mafunzo kwa  mawakili 29 wa serikali toka mikoa yote nchini  juu ya kuwajengea uwezo wa Utendaji kazi', 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akifungua mafunzo kwa  mawakili 29 wa serikali toka mikoa yote nchini  juu ya kuwajengea uwezo wa Utendaji kazi', 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akifungua mafunzo kwa  mawakili 29 wa serikali toka mikoa yote nchini  juu ya kuwajengea uwezo wa Utendaji kazi', 'image/jpeg', '/uploads/gallery/', '', '1615969378-7.jpg', '', '1615969378-7-jpg', 0, 1, 1, '2021-03-17 05:22:58', '2021-03-17 05:22:58'),
(294, 'Baadhi ya mawakili wa serikali toka mikoa yote ya Tanzania Bara wakiendelea kufuatilia kwa ukaribu na umakini  elimu inayotolewa  kuhusiana na uendeshaji wa kesi za rushwa, utakatishaji fedha na udanganyifu kwa njia ya kimtandao', 'Baadhi ya mawakili wa serikali toka mikoa yote ya Tanzania Bara wakiendelea kufuatilia kwa ukaribu na umakini  elimu inayotolewa  kuhusiana na uendeshaji wa kesi za rushwa, utakatishaji fedha na udanganyifu kwa njia ya kimtandao', 'Baadhi ya mawakili wa serikali toka mikoa yote ya Tanzania Bara wakiendelea kufuatilia kwa ukaribu na umakini  elimu inayotolewa  kuhusiana na uendeshaji wa kesi za rushwa, utakatishaji fedha na udanganyifu kwa njia ya kimtandao', 'Baadhi ya mawakili wa serikali toka mikoa yote ya Tanzania Bara wakiendelea kufuatilia kwa ukaribu na umakini  elimu inayotolewa  kuhusiana na uendeshaji wa kesi za rushwa, utakatishaji fedha na udanganyifu kwa njia ya kimtandao', 'image/jpeg', '/uploads/gallery/', '', '1615969446-5.jpg', '', '1615969446-5-jpg', 0, 1, 1, '2021-03-17 05:24:07', '2021-03-17 05:24:07'),
(296, 'Baadhi ya mawakili wa serikali toka mikoa yote ya Tanzania Bara wakiendelea kufuatilia kwa ukaribu na umakini  elimu inayotolewa  kuhusiana na uendeshaji wa kesi za rushwa, utakatishaji fedha na udanganyifu kwa njia ya kimtandao', 'Baadhi ya mawakili wa serikali toka mikoa yote ya Tanzania Bara wakiendelea kufuatilia kwa ukaribu na umakini  elimu inayotolewa  kuhusiana na uendeshaji wa kesi za rushwa, utakatishaji fedha na udanganyifu kwa njia ya kimtandao', 'Baadhi ya mawakili wa serikali toka mikoa yote ya Tanzania Bara wakiendelea kufuatilia kwa ukaribu na umakini  elimu inayotolewa  kuhusiana na uendeshaji wa kesi za rushwa, utakatishaji fedha na udanganyifu kwa njia ya kimtandao', 'Baadhi ya mawakili wa serikali toka mikoa yote ya Tanzania Bara wakiendelea kufuatilia kwa ukaribu na umakini  elimu inayotolewa  kuhusiana na uendeshaji wa kesi za rushwa, utakatishaji fedha na udanganyifu kwa njia ya kimtandao', 'image/jpeg', '/uploads/gallery/', '', '1615969481-3.jpg', '', '1615969481-3-jpg', 0, 1, 1, '2021-03-17 05:24:41', '2021-03-17 05:24:41'),
(298, 'Kamishina Msaidizi wa Jeshi la Polisi Suleiman Nyakulinga akizungumza na washiriki wa mafunzo ambao ni mawakili wa serikali katika ukumbi wa TMDA  Buzuruga Jijini Mwanza', 'Kamishina Msaidizi wa Jeshi la Polisi Suleiman Nyakulinga akizungumza na washiriki wa mafunzo ambao ni mawakili wa serikali katika ukumbi wa TMDA  Buzuruga Jijini Mwanza', 'Kamishina Msaidizi wa Jeshi la Polisi Suleiman Nyakulinga akizungumza na washiriki wa mafunzo ambao ni mawakili wa serikali katika ukumbi wa TMDA  Buzuruga Jijini Mwanza', 'Kamishina Msaidizi wa Jeshi la Polisi Suleiman Nyakulinga akizungumza na washiriki wa mafunzo ambao ni mawakili wa serikali katika ukumbi wa TMDA  Buzuruga Jijini Mwanza', 'image/jpeg', '/uploads/gallery/', '', '1615969534-2.jpg', '', '1615969534-2-jpg', 0, 1, 1, '2021-03-17 05:25:35', '2021-03-17 05:25:35'),
(300, 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akisaini kitabu cha maombolezo  kilichopo katika Ofisi ya Mkuu wa Wilaya ya Chato, Geita.  Bw. Biswalo Mganga yuko Chato kwa ajili ya kushiriki mazishi ya Hayati Rais Dkt John Pombe Joseph Magufuli', 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akisaini kitabu cha maombolezo  kilichopo katika Ofisi ya Mkuu wa Wilaya ya Chato, Geita.  Bw. Biswalo Mganga yuko Chato kwa ajili ya kushiriki mazishi ya Hayati Rais Dkt John Pombe Joseph Magufuli', 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akisaini kitabu cha maombolezo  kilichopo katika Ofisi ya Mkuu wa Wilaya ya Chato, Geita.\r\n\r\nBw. Biswalo Mganga yuko Chato kwa ajili ya kushiriki mazishi ya Hayati Rais Dkt John Pombe Joseph Magufuli', 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akisaini kitabu cha maombolezo  kilichopo katika Ofisi ya Mkuu wa Wilaya ya Chato, Geita.\r\n\r\nBw. Biswalo Mganga yuko Chato kwa ajili ya kushiriki mazishi ya Hayati Rais Dkt John Pombe Joseph Magufuli', 'image/jpeg', '/uploads/gallery/', '', '1616653951-h.jpg', '', '1616653951-h-jpg', 0, 1, 1, '2021-03-25 03:32:32', '2021-03-25 03:34:26'),
(302, 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akisaini kitabu cha maombolezo  kilichopo katika Ofisi ya Mkuu wa Wilaya ya Chato, Geita.  Bw. Biswalo Mganga yuko Chato kwa ajili ya kushiriki mazishi ya Hayati Rais Dkt John Pombe Joseph Magufuli', 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akisaini kitabu cha maombolezo  kilichopo katika Ofisi ya Mkuu wa Wilaya ya Chato, Geita.  Bw. Biswalo Mganga yuko Chato kwa ajili ya kushiriki mazishi ya Hayati Rais Dkt John Pombe Joseph Magufuli', 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akisaini kitabu cha maombolezo  kilichopo katika Ofisi ya Mkuu wa Wilaya ya Chato, Geita.\r\n\r\nBw. Biswalo Mganga yuko Chato kwa ajili ya kushiriki mazishi ya Hayati Rais Dkt John Pombe Joseph Magufuli', 'Mkurugenzi wa Mashtaka Bw. Biswalo Mganga akisaini kitabu cha maombolezo  kilichopo katika Ofisi ya Mkuu wa Wilaya ya Chato, Geita.\r\n\r\nBw. Biswalo Mganga yuko Chato kwa ajili ya kushiriki mazishi ya Hayati Rais Dkt John Pombe Joseph Magufuli', 'image/jpeg', '/uploads/gallery/', '', '1616654211-y.jpg', '', '1616654211-y-jpg', 0, 1, 1, '2021-03-25 03:36:52', '2021-03-25 03:36:52'),
(314, 'Rais wa Jamhuri ya Muungano wa Tanzania Mhe. Samia Suluhu Hassan akimuapisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu   katika hafla iliyofanyika Ikulu jijini Dar es Salaam tarehe 19 Mei,2021.', 'Rais wa Jamhuri ya Muungano wa Tanzania Mhe. Samia Suluhu Hassan akimuapisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu   katika hafla iliyofanyika Ikulu jijini Dar es Salaam  tarehe 19 Mei,2021.', 'Rais wa Jamhuri ya Muungano wa Tanzania Mhe. Samia Suluhu Hassan akimuapisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu   katika hafla iliyofanyika Ikulu jijini Dar es Salaam  tarehe 19 Mei,2021.', 'Rais wa Jamhuri ya Muungano wa Tanzania Mhe. Samia Suluhu Hassan akimuapisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu   katika hafla iliyofanyika Ikulu jijini Dar es Salaam  tarehe 19 Mei,2021.', 'image/jpeg', '/uploads/gallery/', '', '1622099421-IMG-20210519-WA0012.jpg', '', '1622099421-img-20210519-wa0012-jpg', 0, 1, 1, '2021-05-27 04:10:21', '2021-05-27 04:10:21'),
(316, 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu na Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande wakiwa katika picha ya pamoja waliyopiga na Watendaji wengine walioteuliwa na Rais wa Jamhuri ya Muungano wa Tanzania Mhe. Samia Suluhu Hassan wakati wa hafla ', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu na Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande wakiwa katika picha ya pamoja waliyopiga na Watendaji wengine walioteuliwa na Rais wa Jamhuri ya Muungano wa Tanzania Mhe. Samia Suluhu Hassan wakati wa hafla ', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu na Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande wakiwa katika picha ya pamoja waliyopiga na Watendaji wengine walioteuliwa na Rais wa Jamhuri ya Muungano wa Tanzania Mhe. Samia Suluhu Hassan wakati wa hafla ya kuwaapisha iliyofanyika Ikulu jijini Dar es Salaam  tarehe 19 Mei,2021.  Waliokaa mbele ni Viongozi Wakuu wa Kitaifa waliohudhuria hafla hiyo.', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu na Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande wakiwa katika picha ya pamoja waliyopiga na Watendaji wengine walioteuliwa na Rais wa Jamhuri ya Muungano wa Tanzania Mhe. Samia Suluhu Hassan wakati wa hafla ya kuwaapisha iliyofanyika Ikulu jijini Dar es Salaam  tarehe 19 Mei,2021.  Waliokaa mbele ni Viongozi Wakuu wa Kitaifa waliohudhuria hafla hiyo.', 'image/jpeg', '/uploads/gallery/', '', '1622099888-IMG-20210519-WA0014.jpg', '', '1622099888-img-20210519-wa0014-jpg', 0, 1, 1, '2021-05-27 04:18:08', '2021-05-27 04:18:08'),
(324, 'DPP Mwakitalu atembelea na kukagua hali ya magereza Ukonga na Keko Jijini Dar es salaam, aahidi kuzitafutia ufumbuzi changamoto zilizopo.', 'DPP Mwakitalu atembelea na kukagua hali ya magereza Ukonga na Keko Jijini Dar es salaam, aahidi kuzitafutia ufumbuzi changamoto zilizopo.', 'Mkurugenzi wa Mashtaka nchini Bw. Sylvester Mwakitalu amefanya ziara ya ukaguzi  katika Magereza ya Keko na Gereza Kuu Ukonga ya jijini Dar es Salaam ili kujionea hali halisi ya magereza hayo, kuzugumza na mahabusu pamoja na wafungwa na kuahidi kushirikiana na vyombo vingine kutatua changamoto zinapelekea kuwepo kwa msongamano  ndani ya magereza hayo.', 'Mkurugenzi wa Mashtaka nchini Bw. Sylvester Mwakitalu amefanya ziara ya ukaguzi  katika Magereza ya Keko na Gereza Kuu Ukonga ya jijini Dar es Salaam ili kujionea hali halisi ya magereza hayo, kuzugumza na mahabusu pamoja na wafungwa na kuahidi kushirikiana na vyombo vingine kutatua changamoto zinapelekea kuwepo kwa msongamano  ndani ya magereza hayo.', 'image/jpeg', '/uploads/gallery/', '', '1623514765-22222.jpg', '', '1623514765-22222-jpg', 0, 1, 1, '2021-06-12 13:19:25', '2021-06-12 13:19:25'),
(330, 'Mkuu wa Gereza Kuu Ukonga Jijini Dar es salaam SSP Hamis Lissu akimuongoza Mkurugenzi wa Mashtaka Nchini Bw. Sylvester Mwakitalu', 'Mkuu wa Gereza Kuu Ukonga Jijini Dar es salaam SSP Hamis Lissu akimuongoza Mkurugenzi wa Mashtaka Nchini Bw. Sylvester Mwakitalu', 'Mkuu wa Gereza Kuu Ukonga Jijini Dar es salaam SSP Hamis Lissu akimuongoza Mkurugenzi wa Mashtaka Nchini Bw. Sylvester Mwakitalu pamoja na timu yake wakati walipotembelea Gerezani hapo Mapema leo Juni 12,2021', 'Mkuu wa Gereza Kuu Ukonga Jijini Dar es salaam SSP Hamis Lissu akimuongoza Mkurugenzi wa Mashtaka Nchini Bw. Sylvester Mwakitalu pamoja na timu yake wakati walipotembelea Gerezani hapo Mapema leo Juni 12,2021', 'image/jpeg', '/uploads/gallery/', '', '1623515176-00000.jpg', '', '1623515176-00000-jpg', 0, 1, 1, '2021-06-12 13:26:16', '2021-06-12 13:26:16'),
(332, 'Mkurugenzi wa Mashtaka Nchini Bw. Sylvester akiwa katika picha ya Pamoja na Mkuu wa Gereza Kuu Ukonga Jijini Dar es salaam SSP Hamis Lissu mara ya Kutembelea na Kukagua Magereza hiyo', 'Mkurugenzi wa Mashtaka Nchini Bw. Sylvester akiwa katika picha ya Pamoja na Mkuu wa Gereza Kuu Ukonga Jijini Dar es salaam SSP Hamis Lissu mara ya Kutembelea na Kukagua Magereza hiyo', 'Mkurugenzi wa Mashtaka Nchini Bw. Sylvester akiwa katika picha ya Pamoja na Mkuu wa Gereza Kuu Ukonga Jijini Dar es salaam SSP Hamis Lissu mara ya Kutembelea na Kukagua Magereza hiyo', 'Mkurugenzi wa Mashtaka Nchini Bw. Sylvester akiwa katika picha ya Pamoja na Mkuu wa Gereza Kuu Ukonga Jijini Dar es salaam SSP Hamis Lissu mara ya Kutembelea na Kukagua Magereza hiyo', 'image/jpeg', '/uploads/gallery/', '', '1623515290-TUUU.jpg', '', '1623515290-tuuu-jpg', 0, 1, 1, '2021-06-12 13:28:11', '2021-06-12 13:28:11'),
(334, 'Mkurugenzi wa Mashtaka Nchini Bw. Sylvester Mwakitalu akiwa ameambatana na Viongozi wengine wakati wa zoezi la kutembelea magereza ya Ukonga na Keko Jijini Dar es Salaam mapema leo Juni 12,2021.', 'Mkurugenzi wa Mashtaka Nchini Bw. Sylvester Mwakitalu akiwa ameambatana na Viongozi wengine wakati wa zoezi la kutembelea magereza ya Ukonga na Keko Jijini Dar es Salaam mapema leo Juni 12,2021.', 'Mkurugenzi wa Mashtaka Nchini Bw. Sylvester Mwakitalu akiwa ameambatana na Viongozi wengine wakati wa zoezi la kutembelea magereza ya Ukonga na Keko Jijini Dar es Salaam mapema leo Juni 12,2021.', 'Mkurugenzi wa Mashtaka Nchini Bw. Sylvester Mwakitalu akiwa ameambatana na Viongozi wengine wakati wa zoezi la kutembelea magereza ya Ukonga na Keko Jijini Dar es Salaam mapema leo Juni 12,2021.', 'image/jpeg', '/uploads/gallery/', '', '1623515417-WQ.jpg', '', '1623515417-wq-jpg', 0, 1, 1, '2021-06-12 13:30:17', '2021-06-12 13:30:17'),
(336, 'Mkurugenzi wa Mashtaka Nchini Bw. Sylvester Mwakitalu  akiwaaga Maafisa wa Jeshi la Magereza Nchini katika Gereza Kuu Ukonga Jijini Dar es salaam mara baada ya kuhitimisha ziara yake katika gereza hilo', 'Mkurugenzi wa Mashtaka Nchini Bw. Sylvester Mwakitalu  akiwaaga Maafisa wa Jeshi la Magereza Nchini katika Gereza Kuu Ukonga Jijini Dar es salaam mara baada ya kuhitimisha ziara yake katika gereza hilo', 'Mkurugenzi wa Mashtaka Nchini Bw. Sylvester Mwakitalu  akiwaaga Maafisa wa Jeshi la Magereza Nchini katika Gereza Kuu Ukonga Jijini Dar es salaam mara baada ya kuhitimisha ziara yake katika gereza hilo', 'Mkurugenzi wa Mashtaka Nchini Bw. Sylvester Mwakitalu  akiwaaga Maafisa wa Jeshi la Magereza Nchini katika Gereza Kuu Ukonga Jijini Dar es salaam mara baada ya kuhitimisha ziara yake katika gereza hilo', 'image/jpeg', '/uploads/gallery/', '', '1623515565-KAMATI.jpg', '', '1623515565-kamati-jpg', 0, 1, 1, '2021-06-12 13:32:45', '2021-06-12 13:32:45'),
(340, 'Mkurugenzi wa Mashtaka Nchini Bw. Sylvester Mwakitalu akipokea maelezo ya uzalishaji wa bidhaa mbalimbali unaofanywa na Jeshi la Magereza Ukonga kutoka kwa Mkuu wa kiwanda SP Edger Kaiza leo Juni 12,2021.', 'Mkurugenzi wa Mashtaka Nchini Bw. Sylvester Mwakitalu akipokea maelezo ya uzalishaji wa bidhaa mbalimbali unaofanywa na Jeshi la Magereza Ukonga kutoka kwa Mkuu wa kiwanda SP Edger Kaiza leo Juni 12,2021.', 'Mkurugenzi wa Mashtaka Nchini Bw. Sylvester Mwakitalu akipokea maelezo ya uzalishaji wa bidhaa mbalimbali unaofanywa na Jeshi la Magereza Ukonga kutoka kwa Mkuu wa kiwanda SP Edger Kaiza leo Juni 12,2021.', 'Mkurugenzi wa Mashtaka Nchini Bw. Sylvester Mwakitalu akipokea maelezo ya uzalishaji wa bidhaa mbalimbali unaofanywa na Jeshi la Magereza Ukonga kutoka kwa Mkuu wa kiwanda SP Edger Kaiza leo Juni 12,2021.', 'image/jpeg', '/uploads/gallery/', '', '1623515799-SIBUKA.jpg', '', '1623515799-sibuka-jpg', 0, 1, 1, '2021-06-12 13:36:39', '2021-06-12 13:36:39'),
(344, 'Mkurugenzi wa Mashtaka (DPP) Sylvester Mwakitalu akipokea Maelezo kutoka kwa Mkuu wa Gereza la Mahabusu Segerea Mrakibu Mwandamizi wa Magereza(SSP)Daniel Mwakyoma wakati  alipotembelea Gereza hilo Juni 13,2021.', 'Mkurugenzi wa Mashtaka (DPP) Sylvester Mwakitalu akipokea Maelezo kutoka kwa Mkuu wa Gereza la Mahabusu Segerea Mrakibu Mwandamizi wa Magereza(SSP)Daniel Mwakyoma wakati  alipotembelea Gereza hilo Juni 13,2021.', 'Mkurugenzi wa Mashtaka (DPP) Sylvester Mwakitalu akipokea Maelezo kutoka kwa Mkuu wa Gereza la Mahabusu Segerea Mrakibu Mwandamizi wa Magereza(SSP)Daniel Mwakyoma wakati  alipotembelea Gereza hilo Juni 13,2021.', 'Mkurugenzi wa Mashtaka (DPP) Sylvester Mwakitalu akipokea Maelezo kutoka kwa Mkuu wa Gereza la Mahabusu Segerea Mrakibu Mwandamizi wa Magereza(SSP)Daniel Mwakyoma wakati  alipotembelea Gereza hilo Juni 13,2021.', 'image/jpeg', '/uploads/gallery/', '', '1623603637-3.jpg', '', '1623603637-3-jpg', 0, 1, 1, '2021-06-13 14:00:37', '2021-06-13 14:00:37'),
(346, 'Mkurugenzi wa Mashtaka (DPP) Sylvester Mwakitalu akiwasili katika gereza la Mahabusu Segerea na kupokelewa na mkuu wa gereza hilo Mrakibu Mwandamizi wa Magereza Daniel Mwakyoma Mapema juni 13,2021.', 'Mkurugenzi wa Mashtaka (DPP) Sylvester Mwakitalu akiwasili katika gereza la Mahabusu Segerea na kupokelewa na mkuu wa gereza hilo Mrakibu Mwandamizi wa Magereza Daniel Mwakyoma Mapema juni 13,2021.', 'Mkurugenzi wa Mashtaka (DPP) Sylvester Mwakitalu akiwasili katika gereza la Mahabusu Segerea na kupokelewa na mkuu wa gereza hilo Mrakibu Mwandamizi wa Magereza Daniel Mwakyoma Mapema juni 13,2021.', 'Mkurugenzi wa Mashtaka (DPP) Sylvester Mwakitalu akiwasili katika gereza la Mahabusu Segerea na kupokelewa na mkuu wa gereza hilo Mrakibu Mwandamizi wa Magereza Daniel Mwakyoma Mapema juni 13,2021.', 'image/jpeg', '/uploads/gallery/', '', '1623603721-1.jpg', '', '1623603721-1-jpg', 0, 1, 1, '2021-06-13 14:02:02', '2021-06-13 14:02:02');
INSERT INTO `media` (`id`, `title_en`, `title_sw`, `content_en`, `content_sw`, `mime`, `path`, `url`, `filename`, `iconurl`, `slug`, `user_id`, `gallery_id`, `status`, `created_at`, `updated_at`) VALUES
(348, 'Mkurugenzi wa Mashtaka (DPP) Sylvester Mwakitalu(Kushoto)akisalimiana na Mkuu wa Gereza la Mahabusu wanawake Segerea Mrakibu wa Magereza Iyunge Saganda (wa pili kutoka kushoto) wakati wa ziara ya kutembelea na kusikiliza changamoto za Mahabusu', 'Mkurugenzi wa Mashtaka (DPP) Sylvester Mwakitalu(Kushoto)akisalimiana na Mkuu wa Gereza la Mahabusu wanawake Segerea Mrakibu wa Magereza Iyunge Saganda (wa pili kutoka kushoto) wakati wa ziara ya kutembelea na kusikiliza changamoto za Mahabusu', 'Mkurugenzi wa Mashtaka (DPP) Sylvester Mwakitalu(Kushoto)akisalimiana na Mkuu wa Gereza la Mahabusu wanawake Segerea Mrakibu wa Magereza Iyunge Saganda (wa pili kutoka kushoto) wakati wa ziara ya kutembelea na kusikiliza changamoto za Mahabusu', 'Mkurugenzi wa Mashtaka (DPP) Sylvester Mwakitalu(Kushoto)akisalimiana na Mkuu wa Gereza la Mahabusu wanawake Segerea Mrakibu wa Magereza Iyunge Saganda (wa pili kutoka kushoto) wakati wa ziara ya kutembelea na kusikiliza changamoto za Mahabusu', 'image/jpeg', '/uploads/gallery/', '', '1623603777-6.jpg', '', '1623603777-6-jpg', 0, 1, 1, '2021-06-13 14:02:57', '2021-06-13 14:02:57'),
(350, 'Mkurugenzi wa Mashtaka (DPP) Sylvester Mwakitalu akisalimiana na baadhi ya maafisa wa magereza katika gereza la Mahabusu Segerea Mkoani Dar es salaam wakati wa ziara yake.', 'Mkurugenzi wa Mashtaka (DPP) Sylvester Mwakitalu akisalimiana na baadhi ya maafisa wa magereza katika gereza la Mahabusu Segerea Mkoani Dar es salaam wakati wa ziara yake.', 'Mkurugenzi wa Mashtaka (DPP) Sylvester Mwakitalu akisalimiana na baadhi ya maafisa wa magereza katika gereza la Mahabusu Segerea Mkoani Dar es salaam wakati wa ziara yake.', 'Mkurugenzi wa Mashtaka (DPP) Sylvester Mwakitalu akisalimiana na baadhi ya maafisa wa magereza katika gereza la Mahabusu Segerea Mkoani Dar es salaam wakati wa ziara yake.', 'image/jpeg', '/uploads/gallery/', '', '1623603848-BT.jpg', '', '1623603848-bt-jpg', 0, 1, 1, '2021-06-13 14:04:08', '2021-06-13 14:04:08'),
(352, 'Mkuu wa Gereza la Mahabusu Segerea Mrakibu Mwandamizi wa Magereza(SSP)Daniel Mwakyoma  akiwaongoza Viongozi kutoka Ofisi ya Taifa ya Mashtaka wakiongozwa na Mkurugenzi wa Mashtaka (DPP)Sylvester Mwakitalu kuelekea Gereza la  Mahabusu wanaume.', 'Mkuu wa Gereza la Mahabusu Segerea Mrakibu Mwandamizi wa Magereza(SSP)Daniel Mwakyoma  akiwaongoza Viongozi kutoka Ofisi ya Taifa ya Mashtaka wakiongozwa na Mkurugenzi wa Mashtaka (DPP)Sylvester Mwakitalu kuelekea Gereza la  Mahabusu wanaume.', 'Mkuu wa Gereza la Mahabusu Segerea Mrakibu Mwandamizi wa Magereza(SSP)Daniel Mwakyoma  akiwaongoza Viongozi kutoka Ofisi ya Taifa ya Mashtaka wakiongozwa na Mkurugenzi wa Mashtaka (DPP)Sylvester Mwakitalu kuelekea Gereza la  Mahabusu wanaume.', 'Mkuu wa Gereza la Mahabusu Segerea Mrakibu Mwandamizi wa Magereza(SSP)Daniel Mwakyoma  akiwaongoza Viongozi kutoka Ofisi ya Taifa ya Mashtaka wakiongozwa na Mkurugenzi wa Mashtaka (DPP)Sylvester Mwakitalu kuelekea Gereza la  Mahabusu wanaume.', 'image/jpeg', '/uploads/gallery/', '', '1623604015-WEMO.jpg', '', '1623604015-wemo-jpg', 0, 1, 1, '2021-06-13 14:06:55', '2021-06-13 14:06:55'),
(354, 'Mkurugenzi wa Mashtaka Bw.Sylvester Mwakitalu akizungumza na watumishi wa Ofisi ya Taifa ya Mashtaka Mkoa wa Singida mapema leo August 11,2021', 'Mkurugenzi wa Mashtaka Bw.Sylvester Mwakitalu akizungumza na watumishi wa Ofisi ya Taifa ya Mashtaka Mkoa wa Singida mapema leo August 11,2021', 'Mkurugenzi wa Mashtaka Bw.Sylvester Mwakitalu akizungumza na watumishi wa Ofisi ya Taifa ya Mashtaka Mkoa wa Singida wakati wa ziara yake aliyoifanya tarehe 11 Agosti, 2021. kulia  kwa Kaimu Mkurugenzi wa Mashtaka Idara ya Uendeshaji wa Kesi Bibi Neema Mwanda ambaye ameambatana nae katika ziara hiyo. Kushoto kwa Mkurugenzi wa Mashtaka  ni Kaimu Mwendesha Mashtaka Mkoa wa Singida Bee. Zakaria Ndaskoi', 'Mkurugenzi wa Mashtaka Bw.Sylvester Mwakitalu akizungumza na watumishi wa Ofisi ya Taifa ya Mashtaka Mkoa wa Singida wakati wa ziara yake aliyoifanya tarehe 11 Agosti, 2021. kulia  kwa Kaimu Mkurugenzi wa Mashtaka Idara ya Uendeshaji wa Kesi Bibi Neema Mwanda ambaye ameambatana nae katika ziara hiyo. Kushoto kwa Mkurugenzi wa Mashtaka  ni Kaimu Mwendesha Mashtaka Mkoa wa Singida Bee. Zakaria Ndaskoi', 'image/jpeg', '/uploads/gallery/', '', '1628692947-xc.jpg', '', '1628692947-xc-jpg', 0, 1, 1, '2021-08-11 11:42:27', '2021-08-11 11:43:33'),
(360, 'Katibu Sheria Mkoa wa Singida Bi. Faraja.Choga akiwakilisha changamoto, mbalimbali za watumishi Kada ya Sheria kwa Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati alipotembelea Ofisi ya Taifa ya Mashtaka Mkoa wa Singida Agosti 11,2021', 'Katibu Sheria Mkoa wa Singida Bi. Faraja.Choga akiwakilisha changamoto, mbalimbali za watumishi Kada ya Sheria kwa Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati alipotembelea Ofisi ya Taifa ya Mashtaka Mkoa wa Singida Agosti 11,2021', 'Katibu Sheria Mkoa wa Singida Bi. Faraja.Choga akiwakilisha changamoto, mbalimbali za watumishi Kada ya Sheria kwa Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati alipotembelea Ofisi ya Taifa ya Mashtaka Mkoa wa Singida Agosti 11,2021', 'Katibu Sheria Mkoa wa Singida Bi. Faraja.Choga akiwakilisha changamoto, mbalimbali za watumishi Kada ya Sheria kwa Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati alipotembelea Ofisi ya Taifa ya Mashtaka Mkoa wa Singida Agosti 11,2021', 'image/jpeg', '/uploads/gallery/', '', '1628693310-cvn.jpg', '', '1628693310-cvn-jpg', 0, 1, 1, '2021-08-11 11:48:30', '2021-08-11 11:48:30'),
(400, 'Baadhi ya washiriki wakiendelea kujifunza kwa vitendo na kuelekezana namna ya kutumia mfumo katika utendaji wao wa kazi', 'Baadhi ya washiriki wakiendelea kujifunza kwa vitendo na kuelekezana namna ya kutumia mfumo katika utendaji wao wa kazi', 'Baadhi ya washiriki wakiendelea kujifunza kwa vitendo na kuelekezana namna ya kutumia mfumo katika utendaji wao wa kazi  kwenye Mafunzo ya Utumiaji wa Mfumo wa Kielekitroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya Kesi kwa Makatibu Sheria na baadhi ya Mawakili wa Serikali wanaoshughulika na Takwimu yaliyoanza  tarehe 5 Januari 2022 na kumalizika tarehe 8 Januari, 2022 Jijini Dar es salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'Baadhi ya washiriki wakiendelea kujifunza kwa vitendo na kuelekezana namna ya kutumia mfumo katika utendaji wao wa kazi  kwenye Mafunzo ya Utumiaji wa Mfumo wa Kielekitroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya Kesi kwa Makatibu Sheria na baadhi ya Mawakili wa Serikali wanaoshughulika na Takwimu yaliyoanza  tarehe 5 Januari 2022 na kumalizika tarehe 8 Januari, 2022 Jijini Dar es salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1641635191-pic.5.JPG', '', '1641635191-pic-5-jpg', 0, 1, 1, '2022-01-08 06:46:31', '2022-01-08 06:46:31'),
(402, 'Picha ya pamoja ikijumuisha Kaimu Mkurugenzi Divisheni ya Utenganishaji wa Shughuli za Mashtaka na Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Makao Makuu Jijini Dodoma Bw. Kweka', 'Picha ya pamoja ikijumuisha Kaimu Mkurugenzi Divisheni ya Utenganishaji wa Shughuli za Mashtaka na Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Makao Makuu Jijini Dodoma Bw. Kweka', 'Picha ya pamoja ikijumuisha Kaimu Mkurugenzi Divisheni ya Utenganishaji wa Shughuli za Mashtaka na Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Makao Makuu Jijini Dodoma Bw. Tumaini Kweka (katikati), Kaimu Mkurugenzi Msaidizi Idara ya Uratibu wa Upelelezi Bw. Peter Maugo (wapili kushoto), Mkuu wa Kitengo cha TEHAMA kutoka Ofisi ya Taifa ya Mashtaka Bw. Frank Shame (wa pili kulia),  wakiwa na baadhi ya Makatibu Sheria na Mawakili wa Serikali walioshiriki katika Mafunzo ya Utumiaji wa Mfumo wa Kielekitroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya Kesi kwa Makatibu Sheria na baadhi ya Mawakili wa Serikali wanaoshughulika na Takwimu yaliyoanza mnamo  tarehe 5 Januari 2022 na kumalizika tarehe 8 Januari, 2022 Jijini Dar es salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'Picha ya pamoja ikijumuisha Kaimu Mkurugenzi Divisheni ya Utenganishaji wa Shughuli za Mashtaka na Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Makao Makuu Jijini Dodoma Bw. Tumaini Kweka (katikati), Kaimu Mkurugenzi Msaidizi Idara ya Uratibu wa Upelelezi Bw. Peter Maugo (wapili kushoto), Mkuu wa Kitengo cha TEHAMA kutoka Ofisi ya Taifa ya Mashtaka Bw. Frank Shame (wa pili kulia),  wakiwa na baadhi ya Makatibu Sheria na Mawakili wa Serikali walioshiriki katika Mafunzo ya Utumiaji wa Mfumo wa Kielekitroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya Kesi kwa Makatibu Sheria na baadhi ya Mawakili wa Serikali wanaoshughulika na Takwimu yaliyoanza mnamo  tarehe 5 Januari 2022 na kumalizika tarehe 8 Januari, 2022 Jijini Dar es salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1641635705-pic.8.JPG', '', '1641635705-pic-8-jpg', 0, 1, 1, '2022-01-08 06:55:05', '2022-01-08 06:55:05'),
(404, 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akimsikiliza Mgeni rasmi ambae ni Rais wa Zanzibar na Mwenyekiti wa Baraza la Mapinduzi  Mhe. Dkt.  Hussein Mwinyi wakati akihutubia katika Uzinduzi wa Wiki ya Sheria uliofanyika leo tarehe 23 Januari, 2022 k', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akimsikiliza Mgeni rasmi ambae ni Rais wa Zanzibar na Mwenyekiti wa Baraza la Mapinduzi  Mhe. Dkt.  Hussein Mwinyi wakati akihutubia katika Uzinduzi wa Wiki ya Sheria uliofanyika leo tarehe 23 Januari, 2022 k', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akimsikiliza Mgeni rasmi ambae ni Rais wa Zanzibar na Mwenyekiti wa Baraza la Mapinduzi  Mhe. Dkt.  Hussein Mwinyi wakati akihutubia katika Uzinduzi wa Wiki ya Sheria uliofanyika leo tarehe 23 Januari, 2022 katika Viwanja vya Nyerere Square Makao Makuu Jijini Dodoma', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akimsikiliza Mgeni rasmi ambae ni Rais wa Zanzibar na Mwenyekiti wa Baraza la Mapinduzi  Mhe. Dkt.  Hussein Mwinyi wakati akihutubia katika Uzinduzi wa Wiki ya Sheria uliofanyika leo tarehe 23 Januari, 2022 katika Viwanja vya Nyerere Square Makao Makuu Jijini Dodoma', 'image/jpeg', '/uploads/gallery/', '', '1643364418-pics 1.JPG', '', '1643364418-pics-1-jpg', 0, 1, 1, '2022-01-28 07:06:58', '2022-01-28 07:06:58'),
(406, 'Picha ya pamoja ikijumuisha Mgeni rasmi ambae ni Rais wa Zanzibar na Mwenyekiti wa Baraza la Mapinduzi Mhe. Dkt. Hussein Mwinyi (katikati) akiwa na baadhi ya Viongozi wa Taasisi mbalimbali akiwemo Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (wa tano ku', 'Picha ya pamoja ikijumuisha Mgeni rasmi ambae ni Rais wa Zanzibar na Mwenyekiti wa Baraza la Mapinduzi Mhe. Dkt. Hussein Mwinyi (katikati) akiwa na baadhi ya Viongozi wa Taasisi mbalimbali akiwemo Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (wa tano ku', 'Picha ya pamoja ikijumuisha Mgeni rasmi ambae ni Rais wa Zanzibar na Mwenyekiti wa Baraza la Mapinduzi Mhe. Dkt. Hussein Mwinyi (katikati) akiwa na baadhi ya Viongozi wa Taasisi mbalimbali akiwemo Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (wa tano kulia waliosimama) katika Uzinduzi wa Wiki ya Sheria uliofanyika leo tarehe 23 Januari, 2022 katika Viwanja vya Nyerere Square Makao Makuu Jijini Dodoma', 'Picha ya pamoja ikijumuisha Mgeni rasmi ambae ni Rais wa Zanzibar na Mwenyekiti wa Baraza la Mapinduzi Mhe. Dkt. Hussein Mwinyi (katikati) akiwa na baadhi ya Viongozi wa Taasisi mbalimbali akiwemo Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (wa tano kulia waliosimama) katika Uzinduzi wa Wiki ya Sheria uliofanyika leo tarehe 23 Januari, 2022 katika Viwanja vya Nyerere Square Makao Makuu Jijini Dodoma', 'image/jpeg', '/uploads/gallery/', '', '1643365350-pics.2.JPG', '', '1643365350-pics-2-jpg', 0, 1, 1, '2022-01-28 07:22:30', '2022-01-28 07:22:30'),
(408, 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akiwa pamoja baadhi ya Watumishi wa Ofisi ya Taifa ya Mashtaka katika Uzinduzi wa Wiki ya Sheria uliofanyika leo tarehe 23 Januari, 2022 katika Viwanja vya Nyerere Square Makao Mak', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akiwa pamoja baadhi ya Watumishi wa Ofisi ya Taifa ya Mashtaka katika Uzinduzi wa Wiki ya Sheria uliofanyika leo tarehe 23 Januari, 2022 katika Viwanja vya Nyerere Square Makao Mak', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akiwa pamoja baadhi ya Watumishi wa Ofisi ya Taifa ya Mashtaka katika Uzinduzi wa Wiki ya Sheria uliofanyika leo tarehe 23 Januari, 2022 katika Viwanja vya Nyerere Square Makao Makuu Jijini Dodoma', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akiwa pamoja baadhi ya Watumishi wa Ofisi ya Taifa ya Mashtaka katika Uzinduzi wa Wiki ya Sheria uliofanyika leo tarehe 23 Januari, 2022 katika Viwanja vya Nyerere Square Makao Makuu Jijini Dodoma', 'image/jpeg', '/uploads/gallery/', '', '1643365478-pics.5.JPG', '', '1643365478-pics-5-jpg', 0, 1, 1, '2022-01-28 07:24:38', '2022-01-28 07:24:38'),
(410, 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akiwa pamoja baadhi ya Watumishi wa Ofisi ya Taifa ya Mashtaka katika Uzinduzi wa Wiki ya Sheria uliofanyika leo tarehe 23 Januari, 2022 katika Viwanja vya Nyerere Square Makao Mak', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akiwa pamoja baadhi ya Watumishi wa Ofisi ya Taifa ya Mashtaka katika Uzinduzi wa Wiki ya Sheria uliofanyika leo tarehe 23 Januari, 2022 katika Viwanja vya Nyerere Square Makao Mak', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akiwa pamoja baadhi ya Watumishi wa Ofisi ya Taifa ya Mashtaka katika Uzinduzi wa Wiki ya Sheria uliofanyika leo tarehe 23 Januari, 2022 katika Viwanja vya Nyerere Square Makao Makuu Jijini Dodoma', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akiwa pamoja baadhi ya Watumishi wa Ofisi ya Taifa ya Mashtaka katika Uzinduzi wa Wiki ya Sheria uliofanyika leo tarehe 23 Januari, 2022 katika Viwanja vya Nyerere Square Makao Makuu Jijini Dodoma', 'image/jpeg', '/uploads/gallery/', '', '1643365672-pics.7.JPG', '', '1643365672-pics-7-jpg', 0, 1, 1, '2022-01-28 07:27:52', '2022-01-28 07:27:52'),
(412, 'Picha ya pamoja ikijumuisha baadhi ya Watumishi wa Ofisi ya Taifa ya Mashtaka walioshiriki katika Uzinduzi wa Wiki ya Sheria uliofanyika leo tarehe 23 Januari, 2022 katika Viwanja vya Nyerere Square Makao Makuu Jijini Dodoma', 'Picha ya pamoja ikijumuisha baadhi ya Watumishi wa Ofisi ya Taifa ya Mashtaka walioshiriki katika Uzinduzi wa Wiki ya Sheria uliofanyika leo tarehe 23 Januari, 2022 katika Viwanja vya Nyerere Square Makao Makuu Jijini Dodoma', 'Picha ya pamoja ikijumuisha baadhi ya Watumishi wa Ofisi ya Taifa ya Mashtaka walioshiriki katika Uzinduzi wa Wiki ya Sheria uliofanyika leo tarehe 23 Januari, 2022 katika Viwanja vya Nyerere Square Makao Makuu Jijini Dodoma', 'Picha ya pamoja ikijumuisha baadhi ya Watumishi wa Ofisi ya Taifa ya Mashtaka walioshiriki katika Uzinduzi wa Wiki ya Sheria uliofanyika leo tarehe 23 Januari, 2022 katika Viwanja vya Nyerere Square Makao Makuu Jijini Dodoma', 'image/jpeg', '/uploads/gallery/', '', '1643365754-pics.4.JPG', '', '1643365754-pics-4-jpg', 0, 1, 1, '2022-01-28 07:29:14', '2022-01-28 07:29:14'),
(414, 'Baadhi ya washiriki wa Uzinduzi wa Wiki ya Sheria wakimsikiliza Mgeni rasmi ambae ni Rais wa Zanzibar na Mwenyekiti wa Baraza la Mapinduzi Mhe. Dkt. Hussein Mwinyi wakati akihutubia katika uzinduzi huo uliofanyika leo tarehe 23 Januari, 2022 katika Viwanj', 'Baadhi ya washiriki wa Uzinduzi wa Wiki ya Sheria wakimsikiliza Mgeni rasmi ambae ni Rais wa Zanzibar na Mwenyekiti wa Baraza la Mapinduzi Mhe. Dkt. Hussein Mwinyi wakati akihutubia katika uzinduzi huo uliofanyika leo tarehe 23 Januari, 2022 katika Viwanj', 'Baadhi ya washiriki wa Uzinduzi wa Wiki ya Sheria wakimsikiliza Mgeni rasmi ambae ni Rais wa Zanzibar na Mwenyekiti wa Baraza la Mapinduzi Mhe. Dkt. Hussein Mwinyi wakati akihutubia katika uzinduzi huo uliofanyika leo tarehe 23 Januari, 2022 katika Viwanja vya Nyerere Square Makao Makuu Jijini Dodoma', 'Baadhi ya washiriki wa Uzinduzi wa Wiki ya Sheria wakimsikiliza Mgeni rasmi ambae ni Rais wa Zanzibar na Mwenyekiti wa Baraza la Mapinduzi Mhe. Dkt. Hussein Mwinyi wakati akihutubia katika uzinduzi huo uliofanyika leo tarehe 23 Januari, 2022 katika Viwanja vya Nyerere Square Makao Makuu Jijini Dodoma', 'image/jpeg', '/uploads/gallery/', '', '1643365924-pics.6.JPG', '', '1643365924-pics-6-jpg', 0, 1, 1, '2022-01-28 07:32:04', '2022-01-28 07:32:04'),
(416, 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (kulia), Mwanasheria Mkuu wa Serikali Dkt. Eliezer Feleshi (katikati), Wakili Mkuu wa Serikali Gabriel Malata  wakiwa pamoja na baadhi ya Watumishi wa Ofisi ya Mwanasheria Mkuu wa ', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (kulia), Mwanasheria Mkuu wa Serikali Dkt. Eliezer Feleshi (katikati), Wakili Mkuu wa Serikali Gabriel Malata  wakiwa pamoja na baadhi ya Watumishi wa Ofisi ya Mwanasheria Mkuu wa ', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (kulia), Mwanasheria Mkuu wa Serikali Dkt. Eliezer Feleshi (katikati), Wakili Mkuu wa Serikali Gabriel Malata  wakiwa pamoja na baadhi ya Watumishi wa Ofisi ya Mwanasheria Mkuu wa Serikali katika Uzinduzi wa Wiki ya Sheria uliofanyika leo tarehe 23 Januari, 2022 katika Viwanja vya Nyerere Square Makao Makuu Jijini Dodoma', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (kulia), Mwanasheria Mkuu wa Serikali Dkt. Eliezer Feleshi (katikati), Wakili Mkuu wa Serikali Gabriel Malata  wakiwa pamoja na baadhi ya Watumishi wa Ofisi ya Mwanasheria Mkuu wa Serikali katika Uzinduzi wa Wiki ya Sheria uliofanyika leo tarehe 23 Januari, 2022 katika Viwanja vya Nyerere Square Makao Makuu Jijini Dodoma', 'image/jpeg', '/uploads/gallery/', '', '1643366644-pics.9.JPG', '', '1643366644-pics-9-jpg', 0, 1, 1, '2022-01-28 07:44:04', '2022-01-28 07:44:04'),
(418, 'Jaji wa Mahakama Kuu Kanda ya Dodoma Mhe. Adam Mambi akisaini kitabu cha wageni kwenye banda la Ofisi ya Taifa ya Mashtaka katika Maadhimisho ya Wiki ya Sheria yaliyozinduliwa jana  tarehe 23 Januari, 2022 katika Viwanja vya Nyerere Square Makao Makuu Jij', 'Jaji wa Mahakama Kuu Kanda ya Dodoma Mhe. Adam Mambi akisaini kitabu cha wageni kwenye banda la Ofisi ya Taifa ya Mashtaka katika Maadhimisho ya Wiki ya Sheria yaliyozinduliwa jana  tarehe 23 Januari, 2022 katika Viwanja vya Nyerere Square Makao Makuu Jij', 'Jaji wa Mahakama Kuu Kanda ya Dodoma Mhe. Adam Mambi akisaini kitabu cha wageni kwenye banda la Ofisi ya Taifa ya Mashtaka katika Maadhimisho ya Wiki ya Sheria yaliyozinduliwa jana  tarehe 23 Januari, 2022 katika Viwanja vya Nyerere Square Makao Makuu Jijini Dodoma', 'Jaji wa Mahakama Kuu Kanda ya Dodoma Mhe. Adam Mambi akisaini kitabu cha wageni kwenye banda la Ofisi ya Taifa ya Mashtaka katika Maadhimisho ya Wiki ya Sheria yaliyozinduliwa jana  tarehe 23 Januari, 2022 katika Viwanja vya Nyerere Square Makao Makuu Jijini Dodoma', 'image/jpeg', '/uploads/gallery/', '', '1643366890-IMG_20220124_163647.jpg', '', '1643366890-img-20220124-163647-jpg', 0, 1, 1, '2022-01-28 07:48:10', '2022-01-28 07:48:10'),
(420, 'Baadhi ya wadau pamoja na wakazi wa Jiji la Dodoma wakiendelea kupata elimu na taarifa mbalimbali kutoka kwa Watumishi wa Ofisi ya Taifa ya Mashtaka kwenye Maadhimisho ya Wiki ya Sheria yaliyozinduliwa jana  tarehe 23 Januari, 2022 katika Viwanja vya Nyer', 'Baadhi ya wadau pamoja na wakazi wa Jiji la Dodoma wakiendelea kupata elimu na taarifa mbalimbali kutoka kwa Watumishi wa Ofisi ya Taifa ya Mashtaka kwenye Maadhimisho ya Wiki ya Sheria yaliyozinduliwa jana  tarehe 23 Januari, 2022 katika Viwanja vya Nyer', 'Baadhi ya wadau pamoja na wakazi wa Jiji la Dodoma wakiendelea kupata elimu na taarifa mbalimbali kutoka kwa Watumishi wa Ofisi ya Taifa ya Mashtaka kwenye Maadhimisho ya Wiki ya Sheria yaliyozinduliwa jana  tarehe 23 Januari, 2022 katika Viwanja vya Nyerere Square Makao Makuu Jijini Dodoma', 'Baadhi ya wadau pamoja na wakazi wa Jiji la Dodoma wakiendelea kupata elimu na taarifa mbalimbali kutoka kwa Watumishi wa Ofisi ya Taifa ya Mashtaka kwenye Maadhimisho ya Wiki ya Sheria yaliyozinduliwa jana  tarehe 23 Januari, 2022 katika Viwanja vya Nyerere Square Makao Makuu Jijini Dodoma', 'image/jpeg', '/uploads/gallery/', '', '1643367513-pic.14.jpg', '', '1643367513-pic-14-jpg', 0, 1, 1, '2022-01-28 07:58:33', '2022-01-28 07:58:33'),
(422, 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akiweka saini katika kitabu cha wageni wakati alipotembelea kwenye banda la Ofisi ya Taifa ya Mashtaka katika Uzinduzi wa Wiki ya Sheria uliofanyika leo tarehe 23 Januari, 2022 katika Viwanja vya Nyerere Squa', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akiweka saini katika kitabu cha wageni wakati alipotembelea kwenye banda la Ofisi ya Taifa ya Mashtaka katika Uzinduzi wa Wiki ya Sheria uliofanyika leo tarehe 23 Januari, 2022 katika Viwanja vya Nyerere Squa', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akiweka saini katika kitabu cha wageni wakati alipotembelea kwenye banda la Ofisi ya Taifa ya Mashtaka katika Uzinduzi wa Wiki ya Sheria uliofanyika leo tarehe 23 Januari, 2022 katika Viwanja vya Nyerere Square Makao Makuu Jijini Dodoma', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akiweka saini katika kitabu cha wageni wakati alipotembelea kwenye banda la Ofisi ya Taifa ya Mashtaka katika Uzinduzi wa Wiki ya Sheria uliofanyika leo tarehe 23 Januari, 2022 katika Viwanja vya Nyerere Square Makao Makuu Jijini Dodoma', 'image/jpeg', '/uploads/gallery/', '', '1643367789-pics.3.jpg', '', '1643367789-pics-3-jpg', 0, 1, 1, '2022-01-28 08:03:09', '2022-01-28 08:03:09'),
(424, 'Mwanasheria Mkuu wa Serikali Dkt. Eliezer  Mbuki Feleshi akiweka saini katika kitabu cha wageni wakati alipotembelea kwenye banda la Ofisi ya Taifa ya Mashtaka katika Uzinduzi wa Wiki ya Sheria uliofanyika leo tarehe 23 Januari, 2022 katika Viwanja vya Ny', 'Mwanasheria Mkuu wa Serikali Dkt. Eliezer  Mbuki Feleshi akiweka saini katika kitabu cha wageni wakati alipotembelea kwenye banda la Ofisi ya Taifa ya Mashtaka katika Uzinduzi wa Wiki ya Sheria uliofanyika leo tarehe 23 Januari, 2022 katika Viwanja vya Ny', 'Mwanasheria Mkuu wa Serikali Dkt. Eliezer  Mbuki Feleshi akiweka saini katika kitabu cha wageni wakati alipotembelea kwenye banda la Ofisi ya Taifa ya Mashtaka katika Uzinduzi wa Wiki ya Sheria uliofanyika leo tarehe 23 Januari, 2022 katika Viwanja vya Nyerere Square Makao Makuu Jijini Dodoma', 'Mwanasheria Mkuu wa Serikali Dkt. Eliezer  Mbuki Feleshi akiweka saini katika kitabu cha wageni wakati alipotembelea kwenye banda la Ofisi ya Taifa ya Mashtaka katika Uzinduzi wa Wiki ya Sheria uliofanyika leo tarehe 23 Januari, 2022 katika Viwanja vya Nyerere Square Makao Makuu Jijini Dodoma', 'image/jpeg', '/uploads/gallery/', '', '1643367922-pics.10.JPG', '', '1643367922-pics-10-jpg', 0, 1, 1, '2022-01-28 08:05:22', '2022-01-28 08:05:22'),
(426, 'Wakili Mkuu wa Serikali Gabriel Malata akiweka saini katika kitabu cha wageni wakati alipotembelea kwenye banda la Ofisi ya Taifa ya Mashtaka katika Uzinduzi wa Wiki ya Sheria uliofanyika leo tarehe 23 Januari, 2022 katika Viwanja vya Nyerere Square Makao', 'Wakili Mkuu wa Serikali Gabriel Malata akiweka saini katika kitabu cha wageni wakati alipotembelea kwenye banda la Ofisi ya Taifa ya Mashtaka katika Uzinduzi wa Wiki ya Sheria uliofanyika leo tarehe 23 Januari, 2022 katika Viwanja vya Nyerere Square Makao', 'Wakili Mkuu wa Serikali Gabriel Malata akiweka saini katika kitabu cha wageni wakati alipotembelea kwenye banda la Ofisi ya Taifa ya Mashtaka katika Uzinduzi wa Wiki ya Sheria uliofanyika leo tarehe 23 Januari, 2022 katika Viwanja vya Nyerere Square Makao Makuu Jijini Dodoma', 'Wakili Mkuu wa Serikali Gabriel Malata akiweka saini katika kitabu cha wageni wakati alipotembelea kwenye banda la Ofisi ya Taifa ya Mashtaka katika Uzinduzi wa Wiki ya Sheria uliofanyika leo tarehe 23 Januari, 2022 katika Viwanja vya Nyerere Square Makao Makuu Jijini Dodoma', 'image/jpeg', '/uploads/gallery/', '', '1643368000-pics.8.JPG', '', '1643368000-pics-8-jpg', 0, 1, 1, '2022-01-28 08:06:40', '2022-01-28 08:06:40'),
(428, 'Afisa TEHAMA kutoka Ofisi ya Taifa Mashtaka Jijini Mwanza Bw. Idrisa Swalehe akifundisha namna ya kusajili taarifa za kesi kwenye mfumo katika Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa ', 'Afisa TEHAMA kutoka Ofisi ya Taifa Mashtaka Jijini Mwanza Bw. Idrisa Swalehe akifundisha namna ya kusajili taarifa za kesi kwenye mfumo katika Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa ', 'Afisa TEHAMA kutoka Ofisi ya Taifa Mashtaka Jijini Mwanza Bw. Idrisa Swalehe akifundisha namna ya kusajili taarifa za kesi kwenye mfumo katika Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha Mashtaka Viongozi yanayofanyika Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'Afisa TEHAMA kutoka Ofisi ya Taifa Mashtaka Jijini Mwanza Bw. Idrisa Swalehe akifundisha namna ya kusajili taarifa za kesi kwenye mfumo katika Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha Mashtaka Viongozi yanayofanyika Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1645527742-idrs.JPG', '', '1645527742-idrs-jpg', 0, 1, 1, '2022-02-22 08:02:22', '2022-02-22 08:02:22'),
(430, 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Afisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe wakati akifundisha katika mafunzo hayo ', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Afisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe wakati akifundisha katika mafunzo hayo ', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Afisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe wakati akifundisha katika mafunzo hayo yanayofanyika Jijini Dar es salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Afisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe wakati akifundisha katika mafunzo hayo yanayofanyika Jijini Dar es salaam', 'image/jpeg', '/uploads/gallery/', '', '1645528308-105A6557.JPG', '', '1645528308-105a6557-jpg', 0, 1, 1, '2022-02-22 08:11:48', '2022-02-22 08:11:48'),
(432, 'Maafisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka wakitoa usaidizi wa kiufundi kwa washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha ', 'Maafisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka wakitoa usaidizi wa kiufundi kwa washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha ', 'Maafisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka wakitoa usaidizi wa kiufundi kwa washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha Mashtaka Viongozi yanayofanyika Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'Maafisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka wakitoa usaidizi wa kiufundi kwa washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha Mashtaka Viongozi yanayofanyika Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1645531161-john.JPG', '', '1645531161-john-jpg', 0, 1, 1, '2022-02-22 08:59:21', '2022-02-22 08:59:21'),
(434, 'Afisa TEHAMA kutoka Ofisi ya Taifa Mashtaka Jijini Mbeya Bw. Lisemwalo Sung\'he akiwaelekeza washiriki juu ya baadhi ya vipengele vya mfumo na jinsi vinavyofanya kazi katika Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika', 'Afisa TEHAMA kutoka Ofisi ya Taifa Mashtaka Jijini Mbeya Bw. Lisemwalo Sung\'he akiwaelekeza washiriki juu ya baadhi ya vipengele vya mfumo na jinsi vinavyofanya kazi katika Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika', 'Afisa TEHAMA kutoka Ofisi ya Taifa Mashtaka Jijini Mbeya Bw. Lisemwalo Sung\'he akiwaelekeza washiriki juu ya baadhi ya vipengele vya mfumo na jinsi vinavyofanya kazi katika Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha Mashtaka Viongozi yanayofanyika Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'Afisa TEHAMA kutoka Ofisi ya Taifa Mashtaka Jijini Mbeya Bw. Lisemwalo Sung\'he akiwaelekeza washiriki juu ya baadhi ya vipengele vya mfumo na jinsi vinavyofanya kazi katika Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha Mashtaka Viongozi yanayofanyika Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1645531872-lise.JPG', '', '1645531872-lise-jpg', 0, 1, 1, '2022-02-22 09:11:12', '2022-02-22 09:11:12'),
(436, 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Afisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe wakati akifundisha katika mafunzo hayo ', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Afisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe wakati akifundisha katika mafunzo hayo ', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Afisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe wakati akifundisha katika mafunzo hayo yanayofanyika Jijini Dar es salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Afisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe wakati akifundisha katika mafunzo hayo yanayofanyika Jijini Dar es salaam', 'image/jpeg', '/uploads/gallery/', '', '1645532237-jave.JPG', '', '1645532237-jave-jpg', 0, 1, 1, '2022-02-22 09:17:17', '2022-02-22 09:17:17'),
(438, 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Afisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe wakati akifundisha katika mafunzo hayo ', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Afisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe wakati akifundisha katika mafunzo hayo ', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Afisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe wakati akifundisha katika mafunzo hayo yanayofanyika Jijini Dar es salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Afisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe wakati akifundisha katika mafunzo hayo yanayofanyika Jijini Dar es salaam', 'image/jpeg', '/uploads/gallery/', '', '1645532766-rpo.JPG', '', '1645532766-rpo-jpg', 0, 1, 1, '2022-02-22 09:26:06', '2022-02-22 09:26:06'),
(440, 'Maafisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka wakitoa usaidizi wa kiufundi kwa washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha ', 'Maafisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka wakitoa usaidizi wa kiufundi kwa washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha ', 'Maafisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka wakitoa usaidizi wa kiufundi kwa washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha Mashtaka Viongozi yanayofanyika Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'Maafisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka wakitoa usaidizi wa kiufundi kwa washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha Mashtaka Viongozi yanayofanyika Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1645606918-105A6749.JPG', '', '1645606918-105a6749-jpg', 0, 1, 1, '2022-02-23 06:01:58', '2022-02-23 06:01:58'),
(442, 'Maafisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka wakitoa usaidizi wa kiufundi kwa washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha ', 'Maafisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka wakitoa usaidizi wa kiufundi kwa washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha ', 'Maafisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka wakitoa usaidizi wa kiufundi kwa washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha Mashtaka Viongozi yanayofanyika Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'Maafisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka wakitoa usaidizi wa kiufundi kwa washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha Mashtaka Viongozi yanayofanyika Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1645607231-105A6745.JPG', '', '1645607231-105a6745-jpg', 0, 1, 1, '2022-02-23 06:07:11', '2022-02-23 06:07:11'),
(444, 'Maafisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka wakitoa usaidizi wa kiufundi kwa washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha ', 'Maafisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka wakitoa usaidizi wa kiufundi kwa washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha ', 'Maafisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka wakitoa usaidizi wa kiufundi kwa washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha Mashtaka Viongozi yanayofanyika Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'Maafisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka wakitoa usaidizi wa kiufundi kwa washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha Mashtaka Viongozi yanayofanyika Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1645607471-105A6800.JPG', '', '1645607471-105a6800-jpg', 0, 1, 1, '2022-02-23 06:11:11', '2022-02-23 06:11:11'),
(446, 'Maafisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka wakitoa usaidizi wa kiufundi kwa washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha ', 'Maafisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka wakitoa usaidizi wa kiufundi kwa washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha ', 'Maafisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka wakitoa usaidizi wa kiufundi kwa washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha Mashtaka Viongozi yanayofanyika Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'Maafisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka wakitoa usaidizi wa kiufundi kwa washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha Mashtaka Viongozi yanayofanyika Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1645607808-it.4.JPG', '', '1645607808-it-4-jpg', 0, 1, 1, '2022-02-23 06:16:48', '2022-02-23 06:16:48'),
(448, 'Maafisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka wakitoa usaidizi wa kiufundi kwa washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha ', 'Maafisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka wakitoa usaidizi wa kiufundi kwa washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha ', 'Maafisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka wakitoa usaidizi wa kiufundi kwa washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha Mashtaka Viongozi yanayofanyika Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'Maafisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka wakitoa usaidizi wa kiufundi kwa washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha Mashtaka Viongozi yanayofanyika Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1645607946-it.2.JPG', '', '1645607946-it-2-jpg', 0, 1, 1, '2022-02-23 06:19:07', '2022-02-23 06:19:07'),
(450, 'Waziri wa Katiba na Sheria Mhe. George Simbachawene  akifungua  mafunzo  kuhusu Mfumo wa Kisheria wa Kitaifa na Kimataifa juu ya  Makosa ya kimtandao kwa Mawakili wa Serikali wanaohudhuria mafunzo ya Sheria ya Makosa  ya Mtandao, Upelelezi na  Uendeshaji ', 'Waziri wa Katiba na Sheria Mhe. George Simbachawene  akifungua  mafunzo  kuhusu Mfumo wa Kisheria wa Kitaifa na Kimataifa juu ya  Makosa ya kimtandao kwa Mawakili wa Serikali wanaohudhuria mafunzo ya Sheria ya Makosa  ya Mtandao, Upelelezi na  Uendeshaji ', 'Waziri wa Katiba na Sheria Mhe. George Simbachawene  akifungua  mafunzo  kuhusu Mfumo wa Kisheria wa Kitaifa na Kimataifa juu ya  Makosa ya kimtandao kwa Mawakili wa Serikali wanaohudhuria mafunzo ya Sheria ya Makosa  ya Mtandao, Upelelezi na  Uendeshaji wa kesi zinazohusiana na Makosa ya Mtandao yanayofanyika katika Chuo cha VETA mjini  Morogoro kuanzia tarehe 21 hadi 25 Februari,2022.', 'Waziri wa Katiba na Sheria Mhe. George Simbachawene  akifungua  mafunzo  kuhusu Mfumo wa Kisheria wa Kitaifa na Kimataifa juu ya  Makosa ya kimtandao kwa Mawakili wa Serikali wanaohudhuria mafunzo ya Sheria ya Makosa  ya Mtandao, Upelelezi na  Uendeshaji wa kesi zinazohusiana na Makosa ya Mtandao yanayofanyika katika Chuo cha VETA mjini  Morogoro kuanzia tarehe 21 hadi 25 Februari,2022.', 'image/jpeg', '/uploads/gallery/', '', '1645683894-IMG-20220223-WA0017.jpg', '', '1645683894-img-20220223-wa0017-jpg', 0, 1, 1, '2022-02-24 03:24:54', '2022-02-24 03:24:54'),
(452, 'Mkurugenzi wa Mashtaka Bw.Sylvester Mwakitalu akitoa neno la kumkaribisha Mgeni rasmi Waziri wa wa Katiba na Sheria Mhe. George Simbachawene(hayupo pichani) kufungua  mafunzo  kuhusu Mfumo wa Kisheria wa Kitaifa na Kimataifa juu ya  Makosa ya kimtandao kw', 'Mkurugenzi wa Mashtaka Bw.Sylvester Mwakitalu akitoa neno la kumkaribisha Mgeni rasmi Waziri wa wa Katiba na Sheria Mhe. George Simbachawene(hayupo pichani) kufungua  mafunzo  kuhusu Mfumo wa Kisheria wa Kitaifa na Kimataifa juu ya  Makosa ya kimtandao kw', 'Mkurugenzi wa Mashtaka Bw.Sylvester Mwakitalu akitoa neno la kumkaribisha Mgeni rasmi Waziri wa wa Katiba na Sheria Mhe. George Simbachawene(hayupo pichani) kufungua  mafunzo  kuhusu Mfumo wa Kisheria wa Kitaifa na Kimataifa juu ya  Makosa ya kimtandao kwa Mawakili wa Serikali wanaohudhuria mafunzo ya Sheria ya Makosa  ya Mtandao, Upelelezi na  Uendeshaji wa kesi zinazohusiana na Makosa ya Mtandao yanayofanyika katika Chuo cha VETA mjini  Morogoro kuanzia tarehe 21 hadi 25 Februari,2022.', 'Mkurugenzi wa Mashtaka Bw.Sylvester Mwakitalu akitoa neno la kumkaribisha Mgeni rasmi Waziri wa wa Katiba na Sheria Mhe. George Simbachawene(hayupo pichani) kufungua  mafunzo  kuhusu Mfumo wa Kisheria wa Kitaifa na Kimataifa juu ya  Makosa ya kimtandao kwa Mawakili wa Serikali wanaohudhuria mafunzo ya Sheria ya Makosa  ya Mtandao, Upelelezi na  Uendeshaji wa kesi zinazohusiana na Makosa ya Mtandao yanayofanyika katika Chuo cha VETA mjini  Morogoro kuanzia tarehe 21 hadi 25 Februari,2022.', 'image/jpeg', '/uploads/gallery/', '', '1645684196-IMG-20220223-WA0029.jpg', '', '1645684196-img-20220223-wa0029-jpg', 0, 1, 1, '2022-02-24 03:29:56', '2022-02-24 03:29:56'),
(454, 'Baadhi ya Mawakili kutoka Ofisi ya Ofisi ya Taifa ya Mashtaka  wakiwa katika picha ya pamoja na Mgeni rasmi Waziri wa Katiba na Sheria Mhe. George Simbachawene wakati akifungua mafunzo  kuhusu  mfumo wa Kisheria wa Kitaifa na Kimataifa juu ya Makosa ya Ki', 'Baadhi ya Mawakili kutoka Ofisi ya Ofisi ya Taifa ya Mashtaka  wakiwa katika picha ya pamoja na Mgeni rasmi Waziri wa Katiba na Sheria Mhe. George Simbachawene wakati akifungua mafunzo  kuhusu  mfumo wa Kisheria wa Kitaifa na Kimataifa juu ya Makosa ya Ki', 'Baadhi ya Mawakili kutoka Ofisi ya Ofisi ya Taifa ya Mashtaka  wakiwa katika picha ya pamoja na Mgeni rasmi Waziri wa Katiba na Sheria Mhe. George Simbachawene wakati akifungua mafunzo  kuhusu  mfumo wa Kisheria wa Kitaifa na Kimataifa juu ya Makosa ya Kimtandao kwa Mawakili wa Serikali yanayofanyika katika Chuo cha VETA mjini Morogoro kuanzia tarehe 21 hadi 25 Februari,2022.', 'Baadhi ya Mawakili kutoka Ofisi ya Ofisi ya Taifa ya Mashtaka  wakiwa katika picha ya pamoja na Mgeni rasmi Waziri wa Katiba na Sheria Mhe. George Simbachawene wakati akifungua mafunzo  kuhusu  mfumo wa Kisheria wa Kitaifa na Kimataifa juu ya Makosa ya Kimtandao kwa Mawakili wa Serikali yanayofanyika katika Chuo cha VETA mjini Morogoro kuanzia tarehe 21 hadi 25 Februari,2022.', 'image/jpeg', '/uploads/gallery/', '', '1645684600-IMG-20220223-WA0026.jpg', '', '1645684600-img-20220223-wa0026-jpg', 0, 1, 1, '2022-02-24 03:36:40', '2022-02-24 03:36:40'),
(456, 'Picha ya pamoja kati ya Waziri wa Katiba na Sheria Mhe. George Simbachawene (katikati) akiwa na viongozi wa Ofisi ya Taifa ya Mashtaka wakiongozwa na Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu ( kulia), Wakurugenzi Wasaidizi na Mkuu wa Mashtaka mkoa w', 'Picha ya pamoja kati ya Waziri wa Katiba na Sheria Mhe. George Simbachawene (katikati) akiwa na viongozi wa Ofisi ya Taifa ya Mashtaka wakiongozwa na Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu ( kulia), Wakurugenzi Wasaidizi na Mkuu wa Mashtaka mkoa w', 'Picha ya pamoja kati ya Waziri wa Katiba na Sheria Mhe. George Simbachawene (katikati) akiwa na viongozi wa Ofisi ya Taifa ya Mashtaka wakiongozwa na Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu ( kulia), Wakurugenzi Wasaidizi na Mkuu wa Mashtaka mkoa wa Morogoro wakiwa katika picha ya pamoja na Wawezeshaji wa mafunzo kwa Mawakili wa Serikali kuhusu mfumo wa Kisheria wa Kitaifa na Kimataifa juu ya Makosa ya Kimtandao kwa Mawakili wa Serikali yanayofanyika katika Chuo cha VETA.mjini Morogoro yanayofanyika kuanzia tarehe 21 hadi 25 Februari,2022. Wawezeshaji wa mafunzo haya wanatoka Ofisi ya Taifa ya Mashtaka, Mamlaka ya Mawasiliano Tanzania, Wizara ya Mambo ya Ndani ya Nchi (Polisi) na Wizara ya Sheria ya Katiba (Mahakama).', 'Picha ya pamoja kati ya Waziri wa Katiba na Sheria Mhe. George Simbachawene (katikati) akiwa na viongozi wa Ofisi ya Taifa ya Mashtaka wakiongozwa na Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu ( kulia), Wakurugenzi Wasaidizi na Mkuu wa Mashtaka mkoa wa Morogoro wakiwa katika picha ya pamoja na Wawezeshaji wa mafunzo kwa Mawakili wa Serikali kuhusu mfumo wa Kisheria wa Kitaifa na Kimataifa juu ya Makosa ya Kimtandao kwa Mawakili wa Serikali yanayofanyika katika Chuo cha VETA.mjini Morogoro yanayofanyika kuanzia tarehe 21 hadi 25 Februari,2022. Wawezeshaji wa mafunzo haya wanatoka Ofisi ya Taifa ya Mashtaka, Mamlaka ya Mawasiliano Tanzania, Wizara ya Mambo ya Ndani ya Nchi (Polisi) na Wizara ya Sheria ya Katiba (Mahakama).', 'image/jpeg', '/uploads/gallery/', '', '1645690777-IMG-20220223-WA0027.jpg', '', '1645690777-img-20220223-wa0027-jpg', 0, 1, 1, '2022-02-24 05:19:37', '2022-02-24 05:19:37'),
(458, 'Viongozi kutoka Ofisi ya Taifa ya Mashtaka wakimpokea Mgeni rasmi Waziri wa Katiba na Sheria Mhe. George Simbachawene alipowasili Chuo cha VETA cha mjini Morogoro kwa ajili ya kufungua mafunzo kwa Mawakili juu ya Mfumo wa Kisheria wa Kitaifa na Kimataifa ', 'Viongozi kutoka Ofisi ya Taifa ya Mashtaka wakimpokea Mgeni rasmi Waziri wa Katiba na Sheria Mhe. George Simbachawene alipowasili Chuo cha VETA cha mjini Morogoro kwa ajili ya kufungua mafunzo kwa Mawakili juu ya Mfumo wa Kisheria wa Kitaifa na Kimataifa ', 'Viongozi kutoka Ofisi ya Taifa ya Mashtaka wakimpokea Mgeni rasmi Waziri wa Katiba na Sheria Mhe. George Simbachawene alipowasili Chuo cha VETA cha mjini Morogoro kwa ajili ya kufungua mafunzo kwa Mawakili juu ya Mfumo wa Kisheria wa Kitaifa na Kimataifa juu ya Makosa ya Kimtandao kwa Mawakili wa Serikali yanayofanyika kuanzia tarehe 21 hadi 25 Februari,2022.', 'Viongozi kutoka Ofisi ya Taifa ya Mashtaka wakimpokea Mgeni rasmi Waziri wa Katiba na Sheria Mhe. George Simbachawene alipowasili Chuo cha VETA cha mjini Morogoro kwa ajili ya kufungua mafunzo kwa Mawakili juu ya Mfumo wa Kisheria wa Kitaifa na Kimataifa juu ya Makosa ya Kimtandao kwa Mawakili wa Serikali yanayofanyika kuanzia tarehe 21 hadi 25 Februari,2022.', 'image/jpeg', '/uploads/gallery/', '', '1645691000-IMG-20220223-WA0031.jpg', '', '1645691000-img-20220223-wa0031-jpg', 0, 1, 1, '2022-02-24 05:23:20', '2022-02-24 05:23:20'),
(460, 'Wakurugenzi Wasaidizi Bi. Monica Mbogo na Bw.Peter Maugo wakifuatilia hotuba ya Mgeni rasmi Waziri wa Katiba na Sheria Mhe.George Simbachawene alipokuwa akifungua mafunzo kwa Mawakili wa Serikali juu ya Sheria ya Makosa ya Mtandao, Upelelezi na Uendeshaji', 'Wakurugenzi Wasaidizi Bi. Monica Mbogo na Bw.Peter Maugo wakifuatilia hotuba ya Mgeni rasmi Waziri wa Katiba na Sheria Mhe.George Simbachawene alipokuwa akifungua mafunzo kwa Mawakili wa Serikali juu ya Sheria ya Makosa ya Mtandao, Upelelezi na Uendeshaji', 'Wakurugenzi Wasaidizi Bi. Monica Mbogo na Bw.Peter Maugo wakifuatilia hotuba ya Mgeni rasmi Waziri wa Katiba na Sheria Mhe.George Simbachawene alipokuwa akifungua mafunzo kwa Mawakili wa Serikali juu ya Sheria ya Makosa ya Mtandao, Upelelezi na Uendeshaji wa kesi zinazohusiana na Makosa ya Mtandao yanayofanyika katika Chuo cha VETA mjini Morogoro kuanzia tarehe 21 hadi 25 Februari,2022', 'Wakurugenzi Wasaidizi Bi. Monica Mbogo na Bw.Peter Maugo wakifuatilia hotuba ya Mgeni rasmi Waziri wa Katiba na Sheria Mhe.George Simbachawene alipokuwa akifungua mafunzo kwa Mawakili wa Serikali juu ya Sheria ya Makosa ya Mtandao, Upelelezi na Uendeshaji wa kesi zinazohusiana na Makosa ya Mtandao yanayofanyika katika Chuo cha VETA mjini Morogoro kuanzia tarehe 21 hadi 25 Februari,2022', 'image/jpeg', '/uploads/gallery/', '', '1645691226-IMG-20220223-WA0016.jpg', '', '1645691226-img-20220223-wa0016-jpg', 0, 1, 1, '2022-02-24 05:27:06', '2022-02-24 05:27:06');
INSERT INTO `media` (`id`, `title_en`, `title_sw`, `content_en`, `content_sw`, `mime`, `path`, `url`, `filename`, `iconurl`, `slug`, `user_id`, `gallery_id`, `status`, `created_at`, `updated_at`) VALUES
(462, 'Kaimu Mkurugenzi Divisheni ya Utenganishaji wa shughuli za Mashtaka na Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Bw. Tumaini Kweka akitoa salamu fupi kwa washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika mas', 'Kaimu Mkurugenzi Divisheni ya Utenganishaji wa shughuli za Mashtaka na Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Bw. Tumaini Kweka akitoa salamu fupi kwa washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika mas', 'Kaimu Mkurugenzi Divisheni ya Utenganishaji wa shughuli za Mashtaka na Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Bw. Tumaini Kweka akitoa salamu fupi kwa washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha Mashtaka Viongozi yanayofanyika Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'Kaimu Mkurugenzi Divisheni ya Utenganishaji wa shughuli za Mashtaka na Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Bw. Tumaini Kweka akitoa salamu fupi kwa washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha Mashtaka Viongozi yanayofanyika Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1645699052-105A6851.JPG', '', '1645699052-105a6851-jpg', 0, 1, 1, '2022-02-24 07:37:32', '2022-02-24 07:37:32'),
(464, 'Kaimu Mkurugenzi Msaidizi Sehemu ya Usimamizi wa Kesi kutoka Ofisi ya Taifa ya Mashtaka Makao Makuu Jijini Dodoma Bi. Javelin Rugaihuruza akitoka neno la kumkaribisha mgeni rasmi Kaimu Naibu Mkurugenzi  wa Mashtaka ambae pia ni Kaimu Mkurugenzi Idara ya U', 'Kaimu Mkurugenzi Msaidizi Sehemu ya Usimamizi wa Kesi kutoka Ofisi ya Taifa ya Mashtaka Makao Makuu Jijini Dodoma Bi. Javelin Rugaihuruza akitoka neno la kumkaribisha mgeni rasmi Kaimu Naibu Mkurugenzi  wa Mashtaka ambae pia ni Kaimu Mkurugenzi Idara ya U', 'Kaimu Mkurugenzi Msaidizi Sehemu ya Usimamizi wa Kesi kutoka Ofisi ya Taifa ya Mashtaka Makao Makuu Jijini Dodoma Bi. Javelin Rugaihuruza akitoka neno la kumkaribisha mgeni rasmi Kaimu Naibu Mkurugenzi  wa Mashtaka ambae pia ni Kaimu Mkurugenzi Idara ya Usimamizi wa Kesi na Uratibu wa Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Makao Makuu Jijini Dodoma Bi. Neema Mwanda (hayupo pichani) kufungua mafunzo kuhusu Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha Mashtaka Viongozi yaliyoanza  tarehe 22 Februari, 2022 na kumalizika tarehe 25 Februari, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'Kaimu Mkurugenzi Msaidizi Sehemu ya Usimamizi wa Kesi kutoka Ofisi ya Taifa ya Mashtaka Makao Makuu Jijini Dodoma Bi. Javelin Rugaihuruza akitoka neno la kumkaribisha mgeni rasmi Kaimu Naibu Mkurugenzi  wa Mashtaka ambae pia ni Kaimu Mkurugenzi Idara ya Usimamizi wa Kesi na Uratibu wa Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Makao Makuu Jijini Dodoma Bi. Neema Mwanda (hayupo pichani) kufungua mafunzo kuhusu Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha Mashtaka Viongozi yaliyoanza  tarehe 22 Februari, 2022 na kumalizika tarehe 25 Februari, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1645776222-jave.JPG', '', '1645776222-jave-jpg', 0, 1, 1, '2022-02-25 05:03:42', '2022-02-25 05:03:42'),
(466, 'Kaimu Naibu Mkurugenzi wa Mashtaka ambae pia ni Kaimu Mkurugenzi wa Idara ya Usimamizi wa Kesi na Uratibu wa Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Bi. Neema Mwanda akifungua mafunzo kuhusu Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mash', 'Kaimu Naibu Mkurugenzi wa Mashtaka ambae pia ni Kaimu Mkurugenzi wa Idara ya Usimamizi wa Kesi na Uratibu wa Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Bi. Neema Mwanda akifungua mafunzo kuhusu Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mash', 'Kaimu Naibu Mkurugenzi wa Mashtaka ambae pia ni Kaimu Mkurugenzi wa Idara ya Usimamizi wa Kesi na Uratibu wa Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Bi. Neema Mwanda akifungua mafunzo kuhusu Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha Mashtaka Viongozi yaliyoanza  tarehe 22 Februari, 2022 na kumalizika tarehe 25 Februari, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'Kaimu Naibu Mkurugenzi wa Mashtaka ambae pia ni Kaimu Mkurugenzi wa Idara ya Usimamizi wa Kesi na Uratibu wa Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Bi. Neema Mwanda akifungua mafunzo kuhusu Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha Mashtaka Viongozi yaliyoanza  tarehe 22 Februari, 2022 na kumalizika tarehe 25 Februari, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1645776408-105A6972.JPG', '', '1645776408-105a6972-jpg', 0, 1, 1, '2022-02-25 05:06:48', '2022-02-25 05:06:48'),
(468, 'Picha ya pamoja ikijumuisha mgeni rasmi Kaimu Naibu Mkurugenzi wa Mashtaka ambae pia ni Kaimu Mkurugenzi Idara ya Usimamizi wa Kesi na Uratibu wa Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Bi. Neema Mwanda (wa pili kulia), Kaimu Mkurugenzi Sehemu ya Usim', 'Picha ya pamoja ikijumuisha mgeni rasmi Kaimu Naibu Mkurugenzi wa Mashtaka ambae pia ni Kaimu Mkurugenzi Idara ya Usimamizi wa Kesi na Uratibu wa Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Bi. Neema Mwanda (wa pili kulia), Kaimu Mkurugenzi Sehemu ya Usim', 'Picha ya pamoja ikijumuisha mgeni rasmi Kaimu Naibu Mkurugenzi wa Mashtaka ambae pia ni Kaimu Mkurugenzi Idara ya Usimamizi wa Kesi na Uratibu wa Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Bi. Neema Mwanda (wa pili kulia), Kaimu Mkurugenzi Sehemu ya Usimamizi wa Kesi Bi. Javelin Rugaihuruza (wa pili kushoto), Mkuu wa Kitengo cha TEHAMA Bw. Frank Shame (wa kwanza kulia) wakiwa na Waendesha Mashtaka Viongozi  ambao wameshiriki kwenye  Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi  yaliyoanza  tarehe 22 Februari, 2022 na kumalizika tarehe 25 Februari, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM).', 'Picha ya pamoja ikijumuisha mgeni rasmi Kaimu Naibu Mkurugenzi wa Mashtaka ambae pia ni Kaimu Mkurugenzi Idara ya Usimamizi wa Kesi na Uratibu wa Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Bi. Neema Mwanda (wa pili kulia), Kaimu Mkurugenzi Sehemu ya Usimamizi wa Kesi Bi. Javelin Rugaihuruza (wa pili kushoto), Mkuu wa Kitengo cha TEHAMA Bw. Frank Shame (wa kwanza kulia) wakiwa na Waendesha Mashtaka Viongozi  ambao wameshiriki kwenye  Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi  yaliyoanza  tarehe 22 Februari, 2022 na kumalizika tarehe 25 Februari, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM).', 'image/jpeg', '/uploads/gallery/', '', '1645776957-pai.JPG', '', '1645776957-pai-jpg', 0, 1, 1, '2022-02-25 05:15:57', '2022-02-25 05:15:57'),
(470, 'Picha ya pamoja ikijumuisha mgeni rasmi Kaimu Naibu Mkurugenzi wa Mashtaka ambae pia ni Kaimu Mkurugenzi Idara ya Usimamizi wa Kesi na Uratibu wa Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Bi. Neema Mwanda (wa pili kulia), Kaimu Mkurugenzi Sehemu ya Usim', 'Picha ya pamoja ikijumuisha mgeni rasmi Kaimu Naibu Mkurugenzi wa Mashtaka ambae pia ni Kaimu Mkurugenzi Idara ya Usimamizi wa Kesi na Uratibu wa Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Bi. Neema Mwanda (wa pili kulia), Kaimu Mkurugenzi Sehemu ya Usim', 'Picha ya pamoja ikijumuisha mgeni rasmi Kaimu Naibu Mkurugenzi wa Mashtaka ambae pia ni Kaimu Mkurugenzi Idara ya Usimamizi wa Kesi na Uratibu wa Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Bi. Neema Mwanda (wa pili kulia), Kaimu Mkurugenzi Sehemu ya Usimamizi wa Kesi Bi. Javelin Rugaihuruza (wa pili kushoto), Mkuu wa Kitengo cha TEHAMA Bw. Frank Shame (wa kwanza kulia) wakiwa na Wakuu wa Mashtaka wa Wilaya ambao wameshiriki kwenye  Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi  yaliyoanza  tarehe 22 Februari, 2022 na kumalizika tarehe 25 Februari, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM).', 'Picha ya pamoja ikijumuisha mgeni rasmi Kaimu Naibu Mkurugenzi wa Mashtaka ambae pia ni Kaimu Mkurugenzi Idara ya Usimamizi wa Kesi na Uratibu wa Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Bi. Neema Mwanda (wa pili kulia), Kaimu Mkurugenzi Sehemu ya Usimamizi wa Kesi Bi. Javelin Rugaihuruza (wa pili kushoto), Mkuu wa Kitengo cha TEHAMA Bw. Frank Shame (wa kwanza kulia) wakiwa na Wakuu wa Mashtaka wa Wilaya ambao wameshiriki kwenye  Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi  yaliyoanza  tarehe 22 Februari, 2022 na kumalizika tarehe 25 Februari, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM).', 'image/jpeg', '/uploads/gallery/', '', '1645777805-pai.2.JPG', '', '1645777805-pai-2-jpg', 0, 1, 1, '2022-02-25 05:30:05', '2022-02-25 05:30:05'),
(472, 'Picha ya pamoja ikijumuisha mgeni rasmi Kaimu Naibu Mkurugenzi wa Mashtaka ambae pia ni Kaimu Mkurugenzi Idara ya Usimamizi wa Kesi na Uratibu wa Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Bi. Neema Mwanda (wa pili kulia), Kaimu Mkurugenzi Sehemu ya Usim', 'Picha ya pamoja ikijumuisha mgeni rasmi Kaimu Naibu Mkurugenzi wa Mashtaka ambae pia ni Kaimu Mkurugenzi Idara ya Usimamizi wa Kesi na Uratibu wa Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Bi. Neema Mwanda (wa pili kulia), Kaimu Mkurugenzi Sehemu ya Usim', 'Picha ya pamoja ikijumuisha mgeni rasmi Kaimu Naibu Mkurugenzi wa Mashtaka ambae pia ni Kaimu Mkurugenzi Idara ya Usimamizi wa Kesi na Uratibu wa Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Bi. Neema Mwanda (wa pili kulia), Kaimu Mkurugenzi Sehemu ya Usimamizi wa Kesi Bi. Javelin Rugaihuruza (wa pili kushoto), Mkuu wa Kitengo cha TEHAMA Bw. Frank Shame (wa kwanza kulia) wakiwa na Maafisa TEHAMA wa Ofisi ya Taifa ya Mashtaka kutoka Mikoa mbalimbali ambao wameshiriki katika  Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha Mashtaka Viongozi yaliyoanza  tarehe 22 Februari, 2022 na kumalizika tarehe 25 Februari, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM).', 'Picha ya pamoja ikijumuisha mgeni rasmi Kaimu Naibu Mkurugenzi wa Mashtaka ambae pia ni Kaimu Mkurugenzi Idara ya Usimamizi wa Kesi na Uratibu wa Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Bi. Neema Mwanda (wa pili kulia), Kaimu Mkurugenzi Sehemu ya Usimamizi wa Kesi Bi. Javelin Rugaihuruza (wa pili kushoto), Mkuu wa Kitengo cha TEHAMA Bw. Frank Shame (wa kwanza kulia) wakiwa na Maafisa TEHAMA wa Ofisi ya Taifa ya Mashtaka kutoka Mikoa mbalimbali ambao wameshiriki katika  Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha Mashtaka Viongozi yaliyoanza  tarehe 22 Februari, 2022 na kumalizika tarehe 25 Februari, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM).', 'image/jpeg', '/uploads/gallery/', '', '1645778159-105A7010.JPG', '', '1645778159-105a7010-jpg', 0, 1, 1, '2022-02-25 05:35:59', '2022-02-25 05:35:59'),
(474, 'Picha ya pamoja ikijumuisha mgeni rasmi Kaimu Naibu Mkurugenzi wa Mashtaka ambae pia ni Kaimu Mkurugenzi Idara ya Usimamizi wa Kesi na Uratibu wa Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Bi. Neema Mwanda (wa pili kulia), Kaimu Mkurugenzi Sehemu ya Usim', 'Picha ya pamoja ikijumuisha mgeni rasmi Kaimu Naibu Mkurugenzi wa Mashtaka ambae pia ni Kaimu Mkurugenzi Idara ya Usimamizi wa Kesi na Uratibu wa Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Bi. Neema Mwanda (wa pili kulia), Kaimu Mkurugenzi Sehemu ya Usim', 'Picha ya pamoja ikijumuisha mgeni rasmi Kaimu Naibu Mkurugenzi wa Mashtaka ambae pia ni Kaimu Mkurugenzi Idara ya Usimamizi wa Kesi na Uratibu wa Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Bi. Neema Mwanda (wa pili kulia), Kaimu Mkurugenzi Sehemu ya Usimamizi wa Kesi Bi. Javelin Rugaihuruza (wa pili kushoto), Mkuu wa Kitengo cha TEHAMA Bw. Frank Shame (wa kwanza kulia) wakiwa na timu ya maandalizi ya Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha Mashtaka Viongozi yaliyoanza  tarehe 22 Februari, 2022 na kumalizika tarehe 25 Februari, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM).', 'Picha ya pamoja ikijumuisha mgeni rasmi Kaimu Naibu Mkurugenzi wa Mashtaka ambae pia ni Kaimu Mkurugenzi Idara ya Usimamizi wa Kesi na Uratibu wa Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Bi. Neema Mwanda (wa pili kulia), Kaimu Mkurugenzi Sehemu ya Usimamizi wa Kesi Bi. Javelin Rugaihuruza (wa pili kushoto), Mkuu wa Kitengo cha TEHAMA Bw. Frank Shame (wa kwanza kulia) wakiwa na timu ya maandalizi ya Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha Mashtaka Viongozi yaliyoanza  tarehe 22 Februari, 2022 na kumalizika tarehe 25 Februari, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM).', 'image/jpeg', '/uploads/gallery/', '', '1645778708-tim.JPG', '', '1645778708-tim-jpg', 0, 1, 1, '2022-02-25 05:45:08', '2022-02-25 05:45:08'),
(476, 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia hotuba ya mgeni rasmi Kaimu Naibu Mkurugenzi wa Mashtaka Bi. Neema Mwanda wakati akifungua mafunzo hayo  yaliyoanza tare', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia hotuba ya mgeni rasmi Kaimu Naibu Mkurugenzi wa Mashtaka Bi. Neema Mwanda wakati akifungua mafunzo hayo  yaliyoanza tare', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia hotuba ya mgeni rasmi Kaimu Naibu Mkurugenzi wa Mashtaka Bi. Neema Mwanda wakati akifungua mafunzo hayo  yaliyoanza tarehe 22 Februari, 2022 na kumalizika tarehe 25 Februari, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia hotuba ya mgeni rasmi Kaimu Naibu Mkurugenzi wa Mashtaka Bi. Neema Mwanda wakati akifungua mafunzo hayo  yaliyoanza tarehe 22 Februari, 2022 na kumalizika tarehe 25 Februari, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1645779098-ment.JPG', '', '1645779098-ment-jpg', 0, 1, 1, '2022-02-25 05:51:38', '2022-02-25 05:51:38'),
(478, 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia kwa vitendo mafunzo kutoka kwa Muwezeshaji Afisa TEHAMA Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe (hay', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia kwa vitendo mafunzo kutoka kwa Muwezeshaji Afisa TEHAMA Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe (hay', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia kwa vitendo mafunzo kutoka kwa Muwezeshaji Afisa TEHAMA Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe (hayupo pichani) wakati akifundisha  katika mafunzo hayo yanayofanyika Jijini Dar es salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia kwa vitendo mafunzo kutoka kwa Muwezeshaji Afisa TEHAMA Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe (hayupo pichani) wakati akifundisha  katika mafunzo hayo yanayofanyika Jijini Dar es salaam', 'image/jpeg', '/uploads/gallery/', '', '1645779393-anta.JPG', '', '1645779393-anta-jpg', 0, 1, 1, '2022-02-25 05:56:33', '2022-02-25 05:56:33'),
(480, 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia kwa vitendo mafunzo kutoka kwa Muwezeshaji Afisa TEHAMA Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe (hay', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia kwa vitendo mafunzo kutoka kwa Muwezeshaji Afisa TEHAMA Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe (hay', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia kwa vitendo mafunzo kutoka kwa Muwezeshaji Afisa TEHAMA Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe (hayupo pichani) wakati akifundisha  katika mafunzo hayo yanayofanyika Jijini Dar es salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia kwa vitendo mafunzo kutoka kwa Muwezeshaji Afisa TEHAMA Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe (hayupo pichani) wakati akifundisha  katika mafunzo hayo yanayofanyika Jijini Dar es salaam', 'image/jpeg', '/uploads/gallery/', '', '1645779750-tim.2.JPG', '', '1645779750-tim-2-jpg', 0, 1, 1, '2022-02-25 06:02:30', '2022-02-25 06:02:30'),
(482, 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia kwa vitendo mafunzo kutoka kwa Muwezeshaji Afisa TEHAMA Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe (hay', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia kwa vitendo mafunzo kutoka kwa Muwezeshaji Afisa TEHAMA Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe (hay', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia kwa vitendo mafunzo kutoka kwa Muwezeshaji Afisa TEHAMA Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe (hayupo pichani) wakati akifundisha  katika mafunzo hayo yanayofanyika Jijini Dar es salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia kwa vitendo mafunzo kutoka kwa Muwezeshaji Afisa TEHAMA Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe (hayupo pichani) wakati akifundisha  katika mafunzo hayo yanayofanyika Jijini Dar es salaam', 'image/jpeg', '/uploads/gallery/', '', '1645779872-tim.3.JPG', '', '1645779872-tim-3-jpg', 0, 1, 1, '2022-02-25 06:04:32', '2022-02-25 06:04:32'),
(484, 'Mkurugenzi wa Divisheni ya Utaifishaji Mali, Makosa ya Kupangwa na Uhalifu Mahsusi kutoka Ofisi ya Taifa ya Mashtaka Bw. Paul Kadushi akiwasilisha mada juu ya Ushahidi wa Kielektroniki na upokelewaji wa Ushahidi mahakamani kwa Mawakili wa Serikali wanaohu', 'Mkurugenzi wa Divisheni ya Utaifishaji Mali, Makosa ya Kupangwa na Uhalifu Mahsusi kutoka Ofisi ya Taifa ya Mashtaka Bw. Paul Kadushi akiwasilisha mada juu ya Ushahidi wa Kielektroniki na upokelewaji wa Ushahidi mahakamani kwa Mawakili wa Serikali wanaohu', 'Mkurugenzi wa Divisheni ya Utaifishaji Mali, Makosa ya Kupangwa na Uhalifu Mahsusi kutoka Ofisi ya Taifa ya Mashtaka Bw. Paul Kadushi akiwasilisha mada juu ya Ushahidi wa Kielektroniki na upokelewaji wa Ushahidi mahakamani kwa Mawakili wa Serikali wanaohudhuria mafunzo juu ya Sheria ya Makosa ya Mtandao, Upelelezi na Uendeshaji wa kesi zinazohusiana na Makosa ya Mtandao  yanayofanyika katika Chuo cha VETA mjini Morogoro kuanzia tarehe 21 hadi 25 Februari,2022.', 'Mkurugenzi wa Divisheni ya Utaifishaji Mali, Makosa ya Kupangwa na Uhalifu Mahsusi kutoka Ofisi ya Taifa ya Mashtaka Bw. Paul Kadushi akiwasilisha mada juu ya Ushahidi wa Kielektroniki na upokelewaji wa Ushahidi mahakamani kwa Mawakili wa Serikali wanaohudhuria mafunzo juu ya Sheria ya Makosa ya Mtandao, Upelelezi na Uendeshaji wa kesi zinazohusiana na Makosa ya Mtandao  yanayofanyika katika Chuo cha VETA mjini Morogoro kuanzia tarehe 21 hadi 25 Februari,2022.', 'image/jpeg', '/uploads/gallery/', '', '1645782382-kadush.jpg', '', '1645782382-kadush-jpg', 0, 1, 1, '2022-02-25 06:46:22', '2022-02-25 06:46:22'),
(486, 'Mawakili wa Serikali kutoka Katika Mikoa na Wilaya mbalimbali nchini wakimsikiliza  Bw.Paul Kadushi ambaye ni Mkurugenzi wa Divisheni ya Utaifishaji Mali, Makosa ya Kupangwa na Uhalifu Mahsusi  wakati akitoa mada   katika mafunzo ya sheria za Makosa ya Mt', 'Mawakili wa Serikali kutoka Katika Mikoa na Wilaya mbalimbali nchini wakimsikiliza  Bw.Paul Kadushi ambaye ni Mkurugenzi wa Divisheni ya Utaifishaji Mali, Makosa ya Kupangwa na Uhalifu Mahsusi  wakati akitoa mada   katika mafunzo ya sheria za Makosa ya Mt', 'Mawakili wa Serikali kutoka Katika Mikoa na Wilaya mbalimbali nchini wakimsikiliza  Bw.Paul Kadushi ambaye ni Mkurugenzi wa Divisheni ya Utaifishaji Mali, Makosa ya Kupangwa na Uhalifu Mahsusi  wakati akitoa mada   katika mafunzo ya sheria za Makosa ya Mtandao, Upelelezi na Uendeshaji wa Makosa ya Mtandao kwa Mawakili wa Serikali  yanayofanyika katika Chuo cha VETA, mjini Morogoro  yanayofanyika kuanzia tarehe 21 hadi 25 Februari, 2022 . \r\n\r\nMafunzo hayo yameandaliwa na Divisheni ya Utaifishaji Mali, Makosa ya Kupangwa na Uhalifu wa Mahsusi.', 'Mawakili wa Serikali kutoka Katika Mikoa na Wilaya mbalimbali nchini wakimsikiliza  Bw.Paul Kadushi ambaye ni Mkurugenzi wa Divisheni ya Utaifishaji Mali, Makosa ya Kupangwa na Uhalifu Mahsusi  wakati akitoa mada   katika mafunzo ya sheria za Makosa ya Mtandao, Upelelezi na Uendeshaji wa Makosa ya Mtandao kwa Mawakili wa Serikali  yanayofanyika katika Chuo cha VETA, mjini Morogoro  yanayofanyika kuanzia tarehe 21 hadi 25 Februari, 2022 . \r\n\r\nMafunzo hayo yameandaliwa na Divisheni ya Utaifishaji Mali, Makosa ya Kupangwa na Uhalifu wa Mahsusi.', 'image/jpeg', '/uploads/gallery/', '', '1645782699-tim.jpg', '', '1645782699-tim-jpg', 0, 1, 1, '2022-02-25 06:51:39', '2022-02-25 06:51:39'),
(488, 'Mkuu wa Kitengo cha TEHAMA Bw. Frank Shame akitoa neno la kuwashukuru washiriki wote wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi ambayo yalihusisha Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Wa', 'Mkuu wa Kitengo cha TEHAMA Bw. Frank Shame akitoa neno la kuwashukuru washiriki wote wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi ambayo yalihusisha Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Wa', 'Mkuu wa Kitengo cha TEHAMA Bw. Frank Shame akitoa neno la kuwashukuru washiriki wote wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi ambayo yalihusisha Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha Mashtaka Viongozi na kuwataka wakatumie mfumo huo vizuri katika kutekeleza majukumu yao ya kiofisi na pia wasisite kutoa taarifa mapema endapo watapata changamoto yoyote wakati wakitumia mfumo huo.', 'Mkuu wa Kitengo cha TEHAMA Bw. Frank Shame akitoa neno la kuwashukuru washiriki wote wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi ambayo yalihusisha Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha Mashtaka Viongozi na kuwataka wakatumie mfumo huo vizuri katika kutekeleza majukumu yao ya kiofisi na pia wasisite kutoa taarifa mapema endapo watapata changamoto yoyote wakati wakitumia mfumo huo.', 'image/jpeg', '/uploads/gallery/', '', '1645865293-shame.JPG', '', '1645865293-shame-jpg', 0, 1, 1, '2022-02-26 05:48:13', '2022-02-26 05:48:13'),
(490, 'Mwendesha Mashtaka Kiongozi  kutoka Ofisi ya Taifa ya Mashtaka Mkoa wa Kilimanjaro Bw. Omary Kibwana akitoa neno la kushukuru kwa niaba ya washiriki wengine na kuahidi kwenda kuyafanyia kazi yale yote waliyofundishwa katika Mafunzo ya Utumiaji wa Mfumo wa', 'Mwendesha Mashtaka Kiongozi  kutoka Ofisi ya Taifa ya Mashtaka Mkoa wa Kilimanjaro Bw. Omary Kibwana akitoa neno la kushukuru kwa niaba ya washiriki wengine na kuahidi kwenda kuyafanyia kazi yale yote waliyofundishwa katika Mafunzo ya Utumiaji wa Mfumo wa', 'Mwendesha Mashtaka Kiongozi  kutoka Ofisi ya Taifa ya Mashtaka Mkoa wa Kilimanjaro Bw. Omary Kibwana akitoa neno la kushukuru kwa niaba ya washiriki wengine na kuahidi kwenda kuyafanyia kazi yale yote waliyofundishwa katika Mafunzo ya Utumiaji wa Mfumo wa Kielekitroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya Kesi  yaliyoanza  tarehe 22 Februari, 2022 na kumalizika tarehe 25 Februari, 2022 Jijini Dar es salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'Mwendesha Mashtaka Kiongozi  kutoka Ofisi ya Taifa ya Mashtaka Mkoa wa Kilimanjaro Bw. Omary Kibwana akitoa neno la kushukuru kwa niaba ya washiriki wengine na kuahidi kwenda kuyafanyia kazi yale yote waliyofundishwa katika Mafunzo ya Utumiaji wa Mfumo wa Kielekitroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya Kesi  yaliyoanza  tarehe 22 Februari, 2022 na kumalizika tarehe 25 Februari, 2022 Jijini Dar es salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1645865352-omy.JPG', '', '1645865352-omy-jpg', 0, 1, 1, '2022-02-26 05:49:12', '2022-02-26 05:49:12'),
(492, 'Kaimu Mkurugenzi Msaidizi Sehemu ya Usimamizi wa Kesi kutoka Ofisi ya Taifa ya Mashtaka Makao Makuu Jijini Dodoma Bi. Javelin Rugaihuruza akitoka neno la kumkaribisha mgeni rasmi Kaimu Naibu Mkurugenzi  wa Mashtaka ambae pia ni Kaimu Mkurugenzi Idara ya U', 'Kaimu Mkurugenzi Msaidizi Sehemu ya Usimamizi wa Kesi kutoka Ofisi ya Taifa ya Mashtaka Makao Makuu Jijini Dodoma Bi. Javelin Rugaihuruza akitoka neno la kumkaribisha mgeni rasmi Kaimu Naibu Mkurugenzi  wa Mashtaka ambae pia ni Kaimu Mkurugenzi Idara ya U', 'Kaimu Mkurugenzi Msaidizi Sehemu ya Usimamizi wa Kesi kutoka Ofisi ya Taifa ya Mashtaka Makao Makuu Jijini Dodoma Bi. Javelin Rugaihuruza akitoka neno la kumkaribisha mgeni rasmi Kaimu Naibu Mkurugenzi  wa Mashtaka ambae pia ni Kaimu Mkurugenzi Idara ya Usimamizi wa Kesi na Uratibu wa Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Makao Makuu Jijini Dodoma Bi. Neema Mwanda (hayupo pichani) kwa lengo la kuhitimisha  mafunzo kuhusu Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha Mashtaka Viongozi yaliyoanza  tarehe 22 Februari, 2022 na kumalizika tarehe 25 Februari, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'Kaimu Mkurugenzi Msaidizi Sehemu ya Usimamizi wa Kesi kutoka Ofisi ya Taifa ya Mashtaka Makao Makuu Jijini Dodoma Bi. Javelin Rugaihuruza akitoka neno la kumkaribisha mgeni rasmi Kaimu Naibu Mkurugenzi  wa Mashtaka ambae pia ni Kaimu Mkurugenzi Idara ya Usimamizi wa Kesi na Uratibu wa Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Makao Makuu Jijini Dodoma Bi. Neema Mwanda (hayupo pichani) kwa lengo la kuhitimisha  mafunzo kuhusu Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha Mashtaka Viongozi yaliyoanza  tarehe 22 Februari, 2022 na kumalizika tarehe 25 Februari, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1645865438-jave.JPG', '', '1645865438-jave-jpg', 0, 1, 1, '2022-02-26 05:50:38', '2022-02-26 05:50:38'),
(494, 'Kaimu Naibu Mkurugenzi wa Mashtaka ambae pia ni Kaimu Mkurugenzi wa Idara ya Usimamizi wa Kesi na Uratibu wa Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Bi. Neema Mwanda akihitimisha mafunzo kuhusu Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya M', 'Kaimu Naibu Mkurugenzi wa Mashtaka ambae pia ni Kaimu Mkurugenzi wa Idara ya Usimamizi wa Kesi na Uratibu wa Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Bi. Neema Mwanda akihitimisha mafunzo kuhusu Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya M', 'Kaimu Naibu Mkurugenzi wa Mashtaka ambae pia ni Kaimu Mkurugenzi wa Idara ya Usimamizi wa Kesi na Uratibu wa Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Bi. Neema Mwanda akihitimisha mafunzo kuhusu Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha Mashtaka Viongozi yaliyoanza  tarehe 22 Februari, 2022 na kumalizika tarehe 25 Februari, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'Kaimu Naibu Mkurugenzi wa Mashtaka ambae pia ni Kaimu Mkurugenzi wa Idara ya Usimamizi wa Kesi na Uratibu wa Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Bi. Neema Mwanda akihitimisha mafunzo kuhusu Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Wakuu wa Mashtaka wa Mikoa na Wilaya pamoja na Waendesha Mashtaka Viongozi yaliyoanza  tarehe 22 Februari, 2022 na kumalizika tarehe 25 Februari, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1645865518-105A7262.JPG', '', '1645865518-105a7262-jpg', 0, 1, 1, '2022-02-26 05:51:58', '2022-02-26 05:51:58'),
(496, 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia hotuba ya mgeni rasmi Kaimu Naibu Mkurugenzi wa Mashtaka Bi. Neema Mwanda wakati akifunga mafunzo hayo  yaliyoanza tareh', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia hotuba ya mgeni rasmi Kaimu Naibu Mkurugenzi wa Mashtaka Bi. Neema Mwanda wakati akifunga mafunzo hayo  yaliyoanza tareh', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia hotuba ya mgeni rasmi Kaimu Naibu Mkurugenzi wa Mashtaka Bi. Neema Mwanda wakati akifunga mafunzo hayo  yaliyoanza tarehe 22 Februari, 2022 na kumalizika tarehe 25 Februari, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia hotuba ya mgeni rasmi Kaimu Naibu Mkurugenzi wa Mashtaka Bi. Neema Mwanda wakati akifunga mafunzo hayo  yaliyoanza tarehe 22 Februari, 2022 na kumalizika tarehe 25 Februari, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1645866037-105A7228.JPG', '', '1645866037-105a7228-jpg', 0, 1, 1, '2022-02-26 06:00:37', '2022-02-26 06:00:37'),
(498, 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia hotuba ya mgeni rasmi Kaimu Naibu Mkurugenzi wa Mashtaka Bi. Neema Mwanda wakati akifunga mafunzo hayo  yaliyoanza tareh', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia hotuba ya mgeni rasmi Kaimu Naibu Mkurugenzi wa Mashtaka Bi. Neema Mwanda wakati akifunga mafunzo hayo  yaliyoanza tareh', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia hotuba ya mgeni rasmi Kaimu Naibu Mkurugenzi wa Mashtaka Bi. Neema Mwanda wakati akifunga mafunzo hayo  yaliyoanza tarehe 22 Februari, 2022 na kumalizika tarehe 25 Februari, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia hotuba ya mgeni rasmi Kaimu Naibu Mkurugenzi wa Mashtaka Bi. Neema Mwanda wakati akifunga mafunzo hayo  yaliyoanza tarehe 22 Februari, 2022 na kumalizika tarehe 25 Februari, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1645866079-105A7235.JPG', '', '1645866079-105a7235-jpg', 0, 1, 1, '2022-02-26 06:01:19', '2022-02-26 06:01:19'),
(500, 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia hotuba ya mgeni rasmi Kaimu Naibu Mkurugenzi wa Mashtaka Bi. Neema Mwanda wakati akifunga mafunzo hayo  yaliyoanza tareh', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia hotuba ya mgeni rasmi Kaimu Naibu Mkurugenzi wa Mashtaka Bi. Neema Mwanda wakati akifunga mafunzo hayo  yaliyoanza tareh', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia hotuba ya mgeni rasmi Kaimu Naibu Mkurugenzi wa Mashtaka Bi. Neema Mwanda wakati akifunga mafunzo hayo  yaliyoanza tarehe 22 Februari, 2022 na kumalizika tarehe 25 Februari, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia hotuba ya mgeni rasmi Kaimu Naibu Mkurugenzi wa Mashtaka Bi. Neema Mwanda wakati akifunga mafunzo hayo  yaliyoanza tarehe 22 Februari, 2022 na kumalizika tarehe 25 Februari, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1645866121-105A7238.JPG', '', '1645866121-105a7238-jpg', 0, 1, 1, '2022-02-26 06:02:01', '2022-02-26 06:02:01'),
(502, 'Mkurugenzi Divisheni ya Utaifishaji Mali, Makosa ya Kupangwa na Uhalifu Mahsusi kutoka Ofisi ya Taifa ya Mashtaka Bw. Paul Kadushi akizungumza na washiriki wa Mafunzo ya Utumiaji wa Mfumo  Kielekitroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kes', 'Mkurugenzi Divisheni ya Utaifishaji Mali, Makosa ya Kupangwa na Uhalifu Mahsusi kutoka Ofisi ya Taifa ya Mashtaka Bw. Paul Kadushi akizungumza na washiriki wa Mafunzo ya Utumiaji wa Mfumo  Kielekitroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kes', 'Mkurugenzi Divisheni ya Utaifishaji Mali, Makosa ya Kupangwa na Uhalifu Mahsusi kutoka Ofisi ya Taifa ya Mashtaka Bw. Paul Kadushi akizungumza na washiriki wa Mafunzo ya Utumiaji wa Mfumo  Kielekitroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi ambapo yamehusisha Waendesha Mashtaka wa Polisi, Mawakili wa Serikali, Makatibu Sheria pamoja Watumishi wengine wa Ofisi ya Taifa ya Mashtaka.', 'Mkurugenzi Divisheni ya Utaifishaji Mali, Makosa ya Kupangwa na Uhalifu Mahsusi kutoka Ofisi ya Taifa ya Mashtaka Bw. Paul Kadushi akizungumza na washiriki wa Mafunzo ya Utumiaji wa Mfumo  Kielekitroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi ambapo yamehusisha Waendesha Mashtaka wa Polisi, Mawakili wa Serikali, Makatibu Sheria pamoja Watumishi wengine wa Ofisi ya Taifa ya Mashtaka.', 'image/jpeg', '/uploads/gallery/', '', '1646046765-105A7381.JPG', '', '1646046765-105a7381-jpg', 0, 1, 1, '2022-02-28 08:12:46', '2022-02-28 08:12:46'),
(504, 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Mkurugenzi Divisheni ya Utaifishaji Mali, Makosa ya Kupangwa na Uhalifu Mahsusi kutoka Ofisi ya Taifa ya Mashtaka Bw. P', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Mkurugenzi Divisheni ya Utaifishaji Mali, Makosa ya Kupangwa na Uhalifu Mahsusi kutoka Ofisi ya Taifa ya Mashtaka Bw. P', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Mkurugenzi Divisheni ya Utaifishaji Mali, Makosa ya Kupangwa na Uhalifu Mahsusi kutoka Ofisi ya Taifa ya Mashtaka Bw. Paul Kadushi  wakati akizungumza nao kwenye  mafunzo hayo  yaliyoanza leo tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Mkurugenzi Divisheni ya Utaifishaji Mali, Makosa ya Kupangwa na Uhalifu Mahsusi kutoka Ofisi ya Taifa ya Mashtaka Bw. Paul Kadushi  wakati akizungumza nao kwenye  mafunzo hayo  yaliyoanza leo tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1646046942-105A7439.JPG', '', '1646046942-105a7439-jpg', 0, 1, 1, '2022-02-28 08:15:43', '2022-02-28 08:15:43'),
(506, 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Mkurugenzi Divisheni ya Utaifishaji Mali, Makosa ya Kupangwa na Uhalifu Mahsusi kutoka Ofisi ya Taifa ya Mashtaka Bw. P', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Mkurugenzi Divisheni ya Utaifishaji Mali, Makosa ya Kupangwa na Uhalifu Mahsusi kutoka Ofisi ya Taifa ya Mashtaka Bw. P', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Mkurugenzi Divisheni ya Utaifishaji Mali, Makosa ya Kupangwa na Uhalifu Mahsusi kutoka Ofisi ya Taifa ya Mashtaka Bw. Paul Kadushi  wakati akizungumza nao kwenye  mafunzo hayo  yaliyoanza leo tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Mkurugenzi Divisheni ya Utaifishaji Mali, Makosa ya Kupangwa na Uhalifu Mahsusi kutoka Ofisi ya Taifa ya Mashtaka Bw. Paul Kadushi  wakati akizungumza nao kwenye  mafunzo hayo  yaliyoanza leo tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1646047069-105A7394.JPG', '', '1646047069-105a7394-jpg', 0, 1, 1, '2022-02-28 08:17:50', '2022-02-28 08:17:50'),
(508, 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Mkurugenzi Divisheni ya Utaifishaji Mali, Makosa ya Kupangwa na Uhalifu Mahsusi kutoka Ofisi ya Taifa ya Mashtaka Bw. P', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Mkurugenzi Divisheni ya Utaifishaji Mali, Makosa ya Kupangwa na Uhalifu Mahsusi kutoka Ofisi ya Taifa ya Mashtaka Bw. P', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Mkurugenzi Divisheni ya Utaifishaji Mali, Makosa ya Kupangwa na Uhalifu Mahsusi kutoka Ofisi ya Taifa ya Mashtaka Bw. Paul Kadushi  wakati akizungumza nao kwenye  mafunzo hayo  yaliyoanza leo tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Mkurugenzi Divisheni ya Utaifishaji Mali, Makosa ya Kupangwa na Uhalifu Mahsusi kutoka Ofisi ya Taifa ya Mashtaka Bw. Paul Kadushi  wakati akizungumza nao kwenye  mafunzo hayo  yaliyoanza leo tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1646047203-wshrik.3.JPG', '', '1646047203-wshrik-3-jpg', 0, 1, 1, '2022-02-28 08:20:03', '2022-02-28 08:20:03'),
(510, 'Afisa TEHAMA kutoka Ofisi ya Taifa Mashtaka Jijini Mwanza Bw. Idrisa Swalehe akifundisha namna ya kusajili taarifa za kesi kwenye mfumo katika Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Waendesha', 'Afisa TEHAMA kutoka Ofisi ya Taifa Mashtaka Jijini Mwanza Bw. Idrisa Swalehe akifundisha namna ya kusajili taarifa za kesi kwenye mfumo katika Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Waendesha', 'Afisa TEHAMA kutoka Ofisi ya Taifa Mashtaka Jijini Mwanza Bw. Idrisa Swalehe akifundisha namna ya kusajili taarifa za kesi kwenye mfumo katika Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Waendesha Mashtaka wa Polisi, Mawakili wa Serikali, Makatibu Sheria pamoja na Watumishi wengine wa Ofisi ya Taifa ya Mashtaka yaliyoanza leo tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'Afisa TEHAMA kutoka Ofisi ya Taifa Mashtaka Jijini Mwanza Bw. Idrisa Swalehe akifundisha namna ya kusajili taarifa za kesi kwenye mfumo katika Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Waendesha Mashtaka wa Polisi, Mawakili wa Serikali, Makatibu Sheria pamoja na Watumishi wengine wa Ofisi ya Taifa ya Mashtaka yaliyoanza leo tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1646047437-105A7458.JPG', '', '1646047437-105a7458-jpg', 0, 1, 1, '2022-02-28 08:23:57', '2022-02-28 08:23:57'),
(512, 'Mkurugenzi Msaidizi Sehemu ya Makosa Dhidi ya Binadamu na Utengamano wa Kitaifa kutoka Ofisi ya Taifa ya Mashtaka Bw. Renatus Mkude akiwatambulisha washiriki wa mafunzo ( hawapo pichani)  juu ya Urejeshaji Mali zitokanazo na Uhalifu na utaratibu wa Makuba', 'Mkurugenzi Msaidizi Sehemu ya Makosa Dhidi ya Binadamu na Utengamano wa Kitaifa kutoka Ofisi ya Taifa ya Mashtaka Bw. Renatus Mkude akiwatambulisha washiriki wa mafunzo ( hawapo pichani)  juu ya Urejeshaji Mali zitokanazo na Uhalifu na utaratibu wa Makuba', 'Mkurugenzi Msaidizi Sehemu ya Makosa Dhidi ya Binadamu na Utengamano wa Kitaifa kutoka Ofisi ya Taifa ya Mashtaka Bw. Renatus Mkude akiwatambulisha washiriki wa mafunzo ( hawapo pichani)  juu ya Urejeshaji Mali zitokanazo na Uhalifu na utaratibu wa Makubaliano ya Kukiri kosa yanayotolewa kwa Waendesha Mashtaka na Wapelelezi yanayofanyika kuanzia tarehe 28 Februari, 2022 hadi 4 Machi, 2022 katika Hoteli ya Gold Crest jijini Mwanza.', 'Mkurugenzi Msaidizi Sehemu ya Makosa Dhidi ya Binadamu na Utengamano wa Kitaifa kutoka Ofisi ya Taifa ya Mashtaka Bw. Renatus Mkude akiwatambulisha washiriki wa mafunzo ( hawapo pichani)  juu ya Urejeshaji Mali zitokanazo na Uhalifu na utaratibu wa Makubaliano ya Kukiri kosa yanayotolewa kwa Waendesha Mashtaka na Wapelelezi yanayofanyika kuanzia tarehe 28 Februari, 2022 hadi 4 Machi, 2022 katika Hoteli ya Gold Crest jijini Mwanza.', 'image/jpeg', '/uploads/gallery/', '', '1646128416-dpp 9.JPG', '', '1646128416-dpp-9-jpg', 0, 1, 1, '2022-03-01 06:53:36', '2022-03-01 06:53:36'),
(514, 'Jaji wa Mahakama Kuu  Mhe. Lilian Itemba akiwasilisha mada juu ya Chimbuko na sababu za Utaifishaji Mali zilizopatikana kwa njia ya Uhalifu wakati wa mafunzo juu Urejeshaji Mali zitokanazo na Uhalifu na Utaratibu wa Makubaliano ya Kukiri kosa yanayotolewa', 'Jaji wa Mahakama Kuu  Mhe. Lilian Itemba akiwasilisha mada juu ya Chimbuko na sababu za Utaifishaji Mali zilizopatikana kwa njia ya Uhalifu wakati wa mafunzo juu Urejeshaji Mali zitokanazo na Uhalifu na Utaratibu wa Makubaliano ya Kukiri kosa yanayotolewa', 'Jaji wa Mahakama Kuu  Mhe. Lilian Itemba akiwasilisha mada juu ya Chimbuko na sababu za Utaifishaji Mali zilizopatikana kwa njia ya Uhalifu wakati wa mafunzo juu Urejeshaji Mali zitokanazo na Uhalifu na Utaratibu wa Makubaliano ya Kukiri kosa yanayotolewa kwa Waendesha Mashtaka na Wapelelezi yanayofanyika kuanzi tarehe 28 Februari, 2022 hadi Machi 4 Februari, 2022 katika Hoteli ya Gold Crest jijini Mwanza', 'Jaji wa Mahakama Kuu  Mhe. Lilian Itemba akiwasilisha mada juu ya Chimbuko na sababu za Utaifishaji Mali zilizopatikana kwa njia ya Uhalifu wakati wa mafunzo juu Urejeshaji Mali zitokanazo na Uhalifu na Utaratibu wa Makubaliano ya Kukiri kosa yanayotolewa kwa Waendesha Mashtaka na Wapelelezi yanayofanyika kuanzi tarehe 28 Februari, 2022 hadi Machi 4 Februari, 2022 katika Hoteli ya Gold Crest jijini Mwanza', 'image/jpeg', '/uploads/gallery/', '', '1646128478-dpp 18.JPG', '', '1646128478-dpp-18-jpg', 0, 1, 1, '2022-03-01 06:54:38', '2022-03-01 06:54:38'),
(516, 'Mkurugenzi Msaidizi  Sehemu ya Utaifishaji  na Urejeshaji  Mali kutoka Ofisi ya Taifa ya Mashtaka  Bw. Shedrack Kimaro akimkaribisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu   (hayupo pichani) kufungua mafunzo juu ya Urejeshaji Mali zitokanazo na Uh', 'Mkurugenzi Msaidizi  Sehemu ya Utaifishaji  na Urejeshaji  Mali kutoka Ofisi ya Taifa ya Mashtaka  Bw. Shedrack Kimaro akimkaribisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu   (hayupo pichani) kufungua mafunzo juu ya Urejeshaji Mali zitokanazo na Uh', 'Mkurugenzi Msaidizi  Sehemu ya Utaifishaji  na Urejeshaji  Mali kutoka Ofisi ya Taifa ya Mashtaka  Bw. Shedrack Kimaro akimkaribisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu   (hayupo pichani) kufungua mafunzo juu ya Urejeshaji Mali zitokanazo na Uhalifu na mafunzo juu ya Utaratibu wa Makubaliano ya Kukiri Kosa yanayotolewa kwa Waendesha Mashtaka  na Wapelelezi kwa ufadhili  wa Shirika la lisilo la Kiserikali  liitwalo PAMS (PAMS Foundation)yanayofanyika kuanzia tarehe 28 Februari hadi tarehe 4 machi, 2022 katika Hoteli ya Gold Crest jijini Mwanza.', 'Mkurugenzi Msaidizi  Sehemu ya Utaifishaji  na Urejeshaji  Mali kutoka Ofisi ya Taifa ya Mashtaka  Bw. Shedrack Kimaro akimkaribisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu   (hayupo pichani) kufungua mafunzo juu ya Urejeshaji Mali zitokanazo na Uhalifu na mafunzo juu ya Utaratibu wa Makubaliano ya Kukiri Kosa yanayotolewa kwa Waendesha Mashtaka  na Wapelelezi kwa ufadhili  wa Shirika la lisilo la Kiserikali  liitwalo PAMS (PAMS Foundation)yanayofanyika kuanzia tarehe 28 Februari hadi tarehe 4 machi, 2022 katika Hoteli ya Gold Crest jijini Mwanza.', 'image/jpeg', '/uploads/gallery/', '', '1646128564-dpp 4.JPG', '', '1646128564-dpp-4-jpg', 0, 1, 1, '2022-03-01 06:56:04', '2022-03-01 06:56:04'),
(518, 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akifungua mafunzo juu ya  Urejeshaji Mali zitokanazo na Uhalifu (Asset  recovery)  na utaratibu wa Makubaliano ya kukiri kosa (ple-bargaining) yanayotolewa kwa Waendesha Mashtaka  na Wapelelezi yanayofanyika ', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akifungua mafunzo juu ya  Urejeshaji Mali zitokanazo na Uhalifu (Asset  recovery)  na utaratibu wa Makubaliano ya kukiri kosa (ple-bargaining) yanayotolewa kwa Waendesha Mashtaka  na Wapelelezi yanayofanyika ', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akifungua mafunzo juu ya  Urejeshaji Mali zitokanazo na Uhalifu (Asset  recovery)  na utaratibu wa Makubaliano ya kukiri kosa (ple-bargaining) yanayotolewa kwa Waendesha Mashtaka  na Wapelelezi yanayofanyika kuanzia tarehe 28 Februari, 2022 hadi 4  machi, 2022 katika Hoteli ya Gold Crest jijini Mwanza', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akifungua mafunzo juu ya  Urejeshaji Mali zitokanazo na Uhalifu (Asset  recovery)  na utaratibu wa Makubaliano ya kukiri kosa (ple-bargaining) yanayotolewa kwa Waendesha Mashtaka  na Wapelelezi yanayofanyika kuanzia tarehe 28 Februari, 2022 hadi 4  machi, 2022 katika Hoteli ya Gold Crest jijini Mwanza', 'image/jpeg', '/uploads/gallery/', '', '1646128628-dpp 8.JPG', '', '1646128628-dpp-8-jpg', 0, 1, 1, '2022-03-01 06:57:08', '2022-03-01 06:57:08');
INSERT INTO `media` (`id`, `title_en`, `title_sw`, `content_en`, `content_sw`, `mime`, `path`, `url`, `filename`, `iconurl`, `slug`, `user_id`, `gallery_id`, `status`, `created_at`, `updated_at`) VALUES
(520, 'Mkuu wa Mashtaka Wilaya ya Nzega Bi. Jane Mandago akielezea umuhimu wa mafunzo  juu ya Urejeshaji Mali zitokanazo na uhalifu na  Makubaliano ya kukiri kosa yanayotolewa kwa Waendesha Mashtaka na Wapelelezi yanayofanyika kuanzia tarehe 28 Februari, 2022 ha', 'Mkuu wa Mashtaka Wilaya ya Nzega Bi. Jane Mandago akielezea umuhimu wa mafunzo  juu ya Urejeshaji Mali zitokanazo na uhalifu na  Makubaliano ya kukiri kosa yanayotolewa kwa Waendesha Mashtaka na Wapelelezi yanayofanyika kuanzia tarehe 28 Februari, 2022 ha', 'Mkuu wa Mashtaka Wilaya ya Nzega Bi. Jane Mandago akielezea umuhimu wa mafunzo  juu ya Urejeshaji Mali zitokanazo na uhalifu na  Makubaliano ya kukiri kosa yanayotolewa kwa Waendesha Mashtaka na Wapelelezi yanayofanyika kuanzia tarehe 28 Februari, 2022 hadi 4 Machi, 2022 katika Hoteli ya Gold Crest jijini Mwanza.', 'Mkuu wa Mashtaka Wilaya ya Nzega Bi. Jane Mandago akielezea umuhimu wa mafunzo  juu ya Urejeshaji Mali zitokanazo na uhalifu na  Makubaliano ya kukiri kosa yanayotolewa kwa Waendesha Mashtaka na Wapelelezi yanayofanyika kuanzia tarehe 28 Februari, 2022 hadi 4 Machi, 2022 katika Hoteli ya Gold Crest jijini Mwanza.', 'image/jpeg', '/uploads/gallery/', '', '1646128719-dpp 20.JPG', '', '1646128719-dpp-20-jpg', 0, 1, 1, '2022-03-01 06:58:39', '2022-03-01 06:58:39'),
(522, 'Picha ya pamoja ya Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akiwa na Mkurugenzi wa Intelijensia, Uchambuzi na Operesheni wa Shirika lisilo la Kiserikali la PAMS Bw. Elisifa Ngowi(kushoto) na Naibu Kamishna Mstaafu wa Polisi Samson Kasala (kulia) wak', 'Picha ya pamoja ya Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akiwa na Mkurugenzi wa Intelijensia, Uchambuzi na Operesheni wa Shirika lisilo la Kiserikali la PAMS Bw. Elisifa Ngowi(kushoto) na Naibu Kamishna Mstaafu wa Polisi Samson Kasala (kulia) wak', 'Picha ya pamoja ya Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akiwa na Mkurugenzi wa Intelijensia, Uchambuzi na Operesheni wa Shirika lisilo la Kiserikali la PAMS Bw. Elisifa Ngowi(kushoto) na Naibu Kamishna Mstaafu wa Polisi Samson Kasala (kulia) wakiwa katika picha ya pamoja Waendesha Mashtaka wa Serikali na Wapelelezi katika mafunzo kuhusu taratibu za Kisheria za Utaifishaji Mali zitokanazo na Uhalifu na Makubaliano ya kukiri kosa yanayotolewa kwa Waendesha Mashtaka na Wapelelezi yanayofanyika kuanzia tarehe 28 Februari, 2022 hadi tarehe 04 Machi,2022 jijini Mwanza', 'Picha ya pamoja ya Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akiwa na Mkurugenzi wa Intelijensia, Uchambuzi na Operesheni wa Shirika lisilo la Kiserikali la PAMS Bw. Elisifa Ngowi(kushoto) na Naibu Kamishna Mstaafu wa Polisi Samson Kasala (kulia) wakiwa katika picha ya pamoja Waendesha Mashtaka wa Serikali na Wapelelezi katika mafunzo kuhusu taratibu za Kisheria za Utaifishaji Mali zitokanazo na Uhalifu na Makubaliano ya kukiri kosa yanayotolewa kwa Waendesha Mashtaka na Wapelelezi yanayofanyika kuanzia tarehe 28 Februari, 2022 hadi tarehe 04 Machi,2022 jijini Mwanza', 'image/jpeg', '/uploads/gallery/', '', '1646128797-dpp 15 (2).JPG', '', '1646128797-dpp-15-2-jpg', 0, 1, 1, '2022-03-01 06:59:57', '2022-03-01 06:59:57'),
(524, 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia hotuba kutoka kwa mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (hayupo pichani) wakati akihutubia  kwenye ', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia hotuba kutoka kwa mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (hayupo pichani) wakati akihutubia  kwenye ', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia hotuba kutoka kwa mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (hayupo pichani) wakati akihutubia  kwenye  mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia hotuba kutoka kwa mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (hayupo pichani) wakati akihutubia  kwenye  mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1646302915-pamela.JPG', '', '1646302915-pamela-jpg', 0, 1, 1, '2022-03-03 07:21:55', '2022-03-03 07:21:55'),
(526, 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia hotuba kutoka kwa mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (hayupo pichani) wakati akihutubia  kwenye ', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia hotuba kutoka kwa mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (hayupo pichani) wakati akihutubia  kwenye ', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia hotuba kutoka kwa mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (hayupo pichani) wakati akihutubia  kwenye  mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia hotuba kutoka kwa mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (hayupo pichani) wakati akihutubia  kwenye  mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1646303221-mayala.JPG', '', '1646303221-mayala-jpg', 0, 1, 1, '2022-03-03 07:27:01', '2022-03-03 07:27:01'),
(528, 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akifungua mafunzo juu  ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Waendesha Mashtaka wa Polisi, Mawakili wa Serikali, Makatibu Sheria pamoja na Watumishi we', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akifungua mafunzo juu  ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Waendesha Mashtaka wa Polisi, Mawakili wa Serikali, Makatibu Sheria pamoja na Watumishi we', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akifungua mafunzo juu  ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Waendesha Mashtaka wa Polisi, Mawakili wa Serikali, Makatibu Sheria pamoja na Watumishi wengine wa Ofisi ya Taifa ya Mashtaka yaliyoanza  tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akifungua mafunzo juu  ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Waendesha Mashtaka wa Polisi, Mawakili wa Serikali, Makatibu Sheria pamoja na Watumishi wengine wa Ofisi ya Taifa ya Mashtaka yaliyoanza  tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1646303325-dpp.4.JPG', '', '1646303325-dpp-4-jpg', 0, 1, 1, '2022-03-03 07:28:45', '2022-03-03 07:28:45'),
(530, 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (katikati), Mkuu wa Kitengo cha TEHAMA kutoka Ofisi ya Taifa ya Mashtaka Bw. Frank Shame (wapili kushoto), Kaimu Mkurugenzi Msaidizi Sehemu ya Usimamizi wa Kesi kutoka Ofisi ya Tai', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (katikati), Mkuu wa Kitengo cha TEHAMA kutoka Ofisi ya Taifa ya Mashtaka Bw. Frank Shame (wapili kushoto), Kaimu Mkurugenzi Msaidizi Sehemu ya Usimamizi wa Kesi kutoka Ofisi ya Tai', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (katikati), Mkuu wa Kitengo cha TEHAMA kutoka Ofisi ya Taifa ya Mashtaka Bw. Frank Shame (wapili kushoto), Kaimu Mkurugenzi Msaidizi Sehemu ya Usimamizi wa Kesi kutoka Ofisi ya Taifa ya Mashtaka Bi.Javelin Rugaihuruza (wakwanza kulia) wakiwa na  Waendesha Mashtaka wa Polisi, Mawakili wa Serikali, Makatibu Sheria pamoja na Watumishi wengine wa Ofisi ya Taifa ya Mashtaka ambao wameshiriki kwenye mafunzo ya Utumiaji wa Mfumo wa Kielekitroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi yaliyoanza tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (katikati), Mkuu wa Kitengo cha TEHAMA kutoka Ofisi ya Taifa ya Mashtaka Bw. Frank Shame (wapili kushoto), Kaimu Mkurugenzi Msaidizi Sehemu ya Usimamizi wa Kesi kutoka Ofisi ya Taifa ya Mashtaka Bi.Javelin Rugaihuruza (wakwanza kulia) wakiwa na  Waendesha Mashtaka wa Polisi, Mawakili wa Serikali, Makatibu Sheria pamoja na Watumishi wengine wa Ofisi ya Taifa ya Mashtaka ambao wameshiriki kwenye mafunzo ya Utumiaji wa Mfumo wa Kielekitroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi yaliyoanza tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1646303455-105A7652.JPG', '', '1646303455-105a7652-jpg', 0, 1, 1, '2022-03-03 07:30:55', '2022-03-03 07:30:55'),
(532, 'Afisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idris Swalehe akimpitisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu kwenye mfumo wa Ofisi ya Taifa ya Mashtaka na kumuonesha jinsi atakavyokuwa anapata taarifa zote na kufuatilia yanayo', 'Afisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idris Swalehe akimpitisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu kwenye mfumo wa Ofisi ya Taifa ya Mashtaka na kumuonesha jinsi atakavyokuwa anapata taarifa zote na kufuatilia yanayo', 'Afisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idris Swalehe akimpitisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu kwenye mfumo wa Ofisi ya Taifa ya Mashtaka na kumuonesha jinsi atakavyokuwa anapata taarifa zote na kufuatilia yanayofanyika katiko ofisi zote za Mikoa na Wilaya mara baada ya mfumo kuanza kutumika', 'Afisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idris Swalehe akimpitisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu kwenye mfumo wa Ofisi ya Taifa ya Mashtaka na kumuonesha jinsi atakavyokuwa anapata taarifa zote na kufuatilia yanayofanyika katiko ofisi zote za Mikoa na Wilaya mara baada ya mfumo kuanza kutumika', 'image/jpeg', '/uploads/gallery/', '', '1646303622-mfumo.3.JPG', '', '1646303622-mfumo-3-jpg', 0, 1, 1, '2022-03-03 07:33:42', '2022-03-03 07:33:42'),
(534, 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (katikati), Mkuu wa Kitengo cha TEHAMA kutoka Ofisi ya Taifa ya Mashtaka Bw. Frank Shame (wapili kushoto), Kaimu Mkurugenzi Msaidizi Sehemu ya Usimamizi wa Kesi kutoka Ofisi ya Tai', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (katikati), Mkuu wa Kitengo cha TEHAMA kutoka Ofisi ya Taifa ya Mashtaka Bw. Frank Shame (wapili kushoto), Kaimu Mkurugenzi Msaidizi Sehemu ya Usimamizi wa Kesi kutoka Ofisi ya Tai', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (katikati), Mkuu wa Kitengo cha TEHAMA kutoka Ofisi ya Taifa ya Mashtaka Bw. Frank Shame (wapili kushoto), Kaimu Mkurugenzi Msaidizi Sehemu ya Usimamizi wa Kesi kutoka Ofisi ya Taifa ya Mashtaka Bi.Javelin Rugaihuruza (wakwanza kulia) wakiwa na Maafisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka  ambao wameshiriki kwenye Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Waendesha Mashtaka wa Polisi, Mawakili wa Serikali, Makatibu Sheria pamoja na Watumishi wengine wa Ofisi ya Taifa ya Mashtaka yaliyoanza tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo  cha Usimamizi wa Fedha (IFM)', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (katikati), Mkuu wa Kitengo cha TEHAMA kutoka Ofisi ya Taifa ya Mashtaka Bw. Frank Shame (wapili kushoto), Kaimu Mkurugenzi Msaidizi Sehemu ya Usimamizi wa Kesi kutoka Ofisi ya Taifa ya Mashtaka Bi.Javelin Rugaihuruza (wakwanza kulia) wakiwa na Maafisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka  ambao wameshiriki kwenye Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Waendesha Mashtaka wa Polisi, Mawakili wa Serikali, Makatibu Sheria pamoja na Watumishi wengine wa Ofisi ya Taifa ya Mashtaka yaliyoanza tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo  cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1646303728-105A7659.JPG', '', '1646303728-105a7659-jpg', 0, 1, 1, '2022-03-03 07:35:28', '2022-03-03 07:35:28'),
(536, 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (katikati), Mkuu wa Kitengo cha TEHAMA kutoka Ofisi ya Taifa ya Mashtaka Bw. Frank Shame (wapili kushoto), Kaimu Mkurugenzi Msaidizi Sehemu ya Usimamizi wa Kesi kutoka Ofisi ya Tai', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (katikati), Mkuu wa Kitengo cha TEHAMA kutoka Ofisi ya Taifa ya Mashtaka Bw. Frank Shame (wapili kushoto), Kaimu Mkurugenzi Msaidizi Sehemu ya Usimamizi wa Kesi kutoka Ofisi ya Tai', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (katikati), Mkuu wa Kitengo cha TEHAMA kutoka Ofisi ya Taifa ya Mashtaka Bw. Frank Shame (wapili kushoto), Kaimu Mkurugenzi Msaidizi Sehemu ya Usimamizi wa Kesi kutoka Ofisi ya Taifa ya Mashtaka Bi.Javelin Rugaihuruza (wakwanza kulia) wakiwa na  timu ya maandalizi kutoka Wizara ya Habari, Mawasiliano na Teknolojia ya Habari ambao wameshiriki kwenye Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Waendesha Mashtaka wa Polisi, Mawakili wa Serikali, Makatibu Sheria pamoja na Watumishi wengine wa Ofisi ya Taifa ya Mashtaka yaliyoanza tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo  cha Usimamizi wa Fedha (IFM)', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (katikati), Mkuu wa Kitengo cha TEHAMA kutoka Ofisi ya Taifa ya Mashtaka Bw. Frank Shame (wapili kushoto), Kaimu Mkurugenzi Msaidizi Sehemu ya Usimamizi wa Kesi kutoka Ofisi ya Taifa ya Mashtaka Bi.Javelin Rugaihuruza (wakwanza kulia) wakiwa na  timu ya maandalizi kutoka Wizara ya Habari, Mawasiliano na Teknolojia ya Habari ambao wameshiriki kwenye Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Waendesha Mashtaka wa Polisi, Mawakili wa Serikali, Makatibu Sheria pamoja na Watumishi wengine wa Ofisi ya Taifa ya Mashtaka yaliyoanza tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo  cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1646303824-105A7663.JPG', '', '1646303824-105a7663-jpg', 0, 1, 1, '2022-03-03 07:37:04', '2022-03-03 07:37:04'),
(538, 'Washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika ta', 'Washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika ta', 'Washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo cha Usimamizi wa Fedha (IFM)', 'Washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1646304956-105A7847.JPG', '', '1646304956-105a7847-jpg', 0, 1, 1, '2022-03-03 07:55:56', '2022-03-03 07:55:56'),
(540, 'Washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika ta', 'Washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika ta', 'Washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo cha Usimamizi wa Fedha (IFM)', 'Washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1646305012-105A7869.JPG', '', '1646305012-105a7869-jpg', 0, 1, 1, '2022-03-03 07:56:52', '2022-03-03 07:56:52'),
(542, 'Washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika ta', 'Washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika ta', 'Washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo cha Usimamizi wa Fedha (IFM)', 'Washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1646305059-105A7903.JPG', '', '1646305059-105a7903-jpg', 0, 1, 1, '2022-03-03 07:57:39', '2022-03-03 07:57:39'),
(544, 'Afisa TEHAMA kutoka Ofisi ya Taifa Mashtaka Jijini Mbeya Bw. Lisemwalo Sung\'he akifundisha namna ya kuomba likizo na jinsi watakavyokuwa wanapata majibu yao kutoka Makao Makuu hadi katika ngazi za Mikoa na Wilaya  kwenye mfumo katika Mafunzo ya Utumiaji w', 'Afisa TEHAMA kutoka Ofisi ya Taifa Mashtaka Jijini Mbeya Bw. Lisemwalo Sung\'he akifundisha namna ya kuomba likizo na jinsi watakavyokuwa wanapata majibu yao kutoka Makao Makuu hadi katika ngazi za Mikoa na Wilaya  kwenye mfumo katika Mafunzo ya Utumiaji w', 'Afisa TEHAMA kutoka Ofisi ya Taifa Mashtaka Jijini Mbeya Bw. Lisemwalo Sung\'he akifundisha namna ya kuomba likizo na jinsi watakavyokuwa wanapata majibu yao kutoka Makao Makuu hadi katika ngazi za Mikoa na Wilaya  kwenye mfumo katika Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Waendesha Mashtaka wa Polisi, Mawakili wa Serikali, Makatibu Sheria pamoja na Watumishi wengine wa Ofisi ya Taifa ya Mashtaka yaliyoanza leo tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo cha Usimamizi wa Fedha (IFM)', 'Afisa TEHAMA kutoka Ofisi ya Taifa Mashtaka Jijini Mbeya Bw. Lisemwalo Sung\'he akifundisha namna ya kuomba likizo na jinsi watakavyokuwa wanapata majibu yao kutoka Makao Makuu hadi katika ngazi za Mikoa na Wilaya  kwenye mfumo katika Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Waendesha Mashtaka wa Polisi, Mawakili wa Serikali, Makatibu Sheria pamoja na Watumishi wengine wa Ofisi ya Taifa ya Mashtaka yaliyoanza leo tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1646305116-105A7825.JPG', '', '1646305116-105a7825-jpg', 0, 1, 1, '2022-03-03 07:58:36', '2022-03-03 07:58:36'),
(548, 'Kaimu Mkurugenzi Msaidizi Sehemu ya Usimamizi wa Kesi kutoka Ofisi ya Taifa ya Mashtaka Makao Makuu Jijini Dodoma Bi. Javelin Rugaihuruza akiwakaribisha washiriki wa kundi la pili wa mafunzo juu ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya M', 'Kaimu Mkurugenzi Msaidizi Sehemu ya Usimamizi wa Kesi kutoka Ofisi ya Taifa ya Mashtaka Makao Makuu Jijini Dodoma Bi. Javelin Rugaihuruza akiwakaribisha washiriki wa kundi la pili wa mafunzo juu ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya M', 'Kaimu Mkurugenzi Msaidizi Sehemu ya Usimamizi wa Kesi kutoka Ofisi ya Taifa ya Mashtaka Makao Makuu Jijini Dodoma Bi. Javelin Rugaihuruza akiwakaribisha washiriki wa kundi la pili wa mafunzo juu ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi ambao ni  Waendesha Mashtaka wa Polisi, Mawakili wa Serikali, Makatibu Sheria pamoja na Watumishi wengine wa Ofisi ya Taifa ya Mashtaka ambayo yameanza  tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'Kaimu Mkurugenzi Msaidizi Sehemu ya Usimamizi wa Kesi kutoka Ofisi ya Taifa ya Mashtaka Makao Makuu Jijini Dodoma Bi. Javelin Rugaihuruza akiwakaribisha washiriki wa kundi la pili wa mafunzo juu ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi ambao ni  Waendesha Mashtaka wa Polisi, Mawakili wa Serikali, Makatibu Sheria pamoja na Watumishi wengine wa Ofisi ya Taifa ya Mashtaka ambayo yameanza  tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1646309189-jav.JPG', '', '1646309189-jav-jpg', 0, 1, 1, '2022-03-03 09:06:29', '2022-03-03 09:06:29'),
(550, 'Mkuu wa Kitengo cha TEHAMA kutoka Ofisi ya Taifa ya Mashtaka Bw. Frank Shame akiwaelezea kwa ufupi  washiriki wa kundi la pili wa   mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi ambao ni  Waendesha Mash', 'Mkuu wa Kitengo cha TEHAMA kutoka Ofisi ya Taifa ya Mashtaka Bw. Frank Shame akiwaelezea kwa ufupi  washiriki wa kundi la pili wa   mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi ambao ni  Waendesha Mash', 'Mkuu wa Kitengo cha TEHAMA kutoka Ofisi ya Taifa ya Mashtaka Bw. Frank Shame akiwaelezea kwa ufupi  washiriki wa kundi la pili wa   mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi ambao ni  Waendesha Mashtaka wa Polisi, Mawakili wa Serikali, Makatibu Sheria pamoja na Watumishi wengine wa Ofisi ya Taifa ya Mashtaka juu ya lengo la mafunzo hayo ambayo yaliyoanza  tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'Mkuu wa Kitengo cha TEHAMA kutoka Ofisi ya Taifa ya Mashtaka Bw. Frank Shame akiwaelezea kwa ufupi  washiriki wa kundi la pili wa   mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi ambao ni  Waendesha Mashtaka wa Polisi, Mawakili wa Serikali, Makatibu Sheria pamoja na Watumishi wengine wa Ofisi ya Taifa ya Mashtaka juu ya lengo la mafunzo hayo ambayo yaliyoanza  tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1646309306-shame.JPG', '', '1646309306-shame-jpg', 0, 1, 1, '2022-03-03 09:08:26', '2022-03-03 09:08:26'),
(552, 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia kwa vitendo mafunzo kutoka kwa Muwezeshaji Afisa TEHAMA Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe (hay', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia kwa vitendo mafunzo kutoka kwa Muwezeshaji Afisa TEHAMA Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe (hay', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia kwa vitendo mafunzo kutoka kwa Muwezeshaji Afisa TEHAMA Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe (hayupo pichani) wakati akifundisha  katika mafunzo hayo yanayofanyika Jijini Dar es salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia kwa vitendo mafunzo kutoka kwa Muwezeshaji Afisa TEHAMA Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe (hayupo pichani) wakati akifundisha  katika mafunzo hayo yanayofanyika Jijini Dar es salaam', 'image/jpeg', '/uploads/gallery/', '', '1646309465-105A7766.JPG', '', '1646309465-105a7766-jpg', 0, 1, 1, '2022-03-03 09:11:05', '2022-03-03 09:11:05'),
(554, 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia kwa vitendo mafunzo kutoka kwa Muwezeshaji Afisa TEHAMA Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe (hay', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia kwa vitendo mafunzo kutoka kwa Muwezeshaji Afisa TEHAMA Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe (hay', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia kwa vitendo mafunzo kutoka kwa Muwezeshaji Afisa TEHAMA Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe (hayupo pichani) wakati akifundisha  katika mafunzo hayo yanayofanyika Jijini Dar es salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia kwa vitendo mafunzo kutoka kwa Muwezeshaji Afisa TEHAMA Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe (hayupo pichani) wakati akifundisha  katika mafunzo hayo yanayofanyika Jijini Dar es salaam', 'image/jpeg', '/uploads/gallery/', '', '1646309766-105A7743.JPG', '', '1646309766-105a7743-jpg', 0, 1, 1, '2022-03-03 09:16:06', '2022-03-03 09:16:06'),
(556, 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia kwa vitendo mafunzo kutoka kwa Muwezeshaji Afisa TEHAMA Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe (hay', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia kwa vitendo mafunzo kutoka kwa Muwezeshaji Afisa TEHAMA Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe (hay', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia kwa vitendo mafunzo kutoka kwa Muwezeshaji Afisa TEHAMA Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe (hayupo pichani) wakati akifundisha  katika mafunzo hayo yanayofanyika Jijini Dar es salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia kwa vitendo mafunzo kutoka kwa Muwezeshaji Afisa TEHAMA Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe (hayupo pichani) wakati akifundisha  katika mafunzo hayo yanayofanyika Jijini Dar es salaam', 'image/jpeg', '/uploads/gallery/', '', '1646309867-105A7757.JPG', '', '1646309867-105a7757-jpg', 0, 1, 1, '2022-03-03 09:17:47', '2022-03-03 09:17:47'),
(558, 'Kaimu Mkurugenzi Msaidizi Sehemu ya Usimamizi wa Kesi kutoka Ofisi ya Taifa ya Mashtaka Bi. Javelin Rugaihuruza  akiwakaribisha na  kuwaelezea kwa ufupi  washiriki wa kundi la tatu  wa   mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya M', 'Kaimu Mkurugenzi Msaidizi Sehemu ya Usimamizi wa Kesi kutoka Ofisi ya Taifa ya Mashtaka Bi. Javelin Rugaihuruza  akiwakaribisha na  kuwaelezea kwa ufupi  washiriki wa kundi la tatu  wa   mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya M', 'Kaimu Mkurugenzi Msaidizi Sehemu ya Usimamizi wa Kesi kutoka Ofisi ya Taifa ya Mashtaka Bi. Javelin Rugaihuruza  akiwakaribisha na  kuwaelezea kwa ufupi  washiriki wa kundi la tatu  wa   mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi ambao ni  Waendesha Mashtaka wa Polisi, Mawakili wa Serikali, Makatibu Sheria pamoja na Watumishi wengine wa Ofisi ya Taifa ya Mashtaka juu ya lengo la mafunzo hayo ambayo yaliyoanza  tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'Kaimu Mkurugenzi Msaidizi Sehemu ya Usimamizi wa Kesi kutoka Ofisi ya Taifa ya Mashtaka Bi. Javelin Rugaihuruza  akiwakaribisha na  kuwaelezea kwa ufupi  washiriki wa kundi la tatu  wa   mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi ambao ni  Waendesha Mashtaka wa Polisi, Mawakili wa Serikali, Makatibu Sheria pamoja na Watumishi wengine wa Ofisi ya Taifa ya Mashtaka juu ya lengo la mafunzo hayo ambayo yaliyoanza  tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1646387242-105A7908.JPG', '', '1646387242-105a7908-jpg', 0, 1, 1, '2022-03-04 06:47:22', '2022-03-04 06:47:22'),
(560, 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Kaimu Mkurugenzi Msaidizi Sehemu ya Usimamizi wa Kesi Bi. Javelin Rugaihuruza (hayupo pichani) wakati akiwakaribisha  k', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Kaimu Mkurugenzi Msaidizi Sehemu ya Usimamizi wa Kesi Bi. Javelin Rugaihuruza (hayupo pichani) wakati akiwakaribisha  k', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Kaimu Mkurugenzi Msaidizi Sehemu ya Usimamizi wa Kesi Bi. Javelin Rugaihuruza (hayupo pichani) wakati akiwakaribisha  kwenye  mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Kaimu Mkurugenzi Msaidizi Sehemu ya Usimamizi wa Kesi Bi. Javelin Rugaihuruza (hayupo pichani) wakati akiwakaribisha  kwenye  mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1646387435-ney.JPG', '', '1646387435-ney-jpg', 0, 1, 1, '2022-03-04 06:50:35', '2022-03-04 06:50:35'),
(562, 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Kaimu Mkurugenzi Msaidizi Sehemu ya Usimamizi wa Kesi Bi. Javelin Rugaihuruza (hayupo pichani) wakati akiwakaribisha  k', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Kaimu Mkurugenzi Msaidizi Sehemu ya Usimamizi wa Kesi Bi. Javelin Rugaihuruza (hayupo pichani) wakati akiwakaribisha  k', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Kaimu Mkurugenzi Msaidizi Sehemu ya Usimamizi wa Kesi Bi. Javelin Rugaihuruza (hayupo pichani) wakati akiwakaribisha  kwenye  mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Kaimu Mkurugenzi Msaidizi Sehemu ya Usimamizi wa Kesi Bi. Javelin Rugaihuruza (hayupo pichani) wakati akiwakaribisha  kwenye  mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo Kikuu cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1646387497-Jorm.JPG', '', '1646387497-jorm-jpg', 0, 1, 1, '2022-03-04 06:51:37', '2022-03-04 06:51:37'),
(564, 'Washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika ta', 'Washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika ta', 'Washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo cha Usimamizi wa Fedha (IFM', 'Washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo cha Usimamizi wa Fedha (IFM', 'image/jpeg', '/uploads/gallery/', '', '1646387583-idrs.6.JPG', '', '1646387583-idrs-6-jpg', 0, 1, 1, '2022-03-04 06:53:03', '2022-03-04 06:53:03'),
(566, 'Washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika ta', 'Washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika ta', 'Washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo cha Usimamizi wa Fedha (IFM', 'Washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo cha Usimamizi wa Fedha (IFM', 'image/jpeg', '/uploads/gallery/', '', '1646387664-nytr.JPG', '', '1646387664-nytr-jpg', 0, 1, 1, '2022-03-04 06:54:24', '2022-03-04 06:54:24'),
(568, 'Washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika ta', 'Washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika ta', 'Washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo cha Usimamizi wa Fedha (IFM', 'Washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo cha Usimamizi wa Fedha (IFM', 'image/jpeg', '/uploads/gallery/', '', '1646387732-washrk.JPG', '', '1646387732-washrk-jpg', 0, 1, 1, '2022-03-04 06:55:32', '2022-03-04 06:55:32'),
(570, 'Washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika ta', 'Washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika ta', 'Washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo cha Usimamizi wa Fedha (IFM', 'Washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo cha Usimamizi wa Fedha (IFM', 'image/jpeg', '/uploads/gallery/', '', '1646387782-suge.JPG', '', '1646387782-suge-jpg', 0, 1, 1, '2022-03-04 06:56:22', '2022-03-04 06:56:22'),
(572, 'Afisa TEHAMA kutoka Ofisi ya Taifa Mashtaka Jijini Mwanza Bw. Idrisa Swalehe  akifundisha namna ya kutumia mfumo  katika Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Waendesha Mashtaka wa Polisi, M', 'Afisa TEHAMA kutoka Ofisi ya Taifa Mashtaka Jijini Mwanza Bw. Idrisa Swalehe  akifundisha namna ya kutumia mfumo  katika Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Waendesha Mashtaka wa Polisi, M', 'Afisa TEHAMA kutoka Ofisi ya Taifa Mashtaka Jijini Mwanza Bw. Idrisa Swalehe  akifundisha namna ya kutumia mfumo  katika Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Waendesha Mashtaka wa Polisi, Mawakili wa Serikali, Makatibu Sheria pamoja na Watumishi wengine wa Ofisi ya Taifa ya Mashtaka yaliyoanza  tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo cha Usimamizi wa Fedha (IFM)', 'Afisa TEHAMA kutoka Ofisi ya Taifa Mashtaka Jijini Mwanza Bw. Idrisa Swalehe  akifundisha namna ya kutumia mfumo  katika Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa Waendesha Mashtaka wa Polisi, Mawakili wa Serikali, Makatibu Sheria pamoja na Watumishi wengine wa Ofisi ya Taifa ya Mashtaka yaliyoanza  tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1646388292-idrs.JPG', '', '1646388292-idrs-jpg', 0, 1, 1, '2022-03-04 07:04:52', '2022-03-04 07:04:52'),
(574, 'Mkurugenzi wa Divisheni ya Utaifishaji Mali, Makosa ya Kupangwa na Uhalifu Mahsusi kutoka Ofisi ya Taifa ya Mashtaka Bw. Paul Kadushi akielezea  chimbuko la kuandaa mafunzo kwa Waendesha Mashtaka wa Serikali na Wapelelezi kutoka katika Mikoa na Wilaya mba', 'Mkurugenzi wa Divisheni ya Utaifishaji Mali, Makosa ya Kupangwa na Uhalifu Mahsusi kutoka Ofisi ya Taifa ya Mashtaka Bw. Paul Kadushi akielezea  chimbuko la kuandaa mafunzo kwa Waendesha Mashtaka wa Serikali na Wapelelezi kutoka katika Mikoa na Wilaya mba', 'Mkurugenzi wa Divisheni ya Utaifishaji Mali, Makosa ya Kupangwa na Uhalifu Mahsusi kutoka Ofisi ya Taifa ya Mashtaka Bw. Paul Kadushi akielezea  chimbuko la kuandaa mafunzo kwa Waendesha Mashtaka wa Serikali na Wapelelezi kutoka katika Mikoa na Wilaya mbalimbali nchini    wanaohudhuria mafunzo juu ya taratibu za Kisheria za Utaifishaji  Mali  na Makubaliano ya Kukiri Makosa yanayofanyika jijini Mwanza kuanzia tarehe 28 Februari hadi 4 Machi,2022', 'Mkurugenzi wa Divisheni ya Utaifishaji Mali, Makosa ya Kupangwa na Uhalifu Mahsusi kutoka Ofisi ya Taifa ya Mashtaka Bw. Paul Kadushi akielezea  chimbuko la kuandaa mafunzo kwa Waendesha Mashtaka wa Serikali na Wapelelezi kutoka katika Mikoa na Wilaya mbalimbali nchini    wanaohudhuria mafunzo juu ya taratibu za Kisheria za Utaifishaji  Mali  na Makubaliano ya Kukiri Makosa yanayofanyika jijini Mwanza kuanzia tarehe 28 Februari hadi 4 Machi,2022', 'image/jpeg', '/uploads/gallery/', '', '1646478672-IMG-20220305-WA0003.jpg', '', '1646478672-img-20220305-wa0003-jpg', 0, 1, 1, '2022-03-05 08:11:12', '2022-03-05 08:11:12'),
(576, 'Mkuu wa Mkoa wa Mwanza Mheshimiwa Mhandisi Robert Gabriel akifunga mafunzo  ya taratibu za Kisheria za Utaifishaji Mali na Makubaliano ya Kukiri Makosa kwa Waendesha Mashtaka na Wapelelezi kutoka katika Mikoa na Wilaya mbalimbali nchini yaliyofanyika kuan', 'Mkuu wa Mkoa wa Mwanza Mheshimiwa Mhandisi Robert Gabriel akifunga mafunzo  ya taratibu za Kisheria za Utaifishaji Mali na Makubaliano ya Kukiri Makosa kwa Waendesha Mashtaka na Wapelelezi kutoka katika Mikoa na Wilaya mbalimbali nchini yaliyofanyika kuan', 'Mkuu wa Mkoa wa Mwanza Mheshimiwa Mhandisi Robert Gabriel akifunga mafunzo  ya taratibu za Kisheria za Utaifishaji Mali na Makubaliano ya Kukiri Makosa kwa Waendesha Mashtaka na Wapelelezi kutoka katika Mikoa na Wilaya mbalimbali nchini yaliyofanyika kuanzia tarehe 28 Februari hadi 4 Machi, 2022 jijini Mwanza.', 'Mkuu wa Mkoa wa Mwanza Mheshimiwa Mhandisi Robert Gabriel akifunga mafunzo  ya taratibu za Kisheria za Utaifishaji Mali na Makubaliano ya Kukiri Makosa kwa Waendesha Mashtaka na Wapelelezi kutoka katika Mikoa na Wilaya mbalimbali nchini yaliyofanyika kuanzia tarehe 28 Februari hadi 4 Machi, 2022 jijini Mwanza.', 'image/jpeg', '/uploads/gallery/', '', '1646478748-IMG_20220305_112357.jpg', '', '1646478748-img-20220305-112357-jpg', 0, 1, 1, '2022-03-05 08:12:28', '2022-03-05 08:12:28'),
(578, 'Picha ya pamoja ya Waendesha Mashtaka wa Serikali kutoka katika Mikoa na Wilaya mbalimbali nchini wakiwa na viongozi wakiongozwa na Mkuu wa Mkoa wa Mwanza Mheshimiwa Mhandisi Robert Gabriel (katikati ) na viongozi wengine akiwapo Mkurugenzi wa Mashtaka Bw', 'Picha ya pamoja ya Waendesha Mashtaka wa Serikali kutoka katika Mikoa na Wilaya mbalimbali nchini wakiwa na viongozi wakiongozwa na Mkuu wa Mkoa wa Mwanza Mheshimiwa Mhandisi Robert Gabriel (katikati ) na viongozi wengine akiwapo Mkurugenzi wa Mashtaka Bw', 'Picha ya pamoja ya Waendesha Mashtaka wa Serikali kutoka katika Mikoa na Wilaya mbalimbali nchini wakiwa na viongozi wakiongozwa na Mkuu wa Mkoa wa Mwanza Mheshimiwa Mhandisi Robert Gabriel (katikati ) na viongozi wengine akiwapo Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (kushoto kwa Mkuu wa Mkoa) wakati wa mafunzo kwa Waendesha Mashtaka na Wapelelezi kutoka katika Mikoa na Wilaya mbalimbali nchini juu ya  taratibu za Kisheria za Utaifishaji Mali na Makubaliano ya Kukiri Makosa kwa Waendesha Mashtaka na Wapelelezi kutoka katika Mikoa na Wilaya mbalimbali nchini yaliyofanyika jijini Mwanza kuanzia tarehe 28 Februari hadi 4 Machi,2022.', 'Picha ya pamoja ya Waendesha Mashtaka wa Serikali kutoka katika Mikoa na Wilaya mbalimbali nchini wakiwa na viongozi wakiongozwa na Mkuu wa Mkoa wa Mwanza Mheshimiwa Mhandisi Robert Gabriel (katikati ) na viongozi wengine akiwapo Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (kushoto kwa Mkuu wa Mkoa) wakati wa mafunzo kwa Waendesha Mashtaka na Wapelelezi kutoka katika Mikoa na Wilaya mbalimbali nchini juu ya  taratibu za Kisheria za Utaifishaji Mali na Makubaliano ya Kukiri Makosa kwa Waendesha Mashtaka na Wapelelezi kutoka katika Mikoa na Wilaya mbalimbali nchini yaliyofanyika jijini Mwanza kuanzia tarehe 28 Februari hadi 4 Machi,2022.', 'image/jpeg', '/uploads/gallery/', '', '1646478833-IMG-20220304-WA0030.jpg', '', '1646478833-img-20220304-wa0030-jpg', 0, 1, 1, '2022-03-05 08:13:53', '2022-03-05 08:13:53'),
(580, 'Picha ya pamoja ya Waendesha Mashtaka wa Serikali kutoka katika Mikoa na Wilaya mbalimbali nchini wakiwa na viongozi wakiongozwa na Mkuu wa Mkoa wa Mwanza Mheshimiwa Mhandisi Robert Gabriel (katikati ) na viongozi wengine akiwapo Mkurugenzi wa Mashtaka Bw', 'Picha ya pamoja ya Waendesha Mashtaka wa Serikali kutoka katika Mikoa na Wilaya mbalimbali nchini wakiwa na viongozi wakiongozwa na Mkuu wa Mkoa wa Mwanza Mheshimiwa Mhandisi Robert Gabriel (katikati ) na viongozi wengine akiwapo Mkurugenzi wa Mashtaka Bw', 'Picha ya pamoja ya Waendesha Mashtaka wa Serikali kutoka katika Mikoa na Wilaya mbalimbali nchini wakiwa na viongozi wakiongozwa na Mkuu wa Mkoa wa Mwanza Mheshimiwa Mhandisi Robert Gabriel (katikati ) na viongozi wengine akiwapo Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (kushoto kwa Mkuu wa Mkoa) wakati wa mafunzo kwa Waendesha Mashtaka na Wapelelezi kutoka katika Mikoa na Wilaya mbalimbali nchini juu ya  taratibu za Kisheria za Utaifishaji Mali na Makubaliano ya Kukiri Makosa kwa Waendesha Mashtaka na Wapelelezi kutoka katika Mikoa na Wilaya mbalimbali nchini yaliyofanyika jijini Mwanza kuanzia tarehe 28 Februari hadi 4 Machi,2022.', 'Picha ya pamoja ya Waendesha Mashtaka wa Serikali kutoka katika Mikoa na Wilaya mbalimbali nchini wakiwa na viongozi wakiongozwa na Mkuu wa Mkoa wa Mwanza Mheshimiwa Mhandisi Robert Gabriel (katikati ) na viongozi wengine akiwapo Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (kushoto kwa Mkuu wa Mkoa) wakati wa mafunzo kwa Waendesha Mashtaka na Wapelelezi kutoka katika Mikoa na Wilaya mbalimbali nchini juu ya  taratibu za Kisheria za Utaifishaji Mali na Makubaliano ya Kukiri Makosa kwa Waendesha Mashtaka na Wapelelezi kutoka katika Mikoa na Wilaya mbalimbali nchini yaliyofanyika jijini Mwanza kuanzia tarehe 28 Februari hadi 4 Machi,2022.', 'image/jpeg', '/uploads/gallery/', '', '1646478949-IMG-20220304-WA0032.jpg', '', '1646478949-img-20220304-wa0032-jpg', 0, 1, 1, '2022-03-05 08:15:49', '2022-03-05 08:15:49');
INSERT INTO `media` (`id`, `title_en`, `title_sw`, `content_en`, `content_sw`, `mime`, `path`, `url`, `filename`, `iconurl`, `slug`, `user_id`, `gallery_id`, `status`, `created_at`, `updated_at`) VALUES
(582, 'Mmoja wa washiriki wa mafunzo kuhusu taratibu za Kisheria za Utaifishaji Mali na Makubaliano ya Kukiri Makosa Bi. Beata Kitau akitoa neno la shukrani kwa niaba ya washiriki wenzake kwa Viongozi na Waandaaji ambayo yamewezesha washiriki kujenga uwezo na ue', 'Mmoja wa washiriki wa mafunzo kuhusu taratibu za Kisheria za Utaifishaji Mali na Makubaliano ya Kukiri Makosa Bi. Beata Kitau akitoa neno la shukrani kwa niaba ya washiriki wenzake kwa Viongozi na Waandaaji ambayo yamewezesha washiriki kujenga uwezo na ue', 'Mmoja wa washiriki wa mafunzo kuhusu taratibu za Kisheria za Utaifishaji Mali na Makubaliano ya Kukiri Makosa Bi. Beata Kitau akitoa neno la shukrani kwa niaba ya washiriki wenzake kwa Viongozi na Waandaaji ambayo yamewezesha washiriki kujenga uwezo na uelewa. Mafunzo hayo yameshirikisha Waendesha Mashtaka na Wapelelezi kutoka katika Mikoa na Wilaya mbalimbali nchini yaliyofanyika kuanzia tarehe 28 Februari hadi 4 Machi,2022.', 'Mmoja wa washiriki wa mafunzo kuhusu taratibu za Kisheria za Utaifishaji Mali na Makubaliano ya Kukiri Makosa Bi. Beata Kitau akitoa neno la shukrani kwa niaba ya washiriki wenzake kwa Viongozi na Waandaaji ambayo yamewezesha washiriki kujenga uwezo na uelewa. Mafunzo hayo yameshirikisha Waendesha Mashtaka na Wapelelezi kutoka katika Mikoa na Wilaya mbalimbali nchini yaliyofanyika kuanzia tarehe 28 Februari hadi 4 Machi,2022.', 'image/jpeg', '/uploads/gallery/', '', '1646479345-IMG-20220305-WA0004.jpg', '', '1646479345-img-20220305-wa0004-jpg', 0, 1, 1, '2022-03-05 08:22:26', '2022-03-05 08:22:26'),
(584, 'Wanawake wa Ofisi ya Taifa ya Mashtaka wakisherekea maadhimisho ya Siku ya Wanawake Duniani yaliyofanyika tarehe 8 Machi, 2022 katika Wilaya ya Chemba Jijini Dodoma.', 'Wanawake wa Ofisi ya Taifa ya Mashtaka wakisherekea maadhimisho ya Siku ya Wanawake Duniani yaliyofanyika tarehe 8 Machi, 2022 katika Wilaya ya Chemba Jijini Dodoma.', 'Wanawake wa Ofisi ya Taifa ya Mashtaka wakisherekea maadhimisho ya Siku ya Wanawake Duniani yaliyofanyika tarehe 8 Machi, 2022 katika Wilaya ya Chemba Jijini Dodoma.', 'Wanawake wa Ofisi ya Taifa ya Mashtaka wakisherekea maadhimisho ya Siku ya Wanawake Duniani yaliyofanyika tarehe 8 Machi, 2022 katika Wilaya ya Chemba Jijini Dodoma.', 'image/jpeg', '/uploads/gallery/', '', '1647271441-105A8227.JPG', '', '1647271441-105a8227-jpg', 0, 1, 1, '2022-03-14 12:24:01', '2022-03-14 12:24:01'),
(586, 'Wanawake wa Ofisi ya Taifa ya Mashtaka wakisherekea maadhimisho ya Siku ya Wanawake Duniani yaliyofanyika tarehe 8 Machi, 2022 katika Wilaya ya Chemba Jijini Dodoma.', 'Wanawake wa Ofisi ya Taifa ya Mashtaka wakisherekea maadhimisho ya Siku ya Wanawake Duniani yaliyofanyika tarehe 8 Machi, 2022 katika Wilaya ya Chemba Jijini Dodoma.', 'Wanawake wa Ofisi ya Taifa ya Mashtaka wakisherekea maadhimisho ya Siku ya Wanawake Duniani yaliyofanyika tarehe 8 Machi, 2022 katika Wilaya ya Chemba Jijini Dodoma.', 'Wanawake wa Ofisi ya Taifa ya Mashtaka wakisherekea maadhimisho ya Siku ya Wanawake Duniani yaliyofanyika tarehe 8 Machi, 2022 katika Wilaya ya Chemba Jijini Dodoma.', 'image/jpeg', '/uploads/gallery/', '', '1647271613-105A8264.JPG', '', '1647271613-105a8264-jpg', 0, 1, 1, '2022-03-14 12:26:53', '2022-03-14 12:26:53'),
(588, 'Wanawake wa Ofisi ya Taifa ya Mashtaka wakisherekea maadhimisho ya Siku ya Wanawake Duniani yaliyofanyika tarehe 8 Machi, 2022 katika Wilaya ya Chemba Jijini Dodoma.', 'Wanawake wa Ofisi ya Taifa ya Mashtaka wakisherekea maadhimisho ya Siku ya Wanawake Duniani yaliyofanyika tarehe 8 Machi, 2022 katika Wilaya ya Chemba Jijini Dodoma.', 'Wanawake wa Ofisi ya Taifa ya Mashtaka wakisherekea maadhimisho ya Siku ya Wanawake Duniani yaliyofanyika tarehe 8 Machi, 2022 katika Wilaya ya Chemba Jijini Dodoma.', 'Wanawake wa Ofisi ya Taifa ya Mashtaka wakisherekea maadhimisho ya Siku ya Wanawake Duniani yaliyofanyika tarehe 8 Machi, 2022 katika Wilaya ya Chemba Jijini Dodoma.', 'image/jpeg', '/uploads/gallery/', '', '1647271771-105A8356.JPG', '', '1647271771-105a8356-jpg', 0, 1, 1, '2022-03-14 12:29:31', '2022-03-14 12:29:31'),
(590, 'Mkurugenzi Msaidizi Sehemu ya Makosa Dhidi ya Binadamu na Utengamano wa Kitaifa kutoka Ofisi ya Taifa ya Mashtaka Bw. Renatus Mkude akitoa mwongozo wa ratiba ya Kikao kazi cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 kinachofa', 'Mkurugenzi Msaidizi Sehemu ya Makosa Dhidi ya Binadamu na Utengamano wa Kitaifa kutoka Ofisi ya Taifa ya Mashtaka Bw. Renatus Mkude akitoa mwongozo wa ratiba ya Kikao kazi cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 kinachofa', 'Mkurugenzi Msaidizi Sehemu ya Makosa Dhidi ya Binadamu na Utengamano wa Kitaifa kutoka Ofisi ya Taifa ya Mashtaka Bw. Renatus Mkude akitoa mwongozo wa ratiba ya Kikao kazi cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 kinachofanyika mjini Morogoro kuanzia tarehe 14 hadi 17 Machi, 2022.', 'Mkurugenzi Msaidizi Sehemu ya Makosa Dhidi ya Binadamu na Utengamano wa Kitaifa kutoka Ofisi ya Taifa ya Mashtaka Bw. Renatus Mkude akitoa mwongozo wa ratiba ya Kikao kazi cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 kinachofanyika mjini Morogoro kuanzia tarehe 14 hadi 17 Machi, 2022.', 'image/jpeg', '/uploads/gallery/', '', '1647439155-105A8466.JPG', '', '1647439155-105a8466-jpg', 0, 1, 1, '2022-03-16 10:59:15', '2022-03-16 10:59:15'),
(592, 'Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande akimkaribisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (hayupo pichani) kufungua kikao kazi juu ya Upitiaji wa Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 kinachofanyika mjini Morogoro ', 'Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande akimkaribisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (hayupo pichani) kufungua kikao kazi juu ya Upitiaji wa Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 kinachofanyika mjini Morogoro ', 'Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande akimkaribisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (hayupo pichani) kufungua kikao kazi juu ya Upitiaji wa Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 kinachofanyika mjini Morogoro kuanzia tarehe 14 hadi 17 Machi, 2022.', 'Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande akimkaribisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (hayupo pichani) kufungua kikao kazi juu ya Upitiaji wa Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 kinachofanyika mjini Morogoro kuanzia tarehe 14 hadi 17 Machi, 2022.', 'image/jpeg', '/uploads/gallery/', '', '1647439302-105A8513.JPG', '', '1647439302-105a8513-jpg', 0, 1, 1, '2022-03-16 11:01:42', '2022-03-16 11:01:42'),
(594, 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akifungua  Kikao kazi cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 kinachofanyika mjini Morogoro kuanzia tarehe 14 hadi 17 Machi, 2022.', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akifungua  Kikao kazi cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 kinachofanyika mjini Morogoro kuanzia tarehe 14 hadi 17 Machi, 2022.', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akifungua  Kikao kazi cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 kinachofanyika mjini Morogoro kuanzia tarehe 14 hadi 17 Machi, 2022.', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akifungua  Kikao kazi cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 kinachofanyika mjini Morogoro kuanzia tarehe 14 hadi 17 Machi, 2022.', 'image/jpeg', '/uploads/gallery/', '', '1647439393-105A8551.JPG', '', '1647439393-105a8551-jpg', 0, 1, 1, '2022-03-16 11:03:13', '2022-03-16 11:03:13'),
(596, 'Baadhi ya washiriki wa kikao kazi  cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (hayupo pichani) wakati akihutubia kwenye kikao kazi hicho  kinachofanyik', 'Baadhi ya washiriki wa kikao kazi  cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (hayupo pichani) wakati akihutubia kwenye kikao kazi hicho  kinachofanyik', 'Baadhi ya washiriki wa kikao kazi  cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (hayupo pichani) wakati akihutubia kwenye kikao kazi hicho  kinachofanyika mjini Morogoro kuanzia tarehe 14 hadi 17 Machi, 2022.', 'Baadhi ya washiriki wa kikao kazi  cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (hayupo pichani) wakati akihutubia kwenye kikao kazi hicho  kinachofanyika mjini Morogoro kuanzia tarehe 14 hadi 17 Machi, 2022.', 'image/jpeg', '/uploads/gallery/', '', '1647439527-105A8496.JPG', '', '1647439527-105a8496-jpg', 0, 1, 1, '2022-03-16 11:05:27', '2022-03-16 11:05:27'),
(598, 'Baadhi ya washiriki wa kikao kazi  cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (hayupo pichani) wakati akihutubia kwenye kikao kazi hicho  kinachofanyik', 'Baadhi ya washiriki wa kikao kazi  cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (hayupo pichani) wakati akihutubia kwenye kikao kazi hicho  kinachofanyik', 'Baadhi ya washiriki wa kikao kazi  cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (hayupo pichani) wakati akihutubia kwenye kikao kazi hicho  kinachofanyika mjini Morogoro kuanzia tarehe 14 hadi 17 Machi, 2022.', 'Baadhi ya washiriki wa kikao kazi  cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (hayupo pichani) wakati akihutubia kwenye kikao kazi hicho  kinachofanyika mjini Morogoro kuanzia tarehe 14 hadi 17 Machi, 2022.', 'image/jpeg', '/uploads/gallery/', '', '1647439673-105A8483.JPG', '', '1647439673-105a8483-jpg', 0, 1, 1, '2022-03-16 11:07:53', '2022-03-16 11:07:53'),
(600, 'Baadhi ya washiriki wa kikao kazi  cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (hayupo pichani) wakati akihutubia kwenye kikao kazi hicho  kinachofanyik', 'Baadhi ya washiriki wa kikao kazi  cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (hayupo pichani) wakati akihutubia kwenye kikao kazi hicho  kinachofanyik', 'Baadhi ya washiriki wa kikao kazi  cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (hayupo pichani) wakati akihutubia kwenye kikao kazi hicho  kinachofanyika mjini Morogoro kuanzia tarehe 14 hadi 17 Machi, 2022.', 'Baadhi ya washiriki wa kikao kazi  cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (hayupo pichani) wakati akihutubia kwenye kikao kazi hicho  kinachofanyika mjini Morogoro kuanzia tarehe 14 hadi 17 Machi, 2022.', 'image/jpeg', '/uploads/gallery/', '', '1647439754-105A8544.JPG', '', '1647439754-105a8544-jpg', 0, 1, 1, '2022-03-16 11:09:14', '2022-03-16 11:09:14'),
(602, 'Baadhi ya washiriki wa kikao kazi  cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (hayupo pichani) wakati akihutubia kwenye kikao kazi hicho  kinachofanyik', 'Baadhi ya washiriki wa kikao kazi  cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (hayupo pichani) wakati akihutubia kwenye kikao kazi hicho  kinachofanyik', 'Baadhi ya washiriki wa kikao kazi  cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (hayupo pichani) wakati akihutubia kwenye kikao kazi hicho  kinachofanyika mjini Morogoro kuanzia tarehe 14 hadi 17 Machi, 2022.', 'Baadhi ya washiriki wa kikao kazi  cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (hayupo pichani) wakati akihutubia kwenye kikao kazi hicho  kinachofanyika mjini Morogoro kuanzia tarehe 14 hadi 17 Machi, 2022.', 'image/jpeg', '/uploads/gallery/', '', '1647439863-105A8555.JPG', '', '1647439863-105a8555-jpg', 0, 1, 1, '2022-03-16 11:11:03', '2022-03-16 11:11:03'),
(604, 'Baadhi ya washiriki wa kikao kazi  cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (hayupo pichani) wakati akihutubia kwenye kikao kazi hicho  kinachofanyik', 'Baadhi ya washiriki wa kikao kazi  cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (hayupo pichani) wakati akihutubia kwenye kikao kazi hicho  kinachofanyik', 'Baadhi ya washiriki wa kikao kazi  cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (hayupo pichani) wakati akihutubia kwenye kikao kazi hicho  kinachofanyika mjini Morogoro kuanzia tarehe 14 hadi 17 Machi, 2022.', 'Baadhi ya washiriki wa kikao kazi  cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (hayupo pichani) wakati akihutubia kwenye kikao kazi hicho  kinachofanyika mjini Morogoro kuanzia tarehe 14 hadi 17 Machi, 2022.', 'image/jpeg', '/uploads/gallery/', '', '1647439948-105A8579.JPG', '', '1647439948-105a8579-jpg', 0, 1, 1, '2022-03-16 11:12:28', '2022-03-16 11:12:28'),
(606, 'Washiriki wa kikao kazi  cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 wakimsikiliza Mkurugenzi Mwezeshaji kutoka Ofisi ya Emaron Group Bw. Carl Bosser  wakati akiwasilisha mada juu ya Uongozi  kwenye kikao kazi hicho  kinachof', 'Washiriki wa kikao kazi  cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 wakimsikiliza Mkurugenzi Mwezeshaji kutoka Ofisi ya Emaron Group Bw. Carl Bosser  wakati akiwasilisha mada juu ya Uongozi  kwenye kikao kazi hicho  kinachof', 'Washiriki wa kikao kazi  cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 wakimsikiliza Mkurugenzi Mwezeshaji kutoka Ofisi ya Emaron Group Bw. Carl Bosser  wakati akiwasilisha mada juu ya Uongozi  kwenye kikao kazi hicho  kinachofanyika mjini Morogoro kuanzia tarehe 14 hadi 17 Machi, 2022.', 'Washiriki wa kikao kazi  cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 wakimsikiliza Mkurugenzi Mwezeshaji kutoka Ofisi ya Emaron Group Bw. Carl Bosser  wakati akiwasilisha mada juu ya Uongozi  kwenye kikao kazi hicho  kinachofanyika mjini Morogoro kuanzia tarehe 14 hadi 17 Machi, 2022.', 'image/jpeg', '/uploads/gallery/', '', '1647440234-105A8733.JPG', '', '1647440234-105a8733-jpg', 0, 1, 1, '2022-03-16 11:17:14', '2022-03-16 11:17:14'),
(608, 'Washiriki wa kikao kazi  cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 wakimsikiliza Mkurugenzi Mwezeshaji kutoka Ofisi ya Emaron Group Bw. Carl Bosser  wakati akiwasilisha mada juu ya Uongozi  kwenye kikao kazi hicho  kinachof', 'Washiriki wa kikao kazi  cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 wakimsikiliza Mkurugenzi Mwezeshaji kutoka Ofisi ya Emaron Group Bw. Carl Bosser  wakati akiwasilisha mada juu ya Uongozi  kwenye kikao kazi hicho  kinachof', 'Washiriki wa kikao kazi  cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 wakimsikiliza Mkurugenzi Mwezeshaji kutoka Ofisi ya Emaron Group Bw. Carl Bosser  wakati akiwasilisha mada juu ya Uongozi  kwenye kikao kazi hicho  kinachofanyika mjini Morogoro kuanzia tarehe 14 hadi 17 Machi, 2022.', 'Washiriki wa kikao kazi  cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 wakimsikiliza Mkurugenzi Mwezeshaji kutoka Ofisi ya Emaron Group Bw. Carl Bosser  wakati akiwasilisha mada juu ya Uongozi  kwenye kikao kazi hicho  kinachofanyika mjini Morogoro kuanzia tarehe 14 hadi 17 Machi, 2022.', 'image/jpeg', '/uploads/gallery/', '', '1647440409-105A8739.JPG', '', '1647440409-105a8739-jpg', 0, 1, 1, '2022-03-16 11:20:09', '2022-03-16 11:20:09'),
(610, 'Washiriki wa kikao kazi  cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 wakimsikiliza Mkurugenzi Mwezeshaji kutoka Ofisi ya Emaron Group Bw. Carl Bosser  wakati akiwasilisha mada juu ya Uongozi  kwenye kikao kazi hicho  kinachof', 'Washiriki wa kikao kazi  cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 wakimsikiliza Mkurugenzi Mwezeshaji kutoka Ofisi ya Emaron Group Bw. Carl Bosser  wakati akiwasilisha mada juu ya Uongozi  kwenye kikao kazi hicho  kinachof', 'Washiriki wa kikao kazi  cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 wakimsikiliza Mkurugenzi Mwezeshaji kutoka Ofisi ya Emaron Group Bw. Carl Bosser  wakati akiwasilisha mada juu ya Uongozi  kwenye kikao kazi hicho  kinachofanyika mjini Morogoro kuanzia tarehe 14 hadi 17 Machi, 2022.', 'Washiriki wa kikao kazi  cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 wakimsikiliza Mkurugenzi Mwezeshaji kutoka Ofisi ya Emaron Group Bw. Carl Bosser  wakati akiwasilisha mada juu ya Uongozi  kwenye kikao kazi hicho  kinachofanyika mjini Morogoro kuanzia tarehe 14 hadi 17 Machi, 2022.', 'image/jpeg', '/uploads/gallery/', '', '1647440474-105A8761.JPG', '', '1647440474-105a8761-jpg', 0, 1, 1, '2022-03-16 11:21:14', '2022-03-16 11:21:14'),
(612, 'Mkurugenzi Mwezeshaji kutoka Ofisi ya Emaron Group Bw.Carl Bosser akiwasilisha mada juu Uongozi kwenye Kikao kazi cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 kinachofanyika mjini Morogoro kuanzia tarehe 14 hadi 17 Machi, 2022', 'Mkurugenzi Mwezeshaji kutoka Ofisi ya Emaron Group Bw.Carl Bosser akiwasilisha mada juu Uongozi kwenye Kikao kazi cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 kinachofanyika mjini Morogoro kuanzia tarehe 14 hadi 17 Machi, 2022', 'Mkurugenzi Mwezeshaji kutoka Ofisi ya Emaron Group Bw.Carl Bosser akiwasilisha mada juu Uongozi kwenye Kikao kazi cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 kinachofanyika mjini Morogoro kuanzia tarehe 14 hadi 17 Machi, 2022.', 'Mkurugenzi Mwezeshaji kutoka Ofisi ya Emaron Group Bw.Carl Bosser akiwasilisha mada juu Uongozi kwenye Kikao kazi cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 kinachofanyika mjini Morogoro kuanzia tarehe 14 hadi 17 Machi, 2022.', 'image/jpeg', '/uploads/gallery/', '', '1647440580-105A8728.JPG', '', '1647440580-105a8728-jpg', 0, 1, 1, '2022-03-16 11:23:00', '2022-03-16 11:23:00'),
(614, 'Kaimu Mkurugenzi Idara ya Mipango kutoka Ofisi ya Taifa ya Mashtaka Bw. Mussa Magunguli akiwasilisha Ukomo wa Bajeti utakaotumika katika kuandaa vipaumbele vya Ofisi ya Taifa ya Mashtaka kwa mwaka wa fedha 2022/2023.', 'Kaimu Mkurugenzi Idara ya Mipango kutoka Ofisi ya Taifa ya Mashtaka Bw. Mussa Magunguli akiwasilisha Ukomo wa Bajeti utakaotumika katika kuandaa vipaumbele vya Ofisi ya Taifa ya Mashtaka kwa mwaka wa fedha 2022/2023.', 'Kaimu Mkurugenzi Idara ya Mipango kutoka Ofisi ya Taifa ya Mashtaka Bw. Mussa Magunguli akiwasilisha Ukomo wa Bajeti utakaotumika katika kuandaa vipaumbele vya Ofisi ya Taifa ya Mashtaka kwa mwaka wa fedha 2022/2023.', 'Kaimu Mkurugenzi Idara ya Mipango kutoka Ofisi ya Taifa ya Mashtaka Bw. Mussa Magunguli akiwasilisha Ukomo wa Bajeti utakaotumika katika kuandaa vipaumbele vya Ofisi ya Taifa ya Mashtaka kwa mwaka wa fedha 2022/2023.', 'image/jpeg', '/uploads/gallery/', '', '1647440812-105A8668.JPG', '', '1647440812-105a8668-jpg', 0, 1, 1, '2022-03-16 11:26:52', '2022-03-16 11:26:52'),
(616, 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (katikati), Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande (kushoto), Kaimu Mkurugenzi Idara ya Mipango Bw. Mussa Magunguli (kulia) wakiwa na Wakuu wa Idara na Vitengo kutoka Ofisi ', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (katikati), Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande (kushoto), Kaimu Mkurugenzi Idara ya Mipango Bw. Mussa Magunguli (kulia) wakiwa na Wakuu wa Idara na Vitengo kutoka Ofisi ', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (katikati), Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande (kushoto), Kaimu Mkurugenzi Idara ya Mipango Bw. Mussa Magunguli (kulia) wakiwa na Wakuu wa Idara na Vitengo kutoka Ofisi ya Taifa ya Mashtaka Makao Makuu Jijini Dodoma ambao wameshiriki kwenye Kikao kazi cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 kinachofanyika mjini Morogoro kuanzia tarehe 14 hadi 17 Machi, 2022.', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (katikati), Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande (kushoto), Kaimu Mkurugenzi Idara ya Mipango Bw. Mussa Magunguli (kulia) wakiwa na Wakuu wa Idara na Vitengo kutoka Ofisi ya Taifa ya Mashtaka Makao Makuu Jijini Dodoma ambao wameshiriki kwenye Kikao kazi cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 kinachofanyika mjini Morogoro kuanzia tarehe 14 hadi 17 Machi, 2022.', 'image/jpeg', '/uploads/gallery/', '', '1647442893-105A8622.JPG', '', '1647442893-105a8622-jpg', 0, 1, 1, '2022-03-16 12:01:33', '2022-03-16 12:01:33'),
(618, 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (katikati), Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande (kushoto), Kaimu Mkurugenzi Idara ya Mipango Bw. Mussa Magunguli (kulia) wakiwa na Wakuu wa Mashtaka kutoka Mikoa mbalimba', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (katikati), Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande (kushoto), Kaimu Mkurugenzi Idara ya Mipango Bw. Mussa Magunguli (kulia) wakiwa na Wakuu wa Mashtaka kutoka Mikoa mbalimba', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (katikati), Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande (kushoto), Kaimu Mkurugenzi Idara ya Mipango Bw. Mussa Magunguli (kulia) wakiwa na Wakuu wa Mashtaka kutoka Mikoa mbalimbali ya  Ofisi ya Taifa ya Mashtaka ambao wameshiriki kwenye Kikao kazi cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 kinachofanyika mjini Morogoro kuanzia tarehe 14 hadi 17 Machi, 2022.', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (katikati), Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande (kushoto), Kaimu Mkurugenzi Idara ya Mipango Bw. Mussa Magunguli (kulia) wakiwa na Wakuu wa Mashtaka kutoka Mikoa mbalimbali ya  Ofisi ya Taifa ya Mashtaka ambao wameshiriki kwenye Kikao kazi cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 kinachofanyika mjini Morogoro kuanzia tarehe 14 hadi 17 Machi, 2022.', 'image/jpeg', '/uploads/gallery/', '', '1647443100-105A8632.JPG', '', '1647443100-105a8632-jpg', 0, 1, 1, '2022-03-16 12:05:00', '2022-03-16 12:05:00'),
(620, 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (katikati), Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande (kushoto), Kaimu Mkurugenzi Idara ya Mipango Bw. Mussa Magunguli (kulia) wakiwa na Maafisa Bajeti  kutoka Mikoa mbalimbali', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (katikati), Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande (kushoto), Kaimu Mkurugenzi Idara ya Mipango Bw. Mussa Magunguli (kulia) wakiwa na Maafisa Bajeti  kutoka Mikoa mbalimbali', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (katikati), Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande (kushoto), Kaimu Mkurugenzi Idara ya Mipango Bw. Mussa Magunguli (kulia) wakiwa na Maafisa Bajeti  kutoka Mikoa mbalimbali ya  Ofisi ya Taifa ya Mashtaka ambao wameshiriki kwenye Kikao kazi cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 kinachofanyika mjini Morogoro kuanzia tarehe 14 hadi 17 Machi, 2022.', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (katikati), Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande (kushoto), Kaimu Mkurugenzi Idara ya Mipango Bw. Mussa Magunguli (kulia) wakiwa na Maafisa Bajeti  kutoka Mikoa mbalimbali ya  Ofisi ya Taifa ya Mashtaka ambao wameshiriki kwenye Kikao kazi cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 kinachofanyika mjini Morogoro kuanzia tarehe 14 hadi 17 Machi, 2022.', 'image/jpeg', '/uploads/gallery/', '', '1647443206-105A8640.JPG', '', '1647443206-105a8640-jpg', 0, 1, 1, '2022-03-16 12:06:46', '2022-03-16 12:06:46'),
(622, 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (katikati), Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande (kushoto), Kaimu Mkurugenzi Idara ya Mipango Bw. Mussa Magunguli (kulia) wakiwa na Kamati ya Maandalizi kutoka  Ofisi ya T', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (katikati), Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande (kushoto), Kaimu Mkurugenzi Idara ya Mipango Bw. Mussa Magunguli (kulia) wakiwa na Kamati ya Maandalizi kutoka  Ofisi ya T', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (katikati), Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande (kushoto), Kaimu Mkurugenzi Idara ya Mipango Bw. Mussa Magunguli (kulia) wakiwa na Kamati ya Maandalizi kutoka  Ofisi ya Taifa ya Mashtaka ambao wameshiriki kwenye Kikao kazi cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 kinachofanyika mjini Morogoro kuanzia tarehe 14 hadi 17 Machi, 2022.', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (katikati), Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande (kushoto), Kaimu Mkurugenzi Idara ya Mipango Bw. Mussa Magunguli (kulia) wakiwa na Kamati ya Maandalizi kutoka  Ofisi ya Taifa ya Mashtaka ambao wameshiriki kwenye Kikao kazi cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 kinachofanyika mjini Morogoro kuanzia tarehe 14 hadi 17 Machi, 2022.', 'image/jpeg', '/uploads/gallery/', '', '1647443324-105A8647.JPG', '', '1647443324-105a8647-jpg', 0, 1, 1, '2022-03-16 12:08:45', '2022-03-16 12:08:45'),
(624, 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (katikati), Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande (kushoto), Kaimu Mkurugenzi Idara ya Mipango Bw. Mussa Magunguli (kulia) wakiwa na Madereva  kutoka  Ofisi ya Taifa ya Mas', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (katikati), Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande (kushoto), Kaimu Mkurugenzi Idara ya Mipango Bw. Mussa Magunguli (kulia) wakiwa na Madereva  kutoka  Ofisi ya Taifa ya Mas', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (katikati), Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande (kushoto), Kaimu Mkurugenzi Idara ya Mipango Bw. Mussa Magunguli (kulia) wakiwa na Madereva  kutoka  Ofisi ya Taifa ya Mashtaka ambao wameshiriki kwenye Kikao kazi cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 kinachofanyika mjini Morogoro kuanzia tarehe 14 hadi 17 Machi, 2022.', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (katikati), Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande (kushoto), Kaimu Mkurugenzi Idara ya Mipango Bw. Mussa Magunguli (kulia) wakiwa na Madereva  kutoka  Ofisi ya Taifa ya Mashtaka ambao wameshiriki kwenye Kikao kazi cha kupitia Ukomo wa Bajeti na Kuandaa Bajeti ya Mwaka wa Fedha 2022/2023 kinachofanyika mjini Morogoro kuanzia tarehe 14 hadi 17 Machi, 2022.', 'image/jpeg', '/uploads/gallery/', '', '1647443429-105A8657.JPG', '', '1647443429-105a8657-jpg', 0, 1, 1, '2022-03-16 12:10:29', '2022-03-16 12:10:29'),
(626, 'Mkurugenzi Msaidizi Sehemu ya Makosa Dhidi ya Binadamu na Utengamano wa Kitaifa  Bw. Renatus Mkude akitoa mwongozo wa ratiba kikao cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka  Mkoani Morogoro', 'Mkurugenzi Msaidizi Sehemu ya Makosa Dhidi ya Binadamu na Utengamano wa Kitaifa  Bw. Renatus Mkude akitoa mwongozo wa ratiba kikao cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka  Mkoani Morogoro', 'Mkurugenzi Msaidizi Sehemu ya Makosa Dhidi ya Binadamu na Utengamano wa Kitaifa  Bw. Renatus Mkude akitoa mwongozo wa ratiba kikao cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka  Mkoani Morogoro', 'Mkurugenzi Msaidizi Sehemu ya Makosa Dhidi ya Binadamu na Utengamano wa Kitaifa  Bw. Renatus Mkude akitoa mwongozo wa ratiba kikao cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka  Mkoani Morogoro', 'image/jpeg', '/uploads/gallery/', '', '1647866213-105A8931.JPG', '', '1647866213-105a8931-jpg', 0, 1, 1, '2022-03-21 09:36:53', '2022-03-21 09:36:53'),
(628, 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akifungua kikao  cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka  Mkoani Morogoro', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akifungua kikao  cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka  Mkoani Morogoro', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akifungua kikao  cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka  Mkoani Morogoro.', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akifungua kikao  cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka  Mkoani Morogoro', 'image/jpeg', '/uploads/gallery/', '', '1647866317-105A8865.JPG', '', '1647866317-105a8865-jpg', 0, 1, 1, '2022-03-21 09:38:37', '2022-03-21 09:38:37'),
(630, 'Katibu wa Baraza la Wafanyakazi ambae pia ni Afisa Tawala Mkuu Ofisi ya Taifa ya Mashtaka Bw. Juma Katanga akimkaribisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu kufungua kikao cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka  Mkoani Morogoro.', 'Katibu wa Baraza la Wafanyakazi ambae pia ni Afisa Tawala Mkuu Ofisi ya Taifa ya Mashtaka Bw. Juma Katanga akimkaribisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu kufungua kikao cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka  Mkoani Morogoro.', 'Katibu wa Baraza la Wafanyakazi ambae pia ni Afisa Tawala Mkuu Ofisi ya Taifa ya Mashtaka Bw. Juma Katanga akimkaribisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu kufungua kikao cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka  Mkoani Morogoro.', 'Katibu wa Baraza la Wafanyakazi ambae pia ni Afisa Tawala Mkuu Ofisi ya Taifa ya Mashtaka Bw. Juma Katanga akimkaribisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu kufungua kikao cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka  Mkoani Morogoro.', 'image/jpeg', '/uploads/gallery/', '', '1647866478-105A8845.JPG', '', '1647866478-105a8845-jpg', 0, 1, 1, '2022-03-21 09:41:18', '2022-03-21 09:41:18'),
(632, 'Mwakilishi wa Katibu Mkuu TUGHE Taifa Bw. Mohamed Simbeye akitoa salamu fupi kwa washiriki wa kikao cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka  Mkoani Morogoro', 'Mwakilishi wa Katibu Mkuu TUGHE Taifa Bw. Mohamed Simbeye akitoa salamu fupi kwa washiriki wa kikao cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka  Mkoani Morogoro', 'Mwakilishi wa Katibu Mkuu TUGHE Taifa Bw. Mohamed Simbeye akitoa salamu fupi kwa washiriki wa kikao cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka  Mkoani Morogoro.', 'Mwakilishi wa Katibu Mkuu TUGHE Taifa Bw. Mohamed Simbeye akitoa salamu fupi kwa washiriki wa kikao cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka  Mkoani Morogoro', 'image/jpeg', '/uploads/gallery/', '', '1647866609-105A8923.JPG', '', '1647866609-105a8923-jpg', 0, 1, 1, '2022-03-21 09:43:29', '2022-03-21 09:43:29'),
(634, 'Katibu wa TUGHE Mkoa Bw. Anthelmus Tarimo akitoa salamu fupi kwa washiriki wa kikao cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka  Mkoani Morogoro.', 'Katibu wa TUGHE Mkoa Bw. Anthelmus Tarimo akitoa salamu fupi kwa washiriki wa kikao cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka  Mkoani Morogoro.', 'Katibu wa TUGHE Mkoa Bw. Anthelmus Tarimo akitoa salamu fupi kwa washiriki wa kikao cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka  Mkoani Morogoro.', 'Katibu wa TUGHE Mkoa Bw. Anthelmus Tarimo akitoa salamu fupi kwa washiriki wa kikao cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka  Mkoani Morogoro.', 'image/jpeg', '/uploads/gallery/', '', '1647866759-105A8902.JPG', '', '1647866759-105a8902-jpg', 0, 1, 1, '2022-03-21 09:45:59', '2022-03-21 09:45:59'),
(636, 'Washiriki wa kikao cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akihutubia kwenye kikao hicho  Mkoani Morogoro.', 'Washiriki wa kikao cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akihutubia kwenye kikao hicho  Mkoani Morogoro.', 'Washiriki wa kikao cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akihutubia kwenye kikao hicho  Mkoani Morogoro.', 'Washiriki wa kikao cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akihutubia kwenye kikao hicho  Mkoani Morogoro.', 'image/jpeg', '/uploads/gallery/', '', '1647866872-105A8848.JPG', '', '1647866872-105a8848-jpg', 0, 1, 1, '2022-03-21 09:47:52', '2022-03-21 09:47:52'),
(638, 'Washiriki wa kikao cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akihutubia kwenye kikao hicho  Mkoani Morogoro.', 'Washiriki wa kikao cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akihutubia kwenye kikao hicho  Mkoani Morogoro.', 'Washiriki wa kikao cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akihutubia kwenye kikao hicho  Mkoani Morogoro.', 'Washiriki wa kikao cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akihutubia kwenye kikao hicho  Mkoani Morogoro.', 'image/jpeg', '/uploads/gallery/', '', '1647866938-105A8875.JPG', '', '1647866938-105a8875-jpg', 0, 1, 1, '2022-03-21 09:48:58', '2022-03-21 09:48:58'),
(640, 'Washiriki wa kikao cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akihutubia kwenye kikao hicho  Mkoani Morogoro.', 'Washiriki wa kikao cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akihutubia kwenye kikao hicho  Mkoani Morogoro.', 'Washiriki wa kikao cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akihutubia kwenye kikao hicho  Mkoani Morogoro.', 'Washiriki wa kikao cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akihutubia kwenye kikao hicho  Mkoani Morogoro.', 'image/jpeg', '/uploads/gallery/', '', '1647867064-105A8880.JPG', '', '1647867064-105a8880-jpg', 0, 1, 1, '2022-03-21 09:51:04', '2022-03-21 09:51:04'),
(642, 'Washiriki wa kikao cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akihutubia kwenye kikao hicho  Mkoani Morogoro.', 'Washiriki wa kikao cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akihutubia kwenye kikao hicho  Mkoani Morogoro.', 'Washiriki wa kikao cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akihutubia kwenye kikao hicho  Mkoani Morogoro.', 'Washiriki wa kikao cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akihutubia kwenye kikao hicho  Mkoani Morogoro.', 'image/jpeg', '/uploads/gallery/', '', '1647867152-105A8880.JPG', '', '1647867152-105a8880-jpg', 0, 1, 1, '2022-03-21 09:52:33', '2022-03-21 09:52:33'),
(644, 'Washiriki wa kikao cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akihutubia kwenye kikao hicho  Mkoani Morogoro.', 'Washiriki wa kikao cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akihutubia kwenye kikao hicho  Mkoani Morogoro.', 'Washiriki wa kikao cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akihutubia kwenye kikao hicho  Mkoani Morogoro.', 'Washiriki wa kikao cha Baraza la Wafanyakazi Ofisi ya Taifa ya Mashtaka wakimsikiliza mgeni rasmi Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akihutubia kwenye kikao hicho  Mkoani Morogoro.', 'image/jpeg', '/uploads/gallery/', '', '1647867208-105A8887.JPG', '', '1647867208-105a8887-jpg', 0, 1, 1, '2022-03-21 09:53:28', '2022-03-21 09:53:28'),
(646, 'Afisa TEHAMA kutoka Ofisi ya Taifa Mashtaka Jijini Mwanza Bw. Idrisa Swalehe  akifundisha namna ya kutumia mfumo  katika Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa washiriki wa mafunzo hayo  Jiji', 'Afisa TEHAMA kutoka Ofisi ya Taifa Mashtaka Jijini Mwanza Bw. Idrisa Swalehe  akifundisha namna ya kutumia mfumo  katika Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa washiriki wa mafunzo hayo  Jiji', 'Afisa TEHAMA kutoka Ofisi ya Taifa Mashtaka Jijini Mwanza Bw. Idrisa Swalehe  akifundisha namna ya kutumia mfumo  katika Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa washiriki wa mafunzo hayo  Jijini Dar es Salaam.', 'Afisa TEHAMA kutoka Ofisi ya Taifa Mashtaka Jijini Mwanza Bw. Idrisa Swalehe  akifundisha namna ya kutumia mfumo  katika Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi kwa washiriki wa mafunzo hayo  Jijini Dar es Salaam.', 'image/jpeg', '/uploads/gallery/', '', '1647873189-105A8986.JPG', '', '1647873189-105a8986-jpg', 0, 1, 1, '2022-03-21 11:33:09', '2022-03-21 11:33:09'),
(648, 'Mkurugenzi Msaidizi Sehemu ya Utenganishaji wa Shughuli za Mashtaka na Upelelezi Bi. Pendo Makondo akiwakaribisha na  kuwaelezea kwa ufupi  washiriki wa kundi la kumi  wa   mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika', 'Mkurugenzi Msaidizi Sehemu ya Utenganishaji wa Shughuli za Mashtaka na Upelelezi Bi. Pendo Makondo akiwakaribisha na  kuwaelezea kwa ufupi  washiriki wa kundi la kumi  wa   mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika', 'Mkurugenzi Msaidizi Sehemu ya Utenganishaji wa Shughuli za Mashtaka na Upelelezi Bi. Pendo Makondo akiwakaribisha na  kuwaelezea kwa ufupi  washiriki wa kundi la kumi  wa   mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi Jijini Dar es Salaam', 'Mkurugenzi Msaidizi Sehemu ya Utenganishaji wa Shughuli za Mashtaka na Upelelezi Bi. Pendo Makondo akiwakaribisha na  kuwaelezea kwa ufupi  washiriki wa kundi la kumi  wa   mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi Jijini Dar es Salaam', 'image/jpeg', '/uploads/gallery/', '', '1647873326-105A8939.JPG', '', '1647873326-105a8939-jpg', 0, 1, 1, '2022-03-21 11:35:26', '2022-03-21 11:35:26'),
(650, 'Mkurugenzi Msaidizi Sehemu ya Makosa ya Kimtandao Bi. Monica Mbogo akitoa salamu fupi washiriki wa kundi la kumi  wa   mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi  Jijini Dar es Salaam', 'Mkurugenzi Msaidizi Sehemu ya Makosa ya Kimtandao Bi. Monica Mbogo akitoa salamu fupi washiriki wa kundi la kumi  wa   mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi  Jijini Dar es Salaam', 'Mkurugenzi Msaidizi Sehemu ya Makosa ya Kimtandao Bi. Monica Mbogo akitoa salamu fupi washiriki wa kundi la kumi  wa   mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi  Jijini Dar es Salaam', 'Mkurugenzi Msaidizi Sehemu ya Makosa ya Kimtandao Bi. Monica Mbogo akitoa salamu fupi washiriki wa kundi la kumi  wa   mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi  Jijini Dar es Salaam', 'image/jpeg', '/uploads/gallery/', '', '1647873468-105A9044.JPG', '', '1647873468-105a9044-jpg', 0, 1, 1, '2022-03-21 11:37:48', '2022-03-21 11:37:48'),
(652, 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Mkurugenzi Msaidizi Sehemu ya Makosa ya Kimtandao Bi. Monica Mbogo wakati akitoa salamu fupi  katika mafunzo hayo  Jiji', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Mkurugenzi Msaidizi Sehemu ya Makosa ya Kimtandao Bi. Monica Mbogo wakati akitoa salamu fupi  katika mafunzo hayo  Jiji', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Mkurugenzi Msaidizi Sehemu ya Makosa ya Kimtandao Bi. Monica Mbogo wakati akitoa salamu fupi  katika mafunzo hayo  Jijini Dar es salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Mkurugenzi Msaidizi Sehemu ya Makosa ya Kimtandao Bi. Monica Mbogo wakati akitoa salamu fupi  katika mafunzo hayo  Jijini Dar es salaam', 'image/jpeg', '/uploads/gallery/', '', '1647873579-105A8971.JPG', '', '1647873579-105a8971-jpg', 0, 1, 1, '2022-03-21 11:39:39', '2022-03-21 11:39:39'),
(654, 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Mkurugenzi Msaidizi Sehemu ya Makosa ya Kimtandao Bi. Monica Mbogo wakati akitoa salamu fupi  katika mafunzo hayo  Jiji', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Mkurugenzi Msaidizi Sehemu ya Makosa ya Kimtandao Bi. Monica Mbogo wakati akitoa salamu fupi  katika mafunzo hayo  Jiji', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Mkurugenzi Msaidizi Sehemu ya Makosa ya Kimtandao Bi. Monica Mbogo wakati akitoa salamu fupi  katika mafunzo hayo  Jijini Dar es salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Mkurugenzi Msaidizi Sehemu ya Makosa ya Kimtandao Bi. Monica Mbogo wakati akitoa salamu fupi  katika mafunzo hayo  Jijini Dar es salaam', 'image/jpeg', '/uploads/gallery/', '', '1647873626-105A8958.JPG', '', '1647873626-105a8958-jpg', 0, 1, 1, '2022-03-21 11:40:27', '2022-03-21 11:40:27'),
(656, 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Mkurugenzi Msaidizi Sehemu ya Makosa ya Kimtandao Bi. Monica Mbogo wakati akitoa salamu fupi  katika mafunzo hayo  Jiji', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Mkurugenzi Msaidizi Sehemu ya Makosa ya Kimtandao Bi. Monica Mbogo wakati akitoa salamu fupi  katika mafunzo hayo  Jiji', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Mkurugenzi Msaidizi Sehemu ya Makosa ya Kimtandao Bi. Monica Mbogo wakati akitoa salamu fupi  katika mafunzo hayo  Jijini Dar es salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Mkurugenzi Msaidizi Sehemu ya Makosa ya Kimtandao Bi. Monica Mbogo wakati akitoa salamu fupi  katika mafunzo hayo  Jijini Dar es salaam', 'image/jpeg', '/uploads/gallery/', '', '1647873726-105A8989.JPG', '', '1647873726-105a8989-jpg', 0, 1, 1, '2022-03-21 11:42:06', '2022-03-21 11:42:06'),
(658, 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia kwa vitendo mafunzo kutoka kwa Muwezeshaji Afisa TEHAMA Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe (hay', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia kwa vitendo mafunzo kutoka kwa Muwezeshaji Afisa TEHAMA Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe (hay', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia kwa vitendo mafunzo kutoka kwa Muwezeshaji Afisa TEHAMA Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe (hayupo pichani) wakati akifundisha  katika mafunzo hayo  Jijini Dar es salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia kwa vitendo mafunzo kutoka kwa Muwezeshaji Afisa TEHAMA Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe (hayupo pichani) wakati akifundisha  katika mafunzo hayo  Jijini Dar es salaam', 'image/jpeg', '/uploads/gallery/', '', '1647873850-105A9052.JPG', '', '1647873850-105a9052-jpg', 0, 1, 1, '2022-03-21 11:44:10', '2022-03-21 11:44:10'),
(660, 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Mkurugenzi Msaidizi Sehemu ya Makosa ya Kimtandao Bi. Monica Mbogo wakati akitoa salamu fupi  katika mafunzo hayo yanay', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Mkurugenzi Msaidizi Sehemu ya Makosa ya Kimtandao Bi. Monica Mbogo wakati akitoa salamu fupi  katika mafunzo hayo yanay', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Mkurugenzi Msaidizi Sehemu ya Makosa ya Kimtandao Bi. Monica Mbogo wakati akitoa salamu fupi  katika mafunzo hayo yanayofanyika Jijini Dar es salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Mkurugenzi Msaidizi Sehemu ya Makosa ya Kimtandao Bi. Monica Mbogo wakati akitoa salamu fupi  katika mafunzo hayo yanayofanyika Jijini Dar es salaam', 'image/jpeg', '/uploads/gallery/', '', '1647873920-105A9013.JPG', '', '1647873920-105a9013-jpg', 0, 1, 1, '2022-03-21 11:45:20', '2022-03-21 11:45:20'),
(662, 'Mkuu wa Kitengo cha TEHAMA Bw. Frank Shame akiwaelezea kwa ufupi  washiriki ) wa   mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi lengo kuu la mafunzo hayo yanayofanyika Jijini Dar es Salaam.', 'Mkuu wa Kitengo cha TEHAMA Bw. Frank Shame akiwaelezea kwa ufupi  washiriki ) wa   mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi lengo kuu la mafunzo hayo yanayofanyika Jijini Dar es Salaam.', 'Mkuu wa Kitengo cha TEHAMA Bw. Frank Shame akiwaelezea kwa ufupi  washiriki ) wa   mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi lengo kuu la mafunzo hayo yanayofanyika Jijini Dar es Salaam.', 'Mkuu wa Kitengo cha TEHAMA Bw. Frank Shame akiwaelezea kwa ufupi  washiriki ) wa   mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi lengo kuu la mafunzo hayo yanayofanyika Jijini Dar es Salaam.', 'image/jpeg', '/uploads/gallery/', '', '1648052664-105A9373.JPG', '', '1648052664-105a9373-jpg', 0, 1, 1, '2022-03-23 13:24:24', '2022-03-23 13:24:24');
INSERT INTO `media` (`id`, `title_en`, `title_sw`, `content_en`, `content_sw`, `mime`, `path`, `url`, `filename`, `iconurl`, `slug`, `user_id`, `gallery_id`, `status`, `created_at`, `updated_at`) VALUES
(664, 'Mkurugenzi Msaidizi Sehemu ya Utenganishaji wa Shughuli za Mashtaka na Upelelezi  Bi. Pendo Makondo akiwakaribisha washiriki wa kundi la kumi na moja (11) wa mafunzo juu ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya', 'Mkurugenzi Msaidizi Sehemu ya Utenganishaji wa Shughuli za Mashtaka na Upelelezi  Bi. Pendo Makondo akiwakaribisha washiriki wa kundi la kumi na moja (11) wa mafunzo juu ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya', 'Mkurugenzi Msaidizi Sehemu ya Utenganishaji wa Shughuli za Mashtaka na Upelelezi  Bi. Pendo Makondo akiwakaribisha washiriki wa kundi la kumi na moja (11) wa mafunzo juu ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi  yanayofanyika Jijini Dar es Salaam', 'Mkurugenzi Msaidizi Sehemu ya Utenganishaji wa Shughuli za Mashtaka na Upelelezi  Bi. Pendo Makondo akiwakaribisha washiriki wa kundi la kumi na moja (11) wa mafunzo juu ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi  yanayofanyika Jijini Dar es Salaam', 'image/jpeg', '/uploads/gallery/', '', '1648053394-105A9337.JPG', '', '1648053394-105a9337-jpg', 0, 1, 1, '2022-03-23 13:36:34', '2022-03-23 13:36:34'),
(666, 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia kwa vitendo maelekezo juu ya namna ya kuutumia mfumo kutoka kwa Muwezeshaji Afisa TEHAMA Ofisi ya Taifa ya Mashtaka Jiji', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia kwa vitendo maelekezo juu ya namna ya kuutumia mfumo kutoka kwa Muwezeshaji Afisa TEHAMA Ofisi ya Taifa ya Mashtaka Jiji', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia kwa vitendo maelekezo juu ya namna ya kuutumia mfumo kutoka kwa Muwezeshaji Afisa TEHAMA Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe (hayupo pichani) wakati akifundisha  katika mafunzo hayo yanayofanyika Jijini Dar es salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia kwa vitendo maelekezo juu ya namna ya kuutumia mfumo kutoka kwa Muwezeshaji Afisa TEHAMA Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe (hayupo pichani) wakati akifundisha  katika mafunzo hayo yanayofanyika Jijini Dar es salaam', 'image/jpeg', '/uploads/gallery/', '', '1648053648-105A9353.JPG', '', '1648053648-105a9353-jpg', 0, 1, 1, '2022-03-23 13:40:48', '2022-03-23 13:40:48'),
(668, 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia kwa vitendo maelekezo juu ya namna ya kuutumia mfumo kutoka kwa Muwezeshaji Afisa TEHAMA Ofisi ya Taifa ya Mashtaka Jiji', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia kwa vitendo maelekezo juu ya namna ya kuutumia mfumo kutoka kwa Muwezeshaji Afisa TEHAMA Ofisi ya Taifa ya Mashtaka Jiji', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia kwa vitendo maelekezo juu ya namna ya kuutumia mfumo kutoka kwa Muwezeshaji Afisa TEHAMA Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe (hayupo pichani) wakati akifundisha  katika mafunzo hayo yanayofanyika Jijini Dar es salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakifuatilia kwa vitendo maelekezo juu ya namna ya kuutumia mfumo kutoka kwa Muwezeshaji Afisa TEHAMA Ofisi ya Taifa ya Mashtaka Jijini Mwanza Bw. Idrisa Swalehe (hayupo pichani) wakati akifundisha  katika mafunzo hayo yanayofanyika Jijini Dar es salaam', 'image/jpeg', '/uploads/gallery/', '', '1648053738-105A9433.JPG', '', '1648053738-105a9433-jpg', 0, 1, 1, '2022-03-23 13:42:18', '2022-03-23 13:42:18'),
(670, 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Mkurugenzi Msaidizi Sehemu ya Utenganishaji wa Shughuli za Mashtaka na Upelelezi Bi. Pendo Makondo (hayupo pichani) wak', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Mkurugenzi Msaidizi Sehemu ya Utenganishaji wa Shughuli za Mashtaka na Upelelezi Bi. Pendo Makondo (hayupo pichani) wak', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Mkurugenzi Msaidizi Sehemu ya Utenganishaji wa Shughuli za Mashtaka na Upelelezi Bi. Pendo Makondo (hayupo pichani) wakati akiwakaribisha  kwenye  mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo cha Usimamizi wa Fedha (IFM)', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Mkurugenzi Msaidizi Sehemu ya Utenganishaji wa Shughuli za Mashtaka na Upelelezi Bi. Pendo Makondo (hayupo pichani) wakati akiwakaribisha  kwenye  mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1648053852-105A9388.JPG', '', '1648053852-105a9388-jpg', 0, 1, 1, '2022-03-23 13:44:12', '2022-03-23 13:44:12'),
(672, 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Mkurugenzi Msaidizi Sehemu ya Utenganishaji wa Shughuli za Mashtaka na Upelelezi Bi. Pendo Makondo (hayupo pichani) wak', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Mkurugenzi Msaidizi Sehemu ya Utenganishaji wa Shughuli za Mashtaka na Upelelezi Bi. Pendo Makondo (hayupo pichani) wak', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Mkurugenzi Msaidizi Sehemu ya Utenganishaji wa Shughuli za Mashtaka na Upelelezi Bi. Pendo Makondo (hayupo pichani) wakati akiwakaribisha  kwenye  mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo cha Usimamizi wa Fedha (IFM)', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Mkurugenzi Msaidizi Sehemu ya Utenganishaji wa Shughuli za Mashtaka na Upelelezi Bi. Pendo Makondo (hayupo pichani) wakati akiwakaribisha  kwenye  mafunzo hayo  yaliyoanza tarehe 28 Februari, 2022 na kumalizika tarehe 29 Machi, 2022 Jijini Dar es Salaam katika ofisi za TAGLA zilizopo Chuo cha Usimamizi wa Fedha (IFM)', 'image/jpeg', '/uploads/gallery/', '', '1648053985-105A9353.JPG', '', '1648053985-105a9353-jpg', 0, 1, 1, '2022-03-23 13:46:25', '2022-03-23 13:46:25'),
(674, 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo yanayofanyika  Jijini Dar es Salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo yanayofanyika  Jijini Dar es Salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo yanayofanyika  Jijini Dar es Salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo yanayofanyika  Jijini Dar es Salaam', 'image/jpeg', '/uploads/gallery/', '', '1648128267-105A9479.JPG', '', '1648128267-105a9479-jpg', 0, 1, 1, '2022-03-24 10:24:27', '2022-03-24 10:24:27'),
(676, 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo yanayofanyika  Jijini Dar es Salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo yanayofanyika  Jijini Dar es Salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo yanayofanyika  Jijini Dar es Salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo yanayofanyika  Jijini Dar es Salaam', 'image/jpeg', '/uploads/gallery/', '', '1648128368-105A9493.JPG', '', '1648128368-105a9493-jpg', 0, 1, 1, '2022-03-24 10:26:08', '2022-03-24 10:26:08'),
(678, 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo yanayofanyika  Jijini Dar es Salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo yanayofanyika  Jijini Dar es Salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo yanayofanyika  Jijini Dar es Salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo yanayofanyika  Jijini Dar es Salaam', 'image/jpeg', '/uploads/gallery/', '', '1648128507-105A9498.JPG', '', '1648128507-105a9498-jpg', 0, 1, 1, '2022-03-24 10:28:27', '2022-03-24 10:28:27'),
(680, 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo yanayofanyika  Jijini Dar es Salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo yanayofanyika  Jijini Dar es Salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo yanayofanyika  Jijini Dar es Salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo yanayofanyika  Jijini Dar es Salaam', 'image/jpeg', '/uploads/gallery/', '', '1648128574-105A9515.JPG', '', '1648128574-105a9515-jpg', 0, 1, 1, '2022-03-24 10:29:34', '2022-03-24 10:29:34'),
(682, 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo yanayofanyika  Jijini Dar es Salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo yanayofanyika  Jijini Dar es Salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo yanayofanyika  Jijini Dar es Salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo yanayofanyika  Jijini Dar es Salaam', 'image/jpeg', '/uploads/gallery/', '', '1648128638-105A9488.JPG', '', '1648128638-105a9488-jpg', 0, 1, 1, '2022-03-24 10:30:38', '2022-03-24 10:30:38'),
(684, 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo yanayofanyika  Jijini Dar es Salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo yanayofanyika  Jijini Dar es Salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo yanayofanyika  Jijini Dar es Salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo yanayofanyika  Jijini Dar es Salaam', 'image/jpeg', '/uploads/gallery/', '', '1648128700-105A9517.JPG', '', '1648128700-105a9517-jpg', 0, 1, 1, '2022-03-24 10:31:40', '2022-03-24 10:31:40'),
(686, 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo yanayofanyika  Jijini Dar es Salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo yanayofanyika  Jijini Dar es Salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo yanayofanyika  Jijini Dar es Salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo yanayofanyika  Jijini Dar es Salaam', 'image/jpeg', '/uploads/gallery/', '', '1648128774-105A9554.JPG', '', '1648128774-105a9554-jpg', 0, 1, 1, '2022-03-24 10:32:54', '2022-03-24 10:32:54'),
(688, 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo yanayofanyika  Jijini Dar es Salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo yanayofanyika  Jijini Dar es Salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo yanayofanyika  Jijini Dar es Salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo yanayofanyika  Jijini Dar es Salaam', 'image/jpeg', '/uploads/gallery/', '', '1648128846-105A9564.JPG', '', '1648128846-105a9564-jpg', 0, 1, 1, '2022-03-24 10:34:06', '2022-03-24 10:34:06'),
(690, 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo yanayofanyika  Jijini Dar es Salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo yanayofanyika  Jijini Dar es Salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo yanayofanyika  Jijini Dar es Salaam', 'Baadhi ya washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka wakiendelea kujifunza kwa vitendo namna ya kuutumia mfumo katika kuingiza taarifa mbalimbali kwenye mafunzo hayo yanayofanyika  Jijini Dar es Salaam', 'image/jpeg', '/uploads/gallery/', '', '1648128938-105A9581.JPG', '', '1648128938-105a9581-jpg', 0, 1, 1, '2022-03-24 10:35:38', '2022-03-24 10:35:38'),
(692, 'Mkurugenzi Msaidizi Sehemu ya Utenganishaji wa Shughuli za Mashtaka na Upelelezi  Bi. Pendo Makondo akiwakaribisha washiriki wa kundi la kumi na mbili (12) wa mafunzo juu ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala y', 'Mkurugenzi Msaidizi Sehemu ya Utenganishaji wa Shughuli za Mashtaka na Upelelezi  Bi. Pendo Makondo akiwakaribisha washiriki wa kundi la kumi na mbili (12) wa mafunzo juu ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala y', 'Mkurugenzi Msaidizi Sehemu ya Utenganishaji wa Shughuli za Mashtaka na Upelelezi  Bi. Pendo Makondo akiwakaribisha washiriki wa kundi la kumi na mbili (12) wa mafunzo juu ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi ambayo yanafanyika  Jijini Dar es Salaam', 'Mkurugenzi Msaidizi Sehemu ya Utenganishaji wa Shughuli za Mashtaka na Upelelezi  Bi. Pendo Makondo akiwakaribisha washiriki wa kundi la kumi na mbili (12) wa mafunzo juu ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi ambayo yanafanyika  Jijini Dar es Salaam', 'image/jpeg', '/uploads/gallery/', '', '1648300843-105A9657.JPG', '', '1648300843-105a9657-jpg', 0, 1, 1, '2022-03-26 10:20:44', '2022-03-26 10:20:44'),
(694, 'Kaimu Mkurugenzi Idara ya Utenganishaji wa shughuli za Mashtaka na Upelelezi  Bw. Tumaini Kweka akitoa salamu fupi kwa  washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka.', 'Kaimu Mkurugenzi Idara ya Utenganishaji wa shughuli za Mashtaka na Upelelezi  Bw. Tumaini Kweka akitoa salamu fupi kwa  washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka.', 'Kaimu Mkurugenzi Idara ya Utenganishaji wa shughuli za Mashtaka na Upelelezi  Bw. Tumaini Kweka akitoa salamu fupi kwa  washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka.', 'Kaimu Mkurugenzi Idara ya Utenganishaji wa shughuli za Mashtaka na Upelelezi  Bw. Tumaini Kweka akitoa salamu fupi kwa  washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka.', 'image/jpeg', '/uploads/gallery/', '', '1648301167-105A9753.JPG', '', '1648301167-105a9753-jpg', 0, 1, 1, '2022-03-26 10:26:07', '2022-03-26 10:26:07'),
(696, 'Washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Kaimu Mkurugenzi  Idara  ya Utenganishaji wa Shughuli za Mashtaka na Upelelezi Bw. Tumaini Kweka wakati akitoa salamu fupi kwenye', 'Washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Kaimu Mkurugenzi  Idara  ya Utenganishaji wa Shughuli za Mashtaka na Upelelezi Bw. Tumaini Kweka wakati akitoa salamu fupi kwenye', 'Washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Kaimu Mkurugenzi  Idara  ya Utenganishaji wa Shughuli za Mashtaka na Upelelezi Bw. Tumaini Kweka wakati akitoa salamu fupi kwenye  mafunzo hayo Jijini Dar es Salaam', 'Washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Kaimu Mkurugenzi  Idara  ya Utenganishaji wa Shughuli za Mashtaka na Upelelezi Bw. Tumaini Kweka wakati akitoa salamu fupi kwenye  mafunzo hayo Jijini Dar es Salaam', 'image/jpeg', '/uploads/gallery/', '', '1648301468-105A9678.JPG', '', '1648301468-105a9678-jpg', 0, 1, 1, '2022-03-26 10:31:08', '2022-03-26 10:31:08'),
(698, 'Washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Kaimu Mkurugenzi  Idara  ya Utenganishaji wa Shughuli za Mashtaka na Upelelezi Bw. Tumaini Kweka wakati akitoa salamu fupi kwenye', 'Washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Kaimu Mkurugenzi  Idara  ya Utenganishaji wa Shughuli za Mashtaka na Upelelezi Bw. Tumaini Kweka wakati akitoa salamu fupi kwenye', 'Washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Kaimu Mkurugenzi  Idara  ya Utenganishaji wa Shughuli za Mashtaka na Upelelezi Bw. Tumaini Kweka wakati akitoa salamu fupi kwenye  mafunzo hayo Jijini Dar es Salaam', 'Washiriki wa Mafunzo ya Utumiaji wa Mfumo wa Kielektroniki wa Ofisi ya Taifa ya Mashtaka katika masuala ya kesi wakimsikiliza Kaimu Mkurugenzi  Idara  ya Utenganishaji wa Shughuli za Mashtaka na Upelelezi Bw. Tumaini Kweka wakati akitoa salamu fupi kwenye  mafunzo hayo Jijini Dar es Salaam', 'image/jpeg', '/uploads/gallery/', '', '1648301602-105A9683.JPG', '', '1648301602-105a9683-jpg', 0, 1, 1, '2022-03-26 10:33:22', '2022-03-26 10:33:22'),
(700, 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akifungua Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka kilichofanyika tarehe 12 hadi 13 Mei, 2022  Jijini Dodoma', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akifungua Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka kilichofanyika tarehe 12 hadi 13 Mei, 2022  Jijini Dodoma', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akifungua Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka kilichofanyika tarehe 12 hadi 13 Mei, 2022  Jijini Dodoma', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akifungua Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka kilichofanyika tarehe 12 hadi 13 Mei, 2022  Jijini Dodoma', 'image/jpeg', '/uploads/gallery/', '', '1652862362-105A1035.JPG', '', '1652862362-105a1035-jpg', 0, 1, 1, '2022-05-18 05:26:02', '2022-05-18 05:26:02'),
(702, 'Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande akitoa neno la kumkaribisha Mkurugenzi wa Mashtaka  kufungua Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka kilichofanyika tarehe 12 hadi 13 Mei, 2022  Jijini Dodoma', 'Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande akitoa neno la kumkaribisha Mkurugenzi wa Mashtaka  kufungua Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka kilichofanyika tarehe 12 hadi 13 Mei, 2022  Jijini Dodoma', 'Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande akitoa neno la kumkaribisha Mkurugenzi wa Mashtaka  kufungua Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka kilichofanyika tarehe 12 hadi 13 Mei, 2022  Jijini Dodoma', 'Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande akitoa neno la kumkaribisha Mkurugenzi wa Mashtaka  kufungua Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka kilichofanyika tarehe 12 hadi 13 Mei, 2022  Jijini Dodoma', 'image/jpeg', '/uploads/gallery/', '', '1652862532-105A0915.JPG', '', '1652862532-105a0915-jpg', 0, 1, 1, '2022-05-18 05:28:52', '2022-05-18 05:28:52'),
(704, 'Mkuu wa Mashtaka Mkoa wa Mara Bw. Valence Mayenga akiwasilisha mada  kwenye Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka kilichofanyika tarehe 12 hadi 13 Mei, 2022  Jijini Dodoma', 'Mkuu wa Mashtaka Mkoa wa Mara Bw. Valence Mayenga akiwasilisha mada  kwenye Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka kilichofanyika tarehe 12 hadi 13 Mei, 2022  Jijini Dodoma', 'Mkuu wa Mashtaka Mkoa wa Mara Bw. Valence Mayenga akiwasilisha mada  kwenye Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka kilichofanyika tarehe 12 hadi 13 Mei, 2022  Jijini Dodoma', 'Mkuu wa Mashtaka Mkoa wa Mara Bw. Valence Mayenga akiwasilisha mada  kwenye Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka kilichofanyika tarehe 12 hadi 13 Mei, 2022  Jijini Dodoma', 'image/jpeg', '/uploads/gallery/', '', '1652862774-105A1067.JPG', '', '1652862774-105a1067-jpg', 0, 1, 1, '2022-05-18 05:32:55', '2022-05-18 05:32:55'),
(706, 'Kaimu Mkurugenzi  Idara ya Usimamizi wa Kesi na Uratibu wa Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Makao Makuu Jijini Dodoma Bi. Neema Mwanda akiwasilisha mada  kwenye Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka', 'Kaimu Mkurugenzi  Idara ya Usimamizi wa Kesi na Uratibu wa Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Makao Makuu Jijini Dodoma Bi. Neema Mwanda akiwasilisha mada  kwenye Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka', 'Kaimu Mkurugenzi  Idara ya Usimamizi wa Kesi na Uratibu wa Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Makao Makuu Jijini Dodoma Bi. Neema Mwanda akiwasilisha mada  kwenye Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka kilichofanyika  Jijini Dodoma', 'Kaimu Mkurugenzi  Idara ya Usimamizi wa Kesi na Uratibu wa Upelelezi kutoka Ofisi ya Taifa ya Mashtaka Makao Makuu Jijini Dodoma Bi. Neema Mwanda akiwasilisha mada  kwenye Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka kilichofanyika  Jijini Dodoma', 'image/jpeg', '/uploads/gallery/', '', '1652862964-105A1077.JPG', '', '1652862964-105a1077-jpg', 0, 1, 1, '2022-05-18 05:36:04', '2022-05-18 05:36:04'),
(708, 'Wakili wa Serikali Mkuu kutoka Ofisi ya Taifa ya Mashtaka Makao Makuu Jijini Dodoma Bi. Margareth Ndaweka akiwasilisha mada  kwenye Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka kilichofanyika Jijini Dodoma.', 'Wakili wa Serikali Mkuu kutoka Ofisi ya Taifa ya Mashtaka Makao Makuu Jijini Dodoma Bi. Margareth Ndaweka akiwasilisha mada  kwenye Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka kilichofanyika Jijini Dodoma.', 'Wakili wa Serikali Mkuu kutoka Ofisi ya Taifa ya Mashtaka Makao Makuu Jijini Dodoma Bi. Margareth Ndaweka akiwasilisha mada  kwenye Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka kilichofanyika Jijini Dodoma.', 'Wakili wa Serikali Mkuu kutoka Ofisi ya Taifa ya Mashtaka Makao Makuu Jijini Dodoma Bi. Margareth Ndaweka akiwasilisha mada  kwenye Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka kilichofanyika Jijini Dodoma.', 'image/jpeg', '/uploads/gallery/', '', '1652863221-105A1119.JPG', '', '1652863221-105a1119-jpg', 0, 1, 1, '2022-05-18 05:40:21', '2022-05-18 05:40:21'),
(710, 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (katikati), Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande (wa tatu kushoto), wakiwa na washiriki wa  Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mash', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (katikati), Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande (wa tatu kushoto), wakiwa na washiriki wa  Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mash', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (katikati), Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande (wa tatu kushoto), wakiwa na washiriki wa  Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka kilichofanyika  Jijini Dodoma', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu (katikati), Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande (wa tatu kushoto), wakiwa na washiriki wa  Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka kilichofanyika  Jijini Dodoma', 'image/jpeg', '/uploads/gallery/', '', '1652863477-105A1305.JPG', '', '1652863477-105a1305-jpg', 0, 1, 1, '2022-05-18 05:44:37', '2022-05-18 05:44:37'),
(712, 'Washiriki wa Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka wakimsikiliza  Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akifungua kikao kazi hicho  kilichofanyika  Jijini Dodoma', 'Washiriki wa Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka wakimsikiliza  Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akifungua kikao kazi hicho  kilichofanyika  Jijini Dodoma', 'Washiriki wa Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka wakimsikiliza  Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akifungua kikao kazi hicho  kilichofanyika  Jijini Dodoma', 'Washiriki wa Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka wakimsikiliza  Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akifungua kikao kazi hicho  kilichofanyika  Jijini Dodoma', 'image/jpeg', '/uploads/gallery/', '', '1652863731-105A0776.JPG', '', '1652863731-105a0776-jpg', 0, 1, 1, '2022-05-18 05:48:51', '2022-05-18 05:48:51'),
(714, 'Washiriki wa Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka wakimsikiliza  Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akifungua kikao kazi hicho  kilichofanyika  Jijini Dodoma', 'Washiriki wa Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka wakimsikiliza  Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akifungua kikao kazi hicho  kilichofanyika  Jijini Dodoma', 'Washiriki wa Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka wakimsikiliza  Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akifungua kikao kazi hicho  kilichofanyika  Jijini Dodoma', 'Washiriki wa Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka wakimsikiliza  Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akifungua kikao kazi hicho  kilichofanyika  Jijini Dodoma', 'image/jpeg', '/uploads/gallery/', '', '1652864712-105A0935.JPG', '', '1652864712-105a0935-jpg', 0, 1, 1, '2022-05-18 06:05:12', '2022-05-18 06:05:12'),
(716, 'Washiriki wa Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka wakimsikiliza  Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akifungua kikao kazi hicho  kilichofanyika  Jijini Dodoma', 'Washiriki wa Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka wakimsikiliza  Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akifungua kikao kazi hicho  kilichofanyika  Jijini Dodoma', 'Washiriki wa Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka wakimsikiliza  Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akifungua kikao kazi hicho  kilichofanyika  Jijini Dodoma', 'Washiriki wa Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka wakimsikiliza  Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akifungua kikao kazi hicho  kilichofanyika  Jijini Dodoma', 'image/jpeg', '/uploads/gallery/', '', '1652864782-105A0974.JPG', '', '1652864782-105a0974-jpg', 0, 1, 1, '2022-05-18 06:06:23', '2022-05-18 06:06:23'),
(718, 'Washiriki wa Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka wakimsikiliza  Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akifungua kikao kazi hicho  kilichofanyika  Jijini Dodoma', 'Washiriki wa Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka wakimsikiliza  Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akifungua kikao kazi hicho  kilichofanyika  Jijini Dodoma', 'Washiriki wa Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka wakimsikiliza  Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akifungua kikao kazi hicho  kilichofanyika  Jijini Dodoma', 'Washiriki wa Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka wakimsikiliza  Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akifungua kikao kazi hicho  kilichofanyika  Jijini Dodoma', 'image/jpeg', '/uploads/gallery/', '', '1652864878-105A0990.JPG', '', '1652864878-105a0990-jpg', 0, 1, 1, '2022-05-18 06:07:58', '2022-05-18 06:07:58'),
(720, 'Washiriki wa Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka wakimsikiliza  Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akifungua kikao kazi hicho  kilichofanyika  Jijini Dodoma', 'Washiriki wa Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka wakimsikiliza  Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akifungua kikao kazi hicho  kilichofanyika  Jijini Dodoma', 'Washiriki wa Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka wakimsikiliza  Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akifungua kikao kazi hicho  kilichofanyika  Jijini Dodoma', 'Washiriki wa Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka wakimsikiliza  Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakati akifungua kikao kazi hicho  kilichofanyika  Jijini Dodoma', 'image/jpeg', '/uploads/gallery/', '', '1652864932-105A1028.JPG', '', '1652864932-105a1028-jpg', 0, 1, 1, '2022-05-18 06:08:52', '2022-05-18 06:08:52'),
(722, 'Kaimu Mkurugenzi  Msaidizi Sehemu ya Uratibu wa Upelelezi  Bw. Peter Mauggo  akiwasilisha mada kwenye Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka kilichofanyika Jijini Dodoma', 'Kaimu Mkurugenzi  Msaidizi Sehemu ya Uratibu wa Upelelezi  Bw. Peter Mauggo  akiwasilisha mada kwenye Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka kilichofanyika Jijini Dodoma', 'Kaimu Mkurugenzi  Msaidizi Sehemu ya Uratibu wa Upelelezi  Bw. Peter Mauggo  akiwasilisha mada kwenye Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka kilichofanyika Jijini Dodoma', 'Kaimu Mkurugenzi  Msaidizi Sehemu ya Uratibu wa Upelelezi  Bw. Peter Mauggo  akiwasilisha mada kwenye Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka kilichofanyika Jijini Dodoma', 'image/jpeg', '/uploads/gallery/', '', '1652865124-105A1045.JPG', '', '1652865124-105a1045-jpg', 0, 1, 1, '2022-05-18 06:12:04', '2022-05-18 06:12:04'),
(724, 'Mkurugenzi Divisheni ya Makosa ya Udanganyifu, Utakatishaji Fedha na Rushwa Bw. Oswald Tibabyekomya akiwasilisha mada  kwenye Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka kilichofanyika  Jijini Dodoma', 'Mkurugenzi Divisheni ya Makosa ya Udanganyifu, Utakatishaji Fedha na Rushwa Bw. Oswald Tibabyekomya akiwasilisha mada  kwenye Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka kilichofanyika  Jijini Dodoma', 'Mkurugenzi Divisheni ya Makosa ya Udanganyifu, Utakatishaji Fedha na Rushwa Bw. Oswald Tibabyekomya akiwasilisha mada  kwenye Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka kilichofanyika  Jijini Dodoma', 'Mkurugenzi Divisheni ya Makosa ya Udanganyifu, Utakatishaji Fedha na Rushwa Bw. Oswald Tibabyekomya akiwasilisha mada  kwenye Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka kilichofanyika  Jijini Dodoma', 'image/jpeg', '/uploads/gallery/', '', '1652865336-105A1148.JPG', '', '1652865336-105a1148-jpg', 0, 1, 1, '2022-05-18 06:15:36', '2022-05-18 06:15:36'),
(726, 'Afisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka Bw. John Mwakigali akiwasilisha mada  kwenye  Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka kilichofanyika Jijini Dodoma', 'Afisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka Bw. John Mwakigali akiwasilisha mada  kwenye  Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka kilichofanyika Jijini Dodoma', 'Afisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka Bw. John Mwakigali akiwasilisha mada  kwenye  Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka kilichofanyika Jijini Dodoma', 'Afisa TEHAMA kutoka Ofisi ya Taifa ya Mashtaka Bw. John Mwakigali akiwasilisha mada  kwenye  Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka kilichofanyika Jijini Dodoma', 'image/jpeg', '/uploads/gallery/', '', '1652865597-105A1351.JPG', '', '1652865597-105a1351-jpg', 0, 1, 1, '2022-05-18 06:19:57', '2022-05-18 06:19:57'),
(728, 'Washiriki wa Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka wakifuatilia mada inayowasilishwa na Afisa TEHAMA Bw. John Mwakigali kwenye kikao kazi hicho  kilichofanyika Jijini Dodoma', 'Washiriki wa Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka wakifuatilia mada inayowasilishwa na Afisa TEHAMA Bw. John Mwakigali kwenye kikao kazi hicho  kilichofanyika Jijini Dodoma', 'Washiriki wa Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka wakifuatilia mada inayowasilishwa na Afisa TEHAMA Bw. John Mwakigali kwenye kikao kazi hicho  kilichofanyika Jijini Dodoma', 'Washiriki wa Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka wakifuatilia mada inayowasilishwa na Afisa TEHAMA Bw. John Mwakigali kwenye kikao kazi hicho  kilichofanyika Jijini Dodoma', 'image/jpeg', '/uploads/gallery/', '', '1652865774-105A1358.JPG', '', '1652865774-105a1358-jpg', 0, 1, 1, '2022-05-18 06:22:54', '2022-05-18 06:22:54'),
(730, 'Washiriki wa Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka wakifuatilia mada inayowasilishwa na Afisa TEHAMA Bw. John Mwakigali kwenye kikao kazi hicho  kilichofanyika Jijini Dodoma', 'Washiriki wa Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka wakifuatilia mada inayowasilishwa na Afisa TEHAMA Bw. John Mwakigali kwenye kikao kazi hicho  kilichofanyika Jijini Dodoma', 'Washiriki wa Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka wakifuatilia mada inayowasilishwa na Afisa TEHAMA Bw. John Mwakigali kwenye kikao kazi hicho  kilichofanyika Jijini Dodoma', 'Washiriki wa Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka wakifuatilia mada inayowasilishwa na Afisa TEHAMA Bw. John Mwakigali kwenye kikao kazi hicho  kilichofanyika Jijini Dodoma', 'image/jpeg', '/uploads/gallery/', '', '1652865877-105A1401.JPG', '', '1652865877-105a1401-jpg', 0, 1, 1, '2022-05-18 06:24:37', '2022-05-18 06:24:37'),
(732, 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akishiriki zoezi la kukabidhi vyeti na kutoa pongezi kwa Wafanyakazi Hodari waliochaguliwa kutoka katika kila Idara na Vitengo mbalimbali  Ofisi ya Taifa ya Mashtaka  Jijini Dodoma.', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akishiriki zoezi la kukabidhi vyeti na kutoa pongezi kwa Wafanyakazi Hodari waliochaguliwa kutoka katika kila Idara na Vitengo mbalimbali  Ofisi ya Taifa ya Mashtaka  Jijini Dodoma.', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akishiriki zoezi la kukabidhi vyeti na kutoa pongezi kwa Wafanyakazi Hodari waliochaguliwa kutoka katika kila Idara na Vitengo mbalimbali  Ofisi ya Taifa ya Mashtaka  Jijini Dodoma.', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akishiriki zoezi la kukabidhi vyeti na kutoa pongezi kwa Wafanyakazi Hodari waliochaguliwa kutoka katika kila Idara na Vitengo mbalimbali  Ofisi ya Taifa ya Mashtaka  Jijini Dodoma.', 'image/jpeg', '/uploads/gallery/', '', '1652866121-105A1466.JPG', '', '1652866121-105a1466-jpg', 0, 1, 1, '2022-05-18 06:28:41', '2022-05-18 06:28:41'),
(734, 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akishiriki zoezi la kukabidhi vyeti na kutoa pongezi kwa Wafanyakazi Hodari waliochaguliwa kutoka katika kila Idara na Vitengo mbalimbali  Ofisi ya Taifa ya Mashtaka  Jijini Dodoma.', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akishiriki zoezi la kukabidhi vyeti na kutoa pongezi kwa Wafanyakazi Hodari waliochaguliwa kutoka katika kila Idara na Vitengo mbalimbali  Ofisi ya Taifa ya Mashtaka  Jijini Dodoma.', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akishiriki zoezi la kukabidhi vyeti na kutoa pongezi kwa Wafanyakazi Hodari waliochaguliwa kutoka katika kila Idara na Vitengo mbalimbali  Ofisi ya Taifa ya Mashtaka  Jijini Dodoma.', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akishiriki zoezi la kukabidhi vyeti na kutoa pongezi kwa Wafanyakazi Hodari waliochaguliwa kutoka katika kila Idara na Vitengo mbalimbali  Ofisi ya Taifa ya Mashtaka  Jijini Dodoma.', 'image/jpeg', '/uploads/gallery/', '', '1652866203-105A1474.JPG', '', '1652866203-105a1474-jpg', 0, 1, 1, '2022-05-18 06:30:03', '2022-05-18 06:30:03'),
(736, 'Mkurugenzi wa Utawala na Rasilimali watu Bw. Titus Mkapa  akiwasilisha mada  kwenye Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka kilichofanyika  Jijini Dodoma', 'Mkurugenzi wa Utawala na Rasilimali watu Bw. Titus Mkapa  akiwasilisha mada  kwenye Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka kilichofanyika  Jijini Dodoma', 'Mkurugenzi wa Utawala na Rasilimali watu Bw. Titus Mkapa  akiwasilisha mada  kwenye Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka kilichofanyika  Jijini Dodoma', 'Mkurugenzi wa Utawala na Rasilimali watu Bw. Titus Mkapa  akiwasilisha mada  kwenye Kikao kazi cha Wakuu wa Mashtaka Mikoa na Menejimenti ya Ofisi ya Taifa ya Mashtaka kilichofanyika  Jijini Dodoma', 'image/jpeg', '/uploads/gallery/', '', '1652956356-105A1440.JPG', '', '1652956356-105a1440-jpg', 0, 1, 1, '2022-05-19 07:32:36', '2022-05-19 07:32:36'),
(738, 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akishiriki zoezi la kukabidhi vyeti na kutoa pongezi kwa Wafanyakazi Hodari waliochaguliwa kutoka  Ofisi ya Taifa ya Mashtaka Jijini Dodoma.', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akishiriki zoezi la kukabidhi vyeti na kutoa pongezi kwa Wafanyakazi Hodari waliochaguliwa kutoka  Ofisi ya Taifa ya Mashtaka Jijini Dodoma.', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akishiriki zoezi la kukabidhi vyeti na kutoa pongezi kwa Wafanyakazi Hodari waliochaguliwa kutoka  Ofisi ya Taifa ya Mashtaka Jijini Dodoma.', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akishiriki zoezi la kukabidhi vyeti na kutoa pongezi kwa Wafanyakazi Hodari waliochaguliwa kutoka  Ofisi ya Taifa ya Mashtaka Jijini Dodoma.', 'image/jpeg', '/uploads/gallery/', '', '1652957284-105A1457.JPG', '', '1652957284-105a1457-jpg', 0, 1, 1, '2022-05-19 07:48:04', '2022-05-19 07:48:04'),
(740, 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akishiriki zoezi la kukabidhi vyeti na kutoa pongezi kwa Wafanyakazi Hodari waliochaguliwa kutoka  Ofisi ya Taifa ya Mashtaka Jijini Dodoma.', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akishiriki zoezi la kukabidhi vyeti na kutoa pongezi kwa Wafanyakazi Hodari waliochaguliwa kutoka  Ofisi ya Taifa ya Mashtaka Jijini Dodoma.', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akishiriki zoezi la kukabidhi vyeti na kutoa pongezi kwa Wafanyakazi Hodari waliochaguliwa kutoka  Ofisi ya Taifa ya Mashtaka Jijini Dodoma.', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akishiriki zoezi la kukabidhi vyeti na kutoa pongezi kwa Wafanyakazi Hodari waliochaguliwa kutoka  Ofisi ya Taifa ya Mashtaka Jijini Dodoma.', 'image/jpeg', '/uploads/gallery/', '', '1652957411-105A1477.JPG', '', '1652957411-105a1477-jpg', 0, 1, 1, '2022-05-19 07:50:11', '2022-05-19 07:50:11'),
(748, 'Rais wa Umoja wa Waendesha Mashtaka kanda ya Afrika Mashariki  ambae pia ni Mkurugenzi wa Mashtaka  Tanzania Bw. Sylvester Mwakitalu akihutubia Mkutano wa Nne wa Kimataifa wa Waendesha Mashtaka wa Afrika na Ukanda wa Bahari ya Hindi unaofanyika Mombasa, n', 'Rais wa Umoja wa Waendesha Mashtaka kanda ya Afrika Mashariki  ambae pia ni Mkurugenzi wa Mashtaka  Tanzania Bw. Sylvester Mwakitalu akihutubia Mkutano wa Nne wa Kimataifa wa Waendesha Mashtaka wa Afrika na Ukanda wa Bahari ya Hindi unaofanyika Mombasa, n', 'Rais wa Umoja wa Waendesha Mashtaka kanda ya Afrika Mashariki  ambae pia ni Mkurugenzi wa Mashtaka  Tanzania Bw. Sylvester Mwakitalu akihutubia Mkutano wa Nne wa Kimataifa wa Waendesha Mashtaka wa Afrika na Ukanda wa Bahari ya Hindi unaofanyika Mombasa, nchini Kenya', 'Rais wa Umoja wa Waendesha Mashtaka kanda ya Afrika Mashariki  ambae pia ni Mkurugenzi wa Mashtaka  Tanzania Bw. Sylvester Mwakitalu akihutubia Mkutano wa Nne wa Kimataifa wa Waendesha Mashtaka wa Afrika na Ukanda wa Bahari ya Hindi unaofanyika Mombasa, nchini Kenya', 'image/jpeg', '/uploads/gallery/', '', '1652960868-IMG-20220517-WA0030.jpg', '', '1652960868-img-20220517-wa0030-jpg', 0, 1, 1, '2022-05-19 08:47:48', '2022-05-19 08:47:48'),
(750, 'Mkurugenzi wa Upelelezi na Makosa ya Jinai Nchini Bw. Camillus M. Wambura akifungua  Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu  yanayofanyika mjini Moshi', 'Mkurugenzi wa Upelelezi na Makosa ya Jinai Nchini Bw. Camillus M. Wambura akifungua  Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu  yanayofanyika mjini Moshi', 'Mkurugenzi wa Upelelezi na Makosa ya Jinai Nchini Bw. Camillus M. Wambura akifungua  Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu  yanayofanyika mjini Moshi', 'Mkurugenzi wa Upelelezi na Makosa ya Jinai Nchini Bw. Camillus M. Wambura akifungua  Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu  yanayofanyika mjini Moshi', 'image/jpeg', '/uploads/gallery/', '', '1653974499-105A1811.JPG', '', '1653974499-105a1811-jpg', 0, 1, 1, '2022-05-31 02:21:39', '2022-05-31 02:21:39'),
(752, 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akitoa neno la kumkaribisha mgeni rasmi  kufungua Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu yanayofanyika mjini Moshi', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akitoa neno la kumkaribisha mgeni rasmi  kufungua Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu yanayofanyika mjini Moshi', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akitoa neno la kumkaribisha mgeni rasmi  kufungua Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu yanayofanyika mjini Moshi', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akitoa neno la kumkaribisha mgeni rasmi  kufungua Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu yanayofanyika mjini Moshi', 'image/jpeg', '/uploads/gallery/', '', '1653974697-105A1803.JPG', '', '1653974697-105a1803-jpg', 0, 1, 1, '2022-05-31 02:24:57', '2022-05-31 02:24:57'),
(754, 'Mkurugenzi wa Oparesheni na Mafunzo kutoka PAMS Foundation Bw. Samson Kassala akielezea lengo kuu la kudhamini  Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu  ambayo yamedhaminiwa na shirika hilo yanayofanyika mjini Moshi', 'Mkurugenzi wa Oparesheni na Mafunzo kutoka PAMS Foundation Bw. Samson Kassala akielezea lengo kuu la kudhamini  Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu  ambayo yamedhaminiwa na shirika hilo yanayofanyika mjini Moshi', 'Mkurugenzi wa Oparesheni na Mafunzo kutoka PAMS Foundation Bw. Samson Kassala akielezea lengo kuu la kudhamini  Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu  ambayo yamedhaminiwa na shirika hilo yanayofanyika mjini Moshi', 'Mkurugenzi wa Oparesheni na Mafunzo kutoka PAMS Foundation Bw. Samson Kassala akielezea lengo kuu la kudhamini  Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu  ambayo yamedhaminiwa na shirika hilo yanayofanyika mjini Moshi', 'image/jpeg', '/uploads/gallery/', '', '1653974903-105A1758.JPG', '', '1653974903-105a1758-jpg', 0, 1, 1, '2022-05-31 02:28:23', '2022-05-31 02:28:23');
INSERT INTO `media` (`id`, `title_en`, `title_sw`, `content_en`, `content_sw`, `mime`, `path`, `url`, `filename`, `iconurl`, `slug`, `user_id`, `gallery_id`, `status`, `created_at`, `updated_at`) VALUES
(756, 'Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande akitoa neno la kumkaribisha Mkurugenzi wa Mashtaka  kwa lengo la kutoa ukaribisho kwa mgeni rasmi kufungua Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu  yanayofanyika mjini Moshi', 'Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande akitoa neno la kumkaribisha Mkurugenzi wa Mashtaka  kwa lengo la kutoa ukaribisho kwa mgeni rasmi kufungua Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu  yanayofanyika mjini Moshi', 'Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande akitoa neno la kumkaribisha Mkurugenzi wa Mashtaka  kwa lengo la kutoa ukaribisho kwa mgeni rasmi kufungua Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu  yanayofanyika mjini Moshi', 'Naibu Mkurugenzi wa Mashtaka Bw. Joseph Pande akitoa neno la kumkaribisha Mkurugenzi wa Mashtaka  kwa lengo la kutoa ukaribisho kwa mgeni rasmi kufungua Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu  yanayofanyika mjini Moshi', 'image/jpeg', '/uploads/gallery/', '', '1653975236-105A1771.JPG', '', '1653975236-105a1771-jpg', 0, 1, 1, '2022-05-31 02:33:56', '2022-05-31 02:33:56'),
(758, 'Mkurugenzi wa Divisheni ya Utaifishaji Mali na Makosa yanayovuka Mipaka  Bw. Paul Kadushi akitoa maelezo kwa ufupi juu ya lengo la Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu  yanayofanyika mjini Moshi', 'Mkurugenzi wa Divisheni ya Utaifishaji Mali na Makosa yanayovuka Mipaka  Bw. Paul Kadushi akitoa maelezo kwa ufupi juu ya lengo la Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu  yanayofanyika mjini Moshi', 'Mkurugenzi wa Divisheni ya Utaifishaji Mali na Makosa yanayovuka Mipaka  Bw. Paul Kadushi akitoa maelezo kwa ufupi juu ya lengo la Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu  yanayofanyika mjini Moshi', 'Mkurugenzi wa Divisheni ya Utaifishaji Mali na Makosa yanayovuka Mipaka  Bw. Paul Kadushi akitoa maelezo kwa ufupi juu ya lengo la Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu  yanayofanyika mjini Moshi', 'image/jpeg', '/uploads/gallery/', '', '1653977756-105A2061.JPG', '', '1653977756-105a2061-jpg', 0, 1, 1, '2022-05-31 03:15:56', '2022-05-31 03:15:56'),
(760, 'Mkurugenzi wa Intelijensia na Uchambuzi kutoka Shirika la PAMS Foundation Bw. Elisifa Ngowi  akiwasilisha mada  wakati wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu kwa Wakuu wa Upelelezi na Waendesha Mashtaka nchini', 'Mkurugenzi wa Intelijensia na Uchambuzi kutoka Shirika la PAMS Foundation Bw. Elisifa Ngowi  akiwasilisha mada  wakati wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu kwa Wakuu wa Upelelezi na Waendesha Mashtaka nchini', 'Mkurugenzi wa Intelijensia na Uchambuzi kutoka Shirika la PAMS Foundation Bw. Elisifa Ngowi  akiwasilisha mada  wakati wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu kwa Wakuu wa Upelelezi na Waendesha Mashtaka nchini', 'Mkurugenzi wa Intelijensia na Uchambuzi kutoka Shirika la PAMS Foundation Bw. Elisifa Ngowi  akiwasilisha mada  wakati wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu kwa Wakuu wa Upelelezi na Waendesha Mashtaka nchini', 'image/jpeg', '/uploads/gallery/', '', '1653977998-105A1895.JPG', '', '1653977998-105a1895-jpg', 0, 1, 1, '2022-05-31 03:19:58', '2022-05-31 03:19:58'),
(764, 'Picha ya pamoja ikijumuisha Mkurugenzi wa Upelelezi wa Makosa ya Jinai Nchini Bw. Camillus Wambura (katikati), Mkurugenzi wa Mashtaka Nchini Bw. Sylvester Mwakitalu (watatu kushoto) wakiwa na washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wany', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Upelelezi wa Makosa ya Jinai Nchini Bw. Camillus Wambura (katikati), Mkurugenzi wa Mashtaka Nchini Bw. Sylvester Mwakitalu (watatu kushoto) wakiwa na washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wany', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Upelelezi wa Makosa ya Jinai Nchini Bw. Camillus Wambura (katikati), Mkurugenzi wa Mashtaka Nchini Bw. Sylvester Mwakitalu (watatu kushoto) wakiwa na washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Upelelezi wa Makosa ya Jinai Nchini Bw. Camillus Wambura (katikati), Mkurugenzi wa Mashtaka Nchini Bw. Sylvester Mwakitalu (watatu kushoto) wakiwa na washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini', 'image/jpeg', '/uploads/gallery/', '', '1653978443-105A1833.JPG', '', '1653978443-105a1833-jpg', 0, 1, 1, '2022-05-31 03:27:23', '2022-05-31 03:27:23'),
(766, 'Picha ya pamoja ikijumuisha Mkurugenzi wa Upelelezi wa Makosa ya Jinai Nchini Bw. Camillus Wambura (katikati), Mkurugenzi wa Mashtaka Nchini Bw. Sylvester Mwakitalu (watatu kushoto) wakiwa na washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wany', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Upelelezi wa Makosa ya Jinai Nchini Bw. Camillus Wambura (katikati), Mkurugenzi wa Mashtaka Nchini Bw. Sylvester Mwakitalu (watatu kushoto) wakiwa na washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wany', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Upelelezi wa Makosa ya Jinai Nchini Bw. Camillus Wambura (katikati), Mkurugenzi wa Mashtaka Nchini Bw. Sylvester Mwakitalu (watatu kushoto) wakiwa na washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Upelelezi wa Makosa ya Jinai Nchini Bw. Camillus Wambura (katikati), Mkurugenzi wa Mashtaka Nchini Bw. Sylvester Mwakitalu (watatu kushoto) wakiwa na washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini', 'image/jpeg', '/uploads/gallery/', '', '1653978514-105A1836.JPG', '', '1653978514-105a1836-jpg', 0, 1, 1, '2022-05-31 03:28:34', '2022-05-31 03:28:34'),
(768, 'Washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini wakifuatilia hotuba ya mgeni rasmi  wakati akifungua Mafunzo hayo', 'Washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini wakifuatilia hotuba ya mgeni rasmi  wakati akifungua Mafunzo hayo', 'Washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini wakifuatilia hotuba ya mgeni rasmi  wakati akifungua Mafunzo hayo', 'Washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini wakifuatilia hotuba ya mgeni rasmi  wakati akifungua Mafunzo hayo', 'image/jpeg', '/uploads/gallery/', '', '1653978766-105A1724.JPG', '', '1653978766-105a1724-jpg', 0, 1, 1, '2022-05-31 03:32:46', '2022-05-31 03:32:46'),
(770, 'Washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini wakifuatilia hotuba ya mgeni rasmi  wakati akifungua Mafunzo hayo', 'Washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini wakifuatilia hotuba ya mgeni rasmi  wakati akifungua Mafunzo hayo', 'Washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini wakifuatilia hotuba ya mgeni rasmi  wakati akifungua Mafunzo hayo', 'Washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini wakifuatilia hotuba ya mgeni rasmi  wakati akifungua Mafunzo hayo', 'image/jpeg', '/uploads/gallery/', '', '1653978824-105A1741.JPG', '', '1653978824-105a1741-jpg', 0, 1, 1, '2022-05-31 03:33:44', '2022-05-31 03:33:44'),
(772, 'Washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini wakifuatilia hotuba ya mgeni rasmi  wakati akifungua Mafunzo hayo', 'Washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini wakifuatilia hotuba ya mgeni rasmi  wakati akifungua Mafunzo hayo', 'Washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini wakifuatilia hotuba ya mgeni rasmi  wakati akifungua Mafunzo hayo', 'Washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini wakifuatilia hotuba ya mgeni rasmi  wakati akifungua Mafunzo hayo', 'image/jpeg', '/uploads/gallery/', '', '1653978938-105A1743.JPG', '', '1653978938-105a1743-jpg', 0, 1, 1, '2022-05-31 03:35:38', '2022-05-31 03:35:38'),
(774, 'Mkurugenzi wa Mashtaka nchini Bw. Sylvester Mwakitalu akitoa neno la ukaribisho kwa Waheshimiwa Majaji waliofika kushiriki kwenye  Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu.', 'Mkurugenzi wa Mashtaka nchini Bw. Sylvester Mwakitalu akitoa neno la ukaribisho kwa Waheshimiwa Majaji waliofika kushiriki kwenye  Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu.', 'Mkurugenzi wa Mashtaka nchini Bw. Sylvester Mwakitalu akitoa neno la ukaribisho kwa Waheshimiwa Majaji waliofika kushiriki kwenye  Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu.', 'Mkurugenzi wa Mashtaka nchini Bw. Sylvester Mwakitalu akitoa neno la ukaribisho kwa Waheshimiwa Majaji waliofika kushiriki kwenye  Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu.', 'image/jpeg', '/uploads/gallery/', '', '1653992687-105A2794.JPG', '', '1653992687-105a2794-jpg', 0, 1, 1, '2022-05-31 07:24:47', '2022-05-31 07:24:47'),
(776, 'Jaji wa Mahakama Kuu ya Tanzania Mhe. John Kahyoza akiwasilisha  wakati wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu kwa Wakuu wa Upelelezi na Waendesha Mashtaka nchini', 'Jaji wa Mahakama Kuu ya Tanzania Mhe. John Kahyoza akiwasilisha  wakati wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu kwa Wakuu wa Upelelezi na Waendesha Mashtaka nchini', 'Jaji wa Mahakama Kuu ya Tanzania Mhe. John Kahyoza akiwasilisha  wakati wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu kwa Wakuu wa Upelelezi na Waendesha Mashtaka nchini', 'Jaji wa Mahakama Kuu ya Tanzania Mhe. John Kahyoza akiwasilisha  wakati wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu kwa Wakuu wa Upelelezi na Waendesha Mashtaka nchini', 'image/jpeg', '/uploads/gallery/', '', '1653993222-105A2826.JPG', '', '1653993222-105a2826-jpg', 0, 1, 1, '2022-05-31 07:33:42', '2022-05-31 07:33:42'),
(778, 'Jaji wa Mahakama ya Rufaa Mhe. Gerald Ndika akiwasilisha mada  wakati wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu kwa Wakuu wa Upelelezi na Waendesha Mashtaka nchini', 'Jaji wa Mahakama ya Rufaa Mhe. Gerald Ndika akiwasilisha mada  wakati wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu kwa Wakuu wa Upelelezi na Waendesha Mashtaka nchini', 'Jaji wa Mahakama ya Rufaa Mhe. Gerald Ndika akiwasilisha mada  wakati wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu kwa Wakuu wa Upelelezi na Waendesha Mashtaka nchini', 'Jaji wa Mahakama ya Rufaa Mhe. Gerald Ndika akiwasilisha mada  wakati wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu kwa Wakuu wa Upelelezi na Waendesha Mashtaka nchini', 'image/jpeg', '/uploads/gallery/', '', '1653993454-105A2949.JPG', '', '1653993454-105a2949-jpg', 0, 1, 1, '2022-05-31 07:37:34', '2022-05-31 07:37:34'),
(780, 'Jaji wa Mahakama ya Rufaa Mhe. Stella Mugasha akiwasilisha mada  wakati wa Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu kwa Wakuu wa Upelelezi na Waendesha Mashtaka nchini', 'Jaji wa Mahakama ya Rufaa Mhe. Stella Mugasha akiwasilisha mada  wakati wa Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu kwa Wakuu wa Upelelezi na Waendesha Mashtaka nchini', 'Jaji wa Mahakama ya Rufaa Mhe. Stella Mugasha akiwasilisha mada  wakati wa Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu kwa Wakuu wa Upelelezi na Waendesha Mashtaka nchini', 'Jaji wa Mahakama ya Rufaa Mhe. Stella Mugasha akiwasilisha mada  wakati wa Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu kwa Wakuu wa Upelelezi na Waendesha Mashtaka nchini', 'image/jpeg', '/uploads/gallery/', '', '1653993619-105A3011.JPG', '', '1653993619-105a3011-jpg', 0, 1, 1, '2022-05-31 07:40:19', '2022-05-31 07:40:19'),
(782, 'Jaji wa Mahakama Kuu ya Tanzania Mhe. Immaculate Banzi akiwasilisha mada  wakati wa  Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu kwa Wakuu wa Upelelezi na Waendesha Mashtaka nchini', 'Jaji wa Mahakama Kuu ya Tanzania Mhe. Immaculate Banzi akiwasilisha mada  wakati wa  Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu kwa Wakuu wa Upelelezi na Waendesha Mashtaka nchini', 'Jaji wa Mahakama Kuu ya Tanzania Mhe. Immaculate Banzi akiwasilisha mada  wakati wa  Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu kwa Wakuu wa Upelelezi na Waendesha Mashtaka nchini', 'Jaji wa Mahakama Kuu ya Tanzania Mhe. Immaculate Banzi akiwasilisha mada  wakati wa  Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu kwa Wakuu wa Upelelezi na Waendesha Mashtaka nchini', 'image/jpeg', '/uploads/gallery/', '', '1653993760-105A2971.JPG', '', '1653993760-105a2971-jpg', 0, 1, 1, '2022-05-31 07:42:40', '2022-05-31 07:42:40'),
(784, 'Jaji wa Mahakama Kuu ya Tanzania Mheshimiwa Dkt. Zainab Mango akiwasilisha mada  wakati wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu kwa Wakuu wa Upelelezi na Waendesha Mashtaka nchini', 'Jaji wa Mahakama Kuu ya Tanzania Mheshimiwa Dkt. Zainab Mango akiwasilisha mada  wakati wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu kwa Wakuu wa Upelelezi na Waendesha Mashtaka nchini', 'Jaji wa Mahakama Kuu ya Tanzania Mheshimiwa Dkt. Zainab Mango akiwasilisha mada  wakati wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu kwa Wakuu wa Upelelezi na Waendesha Mashtaka nchini', 'Jaji wa Mahakama Kuu ya Tanzania Mheshimiwa Dkt. Zainab Mango akiwasilisha mada  wakati wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu kwa Wakuu wa Upelelezi na Waendesha Mashtaka nchini', 'image/jpeg', '/uploads/gallery/', '', '1653994002-105A3028.JPG', '', '1653994002-105a3028-jpg', 0, 1, 1, '2022-05-31 07:46:42', '2022-05-31 07:46:42'),
(786, 'Washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini wakiendelea kufuatilia mada mbalimbali zinazowasilishwa kwenye Mafunzo hayo  yanayofanyika mjini Moshi', 'Washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini wakiendelea kufuatilia mada mbalimbali zinazowasilishwa kwenye Mafunzo hayo  yanayofanyika mjini Moshi', 'Washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini wakiendelea kufuatilia mada mbalimbali zinazowasilishwa kwenye Mafunzo hayo  yanayofanyika mjini Moshi', 'Washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini wakiendelea kufuatilia mada mbalimbali zinazowasilishwa kwenye Mafunzo hayo  yanayofanyika mjini Moshi', 'image/jpeg', '/uploads/gallery/', '', '1653994533-105A2802.JPG', '', '1653994533-105a2802-jpg', 0, 1, 1, '2022-05-31 07:55:33', '2022-05-31 07:55:33'),
(788, 'Washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini wakiendelea kufuatilia mada mbalimbali zinazowasilishwa kwenye Mafunzo hayo  yanayofanyika mjini Moshi', 'Washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini wakiendelea kufuatilia mada mbalimbali zinazowasilishwa kwenye Mafunzo hayo  yanayofanyika mjini Moshi', 'Washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini wakiendelea kufuatilia mada mbalimbali zinazowasilishwa kwenye Mafunzo hayo  yanayofanyika mjini Moshi', 'Washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini wakiendelea kufuatilia mada mbalimbali zinazowasilishwa kwenye Mafunzo hayo  yanayofanyika mjini Moshi', 'image/jpeg', '/uploads/gallery/', '', '1653994611-105A2842.JPG', '', '1653994611-105a2842-jpg', 0, 1, 1, '2022-05-31 07:56:51', '2022-05-31 07:56:51'),
(790, 'Washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini wakiendelea kufuatilia mada mbalimbali zinazowasilishwa kwenye Mafunzo hayo  yanayofanyika mjini Moshi', 'Washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini wakiendelea kufuatilia mada mbalimbali zinazowasilishwa kwenye Mafunzo hayo  yanayofanyika mjini Moshi', 'Washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini wakiendelea kufuatilia mada mbalimbali zinazowasilishwa kwenye Mafunzo hayo  yanayofanyika mjini Moshi', 'Washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini wakiendelea kufuatilia mada mbalimbali zinazowasilishwa kwenye Mafunzo hayo  yanayofanyika mjini Moshi', 'image/jpeg', '/uploads/gallery/', '', '1653994743-105A2885.JPG', '', '1653994743-105a2885-jpg', 0, 1, 1, '2022-05-31 07:59:03', '2022-05-31 07:59:03'),
(792, 'Washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini wakiendelea kufuatilia mada mbalimbali zinazowasilishwa kwenye Mafunzo hayo  yanayofanyika mjini Moshi', 'Washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini wakiendelea kufuatilia mada mbalimbali zinazowasilishwa kwenye Mafunzo hayo  yanayofanyika mjini Moshi', 'Washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini wakiendelea kufuatilia mada mbalimbali zinazowasilishwa kwenye Mafunzo hayo  yanayofanyika mjini Moshi', 'Washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini wakiendelea kufuatilia mada mbalimbali zinazowasilishwa kwenye Mafunzo hayo  yanayofanyika mjini Moshi', 'image/jpeg', '/uploads/gallery/', '', '1653994864-105A2908.JPG', '', '1653994864-105a2908-jpg', 0, 1, 1, '2022-05-31 08:01:04', '2022-05-31 08:01:04'),
(794, 'Washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini wakiendelea kufuatilia mada mbalimbali zinazowasilishwa kwenye Mafunzo hayo  yanayofanyika mjini Moshi', 'Washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini wakiendelea kufuatilia mada mbalimbali zinazowasilishwa kwenye Mafunzo hayo  yanayofanyika mjini Moshi', 'Washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini wakiendelea kufuatilia mada mbalimbali zinazowasilishwa kwenye Mafunzo hayo  yanayofanyika mjini Moshi', 'Washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini wakiendelea kufuatilia mada mbalimbali zinazowasilishwa kwenye Mafunzo hayo  yanayofanyika mjini Moshi', 'image/jpeg', '/uploads/gallery/', '', '1653994945-105A2919.JPG', '', '1653994945-105a2919-jpg', 0, 1, 1, '2022-05-31 08:02:25', '2022-05-31 08:02:25'),
(796, 'Washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini wakiendelea kufuatilia mada mbalimbali zinazowasilishwa kwenye Mafunzo hayo  yanayofanyika mjini Moshi', 'Washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini wakiendelea kufuatilia mada mbalimbali zinazowasilishwa kwenye Mafunzo hayo  yanayofanyika mjini Moshi', 'Washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini wakiendelea kufuatilia mada mbalimbali zinazowasilishwa kwenye Mafunzo hayo  yanayofanyika mjini Moshi', 'Washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu ambao ni Wakuu wa Upelelezi na Waendesha Mashtaka nchini wakiendelea kufuatilia mada mbalimbali zinazowasilishwa kwenye Mafunzo hayo  yanayofanyika mjini Moshi', 'image/jpeg', '/uploads/gallery/', '', '1653995156-105A2954.JPG', '', '1653995156-105a2954-jpg', 0, 1, 1, '2022-05-31 08:05:57', '2022-05-31 08:05:57'),
(798, 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka nchini Bw. Sylvester Mwakitalu (wa pili kushoto), Majaji wa Mahakama ya Rufaa na Mahakama Kuu wakiwa na washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu kwa Wakuu wa Upelel', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka nchini Bw. Sylvester Mwakitalu (wa pili kushoto), Majaji wa Mahakama ya Rufaa na Mahakama Kuu wakiwa na washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu kwa Wakuu wa Upelel', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka nchini Bw. Sylvester Mwakitalu (wa pili kushoto), Majaji wa Mahakama ya Rufaa na Mahakama Kuu wakiwa na washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu kwa Wakuu wa Upelelezi na Waendesha Mashtaka nchini', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka nchini Bw. Sylvester Mwakitalu (wa pili kushoto), Majaji wa Mahakama ya Rufaa na Mahakama Kuu wakiwa na washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu kwa Wakuu wa Upelelezi na Waendesha Mashtaka nchini', 'image/jpeg', '/uploads/gallery/', '', '1653995675-105A2981.JPG', '', '1653995675-105a2981-jpg', 0, 1, 1, '2022-05-31 08:14:35', '2022-05-31 08:14:35'),
(800, 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka nchini Bw. Sylvester Mwakitalu (wa pili kushoto), Majaji wa Mahakama ya Rufaa na Mahakama Kuu wakiwa na washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu kwa Wakuu wa Upelel', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka nchini Bw. Sylvester Mwakitalu (wa pili kushoto), Majaji wa Mahakama ya Rufaa na Mahakama Kuu wakiwa na washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu kwa Wakuu wa Upelel', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka nchini Bw. Sylvester Mwakitalu (wa pili kushoto), Majaji wa Mahakama ya Rufaa na Mahakama Kuu wakiwa na washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu kwa Wakuu wa Upelelezi na Waendesha Mashtaka nchini', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka nchini Bw. Sylvester Mwakitalu (wa pili kushoto), Majaji wa Mahakama ya Rufaa na Mahakama Kuu wakiwa na washiriki wa Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu kwa Wakuu wa Upelelezi na Waendesha Mashtaka nchini', 'image/jpeg', '/uploads/gallery/', '', '1653995767-105A2994.JPG', '', '1653995767-105a2994-jpg', 0, 1, 1, '2022-05-31 08:16:07', '2022-05-31 08:16:07'),
(802, 'Mkurugenzi Msaidizi Sehemu ya Makosa dhidi ya Mazingira na Maliasili Bi. Rosemary Shio akiwasilisha mada kwenye Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu kwa Wakuu wa Upelelezi na Waendesha Mashtaka nchini', 'Mkurugenzi Msaidizi Sehemu ya Makosa dhidi ya Mazingira na Maliasili Bi. Rosemary Shio akiwasilisha mada kwenye Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu kwa Wakuu wa Upelelezi na Waendesha Mashtaka nchini', 'Mkurugenzi Msaidizi Sehemu ya Makosa dhidi ya Mazingira na Maliasili Bi. Rosemary Shio akiwasilisha mada kwenye Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu kwa Wakuu wa Upelelezi na Waendesha Mashtaka nchini', 'Mkurugenzi Msaidizi Sehemu ya Makosa dhidi ya Mazingira na Maliasili Bi. Rosemary Shio akiwasilisha mada kwenye Mafunzo ya Upelelezi na Uendeshaji wa Kesi za Wanyamapori na misitu kwa Wakuu wa Upelelezi na Waendesha Mashtaka nchini', 'image/jpeg', '/uploads/gallery/', '', '1653996310-105A3059.JPG', '', '1653996310-105a3059-jpg', 0, 1, 1, '2022-05-31 08:25:10', '2022-05-31 08:25:10'),
(804, 'Kaimu Mkurugenzi Divisheni ya Utenganishaji wa Shughuli za Mashtaka na Upelelezi  Bw. Tumaini Kweka akieleza kwa ufupi juu ya Uzinduzi wa Taarifa ya Ukaguzi wa Vizuizi wanakoshikiliwa Watoto waliokinzana na Sheria.', 'Kaimu Mkurugenzi Divisheni ya Utenganishaji wa Shughuli za Mashtaka na Upelelezi  Bw. Tumaini Kweka akieleza kwa ufupi juu ya Uzinduzi wa Taarifa ya Ukaguzi wa Vizuizi wanakoshikiliwa Watoto waliokinzana na Sheria.', 'Kaimu Mkurugenzi Divisheni ya Utenganishaji wa Shughuli za Mashtaka na Upelelezi  Bw. Tumaini Kweka akieleza kwa ufupi juu ya Uzinduzi wa Taarifa ya Ukaguzi wa Vizuizi wanakoshikiliwa Watoto waliokinzana na Sheria.', 'Kaimu Mkurugenzi Divisheni ya Utenganishaji wa Shughuli za Mashtaka na Upelelezi  Bw. Tumaini Kweka akieleza kwa ufupi juu ya Uzinduzi wa Taarifa ya Ukaguzi wa Vizuizi wanakoshikiliwa Watoto waliokinzana na Sheria.', 'image/jpeg', '/uploads/gallery/', '', '1658917771-_05A7250.JPG', '', '1658917771-05a7250-jpg', 0, 1, 1, '2022-07-27 07:29:31', '2022-07-27 07:29:31'),
(806, 'Mkurugenzi wa Upelelezi wa Makosa ya Jinai Bw. Camilius Wambura akitoa salamu fupi za mapokeo ya Uzinduzi wa  Taarifa ya Ukaguzi wa Vizuizi wanakoshikiliwa Watoto waliokinzana na Sheria', 'Mkurugenzi wa Upelelezi wa Makosa ya Jinai Bw. Camilius Wambura akitoa salamu fupi za mapokeo ya Uzinduzi wa  Taarifa ya Ukaguzi wa Vizuizi wanakoshikiliwa Watoto waliokinzana na Sheria', 'Mkurugenzi wa Upelelezi wa Makosa ya Jinai Bw. Camilius Wambura akitoa salamu fupi za mapokeo ya Uzinduzi wa  Taarifa ya Ukaguzi wa Vizuizi wanakoshikiliwa Watoto waliokinzana na Sheria', 'Mkurugenzi wa Upelelezi wa Makosa ya Jinai Bw. Camilius Wambura akitoa salamu fupi za mapokeo ya Uzinduzi wa  Taarifa ya Ukaguzi wa Vizuizi wanakoshikiliwa Watoto waliokinzana na Sheria', 'image/jpeg', '/uploads/gallery/', '', '1658917973-_05A7421.JPG', '', '1658917973-05a7421-jpg', 0, 1, 1, '2022-07-27 07:32:53', '2022-07-27 07:32:53'),
(808, 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akimkaribisha Naibu Katibu Mkuu Wizara ya Katiba na Sheria Dkt. Khatibu Kazungu kwa lengo la kuzindua Taarifa ya Ukaguzi wa Vizuizi wanakoshikiliwa Watoto waliokinzana na Sheria', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akimkaribisha Naibu Katibu Mkuu Wizara ya Katiba na Sheria Dkt. Khatibu Kazungu kwa lengo la kuzindua Taarifa ya Ukaguzi wa Vizuizi wanakoshikiliwa Watoto waliokinzana na Sheria', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akimkaribisha Naibu Katibu Mkuu Wizara ya Katiba na Sheria Dkt. Khatibu Kazungu kwa lengo la kuzindua Taarifa ya Ukaguzi wa Vizuizi wanakoshikiliwa Watoto waliokinzana na Sheria', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akimkaribisha Naibu Katibu Mkuu Wizara ya Katiba na Sheria Dkt. Khatibu Kazungu kwa lengo la kuzindua Taarifa ya Ukaguzi wa Vizuizi wanakoshikiliwa Watoto waliokinzana na Sheria', 'image/jpeg', '/uploads/gallery/', '', '1658918249-_05A7279.JPG', '', '1658918249-05a7279-jpg', 0, 1, 1, '2022-07-27 07:37:29', '2022-07-27 07:37:29'),
(810, 'Naibu Katibu Mkuu kutoka Wizara ya Katiba na Sheria Dkt. Khatibu Kazungu akitoa neno la kuzindua Taarifa ya Ukaguzi wa Vizuizi wanakoshikiliwa Watoto waliokinzana na Sheria ambao umefanyika Jijini Dodoma', 'Naibu Katibu Mkuu kutoka Wizara ya Katiba na Sheria Dkt. Khatibu Kazungu akitoa neno la kuzindua Taarifa ya Ukaguzi wa Vizuizi wanakoshikiliwa Watoto waliokinzana na Sheria ambao umefanyika Jijini Dodoma', 'Naibu Katibu Mkuu kutoka Wizara ya Katiba na Sheria Dkt. Khatibu Kazungu akitoa neno la kuzindua Taarifa ya Ukaguzi wa Vizuizi wanakoshikiliwa Watoto waliokinzana na Sheria ambao umefanyika Jijini Dodoma', 'Naibu Katibu Mkuu kutoka Wizara ya Katiba na Sheria Dkt. Khatibu Kazungu akitoa neno la kuzindua Taarifa ya Ukaguzi wa Vizuizi wanakoshikiliwa Watoto waliokinzana na Sheria ambao umefanyika Jijini Dodoma', 'image/jpeg', '/uploads/gallery/', '', '1658918435-_05A7295.JPG', '', '1658918435-05a7295-jpg', 0, 1, 1, '2022-07-27 07:40:35', '2022-07-27 07:40:35'),
(812, 'Washiriki wa Uzinduzi wa Taarifa ya Ukaguzi wa Vizuizi wanakoshikiliwa Watoto waliokinzana na Sheria wakifuatilia hotuba ya mgeni rasmi  wakati akihutubia kwenye hafla fupi  ya uzinduzi huo', 'Washiriki wa Uzinduzi wa Taarifa ya Ukaguzi wa Vizuizi wanakoshikiliwa Watoto waliokinzana na Sheria wakifuatilia hotuba ya mgeni rasmi  wakati akihutubia kwenye hafla fupi  ya uzinduzi huo', 'Washiriki wa Uzinduzi wa Taarifa ya Ukaguzi wa Vizuizi wanakoshikiliwa Watoto waliokinzana na Sheria wakifuatilia hotuba ya mgeni rasmi  wakati akihutubia kwenye hafla fupi  ya uzinduzi huo', 'Washiriki wa Uzinduzi wa Taarifa ya Ukaguzi wa Vizuizi wanakoshikiliwa Watoto waliokinzana na Sheria wakifuatilia hotuba ya mgeni rasmi  wakati akihutubia kwenye hafla fupi  ya uzinduzi huo', 'image/jpeg', '/uploads/gallery/', '', '1658918674-_05A7503.JPG', '', '1658918674-05a7503-jpg', 0, 1, 1, '2022-07-27 07:44:34', '2022-07-27 07:44:34'),
(814, 'Washiriki wa Uzinduzi wa Taarifa ya Ukaguzi wa Vizuizi wanakoshikiliwa Watoto waliokinzana na Sheria wakifuatilia hotuba ya mgeni rasmi  wakati akihutubia kwenye hafla fupi  ya uzinduzi huo', 'Washiriki wa Uzinduzi wa Taarifa ya Ukaguzi wa Vizuizi wanakoshikiliwa Watoto waliokinzana na Sheria wakifuatilia hotuba ya mgeni rasmi  wakati akihutubia kwenye hafla fupi  ya uzinduzi huo', 'Washiriki wa Uzinduzi wa Taarifa ya Ukaguzi wa Vizuizi wanakoshikiliwa Watoto waliokinzana na Sheria wakifuatilia hotuba ya mgeni rasmi  wakati akihutubia kwenye hafla fupi  ya uzinduzi huo', 'Washiriki wa Uzinduzi wa Taarifa ya Ukaguzi wa Vizuizi wanakoshikiliwa Watoto waliokinzana na Sheria wakifuatilia hotuba ya mgeni rasmi  wakati akihutubia kwenye hafla fupi  ya uzinduzi huo', 'image/jpeg', '/uploads/gallery/', '', '1658918767-_05A7542.JPG', '', '1658918767-05a7542-jpg', 0, 1, 1, '2022-07-27 07:46:07', '2022-07-27 07:46:07'),
(816, 'Naibu Katibu Mkuu kutoka Wizara ya Katiba na Sheria Dkt. Khatibu Kazungu kwa kushirikiana na Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakikata utepe kuzindua Taarifa ya Ukaguzi wa Vizuizi wanakoshikiliwa Watoto waliokinzana na Sheria', 'Naibu Katibu Mkuu kutoka Wizara ya Katiba na Sheria Dkt. Khatibu Kazungu kwa kushirikiana na Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakikata utepe kuzindua Taarifa ya Ukaguzi wa Vizuizi wanakoshikiliwa Watoto waliokinzana na Sheria', 'Naibu Katibu Mkuu kutoka Wizara ya Katiba na Sheria Dkt. Khatibu Kazungu kwa kushirikiana na Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakikata utepe kuzindua Taarifa ya Ukaguzi wa Vizuizi wanakoshikiliwa Watoto waliokinzana na Sheria', 'Naibu Katibu Mkuu kutoka Wizara ya Katiba na Sheria Dkt. Khatibu Kazungu kwa kushirikiana na Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakikata utepe kuzindua Taarifa ya Ukaguzi wa Vizuizi wanakoshikiliwa Watoto waliokinzana na Sheria', 'image/jpeg', '/uploads/gallery/', '', '1658918926-_05A7371.JPG', '', '1658918926-05a7371-jpg', 0, 1, 1, '2022-07-27 07:48:47', '2022-07-27 07:48:47'),
(818, 'Picha ya pamoja ikijumuisha Naibu Katibu Mkuu kutoka Wizara ya Katiba na Sheria Dkt. Khatibu Kazungu (katikati), Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakiwa na washiriki wa Uzinduzi wa Taarifa ya Ukaguzi wa Vizuizi wanakoshikiliwa Watoto walioki', 'Picha ya pamoja ikijumuisha Naibu Katibu Mkuu kutoka Wizara ya Katiba na Sheria Dkt. Khatibu Kazungu (katikati), Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakiwa na washiriki wa Uzinduzi wa Taarifa ya Ukaguzi wa Vizuizi wanakoshikiliwa Watoto walioki', 'Picha ya pamoja ikijumuisha Naibu Katibu Mkuu kutoka Wizara ya Katiba na Sheria Dkt. Khatibu Kazungu (katikati), Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakiwa na washiriki wa Uzinduzi wa Taarifa ya Ukaguzi wa Vizuizi wanakoshikiliwa Watoto waliokinzana na Sheria', 'Picha ya pamoja ikijumuisha Naibu Katibu Mkuu kutoka Wizara ya Katiba na Sheria Dkt. Khatibu Kazungu (katikati), Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakiwa na washiriki wa Uzinduzi wa Taarifa ya Ukaguzi wa Vizuizi wanakoshikiliwa Watoto waliokinzana na Sheria', 'image/jpeg', '/uploads/gallery/', '', '1658919406-_05A7613.JPG', '', '1658919406-05a7613-jpg', 0, 1, 1, '2022-07-27 07:56:46', '2022-07-27 07:56:46'),
(820, 'Picha ya pamoja ikijumuisha Naibu Katibu Mkuu kutoka Wizara ya Katiba na Sheria Dkt. Khatibu Kazungu (katikati), Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakiwa na washiriki wa Uzinduzi wa Taarifa ya Ukaguzi wa Vizuizi wanakoshikiliwa Watoto walioki', 'Picha ya pamoja ikijumuisha Naibu Katibu Mkuu kutoka Wizara ya Katiba na Sheria Dkt. Khatibu Kazungu (katikati), Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakiwa na washiriki wa Uzinduzi wa Taarifa ya Ukaguzi wa Vizuizi wanakoshikiliwa Watoto walioki', 'Picha ya pamoja ikijumuisha Naibu Katibu Mkuu kutoka Wizara ya Katiba na Sheria Dkt. Khatibu Kazungu (katikati), Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakiwa na washiriki wa Uzinduzi wa Taarifa ya Ukaguzi wa Vizuizi wanakoshikiliwa Watoto waliokinzana na Sheria', 'Picha ya pamoja ikijumuisha Naibu Katibu Mkuu kutoka Wizara ya Katiba na Sheria Dkt. Khatibu Kazungu (katikati), Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu wakiwa na washiriki wa Uzinduzi wa Taarifa ya Ukaguzi wa Vizuizi wanakoshikiliwa Watoto waliokinzana na Sheria', 'image/jpeg', '/uploads/gallery/', '', '1658919523-_05A7649.JPG', '', '1658919523-05a7649-jpg', 0, 1, 1, '2022-07-27 07:58:43', '2022-07-27 07:58:43'),
(822, 'Waziri wa Katiba na Sheria Dkt. Damasi Ndumbaro akizungumza alipokuwa akizindua rasmi Kikosi kazi cha Ulinzi kwa watoto dhidi ya Biashara ya usafirishaji haramu wa Binadamu', 'Waziri wa Katiba na Sheria Dkt. Damasi Ndumbaro akizungumza alipokuwa akizindua rasmi Kikosi kazi cha Ulinzi kwa watoto dhidi ya Biashara ya usafirishaji haramu wa Binadamu', 'Waziri wa Katiba na Sheria Dkt. Damasi Ndumbaro akizungumza alipokuwa akizindua rasmi Kikosi kazi cha Ulinzi kwa watoto dhidi ya Biashara ya usafirishaji haramu wa Binadamu', 'Waziri wa Katiba na Sheria Dkt. Damasi Ndumbaro akizungumza alipokuwa akizindua rasmi Kikosi kazi cha Ulinzi kwa watoto dhidi ya Biashara ya usafirishaji haramu wa Binadamu', 'image/jpeg', '/uploads/gallery/', '', '1658921039-IMG-20220721-WA0056.jpg', '', '1658921039-img-20220721-wa0056-jpg', 0, 1, 1, '2022-07-27 08:23:59', '2022-07-27 08:23:59'),
(824, 'Waziri wa Maendeleo ya Jamii, Jinsia Wanawake na Makundi Maaalum, Dkt Dorothy Gwajima akizungumza kwenye hafla  ya Uzinduzi wa Kikosi kazi cha Ulinzi kwa Watoto dhidi ya Biashara ya Usafirishaji Haramu wa Binadamu', 'Waziri wa Maendeleo ya Jamii, Jinsia Wanawake na Makundi Maaalum, Dkt Dorothy Gwajima akizungumza kwenye hafla  ya Uzinduzi wa Kikosi kazi cha Ulinzi kwa Watoto dhidi ya Biashara ya Usafirishaji Haramu wa Binadamu', 'Waziri wa Maendeleo ya Jamii, Jinsia Wanawake na Makundi Maaalum, Dkt Dorothy Gwajima akizungumza kwenye hafla  ya Uzinduzi wa Kikosi kazi cha Ulinzi kwa Watoto dhidi ya Biashara ya Usafirishaji Haramu wa Binadamu', 'Waziri wa Maendeleo ya Jamii, Jinsia Wanawake na Makundi Maaalum, Dkt Dorothy Gwajima akizungumza kwenye hafla  ya Uzinduzi wa Kikosi kazi cha Ulinzi kwa Watoto dhidi ya Biashara ya Usafirishaji Haramu wa Binadamu', 'image/jpeg', '/uploads/gallery/', '', '1658921181-IMG-20220721-WA0063.jpg', '', '1658921181-img-20220721-wa0063-jpg', 0, 1, 1, '2022-07-27 08:26:21', '2022-07-27 08:26:21'),
(826, 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akingumza alipokuwa akitoa salamu  na hotuba fupi katika hafla  ya Uzinduzi wa Kikosi kazi cha Ulinzi kwa Watoto dhidi ya Biashara ya Usafirishaji Haramu wa Binadamu', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akingumza alipokuwa akitoa salamu  na hotuba fupi katika hafla  ya Uzinduzi wa Kikosi kazi cha Ulinzi kwa Watoto dhidi ya Biashara ya Usafirishaji Haramu wa Binadamu', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akingumza alipokuwa akitoa salamu  na hotuba fupi katika hafla  ya Uzinduzi wa Kikosi kazi cha Ulinzi kwa Watoto dhidi ya Biashara ya Usafirishaji Haramu wa Binadamu', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akingumza alipokuwa akitoa salamu  na hotuba fupi katika hafla  ya Uzinduzi wa Kikosi kazi cha Ulinzi kwa Watoto dhidi ya Biashara ya Usafirishaji Haramu wa Binadamu', 'image/jpeg', '/uploads/gallery/', '', '1658921341-IMG-20220721-WA0057.jpg', '', '1658921341-img-20220721-wa0057-jpg', 0, 1, 1, '2022-07-27 08:29:01', '2022-07-27 08:29:01'),
(828, 'Washiriki wa hafla ya Uzinduzi wa Kikosi kazi cha Ulinzi kwa Watoto dhidi ya Biashara ya Usafirishaji Haramu wa Binadamu wakifuatilia hotuba ya mgeni rasmi', 'Washiriki wa hafla ya Uzinduzi wa Kikosi kazi cha Ulinzi kwa Watoto dhidi ya Biashara ya Usafirishaji Haramu wa Binadamu wakifuatilia hotuba ya mgeni rasmi', 'Washiriki wa hafla ya Uzinduzi wa Kikosi kazi cha Ulinzi kwa Watoto dhidi ya Biashara ya Usafirishaji Haramu wa Binadamu wakifuatilia hotuba ya mgeni rasmi', 'Washiriki wa hafla ya Uzinduzi wa Kikosi kazi cha Ulinzi kwa Watoto dhidi ya Biashara ya Usafirishaji Haramu wa Binadamu wakifuatilia hotuba ya mgeni rasmi', 'image/jpeg', '/uploads/gallery/', '', '1658921519-IMG-20220721-WA0058.jpg', '', '1658921519-img-20220721-wa0058-jpg', 0, 1, 1, '2022-07-27 08:31:59', '2022-07-27 08:31:59'),
(830, 'Wajumbe wa Kikosi kazi cha Ulinzi kwa watoto dhidi ya Biashara ya usafirishaji haramu wa Binadamu wakiwa katika picha ya pamoja huku wakionesha kitabu maalum cha mwongozo utakaotumika  katika kutekeleza majukumu yao.', 'Wajumbe wa Kikosi kazi cha Ulinzi kwa watoto dhidi ya Biashara ya usafirishaji haramu wa Binadamu wakiwa katika picha ya pamoja huku wakionesha kitabu maalum cha mwongozo utakaotumika  katika kutekeleza majukumu yao.', 'Wajumbe wa Kikosi kazi cha Ulinzi kwa watoto dhidi ya Biashara ya usafirishaji haramu wa Binadamu wakiwa katika picha ya pamoja huku wakionesha kitabu maalum cha mwongozo utakaotumika  katika kutekeleza majukumu yao.', 'Wajumbe wa Kikosi kazi cha Ulinzi kwa watoto dhidi ya Biashara ya usafirishaji haramu wa Binadamu wakiwa katika picha ya pamoja huku wakionesha kitabu maalum cha mwongozo utakaotumika  katika kutekeleza majukumu yao.', 'image/jpeg', '/uploads/gallery/', '', '1658921675-IMG-20220721-WA0062.jpg', '', '1658921675-img-20220721-wa0062-jpg', 0, 1, 1, '2022-07-27 08:34:35', '2022-07-27 08:34:35'),
(832, 'Waziri wa Katiba na Sheria Dkt. Damas Ndumbaro (katikati) na Waziri wa Maendeleo ya Jamii, Jinsia Wanawake na Makundi Maaalum, Dkt. Dorothy Gwajima (wa tano kulia) wakiwa katika picha ya pamoja na wadau wengine, pamoja na Viongozi Waandamizi kutoka Tanzan', 'Waziri wa Katiba na Sheria Dkt. Damas Ndumbaro (katikati) na Waziri wa Maendeleo ya Jamii, Jinsia Wanawake na Makundi Maaalum, Dkt. Dorothy Gwajima (wa tano kulia) wakiwa katika picha ya pamoja na wadau wengine, pamoja na Viongozi Waandamizi kutoka Tanzan', 'Waziri wa Katiba na Sheria Dkt. Damas Ndumbaro (katikati) na Waziri wa Maendeleo ya Jamii, Jinsia Wanawake na Makundi Maaalum, Dkt. Dorothy Gwajima (wa tano kulia) wakiwa katika picha ya pamoja na wadau wengine, pamoja na Viongozi Waandamizi kutoka Tanzania Bara na Zanzibar', 'Waziri wa Katiba na Sheria Dkt. Damas Ndumbaro (katikati) na Waziri wa Maendeleo ya Jamii, Jinsia Wanawake na Makundi Maaalum, Dkt. Dorothy Gwajima (wa tano kulia) wakiwa katika picha ya pamoja na wadau wengine, pamoja na Viongozi Waandamizi kutoka Tanzania Bara na Zanzibar', 'image/jpeg', '/uploads/gallery/', '', '1658921824-IMG-20220721-WA0061.jpg', '', '1658921824-img-20220721-wa0061-jpg', 0, 1, 1, '2022-07-27 08:37:04', '2022-07-27 08:37:04'),
(834, 'Kipindi maalum cha ijue Ofisi ya Taifa ya Mashtaka', 'Kipindi maalum cha ijue Ofisi ya Taifa ya Mashtaka', 'Kipindi maalum cha ijue Ofisi ya Taifa ya Mashtaka', 'Kipindi maalum cha ijue Ofisi ya Taifa ya Mashtaka', 'image/jpeg', '/uploads/gallery/', '', '1663749407-IMG-20220921-WA0001.jpg', '', '1663749407-img-20220921-wa0001-jpg', 0, 1, 1, '2022-09-21 05:36:47', '2022-09-21 05:36:47'),
(836, 'Mkurugenzi wa Mashtaka  akimkaribisha Katibu Mkuu Wizara ya Fedha na Mipango  kuhutubia kwenye Hafla ya Makabidhiano ya Mali zitokanazo na Uhalifu zilizotaifishwa  na Ofisi ya Taifa ya Mashtaka', 'Mkurugenzi wa Mashtaka  akimkaribisha Katibu Mkuu Wizara ya Fedha na Mipango  kuhutubia kwenye Hafla ya Makabidhiano ya Mali zitokanazo na Uhalifu zilizotaifishwa  na Ofisi ya Taifa ya Mashtaka', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akizungumza na kumkaribisha Katibu Mkuu Wizara ya Fedha na Mipango Bw. Emmanuel Tutuba kuhutubia kwenye Hafla ya Makabidhiano ya Mali zitokanazo na Uhalifu zilizotaifishwa  na Ofisi ya Taifa ya Mashtaka', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu akizungumza na kumkaribisha Katibu Mkuu Wizara ya Fedha na Mipango Bw. Emmanuel Tutuba kuhutubia kwenye Hafla ya Makabidhiano ya Mali zitokanazo na Uhalifu zilizotaifishwa  na Ofisi ya Taifa ya Mashtaka', 'image/jpeg', '/uploads/gallery/', '', '1667983765-_05A4065.JPG', '', '1667983765-05a4065-jpg', 0, 1, 1, '2022-11-09 05:49:25', '2022-11-09 05:49:25'),
(838, 'Katibu Mkuu Wizara ya Fedha na Mipango Bw. Emmanuel Tutuba akihutubia kwenye Hafla ya Makabidhiano ya Mali zitokanazo na Uhalifu zilizotaifishwa  na Ofisi ya Taifa ya Mashtaka', 'Katibu Mkuu Wizara ya Fedha na Mipango Bw. Emmanuel Tutuba akihutubia kwenye Hafla ya Makabidhiano ya Mali zitokanazo na Uhalifu zilizotaifishwa  na Ofisi ya Taifa ya Mashtaka', 'Katibu Mkuu Wizara ya Fedha na Mipango Bw. Emmanuel Tutuba akihutubia kwenye Hafla ya Makabidhiano ya Mali zitokanazo na Uhalifu zilizotaifishwa  na Ofisi ya Taifa ya Mashtaka', 'Katibu Mkuu Wizara ya Fedha na Mipango Bw. Emmanuel Tutuba akihutubia kwenye Hafla ya Makabidhiano ya Mali zitokanazo na Uhalifu zilizotaifishwa  na Ofisi ya Taifa ya Mashtaka', 'image/jpeg', '/uploads/gallery/', '', '1667984522-1.JPG', '', '1667984522-1-jpg', 0, 1, 1, '2022-11-09 06:02:02', '2022-11-09 06:02:02'),
(840, 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu  akisaini Nyaraka za Makabidhiano ya Mali  zilizotaifishwa na Ofisi ya Taifa ya Mashtaka ambazo zimetokana na uhalifu.', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu  akisaini Nyaraka za Makabidhiano ya Mali  zilizotaifishwa na Ofisi ya Taifa ya Mashtaka ambazo zimetokana na uhalifu.', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu  akisaini Nyaraka za Makabidhiano ya Mali  zilizotaifishwa na Ofisi ya Taifa ya Mashtaka ambazo zimetokana na uhalifu.', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu  akisaini Nyaraka za Makabidhiano ya Mali  zilizotaifishwa na Ofisi ya Taifa ya Mashtaka ambazo zimetokana na uhalifu.', 'image/jpeg', '/uploads/gallery/', '', '1667985982-_05A4123.JPG', '', '1667985982-05a4123-jpg', 0, 1, 1, '2022-11-09 06:26:23', '2022-11-09 06:26:23'),
(842, 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu  akimkabidhi Katibu Mkuu Wizara ya Fedha na Mipango Bw. Emmanuel Tutuba Nyaraka za Mali zilizotaifishwa na Ofisi ya Taifa ya Mashtaka ambazo zimetokana na uhalifu.', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu  akimkabidhi Katibu Mkuu Wizara ya Fedha na Mipango Bw. Emmanuel Tutuba Nyaraka za Mali zilizotaifishwa na Ofisi ya Taifa ya Mashtaka ambazo zimetokana na uhalifu.', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu  akimkabidhi Katibu Mkuu Wizara ya Fedha na Mipango Bw. Emmanuel Tutuba Nyaraka za Mali zilizotaifishwa na Ofisi ya Taifa ya Mashtaka ambazo zimetokana na uhalifu.', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu  akimkabidhi Katibu Mkuu Wizara ya Fedha na Mipango Bw. Emmanuel Tutuba Nyaraka za Mali zilizotaifishwa na Ofisi ya Taifa ya Mashtaka ambazo zimetokana na uhalifu.', 'image/jpeg', '/uploads/gallery/', '', '1667986594-_05A4164.JPG', '', '1667986594-05a4164-jpg', 0, 1, 1, '2022-11-09 06:36:34', '2022-11-09 06:36:34'),
(844, 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu, Katibu Mkuu Wizara ya Fedha na Mipango Bw. Emmanuel Tutuba wakiwa na Menejimenti ya Ofisi ya Taifa ya Mashtaka', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu, Katibu Mkuu Wizara ya Fedha na Mipango Bw. Emmanuel Tutuba wakiwa na Menejimenti ya Ofisi ya Taifa ya Mashtaka', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu, Katibu Mkuu Wizara ya Fedha na Mipango Bw. Emmanuel Tutuba wakiwa na Menejimenti ya Ofisi ya Taifa ya Mashtaka', 'Picha ya pamoja ikijumuisha Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu, Katibu Mkuu Wizara ya Fedha na Mipango Bw. Emmanuel Tutuba wakiwa na Menejimenti ya Ofisi ya Taifa ya Mashtaka', 'image/jpeg', '/uploads/gallery/', '', '1667988170-_05A4194.JPG', '', '1667988170-05a4194-jpg', 0, 1, 1, '2022-11-09 07:02:50', '2022-11-09 07:02:50'),
(846, 'Katibu wa TUGHE  Bw. Wenisimbo Masawe akitoa maelezo mafupi kwa Wajumbe wa TUGHE  juu ya masuala mbalimbali yaliyofanyika na TUGHE Tawi kwenye kikao cha Halmashauri ya  (TUGHE) na Wanachama wake', 'Katibu wa TUGHE  Bw. Wenisimbo Masawe akitoa maelezo mafupi kwa Wajumbe wa TUGHE  juu ya masuala mbalimbali yaliyofanyika na TUGHE Tawi kwenye kikao cha Halmashauri ya  (TUGHE) na Wanachama wake', 'Katibu wa TUGHE  Bw. Wenisimbo Masawe akitoa maelezo mafupi kwa Wajumbe wa TUGHE  juu ya masuala mbalimbali yaliyofanyika na TUGHE Tawi kwenye kikao cha Halmashauri ya  (TUGHE) na Wanachama wake', 'Katibu wa TUGHE  Bw. Wenisimbo Masawe akitoa maelezo mafupi kwa Wajumbe wa TUGHE  juu ya masuala mbalimbali yaliyofanyika na TUGHE Tawi kwenye kikao cha Halmashauri ya  (TUGHE) na Wanachama wake', 'image/jpeg', '/uploads/gallery/', '', '1667989594-_05A4782.JPG', '', '1667989594-05a4782-jpg', 0, 1, 1, '2022-11-09 07:26:34', '2022-11-09 07:26:34'),
(848, 'Mwenyekiti wa TUGHE Ofisi ya Taifa ya Mashtaka Bw. Bashiru Njoki akifungua Kikao cha Halmashauri ya  Chama cha Wafanyakazi wa Serikali (TUGHE) na Wanachama', 'Mwenyekiti wa TUGHE Ofisi ya Taifa ya Mashtaka Bw. Bashiru Njoki akifungua Kikao cha Halmashauri ya  Chama cha Wafanyakazi wa Serikali (TUGHE) na Wanachama', 'Mwenyekiti wa TUGHE Ofisi ya Taifa ya Mashtaka Bw. Bashiru Njoki akifungua Kikao cha Halmashauri ya  Chama cha Wafanyakazi wa Serikali (TUGHE) na Wanachama', 'Mwenyekiti wa TUGHE Ofisi ya Taifa ya Mashtaka Bw. Bashiru Njoki akifungua Kikao cha Halmashauri ya  Chama cha Wafanyakazi wa Serikali (TUGHE) na Wanachama', 'image/jpeg', '/uploads/gallery/', '', '1667989827-_05A4737.JPG', '', '1667989827-05a4737-jpg', 0, 1, 1, '2022-11-09 07:30:27', '2022-11-09 07:30:27'),
(850, 'Baadhi ya Wajumbe  wakifuatilia kwa umakini  mada zinazowasilishwa kwenye Kikao cha Halmashauri ya  Chama cha Wafanyakazi wa Serikali (TUGHE) na Wanachama kilichofanyika    Jijini Dodoma', 'Baadhi ya Wajumbe  wakifuatilia kwa umakini  mada zinazowasilishwa kwenye Kikao cha Halmashauri ya  Chama cha Wafanyakazi wa Serikali (TUGHE) na Wanachama kilichofanyika    Jijini Dodoma', 'Baadhi ya Wajumbe  wakifuatilia kwa umakini  mada zinazowasilishwa kwenye Kikao cha Halmashauri ya  Chama cha Wafanyakazi wa Serikali (TUGHE) na Wanachama kilichofanyika    Jijini Dodoma', 'Baadhi ya Wajumbe  wakifuatilia kwa umakini  mada zinazowasilishwa kwenye Kikao cha Halmashauri ya  Chama cha Wafanyakazi wa Serikali (TUGHE) na Wanachama kilichofanyika    Jijini Dodoma', 'image/jpeg', '/uploads/gallery/', '', '1667990014-_05A4828.JPG', '', '1667990014-05a4828-jpg', 0, 1, 1, '2022-11-09 07:33:34', '2022-11-09 07:33:34'),
(852, 'Baadhi ya Wajumbe  wakifuatilia kwa umakini  mada zinazowasilishwa kwenye Kikao cha Halmashauri ya  Chama cha Wafanyakazi wa Serikali (TUGHE) na Wanachama kilichofanyika    Jijini Dodoma', 'Baadhi ya Wajumbe  wakifuatilia kwa umakini  mada zinazowasilishwa kwenye Kikao cha Halmashauri ya  Chama cha Wafanyakazi wa Serikali (TUGHE) na Wanachama kilichofanyika    Jijini Dodoma', 'Baadhi ya Wajumbe  wakifuatilia kwa umakini  mada zinazowasilishwa kwenye Kikao cha Halmashauri ya  Chama cha Wafanyakazi wa Serikali (TUGHE) na Wanachama kilichofanyika    Jijini Dodoma', 'Baadhi ya Wajumbe  wakifuatilia kwa umakini  mada zinazowasilishwa kwenye Kikao cha Halmashauri ya  Chama cha Wafanyakazi wa Serikali (TUGHE) na Wanachama kilichofanyika    Jijini Dodoma', 'image/jpeg', '/uploads/gallery/', '', '1667990075-_05A4860.JPG', '', '1667990075-05a4860-jpg', 0, 1, 1, '2022-11-09 07:34:35', '2022-11-09 07:34:35');
INSERT INTO `media` (`id`, `title_en`, `title_sw`, `content_en`, `content_sw`, `mime`, `path`, `url`, `filename`, `iconurl`, `slug`, `user_id`, `gallery_id`, `status`, `created_at`, `updated_at`) VALUES
(854, 'Mwenyekiti wa TUGHE Ofisi ya Taifa ya Mashtaka Bw. Bashiru Njoki akiwa katika picha ya pamoja na Wajumbe wa Kikao cha Halmashauri ya  Chama cha Wafanyakazi wa Serikali (TUGHE) na Wanachama', 'Mwenyekiti wa TUGHE Ofisi ya Taifa ya Mashtaka Bw. Bashiru Njoki akiwa katika picha ya pamoja na Wajumbe wa Kikao cha Halmashauri ya  Chama cha Wafanyakazi wa Serikali (TUGHE) na Wanachama', 'Mwenyekiti wa TUGHE Ofisi ya Taifa ya Mashtaka Bw. Bashiru Njoki akiwa katika picha ya pamoja na Wajumbe wa Kikao cha Halmashauri ya  Chama cha Wafanyakazi wa Serikali (TUGHE) na Wanachama', 'Mwenyekiti wa TUGHE Ofisi ya Taifa ya Mashtaka Bw. Bashiru Njoki akiwa katika picha ya pamoja na Wajumbe wa Kikao cha Halmashauri ya  Chama cha Wafanyakazi wa Serikali (TUGHE) na Wanachama', 'image/jpeg', '/uploads/gallery/', '', '1667990445-_05A5079.JPG', '', '1667990445-05a5079-jpg', 0, 1, 1, '2022-11-09 07:40:45', '2022-11-09 07:40:45'),
(856, 'Mwenyekiti wa TUGHE Ofisi ya Taifa ya Mashtaka Bw. Bashiru Njoki akiwa katika picha ya pamoja na Wajumbe wa Kikao cha Halmashauri ya  Chama cha Wafanyakazi wa Serikali (TUGHE) na Wanachama', 'Mwenyekiti wa TUGHE Ofisi ya Taifa ya Mashtaka Bw. Bashiru Njoki akiwa katika picha ya pamoja na Wajumbe wa Kikao cha Halmashauri ya  Chama cha Wafanyakazi wa Serikali (TUGHE) na Wanachama', 'Mwenyekiti wa TUGHE Ofisi ya Taifa ya Mashtaka Bw. Bashiru Njoki akiwa katika picha ya pamoja na Wajumbe wa Kikao cha Halmashauri ya  Chama cha Wafanyakazi wa Serikali (TUGHE) na Wanachama', 'Mwenyekiti wa TUGHE Ofisi ya Taifa ya Mashtaka Bw. Bashiru Njoki akiwa katika picha ya pamoja na Wajumbe wa Kikao cha Halmashauri ya  Chama cha Wafanyakazi wa Serikali (TUGHE) na Wanachama', 'image/jpeg', '/uploads/gallery/', '', '1667990447-_05A5079.JPG', '', '1667990447-05a5079-jpg', 0, 1, 1, '2022-11-09 07:40:47', '2022-11-09 07:40:47'),
(858, 'Jaji wa Mahakama Kuu ya Tanzania Kanda ya Dodoma Mhe. George Masaju akiwasilisha mada juu ya Maandalizi ya Uendeshaji wa Mashauri ya Jinai kwenye Mafunzo kwa Waendesha Mashtaka na Wapelelezi', 'Jaji wa Mahakama Kuu ya Tanzania Kanda ya Dodoma Mhe. George Masaju akiwasilisha mada juu ya Maandalizi ya Uendeshaji wa Mashauri ya Jinai kwenye Mafunzo kwa Waendesha Mashtaka na Wapelelezi', 'Jaji wa Mahakama Kuu ya Tanzania Kanda ya Dodoma Mhe. George Masaju akiwasilisha mada juu ya Maandalizi ya Uendeshaji wa Mashauri ya Jinai kwenye Mafunzo kwa Waendesha Mashtaka na Wapelelezi', 'Jaji wa Mahakama Kuu ya Tanzania Kanda ya Dodoma Mhe. George Masaju akiwasilisha mada juu ya Maandalizi ya Uendeshaji wa Mashauri ya Jinai kwenye Mafunzo kwa Waendesha Mashtaka na Wapelelezi', 'image/jpeg', '/uploads/gallery/', '', '1667991545-_05A5216.JPG', '', '1667991545-05a5216-jpg', 0, 1, 1, '2022-11-09 07:59:05', '2022-11-09 07:59:05'),
(860, 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu ameshiriki na kufungua mafunzo ya Waendesha Mashtaka na Wapelelezi ambayo yalifanyika Jijini Dodoma.', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu ameshiriki na kufungua mafunzo ya Waendesha Mashtaka na Wapelelezi ambayo yalifanyika Jijini Dodoma.', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu ameshiriki na kufungua mafunzo ya Waendesha Mashtaka na Wapelelezi ambayo yalifanyika Jijini Dodoma.', 'Mkurugenzi wa Mashtaka Bw. Sylvester Mwakitalu ameshiriki na kufungua mafunzo ya Waendesha Mashtaka na Wapelelezi ambayo yalifanyika Jijini Dodoma.', 'image/jpeg', '/uploads/gallery/', '', '1667991733-_05A5130.JPG', '', '1667991733-05a5130-jpg', 0, 1, 1, '2022-11-09 08:02:13', '2022-11-09 08:02:13'),
(862, 'Jaji wa Mahakama Kuu ya Tanzania Kanda ya Dodoma Mhe. Dkt. Adam Mambi akiwasilisha mada juu ya Upelelezi, Usimamizi na Uendeshaji wa Mashauri ya Makosa ya Kimtandao na namna ya ushahidi wake unavyoweza kukubalika mahakamani', 'Jaji wa Mahakama Kuu ya Tanzania Kanda ya Dodoma Mhe. Dkt. Adam Mambi akiwasilisha mada juu ya Upelelezi, Usimamizi na Uendeshaji wa Mashauri ya Makosa ya Kimtandao na namna ya ushahidi wake unavyoweza kukubalika mahakamani', 'Jaji wa Mahakama Kuu ya Tanzania Kanda ya Dodoma Mhe. Dkt. Adam Mambi akiwasilisha mada juu ya Upelelezi, Usimamizi na Uendeshaji wa Mashauri ya Makosa ya Kimtandao na namna ya ushahidi wake unavyoweza kukubalika mahakamani', 'Jaji wa Mahakama Kuu ya Tanzania Kanda ya Dodoma Mhe. Dkt. Adam Mambi akiwasilisha mada juu ya Upelelezi, Usimamizi na Uendeshaji wa Mashauri ya Makosa ya Kimtandao na namna ya ushahidi wake unavyoweza kukubalika mahakamani', 'image/jpeg', '/uploads/gallery/', '', '1667991882-_05A5263.JPG', '', '1667991882-05a5263-jpg', 0, 1, 1, '2022-11-09 08:04:42', '2022-11-09 08:04:42'),
(864, 'Mkuu wa Mashtaka Mkoa wa Dodoma Bi. Catherine Gwaltu akieleza kwa ufupi dhumuni la kuandaa mafunzo kwa Waendesha Mashtaka na Wapelelezi  pamoja na kumkaribisha DPP Bw. Sylvester Mwakitalu kufungua mafunzo hayo', 'Mkuu wa Mashtaka Mkoa wa Dodoma Bi. Catherine Gwaltu akieleza kwa ufupi dhumuni la kuandaa mafunzo kwa Waendesha Mashtaka na Wapelelezi  pamoja na kumkaribisha DPP Bw. Sylvester Mwakitalu kufungua mafunzo hayo', 'Mkuu wa Mashtaka Mkoa wa Dodoma Bi. Catherine Gwaltu akieleza kwa ufupi dhumuni la kuandaa mafunzo kwa Waendesha Mashtaka na Wapelelezi  pamoja na kumkaribisha DPP Bw. Sylvester Mwakitalu kufungua mafunzo hayo', 'Mkuu wa Mashtaka Mkoa wa Dodoma Bi. Catherine Gwaltu akieleza kwa ufupi dhumuni la kuandaa mafunzo kwa Waendesha Mashtaka na Wapelelezi  pamoja na kumkaribisha DPP Bw. Sylvester Mwakitalu kufungua mafunzo hayo', 'image/jpeg', '/uploads/gallery/', '', '1667992022-_05A5101.JPG', '', '1667992022-05a5101-jpg', 0, 1, 1, '2022-11-09 08:07:02', '2022-11-09 08:07:02'),
(866, 'Washiriki wa Mafunzo ya Waendesha Mashtaka na Wapelelezi wakifuatilia kwa umakini mada mbalimbali zinazowasilishwa kwenye mafunzo hayo  yaliyofanyika Jijini Dodoma', 'Washiriki wa Mafunzo ya Waendesha Mashtaka na Wapelelezi wakifuatilia kwa umakini mada mbalimbali zinazowasilishwa kwenye mafunzo hayo  yaliyofanyika Jijini Dodoma', 'Washiriki wa Mafunzo ya Waendesha Mashtaka na Wapelelezi wakifuatilia kwa umakini mada mbalimbali zinazowasilishwa kwenye mafunzo hayo  yaliyofanyika Jijini Dodoma', 'Washiriki wa Mafunzo ya Waendesha Mashtaka na Wapelelezi wakifuatilia kwa umakini mada mbalimbali zinazowasilishwa kwenye mafunzo hayo  yaliyofanyika Jijini Dodoma', 'image/jpeg', '/uploads/gallery/', '', '1667992377-_05A5204.JPG', '', '1667992377-05a5204-jpg', 0, 1, 1, '2022-11-09 08:12:57', '2022-11-09 08:12:57'),
(868, 'Washiriki wa Mafunzo ya Waendesha Mashtaka na Wapelelezi wakifuatilia kwa umakini mada mbalimbali zinazowasilishwa kwenye mafunzo hayo  yaliyofanyika Jijini Dodoma', 'Washiriki wa Mafunzo ya Waendesha Mashtaka na Wapelelezi wakifuatilia kwa umakini mada mbalimbali zinazowasilishwa kwenye mafunzo hayo  yaliyofanyika Jijini Dodoma', 'Washiriki wa Mafunzo ya Waendesha Mashtaka na Wapelelezi wakifuatilia kwa umakini mada mbalimbali zinazowasilishwa kwenye mafunzo hayo  yaliyofanyika Jijini Dodoma', 'Washiriki wa Mafunzo ya Waendesha Mashtaka na Wapelelezi wakifuatilia kwa umakini mada mbalimbali zinazowasilishwa kwenye mafunzo hayo  yaliyofanyika Jijini Dodoma', 'image/jpeg', '/uploads/gallery/', '', '1667992464-_05A5239.JPG', '', '1667992464-05a5239-jpg', 0, 1, 1, '2022-11-09 08:14:24', '2022-11-09 08:14:24'),
(870, 'Picha ya pamoja ikijumuisha Majaji wa Mahakama Kuu ya Tanzania Kanda ya Dodoma Mhe. Dkt. Adam Mambi (katikati), Mhe. George Masaju (watatu kushoto),  Mhe. Dkt. Fatma Halfan (watatu kulia), DPP Bw. Sylvester Mwakitatu (wapili kushoto) wakiwa na  Waendesha ', 'Picha ya pamoja ikijumuisha Majaji wa Mahakama Kuu ya Tanzania Kanda ya Dodoma Mhe. Dkt. Adam Mambi (katikati), Mhe. George Masaju (watatu kushoto),  Mhe. Dkt. Fatma Halfan (watatu kulia), DPP Bw. Sylvester Mwakitatu (wapili kushoto) wakiwa na  Waendesha ', 'Picha ya pamoja ikijumuisha Majaji wa Mahakama Kuu ya Tanzania Kanda ya Dodoma Mhe. Dkt. Adam Mambi (katikati), Mhe. George Masaju (watatu kushoto),  Mhe. Dkt. Fatma Halfan (watatu kulia), DPP Bw. Sylvester Mwakitatu (wapili kushoto) wakiwa na  Waendesha Mashtaka pamoja na  Wapelelezi walioshiriki kwenye mafunzo yaliyofanyika Jijini Dodoma', 'Picha ya pamoja ikijumuisha Majaji wa Mahakama Kuu ya Tanzania Kanda ya Dodoma Mhe. Dkt. Adam Mambi (katikati), Mhe. George Masaju (watatu kushoto),  Mhe. Dkt. Fatma Halfan (watatu kulia), DPP Bw. Sylvester Mwakitatu (wapili kushoto) wakiwa na  Waendesha Mashtaka pamoja na  Wapelelezi walioshiriki kwenye mafunzo yaliyofanyika Jijini Dodoma', 'image/jpeg', '/uploads/gallery/', '', '1667992867-_05A5309.JPG', '', '1667992867-05a5309-jpg', 0, 1, 1, '2022-11-09 08:21:07', '2022-11-09 08:21:07'),
(872, 'Mkurugenzi wa Mashtaka  (kulia) akimkabidhi Mkuu wa Gereza la Mahabusu Segerea , moja kati ya magodoro na vitu vingine ikiwemo mashuka, sabuni, mafuta na taulo za kike zilizotolewa na  TBC kwa Ofisi ya Taifa   Mashtaka', 'Mkurugenzi wa Mashtaka  (kulia) akimkabidhi Mkuu wa Gereza la Mahabusu Segerea , moja kati ya magodoro na vitu vingine ikiwemo mashuka, sabuni, mafuta na taulo za kike zilizotolewa na  TBC kwa Ofisi ya Taifa   Mashtaka', 'Mkurugenzi wa Mashtaka  (kulia) akimkabidhi Mkuu wa Gereza la Mahabusu Segerea , moja kati ya magodoro na vitu vingine ikiwemo mashuka, sabuni, mafuta na taulo za kike zilizotolewa na  TBC kwa Ofisi ya Taifa   Mashtaka', 'Mkurugenzi wa Mashtaka  (kulia) akimkabidhi Mkuu wa Gereza la Mahabusu Segerea , moja kati ya magodoro na vitu vingine ikiwemo mashuka, sabuni, mafuta na taulo za kike zilizotolewa na  TBC kwa Ofisi ya Taifa   Mashtaka', 'image/jpeg', '/uploads/gallery/', '', '1667995218-IMG-20221103-WA0047.jpg', '', '1667995218-img-20221103-wa0047-jpg', 0, 1, 1, '2022-11-09 09:00:18', '2022-11-09 09:00:18'),
(876, 'Mkurugenzi wa Mashtaka Bw. Sylivester Mwakitalu akisalimiana na uongozi wa Gereza la Segerea mara baada ya kuwasili mahali hapo kwa lengo la kupokea na kukabidhi gerezani hapo vitu mbalimbali vya msaada vilivyotolewa na TBC', 'Mkurugenzi wa Mashtaka Bw. Sylivester Mwakitalu akisalimiana na uongozi wa Gereza la Segerea mara baada ya kuwasili mahali hapo kwa lengo la kupokea na kukabidhi gerezani hapo vitu mbalimbali vya msaada vilivyotolewa na TBC', 'Mkurugenzi wa Mashtaka Bw. Sylivester Mwakitalu akisalimiana na uongozi wa Gereza la Segerea mara baada ya kuwasili mahali hapo kwa lengo la kupokea na kukabidhi gerezani hapo vitu mbalimbali vya msaada vilivyotolewa na TBC', 'Mkurugenzi wa Mashtaka Bw. Sylivester Mwakitalu akisalimiana na uongozi wa Gereza la Segerea mara baada ya kuwasili mahali hapo kwa lengo la kupokea na kukabidhi gerezani hapo vitu mbalimbali vya msaada vilivyotolewa na TBC', 'image/jpeg', '/uploads/gallery/', '', '1667995998-IMG-20221103-WA0048.jpg', '', '1667995998-img-20221103-wa0048-jpg', 0, 1, 1, '2022-11-09 09:13:18', '2022-11-09 09:13:18'),
(878, '', '', 'The overall management and management of the National Prosecutor\'s Office, you would like to invite all stakeholders to the office of the Office. This site is dedicated to technical and you would like to invite all stakeholders to the office of the Office.', 'The overall management and management of the National Prosecutor\'s Office, you would like to invite all stakeholders to the office of the Office. This site is dedicated to technical and you would like to invite all stakeholders to the office of the Office.', 'images/jpeg', '/uploads/gallery/', '', '530cd4fe7150178f4f1899961d4f4267.jpeg', '', '530cd4fe7150178f4f1899961d4f4267-jpeg', 0, 25, 1, '2023-02-02 12:30:55', '2023-02-02 12:40:55'),
(879, '', '', 'TTYTYYUIIKKIK', 'RRRRRR', 'images/jpeg', '/uploads/gallery/', '', '013f695863a6faec273cb0e07741e9e9.jpeg', '', '013f695863a6faec273cb0e07741e9e9-jpeg', 0, 25, 1, '2023-02-02 12:36:16', '2023-02-02 12:36:16'),
(880, '', '', 'RRRRRRRRRRRRRRRRRRRRRRR', 'RRRRRRRRRRRRRRRRRRRRR', 'images/jpeg', '/uploads/gallery/', '', '63ec0542ffdb9aba9ac492e7284a13f4.jpeg', '', '159194f01f9ac359185036564afa92dc-jpeg', 0, 26, 1, '2023-02-02 12:50:59', '2023-02-02 13:04:22'),
(881, '', '', 'CCCCCCC', 'FFFFF', 'images/jpeg', '/uploads/gallery/', '', 'c451f3606a99cfeb395e06cfe0e02718.jpeg', '', 'c451f3606a99cfeb395e06cfe0e02718-jpeg', 0, 26, 1, '2023-02-02 12:55:26', '2023-02-02 12:55:26'),
(882, '', '', 'HHHHHHHHHHHHHHHHHHHHHH', 'HHHHHHHHHHHHHHHHH', 'images/jpeg', '/uploads/gallery/', '', 'cfc98fb25ff76e3462914fb6b7be150b.jpeg', '', 'cfc98fb25ff76e3462914fb6b7be150b-jpeg', 0, 26, 1, '2023-02-02 13:09:03', '2023-02-02 13:09:03'),
(883, '', '', 'demo', 'demo', 'images/jpeg', '/uploads/gallery/', '', 'e83e6fd353a6d18256fc0ff716f3e899.jpeg', '', 'a80def5e8dcd119ae2f796ee7472ca24-jpeg', 0, 26, 1, '2023-02-02 13:17:12', '2023-02-03 06:55:31'),
(884, '', '', '', '', 'images/jpg', '/uploads/gallery/', '', '637051df5e39d09ce80ee29f8e7938ae.jpg', '', '637051df5e39d09ce80ee29f8e7938ae-jpg', 0, 27, 1, '2025-05-30 14:13:07', '2025-05-30 14:13:07'),
(885, '', '', '', '', 'images/jpg', '/uploads/gallery/', '', '951dc6219eac3b384bc806d5d56b8d0e.jpg', '', '951dc6219eac3b384bc806d5d56b8d0e-jpg', 0, 27, 1, '2025-05-30 14:13:08', '2025-05-30 14:13:08'),
(886, '', '', '', '', 'images/jpg', '/uploads/gallery/', '', '498510e17c0feeb17ef0a4ba59d7812e.jpg', '', '498510e17c0feeb17ef0a4ba59d7812e-jpg', 0, 27, 1, '2025-05-30 14:13:09', '2025-05-30 14:13:09');

-- --------------------------------------------------------

--
-- Table structure for table `media_links`
--

CREATE TABLE `media_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) NOT NULL,
  `title_en` varchar(191) DEFAULT NULL,
  `url` varchar(191) NOT NULL,
  `link` tinyint(4) DEFAULT NULL,
  `url_external` varchar(191) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_links`
--

INSERT INTO `media_links` (`id`, `title_sw`, `title_en`, `url`, `link`, `url_external`, `active`, `created_at`, `updated_at`, `parent`, `position`) VALUES
(1, 'Press Releases', 'Press Releases', 'press-releases', NULL, NULL, 1, '2021-07-28 06:16:15', '2022-06-22 13:45:18', 0, 5),
(2, 'Hotuba', 'Speeches', 'speeches', NULL, NULL, 1, '2021-07-28 06:16:48', '2022-06-22 13:45:18', 0, 1),
(4, 'Magazines', 'Magazines', 'publications/magazines', NULL, NULL, 1, '2021-07-28 06:17:43', '2022-06-22 13:45:18', 0, 4),
(5, 'News in Brief', 'News in Brief', 'news', NULL, NULL, 1, '2021-07-28 06:18:04', '2022-06-22 13:45:18', 0, 2),
(7, 'Maktaba ya Video', 'Video Gallery', 'galleries/listing/videos', NULL, NULL, 1, '2022-06-22 13:43:29', '2022-06-22 13:45:18', 0, 3),
(8, 'Maktaba ya Picha', 'Photo Gallery', 'galleries/listing/photos', NULL, NULL, 1, '2022-06-22 13:43:29', '2022-06-22 13:45:18', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) NOT NULL,
  `title_en` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `category` varchar(191) NOT NULL DEFAULT 'main_nav',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title_sw`, `title_en`, `status`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Top Menu', 'Top Menu', 1, 'top_menu', '2021-07-28 05:15:07', '2021-10-29 09:46:29'),
(4, 'Footer Menu', 'Footer Menu', 1, 'footer_menu', '2021-08-10 03:45:27', '2021-08-10 03:45:27'),
(8, 'Main Menu', 'Main Menu', 1, 'main_nav', '2022-03-07 10:24:00', '2022-03-07 10:24:00');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) NOT NULL,
  `title_en` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(191) NOT NULL,
  `url_external` text DEFAULT NULL,
  `link` tinyint(1) NOT NULL DEFAULT 1,
  `parent` int(10) UNSIGNED NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `has_sidebar` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(68, '2020_06_14_082300_permission', 1),
(69, '2023_01_10_104956_create_financial_years_table', 2),
(70, '2023_01_10_105445_create_achievement_types_table', 2),
(71, '2023_01_10_105533_create_nps_achievements_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 3),
(1, 'App\\Models\\User', 5),
(1, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Table structure for table `more_infos`
--

CREATE TABLE `more_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) NOT NULL,
  `title_en` varchar(191) DEFAULT NULL,
  `summary_sw` text DEFAULT NULL,
  `summary_en` text DEFAULT NULL,
  `content_sw` text DEFAULT NULL,
  `content_en` text DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `item_name` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `photo_url` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `more_infos`
--

INSERT INTO `more_infos` (`id`, `title_sw`, `title_en`, `summary_sw`, `summary_en`, `content_sw`, `content_en`, `active`, `item_name`, `user_id`, `slug`, `photo_url`, `created_at`, `updated_at`) VALUES
(1, 'About TIRA', 'About TIRA', '', NULL, NULL, NULL, 1, 'about-tira', 1, 'about-tira', '5f0814d557088a67edbbe7b8a2ea1fa5.jpeg', '2021-08-02 02:58:21', '2022-06-21 03:54:30'),
(2, 'Consumer Services', 'Consumer Services', '', NULL, NULL, NULL, 1, 'consumer-services', 1, 'Consumer Services', '19c85af6feaf700d95b0653f677ebdf9.jpeg', '2021-09-02 02:58:21', '2022-06-21 03:53:48'),
(3, 'Licensed Entities', 'Licensed Entities', '', NULL, NULL, NULL, 1, 'licensed-entities', 1, 'licensed-entities', '295ef015dd5970f514a905c3dd448b42.jpeg', '2021-09-02 02:58:21', '2022-08-07 13:20:41'),
(4, 'Public Relations', 'Public Relations', '', NULL, NULL, NULL, 1, 'public-relations', 1, 'public-relations', '0827f01aa035a8bd7cd2e301c92b31f8.jpeg', '2022-01-02 02:58:21', '2022-08-24 11:23:06'),
(6, 'Members, meet esteemed Coders', 'Members, meet Our esteemed Coders', NULL, NULL, '<p>eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,</p>', '<p>eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,</p>', 1, 'members-section', 1, NULL, NULL, '2022-08-10 17:16:50', '2022-10-17 01:40:50'),
(7, 'Swahili Coder Projects & Information Systems', 'Swahili Coder Projects & Information Systems', NULL, NULL, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur&nbsp;&nbsp;</p>', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur&nbsp;&nbsp;</p>', 1, 'projects-section', 1, NULL, NULL, '2022-08-10 17:19:18', '2022-10-16 09:12:32'),
(8, 'Keeping up with Swahili Coders, Latest News', 'Keeping up with Swahili Coders, Latest News', NULL, NULL, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium</p>', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium&nbsp;</p>', 1, 'news-section', 1, NULL, NULL, '2022-08-10 17:22:17', '2022-10-16 09:11:38'),
(9, 'Our Partners Across the World', 'Our Partners Across the World', NULL, NULL, '<p>eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error,</p>', '<p>eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error,</p>', 1, 'partners-section', 1, NULL, NULL, '2022-08-10 20:39:10', '2022-10-17 14:36:20'),
(10, 'Swahili Coders Community', 'Swahili Coders Community', NULL, NULL, '<p>harum nesciunt ipsum debitis quas aliquid. Reprehenderit, quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam recusandae alias error harum maxime adipisci amet laborum. Perspiciatis minima nesciunt dolorem! Officiis iure rerum voluptates a cumque velit quibusdam sed amet tempora. Sit laborum ab, eius fugit doloribus tenetur fugiat, temporibus enim commodi iusto libero magni&nbsp;&nbsp;</p>', '<p>harum nesciunt ipsum debitis quas aliquid. Reprehenderit, quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam recusandae alias error harum maxime adipisci amet laborum. Perspiciatis minima nesciunt dolorem! Officiis iure rerum voluptates a cumque velit quibusdam sed amet tempora. Sit laborum ab, eius fugit doloribus tenetur fugiat, temporibus enim commodi iusto libero magni&nbsp;&nbsp;</p>', 1, 'community-section', 1, NULL, NULL, '2022-08-10 20:39:10', '2022-10-17 01:55:28');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) NOT NULL,
  `title_en` varchar(191) DEFAULT NULL,
  `summary_sw` text NOT NULL,
  `summary_en` text DEFAULT NULL,
  `content_sw` text NOT NULL,
  `content_en` text DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `photo_url` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title_sw`, `title_en`, `summary_sw`, `summary_en`, `content_sw`, `content_en`, `active`, `user_id`, `slug`, `photo_url`, `created_at`, `updated_at`) VALUES
(169, 'Lorem Ipsum', 'Lorem Ipsum', '', NULL, '<h1>Lorem Ipsum</h1>', '<h1>Lorem Ipsum</h1>', 1, 6, 'lorem-ipsum', '4a06cfd16134acd4bb38ae2f71e86b42.jpeg', '2025-05-30 14:39:44', '2025-05-30 14:39:44'),
(170, 'Lorem Ipsum', 'Lorem Ipsum', '', NULL, '<h1>Lorem Ipsum</h1>', '<h1>Lorem Ipsum</h1>', 1, 6, 'lorem-ipsum-2', 'e1aa9e1823cce56e57dfd63c1a009fb7.jpeg', '2025-05-30 14:40:25', '2025-05-30 14:40:25'),
(171, 'Lorem Ipsum', 'Lorem Ipsum', '', NULL, '<h1>Lorem Ipsum</h1>', '<h1>Lorem Ipsum</h1>', 1, 6, 'lorem-ipsum-3', '388f3236428c8a5d35aef54c25a6790c.jpeg', '2025-05-30 14:41:09', '2025-05-30 14:41:09');

-- --------------------------------------------------------

--
-- Table structure for table `nps_achievements`
--

CREATE TABLE `nps_achievements` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fin_year_id` int(10) UNSIGNED NOT NULL,
  `achievement_type_id` int(10) UNSIGNED NOT NULL,
  `count` bigint(20) NOT NULL,
  `status` int(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nps_achievements`
--

INSERT INTO `nps_achievements` (`id`, `created_at`, `updated_at`, `fin_year_id`, `achievement_type_id`, `count`, `status`) VALUES
(2, '2023-01-10 08:54:05', '2023-01-10 11:11:05', 1, 1, 23, 1),
(3, '2023-01-10 09:29:09', '2023-01-10 09:29:09', 1, 2, 230, 1),
(4, '2023-01-10 09:43:55', '2023-01-10 09:44:09', 1, 3, 300, 1),
(6, '2023-01-10 10:37:38', '2023-01-10 10:37:38', 1, 4, 500, 1),
(7, '2023-01-10 10:38:02', '2023-01-10 10:38:02', 2, 1, 200, 1),
(8, '2023-01-10 10:38:16', '2023-01-10 10:38:16', 2, 2, 300, 1),
(9, '2023-02-02 13:33:44', '2023-02-02 13:34:19', 2, 4, 103, 1);

-- --------------------------------------------------------

--
-- Table structure for table `online_services`
--

CREATE TABLE `online_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) NOT NULL,
  `title_en` varchar(191) DEFAULT NULL,
  `url` varchar(191) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `online_services`
--

INSERT INTO `online_services` (`id`, `title_sw`, `title_en`, `url`, `active`, `created_at`, `updated_at`, `parent`, `position`) VALUES
(1, 'TIC', 'TIC', 'http://tic.go.tz', 1, '2021-07-28 06:16:15', '2021-08-09 12:30:37', 0, 3),
(2, 'PMO Uwekezaji', 'PMO Uwekezaji', 'http://pmo.go.tz', 1, '2021-07-28 06:16:48', '2021-08-09 12:30:38', 0, 6),
(3, 'TPSF', 'TPSF', 'http://tpsf.go.tz', 1, '2021-07-28 06:17:24', '2021-08-09 12:30:37', 0, 2),
(4, 'TRA', 'TRA', 'http://trc.go.tz', 1, '2021-07-28 06:17:43', '2021-08-09 12:30:37', 0, 4),
(5, 'Viwanda na Biashara', 'Viwanda na Biashara', 'http://wiwanda.com', 1, '2021-07-28 06:18:04', '2021-08-09 12:30:38', 0, 5),
(6, 'TNBP', 'TNBP', 'http://tnbp.go.tz', 1, '2021-07-28 06:18:36', '2022-02-10 12:28:02', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `operators`
--

CREATE TABLE `operators` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `address` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `operators`
--

INSERT INTO `operators` (`id`, `name`, `phone`, `email`, `address`, `active`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'guleay lorem', '0692261056', 'engotheta@gmail.com', 'P.0 58725', 1, 'luceedb-lorem', '2022-06-30 19:30:16', '2022-06-30 19:30:16'),
(3, 'kayce dev', '0692261056', 'beta@gmail.com', 'P.0 58725', 1, 'luceedb-lorem', '2022-06-30 19:30:16', '2022-06-30 19:30:16'),
(4, 'shezy benl', '0692261057', 'tups@gmail.com', 'P.0 58725', 1, 'luceedb-lorem', '2022-06-30 19:30:16', '2022-06-30 19:30:16');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) NOT NULL,
  `title_en` varchar(191) DEFAULT NULL,
  `has_sidebar` smallint(1) NOT NULL DEFAULT 0,
  `content_sw` text NOT NULL,
  `content_en` text DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page_categories`
--

CREATE TABLE `page_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) NOT NULL,
  `title_en` varchar(191) DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `modifiable` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) NOT NULL,
  `title_en` varchar(191) DEFAULT NULL,
  `summary_sw` text NOT NULL,
  `summary_en` text DEFAULT NULL,
  `content_sw` text DEFAULT NULL,
  `content_en` text DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `url` varchar(191) NOT NULL,
  `position` int(4) NOT NULL DEFAULT 1,
  `photo_url` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `title_sw`, `title_en`, `summary_sw`, `summary_en`, `content_sw`, `content_en`, `active`, `user_id`, `slug`, `url`, `position`, `photo_url`, `created_at`, `updated_at`) VALUES
(3, 'Google', 'Google', '', NULL, '<p>Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;</p>', '<p>Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;</p>', 1, 1, 'changes-in-second-stakeholders-general-meeting-2', 'https://www.google.com', 3, '32817c61f3286fd0d9e6a9699ca34548', '2021-09-02 02:58:21', '2022-10-15 12:31:37'),
(4, 'Microsoft', 'Microsoft', '', NULL, '<p>Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;</p>', '<p>Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;</p>', 1, 1, 'changes-in-second-stakeholders-general-meeting-3', 'https://www.microsoft.com/', 2, 'a505c8a1df292335bee3b57c18aa90e1', '2022-01-02 02:58:21', '2022-10-15 12:30:53'),
(5, 'Amazon', 'Amazon', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis consequat cursus. Nam id justo non turpis gravida dapibus. Cras a facilisis odio, quis accumsan diam. Sed sem neque, pharetra sit amet iaculis et, ullamcorper et risus. Morbi blandit nibh risus, et dignissim dui iaculis sit amet. In convallis lectus vitae tellus malesuada sodales. Sed iaculis aliquam magna at dictum. Aenean pharetra ligula massa, vel fermentum elit elementum pharetra. Integer et viverra purus. Donec molestie ante molestie fringilla scelerisque.</p>\r\n\r\n<p>Donec auctor, enim eleifend fermentum commodo, nisl eros malesuada lorem, eu suscipit ex est vitae lacus. Nullam euismod velit at velit mattis, vel mattis augue fringilla. Nam scelerisque eu quam varius gravida. Sed in ultrices justo, id tristique magna. Maecenas aliquet accumsan volutpat. Quisque commodo nisi at tortor rutrum consectetur. Nunc euismod, turpis ut rhoncus egestas, augue erat eleifend justo, nec vulputate sapien nisi non risus. Nullam eleifend placerat lorem, non vulputate tortor bibendum sed. Duis quis pharetra urna. Ut condimentum, ligula ut auctor malesuada, mi nulla efficitur velit, et eleifend neque mauris nec odio. Mauris a nunc felis. Cras quis leo dictum, rutrum nibh non, venenatis odio. Nam porttitor eros sed ipsum cursus, vitae pellentesque leo feugiat. Morbi magna leo, vehicula sed nisl eget, faucibus sollicitudin erat.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis consequat cursus. Nam id justo non turpis gravida dapibus. Cras a facilisis odio, quis accumsan diam. Sed sem neque, pharetra sit amet iaculis et, ullamcorper et risus. Morbi blandit nibh risus, et dignissim dui iaculis sit amet. In convallis lectus vitae tellus malesuada sodales. Sed iaculis aliquam magna at dictum. Aenean pharetra ligula massa, vel fermentum elit elementum pharetra. Integer et viverra purus. Donec molestie ante molestie fringilla scelerisque.</p>\r\n\r\n<p>Donec auctor, enim eleifend fermentum commodo, nisl eros malesuada lorem, eu suscipit ex est vitae lacus. Nullam euismod velit at velit mattis, vel mattis augue fringilla. Nam scelerisque eu quam varius gravida. Sed in ultrices justo, id tristique magna. Maecenas aliquet accumsan volutpat. Quisque commodo nisi at tortor rutrum consectetur. Nunc euismod, turpis ut rhoncus egestas, augue erat eleifend justo, nec vulputate sapien nisi non risus. Nullam eleifend placerat lorem, non vulputate tortor bibendum sed. Duis quis pharetra urna. Ut condimentum, ligula ut auctor malesuada, mi nulla efficitur velit, et eleifend neque mauris nec odio. Mauris a nunc felis. Cras quis leo dictum, rutrum nibh non, venenatis odio. Nam porttitor eros sed ipsum cursus, vitae pellentesque leo feugiat. Morbi magna leo, vehicula sed nisl eget, faucibus sollicitudin erat.</p>', 1, 1, 'lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-donec-mollis-consequat', 'http://amazon.co.uk', 1, 'b52c3e2a4cc7eb8e7ad39c875584e422', '2022-01-08 13:30:30', '2022-10-15 12:30:04');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'cms.cms.dashboard.view-dashboard', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(2, 'cms.backgrounds.index', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(3, 'cms.backgrounds.create', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(4, 'cms.backgrounds.store', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(5, 'cms.backgrounds.show', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(6, 'cms.backgrounds.edit', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(7, 'cms.backgrounds.update', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(8, 'cms.backgrounds.destroy', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(9, 'cms.services.index', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(10, 'cms.services.create', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(11, 'cms.services.store', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(12, 'cms.services.show', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(13, 'cms.services.edit', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(14, 'cms.services.update', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(15, 'cms.services.destroy', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(16, 'cms.seo.index', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(17, 'cms.seo.create', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(18, 'cms.seo.store', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(19, 'cms.seo.show', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(20, 'cms.seo.edit', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(21, 'cms.seo.update', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(22, 'cms.seo.destroy', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(23, 'cms.preferences.index', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(24, 'cms.preferences.create', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(25, 'cms.preferences.store', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(26, 'cms.preferences.show', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(27, 'cms.preferences.edit', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(28, 'cms.preferences.update', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(29, 'cms.preferences.destroy', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(30, 'cms.faqs.index', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(31, 'cms.faqs.create', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(32, 'cms.faqs.store', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(33, 'cms.faqs.show', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(34, 'cms.faqs.edit', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(35, 'cms.faqs.update', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(36, 'cms.faqs.destroy', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(37, 'cms.news.index', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(38, 'cms.news.create', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(39, 'cms.news.store', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(40, 'cms.news.show', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(41, 'cms.news.edit', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(42, 'cms.news.update', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(43, 'cms.news.destroy', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(44, 'cms.events.index', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(45, 'cms.events.create', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(46, 'cms.events.store', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(47, 'cms.events.show', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(48, 'cms.events.edit', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(49, 'cms.events.update', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(50, 'cms.events.destroy', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(51, 'cms.regional_office.index', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(52, 'cms.regional_office.create', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(53, 'cms.regional_office.store', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(54, 'cms.regional_office.show', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(55, 'cms.regional_office.edit', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(56, 'cms.regional_office.update', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(57, 'cms.regional_office.destroy', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(58, 'cms.complaints.index', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(59, 'cms.complaints.create', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(60, 'cms.complaints.store', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(61, 'cms.complaints.show', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(62, 'cms.complaints.edit', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(63, 'cms.complaints.update', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(64, 'cms.complaints.destroy', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(65, 'cms.related_links.index', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(66, 'cms.related_links.create', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(67, 'cms.related_links.store', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(68, 'cms.related_links.show', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(69, 'cms.related_links.edit', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(70, 'cms.related_links.update', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(71, 'cms.related_links.destroy', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(72, 'cms.social_links.index', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(73, 'cms.social_links.create', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(74, 'cms.social_links.store', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(75, 'cms.social_links.show', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(76, 'cms.social_links.edit', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(77, 'cms.social_links.update', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(78, 'cms.social_links.destroy', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(79, 'cms.about_links.index', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(80, 'cms.about_links.create', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(81, 'cms.about_links.store', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(82, 'cms.about_links.show', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(83, 'cms.about_links.edit', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(84, 'cms.about_links.update', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(85, 'cms.about_links.destroy', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(86, 'cms.support_links.index', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(87, 'cms.support_links.create', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(88, 'cms.support_links.store', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(89, 'cms.support_links.show', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(90, 'cms.support_links.edit', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(91, 'cms.support_links.update', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(92, 'cms.support_links.destroy', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(93, 'cms.googlemaps.index', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(94, 'cms.googlemaps.create', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(95, 'cms.googlemaps.store', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(96, 'cms.googlemaps.show', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(97, 'cms.googlemaps.edit', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(98, 'cms.googlemaps.update', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(99, 'cms.googlemaps.destroy', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(100, 'cms.welcome.index', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(101, 'cms.welcome.create', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(102, 'cms.welcome.store', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(103, 'cms.welcome.show', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(104, 'cms.welcome.edit', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(105, 'cms.welcome.update', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(106, 'cms.welcome.destroy', 'web', '2022-03-11 04:11:10', '2022-03-11 04:11:10'),
(107, 'cms.announcements.index', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(108, 'cms.announcements.create', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(109, 'cms.announcements.store', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(110, 'cms.announcements.show', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(111, 'cms.announcements.edit', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(112, 'cms.announcements.update', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(113, 'cms.announcements.destroy', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(114, 'cms.press_releases.index', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(115, 'cms.press_releases.create', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(116, 'cms.press_releases.store', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(117, 'cms.press_releases.show', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(118, 'cms.press_releases.edit', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(119, 'cms.press_releases.update', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(120, 'cms.press_releases.destroy', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(121, 'cms.speeches.index', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(122, 'cms.speeches.create', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(123, 'cms.speeches.store', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(124, 'cms.speeches.show', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(125, 'cms.speeches.edit', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(126, 'cms.speeches.update', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(127, 'cms.speeches.destroy', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(128, 'cms.administration.index', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(129, 'cms.administration.create', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(130, 'cms.administration.store', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(131, 'cms.administration.show', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(132, 'cms.administration.edit', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(133, 'cms.administration.update', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(134, 'cms.administration.destroy', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(135, 'cms.administration_categories.index', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(136, 'cms.administration_categories.create', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(137, 'cms.administration_categories.store', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(138, 'cms.administration_categories.show', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(139, 'cms.administration_categories.edit', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(140, 'cms.administration_categories.update', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(141, 'cms.administration_categories.destroy', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(142, 'cms.administration_categories_members.store', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(143, 'cms.administration_categories_members.update', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(144, 'cms.administration_categories_members.destroy', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(145, 'cms.document-categories.index', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(146, 'cms.document-categories.create', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(147, 'cms.document-categories.store', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(148, 'cms.document-categories.show', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(149, 'cms.document-categories.edit', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(150, 'cms.document-categories.update', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(151, 'cms.document-categories.destroy', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(152, 'cms.documents.index', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(153, 'cms.documents.create', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(154, 'cms.documents.store', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(155, 'cms.documents.show', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(156, 'cms.documents.edit', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(157, 'cms.documents.update', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(158, 'cms.documents.destroy', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(159, 'cms.quickinfos.index', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(160, 'cms.quickinfos.create', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(161, 'cms.quickinfos.store', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(162, 'cms.quickinfos.show', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(163, 'cms.quickinfos.edit', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(164, 'cms.quickinfos.update', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(165, 'cms.quickinfos.destroy', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(166, 'cms.translations.index', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(167, 'cms.translations.create', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(168, 'cms.translations.store', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(169, 'cms.translations.show', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(170, 'cms.translations.destroy', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(171, 'cms.translations.update', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(172, 'cms.menu.index', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(173, 'cms.menu.create', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(174, 'cms.menu.store', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(175, 'cms.menu.show', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(176, 'cms.menu.edit', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(177, 'cms.menu.update', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(178, 'cms.menu.destroy', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(179, 'cms.', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(180, 'cms.menu-items.create', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(181, 'cms.menu-items.store', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(182, 'cms.menu-items.show', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(183, 'cms.menu-items.update', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(184, 'cms.menu-items.destroy', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(185, 'cms.menu-items.index', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(186, 'cms.menu-items.ajax-update', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(187, 'cms.menu-items.ajax-link-update', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(188, 'cms.galleries.index', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(189, 'cms.galleries.create', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(190, 'cms.galleries.store', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(191, 'cms.galleries.show', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(192, 'cms.galleries.edit', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(193, 'cms.galleries.update', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(194, 'cms.galleries.destroy', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(195, 'cms.media.create', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(196, 'cms.media.store', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(197, 'cms.media.show', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(198, 'cms.media.edit', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(199, 'cms.media.update', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(200, 'cms.media.destroy', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(201, 'cms.media.transfer-media', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(202, 'cms.media.transfer-gallery', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(203, 'cms.media.index', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(204, 'cms.media.bulk', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(205, 'cms.media.bulk-upload-images', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(206, 'cms.pages.index', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(207, 'cms.pages.create', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(208, 'cms.pages.store', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(209, 'cms.pages.show', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(210, 'cms.pages.edit', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(211, 'cms.pages.update', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(212, 'cms.pages.destroy', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(213, 'cms.roles.index', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(214, 'cms.roles.store', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(215, 'cms.roles.show', 'web', '2022-03-11 04:11:11', '2022-03-11 04:11:11'),
(216, 'cms.roles.edit', 'web', '2022-03-11 04:11:12', '2022-03-11 04:11:12'),
(217, 'cms.roles.update', 'web', '2022-03-11 04:11:12', '2022-03-11 04:11:12'),
(218, 'cms.roles.destroy', 'web', '2022-03-11 04:11:12', '2022-03-11 04:11:12'),
(219, 'cms.cms.text-editor.upload', 'web', '2022-03-11 04:11:12', '2022-03-11 04:11:12'),
(220, 'cms.cms.text-editor.upload_file', 'web', '2022-03-11 04:11:12', '2022-03-11 04:11:12'),
(221, 'cms.cms.text-editor.getimages', 'web', '2022-03-11 04:11:12', '2022-03-11 04:11:12'),
(222, 'cms.cms.text-editor.getfiles', 'web', '2022-03-11 04:11:12', '2022-03-11 04:11:12'),
(223, 'cms.cms.text-editor.delete_file', 'web', '2022-03-11 04:11:12', '2022-03-11 04:11:12'),
(224, 'cms.users.create-user-form', 'web', '2022-03-11 04:11:12', '2022-03-11 04:11:12'),
(225, 'cms.users.edit-user', 'web', '2022-03-11 04:11:12', '2022-03-11 04:11:12'),
(226, 'cms.users.update-user', 'web', '2022-03-11 04:11:12', '2022-03-11 04:11:12'),
(227, 'cms.users.destroy', 'web', '2022-03-11 04:11:12', '2022-03-11 04:11:12'),
(228, 'cms.users.create-user', 'web', '2022-03-11 04:11:12', '2022-03-11 04:11:12'),
(229, 'cms.users.user-roles-form', 'web', '2022-03-11 04:11:12', '2022-03-11 04:11:12'),
(230, 'cms.users.update-user-roles', 'web', '2022-03-11 04:11:12', '2022-03-11 04:11:12'),
(231, 'cms.users.user-permissions-form', 'web', '2022-03-11 04:11:12', '2022-03-11 04:11:12'),
(232, 'cms.users.update-user-permissions', 'web', '2022-03-11 04:11:12', '2022-03-11 04:11:12'),
(233, 'cms.users.user-change-password-form', 'web', '2022-03-11 04:11:12', '2022-03-11 04:11:12'),
(234, 'cms.users.user-change-password', 'web', '2022-03-11 04:11:12', '2022-03-11 04:11:12'),
(235, 'cms.dg_messages.index', 'web', '2022-06-14 13:53:44', '2022-06-14 13:53:44'),
(236, 'cms.dg_messages.create', 'web', '2022-06-14 13:53:44', '2022-06-14 13:53:44'),
(237, 'cms.dg_messages.store', 'web', '2022-06-14 13:53:44', '2022-06-14 13:53:44'),
(238, 'cms.dg_messages.show', 'web', '2022-06-14 13:53:44', '2022-06-14 13:53:44'),
(239, 'cms.dg_messages.edit', 'web', '2022-06-14 13:53:45', '2022-06-14 13:53:45'),
(240, 'cms.dg_messages.update', 'web', '2022-06-14 13:53:45', '2022-06-14 13:53:45'),
(241, 'cms.dg_messages.destroy', 'web', '2022-06-14 13:53:45', '2022-06-14 13:53:45'),
(242, 'cms.online_services.index', 'web', '2022-06-14 13:57:09', '2022-06-14 13:57:09'),
(243, 'cms.online_services.create', 'web', '2022-06-14 13:57:09', '2022-06-14 13:57:09'),
(244, 'cms.online_services.store', 'web', '2022-06-14 13:57:09', '2022-06-14 13:57:09'),
(245, 'cms.online_services.show', 'web', '2022-06-14 13:57:09', '2022-06-14 13:57:09'),
(246, 'cms.online_services.edit', 'web', '2022-06-14 13:57:09', '2022-06-14 13:57:09'),
(247, 'cms.online_services.update', 'web', '2022-06-14 13:57:09', '2022-06-14 13:57:09'),
(248, 'cms.online_services.destroy', 'web', '2022-06-14 13:57:10', '2022-06-14 13:57:10'),
(249, 'cms.howdois.index', 'web', '2022-06-14 13:57:10', '2022-06-14 13:57:10'),
(250, 'cms.howdois.create', 'web', '2022-06-14 13:57:10', '2022-06-14 13:57:10'),
(251, 'cms.howdois.store', 'web', '2022-06-14 13:57:10', '2022-06-14 13:57:10'),
(252, 'cms.howdois.show', 'web', '2022-06-14 13:57:10', '2022-06-14 13:57:10'),
(253, 'cms.howdois.edit', 'web', '2022-06-14 13:57:10', '2022-06-14 13:57:10'),
(254, 'cms.howdois.update', 'web', '2022-06-14 13:57:10', '2022-06-14 13:57:10'),
(255, 'cms.howdois.destroy', 'web', '2022-06-14 13:57:10', '2022-06-14 13:57:10'),
(256, 'cms.quotes.index', 'web', '2022-06-14 13:57:11', '2022-06-14 13:57:11'),
(257, 'cms.quotes.create', 'web', '2022-06-14 13:57:11', '2022-06-14 13:57:11'),
(258, 'cms.quotes.store', 'web', '2022-06-14 13:57:11', '2022-06-14 13:57:11'),
(259, 'cms.quotes.show', 'web', '2022-06-14 13:57:11', '2022-06-14 13:57:11'),
(260, 'cms.quotes.edit', 'web', '2022-06-14 13:57:11', '2022-06-14 13:57:11'),
(261, 'cms.quotes.update', 'web', '2022-06-14 13:57:11', '2022-06-14 13:57:11'),
(262, 'cms.quotes.destroy', 'web', '2022-06-14 13:57:11', '2022-06-14 13:57:11'),
(263, 'cms.campaigns.index', 'web', '2022-06-21 16:21:29', '2022-06-21 16:21:29'),
(264, 'cms.campaigns.create', 'web', '2022-06-21 16:21:29', '2022-06-21 16:21:29'),
(265, 'cms.campaigns.store', 'web', '2022-06-21 16:21:29', '2022-06-21 16:21:29'),
(266, 'cms.campaigns.show', 'web', '2022-06-21 16:21:29', '2022-06-21 16:21:29'),
(267, 'cms.campaigns.edit', 'web', '2022-06-21 16:21:30', '2022-06-21 16:21:30'),
(268, 'cms.campaigns.update', 'web', '2022-06-21 16:21:30', '2022-06-21 16:21:30'),
(269, 'cms.campaigns.destroy', 'web', '2022-06-21 16:21:30', '2022-06-21 16:21:30'),
(270, 'cms.quick_links.index', 'web', '2022-06-22 13:42:47', '2022-06-22 13:42:47'),
(271, 'cms.quick_links.create', 'web', '2022-06-22 13:42:47', '2022-06-22 13:42:47'),
(272, 'cms.quick_links.store', 'web', '2022-06-22 13:42:47', '2022-06-22 13:42:47'),
(273, 'cms.quick_links.show', 'web', '2022-06-22 13:42:47', '2022-06-22 13:42:47'),
(274, 'cms.quick_links.edit', 'web', '2022-06-22 13:42:47', '2022-06-22 13:42:47'),
(275, 'cms.quick_links.update', 'web', '2022-06-22 13:42:47', '2022-06-22 13:42:47'),
(276, 'cms.quick_links.destroy', 'web', '2022-06-22 13:42:47', '2022-06-22 13:42:47'),
(277, 'cms.hospitals.index', 'web', '2022-06-24 17:55:18', '2022-06-24 17:55:18'),
(278, 'cms.hospitals.create', 'web', '2022-06-24 17:55:18', '2022-06-24 17:55:18'),
(279, 'cms.hospitals.store', 'web', '2022-06-24 17:55:18', '2022-06-24 17:55:18'),
(280, 'cms.hospitals.show', 'web', '2022-06-24 17:55:18', '2022-06-24 17:55:18'),
(281, 'cms.hospitals.edit', 'web', '2022-06-24 17:55:18', '2022-06-24 17:55:18'),
(282, 'cms.hospitals.update', 'web', '2022-06-24 17:55:18', '2022-06-24 17:55:18'),
(283, 'cms.hospitals.destroy', 'web', '2022-06-24 17:55:18', '2022-06-24 17:55:18'),
(284, 'cms.trainings.index', 'web', '2022-06-30 01:20:03', '2022-06-30 01:20:03'),
(285, 'cms.trainings.create', 'web', '2022-06-30 01:20:03', '2022-06-30 01:20:03'),
(286, 'cms.trainings.store', 'web', '2022-06-30 01:20:03', '2022-06-30 01:20:03'),
(287, 'cms.trainings.show', 'web', '2022-06-30 01:20:04', '2022-06-30 01:20:04'),
(288, 'cms.trainings.edit', 'web', '2022-06-30 01:20:04', '2022-06-30 01:20:04'),
(289, 'cms.trainings.update', 'web', '2022-06-30 01:20:04', '2022-06-30 01:20:04'),
(290, 'cms.trainings.destroy', 'web', '2022-06-30 01:20:04', '2022-06-30 01:20:04'),
(291, 'cms.operators.index', 'web', '2022-06-30 01:20:04', '2022-06-30 01:20:04'),
(292, 'cms.operators.create', 'web', '2022-06-30 01:20:04', '2022-06-30 01:20:04'),
(293, 'cms.operators.store', 'web', '2022-06-30 01:20:04', '2022-06-30 01:20:04'),
(294, 'cms.operators.show', 'web', '2022-06-30 01:20:04', '2022-06-30 01:20:04'),
(295, 'cms.operators.edit', 'web', '2022-06-30 01:20:04', '2022-06-30 01:20:04'),
(296, 'cms.operators.update', 'web', '2022-06-30 01:20:04', '2022-06-30 01:20:04'),
(297, 'cms.operators.destroy', 'web', '2022-06-30 01:20:04', '2022-06-30 01:20:04'),
(298, 'cms.colateral-managers.index', 'web', '2022-06-30 01:20:05', '2022-06-30 01:20:05'),
(299, 'cms.colateral-managers.create', 'web', '2022-06-30 01:20:05', '2022-06-30 01:20:05'),
(300, 'cms.colateral-managers.store', 'web', '2022-06-30 01:20:05', '2022-06-30 01:20:05'),
(301, 'cms.colateral-managers.show', 'web', '2022-06-30 01:20:05', '2022-06-30 01:20:05'),
(302, 'cms.colateral-managers.edit', 'web', '2022-06-30 01:20:05', '2022-06-30 01:20:05'),
(303, 'cms.colateral-managers.update', 'web', '2022-06-30 01:20:05', '2022-06-30 01:20:05'),
(304, 'cms.colateral-managers.destroy', 'web', '2022-06-30 01:20:05', '2022-06-30 01:20:05'),
(305, 'cms.warehouses.index', 'web', '2022-06-30 01:20:05', '2022-06-30 01:20:05'),
(306, 'cms.warehouses.create', 'web', '2022-06-30 01:20:05', '2022-06-30 01:20:05'),
(307, 'cms.warehouses.store', 'web', '2022-06-30 01:20:05', '2022-06-30 01:20:05'),
(308, 'cms.warehouses.show', 'web', '2022-06-30 01:20:05', '2022-06-30 01:20:05'),
(309, 'cms.warehouses.edit', 'web', '2022-06-30 01:20:06', '2022-06-30 01:20:06'),
(310, 'cms.warehouses.update', 'web', '2022-06-30 01:20:06', '2022-06-30 01:20:06'),
(311, 'cms.warehouses.destroy', 'web', '2022-06-30 01:20:06', '2022-06-30 01:20:06'),
(312, 'cms.product_categories.index', 'web', '2022-06-30 01:20:06', '2022-06-30 01:20:06'),
(313, 'cms.product_categories.create', 'web', '2022-06-30 01:20:06', '2022-06-30 01:20:06'),
(314, 'cms.product_categories.store', 'web', '2022-06-30 01:20:07', '2022-06-30 01:20:07'),
(315, 'cms.product_categories.show', 'web', '2022-06-30 01:20:07', '2022-06-30 01:20:07'),
(316, 'cms.product_categories.edit', 'web', '2022-06-30 01:20:07', '2022-06-30 01:20:07'),
(317, 'cms.product_categories.update', 'web', '2022-06-30 01:20:07', '2022-06-30 01:20:07'),
(318, 'cms.product_categories.destroy', 'web', '2022-06-30 01:20:07', '2022-06-30 01:20:07'),
(319, 'cms.products.index', 'web', '2022-06-30 01:20:07', '2022-06-30 01:20:07'),
(320, 'cms.products.create', 'web', '2022-06-30 01:20:07', '2022-06-30 01:20:07'),
(321, 'cms.products.store', 'web', '2022-06-30 01:20:07', '2022-06-30 01:20:07'),
(322, 'cms.products.show', 'web', '2022-06-30 01:20:07', '2022-06-30 01:20:07'),
(323, 'cms.products.edit', 'web', '2022-06-30 01:20:07', '2022-06-30 01:20:07'),
(324, 'cms.products.update', 'web', '2022-06-30 01:20:07', '2022-06-30 01:20:07'),
(325, 'cms.products.destroy', 'web', '2022-06-30 01:20:08', '2022-06-30 01:20:08'),
(326, 'cms.achievements.index', 'web', '2022-06-30 01:43:26', '2022-06-30 01:43:26'),
(327, 'cms.achievements.create', 'web', '2022-06-30 01:43:26', '2022-06-30 01:43:26'),
(328, 'cms.achievements.store', 'web', '2022-06-30 01:43:26', '2022-06-30 01:43:26'),
(329, 'cms.achievements.show', 'web', '2022-06-30 01:43:26', '2022-06-30 01:43:26'),
(330, 'cms.achievements.edit', 'web', '2022-06-30 01:43:26', '2022-06-30 01:43:26'),
(331, 'cms.achievements.update', 'web', '2022-06-30 01:43:26', '2022-06-30 01:43:26'),
(332, 'cms.achievements.destroy', 'web', '2022-06-30 01:43:26', '2022-06-30 01:43:26'),
(333, 'cms.colateral_managers.index', 'web', '2022-06-30 20:55:44', '2022-06-30 20:55:44'),
(334, 'cms.colateral_managers.create', 'web', '2022-06-30 20:55:44', '2022-06-30 20:55:44'),
(335, 'cms.colateral_managers.store', 'web', '2022-06-30 20:55:44', '2022-06-30 20:55:44'),
(336, 'cms.colateral_managers.show', 'web', '2022-06-30 20:55:44', '2022-06-30 20:55:44'),
(337, 'cms.colateral_managers.edit', 'web', '2022-06-30 20:55:44', '2022-06-30 20:55:44'),
(338, 'cms.colateral_managers.update', 'web', '2022-06-30 20:55:44', '2022-06-30 20:55:44'),
(339, 'cms.colateral_managers.destroy', 'web', '2022-06-30 20:55:44', '2022-06-30 20:55:44'),
(340, 'cms.feedbacks.index', 'web', '2022-07-17 03:18:28', '2022-07-17 03:18:28'),
(341, 'cms.feedbacks.create', 'web', '2022-07-17 03:18:28', '2022-07-17 03:18:28'),
(342, 'cms.feedbacks.store', 'web', '2022-07-17 03:18:28', '2022-07-17 03:18:28'),
(343, 'cms.feedbacks.show', 'web', '2022-07-17 03:18:28', '2022-07-17 03:18:28'),
(344, 'cms.feedbacks.edit', 'web', '2022-07-17 03:18:28', '2022-07-17 03:18:28'),
(345, 'cms.feedbacks.update', 'web', '2022-07-17 03:18:28', '2022-07-17 03:18:28'),
(346, 'cms.feedbacks.destroy', 'web', '2022-07-17 03:18:28', '2022-07-17 03:18:28'),
(347, 'cms.partners.index', 'web', '2022-07-17 03:18:29', '2022-07-17 03:18:29'),
(348, 'cms.partners.create', 'web', '2022-07-17 03:18:29', '2022-07-17 03:18:29'),
(349, 'cms.partners.store', 'web', '2022-07-17 03:18:29', '2022-07-17 03:18:29'),
(350, 'cms.partners.show', 'web', '2022-07-17 03:18:29', '2022-07-17 03:18:29'),
(351, 'cms.partners.edit', 'web', '2022-07-17 03:18:29', '2022-07-17 03:18:29'),
(352, 'cms.partners.update', 'web', '2022-07-17 03:18:29', '2022-07-17 03:18:29'),
(353, 'cms.partners.destroy', 'web', '2022-07-17 03:18:29', '2022-07-17 03:18:29'),
(354, 'cms.licensedEntities.index', 'web', '2022-08-07 05:33:02', '2022-08-07 05:33:02'),
(355, 'cms.licensedEntities.create', 'web', '2022-08-07 05:33:02', '2022-08-07 05:33:02'),
(356, 'cms.licensedEntities.store', 'web', '2022-08-07 05:33:02', '2022-08-07 05:33:02'),
(357, 'cms.licensedEntities.show', 'web', '2022-08-07 05:33:02', '2022-08-07 05:33:02'),
(358, 'cms.licensedEntities.edit', 'web', '2022-08-07 05:33:03', '2022-08-07 05:33:03'),
(359, 'cms.licensedEntities.update', 'web', '2022-08-07 05:33:03', '2022-08-07 05:33:03'),
(360, 'cms.licensedEntities.destroy', 'web', '2022-08-07 05:33:03', '2022-08-07 05:33:03'),
(361, 'cms.licensed-entity-categories.index', 'web', '2022-08-07 05:33:03', '2022-08-07 05:33:03'),
(362, 'cms.licensed-entity-categories.create', 'web', '2022-08-07 05:33:03', '2022-08-07 05:33:03'),
(363, 'cms.licensed-entity-categories.store', 'web', '2022-08-07 05:33:03', '2022-08-07 05:33:03'),
(364, 'cms.licensed-entity-categories.show', 'web', '2022-08-07 05:33:03', '2022-08-07 05:33:03'),
(365, 'cms.licensed-entity-categories.edit', 'web', '2022-08-07 05:33:03', '2022-08-07 05:33:03'),
(366, 'cms.licensed-entity-categories.update', 'web', '2022-08-07 05:33:04', '2022-08-07 05:33:04'),
(367, 'cms.licensed-entity-categories.destroy', 'web', '2022-08-07 05:33:04', '2022-08-07 05:33:04'),
(368, 'cms.licensed-entities.index', 'web', '2022-08-07 05:35:25', '2022-08-07 05:35:25'),
(369, 'cms.licensed-entities.create', 'web', '2022-08-07 05:35:25', '2022-08-07 05:35:25'),
(370, 'cms.licensed-entities.store', 'web', '2022-08-07 05:35:25', '2022-08-07 05:35:25'),
(371, 'cms.licensed-entities.show', 'web', '2022-08-07 05:35:26', '2022-08-07 05:35:26'),
(372, 'cms.licensed-entities.edit', 'web', '2022-08-07 05:35:26', '2022-08-07 05:35:26'),
(373, 'cms.licensed-entities.update', 'web', '2022-08-07 05:35:26', '2022-08-07 05:35:26'),
(374, 'cms.licensed-entities.destroy', 'web', '2022-08-07 05:35:27', '2022-08-07 05:35:27'),
(375, 'cms.media_links.index', 'web', '2022-08-10 01:35:40', '2022-08-10 01:35:40'),
(376, 'cms.media_links.create', 'web', '2022-08-10 01:35:40', '2022-08-10 01:35:40'),
(377, 'cms.media_links.store', 'web', '2022-08-10 01:35:40', '2022-08-10 01:35:40'),
(378, 'cms.media_links.show', 'web', '2022-08-10 01:35:41', '2022-08-10 01:35:41'),
(379, 'cms.media_links.edit', 'web', '2022-08-10 01:35:41', '2022-08-10 01:35:41'),
(380, 'cms.media_links.update', 'web', '2022-08-10 01:35:41', '2022-08-10 01:35:41'),
(381, 'cms.media_links.destroy', 'web', '2022-08-10 01:35:41', '2022-08-10 01:35:41'),
(382, 'cms.important_links.index', 'web', '2022-08-10 01:35:41', '2022-08-10 01:35:41'),
(383, 'cms.important_links.create', 'web', '2022-08-10 01:35:41', '2022-08-10 01:35:41'),
(384, 'cms.important_links.store', 'web', '2022-08-10 01:35:41', '2022-08-10 01:35:41'),
(385, 'cms.important_links.show', 'web', '2022-08-10 01:35:41', '2022-08-10 01:35:41'),
(386, 'cms.important_links.edit', 'web', '2022-08-10 01:35:42', '2022-08-10 01:35:42'),
(387, 'cms.important_links.update', 'web', '2022-08-10 01:35:42', '2022-08-10 01:35:42'),
(388, 'cms.important_links.destroy', 'web', '2022-08-10 01:35:42', '2022-08-10 01:35:42'),
(389, 'cms.home_links.index', 'web', '2022-08-10 01:35:42', '2022-08-10 01:35:42'),
(390, 'cms.home_links.create', 'web', '2022-08-10 01:35:42', '2022-08-10 01:35:42'),
(391, 'cms.home_links.store', 'web', '2022-08-10 01:35:42', '2022-08-10 01:35:42'),
(392, 'cms.home_links.show', 'web', '2022-08-10 01:35:42', '2022-08-10 01:35:42'),
(393, 'cms.home_links.edit', 'web', '2022-08-10 01:35:42', '2022-08-10 01:35:42'),
(394, 'cms.home_links.update', 'web', '2022-08-10 01:35:43', '2022-08-10 01:35:43'),
(395, 'cms.home_links.destroy', 'web', '2022-08-10 01:35:43', '2022-08-10 01:35:43'),
(396, 'cms.more-infos.index', 'web', '2022-08-10 03:51:41', '2022-08-10 03:51:41'),
(397, 'cms.more-infos.create', 'web', '2022-08-10 03:51:41', '2022-08-10 03:51:41'),
(398, 'cms.more-infos.store', 'web', '2022-08-10 03:51:42', '2022-08-10 03:51:42'),
(399, 'cms.more-infos.show', 'web', '2022-08-10 03:51:42', '2022-08-10 03:51:42'),
(400, 'cms.more-infos.edit', 'web', '2022-08-10 03:51:42', '2022-08-10 03:51:42'),
(401, 'cms.more-infos.update', 'web', '2022-08-10 03:51:42', '2022-08-10 03:51:42'),
(402, 'cms.more-infos.destroy', 'web', '2022-08-10 03:51:42', '2022-08-10 03:51:42'),
(403, 'cms.licensed.entities.upload', 'web', '2022-10-14 11:20:34', '2022-10-14 11:20:34'),
(404, 'cms.projects.index', 'web', '2022-10-14 11:24:15', '2022-10-14 11:24:15'),
(405, 'cms.projects.create', 'web', '2022-10-14 11:24:15', '2022-10-14 11:24:15'),
(406, 'cms.projects.store', 'web', '2022-10-14 11:24:15', '2022-10-14 11:24:15'),
(407, 'cms.projects.show', 'web', '2022-10-14 11:24:15', '2022-10-14 11:24:15'),
(408, 'cms.projects.edit', 'web', '2022-10-14 11:24:15', '2022-10-14 11:24:15'),
(409, 'cms.projects.update', 'web', '2022-10-14 11:24:15', '2022-10-14 11:24:15'),
(410, 'cms.projects.destroy', 'web', '2022-10-14 11:24:15', '2022-10-14 11:24:15'),
(411, 'cms.communities.index', 'web', '2022-10-15 13:14:09', '2022-10-15 13:14:09'),
(412, 'cms.communities.create', 'web', '2022-10-15 13:14:09', '2022-10-15 13:14:09'),
(413, 'cms.communities.store', 'web', '2022-10-15 13:14:09', '2022-10-15 13:14:09'),
(414, 'cms.communities.show', 'web', '2022-10-15 13:14:10', '2022-10-15 13:14:10'),
(415, 'cms.communities.edit', 'web', '2022-10-15 13:14:10', '2022-10-15 13:14:10'),
(416, 'cms.communities.update', 'web', '2022-10-15 13:14:10', '2022-10-15 13:14:10'),
(417, 'cms.communities.destroy', 'web', '2022-10-15 13:14:10', '2022-10-15 13:14:10'),
(418, 'cms.communities.upload', 'web', '2022-10-15 13:14:10', '2022-10-15 13:14:10'),
(419, 'cms.community-categories.index', 'web', '2022-10-15 13:14:10', '2022-10-15 13:14:10'),
(420, 'cms.community-categories.create', 'web', '2022-10-15 13:14:10', '2022-10-15 13:14:10'),
(421, 'cms.community-categories.store', 'web', '2022-10-15 13:14:10', '2022-10-15 13:14:10'),
(422, 'cms.community-categories.show', 'web', '2022-10-15 13:14:10', '2022-10-15 13:14:10'),
(423, 'cms.community-categories.edit', 'web', '2022-10-15 13:14:10', '2022-10-15 13:14:10'),
(424, 'cms.community-categories.update', 'web', '2022-10-15 13:14:10', '2022-10-15 13:14:10'),
(425, 'cms.community-categories.destroy', 'web', '2022-10-15 13:14:10', '2022-10-15 13:14:10'),
(426, 'cms.nps_achievement.index', 'web', '2023-01-10 08:08:51', '2023-01-10 08:08:51'),
(427, 'cms.nps_achievement.create', 'web', '2023-01-10 08:08:52', '2023-01-10 08:08:52'),
(428, 'cms.nps_achievement.store', 'web', '2023-01-10 08:08:52', '2023-01-10 08:08:52'),
(429, 'cms.nps_achievement.show', 'web', '2023-01-10 08:08:53', '2023-01-10 08:08:53'),
(430, 'cms.nps_achievement.edit', 'web', '2023-01-10 08:08:53', '2023-01-10 08:08:53'),
(431, 'cms.nps_achievement.update', 'web', '2023-01-10 08:08:53', '2023-01-10 08:08:53'),
(432, 'cms.nps_achievement.destroy', 'web', '2023-01-10 08:08:53', '2023-01-10 08:08:53'),
(433, 'cms.nps_achievements.index', 'web', '2023-01-10 08:11:37', '2023-01-10 08:11:37'),
(434, 'cms.nps_achievements.create', 'web', '2023-01-10 08:11:37', '2023-01-10 08:11:37'),
(435, 'cms.nps_achievements.store', 'web', '2023-01-10 08:11:38', '2023-01-10 08:11:38'),
(436, 'cms.nps_achievements.show', 'web', '2023-01-10 08:11:38', '2023-01-10 08:11:38'),
(437, 'cms.nps_achievements.edit', 'web', '2023-01-10 08:11:38', '2023-01-10 08:11:38'),
(438, 'cms.nps_achievements.update', 'web', '2023-01-10 08:11:39', '2023-01-10 08:11:39'),
(439, 'cms.nps_achievements.destroy', 'web', '2023-01-10 08:11:39', '2023-01-10 08:11:39');

-- --------------------------------------------------------

--
-- Table structure for table `preferences`
--

CREATE TABLE `preferences` (
  `id` int(10) UNSIGNED NOT NULL,
  `feedback_email` varchar(191) DEFAULT NULL,
  `whistle_email` varchar(191) DEFAULT NULL,
  `show_loading` tinyint(1) DEFAULT NULL,
  `logo` varchar(191) DEFAULT NULL,
  `member_icon` varchar(191) DEFAULT NULL,
  `project_icon` varchar(191) DEFAULT NULL,
  `university_icon` varchar(191) DEFAULT NULL,
  `school_icon` varchar(191) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `preferences`
--

INSERT INTO `preferences` (`id`, `feedback_email`, `whistle_email`, `show_loading`, `logo`, `member_icon`, `project_icon`, `university_icon`, `school_icon`, `user_id`, `created_at`, `updated_at`) VALUES
(5, 'info@npsdemo.go.tz', 'report@hst.go.tz', 1, NULL, 'C:\\xampp\\tmp\\php14BB.tmp', NULL, NULL, NULL, 0, '2022-03-11 03:49:56', '2023-01-31 11:08:33');

-- --------------------------------------------------------

--
-- Table structure for table `press_releases`
--

CREATE TABLE `press_releases` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_sw` varchar(191) NOT NULL,
  `name_en` varchar(191) DEFAULT NULL,
  `content_sw` text NOT NULL,
  `content_en` text DEFAULT NULL,
  `file_en` varchar(150) DEFAULT NULL,
  `file_sw` varchar(150) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `press_releases`
--

INSERT INTO `press_releases` (`id`, `name_sw`, `name_en`, `content_sw`, `content_en`, `file_en`, `file_sw`, `active`, `slug`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 'AWARDED CONTRACTS 2020-2021', 'AWARDED CONTRACTS 2020-2021', '<p><a href=\"https://tira.go.tz/content/awarded-contracts-2020-2021\">AWARDED CONTRACTS 2020-2021</a></p>', '<p><a href=\"https://tira.go.tz/content/awarded-contracts-2020-2021\">AWARDED CONTRACTS 2020-2021</a></p>', '/uploads/press_releases/en1627887240-INSTITUTE OF CONSTRUCTION TECHNOLOGY Website.docx', '/uploads/press_releases/sw1627887240-INSTITUTE OF CONSTRUCTION TECHNOLOGY Website.docx', 1, 'mapitio-ya-kikao-kazi-cha-utendaji-wa-tnbc', 1, '2021-08-02 03:54:00', '2022-08-07 11:02:53'),
(5, 'AWARDED CONTRACTS 2021-2022 semi annual', 'AWARDED CONTRACTS 2021-2022 semi annual', '<p><a href=\"https://tira.go.tz/content/awarded-contracts-2021-2022-semi-annual\">AWARDED CONTRACTS 2021-2022 semi annual</a></p>', '<p><a href=\"https://tira.go.tz/content/awarded-contracts-2021-2022-semi-annual\">AWARDED CONTRACTS 2021-2022 semi annual</a></p>', '/uploads/press_releases/en1659880909-AWARDED CONTRACTS 2021-2022 semi annual.pdf', '/uploads/press_releases/sw1659880909-AWARDED CONTRACTS 2021-2022 semi annual.pdf', 1, 'mapitio-ya-kikao-kazi-cha-utendaji-wa-tnbc-2', 1, '2021-08-02 04:04:15', '2022-08-07 11:01:49');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_en` varchar(191) NOT NULL,
  `title_sw` varchar(191) NOT NULL,
  `summary_en` text DEFAULT NULL,
  `summary_sw` text DEFAULT NULL,
  `content_en` text DEFAULT NULL,
  `content_sw` text DEFAULT NULL,
  `price` varchar(191) NOT NULL,
  `photo_url` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title_en`, `title_sw`, `summary_en`, `summary_sw`, `content_en`, `content_sw`, `price`, `photo_url`, `category_id`, `active`, `slug`, `created_at`, `updated_at`) VALUES
(4, 'Scissors', 'Mkasi', 'Scissors', 'Mkasi', NULL, NULL, '10000', '/uploads/products/0d1eba692467e4ee491e0974d871223d.jpeg', 2, 1, 'scissors', '2022-01-09 06:05:22', '2022-01-09 06:14:03'),
(5, 'X-ray Machine', 'Machine ya X-ray', 'An X-ray machine is any machine that involves X-rays. It may consist of an X-ray generator and an X-ray detector.', 'An X-ray machine is any machine that involves X-rays. It may consist of an X-ray generator and an X-ray detector.', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '5000', '/uploads/products/515cc8f8fc408e148faf3ae3442c1671.jpeg', 2, 1, 'x-ray-machine', '2022-01-09 06:05:22', '2022-01-09 14:21:47');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_en` varchar(191) NOT NULL,
  `title_sw` varchar(191) NOT NULL,
  `summary_en` text NOT NULL,
  `summary_sw` text NOT NULL,
  `photo_url` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `title_en`, `title_sw`, `summary_en`, `summary_sw`, `photo_url`, `active`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'Tools and Equipments', 'Vifaa vya kitabibu', 'Tools and Equipments', 'Vifaa vya kitabibu', '/uploads/product-categories/7f74f6a100ab66cb50dea85e562f3b66.jpeg', 1, 'tools-and-equipments', '2022-01-09 06:00:56', '2022-01-09 06:00:56'),
(3, 'Pain Killers', 'Dawa za Kupunguza Makali', 'Pain Killers Summary here', 'Dawa za Kupunguza Makali zinapatikana', '/uploads/product-categories/58119d1f984a049ea85942769c330500.jpeg', 1, 'pain-killers', '2022-01-09 08:40:22', '2022-01-09 08:40:22');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) NOT NULL,
  `title_en` varchar(191) NOT NULL,
  `summary_sw` text DEFAULT NULL,
  `summary_en` text DEFAULT NULL,
  `content_sw` text DEFAULT NULL,
  `content_en` text DEFAULT NULL,
  `photo_url` varchar(191) NOT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title_sw`, `title_en`, `summary_sw`, `summary_en`, `content_sw`, `content_en`, `photo_url`, `icon`, `active`, `slug`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Project 2', 'Project 2', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;</p>', '8b9a3188d69c74561a9f595cbd102f51.jpeg', 'icon-1665921281-done-all-svgrepo-com.svg', 1, 'project-2', 0, '2021-10-14 03:48:28', '2022-10-16 08:54:41'),
(3, 'Project 1', 'Project 1', NULL, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor&quot; elit, sed do eiusmod tempor,o eiusmod tempor&nbsp;</p>', 'e3cb831613d628a367aad81fdfbea14a.jpeg', 'icon-1665921260-book.svg', 1, 'project-1', 0, '2021-10-14 03:50:51', '2022-10-16 08:54:20'),
(4, 'Project 3', 'Project 3', NULL, NULL, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit, quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam recusandae alias error harum maxime adipisci amet laborum. Perspiciatis minima nesciunt dolorem! Officiis iure rerum voluptates a cumque velit</p>', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit, quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam recusandae alias error harum maxime adipisci amet laborum. Perspiciatis minima nesciunt dolorem! Officiis iure rerum voluptates a cumque velit</p>', '2303ec09f460beb70479fe7c8ac5d4d3.jpeg', 'icon-1665921157-code.svg', 1, 'project-3', 0, '2022-10-15 12:33:41', '2022-10-16 08:52:37');

-- --------------------------------------------------------

--
-- Table structure for table `quicklink_categories`
--

CREATE TABLE `quicklink_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) NOT NULL,
  `title_en` varchar(191) DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `content` text DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quick_infos`
--

CREATE TABLE `quick_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `info_en` varchar(255) NOT NULL,
  `info_sw` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quick_infos`
--

INSERT INTO `quick_infos` (`id`, `info_en`, `info_sw`, `active`, `user_id`, `url`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'Cheza kwa busara na kwa kujali', 'Cheza kwa busara na kwa kujali', 1, 1, '', 'cheza-kwa-busara-na-kwa-kujali', '2022-03-10 08:21:52', '2022-03-10 08:21:52'),
(3, 'Michezo ya kubahatisha siyo mbadala wa ajira walachanzo cha mapato bali ni sehemu ya burudani', 'Michezo ya kubahatisha siyo mbadala wa ajira walachanzo cha mapato bali ni sehemu ya burudani', 1, 1, '', 'michezo-ya-kubahatisha-siyo-mbadala-wa-ajira-walachanzo-cha-mapato-bali-ni-sehemu-ya-burudani', '2022-03-10 08:22:22', '2022-03-10 08:22:22'),
(4, 'Michezo ya kubahatisha siyo mbadala wa ajira walachanzo cha mapato bali ni sehemu ya burudani', 'Michezo ya kubahatisha siyo mbadala wa ajira walachanzo cha mapato bali ni sehemu ya burudani', 1, 1, '', 'michezo-ya-kubahatisha-siyo-mbadala-wa-ajira-walachanzo-cha-mapato-bali-ni-sehemu-ya-burudani-2', '2022-03-10 08:22:22', '2022-03-10 08:22:22');

-- --------------------------------------------------------

--
-- Table structure for table `quick_links`
--

CREATE TABLE `quick_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) NOT NULL,
  `title_en` varchar(191) DEFAULT NULL,
  `link` tinyint(1) NOT NULL DEFAULT 0,
  `url` varchar(191) NOT NULL,
  `url_external` varchar(191) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 1,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quick_links`
--

INSERT INTO `quick_links` (`id`, `title_sw`, `title_en`, `link`, `url`, `url_external`, `active`, `created_at`, `updated_at`, `parent`, `position`, `category_id`) VALUES
(5, 'Home', 'Home', 1, '#', NULL, 1, '2021-07-28 06:22:43', '2023-01-10 10:17:40', 0, 3, 0),
(6, 'What we Do?', 'What we Do?', 1, 'pages/what-we-do', NULL, 1, '2022-08-10 02:00:44', '2022-08-10 02:02:04', 0, 5, 0),
(7, 'Who we Are?', 'Who we Are?', 1, 'pages/who-we-are', NULL, 1, '2022-08-10 02:01:03', '2022-08-10 02:02:16', 0, 6, 0),
(8, 'Who we Serve?', 'Who we Serve?', 1, 'pages/who-we-serve', NULL, 1, '2022-08-10 02:01:34', '2022-08-10 02:02:29', 0, 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) NOT NULL,
  `title_en` varchar(191) DEFAULT NULL,
  `summary_sw` text NOT NULL,
  `summary_en` text DEFAULT NULL,
  `content_sw` text NOT NULL,
  `content_en` text DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `photo_url` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `title_sw`, `title_en`, `summary_sw`, `summary_en`, `content_sw`, `content_en`, `active`, `user_id`, `slug`, `photo_url`, `created_at`, `updated_at`) VALUES
(3, 'Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika', 'Changes in Second Stakeholders General Meetings and more', '', NULL, '<p>Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;</p>', '<p>Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;</p>', 1, 1, 'changes-in-second-stakeholders-general-meeting-2', 'efd8652e33a4858bc5fb87f1e0deadae', '2021-09-02 02:58:21', '2022-06-22 03:52:35'),
(4, 'Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika', 'Changes in Second Stakeholders General Meetings', '', NULL, '<p>Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;&nbsp;Mabadiliko Ya Ratiba Ya Mkutano Wa Pili Wa Wadau Na Washirika&nbsp;</p>', '<p>Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;</p>', 1, 1, 'changes-in-second-stakeholders-general-meeting-3', '2b72073b6f4749ccd7f2b6a26438a159', '2022-01-02 02:58:21', '2022-06-22 03:50:39'),
(5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis consequat.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis consequat.', '', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis consequat cursus. Nam id justo non turpis gravida dapibus. Cras a facilisis odio, quis accumsan diam. Sed sem neque, pharetra sit amet iaculis et, ullamcorper et risus. Morbi blandit nibh risus, et dignissim dui iaculis sit amet. In convallis lectus vitae tellus malesuada sodales. Sed iaculis aliquam magna at dictum. Aenean pharetra ligula massa, vel fermentum elit elementum pharetra. Integer et viverra purus. Donec molestie ante molestie fringilla scelerisque.</p>\r\n\r\n<p>Donec auctor, enim eleifend fermentum commodo, nisl eros malesuada lorem, eu suscipit ex est vitae lacus. Nullam euismod velit at velit mattis, vel mattis augue fringilla. Nam scelerisque eu quam varius gravida. Sed in ultrices justo, id tristique magna. Maecenas aliquet accumsan volutpat. Quisque commodo nisi at tortor rutrum consectetur. Nunc euismod, turpis ut rhoncus egestas, augue erat eleifend justo, nec vulputate sapien nisi non risus. Nullam eleifend placerat lorem, non vulputate tortor bibendum sed. Duis quis pharetra urna. Ut condimentum, ligula ut auctor malesuada, mi nulla efficitur velit, et eleifend neque mauris nec odio. Mauris a nunc felis. Cras quis leo dictum, rutrum nibh non, venenatis odio. Nam porttitor eros sed ipsum cursus, vitae pellentesque leo feugiat. Morbi magna leo, vehicula sed nisl eget, faucibus sollicitudin erat.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis consequat cursus. Nam id justo non turpis gravida dapibus. Cras a facilisis odio, quis accumsan diam. Sed sem neque, pharetra sit amet iaculis et, ullamcorper et risus. Morbi blandit nibh risus, et dignissim dui iaculis sit amet. In convallis lectus vitae tellus malesuada sodales. Sed iaculis aliquam magna at dictum. Aenean pharetra ligula massa, vel fermentum elit elementum pharetra. Integer et viverra purus. Donec molestie ante molestie fringilla scelerisque.</p>\r\n\r\n<p>Donec auctor, enim eleifend fermentum commodo, nisl eros malesuada lorem, eu suscipit ex est vitae lacus. Nullam euismod velit at velit mattis, vel mattis augue fringilla. Nam scelerisque eu quam varius gravida. Sed in ultrices justo, id tristique magna. Maecenas aliquet accumsan volutpat. Quisque commodo nisi at tortor rutrum consectetur. Nunc euismod, turpis ut rhoncus egestas, augue erat eleifend justo, nec vulputate sapien nisi non risus. Nullam eleifend placerat lorem, non vulputate tortor bibendum sed. Duis quis pharetra urna. Ut condimentum, ligula ut auctor malesuada, mi nulla efficitur velit, et eleifend neque mauris nec odio. Mauris a nunc felis. Cras quis leo dictum, rutrum nibh non, venenatis odio. Nam porttitor eros sed ipsum cursus, vitae pellentesque leo feugiat. Morbi magna leo, vehicula sed nisl eget, faucibus sollicitudin erat.</p>', 1, 1, 'lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-donec-mollis-consequat', '359e33e51fe1aa53a3cf522804567a50', '2022-01-08 13:30:30', '2022-06-22 03:51:31');

-- --------------------------------------------------------

--
-- Table structure for table `regional_offices`
--

CREATE TABLE `regional_offices` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_en` varchar(191) NOT NULL,
  `name_sw` varchar(191) NOT NULL,
  `region` text DEFAULT NULL,
  `physical_address_sw` text DEFAULT NULL,
  `physical_address_en` text DEFAULT NULL,
  `phone` varchar(191) NOT NULL,
  `toll_free` varchar(191) DEFAULT NULL,
  `fax` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `content_sw` text DEFAULT NULL,
  `content_en` text DEFAULT NULL,
  `photo_url` varchar(191) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `headquarter` tinyint(1) NOT NULL DEFAULT 0,
  `used_as` smallint(6) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regional_offices`
--

INSERT INTO `regional_offices` (`id`, `name_en`, `name_sw`, `region`, `physical_address_sw`, `physical_address_en`, `phone`, `toll_free`, `fax`, `email`, `content_sw`, `content_en`, `photo_url`, `latitude`, `longitude`, `slug`, `headquarter`, `used_as`, `created_at`, `updated_at`) VALUES
(2, 'Hq', 'Hq', ' Dodoma', 'Dodoma Head Office\r\nMakutupora, Arusha Road\r\nP.O. Box 1571, DODOMA.\r\ninfo@tari.go.tz & dg@tari.go.tz', 'Dodoma Head Office\r\nMakutupora, Arusha Road\r\nP.O. Box 1571, DODOMA.\r\ninfo@tari.go.tz & dg@tari.go.tz', '+25526 2321889', NULL, '026 2321463 24', 'info@tari.go.tz', NULL, NULL, NULL, NULL, NULL, 'hq', 1, 1, '2018-05-03 09:17:08', '2025-05-30 13:51:41');

-- --------------------------------------------------------

--
-- Table structure for table `related_links`
--

CREATE TABLE `related_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) NOT NULL,
  `title_en` varchar(191) DEFAULT NULL,
  `link` tinyint(4) DEFAULT NULL,
  `url` varchar(191) NOT NULL,
  `url_external` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `related_links`
--

INSERT INTO `related_links` (`id`, `title_sw`, `title_en`, `link`, `url`, `url_external`, `active`, `created_at`, `updated_at`, `parent`, `position`) VALUES
(16, 'Tovuti Kuu ya Taifa', 'Government Portal', NULL, 'http://www.tanzania.go.tz', NULL, 1, '2018-06-25 08:22:19', '2023-01-31 08:52:10', 0, 2),
(18, 'Wizara ya Katiba na Sheria ', 'Ministry of Constitutional and Legal Affairs ', NULL, 'http://www.sheria.go.tz/', NULL, 1, '2018-06-26 08:30:29', '2023-01-31 08:52:10', 0, 3),
(19, 'Ofisi ya Mwanasheria Mkuu wa Serikali', 'Attorney General Chambers', NULL, 'http://www.agctz.go.tz/', NULL, 1, '2018-06-26 08:33:52', '2023-01-31 08:52:10', 0, 4),
(20, 'Jeshi la Polisi Tanzania', 'Tanzania Police Force', NULL, 'https://policeforce.go.tz/', NULL, 1, '2018-06-26 09:38:26', '2023-01-31 08:52:10', 0, 5),
(22, 'TAKUKURU', 'PCCB', NULL, 'http://www.pccb.go.tz/', NULL, 1, '2018-06-26 09:40:49', '2023-01-31 08:52:10', 0, 6),
(24, 'Uhamiaji Tanzania', 'Immigration Tanzania', NULL, 'http://www.immigration.go.tz/index.php/en/', NULL, 1, '2018-06-26 09:56:16', '2023-01-31 08:52:10', 0, 7),
(25, 'Magereza Tanzania', 'Prison Tanzania', NULL, 'http://magereza.go.tz/', NULL, 1, '2018-06-26 09:58:16', '2023-01-31 08:52:10', 0, 8),
(26, 'Mahakama ya Tanzania', 'Judiciary of Tanzania', NULL, 'http://www.judiciary.go.tz/', NULL, 1, '2018-06-26 10:01:11', '2023-01-31 08:52:10', 0, 9),
(27, 'Hifadhi za Taifa za Tanzania', 'Tanzania National Parks', NULL, 'http://www.tanzaniaparks.go.tz/', NULL, 1, '2018-06-28 06:51:50', '2023-01-31 08:52:10', 0, 10),
(28, 'Kitengo cha Kudhibiti Fedha Haramu', 'Tanzania Financial Intelligence Unit', NULL, 'https://www.fiu.go.tz/', NULL, 1, '2018-06-28 07:04:27', '2023-01-31 08:52:10', 0, 11),
(29, 'Mamlaka ya Usimamizi wa Wanyamapori', 'Tanzania Wildlife Management Authority', NULL, 'http://www.tawa.go.tz/', NULL, 1, '2018-06-28 07:13:31', '2023-01-31 08:52:10', 0, 12),
(30, 'Ofisi ya Ukaguzi wa Taifa', 'National Audit office of Tanzania', NULL, 'http://www.nao.go.tz/#&panel1-6', NULL, 1, '2018-06-28 07:45:48', '2023-01-31 08:52:10', 0, 13),
(31, 'Ofisi ya Wakili Mkuu wa Serikali', 'Office of the Solicitor General', NULL, 'http://www.osg.go.tz/', NULL, 1, '2019-05-16 03:31:31', '2023-01-31 08:52:10', 0, 14),
(33, ' Maabara  ya Mkemia Mkuu wa Serikali', 'Government Chemist and Laboratory  Authority', NULL, 'https://gcla.go.tz/', NULL, 1, '2019-05-16 03:52:04', '2023-01-31 08:52:10', 0, 15),
(34, 'Wakala wa Misitu Tanzania', 'Tanzania Forest Service Agency', NULL, 'http://www.tfs.go.tz/index.php/en', NULL, 1, '2019-05-16 03:54:34', '2023-01-31 08:52:10', 0, 16);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `display_name` varchar(191) NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'Administrator', 'Administrator', 'web', '2021-06-29 06:56:30', '2021-06-29 06:56:30'),
(2, 'Default', 'Default User', 'Default Role', 'web', '2020-06-14 04:30:23', '2022-02-16 13:34:02');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1),
(161, 1),
(162, 1),
(163, 1),
(164, 1),
(165, 1),
(166, 1),
(167, 1),
(168, 1),
(169, 1),
(170, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1),
(176, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(181, 1),
(182, 1),
(183, 1),
(184, 1),
(185, 1),
(186, 1),
(187, 1),
(188, 1),
(189, 1),
(190, 1),
(191, 1),
(192, 1),
(193, 1),
(194, 1),
(195, 1),
(196, 1),
(197, 1),
(198, 1),
(199, 1),
(200, 1),
(201, 1),
(202, 1),
(203, 1),
(204, 1),
(205, 1),
(206, 1),
(207, 1),
(208, 1),
(209, 1),
(210, 1),
(211, 1),
(212, 1),
(213, 1),
(214, 1),
(215, 1),
(216, 1),
(217, 1),
(218, 1),
(219, 1),
(220, 1),
(221, 1),
(222, 1),
(223, 1),
(224, 1),
(225, 1),
(226, 1),
(227, 1),
(228, 1),
(229, 1),
(230, 1),
(231, 1),
(232, 1),
(233, 1),
(233, 2),
(234, 1),
(234, 2),
(235, 1),
(236, 1),
(237, 1),
(238, 1),
(239, 1),
(240, 1),
(241, 1),
(242, 1),
(243, 1),
(244, 1),
(245, 1),
(246, 1),
(247, 1),
(248, 1),
(249, 1),
(250, 1),
(251, 1),
(252, 1),
(253, 1),
(254, 1),
(255, 1),
(256, 1),
(257, 1),
(258, 1),
(259, 1),
(260, 1),
(261, 1),
(262, 1),
(263, 1),
(264, 1),
(265, 1),
(266, 1),
(267, 1),
(268, 1),
(269, 1),
(270, 1),
(271, 1),
(272, 1),
(273, 1),
(274, 1),
(275, 1),
(276, 1),
(277, 1),
(278, 1),
(279, 1),
(280, 1),
(281, 1),
(282, 1),
(283, 1),
(284, 1),
(285, 1),
(286, 1),
(287, 1),
(288, 1),
(289, 1),
(290, 1),
(291, 1),
(292, 1),
(293, 1),
(294, 1),
(295, 1),
(296, 1),
(297, 1),
(298, 1),
(299, 1),
(300, 1),
(301, 1),
(302, 1),
(303, 1),
(304, 1),
(305, 1),
(306, 1),
(307, 1),
(308, 1),
(309, 1),
(310, 1),
(311, 1),
(312, 1),
(313, 1),
(314, 1),
(315, 1),
(316, 1),
(317, 1),
(318, 1),
(319, 1),
(320, 1),
(321, 1),
(322, 1),
(323, 1),
(324, 1),
(325, 1),
(326, 1),
(327, 1),
(328, 1),
(329, 1),
(330, 1),
(331, 1),
(332, 1),
(333, 1),
(334, 1),
(335, 1),
(336, 1),
(337, 1),
(338, 1),
(339, 1),
(340, 1),
(341, 1),
(342, 1),
(343, 1),
(344, 1),
(345, 1),
(346, 1),
(347, 1),
(348, 1),
(349, 1),
(350, 1),
(351, 1),
(352, 1),
(353, 1),
(354, 1),
(355, 1),
(356, 1),
(357, 1),
(358, 1),
(359, 1),
(360, 1),
(361, 1),
(362, 1),
(363, 1),
(364, 1),
(365, 1),
(366, 1),
(367, 1),
(368, 1),
(369, 1),
(370, 1),
(371, 1),
(372, 1),
(373, 1),
(374, 1),
(375, 1),
(376, 1),
(377, 1),
(378, 1),
(379, 1),
(380, 1),
(381, 1),
(382, 1),
(383, 1),
(384, 1),
(385, 1),
(386, 1),
(387, 1),
(388, 1),
(389, 1),
(390, 1),
(391, 1),
(392, 1),
(393, 1),
(394, 1),
(395, 1),
(396, 1),
(397, 1),
(398, 1),
(399, 1),
(400, 1),
(401, 1),
(402, 1),
(403, 1),
(404, 1),
(405, 1),
(406, 1),
(407, 1),
(408, 1),
(409, 1),
(410, 1),
(411, 1),
(412, 1),
(413, 1),
(414, 1),
(415, 1),
(416, 1),
(417, 1),
(418, 1),
(419, 1),
(420, 1),
(421, 1),
(422, 1),
(423, 1),
(424, 1),
(425, 1),
(426, 1),
(427, 1),
(428, 1),
(429, 1),
(430, 1),
(431, 1),
(432, 1),
(433, 1),
(434, 1),
(435, 1),
(436, 1),
(437, 1),
(438, 1),
(439, 1);

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `id` int(10) UNSIGNED NOT NULL,
  `content_en` varchar(191) NOT NULL,
  `content_sw` varchar(191) NOT NULL,
  `keywords_en` varchar(191) NOT NULL,
  `keywords_sw` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `recaptcha_site_key` text DEFAULT NULL,
  `recaptcha_secret_key` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo`
--

INSERT INTO `seo` (`id`, `content_en`, `content_sw`, `keywords_en`, `keywords_sw`, `created_at`, `updated_at`, `recaptcha_site_key`, `recaptcha_secret_key`) VALUES
(1, 'Government Website', 'Tovuti ya Serikali', 'Government,website', 'Tovuti,serikali', '2021-09-20 03:56:59', '2021-09-20 03:56:59', '6LdK9nIcAAAAAKCjCMNVoNtob9Shvmx7Xkj1qxHY', '6LdK9nIcAAAAAD_MZovQUsH8YNeMtcrwXBX3YWWG');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) NOT NULL,
  `title_en` varchar(191) NOT NULL,
  `summary_sw` text DEFAULT NULL,
  `summary_en` text DEFAULT NULL,
  `content_sw` text DEFAULT NULL,
  `content_en` text DEFAULT NULL,
  `photo_url` varchar(191) NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) NOT NULL,
  `call_to_action_en` varchar(191) NOT NULL DEFAULT 'Go to Service Now',
  `call_to_action_sw` varchar(191) NOT NULL DEFAULT 'Ingia Sasa',
  `url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `icon` text DEFAULT NULL,
  `color` text DEFAULT NULL,
  `specials` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title_sw`, `title_en`, `summary_sw`, `summary_en`, `content_sw`, `content_en`, `photo_url`, `featured`, `active`, `slug`, `call_to_action_en`, `call_to_action_sw`, `url`, `created_at`, `updated_at`, `user_id`, `icon`, `color`, `specials`) VALUES
(1, 'Huduma za Sheria', 'Legal Services', '<p>Praesent sapien massa, convallis a pellenteqquamsed sit</p>', '<p>Praesent sapien massa, convallis a pellenteqquamsed sit</p>', '<p>Swahili - Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Donec sollicitudin molestie malesuada. Donec sollicitudin molestie malesuada. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.</p>', '<p>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Donec sollicitudin molestie malesuada. Donec sollicitudin molestie malesuada. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.</p>', '1496053776-Saint-Marks-Basilica-750x400.jpg', 0, 1, 'legal-services', 'Go to Service Now', 'Ingia Sasa', NULL, '2017-01-16 08:21:34', '2017-05-29 07:29:36', 0, NULL, NULL, NULL),
(2, 'Ukaguzi wa ndani', 'Internal Auditors', '', '', '<p>Swahili - Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Proin eget tortor risus. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Donec sollicitudin molestie malesuada. Vivamus suscipit tortor eget felis porttitor volutpat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Curabitur aliquet quam id dui posuere blandit. Proin eget tortor risus.</p>', '<p>Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Proin eget tortor risus. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Donec sollicitudin molestie malesuada. Vivamus suscipit tortor eget felis porttitor volutpat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Curabitur aliquet quam id dui posuere blandit. Proin eget tortor risus.</p>', '1496051148-Saint-Marks-Basilica-750x400.jpg', 0, 1, 'internal-auditors', 'Go to Service Now', 'Ingia Sasa', NULL, '2017-01-16 08:32:33', '2017-05-29 06:45:48', 0, NULL, NULL, NULL),
(3, 'swahili data testing always daaata', 'data testing always daaata', '<p>Those who are often on public Wifi are vulnerable to hackers and snoopers who try to obtain your private information as the data are being passed between your computer and its destination. By using PIA\'s VPN service, your IP address can be hidden so that onlookers cannot obtain your information.</p>', '<p>Those who are often on public Wifi are vulnerable to hackers and snoopers who try to obtain your private information as the data are being passed between your computer and its destination. By using PIA\'s VPN service, your IP address can be hidden so that onlookers cannot obtain your information.</p>', '<p>Those who are often on public Wifi are vulnerable to hackers and snoopers who try to obtain your private information as the data are being passed between your computer and its destination. By using PIA\'s VPN service, your IP address can be hidden so that onlookers cannot obtain your information.Those who are often on public Wifi are vulnerable to hackers and snoopers who try to obtain your private information as the data are being passed between your computer and its destination. By using PIA\'s VPN service, your IP address can be hidden so that onlookers cannot obtain your information.</p>', '<p>Those who are often on public Wifi are vulnerable to hackers and snoopers who try to obtain your private information as the data are being passed between your computer and its destination. By using PIA\'s VPN service, your IP address can be hidden so that onlookers cannot obtain your information.Those who are often on public Wifi are vulnerable to hackers and snoopers who try to obtain your private information as the data are being passed between your computer and its destination. By using PIA\'s VPN service, your IP address can be hidden so that onlookers cannot obtain your information. Those who are often on public Wifi are vulnerable to hackers and snoopers who try to obtain your private information as the data are being passed between your computer and its destination. By using PIA\'s VPN service, your IP address can be hidden so that onlookers cannot obtain your information.</p>', '1496049957-18767927_2082089895453117_3254504680859384282_n.jpg', 0, 1, 'data-testing-always-daaata', 'Go to Service Now', 'Ingia Sasa', NULL, '2017-05-29 06:14:49', '2017-05-29 06:25:57', 0, NULL, NULL, NULL),
(4, 'swahili lorem data here e', 'lorem data here english lorem ', '<p>lorem data here englishlorem data here englishlenglish</p>', '<p>lorem data here englishlorem data here englishlenglish</p>', '<p>lorem data here englishlorem data here englishlorem data here englishlorem data here englishlorem data here englishlorem data here englishlorem data here englishlorem data here englishlorem data here englishlorem data here englishlorem data here englishlorem data here englishlorem data here englishlorem data here englishlorem data here englishlorem data here englishlorem data here englishlorem data here english</p>', '<p>lorem data here englishlorem data here englishlorem data here englishlorem data here englishlorem data here englishlorem data here englishlorem data here englishlorem data here englishlorem data here englishlorem data here englishlorem data here englishlorem data here englishlorem data here englishlorem data here englishlorem data here englishlorem data here englishlorem data here englishlorem data here englishlorem data here englishlorem data here english</p>', '1496053692-Portrait_de_Dante.jpg', 0, 1, 'lorem-data-here-english-lorem-data-here-english', 'Go to Service Now', 'Ingia Sasa', NULL, '2017-05-29 07:21:04', '2017-05-29 07:28:12', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) NOT NULL,
  `title_en` varchar(191) DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `content_sw` text NOT NULL,
  `content_en` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `title_en` varchar(191) NOT NULL,
  `url` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 0,
  `active` int(11) NOT NULL DEFAULT 1,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`title_en`, `url`, `created_at`, `updated_at`, `parent`, `position`, `active`, `id`) VALUES
('facebook', 'https://www.byqykok.biz', '2023-01-31 08:53:16', '2023-01-31 08:53:16', 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `special_pages`
--

CREATE TABLE `special_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) NOT NULL,
  `title_en` varchar(191) DEFAULT NULL,
  `content_sw` text NOT NULL,
  `content_en` text DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `speeches`
--

CREATE TABLE `speeches` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_sw` varchar(191) NOT NULL,
  `name_en` varchar(191) DEFAULT NULL,
  `content_sw` text NOT NULL,
  `content_en` text DEFAULT NULL,
  `file_en` varchar(150) DEFAULT NULL,
  `file_sw` varchar(150) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `speeches`
--

INSERT INTO `speeches` (`id`, `name_sw`, `name_en`, `content_sw`, `content_en`, `file_en`, `file_sw`, `active`, `slug`, `user_id`, `created_at`, `updated_at`) VALUES
(2, ',amf,adui', 'hashljfdhasd', '<p>ksakflhkjaskd</p>', '<p>asfdsgjglkjasdf</p>', '/uploads/speeches/en1673902253-BRAND COLOR PALETTE.pdf', '/uploads/speeches/sw1673902253-SIGNED WEBSITE REQUIREMENT (1).pdf', 1, 'hashljfdhasd', 5, '2023-01-16 17:50:53', '2023-01-16 17:50:53'),
(3, 'News &UpdatesNews &UpdatesNews &UpdatesNews &UpdatesNews &UpdatesNews &UpdatesNews &Updates', 'News &UpdatesNews &UpdatesNews &UpdatesNews &UpdatesNews &UpdatesNews &Updates', '<p>News &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;Updates</p>', '<p>News &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;Updates</p>', '/uploads/speeches/en1675358253-test News.pdf', '/uploads/speeches/sw1675358253-test News.pdf', 1, 'news-updatesnews-updatesnews-updatesnews-updatesnews-updatesnews-updates', 6, '2023-02-02 14:17:33', '2023-02-02 14:17:33');

-- --------------------------------------------------------

--
-- Table structure for table `support_links`
--

CREATE TABLE `support_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) NOT NULL,
  `title_en` varchar(191) DEFAULT NULL,
  `link` tinyint(1) NOT NULL DEFAULT 0,
  `url` varchar(191) NOT NULL,
  `url_external` varchar(191) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `parent` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_links`
--

INSERT INTO `support_links` (`id`, `title_sw`, `title_en`, `link`, `url`, `url_external`, `active`, `parent`, `position`, `created_at`, `updated_at`) VALUES
(1, 'Circulars', 'Circulars', 1, 'publications/circular', NULL, 1, 0, 1, '2022-02-22 10:18:00', '2022-08-10 14:03:52'),
(3, 'Roles of Policy Holders', 'Roles of Policy Holders', 1, 'pages/roles-of-policy-holders', NULL, 1, 0, 1, '2022-02-22 10:18:53', '2022-08-10 14:08:00'),
(4, 'Licensing Requirements', 'Licensing Requirements', 1, 'publications/licensing-requirements', NULL, 1, 0, 1, '2022-06-22 13:39:35', '2022-08-10 14:09:28'),
(5, 'Frequently asked Questions', 'Frequently asked Questions', 1, 'faqs', NULL, 1, 0, 1, '2022-06-22 13:39:54', '2022-08-10 14:10:47');

-- --------------------------------------------------------

--
-- Table structure for table `timelines`
--

CREATE TABLE `timelines` (
  `id` int(10) UNSIGNED NOT NULL,
  `actor` int(11) NOT NULL,
  `object` varchar(191) NOT NULL,
  `verb` varchar(191) NOT NULL,
  `ip` varchar(191) NOT NULL,
  `url` varchar(191) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timelines`
--

INSERT INTO `timelines` (`id`, `actor`, `object`, `verb`, `ip`, `url`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 'Photo', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/media', '{\"gallery_id\":3,\"content_sw\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit.\",\"content_en\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit.\",\"status\":\"1\",\"path\":\"\\/uploads\\/gallery\\/\",\"filename\":\"2ab76120eade1e2a4699c43fb30f7a74.jpeg\",\"mime\":\"images\\/jpeg\",\"slug\":\"2ab76120eade1e2a4699c43fb30f7a74-jpeg\"}', '2022-10-19 01:09:49', '2022-10-19 01:09:49'),
(2, 1, 'Photo', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/media', '{\"gallery_id\":3,\"content_sw\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit.\",\"content_en\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit.\",\"status\":\"1\",\"path\":\"\\/uploads\\/gallery\\/\",\"filename\":\"998c8395552ec680debbc06bf8557bfe.jpeg\",\"mime\":\"images\\/jpeg\",\"slug\":\"998c8395552ec680debbc06bf8557bfe-jpeg\"}', '2022-10-19 01:10:09', '2022-10-19 01:10:09'),
(3, 1, 'Photo', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/media', '{\"gallery_id\":3,\"content_sw\":\"consectetur adipisicingLorem ipsum dolor sit amet  elit.\",\"content_en\":\"consectetur adipisicing Lorem ipsum dolor adipisicing elit.\",\"status\":\"1\",\"path\":\"\\/uploads\\/gallery\\/\",\"filename\":\"697a72eeac98132cf3a487cfa186d0ee.jpeg\",\"mime\":\"images\\/jpeg\",\"slug\":\"697a72eeac98132cf3a487cfa186d0ee-jpeg\"}', '2022-10-19 01:10:43', '2022-10-19 01:10:43'),
(4, 1, 'Photo', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/media/22', '{\"id\":22,\"title_en\":\"Consectetur adipisicing consectetur adipisicing consectetur adipisicing\",\"title_sw\":\"Consectetur adipisicing consectetur adipisicing consectetur adipisicing\",\"content_en\":\"\",\"content_sw\":\"\",\"mime\":\"\",\"path\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=vHonWT6849A\",\"filename\":\"\",\"iconurl\":\"\",\"slug\":\"management-team\",\"user_id\":0,\"gallery_id\":4,\"status\":1,\"created_at\":\"2021-08-04T06:28:45.000000Z\",\"updated_at\":\"2022-08-26T06:37:30.000000Z\"}', '2022-10-19 01:13:05', '2022-10-19 01:13:05'),
(5, 1, 'Photo', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/media/20', '{\"id\":20,\"title_en\":\"Veritatis obcaecati tenetur iure eius earum ut molestias\",\"title_sw\":\"Veritatis obcaecati tenetur iure eius earum ut molestias\",\"content_en\":\"\",\"content_sw\":\"\",\"mime\":\"\",\"path\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=wHWbZmg2hzU\",\"filename\":\"\",\"iconurl\":\"\",\"slug\":\"good-music\",\"user_id\":0,\"gallery_id\":4,\"status\":1,\"created_at\":\"2021-08-04T06:27:44.000000Z\",\"updated_at\":\"2022-08-13T20:52:02.000000Z\"}', '2022-10-19 01:13:57', '2022-10-19 01:13:57'),
(6, 1, 'Photo', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/media/21', '{\"id\":21,\"title_en\":\"Possimus quis earum veniam  quasi aliquam eligendi, placeat qui corporis!\",\"title_sw\":\"Possimus quis earum veniam  quasi aliquam eligendi, placeat qui corporis!\",\"content_en\":\"\",\"content_sw\":\"\",\"mime\":\"\",\"path\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=wLLAWiOfukk\",\"filename\":\"\",\"iconurl\":\"\",\"slug\":\"real-possibilities-on-enhancement-of-the-achievable-estimates\",\"user_id\":0,\"gallery_id\":4,\"status\":1,\"created_at\":\"2021-08-04T06:28:21.000000Z\",\"updated_at\":\"2022-08-13T21:00:05.000000Z\"}', '2022-10-19 01:15:23', '2022-10-19 01:15:23'),
(7, 1, 'Photo', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/media/19', '{\"id\":19,\"title_en\":\"Voluptatem quaerat non architecto ab laudantium modi minima sunt esse temporibus\",\"title_sw\":\"Voluptatem quaerat non architecto ab laudantium modi minima sunt esse temporibus\",\"content_en\":\"\",\"content_sw\":\"\",\"mime\":\"\",\"path\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=xP76q3quHb0\",\"filename\":\"\",\"iconurl\":\"\",\"slug\":\"good-video-very-very-nice\",\"user_id\":0,\"gallery_id\":4,\"status\":1,\"created_at\":\"2021-08-04T06:27:11.000000Z\",\"updated_at\":\"2022-08-13T21:46:28.000000Z\"}', '2022-10-19 01:16:54', '2022-10-19 01:16:54'),
(8, 5, 'NpsAchievement', 'store', '127.0.0.1', 'http://localhost:8000/cms/nps_achievements', '{\"fin_year_id\":\"0\",\"achievement_type_id\":\"0\",\"count\":\"230\",\"status\":\"1\"}', '2023-01-10 08:51:17', '2023-01-10 08:51:17'),
(9, 5, 'NpsAchievement', 'store', '127.0.0.1', 'http://localhost:8000/cms/nps_achievements', '{\"fin_year_id\":\"0\",\"achievement_type_id\":\"0\",\"count\":\"230\",\"status\":\"1\"}', '2023-01-10 08:52:54', '2023-01-10 08:52:54'),
(10, 5, 'NpsAchievement', 'store', '127.0.0.1', 'http://localhost:8000/cms/nps_achievements', '{\"fin_year_id\":\"1\",\"achievement_type_id\":\"1\",\"count\":\"234\",\"status\":\"1\"}', '2023-01-10 08:54:05', '2023-01-10 08:54:05'),
(11, 5, 'NpsAchievement', 'store', '127.0.0.1', 'http://localhost:8000/cms/nps_achievements', '{\"fin_year_id\":\"1\",\"achievement_type_id\":\"2\",\"count\":\"230\",\"status\":\"1\"}', '2023-01-10 09:29:09', '2023-01-10 09:29:09'),
(12, 5, 'NpsAchievement', 'store', '127.0.0.1', 'http://localhost:8000/cms/nps_achievements', '{\"fin_year_id\":\"1\",\"achievement_type_id\":\"1\",\"count\":\"300\",\"status\":\"1\"}', '2023-01-10 09:43:55', '2023-01-10 09:43:55'),
(13, 5, 'NpsAchievement', 'update', '127.0.0.1', 'http://localhost:8000/cms/nps_achievements/4', '{\"id\":4,\"created_at\":\"2023-01-10T12:43:55.000000Z\",\"updated_at\":\"2023-01-10T12:43:55.000000Z\",\"fin_year_id\":\"1\",\"achievement_type_id\":\"3\",\"count\":\"300\",\"status\":\"1\"}', '2023-01-10 09:44:08', '2023-01-10 09:44:08'),
(14, 5, 'NpsAchievement', 'store', '127.0.0.1', 'http://localhost:8000/cms/nps_achievements', '{\"fin_year_id\":\"1\",\"achievement_type_id\":\"4\",\"count\":\"220\",\"status\":\"1\"}', '2023-01-10 09:44:27', '2023-01-10 09:44:27'),
(15, 5, 'NpsAchievement', 'destroy', '127.0.0.1', 'http://localhost:8000/cms/nps_achievements/5', '{\"id\":5,\"created_at\":\"2023-01-10T12:44:27.000000Z\",\"updated_at\":\"2023-01-10T12:44:27.000000Z\",\"fin_year_id\":1,\"achievement_type_id\":4,\"count\":220,\"status\":1}', '2023-01-10 10:36:39', '2023-01-10 10:36:39'),
(16, 5, 'NpsAchievement', 'store', '127.0.0.1', 'http://localhost:8000/cms/nps_achievements', '{\"fin_year_id\":\"1\",\"achievement_type_id\":\"4\",\"count\":\"500\",\"status\":\"1\"}', '2023-01-10 10:37:38', '2023-01-10 10:37:38'),
(17, 5, 'NpsAchievement', 'store', '127.0.0.1', 'http://localhost:8000/cms/nps_achievements', '{\"fin_year_id\":\"2\",\"achievement_type_id\":\"1\",\"count\":\"200\",\"status\":\"1\"}', '2023-01-10 10:38:02', '2023-01-10 10:38:02'),
(18, 5, 'NpsAchievement', 'store', '127.0.0.1', 'http://localhost:8000/cms/nps_achievements', '{\"fin_year_id\":\"2\",\"achievement_type_id\":\"2\",\"count\":\"300\",\"status\":\"1\"}', '2023-01-10 10:38:16', '2023-01-10 10:38:16'),
(19, 5, 'NpsAchievement', 'update', '127.0.0.1', 'http://localhost:8000/cms/nps_achievements/2', '{\"id\":2,\"created_at\":\"2023-01-10T11:54:05.000000Z\",\"updated_at\":\"2023-01-10T11:54:05.000000Z\",\"fin_year_id\":\"1\",\"achievement_type_id\":\"1\",\"count\":\"23\",\"status\":\"1\"}', '2023-01-10 11:11:05', '2023-01-10 11:11:05'),
(20, 5, 'Administration', 'update', '127.0.0.1', 'http://localhost:8000/cms/administration/23', '{\"id\":23,\"salutation_en\":\"Mr\",\"salutation_sw\":\"Mr\",\"fullname\":\"Mr Jackson\",\"position\":\"0\",\"title_sw\":\"Designer\",\"title_en\":\"Designer\",\"content_sw\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,<\\/p>\",\"content_en\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,<\\/p>\",\"photo_url\":\"379ed7ed1bcb8113e1ca7f3629d2e083.jpeg\",\"email\":\"mrjackson@ink.co.tz\",\"phone\":\"0692261066\",\"created_at\":\"2022-10-15T17:39:34.000000Z\",\"updated_at\":\"2022-10-15T17:39:34.000000Z\",\"slug\":\"ms-jackson\"}', '2023-01-16 06:19:46', '2023-01-16 06:19:46'),
(21, 5, 'Administration', 'update', '127.0.0.1', 'http://localhost:8000/cms/administration/23', '{\"id\":23,\"salutation_en\":\"Mr\",\"salutation_sw\":\"Mr\",\"fullname\":\"Mr Jackson\",\"position\":\"1\",\"title_sw\":\"Designer\",\"title_en\":\"Designer\",\"content_sw\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,<\\/p>\",\"content_en\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,<\\/p>\",\"photo_url\":\"379ed7ed1bcb8113e1ca7f3629d2e083.jpeg\",\"email\":\"mrjackson@ink.co.tz\",\"phone\":\"0692261066\",\"created_at\":\"2022-10-15T17:39:34.000000Z\",\"updated_at\":\"2023-01-16T09:19:46.000000Z\",\"slug\":\"ms-jackson\"}', '2023-01-16 06:20:24', '2023-01-16 06:20:24'),
(22, 5, 'AdministrationCategoriesMembers', 'update', '127.0.0.1', 'http://localhost:8000/cms/administration_categories_members/29', '{\"id\":29,\"category_id\":\"4\",\"member_id\":\"23\",\"title_en\":\"Designer\",\"title_sw\":\"Designer\",\"parent\":0,\"position\":\"1\",\"created_at\":\"2022-10-15T17:42:42.000000Z\",\"updated_at\":\"2022-10-15T17:42:42.000000Z\"}', '2023-01-16 06:21:22', '2023-01-16 06:21:22'),
(23, 5, 'AdministrationCategoriesMembers', 'update', '127.0.0.1', 'http://localhost:8000/cms/administration_categories_members/27', '{\"id\":27,\"category_id\":\"4\",\"member_id\":\"21\",\"title_en\":\"Developer\",\"title_sw\":\"Developer\",\"parent\":0,\"position\":\"2\",\"created_at\":\"2022-10-15T17:40:27.000000Z\",\"updated_at\":\"2022-10-15T17:40:27.000000Z\"}', '2023-01-16 06:21:49', '2023-01-16 06:21:49'),
(24, 5, 'AdministrationCategoriesMembers', 'update', '127.0.0.1', 'http://localhost:8000/cms/administration_categories_members/28', '{\"id\":28,\"category_id\":\"4\",\"member_id\":\"22\",\"title_en\":\"System Analyst\",\"title_sw\":\"System Analyst\",\"parent\":0,\"position\":\"3\",\"created_at\":\"2022-10-15T17:42:24.000000Z\",\"updated_at\":\"2022-10-15T17:42:24.000000Z\"}', '2023-01-16 06:22:02', '2023-01-16 06:22:02'),
(25, 5, 'Administration', 'update', '127.0.0.1', 'http://localhost:8000/cms/administration/22', '{\"id\":22,\"salutation_en\":\"Mr\",\"salutation_sw\":\"Mr\",\"fullname\":\"James Doe\",\"position\":\"0\",\"title_sw\":\"System Analyst\",\"title_en\":\"System Analyst\",\"content_sw\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,<\\/p>\",\"content_en\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,<\\/p>\",\"photo_url\":\"f14b1802ffb9642720ff73c6a5024417.jpeg\",\"email\":\"james@ic.com\",\"phone\":null,\"created_at\":\"2022-10-15T17:37:47.000000Z\",\"updated_at\":\"2022-10-15T17:37:47.000000Z\",\"slug\":\"jane-doe\"}', '2023-01-16 06:33:02', '2023-01-16 06:33:02'),
(26, 5, 'AdministrationCategoriesMembers', 'update', '127.0.0.1', 'http://localhost:8000/cms/administration_categories_members/28', '{\"id\":28,\"category_id\":\"4\",\"member_id\":\"22\",\"title_en\":\"System Analyst\",\"title_sw\":\"System Analyst\",\"parent\":0,\"position\":\"2\",\"created_at\":\"2022-10-15T17:42:24.000000Z\",\"updated_at\":\"2023-01-16T09:22:02.000000Z\"}', '2023-01-16 06:36:03', '2023-01-16 06:36:03'),
(27, 5, 'AdministrationCategoriesMembers', 'update', '127.0.0.1', 'http://localhost:8000/cms/administration_categories_members/27', '{\"id\":27,\"category_id\":\"4\",\"member_id\":\"21\",\"title_en\":\"Developer\",\"title_sw\":\"Developer\",\"parent\":0,\"position\":\"3\",\"created_at\":\"2022-10-15T17:40:27.000000Z\",\"updated_at\":\"2023-01-16T09:21:49.000000Z\"}', '2023-01-16 06:36:17', '2023-01-16 06:36:17'),
(28, 5, 'AdministrationCategoriesMembers', 'update', '127.0.0.1', 'http://localhost:8000/cms/administration_categories_members/28', '{\"id\":28,\"category_id\":\"4\",\"member_id\":\"22\",\"title_en\":\"System Analyst\",\"title_sw\":\"System Analyst\",\"parent\":0,\"position\":\"2\",\"created_at\":\"2022-10-15T17:42:24.000000Z\",\"updated_at\":\"2023-01-16T09:36:03.000000Z\"}', '2023-01-16 06:38:17', '2023-01-16 06:38:17'),
(29, 5, 'Administration', 'update', '127.0.0.1', 'http://localhost:8000/cms/administration/22', '{\"id\":22,\"salutation_en\":\"Mr\",\"salutation_sw\":\"Mr\",\"fullname\":\"James Doe\",\"position\":\"0\",\"title_sw\":\"System Analyst\",\"title_en\":\"System Analyst\",\"content_sw\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,<\\/p>\",\"content_en\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,<\\/p>\",\"photo_url\":\"f14b1802ffb9642720ff73c6a5024417.jpeg\",\"email\":\"james@ic.com\",\"phone\":null,\"created_at\":\"2022-10-15T17:37:47.000000Z\",\"updated_at\":\"2023-01-16T09:33:03.000000Z\",\"slug\":\"jane-doe\"}', '2023-01-16 06:39:08', '2023-01-16 06:39:08'),
(30, 5, 'AdministrationCategoriesMembers', 'store', '127.0.0.1', 'http://localhost:8000/cms/administration_categories_members', '{\"member_id\":\"22\",\"title_en\":\"client service charter\",\"title_sw\":\"Ministerial Advisory Board\",\"position\":\"2\",\"category_id\":\"4\"}', '2023-01-16 06:44:17', '2023-01-16 06:44:17'),
(31, 5, 'AdministrationCategoriesMembers', 'destroy', '127.0.0.1', 'http://localhost:8000/cms/administration_categories_members/30', '{\"id\":30,\"category_id\":4,\"member_id\":22,\"title_en\":\"client service charter\",\"title_sw\":\"Ministerial Advisory Board\",\"parent\":0,\"position\":2,\"created_at\":\"2023-01-16T09:44:17.000000Z\",\"updated_at\":\"2023-01-16T09:44:17.000000Z\"}', '2023-01-16 06:45:34', '2023-01-16 06:45:34'),
(32, 5, 'Administration', 'store', '127.0.0.1', 'http://localhost:8000/cms/administration', '{\"salutation_sw\":\"Quos vel harum volup\",\"salutation_en\":\"Ullamco sint animi\",\"fullname\":\"Griffith Bauer\",\"title_sw\":\"Voluptate voluptas l\",\"title_en\":\"Animi consequat Ip\",\"email\":\"vyhir@mailinator.com\",\"phone\":\"+1 (733) 937-9507\",\"position\":\"1\",\"content_sw\":\"<p>Voluptate voluptas l<\\/p>\",\"content_en\":\"<p>Voluptate voluptas l<\\/p>\",\"photo_url\":\"1d27a9a9224494dc9baf7cff0761226b.jpeg\",\"slug\":\"griffith-bauer\"}', '2023-01-16 06:53:57', '2023-01-16 06:53:57'),
(33, 5, 'AdministrationCategoriesMembers', 'store', '127.0.0.1', 'http://localhost:8000/cms/administration_categories_members', '{\"member_id\":\"24\",\"title_en\":\"Quam autem sed non o\",\"title_sw\":\"Quis qui sapiente te\",\"position\":\"2\",\"category_id\":\"4\"}', '2023-01-16 07:02:09', '2023-01-16 07:02:09'),
(34, 5, 'Administration', 'update', '127.0.0.1', 'http://localhost:8000/cms/administration/24', '{\"id\":24,\"salutation_en\":\"Ullamco sint animi\",\"salutation_sw\":\"Quos vel harum volup\",\"fullname\":\"Griffith Bauer\",\"position\":\"2\",\"title_sw\":\"Voluptate voluptas l\",\"title_en\":\"Animi consequat Ip\",\"content_sw\":\"<p>Voluptate voluptas l<\\/p>\",\"content_en\":\"<p>Voluptate voluptas l<\\/p>\",\"photo_url\":\"1d27a9a9224494dc9baf7cff0761226b.jpeg\",\"email\":\"vyhir@mailinator.com\",\"phone\":\"+1 (733) 937-9507\",\"created_at\":\"2023-01-16T09:53:58.000000Z\",\"updated_at\":\"2023-01-16T09:53:58.000000Z\",\"slug\":\"griffith-bauer\"}', '2023-01-16 07:20:08', '2023-01-16 07:20:08'),
(35, 5, 'AdministrationCategories', 'store', '127.0.0.1', 'http://localhost:8000/cms/administration_categories', '{\"title_sw\":\"Ministerial Advisory Board\",\"title_en\":\"Ministerial Advisory Board\",\"summary_sw\":\"Ministerial Advisory Board\",\"summary_en\":\"Ministerial Advisory Board\",\"featured\":\"1\",\"slug\":\"ministerial-advisory-board\"}', '2023-01-16 07:47:19', '2023-01-16 07:47:19'),
(36, 5, 'AdministrationCategoriesMembers', 'store', '127.0.0.1', 'http://localhost:8000/cms/administration_categories_members', '{\"member_id\":\"22\",\"title_en\":\"client service charter\",\"title_sw\":\"Ministerial Advisory Board\",\"position\":\"1\",\"category_id\":\"5\"}', '2023-01-16 07:47:41', '2023-01-16 07:47:41'),
(37, 5, 'Administration', 'destroy', '127.0.0.1', 'http://localhost:8000/cms/administration/24', '{\"id\":24,\"salutation_en\":\"Ullamco sint animi\",\"salutation_sw\":\"Quos vel harum volup\",\"fullname\":\"Griffith Bauer\",\"position\":2,\"title_sw\":\"Voluptate voluptas l\",\"title_en\":\"Animi consequat Ip\",\"content_sw\":\"<p>Voluptate voluptas l<\\/p>\",\"content_en\":\"<p>Voluptate voluptas l<\\/p>\",\"photo_url\":\"1d27a9a9224494dc9baf7cff0761226b.jpeg\",\"email\":\"vyhir@mailinator.com\",\"phone\":\"+1 (733) 937-9507\",\"created_at\":\"2023-01-16T09:53:58.000000Z\",\"updated_at\":\"2023-01-16T10:20:08.000000Z\",\"slug\":\"griffith-bauer\"}', '2023-01-16 09:21:36', '2023-01-16 09:21:36'),
(38, 5, 'Administration', 'destroy', '127.0.0.1', 'http://localhost:8000/cms/administration/23', '{\"id\":23,\"salutation_en\":\"Mr\",\"salutation_sw\":\"Mr\",\"fullname\":\"Mr Jackson\",\"position\":1,\"title_sw\":\"Designer\",\"title_en\":\"Designer\",\"content_sw\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,<\\/p>\",\"content_en\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,<\\/p>\",\"photo_url\":\"379ed7ed1bcb8113e1ca7f3629d2e083.jpeg\",\"email\":\"mrjackson@ink.co.tz\",\"phone\":\"0692261066\",\"created_at\":\"2022-10-15T17:39:34.000000Z\",\"updated_at\":\"2023-01-16T09:20:24.000000Z\",\"slug\":\"ms-jackson\"}', '2023-01-16 09:21:55', '2023-01-16 09:21:55'),
(39, 5, 'Administration', 'update', '127.0.0.1', 'http://localhost:8000/cms/administration/22', '{\"id\":22,\"salutation_en\":\"Mr\",\"salutation_sw\":\"Mr\",\"fullname\":\"James Doe\",\"position\":\"1\",\"title_sw\":\"System Analyst\",\"title_en\":\"System Analyst\",\"content_sw\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,<\\/p>\",\"content_en\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,<\\/p>\",\"photo_url\":\"f14b1802ffb9642720ff73c6a5024417.jpeg\",\"email\":\"james@ic.com\",\"phone\":null,\"created_at\":\"2022-10-15T17:37:47.000000Z\",\"updated_at\":\"2023-01-16T09:33:03.000000Z\",\"slug\":\"jane-doe\"}', '2023-01-16 09:22:34', '2023-01-16 09:22:34'),
(40, 5, 'Administration', 'destroy', '127.0.0.1', 'http://localhost:8000/cms/administration/22', '{\"id\":22,\"salutation_en\":\"Mr\",\"salutation_sw\":\"Mr\",\"fullname\":\"James Doe\",\"position\":1,\"title_sw\":\"System Analyst\",\"title_en\":\"System Analyst\",\"content_sw\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,<\\/p>\",\"content_en\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,<\\/p>\",\"photo_url\":\"f14b1802ffb9642720ff73c6a5024417.jpeg\",\"email\":\"james@ic.com\",\"phone\":null,\"created_at\":\"2022-10-15T17:37:47.000000Z\",\"updated_at\":\"2023-01-16T12:22:34.000000Z\",\"slug\":\"jane-doe\"}', '2023-01-16 09:23:52', '2023-01-16 09:23:52'),
(41, 5, 'Administration', 'update', '127.0.0.1', 'http://localhost:8000/cms/administration/21', '{\"id\":21,\"salutation_en\":\"Mr\",\"salutation_sw\":\"Mr\",\"fullname\":\"John  Doe\",\"position\":\"1\",\"title_sw\":\"Developer\",\"title_en\":\"Developer\",\"content_sw\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,<\\/p>\",\"content_en\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,<\\/p>\",\"photo_url\":\"1344bd7a11c63f37aad477a4af2c4888.jpeg\",\"email\":\"ipsum@gmail.com\",\"phone\":null,\"created_at\":\"2022-10-15T17:36:36.000000Z\",\"updated_at\":\"2022-10-15T17:36:36.000000Z\",\"slug\":\"john-doe\"}', '2023-01-16 09:28:14', '2023-01-16 09:28:14'),
(42, 5, 'Administration', 'store', '127.0.0.1', 'http://localhost:8000/cms/administration', '{\"salutation_sw\":\"In ipsum consequat\",\"salutation_en\":\"Delectus ad deserun\",\"fullname\":\"Judah Moore\",\"title_sw\":\"Et nihil et adipisci\",\"title_en\":\"Non aut tempore sun\",\"email\":\"pejinu@mailinator.com\",\"phone\":\"+1 (806) 648-1305\",\"position\":\"1\",\"content_sw\":\"<p>dd<\\/p>\",\"content_en\":\"<p>dddd<\\/p>\",\"photo_url\":\"4fa2d4f6fb3f91164ee4d4200257980d.jpeg\",\"slug\":\"judah-moore\"}', '2023-01-16 09:29:29', '2023-01-16 09:29:29'),
(43, 5, 'Administration', 'update', '127.0.0.1', 'http://localhost:8000/cms/administration/25', '{\"id\":25,\"salutation_en\":\"Delectus ad deserun\",\"salutation_sw\":\"In ipsum consequat\",\"fullname\":\"Judah Moore\",\"position\":\"2\",\"title_sw\":\"Et nihil et adipisci\",\"title_en\":\"Non aut tempore sun\",\"content_sw\":\"<p>dd<\\/p>\",\"content_en\":\"<p>dddd<\\/p>\",\"photo_url\":\"4fa2d4f6fb3f91164ee4d4200257980d.jpeg\",\"email\":\"pejinu@mailinator.com\",\"phone\":\"+1 (806) 648-1305\",\"created_at\":\"2023-01-16T12:29:29.000000Z\",\"updated_at\":\"2023-01-16T12:29:29.000000Z\",\"slug\":\"judah-moore\"}', '2023-01-16 09:36:52', '2023-01-16 09:36:52'),
(44, 5, 'Photo', 'bulkUpload', '127.0.0.1', 'http://localhost:8000/cms/media/bulk-upload-images/9', '{\"gallery_id\":\"9\",\"mime\":\"images\\/jpg\",\"path\":\"\\/uploads\\/gallery\\/\",\"filename\":\"2b04b5111d63ca0c3a308d21041567e4.jpg\",\"slug\":\"2b04b5111d63ca0c3a308d21041567e4-jpg\"}', '2023-01-16 09:42:48', '2023-01-16 09:42:48'),
(45, 5, 'Photo', 'bulkUpload', '127.0.0.1', 'http://localhost:8000/cms/media/bulk-upload-images/9', '{\"gallery_id\":\"9\",\"mime\":\"images\\/jpg\",\"path\":\"\\/uploads\\/gallery\\/\",\"filename\":\"2b04b5111d63ca0c3a308d21041567e4.jpg\",\"slug\":\"2b04b5111d63ca0c3a308d21041567e4-jpg-2\"}', '2023-01-16 09:42:48', '2023-01-16 09:42:48'),
(46, 5, 'Photo', 'bulkUpload', '127.0.0.1', 'http://localhost:8000/cms/media/bulk-upload-images/9', '{\"gallery_id\":\"9\",\"mime\":\"images\\/jpg\",\"path\":\"\\/uploads\\/gallery\\/\",\"filename\":\"7b58e9cc6f93b3db680ecbd4fee9406a.jpg\",\"slug\":\"7b58e9cc6f93b3db680ecbd4fee9406a-jpg\"}', '2023-01-16 09:44:24', '2023-01-16 09:44:24'),
(47, 5, 'Photo', 'bulkUpload', '127.0.0.1', 'http://localhost:8000/cms/media/bulk-upload-images/9', '{\"gallery_id\":\"9\",\"mime\":\"images\\/jpg\",\"path\":\"\\/uploads\\/gallery\\/\",\"filename\":\"7b58e9cc6f93b3db680ecbd4fee9406a.jpg\",\"slug\":\"7b58e9cc6f93b3db680ecbd4fee9406a-jpg-2\"}', '2023-01-16 09:44:25', '2023-01-16 09:44:25'),
(48, 5, 'Photo', 'bulkUpload', '127.0.0.1', 'http://localhost:8000/cms/media/bulk-upload-images/9', '{\"gallery_id\":\"9\",\"mime\":\"images\\/jpg\",\"path\":\"\\/uploads\\/gallery\\/\",\"filename\":\"c729eb39e0b26349fcd6ed092c1bb372.jpg\",\"slug\":\"c729eb39e0b26349fcd6ed092c1bb372-jpg\"}', '2023-01-16 09:44:26', '2023-01-16 09:44:26'),
(49, 5, 'Photo', 'store', '127.0.0.1', 'http://localhost:8000/cms/media', '{\"gallery_id\":9,\"content_sw\":\"test\",\"content_en\":\"jaribio\",\"status\":\"1\"}', '2023-01-16 09:45:31', '2023-01-16 09:45:31'),
(50, 5, 'Photo', 'store', '127.0.0.1', 'http://localhost:8000/cms/media', '{\"gallery_id\":9,\"content_sw\":\"afsda\",\"content_en\":\"asdfsadf\",\"status\":\"1\"}', '2023-01-16 09:45:52', '2023-01-16 09:45:52'),
(51, 5, 'Photo', 'store', '127.0.0.1', 'http://localhost:8000/cms/media', '{\"gallery_id\":9,\"content_sw\":\"nn\",\"content_en\":\"nm\",\"status\":\"1\",\"path\":\"\\/uploads\\/gallery\\/\",\"filename\":\"ccdf6fe15fb1539c5f362ab1efc9856f.jpeg\",\"mime\":\"images\\/jpeg\",\"slug\":\"ccdf6fe15fb1539c5f362ab1efc9856f-jpeg\"}', '2023-01-16 09:46:34', '2023-01-16 09:46:34'),
(52, 5, 'News', 'update', '127.0.0.1', 'http://localhost:8000/cms/news/16', '{\"id\":16,\"title_sw\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit.\",\"title_en\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit.\",\"summary_sw\":\"\",\"summary_en\":null,\"content_sw\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,<\\/p>\",\"content_en\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,<\\/p>\",\"active\":\"1\",\"user_id\":5,\"slug\":\"lorem-ipsum-dolor-sit-amet-consectetur-adipisicing-elit\",\"photo_url\":\"571d24ff0ecee552d705a5d1bf827e6d.jpeg\",\"created_at\":\"2022-10-17T04:31:39.000000Z\",\"updated_at\":\"2022-10-17T04:31:39.000000Z\"}', '2023-01-16 13:14:37', '2023-01-16 13:14:37'),
(53, 5, 'News', 'update', '127.0.0.1', 'http://localhost:8000/cms/news/10', '{\"id\":10,\"title_sw\":\"voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,\",\"title_en\":\"voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,\",\"summary_sw\":\"\",\"summary_en\":null,\"content_sw\":\"<p style=\\\"text-align:justify\\\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,<span style=\\\"font-size:11pt\\\"><span style=\\\"font-family:Calibri,sans-serif\\\"><span style=\\\"font-size:12.0pt\\\"> <\\/span><\\/span><\\/span><\\/p>\",\"content_en\":\"<p style=\\\"text-align:justify\\\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,<span style=\\\"font-size:11pt\\\"><span style=\\\"font-family:Calibri,sans-serif\\\"><span style=\\\"font-size:12.0pt\\\"> <\\/span><\\/span><\\/span><\\/p>\",\"active\":\"1\",\"user_id\":5,\"slug\":\"mchakato-bodi-wataalam-hifadhi-ya-jamii-bima-waanza\",\"photo_url\":\"5515090b1e6d3de100108b54dcce5cdd.jpeg\",\"created_at\":\"2022-08-25T17:17:44.000000Z\",\"updated_at\":\"2022-10-17T04:34:04.000000Z\"}', '2023-01-16 13:15:30', '2023-01-16 13:15:30'),
(54, 5, 'News', 'update', '127.0.0.1', 'http://localhost:8000/cms/news/9', '{\"id\":9,\"title_sw\":\"Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure\",\"title_en\":\"Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure\",\"summary_sw\":\"\",\"summary_en\":null,\"content_sw\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,<\\/p>\",\"content_en\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,<\\/p>\",\"active\":\"1\",\"user_id\":5,\"slug\":\"rais-mwinyi-aielekeza-tira-kutekeleza-mabidiliko-ya-sheria-ya-fedha\",\"photo_url\":\"291cd96e5e35298c2ab16eb1626139ad.jpeg\",\"created_at\":\"2022-08-14T20:10:59.000000Z\",\"updated_at\":\"2022-10-17T04:35:16.000000Z\"}', '2023-01-16 13:16:18', '2023-01-16 13:16:18'),
(55, 5, 'News', 'update', '127.0.0.1', 'http://localhost:8000/cms/news/8', '{\"id\":8,\"title_sw\":\"Veritatis obcaecati tenetur iure Provident similique accusantium nemo autem.\",\"title_en\":\"Veritatis obcaecati tenetur iure Provident similique accusantium nemo autem.\",\"summary_sw\":\"\",\"summary_en\":null,\"content_sw\":\"<p>nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit, quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam recusandae alias error harum maxime adipisci amet laborum. Perspiciatis minima nesciunt dolorem! Officiis iure rerum voluptates a cumque velit<\\/p>\",\"content_en\":\"<p>nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit, quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam recusandae alias error harum maxime adipisci amet laborum. Perspiciatis minima nesciunt dolorem! Officiis iure rerum voluptates a cumque velit<\\/p>\",\"active\":\"1\",\"user_id\":5,\"slug\":\"rais-mwinyi-ailekeza-tira-kutekeleza-mabidiliko-ya-sheria-ya-fedha\",\"photo_url\":\"02a5d56f8e7e4d06478eb9bfab046624.jpeg\",\"created_at\":\"2022-08-13T22:52:32.000000Z\",\"updated_at\":\"2022-10-17T04:36:08.000000Z\"}', '2023-01-16 13:16:58', '2023-01-16 13:16:58'),
(56, 5, 'Events', 'update', '127.0.0.1', 'http://localhost:8000/cms/events/5', '{\"id\":5,\"event_date\":\"2022-02-07\",\"event_time\":\"07:00AM - 12:30PM\",\"location\":\"KarimJee, Dar es Salaam\",\"contact\":\"GBT, info@gbt.go.tz\",\"title_sw\":\"Demo Menu\",\"title_en\":\"Demo News\",\"summary_sw\":\"\",\"summary_en\":null,\"content_sw\":\"<p>bjnknj<\\/p>\",\"content_en\":\"<p>jllnm<\\/p>\",\"active\":\"1\",\"user_id\":5,\"slug\":\"demo-news\",\"photo_url\":\"57c727b5e28bfe3624eb7e7d2ac1d700.jpeg\",\"created_at\":\"2022-02-07T12:19:44.000000Z\",\"updated_at\":\"2022-03-10T07:31:24.000000Z\"}', '2023-01-16 13:18:36', '2023-01-16 13:18:36'),
(57, 5, 'Events', 'update', '127.0.0.1', 'http://localhost:8000/cms/events/4', '{\"id\":4,\"event_date\":\"2021-08-12\",\"event_time\":\"11:00AM - 2:30PM\",\"location\":\"Nkrumah Hall\",\"contact\":\"99999999\",\"title_sw\":\"Changes in Second Stakeholders General Meeting\",\"title_en\":\"Changes in Second Stakeholders General Meeting\",\"summary_sw\":\"\",\"summary_en\":null,\"content_sw\":\"<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting<\\/p>\",\"content_en\":\"<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting<\\/p>\",\"active\":\"1\",\"user_id\":5,\"slug\":\"changes-in-second-stakeholders-general-meeting-4\",\"photo_url\":\"93179b6450b24999094300288cd655a4.jpeg\",\"created_at\":\"2021-08-02T06:34:28.000000Z\",\"updated_at\":\"2021-08-02T06:34:28.000000Z\"}', '2023-01-16 13:19:35', '2023-01-16 13:19:35'),
(58, 5, 'Events', 'update', '127.0.0.1', 'http://localhost:8000/cms/events/4', '{\"id\":4,\"event_date\":\"2021-08-12\",\"event_time\":\"11:00AM - 2:30PM\",\"location\":\"Nkrumah Hall\",\"contact\":\"99999999\",\"title_sw\":\"Changes in Second Stakeholders General Meeting\",\"title_en\":\"Changes in Second Stakeholders General Meeting\",\"summary_sw\":\"\",\"summary_en\":null,\"content_sw\":\"<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting<\\/p>\",\"content_en\":\"<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting<\\/p>\",\"active\":\"1\",\"user_id\":5,\"slug\":\"changes-in-second-stakeholders-general-meeting-4\",\"photo_url\":\"fddafb72ef30309cb8cffe38f50708c7.jpeg\",\"created_at\":\"2021-08-02T06:34:28.000000Z\",\"updated_at\":\"2023-01-16T16:19:35.000000Z\"}', '2023-01-16 13:20:13', '2023-01-16 13:20:13'),
(59, 5, 'Events', 'update', '127.0.0.1', 'http://localhost:8000/cms/events/3', '{\"id\":3,\"event_date\":\"2021-08-20\",\"event_time\":\"11:00AM - 2:30PM\",\"location\":\"Nkrumah Hall\",\"contact\":\"Dr. Jane John Doe, janedoe@mail.com, 255 754 998 764\",\"title_sw\":\"Mkutano wa Wawekezaji\",\"title_en\":\"Investors Meeting\",\"summary_sw\":\"\",\"summary_en\":null,\"content_sw\":\"<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting<\\/p>\",\"content_en\":\"<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;<\\/p>\",\"active\":\"1\",\"user_id\":5,\"slug\":\"changes-in-second-stakeholders-general-meeting-3\",\"photo_url\":\"7726f3e06373f6813aec7a49c091d890.jpeg\",\"created_at\":\"2021-08-02T06:32:16.000000Z\",\"updated_at\":\"2022-03-10T07:33:59.000000Z\"}', '2023-01-16 13:20:54', '2023-01-16 13:20:54'),
(60, 5, 'Events', 'update', '127.0.0.1', 'http://localhost:8000/cms/events/2', '{\"id\":2,\"event_date\":\"2021-08-19\",\"event_time\":\"11:00AM - 2:30PM\",\"location\":\"Nkrumah Hall\",\"contact\":\"msafiriathumani28@gmail.com\",\"title_sw\":\"Changes in Second Stakeholders General Meeting\",\"title_en\":\"Changes in Second Stakeholders General Meeting\",\"summary_sw\":\"\",\"summary_en\":null,\"content_sw\":\"<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting<\\/p>\",\"content_en\":\"<p>Changes in Second Stakeholders General Meeting Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting<\\/p>\",\"active\":\"1\",\"user_id\":5,\"slug\":\"changes-in-second-stakeholders-general-meeting-2\",\"photo_url\":\"19c85af6feaf700d95b0653f677ebdf9.jpeg\",\"created_at\":\"2021-08-02T06:30:48.000000Z\",\"updated_at\":\"2021-08-02T06:30:48.000000Z\"}', '2023-01-16 13:21:57', '2023-01-16 13:21:57'),
(61, 5, 'Events', 'update', '127.0.0.1', 'http://localhost:8000/cms/events/2', '{\"id\":2,\"event_date\":\"2021-08-19\",\"event_time\":\"11:00AM - 2:30PM\",\"location\":\"Nkrumah Hall\",\"contact\":\"msafiriathumani28@gmail.com\",\"title_sw\":\"Changes in Second Stakeholders General Meeting\",\"title_en\":\"Changes in Second Stakeholders General Meeting\",\"summary_sw\":\"\",\"summary_en\":null,\"content_sw\":\"<p>Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting<\\/p>\",\"content_en\":\"<p>Changes in Second Stakeholders General Meeting Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting&nbsp;Changes in Second Stakeholders General Meeting<\\/p>\",\"active\":\"1\",\"user_id\":5,\"slug\":\"changes-in-second-stakeholders-general-meeting-2\",\"photo_url\":\"6a37a2e357b388ce34c4b7625c5aaa29.jpeg\",\"created_at\":\"2021-08-02T06:30:48.000000Z\",\"updated_at\":\"2023-01-16T16:21:57.000000Z\"}', '2023-01-16 13:22:37', '2023-01-16 13:22:37'),
(62, 5, 'Speech', 'store', '127.0.0.1', 'http://localhost:8000/cms/speeches', '{\"name_sw\":\",amf,adui\",\"name_en\":\"hashljfdhasd\",\"content_sw\":\"<p>ksakflhkjaskd<\\/p>\",\"content_en\":\"<p>asfdsgjglkjasdf<\\/p>\",\"active\":\"1\",\"file_sw\":\"\\/uploads\\/speeches\\/sw1673902253-SIGNED WEBSITE REQUIREMENT (1).pdf\",\"file_en\":\"\\/uploads\\/speeches\\/en1673902253-BRAND COLOR PALETTE.pdf\",\"user_id\":5,\"slug\":\"hashljfdhasd\"}', '2023-01-16 17:50:53', '2023-01-16 17:50:53'),
(63, 5, 'MenuItem', 'destroy', '127.0.0.1', 'http://localhost:8000/cms/menu-items/160', '{\"id\":160,\"title_sw\":\"Jamii\",\"title_en\":\"Community\",\"status\":1,\"menu_id\":8,\"url\":\"#\",\"url_external\":null,\"link\":1,\"parent\":0,\"position\":5,\"has_sidebar\":0,\"created_at\":\"2022-10-15T19:56:19.000000Z\",\"updated_at\":\"2022-10-15T20:11:47.000000Z\"}', '2023-01-16 18:15:58', '2023-01-16 18:15:58'),
(64, 5, 'MenuItem', 'destroy', '127.0.0.1', 'http://localhost:8000/cms/menu-items/160', '{\"id\":162,\"title_sw\":\"Universities\",\"title_en\":\"Universities\",\"status\":1,\"menu_id\":8,\"url\":\"communities\\/universities\",\"url_external\":null,\"link\":1,\"parent\":160,\"position\":1,\"has_sidebar\":0,\"created_at\":\"2022-10-15T19:56:44.000000Z\",\"updated_at\":\"2022-10-15T20:11:47.000000Z\"}', '2023-01-16 18:15:58', '2023-01-16 18:15:58'),
(65, 5, 'MenuItem', 'destroy', '127.0.0.1', 'http://localhost:8000/cms/menu-items/160', '{\"id\":161,\"title_sw\":\"Schools\",\"title_en\":\"Schools\",\"status\":1,\"menu_id\":8,\"url\":\"communities\\/schools\",\"url_external\":null,\"link\":1,\"parent\":160,\"position\":2,\"has_sidebar\":0,\"created_at\":\"2022-10-15T19:56:34.000000Z\",\"updated_at\":\"2022-10-15T20:11:47.000000Z\"}', '2023-01-16 18:15:58', '2023-01-16 18:15:58'),
(66, 5, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"8\",\"title_sw\":\"Press release\",\"title_en\":\"Press release\",\"link\":\"1\",\"url_external\":null,\"url\":\"publications\\/presentation-papers-speeches\",\"position\":7}', '2023-01-16 18:16:35', '2023-01-16 18:16:35'),
(67, 5, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"8\",\"title_sw\":\"speeches\",\"title_en\":\"speeches\",\"link\":\"1\",\"url_external\":null,\"url\":\"publications\\/presentation-papers-speeches\",\"position\":6}', '2023-01-16 18:17:04', '2023-01-16 18:17:04'),
(68, 5, 'MenuItem', 'update', '127.0.0.1', 'http://localhost:8000/cms/menu-items/165', '{\"id\":165,\"title_sw\":\"Press release\",\"title_en\":\"Press release\",\"status\":1,\"menu_id\":\"8\",\"url\":\"press-releases\",\"url_external\":null,\"link\":\"1\",\"parent\":87,\"position\":3,\"has_sidebar\":0,\"created_at\":\"2023-01-16T21:16:36.000000Z\",\"updated_at\":\"2023-01-16T21:17:16.000000Z\"}', '2023-01-16 18:22:19', '2023-01-16 18:22:19'),
(69, 5, 'MenuItem', 'update', '127.0.0.1', 'http://localhost:8000/cms/menu-items/166', '{\"id\":166,\"title_sw\":\"speeches\",\"title_en\":\"speeches\",\"status\":1,\"menu_id\":\"8\",\"url\":\"speeches\",\"url_external\":null,\"link\":\"1\",\"parent\":87,\"position\":4,\"has_sidebar\":0,\"created_at\":\"2023-01-16T21:17:04.000000Z\",\"updated_at\":\"2023-01-16T21:17:16.000000Z\"}', '2023-01-16 18:22:34', '2023-01-16 18:22:34'),
(70, 5, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"8\",\"title_sw\":\"Publication\",\"title_en\":\"Publication\",\"link\":\"1\",\"url_external\":null,\"url\":\"publications\\/guidelines\",\"position\":6}', '2023-01-16 18:25:20', '2023-01-16 18:25:20'),
(71, 5, 'MenuItem', 'update', '127.0.0.1', 'http://localhost:8000/cms/menu-items/167', '{\"id\":167,\"title_sw\":\"Publication\",\"title_en\":\"Publication\",\"status\":1,\"menu_id\":\"8\",\"url\":\"#\",\"url_external\":null,\"link\":\"1\",\"parent\":0,\"position\":6,\"has_sidebar\":0,\"created_at\":\"2023-01-16T21:25:20.000000Z\",\"updated_at\":\"2023-01-16T21:25:20.000000Z\"}', '2023-01-16 18:26:12', '2023-01-16 18:26:12'),
(72, 5, 'MenuItem', 'store', '127.0.0.1', 'http://localhost:8000/cms/menu-items', '{\"menu_id\":\"8\",\"title_sw\":\"Report\",\"title_en\":\"Report\",\"link\":\"1\",\"url_external\":null,\"url\":\"publications\\/reports\",\"position\":7}', '2023-01-16 18:26:32', '2023-01-16 18:26:32'),
(73, 5, 'MenuItem', 'destroy', '127.0.0.1', 'http://localhost:8000/cms/menu-items/168', '{\"id\":168,\"title_sw\":\"Report\",\"title_en\":\"Report\",\"status\":1,\"menu_id\":8,\"url\":\"publications\\/reports\",\"url_external\":null,\"link\":1,\"parent\":167,\"position\":1,\"has_sidebar\":0,\"created_at\":\"2023-01-16T21:26:33.000000Z\",\"updated_at\":\"2023-01-17T05:39:10.000000Z\"}', '2023-01-17 02:43:02', '2023-01-17 02:43:02');
INSERT INTO `timelines` (`id`, `actor`, `object`, `verb`, `ip`, `url`, `content`, `created_at`, `updated_at`) VALUES
(74, 5, 'GoogleMap', 'update', '127.0.0.1', 'http://localhost:8000/cms/googlemaps/9', '{\"id\":9,\"url\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3961.65148407604!2d39.28604441528041!3d-6.812177168524247!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x185c4b9f45e37f19%3A0x9fa3effbdc78d7bc!2sNational%20Prosecutions%20Service.%20Office%20of%20the%20Director%20of%20Public%20Prosecutions.%20Dar%20es%20salaam.!5e0!3m2!1sen!2stz!4v1673937386261!5m2!1sen!2stz\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\",\"office_id\":\"1\",\"user_id\":5,\"created_at\":\"2022-08-07T14:32:43.000000Z\",\"updated_at\":\"2022-08-07T14:32:43.000000Z\"}', '2023-01-17 03:37:52', '2023-01-17 03:37:52'),
(75, 6, 'Administration', 'update', '127.0.0.1', 'http://localhost:8000/cms/administration/25', '{\"id\":25,\"salutation_en\":\"Mr\",\"salutation_sw\":\"Bw\",\"fullname\":\"Joseph S Pande\",\"position\":\"2\",\"title_sw\":\"Naibu Mkurugenzi\",\"title_en\":\"Deputy Director\",\"content_sw\":\"<p>test<\\/p>\",\"content_en\":\"<p>test<\\/p>\",\"photo_url\":\"4fa2d4f6fb3f91164ee4d4200257980d.jpeg\",\"email\":\"pejinu@mailinator.com\",\"phone\":\"0999999999\",\"created_at\":\"2023-01-16T12:29:29.000000Z\",\"updated_at\":\"2023-01-16T12:36:52.000000Z\",\"slug\":\"judah-moore\"}', '2023-01-17 03:57:53', '2023-01-17 03:57:53'),
(76, 6, 'Administration', 'update', '127.0.0.1', 'http://localhost:8000/cms/administration/21', '{\"id\":21,\"salutation_en\":\"Mr\",\"salutation_sw\":\"Mr\",\"fullname\":\"Sylvester A Mwakitalu\",\"position\":\"1\",\"title_sw\":\"Mkurugenzi Mkuu\",\"title_en\":\"Director\",\"content_sw\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,<\\/p>\",\"content_en\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,<\\/p>\",\"photo_url\":\"1344bd7a11c63f37aad477a4af2c4888.jpeg\",\"email\":\"ipsum@gmail.com\",\"phone\":\"099999999\",\"created_at\":\"2022-10-15T17:36:36.000000Z\",\"updated_at\":\"2023-01-16T12:28:14.000000Z\",\"slug\":\"john-doe\"}', '2023-01-17 03:59:16', '2023-01-17 03:59:16'),
(77, 6, 'Administration', 'update', '127.0.0.1', 'http://localhost:8000/cms/administration/21', '{\"id\":21,\"salutation_en\":\"Mr\",\"salutation_sw\":\"Bw\",\"fullname\":\"Sylvester A Mwakitalu\",\"position\":\"1\",\"title_sw\":\"Mkurugenzi Mkuu\",\"title_en\":\"Director\",\"content_sw\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,<\\/p>\",\"content_en\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,<\\/p>\",\"photo_url\":\"1344bd7a11c63f37aad477a4af2c4888.jpeg\",\"email\":\"ipsum@gmail.com\",\"phone\":\"099999999\",\"created_at\":\"2022-10-15T17:36:36.000000Z\",\"updated_at\":\"2023-01-17T06:59:16.000000Z\",\"slug\":\"john-doe\"}', '2023-01-17 03:59:47', '2023-01-17 03:59:47'),
(78, 6, 'RegionalOffice', 'update', '154.118.225.170', 'http://demo81.eganet.go.tz/nps/cms/regional_office/2', '{\"id\":2,\"name_en\":\"Hq\",\"name_sw\":\"Hq\",\"region\":\" Dodoma\",\"physical_address_sw\":\"Ofisi ya Taifa ya Mashtaka  Mkoa wa  Dodoma\\r\\nS.L.P. 963, DODOMA\\r\\nRUTABINGWA , NA. 026 2321074 mahakama\",\"physical_address_en\":\"Ofisi ya Taifa ya Mashtaka  Mkoa wa  Dodoma\\r\\nS.L.P. 963, DODOMA\\r\\nRUTABINGWA , NA. 026 2321074 mahakama\",\"phone\":\"+25526 2321889\",\"toll_free\":null,\"fax\":\"026 2321463 24\",\"email\":\"dodoma@nps.go.tz\",\"content_sw\":null,\"content_en\":null,\"photo_url\":null,\"latitude\":null,\"longitude\":null,\"slug\":\"hq\",\"headquarter\":\"1\",\"used_as\":\"1\",\"created_at\":\"2018-05-03T12:17:08.000000Z\",\"updated_at\":\"2019-05-16T12:48:26.000000Z\"}', '2023-01-18 14:55:14', '2023-01-18 14:55:14'),
(79, 6, 'Administration', 'update', '154.118.225.170', 'http://demo81.eganet.go.tz/nps/cms/administration/25', '{\"id\":25,\"salutation_en\":\"Mr\",\"salutation_sw\":\"Bw\",\"fullname\":\"Joseph S Pande\",\"position\":\"2\",\"title_sw\":\"Naibu Mkurugenzi\",\"title_en\":\"Deputy Director\",\"content_sw\":\"<p>Ndugu.Joseph Pande , aliteuliwa tarehe 11 mwezi Mei Mwaka 2021 na Rais wa Jamhuri ya Muungano wa Tanzania, Mhe. Samia Suluhu Hassan kuwa Naibu Mkurugenzi wa Mashtaka<\\/p>\",\"content_en\":\"<p>Mr.Joseph Pande ,was appointed on 11, May ,2021 by the President of the United Republic of Tanzania, Hon. Samia Suluhu Hassan to be the Deputy Director of Public Prosecutions<\\/p>\",\"photo_url\":\"be55aec9899deb4a7c943d420030e7d2.png\",\"email\":null,\"phone\":\"0999999999\",\"created_at\":\"2023-01-16T12:29:29.000000Z\",\"updated_at\":\"2023-01-17T06:57:53.000000Z\",\"slug\":\"naibu\"}', '2023-01-18 15:00:26', '2023-01-18 15:00:26'),
(80, 6, 'Administration', 'update', '154.118.225.170', 'http://demo81.eganet.go.tz/nps/cms/administration/21', '{\"id\":21,\"salutation_en\":\"Mr\",\"salutation_sw\":\"Bw\",\"fullname\":\"Sylvester A Mwakitalu\",\"position\":\"1\",\"title_sw\":\"Mkurugenzi Mkuu\",\"title_en\":\"Director\",\"content_sw\":\"<p>Ndugu. Sylvester Mwakitalu , aliteuliwa tarehe 11, Mei 2021 na Rais wa Jamhuri ya Muungano wa Tanzania, Mhe. Samia Suluhu Hassan kuwa Mkurugenzi wa Mashtaka<\\/p>\",\"content_en\":\"<p>Mr.Sylvester Mwakitalu , was appointed on 11, May ,2021 by the President of the United Republic of Tanzania, Hon. Samia Suluhu Hassan to be the Director of Public Prosecutions<\\/p>\",\"photo_url\":\"00a265c5e3bbc4096ea848f11f3e9857.png\",\"email\":null,\"phone\":\"099999999\",\"created_at\":\"2022-10-15T17:36:36.000000Z\",\"updated_at\":\"2023-01-17T06:59:47.000000Z\",\"slug\":\"dg\"}', '2023-01-18 15:00:52', '2023-01-18 15:00:52'),
(81, 6, 'MenuItem', 'update', '154.118.225.170', 'http://demo81.eganet.go.tz/nps/cms/menu-items/229', '{\"id\":229,\"title_sw\":\"Katiba\",\"title_en\":\"Constitution\",\"status\":0,\"menu_id\":\"8\",\"url\":\"publications\\/constitution\",\"url_external\":null,\"link\":\"1\",\"parent\":191,\"position\":1,\"has_sidebar\":0,\"created_at\":\"2018-06-28T12:27:20.000000Z\",\"updated_at\":\"2019-05-30T07:32:25.000000Z\"}', '2023-01-18 15:07:54', '2023-01-18 15:07:54'),
(82, 6, 'MenuItem', 'update', '154.118.225.170', 'http://demo81.eganet.go.tz/nps/cms/menu-items/201', '{\"id\":201,\"title_sw\":\"Fomu\",\"title_en\":\"Forms\",\"status\":0,\"menu_id\":\"8\",\"url\":\"publications\\/forms\",\"url_external\":null,\"link\":\"1\",\"parent\":191,\"position\":2,\"has_sidebar\":0,\"created_at\":\"2018-06-27T09:07:34.000000Z\",\"updated_at\":\"2019-05-30T07:32:25.000000Z\"}', '2023-01-18 15:08:08', '2023-01-18 15:08:08'),
(83, 6, 'MenuItem', 'update', '154.118.225.170', 'http://demo81.eganet.go.tz/nps/cms/menu-items/192', '{\"id\":192,\"title_sw\":\"Sheria\",\"title_en\":\"Legislations\",\"status\":0,\"menu_id\":\"8\",\"url\":\"publications\\/legislation\",\"url_external\":null,\"link\":\"1\",\"parent\":191,\"position\":3,\"has_sidebar\":0,\"created_at\":\"2018-06-26T18:26:29.000000Z\",\"updated_at\":\"2019-05-30T07:32:25.000000Z\"}', '2023-01-18 15:08:20', '2023-01-18 15:08:20'),
(84, 6, 'MenuItem', 'update', '154.118.225.170', 'http://demo81.eganet.go.tz/nps/cms/menu-items/200', '{\"id\":200,\"title_sw\":\"Taarifa\",\"title_en\":\"Reports\",\"status\":0,\"menu_id\":\"8\",\"url\":\"publications\\/reports\",\"url_external\":null,\"link\":\"1\",\"parent\":191,\"position\":4,\"has_sidebar\":0,\"created_at\":\"2018-06-27T03:40:48.000000Z\",\"updated_at\":\"2019-05-30T07:32:25.000000Z\"}', '2023-01-18 15:08:33', '2023-01-18 15:08:33'),
(85, 6, 'MenuItem', 'update', '154.118.225.170', 'http://demo81.eganet.go.tz/nps/cms/menu-items/194', '{\"id\":194,\"title_sw\":\"Maamuzi ya Mahakama\",\"title_en\":\"Court Judgement\",\"status\":0,\"menu_id\":\"8\",\"url\":\"publications\\/court-judgement\",\"url_external\":null,\"link\":\"1\",\"parent\":191,\"position\":5,\"has_sidebar\":0,\"created_at\":\"2018-06-26T18:28:07.000000Z\",\"updated_at\":\"2019-05-30T07:32:25.000000Z\"}', '2023-01-18 15:08:45', '2023-01-18 15:08:45'),
(86, 6, 'MenuItem', 'update', '154.118.225.170', 'http://demo81.eganet.go.tz/nps/cms/menu-items/198', '{\"id\":198,\"title_sw\":\"Maktaba ya Picha\",\"title_en\":\"Photo Gallery\",\"status\":0,\"menu_id\":\"8\",\"url\":\"galleries\\/listing\\/photos\",\"url_external\":null,\"link\":\"1\",\"parent\":195,\"position\":3,\"has_sidebar\":0,\"created_at\":\"2018-06-26T18:39:23.000000Z\",\"updated_at\":\"2019-05-30T07:32:25.000000Z\"}', '2023-01-18 15:09:01', '2023-01-18 15:09:01'),
(87, 6, 'Translation', 'store', '154.118.225.170', 'http://demo81.eganet.go.tz/nps/cms/translations', '{\"keyword\":\"lbl_right_reserved\",\"en\":\"All Rights Reserved\",\"sw\":\"Haki zote Zimehifadhiwa\"}', '2023-01-18 15:10:46', '2023-01-18 15:10:46'),
(88, 6, 'News', 'store', '154.118.227.58', 'http://demo81.eganet.go.tz/nps/cms/news', '{\"title_en\":\"Atque et saepe sit\",\"title_sw\":\"Aut quis nihil conse\",\"content_en\":\"<p>m<\\/p>\",\"content_sw\":\"<p>m<\\/p>\",\"active\":\"1\",\"photo_url\":\"28c41f0f6b016aa63dc7b8fac83d74c4.png\",\"user_id\":6,\"slug\":\"atque-et-saepe-sit\"}', '2023-01-31 08:32:50', '2023-01-31 08:32:50'),
(89, 6, 'News', 'update', '154.118.227.58', 'http://demo81.eganet.go.tz/nps/cms/news/167', '{\"id\":167,\"title_sw\":\"Aut quis nihil conse\",\"title_en\":\"Atque et saepe sit\",\"summary_sw\":\"\",\"summary_en\":null,\"content_sw\":\"<p><a href=\\\"https:\\/\\/ega.go.tz\\u00a0\\\">this is link<img alt=\\\"\\\" src=\\\"http:\\/\\/demo81.eganet.go.tz\\/nps\\/uploads\\/gallery\\/1667995998-IMG-20221103-WA0048.jpg\\\" style=\\\"height:400px; width:600px\\\" \\/><\\/a><\\/p>\",\"content_en\":\"<p><a href=\\\"https:\\/\\/ega.go.tz\\u00a0\\\">this is link<\\/a><\\/p>\",\"active\":\"1\",\"user_id\":6,\"slug\":\"atque-et-saepe-sit\",\"photo_url\":\"28c41f0f6b016aa63dc7b8fac83d74c4.png\",\"created_at\":\"2023-01-31T11:32:50.000000Z\",\"updated_at\":\"2023-01-31T11:32:50.000000Z\"}', '2023-01-31 08:34:04', '2023-01-31 08:34:04'),
(90, 6, 'News', 'update', '154.118.227.58', 'http://demo81.eganet.go.tz/nps/cms/news/167', '{\"id\":167,\"title_sw\":\"Aut quis nihil conse\",\"title_en\":\"Atque et saepe sit\",\"summary_sw\":\"\",\"summary_en\":null,\"content_sw\":\"<p><a href=\\\"https:\\/\\/ega.go.tz\\u00a0\\\">this is link<\\/a><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><a href=\\\"https:\\/\\/ega.go.tz\\u00a0\\\"><img alt=\\\"\\\" src=\\\"http:\\/\\/demo81.eganet.go.tz\\/nps\\/uploads\\/gallery\\/1667995998-IMG-20221103-WA0048.jpg\\\" style=\\\"height:400px; width:600px\\\" \\/><\\/a><\\/p>\",\"content_en\":\"<p><a href=\\\"https:\\/\\/ega.go.tz\\u00a0\\\">this is link<\\/a><\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"http:\\/\\/demo81.eganet.go.tz\\/nps\\/uploads\\/gallery\\/1667995218-IMG-20221103-WA0047.jpg\\\" style=\\\"height:400px; width:600px\\\" \\/><\\/p>\",\"active\":\"1\",\"user_id\":6,\"slug\":\"atque-et-saepe-sit\",\"photo_url\":\"28c41f0f6b016aa63dc7b8fac83d74c4.png\",\"created_at\":\"2023-01-31T11:32:50.000000Z\",\"updated_at\":\"2023-01-31T11:34:04.000000Z\"}', '2023-01-31 08:35:03', '2023-01-31 08:35:03'),
(91, 6, 'News', 'update', '154.118.227.58', 'http://demo81.eganet.go.tz/nps/cms/news/167', '{\"id\":167,\"title_sw\":\"Aut quis nihil conse\",\"title_en\":\"Atque et saepe sit\",\"summary_sw\":\"\",\"summary_en\":null,\"content_sw\":\"<p><a href=\\\"https:\\/\\/ega.go.tz\\u00a0\\\">this is link<\\/a>&nbsp;and this not a link<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><a href=\\\"https:\\/\\/ega.go.tz\\u00a0\\\"><img alt=\\\"\\\" src=\\\"http:\\/\\/demo81.eganet.go.tz\\/nps\\/uploads\\/gallery\\/1667995998-IMG-20221103-WA0048.jpg\\\" style=\\\"height:400px; width:600px\\\" \\/><\\/a><\\/p>\",\"content_en\":\"<p><a href=\\\"https:\\/\\/ega.go.tz\\u00a0\\\">this is link<\\/a>&nbsp;and this not a link<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\\" src=\\\"http:\\/\\/demo81.eganet.go.tz\\/nps\\/uploads\\/gallery\\/1667995218-IMG-20221103-WA0047.jpg\\\" style=\\\"height:400px; width:600px\\\" \\/><\\/p>\",\"active\":\"1\",\"user_id\":6,\"slug\":\"atque-et-saepe-sit\",\"photo_url\":\"28c41f0f6b016aa63dc7b8fac83d74c4.png\",\"created_at\":\"2023-01-31T11:32:50.000000Z\",\"updated_at\":\"2023-01-31T11:35:03.000000Z\"}', '2023-01-31 08:35:42', '2023-01-31 08:35:42'),
(92, 6, 'Events', 'store', '154.118.227.58', 'http://demo81.eganet.go.tz/nps/cms/events', '{\"event_date\":\"1981-09-10\",\"event_time\":\"07:00AM - 12:30PM\",\"location\":\"Id optio aliquam v\",\"contact\":\"cynacuwab@mailinator.com\",\"title_en\":\"Animi voluptatem E\",\"title_sw\":\"Dolores et id adipi\",\"content_en\":\"<p>demo<\\/p>\",\"content_sw\":\"<p>demo<\\/p>\",\"active\":\"1\",\"photo_url\":\"c81c65892bf728f9f5d891a63163f53e.png\",\"user_id\":6,\"slug\":\"animi-voluptatem-e\"}', '2023-01-31 08:38:26', '2023-01-31 08:38:26'),
(93, 6, 'Events', 'destroy', '154.118.227.58', 'http://demo81.eganet.go.tz/nps/cms/events/1', '{\"id\":1,\"event_date\":\"1981-09-10\",\"event_time\":\"07:00AM - 12:30PM\",\"location\":\"Id optio aliquam v\",\"contact\":\"cynacuwab@mailinator.com\",\"title_sw\":\"Dolores et id adipi\",\"title_en\":\"Animi voluptatem E\",\"summary_sw\":\"\",\"summary_en\":null,\"content_sw\":\"<p>demo<\\/p>\",\"content_en\":\"<p>demo<\\/p>\",\"active\":1,\"user_id\":6,\"slug\":\"animi-voluptatem-e\",\"photo_url\":\"c81c65892bf728f9f5d891a63163f53e.png\",\"created_at\":\"2023-01-31T11:38:26.000000Z\",\"updated_at\":\"2023-01-31T11:38:26.000000Z\"}', '2023-01-31 08:39:11', '2023-01-31 08:39:11'),
(94, 6, 'Photo', 'bulkUpload', '154.118.227.58', 'http://demo81.eganet.go.tz/nps/cms/media/bulk-upload-images/24', '{\"gallery_id\":\"24\",\"mime\":\"images\\/png\",\"path\":\"\\/uploads\\/gallery\\/\",\"filename\":\"193faf8365d59dd328658c1e533cb95b.png\",\"slug\":\"193faf8365d59dd328658c1e533cb95b-png\"}', '2023-01-31 08:40:50', '2023-01-31 08:40:50'),
(95, 6, 'Photo', 'update', '154.118.227.58', 'http://demo81.eganet.go.tz/nps/cms/media/877', '{\"id\":877,\"title_en\":\"\",\"title_sw\":\"\",\"content_en\":\"At enim illo est vol\",\"content_sw\":\"Qui similique irure\",\"mime\":\"images\\/jpeg\",\"path\":\"\\/uploads\\/gallery\\/\",\"url\":\"\",\"filename\":\"26d1f9fc1a550642ec7f6cf2306c0b77.jpeg\",\"iconurl\":\"\",\"slug\":\"193faf8365d59dd328658c1e533cb95b-png\",\"user_id\":0,\"gallery_id\":24,\"status\":\"1\",\"created_at\":\"2023-01-31T11:40:50.000000Z\",\"updated_at\":\"2023-01-31T11:40:50.000000Z\"}', '2023-01-31 08:43:32', '2023-01-31 08:43:32'),
(96, 6, 'Photo', 'update', '154.118.227.58', 'http://demo81.eganet.go.tz/nps/cms/media/877', '{\"id\":877,\"title_en\":\"\",\"title_sw\":\"\",\"content_en\":\"MHE. RAIS SAMIA SULUHU HASSAN AKUTANA NA VIONGOZI WA TAASISI MBALIMBALI IKULU JIJINI DAR ES SALAAM TAREHE 30 JANUAI, 2023\",\"content_sw\":\"MHE. RAIS SAMIA SULUHU HASSAN AKUTANA NA VIONGOZI WA TAASISI MBALIMBALI IKULU JIJINI DAR ES SALAAM TAREHE 30 JANUAI, 2023\",\"mime\":\"images\\/jpeg\",\"path\":\"\\/uploads\\/gallery\\/\",\"url\":\"\",\"filename\":\"e26eeda1d8d4265581d378dfa0b117bc.jpeg\",\"iconurl\":\"\",\"slug\":\"193faf8365d59dd328658c1e533cb95b-png\",\"user_id\":0,\"gallery_id\":24,\"status\":\"1\",\"created_at\":\"2023-01-31T11:40:50.000000Z\",\"updated_at\":\"2023-01-31T11:43:32.000000Z\"}', '2023-01-31 08:44:44', '2023-01-31 08:44:44'),
(97, 6, 'WelcomeNote', 'update', '154.118.227.58', 'http://demo81.eganet.go.tz/nps/cms/welcome/2', '{\"id\":2,\"summary_en\":\"The Management of the National Prosecutions Office, would like to invite all stakeholders to the website of the National Prosecution services.\",\"summary_sw\":\"Uongozi na Menejimenti nzima pamoja na Wafanyakazi wa Ofisi ya Taifa ya Mashtaka, wanawakaribisha  wadau wote ndani na nje ya nchi kutembelea Tovuti ya ofisi kwa ajili ya kupata na kujua juu ya taarifa mbalimbali ambazo ofisi inashughulika nayo. karibuni \",\"content_sw\":\"<p style=\\\"text-align:justify\\\">edit Uongozi na Menejimenti nzima pamoja na Wafanyakazi wa Ofisi ya Taifa ya Mashtaka, unapenda kuwakaribisha wadau wote kwenye Tovuti ya ofisi. Tovuti hii imesanifiwa kiufundi na maalum kwa ajili ya kutoa taarifa kwa wadau ndani na nje ya nchi juu ya masuala ya uendeshaji wa mashtaka.<\\/p>\",\"content_en\":\"<p>edit The overall management and management of the National Prosecutor&#39;s Office, you would like to invite all stakeholders to the office of the Office. This site is dedicated to technical and specific information for reporting to both domestic and international stakeholders on prosecution issues......<\\/p>\\r\\n\\r\\n<p style=\\\"text-align:justify\\\">&nbsp;<\\/p>\",\"status\":\"1\",\"created_at\":\"2023-01-18T16:41:11.000000Z\",\"updated_at\":\"2022-08-07T16:13:16.000000Z\"}', '2023-01-31 08:48:33', '2023-01-31 08:48:33'),
(98, 6, 'WelcomeNote', 'update', '154.118.227.58', 'http://demo81.eganet.go.tz/nps/cms/welcome/2', '{\"id\":2,\"summary_en\":\"The Management of the National Prosecutions Office, would like to invite all stakeholders to the website of the National Prosecution services.\",\"summary_sw\":\"Uongozi na Menejimenti nzima pamoja na Wafanyakazi wa Ofisi ya Taifa ya Mashtaka, wanawakaribisha  wadau wote ndani na nje ya nchi kutembelea Tovuti ya ofisi kwa ajili ya kupata na kujua juu ya taarifa mbalimbali ambazo ofisi inashughulika nayo. karibuni \",\"content_sw\":\"<p style=\\\"text-align:justify\\\">Uongozi na Menejimenti nzima pamoja na Wafanyakazi wa Ofisi ya Taifa ya Mashtaka, unapenda kuwakaribisha wadau wote kwenye Tovuti ya ofisi. Tovuti hii imesanifiwa kiufundi na maalum kwa ajili ya kutoa taarifa kwa wadau ndani na nje ya nchi juu ya masuala ya uendeshaji wa mashtaka.<\\/p>\",\"content_en\":\"<p>The overall management and management of the National Prosecutor&#39;s Office, you would like to invite all stakeholders to the office of the Office. This site is dedicated to technical and specific information for reporting to both domestic and international stakeholders on prosecution issues......<\\/p>\\r\\n\\r\\n<p style=\\\"text-align:justify\\\">&nbsp;<\\/p>\",\"status\":\"1\",\"created_at\":\"2023-01-31T14:48:33.000000Z\",\"updated_at\":\"2023-01-31T11:48:33.000000Z\"}', '2023-01-31 08:49:08', '2023-01-31 08:49:08'),
(99, 6, 'RelatedLink', 'store', '154.118.227.58', 'http://demo81.eganet.go.tz/nps/cms/related_links', '{\"title_sw\":\"Voluptatum debitis a\",\"title_en\":\"Porro libero magni a\",\"link\":\"1\",\"url_external\":null,\"url\":\"administration\\/ministerial-advisory-board\"}', '2023-01-31 08:52:03', '2023-01-31 08:52:03'),
(100, 6, 'RelatedLink', 'destroy', '154.118.227.58', 'http://demo81.eganet.go.tz/nps/cms/related_links/35', '{\"id\":35,\"title_sw\":\"Voluptatum debitis a\",\"title_en\":\"Porro libero magni a\",\"link\":1,\"url\":\"administration\\/ministerial-advisory-board\",\"url_external\":null,\"active\":1,\"created_at\":\"2023-01-31T11:52:03.000000Z\",\"updated_at\":\"2023-01-31T11:52:10.000000Z\",\"parent\":0,\"position\":1}', '2023-01-31 08:52:24', '2023-01-31 08:52:24'),
(101, 6, 'ImportantLink', 'store', '154.118.227.58', 'http://demo81.eganet.go.tz/nps/cms/important_links', '{\"title_sw\":\"Mollitia omnis delec\",\"title_en\":\"Magna dolor proident\",\"url\":\"https:\\/\\/www.sopokexovy.tv\"}', '2023-01-31 08:52:30', '2023-01-31 08:52:30'),
(102, 6, 'ImportantLink', 'destroy', '154.118.227.58', 'http://demo81.eganet.go.tz/nps/cms/important_links/12', '{\"id\":12,\"title_sw\":\"Mollitia omnis delec\",\"title_en\":\"Magna dolor proident\",\"url\":\"https:\\/\\/www.sopokexovy.tv\",\"active\":1,\"created_at\":\"2023-01-31T11:52:30.000000Z\",\"updated_at\":\"2023-01-31T11:52:36.000000Z\",\"parent\":0,\"position\":1}', '2023-01-31 08:52:47', '2023-01-31 08:52:47'),
(103, 6, 'QuickLink', 'store', '154.118.227.58', 'http://demo81.eganet.go.tz/nps/cms/quick_links', '{\"title_sw\":\"Aut incidunt ea ver\",\"title_en\":\"Officia consequatur\",\"link\":\"1\",\"url_external\":null,\"url\":\"speeches\"}', '2023-01-31 08:52:53', '2023-01-31 08:52:53'),
(104, 6, 'QuickLink', 'destroy', '154.118.227.58', 'http://demo81.eganet.go.tz/nps/cms/quick_links/9', '{\"id\":9,\"title_sw\":\"Aut incidunt ea ver\",\"title_en\":\"Officia consequatur\",\"link\":1,\"url\":\"speeches\",\"url_external\":null,\"active\":1,\"created_at\":\"2023-01-31T11:52:53.000000Z\",\"updated_at\":\"2023-01-31T11:52:53.000000Z\",\"parent\":0,\"position\":1,\"category_id\":0}', '2023-01-31 08:53:07', '2023-01-31 08:53:07'),
(105, 6, 'SocialLink', 'store', '154.118.227.58', 'http://demo81.eganet.go.tz/nps/cms/social_links', '{\"title_en\":\"facebook\",\"url\":\"https:\\/\\/www.byqykok.biz\"}', '2023-01-31 08:53:16', '2023-01-31 08:53:16'),
(106, 6, 'Administration', 'store', '154.118.227.58', 'http://demo81.eganet.go.tz/nps/cms/administration', '{\"salutation_sw\":\"Voluptatem temporib\",\"salutation_en\":\"Occaecat ut explicab\",\"fullname\":\"Jenette Nash\",\"title_sw\":\"Officiis quia conseq\",\"title_en\":\"Impedit odit omnis\",\"email\":\"vajyt@mailinator.com\",\"phone\":\"255786399301\",\"position\":\"2\",\"content_sw\":\"<p>emo<\\/p>\",\"content_en\":\"<p>demo<\\/p>\",\"photo_url\":\"1250520b6523e047523794eaa42bc72a.jpeg\",\"slug\":\"jenette-nash\"}', '2023-01-31 08:54:28', '2023-01-31 08:54:28'),
(107, 6, 'Administration', 'update', '154.118.227.58', 'http://demo81.eganet.go.tz/nps/cms/administration/25', '{\"id\":25,\"salutation_en\":\"Mr\",\"salutation_sw\":\"Bw\",\"fullname\":\"Joseph S Pande\",\"position\":\"0\",\"title_sw\":\"Naibu Mkurugenzi\",\"title_en\":\"Deputy Director\",\"content_sw\":\"<p>Ndugu.Joseph Pande , aliteuliwa tarehe 11 mwezi Mei Mwaka 2021 na Rais wa Jamhuri ya Muungano wa Tanzania, Mhe. Samia Suluhu Hassan kuwa Naibu Mkurugenzi wa Mashtaka<\\/p>\",\"content_en\":\"<p>Mr.Joseph Pande ,was appointed on 11, May ,2021 by the President of the United Republic of Tanzania, Hon. Samia Suluhu Hassan to be the Deputy Director of Public Prosecutions<\\/p>\",\"photo_url\":\"be55aec9899deb4a7c943d420030e7d2.png\",\"email\":null,\"phone\":\"0999999999\",\"created_at\":\"2023-01-16T12:29:29.000000Z\",\"updated_at\":\"2023-01-18T18:00:26.000000Z\",\"slug\":\"naibu\"}', '2023-01-31 08:54:56', '2023-01-31 08:54:56'),
(108, 6, 'Administration', 'update', '154.118.227.58', 'http://demo81.eganet.go.tz/nps/cms/administration/25', '{\"id\":25,\"salutation_en\":\"Mr\",\"salutation_sw\":\"Bw\",\"fullname\":\"Joseph S Pande\",\"position\":\"2\",\"title_sw\":\"Naibu Mkurugenzi\",\"title_en\":\"Deputy Director\",\"content_sw\":\"<p>Ndugu.Joseph Pande , aliteuliwa tarehe 11 mwezi Mei Mwaka 2021 na Rais wa Jamhuri ya Muungano wa Tanzania, Mhe. Samia Suluhu Hassan kuwa Naibu Mkurugenzi wa Mashtaka<\\/p>\",\"content_en\":\"<p>Mr.Joseph Pande ,was appointed on 11, May ,2021 by the President of the United Republic of Tanzania, Hon. Samia Suluhu Hassan to be the Deputy Director of Public Prosecutions<\\/p>\",\"photo_url\":\"be55aec9899deb4a7c943d420030e7d2.png\",\"email\":null,\"phone\":\"0999999999\",\"created_at\":\"2023-01-16T12:29:29.000000Z\",\"updated_at\":\"2023-01-31T11:54:56.000000Z\",\"slug\":\"naibu\"}', '2023-01-31 08:55:40', '2023-01-31 08:55:40'),
(109, 6, 'Documents', 'store', '154.118.227.58', 'http://demo81.eganet.go.tz/nps/cms/documents', '{\"title_sw\":\"Eius et eum numquam\",\"title_en\":\"Eos ut deserunt con\",\"category_id\":\"23\",\"active\":\"1\",\"published_date\":\"1987-06-02\",\"file_sw\":\"sw-1675166249-pdf.pdf\",\"file_en\":\"en-1675166249-pdf.pdf\"}', '2023-01-31 08:57:29', '2023-01-31 08:57:29'),
(110, 6, 'Documents', 'destroy', '154.118.227.58', 'http://demo81.eganet.go.tz/nps/cms/documents/73', '{\"id\":73,\"title_sw\":\"Eius et eum numquam\",\"title_en\":\"Eos ut deserunt con\",\"file_sw\":\"sw-1675166249-pdf.pdf\",\"file_en\":\"en-1675166249-pdf.pdf\",\"featured\":0,\"active\":1,\"published_date\":\"1987-06-02\",\"category_id\":23,\"created_at\":\"2023-01-31T11:57:29.000000Z\",\"updated_at\":\"2023-01-31T11:57:29.000000Z\"}', '2023-01-31 08:57:46', '2023-01-31 08:57:46'),
(111, 6, 'MenuItem', 'store', '154.118.227.58', 'http://demo81.eganet.go.tz/nps/cms/menu-items', '{\"menu_id\":\"1\",\"title_sw\":\"Exercitation aut mai\",\"title_en\":\"Odio sed id laborum\",\"link\":\"0\",\"url_external\":\"https:\\/\\/www.lavehupake.co.uk\",\"url\":\"https:\\/\\/www.lavehupake.co.uk\",\"position\":7}', '2023-01-31 08:58:08', '2023-01-31 08:58:08'),
(112, 6, 'MenuItem', 'store', '154.118.227.58', 'http://demo81.eganet.go.tz/nps/cms/menu-items', '{\"menu_id\":\"1\",\"title_sw\":\"Wasiliana Nasi\",\"title_en\":\"Contact Us\",\"link\":\"1\",\"url_external\":null,\"url\":\"contacts\",\"position\":8}', '2023-01-31 08:59:50', '2023-01-31 08:59:50'),
(113, 6, 'MenuItem', 'store', '154.118.227.58', 'http://demo81.eganet.go.tz/nps/cms/menu-items', '{\"menu_id\":\"1\",\"title_sw\":\"feedback\",\"title_en\":\"feedback\",\"link\":\"1\",\"url_external\":null,\"url\":\"complaints\",\"position\":9}', '2023-01-31 09:01:37', '2023-01-31 09:01:37'),
(114, 6, 'RegionalOffice', 'update', '154.118.227.58', 'http://demo81.eganet.go.tz/nps/cms/regional_office/25', '{\"id\":25,\"name_en\":\"MUSOMA\",\"name_sw\":\"MUSOMA\",\"region\":\"Mara\",\"physical_address_sw\":\"Ofisi ya Taifa ya Mashtaka  Mkoa wa Mara\\r\\nS.L.P. 823, MUSOMA\",\"physical_address_en\":\"Ofisi ya Taifa ya Mashtaka  Mkoa wa Mara\\r\\nS.L.P. 823, MUSOMA\",\"phone\":\"SIMU: 028 2620576\",\"toll_free\":null,\"fax\":\"FAX NO. 028 620574\",\"email\":\"mara@nps.go.tz\",\"content_sw\":null,\"content_en\":null,\"photo_url\":null,\"latitude\":null,\"longitude\":null,\"slug\":\"musoma\",\"headquarter\":\"0\",\"used_as\":\"1\",\"created_at\":\"2019-05-17T09:20:01.000000Z\",\"updated_at\":\"2019-05-17T09:20:01.000000Z\"}', '2023-01-31 09:03:58', '2023-01-31 09:03:58'),
(115, 6, 'Administration', 'destroy', '154.118.227.58', 'http://demo81.eganet.go.tz/nps/cms/administration/26', '{\"id\":26,\"salutation_en\":\"Occaecat ut explicab\",\"salutation_sw\":\"Voluptatem temporib\",\"fullname\":\"Jenette Nash\",\"position\":2,\"title_sw\":\"Officiis quia conseq\",\"title_en\":\"Impedit odit omnis\",\"content_sw\":\"<p>emo<\\/p>\",\"content_en\":\"<p>demo<\\/p>\",\"photo_url\":\"1250520b6523e047523794eaa42bc72a.jpeg\",\"email\":\"vajyt@mailinator.com\",\"phone\":\"255786399301\",\"created_at\":\"2023-01-31T11:54:28.000000Z\",\"updated_at\":\"2023-01-31T11:54:28.000000Z\",\"slug\":\"jenette-nash\"}', '2023-01-31 10:57:15', '2023-01-31 10:57:15'),
(116, 6, 'Preference', 'update', '154.118.227.58', 'http://demo81.eganet.go.tz/nps/cms/preferences/5', '{\"id\":5,\"feedback_email\":\"info@npsdemo.go.tz\",\"whistle_email\":\"report@hst.go.tz\",\"show_loading\":1,\"logo\":null,\"member_icon\":\"C:\\\\xampp\\\\tmp\\\\php14BB.tmp\",\"project_icon\":null,\"university_icon\":null,\"school_icon\":null,\"user_id\":0,\"created_at\":\"2022-03-11T06:49:56.000000Z\",\"updated_at\":\"2022-10-14T13:14:07.000000Z\"}', '2023-01-31 11:08:33', '2023-01-31 11:08:33'),
(117, 6, 'Translation', 'trans_update', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/trans_update', '{\"id\":281,\"keyword\":\"lbl_site_sub_subtitle\",\"en\":\"NATIONAL PROSECUTIONS\",\"sw\":\"NATIONAL PROSECUTIONS\",\"created_at\":\"2021-08-06T14:37:55.000000Z\",\"updated_at\":\"2022-10-16T11:05:33.000000Z\"}', '2023-02-02 10:35:59', '2023-02-02 10:35:59'),
(118, 6, 'Translation', 'trans_update', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/trans_update', '{\"id\":1,\"keyword\":\"lbl_site_title\",\"en\":\"NATIONAL PROSECUTIONS MILITARY\",\"sw\":\"JESHI LA MASHTAKA\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2022-10-16T11:05:33.000000Z\"}', '2023-02-02 10:35:59', '2023-02-02 10:35:59'),
(119, 6, 'Translation', 'trans_update', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/trans_update', '{\"id\":99,\"keyword\":\"lbl_content_maintained \",\"en\":\"Content Maintained by NATIONAL PROSECUTIONS\",\"sw\":\"Huendeshwa na NATIONAL PROSECUTIONS\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2022-10-16T11:05:33.000000Z\"}', '2023-02-02 10:35:59', '2023-02-02 10:35:59'),
(120, 6, 'Translation', 'trans_update', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/trans_update', '{\"id\":2,\"keyword\":\"lbl_site_subtitle\",\"en\":\"The United Republic of Tanganyikaia\",\"sw\":\"Jamhuri ya Muungano wa Tanganyika\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2022-08-14T05:40:41.000000Z\"}', '2023-02-02 10:38:56', '2023-02-02 10:38:56'),
(121, 6, 'Translation', 'trans_update', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/trans_update', '{\"id\":1,\"keyword\":\"lbl_site_title\",\"en\":\"NATIONAL PROSECUTIONS SERVICES\",\"sw\":\"OFISI YA TAIFA YA MASHTAKA\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2023-02-02T13:35:59.000000Z\"}', '2023-02-02 10:40:09', '2023-02-02 10:40:09'),
(122, 6, 'Translation', 'trans_update', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/trans_update', '{\"id\":292,\"keyword\":\"lbl_latest_announcement\",\"en\":\"Latest Announcements\",\"sw\":\"Matangazo Mapya\",\"created_at\":\"2021-08-06T14:49:39.000000Z\",\"updated_at\":\"2021-08-06T14:49:39.000000Z\"}', '2023-02-02 10:40:32', '2023-02-02 10:40:32'),
(123, 6, 'Translation', 'trans_update', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/trans_update', '{\"id\":2,\"keyword\":\"lbl_site_subtitle\",\"en\":\"The United Republic of Tanzania\",\"sw\":\"Jamhuri ya Muungano wa Tanzania\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2023-02-02T13:38:56.000000Z\"}', '2023-02-02 10:40:32', '2023-02-02 10:40:32'),
(124, 6, 'Translation', 'trans_update', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/trans_update', '{\"id\":22,\"keyword\":\"lbl_announcements\",\"en\":\"Announcements\",\"sw\":\"Matangazo\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2020-04-17T09:41:00.000000Z\"}', '2023-02-02 10:40:32', '2023-02-02 10:40:32'),
(125, 6, 'Translation', 'trans_update', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/trans_update', '{\"id\":40,\"keyword\":\"lbl_more_announcements\",\"en\":\"View All Announcements\",\"sw\":\"Matangazo Zaidi\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2020-08-05T04:43:45.000000Z\"}', '2023-02-02 10:40:32', '2023-02-02 10:40:32'),
(126, 6, 'Translation', 'trans_update', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/trans_update', '{\"id\":366,\"keyword\":\"lbl_advertisements\",\"en\":\"Advertisements\",\"sw\":\"Matangazo\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2022-08-06T14:25:37.000000Z\"}', '2023-02-02 10:40:32', '2023-02-02 10:40:32'),
(127, 6, 'MenuItem', 'destroy', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/menu-items/234', '{\"id\":234,\"title_sw\":\"Exercitation aut mai\",\"title_en\":\"Odio sed id laborum\",\"status\":1,\"menu_id\":1,\"url\":\"https:\\/\\/www.lavehupake.co.uk\",\"url_external\":\"https:\\/\\/www.lavehupake.co.uk\",\"link\":0,\"parent\":0,\"position\":7,\"has_sidebar\":0,\"created_at\":\"2023-01-31T11:58:08.000000Z\",\"updated_at\":\"2023-01-31T11:58:08.000000Z\"}', '2023-02-02 10:43:32', '2023-02-02 10:43:32'),
(128, 6, 'MenuItem', 'update', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/menu-items/235', '{\"id\":235,\"title_sw\":\"Wasiliana Nasiaaaaaaaaaaaaa\",\"title_en\":\"Contact Usqqq\",\"status\":1,\"menu_id\":\"1\",\"url\":\"contacts\",\"url_external\":null,\"link\":\"1\",\"parent\":0,\"position\":8,\"has_sidebar\":0,\"created_at\":\"2023-01-31T11:59:50.000000Z\",\"updated_at\":\"2023-01-31T11:59:50.000000Z\"}', '2023-02-02 10:44:30', '2023-02-02 10:44:30'),
(129, 6, 'MenuItem', 'update', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/menu-items/235', '{\"id\":235,\"title_sw\":\"Wasiliana Nasi\",\"title_en\":\"Contact Us\",\"status\":1,\"menu_id\":\"1\",\"url\":\"contacts\",\"url_external\":null,\"link\":\"1\",\"parent\":0,\"position\":1,\"has_sidebar\":0,\"created_at\":\"2023-01-31T11:59:50.000000Z\",\"updated_at\":\"2023-02-02T13:45:05.000000Z\"}', '2023-02-02 10:45:17', '2023-02-02 10:45:17'),
(130, 6, 'MenuItem', 'store', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/menu-items', '{\"menu_id\":\"1\",\"title_sw\":\"CMIS\",\"title_en\":\"CMIS\",\"link\":\"0\",\"url_external\":\"https:\\/\\/ega.go.tz\\/\",\"url\":\"https:\\/\\/ega.go.tz\\/\",\"position\":7}', '2023-02-02 10:49:12', '2023-02-02 10:49:12'),
(131, 6, 'MenuItem', 'store', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/menu-items', '{\"menu_id\":\"8\",\"title_sw\":\"Idara\",\"title_en\":\"Departments\",\"link\":\"1\",\"url_external\":null,\"url\":\"#\",\"position\":7}', '2023-02-02 10:55:08', '2023-02-02 10:55:08'),
(132, 6, 'MenuItem', 'store', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/menu-items', '{\"menu_id\":\"8\",\"title_sw\":\"DCM\",\"title_en\":\"DCM\",\"link\":\"1\",\"url_external\":null,\"url\":\"#\",\"position\":8}', '2023-02-02 10:57:08', '2023-02-02 10:57:08'),
(133, 6, 'MenuItem', 'store', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/menu-items', '{\"menu_id\":\"8\",\"title_sw\":\"DP\",\"title_en\":\"DP\",\"link\":\"1\",\"url_external\":null,\"url\":\"#\",\"position\":9}', '2023-02-02 10:57:20', '2023-02-02 10:57:20'),
(134, 6, 'MenuItem', 'store', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/menu-items', '{\"menu_id\":\"8\",\"title_sw\":\"DFMC\",\"title_en\":\"DFMC\",\"link\":\"1\",\"url_external\":null,\"url\":\"#\",\"position\":8}', '2023-02-02 11:01:46', '2023-02-02 11:01:46'),
(135, 6, 'MenuItem', 'update', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/menu-items/240', '{\"id\":240,\"title_sw\":\"DPA\",\"title_en\":\"DPA\",\"status\":1,\"menu_id\":\"8\",\"url\":\"#\",\"url_external\":null,\"link\":\"1\",\"parent\":238,\"position\":3,\"has_sidebar\":0,\"created_at\":\"2023-02-02T13:57:20.000000Z\",\"updated_at\":\"2023-02-02T14:02:14.000000Z\"}', '2023-02-02 11:03:19', '2023-02-02 11:03:19'),
(136, 6, 'MenuItem', 'update', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/menu-items/240', '{\"id\":240,\"title_sw\":\"DPA\",\"title_en\":\"DPA\",\"status\":1,\"menu_id\":\"8\",\"url\":\"#\",\"url_external\":null,\"link\":\"1\",\"parent\":238,\"position\":3,\"has_sidebar\":0,\"created_at\":\"2023-02-02T13:57:20.000000Z\",\"updated_at\":\"2023-02-02T14:03:19.000000Z\"}', '2023-02-02 11:04:16', '2023-02-02 11:04:16'),
(137, 6, 'Page', 'store', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/pages', '{\"title_en\":\"Functions rrr\",\"title_sw\":\"Majukumu fff\",\"has_sidebar\":\"1\",\"content_en\":\"<p><a href=\\\"https:\\/\\/ega.go.tz\\/standards\\\">Miongozo na Viwango vya Serikali Mtandao <\\/a>vimetayarishwa na kuwekwa hadharani kwa lengo la kusaidia taasisi za umma na wadau wengine kutoa huduma za serikali mtandao zinazoaminika na kwa gharama nafuu zaidi.<\\/p>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><img alt=\\\"\\\" src=\\\"http:\\/\\/demo81.eganet.go.tz\\/nps\\/uploads\\/gallery\\/1667995218-IMG-20221103-WA0047.jpg\\\" style=\\\"height:400px; width:600px\\\" \\/><\\/p>\",\"content_sw\":\"<p>imetayarishwa na kuwekwa hadharani kwa lengo la kusaidia taasisi za umma na wadau wengine kutoa huduma za serikali mtandao zinazoaminika na kwa gharama nafuu zaidi.<\\/p>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><a href=\\\"https:\\/\\/ega.go.tz\\/standards\\\"><img alt=\\\"\\\" src=\\\"http:\\/\\/demo81.eganet.go.tz\\/nps\\/uploads\\/text-editor\\/images\\/13_1675347370.jpg\\\" style=\\\"height:267px; width:400px\\\" \\/><\\/a> v<\\/p>\",\"slug\":\"functions-rrr\"}', '2023-02-02 11:18:05', '2023-02-02 11:18:05'),
(138, 6, 'MenuItem', 'update', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/menu-items/241', '{\"id\":241,\"title_sw\":\"DFMC\",\"title_en\":\"DFMC\",\"status\":1,\"menu_id\":\"8\",\"url\":\"pages\\/functions-rrr\",\"url_external\":null,\"link\":\"1\",\"parent\":238,\"position\":1,\"has_sidebar\":0,\"created_at\":\"2023-02-02T14:01:46.000000Z\",\"updated_at\":\"2023-02-02T14:02:14.000000Z\"}', '2023-02-02 11:20:09', '2023-02-02 11:20:09'),
(139, 6, 'MenuItem', 'update', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/menu-items/241', '{\"id\":241,\"title_sw\":\"DFMC\",\"title_en\":\"DFMC\",\"status\":1,\"menu_id\":\"8\",\"url\":\"pages\\/functions-rrr\",\"url_external\":null,\"link\":\"1\",\"parent\":238,\"position\":1,\"has_sidebar\":0,\"created_at\":\"2023-02-02T14:01:46.000000Z\",\"updated_at\":\"2023-02-02T14:20:09.000000Z\"}', '2023-02-02 11:21:14', '2023-02-02 11:21:14'),
(140, 6, 'Page', 'update', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/pages/98', '{\"id\":98,\"title_sw\":\"Majukumu fff\",\"title_en\":\"Functions rrr\",\"has_sidebar\":\"1\",\"content_sw\":\"<p><a href=\\\"https:\\/\\/ega.go.tz\\/standards\\\">Miongozo na Viwango vya Serikali Mtandao <\\/a>&nbsp;ofisi ya ,mashataka ilianzishwa kwa <a href=\\\"https:\\/\\/www.utumishi.go.tz\\/uploads\\/documents\\/sw-1673934738-GAZETI%20LA%20TAREHE%2030.12.2022.pdf\\\">tangazo la gazeti no 49 ya mwaka 2222 tqrwe 23.3.300<\\/a> vimetayarishwa na kuwekwa hadharani kwa lengo la kusaidia taasisi za umma na wadau wengine kutoa huduma za serikali mtandao zinazoaminika na kwa gharama nafuu zaidi.<\\/p>\\r\\n\\r\\n<p style=\\\"text-align:center\\\"><a href=\\\"https:\\/\\/ega.go.tz\\/standards\\\"><img alt=\\\"\\\" src=\\\"http:\\/\\/demo81.eganet.go.tz\\/nps\\/uploads\\/text-editor\\/images\\/13_1675347370.jpg\\\" style=\\\"height:267px; width:400px\\\" \\/><\\/a> v<\\/p>\",\"content_en\":\"<p><a href=\\\"https:\\/\\/ega.go.tz\\/standards\\\">Miongozo na Viwango vya Serikali Mtandao <\\/a>&nbsp;ofisi ya ,mashataka ilianzishwa kwa <a href=\\\"https:\\/\\/www.utumishi.go.tz\\/uploads\\/documents\\/sw-1673934738-GAZETI%20LA%20TAREHE%2030.12.2022.pdf\\\">tangazo la gazeti no 49 ya mwaka 2222 tqrwe 23.3.300<\\/a> vimetayarishwa na kuwekwa hadharani kwa lengo la kusaidia taasisi za umma na wadau wengine kutoa huduma za serikali mtandao zinazoaminika na kwa gharama nafuu zaidi.<\\/p>\\r\\n\\r\\n<p style=\\\"text-align:center\\\"><img alt=\\\"\\\" src=\\\"http:\\/\\/demo81.eganet.go.tz\\/nps\\/uploads\\/gallery\\/1667995218-IMG-20221103-WA0047.jpg\\\" style=\\\"height:400px; width:600px\\\" \\/><\\/p>\",\"slug\":\"functions-rrr\",\"status\":1,\"created_at\":\"2023-02-02T14:18:05.000000Z\",\"updated_at\":\"2023-02-02T14:18:05.000000Z\"}', '2023-02-02 11:33:02', '2023-02-02 11:33:02'),
(141, 6, 'Photo', 'store', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/media', '{\"gallery_id\":25,\"content_sw\":\"The overall management and management of the National Prosecutor\'s Office, you would like to invite all stakeholders to the office of the Office. This site is dedicated to technical and\",\"content_en\":\"The overall management and management of the National Prosecutor\'s Office, you would like to invite all stakeholders to the office of the Office. This site is dedicated to technical and\",\"status\":\"1\",\"path\":\"\\/uploads\\/gallery\\/\",\"filename\":\"530cd4fe7150178f4f1899961d4f4267.jpeg\",\"mime\":\"images\\/jpeg\",\"slug\":\"530cd4fe7150178f4f1899961d4f4267-jpeg\"}', '2023-02-02 12:30:55', '2023-02-02 12:30:55'),
(142, 6, 'Photo', 'store', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/media', '{\"gallery_id\":25,\"content_sw\":\"RRRRRR\",\"content_en\":\"TTYTYYUIIKKIK\",\"status\":\"1\",\"path\":\"\\/uploads\\/gallery\\/\",\"filename\":\"013f695863a6faec273cb0e07741e9e9.jpeg\",\"mime\":\"images\\/jpeg\",\"slug\":\"013f695863a6faec273cb0e07741e9e9-jpeg\"}', '2023-02-02 12:36:16', '2023-02-02 12:36:16'),
(143, 6, 'Photo', 'update', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/media/878', '{\"id\":878,\"title_en\":\"\",\"title_sw\":\"\",\"content_en\":\"The overall management and management of the National Prosecutor\'s Office, you would like to invite all stakeholders to the office of the Office. This site is dedicated to technical and you would like to invite all stakeholders to the office of the Office.\",\"content_sw\":\"The overall management and management of the National Prosecutor\'s Office, you would like to invite all stakeholders to the office of the Office. This site is dedicated to technical and you would like to invite all stakeholders to the office of the Office.\",\"mime\":\"images\\/jpeg\",\"path\":\"\\/uploads\\/gallery\\/\",\"url\":\"\",\"filename\":\"530cd4fe7150178f4f1899961d4f4267.jpeg\",\"iconurl\":\"\",\"slug\":\"530cd4fe7150178f4f1899961d4f4267-jpeg\",\"user_id\":0,\"gallery_id\":25,\"status\":\"1\",\"created_at\":\"2023-02-02T15:30:55.000000Z\",\"updated_at\":\"2023-02-02T15:30:55.000000Z\"}', '2023-02-02 12:40:55', '2023-02-02 12:40:55'),
(144, 6, 'Photo', 'store', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/media', '{\"gallery_id\":26,\"content_sw\":\"RRRRRRRRRRRRRRRRRRRRR\",\"content_en\":\"RRRRRRRRRRRRRRRRRRRRRRR\",\"status\":\"1\",\"path\":\"\\/uploads\\/gallery\\/\",\"filename\":\"159194f01f9ac359185036564afa92dc.jpeg\",\"mime\":\"images\\/jpeg\",\"slug\":\"159194f01f9ac359185036564afa92dc-jpeg\"}', '2023-02-02 12:50:59', '2023-02-02 12:50:59'),
(145, 6, 'Photo', 'store', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/media', '{\"gallery_id\":26,\"content_sw\":\"FFFFF\",\"content_en\":\"CCCCCCC\",\"status\":\"1\",\"path\":\"\\/uploads\\/gallery\\/\",\"filename\":\"c451f3606a99cfeb395e06cfe0e02718.jpeg\",\"mime\":\"images\\/jpeg\",\"slug\":\"c451f3606a99cfeb395e06cfe0e02718-jpeg\"}', '2023-02-02 12:55:26', '2023-02-02 12:55:26'),
(146, 6, 'Photo', 'update', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/media/880', '{\"id\":880,\"title_en\":\"\",\"title_sw\":\"\",\"content_en\":\"RRRRRRRRRRRRRRRRRRRRRRR\",\"content_sw\":\"RRRRRRRRRRRRRRRRRRRRR\",\"mime\":\"images\\/jpeg\",\"path\":\"\\/uploads\\/gallery\\/\",\"url\":\"\",\"filename\":\"63ec0542ffdb9aba9ac492e7284a13f4.jpeg\",\"iconurl\":\"\",\"slug\":\"159194f01f9ac359185036564afa92dc-jpeg\",\"user_id\":0,\"gallery_id\":26,\"status\":\"1\",\"created_at\":\"2023-02-02T15:50:59.000000Z\",\"updated_at\":\"2023-02-02T15:50:59.000000Z\"}', '2023-02-02 13:04:22', '2023-02-02 13:04:22'),
(147, 6, 'Photo', 'store', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/media', '{\"gallery_id\":26,\"content_sw\":\"HHHHHHHHHHHHHHHHH\",\"content_en\":\"HHHHHHHHHHHHHHHHHHHHHH\",\"status\":\"1\",\"path\":\"\\/uploads\\/gallery\\/\",\"filename\":\"cfc98fb25ff76e3462914fb6b7be150b.jpeg\",\"mime\":\"images\\/jpeg\",\"slug\":\"cfc98fb25ff76e3462914fb6b7be150b-jpeg\"}', '2023-02-02 13:09:03', '2023-02-02 13:09:03'),
(148, 6, 'Photo', 'store', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/media', '{\"gallery_id\":26,\"content_sw\":\"RRRRRRRRRRRRRRRRRRRRRRRRRR\",\"content_en\":\"RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR\",\"status\":\"1\",\"path\":\"\\/uploads\\/gallery\\/\",\"filename\":\"a80def5e8dcd119ae2f796ee7472ca24.jpeg\",\"mime\":\"images\\/jpeg\",\"slug\":\"a80def5e8dcd119ae2f796ee7472ca24-jpeg\"}', '2023-02-02 13:17:12', '2023-02-02 13:17:12'),
(149, 6, 'Photo', 'update', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/media/883', '{\"id\":883,\"title_en\":\"\",\"title_sw\":\"\",\"content_en\":null,\"content_sw\":null,\"mime\":\"images\\/jpeg\",\"path\":\"\\/uploads\\/gallery\\/\",\"url\":\"\",\"filename\":\"a80def5e8dcd119ae2f796ee7472ca24.jpeg\",\"iconurl\":\"\",\"slug\":\"a80def5e8dcd119ae2f796ee7472ca24-jpeg\",\"user_id\":0,\"gallery_id\":26,\"status\":\"1\",\"created_at\":\"2023-02-02T16:17:12.000000Z\",\"updated_at\":\"2023-02-02T16:17:12.000000Z\"}', '2023-02-02 13:19:11', '2023-02-02 13:19:11'),
(150, 6, 'NpsAchievement', 'store', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/nps_achievements', '{\"fin_year_id\":\"2\",\"achievement_type_id\":\"4\",\"count\":\"0\",\"status\":\"1\"}', '2023-02-02 13:33:44', '2023-02-02 13:33:44'),
(151, 6, 'NpsAchievement', 'update', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/nps_achievements/9', '{\"id\":9,\"created_at\":\"2023-02-02T16:33:44.000000Z\",\"updated_at\":\"2023-02-02T16:33:44.000000Z\",\"fin_year_id\":\"2\",\"achievement_type_id\":\"4\",\"count\":\"103\",\"status\":\"1\"}', '2023-02-02 13:34:19', '2023-02-02 13:34:19'),
(152, 6, 'News', 'store', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/news', '{\"title_en\":\"eGA Yaanika Misingi ya Serikali Mtandao\",\"title_sw\":\"eGA Yaweka hadharani Misingi ya Serikali Mtandao\",\"content_en\":\"<p>TASAC yashiriki bonanza la michezo kwa wafanyakazi wake ikiwa ni mkakati wa kujenga mahusiani mazuri katika maeneo ya kazi na kuimarisha afya za wafanyakazi. Bonanza lilifunguliwa na Mkurugenzi Mkuu wa TASAC ambapo michezo mbalimbali ilichezwa ikiwa ni pamoja na kukimbiza kuku, kukimbia kwenye gunia, kuruka kamba, kukimbia, kuvuta kamba, kukimbia kwenye gonna, kucheza mpira wa miguu na mpira wa pete. Wafanyakazi walishiriki kikamilifu na kuonesha vipaji vyao.<\\/p>\",\"content_sw\":\"<p>TASAC yashiriki bonanza la michezo kwa wafanyakazi wake ikiwa ni mkakati wa kujenga mahusiani mazuri katika maeneo ya kazi na kuimarisha afya za wafanyakazi. Bonanza lilifunguliwa na Mkurugenzi Mkuu wa TASAC ambapo michezo mbalimbali ilichezwa ikiwa ni pamoja na kukimbiza kuku, kukimbia kwenye gunia, kuruka kamba, kukimbia, kuvuta kamba, kukimbia kwenye gonna, kucheza mpira wa miguu na mpira wa pete. Wafanyakazi walishiriki kikamilifu na kuonesha vipaji vyao.<\\/p>\",\"active\":\"1\",\"photo_url\":\"24ed46d9143bd95ae84c51ee336d5b16.jpeg\",\"user_id\":6,\"slug\":\"ega-yaanika-misingi-ya-serikali-mtandao\"}', '2023-02-02 13:44:35', '2023-02-02 13:44:35'),
(153, 6, 'News', 'update', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/news/168', '{\"id\":168,\"title_sw\":\"eGA Yaweka hadharani Misingi ya Serikali Mtandao\",\"title_en\":\"eGA Yaanika Misingi ya Serikali Mtandao\",\"summary_sw\":\"\",\"summary_en\":null,\"content_sw\":\"<p style=\\\"text-align: justify;\\\">TASAC yashiriki bonanza la michezo kwa wafanyakazi wake ikiwa ni mkakati wa kujenga mahusiani mazuri katika maeneo ya kazi na kuimarisha afya za wafanyakazi. Bonanza lilifunguliwa na Mkurugenzi Mkuu wa TASAC ambapo michezo mbalimbali ilichezwa ikiwa ni pamoja na kukimbiza kuku, kukimbia kwenye gunia, kuruka kamba, kukimbia, kuvuta kamba, kukimbia kwenye gonna, kucheza mpira wa miguu na mpira wa pete. Wafanyakazi walishiriki kikamilifu na kuonesha vipaji vyao.<\\/p>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><img alt=\\\"\\\" src=\\\"http:\\/\\/demo81.eganet.go.tz\\/nps\\/uploads\\/gallery\\/1667992377-_05A5204.JPG\\\" style=\\\"height:400px; width:600px\\\" \\/><\\/p>\",\"content_en\":\"<p style=\\\"text-align: justify;\\\">TASAC yashiriki bonanza la michezo kwa wafanyakazi wake ikiwa ni mkakati wa kujenga mahusiani mazuri katika maeneo ya kazi na kuimarisha afya za wafanyakazi. Bonanza lilifunguliwa na Mkurugenzi Mkuu wa TASAC ambapo michezo mbalimbali ilichezwa ikiwa ni pamoja na kukimbiza kuku, kukimbia kwenye gunia, kuruka kamba, kukimbia, kuvuta kamba, kukimbia kwenye gonna, kucheza mpira wa miguu na mpira wa pete. Wafanyakazi walishiriki kikamilifu na kuonesha vipaji vyao.<\\/p>\\r\\n\\r\\n<p style=\\\"text-align: center;\\\"><img alt=\\\"\\\" src=\\\"http:\\/\\/demo81.eganet.go.tz\\/nps\\/uploads\\/gallery\\/1667992377-_05A5204.JPG\\\" style=\\\"height:400px; width:600px\\\" \\/><\\/p>\",\"active\":\"1\",\"user_id\":6,\"slug\":\"ega-yaanika-misingi-ya-serikali-mtandao\",\"photo_url\":\"24ed46d9143bd95ae84c51ee336d5b16.jpeg\",\"created_at\":\"2023-02-02T16:44:35.000000Z\",\"updated_at\":\"2023-02-02T16:44:35.000000Z\"}', '2023-02-02 13:47:15', '2023-02-02 13:47:15'),
(154, 6, 'Translation', 'trans_update', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/trans_update', '{\"id\":27,\"keyword\":\"lbl_latest_news\",\"en\":\"Latest News\",\"sw\":\"Habari Mpya\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2020-04-17T09:41:00.000000Z\"}', '2023-02-02 13:49:29', '2023-02-02 13:49:29'),
(155, 6, 'Translation', 'trans_update', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/trans_update', '{\"id\":30,\"keyword\":\"lbl_news\",\"en\":\"Updates\",\"sw\":\"Habari\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2020-04-17T09:41:00.000000Z\"}', '2023-02-02 13:49:29', '2023-02-02 13:49:29');
INSERT INTO `timelines` (`id`, `actor`, `object`, `verb`, `ip`, `url`, `content`, `created_at`, `updated_at`) VALUES
(156, 6, 'Translation', 'trans_update', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/trans_update', '{\"id\":35,\"keyword\":\"lbl_more_news\",\"en\":\"More News\",\"sw\":\"Habari Zaidi\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2020-04-17T09:41:00.000000Z\"}', '2023-02-02 13:49:29', '2023-02-02 13:49:29'),
(157, 6, 'Translation', 'trans_update', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/trans_update', '{\"id\":46,\"keyword\":\"lbl_view_all_news\",\"en\":\"View All News\",\"sw\":\"Soma Habari zaidi\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2020-04-17T09:41:00.000000Z\"}', '2023-02-02 13:49:29', '2023-02-02 13:49:29'),
(158, 6, 'Translation', 'trans_update', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/trans_update', '{\"id\":341,\"keyword\":\"lbl_news_and_events\",\"en\":\"News & Events\",\"sw\":\"Habari na Matukio\",\"created_at\":\"2020-04-17T09:41:00.000000Z\",\"updated_at\":\"2022-06-14T06:23:27.000000Z\"}', '2023-02-02 13:49:29', '2023-02-02 13:49:29'),
(159, 6, 'MenuItem', 'update', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/menu-items/196', '{\"id\":196,\"title_sw\":\"Taarifa kwa Vyombo vya Habari\",\"title_en\":\"Press Release\",\"status\":0,\"menu_id\":\"8\",\"url\":\"press-releases\",\"url_external\":null,\"link\":\"1\",\"parent\":195,\"position\":1,\"has_sidebar\":0,\"created_at\":\"2018-06-26T18:36:17.000000Z\",\"updated_at\":\"2023-02-02T14:02:14.000000Z\"}', '2023-02-02 13:55:03', '2023-02-02 13:55:03'),
(160, 6, 'WelcomeNote', 'update', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/welcome/2', '{\"id\":2,\"summary_en\":\"The Management of the National Prosecutions Office, would like to invite all stakeholders to the website of the National Prosecution services.\",\"summary_sw\":\"Uongozi na Menejimenti nzima pamoja na Wafanyakazi wa Ofisi ya Taifa ya Mashtaka, wanawakaribisha  wadau wote ndani na nje ya nchi kutembelea Tovuti ya ofisi kwa ajili ya kupata na kujua juu ya taarifa mbalimbali ambazo ofisi inashughulika nayo. karibuni \",\"content_sw\":\"<p style=\\\"text-align:justify\\\">Uongozi na Menejimenti nzima pamoja na Wafanyakazi wa Ofisi ya Taifa ya Mashtaka, unapenda kuwakaribisha wadau wote kwenye Tovuti ya ofisi. Tovuti hii imesanifiwa kiufundi na maalum kwa ajili ya kutoa taarifa kwa wadau ndani na nje ya nchi juu ya masuala ya uendeshaji wa mashtaka.<\\/p>\",\"content_en\":\"<p>The overall management and management of the National Prosecutor&#39;s Office, you would like to invite all stakeholders to the office of the Office. This site is dedicated to technical and specific information for reporting to both domestic and international stakeholders on prosecution issues......<\\/p>\\r\\n\\r\\n<p style=\\\"text-align:justify\\\">&nbsp;<\\/p>\",\"status\":\"1\",\"created_at\":\"2023-01-31T14:49:08.000000Z\",\"updated_at\":\"2023-01-31T11:49:08.000000Z\"}', '2023-02-02 14:05:59', '2023-02-02 14:05:59'),
(161, 6, 'Administration', 'store', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/administration', '{\"salutation_sw\":\"Dkt.\",\"salutation_en\":\"Dr.\",\"fullname\":\"Jesca Joel\",\"title_sw\":\"Mkurugenzi wa Mashtaka\",\"title_en\":\"Director Public Prosecutions\",\"email\":\"admin@nps.go.tz\",\"phone\":\"000\",\"position\":\"1\",\"content_sw\":\"<p>hjjjjjjjjjjjjjjjjjjjjjjjj<\\/p>\",\"content_en\":\"<p>hgiiiiiiiiiiiiiiiiiiiiii<\\/p>\",\"photo_url\":\"df5d1e90b6487fbc5f2029fe46089605.jpeg\",\"slug\":\"jesca-joel\"}', '2023-02-02 14:08:15', '2023-02-02 14:08:15'),
(162, 6, 'Administration', 'update', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/administration/21', '{\"id\":21,\"salutation_en\":\"Mr\",\"salutation_sw\":\"Bw\",\"fullname\":\"Sylvester A Mwakitalu\",\"position\":\"0\",\"title_sw\":\"Mkurugenzi Mkuu\",\"title_en\":\"Director\",\"content_sw\":\"<p>Ndugu. Sylvester Mwakitalu , aliteuliwa tarehe 11, Mei 2021 na Rais wa Jamhuri ya Muungano wa Tanzania, Mhe. Samia Suluhu Hassan kuwa Mkurugenzi wa Mashtaka<\\/p>\",\"content_en\":\"<p>Mr.Sylvester Mwakitalu , was appointed on 11, May ,2021 by the President of the United Republic of Tanzania, Hon. Samia Suluhu Hassan to be the Director of Public Prosecutions<\\/p>\",\"photo_url\":\"00a265c5e3bbc4096ea848f11f3e9857.png\",\"email\":null,\"phone\":\"099999999\",\"created_at\":\"2022-10-15T17:36:36.000000Z\",\"updated_at\":\"2023-01-18T18:00:52.000000Z\",\"slug\":\"dg\"}', '2023-02-02 14:09:06', '2023-02-02 14:09:06'),
(163, 6, 'Administration', 'update', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/administration/21', '{\"id\":21,\"salutation_en\":\"Mr\",\"salutation_sw\":\"Bw\",\"fullname\":\"Sylvester A Mwakitalu\",\"position\":\"1\",\"title_sw\":\"Mkurugenzi Mkuu\",\"title_en\":\"Director\",\"content_sw\":\"<p>Ndugu. Sylvester Mwakitalu , aliteuliwa tarehe 11, Mei 2021 na Rais wa Jamhuri ya Muungano wa Tanzania, Mhe. Samia Suluhu Hassan kuwa Mkurugenzi wa Mashtaka<\\/p>\",\"content_en\":\"<p>Mr.Sylvester Mwakitalu , was appointed on 11, May ,2021 by the President of the United Republic of Tanzania, Hon. Samia Suluhu Hassan to be the Director of Public Prosecutions<\\/p>\",\"photo_url\":\"00a265c5e3bbc4096ea848f11f3e9857.png\",\"email\":null,\"phone\":\"099999999\",\"created_at\":\"2022-10-15T17:36:36.000000Z\",\"updated_at\":\"2023-02-02T17:09:06.000000Z\",\"slug\":\"dg\"}', '2023-02-02 14:10:06', '2023-02-02 14:10:06'),
(164, 6, 'MenuItem', 'update', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/menu-items/193', '{\"id\":193,\"title_sw\":\"Hotuba\",\"title_en\":\"Speeches\",\"status\":0,\"menu_id\":\"8\",\"url\":\"speeches\",\"url_external\":null,\"link\":\"1\",\"parent\":195,\"position\":2,\"has_sidebar\":0,\"created_at\":\"2018-06-26T18:26:50.000000Z\",\"updated_at\":\"2023-02-02T14:02:14.000000Z\"}', '2023-02-02 14:15:34', '2023-02-02 14:15:34'),
(165, 6, 'Speech', 'store', '154.118.229.2', 'http://demo81.eganet.go.tz/nps/cms/speeches', '{\"name_sw\":\"News &UpdatesNews &UpdatesNews &UpdatesNews &UpdatesNews &UpdatesNews &UpdatesNews &Updates\",\"name_en\":\"News &UpdatesNews &UpdatesNews &UpdatesNews &UpdatesNews &UpdatesNews &Updates\",\"content_sw\":\"<p>News &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;Updates<\\/p>\",\"content_en\":\"<p>News &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;UpdatesNews &amp;Updates<\\/p>\",\"active\":\"1\",\"file_sw\":\"\\/uploads\\/speeches\\/sw1675358253-test News.pdf\",\"file_en\":\"\\/uploads\\/speeches\\/en1675358253-test News.pdf\",\"user_id\":6,\"slug\":\"news-updatesnews-updatesnews-updatesnews-updatesnews-updatesnews-updates\"}', '2023-02-02 14:17:33', '2023-02-02 14:17:33'),
(166, 6, 'Photo', 'update', '154.118.227.58', 'http://demo81.eganet.go.tz/nps/cms/media/883', '{\"id\":883,\"title_en\":\"\",\"title_sw\":\"\",\"content_en\":\"demo\",\"content_sw\":\"demo\",\"mime\":\"images\\/jpeg\",\"path\":\"\\/uploads\\/gallery\\/\",\"url\":\"\",\"filename\":\"2e9bcc56f4bea5bbf229a8d27545a30b.jpeg\",\"iconurl\":\"\",\"slug\":\"a80def5e8dcd119ae2f796ee7472ca24-jpeg\",\"user_id\":0,\"gallery_id\":26,\"status\":\"1\",\"created_at\":\"2023-02-02T16:17:12.000000Z\",\"updated_at\":\"2023-02-02T16:19:11.000000Z\"}', '2023-02-03 06:51:24', '2023-02-03 06:51:24'),
(167, 6, 'Photo', 'update', '154.118.227.58', 'http://demo81.eganet.go.tz/nps/cms/media/883', '{\"id\":883,\"title_en\":\"\",\"title_sw\":\"\",\"content_en\":\"demo\",\"content_sw\":\"demo\",\"mime\":\"images\\/jpeg\",\"path\":\"\\/uploads\\/gallery\\/\",\"url\":\"\",\"filename\":\"e83e6fd353a6d18256fc0ff716f3e899.jpeg\",\"iconurl\":\"\",\"slug\":\"a80def5e8dcd119ae2f796ee7472ca24-jpeg\",\"user_id\":0,\"gallery_id\":26,\"status\":\"1\",\"created_at\":\"2023-02-02T16:17:12.000000Z\",\"updated_at\":\"2023-02-03T09:51:24.000000Z\"}', '2023-02-03 06:55:31', '2023-02-03 06:55:31'),
(168, 6, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":100,\"keyword\":\"lbl_site_title_short \",\"en\":\"TARI\",\"sw\":\"TARI\",\"created_at\":\"2020-04-16T23:41:00.000000Z\",\"updated_at\":\"2022-10-15T05:38:32.000000Z\"}', '2025-05-30 13:40:07', '2025-05-30 13:40:07'),
(169, 6, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":281,\"keyword\":\"lbl_site_sub_subtitle\",\"en\":\"NATIONAL PROSECUTIONS\",\"sw\":\"NATIONAL PROSECUTIONS\",\"created_at\":\"2021-08-06T04:37:55.000000Z\",\"updated_at\":\"2023-02-02T02:35:59.000000Z\"}', '2025-05-30 13:42:29', '2025-05-30 13:42:29'),
(170, 6, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":1,\"keyword\":\"lbl_site_title\",\"en\":\"TANZANIA AGRICULTURE RESEARCH INSTITUTE\",\"sw\":\"TANZANIA AGRICULTURE RESEARCH INSTITUTE\",\"created_at\":\"2020-04-16T23:41:00.000000Z\",\"updated_at\":\"2023-02-02T02:40:09.000000Z\"}', '2025-05-30 13:42:29', '2025-05-30 13:42:29'),
(171, 6, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":99,\"keyword\":\"lbl_content_maintained \",\"en\":\"Content Maintained by TANZANIA AGRICULTURE RESEARCH INSTITUTE\",\"sw\":\"Huendeshwa na TANZANIA AGRICULTURE RESEARCH INSTITUTE\",\"created_at\":\"2020-04-16T23:41:00.000000Z\",\"updated_at\":\"2022-10-16T01:05:33.000000Z\"}', '2025-05-30 13:42:29', '2025-05-30 13:42:29'),
(172, 6, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":315,\"keyword\":\"lbl_site_motto\",\"en\":\"Adequate And Equitable Compensations\",\"sw\":\"Adequate And Equitable Compensations\",\"created_at\":\"2021-10-29T03:00:46.000000Z\",\"updated_at\":\"2022-06-13T20:06:15.000000Z\"}', '2025-05-30 13:45:46', '2025-05-30 13:45:46'),
(173, 6, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":281,\"keyword\":\"lbl_site_sub_subtitle\",\"en\":\"Ministry of Agriculture\",\"sw\":\"Wizara Ya Kilimo\",\"created_at\":\"2021-08-06T04:37:55.000000Z\",\"updated_at\":\"2023-02-02T02:35:59.000000Z\"}', '2025-05-30 13:45:46', '2025-05-30 13:45:46'),
(174, 6, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":1,\"keyword\":\"lbl_site_title\",\"en\":\"TANZANIA AGRICULTURE RESEARCH INSTITUTE\",\"sw\":\"TANZANIA AGRICULTURE RESEARCH INSTITUTE\",\"created_at\":\"2020-04-16T23:41:00.000000Z\",\"updated_at\":\"2025-05-30T06:42:29.000000Z\"}', '2025-05-30 13:45:46', '2025-05-30 13:45:46'),
(175, 6, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":2,\"keyword\":\"lbl_site_subtitle\",\"en\":\"The United Republic of Tanzania\",\"sw\":\"Jamhuri ya Muungano wa Tanzania\",\"created_at\":\"2020-04-16T23:41:00.000000Z\",\"updated_at\":\"2023-02-02T02:40:32.000000Z\"}', '2025-05-30 13:45:46', '2025-05-30 13:45:46'),
(176, 6, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":17,\"keyword\":\"lbl_sitemap\",\"en\":\"Sitemap\",\"sw\":\"Ramani Ya Tovuti\",\"created_at\":\"2020-04-16T23:41:00.000000Z\",\"updated_at\":\"2020-04-16T23:41:00.000000Z\"}', '2025-05-30 13:45:46', '2025-05-30 13:45:46'),
(177, 6, 'Translation', 'trans_update', '127.0.0.1', 'http://127.0.0.1:8000/cms/trans_update', '{\"id\":100,\"keyword\":\"lbl_site_title_short \",\"en\":\"TARI\",\"sw\":\"TARI\",\"created_at\":\"2020-04-16T23:41:00.000000Z\",\"updated_at\":\"2025-05-30T06:40:07.000000Z\"}', '2025-05-30 13:45:46', '2025-05-30 13:45:46'),
(178, 6, 'RegionalOffice', 'destroy', '127.0.0.1', 'http://127.0.0.1:8000/cms/regional_office/21', '{\"id\":21,\"name_en\":\"\",\"name_sw\":\"\",\"region\":\"Kigoma\",\"physical_address_sw\":\"Ofisi ya Taifa ya Mashtaka Mkoa wa  Kigoma\\r\\nS.L.P. 498, KIGOMA\\r\\n                                                                                                                                                                                                                                                                                                                                                                                                                                                               \\r\\n\",\"physical_address_en\":null,\"phone\":\"SIMU: 028 \\u2013 2802192 \",\"toll_free\":null,\"fax\":\"\",\"email\":\"kigoma@nps.go.tz\",\"content_sw\":null,\"content_en\":null,\"photo_url\":null,\"latitude\":null,\"longitude\":null,\"slug\":\"\",\"headquarter\":0,\"used_as\":0,\"created_at\":\"2019-05-16T23:05:40.000000Z\",\"updated_at\":\"2019-05-16T23:05:40.000000Z\"}', '2025-05-30 13:49:32', '2025-05-30 13:49:32'),
(179, 6, 'RegionalOffice', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/regional_office/2', '{\"id\":2,\"name_en\":\"Hq\",\"name_sw\":\"Hq\",\"region\":\" Dodoma\",\"physical_address_sw\":\"Dodoma Head Office\\r\\nMakutupora, Arusha Road\\r\\nP.O. Box 1571, DODOMA.\\r\\ninfo@tari.go.tz & dg@tari.go.tz\",\"physical_address_en\":\"Dodoma Head Office\\r\\nMakutupora, Arusha Road\\r\\nP.O. Box 1571, DODOMA.\\r\\ninfo@tari.go.tz & dg@tari.go.tz\",\"phone\":\"+25526 2321889\",\"toll_free\":null,\"fax\":\"026 2321463 24\",\"email\":\"info@tari.go.tz\",\"content_sw\":null,\"content_en\":null,\"photo_url\":null,\"latitude\":null,\"longitude\":null,\"slug\":\"hq\",\"headquarter\":\"1\",\"used_as\":\"1\",\"created_at\":\"2018-05-03T02:17:08.000000Z\",\"updated_at\":\"2023-01-18T06:55:14.000000Z\"}', '2025-05-30 13:51:41', '2025-05-30 13:51:41'),
(180, 6, 'Administration', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/administration/21', '{\"id\":21,\"salutation_en\":\"Mr\",\"salutation_sw\":\"Bw\",\"fullname\":\"Andrew W. Masawe\",\"position\":\"1\",\"title_sw\":\"Mwenyekiti wa bodi\",\"title_en\":\"Board Chairman\",\"content_sw\":\"<p>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\",\"content_en\":\"<p>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\",\"photo_url\":\"256c7fa64a83f589f4c38c6c50f22045.jpeg\",\"email\":null,\"phone\":\"099999999\",\"created_at\":\"2022-10-15T07:36:36.000000Z\",\"updated_at\":\"2023-02-02T06:10:06.000000Z\",\"slug\":\"dg\"}', '2025-05-30 13:59:50', '2025-05-30 13:59:50'),
(181, 6, 'Administration', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/administration/25', '{\"id\":25,\"salutation_en\":\"Dr\",\"salutation_sw\":\"Dr\",\"fullname\":\"Thomas N. Bwana\",\"position\":\"2\",\"title_sw\":\"Mkulugenzi Mkuu\",\"title_en\":\"Director General\",\"content_sw\":\"<p>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\",\"content_en\":\"<p>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\",\"photo_url\":\"e37815b866f0a572c2163f0fda3ce373.png\",\"email\":null,\"phone\":\"0999999999\",\"created_at\":\"2023-01-16T01:29:29.000000Z\",\"updated_at\":\"2023-01-31T00:55:40.000000Z\",\"slug\":\"naibu\"}', '2025-05-30 14:01:23', '2025-05-30 14:01:23'),
(182, 6, 'Administration', 'destroy', '127.0.0.1', 'http://127.0.0.1:8000/cms/administration/27', '{\"id\":27,\"salutation_en\":\"Dr.\",\"salutation_sw\":\"Dkt.\",\"fullname\":\"Jesca Joel\",\"position\":1,\"title_sw\":\"Mkurugenzi wa Mashtaka\",\"title_en\":\"Director Public Prosecutions\",\"content_sw\":\"<p>hjjjjjjjjjjjjjjjjjjjjjjjj<\\/p>\",\"content_en\":\"<p>hgiiiiiiiiiiiiiiiiiiiiii<\\/p>\",\"photo_url\":\"df5d1e90b6487fbc5f2029fe46089605.jpeg\",\"email\":\"admin@nps.go.tz\",\"phone\":\"000\",\"created_at\":\"2023-02-02T06:08:15.000000Z\",\"updated_at\":\"2023-02-02T06:08:15.000000Z\",\"slug\":\"jesca-joel\"}', '2025-05-30 14:02:01', '2025-05-30 14:02:01'),
(183, 6, 'WelcomeNote', 'update', '127.0.0.1', 'http://127.0.0.1:8000/cms/welcome/2', '{\"id\":2,\"summary_en\":\"The Management of the National Prosecutions Office, would like to invite all stakeholders to the website of the National Prosecution services.\",\"summary_sw\":\"Uongozi na Menejimenti nzima pamoja na Wafanyakazi wa Ofisi ya Taifa ya Mashtaka, wanawakaribisha  wadau wote ndani na nje ya nchi kutembelea Tovuti ya ofisi kwa ajili ya kupata na kujua juu ya taarifa mbalimbali ambazo ofisi inashughulika nayo. karibuni \",\"content_sw\":\"<p>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\",\"content_en\":\"<p>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\",\"status\":\"1\",\"created_at\":\"2023-01-31T03:49:08.000000Z\",\"updated_at\":\"2023-01-31T00:49:08.000000Z\"}', '2025-05-30 14:02:52', '2025-05-30 14:02:52'),
(184, 6, 'Photo', 'bulkUpload', '127.0.0.1', 'http://127.0.0.1:8000/cms/media/bulk-upload-images/27', '{\"gallery_id\":\"27\",\"mime\":\"images\\/jpg\",\"path\":\"\\/uploads\\/gallery\\/\",\"filename\":\"637051df5e39d09ce80ee29f8e7938ae.jpg\",\"slug\":\"637051df5e39d09ce80ee29f8e7938ae-jpg\"}', '2025-05-30 14:13:07', '2025-05-30 14:13:07'),
(185, 6, 'Photo', 'bulkUpload', '127.0.0.1', 'http://127.0.0.1:8000/cms/media/bulk-upload-images/27', '{\"gallery_id\":\"27\",\"mime\":\"images\\/jpg\",\"path\":\"\\/uploads\\/gallery\\/\",\"filename\":\"951dc6219eac3b384bc806d5d56b8d0e.jpg\",\"slug\":\"951dc6219eac3b384bc806d5d56b8d0e-jpg\"}', '2025-05-30 14:13:08', '2025-05-30 14:13:08'),
(186, 6, 'Photo', 'bulkUpload', '127.0.0.1', 'http://127.0.0.1:8000/cms/media/bulk-upload-images/27', '{\"gallery_id\":\"27\",\"mime\":\"images\\/jpg\",\"path\":\"\\/uploads\\/gallery\\/\",\"filename\":\"498510e17c0feeb17ef0a4ba59d7812e.jpg\",\"slug\":\"498510e17c0feeb17ef0a4ba59d7812e-jpg\"}', '2025-05-30 14:13:09', '2025-05-30 14:13:09'),
(187, 6, 'News', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/news', '{\"title_en\":\"Lorem Ipsum\",\"title_sw\":\"Lorem Ipsum\",\"content_en\":\"<h1>Lorem Ipsum<\\/h1>\",\"content_sw\":\"<h1>Lorem Ipsum<\\/h1>\",\"active\":\"1\",\"photo_url\":\"4a06cfd16134acd4bb38ae2f71e86b42.jpeg\",\"user_id\":6,\"slug\":\"lorem-ipsum\"}', '2025-05-30 14:39:44', '2025-05-30 14:39:44'),
(188, 6, 'News', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/news', '{\"title_en\":\"Lorem Ipsum\",\"title_sw\":\"Lorem Ipsum\",\"content_en\":\"<h1>Lorem Ipsum<\\/h1>\",\"content_sw\":\"<h1>Lorem Ipsum<\\/h1>\",\"active\":\"1\",\"photo_url\":\"e1aa9e1823cce56e57dfd63c1a009fb7.jpeg\",\"user_id\":6,\"slug\":\"lorem-ipsum-2\"}', '2025-05-30 14:40:25', '2025-05-30 14:40:25'),
(189, 6, 'News', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/news', '{\"title_en\":\"Lorem Ipsum\",\"title_sw\":\"Lorem Ipsum\",\"content_en\":\"<h1>Lorem Ipsum<\\/h1>\",\"content_sw\":\"<h1>Lorem Ipsum<\\/h1>\",\"active\":\"1\",\"photo_url\":\"388f3236428c8a5d35aef54c25a6790c.jpeg\",\"user_id\":6,\"slug\":\"lorem-ipsum-3\"}', '2025-05-30 14:41:09', '2025-05-30 14:41:09'),
(190, 6, 'Events', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/events', '{\"event_date\":\"2025-05-30\",\"event_time\":\"7:00 AM\",\"location\":\"dodoma\",\"contact\":\"test@gmail.com\",\"title_en\":\"Lorem Ipsum\",\"title_sw\":\"Lorem Ipsum\",\"content_en\":\"<h1>Lorem Ipsum<\\/h1>\",\"content_sw\":\"<h1>Lorem Ipsum<\\/h1>\",\"active\":\"1\",\"photo_url\":\"d24217f7bf8e42b4c3529199eae4c1cb.jpeg\",\"user_id\":6,\"slug\":\"lorem-ipsum\"}', '2025-05-30 14:42:54', '2025-05-30 14:42:54'),
(191, 6, 'Events', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/events', '{\"event_date\":\"2025-05-31\",\"event_time\":\"7:00 AM\",\"location\":\"dodoma\",\"contact\":\"test@gmail.com\",\"title_en\":\"Lorem Ipsum\",\"title_sw\":\"Lorem Ipsum\",\"content_en\":\"<h1>Lorem Ipsum<\\/h1>\",\"content_sw\":\"<h1>Lorem Ipsum<\\/h1>\",\"active\":\"1\",\"photo_url\":\"fee926a3912608810b9993714ffa129c.jpeg\",\"user_id\":6,\"slug\":\"lorem-ipsum-2\"}', '2025-05-30 14:43:46', '2025-05-30 14:43:46'),
(192, 6, 'Announcement', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/announcements', '{\"title_sw\":\"KUFUNGULIWA KWA CHUO\",\"title_en\":\"UNIVERSITY OPENINGS\",\"content_sw\":\"<h1>Lorem Ipsum<\\/h1>\",\"content_en\":\"<h1>Lorem Ipsum<\\/h1>\",\"active\":\"1\"}', '2025-05-30 14:44:52', '2025-05-30 14:44:52'),
(193, 6, 'Announcement', 'store', '127.0.0.1', 'http://127.0.0.1:8000/cms/announcements', '{\"title_sw\":\"UTEUZI WA WAKULIGENZI\",\"title_en\":\"UTEUZI WA WAKULUGENZI\",\"content_sw\":\"<h1>Lorem Ipsum<\\/h1>\",\"content_en\":\"<h1>Lorem Ipsum<\\/h1>\",\"active\":\"1\"}', '2025-05-30 14:45:28', '2025-05-30 14:45:28'),
(194, 6, 'Documents', 'destroy', '127.0.0.1', 'http://localhost/tari/public/cms/documents/17', '{\"id\":17,\"title_sw\":\"Hukumu ya Bazir Pesambili Mramba \",\"title_en\":\"Judgement of Bazir Pesambili Mramba \",\"file_sw\":\"sw1530275732-BAZIR PESAMBILI MRAMBA JUDGEMENT.pdf\",\"file_en\":\"en1530275732-BAZIR PESAMBILI MRAMBA JUDGEMENT.pdf\",\"featured\":0,\"active\":1,\"published_date\":\"2018-06-29\",\"category_id\":20,\"created_at\":\"2018-06-28T23:35:32.000000Z\",\"updated_at\":\"2018-06-28T23:35:32.000000Z\"}', '2025-05-30 20:56:30', '2025-05-30 20:56:30'),
(195, 6, 'Documents', 'destroy', '127.0.0.1', 'http://localhost/tari/public/cms/documents/15', '{\"id\":15,\"title_sw\":\"Hukumu ya Farid Hadi Ahmed\",\"title_en\":\"Judgement of Farid Hadi Ahmed\",\"file_sw\":\"sw1530274238-JUDGEMENT OF FARID HADI AHMED.pdf\",\"file_en\":\"en1530274238-JUDGEMENT OF FARID HADI AHMED.pdf\",\"featured\":0,\"active\":1,\"published_date\":\"2018-06-29\",\"category_id\":20,\"created_at\":\"2018-06-28T23:10:38.000000Z\",\"updated_at\":\"2018-06-28T23:10:38.000000Z\"}', '2025-05-30 20:56:35', '2025-05-30 20:56:35'),
(196, 6, 'Documents', 'destroy', '127.0.0.1', 'http://localhost/tari/public/cms/documents/16', '{\"id\":16,\"title_sw\":\"Hukumu ya  Alan Mushi- Mwanza\",\"title_en\":\"Judgment Alan Mushi- Mwanza\",\"file_sw\":\"sw1530274503-JUDGMENT ALAN MUSHI- MWANZA.pdf\",\"file_en\":\"en1530274503-JUDGMENT ALAN MUSHI- MWANZA.pdf\",\"featured\":0,\"active\":1,\"published_date\":\"2018-06-29\",\"category_id\":20,\"created_at\":\"2018-06-28T23:15:03.000000Z\",\"updated_at\":\"2018-06-28T23:15:15.000000Z\"}', '2025-05-30 20:56:40', '2025-05-30 20:56:40'),
(197, 6, 'Documents', 'destroy', '127.0.0.1', 'http://localhost/tari/public/cms/documents/24', '{\"id\":24,\"title_sw\":\"JUDGEMENT OF JUSTICE LUMIMA KATTTI  AND 3 OTHERS\",\"title_en\":\"JUDGEMENT OF JUSTICE LUMIMA KATTTI  AND 3 OTHERS\",\"file_sw\":\"sw1668495987-JUDGEMENT LUMINA KATITI.pdf\",\"file_en\":\"en1668495987-JUDGEMENT LUMINA KATITI.pdf\",\"featured\":0,\"active\":1,\"published_date\":\"2022-11-15\",\"category_id\":20,\"created_at\":\"2022-11-14T17:06:27.000000Z\",\"updated_at\":\"2022-11-14T17:06:27.000000Z\"}', '2025-05-30 20:56:44', '2025-05-30 20:56:44'),
(198, 6, 'Documents', 'destroy', '127.0.0.1', 'http://localhost/tari/public/cms/documents/42', '{\"id\":42,\"title_sw\":\"THE ECONOMIC AND ORGANISED CRIME CONTROL ACT\",\"title_en\":\"THE ECONOMIC AND ORGANISED CRIME CONTROL ACT\",\"file_sw\":\"sw1669806573-GN 496H - THE ECONOMIC OFFENCES (SPECIFICATION OF OFFENCES FOR CONSENT) NOTICE, 2021-1.doc (1).pdf\",\"file_en\":\"en1669806573-GN 496H - THE ECONOMIC OFFENCES (SPECIFICATION OF OFFENCES FOR CONSENT) NOTICE, 2021-1.doc (1).pdf\",\"featured\":0,\"active\":1,\"published_date\":\"2022-11-30\",\"category_id\":19,\"created_at\":\"2022-11-29T21:09:33.000000Z\",\"updated_at\":\"2022-11-29T21:09:33.000000Z\"}', '2025-05-30 20:57:27', '2025-05-30 20:57:27'),
(199, 6, 'DocumentCategory', 'destroy', '127.0.0.1', 'http://localhost/tari/public/cms/document-categories/19', '{\"id\":19,\"title_sw\":\"Sheria\",\"title_en\":\"Legislation\",\"slug\":\"legislation\",\"active\":1,\"created_at\":\"2018-06-26T20:09:22.000000Z\",\"updated_at\":\"2018-06-26T20:09:22.000000Z\",\"featured\":0,\"specials\":null,\"services\":null}', '2025-05-30 20:58:05', '2025-05-30 20:58:05'),
(200, 6, 'DocumentCategory', 'destroy', '127.0.0.1', 'http://localhost/tari/public/cms/document-categories/20', '{\"id\":20,\"title_sw\":\"Maamuzi ya Mahakam\",\"title_en\":\"Court Judgement\",\"slug\":\"court-judgement\",\"active\":1,\"created_at\":\"2018-06-26T20:10:47.000000Z\",\"updated_at\":\"2018-06-26T20:10:47.000000Z\",\"featured\":0,\"specials\":null,\"services\":null}', '2025-05-30 20:58:11', '2025-05-30 20:58:11'),
(201, 6, 'DocumentCategory', 'destroy', '127.0.0.1', 'http://localhost/tari/public/cms/document-categories/23', '{\"id\":23,\"title_sw\":\"Katiba\",\"title_en\":\"Constitution\",\"slug\":\"constitution\",\"active\":1,\"created_at\":\"2018-06-27T23:34:22.000000Z\",\"updated_at\":\"2018-06-27T23:34:22.000000Z\",\"featured\":0,\"specials\":null,\"services\":null}', '2025-05-30 20:58:17', '2025-05-30 20:58:17'),
(202, 6, 'DocumentCategory', 'destroy', '127.0.0.1', 'http://localhost/tari/public/cms/document-categories/21', '{\"id\":21,\"title_sw\":\"Taarifa\",\"title_en\":\"Reports\",\"slug\":\"reports\",\"active\":1,\"created_at\":\"2018-06-26T20:11:00.000000Z\",\"updated_at\":\"2018-06-26T20:11:00.000000Z\",\"featured\":0,\"specials\":null,\"services\":null}', '2025-05-30 20:58:45', '2025-05-30 20:58:45');

-- --------------------------------------------------------

--
-- Table structure for table `trainings`
--

CREATE TABLE `trainings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_sw` varchar(191) NOT NULL,
  `title_en` varchar(191) DEFAULT NULL,
  `content_sw` text NOT NULL,
  `content_en` text DEFAULT NULL,
  `file_en` text DEFAULT NULL,
  `file_sw` text DEFAULT NULL,
  `location` text DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainings`
--

INSERT INTO `trainings` (`id`, `title_sw`, `title_en`, `content_sw`, `content_en`, `file_en`, `file_sw`, `location`, `start_date`, `end_date`, `active`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Mafunzo wa kiwango cha juu zaidi', 'Highly sophisticated specialist training', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit</p>', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit</p>', '/uploads/trainings/en1656634257-en-1656615989-en-1656615890-en-1656615782-SKILLS FOR  JOB (1) (1).doc', '/uploads/trainings/sw1656634257-en-1656615989-en-1656615890-en-1656615782-SKILLS FOR  JOB (1).doc', 'Nkrumah Hall', '2022-07-04', '2022-07-06', 1, 'highly-sophisticated-specialist-training', '2022-06-30 21:10:57', '2022-06-30 21:10:57'),
(2, 'kiwango cha juu zaidi Mafunzo wa pili', 'specialist training in Highly sophisticated ', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit</p>', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit</p>', '/uploads/trainings/en1656634257-en-1656615989-en-1656615890-en-1656615782-SKILLS FOR  JOB (1) (1).doc', '/uploads/trainings/sw1656634257-en-1656615989-en-1656615890-en-1656615782-SKILLS FOR  JOB (1).doc', 'Nkrumah Hall', '2022-07-04', '2022-07-06', 1, 'highly-sophisticated-specialist-training', '2022-06-30 21:10:57', '2022-06-30 21:10:57');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `keyword` varchar(191) NOT NULL,
  `en` text NOT NULL,
  `sw` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `keyword`, `en`, `sw`, `created_at`, `updated_at`) VALUES
(1, 'lbl_site_title', 'TANZANIA AGRICULTURE RESEARCH INSTITUTE', 'TANZANIA AGRICULTURE RESEARCH INSTITUTE', '2020-04-17 06:41:00', '2025-05-30 13:42:29'),
(2, 'lbl_site_subtitle', 'The United Republic of Tanzania', 'Jamhuri ya Muungano wa Tanzania', '2020-04-17 06:41:00', '2023-02-02 10:40:32'),
(3, 'lbl_feedback', 'Feedback, Complaint or Opinion', 'Mrejesho, Malalamiko au Wazo', '2020-04-17 06:41:00', '2022-03-10 09:27:54'),
(4, 'lbl_contact', 'Contact Us', 'Wasiliana Nasi', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(5, 'lbl_region', 'Region', 'Mkoa', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(11, 'lbl_region_offices', 'HST Offices', 'Ofisi za HST', '2020-04-17 06:41:00', '2022-07-17 03:52:29'),
(12, 'lbl_social', 'Social Media', 'Mitandao ya Kijamii', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(13, 'lbl_faq', 'Frequently Asked Questions', 'Maswali Yaulizwayo Mara kwa Mara', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(14, 'lbl_faq_short', 'FAQs', 'MMM', '2020-04-17 06:41:00', '2021-09-21 15:22:22'),
(16, 'lbl_our_services', 'Our Services', 'Huduma Zetu', '2020-04-17 06:41:00', '2022-06-24 16:36:54'),
(17, 'lbl_sitemap', 'Sitemap', 'Ramani Ya Tovuti', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(18, 'lbl_languge', 'English', 'Kiswahili', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(20, 'lbl_profile', 'Profile', 'Wasifu', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(22, 'lbl_announcements', 'Announcements', 'Matangazo', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(24, 'lbl_recent_press', 'Press releases', 'Taarifa kwa vyombo vya habari', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(27, 'lbl_latest_news', 'Latest News', 'Habari Mpya', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(28, 'lbl_latest_products', 'Latest Products', 'Bidhaa Mpya', '2020-04-17 06:41:00', '2022-01-10 01:14:43'),
(29, 'lbl_latest_publications', 'Latest Publications', 'Machapisho Mapya', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(30, 'lbl_news', 'Updates', 'Habari', '2020-04-17 06:41:00', '2023-02-02 13:49:29'),
(32, 'lbl_events', 'Events', 'Matukio', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(33, 'lbl_document', 'Document', 'Document', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(34, 'lbl_more', 'More', 'Zaidi', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(35, 'lbl_more_news', 'More News', 'Habari Zaidi', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(36, 'lbl_more_events', 'More Events', 'Matukio Zaidi', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(37, 'lbl_more_gallery', 'More Gallery', 'Maktaba zote', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(38, 'lbl_more_products', 'More Products', 'Bidhaa Zaidi', '2020-04-17 06:41:00', '2022-01-10 01:14:43'),
(39, 'lbl_more_publications', 'More publications', 'More publications', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(40, 'lbl_more_announcements', 'View All Announcements', 'Matangazo Zaidi', '2020-04-17 06:41:00', '2020-08-05 01:43:45'),
(42, 'lbl_related_links', 'Related Links', 'Tovuti Mashuhuri', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(43, 'lbl_e_services_links', 'E-Services', 'Huduma Mtandao', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(44, 'lbl_quick_links', 'Quick Links', 'Kurasa za Karibu', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(45, 'lbl_readmore', 'Read More', 'Soma zaidi', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(46, 'lbl_view_all_news', 'View All News', 'Soma Habari zaidi', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(50, 'lbl_home', 'Home', 'Mwanzo', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(51, 'lbl_category', 'Category', 'Makundi', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(53, 'lbl_pages', 'Pages', 'Kurasa', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(54, 'lbl_speeches', 'Speeches', 'Hotuba', '2020-04-17 06:41:00', '2021-09-26 07:39:04'),
(56, 'lbl_how_doi', 'How Do I?', 'Nifanyaje?', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(58, 'lbl_about_us', 'About us', 'Kuhusu sisi', '2020-04-17 06:41:00', '2021-10-04 07:20:28'),
(59, 'lbl_products', 'Products', 'Bidhaa', '2020-04-17 06:41:00', '2020-06-23 06:30:47'),
(60, 'lbl_publications', 'Publications', 'Machapisho', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(61, 'lbl_no_information', 'Content not found ', 'Hakuna Taarifa kwa sasa ', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(66, 'lbl_album', 'Albums', 'Albamu', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(67, 'lbl_vids', 'Videos', 'Video', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(68, 'lbl_error', 'Content Not Found', 'Taarifa hazijapatikana', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(73, 'lbl_desc', 'Description', 'Maelezo', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(79, 'lbl_press', 'Press Release', 'Vyombo vya Habari', '2020-04-17 06:41:00', '2021-10-17 16:06:16'),
(80, 'lbl_posted', 'Posted On', 'Imewekwa', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(82, 'lbl_biography', 'Biography', 'Wasifu', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(84, 'lbl_address', 'Postal Address', 'Anwani/Mahali', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(86, 'lbl_more_videos', 'More Videos', 'Video Zaidi', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(87, 'lbl_copyright', 'All Rights Reserved.', 'Haki zote zimehifadhiwa.', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(88, 'lbl_copyright_statement', 'Copy Right Statements.', 'Copy Right Statements.', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(93, 'lbl_download', 'Download', 'Pakua', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(94, 'lbl_print', 'Chapisha', 'Chapisha', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(96, 'lbl_sponsor', 'Sponsors', 'Wadhamini', '2020-04-17 06:41:00', '2021-06-17 10:41:12'),
(97, 'lbl_ega', 'e-Government Authority', 'Mamlaka ya Serikali Mtandao', '2020-04-17 06:41:00', '2021-06-13 06:19:37'),
(98, 'lbl_designed', 'The website is Designed, Developed And Maintained by', 'Imesanifiwa na Imetengenezwa na', '2020-04-17 06:41:00', '2021-11-23 09:50:46'),
(99, 'lbl_content_maintained ', 'Content Maintained by TANZANIA AGRICULTURE RESEARCH INSTITUTE', 'Huendeshwa na TANZANIA AGRICULTURE RESEARCH INSTITUTE', '2020-04-17 06:41:00', '2025-05-30 13:42:29'),
(100, 'lbl_site_title_short ', 'TARI', 'TARI', '2020-04-17 06:41:00', '2025-05-30 13:40:07'),
(101, 'lbl_photo_gallery', 'Photo Gallery', 'Maktaba ya Picha', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(102, 'lbl_video_gallery', 'Video Gallery', 'Maktaba ya Video', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(103, 'lbl_audio_gallery', 'Audio Gallery', 'Maktaba ya Audio', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(105, 'lbl_media_center', 'Media Center', 'Ukumbi wa Habari', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(106, 'lbl_name', 'Name', 'Jina', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(107, 'lbl_email', 'Email Address', 'Barua pepe', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(108, 'lbl_phone', 'Phone', 'Simu', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(109, 'lbl_phone_number', 'Phone Number', 'Namba ya Simu', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(110, 'lbl_fax', 'Fax', 'Nukushi', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(111, 'lbl_message', 'Message', 'Ujumbe', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(112, 'lbl_send', 'Send', 'Tuma', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(114, 'lbl_search', 'Search', 'Tafuta', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(115, 'lbl_search_results', 'Search Results', 'Matokeo', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(116, 'lbl_search1', 'Type your search here then press ENTER', 'Andika Unachokitafuta Hapa Kisha bonyeza kitufe', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(117, 'lbl_mobile', 'Mobile', 'Simu ya Mkononi', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(118, 'lbl_telephone', 'Telephone', 'Simu', '2020-04-17 06:41:00', '2022-02-16 07:53:26'),
(119, 'lbl_p.o.box', 'P.O Box', 'S.L.P', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(120, 'lbl_comments', 'Comments', 'Maoni', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(124, 'stakeholders', 'Stakeholders', 'Wadau', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(125, 'privacy_policy', 'Privacy Policy', 'Sera ya Faragha', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(126, 'disclaimer', 'Disclaimer', 'Angalizo', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(133, 'lbl_videos_gallery', 'Video Albums', 'Albamu ya Video', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(134, 'lbl_vacancies', 'Vacancies', 'Ajira', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(135, 'lbl_deadline', 'Deadline', 'Tarehe ya Mwisho', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(138, 'lbl_welcome_note', 'Welcome', 'Karibu', '2020-04-17 06:41:00', '2020-06-27 07:34:01'),
(139, 'lbl_contact_info', 'Contact Info', 'Mawasiliano', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(141, 'lbl_view_more', 'View More', 'Angalia Zaidi', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(142, 'lbl_fullname', 'Fullname', 'Jina Kamili', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(143, 'lbl_subject', 'Subject', 'Kichwa cha Habari', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(144, 'lbl_call_us', 'Call us any time\n', 'Tupigie muda wowote', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(145, 'lbl_hotline', 'Hotline', 'Hotline', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(146, 'lbl_view', 'View', 'Tazama', '2020-04-17 06:41:00', '2021-07-09 12:27:59'),
(148, 'lbl_contacts', 'Contacts Us', 'Wasiliana Nasi', '2020-04-17 06:41:00', '2021-06-28 12:02:48'),
(173, 'lbl_projects', 'Our Projects', 'Miradi Yetu', '2020-04-17 06:41:00', '2021-10-14 03:32:40'),
(181, 'lbl_submit', 'Submit', 'Wasilisha', '2020-04-17 06:41:00', '2021-06-28 12:11:34'),
(247, 'lbl_sponsors_links', 'Sponsor Links', 'Wadhamini', '2020-06-23 04:28:17', '2020-06-23 04:28:17'),
(248, 'lbl_our_services_msg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor\" elit, sed do eiusmod tempor,o eiusmod tempor\" Lorem ipsum dolor sit amet, consectetur adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,o eiusmod tempor\" elit, sed do eiusmod tempor,o eiusmod tempor\" Lorem ipsum dolor sit amet, consectetur adipiscing', '2020-06-23 06:14:51', '2021-10-25 10:00:34'),
(249, 'lbl_our_products', 'Our Products', 'Bidhaa Zetu', '2020-06-23 06:30:22', '2022-01-10 01:14:43'),
(259, 'lbl_view_all', 'View All', 'Tazama Zaidi', '2021-06-13 05:58:35', '2021-06-13 05:58:35'),
(260, 'lbl_date', 'Date', 'Tarehe', '2021-06-16 09:21:35', '2021-06-16 09:21:35'),
(261, 'lbl_doc_title', 'Description', 'Maelezo', '2021-06-16 09:21:35', '2021-06-16 09:21:35'),
(267, 'lbl_duration', 'Duration', 'Muda', '2021-06-26 12:15:55', '2021-06-26 12:15:55'),
(269, 'lbL_feedback_success', 'Feedback Successful Submitted', 'Mrejesho / Maoni Yamewasilishwa', '2021-06-29 07:58:58', '2022-03-10 09:27:54'),
(273, 'lbl_latest_updates', 'Lastest Updates', 'Habari Mpya', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(277, 'lbl_overview', 'Overview', 'Muhtasari', '2021-07-09 15:54:12', '2021-07-09 15:54:12'),
(280, 'lbl_important_links', 'Important Links', 'Tovuti Muhimu', '2021-08-06 11:37:55', '2021-08-06 11:37:55'),
(281, 'lbl_site_sub_subtitle', 'Ministry of Agriculture', 'Wizara Ya Kilimo', '2021-08-06 11:37:55', '2025-05-30 13:45:46'),
(283, 'lbl_administration', 'Administration', 'Utawala', '2021-08-06 11:37:55', '2021-08-06 11:37:55'),
(289, 'lbl_feedbacks', 'Feedbacks', 'Mrejesho', '2021-08-06 11:37:55', '2022-03-11 03:51:00'),
(290, 'lbl_organization', 'Organization', 'Taasisi', '2021-08-06 11:37:55', '2021-08-06 11:37:55'),
(291, 'lbl_location', 'Location', 'Eneo / Mahali', '2021-08-06 11:37:55', '2021-10-29 07:02:51'),
(292, 'lbl_latest_announcement', 'Latest Announcements', 'Matangazo Mapya', '2021-08-06 11:49:39', '2021-08-06 11:49:39'),
(299, 'lbl_view_offices', 'View All Offices', 'Tazama Ofisi Zote', '2021-09-20 07:05:01', '2021-09-20 07:05:01'),
(300, 'lbl_not_found', 'Not Found', 'Haipatikani', '2021-09-21 06:56:31', '2021-09-21 06:56:31'),
(301, 'lbl_resource_not_found', 'Sorry, The Resource you are looking for was not found.', 'Samahani, Rasilimali uliyotafuta haikupatikana.', '2021-09-21 06:58:12', '2021-10-06 09:30:47'),
(312, 'lbl_toll_free', 'Toll Free', 'Piga Bure', '2021-10-13 13:24:52', '2022-01-09 11:29:37'),
(313, 'lbl_online_services', 'Online Services', 'Huduma Mtandao', '2021-10-14 07:49:03', '2021-10-14 07:49:03'),
(314, 'lbl_support', 'HST', 'HST', '2021-10-28 11:10:47', '2022-07-17 03:52:29'),
(315, 'lbl_site_motto', 'Adequate And Equitable Compensations', 'Adequate And Equitable Compensations', '2021-10-29 10:00:46', '2022-06-14 03:06:15'),
(330, 'lbl_archive', 'Archive', 'Hifadhi', '2021-11-23 14:03:17', '2022-03-07 09:40:15'),
(331, 'lbl_core_services', 'Core Services', 'Huduma za Msingi', '2021-11-23 14:03:17', '2022-01-09 11:38:24'),
(332, 'lbl_whistle_blower', 'Whistle Blower', 'Toa Taarifa', '2022-01-09 14:40:46', '2022-01-09 11:42:44'),
(333, 'lbl_optional', 'Optional', 'Hiari', '2022-03-10 13:15:51', '2022-03-10 13:15:51'),
(334, 'lbl_whistle_blower_success', 'Thank you, Whistle blow successful submitted', 'Asante, Taarifa imewasilisha', '2022-03-10 13:16:18', '2022-03-10 10:22:24'),
(335, 'lbl_incident_location', 'Where the Incident happened?', 'Tukio limetokea wapi?', '2022-03-10 13:16:46', '2022-03-10 10:22:24'),
(336, 'lbl_incident_description', 'Description of the incident', 'Maelezo ya Tukio', '2022-03-10 13:17:06', '2022-03-10 10:22:24'),
(337, 'lbl_incident_extra_info', 'Where to get further/extra information?', 'Wapi pakupata taarifa zaidi?', '2022-03-10 13:17:23', '2022-03-10 10:22:24'),
(338, 'lbl_attachment_proof', 'Upload proof attachment [PDF, PNG, JPG and not more than 1MB]', 'Ambatisha ushahidi [PDF, PNG, JPG na si zaidi ya 1MB]', '2022-03-10 13:42:30', '2022-03-10 10:46:41'),
(339, 'lbl_whistle_blower_fail', 'Failed to send email. Please try again.', 'Imeshindwa kutuma barua pepe. Tafadhali jaribu tena.', '2022-03-10 14:33:51', '2022-03-10 11:34:55'),
(340, 'lbl_campaign', 'Campaign', 'Kampeni', '2020-04-17 06:41:00', '2022-06-14 03:23:27'),
(341, 'lbl_news_and_events', 'News & Events', 'Habari na Matukio', '2020-04-17 06:41:00', '2022-06-14 03:23:27'),
(342, 'lbl_quotes', 'Quotes', 'Nukuu', '2020-04-17 06:41:00', '2022-06-14 03:23:27'),
(343, 'lbl_our_campaigns', 'Campaigns', 'Kampeni', '2020-04-17 06:41:00', '2022-06-14 03:23:27'),
(344, 'lbl_menu', 'Menu', 'Menu', '2020-04-17 06:41:00', '2022-06-14 03:23:27'),
(345, 'lbl_details', 'Details', 'Maelezo', '2020-04-17 06:41:00', '2022-06-14 03:23:27'),
(346, 'lbl_campaigns', 'Campaigns', 'Kampeni', '2020-04-17 06:41:00', '2022-06-14 03:23:27'),
(347, 'lbl_hospitals', 'Hospitals', 'Hospitali', '2020-04-17 06:41:00', '2022-06-14 03:23:27'),
(348, 'lbl_training', 'Training', 'Mafunzo', '2020-04-17 06:41:00', '2022-06-26 14:00:51'),
(349, 'lbl_comments_complaints_and_advise\r\n', 'Comments, Complaints and Advise', 'Maoni, Malalamiko na Ushauri', '2020-04-17 06:41:00', '2022-06-26 14:00:51'),
(350, 'lbl_achievements', 'Achievements', 'Mafanikio', '2020-04-17 06:41:00', '2022-06-26 14:00:51'),
(351, 'lbl_comments_complaints_and_advise', 'Comments Complaints and Advise', 'Maoni Malamiko na Ushauri', '2020-04-17 06:41:00', '2022-06-26 14:00:51'),
(352, 'lbl_guidelines', 'Guidelines', 'Miongozo', '2020-04-17 06:41:00', '2022-06-26 14:00:51'),
(353, 'lbl_operators', 'Operators', 'Operators', '2020-04-17 06:41:00', '2022-06-26 14:00:51'),
(354, 'lbl_colateral_managers', 'Colateral Managers', 'Colateral Managers', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(355, 'lbl_warehouses', 'Warehouses', 'Maghala', '2020-04-17 06:41:00', '2022-06-26 14:00:51'),
(356, 'lbl_price', 'Price', 'Bei', '2020-04-17 06:41:00', '2022-06-26 14:00:51'),
(357, 'lbl_product', 'Product', 'Bidhaa', '2020-04-17 06:41:00', '2022-06-24 16:36:54'),
(358, 'lbl_category', 'Category', 'Aina', '2020-04-17 06:41:00', '2022-06-26 14:00:51'),
(359, 'lbl_trainings', 'Training', 'Mafunzo', '2020-04-17 06:41:00', '2022-06-26 14:00:51'),
(360, 'lbl_no_records_found', 'No any Matching Records', 'Hakuna matokea', '2020-04-17 06:41:00', '2022-06-26 14:00:51'),
(361, 'lbl_clear_search', 'Clear Search', 'Anza Upya', '2020-04-17 06:41:00', '2022-06-26 14:00:51'),
(362, 'lbl_attachment', 'Attachment', 'Kiambatanisho', '2020-04-17 06:41:00', '2022-06-26 14:00:51'),
(363, 'lbl_latest_documents', 'Latest Documents', 'Machapisho Mapya', '2020-04-17 06:41:00', '2022-06-26 14:00:51'),
(364, 'lbl_partners', 'Partners', 'Wadhamini', '2020-04-17 06:41:00', '2022-06-26 14:00:51'),
(365, 'lbl_support_links', 'Support Links', 'Support Links', '2020-04-17 06:41:00', '2022-08-06 11:25:37'),
(366, 'lbl_advertisements', 'Advertisements', 'Matangazo', '2020-04-17 06:41:00', '2022-08-06 11:25:37'),
(367, 'lbl_registration_documents', 'Registration Documents', 'Nyaraka za Usajili', '2020-04-17 06:41:00', '2022-08-06 11:25:37'),
(368, 'lbl_documents_center', 'Documents Center', 'Kituo cha Nyaraka', '2020-04-17 06:41:00', '2022-08-06 11:25:37'),
(369, 'lbl_document_center', 'Documents Center', 'Kituo cha Nyaraka', '2020-04-17 06:41:00', '2022-08-06 11:25:37'),
(370, 'lbl_licensed_entities', 'Licensed Entities', 'Licensed Entities', '2020-04-17 06:41:00', '2022-08-06 11:25:37'),
(371, 'lbl_dg_message', 'Commissioner\'s Message', 'Commissioner\'s Message', '2020-04-17 06:41:00', '2022-08-09 15:49:28'),
(373, 'lbl_documents_center', 'Documents Center', 'Documents Center', '2020-04-17 06:41:00', '2022-08-06 11:25:37'),
(374, 'lbl_more_info', 'More Informations', 'More Informations', '2020-04-17 06:41:00', '2020-04-17 06:41:00'),
(375, 'lbl_licensing_requirements', 'Licensing Requirements', 'Licensing Requirements', '2020-04-17 06:41:00', '2022-08-14 02:43:13'),
(376, 'lbl_members', 'Members', 'Wadau', '2020-04-17 06:41:00', '2022-08-14 02:43:13'),
(377, 'lbl_community', 'Community', 'Jamii', '2020-04-17 06:41:00', '2022-08-14 02:43:13'),
(378, 'lbl_right_reserved', 'All Rights Reserved', 'Haki zote Zimehifadhiwa', '2023-01-18 15:10:46', '2023-01-18 15:10:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `last_login` varchar(191) NOT NULL,
  `photo` varchar(191) NOT NULL,
  `expiring_date` date NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `last_login`, `photo`, `expiring_date`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'Default User', 'admin@tari.go.tz', NULL, '$2y$10$KDevvaHVusOGRKVXjmWb9O/u/IHRC4RO2NywuB0FYvxkRPz/2SV46', '', '', '0000-00-00', NULL, '2023-01-17 03:44:57', '2023-01-17 03:44:57');

-- --------------------------------------------------------

--
-- Table structure for table `visitors_logs`
--

CREATE TABLE `visitors_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `browserId` varchar(191) DEFAULT NULL,
  `browserName` varchar(191) DEFAULT NULL,
  `browserVersion` varchar(191) DEFAULT NULL,
  `userAgent` varchar(191) DEFAULT NULL,
  `os` varchar(191) DEFAULT NULL,
  `osVersion` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors_logs`
--

INSERT INTO `visitors_logs` (`id`, `browserId`, `browserName`, `browserVersion`, `userAgent`, `os`, `osVersion`, `created_at`, `updated_at`) VALUES
(1, '3143104403', 'Chrome', '106.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2022-10-18 04:18:27', '2022-10-18 20:40:03'),
(2, '3143104403', 'Chrome', '106.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2022-10-19 04:18:13', '2022-10-19 04:18:27'),
(3, '3085818238', 'Chrome', '104.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2023-01-09 12:37:55', '2023-01-09 15:28:13'),
(4, '3085818238', 'Chrome', '104.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2023-01-10 06:55:03', '2023-01-10 13:38:25'),
(5, '3224458869', 'Firefox', '108.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', 'Windows', 'NT 10.0', '2023-01-10 08:51:38', '2023-01-10 08:51:38'),
(6, '546229184', 'Chrome', '85.0.4151.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4151.0 Safari/537.36', 'Windows', 'NT 10.0', '2023-01-10 08:52:56', '2023-01-10 08:52:56'),
(7, '3085818238', 'Chrome', '104.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2023-01-11 06:45:23', '2023-01-11 07:06:22'),
(8, '3085818238', 'Chrome', '104.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2023-01-14 20:27:35', '2023-01-14 20:28:40'),
(9, '3085818238', 'Chrome', '104.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2023-01-16 08:46:56', '2023-01-16 20:51:34'),
(10, '3085818238', 'Chrome', '104.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2023-01-16 21:14:25', '2023-01-17 15:19:21'),
(11, '1213169978', 'Chrome', '107.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'Linux', 'x86_64', '2023-01-17 14:22:52', '2023-01-17 14:22:52'),
(12, '3538137309', 'Chrome', '107.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'Linux', 'x86_64', '2023-01-17 15:33:29', '2023-01-17 15:46:19'),
(13, '726043368', 'Chrome', '108.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2023-01-17 16:24:42', '2023-01-17 16:24:42'),
(14, '641470276', 'Chrome', '106.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'Linux', 'x86_64', '2023-01-17 17:53:37', '2023-01-17 17:53:37'),
(15, '4183493605', 'Chrome', '108.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2023-01-17 17:55:18', '2023-01-17 19:44:50'),
(16, '2972863829', 'Chrome', '108.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2023-01-17 17:58:02', '2023-01-17 17:58:41'),
(17, '38210979', 'Chrome', '109.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2023-01-17 18:00:03', '2023-01-17 18:08:16'),
(18, '2911812543', 'Firefox', '108.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', 'Windows', 'NT 10.0', '2023-01-17 18:01:21', '2023-01-17 18:02:05'),
(19, '1042972833', 'Chrome', '109.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2023-01-17 20:06:38', '2023-01-17 20:06:38'),
(20, '3945396847', 'Chrome', '109.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2023-01-17 20:11:28', '2023-01-17 20:11:28'),
(21, '4187683077', 'Chrome', '109.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.55', 'Windows', 'NT 10.0', '2023-01-17 20:14:56', '2023-01-17 20:14:56'),
(22, '2972863829', 'Chrome', '108.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2023-01-17 21:31:37', '2023-01-17 22:44:53'),
(23, '2085256981', 'Chrome', '108.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.76', 'Windows', 'NT 10.0', '2023-01-18 11:58:22', '2023-01-18 19:40:54'),
(24, '3945396847', 'Chrome', '109.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2023-01-18 17:25:25', '2023-01-18 18:13:52'),
(25, '474648219', 'Chrome', '107.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'Linux', 'x86_64', '2023-01-18 20:43:28', '2023-01-18 20:49:29'),
(26, '3085818238', 'Chrome', '104.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2023-01-18 23:54:06', '2023-01-19 01:41:07'),
(27, '2085256981', 'Chrome', '108.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.76', 'Windows', 'NT 10.0', '2023-01-19 00:09:17', '2023-01-19 00:09:17'),
(28, '2972863829', 'Chrome', '108.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2023-01-19 08:47:13', '2023-01-19 08:48:39'),
(29, '1262198560', 'Chrome', '109.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2023-01-19 09:08:02', '2023-01-19 09:08:02'),
(30, '1470003570', 'Chrome', '109.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2023-01-19 09:08:37', '2023-01-19 09:08:37'),
(31, '641470276', 'Chrome', '106.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'Linux', 'x86_64', '2023-01-19 10:31:32', '2023-01-19 10:32:00'),
(32, '2401816879', 'Chrome', '109.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'Linux', 'x86_64', '2023-01-19 11:00:44', '2023-01-19 11:00:44'),
(33, '1470003570', 'Chrome', '109.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2023-01-20 09:40:51', '2023-01-20 09:40:51'),
(34, '3085818238', 'Chrome', '104.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2023-01-20 10:34:25', '2023-01-20 11:18:32'),
(35, '1976227278', 'Chrome', '109.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2023-01-20 18:21:47', '2023-01-20 18:21:47'),
(36, '3085818238', 'Chrome', '104.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2023-01-25 15:02:52', '2023-01-25 15:06:38'),
(37, '3538137309', 'Chrome', '107.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'Linux', 'x86_64', '2023-01-25 15:10:26', '2023-01-25 15:30:32'),
(38, '3085818238', 'Chrome', '104.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2023-01-26 09:47:33', '2023-01-26 14:22:31'),
(39, '819184287', 'Chrome', '109.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'Linux', 'x86_64', '2023-01-26 10:11:09', '2023-01-26 10:11:09'),
(40, '1259814480', 'Chrome', '109.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2023-01-26 17:07:40', '2023-01-26 17:38:49'),
(41, '3085818238', 'Chrome', '104.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2023-01-27 00:31:46', '2023-01-27 15:36:49'),
(42, '1259814480', 'Chrome', '109.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2023-01-27 09:00:13', '2023-01-27 19:51:13'),
(43, '819184287', 'Chrome', '109.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'Linux', 'x86_64', '2023-01-27 09:12:34', '2023-01-27 12:18:28'),
(44, '1259814480', 'Chrome', '109.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2023-01-30 10:22:09', '2023-01-30 14:31:20'),
(45, '1470003570', 'Chrome', '109.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2023-01-31 11:28:28', '2023-01-31 14:03:48'),
(46, '3085818238', 'Chrome', '104.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2023-01-31 14:32:26', '2023-01-31 14:32:26'),
(47, '1262198560', 'Chrome', '109.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2023-02-01 09:09:23', '2023-02-01 09:09:23'),
(48, '1259814480', 'Chrome', '109.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2023-02-02 13:27:02', '2023-02-02 17:17:48'),
(49, '1470003570', 'Chrome', '109.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2023-02-03 09:13:04', '2023-02-03 10:26:36'),
(50, '1259814480', 'Chrome', '109.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2023-02-03 10:15:15', '2023-02-03 11:42:10'),
(51, '1259814480', 'Chrome', '109.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2023-02-07 18:04:33', '2023-02-07 18:04:33'),
(52, '1259814480', 'Chrome', '109.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2023-02-13 11:26:06', '2023-02-13 14:29:13'),
(53, '4080268311', 'Chrome', '110.0.0.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'Mac OS', '10.15.7', '2023-02-27 16:25:45', '2023-02-27 16:25:45'),
(54, '2305909943', 'Chrome', '110.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2023-03-11 12:57:58', '2023-03-11 12:58:20'),
(55, '2305909943', 'Chrome', '110.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2023-03-13 10:17:35', '2023-03-13 12:03:04'),
(56, '902509414', 'Chrome', '112.0.0.0', 'Mozilla/5.0 (Linux; Android 13; SM-A536E) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Mobile Safari/537.36', 'Android', '13', '2023-04-13 10:44:33', '2023-04-13 10:44:33'),
(57, '2356245057', 'Chrome', '114.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.37', 'Windows', 'NT 10.0', '2023-06-05 20:24:13', '2023-06-05 20:24:16'),
(58, '2356245057', 'Chrome', '114.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.37', 'Windows', 'NT 10.0', '2023-06-05 21:05:29', '2023-06-05 21:05:29'),
(59, '1115951458', 'Firefox', '116.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'Windows', 'NT 10.0', '2023-08-21 14:54:27', '2023-08-21 14:54:27'),
(60, '3940017999', 'Firefox', '116.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'Windows', 'NT 10.0', '2023-08-21 14:54:43', '2023-08-21 14:54:43'),
(61, '3729478215', 'Chrome', '117.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'Linux', 'x86_64', '2023-10-10 11:35:44', '2023-10-10 11:37:32'),
(62, '187176329', 'Chrome', '117.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'Linux', 'x86_64', '2023-10-12 20:25:30', '2023-10-12 20:25:30'),
(63, '3220857806', 'Chrome', '117.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'Linux', 'x86_64', '2023-10-13 14:31:00', '2023-10-13 14:31:00'),
(64, '3012411861', 'Chrome', '117.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'Linux', 'x86_64', '2023-10-13 15:20:32', '2023-10-13 15:20:32'),
(65, '877161212', 'Chrome', '117.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'Windows', 'NT 10.0', '2023-10-13 15:29:07', '2023-10-13 15:29:07'),
(66, '1218702722', 'Chrome', '118.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 'Linux', 'x86_64', '2023-10-18 09:38:24', '2023-10-18 09:38:24'),
(67, '3706984379', 'Chrome', '118.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 'Linux', 'x86_64', '2023-10-18 09:52:04', '2023-10-18 14:03:44'),
(68, '571100963', 'Chrome', '118.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 'Linux', 'x86_64', '2023-10-31 15:38:58', '2023-10-31 15:38:58'),
(69, '195125770', 'Firefox', '119.0', 'Mozilla/5.0 (X11; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Linux', 'x86_64', '2023-11-06 15:42:32', '2023-11-06 15:42:32'),
(70, '195125770', 'Firefox', '119.0', 'Mozilla/5.0 (X11; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/119.0', 'Linux', 'x86_64', '2023-11-07 08:37:07', '2023-11-07 08:37:07'),
(71, '750778858', 'Chrome', '121.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'Linux', 'x86_64', '2024-02-13 11:44:50', '2024-02-13 12:10:48'),
(72, '3178000520', 'Chrome', '122.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'Linux', 'x86_64', '2024-02-28 15:51:04', '2024-02-28 15:51:04'),
(73, '4149544684', 'Chrome', '123.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Linux', 'x86_64', '2024-04-15 10:35:31', '2024-04-15 10:35:31'),
(74, '2873740344', 'Chrome', '123.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Linux', 'x86_64', '2024-04-15 19:26:23', '2024-04-15 19:28:05'),
(75, '2873740344', 'Chrome', '123.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Linux', 'x86_64', '2024-04-15 22:38:06', '2024-04-15 23:46:52'),
(76, '411033749', 'Chrome', '123.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Linux', 'x86_64', '2024-04-16 08:08:16', '2024-04-16 08:08:16'),
(77, '1528245727', 'Chrome', '123.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Linux', 'x86_64', '2024-04-17 09:14:07', '2024-04-17 09:14:07'),
(78, '153664405', 'Chrome', '123.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Linux', 'x86_64', '2024-04-17 16:30:20', '2024-04-17 16:30:20'),
(79, '4267592175', 'Chrome', '123.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Linux', 'x86_64', '2024-04-23 16:26:41', '2024-04-23 19:09:23'),
(80, '4122521587', 'Chrome', '123.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'Linux', 'x86_64', '2024-04-24 08:31:33', '2024-04-24 08:31:33'),
(81, '691855704', 'Chrome', '124.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'Linux', 'x86_64', '2024-04-29 11:34:36', '2024-04-29 12:22:37'),
(82, '973581828', 'Chrome', '124.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'Linux', 'x86_64', '2024-05-02 09:43:33', '2024-05-02 09:46:21'),
(83, '4193195225', 'Chrome', '124.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'Linux', 'x86_64', '2024-05-02 17:18:34', '2024-05-02 17:18:34'),
(84, '3341194941', 'Chrome', '124.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'Linux', 'x86_64', '2024-05-04 08:22:19', '2024-05-04 08:22:19'),
(85, '2730159078', 'Chrome', '127.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'Linux', 'x86_64', '2024-08-06 10:26:58', '2024-08-06 10:28:02'),
(86, '2254556378', 'Chrome', '127.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'Linux', 'x86_64', '2024-08-10 14:23:58', '2024-08-10 14:23:58'),
(87, '2712558342', 'Chrome', '131.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'Linux', 'x86_64', '2025-02-04 10:03:29', '2025-02-04 10:03:29'),
(88, '2712558342', 'Chrome', '131.0.0.0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'Linux', 'x86_64', '2025-02-26 16:26:47', '2025-02-26 16:26:47'),
(89, '3346060380', 'Firefox', '138.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:138.0) Gecko/20100101 Firefox/138.0', 'Windows', 'NT 10.0', '2025-05-25 12:18:09', '2025-05-25 12:18:09'),
(90, '3565026234', 'Firefox', '139.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:139.0) Gecko/20100101 Firefox/139.0', 'Windows', 'NT 10.0', '2025-05-29 22:04:11', '2025-05-29 22:04:11'),
(91, '2058966804', 'Firefox', '139.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:139.0) Gecko/20100101 Firefox/139.0', 'Windows', 'NT 10.0', '2025-05-30 16:28:41', '2025-05-30 23:52:05');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `location` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `phone`, `email`, `location`, `active`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Mnazi juuu kusini', '0692261066', 'engotheta@gmail.com', 'Dar es salaam, Kurasini', 1, 'mnazi-juuu-kusini', '2022-06-30 20:47:08', '2022-06-30 20:47:08'),
(2, 'Northen high way', '069226104', 'engotheta@gmail.com', 'Iringa, Kaskazin', 1, 'mnazi-juuu-kusini', '2022-06-30 20:47:08', '2022-06-30 20:47:08'),
(3, 'Ilemela temeke', '0692261066', 'engotheta@gmail.com', 'Dar es salaam, Kurasini', 1, 'mnazi-juuu-kusini', '2022-06-30 20:47:08', '2022-06-30 20:47:08'),
(4, 'Mbeya soweto', '069226104', 'engotheta@gmail.com', 'Iringa, Kaskazin', 1, 'mnazi-juuu-kusini', '2022-06-30 20:47:08', '2022-06-30 20:47:08');

-- --------------------------------------------------------

--
-- Table structure for table `welcome`
--

CREATE TABLE `welcome` (
  `id` int(11) NOT NULL,
  `summary_en` text DEFAULT NULL,
  `summary_sw` text DEFAULT NULL,
  `content_sw` text DEFAULT NULL,
  `content_en` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `welcome`
--

INSERT INTO `welcome` (`id`, `summary_en`, `summary_sw`, `content_sw`, `content_en`, `status`, `created_at`, `updated_at`) VALUES
(2, 'The Management of the National Prosecutions Office, would like to invite all stakeholders to the website of the National Prosecution services.', 'Uongozi na Menejimenti nzima pamoja na Wafanyakazi wa Ofisi ya Taifa ya Mashtaka, wanawakaribisha  wadau wote ndani na nje ya nchi kutembelea Tovuti ya ofisi kwa ajili ya kupata na kujua juu ya taarifa mbalimbali ambazo ofisi inashughulika nayo. karibuni ', '<p>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p>Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1, '2025-05-30 07:02:52', '2025-05-30 14:02:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_links`
--
ALTER TABLE `about_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `achievement_types`
--
ALTER TABLE `achievement_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `administration_categories`
--
ALTER TABLE `administration_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `administration_categories_members`
--
ALTER TABLE `administration_categories_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `administration_members`
--
ALTER TABLE `administration_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backgrounds`
--
ALTER TABLE `backgrounds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colateral_managers`
--
ALTER TABLE `colateral_managers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `communities`
--
ALTER TABLE `communities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `community_categories`
--
ALTER TABLE `community_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complainants`
--
ALTER TABLE `complainants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dg_messages`
--
ALTER TABLE `dg_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `publications_category_id_index` (`category_id`);

--
-- Indexes for table `document_categories`
--
ALTER TABLE `document_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fin_years`
--
ALTER TABLE `fin_years`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `google_maps`
--
ALTER TABLE `google_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_links`
--
ALTER TABLE `home_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `how_do_i`
--
ALTER TABLE `how_do_i`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ict_links`
--
ALTER TABLE `ict_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `important_links`
--
ALTER TABLE `important_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `licensed_entities`
--
ALTER TABLE `licensed_entities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `licensed_entity_categories`
--
ALTER TABLE `licensed_entity_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_links`
--
ALTER TABLE `media_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `more_infos`
--
ALTER TABLE `more_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nps_achievements`
--
ALTER TABLE `nps_achievements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nps_achievements_fin_year_id_foreign` (`fin_year_id`),
  ADD KEY `nps_achievements_achievement_type_id_foreign` (`achievement_type_id`);

--
-- Indexes for table `online_services`
--
ALTER TABLE `online_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operators`
--
ALTER TABLE `operators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_categories`
--
ALTER TABLE `page_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `preferences`
--
ALTER TABLE `preferences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `press_releases`
--
ALTER TABLE `press_releases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quicklink_categories`
--
ALTER TABLE `quicklink_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quick_infos`
--
ALTER TABLE `quick_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quick_links`
--
ALTER TABLE `quick_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regional_offices`
--
ALTER TABLE `regional_offices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `related_links`
--
ALTER TABLE `related_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `special_pages`
--
ALTER TABLE `special_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `speeches`
--
ALTER TABLE `speeches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_links`
--
ALTER TABLE `support_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timelines`
--
ALTER TABLE `timelines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainings`
--
ALTER TABLE `trainings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitors_logs`
--
ALTER TABLE `visitors_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `welcome`
--
ALTER TABLE `welcome`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_links`
--
ALTER TABLE `about_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `achievements`
--
ALTER TABLE `achievements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `achievement_types`
--
ALTER TABLE `achievement_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `administration_categories`
--
ALTER TABLE `administration_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `administration_categories_members`
--
ALTER TABLE `administration_categories_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `administration_members`
--
ALTER TABLE `administration_members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `backgrounds`
--
ALTER TABLE `backgrounds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `colateral_managers`
--
ALTER TABLE `colateral_managers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `communities`
--
ALTER TABLE `communities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `community_categories`
--
ALTER TABLE `community_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `complainants`
--
ALTER TABLE `complainants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dg_messages`
--
ALTER TABLE `dg_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `document_categories`
--
ALTER TABLE `document_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fin_years`
--
ALTER TABLE `fin_years`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `google_maps`
--
ALTER TABLE `google_maps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `home_links`
--
ALTER TABLE `home_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `how_do_i`
--
ALTER TABLE `how_do_i`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ict_links`
--
ALTER TABLE `ict_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `important_links`
--
ALTER TABLE `important_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `licensed_entities`
--
ALTER TABLE `licensed_entities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `licensed_entity_categories`
--
ALTER TABLE `licensed_entity_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=887;

--
-- AUTO_INCREMENT for table `media_links`
--
ALTER TABLE `media_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `more_infos`
--
ALTER TABLE `more_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `nps_achievements`
--
ALTER TABLE `nps_achievements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `online_services`
--
ALTER TABLE `online_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `operators`
--
ALTER TABLE `operators`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `page_categories`
--
ALTER TABLE `page_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=440;

--
-- AUTO_INCREMENT for table `preferences`
--
ALTER TABLE `preferences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `press_releases`
--
ALTER TABLE `press_releases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `quicklink_categories`
--
ALTER TABLE `quicklink_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quick_infos`
--
ALTER TABLE `quick_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `quick_links`
--
ALTER TABLE `quick_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `regional_offices`
--
ALTER TABLE `regional_offices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `related_links`
--
ALTER TABLE `related_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `special_pages`
--
ALTER TABLE `special_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `speeches`
--
ALTER TABLE `speeches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `support_links`
--
ALTER TABLE `support_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `timelines`
--
ALTER TABLE `timelines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `trainings`
--
ALTER TABLE `trainings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=379;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `visitors_logs`
--
ALTER TABLE `visitors_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `welcome`
--
ALTER TABLE `welcome`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `nps_achievements`
--
ALTER TABLE `nps_achievements`
  ADD CONSTRAINT `nps_achievements_achievement_type_id_foreign` FOREIGN KEY (`achievement_type_id`) REFERENCES `achievement_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `nps_achievements_fin_year_id_foreign` FOREIGN KEY (`fin_year_id`) REFERENCES `fin_years` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
