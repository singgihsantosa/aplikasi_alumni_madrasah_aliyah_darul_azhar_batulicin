-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 22, 2019 at 09:00 PM
-- Server version: 10.3.14-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplikasi_alumni_madrasah_darul_azhar_batulicin`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_alumni`
--

CREATE TABLE `data_alumni` (
  `Nis` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_lengkap` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurusan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_rumah` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_sekarang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp_alumni` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `angkatan_alumni` int(10) NOT NULL,
  `lulusan_alumni` int(10) NOT NULL,
  `nama_ayah` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ibu` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_ortu` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp_ortu` int(15) NOT NULL,
  `foto` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_alumni`
--

INSERT INTO `data_alumni` (`Nis`, `nama_lengkap`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `agama`, `jurusan`, `alamat_rumah`, `alamat_sekarang`, `no_hp_alumni`, `pekerjaan`, `email`, `angkatan_alumni`, `lulusan_alumni`, `nama_ayah`, `nama_ibu`, `alamat_ortu`, `no_hp_ortu`, `foto`) VALUES
('123', 'Aldi', 'Banjarmasin', '2019-04-20', 'Laki-Laki', 'ISLAM', 'IPA', 'Mahligai', 'Mahligai', '0856453423', 'wirausaha dipasar', 'aldi@aldi.com', 123, 123, 'ok', 'ok', 'ok', 9, 'Img-155855800942.png'),
('12334541', 'Karma Agane', 'Jepang', '2019-04-24', 'Laki-Laki', 'Islam', 'IPA', 'jln banjarmasin selatan', 'jln banjarmasin selatan', '0877236253', '', 'karma@gmai.com', 2014, 2018, 'Korusaki', 'Nani', 'jln gambut', 877352313, 'Img-155610410773.jpg'),
('123456', 'zoro', 'Banjarmasin', '2019-05-01', 'Laki-Laki', 'Islam', 'IPS', 'jln banjarmasin selatan', 'jln banjarmasin selatan', '0856432232', 'wirausaha', 'zoro@gmail.com', 2014, 2018, 'Ziro', 'Roro', 'bontok', 864534322, 'Img-155855147379.png'),
('444', 'sarif', 'tanjun', '2019-04-20', 'Laki-Laki', 'ISLAM', 'IPA', 'ok', 'ok', 'ok', '', 'sarif@sarif.com', 123, 123, 'ok', 'ok', 'ok', 8, 'Img-155575130163.jpg'),
('99999', 'kurniawan', 'bontok', '2019-05-01', 'Laki-Laki', 'Islam', 'IPA', 'jln bontok selatan', 'jln banjarmasin selatan', '08632323', '', 'kur@gmail.com', 2017, 2012, 'ayah', 'ibu', 'bontok', 85645634, 'Img-155810677530.png');

-- --------------------------------------------------------

--
-- Table structure for table `data_berita`
--

CREATE TABLE `data_berita` (
  `id_berita` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_berita` date NOT NULL,
  `id_kategori` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kategori` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi_berita` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hari` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_pelaksanaan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_berita`
--

INSERT INTO `data_berita` (`id_berita`, `tgl_berita`, `id_kategori`, `nama_kategori`, `keterangan`, `judul`, `isi_berita`, `gambar`, `hari`, `tempat_pelaksanaan`) VALUES
('B111', '2019-04-24', 'K333', 'Politik', 'politik', 'politik pemilu', 'kecurangan pemilu dimana mana terjadi', 'Img-155610367670.jpg', 'rabu', 'banjarmasin'),
('B123', '2019-04-15', '123', 'sport', 'sport', 'Sport extreme', 'sport extreme saat ini telah banyak diminati oleh para anak remaja', 'Img-155575130161.jpg', 'senin', 'stadion');

-- --------------------------------------------------------

--
-- Table structure for table `data_pekerjaan`
--

CREATE TABLE `data_pekerjaan` (
  `id_pekerjaan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nis` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pekerjaan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_pekerjaan`
--

INSERT INTO `data_pekerjaan` (`id_pekerjaan`, `nis`, `nama_pekerjaan`, `jabatan`) VALUES
('P123', '8734231', 'PT Adaro', 'Adminintrator');

-- --------------------------------------------------------

--
-- Table structure for table `data_perusahaan`
--

CREATE TABLE `data_perusahaan` (
  `id_perusahaan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nis` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_perusahaan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_perusahaan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_perusahaan`
--

INSERT INTO `data_perusahaan` (`id_perusahaan`, `nis`, `nama_perusahaan`, `alamat_perusahaan`) VALUES
('PH123', '5341212', 'Pt Adaro', 'jl ahmad yani');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(100) NOT NULL,
  `nama_alumni` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_berita` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `komentar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `nama_alumni`, `id_berita`, `komentar`) VALUES
(1, 'dido', 'B123', 'hoax'),
(2, 'kimi', 'B123', 'curang');

-- --------------------------------------------------------

--
-- Table structure for table `login_alumni`
--

CREATE TABLE `login_alumni` (
  `id` int(50) NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hak_akses` int(5) NOT NULL,
  `nis` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login_alumni`
--

INSERT INTO `login_alumni` (`id`, `username`, `password`, `hak_akses`, `nis`) VALUES
(1, 'admin', '$2y$10$QxKb4/AO6BvNVCFEYgL1keSx3WSmUf2N0O/.iajNlngbtC9uze2BC', 2, ''),
(3, '123', '$2y$10$T/PKpXuhCMm/tcM4eW8Bwu5aV7YHlXbAEek4QNn6daGcKo9fV2T6K', 1, '123'),
(4, '99999', '$2y$10$5N2EdfeQU7aRs7vowI5YC.L1T5jSQf28xw6hRKp7FjP6pBngTo5eS', 1, '99999'),
(6, '444', '$2y$10$7.6d81ik8RTWCyK4ct0XeO2taOwIKQAKiA/1pT2bMFXOwmYo591Im', 1, '444');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_alumni`
--
ALTER TABLE `data_alumni`
  ADD UNIQUE KEY `Nis` (`Nis`);

--
-- Indexes for table `data_berita`
--
ALTER TABLE `data_berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `data_pekerjaan`
--
ALTER TABLE `data_pekerjaan`
  ADD PRIMARY KEY (`id_pekerjaan`);

--
-- Indexes for table `data_perusahaan`
--
ALTER TABLE `data_perusahaan`
  ADD PRIMARY KEY (`id_perusahaan`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `login_alumni`
--
ALTER TABLE `login_alumni`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login_alumni`
--
ALTER TABLE `login_alumni`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
