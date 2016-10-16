-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 18, 2016 at 05:07 AM
-- Server version: 5.5.47-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `email`
--

-- --------------------------------------------------------

--
-- Table structure for table `medication`
--

CREATE TABLE IF NOT EXISTS `medication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Strength` varchar(200) NOT NULL,
  `Dose` varchar(10) NOT NULL,
  `year` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `medication`
--

INSERT INTO `medication` (`id`, `Name`, `Strength`, `Dose`, `year`) VALUES
(3, 'crocin', 'fever', '1', '2016');

-- --------------------------------------------------------

--
-- Table structure for table `medsurg`
--

CREATE TABLE IF NOT EXISTS `medsurg` (
  `id1` int(11) NOT NULL AUTO_INCREMENT,
  `name1` varchar(50) NOT NULL,
  `year1` varchar(5) NOT NULL,
  PRIMARY KEY (`id1`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `medsurg`
--

INSERT INTO `medsurg` (`id1`, `name1`, `year1`) VALUES
(3, 'malaria', '2012');

-- --------------------------------------------------------

--
-- Table structure for table `other`
--

CREATE TABLE IF NOT EXISTS `other` (
  `id2` int(11) NOT NULL AUTO_INCREMENT,
  `smoking` int(10) NOT NULL,
  `alcohol` int(10) NOT NULL,
  PRIMARY KEY (`id2`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `other`
--

INSERT INTO `other` (`id2`, `smoking`, `alcohol`) VALUES
(2, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `personal`
--

CREATE TABLE IF NOT EXISTS `personal` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
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
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `personal`
--

INSERT INTO `personal` (`ID`, `alert`, `first`, `last`, `street`, `add2`, `city`, `state`, `zip`, `country`, `gender`, `marital`, `dob`, `religion`, `phone`, `alternate`, `email`) VALUES
(1, 'cough', 'akki', 'cc', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', ''),
(2, 'nothing', 'akki', 'cc', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', ''),
(3, 'ache', 'aksh', 'chh', '168/10', 'fhdfhxfh', 'mum', 'mah', '421001', 'India', 'male', 'S', '1994-05-10', 'hindu', '68464864', '9876846468', 'a.c@gmail.com'),
(4, 'nooooo', 'bb', 'bb', 'bb', 'b', '', 'bb', '09', 'United States', 'female', 'S', '2016-04-03', 'i', '9978778779', '8866886688', 'aanchal.dadlani@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(60) NOT NULL,
  `product_name` varchar(60) NOT NULL,
  `product_desc` tinytext NOT NULL,
  `product_img_name` varchar(60) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_code` (`product_code`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=100011 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_desc`, `product_img_name`, `price`) VALUES
(1, 'PD1001', 'Paracetamol ', '', '', 12.50),
(2, 'PD1002', 'Anacin 50mg', '', '', 42.23),
(3, 'PD1003', 'Ibuprofen 25mg', '', '', 15.50),
(10, 'PD1010', 'Diclofenac Sodium', '', '', 10.66),
(11, 'PD1011', 'Tetramycin', '', '', 25.10),
(12, 'PD1012', 'Meropenem', '', '', 28.79),
(4, 'PD1004', 'Amoxicillin', '', '', 39.20),
(5, 'PD1005', 'Crocin 50mg', '', '', 35.50),
(6, 'PD1006', 'Diazepam', '', '', 25.75),
(7, 'PD1007', 'Benadryl Syrup', '', '', 40.00),
(8, 'PD1008', 'Aspirin 150mg', '', '', 21.20),
(9, 'PD1009', 'Ambroxol', '', '', 25.60),
(100010, '122', 'Crocin', '', '', 100.00),
(10011, '232', 'Eptoin', '', '', 500.00),
(1012, '212', 'Tonact TG', '', '', 298.00),
(211, '121', 'Metacin', '', '', 343.00),
(2612, '23231', 'Levipil', '', '', 2000.00),
(22111, '11', 'Chlodrel', '', '', 343.00);

-- --------------------------------------------------------

--
-- Table structure for table `registered_members`
--

CREATE TABLE IF NOT EXISTS `registered_members` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(65) NOT NULL DEFAULT '',
  `email` varchar(65) NOT NULL DEFAULT '',
  `password` varchar(65) NOT NULL DEFAULT '',
  `country` varchar(65) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=71 ;

--
-- Dumping data for table `registered_members`
--

INSERT INTO `registered_members` (`id`, `name`, `email`, `password`, `country`) VALUES
(1, 'Aanchal', 'aanchal.dadlani@ves.ac.in', 'gogu', 'India'),
(2, 'Monish Keswani ', 'keswanimonish@yahoo.com', 'gogu', 'India'),
(3, 'Kandarp Khandwala', 'kandarpck@gmail.com', 'gogu', 'India'),
(4, 'aakash', 'aakashchhatlani@gmail.com', 'gogu', 'india'),
(5, 'Aanchaldadlani', 'aanchal.dadlani@gmail.com', 'gogu', 'India'),
(6, 'Prashant Kanade ', 'prashant.kanade@ves.ac.in', '123', 'India'),
(7, 'Kandarp', 'aanchal.dadlani@gmail.com', 'a', 'Indi'),
(70, 'aanchal', 'aanchal.dadlani@gmail.com', 'aanchal', 'india');

-- --------------------------------------------------------

--
-- Table structure for table `sanjay_plus`
--

CREATE TABLE IF NOT EXISTS `sanjay_plus` (
  `u_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `u_user` varchar(100) DEFAULT NULL,
  `u_pass` varchar(100) DEFAULT NULL,
  `u_access` char(1) NOT NULL DEFAULT '1',
  `u_name` varchar(100) DEFAULT NULL,
  `u_mail` varchar(128) DEFAULT NULL,
  `u_city` varchar(1000) DEFAULT NULL,
  `u_country` varchar(100) DEFAULT NULL,
  `u_imgurl` varchar(100) DEFAULT NULL,
  `u_ondate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=100 ;

--
-- Dumping data for table `sanjay_plus`
--

INSERT INTO `sanjay_plus` (`u_id`, `u_user`, `u_pass`, `u_access`, `u_name`, `u_mail`, `u_city`, `u_country`, `u_imgurl`, `u_ondate`) VALUES
(4, 'aanchal', 'aanchal', '1', NULL, NULL, NULL, NULL, 'Desktop/005.jpg', '2016-04-17 12:50:37'),
(10, 'Aanchal Dadlani', 'aanchal', '1', 'Aanchal Dadlani', 'aanchal.dadlani@gmail.com', 'Mumbai', 'India', NULL, '2016-04-17 14:22:51'),
(99, 'sanjay', 'openplus106c61744d43403913ef7ff6ce993ca37b75684fe23b2ad33b8599bf2c937e81', '1', 'Sanjay Prasad', 'sonzoy@gmail.com', 'kolkata', 'India', 'sanjay.jpg', '2014-04-21 15:42:13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_uploads`
--

CREATE TABLE IF NOT EXISTS `tbl_uploads` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `file` varchar(100) NOT NULL,
  `type` varchar(30) NOT NULL,
  `size` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tbl_uploads`
--

INSERT INTO `tbl_uploads` (`id`, `file`, `type`, `size`) VALUES
(4, '49114-elements_sample_report.pdf', 'application/pdf', 382),
(5, '67465-female_blood_profile_ii_sample_report_2015.pdf', 'application/pdf', 199),
(6, '82748-metabolites_sample_test_report_2015.pdf', 'application/pdf', 1025),
(7, '14344-mvso-medical-report-form.pdf', 'application/pdf', 102),
(8, '60529-sleep_balance_sample_report_2016.pdf', 'application/pdf', 368),
(9, '61839-saliva_profile_iii_sample_report_2015.pdf', 'application/pdf', 317),
(10, '37772-metabolites_sample_test_report_2015.pdf', 'application/pdf', 1025);

-- --------------------------------------------------------

--
-- Table structure for table `tb_patient`
--

CREATE TABLE IF NOT EXISTS `tb_patient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_name` varchar(50) NOT NULL,
  `what_happen` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `tb_patient`
--

INSERT INTO `tb_patient` (`id`, `patient_name`, `what_happen`) VALUES
(49, 'aakash', 'cough');

-- --------------------------------------------------------

--
-- Table structure for table `temp_members_db`
--

CREATE TABLE IF NOT EXISTS `temp_members_db` (
  `confirm_code` varchar(65) NOT NULL DEFAULT '',
  `name` varchar(65) NOT NULL DEFAULT '',
  `email` varchar(65) NOT NULL DEFAULT '',
  `password` varchar(15) NOT NULL DEFAULT '',
  `country` varchar(65) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_members_db`
--

INSERT INTO `temp_members_db` (`confirm_code`, `name`, `email`, `password`, `country`) VALUES
('38e05405514567ca2167f3acb02084e3', '', '', 'gogu', ''),
('58da532bc823564e4402608cf163507a', '', '', 'gogu', ''),
('eae3579b2415109912d2dd381807611a', 'Aanchal', 'aanchal.dadlani@gmail.com', 'gogu', 'India'),
('7303e4b6259248cafb98f3250c447af0', 'Aanchal', 'aanchal.dadlani@gmail.com', 'gogu', 'India'),
('61552be284f3ea54256e803dad1a5b04', 'Meet Gidwani', 'gidwanimeet@gmail.com', 'gogu', 'India'),
('ba831ac3ddb085eab99141d366b70dd5', 'Aanchaldadlani', 'aanchal.dadlani@gmail.com', 'gogu', 'India'),
('ae1fbff34bb81b5b8b18f2182bc5a7e0', 'Aanchaldadlani', 'aanchal.dadlani@ves.ac.in', 'gogu', 'India'),
('dbea9e7fe2e2093b7aa16df86bf94a30', 'Aanchaldadlani', 'aanchal.dadlani@ves.ac.in', 'gogu', 'India'),
('e175082eabeea8410366fa67e47bbd7e', '', '', 'gogu', ''),
('aa5248f5a07c19091e2f2d7ad0a0af99', 'Aanchaldadlani', 'aanchal.dadlani@ves.ac.in', 'gogu', 'India'),
('97cef03318fc482e3d7f16a3fc2322a8', 'Aanchaldadlani', 'aanchal.dadlani@gmail.com', 'gogu', 'India'),
('278203d000acba43997b3fdf84945731', 'kandarp', 'aanchal.dadlani@gmail.com', 'gogu', 'India'),
('aa53ba242b7747987446d0c33c60499a', 'kandarp1', 'aanchal.dadlani@gmail.com', 'aanchal', 'India'),
('bfd24e3d67a06586551af8f6dd725313', 'aanchal', 'aanchal.dadlani@gmail.com', '', ''),
('45ce2cdb4b0a4aeaa08e0e26a09dd112', 'Meet', 'aanchal.dadlani@gmail.com', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
