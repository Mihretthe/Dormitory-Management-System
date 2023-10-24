-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 24, 2023 at 07:32 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dormitorymanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `femalestudents`
--

DROP TABLE IF EXISTS `femalestudents`;
CREATE TABLE IF NOT EXISTS `femalestudents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idnumber` varchar(200) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `department` varchar(200) NOT NULL,
  `batchyear` varchar(200) NOT NULL,
  `Gender` varchar(200) NOT NULL,
  `roomnumber` int NOT NULL DEFAULT '1',
  `floornumber` int NOT NULL DEFAULT '0',
  `blocknumber` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `femalestudents`
--

INSERT INTO `femalestudents` (`id`, `idnumber`, `firstname`, `lastname`, `department`, `batchyear`, `Gender`, `roomnumber`, `floornumber`, `blocknumber`) VALUES
(16, '9569', 'Beti ', 'Tekalgn', 'Architecture', '2013', 'Female', 1, 0, 1),
(14, '0880', 'Mihret', 'Tekalgn', 'Software Engineering', '2013', 'Female', 2, 0, 1),
(15, '0889', 'abebe', 'belay', 'Architecture', '2013', 'Female', 1, 0, 1),
(10, '0876', 'Mihret', 'Tekalgn', 'Software Engineering', '2013', 'Female', 2, 0, 1),
(11, '0877', 'Mihret', 'Tekalgn', 'Architecture', '2013', 'Female', 1, 0, 1),
(13, '0879', 'Mihret', 'Tekalgn', 'Civil Engineering', '2013', 'Female', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `malestudents`
--

DROP TABLE IF EXISTS `malestudents`;
CREATE TABLE IF NOT EXISTS `malestudents` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '\r\n',
  `idnumber` varchar(200) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `department` varchar(200) NOT NULL,
  `batchyear` varchar(10) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `roomnumber` int NOT NULL DEFAULT '1',
  `floornumber` int NOT NULL DEFAULT '0',
  `blocknumber` int NOT NULL DEFAULT '8',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `malestudents`
--

INSERT INTO `malestudents` (`id`, `idnumber`, `firstname`, `lastname`, `department`, `batchyear`, `Gender`, `roomnumber`, `floornumber`, `blocknumber`) VALUES
(8, '0889', 'abebe', 'belay', 'Architecture', '2013', 'Male', 1, 0, 8),
(6, '0888', 'abebe', 'belay', 'Architecture', '2013', 'Male', 1, 0, 8),
(7, '0877', 'Mihret', 'Tekalgn', 'Electromechanical Engineering', '2013', 'Male', 2, 0, 8),
(9, '0834', 'Mihret', 'Tekalgn', 'Chemical Engineering ', '2013', 'Male', 1, 0, 8),
(10, '0800', 'Mihret', 'Tekalgn', 'Electromechanical Engineering', '2013', 'Male', 1, 0, 8);

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
CREATE TABLE IF NOT EXISTS `requests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `roomNumber` int NOT NULL,
  `floorNumber` int NOT NULL,
  `blockNumber` int NOT NULL,
  `request` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
CREATE TABLE IF NOT EXISTS `rooms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `room` varchar(200) NOT NULL,
  `floor` varchar(200) NOT NULL,
  `block` varchar(200) NOT NULL,
  `tables` varchar(200) NOT NULL,
  `chair` varchar(200) NOT NULL,
  `windows` varchar(200) NOT NULL,
  `mattresses` varchar(200) NOT NULL,
  `locker` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `room`, `floor`, `block`, `tables`, `chair`, `windows`, `mattresses`, `locker`) VALUES
(1, '2', '1', '7', 'Checked', 'Checked', 'Checked', 'Checked', 'Checked'),
(2, '2', '1', '7', 'Checked', 'Checked', 'Checked', 'Checked', 'Checked');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
