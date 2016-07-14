-- phpMyAdmin SQL Dump
-- version 4.4.1.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Jul 14, 2016 at 11:42 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `list`
--

CREATE TABLE `list` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`id`, `name`, `created_at`, `status`) VALUES
(1, 'Grocery list', '2016-07-14', 0),
(2, 'Hardware store', '2016-07-12', 0),
(3, 'Other', '2016-07-14', 0);

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `id` int(11) NOT NULL,
  `item` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(4,2) DEFAULT NULL,
  `price_type` int(11) DEFAULT NULL,
  `list_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`id`, `item`, `status`, `created_at`, `quantity`, `price`, `price_type`, `list_id`) VALUES
(15, 'Bread', 0, '2015-05-13', 1, '5.00', 0, NULL),
(24, 'Apples', 0, '2016-06-29', 2, '12.00', 0, NULL),
(25, 'Oranges', 0, '2016-06-29', 1, NULL, 2, 3),
(26, 'Pears', 0, '2016-06-29', 6, NULL, 2, NULL),
(27, 'Beer', 0, '2016-06-29', 3, '5.00', 2, 1),
(28, 'Strawberry', 0, '2016-07-14', 4, '5.00', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;