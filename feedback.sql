-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2018 at 07:40 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feedback`
--

-- --------------------------------------------------------

--
-- Table structure for table `enable`
--

CREATE TABLE `enable` (
  `date` date NOT NULL,
  `scheme` varchar(4) NOT NULL,
  `year` varchar(6) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `scheme` varchar(4) NOT NULL,
  `sem` varchar(9) NOT NULL,
  `branch` varchar(4) NOT NULL,
  `subcode` varchar(7) NOT NULL,
  `subname` varchar(20) NOT NULL,
  `subfaculty` varchar(20) NOT NULL,
  `dept` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`scheme`, `sem`, `branch`, `subcode`, `subname`, `subfaculty`, `dept`) VALUES
('c-14', '6 sem', 'cm', 'cm-601', 'IME', 'shiva kumar', 'ece'),
('c-14', '6 sem', 'cm', 'cm-602', 'ADV JAVA ', 'sarojini', 'cme'),
('c-14', '6 sem ', 'cm ', 'cm-603', 'SYSTEM ADMN', 'kameswar rao', 'cme'),
('c-14', '6 sem', 'cm', 'cm-604', 'MOBILE COMM', 'irfan', 'cme'),
('c-14', '6 sem', 'cm', 'cm-605', '.NET', 'sravanthi', 'cme'),
('c-14', '6 sem', 'cm', 'cm-606', 'C & NS', 'govind naidu', 'cme'),
('c-14', '6 sem ', 'cm ', 'cm-607', 'ADV JAVA LAB', 'sarojini', 'cme'),
('c-14', '6 sem', 'cm', 'cm-608', 'SYSTEM ADMN', 'kameswar rao', 'cme'),
('c-14', '6 sem', 'cm', 'cm-609', '.NET LAB', 'sravanthi', 'cme'),
('c-14', '6 sem', 'cm', 'cm-610', 'PROJECT WORK', 'guide', 'cme');

-- --------------------------------------------------------

--
-- Table structure for table `list`
--

CREATE TABLE `list` (
  `pin` varchar(15) NOT NULL,
  `date` date NOT NULL,
  `scheme` varchar(5) NOT NULL,
  `year` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `password`, `status`) VALUES
('1', 'admin', '1234', 0);

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `sno` int(2) NOT NULL,
  `issue` varchar(70) NOT NULL,
  `a` decimal(10,2) DEFAULT NULL,
  `b` decimal(10,1) DEFAULT NULL,
  `c` decimal(10,1) DEFAULT NULL,
  `d` decimal(10,1) DEFAULT NULL,
  `e` decimal(10,1) DEFAULT NULL,
  `f` decimal(10,1) DEFAULT NULL,
  `g` decimal(10,1) DEFAULT NULL,
  `h` decimal(10,1) DEFAULT NULL,
  `i` decimal(10,1) DEFAULT NULL,
  `j` decimal(10,1) DEFAULT NULL,
  `date` date NOT NULL,
  `scheme` varchar(5) NOT NULL,
  `year` varchar(9) NOT NULL,
  `dept` varchar(5) NOT NULL,
  `total` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result1`
--

CREATE TABLE `result1` (
  `sno` int(2) NOT NULL,
  `issue` varchar(70) NOT NULL,
  `a` decimal(10,2) DEFAULT NULL,
  `b` decimal(10,1) DEFAULT NULL,
  `c` decimal(10,1) DEFAULT NULL,
  `d` decimal(10,1) DEFAULT NULL,
  `e` decimal(10,1) DEFAULT NULL,
  `f` decimal(10,1) DEFAULT NULL,
  `g` decimal(10,1) DEFAULT NULL,
  `h` decimal(10,1) DEFAULT NULL,
  `i` decimal(10,1) DEFAULT NULL,
  `date` date NOT NULL,
  `scheme` varchar(5) NOT NULL,
  `year` varchar(9) NOT NULL,
  `dept` varchar(5) NOT NULL,
  `total` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `sno` int(3) NOT NULL,
  `pin` varchar(15) NOT NULL,
  `name` varchar(35) NOT NULL,
  `sheme` varchar(5) NOT NULL DEFAULT 'c-14',
  `sem` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sno`, `pin`, `name`, `sheme`, `sem`) VALUES
(1, '14173-CM-042', 'P SUSEELA', 'c-14', '6 sem'),
(2, '15008-CM-026', 'G SAI KUMAR', 'c-14', '6 sem'),
(3, '15008-CM-032', 'M SRINIVAS', 'c-14', '6 sem'),
(4, '15072-CM-018', 'L PAVAN SAI', 'c-14', '6 sem'),
(5, '15014-CM-042', 'S NAGA LAKSHMI', 'c-14', '6 sem'),
(6, '15170-CM-001', 'B CHANDU', 'c-14', '6 sem'),
(7, '15173-CM-001', 'A MANGAVENI', 'c-14', '6 sem'),
(8, '15173-CM-002', 'A POTHURAJU', 'c-14', '6 sem'),
(9, '15173-CM-003', 'A SUSANNA NEHA', 'c-14', '6 sem'),
(10, '15173-CM-004', 'A A KISHORE REDDY', 'c-14', '6 sem'),
(11, '15173-CM-005', 'BALASURYA VISWANADH PALANKI', 'c-14', '6 sem'),
(12, '15173-CM-006', 'B HARIKA', 'c-14', '6 sem'),
(13, '15173-CM-007', 'B SATYAVANI', 'c-14', '6 sem'),
(14, '15173-CM-009', 'B NAGAMANI', 'c-14', '6 sem'),
(15, '15173-CM-010', 'B SAI KIRAN', 'c-14', '6 sem'),
(16, '15173-CM-011', 'B JESSIKA', 'c-14', '6 sem'),
(17, '15173-CM-012', 'B IMMANUEL', 'c-14', '6 sem'),
(18, '15173-CM-013', 'B HIMABINDU', 'c-14', '6 sem'),
(19, '15173-CM-014', 'B DIVYA DURGA', 'c-14', '6 sem'),
(20, '15173-CM-017', 'CH RANI', 'c-14', '6 sem'),
(21, '15173-CM-018', 'CH BINDUPRIYA', 'c-14', '6 sem'),
(22, '15173-CM-019', 'D HEMA', 'c-14', '6 sem'),
(23, '15173-CM-020', 'D USHA RANI', 'c-14', '6 sem'),
(24, '15173-CM-021', 'G SATYAVATHI', 'c-14', '6 sem'),
(25, '15173-CM-022', 'G MOHAN KRISHNA', 'c-14', '6 sem'),
(26, '15173-CM-023', 'G ROSHINI', 'c-14', '6 sem'),
(27, '15173-CM-024', 'N HARI PRIYA', 'c-14', '6 sem'),
(28, '15173-CM-025', 'J TEJA MANI', 'c-14', '6 sem'),
(29, '15173-CM-026', 'K PAVANI', 'c-14', '6 sem'),
(30, '15173-CM-027', 'K JYOSTHSNA', 'c-14', '6 sem'),
(32, '15173-CM-029', 'K KOMALI', 'c-14', '6 sem'),
(33, '15173-CM-030', 'K MAHA LAKSHMI', 'c-14', '6 sem'),
(34, '15173-CM-031', 'K UMA SAI SIRISHA', 'c-14', '6 sem'),
(35, '15173-CM-034', 'M RAMYA', 'c-14', '6 sem'),
(36, '15173-CM-035', 'M PRIYA MOUNIKA', 'c-14', '6 sem'),
(37, '15173-CM-036', 'M BHAVYA SREE', 'c-14', '6 sem'),
(38, '15173-CM-037', 'M ABDULMUKHARAM BASHA', 'c-14', '6 sem'),
(39, '15173-CM-038', 'M ZAKIR', 'c-14', '6 sem'),
(40, '15173-CM-040', 'N KOTI SIVA SAI PRIYANKA', 'c-14', '6 sem'),
(41, '15173-CM-041', 'P GANESH', 'c-14', '6 sem'),
(42, '15173-CM-044', 'P KRISHNA VENI', 'c-14', '6 sem'),
(43, '15173-CM-045', 'P JAYANTHI', 'c-14', '6 sem'),
(44, '15173-CM-046', 'P KOMALI', 'c-14', '6 sem'),
(45, '15173-CM-048', 'R SAIKUMARI', 'c-14', '6 sem'),
(46, '15173-CM-049', 'S NIRMALA', 'c-14', '6 sem'),
(47, '15173-CM-051', 'SOURIK SAMANTHA', 'c-14', '6 sem'),
(48, '15173-CM-052', 'T DHARANI', 'c-14', '6 sem'),
(49, '15173-CM-053', 'T DILEEPKUMAR', 'c-14', '6 sem'),
(50, '15173-CM-054', 'V SATYA AKHILA', 'c-14', '6 sem'),
(51, '15173-CM-055', 'V NIRMALA JYOTHI', 'c-14', '6 sem'),
(52, '15173-CM-056', 'V NARENDRA SIVA KESAVA', 'c-14', '6 sem'),
(53, '15173-CM-057', 'Y SANDEEP CHAKRAVATHI', 'c-14', '6 sem'),
(54, '15173-CM-401', 'CH KAVYASRI', 'c-14', '6 sem'),
(55, '15173-CM-403', 'G THULASI TIRUMALESWARI', 'c-14', '6 sem'),
(56, '15173-CM-404', 'K KRISHNAVENI', 'c-14', '6 sem'),
(57, '15173-CM-405', 'K LAKSHMI DEVI', 'c-14', '6 sem'),
(58, '15173-CM-406', 'K VANAJA', 'c-14', '6 sem'),
(59, '15173-CM-407', 'K VINITHA', 'c-14', '6 sem'),
(60, '15173-CM-408', 'N GAYATHRI', 'c-14', '6 sem'),
(61, '15173-CM-410', 'P JAGADEESH', 'c-14', '6 sem'),
(62, '15173-CM-411', 'S SANDYA', 'c-14', '6 sem'),
(63, '15173-CM-412', 'S HEMANTH MANIKANTA', 'c-14', '6 sem'),
(64, '15173-CM-413', 'T MOUNIKA VENKATASAI', 'c-14', '6 sem'),
(65, '15173-CM-414', 'T NAGALAKSHMI SUDHA ', 'c-14', '6 sem'),
(66, '15173-CM-416', 'U PRIYANKA', 'c-14', '6 sem'),
(70, '15173-ec-027', 'xcvcdv', 'c-14', '6 sem'),
(71, '15173-ec-022', 'cxvdcv', 'c-14', '6 sem'),
(70, '15173-cm-058', 'g guru', 'C-14', '6 sem'),
(69, '15173-cm-028', 'k surya', 'C-14', '6 sem'),
(70, '14173-cm-022', 'cvbvb', 'C-14', '4 sem'),
(71, '16173-cm-022', 'dv', 'C-14', '4 sem'),
(72, '17173-cm-022', 'xc', 'C-14', '1 yr'),
(73, '15173-ec-010', 'gurushararn', 'C-14', '6 sem'),
(74, '15173-ec-015', 'guru', 'C-14', '6 sem'),
(75, '15173-ec-020', 'dfgh', 'C-14', '6 sem'),
(76, '15173-ec-025', 'dfgb', 'C-14', '6 sem'),
(77, '16173-cm-010', 'dvc', 'C-16', '4 sem'),
(78, '17173-cm-010', 'fvdv', 'C-16', '1 yr');

-- --------------------------------------------------------

--
-- Table structure for table `studentform`
--

CREATE TABLE `studentform` (
  `sno` float NOT NULL,
  `issue` varchar(60) NOT NULL,
  `a` int(2) DEFAULT NULL,
  `b` int(2) DEFAULT NULL,
  `c` int(2) DEFAULT NULL,
  `d` int(2) DEFAULT NULL,
  `e` int(2) DEFAULT NULL,
  `f` int(2) DEFAULT NULL,
  `g` int(2) DEFAULT NULL,
  `h` int(2) DEFAULT NULL,
  `i` int(2) DEFAULT NULL,
  `j` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentform`
--

INSERT INTO `studentform` (`sno`, `issue`, `a`, `b`, `c`, `d`, `e`, `f`, `g`, `h`, `i`, `j`) VALUES
(1, 'Has the faculty covered entire syallbus', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Has the faculty covered relevant topics beyond syallbus\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Effectiveness of faculty in terms of', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3.1, 'Command on Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3.2, 'Communication Skills', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3.3, 'use of Visual/ Teaching aids', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3.4, 'Accessibility outside the class', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Punctuality in taking classes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Overall rating of the faculty', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `studentform1`
--

CREATE TABLE `studentform1` (
  `sno` float NOT NULL,
  `issue` varchar(60) NOT NULL,
  `a` int(2) DEFAULT NULL,
  `b` int(2) DEFAULT NULL,
  `c` int(2) DEFAULT NULL,
  `d` int(2) DEFAULT NULL,
  `e` int(2) DEFAULT NULL,
  `f` int(2) DEFAULT NULL,
  `g` int(2) DEFAULT NULL,
  `h` int(2) DEFAULT NULL,
  `i` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentform1`
--

INSERT INTO `studentform1` (`sno`, `issue`, `a`, `b`, `c`, `d`, `e`, `f`, `g`, `h`, `i`) VALUES
(1, 'Has the faculty covered entire syallbus', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Has the faculty covered relevant topics beyond syallbus\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Effectiveness of faculty in terms of', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3.1, 'Command on Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3.2, 'Communication Skills', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3.3, 'use of Visual/ Teaching aids', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3.4, 'Accessibility outside the class', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Punctuality in taking classes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Overall rating of the faculty', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
