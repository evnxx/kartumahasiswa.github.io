-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2021 at 03:39 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kartusiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `identitas`
--

CREATE TABLE `identitas` (
  `id` int(11) NOT NULL,
  `gambar` varchar(225) NOT NULL,
  `title` varchar(225) NOT NULL,
  `sekolah` varchar(225) NOT NULL,
  `kepsek` varchar(225) NOT NULL,
  `nip` varchar(225) NOT NULL,
  `jln` varchar(225) NOT NULL,
  `kel` varchar(225) NOT NULL,
  `kec` varchar(225) NOT NULL,
  `kab` varchar(225) NOT NULL,
  `prov` varchar(225) NOT NULL,
  `pos` varchar(225) NOT NULL,
  `telp` varchar(225) NOT NULL,
  `hp` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `web` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `identitas`
--

INSERT INTO `identitas` (`id`, `gambar`, `title`, `sekolah`, `kepsek`, `nip`, `jln`, `kel`, `kec`, `kab`, `prov`, `pos`, `telp`, `hp`, `email`, `web`) VALUES
(1, 'Logo.png', 'Kartu Pelajar', 'MTs AL-KHAIRAAT BOROKO', 'Rikson Mokodompis, S.Ag', '197202132010011006', 'WR. Supratman No. 167', 'Boroko Timur', 'Kaidipang', 'Bolaang Mongondow Utara', 'Sulawesi Utara', '95765', '081356107042', '085256651656', 'email@mtsalkhairaatboroko.com', 'mtsalkhairaatboroko.com');

-- --------------------------------------------------------

--
-- Table structure for table `lupa_password`
--

CREATE TABLE `lupa_password` (
  `id` int(11) NOT NULL,
  `nama_perusahaan` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `telp` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lupa_password`
--

INSERT INTO `lupa_password` (`id`, `nama_perusahaan`, `email`, `telp`) VALUES
(1, 'Yoyo Pudding', 'info@yoyopudding.com', '085266446655');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `link` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `link`) VALUES
(1, 'printkartupelajar'),
(2, 'printkartuperpus');

-- --------------------------------------------------------

--
-- Table structure for table `permintaan_akun`
--

CREATE TABLE `permintaan_akun` (
  `id` int(11) NOT NULL,
  `nama_perusahaan` varchar(225) NOT NULL,
  `nama_pemilik` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `telp` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stempel`
--

CREATE TABLE `stempel` (
  `id` int(11) NOT NULL,
  `gambar` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stempel`
--

INSERT INTO `stempel` (`id`, `gambar`) VALUES
(1, 'CAP.png');

-- --------------------------------------------------------

--
-- Table structure for table `tkapel`
--

CREATE TABLE `tkapel` (
  `id` int(11) NOT NULL,
  `gambar` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tkapel`
--

INSERT INTO `tkapel` (`id`, `gambar`) VALUES
(1, 'VARADILA-TALIB.png');

-- --------------------------------------------------------

--
-- Table structure for table `tkaper`
--

CREATE TABLE `tkaper` (
  `id` int(11) NOT NULL,
  `gambar` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tkaper`
--

INSERT INTO `tkaper` (`id`, `gambar`) VALUES
(1, 'Kartu Siswa1.png');

-- --------------------------------------------------------

--
-- Table structure for table `ttangan`
--

CREATE TABLE `ttangan` (
  `id` int(11) NOT NULL,
  `gambar` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ttangan`
--

INSERT INTO `ttangan` (`id`, `gambar`) VALUES
(1, 'TTD Kep.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `nis` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nisn` varchar(225) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tmp_lhr` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_lhr` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `jk` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `alamat` varchar(225) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `nis`, `nisn`, `nama_lengkap`, `tmp_lhr`, `tgl_lhr`, `jk`, `email`, `alamat`, `no_telp`, `gambar`, `level`, `blokir`, `id_session`) VALUES
('admin', 'admin', '', '', 'Administrator', '', '', '', 'laumait82@gmail.com', '', '081342313216', 'twh.png', 'admin', 'N', 'q173s8hs1jl04st35169ccl8o7');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lupa_password`
--
ALTER TABLE `lupa_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permintaan_akun`
--
ALTER TABLE `permintaan_akun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stempel`
--
ALTER TABLE `stempel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tkapel`
--
ALTER TABLE `tkapel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tkaper`
--
ALTER TABLE `tkaper`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ttangan`
--
ALTER TABLE `ttangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lupa_password`
--
ALTER TABLE `lupa_password`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permintaan_akun`
--
ALTER TABLE `permintaan_akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stempel`
--
ALTER TABLE `stempel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tkapel`
--
ALTER TABLE `tkapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tkaper`
--
ALTER TABLE `tkaper`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ttangan`
--
ALTER TABLE `ttangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
