-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Mar 2022 pada 08.37
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lelang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(25) NOT NULL,
  `tgl_daftar` date NOT NULL,
  `harga_awal` int(25) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `tgl_daftar`, `harga_awal`, `deskripsi`, `foto`) VALUES
(12, 'Batu Tanzanite 5 karat', '2022-01-28', 6000000, 'Tanzanite adalah nama pemberian perusahaan perhiasan Tiffany and Co untuk batu permata mineral zoisite berwarna biru yang hanya ditemukan di utara Tanzania. Letaknya di Bukit Merelani, dekat kaki Gunung Kilimanjaro dan Kota Arusha', '2739tanzanite.jpg'),
(13, 'Batu Red Beryl', '2022-01-31', 50000000, 'Batu permata paling langka di dunia. Batu mulia ini hanya bisa ditemukan dalam jumlah kecil di Utah dan New Mexico.', '789red beryl.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `history_lelang`
--

CREATE TABLE `history_lelang` (
  `id` int(11) NOT NULL,
  `id_lelang` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_masyarakat` int(11) NOT NULL,
  `penawaran_harga` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lelang`
--

CREATE TABLE `lelang` (
  `id` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `tgl_lelang` date NOT NULL,
  `harga_akhir` int(11) NOT NULL,
  `status` enum('baru','proses','selesai') NOT NULL,
  `id_masyarakat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `lelang`
--

INSERT INTO `lelang` (`id`, `id_barang`, `tgl_lelang`, `harga_akhir`, `status`, `id_masyarakat`) VALUES
(22, 12, '2022-01-28', 7000000, 'selesai', 6),
(23, 12, '2022-01-28', 7000000, 'selesai', 6),
(24, 12, '2022-01-28', 9000000, 'selesai', 8),
(25, 12, '2022-01-31', 253000000, 'baru', 6),
(26, 13, '2022-01-31', 60000000, 'baru', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `masyarakat`
--

CREATE TABLE `masyarakat` (
  `id_masyarakat` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(225) NOT NULL,
  `tlp` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `masyarakat`
--

INSERT INTO `masyarakat` (`id_masyarakat`, `nama`, `username`, `password`, `tlp`) VALUES
(4, 'ARIQ LUTHFIANSYAH', 'ariq', 'd41d8cd98f00b204e9800998ecf8427e', ''),
(6, 'tes', 'tes', '28b662d883b6d76fd96e4ddc5e9ba780', ''),
(7, 'tes', 'tes', '28b662d883b6d76fd96e4ddc5e9ba780', '081111111'),
(8, 'April', 'april', '37d153a06c79e99e4de5889dbe2e7c57', '08131312801');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`) VALUES
(6, 'admin2', 'admin2', 'c84258e9c39059a89ab77d846ddab909');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `nama_barang` (`nama_barang`),
  ADD KEY `harga_awal` (`harga_awal`);

--
-- Indeks untuk tabel `history_lelang`
--
ALTER TABLE `history_lelang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_lelang` (`id_lelang`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_masyarakat` (`id_masyarakat`),
  ADD KEY `penawaran_harga` (`penawaran_harga`);

--
-- Indeks untuk tabel `lelang`
--
ALTER TABLE `lelang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `harga_akhir` (`harga_akhir`),
  ADD KEY `id_masyarakat` (`id_masyarakat`);

--
-- Indeks untuk tabel `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`id_masyarakat`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `history_lelang`
--
ALTER TABLE `history_lelang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `lelang`
--
ALTER TABLE `lelang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `masyarakat`
--
ALTER TABLE `masyarakat`
  MODIFY `id_masyarakat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `history_lelang`
--
ALTER TABLE `history_lelang`
  ADD CONSTRAINT `history_lelang_ibfk_1` FOREIGN KEY (`id_masyarakat`) REFERENCES `masyarakat` (`id_masyarakat`),
  ADD CONSTRAINT `history_lelang_ibfk_2` FOREIGN KEY (`id_lelang`) REFERENCES `lelang` (`id`),
  ADD CONSTRAINT `history_lelang_ibfk_3` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`);

--
-- Ketidakleluasaan untuk tabel `lelang`
--
ALTER TABLE `lelang`
  ADD CONSTRAINT `lelang_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`),
  ADD CONSTRAINT `lelang_ibfk_2` FOREIGN KEY (`id_masyarakat`) REFERENCES `masyarakat` (`id_masyarakat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
