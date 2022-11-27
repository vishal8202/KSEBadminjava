-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2022 at 05:28 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ksebdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `consumer_code` int(11) NOT NULL,
  `month` int(30) NOT NULL,
  `year` int(11) NOT NULL,
  `bill` int(11) NOT NULL,
  `paid_status` varchar(30) NOT NULL,
  `bill_date` date NOT NULL,
  `total_units` int(11) NOT NULL,
  `duedate` date NOT NULL,
  `invoice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `consumer_code`, `month`, `year`, `bill`, `paid_status`, `bill_date`, `total_units`, `duedate`, `invoice`) VALUES
(35, 2, 11, 2022, 340, '0', '2022-11-11', 68, '2022-11-25', 55120),
(36, 3, 11, 2022, 480, '0', '2022-11-11', 96, '2022-11-25', 43092),
(37, 5, 11, 2022, 0, '0', '2022-11-11', 0, '2022-11-25', 71669),
(38, 10, 11, 2022, 0, '0', '2022-11-11', 0, '2022-11-25', 99153);

-- --------------------------------------------------------

--
-- Table structure for table `consumer`
--

CREATE TABLE `consumer` (
  `id` int(11) NOT NULL,
  `consumer_code` varchar(30) NOT NULL,
  `consumer_name` varchar(30) NOT NULL,
  `consumer_phone` bigint(20) NOT NULL,
  `consumer_email` varchar(30) NOT NULL,
  `consumer_adress` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `consumer`
--

INSERT INTO `consumer` (`id`, `consumer_code`, `consumer_name`, `consumer_phone`, `consumer_email`, `consumer_adress`) VALUES
(2, '2', 'vishal', 8113808202, 'vishal@gmail.com', ' thodupuzha'),
(3, '3', 'abil', 7678545643, 'abil@gmail.com', ' alapuzha'),
(5, '5', 'tom', 1234567890, 'tom@gmail.com', 'idukki'),
(10, '7', 'akash', 9876543210, 'akash@gmail.com', 'kaloor');

-- --------------------------------------------------------

--
-- Table structure for table `usages`
--

CREATE TABLE `usages` (
  `id` int(11) NOT NULL,
  `consumer_code` int(11) NOT NULL,
  `unit` int(11) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usages`
--

INSERT INTO `usages` (`id`, `consumer_code`, `unit`, `datetime`) VALUES
(1, 1, 5, '2022-11-10 10:18:21'),
(2, 1, 6, '2022-11-10 10:23:50'),
(3, 3, 10, '2022-10-03 09:24:22'),
(4, 3, 6, '2022-11-08 11:10:37'),
(5, 2, 4, '2022-11-10 07:24:30'),
(6, 1, 6, '2022-11-09 08:16:01'),
(7, 1, 3, '2022-11-08 12:26:01'),
(8, 1, 7, '2022-11-07 12:14:01'),
(9, 1, 6, '2022-10-06 12:28:53'),
(10, 1, 5, '2022-10-04 12:28:53'),
(11, 1, 10, '2022-10-05 12:29:34'),
(12, 1, 8, '2022-10-11 12:29:34'),
(13, 1, 6, '2022-10-04 09:30:34'),
(14, 1, 8, '2022-10-19 11:30:34'),
(15, 1, 9, '2022-10-15 11:30:34'),
(16, 1, 4, '2022-10-17 11:30:34'),
(17, 2, 6, '2022-10-11 12:18:05'),
(18, 2, 8, '2022-10-11 09:33:05'),
(19, 2, 7, '2022-10-04 12:33:05'),
(20, 2, 4, '2022-10-04 12:33:05'),
(21, 2, 6, '2022-11-11 12:33:05'),
(22, 2, 8, '2022-11-17 12:33:05'),
(23, 2, 9, '2022-11-13 09:33:05'),
(24, 2, 7, '2022-11-23 12:33:05'),
(25, 2, 4, '2022-11-10 10:33:05'),
(26, 2, 3, '2022-11-08 12:33:05'),
(27, 3, 3, '2022-11-16 12:39:56'),
(28, 3, 8, '2022-11-10 08:39:56'),
(29, 3, 5, '2022-11-14 12:39:56'),
(30, 3, 8, '2022-11-14 12:39:56'),
(31, 3, 6, '2022-11-16 12:39:56'),
(32, 3, 2, '2022-10-11 12:39:56'),
(33, 3, 9, '2022-10-18 12:39:56'),
(34, 3, 4, '2022-10-12 12:39:56'),
(35, 3, 5, '2022-11-10 07:39:56'),
(36, 3, 7, '2022-10-10 12:39:56'),
(37, 3, 4, '2022-11-10 12:27:56'),
(38, 3, 8, '2022-10-09 10:39:56'),
(39, 3, 2, '2022-11-15 10:44:09'),
(40, 3, 4, '2022-11-17 12:44:09'),
(41, 3, 1, '2022-11-16 09:45:31'),
(42, 3, 5, '2022-11-09 10:45:31'),
(43, 3, 5, '2022-11-23 10:47:28'),
(44, 3, 5, '2022-11-23 10:47:28'),
(45, 3, 6, '2022-11-23 10:47:28'),
(46, 3, 7, '2022-11-23 10:47:28'),
(47, 3, 7, '2022-11-23 10:47:28'),
(48, 3, 9, '2022-11-23 10:47:28'),
(49, 2, 6, '2022-10-18 12:49:27'),
(50, 2, 6, '2022-10-18 12:49:27'),
(51, 2, 7, '2022-10-18 12:49:27'),
(52, 2, 3, '2022-10-18 12:49:27'),
(53, 2, 8, '2022-10-18 12:49:27'),
(54, 2, 6, '2022-10-18 12:49:27'),
(55, 2, 7, '2022-10-18 12:49:27'),
(56, 2, 3, '2022-10-18 12:49:27'),
(57, 2, 8, '2022-10-18 12:49:27'),
(58, 2, 4, '2022-11-16 10:51:21'),
(59, 2, 4, '2022-11-16 10:51:21'),
(60, 2, 5, '2022-11-16 10:51:21'),
(61, 2, 6, '2022-11-16 10:51:21'),
(62, 2, 8, '2022-11-16 10:51:21'),
(63, 1, 2, '2022-11-11 16:04:15'),
(64, 1, 9, '2022-11-11 16:04:15'),
(65, 1, 7, '2022-11-11 16:04:15'),
(66, 1, 2, '2022-11-11 16:07:46'),
(67, 1, 9, '2022-11-11 16:07:46'),
(68, 1, 7, '2022-11-11 16:07:46'),
(69, 1, 2, '2022-11-11 16:09:18'),
(70, 1, 9, '2022-11-11 16:09:18'),
(71, 1, 7, '2022-11-11 16:09:18'),
(72, 1, 2, '2022-11-11 16:15:24'),
(73, 1, 9, '2022-11-11 16:15:24'),
(74, 1, 7, '2022-11-11 16:15:24'),
(75, 1, 2, '2022-11-11 16:20:39'),
(76, 1, 9, '2022-11-11 16:20:39'),
(77, 1, 7, '2022-11-11 16:20:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consumer`
--
ALTER TABLE `consumer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usages`
--
ALTER TABLE `usages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `consumer`
--
ALTER TABLE `consumer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `usages`
--
ALTER TABLE `usages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
