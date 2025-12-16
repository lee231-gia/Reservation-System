-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2025 at 04:38 AM
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
  `roomid` int(11) NOT NULL,
  `createdby` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `cname`, `mobile`, `nationality`, `gender`, `dob`, `idproof`, `address`, `checkin`, `checkout`, `chekout`, `roomid`, `createdby`) VALUES
(1, 'df', 345, '', 'Male', '', '', '242gse', '2025-12-15 05:51:19.998093', 'Monday, December 15, 2025', 'YES', 12, NULL),
(2, 'asdf', 123, '', 'Male', '', '', 'da', '2025-11-30 03:01:31.686000', 'Sunday, November 30, 2025', 'YES', 13, NULL),
(3, 'd', 2, '', 'Male', '', '', 'd', '2025-12-15 23:36:30.485221', NULL, 'NO', 14, NULL),
(4, 'sdf', 123, '', 'Female', '', '', 'fae', '2025-11-30 03:01:31.686000', NULL, 'NO', 16, NULL),
(5, 'lkjh', 1234, '', 'Female', '', '', 'dwa', '2025-11-30 03:01:31.686000', NULL, 'NO', 19, NULL),
(6, 'sxaa', 213, '', 'Female', '', '', 'casdz', '2025-11-30 03:01:31.686000', NULL, 'NO', 17, NULL),
(7, 'qwe', 123, '', 'Male', '', '', 'qewe', '2025-11-30 03:01:31.686000', NULL, 'NO', 21, 'ly2955'),
(8, 'sdfghjkl;', 12345, '', 'Female', '', '', 'asdfghjklkjhgf', '2025-11-30 03:01:31.686000', NULL, 'NO', 20, 'ly2955'),
(9, 'lyzel', 9876573883, '', 'Female', '', '', 'Bonifacio, Mis. Occ.', '2025-10-05 03:01:31', 'Sunday, November 30, 2025', 'YES', 22, 'ly2955');

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
(12, '1', 'Ac', 'Single', 1000, 'YES'),
(13, '2', 'Ac', 'Double', 2313, 'NO'),
(14, '3', 'Non-Ac', 'Single', 3223, 'YES'),
(15, '4', 'Non-Ac', 'Double', 12312, 'NO'),
(16, '5', 'Ac', 'Single', 1234, 'YES'),
(17, '6', 'Ac', 'Double', 453, 'YES'),
(18, '7', 'Non-Ac', 'Double', 4634, 'NO'),
(19, '8', 'Ac', 'Single', 1212, 'YES'),
(20, '9', 'Ac', 'Double', 123, 'YES'),
(21, '10', 'Non-Ac', 'Triple', 213, 'YES'),
(22, '11', 'Ac', 'Single', 111, 'NO');

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
(2, 'Admin 1', 91234234568, 'Male', 'admin1@hotel.com', 'admin', '$2a$11$5n9DTLN8uVWaZvdw8Q8fOuUAvXHTZwFGXSiIW8xoSkBmC0K.W/sSi'),
(3, 'Admin Staff', 9123456789, 'Other', 'admin@hotel.com', 'admin', '$2a$11$WOyYAozbnVWcrnMj0IIxoOVAh0Hl8rxjfsP746CkKQtzJ1ezYXoDe'),
(4, 'admin admin', 9029298272, 'Female ', 'admin@hotel.com', 'admin1119', '$2a$11$JyZ9jUwoUVXN07TY.qLvluI7Yy5nARjpZp8bmUfavR.HbUahAs8O6');

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
(1, 'ly', 'zel', 'ly2955', '$2a$11$/Cy1tKvgNXuumgkhxZuClOcJrmp7SApBz2e1RS8VhYFU1kR6po.4.');

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
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `roomid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
