-- phpMyAdmin SQL Dump
-- version 4.9.1deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 29, 2019 at 07:51 PM
-- Server version: 8.0.18-0ubuntu0.19.10.1
-- PHP Version: 7.3.11-0ubuntu0.19.10.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uts`
--

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama_depan` varchar(20) NOT NULL,
  `nama_belakang` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` varchar(50) NOT NULL,
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama_depan`, `nama_belakang`, `email`, `username`, `password`, `level`, `gambar`) VALUES
(1, 'Ferdy', 'Barliansyah', 'rocker.hunt@gmail.com', 'Ferdy', '1234', 'Administrator', 'me1.jpg'),
(3, 'Emiliana', 'Fitriani', 'emilanafit@gmail.com', 'Emilafit', '1234', 'Administrator', 'LOGO_STMIK_LOMBOK1.png'),
(4, 'Joana', 'Dewi', 'joanadewi@gmail.com', 'Jonadewi', '1234', 'Staff', 'LOGO_STMIK_LOMBOK6.png'),
(5, 'Lalu', 'Saiful', 'saifullalu@gmail.com', 'Lalusaiful', '1234', 'Staff', 'LOGO_STMIK_LOMBOK3.png'),
(6, 'Ahmad', 'Ayadi', 'Amdayadi@gmail.com', 'ahmadaya', '1234', 'Staff', 'LOGO_STMIK_LOMBOK4.png'),
(7, 'Sani', 'Sabila', 'sanisablila@gmail.com', 'sanibila', '1234', 'Staff', 'LOGO_STMIK_LOMBOK5.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
