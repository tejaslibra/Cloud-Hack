-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 20, 2016 at 06:14 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


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
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `addr1` varchar(100) NOT NULL,
  `addr2` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zip` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `select` varchar(100) NOT NULL,
  `bp` varchar(100) NOT NULL,
  `cholesterol` varchar(100) NOT NULL,
  `height` varchar(100) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `input` varchar(100) NOT NULL,
  `input1` varchar(100) NOT NULL,
  `input2` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `emergency`
--

INSERT INTO `emergency` (`ID`, `fname`, `lname`, `addr1`, `addr2`, `city`, `state`, `zip`, `country`, `phone`, `select`, `bp`, `cholesterol`, `height`, `weight`, `input`, `input1`, `input2`) VALUES
(1, 'aqaaaaa', 'gbn', '10/168', 'Nr. sadhubella school,UNR-421001', 'Ulhasnagar', 'Maharashtra', '421001', 'India', '08983430025', '', '41', '258', '585', '78', 'nothing', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
