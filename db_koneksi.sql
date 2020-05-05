-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2020 at 07:28 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_koneksi`
--

-- --------------------------------------------------------

--
-- Table structure for table `detailhp`
--

CREATE TABLE `detailhp` (
  `id` char(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `merk` char(20) DEFAULT NULL,
  `ram` char(2) NOT NULL,
  `rom` char(3) DEFAULT NULL,
  `harga` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detailhp`
--

INSERT INTO `detailhp` (`id`, `nama`, `merk`, `ram`, `rom`, `harga`) VALUES
('1001', 'Xiaomi A1', 'Xiaomi', '4', '64', 2000000),
('1002', 'Xiaomi A2', 'Xiaomi', '4', '64', 2000000),
('1003', 'Xiaomi A3', 'Xiaomi', '4', '64', 2000000),
('1004', 'Xiaomi A4', 'Xiaomi', '4', '64', 2000000),
('1005', 'Xiaomi A5', 'Xiaomi', '4', '64', 2000000),
('2001', 'Oppo A1', 'Oppo', '4', '64', 2000000),
('2002', 'Oppo A2', 'Oppo', '4', '64', 2000000),
('2003', 'Oppo A3', 'Oppo', '4', '64', 2000000),
('2004', 'Oppo A4', 'Oppo', '4', '64', 2000000),
('2005', 'Oppo A5', 'Oppo', '4', '64', 2000000),
('3001', 'Realme A1', 'Realme', '4', '64', 2000000),
('3002', 'Realme A2', 'Realme', '4', '64', 2000000),
('3003', 'Realme A3', 'Realme', '4', '64', 2000000),
('3004', 'Realme A4', 'Realme', '4', '64', 2000000),
('3005', 'Realme A5', 'Realme', '4', '64', 2000000),
('4001', 'Samsung A1', 'Samsung', '4', '64', 2000000),
('4002', 'Samsung A2', 'Samsung', '4', '64', 2000000),
('4003', 'Samsung A3', 'Samsung', '4', '64', 2000000),
('4004', 'Samsung A4', 'Samsung', '4', '64', 2000000),
('4005', 'Samsung A5', 'Samsung', '4', '64', 2000000),
('5001', 'Iphone A1', 'Iphone', '4', '64', 12000000),
('5002', 'Iphone A2', 'Iphone', '4', '64', 12000000),
('5003', 'Iphone A3', 'Iphone', '4', '64', 12000000),
('5004', 'Iphone A4', 'Iphone', '4', '64', 12000000),
('5005', 'Iphone A5', 'Iphone', '4', '64', 12000000);

-- --------------------------------------------------------

--
-- Table structure for table `merk`
--

CREATE TABLE `merk` (
  `kode_merk` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `merk`
--

INSERT INTO `merk` (`kode_merk`) VALUES
('Iphone'),
('Oppo'),
('Realme'),
('Samsung'),
('Xiaomi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detailhp`
--
ALTER TABLE `detailhp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `merk` (`merk`);

--
-- Indexes for table `merk`
--
ALTER TABLE `merk`
  ADD PRIMARY KEY (`kode_merk`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detailhp`
--
ALTER TABLE `detailhp`
  ADD CONSTRAINT `merk` FOREIGN KEY (`merk`) REFERENCES `merk` (`kode_merk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
