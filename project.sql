-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-05-03 16:53:05
-- 伺服器版本： 8.0.36
-- PHP 版本： 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `project`
--
CREATE DATABASE IF NOT EXISTS `project` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `project`;

-- --------------------------------------------------------

--
-- 資料表結構 `achievements`
--

CREATE TABLE `achievements` (
  `id` int NOT NULL,
  `rule` int NOT NULL,
  `img` int NOT NULL,
  `level` int NOT NULL,
  `customer_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `nickname` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `blog`
--

CREATE TABLE `blog` (
  `id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `blog_tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `blog`
--

INSERT INTO `blog` (`id`, `title`, `author`, `blog_tag`, `content`, `create_at`) VALUES
(1, '標題1', '作者1', '1', '我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容', '2024-05-03 13:39:56'),
(3, '我是標題2', '作者1', '防熊指南', '防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南', '2024-05-03 13:41:21'),
(4, '我是標題3', '作者1', '防熊指南', '防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南防熊指南', '2024-05-03 13:41:40');

-- --------------------------------------------------------

--
-- 資料表結構 `blog_img`
--

CREATE TABLE `blog_img` (
  `id` int NOT NULL,
  `img_name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `blog_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `blog_img`
--

INSERT INTO `blog_img` (`id`, `img_name`, `blog_id`) VALUES
(1, 'asdafwarfwqr.jpg', 1),
(2, 'asdaf45warfwqr.jpg', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `booking_dates`
--

CREATE TABLE `booking_dates` (
  `booking_dates_id` int NOT NULL,
  `stores_id` int NOT NULL,
  `date` date NOT NULL,
  `reservable` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `comment`
--

CREATE TABLE `comment` (
  `id` int NOT NULL,
  `customer_id` int NOT NULL,
  `store_id` int NOT NULL,
  `comment_star` tinyint NOT NULL,
  `created_at` datetime NOT NULL,
  `comment_content` varchar(800) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `coupon`
--

CREATE TABLE `coupon` (
  `id` int NOT NULL,
  `owners_id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `coupon_off` float NOT NULL DEFAULT '0.9',
  `time_start` date NOT NULL,
  `time_end` date NOT NULL,
  `hash` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `customers`
--

CREATE TABLE `customers` (
  `id` int NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `customers_coupon`
--

CREATE TABLE `customers_coupon` (
  `id` int NOT NULL,
  `customer_id` int NOT NULL,
  `coupon_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `customers_information`
--

CREATE TABLE `customers_information` (
  `id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gender` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `country` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `introduction` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `id_card` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `avatar` blob,
  `customer_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `favorite_blog`
--

CREATE TABLE `favorite_blog` (
  `id` int NOT NULL,
  `customer_id` int NOT NULL,
  `blog_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `favorite_stores`
--

CREATE TABLE `favorite_stores` (
  `id` int NOT NULL,
  `customer_id` int NOT NULL,
  `store_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `messages`
--

CREATE TABLE `messages` (
  `id` int NOT NULL,
  `theme_id` int NOT NULL,
  `content` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `customer_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `is_privated` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `shopping_cart_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `store_id` int NOT NULL,
  `booking_date_id` int NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `coupon_id` int NOT NULL,
  `payment_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `room_campsite_id` int NOT NULL,
  `credit_card` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `note` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `owners`
--

CREATE TABLE `owners` (
  `owerns_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `gender` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_card` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mobile` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bank_account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `member_status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `owners`
--

INSERT INTO `owners` (`owerns_id`, `name`, `gender`, `account`, `password`, `birthday`, `email`, `id_card`, `mobile`, `address`, `bank_account`, `member_status`, `created_at`) VALUES
(1, '吉伊卡哇', 'female', 'chii123', '123456', '2019-05-01', 'chii@mail.com', 'D211151513', '0924566789', '吉伊卡哇市', '20122222222', 1, '2024-05-03 10:48:35'),
(2, '小八貓', 'male', 'bar123', '123456', '2020-05-01', 'bar@mail.com', 'D122222222', '0924566789', '吉伊卡哇市', '125894655649656', 1, '2024-05-03 10:55:30');

-- --------------------------------------------------------

--
-- 資料表結構 `rooms_campsites`
--

CREATE TABLE `rooms_campsites` (
  `rooms_campsites_id` int NOT NULL,
  `stores_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `normal_price` int NOT NULL,
  `holiday_price` int NOT NULL,
  `night_price` int DEFAULT NULL,
  `tent(帳篷數量)` int DEFAULT NULL,
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bed_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `people` int DEFAULT NULL,
  `square_meters` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `introduction` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `rooms_campsites_img`
--

CREATE TABLE `rooms_campsites_img` (
  `rooms_campsites_img_id` int NOT NULL,
  `rooms_campsites_id` int NOT NULL,
  `img_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `shopping_cart`
--

CREATE TABLE `shopping_cart` (
  `id` int NOT NULL,
  `customer_id` int NOT NULL,
  `stores_id` int NOT NULL,
  `FK: rooms_campsites_id` int NOT NULL,
  `coupon_id` int NOT NULL,
  `checkin_date` date NOT NULL,
  `checkout_date` date NOT NULL,
  `guests` int NOT NULL,
  `total_day` int NOT NULL,
  `total_price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `stores`
--

CREATE TABLE `stores` (
  `stores_id` int NOT NULL,
  `owners_id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mobile` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `longitude` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `latitude` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `altitude` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `precautions` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `introduction` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `stores`
--

INSERT INTO `stores` (`stores_id`, `owners_id`, `name`, `mobile`, `address`, `longitude`, `latitude`, `altitude`, `precautions`, `introduction`, `update_time`) VALUES
(1, 1, '吉伊卡哇', '0924566789', '吉伊卡哇市', '23.22222N', '150.2522222E', '500m', 'chiikawa', 'chiikawa cute', '2024-05-03 10:57:01'),
(2, 2, 'bar', '0988865451', 'barb', 'bar', 'bar', 'bra', 'bar', 'bar', '2024-05-03 10:58:09');

-- --------------------------------------------------------

--
-- 資料表結構 `stores_img`
--

CREATE TABLE `stores_img` (
  `stores_img_id` int NOT NULL,
  `stores_id` int NOT NULL,
  `img_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `stores_img`
--

INSERT INTO `stores_img` (`stores_img_id`, `stores_id`, `img_name`) VALUES
(1, 1, '[\"37b3081e85421b48e24107fa246f9d9a3a0f79df.webp\"]'),
(2, 2, '[\"3af705c10e631d593f0b619a18fc203772c7c68a.webp\"]');

-- --------------------------------------------------------

--
-- 資料表結構 `stores_informations`
--

CREATE TABLE `stores_informations` (
  `stores_informations_ id` int NOT NULL,
  `stores_id` int NOT NULL,
  `night_time` time DEFAULT NULL,
  `entry_time` time NOT NULL,
  `close_time` time NOT NULL,
  `water` tinyint(1) NOT NULL,
  `refrigerator` tinyint(1) NOT NULL,
  `bath_time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `curfew` time DEFAULT NULL,
  `pet` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `stores_informations`
--

INSERT INTO `stores_informations` (`stores_informations_ id`, `stores_id`, `night_time`, `entry_time`, `close_time`, `water`, `refrigerator`, `bath_time`, `curfew`, `pet`) VALUES
(1, 1, '18:00:00', '12:00:00', '12:00:00', 1, 1, '24H', '23:00:00', NULL),
(2, 2, '18:00:00', '12:00:00', '11:00:00', 1, 1, '18:00後', '23:00:00', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `stores_tag`
--

CREATE TABLE `stores_tag` (
  `store_tag_id` int NOT NULL,
  `stores_id` int NOT NULL,
  `tag_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `stores_tag`
--

INSERT INTO `stores_tag` (`store_tag_id`, `stores_id`, `tag_id`) VALUES
(1, 1, 1),
(2, 1, 4),
(3, 2, 2),
(4, 2, 3);

-- --------------------------------------------------------

--
-- 資料表結構 `tag`
--

CREATE TABLE `tag` (
  `tag_id` int NOT NULL,
  `tag_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `tag`
--

INSERT INTO `tag` (`tag_id`, `tag_name`, `created_at`) VALUES
(1, '森林系', '2024-05-03 11:39:53'),
(2, '雨棚', '2024-05-03 11:39:53'),
(3, '露營車', '2024-05-03 11:40:11'),
(4, '草皮', '2024-05-03 11:40:25');

-- --------------------------------------------------------

--
-- 資料表結構 `themes`
--

CREATE TABLE `themes` (
  `id` int NOT NULL,
  `namespace_id` int NOT NULL,
  `theme_title` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `is_privated` tinyint(1) NOT NULL,
  `endpoint` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- 資料表索引 `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- 資料表索引 `blog_img`
--
ALTER TABLE `blog_img`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- 資料表索引 `booking_dates`
--
ALTER TABLE `booking_dates`
  ADD PRIMARY KEY (`booking_dates_id`),
  ADD KEY `stores_id` (`stores_id`);

--
-- 資料表索引 `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owners_id` (`owners_id`);

--
-- 資料表索引 `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `customers_coupon`
--
ALTER TABLE `customers_coupon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `coupon_id` (`coupon_id`);

--
-- 資料表索引 `customers_information`
--
ALTER TABLE `customers_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- 資料表索引 `favorite_blog`
--
ALTER TABLE `favorite_blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- 資料表索引 `favorite_stores`
--
ALTER TABLE `favorite_stores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `store_id` (`store_id`);

--
-- 資料表索引 `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `theme_id` (`theme_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- 資料表索引 `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_ibfk_1` (`shopping_cart_id`),
  ADD KEY `booking_date_id` (`booking_date_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `room_campsite_id` (`room_campsite_id`),
  ADD KEY `store_id` (`store_id`);

--
-- 資料表索引 `owners`
--
ALTER TABLE `owners`
  ADD PRIMARY KEY (`owerns_id`);

--
-- 資料表索引 `rooms_campsites`
--
ALTER TABLE `rooms_campsites`
  ADD PRIMARY KEY (`rooms_campsites_id`),
  ADD KEY `stores_id` (`stores_id`);

--
-- 資料表索引 `rooms_campsites_img`
--
ALTER TABLE `rooms_campsites_img`
  ADD PRIMARY KEY (`rooms_campsites_img_id`),
  ADD KEY `stores_id` (`rooms_campsites_id`);

--
-- 資料表索引 `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `FK: rooms_campsites_id` (`FK: rooms_campsites_id`),
  ADD KEY `stores_id` (`stores_id`);

--
-- 資料表索引 `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`stores_id`),
  ADD KEY `stores_ibfk_1` (`owners_id`);

--
-- 資料表索引 `stores_img`
--
ALTER TABLE `stores_img`
  ADD PRIMARY KEY (`stores_img_id`),
  ADD KEY `stores_id` (`stores_id`);

--
-- 資料表索引 `stores_informations`
--
ALTER TABLE `stores_informations`
  ADD PRIMARY KEY (`stores_informations_ id`),
  ADD KEY `stores_informations_ibfk_1` (`stores_id`);

--
-- 資料表索引 `stores_tag`
--
ALTER TABLE `stores_tag`
  ADD PRIMARY KEY (`store_tag_id`),
  ADD KEY `stores_id` (`stores_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- 資料表索引 `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`tag_id`);

--
-- 資料表索引 `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `achievements`
--
ALTER TABLE `achievements`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `blog_img`
--
ALTER TABLE `blog_img`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `booking_dates`
--
ALTER TABLE `booking_dates`
  MODIFY `booking_dates_id` int NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `coupon`
--
ALTER TABLE `coupon`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `customers_coupon`
--
ALTER TABLE `customers_coupon`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `customers_information`
--
ALTER TABLE `customers_information`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `favorite_blog`
--
ALTER TABLE `favorite_blog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `favorite_stores`
--
ALTER TABLE `favorite_stores`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `owners`
--
ALTER TABLE `owners`
  MODIFY `owerns_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `rooms_campsites`
--
ALTER TABLE `rooms_campsites`
  MODIFY `rooms_campsites_id` int NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `rooms_campsites_img`
--
ALTER TABLE `rooms_campsites_img`
  MODIFY `rooms_campsites_img_id` int NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `shopping_cart`
--
ALTER TABLE `shopping_cart`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `stores`
--
ALTER TABLE `stores`
  MODIFY `stores_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `stores_img`
--
ALTER TABLE `stores_img`
  MODIFY `stores_img_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `stores_informations`
--
ALTER TABLE `stores_informations`
  MODIFY `stores_informations_ id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `stores_tag`
--
ALTER TABLE `stores_tag`
  MODIFY `store_tag_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tag`
--
ALTER TABLE `tag`
  MODIFY `tag_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `achievements`
--
ALTER TABLE `achievements`
  ADD CONSTRAINT `achievements_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `blog_img`
--
ALTER TABLE `blog_img`
  ADD CONSTRAINT `blog_id` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `booking_dates`
--
ALTER TABLE `booking_dates`
  ADD CONSTRAINT `booking_dates_ibfk_1` FOREIGN KEY (`stores_id`) REFERENCES `stores` (`stores_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `coupon`
--
ALTER TABLE `coupon`
  ADD CONSTRAINT `coupon_ibfk_1` FOREIGN KEY (`owners_id`) REFERENCES `owners` (`owerns_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- 資料表的限制式 `customers_coupon`
--
ALTER TABLE `customers_coupon`
  ADD CONSTRAINT `customers_coupon_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `customers_coupon_ibfk_2` FOREIGN KEY (`coupon_id`) REFERENCES `coupon` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `customers_information`
--
ALTER TABLE `customers_information`
  ADD CONSTRAINT `customers_information_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `favorite_blog`
--
ALTER TABLE `favorite_blog`
  ADD CONSTRAINT `favorite_blog_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorite_blog_ibfk_2` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `favorite_stores`
--
ALTER TABLE `favorite_stores`
  ADD CONSTRAINT `favorite_stores_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorite_stores_ibfk_2` FOREIGN KEY (`store_id`) REFERENCES `stores` (`stores_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`theme_id`) REFERENCES `themes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`shopping_cart_id`) REFERENCES `shopping_cart` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`booking_date_id`) REFERENCES `booking_dates` (`booking_dates_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`coupon_id`) REFERENCES `coupon` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_5` FOREIGN KEY (`room_campsite_id`) REFERENCES `rooms_campsites` (`rooms_campsites_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_6` FOREIGN KEY (`store_id`) REFERENCES `stores` (`stores_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `rooms_campsites`
--
ALTER TABLE `rooms_campsites`
  ADD CONSTRAINT `rooms_campsites_ibfk_1` FOREIGN KEY (`stores_id`) REFERENCES `stores` (`stores_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `rooms_campsites_img`
--
ALTER TABLE `rooms_campsites_img`
  ADD CONSTRAINT `rooms_campsites_img_ibfk_1` FOREIGN KEY (`rooms_campsites_id`) REFERENCES `stores` (`stores_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- 資料表的限制式 `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD CONSTRAINT `shopping_cart_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `shopping_cart_ibfk_2` FOREIGN KEY (`coupon_id`) REFERENCES `coupon` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `shopping_cart_ibfk_3` FOREIGN KEY (`FK: rooms_campsites_id`) REFERENCES `rooms_campsites` (`rooms_campsites_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `shopping_cart_ibfk_4` FOREIGN KEY (`stores_id`) REFERENCES `stores` (`stores_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `stores`
--
ALTER TABLE `stores`
  ADD CONSTRAINT `stores_ibfk_1` FOREIGN KEY (`owners_id`) REFERENCES `owners` (`owerns_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `stores_img`
--
ALTER TABLE `stores_img`
  ADD CONSTRAINT `stores_img_ibfk_1` FOREIGN KEY (`stores_id`) REFERENCES `stores` (`stores_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- 資料表的限制式 `stores_informations`
--
ALTER TABLE `stores_informations`
  ADD CONSTRAINT `stores_informations_ibfk_1` FOREIGN KEY (`stores_id`) REFERENCES `stores` (`stores_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `stores_tag`
--
ALTER TABLE `stores_tag`
  ADD CONSTRAINT `stores_tag_ibfk_1` FOREIGN KEY (`stores_id`) REFERENCES `stores` (`stores_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stores_tag_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
