-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2018 at 08:53 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(24) NOT NULL,
  `password` varchar(6) NOT NULL,
  `contact` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `password`, `contact`) VALUES
(1, 'fikri', '12345', 85878586091);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `type` varchar(10) NOT NULL,
  `instrument` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  `pieces` int(11) NOT NULL,
  `contact_no` int(12) NOT NULL,
  `customer_name` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(10) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `contact_no` int(12) NOT NULL,
  `customer_email` varchar(40) NOT NULL,
  `address` varchar(50) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `firstname`, `lastname`, `contact_no`, `customer_email`, `address`, `username`, `password`) VALUES
(2, 'fikri', 'hashfi', 2147483647, 'fikrihashfi@gmail.com', 'klaten', 'fikri', '123'),
(3, 'siapa', 'saya', 85, 'a@ok', 'kk', 'coba', '456'),
(4, 'test', 'aja', 123456, 'test@test', 'bali', 'test', '123'),
(5, 'test2', 'test2', 2, 'w@2', 'ww2', 'test2', 'test2'),
(6, 'hai', 'hai', 123, 'asd@asd', 'asdsad asd', 'kakak', '123'),
(7, 'hashfin', 'nashr', 12345678, 'w@5', 'waeqwe', 'hashfin', '12345'),
(8, 'eaea', 'aea', 12345678, 'awe@wqe', 'qwe', 'cobacoba', 'sa'),
(9, 'ea ea', 'qwewqe', 2147483647, 'qwewq@wweq.com', '123wwestreet', 'testing', 'testin'),
(10, 'tettt', 'tetttt', 123415, 'awe@wqe.com', 'tettt', 'naruto k', 'naruto'),
(11, 'qwe', 'qwe', 2147483647, 'dsfsdfds@w.com', 'wqe', 'sasuke k', 'sasuke'),
(12, 'eaea', 'qwewqe', 12345678, 'test@test.com', 'qwe', 'sasuke b', 'sasuke'),
(13, 'eaea', 'qwewqe', 12345, '123@123.com', '1234', 'fikr ', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `CF_id` varchar(8) NOT NULL,
  `CF_name` varchar(24) NOT NULL,
  `address` varchar(50) NOT NULL,
  `Feedback_institute` varchar(20) NOT NULL,
  `contact_no` int(12) NOT NULL,
  `opinion` text NOT NULL,
  `service` varchar(24) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `instrument`
--

CREATE TABLE `instrument` (
  `id_instrument` int(10) NOT NULL,
  `brand` varchar(20) NOT NULL,
  `type` varchar(10) NOT NULL,
  `color` varchar(10) NOT NULL,
  `price` int(7) NOT NULL,
  `instrument` varchar(10) NOT NULL,
  `picture` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instrument`
--

INSERT INTO `instrument` (`id_instrument`, `brand`, `type`, `color`, `price`, `instrument`, `picture`) VALUES
(1, 'coba', 'coba', 'coba', 6655777, 'guitar', 'D:/Xampp/htdocs/Musire/Image/tombol5.png'),
(2, 'coba', 'coba', 'coba', 6655777, 'guitar', 'D:/Xampp/htdocs/Musire/Image/tombol6.png'),
(3, 'coba', 'coba', 'coba', 6655777, 'guitar', 'D:/Xampp/htdocs/Musire/Image/tombol7.png'),
(4, 'qwrqrwq', 'asd', '121221', 1234, 'weqqq', 'D:/Xampp/htdocs/Musire/Image/tombol8.png'),
(5, 'qwrqrwq', 'asd', '121221', 1234, 'weqqq', 'D:/Xampp/htdocs/Musire/Image/tombol9.png'),
(6, 'qwrqrwq', 'asd', '121221', 1234, 'weqqq', 'D:/Xampp/htdocs/Musire/Image/tombol10.png'),
(7, 'qwrqrwq', 'asd', '121221', 1234, 'weqqq', 'D:/Xampp/htdocs/Musire/Image/tombol11.png'),
(8, 'qwrqrwq', 'asd', '121221', 1234, 'weqqq', 'D:/Xampp/htdocs/Musire/Image/tombol12.png');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `instrument` varchar(24) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`CF_id`);

--
-- Indexes for table `instrument`
--
ALTER TABLE `instrument`
  ADD PRIMARY KEY (`id_instrument`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `instrument`
--
ALTER TABLE `instrument`
  MODIFY `id_instrument` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
