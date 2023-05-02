-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Bulan Mei 2023 pada 17.36
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `imsak`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id` int(11) NOT NULL,
  `tanggal` varchar(30) NOT NULL,
  `imsak` varchar(10) NOT NULL,
  `subuh` varchar(10) NOT NULL,
  `terbit` varchar(10) NOT NULL,
  `duha` varchar(10) NOT NULL,
  `zuhur` varchar(10) NOT NULL,
  `asar` varchar(10) NOT NULL,
  `magrib` varchar(10) NOT NULL,
  `isya` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id`, `tanggal`, `imsak`, `subuh`, `terbit`, `duha`, `zuhur`, `asar`, `magrib`, `isya`) VALUES
(3, '1 Ramadhan 1444 H', '04:53', '05:03', '06:15', '06:42', '12:24', '15:38', '18:26', '19:35'),
(4, '2 Ramadhan 1444 H', '04:53', '05:03', '06:15', '06:42', '12:24', '15:38', '18:26', '19:35'),
(5, '3 Ramadhan 1444 H', '04:53', '05:03', '06:14', '06:42', '12:23', '15:38', '18:25', '19:34'),
(6, '4 Ramadhan 1444 H', '04:53', '05:03', '06:14', '06:42', '12:23', '15:38', '18:25', '19:34'),
(7, '5 Ramadhan 1444 H', '04:52', '05:02', '06:14', '06:42', '12:23', '15:38', '18:24', '19:33'),
(8, '6 Ramadhan 1444 H', '04:52', '05:02', '06:14', '06:42', '12:23', '15:38', '18:24', '19:33'),
(9, '7 Ramadhan 1444 H', '04:52', '05:02', '06:14', '06:42', '12:22', '15:38', '18:23', '19:32'),
(10, '8 Ramadhan 1444 H', '04:52', '05:02', '06:14', '06:41', '12:22', '15:38', '18:23', '19:31'),
(11, '9 Ramadhan 1444 H', '04:52', '05:02', '06:14', '06:41', '12:22', '15:38', '18:23', '19:31'),
(12, '10 Ramadhan 1444 H', '04:52', '05:02', '06:14', '06:41', '12:21', '15:38', '18:22', '19:30'),
(13, '11 Ramadhan 1444 H', '04:52', '05:02', '06:14', '06:41', '12:21', '15:38', '18:26', '19:30'),
(14, '12 Ramadhan 1444 H', '04:52', '05:02', '06:14', '06:41', '12:21', '15:38', '18:21', '19:29'),
(15, '13 Ramadhan 1444 H', '04:52', '05:02', '06:14', '06:41', '12:20', '15:38', '18:21', '19:29'),
(16, '14 Ramadhan 1444 H', '04:52', '05:02', '06:14', '06:41', '12:20', '15:37', '18:20', '19:28'),
(17, '15 Ramadhan 1444 H', '04:52', '05:02', '06:14', '06:41', '12:20', '15:37', '18:19', '19:28'),
(18, '16 Ramadhan 1444 H', '04:51', '05:01', '06:14', '06:41', '12:20', '15:37', '18:19', '19:28'),
(19, '17 Ramadhan 1444 H', '04:51', '05:01', '06:14', '06:41', '12:19', '15:37', '18:18', '19:27'),
(20, '18 Ramadhan 1444 H', '04:51', '05:01', '06:14', '06:41', '12:19', '15:37', '18:18', '19:27'),
(21, '19 Ramadhan 1444 H', '04:51', '05:01', '06:14', '06:41', '12:19', '15:37', '18:17', '19:26'),
(22, '20 Ramadhan 1444 H', '04:51', '05:01', '06:13', '06:41', '12:19', '15:37', '18:17', '19:26'),
(23, '21 Ramadhan 1444 H', '04:51', '05:01', '06:13', '06:41', '12:18', '15:37', '18:16', '19:25'),
(24, '22 Ramadhan 1444 H', '04:51', '05:01', '06:13', '06:41', '12:18', '15:37', '18:16', '19:25'),
(25, '23 Ramadhan 1444 H', '04:51', '05:01', '06:13', '06:41', '12:18', '15:37', '18:15', '19:25'),
(26, '24 Ramadhan 1444 H', '04:51', '05:01', '06:13', '06:41', '12:18', '15:36', '18:15', '19:24'),
(27, '25 Ramadhan 1444 H', '04:51', '05:01', '06:13', '06:41', '12:17', '15:36', '18:14', '19:24'),
(28, '26 Ramadhan 1444 H', '04:50', '05:00', '06:13', '06:41', '12:17', '15:36', '18:14', '19:23'),
(29, '27 Ramadhan 1444 H', '04:50', '05:00', '06:13', '06:41', '12:17', '15:36', '18:13', '19:23'),
(30, '28 Ramadhan 1444 H', '04:50', '05:00', '06:13', '06:41', '12:17', '15:36', '18:13', '19:23'),
(31, '29 Ramadhan 1444 H', '04:50', '05:00', '06:13', '06:41', '12:16', '15:36', '18:12', '19:22'),
(33, '30 Ramadhan 1444 H', '04:50', '05:00', '06:13', '06:41', '12:16', '15:36', '18:12', '19:22');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
