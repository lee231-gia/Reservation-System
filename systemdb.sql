-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2025 at 12:08 AM
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
-- Database: `systemdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cid` int(11) NOT NULL,
  `cname` varchar(250) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `nationality` varchar(250) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `idproof` varchar(250) NOT NULL,
  `address` varchar(350) NOT NULL,
  `checkin` varchar(250) NOT NULL,
  `checkout` varchar(250) DEFAULT NULL,
  `chekout` varchar(250) NOT NULL DEFAULT 'NO',
  `roomid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `cname`, `mobile`, `nationality`, `gender`, `dob`, `idproof`, `address`, `checkin`, `checkout`, `chekout`, `roomid`) VALUES
(1, 'LEE MU JIN', 9101111010, 'Korean', 'Male', 'Saturday, December 30, 2000', '101-101-101', 'Goyang, Gyeonggi Province, South Korea', 'Sunday, November 30, 2025', NULL, 'NO', 8),
(2, 'Ku Chang-mo', 9000000000, 'Korean', 'Male', '1994-05-31 03:01:31', '100-100-920', 'Seoul, South Korea', '2025-11-30 03:01:31.686000', NULL, 'NO', 10),
(3, 'Ari Staprans Leff', 9889899999, 'American', 'Male', '1994-08-08 03:01:31', '101-122-121', 'San Francisco, California ', '2025-11-30 03:01:31.686000', NULL, 'NO', 5),
(4, 'Lyzel Mae Talisic', 90909990000, 'Filipino', 'Female', '2006-10-05 03:01:31', '090-888-777', 'Bonifacio, Mis. Occ.', '2025-11-30 03:01:31.686000', 'Sunday, November 30, 2025', 'YES', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `roomid` int(11) NOT NULL,
  `roomNo` varchar(250) NOT NULL,
  `roomType` varchar(250) NOT NULL,
  `bed` varchar(250) NOT NULL,
  `price` bigint(20) NOT NULL,
  `booked` varchar(50) DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`roomid`, `roomNo`, `roomType`, `bed`, `price`, `booked`) VALUES
(1, '101', 'Ac', 'Single', 1000, 'NO'),
(2, '102', 'Ac', 'Single', 1000, 'NO'),
(3, '103', 'Non-Ac', 'Double', 1500, 'NO'),
(4, '104', 'Non-Ac', 'Triple', 2000, 'NO'),
(5, '105', 'Ac', 'Double', 2100, 'YES'),
(6, '106', 'Ac', 'Single', 500, 'NO'),
(7, '107', 'Ac', 'Triple', 1900, 'NO'),
(8, '108', 'Non-Ac', 'Double', 2050, 'NO'),
(9, '109', 'Non-Ac', 'Single', 450, 'NO'),
(10, '110', 'Ac', 'Triple', 3500, 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `sid` int(11) NOT NULL,
  `sname` varchar(250) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `emailid` varchar(120) NOT NULL,
  `username` varchar(150) NOT NULL,
  `pass` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`sid`, `sname`, `mobile`, `gender`, `emailid`, `username`, `pass`) VALUES
(5, 'asfd', 2345, 'Female', 'asdfgh', 'sdfghj', 'sdfgh'),
(7, '1234567890-PLKJNBVCDSWERTYHJ', 1234567890, 'Female', '123456IKJHGFDSA', '1234567890', '1234567UIK,MNBVCXSDFG'),
(8, 'WQRQ', 213, 'Male', 'QWRQW', 'WE', 'WRQR');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`) VALUES
(1, 'lyzel', 'mae', 'lyzel', '11111'),
(2, 'sdf', 'sdfg', 'sdf', '111');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `roomid` (`roomid`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`roomid`),
  ADD UNIQUE KEY `roomNo` (`roomNo`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `roomid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`roomid`) REFERENCES `rooms` (`roomid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
