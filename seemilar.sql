-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2017 at 04:04 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `seemilar`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin1`
--

CREATE TABLE IF NOT EXISTS `admin1` (
  `AdminName` varchar(20) DEFAULT NULL,
  `AdminPass` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin1`
--

INSERT INTO `admin1` (`AdminName`, `AdminPass`) VALUES
('root', '*r1996'),
('Pulkit Priy', '*p1996'),
('Satyam', '*s1996'),
('Park', '*p1996');

-- --------------------------------------------------------

--
-- Table structure for table `login_access`
--

CREATE TABLE IF NOT EXISTS `login_access` (
  `Email` varchar(20) DEFAULT NULL,
  `Login_Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Name` varchar(30) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `login_access`
--

INSERT INTO `login_access` (`Email`, `Login_Time`, `Name`, `id`) VALUES
('troy0870@gmail.com', '2017-10-28 02:01:56', 'Tuhin Roy', 1);

-- --------------------------------------------------------

--
-- Table structure for table `room_details`
--

CREATE TABLE IF NOT EXISTS `room_details` (
  `Name` varchar(20) DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `Room_Type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_details`
--

INSERT INTO `room_details` (`Name`, `Email`, `Amount`, `Room_Type`) VALUES
('Tuhin Roy', 'troy0870@gmail.com', 0, 'Triple Seater'),
('Tuhin Roy', 'troy0870@gmail.com', 0, 'Double Room'),
(NULL, NULL, 0, '1'),
('Tuhin Roy', 'troy0870@gmail.com', 0, 'Double Room'),
('Tuhin Roy', 'troy0870@gmail.com', 0, 'Single Room'),
('Tuhin Roy', 'troy0870@gmail.com', 0, 'Double Room'),
('Oliver Queen', 'o@gmail.com', 50000, 'Triple Seater'),
('Tuhin Roy', 'troy0870@gmail.com', 0, 'Triple Seater'),
('Tuhin Roy', 'troy0870@gmail.com', 50000, 'Triple Seater');

-- --------------------------------------------------------

--
-- Table structure for table `room_spec`
--

CREATE TABLE IF NOT EXISTS `room_spec` (
  `Amount` int(11) DEFAULT NULL,
  `Type` varchar(20) DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `room_spec`
--

INSERT INTO `room_spec` (`Amount`, `Type`, `ID`) VALUES
(58000, 'Single Room', 1),
(58000, 'Double Room', 2),
(50000, 'Triple Seater', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `Name` varchar(30) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `age` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `course` varchar(10) DEFAULT NULL,
  `mob` int(11) DEFAULT NULL,
  `hobby` varchar(11) DEFAULT NULL,
  `log` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `join_date` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `address` varchar(500) NOT NULL,
  `guardian_name` varchar(20) DEFAULT NULL,
  `guardian_no` int(12) DEFAULT NULL,
  `book_status` int(11) DEFAULT NULL,
  `admin_message` varchar(500) NOT NULL DEFAULT 'No message.'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Name`, `email`, `age`, `gender`, `password`, `course`, `mob`, `hobby`, `log`, `join_date`, `duration`, `address`, `guardian_name`, `guardian_no`, `book_status`, `admin_message`) VALUES
('Oliver Queen', 'o@gmail.com', '21', 'Male', '*o1996', 'BTech', 989345, 'Music', '2017-10-22 08:04:47', '2017-10-20', 3, 'H No. 5 Izzatnagar bareilly ', 'TK Roy', 81718915, 1, 'No message'),
(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-10-22 08:18:11', NULL, NULL, '', NULL, NULL, 1, 'No message'),
('Ram Mohan', 'r@gmail.com', '21', 'Male', '*rajan1996', 'BTech', 98972644, 'Music', '2017-10-24 04:49:33', '2017-10-20', 3, ' H NO. 50 Pilbhit UP', 'Pk Mohan', 56998849, 1, 'No message'),
('Tuhin Roy', 'troy0870@gmail.com', '21', 'Male', '*rajan1996', 'B.Tech', 989726445, 'Music', '2017-10-28 01:47:19', '2017-10-03', 2, 'H No 5 rajeev Kunj Colony Izatnagar Bareilly UP', 'T K Roy', 817189183, 1, 'No message');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
