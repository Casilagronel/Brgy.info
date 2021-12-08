-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2021 at 04:54 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_barangay`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblclearance`
--

CREATE TABLE `tblclearance` (
  `id` int(11) NOT NULL,
  `clearanceNo` int(11) NOT NULL,
  `residentid` int(11) NOT NULL,
  `findings` text NOT NULL,
  `purpose` text NOT NULL,
  `orNo` int(11) NOT NULL,
  `samount` int(11) NOT NULL,
  `dateRecorded` date NOT NULL,
  `recordedBy` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclearance`
--

INSERT INTO `tblclearance` (`id`, `clearanceNo`, `residentid`, `findings`, `purpose`, `orNo`, `samount`, `dateRecorded`, `recordedBy`, `status`) VALUES
(8, 0, 11, '', 'asd', 0, 0, '2017-01-20', 'User1', 'New'),
(9, 1234, 15, 'asdada', 'local employment', 12, 3434, '2017-01-22', 'admin', 'Approved'),
(10, 123, 11, 'qwe', 'qwe', 213, 2123, '2017-01-24', 'admin', 'Approved'),
(11, 3, 0, '', 'Scholarship Purposes', -5, 2324234, '2021-12-04', 'admin', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `tblofficial`
--

CREATE TABLE `tblofficial` (
  `id` int(11) NOT NULL,
  `sPosition` varchar(50) CHARACTER SET latin1 NOT NULL,
  `completeName` text CHARACTER SET latin1 NOT NULL,
  `pcontact` varchar(20) CHARACTER SET latin1 NOT NULL,
  `paddress` text CHARACTER SET latin1 NOT NULL,
  `termStart` date NOT NULL,
  `termEnd` date NOT NULL,
  `status` varchar(20) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblofficial`
--

INSERT INTO `tblofficial` (`id`, `sPosition`, `completeName`, `pcontact`, `paddress`, `termStart`, `termEnd`, `status`) VALUES
(1, 'Barangay Chairwoman', 'Jocelyn M. Guevarra', '09123456789', 'Brgy.Looc', '2020-05-24', '2022-05-29', 'Ongoing Term'),
(2, 'Kagawad(Human Rights, Peace & Order)', 'Gregorio A. Dela Cruz', '09246810123', 'Brgy.Looc', '2020-05-24', '2022-05-29', 'Ongoing Term'),
(3, 'Kagawad(Environmental Protection)', 'Anastacio M. Desepida', '09369121518', 'Brgy.Looc', '2020-05-24', '2022-05-29', 'Ongoing Term'),
(4, 'Kagawad(Bids & Awards)', 'Benito U. Ogot', '09481216202', 'Brgy.Looc', '2020-05-24', '2022-05-29', 'Ongoing Term'),
(5, 'Kagawad(Sports)', 'Meynardo E. Antazo', '09510152025', 'Brgy.Looc', '2020-05-24', '2022-05-29', 'Ongoing Term'),
(6, 'Kagawad(Public Works Livelihood)', 'Florencio S. Villaluna', '09612182430', 'Brgy.Looc', '2020-05-24', '2022-05-29', 'Ongoing Term'),
(7, 'Kagawad(Education)', 'Estelito R. Derain', '09714212835', 'Brgy.Looc', '2020-05-24', '2022-05-29', 'Ongoing Term'),
(8, 'Kagawad(Health)', 'Edison A. Botones', '09816243240', 'Brgy.Looc', '2020-05-24', '2022-05-29', 'Ongoing Term'),
(9, 'Barangay Treasurer', 'Edilberto Gaa', '09918273645', 'Brgy.Looc', '2020-05-24', '2022-05-29', 'Ongoing Term'),
(10, 'Barangay Secretary', 'Teresita L. Delima', '09102030405', 'Brgy.Looc', '2020-05-24', '2022-05-29', 'Ongoing Term'),
(11, 'SK Chairman', 'Cyrin Jake Villafranca', '09112233446', 'Brgy.Looc', '2020-05-24', '2022-05-29', 'Ongoing Term');

-- --------------------------------------------------------

--
-- Table structure for table `tblresident`
--

CREATE TABLE `tblresident` (
  `id` int(11) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `mname` varchar(20) NOT NULL,
  `bdate` varchar(20) NOT NULL,
  `bplace` text NOT NULL,
  `age` int(11) NOT NULL,
  `barangay` varchar(120) NOT NULL,
  `totalhousehold` int(5) NOT NULL,
  `civilstatus` varchar(20) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `religion` varchar(50) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `highestEducationalAttainment` varchar(50) NOT NULL,
  `formerAddress` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblresident`
--

INSERT INTO `tblresident` (`id`, `lname`, `fname`, `mname`, `bdate`, `bplace`, `age`, `barangay`, `totalhousehold`, `civilstatus`, `occupation`, `religion`, `nationality`, `gender`, `highestEducationalAttainment`, `formerAddress`, `image`) VALUES
(12, 'sda', 'as', 'das', '2016-01-01', 'adda', 5, '2323', 5, 'sfdgfdg', 'ddgfg', 'ada', 'sda', 'Male', 'Elementary', 'dsada', '1638455354417_118988085_185909029575769_7145430793373640567_n.jpg'),
(15, 'jay', 'dsf', 'asdf', '2017-01-19', 'sdfa', 2, 'sdaf', 23, 'adf', 'adsf', 'asd', 'dsf', 'Male', 'No schooling completed', 'asdfa', 'default.png'),
(16, 'jayjay', 'asd', 'asd', '2017-01-02', 'sad', 23, 'asd', 23, 'asd', 'asd', 'asd', 'asd', 'Male', 'No schooling completed', 'asd', 'default.png'),
(17, 'Rivera', 'Alvin', 'Gatdula', '2013-05-02', 'Amaralina, Nasugbu', 8, 'Amaralina', 5, 'Single', 'None', 'Catholic', 'Filipino', 'Male', 'College Undergrad', 'Ampao, Nasugbu', '1638455537314_119029578_187778182722187_3383961756854100421_n.jpg'),
(18, 'sDsdfdf', 'adsdsdfdf', 'sdsff', '2019-04-28', 'fsdgfgfhghgj', 2, 'asdasdsf', 6, 'zzxf', 'asdasdsfsdf', 'sdsfdf', 'asdsf', 'Male', 'Master’s Degree', 'adsadsfsdf', '1638603553101_119567711_188184376014901_2868726266701843728_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`id`, `username`, `password`, `type`) VALUES
(1, 'admin', 'admin', 'administrator'),
(2, 'zone', 'zone', 'zoneleader');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblclearance`
--
ALTER TABLE `tblclearance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblofficial`
--
ALTER TABLE `tblofficial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblresident`
--
ALTER TABLE `tblresident`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblclearance`
--
ALTER TABLE `tblclearance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblofficial`
--
ALTER TABLE `tblofficial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblresident`
--
ALTER TABLE `tblresident`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
