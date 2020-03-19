-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2020 at 09:35 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pcs_neo_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_manufacture`
--

CREATE TABLE `contact_manufacture` (
  `date` datetime DEFAULT NULL,
  `date_close` datetime DEFAULT NULL,
  `id` int(11) NOT NULL,
  `wo_number` int(11) NOT NULL,
  `mapping_damage` text NOT NULL,
  `status` varchar(30) NOT NULL,
  `progress_name` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `history_contact_manufacture`
--

CREATE TABLE `history_contact_manufacture` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `wo_number` int(11) NOT NULL,
  `progress_name` text NOT NULL,
  `status` varchar(30) NOT NULL,
  `attachment` text DEFAULT NULL,
  `filename` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_data`
--

CREATE TABLE `maintenance_data` (
  `revision_number` mediumint(8) NOT NULL,
  `maintenance_type` varchar(20) NOT NULL,
  `ac_reg` varchar(10) NOT NULL,
  `ac_type` varchar(10) NOT NULL,
  `customer` varchar(20) NOT NULL,
  `hangar_location` tinyint(4) NOT NULL,
  `line_location` tinyint(4) NOT NULL,
  `project_owner` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL,
  `date_in` date NOT NULL,
  `date_out` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maintenance_data`
--

INSERT INTO `maintenance_data` (`revision_number`, `maintenance_type`, `ac_reg`, `ac_type`, `customer`, `hangar_location`, `line_location`, `project_owner`, `status`, `date_in`, `date_out`) VALUES
(105196, 'D04-CHECK', 'PK-GPF', 'A330-300', 'GARUDA INDONESIA', 3, 2, 'A. Fanani', 'Open', '2019-10-25', '2019-12-17');

-- --------------------------------------------------------

--
-- Table structure for table `material_database`
--

CREATE TABLE `material_database` (
  `id` int(11) NOT NULL,
  `part_number` varchar(40) NOT NULL,
  `description` varchar(50) NOT NULL,
  `alternate_part_number` varchar(40) DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `uom` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `material_database`
--

INSERT INTO `material_database` (`id`, `part_number`, `description`, `alternate_part_number`, `remark`, `uom`) VALUES
(1, '113-3214-213', 'a', NULL, NULL, 'EA'),
(2, '421-1231-312', 'b', NULL, NULL, 'EA'),
(3, '315-231-504b', 'c', NULL, NULL, 'EA'),
(4, 'AF163-2K-06', 'EPOXY ADHESIVE FILM', '', 'Repair bonding', 'FT'),
(5, 'AMS404916B', 'ANODIZED AMS4049 0.016 BMS5-89', '', 'Repair bonding', 'EA'),
(6, 'AC-130-2', 'SOL GEL', '', 'Repair bonding', 'EA'),
(7, 'BR6747-1', 'ADHESIVE PRIMER', '', 'Repair bonding', 'GAL'),
(8, 'AMS5528-02', 'CRESSSHEET17-7PH,SIZE:.025X36X120', '', 'Repair horstab', 'LB'),
(9, 'BAC1520-13', 'TIE DOWN TRACK EXTRUSION 1 BAR EQUAL', '', 'Make tie down track', 'FT'),
(10, 'S702Y0494', 'BUSHING (OVRLNGTH S700B1389-04-038)', 'BCREF155840', 'Fancowl 737NG', 'EA'),
(11, 'NAS603-3P', 'SCREW', '', 'Frame cargo door 737 Classic', 'EA'),
(12, 'BACN10JR4CFD', 'NUTPLATE', '', 'Frame cargo door 737 Classic', 'EA'),
(13, 'BACN10KE3B4CD', 'NUT PLATE', '', 'Repair flap fairing 737 NG', 'EA'),
(14, 'MS21043-08', 'NUT', '', 'modifikasi fixed fairing A320', 'EA'),
(15, 'NAS1149CN816R', 'WASHER', 'AN960C8L', 'Modifikasi aft fixed fairing A320', 'EA'),
(16, 'NAS1152-2', 'SCREW', '', 'Modifikasi aft fixed fairing A320', 'EA'),
(17, 'MS24665-134', 'PIN', 'BACP18BC02C06P', 'flap fairing 737 NG', 'EA'),
(18, '113A3172-55', 'SEAL', '113A3172-29', 'repair outboard aft flap 737 NG', 'EA'),
(19, '113A3172-13', 'SEAL', '', 'Outboard aft flap 737-NG', 'EA'),
(20, '314-2209-19', 'RUBSTRIP', '', 'repair fancowl 737 NG', 'EA'),
(21, 'NSA8133-07', 'BEARING-SPHERICAL', '', 'repair aft fixed fairing A320', 'EA'),
(22, 'D5453006300100', 'PLATE ASSY MOUNTING', '', 'aft fixed fairing A320', 'EA'),
(23, 'D5453006300000', 'PLATE', '', 'aft fixed fairing A320', 'EA'),
(24, 'BACB30VF3K3', 'BOLT', '', 'repair outboard flap 737NG', 'EA'),
(25, '314-2209-13', 'RUBSTRIP', '', 'Fancowl 737NG', 'EA'),
(26, 'RC3506-1', 'BRACKET', '314D2260-503', 'repair fancowl', 'EA'),
(27, '314-2209-14', 'RUBSTRIP', '', 'repair fancowl 737 NG', 'EA'),
(28, 'S700B0455-6C019', 'BUSHING', '', 'repair fancowl', 'EA'),
(29, 'S700B0455-4C011', 'BUSHING', '', 'repair fancowl 737 NG', 'EA'),
(30, 'BACB30MY6K3', 'BOLT', '', 'repair corner frame cargo door 737 Classic', 'EA'),
(31, 'BACN10JC3', 'NUT', 'BACN10JC3CD', 'repair corner frame cargo door 737 Classic', 'EA'),
(32, 'EA9394', 'HYSOL EPOXY RESIN, KIT', '', '', 'EA'),
(33, 'VELCROP80', 'ABRASIVE PAPER 5\' GRADE 80', '', '', 'EA'),
(34, 'NAS1149D0363K', 'WASHER, FLAT', '', '', 'EA'),
(35, 'CSR904B5E5', 'RIVET', '', '', 'EA'),
(36, 'BACB30NE3-28', 'BOLT', '', '', 'EA'),
(37, 'CR2663-5-02', 'CHERRY RIVET', '', '', 'EA'),
(38, 'BACN10JC4CD', 'NUT SELF', '', '', 'EA'),
(39, 'CR2663-5-03', 'RIVET (AS PN.CR2663-5-3)', '', '', 'EA'),
(40, 'NAS1149D0463K', 'WASHER', 'AN960PD416', 'Repair corner frame cargo door 737 Classic', 'EA'),
(41, 'BACB30NM4K10', 'BOLT', '', 'repair corner frame cargo door 737 Classic', 'EA'),
(42, 'NAS1097AD4-6', 'RIVET (TBR)', '', 'ENG CNA', 'LB'),
(43, 'BACR15FT5D5C', 'RIVET', '', 'repair apu access door 737 NG', 'EA'),
(44, 'BACR15BB4AD4C', 'RIVET', '', '', 'EA'),
(45, 'CR3212-5-6', 'BLIND RIVET (AS PN CR3212-5-06)', 'CR3212-5-06', '', 'EA'),
(46, 'BACG20X4', 'BUSHING', '', '', 'EA'),
(47, 'BACR12X1', 'RING', '', '', 'EA'),
(48, 'BACS21ED9R', 'STUD', '', '', 'EA'),
(49, '453A1530-31', 'EXTRUSION Ã» BULKHEAD PANEL', '', 'extrussion bulkead panel 737 NG', 'EA'),
(50, 'DAPCO2100', 'BMS5-63 REV.N FORM A CLASS B4 TYPE II', '', '', 'EA'),
(51, 'RTV630', 'SILICONE RUBBER COMPOUND', '', '', 'EA'),
(52, 'NAS1097KE4-7', 'RIVET', '', '', 'EA'),
(53, 'ASNA2051DCJ3210', 'RIVET FLUSH HEAD', '', 'repair aft fixed fairing crack A320 ', 'EA'),
(54, 'NSA5415-36-15', 'RIVET', '', 'repair aft fixed fairing crack A320', 'EA'),
(55, 'MS20470AD4-8', 'RIVET', '', 'repair aft fixed fairing crack A320', 'EA'),
(56, 'CDR50A60', '2 COMBIDISC ABR DISC,TY CDR-ALOX-60 G', '', 'abrasive paper ulir', 'EA'),
(57, '232-1', 'SCOTCH 3M MASKING TAPE NO.232-1', '', '', 'ROL'),
(58, 'CR3523-4-03', 'CERRY RIVET', 'ASNA0078C403', '', 'EA'),
(59, 'CR3523-4-02', 'RIVET,CHERRY-MAX', '', '', 'EA'),
(60, '315A2553-1', 'TAPE', '', 'ENG THRUST REVERSER', 'EA'),
(61, 'CR3223-4-03', 'RIVET, CHERRY MAX', '', '', 'EA'),
(62, '315A2172-24', 'SHIELD-EROSION', '', 'ENG THRUST REVERSER', 'EA'),
(63, 'A2577187320400', 'SCREW', '', 'cargo ballmat A320', 'EA'),
(64, 'MS20426D4-7', 'RIVET', '', 'cargo ballmat A320', 'EA'),
(65, '315A2312-2', 'FIREWALL-FWD (RH)', '315A2312-4', 'ENG THRUST REVERSER', 'EA'),
(66, 'CR3222-4-02', 'CHERRY-MAX,RIVET', '', 'repair cargo ballmat', 'EA'),
(67, 'RTV159', 'SEALANT RED/ADHESIVE 2.8OZ/82.8ML/TRP', '', 'Sealant red / merah', 'EA'),
(68, '315A2715-3', 'ROLLER', '', 'ENG THRUST REVERSER', 'EA'),
(69, '315A2247-15', 'RUBSTRIP', '', 'ENG THRUST REVERSER', 'EA'),
(70, '8210N95', 'FACE MASK/MASKER WHITE MEDIUM CLASS', '', 'masker', 'EA'),
(71, 'NAS1149D0332K', 'WASHER', '', 'ENG THRUST REVERSER', 'EA'),
(72, 'ARM5413', 'SEAL (SPEC 10-60754-1110)', '5673-1110', 'Inb Flap Main Flap 737 NG', 'EA'),
(73, '5-89355-87', 'WINDSHIELD ASSEMBLY-NUMBER 2, PANE, LEFT', '', 'SLIDING WINDOW', 'EA'),
(74, '3M-7447-A-VFN', 'SCOTCH BRITE', '', '', 'EA'),
(75, 'NAS1919M04S02WU', 'RIVET, BLIND', '', '', 'EA'),
(76, 'NAS1921M05S03U', 'BLIND RIVET', '', '', 'EA'),
(77, 'CR3252-5-03', 'CHERRY-MAX RIVET', '', '', 'EA'),
(78, 'BACB30VF3K4', 'BOLT', '', 'AFT FLAP', 'EA'),
(79, 'AMS4901-040', 'TITANIUM A70 SHEET 0.04x36 inch x 96 inch', '', 'sillweb and scuffplate 737 NG', 'SH'),
(80, 'HL11VAZ6-4', 'BOLT (SPEC PN. BACB30NW6K4)', '', '', 'EA'),
(81, 'EPOCAST50A1946', 'EPOXY LAMINATING RESIN & HARDENER', '', '', 'EA'),
(82, 'NAS1097AD5-5', 'RIVET', '', '', 'LB'),
(83, 'NAS1921C05-02', 'RIVET', '', '', 'EA'),
(84, 'NAS1921M04S02U', 'BLIND RIVET', '', '', 'EA'),
(85, 'EA9390', 'HYSOL RESIN & HARDENER, KIT', '', '', 'EA'),
(86, 'EPOCAST1619AB ', 'POTTING COMPOUND', '', '', 'EA'),
(87, 'AMS404916BMS589', 'ANODIZED AMS4049 0.016 BMS5-89', '', '', 'EA'),
(88, 'ARDROXAV30', 'CORROSION INHIBITING COMPOUND', '', '', 'L'),
(89, '17BCM6765', 'SARUNG TANGAN KARET LENGAN PANJANG', '', 'sarung tangan karet untuk deicer boot ATR', 'PAA'),
(90, '88D10204-173', 'SEAL, CARGO DOOR FWD, B737NG', 'SF15-120-173', '', 'EA'),
(91, 'MEK', 'CLEANING SOLVENT', '', '', 'L');

-- --------------------------------------------------------

--
-- Table structure for table `penagihan_ibt`
--

CREATE TABLE `penagihan_ibt` (
  `wo_number` int(11) NOT NULL,
  `total_manhours` int(11) DEFAULT NULL,
  `total_price` int(11) DEFAULT NULL,
  `billing_status` varchar(25) DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `request_material_description`
--

CREATE TABLE `request_material_description` (
  `id` int(11) NOT NULL,
  `revision_number` mediumint(8) DEFAULT NULL,
  `wo_number` int(15) NOT NULL,
  `part_number` varchar(25) NOT NULL,
  `quantity` tinyint(4) NOT NULL,
  `uic` varchar(25) NOT NULL,
  `requester` varchar(30) NOT NULL,
  `priority` varchar(15) DEFAULT NULL,
  `stock_status` varchar(12) NOT NULL,
  `material_location` varchar(30) DEFAULT NULL,
  `pr_number` varchar(10) DEFAULT NULL,
  `po_number` varchar(10) DEFAULT NULL,
  `awb_number` varchar(10) DEFAULT NULL,
  `sto_number` varchar(10) DEFAULT NULL,
  `status` varchar(6) NOT NULL,
  `receiver` varchar(30) DEFAULT NULL,
  `request_date` datetime DEFAULT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `remark` text NOT NULL,
  `eta` date DEFAULT NULL,
  `vendor` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `request_material_status`
--

CREATE TABLE `request_material_status` (
  `id` int(11) NOT NULL,
  `wo_number` int(15) NOT NULL,
  `part_number` varchar(25) NOT NULL,
  `quantity` tinyint(4) NOT NULL,
  `status` text NOT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `special_work_order_description`
--

CREATE TABLE `special_work_order_description` (
  `customer` varchar(20) NOT NULL,
  `ac_reg` varchar(10) NOT NULL,
  `swo_number` varchar(25) NOT NULL,
  `doc_type` varchar(10) NOT NULL,
  `wo_number` int(15) NOT NULL,
  `description` text NOT NULL,
  `document_number` varchar(25) NOT NULL,
  `part_number` varchar(25) NOT NULL,
  `serial_number` varchar(25) NOT NULL,
  `quantity` tinyint(4) NOT NULL,
  `sp_in` varchar(15) NOT NULL,
  `main_work_centre` varchar(10) NOT NULL,
  `component_location` varchar(6) NOT NULL,
  `status` varchar(10) NOT NULL,
  `uic` varchar(10) NOT NULL,
  `remark` text NOT NULL,
  `date_in` datetime DEFAULT NULL,
  `date_out` datetime DEFAULT NULL,
  `priority` varchar(15) NOT NULL,
  `revision_number` varchar(2) DEFAULT NULL,
  `progress_name` varchar(30) DEFAULT NULL,
  `performer` varchar(30) DEFAULT NULL,
  `estimate_finish` datetime DEFAULT NULL,
  `user_request_finish` datetime DEFAULT NULL,
  `sp_out` varchar(15) DEFAULT NULL,
  `receiver` varchar(40) DEFAULT NULL,
  `ac_type` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(20) NOT NULL,
  `password` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `job_title` varchar(50) NOT NULL,
  `role` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `password`, `name`, `unit`, `job_title`, `role`) VALUES
('580120', '580120', 'AGUNG JATI ASMARA', 'TBR-6', 'SENIOR AIRCRAFT STRUCTURE TECHNICIAN', NULL),
('532863', '532863', 'EKO PRIWANTOLO', 'TBR-6', 'AIRCRAFT STRUCTURE ENGINEER', NULL),
('532862', '532862', 'EKO KURNIAJI PRAYITNO', 'TBR-6', 'SENIOR AIRCRAFT STRUCTURE TECHNICIAN', NULL),
('530264', '530264', 'B. TIKAL KURNIAWAN', 'TBR-6', 'MGR COMPOSITE-2', 'MGR'),
('523598', '523598', 'SOLAHUDIN', 'TBR-6', 'SENIOR AIRCRAFT STRUCTURE ENGINEER', NULL),
('521650', '521650', 'AZHARI', 'TBR-6', 'SENIOR AIRCRAFT STRUCTURE ENGINEER', NULL),
('582373', '582373', 'MIFTA FERNANDA ALAMSYAH', 'TBR-5', 'AIRCRAFT STRUCTURE TECHNICIAN', NULL),
('581855', '581855', 'MOHAMMAD FADILAH', 'TBR-5', 'AIRCRAFT STRUCTURE TECHNICIAN', NULL),
('581854', '581854', 'IQBAL MAULANA BOVI', 'TBR-5', 'AIRCRAFT STRUCTURE TECHNICIAN', NULL),
('581851', '581851', 'HENDI HARIYAWAN', 'TBR-5', 'AIRCRAFT STRUCTURE TECHNICIAN', NULL),
('581849', '581849', 'GIFARI RAFI AL MATIN', 'TBR-5', 'AIRCRAFT STRUCTURE TECHNICIAN', NULL),
('581242', '581242', 'FIKI KRISNA WICAKSONO ', 'TBR-5', 'AIRCRAFT STRUCTURE TECHNICIAN', NULL),
('581226', '581226', 'CHOIRUL AHIMSA ', 'TBR-5', 'AIRCRAFT STRUCTURE TECHNICIAN', NULL),
('581006', '581006', 'MAHARLIN SITUMORANG ', 'TBR-5', 'AIRCRAFT STRUCTURE TECHNICIAN', NULL),
('581001', '581001', 'HASBI ASH SHIDDIEQY ', 'TBR-5', 'AIRCRAFT STRUCTURE TECHNICIAN', NULL),
('580718', '580718', 'LUTHFIE FIRDAUS ', 'TBR-5', 'AIRCRAFT STRUCTURE TECHNICIAN', NULL),
('580504', '580504', 'WAGINO', 'TBR-5', 'AIRCRAFT STRUCTURE TECHNICIAN', NULL),
('580492', '580492', 'HENDRO SETIYOKO ', 'TBR-5', 'AIRCRAFT STRUCTURE TECHNICIAN', NULL),
('580487', '580487', 'ARIF IBNU FEBRIANTO ', 'TBR-5', 'AIRCRAFT STRUCTURE TECHNICIAN', NULL),
('580485', '580485', 'ALIF YOGA APRILYANSAH ', 'TBR-5', 'AIRCRAFT STRUCTURE TECHNICIAN', NULL),
('580122', '580122', 'SETIAJI', 'TBR-5', 'SENIOR AIRCRAFT STRUCTURE TECHNICIAN ', NULL),
('580111', '580111', 'GILANG SURYA PRATAMA ', 'TBR-5', 'SENIOR AIRCRAFT STRUCTURE TECHNICIAN ', NULL),
('532889', '532889', 'PURWANTO', 'TBR-5', 'SENIOR AIRCRAFT STRUCTURE TECHNICIAN ', NULL),
('532870', '532870', 'HENDRA SAPUTRA ', 'TBR-5', 'SENIOR AIRCRAFT STRUCTURE TECHNICIAN ', NULL),
('530277', '530277', 'ZAKI ABDURAHMAN ', 'TBR-5', 'MGR COMPOSITE-1', 'MGR'),
('530263', '530263', 'PION YUSUF ', 'TBR-5', 'SENIOR AIRCRAFT STRUCTURE ENGINEER ', NULL),
('530262', '530262', 'TEDY HARYANTO ', 'TBR-5', 'SENIOR AIRCRAFT STRUCTURE ENGINEER ', NULL),
('523599', '523599', 'ROSYID', 'TBR-5', 'SENIOR AIRCRAFT STRUCTURE ENGINEER ', NULL),
('582378', '582378', 'RISANG PANJALU ', 'TBR-4', 'AIRCRAFT STRUCTURE TECHNICIAN ', NULL),
('582369', '582369', 'GILANG SULTON ASY\'ARI ', 'TBR-4', 'AIRCRAFT STRUCTURE TECHNICIAN ', NULL),
('582367', '582367', 'FAYDLIR RAHMAN ', 'TBR-4', 'AIRCRAFT STRUCTURE TECHNICIAN ', NULL),
('581846', '581846', 'DITO RAHMADANI NUGRAHA ', 'TBR-4', 'AIRCRAFT STRUCTURE TECHNICIAN ', NULL),
('581844', '581844', 'BAGAS WIBOWO ', 'TBR-4', 'AIRCRAFT STRUCTURE TECHNICIAN ', NULL),
('581842', '581842', 'AKHMAD CHOIRUL HATIQ ', 'TBR-4', 'AIRCRAFT STRUCTURE TECHNICIAN ', NULL),
('581841', '581841', 'AHMAD IQBAL ', 'TBR-4', 'AIRCRAFT STRUCTURE TECHNICIAN ', NULL),
('581840', '581840', 'AHMAD ADHAM SHALEH ', 'TBR-4', 'AIRCRAFT STRUCTURE TECHNICIAN ', NULL),
('581839', '581839', 'AGUNG SAKTI PRASETYO ', 'TBR-4', 'AIRCRAFT STRUCTURE TECHNICIAN ', NULL),
('581837', '581837', 'ADITYA EKA NUGRAHA ', 'TBR-4', 'AIRCRAFT STRUCTURE TECHNICIAN ', NULL),
('581240', '581240', 'MUHAMMAD GHIFARI NURZAMAN ', 'TBR-4', 'AIRCRAFT STRUCTURE TECHNICIAN ', NULL),
('581000', '581000', 'FENDI HANANTO ', 'TBR-4', 'AIRCRAFT STRUCTURE TECHNICIAN ', NULL),
('580999', '580999', 'EDY KURNIAWAN ', 'TBR-4', 'AIRCRAFT STRUCTURE TECHNICIAN ', NULL),
('580506', '580506', 'FARIS WALIYULLOH ', 'TBR-4', 'AIRCRAFT STRUCTURE TECHNICIAN ', NULL),
('580503', '580503', 'TEGAR GILANG PRATAMA ', 'TBR-4', 'AIRCRAFT STRUCTURE TECHNICIAN ', NULL),
('580126', '580126', 'SLAMET KUSWANDI ', 'TBR-4', 'AIRCRAFT STRUCTURE ENGINEER ', NULL),
('580125', '580125', 'NASHRUL FALACH ', 'TBR-4', 'SENIOR AIRCRAFT STRUCTURE TECHNICIAN ', NULL),
('529538', '529538', 'MOHAMAD YUSUP ', 'TBR-4', 'SENIOR AIRCRAFT STRUCTURE ENGINEER ', NULL),
('524616', '524616', 'SARJIO', 'TBR-4', 'AIRCRAFT STRUCTURE ENGINEER ', NULL),
('523974', '523974', 'BAMBANG SUTISNO ', 'TBR-4', 'SENIOR AIRCRAFT STRUCTURE ENGINEER ', NULL),
('519272', '519272', 'AKHMADI SASTRA ', 'TBR-4', 'MGR SHEET METAL-2 (CARETAKER) ', 'MGR'),
('582366', '582366', 'DODIK DWI JANUAR ', 'TBR-3', 'AIRCRAFT STRUCTURE TECHNICIAN ', NULL),
('582362', '582362', 'BAGAS RAMADANI SUSILO ', 'TBR-3', 'AIRCRAFT STRUCTURE TECHNICIAN ', NULL),
('582361', '582361', 'AKBAR SUFIANSYAH ', 'TBR-3', 'AIRCRAFT STRUCTURE TECHNICIAN ', NULL),
('581845', '581845', 'BAYU PUTRA PRATAMA S ', 'TBR-3', 'AIRCRAFT STRUCTURE TECHNICIAN ', NULL),
('581843', '581843', 'ASHARI ADI PRASETYO ', 'TBR-3', 'AIRCRAFT STRUCTURE TECHNICIAN ', NULL),
('581838', '581838', 'ADITYA SANTOSA PUTRA ', 'TBR-3', 'AIRCRAFT STRUCTURE TECHNICIAN ', NULL),
('581836', '581836', 'ABYAN MAS\'UDIN NUUR AISY ', 'TBR-3', 'AIRCRAFT STRUCTURE TECHNICIAN ', NULL),
('581222', '581222', 'MUHAMMAD ARROFI HANANTO ', 'TBR-3', 'AIRCRAFT STRUCTURE TECHNICIAN ', NULL),
('580728', '580728', 'MUHAMMAD TAUFIQ RAHMAN ', 'TBR-3', 'AIRCRAFT STRUCTURE TECHNICIAN', NULL),
('580726', '580726', 'MUKLIS SURYADI ', 'TBR-3', 'SENIOR AIRCRAFT STRUCTURE TECHNICIAN', NULL),
('580123', '580123', 'AHADI SUSANTO ', 'TBR-3', 'SENIOR AIRCRAFT STRUCTURE TECHNICIAN', NULL),
('532886', '532886', 'NUR ARI WINTOLO ', 'TBR-3', 'SENIOR AIRCRAFT STRUCTURE TECHNICIAN', NULL),
('532871', '532871', 'HERU GUNAWAN ', 'TBR-3', 'SENIOR AIRCRAFT STRUCTURE TECHNICIAN ', NULL),
('532859', '532859', 'CANDRA SUKMANA ', 'TBR-3', 'SENIOR AIRCRAFT STRUCTURE TECHNICIAN ', NULL),
('530275', '530275', 'ERWIN GINANJAR NUGRAHA ', 'TBR-3', 'SENIOR AIRCRAFT STRUCTURE ENGINEER ', NULL),
('529546', '529546', 'HERRY HARYANTO ', 'TBR-3', 'MGR SHEET METAL-1 ', 'MGR'),
('529528', '529528', 'NANDANG SUPRIATNA ', 'TBR-3', 'SENIOR AIRCRAFT STRUCTURE ENGINEER ', NULL),
('523772', '523772', 'HENDRI MAGDONAL ', 'TBR-3', 'AIRCRAFT STRUCTURE ENGINEER ', NULL),
('523573', '523573', 'SAPRUDIN', 'TBR-3', 'SENIOR AIRCRAFT STRUCTURE ENGINEER ', NULL),
('581239', '581239', 'LATIF SETIAWAN ', 'TBR-2', 'MACHINING TECHNICIAN ', NULL),
('581005', '581005', 'ANDIKA NUGRAHANTO ', 'TBR-2', 'MACHINING TECHNICIAN ', NULL),
('530661', '530661', 'HARDI RINDHARTO ', 'TBR-2', 'MGR MACHINING & WELDING-2 ', 'MGR'),
('524759', '524759', 'JAJANG HOLID MA\'RUP ', 'TBR-2', 'SENIOR MACHINING ENGINEER ', NULL),
('523617', '523617', 'MUHAMMAD ARFAN ', 'TBR-2', 'SENIOR AIRCRAFT STRUCTURE ENGINEER ', NULL),
('523568', '523568', 'EUTIK SUHAYA ', 'TBR-2', 'SENIOR WELDING & SPECIAL PROCESS ENGINEER ', NULL),
('521643', '521643', 'M.S. HARI MULYADI ', 'TBR-2', 'SENIOR AIRCRAFT STRUCTURE ENGINEER ', NULL),
('519278', '519278', 'MUHTAR ANWAR ', 'TBR-2', 'SENIOR AIRCRAFT STRUCTURE ENGINEER ', NULL),
('582987', '582987', 'GLORY DICKY SITOMPUL ', 'TBR-1 ', 'AIRCRAFT MAINTENANCE PLANNING ENGINEER ', 'PE'),
('582984', '582984', 'JODIE STEVEN ', 'TBR-1 ', 'AIRCRAFT MAINTENANCE PLANNING ENGINEER ', 'PE'),
('582982', '582982', 'FARIS ABIYYU ABULKHOIR ', 'TBR-1 ', 'AIRCRAFT MAINTENANCE PLANNING ENGINEER ', 'PE'),
('582981', '582981', 'RACHMAT DARSONO ', 'TBR-1 ', 'AIRCRAFT MAINTENANCE PLANNING ENGINEER ', 'PE'),
('582980', '582980', 'MUHAMMAD LUKMAN SYARIAL ', 'TBR-1 ', 'AIRCRAFT MAINTENANCE PLANNING ENGINEER ', 'PE'),
('582973', '582973', 'AFRIYANTO', 'TBR-1 ', 'AIRCRAFT MAINTENANCE PLANNING ENGINEER ', 'PE'),
('582967', '582967', 'MUHAMMAD FARIS NAUFAL AULIA ', 'TBR-1 ', 'AIRCRAFT MAINTENANCE PLANNING ENGINEER ', 'PE'),
('582948', '582948', 'FARAH KARLINA PURBOWANTI ', 'TBR-1 ', 'AIRCRAFT MAINTENANCE PLANNER ', 'PE'),
('582729', '582729', 'SITI AZIZAH LATIFA DINAR ', 'TBR-1 ', 'SENIOR AIRCRAFT MAINTENANCE TECHNICIAN ', 'PE'),
('582046', '582046', 'ANDI TRIONO ', 'TBR-1 ', 'AIRCRAFT MAINTENANCE PLANNING ENGINEER ', 'PE'),
('581977', '581977', 'NURUL HUDA ', 'TBR-1 ', 'AIRCRAFT MAINTENANCE PLANNING ENGINEER ', 'PE'),
('581963', '581963', 'YOSHUA KUSUMA PUTRA ', 'TBR-1 ', 'AIRCRAFT STRUCTURE ENGINEER ', 'PE'),
('581962', '581962', 'MUHAMMAD KHAIRUREZA ', 'TBR-1 ', 'AIRCRAFT STRUCTURE ENGINEER ', 'PE'),
('581822', '581822', 'JEFRI YURISTIANTO ', 'TBR-1 ', 'AIRCRAFT MAINTENANCE PLANNER ', 'PE'),
('581813', '581813', 'AHMAD ABRARI KHOLIQ ', 'TBR-1 ', 'AIRCRAFT STRUCTURE ENGINEER ', 'PE'),
('581809', '581809', 'AFIF RIZQI FATTAH ', 'TBR-1 ', 'AIRCRAFT STRUCTURE ENGINEER ', 'PE'),
('581654', '581654', 'HADI MAULANA HARJADINATA ', 'TBR-1 ', 'SENIOR AIRCRAFT MAINTENANCE ENGINEER ', 'PE'),
('581235', '581235', 'SURYA AGUNG SATRIYO NUGROHO ', 'TBR-1 ', 'SENIOR AIRCRAFT STRUCTURE TECHNICIAN ', 'PE'),
('532994', '532994', 'ANGRA FIRMAN FELANI ', 'TBR-1 ', 'MGR PLANNING & ENGINEERING PRODUCTION ', 'MGR'),
('530276', '530276', 'AGUS SUPARMAN', 'TBR-1 ', 'SENIOR AIRCRAFT MAINTENANCE PLANNER ', 'PP'),
('522191', '522191', 'RAHMAN RUDIYONO ', 'TBR-1 ', 'SENIOR AIRCRAFT MAINTENANCE PLANNER ', 'PP'),
('530342', '530342', 'IRVAN PRIBADI ', 'TBR', 'GM STRUCTURE WORKSHOP', 'GM'),
('580124', '580124', 'ILYAS', 'TBR-6', 'SENIOR AIRCRAFT STRUCTURE TECHNICIAN', NULL),
('580488', '580488', 'BASUBRAJA KRISNAGUSTA BAROS', 'TBR-6', 'AIRCRAFT STRUCTURE TECHNICIAN', NULL),
('580631', '580631', 'TAMRIN ANGGIAT TARULI NAPITUPULU', 'TBR-6', 'AIRCRAFT STRUCTURE TECHNICIAN', NULL),
('580714', '580714', 'IRFAN NUR ROCHMAN', 'TBR-6', 'AIRCRAFT STRUCTURE TECHNICIAN', NULL),
('580729', '580729', 'REZANDA ADINATA PUTRA', 'TBR-6', 'AIRCRAFT STRUCTURE TECHNICIAN', NULL),
('580731', '580731', 'EKO IMAM SAFAAT', 'TBR-6', 'AIRCRAFT STRUCTURE TECHNICIAN', NULL),
('580733', '580733', 'DWI NUGROHO SAPUTRO', 'TBR-6', 'AIRCRAFT STRUCTURE TECHNICIAN', NULL),
('581009', '581009', 'ROHMAT SYAIFUDIN', 'TBR-6', 'AIRCRAFT STRUCTURE TECHNICIAN', NULL),
('581011', '581011', 'SOFYAN', 'TBR-6', 'AIRCRAFT STRUCTURE TECHNICIAN', NULL),
('581228', '581228', 'OKY YUSUF PERMADANI', 'TBR-6', 'AIRCRAFT STRUCTURE TECHNICIAN', NULL),
('581233', '581233', 'ABDUL KHOLIL', 'TBR-6', 'AIRCRAFT STRUCTURE TECHNICIAN', NULL),
('581236', '581236', 'SEPTYAN SIGIT PURNOMO', 'TBR-6', 'AIRCRAFT STRUCTURE TECHNICIAN', NULL),
('581238', '581238', 'MUHLIS NUR ILHAM', 'TBR-6', 'AIRCRAFT STRUCTURE TECHNICIAN', NULL),
('581847', '581847', 'EKA WISNU PRADANA', 'TBR-6', 'AIRCRAFT STRUCTURE TECHNICIAN', NULL),
('581850', '581850', 'HAMSYAH FERDINAND', 'TBR-6', 'AIRCRAFT STRUCTURE TECHNICIAN', NULL),
('581853', '581853', 'ILYAS', 'TBR-6', 'AIRCRAFT STRUCTURE TECHNICIAN', NULL),
('581858', '581858', 'RANDY JUAN ROMANDA', 'TBR-6', 'AIRCRAFT STRUCTURE TECHNICIAN', NULL),
('582372', '582372', 'M. EKO CAHYONO', 'TBR-6', 'AIRCRAFT STRUCTURE TECHNICIAN', NULL),
('524757', '524757', 'DADANG NURZAMAN', 'TBR-7', 'MGR MACHINING & WELDING-1', 'MGR'),
('529554', '529554', 'ACEP ROHENDI', 'TBR-7', 'SENIOR MACHINING ENGINEER', NULL),
('580116', '580116', 'MOCHAMAD ALIMIN ULAMA', 'TBR-7', 'MACHINING TECHNICIAN', NULL),
('580630', '580630', 'ARIE SUTRISNO', 'TBR-7', 'MACHINING TECHNICIAN', NULL),
('580993', '580993', 'ARIF RAHMAN BUDIARTO', 'TBR-7', 'MACHINING TECHNICIAN', NULL),
('580995', '580995', 'DEDY ANGGORO', 'TBR-7', 'MACHINING TECHNICIAN', NULL),
('581173', '581173', 'ANDI', 'TBR-7', 'MACHINING TECHNICIAN', NULL),
('581174', '581174', 'ADE DARMAWAN', 'TBR-7', 'MACHINING TECHNICIAN', NULL),
('581856', '581856', 'PUJI ALIMIN', 'TBR-7', 'MACHINING TECHNICIAN', NULL),
('582326', '582326', 'ANDRE SETIAWAN', 'TBR-7', 'MACHINING TECHNICIAN', NULL),
('582331', '582331', 'GERARDO ELKA KURNIAWAN', 'TBR-7', 'MACHINING TECHNICIAN', NULL),
('582436', '582436', 'MUHAMMAD IHSAN REZA', 'TBR-7', 'WELDING & SPECIAL PROCESS TECHNICIAN', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `work_order_description`
--

CREATE TABLE `work_order_description` (
  `revision_number` mediumint(8) NOT NULL,
  `customer` varchar(20) NOT NULL,
  `doc_type` varchar(10) NOT NULL,
  `wo_number` int(15) NOT NULL,
  `description` varchar(250) NOT NULL,
  `part_number` varchar(25) NOT NULL,
  `serial_number` varchar(25) NOT NULL,
  `quantity` tinyint(4) NOT NULL,
  `document_number` varchar(25) NOT NULL,
  `sp_in` varchar(15) NOT NULL,
  `main_work_centre` varchar(10) NOT NULL,
  `component_location` varchar(6) NOT NULL,
  `uic` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL,
  `progress_name` varchar(30) NOT NULL,
  `performer` varchar(30) NOT NULL,
  `estimate_finish` datetime DEFAULT NULL,
  `user_request_finish` datetime DEFAULT NULL,
  `remark` text NOT NULL,
  `sp_out` varchar(15) NOT NULL,
  `receiver` varchar(40) NOT NULL,
  `date_in` datetime DEFAULT NULL,
  `date_out` datetime DEFAULT NULL,
  `hold_status_pe` varchar(40) DEFAULT NULL,
  `priority` varchar(15) NOT NULL,
  `next_task` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `work_order_description`
--

INSERT INTO `work_order_description` (`revision_number`, `customer`, `doc_type`, `wo_number`, `description`, `part_number`, `serial_number`, `quantity`, `document_number`, `sp_in`, `main_work_centre`, `component_location`, `uic`, `status`, `progress_name`, `performer`, `estimate_finish`, `user_request_finish`, `remark`, `sp_out`, `receiver`, `date_in`, `date_out`, `hold_status_pe`, `priority`, `next_task`) VALUES
(105196, 'GARUDA INDONESIA', 'MDR', 803288463, 'FOUND WATER INGRESS AT HOIST POINT 3 LOCATION OF LH AND RH SIDE RUDDER', 'N/A', 'N/A', 1, 'SEQ 0909', 'N/A', 'W302', 'ON A/C', 'Painting', 'Open', 'Painting', '', '2019-11-14 22:00:00', '2019-11-28 15:00:00', '', '4210213', 'Rosi Putri', '2019-11-11 19:55:06', NULL, NULL, 'High', NULL),
(105196, 'GARUDA INDONESIA', 'MDR', 803288464, 'FOUND WATER INGRESS AT HOIST POINT 3 LOCATION OF LH AND RH SIDE RUDDER', 'N/A', 'N/A', 1, 'SEQ 0003', 'SFDJAKFDLA;AJ', 'W302', 'ON A/C', 'Composite 1', 'Progress', 'Apply adhesive film', 'MAHARLIN SITUMORANG ', '2019-11-15 15:00:00', '0000-00-00 00:00:00', '', '', '', '2019-11-12 14:50:58', '0000-00-00 00:00:00', NULL, 'High', 'Painting'),
(105196, 'GARUDA INDONESIA', 'MDR', 803288465, 'FOUND WATER INGRESS AT HOIST POINT 3 LOCATION OF LH AND RH SIDE RUDDER', 'N/A', 'N/A', 1, 'SEQ 0003', 'SFDJAKFDLA;AJ', 'W302', 'ON A/C', 'PPC TBR', 'Close', '-', '-', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '42131230', 'Muthmainnah', '2019-11-12 17:50:28', '2019-10-13 19:28:14', NULL, 'High', 'Finish');

-- --------------------------------------------------------

--
-- Table structure for table `work_order_status`
--

CREATE TABLE `work_order_status` (
  `id` int(11) NOT NULL,
  `wo_number` int(15) NOT NULL,
  `date` datetime DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `uic` varchar(10) NOT NULL,
  `progress_name` varchar(30) NOT NULL,
  `performer` varchar(30) NOT NULL,
  `estimate_finish` datetime DEFAULT NULL,
  `sp_out` varchar(15) NOT NULL,
  `receiver` varchar(30) NOT NULL,
  `main_work_centre` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `work_order_status`
--

INSERT INTO `work_order_status` (`id`, `wo_number`, `date`, `status`, `uic`, `progress_name`, `performer`, `estimate_finish`, `sp_out`, `receiver`, `main_work_centre`) VALUES
(14, 803288465, '2019-11-13 19:28:14', 'Close', 'PPC TBR', '-', '-', '0000-00-00 00:00:00', '42131230', 'Muthmainnah', 'W302'),
(13, 803288464, '2019-11-13 11:07:24', 'Progress', 'Composite ', 'Apply adhesive film', 'MAHARLIN SITUMORANG ', '2019-11-15 15:00:00', '', '', 'W302'),
(12, 803288465, '2019-11-13 11:06:25', 'Close', 'Line', '-', '-', '0000-00-00 00:00:00', '42131230', 'Andi Malarangeng', 'W302'),
(11, 803288465, '2019-11-12 17:50:28', 'Document Received', 'PPC', '', '', '0000-00-00 00:00:00', '', '', 'W302'),
(10, 803288464, '2019-11-12 15:30:48', 'Open', 'PE TBR', 'Need RO', '-', '0000-00-00 00:00:00', '', '', 'W302'),
(9, 803288464, '2019-11-12 14:50:58', 'Document Received', 'PPC', '', '', '0000-00-00 00:00:00', '', '', 'W302'),
(8, 803288464, '2019-11-12 14:42:54', 'Document Received', 'PPC', '', '', '0000-00-00 00:00:00', '', '', 'W302'),
(7, 803288463, '2019-11-11 20:17:19', 'Open', 'Painting', 'Painting', '', '2019-11-14 22:00:00', '4210213', 'Rosi Putri', 'W302'),
(6, 803288463, '2019-11-11 20:16:02', 'Progress', 'Composite ', 'Repair damage', 'MAHARLIN SITUMORANG ', '2019-11-12 22:00:00', '', '', 'W302'),
(5, 803288463, '2019-11-11 20:14:37', 'Progress', 'Composite ', 'Cutting damage', 'MAHARLIN SITUMORANG ', '2019-11-12 15:00:00', '', '', 'W302'),
(4, 803288463, '2019-11-11 20:02:09', 'Open', 'Composite ', 'Open', '', '0000-00-00 00:00:00', '', '', 'W302'),
(3, 803288463, '2019-11-11 20:00:12', 'Progress', 'PE TBR', 'RO', 'FARIS ABIYYU ABULKHOIR ', '2019-11-11 11:45:00', '', '', 'W302'),
(2, 803288463, '2019-11-11 19:55:06', 'Document Received', 'PPC', '', '', '0000-00-00 00:00:00', '', '', 'W302'),
(1, 803288463, '2019-11-11 19:48:52', 'Document Received', 'PPC', '', '', '0000-00-00 00:00:00', '', '', 'W302');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_manufacture`
--
ALTER TABLE `contact_manufacture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_contact_manufacture`
--
ALTER TABLE `history_contact_manufacture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maintenance_data`
--
ALTER TABLE `maintenance_data`
  ADD PRIMARY KEY (`revision_number`);

--
-- Indexes for table `material_database`
--
ALTER TABLE `material_database`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penagihan_ibt`
--
ALTER TABLE `penagihan_ibt`
  ADD PRIMARY KEY (`wo_number`);

--
-- Indexes for table `request_material_description`
--
ALTER TABLE `request_material_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_material_status`
--
ALTER TABLE `request_material_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `special_work_order_description`
--
ALTER TABLE `special_work_order_description`
  ADD PRIMARY KEY (`wo_number`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_order_description`
--
ALTER TABLE `work_order_description`
  ADD PRIMARY KEY (`wo_number`);

--
-- Indexes for table `work_order_status`
--
ALTER TABLE `work_order_status`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_manufacture`
--
ALTER TABLE `contact_manufacture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `history_contact_manufacture`
--
ALTER TABLE `history_contact_manufacture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `material_database`
--
ALTER TABLE `material_database`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
