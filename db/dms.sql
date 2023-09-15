-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2022 at 08:12 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dms`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_studentprofile`
--

CREATE TABLE `account_studentprofile` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `matric` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `dept_name_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_studentprofile`
--

INSERT INTO `account_studentprofile` (`id`, `fullname`, `matric`, `password`, `dept_name_id`, `session_id`) VALUES
(4, 'OLAOLUWA MUTIU', '2019070501001', '202cb962ac59075b964b07152d234b70', 5, 5),
(5, 'JOHN DOE', '2019235020001', '202cb962ac59075b964b07152d234b70', 5, 5),
(6, 'DANIEL DAVID', '2019235020014', '202cb962ac59075b964b07152d234b70', 10, 5),
(7, 'ADEBOWALE FELIX', '2017235020014', '202cb962ac59075b964b07152d234b70', 16, 5),
(9, 'JOHN DEO', '201905070222', '202cb962ac59075b964b07152d234b70', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `bursary_schoolfees`
--

CREATE TABLE `bursary_schoolfees` (
  `id` int(11) NOT NULL,
  `amount` varchar(30) NOT NULL,
  `did_id` int(11) DEFAULT NULL,
  `sid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bursary_schoolfees`
--

INSERT INTO `bursary_schoolfees` (`id`, `amount`, `did_id`, `sid_id`) VALUES
(4, '27500', 5, 5),
(5, '27500', 6, 5),
(6, '30000', 16, 5),
(7, '28000', 7, 5),
(8, '27500', 8, 5),
(9, '27500', 9, 5),
(10, '25500', 10, 5),
(11, '27500', 11, 5),
(12, '26500', 15, 5),
(13, '28300', 12, 5),
(14, '27500', 13, 5),
(15, '27500', 14, 5),
(16, '32000', 17, 5),
(17, '29200', 19, 5),
(18, '26400', 18, 5);

-- --------------------------------------------------------

--
-- Table structure for table `confirmed_payment`
--

CREATE TABLE `confirmed_payment` (
  `id` int(11) NOT NULL,
  `feesId` int(11) NOT NULL,
  `studentId` int(11) NOT NULL,
  `directory` varchar(50) DEFAULT NULL,
  `amount` varchar(30) DEFAULT NULL,
  `dateConfirmed` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `feesId` int(11) NOT NULL,
  `studentId` int(11) NOT NULL,
  `amount` varchar(30) NOT NULL,
  `datePaid` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `feesId`, `studentId`, `amount`, `datePaid`) VALUES
(17, 10, 6, '15000', '2022-07-19 01:39:51am'),
(18, 10, 6, '10000', '2022-07-19 01:40:11am'),
(19, 10, 6, '400', '2022-07-19 01:40:21am'),
(20, 10, 6, '120', '2022-07-19 01:40:31am'),
(21, 4, 4, '10000', '2022-07-19 01:32:34am'),
(22, 4, 4, '2500', '2022-07-19 01:32:54am'),
(23, 4, 4, '800', '2022-07-19 01:33:01am'),
(24, 4, 4, '300', '2022-07-19 01:33:08am'),
(25, 4, 4, '1500', '2022-07-19 01:34:02am'),
(26, 4, 9, '12000', '2022-07-19 01:29:28am'),
(27, 4, 9, '5000', '2022-07-19 01:29:37am'),
(28, 4, 9, '10000', '2022-07-19 01:29:47am'),
(29, 4, 9, '500', '2022-07-19 01:29:53am');

-- --------------------------------------------------------

--
-- Table structure for table `system_departmentdata`
--

CREATE TABLE `system_departmentdata` (
  `id` int(11) NOT NULL,
  `dept_name` varchar(50) NOT NULL,
  `created_on` varchar(30) DEFAULT NULL,
  `fid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_departmentdata`
--

INSERT INTO `system_departmentdata` (`id`, `dept_name`, `created_on`, `fid_id`) VALUES
(5, 'COMPUTER SCIENCE', '2022-07-19 01:56:21am', 5),
(6, 'SLT', '2022-07-19 01:56:28am', 5),
(7, 'ACCOUNTANCY', '2022-07-19 01:56:45am', 6),
(8, 'OTM', '2022-07-19 01:56:51am', 6),
(9, 'BANKING AND FINANCE', '2022-07-19 01:57:04am', 6),
(10, 'SURVEY AND GEOINFORMATION', '2022-07-19 01:57:19am', 7),
(11, 'URP', '2022-07-19 01:57:25am', 7),
(12, 'ELECTRICAL ENGINEERING', '2022-07-19 01:57:41am', 8),
(13, 'CIVIL ENGINEERING', '2022-07-19 01:57:46am', 8),
(14, 'MECHATRONIC', '2022-07-19 01:57:58am', 8),
(15, 'QUANTITY SURVEY', '2022-07-19 01:58:19am', 7),
(16, 'MICRO BIOLOGY', '2022-07-19 01:58:37am', 5),
(17, 'PURCHASING & SUPLY', '2022-07-19 02:04:21am', 9),
(18, 'MARKETING', '2022-07-19 02:04:28am', 9),
(19, 'BUSINESS ADMIN', '2022-07-19 02:04:41am', 9),
(20, 'ART & DESIGN', '2022-07-19 02:05:08am', 7),
(21, 'BIO CHEMISTRY', '2022-07-19 02:10:08am', 5),
(22, 'BIOLOGY', '2022-07-19 02:10:18am', 5),
(23, 'GEOLOGY', '2022-07-19 02:10:24am', 5),
(24, 'GEO PHYSICS', '2022-07-19 02:10:34am', 5);

-- --------------------------------------------------------

--
-- Table structure for table `system_facultydata`
--

CREATE TABLE `system_facultydata` (
  `id` int(11) NOT NULL,
  `faculty_name` varchar(30) NOT NULL,
  `created_on` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_facultydata`
--

INSERT INTO `system_facultydata` (`id`, `faculty_name`, `created_on`) VALUES
(5, 'FSC', '2022-07-19 01:53:26am'),
(6, 'FFMS', '2022-07-19 01:53:36am'),
(7, 'FES', '2022-07-19 01:53:44am'),
(8, 'FENG', '2022-07-19 01:53:54am'),
(9, 'FBSC', '2022-07-19 01:59:02am');

-- --------------------------------------------------------

--
-- Table structure for table `system_sessiondata`
--

CREATE TABLE `system_sessiondata` (
  `id` int(11) NOT NULL,
  `session_name` varchar(15) NOT NULL,
  `created_on` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_sessiondata`
--

INSERT INTO `system_sessiondata` (`id`, `session_name`, `created_on`) VALUES
(4, '2022/2023', '2022-07-19 01:59:21am'),
(5, '2021/2022', '2022-07-19 01:59:28am'),
(6, '2020/2021', '2022-07-19 01:59:35am'),
(7, '219/2020', '2022-07-19 01:59:44am'),
(8, '218/2019', '2022-07-19 01:59:51am');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_on` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `password`, `created_on`) VALUES
(3, 'OLA', 'ADMIN', '21232f297a57a5a743894a0e4a801fc3', '2022-07-19 02:11:47am'),
(4, 'F. O. ADELODUN', 'ADELODUN', '21232f297a57a5a743894a0e4a801fc3', '2022-07-19 01:19:25am');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_studentprofile`
--
ALTER TABLE `account_studentprofile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_studentprofi_dept_name_id_50c95d10_fk_system_de` (`dept_name_id`),
  ADD KEY `account_studentprofi_semester_id_1c85b29c_fk_system_se` (`session_id`);

--
-- Indexes for table `bursary_schoolfees`
--
ALTER TABLE `bursary_schoolfees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bursary_schoolfees_did_id_c11c5cf3_fk_system_departmentdata_id` (`did_id`),
  ADD KEY `bursary_schoolfees_sid_id_7cba7ebd_fk_system_sessiondata_id` (`sid_id`);

--
-- Indexes for table `confirmed_payment`
--
ALTER TABLE `confirmed_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feesId` (`feesId`),
  ADD KEY `studentId` (`studentId`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feesId` (`feesId`),
  ADD KEY `studentId` (`studentId`);

--
-- Indexes for table `system_departmentdata`
--
ALTER TABLE `system_departmentdata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_departmentdata_fid_id_a6b2799c_fk_system_facultydata_id` (`fid_id`);

--
-- Indexes for table `system_facultydata`
--
ALTER TABLE `system_facultydata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_sessiondata`
--
ALTER TABLE `system_sessiondata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_studentprofile`
--
ALTER TABLE `account_studentprofile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `bursary_schoolfees`
--
ALTER TABLE `bursary_schoolfees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `confirmed_payment`
--
ALTER TABLE `confirmed_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `system_departmentdata`
--
ALTER TABLE `system_departmentdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `system_facultydata`
--
ALTER TABLE `system_facultydata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `system_sessiondata`
--
ALTER TABLE `system_sessiondata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_studentprofile`
--
ALTER TABLE `account_studentprofile`
  ADD CONSTRAINT `account_studentprofile_ibfk_1` FOREIGN KEY (`dept_name_id`) REFERENCES `system_departmentdata` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `account_studentprofile_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `system_sessiondata` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bursary_schoolfees`
--
ALTER TABLE `bursary_schoolfees`
  ADD CONSTRAINT `bursary_schoolfees_ibfk_1` FOREIGN KEY (`did_id`) REFERENCES `system_departmentdata` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bursary_schoolfees_ibfk_3` FOREIGN KEY (`sid_id`) REFERENCES `system_sessiondata` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`feesId`) REFERENCES `bursary_schoolfees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`studentId`) REFERENCES `account_studentprofile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `system_departmentdata`
--
ALTER TABLE `system_departmentdata`
  ADD CONSTRAINT `system_departmentdata_ibfk_1` FOREIGN KEY (`fid_id`) REFERENCES `system_facultydata` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
