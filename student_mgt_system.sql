-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2023 at 07:09 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_mgt_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `CourseCode` varchar(100) NOT NULL,
  `CourseTitle` varchar(100) NOT NULL,
  `Instructor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`CourseCode`, `CourseTitle`, `Instructor`) VALUES
('CS340', 'Computer Engineering 1', 'Lin Mo'),
('ENG200', 'English 1', 'John Doe'),
('HIS320', 'History of Chinese Civilizations', 'Lindsay May'),
('ECON390', 'World Economics', 'Mary Smith');

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `StudentId` int(25) NOT NULL,
  `CourseCode` varchar(25) NOT NULL,
  `CourseTitle` varchar(30) NOT NULL,
  `CourseInstructor` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`StudentId`, `CourseCode`, `CourseTitle`, `CourseInstructor`) VALUES
(662733, 'app4015', 'Software Engineering', 'JJ'),
(662734, 'app4070', 'System Programming', 'Sam');

-- --------------------------------------------------------

--
-- Table structure for table `loginadmin`
--

CREATE TABLE `loginadmin` (
  `adminID` int(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loginadmin`
--

INSERT INTO `loginadmin` (`adminID`, `password`) VALUES
(662733, 'prisha1611'),
(662734, 'pru66');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `name` varchar(25) NOT NULL,
  `ID` int(25) NOT NULL,
  `phone` int(30) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`name`, `ID`, `phone`, `email`) VALUES
('Maria', 664, 8525818, 'm@gmail.com'),
('faroh', 665, 507940393, 'f@gmail.com'),
('prisha', 662733, 780174443, 'pri@gmail.com'),
('prudence ', 662734, 780148883, 'pru66@gmail.com'),
('edwin', 662736, 780148890, 'edwin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `student_courses`
--

CREATE TABLE `student_courses` (
  `StudentId` int(100) NOT NULL,
  `CourseCode` varchar(100) NOT NULL,
  `CourseTitle` varchar(100) NOT NULL,
  `CourseInstructor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_courses`
--

INSERT INTO `student_courses` (`StudentId`, `CourseCode`, `CourseTitle`, `CourseInstructor`) VALUES
(456, 'CS430', 'Data Structures and algorithms', 'Suzy Bae'),
(460, 'CS340', 'Computer Engineering 1', 'Lin Mo'),
(470, 'CS340', 'Computer Engineering 1', 'Lin Mo'),
(665, 'CS340', 'Computer Engineering 1', 'Lin Mo'),
(670, 'ECON390', 'World Economics', 'Mary Smith'),
(672, 'CS340', 'Computer Engineering 1', 'Lin Mo'),
(678, 'CS340', 'Computer Engineering 1', 'Lin Mo');

-- --------------------------------------------------------

--
-- Table structure for table `student_grades`
--

CREATE TABLE `student_grades` (
  `StudentId` int(100) NOT NULL,
  `Course1` varchar(100) NOT NULL,
  `Course2` varchar(100) NOT NULL,
  `Course3` varchar(100) NOT NULL,
  `Total` int(20) NOT NULL,
  `Average` int(100) NOT NULL,
  `Grade` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_grades`
--

INSERT INTO `student_grades` (`StudentId`, `Course1`, `Course2`, `Course3`, `Total`, `Average`, `Grade`) VALUES
(456, '89.0', '90.0', '78.0', 257, 86, 'A'),
(656, '67.0', '88.0', '90.0', 245, 82, 'B'),
(672, '78.0', '91.0', '76.0', 245, 82, 'B');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`StudentId`);

--
-- Indexes for table `loginadmin`
--
ALTER TABLE `loginadmin`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `student_courses`
--
ALTER TABLE `student_courses`
  ADD PRIMARY KEY (`StudentId`);

--
-- Indexes for table `student_grades`
--
ALTER TABLE `student_grades`
  ADD PRIMARY KEY (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `enrollment`
--
ALTER TABLE `enrollment`
  MODIFY `StudentId` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=662735;

--
-- AUTO_INCREMENT for table `loginadmin`
--
ALTER TABLE `loginadmin`
  MODIFY `adminID` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=662735;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `ID` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=662737;

--
-- AUTO_INCREMENT for table `student_grades`
--
ALTER TABLE `student_grades`
  MODIFY `StudentId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=673;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
