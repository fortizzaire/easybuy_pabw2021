-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2024 at 12:54 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `idcart` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `userid` int(11) NOT NULL,
  `tglorder` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(10) NOT NULL DEFAULT 'Cart'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`idcart`, `orderid`, `userid`, `tglorder`, `status`) VALUES
(13, '16iajTt.0UC6I', 3, '2021-12-20 13:11:58', 'Selesai'),
(14, '16XO/WOB1cNNQ', 3, '2021-12-20 13:17:38', 'Selesai'),
(15, '16lj7yVvhsBPg', 1, '2021-12-20 15:31:16', 'Selesai'),
(16, '161NI3UhH8RZ.', 3, '2021-12-21 13:43:41', 'Selesai'),
(17, '16mz4/i1LG0N6', 3, '2021-12-22 04:26:17', 'Selesai'),
(18, '16cB72ebNSMio', 1, '2021-12-22 09:45:37', 'Selesai'),
(19, '16ri/SDD1F8Cc', 1, '2021-12-29 10:21:53', 'Selesai'),
(20, '16XR5pWbGbY1w', 8, '2021-12-30 14:05:31', 'Selesai'),
(21, '1603QUzkcs9tY', 4, '2021-12-31 01:12:25', 'Selesai'),
(22, '16we5aMtCZVuA', 7, '2021-12-31 02:15:08', 'Selesai'),
(23, '16krH17KZwH8g', 7, '2021-12-31 02:16:01', 'Selesai'),
(24, '161/u6DYEfXfU', 3, '2021-12-31 03:06:39', 'Selesai'),
(25, '16qFYcyaCvaqA', 13, '2021-12-31 03:13:30', 'Selesai'),
(26, '16/pe9LJUeNkI', 1, '2021-12-31 03:18:26', 'Selesai'),
(27, '16YfBGptwTMOM', 3, '2021-12-31 07:10:01', 'Selesai'),
(29, '16BmTAUX4htR2', 4, '2021-12-31 07:19:19', 'Selesai'),
(30, '163JVZX9hcJZE', 1, '2022-06-07 10:00:57', 'Selesai');

-- --------------------------------------------------------

--
-- Table structure for table `detailorder`
--

CREATE TABLE `detailorder` (
  `detailid` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `idproduk` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detailorder`
--

INSERT INTO `detailorder` (`detailid`, `orderid`, `idproduk`, `qty`) VALUES
(31, '16we5aMtCZVuA', 27, 1),
(32, '16we5aMtCZVuA', 26, 1),
(33, '16krH17KZwH8g', 13, 5),
(34, '161/u6DYEfXfU', 11, 1),
(35, '161/u6DYEfXfU', 16, 1),
(36, '16qFYcyaCvaqA', 19, 1),
(37, '16/pe9LJUeNkI', 16, 1),
(38, '16/pe9LJUeNkI', 18, 1),
(39, '16YfBGptwTMOM', 19, 1),
(40, '16BmTAUX4htR2', 27, 1),
(41, '16BmTAUX4htR2', 13, 1),
(42, '163JVZX9hcJZE', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `idkategori` int(11) NOT NULL,
  `namakategori` varchar(20) NOT NULL,
  `tgldibuat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`idkategori`, `namakategori`, `tgldibuat`) VALUES
(6, 'Tanaman Hias Bunga', '2021-12-31 01:26:40'),
(7, 'Tanaman Hias Daun', '2021-12-31 01:26:49'),
(8, 'Tanaman Hias Buah', '2021-12-31 01:26:58'),
(9, 'Tanaman Hias Akar', '2021-12-31 01:27:12'),
(10, 'Lain-lain', '2021-12-31 02:05:04');

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi`
--

CREATE TABLE `konfirmasi` (
  `idkonfirmasi` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `userid` int(11) NOT NULL,
  `payment` varchar(10) NOT NULL,
  `namarekening` varchar(25) NOT NULL,
  `tglbayar` date NOT NULL,
  `tglsubmit` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `userid` int(11) NOT NULL,
  `namalengkap` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `notelp` varchar(15) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tgljoin` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` varchar(7) NOT NULL DEFAULT 'Member',
  `lastlogin` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`userid`, `namalengkap`, `email`, `password`, `notelp`, `alamat`, `tgljoin`, `role`, `lastlogin`) VALUES
(1, 'Admin', 'admin', '$2y$10$GJVGd4ji3QE8ikTBzNyA0uLQhiGd6MirZeSJV1O6nUpjSVp1eaKzS', '01234567890', 'Indonesia', '2021-12-08 11:31:17', 'Admin', NULL),
(2, 'Guest', 'guest', '$2y$10$xXEMgj5pMT9EE0QAx3QW8uEn155Je.FHH5SuIATxVheOt0Z4rhK6K', '01234567890', 'Indonesia', '2021-12-08 11:30:40', 'Member', NULL),
(3, 'Farkhan ', 'farkhan@gmail.com', '$2y$10$CLXzH.JifoD0iLcY9x7H/uoh./v7ABtjQPE4gkp41Q9qrIY0nygFi', '223344', 'iyaiya', '2021-12-20 13:06:41', 'Member', NULL),
(4, 'Muhammad Ivander Ramusta', 'ramusta@yahoo.com', '$2y$10$r7omfAcCF5Em/1fGeyWhpO2Y8ZwpQWX53V6qdY9E/uqm/E5uVfOES', '087777777777', 'Lombok, Indonesia', '2021-12-29 12:17:33', 'Member', NULL),
(5, 'Ivan Aditya Nugraha', 'ivan@gmail.com', '$2y$10$ymNZeiTo4MWorBBXvbwYEeqMRjerbyE1dRGzf9k.1g6l9/FO/aPwG', '081111111111', 'Indonesia', '2021-12-29 12:18:35', 'Member', NULL),
(6, 'Brenna Kurnia Hana', 'brenna@hotmail.com', '$2y$10$IfG1Map0HtAYkiO4leHl2O018tHgzsdTuxxXRZYWv94do8miFtbP.', '082222222222', 'Yogyakarta, Indonesia', '2021-12-29 12:19:25', 'Member', NULL),
(7, 'Ananda Ramadhani', 'ananda@yahoo.com', '$2y$10$DlTrfLef5mSbHfSuH0NqhOFwc43H4O4ASPEk9Xoh2K3vh3iy/jiE6', '083333333333', 'Indonesia', '2021-12-29 12:20:10', 'Member', NULL),
(8, 'Naufal Nursyabana', 'naufal@gmail.com', '$2y$10$BFr6tDQ368ozA0P5pcLzMe5dFxmjNC9Cutkpj8AOHTNT9IVpBUr.W', '666', 'Asgard', '2021-12-30 14:05:13', 'Member', NULL),
(11, 'Admin Ganteng', 'botkill@admin.com', '$2y$10$TaP53/.EMhBnCCKb6vFqYOuZhB9a3rTqo5Oa4.aSE7wLrM5z/GYdW', '02657770801', 'Timor Leste', '2021-12-31 02:23:26', 'Admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `no` int(11) NOT NULL,
  `metode` varchar(25) NOT NULL,
  `norek` varchar(25) NOT NULL,
  `logo` text DEFAULT NULL,
  `an` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`no`, `metode`, `norek`, `logo`, `an`) VALUES
(1, 'Bank BCA', '07786890', 'images/bca.jpg', 'easybuy'),
(2, 'Bank Mandiri', '6998544621000', 'images/mandiri.jpg', 'easybuy'),
(3, 'DANA', '083221114111', 'images/dana.png', 'easybuy'),
(4, 'OVO', '086666668666', 'images/ovo.jpg', 'easybuy'),
(5, 'Gopay', '08888888888', 'images/gopay.jpg', 'easybuy');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `idproduk` int(11) NOT NULL,
  `idkategori` int(11) NOT NULL,
  `namaproduk` varchar(30) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  `rate` int(11) NOT NULL,
  `hargabefore` int(11) NOT NULL,
  `hargaafter` int(11) NOT NULL,
  `tgldibuat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`idproduk`, `idkategori`, `namaproduk`, `gambar`, `deskripsi`, `rate`, `hargabefore`, `hargaafter`, `tgldibuat`) VALUES
(11, 6, 'Bunga Asoka', 'produk/16pa2IZRef9pw.jpeg', 'Ini adalah bunga asoka, bunga asoka merupakan tanaman hias yang sering dihubungkan dengan cinta dan kesucian', 5, 30000, 25000, '2021-12-31 01:32:50'),
(12, 6, 'Bunga Tulip', 'produk/16nZ2kLADzAWI.jpeg', 'Bunga tulip berasal dari turki, cocok untuk keindahan rumah Anda', 5, 27500, 24000, '2021-12-31 01:34:28'),
(13, 6, 'Bunga Matahari', 'produk/16Gw07tm9RLGY.jpeg', 'Bunga matahari, sering kita jumpai di sekitar kita, merupakan bunga yang populer di Indonesia. Cocok untuk memperindah teras rumah Anda', 4, 50000, 27500, '2021-12-31 01:36:17'),
(14, 6, 'Bunga Bougenvile', 'produk/16X6JLRdpRObY.jpeg', 'Bunga Bougenvile, sangat recommend untuk pekarangan rumah Anda', 5, 25000, 14000, '2021-12-31 01:40:01'),
(15, 6, 'Bunga Anggrek', 'produk/164G.vLIA7VZE.jpeg', 'Bunga Anggrek, sering dijumpai di Indonesia merupakan bunga favorit untuk mempercantik halaman rumah Anda', 4, 20000, 17000, '2021-12-31 01:41:37'),
(16, 6, 'Bunga Kembang Sepatu', 'produk/166NglkFwxw3U.jpeg', 'Sangat recommended untuk pekarangan rumah Anda', 4, 20000, 15000, '2021-12-31 01:42:25'),
(17, 7, 'Kuping Gajah', 'produk/16m1gEgNeE13I.jpeg', 'Tak hanya tanaman bunga yang dapat menghias rumah Anda, tanaman kuping gajah yang berwarna hijau pun cocok untuk keindahan halaman rumah Anda', 4, 30000, 24000, '2021-12-31 01:45:13'),
(18, 7, 'Suplir', 'produk/16vH8R0fBvz9..jpeg', 'Suplir ini sangat bagus loh untuk mempercantik rumah Anda, warna hijau dapat membuat seseorang menjadi fresh', 5, 40000, 35000, '2021-12-31 01:46:52'),
(19, 7, 'Saka Asparagus Plumosus', 'produk/167s6pIs7s0Fw.jpeg', 'Saka Asparagus Plumosus, ayo dibeli dibeli', 4, 30000, 26000, '2021-12-31 01:48:24'),
(20, 7, 'Spider Plant', 'produk/16xQZtdyo8Kdc.jpeg', 'Spider Plant, populer di Indonesia sebagai tanaman hias yang bagus untuk keindahan rumah Anda', 4, 20000, 18000, '2021-12-31 01:50:02'),
(22, 7, 'Kelaki Red Star', 'produk/16nFF00d03ri2.jpeg', 'Kelaki Red Star merupakan tanaman hias yang cocok untuk memperindah rumah Anda!', 5, 50000, 32250, '2021-12-31 01:52:23'),
(23, 8, 'Cabai Pelangi', 'produk/16mKvp7S9PPxg.jpg', 'Cabai Pelangi, tak hanya untuk kebutuhan dapur, tetapi cocok untuk keindahan rumah juga', 5, 30000, 23000, '2021-12-31 01:54:40'),
(24, 8, 'Buah Naga', 'produk/16TFsZ3zeL.BM.jpg', 'Buah Naga sudah tak asing di telinga masyarakat, karena buahnya yang enak, tentunya menanam ini di rumah Anda dapat mempercantik juga loh!', 4, 25000, 21000, '2021-12-31 01:56:58'),
(26, 9, 'Ficus Benjamina', 'produk/16s9AaAgQE3ZA.jpg', 'Tanaman bonsai beringin ficus benjamina merupakan tanaman yang pas untuk memperindah sudut rumah Anda, namun perlu diperhatikan bahwa tanaman ini butuh perawatan berkala agar tetap terlihat cantik dan', 5, 10000, 85000, '2021-12-31 02:04:09'),
(27, 10, 'Kaktus Hias', 'produk/16A19RoEmhsT6.jpg', 'Tentunya kaktus ini bukan yang seperti di gurun-gurun itu hahaha, sangat cocok ditempatkan di rumah Anda dalam cuaca panas pun kuat', 4, 60000, 50000, '2021-12-31 02:09:54'),
(28, 9, 'Rhipsalis Salicornioides', 'produk/16csJQetMRmwQ.jpeg', 'Tanaman yang bagus :)', 4, 70000, 60000, '2021-12-31 02:11:08'),
(29, 6, 'Bunga Edelweis', 'produk/16REKQkrfP9Vk.jpeg', 'Ini adalah bunga edelweis', 5, 50000, 35000, '2022-01-01 07:49:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`idcart`),
  ADD UNIQUE KEY `orderid` (`orderid`),
  ADD KEY `orderid_2` (`orderid`);

--
-- Indexes for table `detailorder`
--
ALTER TABLE `detailorder`
  ADD PRIMARY KEY (`detailid`),
  ADD KEY `orderid` (`orderid`),
  ADD KEY `idproduk` (`idproduk`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indexes for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD PRIMARY KEY (`idkonfirmasi`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idproduk`),
  ADD KEY `idkategori` (`idkategori`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `idcart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `detailorder`
--
ALTER TABLE `detailorder`
  MODIFY `detailid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `idkategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  MODIFY `idkonfirmasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `idproduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detailorder`
--
ALTER TABLE `detailorder`
  ADD CONSTRAINT `idproduk` FOREIGN KEY (`idproduk`) REFERENCES `produk` (`idproduk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderid` FOREIGN KEY (`orderid`) REFERENCES `cart` (`orderid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD CONSTRAINT `userid` FOREIGN KEY (`userid`) REFERENCES `login` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `idkategori` FOREIGN KEY (`idkategori`) REFERENCES `kategori` (`idkategori`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
