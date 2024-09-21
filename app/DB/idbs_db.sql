-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Sep 21, 2024 at 02:06 PM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `idbs_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `id` int(11) NOT NULL,
  `donatedBy` varchar(20) NOT NULL,
  `donatedTo` varchar(20) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`id`, `donatedBy`, `donatedTo`, `amount`, `remark`, `createdAt`) VALUES
(20, '5', '69', '60000', '', '2024-05-02 12:45:15');

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

CREATE TABLE `donors` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `about` varchar(255) DEFAULT NULL,
  `role` int(10) NOT NULL DEFAULT '1' COMMENT '0=admin, 1=donor',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donors`
--

INSERT INTO `donors` (`id`, `name`, `phone`, `email`, `password`, `occupation`, `about`, `role`, `createdAt`) VALUES
(4, 'Sys Admin', '08011112220', 'admin@email.com', 'admin', 'Department Administrator', 'SWE Sys Admin', 0, '2024-02-20 04:07:12'),
(5, 'Kano State Gov', '09022334455', 'kano@email.com', 'kano', 'Politics', NULL, 1, '2024-05-31 07:07:19');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int(20) NOT NULL,
  `requestID` varchar(100) NOT NULL,
  `studentID` varchar(20) NOT NULL,
  `studentNote` varchar(500) NOT NULL,
  `remarkNote` varchar(500) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `requestID`, `studentID`, `studentNote`, `remarkNote`, `created_at`, `updated_at`) VALUES
(9, 'R5X79C', '69', 'I seek for help to cover my fees', 'Best of luck! Your application has been approved.', '2024-05-02 12:06:12', '2024-05-02 11:15:55'),
(10, 'HHWBTZ', '68', 'I need help to cover my school fees, please.', NULL, '2024-05-31 06:03:42', NULL),
(11, 'UXRMZB', '67', 'NA', 'Best of luck in your endeavour', '2024-05-31 06:04:32', '2024-05-31 06:05:18'),
(12, 'THPD0J', '66', 'I have no means to pay my school fees. Please help me so others will support my education. Thank you.', 'Your CGPA didn’t meet the minimum requirement. Apologies and we hope you could secure funds using other medium.', '2024-05-31 06:05:58', '2024-05-31 05:07:49');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `state` varchar(20) NOT NULL,
  `lga` varchar(50) NOT NULL,
  `regno` varchar(50) NOT NULL,
  `level` varchar(10) NOT NULL,
  `cgpa` varchar(5) NOT NULL,
  `disability` varchar(100) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `phone`, `email`, `gender`, `state`, `lga`, `regno`, `level`, `cgpa`, `disability`, `createdAt`, `status`) VALUES
(66, 'Barira Saleh', '09011223344', 'test@abc029', 'female', 'Kano', 'Ungogo', 'CST/19/SWE/00529', '200', '2.2', 'Physical Disability', '2024-05-02 11:55:10', 'Rejected'),
(67, 'Beaulah Reinger', '08022334455', 'test@abc007', 'female', 'Kano', 'Bebeji', 'CST/19/SWE/00507', '400', '3.8', 'Healthy', '2024-05-02 11:55:10', 'Approved'),
(68, 'Craig Douglas', '07033445566', 'test@abc018', 'female', 'Kaduna', 'Zaria', 'CST/19/SWE/00518', '300', '4.5', 'Healthy', '2024-05-02 11:55:10', 'Pending'),
(69, 'Jamilu Salisu', '08028752833', 'jamilusalis@gmail.com', 'male', 'Kano', 'Bebeji', 'CST/19/SWE/00409', '400', '3.8', 'Hearing Impairment', '2024-05-02 11:58:12', 'Approved'),
(71, 'Salisu Jamila', '08011223344', 'jamilasalis@gmail.com', 'female', 'Adamawa', 'Song', 'CST/20/SWE/500', '200', '4.8', 'Healthy', '2024-05-31 07:01:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_config`
--

CREATE TABLE `system_config` (
  `id` int(11) NOT NULL,
  `faculty` varchar(200) NOT NULL,
  `department` varchar(250) NOT NULL,
  `fees_amount` varchar(50) NOT NULL,
  `application_deadline` date NOT NULL,
  `bank_name` varchar(50) NOT NULL,
  `account_number` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_config`
--

INSERT INTO `system_config` (`id`, `faculty`, `department`, `fees_amount`, `application_deadline`, `bank_name`, `account_number`) VALUES
(1, 'Faculty of Computing', 'Software Engineering', '100,000', '2024-05-31', 'Zenith Bank', '0005556677');

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id` int(11) NOT NULL,
  `donatedBy` int(20) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Department Wallet';

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`id`, `donatedBy`, `amount`, `remark`, `createdAt`) VALUES
(10, 4, '30000', '', '2024-05-02 12:35:49'),
(11, 4, '50000', '', '2024-05-31 07:02:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donors`
--
ALTER TABLE `donors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_config`
--
ALTER TABLE `system_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `donors`
--
ALTER TABLE `donors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `system_config`
--
ALTER TABLE `system_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
