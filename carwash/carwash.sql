-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3309
-- Generation Time: Dec 31, 2022 at 05:43 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carwash`
--

-- --------------------------------------------------------

--
-- Table structure for table `addplaces`
--

CREATE TABLE `addplaces` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `zip` int(11) DEFAULT NULL,
  `contactNumber` varchar(20) DEFAULT NULL,
  `addServices` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addplaces`
--

INSERT INTO `addplaces` (`id`, `name`, `email`, `address`, `city`, `state`, `zip`, `contactNumber`, `addServices`) VALUES
(1, 'GLowing Washing Center', 'glowingwascenter@gmail.com', 'Near Main road Sausar', 'Sausar', 'Madhya Pradesh', 480106, '7470538276', 'We provide a quality service to our customers.'),
(2, 'Car Washing Center', 'carwashcenter@gmail.com', 'Behind Of Railway Station Sausar', 'Sausar', 'Madhya Pradesh', 480106, '9617617761', 'Along with washing we provide greasing and oil changing services.'),
(3, 'Fancy Washing Center', 'fancywashcenter@gmail.com', ' Shanti Nagar Nagpur ', 'Nagpur', 'Maharashtra', 423435, '9617617761', 'Along with washing we provide greasing and oil changing services.'),
(4, 'Wonderful Washing Center', 'fancywashcenter@gmail.com', ' Shanti Nagar Nagpur ', 'Nagpur', 'Maharashtra', 423435, '9617617761', 'Along with washing we provide greasing and oil changing services.'),
(5, 'Decorative Washing Center', 'decorativewashcenter@gmail.com', '  Near Yashwant Statidum Nagpur ', 'Nagpur', 'Maharashtra', 423432, '9812345687', '	\r\nWe provide a quality service to our customers.'),
(6, 'Thunderbird Car Wash', 'thunderbirdcarwash@gmail.com', 'Shankar Rao Lohane Marg, Mukund Nagar, Pune ', 'Pune', 'Maharashtra', 345323, '9630561555', 'We at Pune provide a quality service.');

-- --------------------------------------------------------

--
-- Table structure for table `adminsignin`
--

CREATE TABLE `adminsignin` (
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminsignin`
--

INSERT INTO `adminsignin` (`name`, `email`, `password`) VALUES
('Rushika Kalambe', 'kalamberushika@gmail.com', 'Rushika@1'),
('Prajwal Kale', 'prajwalkale2709@gmail.com', 'Prajwal@1');

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`id`, `name`, `email`, `password`) VALUES
(1, 'Prajwal Kale', 'prajwalkale2709@gmail.com', 'Prajwal21'),
(2, 'Rushika Kalambe', 'kalamberushika@gmail.com', 'Rushika@1'),
(3, 'New Project', 'newproject@gmail.com', 'Newproject@1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addplaces`
--
ALTER TABLE `addplaces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminsignin`
--
ALTER TABLE `adminsignin`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addplaces`
--
ALTER TABLE `addplaces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `userdetails`
--
ALTER TABLE `userdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
