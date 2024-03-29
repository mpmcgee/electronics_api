-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Oct 31, 2021 at 07:29 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electronics_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `phone`
--

CREATE TABLE `phone` (
  `phone_id` int(11) NOT NULL,
  `provider_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phone`
--

INSERT INTO `phone` (`phone_id`, `provider_id`, `name`, `brand`, `price`) VALUES
(1, 1, 'iPhone 13 pro max', 'iPhone', '$1300.48'),
(2, 3, 'Galaxy s20', 'Samsung ', '$879.30'),
(3, 5, 'iPhone 12', 'iPhone', '$1000.00'),
(4, 1, 'Pixel 4', 'Android ', '$600.99'),
(5, 1, 'iPhone 13', 'iPhone', '$1300.48'),
(6, 3, 'Pixel 5', 'Android ', '$709.40'),
(7, 1, 'iPhone 6 Plus ', 'iPhone', '$678.00'),
(8, 1, 'iPhone 13 pro max', 'iPhone', '$1300.48'),
(9, 4, 'Galaxy A42', 'Samsung ', '$200.37'),
(10, 2, 'Galaxy S10', 'Samsung ', '$309.38');

-- --------------------------------------------------------

--
-- Table structure for table `provider`
--

CREATE TABLE `provider` (
  `provider_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `provider`
--

INSERT INTO `provider` (`provider_id`, `name`, `street`, `city`, `state`, `phone_number`) VALUES
(1, 'Apple', '5768 Keystone ave', 'Indianapolis ', 'IN', '317-989-4579'),
(2, 'Boost Mobile', '7830 madison ave', 'Indianapolis', 'IN', '317-378-3789'),
(3, 'T-Mobile', '6298 Grand Valley blvd', 'Martinsville', 'IN', '317-478-2789'),
(4, 'Metro', 'W 16th st', 'Indianapolis ', 'IN', '317-793-3902'),
(5, 'Mobile King', '9067 Shelby st', 'Indianapolis', 'IN', '317-803-4579'),
(6, 'Walmart', '2367 Main st', 'Greenwood ', 'IN', '317-378-2790'),
(7, 'Target', '3682 Cherry Tree Plaza', 'Indianapolis ', 'IN', '317-289-3789'),
(8, 'Best Buy', '3658 Michigan rd', 'Carmel', 'IN', '317-279-2378'),
(9, 'Verizon', '2683 Meridian st', 'Indianapolis ', 'IN', '317-378-2878'),
(10, 'Charlie Wilson\'s Appliance & TV', '3678 Clark Parkway', 'Clarksville', 'IN', '317-379-2897');

-- --------------------------------------------------------

--
-- Table structure for table `tv`
--

CREATE TABLE `tv` (
  `tv_id` int(11) NOT NULL,
  `provider_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tv`
--

INSERT INTO `tv` (`tv_id`, `provider_id`, `name`, `brand`, `price`) VALUES
(1, 8, 'Class 7 series led 4K', 'Samsung', '$699.45'),
(2, 10, 'C1 series OLED 4K', 'LG', '$827.45'),
(3, 7, 'n10 series led hd', 'TLC', '$455.36'),
(4, 9, 'class x85j 4k', 'Sony', '$389.36'),
(5, 6, 'class 5 series q60a', 'Samsung', '$999.00'),
(6, 7, 'class 4', 'TLC', '$736.20'),
(7, 8, 'class bravia', 'Sony', '$590.35'),
(8, 6, 'class c1 series', 'LG', '$837.00'),
(9, 10, 'class 7 series led 4k', 'Samsung', '$897.39'),
(10, 7, 'class a1 series', 'LG', '$592.09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `role`, `last_name`, `first_name`, `password`, `email`, `phone_number`) VALUES
(1, 'admin', 'Smith', 'Josh', 'JSmith', 'jsmith@gmail.com', '317-786-9098'),
(2, 'user', 'Martinez', 'Barbara', 'BMartinez', 'bmartinez@yahoo.com', '340-453-8923'),
(3, 'admin', 'Williams', 'Daniel', 'DWilliams', 'dwilliams@gmail.com', '301-345-7845'),
(4, 'user', 'Brown', 'Suzan', 'SBrown', 'sbrown@hotmail.com', '324-451-0763'),
(5, 'user', 'Miller', 'Amber', 'AMiller', 'amiller@gmail.com', '673-679-7397'),
(6, 'user', 'Clark', 'Nancy', 'NClark', 'nclark@hotmail.com', '469-738-6730'),
(7, 'user', 'Morgan', 'Samira', 'SMorgan', 'smorgan@gmail.com', '321-780-3579'),
(9, 'user', 'Doe', 'Jane', 'asdasd', 'asd@asd.com', '317-456-7897');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`phone_id`),
  ADD KEY `provider_id` (`provider_id`);

--
-- Indexes for table `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`provider_id`);

--
-- Indexes for table `tv`
--
ALTER TABLE `tv`
  ADD PRIMARY KEY (`tv_id`),
  ADD KEY `provider_id` (`provider_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phone`
--
ALTER TABLE `phone`
  MODIFY `phone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `provider`
--
ALTER TABLE `provider`
  MODIFY `provider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tv`
--
ALTER TABLE `tv`
  MODIFY `tv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `phone`
--
ALTER TABLE `phone`
  ADD CONSTRAINT `phone_ibfk_1` FOREIGN KEY (`provider_id`) REFERENCES `provider` (`provider_id`);

--
-- Constraints for table `tv`
--
ALTER TABLE `tv`
  ADD CONSTRAINT `tv_ibfk_1` FOREIGN KEY (`provider_id`) REFERENCES `provider` (`provider_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
