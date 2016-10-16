-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 20, 2016 at 07:47 PM
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
-- Table structure for table `insurance`
--

CREATE TABLE IF NOT EXISTS `insurance` (
  `ID` int(11) NOT NULL,
  `carrier` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `gid` varchar(100) NOT NULL,
  `mid` varchar(100) NOT NULL,
  `medicure` varchar(100) NOT NULL,
  `sec` varchar(100) NOT NULL,
  `id1` varchar(100) NOT NULL,
  `pres` varchar(100) NOT NULL,
  `id2` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `insurance`
--

INSERT INTO `insurance` (`ID`, `carrier`, `phone`, `gid`, `mid`, `medicure`, `sec`, `id1`, `pres`, `id2`) VALUES
(0, 'health care', '9876543210', '556', '7890', '-', '-', '', 'medicare', '123');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
