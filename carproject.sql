-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Feb 2024 pada 12.32
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carproject`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `ADMIN_ID` int(11) NOT NULL,
  `ADMIN USERNAME` varchar(255) NOT NULL,
  `ADMIN_PASSWORD` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`ADMIN_ID`, `ADMIN USERNAME`, `ADMIN_PASSWORD`) VALUES
(1, 'ADMIN', 'ADMIN'),
(2, 'YOSUA', '1234'),
(3, 'almani', 'almani234'),
(4, 'caraka', 'pascaraka123'),
(5, 'Enzi', 'enziii234'),
(6, 'Gaharu', 'haruga521'),
(7, 'Hayden', 'Denhya452'),
(8, 'Ilham', 'ilham333'),
(9, 'Jarvis', 'jarviss5'),
(10, 'Travis', 'traviscot231');

-- --------------------------------------------------------

--
-- Struktur dari tabel `booking`
--

CREATE TABLE `booking` (
  `BOOK_ID` int(11) NOT NULL,
  `ID MOBIL` int(11) NOT NULL,
  `USERNAME ID` int(11) NOT NULL,
  `LOKASI PEMESANAN` varchar(255) NOT NULL,
  `TANGGAL PESAN` date NOT NULL,
  `JANGKA WAKTU` int(11) NOT NULL,
  `TUJUAN` varchar(255) NOT NULL,
  `TANGGAL PENGEMBALIAN` date NOT NULL,
  `HARGA` int(11) NOT NULL,
  `STATUS PEMESANAN` varchar(255) NOT NULL DEFAULT 'UNDER PROCESSING'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `booking`
--

INSERT INTO `booking` (`BOOK_ID`, `ID MOBIL`, `USERNAME ID`, `LOKASI PEMESANAN`, `TANGGAL PESAN`, `JANGKA WAKTU`, `TUJUAN`, `TANGGAL PENGEMBALIAN`, `HARGA`, `STATUS PEMESANAN`) VALUES
(71, 1, 6, 'Dewi Sartika', '2024-01-01', 7, 'Sumatera Utara', '2024-01-08', 2500000, 'UNDER PROCESSING'),
(72, 25, 10, 'Kramat 98', '2023-12-30', 3, 'bandung', '2024-01-02', 750000, 'APROVED'),
(73, 22, 12, 'Salemba', '2024-01-11', 6, 'Bogor', '2023-12-17', 1500000, 'UNDER PROCESSING'),
(74, 23, 9, 'Dewi sartika', '2024-01-08', 5, 'Karawang', '2024-01-13', 1000000, 'UNDER PROCESSING'),
(75, 20, 11, 'Dewi Sartika', '2023-12-30', 7, '', '2024-01-06', 3850000, 'UNDER PROCESSING'),
(76, 25, 8, 'Kramat 98', '2024-01-18', 5, 'Puncak Bogor', '2024-01-23', 1750000, 'UNDER PROCESSING'),
(77, 3, 14, 'Salemba', '2024-02-01', 5, 'Bandung', '2024-02-05', 150000, 'APROVED'),
(78, 27, 13, 'Salemba', '2024-01-11', 7, 'Bogor', '2024-01-18', 1750000, 'APROVED'),
(79, 2, 12, 'Dewi sartika', '2024-01-06', 7, 'badung', '2024-01-13', 250000, 'UNDER PROCESSING');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `ID MOBIL` int(11) NOT NULL,
  `NAMA MOBIL` varchar(255) NOT NULL,
  `JENIS BAHAN BAKAR` varchar(255) NOT NULL,
  `KAPASITAS` int(11) NOT NULL,
  `HARGA` int(11) NOT NULL,
  `TERSEDIA` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`ID MOBIL`, `NAMA MOBIL`, `JENIS BAHAN BAKAR`, `KAPASITAS`, `HARGA`, `TERSEDIA`) VALUES
(1, 'FERRAI', 'PETROL', 5, 500000, 'Y'),
(2, 'LAMBORGINI', 'DEISEL', 6, 700000, 'Y'),
(3, 'PORSCHE', 'GAS', 4, 300000, 'Y'),
(20, 'SWIFT', 'DEISEL', 22, 550000, 'Y'),
(22, 'HONDA JAZZ', 'PERTAMAX', 4, 250000, 'Y'),
(23, 'KIJANG INOVA', 'PERTALITE', 6, 200000, 'YA'),
(24, 'SUZUKI ERTIGA', 'PERTAMAX', 4, 300000, 'YA'),
(25, 'TOYOTA YARIS', 'PERTAMAX', 4, 350000, 'YA'),
(26, 'HONDA CR-V', 'PERTAMAX TURBO', 4, 400000, 'YA'),
(27, 'SUZUKI AYLA', 'PERTAMAX', 4, 250000, 'YA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `NO PEMBAYARAN` int(11) NOT NULL,
  `BOOK_ID` int(11) NOT NULL,
  `NO KARTU KREDIT` varchar(255) NOT NULL,
  `MASA BERLAKU KARTU` varchar(255) NOT NULL,
  `CVV` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`NO PEMBAYARAN`, `BOOK_ID`, `NO KARTU KREDIT`, `MASA BERLAKU KARTU`, `CVV`) VALUES
(26, 71, '0229424', '343432', 234343),
(27, 76, '988', '31 januari 2024', 343),
(28, 74, '09887', '25 februari 2024', 1413),
(29, 72, '84574', '5 maret 2024', 34321),
(30, 75, '54532', '2 Mei 2024', 12324),
(31, 73, '22442', '5 Juli 2024', 122311),
(32, 78, '8482', '3 Mei 2024', 4343),
(33, 77, '88382', '5 Desember 2024', 83584);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `USERNAME ID` int(11) NOT NULL,
  `NAMA DEPAN` varchar(255) NOT NULL,
  `NAMA BELAKANG` varchar(255) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `NO SIM` varchar(255) NOT NULL,
  `NOMOR TELEPON` bigint(11) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `JENIS KELAMIN` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`USERNAME ID`, `NAMA DEPAN`, `NAMA BELAKANG`, `EMAIL`, `NO SIM`, `NOMOR TELEPON`, `PASSWORD`, `JENIS KELAMIN`) VALUES
(6, 'Yosua', 'Sitorus', 'sitorusyosua06@gmail.com', '123456', 123456, 'yosua123', 'Laki-laki'),
(7, 'Syaeful', 'Rochman', 'ipul07@gmail.com', '098344', 82141434, 'ipul234', 'Laki-Laki'),
(8, 'SILVESTER', 'FABIAN', 'silvesterfabian@gmail.com', '12224411', 98252, 'fabian223', 'Laki-Laki'),
(9, 'Mohammad Fikri', 'Khoiruddin', 'mohfikri@gmail.com', '3442112', 82123, 'fikri321', 'Laki-laki'),
(10, 'SARIHOT', 'TONDANG', 'sarihottondang34@gmail.com', '73483', 81234242, 'sarihot23', 'Laki-Laki'),
(11, 'RAMADHAN ROY ', 'PRASETYO', 'ramadhan4343@gmail.com', '34325', 81234567, 'ramadhan12345', 'Laki-Laki'),
(12, 'IMAM', 'MUNANDAR', 'munandarimam43@gmail.com', '23345', 878989244, 'imam5351', 'Laki-Laki'),
(13, 'Jerome', 'Janitra', 'janitrarome24@gmail.com', '887773', 82188742, 'jerome2344', 'Laki-Laki'),
(14, 'Putri', 'Situmorang', 'sitoumorangputri@gmail.com', '34342255', 8213535854, 'putri12345', 'Perempuan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ADMIN_ID`);

--
-- Indeks untuk tabel `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`BOOK_ID`),
  ADD KEY `CAR_ID` (`ID MOBIL`),
  ADD KEY `USERNAME ID` (`USERNAME ID`);

--
-- Indeks untuk tabel `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`ID MOBIL`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`NO PEMBAYARAN`),
  ADD UNIQUE KEY `BOOK_ID` (`BOOK_ID`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`USERNAME ID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `ADMIN_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `booking`
--
ALTER TABLE `booking`
  MODIFY `BOOK_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT untuk tabel `mobil`
--
ALTER TABLE `mobil`
  MODIFY `ID MOBIL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `NO PEMBAYARAN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `USERNAME ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`ID MOBIL`) REFERENCES `mobil` (`ID MOBIL`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`USERNAME ID`) REFERENCES `users` (`USERNAME ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`BOOK_ID`) REFERENCES `booking` (`BOOK_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
