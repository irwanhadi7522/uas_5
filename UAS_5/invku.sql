-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 30 Jan 2020 pada 06.26
-- Versi Server: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `invku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_jenis`
--

CREATE TABLE `daftar_jenis` (
  `id_jenis` int(11) NOT NULL,
  `jenis` varchar(100) NOT NULL,
  `ket_jenis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `daftar_jenis`
--

INSERT INTO `daftar_jenis` (`id_jenis`, `jenis`, `ket_jenis`) VALUES
(1, 'Mouse', 'rusak berat'),
(2, 'Keyboard', 'Masih Bagus'),
(8, 'Monitor', 'Masih Tilah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_kondisi`
--

CREATE TABLE `daftar_kondisi` (
  `id_kondisi` int(11) NOT NULL,
  `kondisi` varchar(100) NOT NULL,
  `ket_kondisi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `daftar_kondisi`
--

INSERT INTO `daftar_kondisi` (`id_kondisi`, `kondisi`, `ket_kondisi`) VALUES
(1, 'Baik', 'masih bingung'),
(2, 'Rusak Riagan', 'masih bingung'),
(5, 'Baik', 'Sangat Baik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_ruang`
--

CREATE TABLE `daftar_ruang` (
  `id_ruang` int(11) NOT NULL,
  `nama_ruang` varchar(100) NOT NULL,
  `fungsi_ruang` varchar(50) NOT NULL,
  `luas` varchar(50) NOT NULL,
  `gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `daftar_ruang`
--

INSERT INTO `daftar_ruang` (`id_ruang`, `nama_ruang`, `fungsi_ruang`, `luas`, `gambar`) VALUES
(7, 'Ruang Lab', 'Ruang Praktik', '100 cm', 'download_(1).jpg'),
(8, 'Ruang LAb 2', 'Ruang Praktik', '120', 'download.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_satuan`
--

CREATE TABLE `daftar_satuan` (
  `id_satuan` int(11) NOT NULL,
  `satuan` varchar(100) NOT NULL,
  `ket_satuan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `daftar_satuan`
--

INSERT INTO `daftar_satuan` (`id_satuan`, `satuan`, `ket_satuan`) VALUES
(1, 'Unit', 'masih entahlah'),
(2, 'Buah', 'entahh lah'),
(3, 'Lembar', 'entahh lah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_sumber`
--

CREATE TABLE `daftar_sumber` (
  `id_sumber` int(11) NOT NULL,
  `sumber` varchar(100) NOT NULL,
  `ket_sumber` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `daftar_sumber`
--

INSERT INTO `daftar_sumber` (`id_sumber`, `sumber`, `ket_sumber`) VALUES
(1, 'Yayasan', 'Masih Kosong'),
(2, 'Hibah', 'Masih Kosong'),
(3, 'Pemerintah Daerah', 'Masih Kosong');

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_tahun`
--

CREATE TABLE `daftar_tahun` (
  `id_tahun` int(11) NOT NULL,
  `tahun` varchar(6) NOT NULL,
  `ket_tahun` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `daftar_tahun`
--

INSERT INTO `daftar_tahun` (`id_tahun`, `tahun`, `ket_tahun`) VALUES
(1, '2018', 'Kosong'),
(2, '20019', 'Kosong'),
(3, '2020', 'Kosong');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_inventaris`
--

CREATE TABLE `data_inventaris` (
  `id_inventaris` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_inventaris` varchar(15) NOT NULL,
  `id_ruang` int(11) NOT NULL,
  `id_sumber` int(11) NOT NULL,
  `id_tahun` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `merek` varchar(100) NOT NULL,
  `seri` varchar(100) NOT NULL,
  `id_jenis` int(5) NOT NULL,
  `nilai_wajar` int(10) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `id_satuan` int(11) NOT NULL,
  `id_kondisi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_inventaris`
--

INSERT INTO `data_inventaris` (`id_inventaris`, `tanggal`, `kode_inventaris`, `id_ruang`, `id_sumber`, `id_tahun`, `nama_barang`, `merek`, `seri`, `id_jenis`, `nilai_wajar`, `gambar`, `id_satuan`, `id_kondisi`) VALUES
(1, '2020-01-08', '2242', 7, 1, 1, 'sfsfsdfsdfsdf', 'sdfsdf', 'sfsdf', 1, 4345345, 'tes.jpg', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar_jenis`
--
ALTER TABLE `daftar_jenis`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indexes for table `daftar_kondisi`
--
ALTER TABLE `daftar_kondisi`
  ADD PRIMARY KEY (`id_kondisi`);

--
-- Indexes for table `daftar_ruang`
--
ALTER TABLE `daftar_ruang`
  ADD PRIMARY KEY (`id_ruang`);

--
-- Indexes for table `daftar_satuan`
--
ALTER TABLE `daftar_satuan`
  ADD PRIMARY KEY (`id_satuan`);

--
-- Indexes for table `daftar_sumber`
--
ALTER TABLE `daftar_sumber`
  ADD PRIMARY KEY (`id_sumber`);

--
-- Indexes for table `daftar_tahun`
--
ALTER TABLE `daftar_tahun`
  ADD PRIMARY KEY (`id_tahun`);

--
-- Indexes for table `data_inventaris`
--
ALTER TABLE `data_inventaris`
  ADD PRIMARY KEY (`id_inventaris`),
  ADD UNIQUE KEY `id_ruang` (`id_ruang`),
  ADD UNIQUE KEY `id_sumber` (`id_sumber`),
  ADD UNIQUE KEY `id_tahun` (`id_tahun`),
  ADD UNIQUE KEY `id_jenis` (`id_jenis`),
  ADD UNIQUE KEY `id_satuan` (`id_satuan`),
  ADD UNIQUE KEY `id_kondisi` (`id_kondisi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftar_jenis`
--
ALTER TABLE `daftar_jenis`
  MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `daftar_kondisi`
--
ALTER TABLE `daftar_kondisi`
  MODIFY `id_kondisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `daftar_ruang`
--
ALTER TABLE `daftar_ruang`
  MODIFY `id_ruang` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `daftar_satuan`
--
ALTER TABLE `daftar_satuan`
  MODIFY `id_satuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `daftar_sumber`
--
ALTER TABLE `daftar_sumber`
  MODIFY `id_sumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `daftar_tahun`
--
ALTER TABLE `daftar_tahun`
  MODIFY `id_tahun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `data_inventaris`
--
ALTER TABLE `data_inventaris`
  MODIFY `id_inventaris` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
