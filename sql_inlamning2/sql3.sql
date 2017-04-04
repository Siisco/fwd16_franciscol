-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 04, 2017 at 04:02 PM
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
-- Table structure for table `medicin`
--

CREATE TABLE IF NOT EXISTS `medicin` (
  `idMedicin` int(11) NOT NULL,
  `medName` varchar(45) DEFAULT NULL,
  `DosageML` int(11) DEFAULT NULL,
  `Cures` varchar(45) DEFAULT NULL,
  `Patient_idPatient` int(11) NOT NULL,
  `Diagnos_idDiagnos` int(11) NOT NULL,
  `Diagnos_Patient_idPatient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `medicin`
--

INSERT INTO `medicin` (`medName`, `DosageML`, `Cures`) VALUES
(A, 10, 'Cancer'),
(B, 100, 'Rabies'),
(C, 50, 'Flu'),
(D, 20, 'HIV');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `medicin`
--
ALTER TABLE `medicin`
  ADD PRIMARY KEY (`idMedicin`,`Diagnos_idDiagnos`,`Diagnos_Patient_idPatient`),
  ADD KEY `fk_Medicin_Patient1_idx` (`Patient_idPatient`),
  ADD KEY `fk_Medicin_Diagnos1_idx` (`Diagnos_idDiagnos`,`Diagnos_Patient_idPatient`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `medicin`
--
ALTER TABLE `medicin`
  ADD CONSTRAINT `fk_Medicin_Diagnos1` FOREIGN KEY (`Diagnos_idDiagnos`, `Diagnos_Patient_idPatient`) REFERENCES `diagnos` (`idDiagnos`, `Patient_idPatient`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Medicin_Patient1` FOREIGN KEY (`Patient_idPatient`) REFERENCES `patient` (`idPatient`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
