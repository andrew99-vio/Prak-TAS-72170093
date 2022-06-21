-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2022 at 12:06 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dblaravelandrew`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nidn` bigint(20) NOT NULL,
  `nama` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jafung` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pakar` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id`, `nidn`, `nama`, `status`, `jafung`, `pakar`, `created_at`, `updated_at`) VALUES
(2, 5102592710057622, 'Oman Mansur', 'M.Kom.', 'drg.', 'Buruh Nelayan / Perikanan', NULL, NULL),
(3, 7105122309077865, 'Putri Talia Riyanti S.E.I', 'S.I.Kom', 'dr.', 'Penyiar Radio', NULL, NULL),
(4, 3319880910991585, 'Daru Maheswara', 'S.Pd', 'drg.', 'Penambang', NULL, NULL),
(5, 1611020112146064, 'Upik Ikin Wibowo', 'S.I.Kom', 'Dr.', 'Buruh Harian Lepas', NULL, NULL),
(6, 8203442306008377, 'Nrima Pangestu', 'S.T.', 'Drs.', 'Pedagang', NULL, NULL),
(7, 1110672805143932, 'Dalimin Permadi', 'M.Kom.', 'dr.', 'Konstruksi', NULL, NULL),
(8, 1508701805977947, 'Jefri Suwarno', 'M.Ak', 'Dr.', 'Pemandu Wisata', NULL, NULL),
(9, 3521462102095429, 'Cinta Najwa Purwanti M.Farm', 'S.E.', 'drg.', 'Pegawai Negeri Sipil (PNS)', NULL, NULL),
(10, 3312342608213252, 'Cakrabuana Pratama', 'S.T.', 'dr.', 'Kepolisian RI (POLRI)', NULL, NULL),
(11, 8101051207099097, 'Caket Maheswara M.M.', 'S.H.', 'Drs.', 'Pensiunan', NULL, NULL),
(12, 72170093, 'Andrew Azio', 'Dosen Tetap', 'Asisten Ahli', 'Artificial Intelligence', '2022-05-20 07:24:37', '2022-05-20 07:24:37');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa_tabel`
--

CREATE TABLE `mahasiswa_tabel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nim` bigint(20) NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurusan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bidang_minat` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mahasiswa_tabel`
--

INSERT INTO `mahasiswa_tabel` (`id`, `nim`, `nama`, `gender`, `jurusan`, `bidang_minat`, `created_at`, `updated_at`) VALUES
(1, 8206335104998876, 'Ellis Novitasari M.Farm', 'female', 'Perancang Busana', 'Perancang Busana', NULL, NULL),
(2, 7317111406034605, 'Nurul Suryatmi', 'female', 'Mekanik', 'Atlet', NULL, NULL),
(3, 5171371305106613, 'Rachel Melani', 'female', 'Perdagangan', 'Konsultan', NULL, NULL),
(4, 1219896312041416, 'Hani Yuniar', 'female', 'Guru', 'Atlet', NULL, NULL),
(5, 5208884910122769, 'Kamal Jailani', 'female', 'Penulis', 'Tukang Listrik', NULL, NULL),
(6, 3208780911106695, 'Wani Padmi Novitasari', 'female', 'Penata Rias', 'Bidan', NULL, NULL),
(7, 3574646708132085, 'Victoria Winarsih S.Pt', 'male', 'Atlet', 'Karyawan BUMN', NULL, NULL),
(8, 9120850208944211, 'Cemeti Raditya Uwais', 'male', 'Karyawan BUMD', 'Pialang', NULL, NULL),
(9, 3174166102098659, 'Cahyadi Saragih', 'male', 'Tabib', 'Wartawan', NULL, NULL),
(10, 1813131412128990, 'Rika Alika Padmasari', 'male', 'Tukang Listrik', 'Pialang', NULL, NULL),
(11, 5304262409044871, 'Raina Vivi Namaga M.Ak', 'male', 'Perancang Busana', 'Buruh Tani / Perkebunan', NULL, NULL),
(12, 3518820612927838, 'Damu Utama', 'male', 'Perancang Busana', 'Penyiar Radio', NULL, NULL),
(13, 7316764408193319, 'Samiah Hartati S.IP', 'male', 'Biarawati', 'Psikiater / Psikolog', NULL, NULL),
(14, 7317702001113002, 'Puspa Kezia Wijayanti', 'male', 'Peternak', 'Montir', NULL, NULL),
(15, 1210643004101827, 'Tri Harsana Hutasoit', 'male', 'Montir', 'Penerjemah', NULL, NULL),
(16, 8272901411112664, 'Rahmi Suryatmi', 'male', 'Tukang Listrik', 'Paraji', NULL, NULL),
(17, 1215520510024456, 'Tugiman Mulyanto Sihombing', 'male', 'Ustaz / Mubaligh', 'Pilot', NULL, NULL),
(18, 1278975604957238, 'Vanesa Yuliarti S.Pd', 'male', 'Biarawati', 'Presiden', NULL, NULL),
(19, 3272496602039759, 'Ciaobella Zulaika', 'male', 'Masinis', 'Pegawai Negeri Sipil (PNS)', NULL, NULL),
(20, 6371151002084206, 'Usman Irnanto Prabowo M.TI.', 'male', 'Montir', 'Mekanik', NULL, NULL),
(21, 1673892108219385, 'Vanesa Farida', 'male', 'Peneliti', 'Dokter', NULL, NULL),
(22, 1173516006075014, 'Vera Siska Sudiati M.M.', 'male', 'Satpam', 'Biarawati', NULL, NULL),
(23, 8102606212009149, 'Kasusra Pradana M.Ak', 'male', 'Pialang', 'Penata Rias', NULL, NULL),
(24, 6107217008063304, 'Rosman Pangestu', 'male', 'Transportasi', 'Guru', NULL, NULL),
(25, 1806891906125559, 'Winda Safitri', 'male', 'Montir', 'Perancang Busana', NULL, NULL),
(26, 7411905411959368, 'Cengkal Adriansyah S.E.', 'male', 'Imam Masjid', 'Perawat', NULL, NULL),
(27, 1115022401182707, 'Dariati Iswahyudi S.Gz', 'male', 'Perangkat Desa', 'Perawat', NULL, NULL),
(28, 6111901503128212, 'Janet Zulaika S.Psi', 'male', 'Pedagang', 'Ustaz / Mubaligh', NULL, NULL),
(29, 7603880101091660, 'Edison Salahudin S.Sos', 'male', 'Karyawan Swasta', 'Perancang Busana', NULL, NULL),
(30, 1407431203126972, 'Devi Cici Yulianti M.TI.', 'male', 'Tukang Cukur', 'Pramugari', NULL, NULL),
(31, 3574820109048589, 'Silvia Zulaika', 'male', 'Tukang Listrik', 'Karyawan Swasta', NULL, NULL),
(32, 3207684701040497, 'Gina Yuni Namaga S.Sos', 'male', 'Perancang Busana', 'Karyawan Honorer', NULL, NULL),
(33, 6402526409087756, 'Talia Patricia Sudiati', 'male', 'Penata Busana', 'Buruh Nelayan / Perikanan', NULL, NULL),
(34, 1209342202125699, 'Dian Diana Maryati', 'male', 'Peternak', 'Pelaut', NULL, NULL),
(35, 7312075703097372, 'Makuta Manullang', 'male', 'Tabib', 'Tukang Las / Pandai Besi', NULL, NULL),
(36, 3276002306938088, 'Koko Wijaya', 'male', 'Pensiunan', 'Konstruksi', NULL, NULL),
(37, 7371280106217118, 'Padma Zalindra Puspita M.Ak', 'male', 'Pedagang', 'Imam Masjid', NULL, NULL),
(38, 1371756603222570, 'Jagaraga Bakti Nashiruddin M.Farm', 'male', 'Tabib', 'Pegawai Negeri Sipil (PNS)', NULL, NULL),
(39, 3174616411103574, 'Maria Melani', 'male', 'Mekanik', 'Karyawan BUMD', NULL, NULL),
(40, 7209815504159898, 'Rahmi Puspasari', 'male', 'Penambang', 'Wiraswasta', NULL, NULL),
(41, 7207025010951886, 'Marwata Eluh Sitorus S.IP', 'male', 'Masinis', 'Pelaut', NULL, NULL),
(42, 7316742503096627, 'Raharja Hutapea', 'male', 'Paraji', 'Montir', NULL, NULL),
(43, 1609574806123768, 'Ella Jasmin Yuniar S.Sos', 'male', 'Imam Masjid', 'Programmer', NULL, NULL),
(44, 3604992905135250, 'Radika Gatra Wasita M.Ak', 'male', 'Imam Masjid', 'Penulis', NULL, NULL),
(45, 7311725108931935, 'Adhiarja Gunawan', 'male', 'Penata Rias', 'Satpam', NULL, NULL),
(46, 6471292609186974, 'Lega Gunarto S.Psi', 'male', 'Nahkoda', 'Perdagangan', NULL, NULL),
(47, 6104163110211842, 'Langgeng Kariman Prasasta S.Pd', 'male', 'Pelajar / Mahasiswa', 'Perawat', NULL, NULL),
(48, 2171554309941827, 'Pangeran Maryadi', 'male', 'Wiraswasta', 'Tukang Las / Pandai Besi', NULL, NULL),
(49, 1810494809010763, 'Ulya Yuniar', 'male', 'Buruh Tani / Perkebunan', 'Tukang Kayu', NULL, NULL),
(50, 1472871311114312, 'Gawati Mulyani', 'male', 'Mekanik', 'Arsitek', NULL, NULL),
(51, 1708760612965434, 'Jais Kuswoyo', 'male', 'Penulis', 'Promotor Acara', NULL, NULL),
(52, 3603250808032302, 'Oliva Winarsih', 'male', 'Peneliti', 'Buruh Nelayan / Perikanan', NULL, NULL),
(53, 3671192505161432, 'Yessi Raina Andriani S.Farm', 'male', 'Perancang Busana', 'Ustaz / Mubaligh', NULL, NULL),
(54, 3319143107962202, 'Leo Hutasoit', 'male', 'Penata Rambut', 'Buruh Tani / Perkebunan', NULL, NULL),
(55, 6104495909179353, 'Ratna Haryanti', 'male', 'Peneliti', 'Guru', NULL, NULL),
(56, 9112701401092286, 'Edward Catur Adriansyah S.E.', 'male', 'Nahkoda', 'Programmer', NULL, NULL),
(57, 3522622608092334, 'Vivi Hassanah', 'male', 'Atlet', 'Desainer', NULL, NULL),
(58, 1278290305113830, 'Prasetya Wibowo', 'male', 'Tukang Cukur', 'Masinis', NULL, NULL),
(59, 3318524210105349, 'Samiah Zalindra Palastri', 'male', 'Pegawai Negeri Sipil (PNS)', 'Tukang Las / Pandai Besi', NULL, NULL),
(60, 5103200208162452, 'Hadi Waluyo Nainggolan', 'male', 'Presiden', 'Tukang Listrik', NULL, NULL),
(61, 6571693008191462, 'Uchita Palastri S.Sos', 'male', 'Biarawati', 'Wiraswasta', NULL, NULL),
(62, 6206376808084899, 'Jessica Hani Susanti', 'male', 'Sopir', 'Penambang', NULL, NULL),
(63, 9123032112159690, 'Mulyanto Iswahyudi', 'male', 'Konsultan', 'Apoteker', NULL, NULL),
(64, 1219491905957692, 'Lintang Yulianti', 'male', 'Wiraswasta', 'Tukang Batu', NULL, NULL),
(65, 7316971412982593, 'Rachel Rika Agustina', 'male', 'Tukang Cukur', 'Seniman', NULL, NULL),
(66, 3273454706073149, 'Wirda Padma Wastuti', 'male', 'Tukang Gigi', 'Tentara Nasional Indonesia (TNI)', NULL, NULL),
(67, 1707764907095128, 'Yani Mardhiyah', 'male', 'Juru Masak', 'Promotor Acara', NULL, NULL),
(68, 3403031203940573, 'Zaenab Andriani', 'male', 'Notaris', 'Kepolisian RI (POLRI)', NULL, NULL),
(69, 7171971509959288, 'Anita Rachel Uyainah', 'male', 'Tukang Batu', 'Tukang Jahit', NULL, NULL),
(70, 1304232308164865, 'Emin Hasan Budiman', 'male', 'Kepolisian RI (POLRI)', 'Juru Masak', NULL, NULL),
(71, 1225894803119788, 'Restu Queen Palastri M.M.', 'male', 'Buruh Harian Lepas', 'Pendeta', NULL, NULL),
(72, 8105476611156598, 'Kasiyah Rahayu', 'male', 'Ustaz / Mubaligh', 'Belum / Tidak Bekerja', NULL, NULL),
(73, 9204785409921552, 'Taufan Warta Mandala', 'male', 'Perangkat Desa', 'Programmer', NULL, NULL),
(74, 3505591401134361, 'Adiarja Siregar', 'male', 'Tentara Nasional Indonesia (TNI)', 'Tukang Jahit', NULL, NULL),
(75, 1117770101010620, 'Ciaobella Gilda Rahmawati S.E.I', 'male', 'Ustaz / Mubaligh', 'Tukang Batu', NULL, NULL),
(76, 3529595511927744, 'Alika Fujiati', 'male', 'Perdagangan', 'Pedagang', NULL, NULL),
(77, 7106462906164691, 'Latif Mansur', 'male', 'Tukang Sol Sepatu', 'Penambang', NULL, NULL),
(78, 1673511809075873, 'Purwadi Prasetya Simanjuntak', 'male', 'Tukang Las / Pandai Besi', 'Karyawan Honorer', NULL, NULL),
(79, 1610286408997864, 'Anastasia Handayani', 'male', 'Wakil Presiden', 'Apoteker', NULL, NULL),
(80, 3375556002934614, 'Agnes Pudjiastuti', 'male', 'Mengurus Rumah Tangga', 'Konsultan', NULL, NULL),
(81, 6309581103158832, 'Lutfan Halim S.Ked', 'male', 'Dosen', 'Tukang Kayu', NULL, NULL),
(82, 3208744612975261, 'Eko Rajata', 'male', 'Pengacara', 'Penata Rias', NULL, NULL),
(83, 1277826901205467, 'Iriana Titin Lailasari S.Gz', 'male', 'Pialang', 'Atlet', NULL, NULL),
(84, 3327782211003261, 'Zulaikha Amalia Pertiwi', 'male', 'Karyawan BUMN', 'Presiden', NULL, NULL),
(85, 1902954608987936, 'Opung Samosir', 'male', 'Pastor', 'Industri', NULL, NULL),
(86, 1605234408134412, 'Naradi Nainggolan', 'male', 'Promotor Acara', 'Guru', NULL, NULL),
(87, 9117787108089040, 'Teddy Daru Sihombing', 'male', 'Montir', 'Tentara Nasional Indonesia (TNI)', NULL, NULL),
(88, 9104110209200790, 'Nrima Nugroho', 'male', 'Paraji', 'Perdagangan', NULL, NULL),
(89, 3509866007105530, 'Ana Palastri S.E.I', 'male', 'Akuntan', 'Masinis', NULL, NULL),
(90, 1506696112169325, 'Novi Laksmiwati', 'male', 'Transportasi', 'Masinis', NULL, NULL),
(91, 1906940305160850, 'Kayla Handayani', 'male', 'Penata Rambut', 'Buruh Harian Lepas', NULL, NULL),
(92, 1702506208125202, 'Gada Winarno', 'male', 'Penambang', 'Ustaz / Mubaligh', NULL, NULL),
(93, 1606774109940157, 'Karsana Uwais S.Pt', 'male', 'Perangkat Desa', 'Konsultan', NULL, NULL),
(94, 3376876002937152, 'Oni Ilsa Hasanah S.I.Kom', 'male', 'Programmer', 'Belum / Tidak Bekerja', NULL, NULL),
(95, 7310960905091496, 'Ilsa Hassanah', 'male', 'Wiraswasta', 'Mekanik', NULL, NULL),
(96, 3277152311024683, 'Ulya Purwanti S.T.', 'male', 'Karyawan Swasta', 'Sopir', NULL, NULL),
(97, 7403742812086783, 'Queen Sudiati', 'male', 'Buruh Peternakan', 'Buruh Nelayan / Perikanan', NULL, NULL),
(98, 8207036212057977, 'Jaka Marpaung', 'male', 'Tukang Gigi', 'Karyawan Honorer', NULL, NULL),
(99, 7326195801025863, 'Ade Ade Hassanah', 'male', 'Apoteker', 'Arsitek', NULL, NULL),
(100, 5311776910059267, 'Argono Ibun Maulana', 'male', 'Karyawan BUMN', 'Apoteker', NULL, NULL),
(101, 1902036810931866, 'Syahrini Widiastuti', 'male', 'Buruh Peternakan', 'Buruh Tani / Perkebunan', NULL, NULL),
(102, 6172611903993551, 'Puti Zamira Lailasari', 'male', 'Buruh Peternakan', 'Pialang', NULL, NULL),
(103, 1605175211115431, 'Irma Yance Wastuti', 'male', 'Buruh Tani / Perkebunan', 'Buruh Nelayan / Perikanan', NULL, NULL),
(104, 6502764908038628, 'Daruna Winarno S.Sos', 'male', 'Nelayan / Perikanan', 'Perangkat Desa', NULL, NULL),
(105, 9124891612048435, 'Najam Saragih', 'male', 'Pelaut', 'Promotor Acara', NULL, NULL),
(106, 1371901611095205, 'Kayun Prabu Lazuardi', 'male', 'Tukang Cukur', 'Karyawan Swasta', NULL, NULL),
(107, 7606484909987980, 'Virman Setiawan', 'male', 'Buruh Peternakan', 'Penambang', NULL, NULL),
(108, 1220904212962595, 'Putri Hasanah', 'male', 'Pramusaji', 'Jaksa', NULL, NULL),
(109, 7202785712120478, 'Zelda Hasanah', 'male', 'Kepolisian RI (POLRI)', 'Penata Rias', NULL, NULL),
(110, 3216250109023615, 'Puji Nuraini', 'male', 'Konstruksi', 'Programmer', NULL, NULL),
(111, 9107160101074598, 'Balamantri Napitupulu M.Pd', 'male', 'Penyiar Televisi', 'Biarawati', NULL, NULL),
(112, 1771601712177514, 'Emil Sitorus S.H.', 'male', 'Buruh Nelayan / Perikanan', 'Wartawan', NULL, NULL),
(113, 5310890805968915, 'Nilam Zalindra Yolanda', 'male', 'Penyiar Radio', 'Transportasi', NULL, NULL),
(114, 5301456003194278, 'Banara Nardi Pradana', 'male', 'Penata Rias', 'Pelajar / Mahasiswa', NULL, NULL),
(115, 1611285709059729, 'Adinata Hutapea', 'male', 'Buruh Nelayan / Perikanan', 'Arsitek', NULL, NULL),
(116, 3306875109017723, 'Putri Puspasari', 'male', 'Jaksa', 'Notaris', NULL, NULL),
(117, 1104743108159862, 'Lala Ulya Mandasari S.Sos', 'male', 'Pialang', 'Apoteker', NULL, NULL),
(118, 7107725403056187, 'Suci Novitasari S.Psi', 'male', 'Sopir', 'Nahkoda', NULL, NULL),
(119, 3276580112109272, 'Ami Hariyah', 'male', 'Tukang Batu', 'Tukang Gigi', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2022_05_13_151026_create_dosen_table', 1),
(7, '2022_05_13_160428_create_mahasiswa_tabel', 2),
(8, '2014_10_12_000000_create_users_table', 3),
(9, '2014_10_12_100000_create_password_resets_table', 4),
(10, '2014_10_12_200000_add_two_factor_columns_to_users_table', 4),
(11, '2019_08_19_000000_create_failed_jobs_table', 4),
(12, '2019_12_14_000001_create_personal_access_tokens_table', 4),
(13, '2022_06_03_154841_create_sessions_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('6gWn4kckKazQth9uKUGXLGpIDZQ7xqZarPh59c6C', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTVYwS1ZVUXpFVnhoVkdwVVV0SnVaenVkTEFCekNoZWJVSlhWSXphUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1655744512),
('y9AxrQ5oZmyR8FyTQCZWbUpL3UOsvTGrT2zEzuYJ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaWdMOVVBVFhVWGJhYjlaNHRWTGZndVpiRmdHSmxrdlNyTWVJcllIbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1654271501);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email_users` varchar(50) NOT NULL,
  `password_users` varchar(200) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email_users`, `password_users`, `updated_at`, `created_at`) VALUES
(1, 'andrew@gmail.com', 'andrew', NULL, NULL),
(2, 'azios@gmail.com', 'azios', '2022-06-20 19:52:12', '2022-06-20 19:29:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `mahasiswa_tabel`
--
ALTER TABLE `mahasiswa_tabel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mahasiswa_tabel`
--
ALTER TABLE `mahasiswa_tabel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
