-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2020 at 11:01 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopee`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_name` varchar(100),
  `item_price` varchar(50),
  `item_image` varchar(255),
  `qty` int(15),
  `total_price` varchar(100)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `item_id` int(11) NOT NULL,
  `item_brand` varchar(200) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` double(10,2) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_register` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`item_id`, `item_brand`, `item_name`, `item_price`, `item_image`, `item_register`) VALUES
(1, 'Apple', 'Apple iPhone 15 Pro', 200.00, './assets/products/1016.png', '2024-07-08 11:08:57'), -- NOW()
(2, 'Apple', 'Apple iPhone 13 mini', 150.00, './assets/products/1015.png', '2024-07-08 11:08:57'),
(3, 'Apple', 'Apple iPhone 8', 150.00, './assets/products/1014.png', '2024-07-08 11:08:57'),
(4, 'Apple', 'Apple iPhone 13', 150.00, './assets/products/1013.png', '2024-07-08 11:08:57'),
(5, 'Apple', 'Apple iPhone XS Max', 150.00, './assets/products/1012.png', '2024-07-08 11:08:57'),
(6, 'Apple', 'Apple iPhone 12', 200.00, './assets/products/1004.png', '2024-07-08 11:08:57'),
(7, 'Xiaomi', 'Redmi 13 Pro Plus', 150.00, './assets/products/1003.png', '2024-07-08 11:08:57'),
(8, 'Xiaomi', 'Xiaomi Mi 10T Pro', 150.00, './assets/products/1022.png', '2024-07-08 11:08:57'),
(9, 'Xiaomi', 'Xiaomi 12 Pro', 200.00, './assets/products/1011.png', '2024-07-08 11:08:57'),
(10, 'Samsung', 'Samsung Galaxy S21+', 200.00, './assets/products/1007.png', '2024-07-08 11:08:57'),
(11, 'Pixel', 'Google Pixel 5', 150.00, './assets/products/1005.png', '2024-07-08 11:08:57'),
(12, 'Pixel', 'Google Pixel 5a', 150.00, './assets/products/1020.png', '2024-07-08 11:08:57'),
(13, 'Pixel', 'Google Pixel 6a', 150.00, './assets/products/1021.png', '2024-07-08 11:08:57'),
(14, 'Pixel', 'Google Pixel 3a', 130.00, './assets/products/1024.png', '2024-07-08 11:08:57'),
(15, 'OnePlus', 'OnePlus 12', 150.00, './assets/products/1023.png', '2024-07-08 11:08:57'),
(16, 'OnePlus', 'OnePlus Nord 2', 130.00, './assets/products/1017.png', '2024-07-08 11:08:57'),
(17, 'OnePlus', 'OnePlus 10 Pro', 130.00, './assets/products/1018.png', '2024-07-08 11:08:57'),
(18, 'OnePlus', 'OnePlus 8 Pro', 200.00, './assets/products/1019.png', '2024-07-08 11:08:57'),
(19, 'Motorala', 'Motorala Moto G Stylus', 130.00, './assets/products/1010.png', '2024-07-08 11:08:57'),
(20, 'Motorala', 'Motorala Moto G Fast', 130.00, './assets/products/1009.png', '2024-07-08 11:08:57'),-- ------------------------------------------------------
(21, 'Realme', 'Realme 10', 130.00, './assets/products/1008.png', '2024-07-08 11:08:57');-- ------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `register_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `register_date`) VALUES
(1, 'Saikat', 'Nath', '2024-07-08 13:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
