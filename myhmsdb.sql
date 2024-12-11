-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 16, 2020 at 02:34 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myhmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttb`
--

CREATE TABLE `appointmenttb` (
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `docFees` int(5) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `doctorStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointmenttb`
--

INSERT INTO `appointmenttb` (`pid`, `ID`, `fname`, `lname`, `gender`, `email`, `contact`, `doctor`, `docFees`, `appdate`, `apptime`, `userStatus`, `doctorStatus`) VALUES
(4, 1, 'Uzumaki', 'Miwa', 'Male', 'uzumakismart0@gmail.com', '8838489464', 'House', 550, '2020-02-14', '10:00:00', 1, 0),
(4, 2, 'Uzumaki', 'Miwa', 'Male', 'uzumakismart0@gmail.com', '8838489464', 'Wilson', 700, '2020-02-28', '10:00:00', 0, 1),
(4, 3, 'Uzumaki', 'Miwa', 'Male', 'uzumakismart0@gmail.com', '8838489464', 'Thirteen', 1000, '2020-02-19', '03:00:00', 0, 1),
(11, 4, 'Thompson', 'Nucky', 'Female', 'Thompson@gmail.com', '9768946252', 'Foreman', 500, '2020-02-29', '20:00:00', 1, 1),
(4, 5, 'Uzumaki', 'Miwa', 'Male', 'uzumakismart0@gmail.com', '8838489464', 'Wilson', 700, '2020-02-28', '12:00:00', 1, 1),
(4, 6, 'Uzumaki', 'Miwa', 'Male', 'uzumakismart0@gmail.com', '8838489464', 'House', 550, '2020-02-26', '15:00:00', 0, 1),
(2, 8, 'Wolf', 'Alice', 'Female', 'Wolf@gmail.com', '8976897689', 'House', 550, '2020-03-21', '10:00:00', 1, 1),
(5, 9, 'Bay', 'Gry', 'Male', 'Bay@gmail.com', '9070897653', 'House', 550, '2020-03-19', '20:00:00', 1, 0),
(4, 10, 'Uzumaki', 'Miwa', 'Male', 'uzumakismart0@gmail.com', '8838489464', 'House', 550, '0000-00-00', '14:00:00', 1, 0),
(4, 11, 'Uzumaki', 'Miwa', 'Male', 'uzumakismart0@gmail.com', '8838489464', 'Wilson', 700, '2020-03-27', '15:00:00', 1, 1),
(9, 12, 'William', 'Blake', 'Male', 'william@gmail.com', '8683619153', 'Cuddy', 800, '2020-03-26', '12:00:00', 1, 1),
(9, 13, 'William', 'Blake', 'Male', 'william@gmail.com', '8683619153', 'Kutner', 450, '2020-03-26', '14:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `contact`, `message`) VALUES
('Irene', 'irene@gmail.com', '7896677554', 'Hey Admin'),
('Joy', 'joy@gmail.com', '9899778865', 'Good Job, Pal'),
('Suzy', 'suzy@gmail.com', '9997888879', 'How can I reach you?'),
('Saika', 'saika@gmail.com', '8788979967', 'Love your site'),
('Mani', 'mani@gmail.com', '8977768978', 'Want some coffee?'),
('JieHyun', 'jiehyun@gmail.com', '9898989898', 'Good service'),
('Volakis', 'volakis@gmail.com', '8979776868', 'Love your service'),
('Frusciante', 'frusciante@gmail.com', '9087897564', 'Love your service. Thank you!'),
('Jane', 'jane@gmail.com', '7869869757', 'I love your service!');

-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`username`, `password`, `email`, `spec`, `docFees`) VALUES
('Foreman', 'Foreman123', 'foreman@gmail.com', 'General', 500),
('Cameron', 'Cameron123', 'cameron@gmail.com', 'Dentist', 600),
('Wilson', 'Wilson123', 'wilson@gmail.com', 'Dentist', 700),
('House', 'House123', 'house@gmail.com', 'Dentist', 550),
('Cuddy', 'Cuddy123', 'cuddy@gmail.com', 'Dentist', 800),
('Thirteen', 'Thirteen123', 'thirteen@gmail.com', 'Anesthesiologist', 1000),
('Volakis', 'Volakis123', 'volakis@gmail.com', 'Anesthesiologist', 1500),
('Kutner', 'Kutner123', 'kutner@gmail.com', 'Dentist', 450);

-- --------------------------------------------------------

--
-- Table structure for table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`, `cpassword`) VALUES
(1, 'Ram', 'Cuddy', 'Male', 'ram@gmail.com', '9876543210', 'ram123', 'ram123'),
(2, 'Wolf', 'Alice', 'Female', 'wolf@gmail.com', '8976897689', 'Wolf123', 'Wolf123'),
(3, 'Larsson', 'Zara', 'Male', 'larsson@gmail.com', '8976898463', 'Larsson123', 'Larsson123'),
(4, 'Uzumaki', 'Miwa', 'Male', 'uzumakismart0@gmail.com', '8838489464', 'Uzumaki123', 'Uzumaki123'),
(5, 'Bay', 'Gry', 'Male', 'bay@gmail.com', '9070897653', 'Bay123', 'Bay123'),
(6, 'Trump', 'Kamala', 'Male', 'Trump@gmail.com', '9059986865', 'Trump123', 'Trump123'),
(7, 'Nancy', 'Deborah', 'Female', 'nancy@gmail.com', '9128972454', 'nancy123', 'nancy123'),
(8, 'Kenny', 'Sebastian', 'Male', 'kenny@gmail.com', '9809879868', 'kenny123', 'kenny123'),
(9, 'William', 'Blake', 'Male', 'william@gmail.com', '8683619153', 'william123', 'william123'),
(10, 'Peter', 'Norvig', 'Male', 'peter@gmail.com', '9609362815', 'peter123', 'peter123'),
(11, 'Thompson', 'Nucky', 'Female', 'Thompson@gmail.com', '9768946252', 'Thompson123', 'Thompson123');

-- --------------------------------------------------------

--
-- Table structure for table `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prestb`
--

INSERT INTO `prestb` (`doctor`, `pid`, `ID`, `fname`, `lname`, `appdate`, `apptime`, `disease`, `allergy`, `prescription`) VALUES
('Wilson', 4, 11, 'Uzumaki', 'Miwa', '2020-03-27', '15:00:00', 'Toothache', 'None', 'Rinse with warm salt water twice daily'),
('House', 2, 8, 'Wolf', 'Alice', '2020-03-21', '10:00:00', 'Gum Infection', 'None', 'Apply clove oil on affected area and take prescribed antibiotics'),
('Cuddy', 9, 12, 'William', 'Blake', '2020-03-26', '12:00:00', 'Cavity Pain', 'None', 'Avoid sugary foods and use a fluoride toothpaste'),
('Kutner', 9, 13, 'William', 'Blake', '2020-03-26', '14:00:00', 'Wisdom Tooth Extraction Follow-Up', 'Latex', 'Use pain relievers as needed and avoid hard foods');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
