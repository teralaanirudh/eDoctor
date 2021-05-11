-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 11, 2017 at 10:31 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `availdoctors`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE IF NOT EXISTS `appointments` (
  `Appointments_Id` int(25) NOT NULL AUTO_INCREMENT,
  `time` varchar(20) NOT NULL,
  `current_Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `On_Date` varchar(100) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Gender` varchar(16) NOT NULL,
  `Age` int(4) NOT NULL,
  `Status` varchar(25) NOT NULL DEFAULT 'pending',
  `User_Id` int(15) NOT NULL,
  `Employee_Id` int(15) NOT NULL,
  `Discussion` varchar(500) DEFAULT NULL,
  `filepath` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`Appointments_Id`),
  KEY `Employee_Id` (`Employee_Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=69 ;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`Appointments_Id`, `time`, `current_Date`, `On_Date`, `Name`, `Gender`, `Age`, `Status`, `User_Id`, `Employee_Id`, `Discussion`, `filepath`) VALUES
(60, '12:00Am', '2014-05-02 14:47:01', '2013-11-11', 'pat1', 'male', 24, 'accepted', 28, 27, NULL, NULL),
(61, '10:00', '2014-07-04 16:58:56', '2014-09-09', 'nikky', 'male', 22, 'accepted', 30, 27, NULL, NULL),
(63, '11:00', '2014-07-04 20:17:42', '1991-01-21', 'sathya', 'male', 23, 'accepted', 30, 29, NULL, NULL),
(64, '11:00am', '2014-07-07 17:54:53', '2014-07-07', 'satya', 'male', 23, 'accepted', 33, 27, NULL, NULL),
(65, '12PM', '2014-07-30 10:41:20', '2014-07-30', 'Narayana', 'Male', 55, 'pending', 33, 37, NULL, NULL),
(66, '12PM', '2014-07-30 10:52:49', '2014-07-30', 'Naresh', 'Male', 1, 'accepted', 34, 37, NULL, NULL),
(67, '9 am', '2017-01-27 11:43:38', '12-06-2015', 'bhavani', 'female', 21, 'pending', 36, 34, NULL, NULL),
(68, '11am', '2017-03-23 13:37:23', '2016-08-24', 'bhavani', 'female', 22, 'accepted', 37, 38, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `authentication`
--

CREATE TABLE IF NOT EXISTS `authentication` (
  `loginname` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `usertype_id` int(15) NOT NULL,
  `employee_Id` int(15) DEFAULT NULL,
  `User_Id` int(15) DEFAULT NULL,
  `hospital_Id` int(15) DEFAULT NULL,
  PRIMARY KEY (`loginname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authentication`
--

INSERT INTO `authentication` (`loginname`, `password`, `usertype_id`, `employee_Id`, `User_Id`, `hospital_Id`) VALUES
('admin', 'admin', 1, 0, 1, 0),
('YashodhaLN', 'Yashodhap', 2, NULL, NULL, 13),
('InnovaLN', 'Innovap', 2, NULL, NULL, 12),
('doc1', 'doc1pwd', 3, 27, NULL, 13),
('doc2', 'doc2pwd', 3, 28, NULL, 13),
('doc3', 'doc3pwd', 3, 29, NULL, 13),
('doc4', 'doc4pwd', 3, 30, NULL, 12),
('doc5', 'doc5pwd', 3, 31, NULL, 12),
('doc6', 'doc6pwd', 3, 32, NULL, 12),
('pat1', 'pat1pwd', 4, NULL, 28, NULL),
('pat2', 'pat2pwd', 4, NULL, 29, NULL),
('patient', 'patient', 4, NULL, 30, NULL),
('raj', 'raj123', 4, NULL, 31, NULL),
('sathya', 'sathya', 4, NULL, 32, NULL),
('satya', 'satya1', 4, NULL, 33, NULL),
('vasann', 'vasann', 2, NULL, NULL, 14),
('Narayana', 'Narayana', 3, 0, 0, 14),
('Ashok', 'Ashok', 3, 0, 0, 14),
('naresh', 'naresh123', 4, NULL, 34, NULL),
('adam', 'adam123', 4, NULL, 35, NULL),
('nri', 'nri123', 2, NULL, NULL, 15),
('bh', 'bbbbbb', 4, NULL, 36, NULL),
('bhavani', 'bhavani', 4, NULL, 37, NULL),
('tirumala', 'tirumala', 2, NULL, NULL, 16),
('hari', 'harigoud', 3, 38, NULL, 16),
('matrix', 'matrix', 2, NULL, NULL, 17),
('tulasi', 'tulasi', 2, NULL, NULL, 18);

-- --------------------------------------------------------

--
-- Table structure for table `emplopyee`
--

CREATE TABLE IF NOT EXISTS `emplopyee` (
  `Employee_Id` int(50) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `Father` varchar(50) NOT NULL,
  `Qulification` varchar(45) NOT NULL,
  `Address` varchar(60) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `DOB` date NOT NULL,
  `DOJ` date NOT NULL,
  `Emailid` varchar(50) NOT NULL,
  `Hospital_Id` varchar(15) NOT NULL,
  `Schedule_Id` int(15) DEFAULT NULL,
  `UserType_Id` int(15) NOT NULL,
  `mobileno` varchar(27) NOT NULL,
  PRIMARY KEY (`Employee_Id`),
  KEY `Hospital_Id` (`Hospital_Id`,`Schedule_Id`,`UserType_Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `emplopyee`
--

INSERT INTO `emplopyee` (`Employee_Id`, `Name`, `password`, `Father`, `Qulification`, `Address`, `Gender`, `DOB`, `DOJ`, `Emailid`, `Hospital_Id`, `Schedule_Id`, `UserType_Id`, `mobileno`) VALUES
(27, 'doc1', 'doc1pwd', 'doc1father', 'Mbbs', 'address', 'male', '2014-11-11', '2014-11-11', 'doc1@gmail.com', '13', 1, 3, '9876543210'),
(28, 'doc2', 'doc2pwd', 'doc2father', 'Mbbs', 'address', 'male', '2014-11-11', '2014-11-11', 'doc2@gmail.com', '13', 1, 3, '9876543211'),
(29, 'doc3', 'doc3pwd', 'doc3father', 'Mbbs', 'address', 'male', '2014-11-11', '2014-11-11', 'doc3@gmail.com', '13', 1, 3, '9876543222'),
(30, 'doc4', 'doc4pwd', 'doc4father', 'Mbbs', 'address', 'male', '2014-11-11', '2014-11-11', 'doc4@gmail.com', '12', 1, 3, '9876543210'),
(31, 'doc5', 'doc5pwd', 'doc5father', 'Mbbs', 'address', 'male', '2014-11-11', '2014-11-11', 'doc5@gmail.com', '12', 1, 3, '9876543211'),
(32, 'doc6', 'doc6pwd', 'doc6father', 'Mbbs', 'address', 'male', '2014-11-11', '2014-11-11', 'doc6@gmail.com', '12', 1, 3, '9876543222'),
(34, 'Satyanarayana', 'Satyanarayana', 'Chandraiah', 'MBBS', 'Gundala', 'Male', '1989-08-09', '2013-07-29', 'eesamsatyanrayana@gmail.com', '14', 4, 3, '9491888319'),
(36, 'Narayana', 'Narayana', 'Chandraiah', 'BDS', 'Gundala', 'Male', '2000-09-12', '2013-09-09', 'dsaf@gmail.com', '14', 3, 3, '8963264761'),
(37, 'Ashok', 'Ashok', 'Ashok', 'BDS', 'KTC', 'Male', '1999-09-08', '2004-12-21', 'dafsd@gmail.com', '14', 4, 3, '3543676842'),
(38, 'hari', 'harigoud', 'hari', 'mbbs', 'jn', 'male', '1999-09-08', '2010-09-08', 'bhavani.bandari511@gmail.com', '16', 1, 3, '8785698547');

-- --------------------------------------------------------

--
-- Table structure for table `emp_spec`
--

CREATE TABLE IF NOT EXISTS `emp_spec` (
  `emp_Spec_Id` int(15) NOT NULL AUTO_INCREMENT,
  `Employee_Id` int(15) NOT NULL,
  `Specialization_Id` int(15) NOT NULL,
  PRIMARY KEY (`emp_Spec_Id`),
  KEY `Employee_Id` (`Employee_Id`,`Specialization_Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `emp_spec`
--

INSERT INTO `emp_spec` (`emp_Spec_Id`, `Employee_Id`, `Specialization_Id`) VALUES
(25, 27, 1),
(26, 28, 2),
(27, 29, 3),
(28, 30, 1),
(29, 31, 2),
(30, 32, 3),
(32, 34, 3),
(33, 36, 3),
(34, 37, 2),
(35, 38, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE IF NOT EXISTS `hospital` (
  `Hospital_Id` int(15) NOT NULL AUTO_INCREMENT,
  `Hospital_Name` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `District` varchar(50) NOT NULL,
  `Country` varchar(50) NOT NULL,
  `PhoneNo` varchar(25) NOT NULL,
  `Established_Year` int(5) NOT NULL,
  `emailid` varchar(40) NOT NULL,
  PRIMARY KEY (`Hospital_Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`Hospital_Id`, `Hospital_Name`, `Address`, `State`, `District`, `Country`, `PhoneNo`, `Established_Year`, `emailid`) VALUES
(13, 'Yashodha', 'Hyderabad,\r\nYashodha', 'Andhra pradesh', 'Narayanaguda', 'India', '9876543222', 2011, 'Accepted'),
(12, 'Innova', 'Hyderabad,\r\nAndhra pradesh', 'Andhra pradesh', 'Himayathnagar', 'India', '9876543111', 2011, 'Accepted'),
(14, 'vasann', 'Suraram', 'Telangana', 'Ranga Reddy', 'India', '9491888319', 1650, 'Accepted'),
(15, 'NRI', 'Guntur', 'Andhra pradesh', 'Guntur', 'India', '08649522347', 2005, 'Accepted'),
(16, 'tirumala', 'hyderabad', 'telangana', 'hyderabad', 'india', '9908766543', 1990, 'tirumala@gmail.com'),
(17, 'matrix', 'uppal', 'telangana', 'rangareddy', 'india', '9908766543', 1995, 'matrix@gmail.com'),
(18, 'tulasi', 'ecil', 'telangana', 'hyderabad', 'india', '8909765432', 2014, 'tulasihospitals@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE IF NOT EXISTS `medicine` (
  `disease` varchar(34) NOT NULL,
  `medicine` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`disease`, `medicine`) VALUES
('fever', 'paracitamol');

-- --------------------------------------------------------

--
-- Table structure for table `query`
--

CREATE TABLE IF NOT EXISTS `query` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `docid` int(11) NOT NULL,
  `question` varchar(50) NOT NULL,
  `aid` int(11) NOT NULL,
  `answer` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `query`
--


-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE IF NOT EXISTS `reports` (
  `name` varchar(60) NOT NULL,
  `DOB` varchar(60) NOT NULL,
  `address` varchar(60) NOT NULL,
  `gender` varchar(60) NOT NULL,
  `sugarlevel` varchar(60) NOT NULL,
  `srange` varchar(23) NOT NULL,
  `bp` varchar(60) NOT NULL,
  `brange` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`name`, `DOB`, `address`, `gender`, `sugarlevel`, `srange`, `bp`, `brange`) VALUES
('bhavani', '2017-03-01', 'hhh', 'male', '78', 'high', '137/93', 'high');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE IF NOT EXISTS `schedule` (
  `Schedule_Id` int(15) NOT NULL AUTO_INCREMENT,
  `Start_Time` time NOT NULL,
  `End_Time` time NOT NULL,
  `Days` varchar(60) NOT NULL,
  PRIMARY KEY (`Schedule_Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`Schedule_Id`, `Start_Time`, `End_Time`, `Days`) VALUES
(1, '09:00:00', '16:00:00', 'Mon,Tue,Wed'),
(2, '00:00:09', '00:00:16', 'Mon,Wed,Fri'),
(3, '00:00:12', '00:00:18', 'Mon,Wed,Fri,Sat'),
(4, '00:00:14', '00:00:20', 'Tue,Fri,Sun'),
(5, '00:00:16', '00:00:20', 'Mon,Tue,Fri,Sun');

-- --------------------------------------------------------

--
-- Table structure for table `specialization`
--

CREATE TABLE IF NOT EXISTS `specialization` (
  `Specialization_Id` int(15) NOT NULL AUTO_INCREMENT,
  `Specialization_Name` varchar(100) NOT NULL,
  PRIMARY KEY (`Specialization_Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `specialization`
--

INSERT INTO `specialization` (`Specialization_Id`, `Specialization_Name`) VALUES
(1, 'Cardialogist'),
(2, 'Orthopedic'),
(3, 'gynecologist');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `User_Id` int(60) NOT NULL AUTO_INCREMENT,
  `Name` varchar(60) NOT NULL,
  `Loginid` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `Address` varchar(60) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `DOB` date NOT NULL,
  `DOJ` date DEFAULT NULL,
  `Emailid` varchar(50) DEFAULT NULL,
  `usertype_id` int(15) NOT NULL,
  `mobileno` varchar(15) NOT NULL,
  `Father` varchar(25) NOT NULL,
  PRIMARY KEY (`User_Id`),
  KEY `usertype_id` (`usertype_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_Id`, `Name`, `Loginid`, `password`, `Address`, `Gender`, `DOB`, `DOJ`, `Emailid`, `usertype_id`, `mobileno`, `Father`) VALUES
(1, 'admin', '1', 'admin', 'Hyderabad', 'male', '1990-11-11', '2006-11-11', 'admin@gmail.com', 1, '9876543211', 'adminf'),
(28, 'pat1', NULL, NULL, 'pat1address', 'male', '2013-11-11', NULL, 'pat1@gmail.com', 4, '9876543210', 'pat1father'),
(29, 'pat2', NULL, NULL, 'pat2address', 'male', '2013-11-11', NULL, 'pat2@gmail.com', 4, '9876543211', 'pat2father'),
(30, 'patient', NULL, NULL, 'Hyderabad', 'male', '1990-09-09', NULL, 'patient@gmail.com', 4, '9958099789', 'patient'),
(31, 'raj', NULL, NULL, 'hyd', 'male', '1990-02-02', NULL, 'raj@gmail.com', 4, '1234567890', 'rai kumar'),
(32, 'sathya', NULL, NULL, 'hyd', 'male', '1991-01-21', NULL, 'satya@gmail.com', 4, '1234567890', 'sathya'),
(33, 'satya', NULL, NULL, 'hydd', 'male', '1991-02-21', NULL, 'satya@gmail.com', 4, '1234567890', 'satya'),
(34, 'Naresh', NULL, NULL, 'Hyd', 'male', '2014-07-20', NULL, 'naresh@gmail.com', 4, '96857437453', 'Nagabhushanam'),
(35, 'adams', NULL, NULL, 'Hyd', 'male', '2000-09-11', NULL, 'adam@gmail.com', 4, '12325435', 'james'),
(36, 'bhavani', NULL, NULL, 'ff', 'female', '2017-01-03', NULL, 'bhavani.bandari511@gmail.com', 4, '8785963258', 'bh'),
(37, 'bhavani', 'bhavani', 'bhavani', 'bhavani', 'female', '2017-03-01', NULL, 'bhavanib.coign@gmail.com', 4, '9908766543', 'bhavani');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE IF NOT EXISTS `user_type` (
  `UserType_Id` int(15) NOT NULL AUTO_INCREMENT,
  `UserType` varchar(35) NOT NULL,
  PRIMARY KEY (`UserType_Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`UserType_Id`, `UserType`) VALUES
(1, 'admin'),
(2, 'hospitaladmin'),
(3, 'doctor'),
(4, 'patient');
