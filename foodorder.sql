-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2021 at 10:07 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodorder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Subject` varchar(250) NOT NULL,
  `Message` varchar(250) NOT NULL,
  `contact_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Name`, `Email`, `Mobile`, `Subject`, `Message`, `contact_id`) VALUES
('Azrul', 'assa@gmail.com', '122112', 'SDW', 'Hello', 6);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('Asad', 'Asad', 'asad@gmail.com', '112', 'Kuantan,Pahang', '123');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
CREATE TABLE `food` (
  `F_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` float NOT NULL,
  `description` varchar(200) NOT NULL,
  `R_ID` int(30) NOT NULL,
  `images_path` varchar(200) NOT NULL,
  `options` varchar(10) NOT NULL DEFAULT 'ENABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`F_ID`, `name`, `price`, `description`, `R_ID`, `images_path`, `options`) VALUES
(58, 'Nasi Lemak', 4, 'Malaysian coconut milk rice, served with sambal, fried crispy anchovies, toasted peanuts and cucumber.', 1, 'images/nasilemak.jpg', 'ENABLE'),
(59, 'Mee Goreng Mamak', 5, 'Yellow noodles. Beef or chicken. Shrimp. Soy sauce, veggies and eggs. A bit of chili tossed in for an irresistible jolt.', 2, 'images/meegorengmamak.jpg', 'ENABLE'),
(60, 'Oreo Cheesecake', 7, 'Oreo Cheesecake is thick, creamy and filled with cookies and cream', 3, 'images/oreocheesecake.jpg', 'ENABLE'),
(61, 'Ais Kacang', 4, 'A dessert that looks like a mountain of colourful shaved ice because that is exactly what it is.', 1, 'images/aiskacang.jpg', 'ENABLE'),
(62, 'Chicken Chop', 7, 'Chicken chop is a dish that is prepared with boneless chicken meat.', 2, 'images/chickenchop.jpg', 'ENABLE'),
(63, 'Char Kuay Teow', 4, 'The dish includes wide rice noodles which are stir fried on high heat with shrimp, bean sprouts, chives, and often an egg.', 3, 'images/charkoayteow.jpg', 'ENABLE'),
(65, 'Coffee', 3, 'A brewed drink prepared from roasted coffee beans', 4, 'images/Coffeee.jpg', 'DISABLE'),
(66, 'Teh Tarik', 2, 'A popular hot milk tea beverage.', 4, 'images/Teh_Tarik.jpg', 'DISABLE'),
(68, 'Oreo Cheesecake', 7, 'Oreo Cheesecake is thick, creamy and filled with cookies and cream', 6, 'images/oreocheesecake.jpg', 'DISABLE'),
(69, 'Coffee', 3, 'A brewed drink prepared from roasted coffee beans', 2, 'images/Coffeee.jpg', 'ENABLE'),
(70, 'Teh Tarik', 2, 'A popular hot milk tea beverage.', 2, 'images/Teh_Tarik.jpg', 'ENABLE'),
(71, 'Chicken Briyani', 9, 'Chicken briyani is made with basmati rice and briyani \r\nessentials like spices, herbs, yogurt and onions.', 2, 'images/chickenbriyani.webp', 'ENABLE'),
(72, 'Hainanese Chicken Rice', 5, 'Hainanese chicken rice is a dish of poached chicken and seasoned rice, served with chilli sauce and usually with cucumber garnishes', 2, 'images/hainanese-chicken-rice.jpg', 'ENABLE'),
(73, 'Karipap', 1, 'The crispy pastry is stuffed with a variety of savoury fillings such as potatoes, sardine or a combination of curry potatoes and minced meat', 2, 'images/karipap.jpg', 'ENABLE'),
(74, 'Thosai', 2, 'A thin pancake or crepe, originating from South India, made from a fermented batter predominantly consisting of lentils and rice.', 2, 'images/thosai.jpg', 'DISABLE'),
(75, 'French Fries', 3, 'French fries are batonnet or allumette-cut deep-fried potatoes.', 2, 'frenchfries.jpg', 'DISABLE'),
(76, 'Karipap', 1, 'The crispy pastry is stuffed with a variety of savoury fillings such as potatoes, sardine or a combination of curry potatoes and minced meat', 2, 'images/karipap.jpg', 'DISABLE'),
(77, 'Thosai', 2, 'A thin pancake or crepe, originating from South India, made from a fermented batter predominantly consisting of lentils and rice.', 2, 'images/thosai.jpg', 'ENABLE'),
(78, 'French Fries', 3, 'French fries are batonnet or allumette-cut deep-fried potatoes.', 2, 'images/frenchfries.jpg', 'ENABLE'),
(79, 'Roti Canai', 1, 'An Indian-inspired flatbread, roti canai is made with flour, butter and water, though some will toss condensed milk in to sweeten it up.', 2, 'images/roticanai.jpg', 'ENABLE'),
(80, 'Roti Telur', 2, 'A pancake made with egg', 4, 'images/download.jpg', 'DISABLE'),
(81, 'Roti Telur', 2, 'A pancake made with egg', 4, 'images/download.jpg', 'ENABLE');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('asyraf', 'Asyraf', 'asyraf@gmail.com', '0196678412', 'Selangor', '123'),
('azrul', 'Azrul', 'azrul@gmail.com', '0132486875', 'Penang', '123'),
('moga', 'Moganesan', 'aditi@gmail.com', '0124486875', 'Kedah', '123'),
('naufal', 'Naufal', 'naufal@gmail.com', '0167456875', 'Pahang', '123'),
('pravin', 'Pravin', 'pravin@gmail.com', '0102254648', 'Sabah', '123');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `order_ID` int(30) NOT NULL,
  `F_ID` int(30) NOT NULL,
  `foodname` varchar(30) NOT NULL,
  `price` float NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `R_ID` int(30) NOT NULL,
  `total_Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `F_ID`, `foodname`, `price`, `quantity`, `order_date`, `username`, `R_ID`, `total_Price`) VALUES
(167, 59, 'Mee Goreng Mamak', 5, 1, '2021-05-30', 'Asad', 2, 10),
(168, 59, 'Mee Goreng Mamak', 5, 1, '2021-05-30', 'Asad', 2, 10),
(169, 59, 'Mee Goreng Mamak', 5, 1, '2021-05-30', 'Asad', 2, 10),
(170, 59, 'Mee Goreng Mamak', 5, 1, '2021-05-30', 'Asad', 2, 10),
(171, 59, 'Mee Goreng Mamak', 5, 1, '2021-06-06', 'Asad', 2, 10);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `cc1` int(4) NOT NULL,
  `cc2` int(4) NOT NULL,
  `cc3` int(4) NOT NULL,
  `cc4` int(4) NOT NULL,
  `expm` int(2) NOT NULL,
  `expy` int(2) NOT NULL,
  `cvv` int(3) NOT NULL,
  `Cust_Name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Payment_ID` int(30) NOT NULL,
  `Cust_Email` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Cust_Address` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`cc1`, `cc2`, `cc3`, `cc4`, `expm`, `expy`, `cvv`, `Cust_Name`, `Payment_ID`, `Cust_Email`, `Cust_Address`) VALUES
(1056, 2312, 2657, 9674, 3, 22, 143, 'James Bond', 47, 'jamesbond007@gmail.com', 'Sungai Petani,Kedah'),
(4312, 5643, 4321, 5544, 12, 23, 521, 'Alexander', 48, 'alex32@gmail.com', 'Kuantan,Pahang'),
(3564, 2245, 9654, 4562, 12, 23, 121, 'Moganesan', 53, 'vmoganesan17@gmail.com', 'Kedah'),
(2201, 1252, 3620, 1252, 12, 22, 112, 'Addy', 54, 'addy@gmail.com', 'Penang');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

DROP TABLE IF EXISTS `restaurants`;
CREATE TABLE `restaurants` (
  `R_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `M_ID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`R_ID`, `name`, `email`, `contact`, `address`, `M_ID`) VALUES
(1, 'Naufal\'s Restaurant', 'naufal@restaurant.com', '0167456875', 'Penang', 'naufal'),
(2, 'Asyraf\'s Restaurant', 'asyraf@restaurant.com', '0196678412', 'Pahang', 'asyraf'),
(3, 'Moga\'s Restaurant', 'moga@restaurant.com', '0124486875', 'Kedah', 'moga'),
(4, 'Nasi Kandar Tajuddin', 'tajuddinnk@gmail.com', '0163325498', 'Perak', 'azrul'),
(6, 'Victory Cafe', 'victorycafe007@gmail.com', '0123365475', 'Victory Cafe,Gurun,Kedah', 'pravin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`F_ID`,`R_ID`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `F_ID` (`F_ID`),
  ADD KEY `username` (`username`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Payment_ID`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`R_ID`),
  ADD UNIQUE KEY `M_ID_2` (`M_ID`),
  ADD KEY `M_ID` (`M_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `F_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `Payment_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `R_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`F_ID`) REFERENCES `food` (`F_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`username`) REFERENCES `customer` (`username`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`M_ID`) REFERENCES `manager` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
