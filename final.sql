-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 11, 2024 at 12:47 PM
-- Server version: 5.7.40
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final`
--

-- --------------------------------------------------------

--
-- Table structure for table `kustomer`
--

DROP TABLE IF EXISTS `kustomer`;
CREATE TABLE IF NOT EXISTS `kustomer` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `nik` int(16) DEFAULT NULL,
  `nama` char(100) DEFAULT NULL,
  `telp` char(20) DEFAULT NULL,
  `email` char(100) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `member` char(9) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kustomer`
--

INSERT INTO `kustomer` (`id`, `nik`, `nama`, `telp`, `email`, `alamat`, `member`) VALUES
(1, 12345, 'Rahem', '123', '123', '123', 'YES'),
(2, 1234567, 'Rahema', '1235', '1237', '1238', 'NO'),
(5, 1234569, 'Greaman', '081238709', 'reska@gmail.com', 'Jl. Reksadana', 'YES'),
(4, 12345, 'Rahemi', '123', '123', '123', 'YES');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
