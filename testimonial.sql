-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 28, 2019 at 03:32 PM
-- Server version: 5.7.27-0ubuntu0.18.04.1
-- PHP Version: 7.1.30-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testimonial`
--

-- --------------------------------------------------------

--
-- Table structure for table `flora_app`
--

CREATE TABLE `flora_app` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flora_app`
--

INSERT INTO `flora_app` (`id`, `name`, `image`, `category`, `price`) VALUES
(1, 'S-Earle', '1561638286.png', 'romantic', '25,000'),
(2, 'N-Simone', '1561638970.jpg', 'romantic', '24,500'),
(3, 'A-Pavlova', '1561639021.gif', 'romantic', '28,000'),
(4, 'N-Portman', '1561639314.jpg', 'minimal', '23,999'),
(5, 'Markle-Square', '1561639444.jpg', 'minimal', '21,500'),
(6, 'M-North', '1561639537.jpg', 'minimal', '23,000'),
(7, 'Kusama-Square', '1561639575.jpg', 'bold', '24,500'),
(8, 'J-Didion', '1561639679.jpg', 'bold', '20,999'),
(9, 'G-O-Keffe', '1561639726.jpg', 'bold', '27,000'),
(10, 'B-Hepworth', '1561639768.jpg', 'classic', '30,000'),
(11, 'B-Holiday', '1561639801.gif', 'classic', '31,000'),
(12, 'B-Potter', '1561639945.jpg', 'classic', '32,000'),
(13, 'S-Earle', '1561640012.png', 'classic', '25,000'),
(14, 'B-Holiday', '1561640038.gif', 'romantic', '24,500'),
(15, 'G-O-Keffe', '1561640063.jpg', 'minimal', '25,000'),
(16, 'N-Portman', '1561640100.jpg', 'bold', '25,000');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(233) NOT NULL,
  `image` varchar(233) NOT NULL,
  `status` varchar(233) NOT NULL,
  `store_name` varchar(233) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `image`, `status`, `store_name`) VALUES
(32, 'If you follow the beaten path, all you will discover is that everyone has been there before you.', '1559975153.jpg', 'on', 'deepak-1234.myshopify.com'),
(37, 'Genius might be the ability to say a profound thing in a simple way.', '1559978100.jpg', 'on', 'deepak-1234.myshopify.com'),
(38, 'b', '1559990811.jpg', 'on', 'deepak-1234.myshopify.com'),
(40, 'aa', '1560929999.png', 'on', 'shashank-123.myshopify.com'),
(44, 'adfaf', '1561008922.png', 'on', 'deepak-1234.myshopify.com'),
(45, 'b', '1561377199.png', 'on', 'store-test-1-2.myshopify.com'),
(47, 'adfaf', '1561377603.png', 'on', 'store-test-1-2.myshopify.com'),
(48, 'qqqqqqq', '1561465211.png', 'on', 'store-test-1-2.myshopify.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flora_app`
--
ALTER TABLE `flora_app`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `flora_app`
--
ALTER TABLE `flora_app`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
