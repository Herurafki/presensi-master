-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2024 at 06:28 AM
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
-- Database: `presensi8`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id` int(11) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `homebase` enum('TRPL','MI','TKOM') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id`, `nip`, `nama`, `jenis_kelamin`, `homebase`) VALUES
(2, '1029304018924', 'Roni Putra', 'L', 'TRPL'),
(6, '1010832838125', 'Yulherniwati', 'P', 'TRPL'),
(7, '1098309812313', 'Aldo Erianda', 'L', 'TRPL'),
(8, '1298309820284', 'Ulya Ilhami Arsyah', 'L', 'TKOM'),
(9, '1023298390203', 'Ideva Gaputra', 'L', 'TKOM'),
(10, '1028928312831', 'Yori Adi Atma', 'L', 'MI'),
(11, '1009207372012', 'Hendra Rotama', 'L', 'MI'),
(12, '1023283822924', 'Defni', 'P', 'TRPL'),
(13, '1822109831807', 'Rita Afyeni', 'P', 'MI');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `kode_mk` int(11) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `hari` varchar(50) NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id`, `id_kelas`, `kode_mk`, `prodi`, `hari`, `jam_mulai`, `jam_selesai`) VALUES
(13, 4, 3304, 'MI', 'Senin', '07:30:00', '10:00:00'),
(14, 4, 3206, 'MI', 'Senin', '10:15:00', '13:50:00'),
(15, 4, 3307, 'MI', 'Selasa', '13:00:00', '16:35:00'),
(16, 4, 3306, 'MI', 'Rabu', '07:30:00', '10:00:00'),
(17, 4, 3205, 'MI', 'Rabu', '13:50:00', '16:35:00'),
(18, 4, 3305, 'MI', 'Kamis', '07:30:00', '10:00:00'),
(19, 4, 3206, 'MI', 'Kamis', '10:15:00', '13:50:00'),
(20, 4, 3207, 'MI', 'Kamis', '13:55:00', '16:35:00'),
(21, 4, 3204, 'MI', 'Jumat', '07:30:00', '10:00:00'),
(22, 4, 3308, 'MI', 'Jumat', '10:15:00', '13:50:00'),
(23, 4, 3304, 'MI', 'Jumat', '13:55:00', '15:30:00'),
(24, 5, 3205, 'MI', 'Senin', '10:15:00', '11:55:00'),
(25, 5, 3306, 'MI', 'Senin', '13:50:00', '16:35:00'),
(26, 5, 3307, 'MI', 'Selasa', '08:20:00', '11:55:00'),
(27, 5, 3304, 'MI', 'Selasa', '13:50:00', '16:35:00'),
(28, 5, 3205, 'MI', 'Rabu', '07:30:00', '10:00:00'),
(29, 5, 3206, 'MI', 'Rabu', '10:15:00', '13:50:00'),
(30, 5, 3204, 'MI', 'Rabu', '13:55:00', '15:30:00'),
(31, 5, 3207, 'MI', 'Kamis', '07:30:00', '10:00:00'),
(32, 5, 3204, 'MI', 'Kamis', '10:15:00', '13:50:00'),
(33, 5, 3305, 'MI', 'Jumat', '07:30:00', '10:00:00'),
(34, 5, 3206, 'MI', 'Jumat', '10:15:00', '13:50:00'),
(36, 5, 3308, 'MI', 'Sabtu', '09:10:00', '11:55:00');

-- --------------------------------------------------------

--
-- Table structure for table `kehadiran`
--

CREATE TABLE `kehadiran` (
  `id` int(11) NOT NULL,
  `id_mhs` bigint(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(50) NOT NULL DEFAULT 'Alfa',
  `latitude` decimal(10,6) NOT NULL,
  `longitude` decimal(10,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kehadiran`
--

INSERT INTO `kehadiran` (`id`, `id_mhs`, `id_jadwal`, `tanggal`, `keterangan`, `latitude`, `longitude`) VALUES
(26, 2201091515, 14, '2024-01-08', 'Hadir', 0.000000, 0.000000),
(31, 2201092011, 15, '2024-01-09', 'Hadir', 0.000000, 0.000000),
(32, 2201091515, 15, '2024-01-09', 'Hadir', 0.000000, 0.000000),
(33, 2201092011, 17, '2024-02-06', 'Alfa', 0.000000, 0.000000),
(34, 2201092011, 16, '2024-02-06', 'Izin', 0.000000, 0.000000),
(35, 2201092011, 17, '2024-01-09', 'Alfa', 0.000000, 0.000000),
(37, 2201091010, 18, '2024-01-11', 'Sakit', 0.000000, 0.000000),
(38, 2201091515, 16, '2024-01-10', 'Hadir', 0.000000, 0.000000),
(39, 2201091010, 29, '2024-01-10', 'Hadir', 0.000000, 0.000000);

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(11) NOT NULL,
  `nama_kelas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `nama_kelas`) VALUES
(1, '1A'),
(2, '1B'),
(3, '1C'),
(4, '2A'),
(5, '2B'),
(6, '2C'),
(7, '3A'),
(8, '3B'),
(9, '3C');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` bigint(11) NOT NULL,
  `nama` varchar(80) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `tgl_lahir` date NOT NULL,
  `prodi` enum('TRPL','MI','TKOM') NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `jenis_kelamin`, `tgl_lahir`, `prodi`, `id_kelas`, `alamat`) VALUES
(2201091010, 'Mauizati', 'L', '2024-01-23', 'MI', 5, 'Padang'),
(2201091515, 'Jennie', 'P', '2024-01-06', 'MI', 4, 'Padang'),
(2201092011, 'Heru ', 'L', '2003-02-11', 'TRPL', 6, 'Padang');

-- --------------------------------------------------------

--
-- Table structure for table `matkul`
--

CREATE TABLE `matkul` (
  `kode_mk` int(11) NOT NULL,
  `nama_matkul` varchar(50) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `id_ruang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `matkul`
--

INSERT INTO `matkul` (`kode_mk`, `nama_matkul`, `id_dosen`, `id_ruang`) VALUES
(3204, 'Interaksi Manusia dan Komputer', 12, 207),
(3205, 'Jaringan Komputer', 9, 304),
(3206, 'Rekayasa Perangkat Lunak', 6, 201),
(3207, 'Desain Antar Muka', 11, 306),
(3304, 'Pemrograman Mobile', 2, 302),
(3305, 'Pemrograman Web Dinamis', 10, 301),
(3306, 'Pemrograman Dekstop', 8, 301),
(3307, 'Sistem Informasi Geografis', 7, 303),
(3308, 'Perancangan Sistem Informasi', 13, 203);

-- --------------------------------------------------------

--
-- Table structure for table `ruang`
--

CREATE TABLE `ruang` (
  `id` int(11) NOT NULL,
  `nama_ruang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ruang`
--

INSERT INTO `ruang` (`id`, `nama_ruang`) VALUES
(201, 'Lab Mobile'),
(202, 'Lab Perakitan'),
(203, 'Lab AI'),
(206, 'Lab SI'),
(207, 'Ruang A'),
(208, 'Ruang B'),
(301, 'Lab Pemrograman 1'),
(302, 'Lab Pemrograman 2'),
(303, 'Lab Jaringan 1'),
(304, 'Lab Jaringan 2'),
(306, 'Lab Multimedia'),
(307, 'Lab Sistem Informasi');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nim_mahasiswa` varchar(20) NOT NULL,
  `nama` varchar(80) NOT NULL,
  `password` varchar(33) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nim_mahasiswa`, `nama`, `password`, `level`) VALUES
(1, '0', 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 'admin'),
(23, '1029304018924', 'Roni Putra', '827ccb0eea8a706c4c34a16891f84e7b', 'user'),
(25, '2201091515', 'Jennie', '827ccb0eea8a706c4c34a16891f84e7b', 'user'),
(26, '2201092011', 'Heru ', '827ccb0eea8a706c4c34a16891f84e7b', 'user'),
(27, '2201091010', 'Mauizati', '827ccb0eea8a706c4c34a16891f84e7b', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `jadwal_ibfk_6` (`kode_mk`);

--
-- Indexes for table `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_jadwal` (`id_jadwal`),
  ADD KEY `id_mhs` (`id_mhs`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`kode_mk`),
  ADD KEY `id_dosen` (`id_dosen`),
  ADD KEY `id_ruang` (`id_ruang`);

--
-- Indexes for table `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `kehadiran`
--
ALTER TABLE `kehadiran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_2` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `jadwal_ibfk_6` FOREIGN KEY (`kode_mk`) REFERENCES `matkul` (`kode_mk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD CONSTRAINT `kehadiran_ibfk_1` FOREIGN KEY (`id_jadwal`) REFERENCES `jadwal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kehadiran_ibfk_2` FOREIGN KEY (`id_mhs`) REFERENCES `mahasiswa` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `matkul`
--
ALTER TABLE `matkul`
  ADD CONSTRAINT `matkul_ibfk_1` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `matkul_ibfk_2` FOREIGN KEY (`id_ruang`) REFERENCES `ruang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
