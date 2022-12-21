-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-12-21 04:48:11
-- 伺服器版本： 10.4.27-MariaDB
-- PHP 版本： 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `ticket`
--

-- --------------------------------------------------------

--
-- 資料表結構 `order_detail`
--

CREATE TABLE `order_detail` (
  `sn` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `ticket_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `firm` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `QRcode` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expiry` datetime NOT NULL,
  `ticket_price` decimal(10,0) NOT NULL,
  `use_date` datetime NOT NULL,
  `order_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`sn`),
  ADD UNIQUE KEY `QRcode` (`QRcode`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `ticket_id` (`ticket_id`),
  ADD KEY `ticket_name` (`ticket_name`),
  ADD KEY `firm` (`firm`),
  ADD KEY `expiry` (`expiry`),
  ADD KEY `order_date` (`order_date`),
  ADD KEY `ticket_price` (`ticket_price`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
