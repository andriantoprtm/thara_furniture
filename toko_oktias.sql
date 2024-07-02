-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 23, 2024 at 05:00 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_oktias`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) COLLATE utf8_bin NOT NULL,
  `email` varchar(128) COLLATE utf8_bin NOT NULL,
  `password` varchar(256) COLLATE utf8_bin NOT NULL,
  `tanggal_daftar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama`, `email`, `password`, `tanggal_daftar`) VALUES
(6, 'Oktias Brasserie', 'oktias@example.com', '$2y$10$bukj6K8mCwxdgZy5Dl6kbefjfDDOvHnw3C2b4H9fvVv8zISIRZoe2', 1553403730),
(7, 'Angga Brovita', 'turunbrooo@gmail.com', '$2y$10$0bd38.vT5EMTfk03vjoWjutzYlkXYZhG5MigeHq/nFGjh/wCBPyge', 1553575025),
(8, 'andri', 'andri@gmail.com', '$2y$10$OmNQryzcIrvS0STWrG7lSetE1qEfbaAl41qPLRImkeoI5CN25B.56', 1714363867),
(9, 'daffa', '123@gmail.com', '$2y$10$521Wa7SGNGSaCPoxddLn/eBLB5nkLg2uwE7M0m7dnHR.L8vdSP18y', 1719149487);

-- --------------------------------------------------------

--
-- Table structure for table `header_transaksi`
--

CREATE TABLE `header_transaksi` (
  `id_pembelian` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_transaksi` varchar(128) COLLATE utf8_bin NOT NULL,
  `nama` varchar(50) COLLATE utf8_bin NOT NULL,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `alamat` text COLLATE utf8_bin NOT NULL,
  `telepon` varchar(30) COLLATE utf8_bin NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `status` varchar(30) COLLATE utf8_bin NOT NULL,
  `rekening_pembayaran` varchar(255) COLLATE utf8_bin NOT NULL,
  `rekening_pelanggan` varchar(255) COLLATE utf8_bin NOT NULL,
  `bukti_bayar` varchar(255) COLLATE utf8_bin NOT NULL,
  `id_rekening` int(11) NOT NULL,
  `nama_bank` varchar(128) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `header_transaksi`
--

INSERT INTO `header_transaksi` (`id_pembelian`, `id_user`, `id_transaksi`, `nama`, `email`, `alamat`, `telepon`, `tanggal_transaksi`, `status`, `rekening_pembayaran`, `rekening_pelanggan`, `bukti_bayar`, `id_rekening`, `nama_bank`) VALUES
(1, 1, '25102019VC0P9ZEH', 'RINDU', 'rindu@example.com', 'Jl. in aja dulu, siapa tau jodoh', '08960001110', '2019-10-25', 'Konfirmasi', '1231', 'andoyo', 'art-artsy-close-up-414860.jpg', 5, 'BANK BCA'),
(2, 1, '15102019UQBOSXVW', 'RINDU', 'rindu@example.com', 'Jl. in aja dulu, siapa tau jodoh', '08960001110', '2019-10-15', 'Konfirmasi', '1234567890', 'Markoto', 'bg48.jpg', 2, 'BANK BCA'),
(3, 1, '15102019DWVRGKJI', 'RINDU', 'rindu@example.com', 'Jl. in aja dulu, siapa tau jodoh', '08960001110', '2019-10-15', 'Belum Konfirmasi', '', '', '', 0, ''),
(4, 3, '17102019DNP75VCF', 'Alexa Indriana', 'alexa@example.com', 'Jl. in aja dulu', '012831832', '2019-10-17', 'Belum Konfirmasi', '', '', '', 0, ''),
(5, 1, '20102019DVJEG3PL', 'RINDU', 'rindu@example.com', 'Jl. in aja dulu, siapa tau jodoh', '08960001110', '2019-10-20', 'Belum Konfirmasi', '', '', '', 0, ''),
(6, 1, '20102019BRUXEPGL', 'RINDU', 'rindu@example.com', 'Jl. in aja dulu, siapa tau jodoh', '08960001110', '2019-10-20', 'Belum Konfirmasi', '', '', '', 0, ''),
(12, 5, '13052024EKYUITBK', 'andrii', 'andrii@gmail.com', 'bojongggerdeee', '08929292', '2024-05-13', 'Konfirmasi', '123', 'hitam', 'Screenshot_(27).png', 5, 'hitam'),
(13, 5, '13052024BBYMOLPN', 'andrii', 'andrii@gmail.com', 'bojongggerdeee', '08929292', '2024-05-13', 'Belum Konfirmasi', '', '', '', 0, ''),
(14, 5, '13052024RPTVBIRH', 'andrii', 'andrii@gmail.com', 'bojongggerdeee', '08929292', '2024-05-13', 'Sudah dibayar', '123', 'hitam', 'Screenshot_(25).png', 5, 'hitam'),
(15, 5, '130520249WZMVGRD', 'andrii', 'andrii@gmail.com', 'bojongggerdeee', '08929292', '2024-05-13', 'Sudah dibayar', '123', '123', 'Screenshot_(32).png', 5, 'sad'),
(17, 9, '250520246TS4UKGQ', 'Mohammad Daffa Abhinaya Daelami', 'daffa@gmail.com', 'bogay', '123', '2024-05-25', 'Sudah Konfirmasi', '123', 'hitam', 'banner.jpg', 5, 'hitam'),
(18, 10, '25052024ZGXL3FSM', 'da', 'da@gmail.com', 'da', '123', '2024-05-25', 'Belum dibayar', '', '', '', 0, ''),
(19, 10, '25052024ZXFB7SEG', 'da', 'da@gmail.com', 'da', '123', '2024-05-25', 'Sudah Konfirmasi', '', '', '', 0, ''),
(20, 10, '25052024BOWGVFQC', 'da', 'da@gmail.com', 'da', '123', '2024-05-25', 'Belum dibayar', '', '', '', 0, ''),
(21, 10, '25052024TFKYMEUT', 'da', 'da@gmail.com', 'da', '123', '2024-05-25', 'Belum dibayar', '', '', '', 0, ''),
(22, 10, '25052024QMSJY0J5', 'da', 'da@gmail.com', 'da', '123', '2024-05-25', 'Belum dibayar', '', '', '', 0, ''),
(23, 10, '25052024YWAWFKRB', 'da', 'da@gmail.com', 'da', '123', '2024-05-25', 'Belum dibayar', '', '', '', 0, ''),
(24, 10, '25052024YQWYCKVV', 'da', 'da@gmail.com', 'da', '123', '2024-05-25', 'Belum dibayar', '', '', '', 0, ''),
(25, 11, '11062024F6DMYY0T', 'daffa', '123@gmail.com', 'bogor', '123', '2024-06-11', 'Belum dibayar', '', '', '', 0, ''),
(26, 11, '110620242', 'daffa', '123@gmail.com', 'bogor', '123', '2024-06-11', 'Belum dibayar', '', '', '', 0, ''),
(27, 11, '110620242', 'daffa', '123@gmail.com', 'bogor', '123', '2024-06-11', 'Belum dibayar', '', '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(128) COLLATE utf8_bin NOT NULL,
  `url` varchar(128) COLLATE utf8_bin NOT NULL,
  `urutan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `url`, `urutan`) VALUES
(4, 'Cupboard', 'Cupboard', 1),
(5, 'Table', 'Table', 2),
(6, 'Bed', 'Bed', 3),
(7, 'Chair', 'Chair', 4),
(8, 'Refrigerators', 'refrigerators', 5);

-- --------------------------------------------------------

--
-- Table structure for table `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id_konfigurasi` int(11) NOT NULL,
  `author` varchar(128) COLLATE utf8_bin NOT NULL,
  `keyword` varchar(128) COLLATE utf8_bin NOT NULL,
  `deskripsi` varchar(128) COLLATE utf8_bin NOT NULL,
  `icon` varchar(256) COLLATE utf8_bin NOT NULL,
  `logo` varchar(256) COLLATE utf8_bin NOT NULL,
  `banner` varchar(256) COLLATE utf8_bin NOT NULL,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `telepon` varchar(30) COLLATE utf8_bin NOT NULL,
  `facebook` varchar(50) COLLATE utf8_bin NOT NULL,
  `instagram` varchar(50) COLLATE utf8_bin NOT NULL,
  `alamat` text COLLATE utf8_bin NOT NULL,
  `tanggal_post` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `author`, `keyword`, `deskripsi`, `icon`, `logo`, `banner`, `email`, `telepon`, `facebook`, `instagram`, `alamat`, `tanggal_post`) VALUES
(2, 'thara Furniture', 'Toko Persediaan Furniture Modern', 'CI, Website, PHP, Toko Furniture, Furniture, PHP', 'T.png', 'T1.png', 'banner.jpg', 'tharafurniture@example.com', '0838-1804-1905', 'http://facebook/tharafurniture', 'http://instagram/tharafurniture.com', 'Jl.Kota Kasablangka jakarta timur', '2019-10-08');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `kode_produk` varchar(128) COLLATE utf8_bin NOT NULL,
  `nama_produk` varchar(255) COLLATE utf8_bin NOT NULL,
  `harga` int(50) NOT NULL,
  `stok` int(50) NOT NULL,
  `ukuran` varchar(256) COLLATE utf8_bin NOT NULL,
  `berat` varchar(255) COLLATE utf8_bin NOT NULL,
  `gambar` varchar(255) COLLATE utf8_bin NOT NULL,
  `deskripsi` text COLLATE utf8_bin NOT NULL,
  `tanggal_post` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `kode_produk`, `nama_produk`, `harga`, `stok`, `ukuran`, `berat`, `gambar`, `deskripsi`, `tanggal_post`) VALUES
(13, 4, 'KP000001', 'Klasik Mahoni', 6500000, 12, '200x150', '50', 'cupboard1.jpg', 'Lemari Pakaian &quot;Klasik Mahoni&quot; adalah simbol keanggunan dan keindahan dalam desain furnitur. Dibuat dari kayu mahoni yang berkualitas tinggi, lemari ini menghadirkan sentuhan klasik yang abadi ke dalam ruang Anda. Desainnya yang megah dan detail ukiran yang indah menambahkan sentuhan kemewahan yang tak tertandingi.\r\n\r\nDengan dua pintu geser dan empat rak dalam, Lemari Pakaian &quot;Klasik Mahoni&quot; menawarkan ruang penyimpanan yang luas untuk segala jenis pakaian dan aksesori Anda. Rak atas yang luas juga dapat digunakan untuk menampilkan barang-barang dekoratif favorit Anda.\r\n\r\nDengan harga yang terjangkau, Lemari Pakaian &quot;Klasik Mahoni&quot; adalah pilihan sempurna untuk menghiasi kamar tidur atau ruang keluarga Anda dengan gaya dan keanggunan yang tak tertandingi. Segera miliki lemari ini dan tambahkan sentuhan kemewahan ke dalam rumah Anda!', '2024-05-05'),
(14, 4, 'KP000002', 'Modern Oak', 4800000, 4, '190x140', '55', 'cupboard2.jpg', 'Lemari Pakaian &quot;Modern Oak&quot; adalah perpaduan sempurna antara keindahan dan fungsionalitas. Dibuat dari kayu oak berkualitas tinggi dengan sentuhan desain modern, lemari ini memberikan tampilan yang segar dan elegan ke dalam ruang Anda. Dengan dua pintu kaca dan rak dalam yang disusun dengan baik, lemari ini tidak hanya menyediakan ruang penyimpanan yang luas, tetapi juga memungkinkan Anda untuk menampilkan koleksi pakaian Anda dengan gaya.', '2024-05-05'),
(15, 4, 'KP000003', 'Vintage walnut', 2200000, 12, '190x140', '50', 'cupboard6.jpg', 'Lemari Pakaian \"Vintage Walnut\" adalah gabungan antara keanggunan klasik dan kehangatan modern. Dibuat dari kayu walnut berkualitas tinggi dengan sentuhan desain vintage, lemari ini memberikan nuansa yang hangat dan menawan ke dalam ruang Anda. Dengan empat pintu dan laci yang luas, lemari ini menyediakan ruang penyimpanan yang cukup untuk semua kebutuhan pakaian Anda.', '2024-05-05'),
(16, 4, 'KP000004', 'Minimalist Birch', 4500000, 1, '170x150', '55', 'cupboard3.jpg', 'Lemari Pakaian &quot;Minimalist Birch&quot; adalah pilihan yang sempurna untuk ruang yang terbatas. Dengan desain yang minimalis dan fungsional, lemari ini memberikan sentuhan kesederhanaan yang elegan ke dalam ruang Anda. Dibuat dari kayu birch yang ringan namun tahan lama, lemari ini menyediakan ruang penyimpanan yang cukup untuk pakaian dan aksesori Anda tanpa mengambil terlalu banyak ruang.', '2024-05-05'),
(17, 5, 'KP000005', 'Modern Maple', 1400000, 14, '140x70', '22', 'table1.jpg', 'Meja &quot;Modern Maple&quot; adalah representasi dari desain yang minimalis namun fungsional. Dibuat dari kayu maple berkualitas tinggi, meja ini menampilkan keindahan alam dengan sentuhan modern. Dengan ukuran yang luas dan kokoh, meja ini cocok untuk digunakan sebagai meja kerja atau meja makan, memberikan ruang yang cukup untuk bekerja atau berkumpul dengan keluarga.', '2024-05-05'),
(18, 5, 'KP000006', 'tesssss', 1233123123, 1, '200x150', '11', 'table11.jpg', 'asdasdasd', '2024-05-05'),
(19, 5, 'KP000007', 'adsads', 2222, 23, '200x150', '11', 'table6.jpg', 'adsasd', '2024-05-05'),
(20, 5, 'KP000008', 'adsads', 123123, 14, '140x70', '12', 'table61.jpg', 'dsaads', '2024-05-05'),
(21, 8, 'KP000009', 'Electrolux ETB4600B', 8300000, 4, '75x80x190', '65', 'kulkas2.jpg', 'Kulkas berdesain elegan dengan fitur NutriFresh Inverter yang menjaga suhu stabil untuk kesegaran makanan lebih lama.', '2024-05-25'),
(22, 8, 'KP000010', 'Sharp SJ-IF85P', 65000000, 14, '170x150', '65', 'kulkas1.jpg', 'Dengan fitur Plasmacluster, kulkas ini efektif membunuh bakteri dan menjaga udara di dalam kulkas tetap bersih.', '2024-05-25'),
(23, 8, 'KP000011', 'Panasonic NR-BV320Q', 7200000, 8, '70x75x180', '60', 'kulkas5.jpg', 'Kulkas ini memiliki teknologi Prime Fresh yang menjaga daging tetap segar hingga 7 hari tanpa perlu dibekukan', '2024-05-25'),
(24, 8, 'KP000012', 'LG GN-B222SQBB', 4800000, 3, '55x60x160', '50', 'kulkas51.jpg', 'Kulkas hemat energi dengan kapasitas besar dan fitur Moist Balance Crisper untuk menjaga kelembapan optimal buah dan sayur.', '2024-05-25'),
(25, 6, 'KP000013', 'King Koil World Edition', 12500000, 8, '180x200', '62', 'bed1.jpg', 'Kasur mewah dengan teknologi Posture Comfort yang memberikan dukungan optimal untuk tulang belakang.', '2024-05-25'),
(26, 6, 'KP000014', 'Comforta Perfect Choice', 6200000, 10, '160x200', '45', 'bed2.jpg', 'Dilengkapi dengan busa berkualitas tinggi dan pegas yang kokoh, memberikan kenyamanan maksimal setiap malam.', '2024-05-25'),
(27, 6, 'KP000015', 'Serta iComfort', 15800000, 4, '200x200', '55', 'bed3.jpg', 'Kasur premium dengan teknologi CoolAction Gel Memory Foam untuk tidur yang lebih sejuk dan nyaman.', '2024-05-25'),
(28, 6, 'KP000016', 'Florence Deluxe Comfort', 8000000, 12, '180x200', '43', 'bed4.jpg', 'Kasur ini memiliki lapisan lateks alami yang memberikan kenyamanan dan kelembutan ekstra.', '2024-05-25'),
(29, 6, 'KP000017', 'Airland Superior', 5700000, 3, '60x200', '46', 'bed5.jpg', 'Dirancang dengan teknologi Advanced Spring System untuk mendukung tubuh dan mengurangi tekanan saat tidur.', '2024-05-25'),
(30, 6, 'KP000018', 'Therapedic Therawrap', 9300000, 7, '180x200', '45', 'bed6.jpg', 'Kasur ini menggunakan sistem pegas pocketed untuk memberikan kenyamanan individual dan mengurangi transfer gerakan.', '2024-05-25'),
(31, 7, 'KP000019', 'Ergotec ET-9200', 1500000, 4, '60x60x110', '15', 'chair1.jpg', 'Kursi ergonomis dengan sandaran yang dapat disesuaikan dan bantalan duduk yang empuk, ideal untuk bekerja lama di depan komputer.', '2024-05-25'),
(32, 7, 'KP000020', 'Informa Harvard', 2200000, 10, '70x70x120', '18', 'chair2.jpg', 'Kursi kantor premium dengan desain modern dan bahan kulit sintetis berkualitas tinggi untuk kenyamanan dan gaya.', '2024-05-25'),
(33, 7, 'KP000021', 'IKEA Markus', 2000000, 10, '65x65x130', '20', 'chair3.jpg', 'Kursi dengan sandaran tinggi dan dukungan lumbar yang memberikan kenyamanan ekstra saat duduk dalam waktu lama.', '2024-05-25'),
(34, 7, 'KP000022', 'YSK Comfort Chair', 1800000, 2, '60x60x115', '16', 'chair5.jpg', 'Kursi kantor dengan desain kontemporer dan bahan mesh yang mendukung sirkulasi udara untuk kenyamanan maksimal.', '2024-05-25'),
(35, 7, 'KP000023', 'ACE Executive Chair', 3500000, 3, '75x75x125', '22', 'chair4.jpg', 'Kursi eksekutif dengan fitur reclining dan pijakan kaki, memberikan kemewahan dan kenyamanan di ruang kerja Anda.', '2024-05-25'),
(36, 7, 'KP000024', 'Olympic Minimalist Chair', 1200000, 30, '55x55x100', '12', 'chair6.jpg', 'Kursi bergaya minimalis dengan rangka kokoh dan dudukan yang empuk, cocok untuk berbagai jenis ruang kerja', '2024-05-25'),
(37, 5, 'KP000025', 'IKEA LINNMON', 800000, 22, '120x60x75', '20', 'table62.jpg', 'Meja sederhana dengan desain minimalis yang cocok untuk ruang kerja atau ruang belajar, dilengkapi dengan kaki yang dapat disesuaikan.', '2024-05-25'),
(38, 5, 'KP000026', 'Informa Maximo Desk', 2000000, 20, '140x70x75', '25', 'table63.jpg', 'Meja kerja modern dengan permukaan yang luas dan laci penyimpanan, ideal untuk meningkatkan produktivitas di kantor.', '2024-05-25');

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `id_rekening` int(11) NOT NULL,
  `nama_bank` varchar(128) COLLATE utf8_bin NOT NULL,
  `nomor_rekening` varchar(128) COLLATE utf8_bin NOT NULL,
  `nama_pemilik` varchar(128) COLLATE utf8_bin NOT NULL,
  `tanggal_post` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `rekening`
--

INSERT INTO `rekening` (`id_rekening`, `nama_bank`, `nomor_rekening`, `nama_pemilik`, `tanggal_post`) VALUES
(1, 'BANK BCA', '9218219211', 'Marwan Kiting', '2019-10-27 10:03:12'),
(2, 'Bank BRI', '9219192451', 'Ade Sumarwan', '2019-10-27 10:02:19'),
(5, 'BANK BRI cabang depok', '222489498498', 'Maryoto Surya', '2019-09-29 06:45:09');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` varchar(128) COLLATE utf8_bin NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `tanggal_transaksi` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_user`, `id_produk`, `harga`, `jumlah`, `total_harga`, `tanggal_transaksi`) VALUES
('0505202486TRBRCY', 5, 7, 120000, 1, 120000, '2024-05-05 12:49:23'),
('050520248HEYVFC3', 5, 7, 120000, 1, 120000, '2024-05-05 12:50:09'),
('05052024VP7L1BKS', 5, 7, 120000, 1, 120000, '2024-05-05 12:49:38'),
('110620242', 11, 31, 1500000, 2, 3000000, '2024-06-11 06:04:11'),
('11062024F6DMYY0T', 11, 31, 1500000, 2, 3000000, '2024-06-11 05:04:54'),
('130520246AWE4KRB', 5, 17, 1400000, 1, 1400000, '2024-05-13 06:28:03'),
('130520249WZMVGRD', 5, 14, 4800000, 1, 4800000, '2024-05-13 09:16:09'),
('13052024BBYMOLPN', 5, 17, 1400000, 1, 1400000, '2024-05-13 09:03:35'),
('13052024BYFU9NWT', 5, 17, 1400000, 1, 1400000, '2024-05-13 08:13:23'),
('13052024EKYUITBK', 5, 17, 1400000, 2, 2800000, '2024-05-13 08:59:58'),
('13052024RPTVBIRH', 5, 17, 1400000, 1, 1400000, '2024-05-13 09:11:52'),
('15102019DWVRGKJI', 1, 8, 130000, 1, 130000, '2019-10-15 00:00:00'),
('15102019UQBOSXVW', 1, 3, 190000, 1, 190000, '2019-10-15 00:00:00'),
('17102019DNP75VCF', 3, 5, 210000, 1, 210000, '2019-10-17 00:00:00'),
('20102019BRUXEPGL', 1, 8, 130000, 1, 130000, '2019-10-20 00:00:00'),
('20102019DVJEG3PL', 1, 8, 130000, 1, 130000, '2019-10-20 00:00:00'),
('250520246TS4UKGQ', 9, 14, 4800000, 1, 4800000, '2024-05-25 06:03:48'),
('250520249MGGAJK3', 8, 27, 15800000, 1, 15800000, '2024-05-25 04:01:34'),
('25052024BOWGVFQC', 10, 37, 800000, 1, 800000, '2024-05-25 09:52:09'),
('25052024QMSJY0J5', 10, 15, 2200000, 1, 2200000, '2024-05-25 09:54:06'),
('25052024TFKYMEUT', 10, 37, 800000, 1, 800000, '2024-05-25 09:53:17'),
('25052024YQWYCKVV', 10, 25, 12500000, 1, 12500000, '2024-05-25 10:05:19'),
('25052024YWAWFKRB', 10, 31, 1500000, 1, 1500000, '2024-05-25 10:04:34'),
('25052024ZGXL3FSM', 10, 37, 800000, 1, 800000, '2024-05-25 09:50:43'),
('25052024ZXFB7SEG', 10, 37, 800000, 1, 800000, '2024-05-25 09:52:01'),
('25102019VC0P9ZEH', 1, 7, 120000, 1, 120000, '2019-10-25 17:08:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(128) COLLATE utf8_bin NOT NULL,
  `email` varchar(128) COLLATE utf8_bin NOT NULL,
  `password` varchar(256) COLLATE utf8_bin NOT NULL,
  `alamat` text COLLATE utf8_bin NOT NULL,
  `telepon` varchar(30) COLLATE utf8_bin NOT NULL,
  `gambar` varchar(128) COLLATE utf8_bin NOT NULL,
  `tanggal_daftar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `password`, `alamat`, `telepon`, `gambar`, `tanggal_daftar`) VALUES
(1, 'RINDU', 'rindu@example.com', '$2y$10$0U0N7AXDrVtF1BJZBaBFae4o/AC3caMFb2U/B4VGHOuKSGffaVuZi', 'Jl. in aja dulu, siapa tau jodoh', '08960001110', '', 1563020198),
(3, 'Alexa Indriana', 'alexa@example.com', '$2y$10$CYQmAr4IgxTYr99JRX7YauF48yERpvstWJ5yyU0MUD3yPoApPHa22', 'Jl. in aja dulu', '012831832', '', 1563679828),
(4, 'Lea Alexandra', 'lea@example.com', '$2y$10$wqW5ivukl9ee2yo2vyeg8O4RuYu5XgsQgQuSswqY3NJgTjLlzwJPu', 'Jl. ini mengingatkan tentang dia', '0129999212', '', 1564731723),
(5, 'andrii', 'andrii@gmail.com', '$2y$10$AGxIg1v3XTvl1HtNLEznBeDLuecpWQgj1etaf.6WyIP/dxbc.B/.e', 'bojongggerdeee', '08929292', '', 1714380827),
(6, 'andri', 'andrii@gmail.com', '$2y$10$Q6COwinDcwee9T8PDePG4eRaCkPyK4h/G0FidgZBZwUx9mNCmfKFe', 'bojong', '08929292', '', 1714906101),
(7, 'andri', 'andrii@gmail.com', '$2y$10$dnfMgzWd3TUrp/0SYb8raejBZh0j16hNVa4QCZpBaBqY3sevZwqiq', '1', '08929292', '', 1715617652),
(8, 'andri', 'ashel@gmail.com', '$2y$10$La6wHWVRGChNU4NJFORipeV64Fgbb0spwAenQ7oyti7h/oDpbJ/bK', 'HJH', '65656', '', 1716645590),
(9, 'Mohammad Daffa Abhinaya Daelami', 'daffa@gmail.com', '$2y$10$6vgsCIR3PkIukNbMpPxzmOyVqujzmJx7g.kw1X37m63kZKrHrAs0S', 'bogay', '123', '', 1716652795),
(10, 'da', 'da@gmail.com', '$2y$10$r/Ck5rmA.o/lyNjcDL8/6.ey6hVNRSmx356/t2aBZcaKQGF9YcPHC', 'da', '123', '', 1716666615),
(11, 'daffa', '123@gmail.com', '$2y$10$HW9dEM3fHvkL3UgOlo.4eugJeM.xevFw76urclYkDwgwvQ3omXe4m', 'bogor', '123', '', 1717940816);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header_transaksi`
--
ALTER TABLE `header_transaksi`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id_konfigurasi`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id_rekening`),
  ADD UNIQUE KEY `nomor_rekening` (`nomor_rekening`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `header_transaksi`
--
ALTER TABLE `header_transaksi`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id_konfigurasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id_rekening` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
