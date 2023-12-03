-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 08, 2023 at 01:32 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `userName` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `pin` int(4) NOT NULL,
  `password` varchar(40) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`userName`, `email`, `gender`, `pin`, `password`) VALUES
('SUDHANKUMAR', 'sudhankumar.r2020@vit.ac.in', 'male', 9080, '56ccf03fb85ab873a3ddb2c5fd8efcb04fdfada3'),
('GAUTAM', 'gautam.s2020@vit.ac.in', 'male', 9080, 'ec9fb243e642e08e3f2cb3a5793272a9cbfb4390');

-- --------------------------------------------------------

--
-- Table structure for table `mens_hostel`
--

DROP TABLE IF EXISTS `mens_hostel`;
CREATE TABLE IF NOT EXISTS `mens_hostel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `regNo` varchar(9) NOT NULL,
  `name` varchar(30) NOT NULL,
  `block` varchar(5) NOT NULL,
  `roomNo` int(6) NOT NULL,
  `service` varchar(20) NOT NULL,
  `day1` varchar(20) NOT NULL,
  `day1slot` varchar(30) NOT NULL,
  `day2` varchar(20) NOT NULL,
  `day2slot` varchar(30) NOT NULL,
  `day3` varchar(20) NOT NULL,
  `day3slot` varchar(30) NOT NULL,
  `complaints` varchar(350) DEFAULT NULL,
  `registered` date NOT NULL,
  `status` varchar(30) NOT NULL,
  `comments` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mens_hostel`
--

INSERT INTO `mens_hostel` (`id`, `regNo`, `name`, `block`, `roomNo`, `service`, `day1`, `day1slot`, `day2`, `day2slot`, `day3`, `day3slot`, `complaints`, `registered`, `status`, `comments`) VALUES
(1, '20BIT0316', 'SUDHANKUMAR', 'P', 212, 'carpentry', 'Monday', '02:00 PM-07:00 PM', 'Tuesday', '11:00 AM-03:00 PM', 'Wednesday', '01:00 PM-05:00 PM', '', '2023-10-08', 'requested', '');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `userName` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `regNo` varchar(9) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `block` varchar(5) NOT NULL,
  `roomNo` int(6) NOT NULL,
  `password` varchar(40) NOT NULL,
  PRIMARY KEY (`regNo`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`userName`, `email`, `regNo`, `gender`, `block`, `roomNo`, `password`) VALUES
('SUDHANKUMAR', 'sudhankumar.r2020@vitstudent.ac.in', '20BIT0316', 'male', 'P', 212, '56ccf03fb85ab873a3ddb2c5fd8efcb04fdfada3'),
('GOKULNATH', 'gokulnath.v2020@vitstudent.ac.in', '20BIT0314', 'male', 'P', 212, '33602116368079f365e4e8ce2fff63a0979d8523'),
('POOVARASAN', 'poovarasan.s2020@vitstudent.ac.in', '20BIT0315', 'male', 'P', 213, 'ba6b9206656855ebbd8f99aafc14d063bcba4d71'),
('GAUTAM', 'gautam.s2020@vitstudent.ac.in', '20BIT0312', 'male', 'P', 212, 'ec9fb243e642e08e3f2cb3a5793272a9cbfb4390');

-- --------------------------------------------------------

--
-- Table structure for table `womens_hostel`
--

DROP TABLE IF EXISTS `womens_hostel`;
CREATE TABLE IF NOT EXISTS `womens_hostel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `regNo` varchar(9) NOT NULL,
  `name` varchar(30) NOT NULL,
  `block` varchar(5) NOT NULL,
  `roomNo` int(6) NOT NULL,
  `service` varchar(20) NOT NULL,
  `day1` varchar(20) NOT NULL,
  `day1slot` varchar(30) NOT NULL,
  `day2` varchar(20) NOT NULL,
  `day2slot` varchar(30) NOT NULL,
  `day3` varchar(20) NOT NULL,
  `day3slot` varchar(30) NOT NULL,
  `complaints` varchar(350) DEFAULT NULL,
  `registered` date NOT NULL,
  `status` varchar(30) NOT NULL,
  `comments` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
