-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2018 at 07:16 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_alice`
--

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE IF NOT EXISTS `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(1615),
(1615),
(1615),
(1615),
(1615),
(1615),
(1615),
(1615);

-- --------------------------------------------------------

--
-- Table structure for table `tblactivity`
--

CREATE TABLE IF NOT EXISTS `tblactivity` (
  `id` bigint(20) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `item_total` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `class_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1603 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblactivity`
--

INSERT INTO `tblactivity` (`id`, `date`, `item_total`, `title`, `class_id`, `term_id`) VALUES
(1602, '02/21/2018', 10, 'Activity', 1599, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblactivityresult`
--

CREATE TABLE IF NOT EXISTS `tblactivityresult` (
  `id` bigint(20) NOT NULL,
  `score` int(11) NOT NULL,
  `activity_id` bigint(20) DEFAULT NULL,
  `student_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1613 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblactivityresult`
--

INSERT INTO `tblactivityresult` (`id`, `score`, `activity_id`, `student_id`) VALUES
(1603, 10, 1602, 1536),
(1606, 10, 1602, 1538),
(1609, 10, 1602, 1539),
(1612, 1, 1602, 1537);

-- --------------------------------------------------------

--
-- Table structure for table `tblassignment`
--

CREATE TABLE IF NOT EXISTS `tblassignment` (
  `id` bigint(20) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `item_total` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `class_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblassignmentresult`
--

CREATE TABLE IF NOT EXISTS `tblassignmentresult` (
  `id` bigint(20) NOT NULL,
  `score` int(11) NOT NULL,
  `assignment_id` bigint(20) DEFAULT NULL,
  `student_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblattendance`
--

CREATE TABLE IF NOT EXISTS `tblattendance` (
  `id` bigint(20) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `class_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblattendanceresult`
--

CREATE TABLE IF NOT EXISTS `tblattendanceresult` (
  `id` bigint(20) NOT NULL,
  `status` int(11) NOT NULL,
  `attendance_id` bigint(20) DEFAULT NULL,
  `student_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblclass`
--

CREATE TABLE IF NOT EXISTS `tblclass` (
  `id` bigint(20) NOT NULL,
  `section_id` bigint(20) DEFAULT NULL,
  `subject_id` bigint(20) DEFAULT NULL,
  `teacher_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1600 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclass`
--

INSERT INTO `tblclass` (`id`, `section_id`, `subject_id`, `teacher_id`) VALUES
(1590, 112017101, 10101, 1),
(1591, 112017102, 10103, 1),
(1592, 112017104, 10107, 1),
(1593, 112017101, 10105, 1),
(1599, 112017101, 10101, 1531);

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartment`
--

CREATE TABLE IF NOT EXISTS `tbldepartment` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldepartment`
--

INSERT INTO `tbldepartment` (`id`, `description`, `name`) VALUES
(8, 'Computer Education Program', 'CEP'),
(82, 'College of Computers Studies', 'CCS');

-- --------------------------------------------------------

--
-- Table structure for table `tblexam`
--

CREATE TABLE IF NOT EXISTS `tblexam` (
  `id` bigint(20) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `item_total` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `class_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblexamresult`
--

CREATE TABLE IF NOT EXISTS `tblexamresult` (
  `id` bigint(20) NOT NULL,
  `score` int(11) NOT NULL,
  `exam_id` bigint(20) DEFAULT NULL,
  `student_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblformula`
--

CREATE TABLE IF NOT EXISTS `tblformula` (
  `id` bigint(20) NOT NULL,
  `activity_percentage` int(11) NOT NULL,
  `assignment_percentage` int(11) NOT NULL,
  `attendance_percentage` int(11) NOT NULL,
  `exam_percentage` int(11) NOT NULL,
  `project_percentage` int(11) NOT NULL,
  `quiz_percentage` int(11) NOT NULL,
  `recitation_percentage` int(11) NOT NULL,
  `total_percentage` int(11) NOT NULL,
  `subject_id` bigint(20) DEFAULT NULL,
  `teacher_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1602 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblformula`
--

INSERT INTO `tblformula` (`id`, `activity_percentage`, `assignment_percentage`, `attendance_percentage`, `exam_percentage`, `project_percentage`, `quiz_percentage`, `recitation_percentage`, `total_percentage`, `subject_id`, `teacher_id`, `term_id`) VALUES
(1601, 50, 50, 0, 0, 0, 0, 0, 0, 10101, 1531, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblgrade`
--

CREATE TABLE IF NOT EXISTS `tblgrade` (
  `id` bigint(20) NOT NULL,
  `activity_score` double NOT NULL,
  `assignment_score` double NOT NULL,
  `attendance_score` double NOT NULL,
  `exam_score` double NOT NULL,
  `project_score` double NOT NULL,
  `quiz_score` double NOT NULL,
  `total_score` double NOT NULL,
  `class_id` bigint(20) DEFAULT NULL,
  `student_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1615 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblgrade`
--

INSERT INTO `tblgrade` (`id`, `activity_score`, `assignment_score`, `attendance_score`, `exam_score`, `project_score`, `quiz_score`, `total_score`, `class_id`, `student_id`, `term_id`) VALUES
(1604, 0, 0, 0, 0, 0, 0, 0, 1599, 1536, 1),
(1605, 0, 0, 0, 0, 0, 0, 0, 1599, 1536, 1),
(1607, 0, 0, 0, 0, 0, 0, 0, 1599, 1538, 1),
(1608, 0, 0, 0, 0, 0, 0, 0, 1599, 1538, 1),
(1610, 0, 0, 0, 0, 0, 0, 0, 1599, 1539, 1),
(1611, 0, 0, 0, 0, 0, 0, 0, 1599, 1539, 1),
(1613, 0, 0, 0, 0, 0, 0, 0, 1599, 1537, 1),
(1614, 0, 0, 0, 0, 0, 0, 0, 1599, 1537, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblproject`
--

CREATE TABLE IF NOT EXISTS `tblproject` (
  `id` bigint(20) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `item_total` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `class_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblprojectresult`
--

CREATE TABLE IF NOT EXISTS `tblprojectresult` (
  `id` bigint(20) NOT NULL,
  `score` int(11) NOT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  `student_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblquiz`
--

CREATE TABLE IF NOT EXISTS `tblquiz` (
  `id` bigint(20) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `item_total` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `class_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblquizresult`
--

CREATE TABLE IF NOT EXISTS `tblquizresult` (
  `id` bigint(20) NOT NULL,
  `score` int(11) NOT NULL,
  `quiz_id` bigint(20) DEFAULT NULL,
  `student_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblrecitation`
--

CREATE TABLE IF NOT EXISTS `tblrecitation` (
  `id` bigint(20) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `item_total` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `class_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblrecitationresult`
--

CREATE TABLE IF NOT EXISTS `tblrecitationresult` (
  `id` bigint(20) NOT NULL,
  `score` int(11) NOT NULL,
  `recitation_id` bigint(20) DEFAULT NULL,
  `student_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblschedule`
--

CREATE TABLE IF NOT EXISTS `tblschedule` (
  `id` bigint(20) NOT NULL,
  `day` varchar(255) DEFAULT NULL,
  `period` varchar(255) DEFAULT NULL,
  `room` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2223 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblschedule`
--

INSERT INTO `tblschedule` (`id`, `day`, `period`, `room`, `time`) VALUES
(795, 'Monday', '7:50 PM', '', '7:50 PM'),
(796, 'Monday', '7:50 PM', 'sdfsdf', '7:50 PM'),
(797, 'Monday', '7:50 PM', '@#', '7:50 PM'),
(798, 'Monday', '7:50 PM', 'adas', '7:50 PM'),
(799, 'Monday', '7:50 PM', 'adas1a', '7:50 PM'),
(800, 'Monday', '7:50 PM', '1212adas1a@!@', '7:50 PM'),
(801, 'Monday', '7:50 PM', 'a', '7:50 PM'),
(802, 'Monday', '7:55 PM', 'sasdasd', '7:55 PM'),
(803, 'Monday', '7:55 PM', '@sdasdasd', '7:55 PM'),
(804, 'Monday', '7:55 PM', '', '7:55 PM'),
(805, 'Monday', '7:55 PM', 'r', '7:55 PM'),
(806, 'Monday', '7:55 PM', '@45435!', '7:55 PM'),
(807, 'Monday', '7:55 PM', 'sdfsdfsfsdfsf#@rtretasfasfasf', '7:55 PM'),
(808, 'Monday', '7:55 PM', 'dsfsdf sdgsdgd ssdgsd sdgsdg sdgsdgsdgsdgsdgsdgsdg', '7:55 PM'),
(812, 'Monday', '8:00 PM', 'adad', '8:00 PM'),
(813, 'Monday', '8:10 PM', 'sdfsdf', '8:10 PM'),
(817, 'Monday', '9:31 PM', '', '9:30 PM'),
(821, 'Monday', '9:36 PM', 'sdasfsafasf', '9:35 PM'),
(822, 'Friday', '1:00 PM', 'asd', '12:00 AM'),
(823, 'Friday', '1:00 PM', 'xzczxc ', '12:00 AM'),
(824, 'Monday', '11:45 PM', 'dsfsdf', '9:35 PM'),
(825, 'Wednesday', '10:45 PM', 'dsfsdf', '9:45 PM'),
(826, 'Wednesday', '1:00 PM', 'asdasdasd', '12:00 AM'),
(827, 'Friday', '9:51 PM', 'asdasdasd asdasd', '9:50 PM'),
(828, 'Monday', '9:56 PM', 'sadas', '9:55 PM'),
(829, 'Tuesday', '1:00 PM', 'sadasd', '12:00 AM'),
(830, 'Friday', '11:05 PM', 'sdfsdf', '10:05 PM'),
(831, 'Monday', '1:00 PM', 'sadasd', '12:00 AM'),
(832, 'Wednesday', '1:00 PM', 'Bed', '12:00 AM'),
(838, 'Thrusday', '2:55 PM', 'Bed', '1:55 PM'),
(839, 'Wednesday', '1:00 PM', 'sdasf', '12:00 AM'),
(840, 'Friday', '3:00 AM', 'dfsdf', '2:00 AM'),
(847, 'Thursday', '6:15 AM', 'Soon to be open', '3:15 AM'),
(860, 'Sunday', '5:00 AM', 'sfsff', '4:00 AM'),
(874, 'Saturday', '6:55 AM', 'Sun', '5:55 AM'),
(878, 'Thursday', '1:00 PM', 'dsfsdf', '12:00 AM'),
(913, 'Monday', '8:45 AM', 'saasf', '7:45 AM'),
(948, 'Monday', '2:00 PM', 'dfdgfg', '1:25 PM'),
(953, 'Monday', '9:00 AM', '104', '7:30 AM'),
(954, 'Monday', '9:00 AM', '104', '7:30 AM'),
(955, 'Monday', '3:00 PM', '105', '1:30 PM'),
(957, 'Monday', '9:00 AM', '104', '7:30 AM'),
(958, 'Monday', '12:00 PM', 'LAB 10', '10:30 AM'),
(997, 'Monday', '12:00 PM', '102', '11:00 AM'),
(1059, 'Monday', '9:00 AM', '102', '7:30 AM'),
(1061, 'Monday', '2:15 PM', '101', '1:15 PM'),
(1111, 'Monday', '1 hrs 30 mins', 'ROOM 105', '12:00 PM'),
(1214, 'Monday', '9:04 AM', '104', '7:30 AM'),
(1215, 'Friday', '10:30 AM', '201', '7:00 AM'),
(1224, 'Monday', '9:45 AM', '104', '7:45 AM'),
(1256, 'Monday', '12:00 PM', '102', '7:00 AM'),
(1257, 'Monday', '9:00 AM', '105', '7:30 AM'),
(1258, 'Wednesday', '3:00 PM', '105', '1:30 PM'),
(1260, 'Wednesday', '7:10 PM', '105', '1:30 PM'),
(1261, 'Wednesday', '7:10 PM', '105', '1:30 PM'),
(1269, 'Friday', '9:00 AM', '104', '7:00 AM'),
(1270, 'Wednesday', '9:00 AM', '104', '7:30 AM'),
(1280, 'Monday', '12:05 PM', '122hxhxfuhfczhv', '12:00 AM'),
(1282, 'Monday', '3:15 PM', 'cs103', '1:15 PM'),
(1300, 'Monday', '9:00 AM', 'rrr', '7:30 AM'),
(1346, 'Thursday', '5:10 AM', 'asdasd', '2:10 AM'),
(1347, 'Wednesday', '5:10 AM', 'CS 102', '2:10 AM'),
(1348, 'Wednesday', '5:15 AM', 'CS 101', '2:15 AM'),
(1349, 'Wednesday', '3:15 AM', 'CS 101', '2:15 AM'),
(1350, 'Wednesday', '5:20 AM', 'CS 101', '2:20 AM'),
(1351, 'Tuesday', '5:20 AM', 'CS 101', '2:20 AM'),
(1352, 'Tuesday', '7:50 AM', 'CS 103', '6:30 AM'),
(1353, 'Monday', '2:30 PM', '', '2:25 AM'),
(1354, 'Monday', '8:30 AM', 'CS 101', '8:00 AM'),
(1355, 'Monday', '9:31 AM', '', '9:30 AM'),
(1356, 'Monday', '10:05 AM', 'CS 102', '8:05 AM'),
(1357, 'Monday', '10:10 AM', 'CS 101', '9:10 AM'),
(1375, 'Monday', '9:00 AM', 'CS 101', '7:30 AM'),
(1378, 'Monday', '9:00 AM', 'CS 101', '7:30 AM'),
(1379, 'Thursday', '12:00 PM', 'CS 101', '9:00 AM'),
(1381, 'Saturday', '9:00 AM', 'CS 103', '7:30 AM'),
(1460, 'Monday', '12:50 PM', 'CS 101', '11:50 AM'),
(1461, 'Wednesday', '12:50 PM', 'CS 101', '11:50 AM'),
(1463, 'Monday', '12:55 PM', 'CS 101', '11:55 AM'),
(1464, 'Monday', '5:00 PM', 'CS 101', '11:55 AM'),
(1468, 'Monday', '7:30 PM', 'CS 101', '7:30 AM'),
(1510, 'Tuesday', '9:00 AM', 'CS 102', '7:30 AM'),
(1587, 'Monday', '7:30 PM', 'CS 101', '8:00 AM'),
(1597, 'Monday', '9:00 AM', 'CS 105', '7:30 AM'),
(1598, 'Tuesday', '12:00 PM', 'CS 201', '9:00 AM'),
(2222, 'Monday', '3:00:00', 'Lab 3', '13:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblschedulelist`
--

CREATE TABLE IF NOT EXISTS `tblschedulelist` (
  `class_id` bigint(20) NOT NULL,
  `schedule_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblschedulelist`
--

INSERT INTO `tblschedulelist` (`class_id`, `schedule_id`) VALUES
(1599, 1597),
(1599, 1598);

-- --------------------------------------------------------

--
-- Table structure for table `tblsection`
--

CREATE TABLE IF NOT EXISTS `tblsection` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `department_id` bigint(20) DEFAULT NULL,
  `departmentId` bigint(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=112017137 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsection`
--

INSERT INTO `tblsection` (`id`, `name`, `department_id`, `departmentId`) VALUES
(112017101, '1-A', 82, NULL),
(112017102, '1-B', 82, NULL),
(112017103, '1-C', 82, NULL),
(112017104, '1-D', 82, NULL),
(112017105, '1-E', 82, NULL),
(112017106, '1-F', 82, NULL),
(112017107, '1-G', 82, NULL),
(112017108, '1-H', 82, NULL),
(112017109, '1-I', 82, NULL),
(112017110, '2-A', 82, NULL),
(112017111, '2-B', 82, NULL),
(112017112, '2-C', 82, NULL),
(112017113, '2-D', 82, NULL),
(112017114, '2-E', 82, NULL),
(112017115, '2-F', 82, NULL),
(112017116, '2-G', 82, NULL),
(112017117, '2-H', 82, NULL),
(112017118, '2-I', 82, NULL),
(112017119, '3-A', 82, NULL),
(112017120, '3-B', 82, NULL),
(112017121, '3-C', 82, NULL),
(112017122, '3-D', 82, NULL),
(112017123, '3-E', 82, NULL),
(112017124, '3-F', 82, NULL),
(112017125, '3-G', 82, NULL),
(112017126, '3-H', 82, NULL),
(112017127, '3-I', 82, NULL),
(112017128, '4-A', 82, NULL),
(112017129, '4-B', 82, NULL),
(112017130, '4-C', 82, NULL),
(112017131, '4-D', 82, NULL),
(112017132, '4-E', 82, NULL),
(112017133, '4-F', 82, NULL),
(112017134, '4-G', 82, NULL),
(112017135, '4-H', 82, NULL),
(112017136, '4-I', 82, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE IF NOT EXISTS `tblstudent` (
  `id` bigint(20) NOT NULL,
  `age` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `image_src` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `student_number` bigint(20) NOT NULL,
  `section_id` bigint(20) DEFAULT NULL,
  `user_detail_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1589 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`id`, `age`, `first_name`, `gender`, `image_src`, `last_name`, `middle_name`, `student_number`, `section_id`, `user_detail_id`) VALUES
(1536, 20, 'Verna', 'Female', NULL, 'Albarado', 'Santos', 11223564, 112017101, NULL),
(1537, 16, 'Ivy Ann', 'Female', NULL, 'Asban', 'Diyco', 11223566, 112017101, NULL),
(1538, 22, 'Anver', 'Male', NULL, 'Estrada', 'Manuel', 11223561, 112017101, NULL),
(1539, 17, 'Ronald', 'Male', NULL, 'Manasan', 'Salbador', 11223562, 112017101, NULL),
(1560, 18, 'gg', 'Male', NULL, 'gg', 'gg', 11223568, 112017101, NULL),
(1583, 20, 'Verna', 'Female', NULL, 'Albarado', 'Santos', 11223564, 112017101, NULL),
(1588, 18, 'Sir', 'Male', '', 'S', 'Sample', 1111111111, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudentlist`
--

CREATE TABLE IF NOT EXISTS `tblstudentlist` (
  `class_id` bigint(20) NOT NULL,
  `student_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudentlist`
--

INSERT INTO `tblstudentlist` (`class_id`, `student_id`) VALUES
(1590, 1536),
(1599, 1536),
(1590, 1537),
(1599, 1537),
(1590, 1538),
(1599, 1538),
(1590, 1539),
(1599, 1539);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubject`
--

CREATE TABLE IF NOT EXISTS `tblsubject` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `unit` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10161 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubject`
--

INSERT INTO `tblsubject` (`id`, `code`, `description`, `name`, `unit`) VALUES
(10101, 'Prog113', 'Programing 1', 'Prog113', 3),
(10102, 'CP113', 'Computer Fundamentals', 'CP113', 3),
(10103, 'OP113', 'Office Productivity', 'OP113', 3),
(10104, 'Math115', 'College Algebra', 'Math115', 5),
(10105, 'English113', 'Study & Thinking Skill in English', 'English113', 3),
(10106, 'Filipino113c', 'Komunikasyon sa Akademikong Filipino', 'Filipino113c', 3),
(10107, 'Soc213', 'Society & Culure with Family Planning & Drug Addiction', 'Soc213', 3),
(10108, 'Hum113', 'Music and Performing Arts', 'Hum113', 3),
(10109, 'PE112', 'Physical Fitness', 'PE112', 2),
(10110, 'NSTP1', 'National Service Traning Program', 'NSTP', 3),
(10111, 'English123', 'Writing in Discipline', 'English123', 3),
(10112, 'Math115a', 'Plane & Spherical Trigonometry', 'Math115a', 5),
(10113, 'Prog123', 'Programming 2', 'Prog123', 3),
(10114, 'Filipino123a', 'Retorika-Masining na Pagpapahayag', 'Filipino123a', 3),
(10115, 'CHS123', 'Intro to Computer Hardware/Software Installation', 'CHS123', 3),
(10116, 'Chem114', 'General Chemistry', 'Chem114', 4),
(10117, 'Multi', 'Multi Media Sys 1 & Animation Seminar Workshop', 'Multi', 3),
(10118, 'SocSci323b', 'Rizal''s Life and Works', 'SocSci323b', 3),
(10119, 'PE122', 'Fund in Rhythmic Ativities', 'PE122', 2),
(10120, 'NSTP2', 'National Service Training Program', 'NSTP2', 2),
(10121, 'Eng213', 'Speech Communication', 'Eng213', 3),
(10122, 'Physics214', 'Mechanics, Heat & Sounds', 'Physics214', 4),
(10123, 'DS123', 'Discrete Structure', 'DS123', 3),
(10124, 'DBMS213', 'Database Managment System 1', 'DBMS213', 3),
(10125, 'OOP213', 'Object Oriented Programming', 'OOP213', 3),
(10126, 'Psych213', 'General Psychology', 'Psych213', 3),
(10127, 'Web213', 'Web Programming 1', 'Web213', 3),
(10128, 'CHS213', 'Adv. Computer Hardware/Software Technology', 'CHS213', 3),
(10129, 'SocSci413', 'Economics, Taxation & Land Reform', 'SocSci413', 3),
(10130, 'PE212', 'Recreational Games'' and Sports', 'PE212', 2),
(10131, 'DBP223', 'Database Programming 1', 'DBP223', 3),
(10132, 'Multi223', 'Muti-Media for Web & Animation Studio visit', 'Multi223', 3),
(10133, 'OS223', 'Operating System Application', 'OS223', 3),
(10134, 'SAD223', 'System Analysis and Design', 'SAD223', 3),
(10135, 'NET223', 'Networking 1', 'NET223', 3),
(10136, 'English313', 'Literature of the World', 'English313', 3),
(10137, 'Filipino223', 'Panitikan ng Pilipinas', 'Filipino223', 3),
(10138, 'SocSci323', 'Phil. Gov''t & Its New Constitution', 'SocSci323', 3),
(10139, 'PE222', 'Team Sports & Recreational Games', 'PE222', 2),
(10140, 'Web313', 'Web Programming 2', 'Web313', 3),
(10141, 'DBP313', 'DB Programming 2', 'DBP313', 3),
(10142, 'Math313', 'Analytic Geometry', 'Math313', 3),
(10143, 'DBMS313', 'Database Mgt 2', 'DBMS313', 3),
(10144, 'Ethics313', 'Professional Ethics', 'Ethics313', 3),
(10145, 'SAD313', 'System Analysis & Design 2', 'SAD313', 3),
(10146, 'NET313', 'Networking 2', 'NET313', 3),
(10147, 'QSS313', 'Quality Standard and Safety', 'QSS313', 3),
(10148, 'IT Elective1', 'IT301', 'IT Elective1', 3),
(10149, 'Soft Eng323', 'Software Engineering', 'Soft Eng323', 3),
(10150, 'Com Org323', 'Computer Org. & Microcomputer Technology', 'Com Org323', 3),
(10151, 'Tech323', 'Technopreneurship & IT industry visit', 'Tech323', 3),
(10152, 'PHY324', 'ACDC', 'PHY324', 4),
(10153, 'RES413', 'Methodology of Research', 'RES413', 3),
(10154, 'Stat1', 'Probability and Statistics', 'Stat1', 3),
(10155, 'IT Elective2', 'IT 302', 'IT Elective2', 3),
(10156, 'Thesis413', 'Thesis Writing', 'Thesis413', 3),
(10157, 'CIS413', 'Computer Inssues Seminar & Frim Visit', 'CIS413', 3),
(10158, 'IT Elective3', 'IT 303', 'IT Elective3', 3),
(10159, 'IT Elective4', 'IT 304', 'IT Elective4', 3),
(10160, 'OJT', 'On-the Job Training', 'OJT', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tblteacher`
--

CREATE TABLE IF NOT EXISTS `tblteacher` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `department_id` bigint(20) DEFAULT NULL,
  `user_detail_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1532 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblteacher`
--

INSERT INTO `tblteacher` (`id`, `email`, `first_name`, `last_name`, `middle_name`, `department_id`, `user_detail_id`) VALUES
(1, 'ginoongbean@gmail.com', 'Bacon', 'Egg', 'And', 82, 2),
(25, 'lieverandiver@gmail.com', 'Verlie', 'Manuel', 'Estrada', NULL, 26),
(1529, 'vanjeff@gmail.com', 'Juvy', 'Cruz', 'N', 82, 1528),
(1531, 'mamumali@gmail.com', 'Julieta', 'Umali', 'M', 82, 1530);

-- --------------------------------------------------------

--
-- Table structure for table `tblterm`
--

CREATE TABLE IF NOT EXISTS `tblterm` (
  `id` bigint(20) NOT NULL,
  `code` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblterm`
--

INSERT INTO `tblterm` (`id`, `code`, `name`) VALUES
(1, 1, 'Midterm'),
(2, 2, 'Finalterm');

-- --------------------------------------------------------

--
-- Table structure for table `tbluserdetail`
--

CREATE TABLE IF NOT EXISTS `tbluserdetail` (
  `id` bigint(20) NOT NULL,
  `is_enabled` bit(1) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `registration_date` varchar(255) DEFAULT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `registrationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1532 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluserdetail`
--

INSERT INTO `tbluserdetail` (`id`, `is_enabled`, `password`, `registration_date`, `user_type`, `username`, `registrationDate`) VALUES
(2, b'1', 'rafaelestrada123', '8/28/2017', 'user/admin', 'erafaelmanuel@gmail.com', NULL),
(26, b'1', 'verliemanuel123', '8/30/2017', 'user/admin', 'lieverandiver@gmail.com', NULL),
(952, b'1', 'inteliedoit07', '', 'user/admin', 'anver@gmail.com', NULL),
(1299, b'0', '1', NULL, 'user/admin', '1@1.1', NULL),
(1528, b'1', 'juvycruz123', NULL, 'user/teacher', 'vanjeff@gmail.com', '3/18/2018'),
(1530, b'1', 'umali123', NULL, 'user/teacher', 'mamumali@gmail.com', '3/18/2018'),
(1531, b'0', 'admin', 'admin', 'user/admin', 'admin@admin.com', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblactivity`
--
ALTER TABLE `tblactivity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK3rirfv7xpke7bijaxftq41ejm` (`class_id`),
  ADD KEY `FKidqld8fjtafyevc383069t34g` (`term_id`);

--
-- Indexes for table `tblactivityresult`
--
ALTER TABLE `tblactivityresult`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKeirit36cnmtu4u3byyv4atxnu` (`activity_id`),
  ADD KEY `FKmpggwegjkyinl15lpk4mais6b` (`student_id`);

--
-- Indexes for table `tblassignment`
--
ALTER TABLE `tblassignment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK6bmfenrv4xgo2q3aayco42luh` (`class_id`),
  ADD KEY `FKeley4eglt2rbqlllauvb1ywar` (`term_id`);

--
-- Indexes for table `tblassignmentresult`
--
ALTER TABLE `tblassignmentresult`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKdfrn43h8a6vm61r0ovqjn34id` (`assignment_id`),
  ADD KEY `FKje8j271kb3xu6q9y4f6gt0rq7` (`student_id`);

--
-- Indexes for table `tblattendance`
--
ALTER TABLE `tblattendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKqtmcw96t7r4y6i0au88fn2op1` (`class_id`),
  ADD KEY `FK13qeuuruvc0ax03kkk1ktd40n` (`term_id`);

--
-- Indexes for table `tblattendanceresult`
--
ALTER TABLE `tblattendanceresult`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKe8fypykkjxb3qlpdq4oyy69pc` (`attendance_id`),
  ADD KEY `FKek1dm8ko50nawd6s4ukyxlg40` (`student_id`);

--
-- Indexes for table `tblclass`
--
ALTER TABLE `tblclass`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK7jtft5r14dcurwqp5a1rgwvfi` (`section_id`),
  ADD KEY `FKk5x27qqv4v6kr2f12ie8x8vh6` (`subject_id`),
  ADD KEY `FK2ve9bohlgh7sf9iysu88cn0fv` (`teacher_id`);

--
-- Indexes for table `tbldepartment`
--
ALTER TABLE `tbldepartment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblexam`
--
ALTER TABLE `tblexam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKf7e6gomf7xc9nf3da2vsnuqu5` (`class_id`),
  ADD KEY `FKni2xxc7ncld057o3m4meyuhpu` (`term_id`);

--
-- Indexes for table `tblexamresult`
--
ALTER TABLE `tblexamresult`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKt3cchd2hva0p6melmr4xhvuip` (`exam_id`),
  ADD KEY `FK89rrjo92dx18aese78u8u26uu` (`student_id`);

--
-- Indexes for table `tblformula`
--
ALTER TABLE `tblformula`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK5v3d5pmfn50wkcx4fsjb5ohhg` (`subject_id`),
  ADD KEY `FK4mk731qdu18ihm39rprs9bv37` (`teacher_id`),
  ADD KEY `FK1j81fo2tgmm4q7fegdwcjq6o1` (`term_id`);

--
-- Indexes for table `tblgrade`
--
ALTER TABLE `tblgrade`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK3xxx7sp4q80if00jo8rptbgcg` (`class_id`),
  ADD KEY `FKlgbm2dijqo3n34krj4pyo2sfp` (`student_id`),
  ADD KEY `FK3dpyu9ixmgr85pba2b77ukn1h` (`term_id`);

--
-- Indexes for table `tblproject`
--
ALTER TABLE `tblproject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK227lbgly8d7sitkw6bjvjn9xb` (`class_id`),
  ADD KEY `FK1ms9hx7p5a9vdx59nx26f4onl` (`term_id`);

--
-- Indexes for table `tblprojectresult`
--
ALTER TABLE `tblprojectresult`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKfpghyjet3ltinmx1x7wu5koil` (`project_id`),
  ADD KEY `FK7n9w6bg41qui0e7rly3hc7642` (`student_id`);

--
-- Indexes for table `tblquiz`
--
ALTER TABLE `tblquiz`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKn6p1q2gad4ii20re3prl8minw` (`class_id`),
  ADD KEY `FKbnf45yuguyvnbjgin9iuuqook` (`term_id`);

--
-- Indexes for table `tblquizresult`
--
ALTER TABLE `tblquizresult`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKf4524jyqqctbhloqykm25k837` (`quiz_id`),
  ADD KEY `FK70uo57eprn20mch37q4r5x90q` (`student_id`);

--
-- Indexes for table `tblrecitation`
--
ALTER TABLE `tblrecitation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKpolr22mm00hk1j5hve0b95ph4` (`class_id`),
  ADD KEY `FKrretqpc0tdqcabg8u1f5cqqnr` (`term_id`);

--
-- Indexes for table `tblrecitationresult`
--
ALTER TABLE `tblrecitationresult`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKem0veeinamlvjldq7ss0wlpba` (`recitation_id`),
  ADD KEY `FKc1q5nr0hfqx7v9c3dq6tlmwm7` (`student_id`);

--
-- Indexes for table `tblschedule`
--
ALTER TABLE `tblschedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblschedulelist`
--
ALTER TABLE `tblschedulelist`
  ADD PRIMARY KEY (`class_id`,`schedule_id`),
  ADD UNIQUE KEY `UK_k3bhchry4t9kgj0d925vw40l5` (`schedule_id`);

--
-- Indexes for table `tblsection`
--
ALTER TABLE `tblsection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKnu7yenxvk3jbvjlqh7y7hmajf` (`department_id`),
  ADD KEY `FKg9hk3gi9o45j6bla97orj5imi` (`departmentId`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKeilvefxf7wd35mk6h7bqwymug` (`section_id`),
  ADD KEY `FKaxmhp0b7wjtkg272qtjlcgxqp` (`user_detail_id`);

--
-- Indexes for table `tblstudentlist`
--
ALTER TABLE `tblstudentlist`
  ADD PRIMARY KEY (`class_id`,`student_id`),
  ADD KEY `FKipux7kp5ht6aqcxi16d0thg4j` (`student_id`);

--
-- Indexes for table `tblsubject`
--
ALTER TABLE `tblsubject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblteacher`
--
ALTER TABLE `tblteacher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKq7ixk4i1q655pqngvq3wwmcuw` (`department_id`),
  ADD KEY `FKm5clyi7t8ymvwcsccg2421t6y` (`user_detail_id`);

--
-- Indexes for table `tblterm`
--
ALTER TABLE `tblterm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluserdetail`
--
ALTER TABLE `tbluserdetail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblactivity`
--
ALTER TABLE `tblactivity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1603;
--
-- AUTO_INCREMENT for table `tblactivityresult`
--
ALTER TABLE `tblactivityresult`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1613;
--
-- AUTO_INCREMENT for table `tblassignment`
--
ALTER TABLE `tblassignment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblassignmentresult`
--
ALTER TABLE `tblassignmentresult`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblattendance`
--
ALTER TABLE `tblattendance`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblattendanceresult`
--
ALTER TABLE `tblattendanceresult`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblclass`
--
ALTER TABLE `tblclass`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1600;
--
-- AUTO_INCREMENT for table `tbldepartment`
--
ALTER TABLE `tbldepartment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `tblexam`
--
ALTER TABLE `tblexam`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblexamresult`
--
ALTER TABLE `tblexamresult`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblformula`
--
ALTER TABLE `tblformula`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1602;
--
-- AUTO_INCREMENT for table `tblgrade`
--
ALTER TABLE `tblgrade`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1615;
--
-- AUTO_INCREMENT for table `tblproject`
--
ALTER TABLE `tblproject`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblprojectresult`
--
ALTER TABLE `tblprojectresult`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblquiz`
--
ALTER TABLE `tblquiz`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblquizresult`
--
ALTER TABLE `tblquizresult`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblrecitation`
--
ALTER TABLE `tblrecitation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblrecitationresult`
--
ALTER TABLE `tblrecitationresult`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblschedule`
--
ALTER TABLE `tblschedule`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2223;
--
-- AUTO_INCREMENT for table `tblsection`
--
ALTER TABLE `tblsection`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=112017137;
--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1589;
--
-- AUTO_INCREMENT for table `tblsubject`
--
ALTER TABLE `tblsubject`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10161;
--
-- AUTO_INCREMENT for table `tblteacher`
--
ALTER TABLE `tblteacher`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1532;
--
-- AUTO_INCREMENT for table `tblterm`
--
ALTER TABLE `tblterm`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbluserdetail`
--
ALTER TABLE `tbluserdetail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1532;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblactivity`
--
ALTER TABLE `tblactivity`
  ADD CONSTRAINT `FK3rirfv7xpke7bijaxftq41ejm` FOREIGN KEY (`class_id`) REFERENCES `tblclass` (`id`),
  ADD CONSTRAINT `FKidqld8fjtafyevc383069t34g` FOREIGN KEY (`term_id`) REFERENCES `tblterm` (`id`);

--
-- Constraints for table `tblactivityresult`
--
ALTER TABLE `tblactivityresult`
  ADD CONSTRAINT `FKeirit36cnmtu4u3byyv4atxnu` FOREIGN KEY (`activity_id`) REFERENCES `tblactivity` (`id`),
  ADD CONSTRAINT `FKmpggwegjkyinl15lpk4mais6b` FOREIGN KEY (`student_id`) REFERENCES `tblstudent` (`id`);

--
-- Constraints for table `tblassignment`
--
ALTER TABLE `tblassignment`
  ADD CONSTRAINT `FK6bmfenrv4xgo2q3aayco42luh` FOREIGN KEY (`class_id`) REFERENCES `tblclass` (`id`),
  ADD CONSTRAINT `FKeley4eglt2rbqlllauvb1ywar` FOREIGN KEY (`term_id`) REFERENCES `tblterm` (`id`);

--
-- Constraints for table `tblassignmentresult`
--
ALTER TABLE `tblassignmentresult`
  ADD CONSTRAINT `FKdfrn43h8a6vm61r0ovqjn34id` FOREIGN KEY (`assignment_id`) REFERENCES `tblassignment` (`id`),
  ADD CONSTRAINT `FKje8j271kb3xu6q9y4f6gt0rq7` FOREIGN KEY (`student_id`) REFERENCES `tblstudent` (`id`);

--
-- Constraints for table `tblattendance`
--
ALTER TABLE `tblattendance`
  ADD CONSTRAINT `FK13qeuuruvc0ax03kkk1ktd40n` FOREIGN KEY (`term_id`) REFERENCES `tblterm` (`id`),
  ADD CONSTRAINT `FKqtmcw96t7r4y6i0au88fn2op1` FOREIGN KEY (`class_id`) REFERENCES `tblclass` (`id`);

--
-- Constraints for table `tblattendanceresult`
--
ALTER TABLE `tblattendanceresult`
  ADD CONSTRAINT `FKe8fypykkjxb3qlpdq4oyy69pc` FOREIGN KEY (`attendance_id`) REFERENCES `tblattendance` (`id`),
  ADD CONSTRAINT `FKek1dm8ko50nawd6s4ukyxlg40` FOREIGN KEY (`student_id`) REFERENCES `tblstudent` (`id`);

--
-- Constraints for table `tblclass`
--
ALTER TABLE `tblclass`
  ADD CONSTRAINT `FK2ve9bohlgh7sf9iysu88cn0fv` FOREIGN KEY (`teacher_id`) REFERENCES `tblteacher` (`id`),
  ADD CONSTRAINT `FK7jtft5r14dcurwqp5a1rgwvfi` FOREIGN KEY (`section_id`) REFERENCES `tblsection` (`id`),
  ADD CONSTRAINT `FKk5x27qqv4v6kr2f12ie8x8vh6` FOREIGN KEY (`subject_id`) REFERENCES `tblsubject` (`id`);

--
-- Constraints for table `tblexam`
--
ALTER TABLE `tblexam`
  ADD CONSTRAINT `FKf7e6gomf7xc9nf3da2vsnuqu5` FOREIGN KEY (`class_id`) REFERENCES `tblclass` (`id`),
  ADD CONSTRAINT `FKni2xxc7ncld057o3m4meyuhpu` FOREIGN KEY (`term_id`) REFERENCES `tblterm` (`id`);

--
-- Constraints for table `tblexamresult`
--
ALTER TABLE `tblexamresult`
  ADD CONSTRAINT `FK89rrjo92dx18aese78u8u26uu` FOREIGN KEY (`student_id`) REFERENCES `tblstudent` (`id`),
  ADD CONSTRAINT `FKt3cchd2hva0p6melmr4xhvuip` FOREIGN KEY (`exam_id`) REFERENCES `tblexam` (`id`);

--
-- Constraints for table `tblformula`
--
ALTER TABLE `tblformula`
  ADD CONSTRAINT `FK1j81fo2tgmm4q7fegdwcjq6o1` FOREIGN KEY (`term_id`) REFERENCES `tblterm` (`id`),
  ADD CONSTRAINT `FK4mk731qdu18ihm39rprs9bv37` FOREIGN KEY (`teacher_id`) REFERENCES `tblteacher` (`id`),
  ADD CONSTRAINT `FK5v3d5pmfn50wkcx4fsjb5ohhg` FOREIGN KEY (`subject_id`) REFERENCES `tblsubject` (`id`);

--
-- Constraints for table `tblgrade`
--
ALTER TABLE `tblgrade`
  ADD CONSTRAINT `FK3dpyu9ixmgr85pba2b77ukn1h` FOREIGN KEY (`term_id`) REFERENCES `tblterm` (`id`),
  ADD CONSTRAINT `FK3xxx7sp4q80if00jo8rptbgcg` FOREIGN KEY (`class_id`) REFERENCES `tblclass` (`id`),
  ADD CONSTRAINT `FKlgbm2dijqo3n34krj4pyo2sfp` FOREIGN KEY (`student_id`) REFERENCES `tblstudent` (`id`);

--
-- Constraints for table `tblproject`
--
ALTER TABLE `tblproject`
  ADD CONSTRAINT `FK1ms9hx7p5a9vdx59nx26f4onl` FOREIGN KEY (`term_id`) REFERENCES `tblterm` (`id`),
  ADD CONSTRAINT `FK227lbgly8d7sitkw6bjvjn9xb` FOREIGN KEY (`class_id`) REFERENCES `tblclass` (`id`);

--
-- Constraints for table `tblprojectresult`
--
ALTER TABLE `tblprojectresult`
  ADD CONSTRAINT `FK7n9w6bg41qui0e7rly3hc7642` FOREIGN KEY (`student_id`) REFERENCES `tblstudent` (`id`),
  ADD CONSTRAINT `FKfpghyjet3ltinmx1x7wu5koil` FOREIGN KEY (`project_id`) REFERENCES `tblproject` (`id`);

--
-- Constraints for table `tblquiz`
--
ALTER TABLE `tblquiz`
  ADD CONSTRAINT `FKbnf45yuguyvnbjgin9iuuqook` FOREIGN KEY (`term_id`) REFERENCES `tblterm` (`id`),
  ADD CONSTRAINT `FKn6p1q2gad4ii20re3prl8minw` FOREIGN KEY (`class_id`) REFERENCES `tblclass` (`id`);

--
-- Constraints for table `tblquizresult`
--
ALTER TABLE `tblquizresult`
  ADD CONSTRAINT `FK70uo57eprn20mch37q4r5x90q` FOREIGN KEY (`student_id`) REFERENCES `tblstudent` (`id`),
  ADD CONSTRAINT `FKf4524jyqqctbhloqykm25k837` FOREIGN KEY (`quiz_id`) REFERENCES `tblquiz` (`id`);

--
-- Constraints for table `tblrecitation`
--
ALTER TABLE `tblrecitation`
  ADD CONSTRAINT `FKpolr22mm00hk1j5hve0b95ph4` FOREIGN KEY (`class_id`) REFERENCES `tblclass` (`id`),
  ADD CONSTRAINT `FKrretqpc0tdqcabg8u1f5cqqnr` FOREIGN KEY (`term_id`) REFERENCES `tblterm` (`id`);

--
-- Constraints for table `tblrecitationresult`
--
ALTER TABLE `tblrecitationresult`
  ADD CONSTRAINT `FKc1q5nr0hfqx7v9c3dq6tlmwm7` FOREIGN KEY (`student_id`) REFERENCES `tblstudent` (`id`),
  ADD CONSTRAINT `FKem0veeinamlvjldq7ss0wlpba` FOREIGN KEY (`recitation_id`) REFERENCES `tblrecitation` (`id`);

--
-- Constraints for table `tblschedulelist`
--
ALTER TABLE `tblschedulelist`
  ADD CONSTRAINT `FK3aon3lyqdusnj3jl1399g5maw` FOREIGN KEY (`schedule_id`) REFERENCES `tblschedule` (`id`),
  ADD CONSTRAINT `FKd4qsmqp3g5dbxjfyg5iqlp5i8` FOREIGN KEY (`class_id`) REFERENCES `tblclass` (`id`);

--
-- Constraints for table `tblsection`
--
ALTER TABLE `tblsection`
  ADD CONSTRAINT `FKg9hk3gi9o45j6bla97orj5imi` FOREIGN KEY (`departmentId`) REFERENCES `tbldepartment` (`id`),
  ADD CONSTRAINT `FKnu7yenxvk3jbvjlqh7y7hmajf` FOREIGN KEY (`department_id`) REFERENCES `tbldepartment` (`id`);

--
-- Constraints for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD CONSTRAINT `FKaxmhp0b7wjtkg272qtjlcgxqp` FOREIGN KEY (`user_detail_id`) REFERENCES `tbluserdetail` (`id`),
  ADD CONSTRAINT `FKeilvefxf7wd35mk6h7bqwymug` FOREIGN KEY (`section_id`) REFERENCES `tblsection` (`id`);

--
-- Constraints for table `tblstudentlist`
--
ALTER TABLE `tblstudentlist`
  ADD CONSTRAINT `FK1hrdj89ocdryqrpyjrk7gj7ln` FOREIGN KEY (`class_id`) REFERENCES `tblclass` (`id`),
  ADD CONSTRAINT `FKipux7kp5ht6aqcxi16d0thg4j` FOREIGN KEY (`student_id`) REFERENCES `tblstudent` (`id`);

--
-- Constraints for table `tblteacher`
--
ALTER TABLE `tblteacher`
  ADD CONSTRAINT `FKm5clyi7t8ymvwcsccg2421t6y` FOREIGN KEY (`user_detail_id`) REFERENCES `tbluserdetail` (`id`),
  ADD CONSTRAINT `FKq7ixk4i1q655pqngvq3wwmcuw` FOREIGN KEY (`department_id`) REFERENCES `tbldepartment` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
