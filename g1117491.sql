-- phpMyAdmin SQL Dump
-- version 4.0.10.20
-- https://www.phpmyadmin.net
--
-- Host: mydb.ics.purdue.edu
-- Generation Time: Apr 22, 2021 at 12:07 AM
-- Server version: 5.5.62-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `g1117491`
--

-- --------------------------------------------------------

--
-- Table structure for table `Assignments`
--

CREATE TABLE IF NOT EXISTS `Assignments` (
  `Course_num` varchar(10) NOT NULL,
  `Assignment_name` varchar(50) NOT NULL,
  `Assign_time` datetime NOT NULL,
  `Due_time` datetime NOT NULL,
  `Est_comp_time` int(3) NOT NULL,
  PRIMARY KEY (`Course_num`,`Assignment_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Assignments`
--

INSERT INTO `Assignments` (`Course_num`, `Assignment_name`, `Assign_time`, `Due_time`, `Est_comp_time`) VALUES
('IE 332-01', 'Assignment 1', '2021-02-01 00:00:00', '2021-02-22 23:59:59', 20),
('IE 332-01', 'Assignment 2', '2021-03-01 00:00:00', '2021-03-22 23:59:59', 15),
('IE 332-01', 'Assignment 3', '2021-04-01 00:00:00', '2021-04-20 23:59:59', 20);

-- --------------------------------------------------------

--
-- Table structure for table `Classes`
--

CREATE TABLE IF NOT EXISTS `Classes` (
  `Course_num` varchar(20) NOT NULL,
  `Prof_email` varchar(50) NOT NULL,
  `Weekday` varchar(9) NOT NULL,
  `Start_time` time NOT NULL,
  `End_time` time NOT NULL,
  `Semester` varchar(11) NOT NULL,
  PRIMARY KEY (`Course_num`,`Weekday`,`Start_time`),
  KEY `Prof_email` (`Prof_email`),
  KEY `Semester` (`Semester`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Classes`
--

INSERT INTO `Classes` (`Course_num`, `Prof_email`, `Weekday`, `Start_time`, `End_time`, `Semester`) VALUES
('IE 332-01', 'marioventresca@gmail.com', 'Friday', '13:30:00', '14:20:00', 'Spring 2021'),
('IE 332-01', 'marioventresca@gmail.com', 'Monday', '13:30:00', '14:20:00', 'Spring 2021'),
('IE 332-01', 'marioventresca@gmail.com', 'Wednesday', '13:30:00', '14:20:00', 'Spring 2021'),
('IE 383-01', 'yuehwernyih@gmail.com', 'Thursday', '13:30:00', '14:45:00', 'Spring 2021'),
('IE 383-01', 'yuehwernyih@gmail.com', 'Tuesday', '13:30:00', '14:45:00', 'Spring 2021'),
('IE 474-01', 'juanwachs@gmail.com', 'Friday', '10:30:00', '11:20:00', 'Spring 2021'),
('IE 474-01', 'juanwachs@gmail.com', 'Monday', '10:30:00', '11:20:00', 'Spring 2021'),
('IE 474-01', 'juanwachs@gmail.com', 'Wednesday', '10:30:00', '11:20:00', 'Spring 2021'),
('IE 486-01', 'brandonpitts@gmail.com', 'Friday', '09:30:00', '10:20:00', 'Spring 2021'),
('IE 486-01', 'brandonpitts@gmail.com', 'Monday', '16:30:00', '17:20:00', 'Spring 2021'),
('IE 486-01', 'brandonpitts@gmail.com', 'Wednesday', '16:30:00', '17:20:00', 'Spring 2021'),
('MA 266-01', 'mathprof@gmail.com', 'Friday', '12:30:00', '13:20:00', 'Spring 2021'),
('MA 266-01', 'mathprof@gmail.com', 'Monday', '12:30:00', '13:20:00', 'Spring 2021'),
('MA 266-01', 'mathprof@gmail.com', 'Wednesday', '12:30:00', '13:20:00', 'Spring 2021'),
('MGMT 201-1', 'rscottsorensen@gmail.com', 'Friday', '17:30:00', '18:20:00', 'Spring 2021'),
('MGMT 201-1', 'rscottsorensen@gmail.com', 'Monday', '17:30:00', '18:20:00', 'Spring 2021'),
('MGMT 201-1', 'rscottsorensen@gmail.com', 'Wednesday', '17:30:00', '18:20:00', 'Spring 2021');

-- --------------------------------------------------------

--
-- Table structure for table `Class_List`
--

CREATE TABLE IF NOT EXISTS `Class_List` (
  `Email` varchar(50) NOT NULL DEFAULT '',
  `Course_num` varchar(10) NOT NULL DEFAULT '',
  `Semester` varchar(11) NOT NULL,
  PRIMARY KEY (`Email`,`Course_num`),
  KEY `Semester` (`Semester`),
  KEY `Class_List_ibfk_2` (`Course_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Class_List`
--

INSERT INTO `Class_List` (`Email`, `Course_num`, `Semester`) VALUES
('janedoe@gmail.com', 'IE 383-01', 'Fall 2020'),
('janedoe@gmail.com', 'IE 486-01', 'Fall 2020'),
('johndoe@gmail.com', 'IE 383-01', 'Fall 2020'),
('johndoe@gmail.com', 'MGMT 201-1', 'Fall 2020'),
('billcarroll@gmail.com', 'IE 332-01', 'Spring 2021'),
('billcarroll@gmail.com', 'MA 266-01', 'Spring 2021'),
('jugalpatel@gmail.com', 'IE 332-01', 'Spring 2021'),
('kalebdunn@gmail.com', 'IE 332-01', 'Spring 2021'),
('kalebdunn@gmail.com', 'IE 383-01', 'Spring 2021'),
('kalebdunn@gmail.com', 'IE 474-01', 'Spring 2021'),
('kalebdunn@gmail.com', 'IE 486-01', 'Spring 2021'),
('kalebdunn@gmail.com', 'MGMT 201-1', 'Spring 2021'),
('michaeldavis@gmail.com', 'IE 332-01', 'Spring 2021'),
('praneshumashankar@gmail.com', 'IE 332-01', 'Spring 2021'),
('prateekbynagari@gmail.com', 'IE 332-01', 'Spring 2021');

-- --------------------------------------------------------

--
-- Table structure for table `Obligations`
--

CREATE TABLE IF NOT EXISTS `Obligations` (
  `Email` varchar(50) NOT NULL,
  `Obligation` varchar(50) NOT NULL,
  `Weekday` varchar(9) NOT NULL,
  `Start_time` time NOT NULL,
  `End_time` time NOT NULL,
  `Week` int(2) NOT NULL,
  `Semester` varchar(11) NOT NULL,
  PRIMARY KEY (`Email`,`Weekday`,`Start_time`),
  KEY `Semester` (`Semester`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Obligations`
--

INSERT INTO `Obligations` (`Email`, `Obligation`, `Weekday`, `Start_time`, `End_time`, `Week`, `Semester`) VALUES
('billcarroll@gmail.com', 'Sleep', 'Monday', '00:00:00', '11:00:00', 1, 'Spring 2021'),
('billcarroll@gmail.com', 'Sleep', 'Monday', '23:00:00', '23:59:59', 1, 'Spring 2021'),
('billcarroll@gmail.com', 'Sleep', 'Tuesday', '00:00:00', '11:00:00', 1, 'Spring 2021'),
('billcarroll@gmail.com', 'Work', 'Tuesday', '17:00:00', '21:00:00', 1, 'Spring 2021'),
('kalebdunn@gmail.com', 'Sleep', 'Monday', '00:00:00', '10:15:00', 1, 'Spring 2021'),
('kalebdunn@gmail.com', 'Sleep', 'Tuesday', '00:00:00', '10:15:00', 1, 'Spring 2021');

-- --------------------------------------------------------

--
-- Table structure for table `Priorities`
--

CREATE TABLE IF NOT EXISTS `Priorities` (
  `Email` varchar(50) NOT NULL,
  `Priority_num` int(11) NOT NULL,
  `Pname` varchar(50) NOT NULL,
  `Plength` int(11) NOT NULL,
  PRIMARY KEY (`Email`,`Priority_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Priorities`
--

INSERT INTO `Priorities` (`Email`, `Priority_num`, `Pname`, `Plength`) VALUES
('kalebdunn@gmail.com', 1, 'Self-care', 5),
('kalebdunn@gmail.com', 2, 'Social', 10);

-- --------------------------------------------------------

--
-- Table structure for table `Professors`
--

CREATE TABLE IF NOT EXISTS `Professors` (
  `profemail` varchar(50) NOT NULL,
  `profpass` varchar(50) NOT NULL,
  `pfname` varchar(50) NOT NULL,
  `plname` varchar(50) NOT NULL,
  PRIMARY KEY (`profemail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Professors`
--

INSERT INTO `Professors` (`profemail`, `profpass`, `pfname`, `plname`) VALUES
('brandonpitts@gmail.com', 'brandonpitts', 'Brandon', 'Pitts'),
('juanwachs@gmail.com', 'juanwachs', 'Juan', 'Wachs'),
('marioventresca@gmail.com', 'marioventresca', 'Mario', 'Ventresca'),
('mathprof@gmail.com', 'mathprof', 'Math', 'Prof'),
('rscottsorensen@gmail.com', 'rscottsorensen', 'R Scott', 'Sorensen'),
('yuehwernyih@gmail.com', 'yuehwernyih', 'Yuehwern', 'Yih');

-- --------------------------------------------------------

--
-- Table structure for table `Schedule`
--

CREATE TABLE IF NOT EXISTS `Schedule` (
  `Email` varchar(50) NOT NULL,
  `Priority_num` int(11) NOT NULL,
  `Weekday` varchar(9) NOT NULL,
  `Start_time` time NOT NULL,
  `End_time` time NOT NULL,
  PRIMARY KEY (`Email`,`Weekday`,`Start_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Semesters`
--

CREATE TABLE IF NOT EXISTS `Semesters` (
  `Semester` varchar(11) NOT NULL,
  `Startdate` int(8) NOT NULL,
  `Enddate` int(8) NOT NULL,
  PRIMARY KEY (`Semester`),
  UNIQUE KEY `Semester` (`Semester`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Semesters`
--

INSERT INTO `Semesters` (`Semester`, `Startdate`, `Enddate`) VALUES
('Fall 2020', 20200801, 20201210),
('Spring 2021', 20210101, 20210510);

-- --------------------------------------------------------

--
-- Table structure for table `Students`
--

CREATE TABLE IF NOT EXISTS `Students` (
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Students`
--

INSERT INTO `Students` (`email`, `password`, `fname`, `lname`) VALUES
('billcarroll@gmail.com', 'billcarroll', 'Bill', 'Carroll'),
('janedoe@gmail.com', 'janedoe', 'Jane', 'Doe'),
('johndoe@gmail.com', 'johndoe', 'John', 'Doe'),
('jugalpatel@gmail.com', 'jugalpatel', 'Jugal', 'Patel'),
('kalebdunn@gmail.com', 'kalebdunn', 'Kaleb', 'Dunn'),
('michaeldavis@gmail.com', 'michaeldavis', 'Michael', 'Davis'),
('praneshumashankar@gmail.com', 'praneshumashankar', 'Pranesh', 'Umashankar'),
('prateekbynagari@gmail.com', 'prateekbynagari', 'Prateek', 'Bynagari');

-- --------------------------------------------------------

--
-- Table structure for table `Survey`
--

CREATE TABLE IF NOT EXISTS `Survey` (
  `Email` varchar(50) NOT NULL,
  `Semester` varchar(11) NOT NULL,
  `GPA` float(4,2) NOT NULL,
  `Happiness` enum('1','2','3','4','5') NOT NULL,
  PRIMARY KEY (`Email`,`Semester`),
  KEY `Survey_ibfk_2` (`Semester`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Survey`
--

INSERT INTO `Survey` (`Email`, `Semester`, `GPA`, `Happiness`) VALUES
('janedoe@gmail.com', 'Fall 2020', 3.20, '3'),
('johndoe@gmail.com', 'Fall 2020', 3.60, '5'),
('kalebdunn@gmail.com', 'Fall 2020', 3.40, '4');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Assignments`
--
ALTER TABLE `Assignments`
  ADD CONSTRAINT `Assignments_ibfk_1` FOREIGN KEY (`Course_num`) REFERENCES `Classes` (`Course_num`);

--
-- Constraints for table `Classes`
--
ALTER TABLE `Classes`
  ADD CONSTRAINT `Classes_ibfk_1` FOREIGN KEY (`Prof_email`) REFERENCES `Professors` (`profemail`),
  ADD CONSTRAINT `Classes_ibfk_2` FOREIGN KEY (`Semester`) REFERENCES `Semesters` (`Semester`);

--
-- Constraints for table `Class_List`
--
ALTER TABLE `Class_List`
  ADD CONSTRAINT `Class_List_ibfk_3` FOREIGN KEY (`Semester`) REFERENCES `Semesters` (`Semester`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Class_List_ibfk_1` FOREIGN KEY (`Email`) REFERENCES `Students` (`email`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Class_List_ibfk_2` FOREIGN KEY (`Course_num`) REFERENCES `Classes` (`Course_num`) ON UPDATE CASCADE;

--
-- Constraints for table `Obligations`
--
ALTER TABLE `Obligations`
  ADD CONSTRAINT `Obligations_ibfk_2` FOREIGN KEY (`Semester`) REFERENCES `Semesters` (`Semester`),
  ADD CONSTRAINT `Obligations_ibfk_1` FOREIGN KEY (`Email`) REFERENCES `Students` (`email`);

--
-- Constraints for table `Priorities`
--
ALTER TABLE `Priorities`
  ADD CONSTRAINT `Priorities_ibfk_1` FOREIGN KEY (`Email`) REFERENCES `Students` (`email`);

--
-- Constraints for table `Schedule`
--
ALTER TABLE `Schedule`
  ADD CONSTRAINT `Schedule_ibfk_1` FOREIGN KEY (`Email`) REFERENCES `Students` (`email`);

--
-- Constraints for table `Survey`
--
ALTER TABLE `Survey`
  ADD CONSTRAINT `Survey_ibfk_2` FOREIGN KEY (`Semester`) REFERENCES `Semesters` (`Semester`),
  ADD CONSTRAINT `Survey_ibfk_1` FOREIGN KEY (`Email`) REFERENCES `Students` (`email`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
