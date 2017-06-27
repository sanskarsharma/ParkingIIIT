-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2017 at 08:37 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparkdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookingstable`
--

CREATE TABLE `bookingstable` (
  `bookingtoken` varchar(10) NOT NULL,
  `user_id` varchar(150) NOT NULL,
  `locationid` varchar(10) NOT NULL,
  `bookingstatus` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookingstable`
--

INSERT INTO `bookingstable` (`bookingtoken`, `user_id`, `locationid`, `bookingstatus`) VALUES
('iilade93', 'yamalapagaladeewana1234567899853694493i8383934895', 'iiit', 1),
('ssla196', 'yamalapagaladeewana1234567899853694493i8383934895', 'ssipmt', 1),
('ssla966', 'yamalapagaladeewana1234567899853694493i8383934895', 'ssipmt', 1),
('ssla98', 'yamalapagaladeewana1234567899853694493i8383934895', 'ssipmt', 1);

-- --------------------------------------------------------

--
-- Table structure for table `locationtable`
--

CREATE TABLE `locationtable` (
  `locationid` varchar(10) NOT NULL,
  `totalcapacity` int(5) NOT NULL,
  `vacant` int(5) NOT NULL,
  `on_hold` int(5) NOT NULL,
  `occupied` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locationtable`
--

INSERT INTO `locationtable` (`locationid`, `totalcapacity`, `vacant`, `on_hold`, `occupied`) VALUES
('iiit', 100, 61, 19, 20),
('ssipmt', 80, 35, 25, 20);

-- --------------------------------------------------------

--
-- Table structure for table `sensortable`
--

CREATE TABLE `sensortable` (
  `SENSORID` text NOT NULL,
  `SENSORTYPE` text NOT NULL,
  `LOCATIONID` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sensortable`
--

INSERT INTO `sensortable` (`SENSORID`, `SENSORTYPE`, `LOCATIONID`) VALUES
('peehla nasha', 'pehla khumar', 'hoja mc'),
('peehla nasha 4444', 'pehla khumar', 'hoja mc');

-- --------------------------------------------------------

--
-- Table structure for table `useridnotifid`
--

CREATE TABLE `useridnotifid` (
  `name` varchar(50) NOT NULL,
  `mobile_num` varchar(15) NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `fcm_reg_id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `useridnotifid`
--

INSERT INTO `useridnotifid` (`name`, `mobile_num`, `user_id`, `fcm_reg_id`) VALUES
('mummy  sharma', '11111090909', 'bestestmommyyayyyyywegfbefbefwfwfbestmommy', 'mummathegr8qehfbwefhebfjewfbefiwebfkwefbwce wfwfhjbgwfbwebgiwefbwfbfkwefbwibwvkwrbwkvbkvbwkvbwvkbwkfbrkfbrbkwrbrwkfbfuwefukwfwekfuhkfhwefwfwfwefwfwekjfbkwwkbwf'),
('golu sharma returns', '7987900000', 'GOLuFkuqebfiqeibfihfGolu', 'kbfwefbiwfbwYEKUCHBHIHAIkwefbkjwejbfiHBEFFFHFWEWEFJVWFBHWEJFHVWEJHCWEF'),
('papa  sharma', '11111252525', 'papapapappapabestpapapapapapa', 'happyhappywkerjbgfwkrefbwerkgbwgwfveryhappyekfbwekfbwekfwbefkwebfwef'),
('golu sharma', '7987977036', 'qfkbqifbkefjbakdfb2igfbekfbwqeigvbIiFBqieyfewi13974bffqwjtkrqf', 'f-PXtSN-G8I:APA91bFTp_K0BkIoswdeH-qPt8C_Phg4a_o0yFtKfVl07CjovXk4255kV--MDREu6xUEhDKPGiH4PL7X1vNQIxHi-HyXMEJvoJSBqwnnuq3AcPCKQ9zx6uiRrkYKNORsara43G9urBhq'),
('mummy  sharma', '11111090909', 'sample', 'mummathegr8qehfbwefhebfjewfbefiwebfkwefbwce wfwfhjbgwfbwebgiwefbwfbfkwefbwibwvkwrbwkvbkvbwkvbwvkbwkfbrkfbrbkwrbrwkfbfuwefukwfwekfuhkfhwefwfwfwefwfwekjfbkwwkbwf'),
('subi dubi sharma', '1111100000', 'subidubisubiwkegfbwkfbewfgsharma', 'kbfiwefbiwefhTATTIkfwkgfwgfkwPOTTYwjefwgjkwrgwrkjg kvervjervkj vekbwkjfbgfk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookingstable`
--
ALTER TABLE `bookingstable`
  ADD PRIMARY KEY (`bookingtoken`);

--
-- Indexes for table `locationtable`
--
ALTER TABLE `locationtable`
  ADD PRIMARY KEY (`locationid`);

--
-- Indexes for table `useridnotifid`
--
ALTER TABLE `useridnotifid`
  ADD PRIMARY KEY (`user_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
