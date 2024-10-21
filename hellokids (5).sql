-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2024 at 10:53 AM
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
-- Database: `hellokids`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(225) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `email`, `name`, `price`, `quantity`, `brand`, `image`, `Username`) VALUES
(10, 'sam@gmail.com', 'Baby Care Kitt', 1000, 1, 'johnson', 'babyGroomingkit.png', 'sam'),
(11, 'sam@gmail.com', 'Himalaya Baby Shampoo', 500, 1, 'Himalaya', 'himalaya.PNG', 'sam'),
(13, 'sam@gmail.com', 'baby towel', 100000, 1, 'abc', 'hellokids-removebg-preview.png', 'sam');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(225) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` int(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `method` varchar(255) NOT NULL,
  `totalproduct` varchar(255) NOT NULL,
  `totalprice` int(255) NOT NULL,
  `placedon` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `username`, `email`, `address`, `phone`, `city`, `method`, `totalproduct`, `totalprice`, `placedon`) VALUES
(3, 'sam', 'sam@gmail.com', 'jfgdfghfdg', 2147483647, 'kjdfbgdfkg', 'cash on delivery', ', Baby Care Kitt (2) ', 2000, '0000-00-00 00:00:00.000000'),
(4, 'sam', 'ram@gmail.com', 'jfgdfgjfvhf', 2147483647, 'kjdfbgdfkg', 'cash on delivery', ', Himalaya Baby Shampoo (1) ', 500, '0000-00-00 00:00:00.000000'),
(5, 'sam', '', '', 0, '', 'cash on delivery', ', Baby Care Kitt (2) ', 2000, '0000-00-00 00:00:00.000000'),
(6, 'sam', 'sujan@gmail.com', 'skjdbcdsk', 2147483647, 'sjdbcdshb', 'cash on delivery', ', Baby Care Kitt (1) ', 1000, '0000-00-00 00:00:00.000000'),
(7, 'sam', 'sam@gmail.com', 'jfgdfghfdg', 9847853, 'kjdfbgdfkg', 'cash on delivery', ', Baby Care Kitt (3) ', 3000, '0000-00-00 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(11) NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `categories` varchar(225) DEFAULT NULL,
  `details` varchar(500) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(225) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `brand` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `name`, `categories`, `details`, `price`, `image`, `stock`, `brand`) VALUES
(10, 'Baby Care Kitt', 'Baby Grooming', 'A baby grooming kit is a kit that includes a bunch of supplies you can use for your baby. The supplies vary from kit to kit, but typically you can expect them to include some of the following: 1. Nail clippers. 2. Nasal aspir', 1000, 'babyGroomingkit.png', 11, 'johnson'),
(11, 'Himalaya Baby Shampoo', 'Baby shampoo And Oil', 'Himalaya shampoo is in essence a natural shampoo containing no harsh chemicals. It boasts anti-inflammatory and soothing properties to protect and care for your baby\'s tender scalp. All in all, it is an essential baby care product that helps you get rid of dirt and other harmful infectious particles from your child\'s scalp, without damaging it.\r\n', 500, 'himalaya.PNG', 15, 'Himalaya'),
(13, 'baby towel', 'Baby Grooming', 'jwehbfherfiuerhifuhroghru', 100000, 'hellokids-removebg-preview.png', 200, 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `registered_user`
--

CREATE TABLE `registered_user` (
  `Email` varchar(225) NOT NULL,
  `Full_name` varchar(225) DEFAULT NULL,
  `Username` varchar(225) DEFAULT NULL,
  `Password` varchar(225) DEFAULT NULL,
  `UserType` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registered_user`
--

INSERT INTO `registered_user` (`Email`, `Full_name`, `Username`, `Password`, `UserType`) VALUES
('ram@gmail.com', 'ram', 'ram', '$2y$10$/jX.WGBHz1XEESjXsLk6juRlxOIXeivlVqQzCHQhVuaaF3mkMWU2S', 'User'),
('sam@gmail.com', 'Sam', 'sam', '$2y$10$D/ndWc0IGXsOhg2y/YMtOug7SJ3Rdw.E81Nsa45xa2sTy5ptre8Pi', 'User'),
('sujita@gmail.com', 'Sujita', 'Sujita', '$2y$10$K.H/ap.dVhs.wrt3N6EmCOi8GGW1J9nDMClid8p3R.PH6MMW/qfGG', 'Admin'),
('sujitaa@gmail.com', 'sujitaa', 'sujitaa', '$2y$10$DSUprMs.cCDLyQX6rFAc5ebf9FUHv6NGEalm9WSt4bd5WitHrZ/SO', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `registered_user`
--
ALTER TABLE `registered_user`
  ADD PRIMARY KEY (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
