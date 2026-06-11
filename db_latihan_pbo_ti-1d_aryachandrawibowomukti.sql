-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 11, 2026 at 07:15 AM
-- Server version: 8.0.30
-- PHP Version: 8.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_latihan_pbo_ti-1d_aryachandrawibowomukti`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_tiket`
--

CREATE TABLE `tabel_tiket` (
  `id_tiket` int NOT NULL,
  `nama_film` varchar(150) NOT NULL,
  `jadwal_tayang` datetime NOT NULL,
  `jumlah_kursi` int NOT NULL,
  `harga_dasar_tiket` decimal(10,2) NOT NULL,
  `jenis_studio` enum('Regular','IMAX','Velvet') NOT NULL,
  `tipe_audio` varchar(50) DEFAULT NULL,
  `lokasi_baris` varchar(10) DEFAULT NULL,
  `kacamata_3d_id` varchar(20) DEFAULT NULL,
  `efek_gerak_fitur` tinyint(1) DEFAULT NULL,
  `bantal_selimut_pack` tinyint(1) DEFAULT NULL,
  `layanan_butler` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tabel_tiket`
--

INSERT INTO `tabel_tiket` (`id_tiket`, `nama_film`, `jadwal_tayang`, `jumlah_kursi`, `harga_dasar_tiket`, `jenis_studio`, `tipe_audio`, `lokasi_baris`, `kacamata_3d_id`, `efek_gerak_fitur`, `bantal_selimut_pack`, `layanan_butler`) VALUES
(1, 'The Marvels', '2026-06-12 14:00:00', 100, 45000.00, 'Regular', 'Dolby 7.1', 'A1', NULL, 0, NULL, NULL),
(2, 'Petualangan Sherina 3', '2026-06-12 16:30:00', 100, 45000.00, 'Regular', 'Dolby 7.1', 'B2', NULL, 0, NULL, NULL),
(3, 'Kisah Horor', '2026-06-13 19:00:00', 100, 40000.00, 'Regular', 'Standard', 'C3', NULL, 0, NULL, NULL),
(4, 'Animation Fun', '2026-06-13 12:00:00', 100, 35000.00, 'Regular', 'Standard', 'D4', NULL, 0, NULL, NULL),
(5, 'Documentary Nature', '2026-06-14 10:00:00', 100, 30000.00, 'Regular', 'Standard', 'E5', NULL, 0, NULL, NULL),
(6, 'Romance 101', '2026-06-14 15:00:00', 100, 45000.00, 'Regular', 'Dolby 7.1', 'F1', NULL, 0, NULL, NULL),
(7, 'Action Packed', '2026-06-15 20:00:00', 100, 50000.00, 'Regular', 'Dolby 7.1', 'G2', NULL, 0, NULL, NULL),
(8, 'Avatar 3', '2026-06-12 18:00:00', 200, 85000.00, 'IMAX', 'IMAX Immersive', 'H1', '3D-001', 1, NULL, NULL),
(9, 'Dune Part Three', '2026-06-13 20:00:00', 200, 90000.00, 'IMAX', 'IMAX Immersive', 'H2', '3D-002', 1, NULL, NULL),
(10, 'Interstellar Re-run', '2026-06-14 16:00:00', 200, 75000.00, 'IMAX', 'IMAX Immersive', 'H3', '3D-003', 1, NULL, NULL),
(11, 'Super Hero Epic', '2026-06-15 14:00:00', 200, 80000.00, 'IMAX', 'IMAX Immersive', 'H4', '3D-004', 1, NULL, NULL),
(12, 'Nature Doc IMAX', '2026-06-16 11:00:00', 200, 70000.00, 'IMAX', 'IMAX Immersive', 'H5', '3D-005', 1, NULL, NULL),
(13, 'Sci-Fi Odyssey', '2026-06-16 19:00:00', 200, 85000.00, 'IMAX', 'IMAX Immersive', 'H6', '3D-006', 1, NULL, NULL),
(14, 'Space Exploration', '2026-06-17 13:00:00', 200, 75000.00, 'IMAX', 'IMAX Immersive', 'H7', '3D-007', 1, NULL, NULL),
(15, 'Luxury Night', '2026-06-12 21:00:00', 40, 150000.00, 'Velvet', 'Dolby Atmos', 'A1', NULL, 0, 1, 1),
(16, 'The Classic Movie', '2026-06-13 21:00:00', 40, 150000.00, 'Velvet', 'Dolby Atmos', 'A2', NULL, 0, 1, 1),
(17, 'Golden Age Films', '2026-06-14 21:00:00', 40, 160000.00, 'Velvet', 'Dolby Atmos', 'A3', NULL, 0, 1, 1),
(18, 'Premiere Night', '2026-06-15 21:00:00', 40, 200000.00, 'Velvet', 'Dolby Atmos', 'A4', NULL, 0, 1, 1),
(19, 'Romantic Dinner Set', '2026-06-16 21:00:00', 40, 180000.00, 'Velvet', 'Dolby Atmos', 'A5', NULL, 0, 1, 1),
(20, 'Private Showing', '2026-06-17 21:00:00', 40, 250000.00, 'Velvet', 'Dolby Atmos', 'A6', NULL, 0, 1, 1),
(21, 'Midnight Mystery', '2026-06-18 21:00:00', 40, 150000.00, 'Velvet', 'Dolby Atmos', 'A7', NULL, 0, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_tiket`
--
ALTER TABLE `tabel_tiket`
  ADD PRIMARY KEY (`id_tiket`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_tiket`
--
ALTER TABLE `tabel_tiket`
  MODIFY `id_tiket` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
