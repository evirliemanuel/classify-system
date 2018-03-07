-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2018 at 02:43 AM
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
(946),
(946),
(946),
(946),
(946),
(946),
(946),
(946);

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
) ENGINE=InnoDB AUTO_INCREMENT=917 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblactivity`
--

INSERT INTO `tblactivity` (`id`, `date`, `item_total`, `title`, `class_id`, `term_id`) VALUES
(835, '08/11/2017', 5, 'Activity2', 737, 1),
(848, '08/11/2017', 10, 'Activity', 737, 1),
(854, '08/11/2017', 8, 'Midterm', 737, 1),
(857, '08/11/2017', 10, 'Finals', 737, 2),
(861, '08/11/2017', 10, 'Xx', 1111111113, 1),
(866, '08/11/2017', 35, 'fxtx', 1111111113, 1),
(871, '08/11/2017', 23, 'Activity', 737, 1),
(875, '08/11/2017', 20, 'fff', 737, 2),
(880, '08/11/2017', 10, 'tdtxyf', 737, 1),
(883, '08/11/2017', 10, 'tttt', 737, 2),
(886, '08/11/2017', 20, 'Activity', 737, 1),
(889, '08/11/2017', 20, 'chcjf', 737, 1),
(892, '08/11/2017', 200, 'jdjsh', 737, 1),
(895, '08/11/2017', 250, '456df', 737, 1),
(898, '08/11/2017', 233, 'fjjf', 737, 1),
(901, '08/11/2017', 10, 'mana', 737, 1),
(904, '08/11/2017', 236, '5ygg', 737, 1),
(910, '08/11/2017', 20, 'hdh', 737, 1),
(915, '08/11/2017', 50, 'activity50', 737, NULL),
(916, '08/11/2017', 50, 'activity50', 737, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblactivityresult`
--

CREATE TABLE IF NOT EXISTS `tblactivityresult` (
  `id` bigint(20) NOT NULL,
  `score` int(11) NOT NULL,
  `activity_id` bigint(20) DEFAULT NULL,
  `student_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=1111111114 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclass`
--

INSERT INTO `tblclass` (`id`, `section_id`, `subject_id`, `teacher_id`) VALUES
(85, NULL, 10101, 25),
(92, NULL, NULL, NULL),
(93, NULL, NULL, NULL),
(94, NULL, NULL, NULL),
(95, NULL, NULL, NULL),
(96, NULL, NULL, NULL),
(200, 112017101, 10101, 118),
(420, 112017102, 10106, 25),
(421, 112017105, 10108, 25),
(444, 112017101, 10101, 118),
(460, 112017125, 10149, 1),
(465, 112017120, 10117, 1),
(466, 112017101, 10101, 1),
(467, 112017101, 10101, 25),
(468, 112017103, 10117, 25),
(471, 112017101, 10101, 470),
(472, 112017101, 10101, 1),
(479, 112017132, 10156, 66),
(486, 112017123, 10119, 1),
(737, 112017105, 10156, 25),
(879, 112017102, 10146, 1),
(121121, 112017101, 10101, 118),
(1111111111, 112017103, 10105, 25),
(1111111112, 112017118, 10113, 25),
(1111111113, 112017109, 10157, 25);

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
(8, 'Universal Simple Picture', 'USP'),
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(43, 'Monday', '1 hrs 30 mins ', 'Velvet', '12:30 PM'),
(49, 'Tuesday', '2 hrs 0 mins', NULL, '12:30 PM'),
(52, 'Tuesday', '2 hrs 0 mins', NULL, '12:30 PM'),
(55, 'Tuesday', '2 hrs 0 mins', NULL, '12:30 PM'),
(56, 'Tuesday', '2 hrs 0 mins', NULL, '12:30 PM'),
(57, 'Monday', '1 hrs 30 mins', '101', '12:30 AM'),
(58, 'Wednesday', '1 hrs 30 mins', NULL, '1:00 PM'),
(59, 'Wednesday', '1 hrs 30 mins', NULL, '1:00 PM'),
(61, 'Wednesday', '1 hrs 30 mins', NULL, '1:00 PM'),
(62, 'Wednesday', '1 hrs 30 mins', NULL, '1:00 PM'),
(65, 'Wednesday', '1 hrs 30 mins', NULL, '1:00 PM'),
(86, 'Thursday', '1 hrs 3 mins', NULL, '12:30 PM'),
(438, 'Monday', '5:05 PM', '', '7:05 PM'),
(442, 'Tuesday', '6:00 AM', 'Bed', '12:30 PM'),
(443, 'Wednesday', '6:00 AM', 'Class', '12:30 PM'),
(445, 'Monday', '5:15 PM', 'wewr', '5:15 PM'),
(447, 'Thrusday', '5:15 PM', 'sdsf', '5:15 PM'),
(458, 'Wednesday', '4:30 PM', '407', '1:30 PM'),
(478, 'Monday', '9:00 AM', 'CS 105', '7:30 AM'),
(480, 'Tuesday', '12:00 PM', '105', '10:30 AM'),
(484, 'Wednesday', '10:00 PM', '45', '10:00 PM'),
(485, 'Friday', '10:00 PM', '45', '10:00 PM'),
(730, 'Monday', '5:05 PM', '', '5:05 PM'),
(734, 'Friday', '5:20 PM', '', '5:20 PM'),
(735, 'Monday', '10:30 AM', '105', '7:30 AM'),
(736, 'Friday', '3:00 PM', '201', '1:00 PM'),
(762, 'Monday', '6:30 PM', '', '6:30 PM'),
(763, 'Monday', '6:35 PM', '', '6:35 PM'),
(764, 'Monday', '6:35 PM', '', '6:35 PM'),
(774, 'Monday', '7:10 PM', '', '7:10 PM'),
(775, 'Monday', '7:15 PM', '', '7:15 PM'),
(776, 'Monday', '7:15 PM', 'asddad', '7:15 PM'),
(777, 'Monday', '7:20 PM', '', '7:20 PM'),
(778, 'Monday', '7:20 PM', 'zczxczxc', '7:20 PM'),
(779, 'Monday', '7:25 PM', '', '7:25 PM'),
(780, 'Monday', '7:40 PM', '', '7:40 PM'),
(781, 'Monday', '7:40 PM', '@#@', '7:40 PM'),
(782, 'Monday', '7:40 PM', 'sadasfasf', '7:40 PM'),
(783, 'Monday', '7:40 PM', 'sadasfasf DAdADaa adaFDafdFAaf', '7:40 PM'),
(784, 'Monday', '7:40 PM', 'sadasfasf DAdADaa adaFDafdFAaf#1#@', '7:40 PM'),
(785, 'Monday', '7:40 PM', 'sadasfasf DAdADaa adaFDafdFAaf#1#@', '7:40 PM'),
(786, 'Monday', '7:40 PM', 'sadasfasf DAdADaa adaFDafdFAaf#1#232323@', '7:40 PM'),
(787, 'Monday', '7:40 PM', '#', '7:40 PM'),
(788, 'Monday', '7:40 PM', 'HJKHAK#', '7:40 PM'),
(789, 'Monday', '7:45 PM', '', '7:45 PM'),
(790, 'Monday', '7:45 PM', 's%1', '7:45 PM'),
(791, 'Monday', '7:45 PM', '%', '7:45 PM'),
(792, 'Monday', '7:50 PM', '', '7:50 PM'),
(793, 'Monday', '7:50 PM', 'safas@', '7:50 PM'),
(794, 'Monday', '7:50 PM', '@', '7:50 PM'),
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
(1111, 'Monday', '1 hrs 30 mins', 'ROOM 105', '12:00 PM'),
(2222, 'Monday', '3:00:00', 'Lab 3', '13:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblschedulelist`
--

CREATE TABLE IF NOT EXISTS `tblschedulelist` (
  `class_id` bigint(20) NOT NULL,
  `schedule_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblsection`
--

CREATE TABLE IF NOT EXISTS `tblsection` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `department_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=112017137 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsection`
--

INSERT INTO `tblsection` (`id`, `name`, `department_id`) VALUES
(112017101, '1-A', 82),
(112017102, '1-B', 82),
(112017103, '1-C', 82),
(112017104, '1-D', 82),
(112017105, '1-E', 82),
(112017106, '1-F', 82),
(112017107, '1-G', 82),
(112017108, '1-H', 82),
(112017109, '1-I', 82),
(112017110, '2-A', 82),
(112017111, '2-B', 82),
(112017112, '2-C', 82),
(112017113, '2-D', 82),
(112017114, '2-E', 82),
(112017115, '2-F', 82),
(112017116, '2-G', 82),
(112017117, '2-H', 82),
(112017118, '2-I', 82),
(112017119, '3-A', 82),
(112017120, '3-B', 82),
(112017121, '3-C', 82),
(112017122, '3-D', 82),
(112017123, '3-E', 82),
(112017124, '3-F', 82),
(112017125, '3-G', 82),
(112017126, '3-H', 82),
(112017127, '3-I', 82),
(112017128, '4-A', 82),
(112017129, '4-B', 82),
(112017130, '4-C', 82),
(112017131, '4-D', 82),
(112017132, '4-E', 82),
(112017133, '4-F', 82),
(112017134, '4-G', 82),
(112017135, '4-H', 82),
(112017136, '4-I', 82);

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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`id`, `age`, `first_name`, `gender`, `image_src`, `last_name`, `middle_name`, `student_number`, `section_id`, `user_detail_id`) VALUES
(15, 16, 'Ronald', 'Male', '', 'Matsuraka', 'Estrada', 1212, NULL, NULL),
(31, 15, 'Trainer', 'Male', '', 'Canlas', 'Estrada', 12133, NULL, NULL),
(35, 15, 'Trainer', 'Male', '', '101', 'Manuel', 12133, NULL, NULL),
(38, 15, 'Trainer', 'Male', '', '101', 'Manuel', 12133, NULL, NULL),
(41, 15, 'Trainer', 'Male', '', '101', 'Manuel', 12133, NULL, NULL),
(44, 15, 'Trainer', 'Male', '', '101', 'Manuel', 12133, NULL, NULL),
(47, 15, 'Trainer', 'Male', '', '101', 'Manuel', 12133, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudentlist`
--

CREATE TABLE IF NOT EXISTS `tblstudentlist` (
  `class_id` bigint(20) NOT NULL,
  `student_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=471 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblteacher`
--

INSERT INTO `tblteacher` (`id`, `email`, `first_name`, `last_name`, `middle_name`, `department_id`, `user_detail_id`) VALUES
(1, 'ginoongbean@gmail.com', 'Bacon', 'And', 'Egg', NULL, 2),
(25, 'lieverandiver@gmail.com', 'Verlie', 'Manuel', 'Estrada', NULL, 26),
(66, 'dong.tizon@yahoo.com', 'Bading', 'Dong', 'Dong', NULL, 67),
(69, 'Rhd@gmail.com', 'Rhod', 'De Guzman', 'Lagman', 8, 68),
(71, 'ivyannmangbobola@gmail.com', 'Ivy Ann', 'Mangbobola', 'Aswang', 8, 70),
(118, 'kahitano@gmail.com', 'Wency', 'Tizon', 'Kyle', 82, 117),
(369, 'afaf@asdas', 'asdasf', 'asd', 'asd', NULL, 370),
(470, 'sdada@yaoo', 'c', 'df', 'dfe', 82, 469);

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
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=470 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluserdetail`
--

INSERT INTO `tbluserdetail` (`id`, `is_enabled`, `password`, `registration_date`, `user_type`, `username`) VALUES
(2, b'1', 'rafaelestrada123', '8/28/2017', 'user/admin', 'erafaelmanuel@gmail.com'),
(26, b'1', 'verliemanuel123', '8/30/2017', 'user/admin', 'lieverandiver@gmail.com'),
(67, b'1', 'dongdong123', '8/31/2017', 'user/teacher', 'dong.tizon@yahoo.com'),
(68, b'1', 'rhodde guzman123', '8/31/2017', 'user/teacher', 'Rhd@gmail.com'),
(70, b'1', 'ivy annmangbobola123', '8/31/2017', 'user/teacher', 'ivyannmangbobola@gmail.com'),
(117, b'1', 'wencytizon123', '9/5/2017', 'user/teacher', 'kahitano@gmail.com'),
(370, b'1', 'asdasfasd123', '9/9/2017', 'user/teacher', 'afaf@asdas'),
(469, b'1', 'cdf123', '9/9/2017', 'user/teacher', 'sdada@yaoo');

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
  ADD KEY `FKnu7yenxvk3jbvjlqh7y7hmajf` (`department_id`);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=917;
--
-- AUTO_INCREMENT for table `tblactivityresult`
--
ALTER TABLE `tblactivityresult`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1111111114;
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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblgrade`
--
ALTER TABLE `tblgrade`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `tblsubject`
--
ALTER TABLE `tblsubject`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10161;
--
-- AUTO_INCREMENT for table `tblteacher`
--
ALTER TABLE `tblteacher`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=471;
--
-- AUTO_INCREMENT for table `tblterm`
--
ALTER TABLE `tblterm`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbluserdetail`
--
ALTER TABLE `tbluserdetail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=470;
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
