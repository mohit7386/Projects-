-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2022 at 05:33 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farmerbuddy`
--
CREATE Database farmerbuddy;
use farmerbuddy;
-- --------------------------------------------------------

--
-- Table structure for table `crop`
--

CREATE TABLE `crop` (
  `id` int(255) NOT NULL,
  `Season` varchar(255) NOT NULL,
  `SoilName` varchar(255) NOT NULL,
  `Nitro` varchar(255) NOT NULL,
  `Phos` varchar(255) NOT NULL,
  `Fer_for_hect` varchar(255) NOT NULL,
  `cost_of_fert` varchar(255) NOT NULL,
  `Fert_for_year` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crop`
--

INSERT INTO `crop` (`id`, `Season`, `SoilName`, `Nitro`, `Phos`, `Fer_for_hect`, `cost_of_fert`, `Fert_for_year`) VALUES
(1, 'Rabi', 'BlackSoil', '50%', '20%', '2', '1500', '5'),
(2, 'Rabi', 'AlluvialSoil', '20%', '10%', '6', '100', '51'),
(3, 'Rabi', 'RedSoil', '33%', '10%', '2', '1500', '5'),
(4, 'Rabi', 'LateriteSoil', '20%', '42%', '2', '1500', '5'),
(5, 'Rabi', 'DessertSoil', '40%', '80%', '2', '1500', '5'),
(6, 'Kharif', 'BlackSoil', '10%', '10%', '2', '1800', '5'),
(7, 'Kharif', 'AllovialSoil', '20%', '21%', '7', '4500', '1'),
(8, 'Kharif', 'RedSoil', '30%', '22%', '20', '2500', '3'),
(9, 'Kharif', 'LateriteSoil', '33%', '21%', '12', '1500', '2'),
(10, 'Kharif', 'DessertSoil', '36%', '25%', '27', '1600', '9'),
(11, 'Zaid', 'BlackSoil', '70%', '60%', '30', '1800', '4'),
(12, 'Zaid', 'AllovialSoil', '30%', '30%', '56', '2300', '6'),
(13, 'Zaid', 'RedSoil', '43%', '70%', '7', '5600', '15'),
(14, 'Zaid', 'LateriteSoil', '23%', '30%', '79', '9660', '4'),
(15, 'Zaid', 'DessertSoil', '56%', '20%', '60', '4900', '5');

-- --------------------------------------------------------

--
-- Table structure for table `cropregister`
--

CREATE TABLE `cropregister` (
  `cp_id` int(255) NOT NULL,
  `txt_name` varchar(255) NOT NULL,
  `txt_phnumber` varchar(255) NOT NULL,
  `txt_season` varchar(255) NOT NULL,
  `txt_soil` varchar(255) NOT NULL,
  `txt_nitrogen` varchar(255) NOT NULL,
  `txt_phosphrous` varchar(255) NOT NULL,
  `txt_Fer_hectare` varchar(255) NOT NULL,
  `txt_ct_fert` varchar(255) NOT NULL,
  `txt_fer_year` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cropregister`
--

INSERT INTO `cropregister` (`cp_id`, `txt_name`, `txt_phnumber`, `txt_season`, `txt_soil`, `txt_nitrogen`, `txt_phosphrous`, `txt_Fer_hectare`, `txt_ct_fert`, `txt_fer_year`) VALUES
(1, 'rishabh', '789789789', 'winter', 'black', '50', '52', '23', '2', '5'),
(2, 'rishabh', '7897897889', 'rabii', 'black', '52', '12', '22', '21', '12');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `firstname` varchar(10) NOT NULL,
  `lastname` varchar(12) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `land` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `firstname`, `lastname`, `email`, `password`, `phone`, `land`) VALUES
(1, 'Rishabh', 'saini', 'demo@gmail.com', '123', '1231231231', '5'),
(5, 'demo', 'demo', 'demo@gmail.com', 'Rish@#4', '123123122', '5'),
(6, 'rishabh', 'saini', 'demo@gmail.com', 'Rishabh@123', '123132', '5'),
(7, 'rishabh', 'saini', 'demo@gmail.com', 'Rishabh@123', '11122112', '5'),
(8, 'rishabh', 'saini', 'abc@gmail.com', 'Rishabh@123', '123123', '5'),
(9, 'Rishabh', 'Saini', 'rishabh@gmail.com', 'Rishabh@123', '123123', '5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crop`
--
ALTER TABLE `crop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cropregister`
--
ALTER TABLE `cropregister`
  ADD PRIMARY KEY (`cp_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crop`
--
ALTER TABLE `crop`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cropregister`
--
ALTER TABLE `cropregister`
  MODIFY `cp_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
