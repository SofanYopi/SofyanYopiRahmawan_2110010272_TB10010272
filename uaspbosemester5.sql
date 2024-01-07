-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jan 2024 pada 12.49
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uaspbosemester5`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id_kelas` varchar(30) NOT NULL,
  `nama_kelas` varchar(30) NOT NULL,
  `wali_kelas` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pendaftaran`
--

CREATE TABLE `tb_pendaftaran` (
  `id_pendaftaran` varchar(30) NOT NULL,
  `NIS` varchar(35) NOT NULL,
  `id_kelas` varchar(30) NOT NULL,
  `tgl_pendaftaran` varchar(30) NOT NULL,
  `status_pendaftaran` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pendaftaran`
--

INSERT INTO `tb_pendaftaran` (`id_pendaftaran`, `NIS`, `id_kelas`, `tgl_pendaftaran`, `status_pendaftaran`) VALUES
('1513', '1232', '31322', '01 JUNI 2009', 'LULUS'),
('163', '1858', '165', '01 DESEMBER 2019', 'LULUS'),
('3023062', '2320242', '765', '01 februari 2020', 'tidak lulus'),
('757', '869', '98999999', '01 JUNI 20012', 'LULUS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `NIS` varchar(35) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Jenis_Kelamin` varchar(30) NOT NULL,
  `tgl_lahir` varchar(30) NOT NULL,
  `Alamat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_siswa`
--

INSERT INTO `tb_siswa` (`NIS`, `Nama`, `Jenis_Kelamin`, `tgl_lahir`, `Alamat`) VALUES
('237232863', 'sofyan yopi rahmawan', 'laki-laki', '01 juni 2002', 'jl.hksn');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `tb_pendaftaran`
--
ALTER TABLE `tb_pendaftaran`
  ADD PRIMARY KEY (`id_pendaftaran`);

--
-- Indeks untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`NIS`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
