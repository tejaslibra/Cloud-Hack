-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2016 at 08:30 PM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `patient`
--

-- --------------------------------------------------------

--
-- Table structure for table `emergency`
--

CREATE TABLE IF NOT EXISTS `emergency` (
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `addr1` varchar(100) NOT NULL,
  `addr2` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zip` longtext NOT NULL,
  `country` varchar(50) NOT NULL,
  `phone` longtext NOT NULL,
  `select` text NOT NULL,
  `number` bigint(255) NOT NULL,
  `number1` bigint(255) NOT NULL,
  `number2` bigint(255) NOT NULL,
  `number3` bigint(255) NOT NULL,
  `input` text NOT NULL,
  `input1` text NOT NULL,
  `input2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `personal`
--

CREATE TABLE IF NOT EXISTS `personal` (
  `ID` int(11) NOT NULL,
  `alert` varchar(200) NOT NULL,
  `first` varchar(20) NOT NULL,
  `last` varchar(20) NOT NULL,
  `street` varchar(50) NOT NULL,
  `add2` varchar(50) NOT NULL,
  `city` varchar(25) NOT NULL,
  `state` varchar(25) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `gender` text NOT NULL,
  `marital` text NOT NULL,
  `dob` date NOT NULL,
  `religion` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `alternate` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personal`
--

INSERT INTO `personal` (`ID`, `alert`, `first`, `last`, `street`, `add2`, `city`, `state`, `zip`, `country`, `gender`, `marital`, `dob`, `religion`, `phone`, `alternate`, `email`) VALUES
(1, 'cough', 'akki', 'cc', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', ''),
(2, 'nothing', 'akki', 'cc', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', ''),
(3, 'ache', 'aksh', 'chh', '168/10', 'fhdfhxfh', 'mum', 'mah', '421001', 'India', 'male', 'S', '1994-05-10', 'hindu', '68464864', '9876846468', 'a.c@gmail.com'),
(4, 'aan', 'a', 'd', 'dd', 'dd', 'dd', 'dd', '90', 'United States', 'female', 'M', '2016-03-17', 'j', '8888', '9975002330', 'aanchal.dadlani@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `personal`
--
ALTER TABLE `personal`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
