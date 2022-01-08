-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 26, 2021 at 08:45 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_ajax`
--

-- --------------------------------------------------------

--
-- Table structure for table `checkbox_lang`
--

CREATE TABLE `checkbox_lang` (
  `id` int(11) NOT NULL,
  `lang` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `checkbox_lang`
--

INSERT INTO `checkbox_lang` (`id`, `lang`, `user_id`) VALUES
(33, 'english,urdu', 0),
(34, 'english,urdu', 29),
(35, 'english', 30),
(36, 'hindi', 30),
(37, 'bangali', 30),
(38, 'english', 35),
(39, 'urdu', 35),
(40, 'hindi', 35);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city_id` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city_id`, `city`, `country_id`) VALUES
(1, 'karachi', 1),
(2, 'lahore', 1),
(3, 'islamabad', 1),
(4, 'dhaka', 2),
(5, 'mumbai', 3),
(6, 'kalkutta', 3),
(7, 'kabul', 4);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country`) VALUES
(1, 'pakistan'),
(2, 'bangladash'),
(3, 'india'),
(4, 'afganistan');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `img_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`img_id`, `image`) VALUES
(10, 'Abstract Graffiti Wallpaper 1280x1024 Abstract Graffiti.jpg'),
(11, 'abandoned-agriculture-barn-861450.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `country` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `rating_no` varchar(255) NOT NULL,
  `rating_avg` varchar(255) NOT NULL,
  `signup_date` date NOT NULL DEFAULT current_timestamp(),
  `lik` int(255) DEFAULT 0,
  `dislike` int(255) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `email`, `age`, `status`, `address`, `country`, `city`, `rating_no`, `rating_avg`, `signup_date`, `lik`, `dislike`) VALUES
(46, 'admin', '1234', 'admin@mail.com', '24', 'pending', 'karachi, pakistan', 1, 1, '', '', '2020-12-01', 5, 0),
(47, 'user', '1234', 'user@mail.com', '20', 'approved', 'dhaka, bangladash', 2, 2, '1', '2', '2020-12-02', 2, 2),
(48, 'user2', '1234', 'user2@mail.com', '18', 'approved', 'lahore, pakistan', 1, 2, '3', '11', '2020-12-02', 1, 3),
(49, 'user3', '1234', 'user3@mail.com', '25', 'pending', 'dhaka, bangladash', 2, 2, '1', '3', '2020-12-03', 2, 2),
(50, 'user4', '1234', 'user4@mail.com', '30', 'approved', 'islamabad, pakistan', 1, 3, '', '', '2020-12-03', 2, 2),
(51, 'user5', '1234', 'user5@mail.com', '21', 'approved', 'mumbai, india', 3, 5, '3', '3', '2020-12-03', 2, 3),
(52, 'user6', '1234', 'user6@mail.com', '25', 'pending', 'kulkatta, india', 3, 6, '1', '5', '2020-12-03', 3, 0),
(53, 'user7', '1234', 'user7@mail.com', '20', 'approved', 'mumbai, india', 3, 5, '', '', '2020-12-05', 0, 0),
(54, 'user8', '1234', 'user8@mail.com', '22', 'approved', 'kabul, afghanistan', 4, 7, '', '', '2020-12-05', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `father` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `lang` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`id`, `user_id`, `father`, `dob`, `gender`, `lang`, `about`, `image`) VALUES
(8, 29, 'father', '2020-11-19', 'male', 'urdu,hindi', 'hi', '1008202605.png'),
(9, 30, 'sfsfsd', '2020-11-03', 'female', 'english,urdu', 'hi', '1555478647.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `checkbox_lang`
--
ALTER TABLE `checkbox_lang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`img_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `checkbox_lang`
--
ALTER TABLE `checkbox_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
