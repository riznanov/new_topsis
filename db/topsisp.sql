-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2019 at 10:58 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `topsisp`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternatif`
--

CREATE TABLE IF NOT EXISTS `alternatif` (
`id_alternatif` int(11) NOT NULL,
  `kode_karyawan` varchar(30) NOT NULL,
  `alternatif` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `alamat` varchar(1024) DEFAULT NULL,
  `k1` int(11) NOT NULL,
  `k2` int(11) NOT NULL,
  `k3` int(11) NOT NULL,
  `k4` int(11) NOT NULL,
  `k5` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `kode_karyawan`, `alternatif`, `jabatan`, `alamat`, `k1`, `k2`, `k3`, `k4`, `k5`) VALUES
(7, '6203028', 'Bantu Budi Riyana', 'Staff', 'Jeruk Manis RT 12/ Rw 04', 3, 3, 2, 3, 4),
(8, '6405018', 'Suhartana', 'Staff', 'Gondang Rawe Rt 013/ Rw 002', 5, 3, 2, 3, 3),
(9, '6303039', 'Suroto', 'Staff', 'Tempel Rt 042/Rw 012', 3, 4, 3, 4, 4),
(10, '6510061', 'Dimyati', 'Staff', 'Jln. Domba No.12', 5, 3, 2, 5, 4),
(15, '6203014', 'Ridho Maulana', 'Staff', ' JL. JENDERAL SUDIRMAN NO 6', 4, 3, 1, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE IF NOT EXISTS `kriteria` (
`id_kriteria` int(11) NOT NULL,
  `kriteria` varchar(50) NOT NULL,
  `kepentingan` int(11) NOT NULL,
  `cost_benefit` varchar(7) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `kriteria`, `kepentingan`, `cost_benefit`) VALUES
(1, 'Kedisiplinan', 5, 'benefit'),
(2, 'Kepribadian', 4, 'benefit'),
(3, 'Loyalitas', 4, 'benefit'),
(4, 'Kompeten', 4, 'benefit'),
(5, 'Masa Kerja', 3, 'benefit');

-- --------------------------------------------------------

--
-- Table structure for table `sub_kriteria`
--

CREATE TABLE IF NOT EXISTS `sub_kriteria` (
`id_sub_kriteria` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `sub_kriteria` varchar(50) NOT NULL,
  `skor` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_kriteria`
--

INSERT INTO `sub_kriteria` (`id_sub_kriteria`, `id_kriteria`, `sub_kriteria`, `skor`) VALUES
(1, 1, '0 - 20', 1),
(2, 1, '21 - 40', 2),
(3, 2, '61 - 80', 4),
(4, 2, '21 - 40', 2),
(5, 3, '0 - 20', 1),
(6, 3, '41 - 60', 3),
(7, 4, '81 - 100', 5),
(8, 4, '61 - 80', 4),
(9, 1, '41 - 60', 3),
(10, 2, '41 - 60', 3),
(11, 3, '21 - 40', 2),
(12, 5, ' 1 - 4 Tahun', 1),
(13, 5, '5 - 8 Tahun', 2),
(14, 5, '9 - 12 Tahun', 3),
(15, 5, '12 - 16 Tahun', 4),
(17, 1, '61 - 80', 4),
(18, 2, '0 - 20', 1),
(19, 3, '61 - 80', 4),
(20, 4, '21 - 40', 2),
(21, 4, '0 - 20', 1),
(22, 1, '81 - 100', 5),
(23, 2, '81 - 100', 5),
(24, 3, '81 - 100', 5),
(25, 4, '41 - 60', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(256) NOT NULL,
  `level` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user`, `pass`, `level`) VALUES
(1, 'admin', 'admin', 'manager'),
(2, 'puguh', 'puguh', 'staff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternatif`
--
ALTER TABLE `alternatif`
 ADD PRIMARY KEY (`id_alternatif`), ADD UNIQUE KEY `alternatif` (`alternatif`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
 ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
 ADD PRIMARY KEY (`id_sub_kriteria`), ADD KEY `id_kriteria` (`id_kriteria`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternatif`
--
ALTER TABLE `alternatif`
MODIFY `id_alternatif` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
MODIFY `id_sub_kriteria` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
ADD CONSTRAINT `sub_kriteria_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
