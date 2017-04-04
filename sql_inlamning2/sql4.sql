-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 04, 2017 at 04:04 PM
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
-- Table structure for table `nurse`
--

CREATE TABLE IF NOT EXISTS `nurse` (
  `idNurse` int(11) NOT NULL,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `Patient_idPatient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`idNurse`, `firstName`, `lastName`, `Patient_idPatient`) VALUES
(1, 'Bianca', 'Hue', 1),
(2, 'Rosha', 'Bosha', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`idNurse`),
  ADD KEY `fk_Nurse_Patient1_idx` (`Patient_idPatient`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `nurse`
--
ALTER TABLE `nurse`
  ADD CONSTRAINT `fk_Nurse_Patient1` FOREIGN KEY (`Patient_idPatient`) REFERENCES `patient` (`idPatient`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
