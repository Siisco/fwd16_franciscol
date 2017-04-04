-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 04, 2017 at 03:56 PM
-- Server version: 5.6.34-log
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inlamning02`
--

-- --------------------------------------------------------

--
-- Table structure for table `diagnos`
--

CREATE TABLE IF NOT EXISTS `diagnos` (
  `idDiagnos` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Patient_idPatient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `diagnos`
--

INSERT INTO `diagnos` (`idDiagnos`, `Name`, `Patient_idPatient`) VALUES
(1, 'Cancer', 1),
(2, 'Rabies', 2),
(3, 'Flu', 2),
(4, 'HIV', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diagnos`
--
ALTER TABLE `diagnos`
  ADD PRIMARY KEY (`idDiagnos`,`Patient_idPatient`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
