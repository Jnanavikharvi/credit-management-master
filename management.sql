-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 19, 2019 at 11:20 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `management`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

DROP TABLE IF EXISTS `data`;
CREATE TABLE IF NOT EXISTS `data` (
  `sender` varchar(20) NOT NULL,
  `receiver` varchar(20) NOT NULL,
  `credits` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`sender`, `receiver`, `credits`) VALUES
('Abijna', 'Ayra', 100),
('Bhavana', 'royal', 500);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--


CREATE TABLE `user_details` (
  `username` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `credit` int(10) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`username`, `email`, `credit`) VALUES
('Abijna', 'abhi@gmail.com', 1000),
('Bhavana', 'bhavana@gmail.com', 2500),
('seetha', 'seetha@gmail.com', 36500),
('vaishnav', 'vaishnav@gmail.com', 67500),
('shanthi', 'shanthi@gmail.com', 51300),
('manasa', 'manasa@gmail.com', 50000),
('Geetha', 'geetha@gmail.com', 10000),
('kalyan', 'kalyan@gmail.com', 39000),
('raghu', 'raghu@gmail.com', 52000),
('Jeevan', 'jeevan@gmail.com', 1500);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
