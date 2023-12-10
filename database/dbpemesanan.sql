-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2023 at 01:19 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpemesanan`
--

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id` int(50) NOT NULL,
  `id_menu` varchar(50) NOT NULL,
  `jumlah` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `komen` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id`, `nama`, `komen`) VALUES
(18, 'slfk', 'kaj');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pemesanan` int(50) NOT NULL,
  `nama_pemesan` varchar(50) NOT NULL DEFAULT '',
  `tanggal_pemesanan` date NOT NULL,
  `total_belanja` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id_pemesanan`, `nama_pemesan`, `tanggal_pemesanan`, `total_belanja`) VALUES
(78, 'user', '2023-12-10', 10000),
(79, 'user', '2023-12-10', 65000);

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan_produk`
--

CREATE TABLE `pemesanan_produk` (
  `id_pemesanan_produk` int(50) NOT NULL,
  `id_pemesanan` int(50) NOT NULL,
  `id_menu` varchar(50) NOT NULL,
  `jumlah` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pemesanan_produk`
--

INSERT INTO `pemesanan_produk` (`id_pemesanan_produk`, `id_pemesanan`, `id_menu`, `jumlah`) VALUES
(102, 78, '26', 1),
(103, 79, '28', 5);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_menu` int(50) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `harga` int(50) NOT NULL,
  `deskripsi` text NOT NULL DEFAULT '---',
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_menu`, `nama_menu`, `harga`, `deskripsi`, `gambar`) VALUES
(24, 'Pisan Ijo', 12000, '', '3.jpg'),
(26, 'Choco Strawberry', 10000, '', '2.jpg'),
(28, 'Orange Zuzuzu', 13000, '', '7.jpg'),
(29, 'Creamy Strawberry', 3000, '', '8.jpg'),
(30, 'Kopi Cincau', 10000, '', 'eskopi.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `nama_lengkap` varchar(25) NOT NULL,
  `jenis_kelamin` varchar(25) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(25) NOT NULL,
  `hp` varchar(25) NOT NULL,
  `status` enum('admin','user','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama_lengkap`, `jenis_kelamin`, `tanggal_lahir`, `alamat`, `hp`, `status`) VALUES
(7, 'Ardian Firmansyah', 'ardian', 'Ardian Firmansyah', 'Laki-Laki', '2023-10-28', 'blado', '08212122', 'admin'),
(8, 'user', 'user123', 'user', 'Laki-Laki', '2023-10-28', 'kromengan', '0824764', 'user'),
(9, '', '', '', '', '0000-00-00', '', '', ''),
(10, '', '', '', '', '0000-00-00', '', '', ''),
(11, '', '', '', '', '0000-00-00', '', '', ''),
(12, '', '', '', '', '0000-00-00', '', '', ''),
(13, 'ardi', 'ardian123', 'ardian123', 'Laki-Laki', '2023-11-03', 'blado', '08212122', 'user'),
(14, 'ardi', 'ardian123', 'user', 'Laki-Laki', '2023-11-03', 'blado', '08212122', 'user'),
(15, 'Ardian F', 'ardian', 'Ardian Firmansyah', 'Laki-Laki', '2007-01-26', 'kedungpendaringan', '08123456789', 'user'),
(16, 'ardiifh', 'ardi', 'ardian123', 'Laki-Laki', '2008-01-07', 'kedungpendaringan', '08212122', 'user'),
(17, 'agha', '123', 'agha putra rahma', '', '0000-00-00', '', '', ''),
(18, 'agha', '1234', 'ag', 'Laki-Laki', '2023-12-29', 'sad', '132', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`);

--
-- Indexes for table `pemesanan_produk`
--
ALTER TABLE `pemesanan_produk`
  ADD PRIMARY KEY (`id_pemesanan_produk`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_menu`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pemesanan` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `pemesanan_produk`
--
ALTER TABLE `pemesanan_produk`
  MODIFY `id_pemesanan_produk` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_menu` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
