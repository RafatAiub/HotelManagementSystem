-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2020 at 03:08 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `ajaxtable`
--

CREATE TABLE `ajaxtable` (
  `id` int(255) NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ajaxtable`
--

INSERT INTO `ajaxtable` (`id`, `checkin`, `checkout`) VALUES
(1, '2020-09-15', '2020-09-16'),
(2, '2020-09-01', '2020-09-10'),
(3, '2020-09-23', '2020-09-25'),
(4, '2020-09-01', '2020-09-03');

-- --------------------------------------------------------

--
-- Table structure for table `booktable`
--

CREATE TABLE `booktable` (
  `id` int(90) NOT NULL,
  `room` varchar(100) NOT NULL,
  `bookdate` date NOT NULL,
  `checkout` date NOT NULL,
  `phone` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pay` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booktable`
--

INSERT INTO `booktable` (`id`, `room`, `bookdate`, `checkout`, `phone`, `email`, `pay`) VALUES
(1, 'Singleroom', '2020-09-02', '2020-09-03', 1715490262, 'faria@gmail.com', 'card'),
(2, 'double', '2020-10-08', '2020-11-05', 1704620011, 'faria@gmail.com', 'card'),
(3, 'hny', '2020-10-07', '2020-10-09', 1715490262, 'jakia@gmail.com', 'cash'),
(4, 'hny', '2020-10-07', '2020-10-09', 1715490262, 'jakia@gmail.com', 'cash'),
(5, 'hny', '2020-10-07', '2020-10-09', 1715490262, 'jakia@gmail.com', 'cash'),
(6, 'hny', '2020-10-07', '2020-10-09', 1715490262, 'jakia@gmail.com', 'cash'),
(7, 'hny', '2020-10-07', '2020-10-09', 1715490262, 'jakia@gmail.com', 'cash'),
(8, 'hny', '2020-10-07', '2020-10-09', 1715490262, 'jakia@gmail.com', 'cash'),
(9, 'hny', '2020-10-07', '2020-10-09', 1715490262, 'jakia@gmail.com', 'cash');

-- --------------------------------------------------------

--
-- Table structure for table `customer_registration`
--

CREATE TABLE `customer_registration` (
  `id` int(10) NOT NULL,
  `fullname` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_registration`
--

INSERT INTO `customer_registration` (`id`, `fullname`, `username`, `password`, `email`, `dob`, `phone`, `gender`, `city`) VALUES
(1, 'Rakibul Islam', 'rakib', '$2y$10$hzYBdx3.NqHIT9gwh3TCYufyY.2M4nOqih4JiCJVVo4RMIVkc8NUy', 'rakib@gmail.com', '1997-01-17', '1686715770', 'male', ''),
(2, 'Mr. Frank', 'frank', '$2y$10$G4nRNpzkYEwV1acsHVG99.KV4BKHF1yJcdO0bS/at5D3qkor5CT6y', 'frank@gmail.com', '1990-09-16', '17896324556', 'male', ''),
(3, 'Jhon Doe', 'doe', '$2y$10$cNXjxOmDhMjpT/D459pD7uNVHaKSwAPUEdkVu2ShH36WjnoIXErcm', 'doe@gmail.com', '1995-09-08', '0188888888', 'male', 'dhaka'),
(4, 'Admin', 'admin', '$2y$10$gIiu.Nh/34mjt2YNqtB4Ve4wMTeG2BJhToUipxbeQihf30HxInWf2', 'admin@gmail.com', '1990-09-22', '1852469872', 'male', 'dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(40) NOT NULL,
  `method` varchar(50) NOT NULL,
  `room` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` int(20) NOT NULL,
  `code` int(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `method`, `room`, `name`, `number`, `code`, `date`) VALUES
(1, 'cash', 'single', 'faria', 9876, 8976, '2020-09-30'),
(2, 'cash', 'single', 'faria', 9876, 8976, '2020-09-30'),
(3, 'cash', 'hny', 'khjgh', 9567, 2345, '2020-10-08');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `name`, `comment`) VALUES
(1, 'Jhon', 'Awesome service');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ajaxtable`
--
ALTER TABLE `ajaxtable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booktable`
--
ALTER TABLE `booktable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_registration`
--
ALTER TABLE `customer_registration`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ajaxtable`
--
ALTER TABLE `ajaxtable`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `booktable`
--
ALTER TABLE `booktable`
  MODIFY `id` int(90) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customer_registration`
--
ALTER TABLE `customer_registration`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
