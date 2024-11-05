-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2024 at 05:01 PM
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
-- Database: `cf_udang`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_akun`
--

CREATE TABLE `tb_akun` (
  `id_akun` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_akun`
--

INSERT INTO `tb_akun` (`id_akun`, `nama_lengkap`, `username`, `password`, `level`) VALUES
(1, 'Administrator', 'admin', '12345', 'Admin'),
(9, 'User', 'user', '12345', 'user'),
(14, 'silfi gabrilia', 'silfi gabrilia c', '123456', 'user'),
(15, 'faiqotul', 'faiq', '12345', 'user'),
(16, 'riska', 'riskavmh', 'riska123', 'user'),
(17, 'ahmad dani', 'dani', '12345', 'user'),
(18, 'testt', 'test', '123', 'user'),
(19, 'rhiee', 'rhiie', 'asdw', 'user'),
(23, 'intan putri', 'intan', 'intan', 'user'),
(24, 'p', 'p', '123', 'user'),
(25, 'petani udang', 'petani u', '12345', 'user'),
(27, 'Bety Etikasari a', 'Bety', '12345', 'user'),
(28, 'tes', 'testing', '12345678', 'user'),
(29, 'tes', 'tes', '12345a', 'user'),
(30, 'Yani Lestari N', 'yanilestari', 'Yelena110667', 'user'),
(31, 'Fatmawati', 'Fatma', 'Situbondo', 'user'),
(32, 'Ratna', 'nanana', 'qwerty12', 'user'),
(34, 'rara', 'nanana', '1234', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `tb_aturan`
--

CREATE TABLE `tb_aturan` (
  `id_aturan` int(11) NOT NULL,
  `id_gejala` int(11) NOT NULL,
  `id_penyakit` int(11) NOT NULL,
  `nilai_gejala` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_aturan`
--

INSERT INTO `tb_aturan` (`id_aturan`, `id_gejala`, `id_penyakit`, `nilai_gejala`) VALUES
(1, 1, 1, 0),
(2, 2, 1, 0.8),
(3, 3, 1, -0.2),
(4, 4, 1, 0.6),
(5, 5, 4, 0.8),
(6, 6, 2, 0.8),
(7, 7, 2, 0.8),
(8, 8, 2, 0),
(9, 9, 2, 0.2),
(10, 10, 2, 0.2),
(11, 11, 2, 0.2),
(12, 12, 2, 0.2),
(13, 13, 2, 0.2),
(14, 11, 3, 0.2),
(15, 14, 3, 0.4),
(16, 15, 3, 0),
(17, 16, 3, 0),
(18, 17, 3, 0),
(19, 21, 3, 0.8),
(20, 22, 3, 0.8),
(21, 23, 3, 0.8),
(22, 24, 3, 0.8),
(23, 25, 3, 0.8),
(24, 26, 3, 0.2),
(25, 27, 3, 0.2),
(26, 28, 3, -0.2),
(27, 29, 4, 0.8),
(28, 30, 4, 0.8),
(29, 31, 4, 0.8),
(30, 32, 4, 0.2),
(31, 33, 4, 0.8),
(32, 34, 4, 0.8),
(33, 35, 5, 0.8),
(34, 36, 5, 0.8),
(35, 37, 5, 0.2),
(36, 38, 6, 0.8),
(37, 9, 6, 0.2),
(38, 39, 6, 0.8),
(39, 40, 6, 0),
(40, 14, 6, 0),
(41, 41, 6, 0.2),
(42, 42, 7, 0.8),
(43, 43, 7, 0.8),
(44, 44, 7, 0.8),
(45, 9, 7, 0.8),
(46, 45, 7, 0.2),
(47, 46, 7, 0.8),
(48, 47, 7, 0.8),
(49, 48, 7, 0.8),
(50, 49, 8, 0.4),
(51, 10, 8, 0),
(52, 50, 8, 0.2),
(53, 51, 8, 0.4),
(54, 52, 8, 0.8),
(55, 11, 8, 0),
(56, 53, 8, 0.8),
(57, 54, 8, 0.2),
(58, 55, 8, 0.8),
(59, 56, 9, 0.6),
(60, 57, 9, 0.8),
(61, 58, 9, 0),
(62, 59, 9, 0.2),
(63, 14, 9, 0),
(64, 11, 9, 0.2),
(65, 60, 9, 0.8),
(66, 14, 10, 0.8),
(67, 61, 10, 0.8),
(68, 62, 10, 0.8),
(69, 63, 10, 0),
(70, 64, 10, 0.8),
(71, 65, 11, 0.8),
(72, 66, 11, -0.2),
(73, 67, 11, 0.2),
(74, 64, 11, -0.2),
(75, 68, 11, -0.2),
(76, 11, 11, 0),
(77, 69, 11, 0),
(78, 70, 12, 0.8),
(79, 71, 12, 0.2),
(80, 72, 12, 0),
(81, 73, 12, 0.8),
(82, 74, 12, -0.2),
(83, 75, 12, -0.4),
(84, 76, 13, 0.8),
(85, 77, 13, 0.8),
(86, 78, 13, 0.8),
(87, 79, 13, 0),
(88, 80, 13, 0),
(89, 81, 13, 0.2),
(90, 11, 13, 0),
(91, 82, 13, 0),
(92, 14, 13, 0),
(93, 4, 14, 0.4);

-- --------------------------------------------------------

--
-- Table structure for table `tb_gejala`
--

CREATE TABLE `tb_gejala` (
  `id_gejala` int(11) NOT NULL,
  `nama_gejala` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_gejala`
--

INSERT INTO `tb_gejala` (`id_gejala`, `nama_gejala`) VALUES
(1, 'Perilaku berenang yang tidak normal – berenang lambat, berenang menyamping, berenang di dekat permukaan air dan berkumpul di sekitar tepi petak pemeliharaan'),
(2, 'Terdapat bercak putih dikarapas dan rostrum, tidak selalu tampak pada fase akut tetapi akan tampak pada fase subakut dan kronis. Bintik putih berukuran 3mm'),
(3, 'Udang berubah warna menjadi kemerahan atau merah muda'),
(4, 'Mortalitas dapat mencapai 100% dalam jangka waktu 3-10 hari'),
(5, 'Necrosis pada otot abdomen'),
(6, 'Pada fase akut hampir mati ditandai dengan perluasan kromatopor merah. udang yang terkena dampak secara umum warna kemerahan pucat membuat kipas ekor (telson) dan pleopod menjadi merah. Udang yang terkena dampak akut biasanya mati pada proses moulting (proses ganti kulit)'),
(7, 'Epitel kutikula mengalami nekrosis (seperti tepi uropoda atau pleopoda) '),
(8, 'Kutikula lunak'),
(9, 'Usus kosong'),
(10, 'Udang lemah'),
(11, 'Nafsu makan menurun'),
(12, 'Pada Infeksi berat, Udang mengalami kesulitan dalam bernafas'),
(13, 'Epitel tubulus antena rusak'),
(14, 'Pertumbuhan lambat atau Abnormal'),
(15, 'Perubahan warna kulit/karapas'),
(16, 'Perubahan tingkah laku'),
(17, 'Berenang dipermukaan secara perlahan, hilang keseimbangan dan bergerak berputar dan selanjutnya tenggelam perlahan dalam posisi terbalik'),
(21, 'Sindrom kelainan bentuk kerdil (RDS) atau udang blantik'),
(22, 'Rostrum yang bengkok ke kiri atau kanan atau cacat'),
(23, 'Flagella antenna berkerut'),
(24, 'Kutikula abnormal'),
(25, 'Kepala bengkak/upnormal'),
(26, 'Bercak bercak putih terutama antara segmen eksoskeleton dan karapas'),
(27, 'Udang yang sekarat umumnya berwarna merah kecoklatan atau pink'),
(28, 'Populasi udang dengan gejala-gejala tersebut umumnya akan mengalami laju kematian yang tinggi dalam tempo 3-10 hari.'),
(29, 'Ruas ke 6 abdomen berwarna orange (opague pada abdomen)'),
(30, 'Kematian yang tinggi dapat terjadi secara tiba-tiba dan berlanjut selama beberapa hari'),
(31, 'Nekrotik memerah pada beberapa individu udang'),
(32, 'Udang yang terkena dampak parah menjadi lesu'),
(33, 'Nekrotik putih fokal hingga luas pada otot lurik (kerangka), terutama pada segmen perut distal '),
(34, 'Ekor kipas berwarna kemerahan'),
(35, 'Insang berwarna putih, kuning, atau coklat'),
(36, 'Cephalothorax berwarna kekuningan, sedangkan bagian tubuh lain berwarna pucat. '),
(37, 'Kematian massal hingga 100% dalam waktu 3-5 hari sejak munculnya tanda-tanda klinis pertama'),
(38, 'Atrofi hepatopankreas dengan warna pucat'),
(39, 'Lesi dan otot keputihan yang tidak merata dibagian perut'),
(40, 'Karapas  lunak'),
(41, 'Terjadinya kematian udang di dasar tambak '),
(42, 'Timbulnya tanda-tanda penyakit dan kematian dapat dimulai sejak 10 hari setelah penebaran. '),
(43, 'Hepatopankreas (HP) pucat hingga putih akibat hilangnya pigmen pada kapsul jaringan ikat '),
(44, 'Cangkak lunak / lepas'),
(45, 'Udang yang sakit tenggelam dan mati di dasar tambak'),
(46, 'Bintik-bintik hitam atau garis-garis yang terlihat di dalam HP (karena tubulus melanisasi)'),
(47, 'HP tidak mudah terjepit di antara ibu jari dan telunjuk'),
(48, 'Kematian massal yang tiba-tiba (hingga 100%) biasanya dalam waktu 30–35 hari setelah penebaran Post Larva atau tokolan di tambak'),
(49, 'Seluruh tubuh (carapace) udang vaname berwarna merah, kemerahan pada telson, nekrosis pada ekor, kaki renang dan kaki jalan memerah '),
(50, 'Berenang lambat'),
(51, 'Perubahan warna kulit menjadi kusam atau pucat dan kotor'),
(52, 'Udang bercahaya di kolam'),
(53, 'Kerusakan pada kaki dan insang, atau insang berwarna kecoklatan'),
(54, 'Usus udang yang terlihat kosong yang diikuti perubahan hepatopankreas yang berubah warna lebih gelap (kecoklatan)'),
(55, 'Nekrosis  pada anggota tubuh'),
(56, 'Perubahan warna hepatopankreas menjadi pucat '),
(57, 'Warna usus menjadi putih, bahkan terlihat kosong'),
(58, 'Perubahan warna gelap diikuti dengan melanisasi tubuh dan ekor'),
(59, 'Karapasnya sudah melunak dan mengendur, tidak menempel pada tubuhnya'),
(60, 'Feses berwarna putih, mengambang di permukaan air kolam'),
(61, 'Benang feses berwarna putih terdapat pada beberapa kasus'),
(62, 'Rasio makanan (FCR) tinggi'),
(63, 'Feses berwarna putih seperti untaian feses berwarna keputihan yang mengambang'),
(64, 'Kutikula longgar'),
(65, 'Pada tahap awal infeksi, insang udang berubah warna menjadi kuning jingga atau coklat muda. Pada akhirnya insang menjadi lebih gelap hingga berwarna hitam pekat'),
(66, 'Melanisasi pada beberapa bagian tubuh udang'),
(67, 'Sub-dewasa atau dewasa dengan kepala atau ekor yang bengkok atau hilang, organ lain seperti kaki jalan & renang mengalami kerusakan bahkan terputus'),
(68, 'Kerusakan kutikula udang '),
(69, 'Munculnya bintik hitam'),
(70, 'Infeksi otot rangka, menjadikan daerah tubuh yang terkena berwarna putih atau buram'),
(71, 'Udang yang terkena dampak parah selain memiliki otot berwarna putih buram, biasanya memiliki warna kutilakula biru kehitaman (karena perluasan melanisasi kutikula).'),
(72, 'Penurunan gen imun bawaan di hepatopankreas'),
(73, 'Udang berwarna keputihan atau seperti susu terlihat di berbagai bagian tubuh/usus'),
(74, 'Saluran pencernaan yang kosong'),
(75, 'Udang tidak mampu bereproduksi'),
(76, 'Berenang ke permukaan air dan tubuhnya berwarna buram/kotor.'),
(77, 'Insang yang terinfeksi berwarna kemerahan atau kecoklatan.'),
(78, 'Lemah, kesulitan bergerak.'),
(79, 'Proses ganti kulit (moulting) terhambat, dan timbul peradangan pada kulit.'),
(80, 'Permukaan kutikula, insang, kaki renang dan kaki berjalan berbulu halus'),
(81, 'Kesulitan bernafas'),
(82, 'Kerusakan pada permukaan kulit bagian dalam'),
(86, 'testing satu');

-- --------------------------------------------------------

--
-- Table structure for table `tb_hasil`
--

CREATE TABLE `tb_hasil` (
  `id_hasil` int(11) NOT NULL,
  `id_akun` int(11) NOT NULL,
  `no_regidentifikasi` char(10) NOT NULL,
  `tgl_identifikasi` date NOT NULL,
  `penyakit_cf` text NOT NULL,
  `nilai_cf` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_hasil`
--

INSERT INTO `tb_hasil` (`id_hasil`, `id_akun`, `no_regidentifikasi`, `tgl_identifikasi`, `penyakit_cf`, `nilai_cf`) VALUES
(2, 7, 'CEXRDF1X1K', '2024-08-28', 'WSSV', 80.27),
(11, 9, 'ZVZ6DSEACM', '2024-10-19', 'Taura Syndrome Virus (TSV)', 85.78),
(13, 9, 'EW6QZX46LS', '2024-10-19', 'Taura Syndrome Virus (TSV)', 87.56),
(14, 9, 'VUU6R4IGI1', '2024-10-20', 'AHPND', 48),
(15, 15, 'CYHV72QDMH', '2024-10-20', 'Taura Syndrome Virus (TSV)', 48),
(16, 15, 'GEBKZ2CIOF', '2024-10-20', 'Taura Syndrome Virus (TSV)', 78.38),
(17, 17, 'LX5HWGGOIC', '2024-10-20', 'WSSV', 75.87),
(18, 17, 'O6OP4CMFZZ', '2024-10-20', 'Taura Syndrome Virus (TSV)', 16),
(19, 18, '5FPVZX5X3Z', '2024-10-21', 'Taura Syndrome Virus (TSV)', 68.32),
(20, 18, 'DMHZ8BI29D', '2024-10-21', 'Taura Syndrome Virus (TSV)', 29.44),
(21, 18, '9Q8TJJIA8B', '2024-10-21', 'Taura Syndrome Virus (TSV)', 65.44),
(22, 14, 'XNLSSY69N9', '2024-10-23', 'Taura Syndrome Virus (TSV)', 42.88),
(25, 9, 'ONLXZN9PU5', '2024-10-31', 'White Spot Syndrome Virus (WSSV)', 43.84),
(26, 9, 'A1BTN6KFVZ', '2024-10-31', 'IHHN', 86),
(27, 25, '4GJ19SKH3Y', '2024-10-31', 'Taura Syndrome Virus (TSV)', 56.32),
(28, 9, 'NTPSVAAQ9H', '2024-10-31', '', 0),
(31, 9, 'C6BTEBZLKL', '2024-11-03', 'Vibriosis ', 48.32),
(32, 25, 'D8REEHKG2Q', '2024-11-03', 'AHPND/EMS (Early Mortality Syndrome)', 87.04),
(33, 25, 'V3BRAGPB8R', '2024-11-03', 'Fouling Diseases (Penyakit Dekil)', 52.16),
(34, 29, 'WF2M5N7RR2', '2024-11-04', 'White Spot Syndrome Virus (WSSV)', 64),
(35, 29, '5GUF9TIP51', '2024-11-04', 'Infectious Myonecrosis (IMNV) atau penyakit udang rebus', 81.28),
(36, 9, 'Z414XD1OJ3', '2024-11-04', 'Taura Syndrome Virus (TSV)', 50.08),
(37, 30, 'AZ22YB6ZQ4', '2024-11-04', 'White Spot Syndrome Virus (WSSV)', 91.04),
(38, 30, 'IUCCEQSVUV', '2024-11-04', 'IHHN', 99.79),
(39, 30, 'M5N4LBLBCO', '2024-11-04', 'Infectious Myonecrosis (IMNV) atau penyakit udang rebus', 96.71),
(40, 30, 'EMHSGQLXDK', '2024-11-04', 'EHP (Enterocytozoon hepatopenaei)', 97.92),
(41, 30, 'EK73XFNYOR', '2024-11-04', 'AHPND/EMS (Early Mortality Syndrome)', 99.49),
(42, 31, 'R8SUBL8633', '2024-11-04', 'White Spot Syndrome Virus (WSSV)', 74.2),
(43, 31, 'AGHUWQFCIG', '2024-11-04', 'Taura Syndrome Virus (TSV)', 73.39),
(44, 31, '67DYB1RN3F', '2024-11-04', 'Taura Syndrome Virus (TSV)', 96.64),
(45, 9, 'RX9UESIH48', '2024-11-04', 'Infectious Myonecrosis (IMNV) atau penyakit udang rebus', 93.26),
(46, 31, 'MIQJE7C7ED', '2024-11-04', 'EHP (Enterocytozoon hepatopenaei)', 99.2),
(47, 31, '9VMJERQ7LY', '2024-11-04', 'AHPND/EMS (Early Mortality Syndrome)', 87.04),
(48, 31, 'B8IDPKATLP', '2024-11-04', 'IHHN', 96),
(49, 32, 'S31T174AI8', '2024-11-04', 'IHHN', 98.64),
(51, 9, 'Z7EIYV9MGH', '2024-11-05', 'IHHN', 64);

-- --------------------------------------------------------

--
-- Table structure for table `tb_identifikasi`
--

CREATE TABLE `tb_identifikasi` (
  `id_identifikasi` int(11) NOT NULL,
  `no_regidentifikasi` char(10) NOT NULL,
  `tgl_identifikasi` date NOT NULL,
  `id_akun` int(11) NOT NULL,
  `id_gejala` int(11) NOT NULL,
  `nilai_user` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_identifikasi`
--

INSERT INTO `tb_identifikasi` (`id_identifikasi`, `no_regidentifikasi`, `tgl_identifikasi`, `id_akun`, `id_gejala`, `nilai_user`) VALUES
(1, 'TYBEM1UPYZ', '2024-08-25', 7, 1, 0.2),
(2, 'TYBEM1UPYZ', '2024-08-25', 7, 2, 0.8),
(3, 'TYBEM1UPYZ', '2024-08-25', 7, 3, 1),
(4, '2FYQFKKQXB', '2024-08-27', 7, 1, 0.2),
(5, '2FYQFKKQXB', '2024-08-27', 7, 2, 0.8),
(6, '2FYQFKKQXB', '2024-08-27', 7, 3, 0.2),
(7, '2FYQFKKQXB', '2024-08-27', 7, 4, 0.8),
(8, 'PS1CKHW9YT', '2024-08-27', 7, 1, 0.4),
(9, 'PS1CKHW9YT', '2024-08-27', 7, 2, 0.6),
(10, 'PS1CKHW9YT', '2024-08-27', 7, 3, 0.2),
(11, 'PS1CKHW9YT', '2024-08-27', 7, 4, 0.8),
(12, 'G5SO7SU58W', '2024-08-28', 7, 1, 0.2),
(13, 'G5SO7SU58W', '2024-08-28', 7, 2, 0.6),
(14, 'G5SO7SU58W', '2024-08-28', 7, 3, 0.2),
(15, 'G5SO7SU58W', '2024-08-28', 7, 4, 0.8),
(16, 'LCEERPGNKZ', '2024-08-28', 7, 1, 0.4),
(17, 'LCEERPGNKZ', '2024-08-28', 7, 2, 0.8),
(18, 'LCEERPGNKZ', '2024-08-28', 7, 3, 0.2),
(19, 'LCEERPGNKZ', '2024-08-28', 7, 4, 1),
(20, 'CEXRDF1X1K', '2024-08-28', 7, 1, 0.2),
(21, 'CEXRDF1X1K', '2024-08-28', 7, 2, 0.4),
(22, 'CEXRDF1X1K', '2024-08-28', 7, 3, 0.6),
(23, 'CEXRDF1X1K', '2024-08-28', 7, 4, 0.8),
(24, 'M12YHJQ4O9', '2024-10-13', 9, 1, 0.8),
(25, 'M12YHJQ4O9', '2024-10-13', 9, 2, 0.6),
(26, 'M12YHJQ4O9', '2024-10-13', 9, 3, 0.2),
(27, 'M12YHJQ4O9', '2024-10-13', 9, 4, 0.4),
(28, 'M12YHJQ4O9', '2024-10-13', 9, 5, 0.4),
(29, '6DX3RLT3XT', '2024-10-13', 9, 1, 0.8),
(30, '6DX3RLT3XT', '2024-10-13', 9, 2, 0.2),
(31, 'LAKF48EQAP', '2024-10-13', 9, 1, 0.6),
(32, 'LAKF48EQAP', '2024-10-13', 9, 2, 0.8),
(33, 'LAKF48EQAP', '2024-10-13', 9, 3, 0.4),
(34, 'QDY1FMD7FU', '2024-10-13', 9, 1, 0.8),
(35, 'QDY1FMD7FU', '2024-10-13', 9, 2, 0.6),
(36, 'QDY1FMD7FU', '2024-10-13', 9, 3, 0.4),
(37, 'QDY1FMD7FU', '2024-10-13', 9, 4, 0.2),
(38, 'QDY1FMD7FU', '2024-10-13', 9, 5, 0.4),
(39, 'QDY1FMD7FU', '2024-10-13', 9, 6, 0.2),
(40, 'QDY1FMD7FU', '2024-10-13', 9, 7, 0.8),
(41, 'G44BCEHPSC', '2024-10-14', 9, 1, 0.8),
(42, 'G44BCEHPSC', '2024-10-14', 9, 2, 0.6),
(43, 'G44BCEHPSC', '2024-10-14', 9, 3, 0.8),
(44, 'G44BCEHPSC', '2024-10-14', 9, 4, 0.2),
(45, 'L8BF2R534X', '2024-10-14', 9, 1, 0.8),
(46, 'L8BF2R534X', '2024-10-14', 9, 2, 0.6),
(47, 'L8BF2R534X', '2024-10-14', 9, 3, 0.8),
(48, 'L8BF2R534X', '2024-10-14', 9, 4, 0.2),
(49, 'EIRHCAA1M2', '2024-10-14', 9, 1, 0.2),
(50, 'EIRHCAA1M2', '2024-10-14', 9, 2, 0.6),
(51, 'EIRHCAA1M2', '2024-10-14', 9, 3, 0.8),
(52, '93Z4IRGVEG', '2024-10-14', 9, 1, 0.2),
(53, '93Z4IRGVEG', '2024-10-14', 9, 2, 0.2),
(54, '93Z4IRGVEG', '2024-10-14', 9, 3, 0.6),
(55, '93Z4IRGVEG', '2024-10-14', 9, 4, 0.8),
(56, '93Z4IRGVEG', '2024-10-14', 9, 5, 0.6),
(57, '93Z4IRGVEG', '2024-10-14', 9, 6, 0.8),
(58, '93Z4IRGVEG', '2024-10-14', 9, 7, 1),
(59, 'DLMVUI225R', '2024-10-15', 9, 1, 0.8),
(60, 'DLMVUI225R', '2024-10-15', 9, 2, 0.6),
(61, 'DLMVUI225R', '2024-10-15', 9, 3, 0.6),
(62, '7EW854842L', '2024-10-15', 9, 1, 0.8),
(63, '7EW854842L', '2024-10-15', 9, 2, 0.6),
(64, '7EW854842L', '2024-10-15', 9, 3, 0.6),
(65, 'E6KIOEOD5X', '2024-10-15', 9, 1, 0.8),
(66, 'E6KIOEOD5X', '2024-10-15', 9, 2, 0.6),
(67, 'E6KIOEOD5X', '2024-10-15', 9, 3, 0.6),
(68, 'WEXCYTJKLX', '2024-10-15', 9, 1, 0.8),
(69, 'WEXCYTJKLX', '2024-10-15', 9, 2, 0.6),
(70, 'WEXCYTJKLX', '2024-10-15', 9, 3, 0.6),
(71, 'L2GQ9N2OA6', '2024-10-15', 9, 1, 0.8),
(72, 'MFPA2HAHY9', '2024-10-15', 9, 17, 0.8),
(73, 'SZPKVU34K7', '2024-10-15', 9, 17, 0.8),
(74, 'SPWRQAJSFW', '2024-10-15', 9, 1, 0.8),
(75, 'SPWRQAJSFW', '2024-10-15', 9, 8, 0.8),
(76, '3CJV7HS8QG', '2024-10-15', 9, 1, 0.8),
(77, '3CJV7HS8QG', '2024-10-15', 9, 2, 0.8),
(78, 'LIP7EBHB86', '2024-10-15', 9, 1, 0.8),
(79, 'LIP7EBHB86', '2024-10-15', 9, 2, 0.8),
(80, 'TYSCJLNVA1', '2024-10-15', 9, 1, 0.4),
(81, 'TYSCJLNVA1', '2024-10-15', 9, 2, 0.8),
(82, 'TYSCJLNVA1', '2024-10-15', 9, 7, 0.8),
(83, 'TYSCJLNVA1', '2024-10-15', 9, 8, 1),
(84, 'CNQZOEU5UH', '2024-10-15', 9, 4, 0.8),
(85, 'CNQZOEU5UH', '2024-10-15', 9, 5, 0.4),
(86, 'CNQZOEU5UH', '2024-10-15', 9, 10, 0.4),
(87, 'CNQZOEU5UH', '2024-10-15', 9, 11, 0.2),
(91, 'ZG6Y8QKOSU', '2024-10-16', 9, 13, 0.6),
(114, 'X3KNPBSL59', '2024-10-18', 9, 1, 0.4),
(115, 'X3KNPBSL59', '2024-10-18', 9, 2, 0.8),
(116, 'X3KNPBSL59', '2024-10-18', 9, 5, 0.2),
(117, 'X3KNPBSL59', '2024-10-18', 9, 6, 0.4),
(130, 'ZVZ6DSEACM', '2024-10-19', 9, 7, 1),
(131, 'ZVZ6DSEACM', '2024-10-19', 9, 8, 0.6),
(132, 'ZVZ6DSEACM', '2024-10-19', 9, 9, 0.4),
(133, 'ZVZ6DSEACM', '2024-10-19', 9, 11, 0.4),
(134, 'ZVZ6DSEACM', '2024-10-19', 9, 13, 0.8),
(142, 'EW6QZX46LS', '2024-10-19', 9, 3, 0.6),
(143, 'EW6QZX46LS', '2024-10-19', 9, 5, 0.8),
(144, 'EW6QZX46LS', '2024-10-19', 9, 7, 0.8),
(145, 'EW6QZX46LS', '2024-10-19', 9, 13, 0.2),
(146, 'EW6QZX46LS', '2024-10-19', 9, 14, 0.2),
(147, 'EW6QZX46LS', '2024-10-19', 9, 15, 0.4),
(148, 'EW6QZX46LS', '2024-10-19', 9, 16, 0.4),
(149, 'MOAF51B3G8', '2024-10-20', 9, 8, 0.4),
(150, 'MOAF51B3G8', '2024-10-20', 9, 9, 0.8),
(151, 'MOAF51B3G8', '2024-10-20', 9, 12, 0.4),
(152, 'MOAF51B3G8', '2024-10-20', 9, 13, 0.8),
(153, 'MOAF51B3G8', '2024-10-20', 9, 17, 0.4),
(154, 'VUU6R4IGI1', '2024-10-20', 9, 8, 0.4),
(155, 'VUU6R4IGI1', '2024-10-20', 9, 9, 0.6),
(156, 'VUU6R4IGI1', '2024-10-20', 9, 12, 0.4),
(157, 'VUU6R4IGI1', '2024-10-20', 9, 13, 0.8),
(158, 'VUU6R4IGI1', '2024-10-20', 9, 17, 0.4),
(159, 'RGOYSKUASE', '2024-10-20', 15, 1, 0.6),
(160, 'RGOYSKUASE', '2024-10-20', 15, 5, 0.8),
(161, 'RGOYSKUASE', '2024-10-20', 15, 7, 0.8),
(162, 'RGOYSKUASE', '2024-10-20', 15, 10, 0.4),
(163, 'RGOYSKUASE', '2024-10-20', 15, 12, 0.2),
(164, 'RGOYSKUASE', '2024-10-20', 15, 14, 0.2),
(165, 'RGOYSKUASE', '2024-10-20', 15, 17, 0.2),
(166, 'CYHV72QDMH', '2024-10-20', 15, 1, 0.8),
(167, 'CYHV72QDMH', '2024-10-20', 15, 5, 0.6),
(168, 'GEBKZ2CIOF', '2024-10-20', 15, 4, 0.6),
(169, 'GEBKZ2CIOF', '2024-10-20', 15, 5, 0.4),
(170, 'GEBKZ2CIOF', '2024-10-20', 15, 7, 0.8),
(171, 'GEBKZ2CIOF', '2024-10-20', 15, 10, 0.2),
(172, 'GEBKZ2CIOF', '2024-10-20', 15, 12, 0.4),
(173, 'LX5HWGGOIC', '2024-10-20', 17, 2, 0.6),
(174, 'LX5HWGGOIC', '2024-10-20', 17, 3, 0.8),
(175, 'LX5HWGGOIC', '2024-10-20', 17, 4, 1),
(176, 'LX5HWGGOIC', '2024-10-20', 17, 14, 0.8),
(177, 'O6OP4CMFZZ', '2024-10-20', 17, 11, 0.8),
(178, '6M336KPP4A', '2024-10-21', 18, 5, 0.6),
(179, '6M336KPP4A', '2024-10-21', 18, 7, 0.8),
(180, '6M336KPP4A', '2024-10-21', 18, 10, 0.4),
(181, '6M336KPP4A', '2024-10-21', 18, 11, 0.4),
(182, '6M336KPP4A', '2024-10-21', 18, 15, 0.6),
(183, 'I39KHCVKDZ', '2024-10-21', 18, 7, 0.8),
(184, 'I39KHCVKDZ', '2024-10-21', 18, 8, 0.6),
(185, 'I39KHCVKDZ', '2024-10-21', 18, 11, 0.6),
(186, 'I39KHCVKDZ', '2024-10-21', 18, 15, 0.2),
(187, 'I39KHCVKDZ', '2024-10-21', 18, 16, 0.4),
(188, '5FPVZX5X3Z', '2024-10-21', 18, 7, 0.8),
(189, '5FPVZX5X3Z', '2024-10-21', 18, 8, 0.6),
(190, '5FPVZX5X3Z', '2024-10-21', 18, 11, 0.6),
(191, '5FPVZX5X3Z', '2024-10-21', 18, 15, 0.6),
(192, '5FPVZX5X3Z', '2024-10-21', 18, 16, 0.8),
(193, 'BTDCOMT2NH', '2024-10-21', 18, 4, 0.2),
(194, 'BTDCOMT2NH', '2024-10-21', 18, 5, 0.6),
(195, 'BTDCOMT2NH', '2024-10-21', 18, 8, 0.6),
(196, 'BTDCOMT2NH', '2024-10-21', 18, 16, 0.6),
(197, 'BTDCOMT2NH', '2024-10-21', 18, 17, 0.4),
(198, 'LHWW4H1DDE', '2024-10-21', 18, 10, 0.8),
(199, 'LHWW4H1DDE', '2024-10-21', 18, 13, 0.8),
(200, 'LHWW4H1DDE', '2024-10-21', 18, 16, 0.8),
(201, 'FSB3RCKWPC', '2024-10-21', 18, 10, 0.8),
(202, 'FSB3RCKWPC', '2024-10-21', 18, 13, 0.8),
(203, 'FSB3RCKWPC', '2024-10-21', 18, 14, 0.6),
(204, 'FSB3RCKWPC', '2024-10-21', 18, 15, 0.4),
(205, 'DMHZ8BI29D', '2024-10-21', 18, 10, 0.8),
(206, 'DMHZ8BI29D', '2024-10-21', 18, 13, 0.8),
(207, 'DMHZ8BI29D', '2024-10-21', 18, 14, 0.6),
(208, 'DMHZ8BI29D', '2024-10-21', 18, 15, 0.4),
(209, '9Q8TJJIA8B', '2024-10-21', 18, 4, 0.2),
(210, '9Q8TJJIA8B', '2024-10-21', 18, 7, 0.8),
(211, '9Q8TJJIA8B', '2024-10-21', 18, 8, 0.6),
(212, '9Q8TJJIA8B', '2024-10-21', 18, 11, 0.2),
(213, '9Q8TJJIA8B', '2024-10-21', 18, 15, 0.4),
(214, '9Q8TJJIA8B', '2024-10-21', 18, 16, 0.4),
(215, '9Q8TJJIA8B', '2024-10-21', 18, 17, 0.8),
(216, 'XNLSSY69N9', '2024-10-23', 14, 1, 0.6),
(217, 'XNLSSY69N9', '2024-10-23', 14, 3, 0.6),
(218, 'XNLSSY69N9', '2024-10-23', 14, 7, 0.4),
(219, 'XNLSSY69N9', '2024-10-23', 14, 8, 0.8),
(220, 'XNLSSY69N9', '2024-10-23', 14, 13, 0.8),
(221, 'XNLSSY69N9', '2024-10-23', 14, 14, 0.4),
(246, 'BCYHAGJNHX', '2024-10-31', 9, 48, 0.4),
(247, 'BCYHAGJNHX', '2024-10-31', 9, 49, 0.2),
(248, 'BCYHAGJNHX', '2024-10-31', 9, 57, 0.6),
(249, 'BCYHAGJNHX', '2024-10-31', 9, 58, 0.8),
(250, 'BCYHAGJNHX', '2024-10-31', 9, 59, 0.8),
(251, 'BCYHAGJNHX', '2024-10-31', 9, 61, 0.4),
(252, 'BCYHAGJNHX', '2024-10-31', 9, 76, 0.4),
(253, 'BCYHAGJNHX', '2024-10-31', 9, 78, 0.2),
(254, '7K8XKKBS9O', '2024-10-31', 9, 1, 0.4),
(255, '7K8XKKBS9O', '2024-10-31', 9, 5, 0.8),
(256, '7K8XKKBS9O', '2024-10-31', 9, 6, 0.6),
(257, '7K8XKKBS9O', '2024-10-31', 9, 27, 0.6),
(258, 'KZ89BS3Z9L', '2024-10-31', 9, 1, 0.8),
(259, 'KZ89BS3Z9L', '2024-10-31', 9, 2, 0.6),
(260, 'KZ89BS3Z9L', '2024-10-31', 9, 4, 0.8),
(261, 'KZ89BS3Z9L', '2024-10-31', 9, 9, 0.2),
(262, 'KZ89BS3Z9L', '2024-10-31', 9, 12, 0.4),
(263, 'JFQ3THGCZB', '2024-10-31', 9, 1, 0.8),
(264, 'JFQ3THGCZB', '2024-10-31', 9, 2, 0.4),
(265, 'JFQ3THGCZB', '2024-10-31', 9, 5, 0.6),
(266, 'NUBPGVM1WU', '2024-10-31', 9, 1, 0.4),
(267, 'NUBPGVM1WU', '2024-10-31', 9, 3, 0.6),
(268, 'NUBPGVM1WU', '2024-10-31', 9, 61, 0.4),
(269, 'C3URH6XUJ1', '2024-10-31', 9, 50, 0.6),
(270, 'C3URH6XUJ1', '2024-10-31', 9, 77, 0.4),
(271, 'ONLXZN9PU5', '2024-10-31', 9, 1, 0.8),
(272, 'ONLXZN9PU5', '2024-10-31', 9, 2, 0.6),
(273, 'ONLXZN9PU5', '2024-10-31', 9, 3, 0.4),
(274, 'ONLXZN9PU5', '2024-10-31', 9, 7, 0.4),
(275, 'A1BTN6KFVZ', '2024-10-31', 9, 22, 0.8),
(276, 'A1BTN6KFVZ', '2024-10-31', 9, 23, 0.8),
(277, 'A1BTN6KFVZ', '2024-10-31', 9, 28, 0.4),
(278, 'A1BTN6KFVZ', '2024-10-31', 9, 36, 0.6),
(279, 'A1BTN6KFVZ', '2024-10-31', 9, 42, 0.8),
(280, 'A1BTN6KFVZ', '2024-10-31', 9, 49, 0.2),
(281, 'SNQFZOZM5I', '2024-10-31', 9, 49, 0.8),
(282, 'ALJGNRDAWG', '2024-10-31', 9, 77, 0.6),
(283, 'ALJGNRDAWG', '2024-10-31', 9, 78, 0.6),
(284, 'FRYLOUYKWU', '2024-10-31', 9, 49, 0.8),
(285, 'FRYLOUYKWU', '2024-10-31', 9, 52, 0.8),
(286, 'FRYLOUYKWU', '2024-10-31', 9, 53, 0.6),
(287, '4GJ19SKH3Y', '2024-10-31', 25, 1, 0.8),
(288, '4GJ19SKH3Y', '2024-10-31', 25, 5, 0.6),
(289, '4GJ19SKH3Y', '2024-10-31', 25, 13, 0.8),
(290, 'E7H2HTYESZ', '2024-10-31', 25, 4, 1),
(291, 'E7H2HTYESZ', '2024-10-31', 25, 31, 0.4),
(292, 'NTPSVAAQ9H', '2024-10-31', 9, 1, 0.6),
(293, 'MIJBZ2KLLM', '2024-10-31', 9, 1, 0.2),
(294, 'MIJBZ2KLLM', '2024-10-31', 9, 2, 0.8),
(295, 'P7HFCVWQWQ', '2024-10-31', 9, 3, 0.8),
(296, 'P7HFCVWQWQ', '2024-10-31', 9, 5, 0.2),
(297, 'P7HFCVWQWQ', '2024-10-31', 9, 13, 0.2),
(298, 'GT2VX2CT6M', '2024-10-31', 9, 3, 0.8),
(299, 'GT2VX2CT6M', '2024-10-31', 9, 5, 0.2),
(300, 'GT2VX2CT6M', '2024-10-31', 9, 13, 0.2),
(301, '7P144L5F5F', '2024-10-31', 9, 7, 0.6),
(302, '7P144L5F5F', '2024-10-31', 9, 8, 0.6),
(303, '7P144L5F5F', '2024-10-31', 9, 21, 0.8),
(304, '7P144L5F5F', '2024-10-31', 9, 22, 0.8),
(305, 'PZJJD2SWHR', '2024-10-31', 9, 7, 0.6),
(306, 'PZJJD2SWHR', '2024-10-31', 9, 8, 0.6),
(307, 'PZJJD2SWHR', '2024-10-31', 9, 21, 0.8),
(308, 'PZJJD2SWHR', '2024-10-31', 9, 22, 0.8),
(309, 'AEVCGLDAKU', '2024-10-31', 9, 41, 0.8),
(310, 'AEVCGLDAKU', '2024-10-31', 9, 42, 0.8),
(311, 'AEVCGLDAKU', '2024-10-31', 9, 59, 0.4),
(312, 'AEVCGLDAKU', '2024-10-31', 9, 61, 0.2),
(313, 'AEVCGLDAKU', '2024-10-31', 9, 66, 0.6),
(318, 'UF5N5DXW6U', '2024-11-01', 9, 12, 0.6),
(319, 'UF5N5DXW6U', '2024-11-01', 9, 13, 0.6),
(320, 'UF5N5DXW6U', '2024-11-01', 9, 37, 0.6),
(321, 'UF5N5DXW6U', '2024-11-01', 9, 43, 1),
(322, 'UF5N5DXW6U', '2024-11-01', 9, 55, 0.8),
(323, '444HQHOIK9', '2024-11-01', 9, 54, 0.8),
(324, '444HQHOIK9', '2024-11-01', 9, 55, 0.8),
(325, '444HQHOIK9', '2024-11-01', 9, 59, 0.8),
(326, '444HQHOIK9', '2024-11-01', 9, 65, 0.4),
(327, '444HQHOIK9', '2024-11-01', 9, 66, 0.4),
(328, '444HQHOIK9', '2024-11-01', 9, 72, 0.4),
(329, 'KROWPK6LK8', '2024-11-01', 9, 54, 0.6),
(330, 'KROWPK6LK8', '2024-11-01', 9, 55, 0.6),
(331, 'KROWPK6LK8', '2024-11-01', 9, 57, 0.8),
(332, 'KROWPK6LK8', '2024-11-01', 9, 59, 0.8),
(333, 'KROWPK6LK8', '2024-11-01', 9, 65, 0.8),
(334, 'KROWPK6LK8', '2024-11-01', 9, 71, 0.4),
(335, 'YE5X1P349D', '2024-11-01', 9, 3, 0.8),
(336, 'YE5X1P349D', '2024-11-01', 9, 4, 0.8),
(337, 'YE5X1P349D', '2024-11-01', 9, 22, 0.4),
(338, 'YE5X1P349D', '2024-11-01', 9, 31, 0.4),
(339, 'XF5P4MYGBW', '2024-11-01', 27, 76, 0.4),
(340, 'XF5P4MYGBW', '2024-11-01', 27, 78, 0.4),
(341, 'SOV18EFHVW', '2024-11-01', 27, 76, 0.4),
(342, 'SOV18EFHVW', '2024-11-01', 27, 78, 0.4),
(345, '87IXMSI7SU', '2024-11-02', 25, 7, 0.6),
(346, '87IXMSI7SU', '2024-11-02', 25, 8, 0.8),
(347, 'R1U6DSZ2VB', '2024-11-02', 25, 7, 0.6),
(348, 'R1U6DSZ2VB', '2024-11-02', 25, 8, 0.8),
(349, 'JVPRT5I68T', '2024-11-02', 25, 41, 0.6),
(350, 'JVPRT5I68T', '2024-11-02', 25, 54, 0.8),
(351, 'BJ2KU89SKR', '2024-11-02', 25, 54, 0.8),
(352, 'BJ2KU89SKR', '2024-11-02', 25, 59, 0.8),
(353, 'ZEU4E8AHBO', '2024-11-02', 25, 54, 0.8),
(354, 'ZEU4E8AHBO', '2024-11-02', 25, 59, 0.8),
(355, 'SZBQN64GC1', '2024-11-03', 25, 16, 0.8),
(356, 'BGWLVK8TVT', '2024-11-03', 25, 52, 0.2),
(357, 'BGWLVK8TVT', '2024-11-03', 25, 59, 0.4),
(358, 'BGWLVK8TVT', '2024-11-03', 25, 61, 0.4),
(359, 'BGWLVK8TVT', '2024-11-03', 25, 78, 0.6),
(360, 'Z22WSZ1HWY', '2024-11-03', 9, 7, 0.4),
(361, '9V69VWYNGT', '2024-11-03', 9, 5, 0.6),
(362, 'C6BTEBZLKL', '2024-11-03', 9, 49, 0.6),
(363, 'C6BTEBZLKL', '2024-11-03', 9, 52, 0.4),
(364, 'C6BTEBZLKL', '2024-11-03', 9, 66, 0.6),
(365, 'C6BTEBZLKL', '2024-11-03', 9, 78, 0.2),
(366, '1JT7GQG3XN', '2024-11-03', 9, 10, 0.6),
(367, '1JT7GQG3XN', '2024-11-03', 9, 33, 0.4),
(368, '1JT7GQG3XN', '2024-11-03', 9, 43, 0.4),
(369, '1JT7GQG3XN', '2024-11-03', 9, 44, 0.8),
(370, '1JT7GQG3XN', '2024-11-03', 9, 45, 0.8),
(371, 'AHLJJYJGG8', '2024-11-03', 9, 16, 0.6),
(372, 'AHLJJYJGG8', '2024-11-03', 9, 23, 0.8),
(373, 'AHLJJYJGG8', '2024-11-03', 9, 24, 0.8),
(374, 'AHLJJYJGG8', '2024-11-03', 9, 26, 0.6),
(375, 'F5QUL9Z7UO', '2024-11-03', 25, 21, 0.6),
(376, 'F5QUL9Z7UO', '2024-11-03', 25, 38, 1),
(377, 'D8REEHKG2Q', '2024-11-03', 25, 25, 0.6),
(378, 'D8REEHKG2Q', '2024-11-03', 25, 30, 0.6),
(379, 'D8REEHKG2Q', '2024-11-03', 25, 46, 0.8),
(380, 'D8REEHKG2Q', '2024-11-03', 25, 47, 0.8),
(381, 'V3BRAGPB8R', '2024-11-03', 25, 52, 0.2),
(382, 'V3BRAGPB8R', '2024-11-03', 25, 78, 0.6),
(383, 'V3BRAGPB8R', '2024-11-03', 25, 81, 0.4),
(384, '6FOEMC6D23', '2024-11-04', 29, 2, 0.8),
(385, '86N9MX6F91', '2024-11-04', 29, 2, 0.8),
(386, '86N9MX6F91', '2024-11-04', 29, 77, 0.4),
(387, '86N9MX6F91', '2024-11-04', 29, 80, 0.6),
(388, 'WF2M5N7RR2', '2024-11-04', 29, 2, 0.8),
(389, 'WF2M5N7RR2', '2024-11-04', 29, 77, 0.4),
(390, 'WF2M5N7RR2', '2024-11-04', 29, 80, 0.6),
(391, '4U26SJGBGV', '2024-11-04', 29, 17, 0.4),
(392, '5GUF9TIP51', '2024-11-04', 29, 29, 0.6),
(393, '5GUF9TIP51', '2024-11-04', 29, 30, 0.8),
(394, '5GUF9TIP51', '2024-11-04', 29, 58, 0.4),
(395, 'Z414XD1OJ3', '2024-11-04', 9, 6, 0.6),
(396, 'Z414XD1OJ3', '2024-11-04', 9, 10, 0.2),
(397, 'AZ22YB6ZQ4', '2024-11-04', 30, 1, 0.8),
(398, 'AZ22YB6ZQ4', '2024-11-04', 30, 2, 1),
(399, 'AZ22YB6ZQ4', '2024-11-04', 30, 3, 0.6),
(400, 'AZ22YB6ZQ4', '2024-11-04', 30, 4, 1),
(401, 'AZ22YB6ZQ4', '2024-11-04', 30, 5, 0),
(402, 'AZ22YB6ZQ4', '2024-11-04', 30, 6, 0),
(403, 'AZ22YB6ZQ4', '2024-11-04', 30, 7, 0),
(404, 'AZ22YB6ZQ4', '2024-11-04', 30, 8, 0),
(405, 'AZ22YB6ZQ4', '2024-11-04', 30, 9, 0),
(406, 'AZ22YB6ZQ4', '2024-11-04', 30, 10, 0.6),
(407, 'AZ22YB6ZQ4', '2024-11-04', 30, 13, 0),
(408, 'AZ22YB6ZQ4', '2024-11-04', 30, 14, 0),
(409, 'AZ22YB6ZQ4', '2024-11-04', 30, 15, 0),
(410, 'AZ22YB6ZQ4', '2024-11-04', 30, 16, 0.6),
(411, 'AZ22YB6ZQ4', '2024-11-04', 30, 17, 0.4),
(412, 'AZ22YB6ZQ4', '2024-11-04', 30, 22, 0),
(413, 'AZ22YB6ZQ4', '2024-11-04', 30, 23, 0),
(414, 'AZ22YB6ZQ4', '2024-11-04', 30, 24, 0),
(415, 'AZ22YB6ZQ4', '2024-11-04', 30, 25, 0),
(416, 'AZ22YB6ZQ4', '2024-11-04', 30, 26, 0.8),
(417, 'AZ22YB6ZQ4', '2024-11-04', 30, 27, 0.6),
(418, 'AZ22YB6ZQ4', '2024-11-04', 30, 28, 0.8),
(419, 'AZ22YB6ZQ4', '2024-11-04', 30, 29, 0),
(420, 'AZ22YB6ZQ4', '2024-11-04', 30, 31, 0),
(421, 'AZ22YB6ZQ4', '2024-11-04', 30, 32, 0.4),
(422, 'IUCCEQSVUV', '2024-11-04', 30, 1, 0.8),
(423, 'IUCCEQSVUV', '2024-11-04', 30, 2, 0),
(424, 'IUCCEQSVUV', '2024-11-04', 30, 3, 0.4),
(425, 'IUCCEQSVUV', '2024-11-04', 30, 4, 0),
(426, 'IUCCEQSVUV', '2024-11-04', 30, 5, 0),
(427, 'IUCCEQSVUV', '2024-11-04', 30, 6, 0),
(428, 'IUCCEQSVUV', '2024-11-04', 30, 7, 0),
(429, 'IUCCEQSVUV', '2024-11-04', 30, 8, 0),
(430, 'IUCCEQSVUV', '2024-11-04', 30, 9, 0),
(431, 'IUCCEQSVUV', '2024-11-04', 30, 10, 0),
(432, 'IUCCEQSVUV', '2024-11-04', 30, 11, 0),
(433, 'IUCCEQSVUV', '2024-11-04', 30, 12, 0),
(434, 'IUCCEQSVUV', '2024-11-04', 30, 13, 0),
(435, 'IUCCEQSVUV', '2024-11-04', 30, 14, 0.8),
(436, 'IUCCEQSVUV', '2024-11-04', 30, 15, 0),
(437, 'IUCCEQSVUV', '2024-11-04', 30, 16, 0.4),
(438, 'IUCCEQSVUV', '2024-11-04', 30, 17, 0),
(439, 'IUCCEQSVUV', '2024-11-04', 30, 21, 1),
(440, 'IUCCEQSVUV', '2024-11-04', 30, 22, 0.8),
(441, 'IUCCEQSVUV', '2024-11-04', 30, 23, 0.8),
(442, 'IUCCEQSVUV', '2024-11-04', 30, 24, 0.8),
(443, 'IUCCEQSVUV', '2024-11-04', 30, 25, 0.8),
(444, 'IUCCEQSVUV', '2024-11-04', 30, 26, 0),
(445, 'IUCCEQSVUV', '2024-11-04', 30, 27, 0.4),
(446, 'IUCCEQSVUV', '2024-11-04', 30, 28, 0),
(447, 'IUCCEQSVUV', '2024-11-04', 30, 29, 0),
(448, 'IUCCEQSVUV', '2024-11-04', 30, 30, 0),
(449, 'IUCCEQSVUV', '2024-11-04', 30, 31, 0),
(450, 'IUCCEQSVUV', '2024-11-04', 30, 32, 0.4),
(451, 'IUCCEQSVUV', '2024-11-04', 30, 35, 0),
(452, 'IUCCEQSVUV', '2024-11-04', 30, 36, 0.2),
(453, 'IUCCEQSVUV', '2024-11-04', 30, 37, 0),
(454, 'IUCCEQSVUV', '2024-11-04', 30, 38, 0),
(455, 'IUCCEQSVUV', '2024-11-04', 30, 39, 0),
(456, 'IUCCEQSVUV', '2024-11-04', 30, 40, 0),
(457, 'IUCCEQSVUV', '2024-11-04', 30, 41, 0),
(458, 'IUCCEQSVUV', '2024-11-04', 30, 42, 0),
(459, 'IUCCEQSVUV', '2024-11-04', 30, 43, 0),
(460, 'IUCCEQSVUV', '2024-11-04', 30, 44, 0),
(461, 'IUCCEQSVUV', '2024-11-04', 30, 46, 0),
(462, 'IUCCEQSVUV', '2024-11-04', 30, 50, 0.4),
(463, 'IUCCEQSVUV', '2024-11-04', 30, 52, 0),
(464, 'M5N4LBLBCO', '2024-11-04', 30, 1, 0.8),
(465, 'M5N4LBLBCO', '2024-11-04', 30, 2, 0),
(466, 'M5N4LBLBCO', '2024-11-04', 30, 3, 0.6),
(467, 'M5N4LBLBCO', '2024-11-04', 30, 4, 0.4),
(468, 'M5N4LBLBCO', '2024-11-04', 30, 5, 1),
(469, 'M5N4LBLBCO', '2024-11-04', 30, 6, 0),
(470, 'M5N4LBLBCO', '2024-11-04', 30, 7, 0.8),
(471, 'M5N4LBLBCO', '2024-11-04', 30, 8, 0),
(472, 'M5N4LBLBCO', '2024-11-04', 30, 9, 0),
(473, 'M5N4LBLBCO', '2024-11-04', 30, 10, 0.8),
(474, 'M5N4LBLBCO', '2024-11-04', 30, 11, 0.8),
(475, 'M5N4LBLBCO', '2024-11-04', 30, 12, 0),
(476, 'M5N4LBLBCO', '2024-11-04', 30, 13, 0),
(477, 'M5N4LBLBCO', '2024-11-04', 30, 14, 0.4),
(478, 'M5N4LBLBCO', '2024-11-04', 30, 15, 0),
(479, 'M5N4LBLBCO', '2024-11-04', 30, 16, 0.4),
(480, 'M5N4LBLBCO', '2024-11-04', 30, 17, 0.4),
(481, 'M5N4LBLBCO', '2024-11-04', 30, 22, 0),
(482, 'M5N4LBLBCO', '2024-11-04', 30, 23, 0),
(483, 'M5N4LBLBCO', '2024-11-04', 30, 24, 0),
(484, 'M5N4LBLBCO', '2024-11-04', 30, 25, 0),
(485, 'M5N4LBLBCO', '2024-11-04', 30, 26, 0),
(486, 'M5N4LBLBCO', '2024-11-04', 30, 27, 0),
(487, 'M5N4LBLBCO', '2024-11-04', 30, 28, 0.6),
(488, 'M5N4LBLBCO', '2024-11-04', 30, 29, 1),
(489, 'M5N4LBLBCO', '2024-11-04', 30, 30, 0),
(490, 'M5N4LBLBCO', '2024-11-04', 30, 31, 0.6),
(491, 'M5N4LBLBCO', '2024-11-04', 30, 32, 0.6),
(492, 'M5N4LBLBCO', '2024-11-04', 30, 33, 0),
(493, 'M5N4LBLBCO', '2024-11-04', 30, 34, 0.8),
(494, 'M5N4LBLBCO', '2024-11-04', 30, 35, 0),
(495, 'M5N4LBLBCO', '2024-11-04', 30, 38, 0),
(496, 'EMHSGQLXDK', '2024-11-04', 30, 1, 0.6),
(497, 'EMHSGQLXDK', '2024-11-04', 30, 2, 0),
(498, 'EMHSGQLXDK', '2024-11-04', 30, 3, 0),
(499, 'EMHSGQLXDK', '2024-11-04', 30, 4, 0),
(500, 'EMHSGQLXDK', '2024-11-04', 30, 5, 0),
(501, 'EMHSGQLXDK', '2024-11-04', 30, 6, 0),
(502, 'EMHSGQLXDK', '2024-11-04', 30, 7, 0),
(503, 'EMHSGQLXDK', '2024-11-04', 30, 8, 0.8),
(504, 'EMHSGQLXDK', '2024-11-04', 30, 9, 1),
(505, 'EMHSGQLXDK', '2024-11-04', 30, 10, 0.8),
(506, 'EMHSGQLXDK', '2024-11-04', 30, 11, 0.8),
(507, 'EMHSGQLXDK', '2024-11-04', 30, 12, 0),
(508, 'EMHSGQLXDK', '2024-11-04', 30, 13, 1),
(509, 'EMHSGQLXDK', '2024-11-04', 30, 14, 1),
(510, 'EMHSGQLXDK', '2024-11-04', 30, 15, 0),
(511, 'EMHSGQLXDK', '2024-11-04', 30, 17, 0.2),
(512, 'EMHSGQLXDK', '2024-11-04', 30, 21, 0.8),
(513, 'EMHSGQLXDK', '2024-11-04', 30, 22, 0),
(514, 'EMHSGQLXDK', '2024-11-04', 30, 23, 0),
(515, 'EMHSGQLXDK', '2024-11-04', 30, 24, 0),
(516, 'EMHSGQLXDK', '2024-11-04', 30, 25, 0),
(517, 'EMHSGQLXDK', '2024-11-04', 30, 26, 0),
(518, 'EMHSGQLXDK', '2024-11-04', 30, 27, 0),
(519, 'EMHSGQLXDK', '2024-11-04', 30, 28, 0.2),
(520, 'EMHSGQLXDK', '2024-11-04', 30, 29, 0),
(521, 'EMHSGQLXDK', '2024-11-04', 30, 40, 0.8),
(522, 'EMHSGQLXDK', '2024-11-04', 30, 44, 0.8),
(523, 'EMHSGQLXDK', '2024-11-04', 30, 45, 0.6),
(524, 'EMHSGQLXDK', '2024-11-04', 30, 50, 0.6),
(525, 'EMHSGQLXDK', '2024-11-04', 30, 57, 0.8),
(526, 'EMHSGQLXDK', '2024-11-04', 30, 60, 0.6),
(527, 'EMHSGQLXDK', '2024-11-04', 30, 61, 0.6),
(528, 'EMHSGQLXDK', '2024-11-04', 30, 62, 1),
(529, 'EMHSGQLXDK', '2024-11-04', 30, 63, 0.4),
(530, 'EMHSGQLXDK', '2024-11-04', 30, 74, 0.8),
(531, 'EK73XFNYOR', '2024-11-04', 30, 1, 0.6),
(532, 'EK73XFNYOR', '2024-11-04', 30, 2, 0),
(533, 'EK73XFNYOR', '2024-11-04', 30, 3, 0),
(534, 'EK73XFNYOR', '2024-11-04', 30, 4, 0.6),
(535, 'EK73XFNYOR', '2024-11-04', 30, 5, 0),
(536, 'EK73XFNYOR', '2024-11-04', 30, 6, 0),
(537, 'EK73XFNYOR', '2024-11-04', 30, 7, 0),
(538, 'EK73XFNYOR', '2024-11-04', 30, 8, 0.8),
(539, 'EK73XFNYOR', '2024-11-04', 30, 9, 0.8),
(540, 'EK73XFNYOR', '2024-11-04', 30, 10, 0.8),
(541, 'EK73XFNYOR', '2024-11-04', 30, 11, 0.8),
(542, 'EK73XFNYOR', '2024-11-04', 30, 12, 0),
(543, 'EK73XFNYOR', '2024-11-04', 30, 13, 0.4),
(544, 'EK73XFNYOR', '2024-11-04', 30, 15, 0),
(545, 'EK73XFNYOR', '2024-11-04', 30, 16, 0),
(546, 'EK73XFNYOR', '2024-11-04', 30, 17, 0),
(547, 'EK73XFNYOR', '2024-11-04', 30, 21, 0),
(548, 'EK73XFNYOR', '2024-11-04', 30, 22, 0),
(549, 'EK73XFNYOR', '2024-11-04', 30, 23, 0),
(550, 'EK73XFNYOR', '2024-11-04', 30, 24, 0),
(551, 'EK73XFNYOR', '2024-11-04', 30, 25, 0),
(552, 'EK73XFNYOR', '2024-11-04', 30, 26, 0),
(553, 'EK73XFNYOR', '2024-11-04', 30, 27, 0),
(554, 'EK73XFNYOR', '2024-11-04', 30, 28, 0.8),
(555, 'EK73XFNYOR', '2024-11-04', 30, 29, 0),
(556, 'EK73XFNYOR', '2024-11-04', 30, 30, 0.4),
(557, 'EK73XFNYOR', '2024-11-04', 30, 31, 0),
(558, 'EK73XFNYOR', '2024-11-04', 30, 33, 0),
(559, 'EK73XFNYOR', '2024-11-04', 30, 34, 0),
(560, 'EK73XFNYOR', '2024-11-04', 30, 35, 0),
(561, 'EK73XFNYOR', '2024-11-04', 30, 36, 0),
(562, 'EK73XFNYOR', '2024-11-04', 30, 37, 0.6),
(563, 'EK73XFNYOR', '2024-11-04', 30, 38, 0.8),
(564, 'EK73XFNYOR', '2024-11-04', 30, 39, 0.4),
(565, 'EK73XFNYOR', '2024-11-04', 30, 40, 0.4),
(566, 'EK73XFNYOR', '2024-11-04', 30, 41, 0.4),
(567, 'EK73XFNYOR', '2024-11-04', 30, 42, 0.8),
(568, 'EK73XFNYOR', '2024-11-04', 30, 44, 0.8),
(569, 'EK73XFNYOR', '2024-11-04', 30, 45, 0.8),
(570, 'EK73XFNYOR', '2024-11-04', 30, 46, 0.8),
(571, 'EK73XFNYOR', '2024-11-04', 30, 48, 0.8),
(572, 'EK73XFNYOR', '2024-11-04', 30, 49, 0),
(573, 'EK73XFNYOR', '2024-11-04', 30, 50, 0.4),
(574, 'EK73XFNYOR', '2024-11-04', 30, 51, 0),
(575, 'EK73XFNYOR', '2024-11-04', 30, 52, 0),
(576, 'EK73XFNYOR', '2024-11-04', 30, 54, 0.2),
(577, 'EK73XFNYOR', '2024-11-04', 30, 55, 0),
(578, 'EK73XFNYOR', '2024-11-04', 30, 56, 1),
(579, 'EK73XFNYOR', '2024-11-04', 30, 57, 0.8),
(580, 'EK73XFNYOR', '2024-11-04', 30, 58, 0),
(581, 'EK73XFNYOR', '2024-11-04', 30, 59, 0.8),
(582, 'EK73XFNYOR', '2024-11-04', 30, 74, 0.8),
(583, 'R8SUBL8633', '2024-11-04', 31, 1, 0.4),
(584, 'R8SUBL8633', '2024-11-04', 31, 2, 0.8),
(585, 'R8SUBL8633', '2024-11-04', 31, 3, 0.6),
(586, 'R8SUBL8633', '2024-11-04', 31, 4, 0.6),
(587, 'R8SUBL8633', '2024-11-04', 31, 5, 0),
(588, 'R8SUBL8633', '2024-11-04', 31, 6, 0),
(589, 'R8SUBL8633', '2024-11-04', 31, 7, 0.2),
(590, 'R8SUBL8633', '2024-11-04', 31, 8, 0),
(591, 'R8SUBL8633', '2024-11-04', 31, 9, 0),
(592, 'AGHUWQFCIG', '2024-11-04', 31, 5, 0.8),
(593, 'AGHUWQFCIG', '2024-11-04', 31, 10, 0.6),
(594, 'AGHUWQFCIG', '2024-11-04', 31, 11, 0.8),
(595, 'AGHUWQFCIG', '2024-11-04', 31, 29, 0.8),
(596, '67DYB1RN3F', '2024-11-04', 31, 6, 1),
(597, '67DYB1RN3F', '2024-11-04', 31, 7, 1),
(598, '67DYB1RN3F', '2024-11-04', 31, 11, 0.8),
(599, '67DYB1RN3F', '2024-11-04', 31, 24, 0.8),
(600, 'RX9UESIH48', '2024-11-04', 9, 5, 0.8),
(601, 'RX9UESIH48', '2024-11-04', 9, 6, 0.2),
(602, 'RX9UESIH48', '2024-11-04', 9, 7, 0.4),
(603, 'RX9UESIH48', '2024-11-04', 9, 29, 0.8),
(604, 'RX9UESIH48', '2024-11-04', 9, 31, 0.6),
(605, 'MIQJE7C7ED', '2024-11-04', 31, 8, 1),
(606, 'MIQJE7C7ED', '2024-11-04', 31, 9, 1),
(607, 'MIQJE7C7ED', '2024-11-04', 31, 14, 1),
(608, 'MIQJE7C7ED', '2024-11-04', 31, 43, 1),
(609, 'MIQJE7C7ED', '2024-11-04', 31, 57, 1),
(610, 'MIQJE7C7ED', '2024-11-04', 31, 60, 1),
(611, 'MIQJE7C7ED', '2024-11-04', 31, 61, 1),
(612, 'MIQJE7C7ED', '2024-11-04', 31, 62, 1),
(613, '9VMJERQ7LY', '2024-11-04', 31, 9, 0.8),
(614, '9VMJERQ7LY', '2024-11-04', 31, 47, 0.8),
(615, '9VMJERQ7LY', '2024-11-04', 31, 74, 0.8),
(616, 'B8IDPKATLP', '2024-11-04', 31, 21, 1),
(617, 'B8IDPKATLP', '2024-11-04', 31, 22, 1),
(618, '7KEW7RATYH', '2024-11-04', 32, 82, 0.2),
(619, 'S31T174AI8', '2024-11-04', 32, 1, 0.8),
(620, 'S31T174AI8', '2024-11-04', 32, 2, 0.2),
(621, 'S31T174AI8', '2024-11-04', 32, 3, 0),
(622, 'S31T174AI8', '2024-11-04', 32, 4, 0.8),
(623, 'S31T174AI8', '2024-11-04', 32, 5, 0.2),
(624, 'S31T174AI8', '2024-11-04', 32, 6, 0.6),
(625, 'S31T174AI8', '2024-11-04', 32, 7, 0.6),
(626, 'S31T174AI8', '2024-11-04', 32, 8, 1),
(627, 'S31T174AI8', '2024-11-04', 32, 9, 0.4),
(628, 'S31T174AI8', '2024-11-04', 32, 10, 0.8),
(629, 'S31T174AI8', '2024-11-04', 32, 11, 0.6),
(630, 'S31T174AI8', '2024-11-04', 32, 12, 0.4),
(631, 'S31T174AI8', '2024-11-04', 32, 13, 0.6),
(632, 'S31T174AI8', '2024-11-04', 32, 14, 1),
(633, 'S31T174AI8', '2024-11-04', 32, 15, 0.8),
(634, 'S31T174AI8', '2024-11-04', 32, 16, 0.6),
(635, 'S31T174AI8', '2024-11-04', 32, 17, 0.2),
(636, 'S31T174AI8', '2024-11-04', 32, 21, 0.2),
(637, 'S31T174AI8', '2024-11-04', 32, 22, 0.6),
(638, 'S31T174AI8', '2024-11-04', 32, 23, 0.6),
(639, 'S31T174AI8', '2024-11-04', 32, 24, 0.8),
(640, 'S31T174AI8', '2024-11-04', 32, 25, 0.8),
(641, 'S31T174AI8', '2024-11-04', 32, 26, 0.4),
(642, 'S31T174AI8', '2024-11-04', 32, 27, 0.6),
(643, 'S31T174AI8', '2024-11-04', 32, 28, 0.4),
(644, 'S31T174AI8', '2024-11-04', 32, 29, 0.4),
(645, 'S31T174AI8', '2024-11-04', 32, 30, 0.6),
(646, 'S31T174AI8', '2024-11-04', 32, 31, 0.4),
(647, 'S31T174AI8', '2024-11-04', 32, 32, 0),
(648, 'S31T174AI8', '2024-11-04', 32, 33, 0.6),
(649, 'S31T174AI8', '2024-11-04', 32, 34, 0.8),
(650, 'S31T174AI8', '2024-11-04', 32, 35, 1),
(651, 'S31T174AI8', '2024-11-04', 32, 36, 0.6),
(652, 'S31T174AI8', '2024-11-04', 32, 37, 0.6),
(653, 'S31T174AI8', '2024-11-04', 32, 38, 0.4),
(654, 'S31T174AI8', '2024-11-04', 32, 39, 0.8),
(655, 'S31T174AI8', '2024-11-04', 32, 40, 0.8),
(656, 'S31T174AI8', '2024-11-04', 32, 41, 1),
(657, 'S31T174AI8', '2024-11-04', 32, 42, 0.6),
(658, 'S31T174AI8', '2024-11-04', 32, 43, 0.6),
(659, 'S31T174AI8', '2024-11-04', 32, 44, 0),
(660, 'S31T174AI8', '2024-11-04', 32, 45, 0.8),
(661, 'S31T174AI8', '2024-11-04', 32, 46, 0.8),
(662, 'S31T174AI8', '2024-11-04', 32, 47, 0.4),
(663, 'S31T174AI8', '2024-11-04', 32, 48, 0.2),
(664, 'S31T174AI8', '2024-11-04', 32, 49, 0.6),
(665, 'S31T174AI8', '2024-11-04', 32, 50, 0.6),
(666, 'S31T174AI8', '2024-11-04', 32, 51, 0.4),
(667, 'S31T174AI8', '2024-11-04', 32, 52, 0.4),
(668, 'S31T174AI8', '2024-11-04', 32, 53, 0.6),
(669, 'S31T174AI8', '2024-11-04', 32, 54, 0.4),
(670, 'S31T174AI8', '2024-11-04', 32, 55, 0.8),
(671, 'S31T174AI8', '2024-11-04', 32, 56, 0.2),
(672, 'S31T174AI8', '2024-11-04', 32, 57, 0.6),
(673, 'S31T174AI8', '2024-11-04', 32, 58, 0.2),
(674, 'S31T174AI8', '2024-11-04', 32, 59, 0.6),
(675, 'S31T174AI8', '2024-11-04', 32, 60, 0),
(676, 'S31T174AI8', '2024-11-04', 32, 61, 0.2),
(677, 'S31T174AI8', '2024-11-04', 32, 62, 0.6),
(678, 'S31T174AI8', '2024-11-04', 32, 63, 0.8),
(679, 'S31T174AI8', '2024-11-04', 32, 64, 0.4),
(680, 'S31T174AI8', '2024-11-04', 32, 65, 0.4),
(681, 'S31T174AI8', '2024-11-04', 32, 66, 0),
(682, 'S31T174AI8', '2024-11-04', 32, 67, 0),
(683, 'S31T174AI8', '2024-11-04', 32, 68, 0.4),
(684, 'S31T174AI8', '2024-11-04', 32, 69, 0.2),
(685, 'S31T174AI8', '2024-11-04', 32, 70, 0),
(686, 'S31T174AI8', '2024-11-04', 32, 71, 0.6),
(687, 'S31T174AI8', '2024-11-04', 32, 72, 0.6),
(688, 'S31T174AI8', '2024-11-04', 32, 73, 0.4),
(689, 'S31T174AI8', '2024-11-04', 32, 74, 0.8),
(690, 'S31T174AI8', '2024-11-04', 32, 75, 0.8),
(691, 'S31T174AI8', '2024-11-04', 32, 76, 0.8),
(692, 'S31T174AI8', '2024-11-04', 32, 77, 0.8),
(693, 'S31T174AI8', '2024-11-04', 32, 78, 0.8),
(694, 'S31T174AI8', '2024-11-04', 32, 79, 0.4),
(695, 'S31T174AI8', '2024-11-04', 32, 80, 0.2),
(696, 'S31T174AI8', '2024-11-04', 32, 81, 0.4),
(697, 'S31T174AI8', '2024-11-04', 32, 82, 0.6),
(698, '8QFOTNY1HX', '2024-11-04', 32, 39, 0.8),
(699, '8QFOTNY1HX', '2024-11-04', 32, 40, 0.8),
(700, '1841ENHMSY', '2024-11-04', 32, 1, 0),
(701, '1BZDB23XHH', '2024-11-04', 32, 1, 1),
(704, '4ZQXO79JFO', '2024-11-05', 9, 82, 0.4),
(705, 'Z7EIYV9MGH', '2024-11-05', 9, 24, 0.8);

-- --------------------------------------------------------

--
-- Table structure for table `tb_penyakit`
--

CREATE TABLE `tb_penyakit` (
  `id_penyakit` int(11) NOT NULL,
  `nama_penyakit` text NOT NULL,
  `keterangan` text NOT NULL,
  `pengendalian` text NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_penyakit`
--

INSERT INTO `tb_penyakit` (`id_penyakit`, `nama_penyakit`, `keterangan`, `pengendalian`, `gambar`) VALUES
(1, 'White Spot Syndrome Virus (WSSV)', 'Disebabkan oleh Virus Famili Nimaviridae berbentuk bulat lonjong/ ellipsoid. Berukuran diameter 80-120 nm dan panjang 250-380 nm. Envelop virion. \r\nMetode Diagnosis : 1. Gejala klinis\r\n2. Polymerase chain Reaction (PCR) konvensional & Real Time PCR (qPCR)\r\n3. Bioassay\r\n4. Histopathology\r\n5. In Situ Hybridisation  \r\n6. LAMP = Loop amplifikasi isotermal\r\n7.  Ab-ELISA & Ag-ELISA\r\n', '1. Penerapan Biosecurity secara terpadu\r\n2. Persiapan petak tambak secara sempurna, terutama pembuangan bahan organik dan pengeringan dasar tambak \r\n3. Menggunakan benur/ Post Larva SPR (spesifik pathogen resistance) & SPF (spesifik pathogen free) WSSV\r\n4. Menjaga kualitas air yang optimal dan menjaga keseimbangan plankton untuk mendukung budidaya udang\r\n5. Aplikasi probiotik, dan Aplikasi imunostimulan\r\n6. Sanitasi pada semua peralatan dan pekerja dalam semua tahap proses produksi\r\n', 'wssv.jpg'),
(2, 'Taura Syndrome Virus (TSV)', 'Disebabkan oleh Virus RNA. Non envelope icosahedral virus. Ukuran diameternya 22 nm. Familia Parvoviridae\r\nMetode Diagnosis : 1. Gejala klinis \r\n2. Polymerase chain Reaction (PCR) konvensional & Real Time PCR (qPCR)\r\n3. Bioassay\r\n4. Histopathology \r\n5.  In Situ Hybridisation\r\n', '1. Penerapan Biosecurity secara terpadu\r\n2. persiapan petak tambak secara sempurna, terutama pembuangan bahan organik dan pengeringan dasar tambak \r\n3. Menggunakan benur/ Post Larva SPR (spesifik pathogen resistance) & SPF (spesifik pathogen free) TSV \r\n4. Menjaga kualitas air yang optimal dan menjaga keseimbangan plankton untuk mendukung budidaya udang.\r\n5. Aplikasi probiotik dan aplikasi imunostimulan\r\n', 'tsv1.jpg'),
(3, 'IHHN', 'Disebabkan oleh Virus DNA. Familia Parvoviridae berukuran 20-22 nm. Non envelope icosahedral virus.\r\nMetode Diagnosis : 1. Gajala klinis \r\n2. Polymerase chain Reaction (PCR) konvensional & Real Time PCR (qPCR)\r\n3. Histopatologi dan Sitopatologi \r\n4. In Situ Hybridisation \r\n5. Bioassay\r\n', '1. Penerapan Biosecurity secara terpadu \r\n2. persiapan petak tambak secara sempurna, terutama pembuangan bahan organik dan pengeringan dasar tambak\r\n3. Menggunakan benur/ Post Larva SPR (spesifik pathogen resistance) & SPF (spesifik pathogen free) IHHN\r\n4. Menjaga kualitas air yang optimal dan menjaga keseimbangan plankton untuk mendukung budidaya udang.\r\n5. Aplikasi probiotik dan aplikasi imunostimulan\r\n', 'ihhn 2.jpg'),
(4, 'Infectious Myonecrosis (IMNV) atau penyakit udang rebus', 'Disebabkan oleh Virus  famili Totiviridae. Berbentuk icosahedral berdiameter 40 nm.\r\nMetode Diagnosis : 1. Gejala Klinis\r\n2. Polymerase chain Reaction (PCR) konvensional & Real Time PCR (qPCR)\r\n3. Histopatologi dan Sitopatologi \r\n4. In Situ Hybridisation\r\n', '1. Penerapan Biosecurity secara terpadu \r\n2. persiapan petak tambak secara sempurna, terutama pembuangan bahan organik dan pengeringan dasar tambak \r\n3. Menggunakan benur/ Post Larva SPR (spesifik pathogen resistance) & SPF (spesifik pathogen free) IMNV\r\n4. Menjaga kualitas air yang optimal dan menjaga keseimbangan plankton untuk mendukung budidaya udang\r\n5. Aplikasi probiotik dan Aplikasi imunostimulan\r\n', 'imnv3.jpg'),
(5, 'Yellow Head Virus (YHV) atau virus kepala kuning', 'Disebabkan oleh Virus Okavirus. Famili Roniviridae, Ordo Nidovirales. Berbentuk batang berselubung, ukuran 40-50 nm x 150-180 nm\r\nMetode Diagnosis : 1. Gejala Klinis\r\n2. Polymerase chain Reaction (PCR) konvensional\r\n3. Bioassay\r\n4.  Histopatologi\r\n5. In Situ Hybridisation \r\n6. Antibody-based assays\r\n', '1. Penerapan Biosecurity secara terpadu \r\n2. persiapan petak tambak secara sempurna, terutama pembuangan bahan organik dan pengeringan dasar tambak \r\n3. Menggunakan benur/ Post Larva SPR (spesifik pathogen resistance) & SPF (spesifik pathogen free) YHV\r\n4. Menjaga kualitas air yang optimal dan menjaga keseimbangan plankton untuk mendukung budidaya udang\r\n5. Aplikasi probiotik dan Aplikasi imunostimulan\r\n', ''),
(6, 'CMNV', 'Disebabkan oleh Virus famili Nodaviridae.\r\nMetode Diagnosis : 1. Gejala Klinis\r\n2. Polymerase chain Reaction (PCR) konvensional & Real Time PCR (qPCR)\r\n3. LAMP\r\n4. In Situ Hybridisation\r\n', '1. Penerapan Biosecurity secara terpadu\r\n2. persiapan petak tambak secara sempurna, terutama pembuangan bahan organik dan pengeringan dasar tambak \r\n3. Menggunakan benur/ Post Larva SPR (spesifik pathogen resistance) & SPF (spesifik pathogen free) CMNV\r\n4. Menjaga kualitas air yang optimal dan menjaga keseimbangan plankton untuk mendukung budidaya udang\r\n5. Aplikasi probiotik dan Aplikasi imunostimulan\r\n', ''),
(7, 'AHPND/EMS (Early Mortality Syndrome)', 'Disebabkan oleh Bakteri vibrio parahaemolyticus yang membawa Toxin Pir A dan Pir B.\r\nMetode Diagnosis : 1. Gejala klinis\r\n2. Polymerase chain Reaction (PCR) konvensional & Real Time PCR (qPCR)\r\n3. Isolasi bakteri\r\n4. Bioassay \r\n5. Histopatologi \r\n6. LAMP = Loop amplifikasi isotermal\r\n 7. Ag-ELISA\r\n', '1. Penerapan Biosecurity secara terpadu\r\n2. Persiapan petak tambak secara sempurna, terutama pembuangan bahan organik dan pengeringan dasar tambak\r\n3. Menggunakan udang SPR (spesifik pathogen resistance) & SPF (spesifik pathogen free) AHPND\r\n4. Menjaga kualitas air yang optimal dan menjaga keseimbangan plankton untuk mendukung budidaya udang\r\n5. Aplikasi probiotik dan Aplikasi imunostimulan\r\n', 'ahpnd3.jpg'),
(8, 'Vibriosis ', 'Disebabkan oleh  Bakteri Vibrio harveyi, V. alginolyticus, V. parahaemolyticus, vibrio spp,v. vulnificus, dll. Berbentuk batang dengan ukuran 0,5x1,0-2,0 mm.\r\nMetode Diagnosis : 1. Polymerase chain Reaction (PCR) konvensional & Real Time PCR (qPCR)\r\n2. Isolasi dan Identifikasi \r\n3. Uji Biokimia\r\n', '1. Penerapan Biosecurity secara terpadu\r\n2. persiapan petak tambak secara sempurna, terutama pembuangan bahan organik dan pengeringan dasar tambak \r\n3. Menjaga kualitas air yang optimal dan menjaga keseimbangan plankton untuk mendukung budidaya udang\r\n4. Aplikasi probiotik dan Aplikasi imunostimulan\r\n5. Kepadatan tebar rendah\r\n', ''),
(9, 'White Faces Disease (WFD) atau penyakit berak putih ', 'Disebabkan oleh gangguan pencernaan, juga ditemukan udang yang positif EHP.\r\nMetode Diagnosis : 1. Gejala klinis \r\n2. Polymerase chain Reaction (PCR) konvensional & Real Time PCR (qPCR) untuk mendeteksi EHP \r\n3. Isolasi Bakteri\r\n4. Uji Biokimia\r\n5. Histopathology\r\n', '1. persiapan petak tambak secara sempurna, terutama pembuangan bahan organik dan pengeringan dasar tambak \r\n2. mengurangi tingkat kepadatan produksi. Hal ini menyebabkan penurunan kandungan bahan organik di perairan sehingga mengurangi pertumbuhan bakteri Vibrio spp \r\n3. penggunaan probiotik yang mengandung bacillus subtilis untuk menghambat pertumbuhan bakteri Vibrio spp \r\n4. manajemen lingkungan dan deteksi dini \r\n', 'wfd.jpg'),
(10, 'EHP (Enterocytozoon hepatopenaei)', 'Disebabkan oleh jamur Mikrosporidiosis hepatopankreatik.  Famili Enterocytozoonidae dan Filum Microsporidia. Disebabkan oleh jamur Mikrosporidiosis hepatopankreatik.  Famili Enterocytozoonidae dan Filum Microsporidia.\r\nMetode Diagnosis : 1. Gejala klinis\r\n2. Metode Presumptive test \r\n3. Polymerase chain Reaction (PCR) konvensional & Real Time PCR (qPCR)\r\n4. LAMP = Loop amplifikasi isotermal\r\n 5. Histophatologi\r\n', '1. Penerapan Biosecurity secara terpadu\r\n2. persiapan petak tambak secara sempurna, terutama pembuangan bahan organik dan pengeringan dasar tambak\r\n3. Desinfeksi untuk menonaktifkan spora EHP, khususnya pembenihan  yang memiliki riwayat infeksi EHP sebelumnya \r\n4. Penggunaan induk dan post larva (PL) yang bebas EHP \r\n', ''),
(11, 'Fusarium Disease (Insang Hitam)', 'Disebabkan oleh Jamur Fusarium spp, Fusarium solani\r\nMetode Diagnosis :\r\n1. Gejala klinis \r\n2. Pemeriksaan Microskopis \r\n3. Histopatologi\r\n4. Identifikasi molekuler\r\n', '1. persiapan petak tambak secara sempurna, terutama pembuangan bahan organik dan pengeringan dasar tambak\r\n2. menghindari pemupukan bahan organik dalam media pemeliharaan, melalui penggunaan mikroba esensial atau probiorik dan/atau frekuensi penggantian air yang lebih tinggi\r\n3. Penyimpanan pakan udang di tempat yang kering dengan sirkulasi udara yang baik.\r\n', ''),
(12, 'Microsporidiasis (Cotton Shrimp Diseases)', 'Disebabkan oleh Parasit Pleistophora ,  Thelohania , Perezia , Agmasoma dan Ameson.\r\nMetode Diagnosis : 1. Gejala Klinis \r\n2. Pemeriksaan Microskopis \r\n3. Polimerase chain Reaction (PCR) konvensional\r\n4. Histopatologi\r\n5. Hibridisasi in situ \r\n', '1. Persiapan petak pemeliharaan yang baik (desinfeksi, pengeringan dasar tambak dan sumber air yang bebas dari microsporodia)\r\n2. Udang yang terinfeksi segera dimusnahkan, untuk mengurangi potensi penularan secara horizontal.\r\n3. Untuk memotong siklus hidup parasit, hindari pemberian pakan berupa ikan rucah yang terinfeksi mirosoridia\r\n4. Tidak ada bahan kimia yang efektif untuk mencegah dan/atau mengobati penyakit microsoridia\r\n', ''),
(13, 'Fouling Diseases (Penyakit Dekil)', 'Disebabkan oleh Parasit Zoothamnium spp., Epitylis spp., Vorticella spp., Acineta spp. \r\nMetode Diagnosis : 1. Gejala klinis\r\n2. Pemeriksaan Sample udang\r\n3. Pemeriksaan Microskopis\r\n4. Histopatologi\r\n', '1. Persiapan wadah/petak pemeliharaan yang baik (desinfeksi, pengeringan dasar tambak dan sumber air yang bebas dari microsporodia)\r\n2. memperbaiki kualitas air secara keseluruhan, terutama mengurangi kadar bahan organik terlarut dan/atau meningkatkan frekuensi penggantian air baru\r\n3. Pemberian unsur imnostimulan (misalnya penambahan vitamin C pada pakan), secara rutin selama pemeliharaan \r\n4. Merangsang proses ganti kulit melalui manipulasi parameter kualitas air yang merupakan faktor determinan\r\n', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tentang`
--

CREATE TABLE `tb_tentang` (
  `id_tentang` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_tentang`
--

INSERT INTO `tb_tentang` (`id_tentang`, `judul`, `keterangan`) VALUES
(1, 'Cara Penggunaan Aplikasi Sistem Pakar Identifikasi', ''),
(2, 'A. Fitur Identifikasi :', '1. User membuka menu identifikasi.\r\n2. User memilih gejala dan kondisi berdasarkan keadaan udang di tambak.\r\n3. Sistem akan memproses data gejala yang sudah dipilih sebelumnya.\r\n4. Hasil identifikasi akan keluar menghasilkan penyakit yang dialami oleh udang.\r\n5. Hasil identifikasi akan disimpan oleh sistem dan dapat dilihat pada menu history.'),
(3, 'B. Fitur Penyakit', 'Berfungsi untuk melihat informasi mengenai penyakit, gejala, dan pengendalian pada pembesran udang vanname.'),
(4, 'C. Menu History', 'Berfungsi untuk melihat history atau riwayat identifikasi sebelumnya yang telah disimpan oleh sistem.\r\nDalam menu history terdapat detail history yang berisikan penjelasan lengkap hasil identifikasi.'),
(8, 'Pakar :', 'Ir. Yani Lestari Nur\'aini, M.P'),
(11, 'Pakar :', 'Ir. Yani Lestari Nuraini, M.P');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `id_akun` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `umur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `id_akun`, `nama_lengkap`, `jenis_kelamin`, `umur`) VALUES
(4, 9, 'User', 'Wanita', 27),
(9, 14, 'silfi', 'Perempuan', 24),
(10, 15, 'faiq', 'Wanita', 20),
(11, 16, 'riska', 'Wanita', 25),
(12, 17, 'ahmad dani', 'Pria', 36),
(13, 18, 'test', 'Wanita', 21),
(14, 19, 'rhiee', 'Perempuan', 33),
(18, 23, 'intan putri', 'Perempuan', 18),
(19, 24, 'p', 'Wanita', 23),
(20, 25, 'petani udang', 'Pria', 35),
(22, 27, 'Bety Etikasari a', 'Wanita', 32),
(23, 28, 'tes', 'Pria', 34),
(24, 29, 'tes', 'Wanita', 45),
(25, 30, 'Yani Lestari N', 'Wanita', 57),
(26, 31, 'Fatmawati', 'Wanita', 42),
(27, 32, 'Ratna', 'Wanita', 27),
(29, 34, 'rara', 'Pria', 28);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_akun`
--
ALTER TABLE `tb_akun`
  ADD PRIMARY KEY (`id_akun`);

--
-- Indexes for table `tb_aturan`
--
ALTER TABLE `tb_aturan`
  ADD PRIMARY KEY (`id_aturan`);

--
-- Indexes for table `tb_gejala`
--
ALTER TABLE `tb_gejala`
  ADD PRIMARY KEY (`id_gejala`);

--
-- Indexes for table `tb_hasil`
--
ALTER TABLE `tb_hasil`
  ADD PRIMARY KEY (`id_hasil`);

--
-- Indexes for table `tb_identifikasi`
--
ALTER TABLE `tb_identifikasi`
  ADD PRIMARY KEY (`id_identifikasi`);

--
-- Indexes for table `tb_penyakit`
--
ALTER TABLE `tb_penyakit`
  ADD PRIMARY KEY (`id_penyakit`);

--
-- Indexes for table `tb_tentang`
--
ALTER TABLE `tb_tentang`
  ADD PRIMARY KEY (`id_tentang`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_akun`
--
ALTER TABLE `tb_akun`
  MODIFY `id_akun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tb_aturan`
--
ALTER TABLE `tb_aturan`
  MODIFY `id_aturan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `tb_gejala`
--
ALTER TABLE `tb_gejala`
  MODIFY `id_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `tb_hasil`
--
ALTER TABLE `tb_hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tb_identifikasi`
--
ALTER TABLE `tb_identifikasi`
  MODIFY `id_identifikasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=706;

--
-- AUTO_INCREMENT for table `tb_penyakit`
--
ALTER TABLE `tb_penyakit`
  MODIFY `id_penyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb_tentang`
--
ALTER TABLE `tb_tentang`
  MODIFY `id_tentang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
