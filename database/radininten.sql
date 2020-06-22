-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2020 at 05:45 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `radininten`
--

-- --------------------------------------------------------

--
-- Table structure for table `dokumen`
--

CREATE TABLE `dokumen` (
  `id` int(4) NOT NULL,
  `nomor_dokumen` varchar(100) CHARACTER SET latin1 NOT NULL,
  `nama_dokumen` varchar(100) CHARACTER SET latin1 NOT NULL,
  `tanggal_dokumen` date NOT NULL,
  `tujuan_dokumen` enum('kepala bandara','kepala koordinator') CHARACTER SET latin1 NOT NULL,
  `file_dokumen` varchar(1000) CHARACTER SET latin1 NOT NULL,
  `komentar` varchar(1000) CHARACTER SET latin1 DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dokumen`
--

INSERT INTO `dokumen` (`id`, `nomor_dokumen`, `nama_dokumen`, `tanggal_dokumen`, `tujuan_dokumen`, `file_dokumen`, `komentar`, `status`) VALUES
(53, '03/QC/20', 'Laporan Bulanan QC Bulan Maret', '2020-03-30', 'kepala bandara', 'file_dokumen/129851425_Laporan PKL a.n Margareta Oktaviani (1).pdf', 'yooo', 1),
(54, '03/AVSEC/20', 'Laporan Bulanan Maret', '2020-03-31', 'kepala koordinator', 'file_dokumen/307269072_Full PKL PRINT FIX ACC CETAK.pdf', 'lanjut', 1),
(55, '03/PKP-PK/20', 'Laporan Bulanan PKP-PK Bulan Maret', '2020-03-30', 'kepala koordinator', 'file_dokumen/1809581580_Laporan PKL a.n Margareta Oktaviani (1).pdf', '-tembusan salah\r\n-alamat salah', 0),
(56, '04/PKP-PK/20', 'Laporan Bulanan PKP-PK Bulan April', '2020-04-30', 'kepala koordinator', 'file_dokumen/263352854_Laporan PKL a.n Margareta Oktaviani (1).pdf', 'oke silahkan dilanjutkan', 1),
(57, '210/AU/31/2020', 'Pencatatan penemuan barang mencurigakan', '2020-06-11', 'kepala koordinator', 'file_dokumen/1201643111_DOK-20200128-084720-25.pdf', 'anda salah kirim kesaya. tidak bisa saya sah kan dokumen ini', 0),
(58, '123', 'laporan bulanan juni', '2020-06-11', 'kepala koordinator', 'file_dokumen/1056266769_ANALISIS PENGUKURAN KONSENTRASI KARBONMONOKSIDA (CO) PADA BREATHING ZONE PETUGAS PARKIR BASEMENT MALL KOTA BANDUNG 42-51.pdf', 'perbaiki bagian ini', 0),
(59, '210/AU/31/2020', 'aduh', '2020-06-11', 'kepala bandara', 'file_dokumen/732697362_ANALISIS PENGUKURAN KONSENTRASI KARBONMONOKSIDA (CO) PADA BREATHING ZONE PETUGAS PARKIR BASEMENT MALL KOTA BANDUNG 42-51.pdf', NULL, 0),
(60, '210/AU/31', 'ap', '2020-06-03', 'kepala koordinator', 'file_dokumen/277788493_ok.jpg', NULL, 0),
(61, 'AHU/21/31-45-21/111', 'PERMOHONAN PENAMBAHAN FASILITAS RADAR', '2020-06-18', 'kepala bandara', 'file_dokumen/683631383_SOP Seminar TA (1).pdf', NULL, 0),
(62, '210/AU/31/2020', 'Notam', '2020-05-18', 'kepala bandara', 'file_dokumen/268092496_SE Nomor 16 Tahun 2020.pdf', NULL, 0),
(63, '210/AU/31/202000', 'Pemindahan Existing Tower ATC', '2020-06-18', 'kepala bandara', 'file_dokumen/875463067_datasheet sensor ph tanah (3).pdf', NULL, 0),
(64, 'UM/31/2234/2020', 'tambah barang', '2020-06-30', 'kepala bandara', 'file_dokumen/1490958969_Distribusi pembimbing angk 2017.pdf', NULL, 0),
(65, '210/AU/31/20212', 'tambah data', '2020-07-30', 'kepala bandara', 'file_dokumen/912298760_Arjuna Satrio Wibowo_VerifTA.pdf', NULL, 0),
(67, '210/AU/31/2021/22', 'cobaaaaaaaaa', '2020-08-18', 'kepala bandara', 'file_dokumen/_datasheet sensor ph tanah (3).pdf', NULL, 0),
(68, '210/AU/31/20202223', 'coba lagi terus', '2020-06-25', 'kepala bandara', 'file_dokumen/_SOP Seminar TA (1).pdf', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(4) NOT NULL,
  `nip` varchar(20) CHARACTER SET latin1 NOT NULL,
  `nama` varchar(50) CHARACTER SET latin1 NOT NULL,
  `jabatan` varchar(20) CHARACTER SET latin1 NOT NULL,
  `unit` varchar(30) CHARACTER SET latin1 NOT NULL,
  `password` varchar(100) CHARACTER SET latin1 NOT NULL,
  `role` enum('kepala bandara','pegawai kampen','kepala koordinator','') CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nip`, `nama`, `jabatan`, `unit`, `password`, `role`) VALUES
(1, '1802071105990003', 'Staf Kampen', 'Staff Kampen', 'Kampen', 'password', 'pegawai kampen'),
(2, '1802071105990001', 'Kepala Bandara', 'kepala bandara', 'kepala ', 'password', 'kepala bandara'),
(3, '1802071105990002', 'Koord Kampen', 'kepala Koordinator', 'kampen', 'password', 'kepala koordinator'),
(4, '1802071105990004', 'staff kampen', 'Staff Kampen', 'kampen', 'password', 'pegawai kampen');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_pengiriman`
--

CREATE TABLE `riwayat_pengiriman` (
  `id_pengiriman` int(4) NOT NULL,
  `tanggal` date NOT NULL,
  `tujuan` varchar(30) NOT NULL,
  `status` enum('0','1','') NOT NULL,
  `komentar` varchar(1000) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nomor_dokumen` varchar(100) NOT NULL,
  `keterangan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `riwayat_pengiriman`
--

INSERT INTO `riwayat_pengiriman` (`id_pengiriman`, `tanggal`, `tujuan`, `status`, `komentar`, `nip`, `nomor_dokumen`, `keterangan`) VALUES
(36, '2020-06-11', 'Kepala Koordinator', '0', '-', '1802071105990003', '123', 'Tambah'),
(37, '2020-06-11', 'Kepala Bandara', '0', '-', '1802071105990003', '210/AU/31/2020', 'Tambah'),
(38, '2020-06-03', 'Kepala Koordinator', '0', '-', '1802071105990003', '210/AU/31', 'Tambah'),
(39, '2020-06-11', 'Kepala Bandara', '0', '-', '1802071105990003', 'simpan', 'Ubah'),
(40, '2020-04-30', 'Kepala Koordinator', '0', '-', '1802071105990003', '04/AVSEC/20', 'Ubah'),
(41, '2020-03-31', 'Kepala Koordinator', '0', '-', '1802071105990003', '03/AVSEC/20', 'Ubah'),
(42, '2020-06-18', 'Kepala Bandara', '0', '-', '1802071105990003', 'AHU/21/31-45-21/111', 'Tambah'),
(43, '2020-05-18', 'Kepala Bandara', '0', '-', '1802071105990003', '210/AU/31/2020', 'Tambah'),
(44, '2020-06-18', 'Kepala Bandara', '0', '-', '1802071105990003', '210/AU/31/202000', 'Tambah'),
(45, '2020-06-30', 'Kepala Bandara', '0', '-', '1802071105990003', 'UM/31/2234/2020', 'Tambah'),
(46, '2020-07-30', 'Kepala Bandara', '0', '-', '1802071105990003', '210/AU/31/20212', 'Tambah'),
(47, '2020-07-08', 'Kepala Bandara', '0', '-', '1802071105990003', '210/AU/31/2020221', 'Tambah'),
(48, '2020-08-18', 'Kepala Bandara', '0', '-', '1802071105990003', '210/AU/31/2021/22', 'Tambah'),
(49, '2020-06-25', 'Kepala Bandara', '0', '-', '1802071105990003', '210/AU/31/20202223', 'Tambah'),
(50, '2020-03-30', 'Kepala Bandara', '0', '-', '1802071105990003', '03/PKP-PK/20', 'Ubah'),
(51, '2020-03-30', 'Kepala Bandara', '0', '-', '1802071105990003', '03/QC/20', 'Ubah'),
(52, '2020-03-30', 'Kepala Bandara', '0', '-', '1802071105990003', '03/QC/20', 'Ubah'),
(53, '2020-03-30', 'Kepala Koordinator', '0', '-', '1802071105990003', '03/PKP-PK/20', 'Ubah'),
(54, '2020-04-30', 'Kepala Koordinator', '0', '-', '1802071105990003', '04/PKP-PK/20', 'Ubah');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokumen`
--
ALTER TABLE `dokumen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `riwayat_pengiriman`
--
ALTER TABLE `riwayat_pengiriman`
  ADD PRIMARY KEY (`id_pengiriman`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dokumen`
--
ALTER TABLE `dokumen`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `riwayat_pengiriman`
--
ALTER TABLE `riwayat_pengiriman`
  MODIFY `id_pengiriman` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
