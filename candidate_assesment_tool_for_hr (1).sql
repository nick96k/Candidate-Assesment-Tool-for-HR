-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2024 at 09:15 PM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `candidate_assesment_tool_for_hr`
--

-- --------------------------------------------------------

--
-- Table structure for table `cand_tbl`
--

CREATE TABLE IF NOT EXISTS `cand_tbl` (
  `jid` int(20) NOT NULL,
`cid` int(20) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `cno` varchar(50) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `adress` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `cand_tbl`
--

INSERT INTO `cand_tbl` (`jid`, `cid`, `fname`, `lname`, `email`, `dob`, `cno`, `cname`, `branch`, `adress`) VALUES
(2, 1, 'Nikhil ', 'Patil', 'nikhil@gmail.com', '2022-08-02', '7972075050', 'RCPIT', 'Computer', 'Dhule'),
(1, 2, 'Yamini', 'Deshmukh', 'deshmukh@gmail.com', '2022-08-17', '9876547689', 'SVPS', 'Computer', 'Dhule'),
(2, 3, 'Jay', 'Sonar', 'jay@gmail.com', '2022-08-02', '7972075050', 'RCPIT', 'Computer', 'Amalner'),
(1, 4, 'Yamini', 'Deshmukh', 'deshmukh@gmail.com', '2022-08-17', '9876547689', 'SVPS', 'Computer', 'Dhule'),
(2, 5, 'Jay', 'Sonar', 'jay@gmail.com', '2022-08-03', '7972075050', 'RCPIT', 'Computer', 'Amalner'),
(2, 6, 'Nikhil', 'Patil', 'nik@gmail.com', '2022-08-02', '7972075050', 'RCPIT', 'Computer ', 'Dhule'),
(2, 7, 'Mayur', 'Suryawanshi', 'mayur@gmail.com', '2022-08-04', '4567890', 'SVPS', 'Computer ', 'Dahiwad'),
(2, 8, 'Nikita', 'Patil', 'nikita@gmail.com', '2005-10-07', '3456789009', 'RCP', 'Computer', 'Dahiwad,Shirpur'),
(1, 9, 'fvbgh', ' cvbn', 'dcfvbgnh', '2022-12-06', '12345678', 'xsdcvgfbnhj', 'dcvfbghn', 'fvgbnhj');

-- --------------------------------------------------------

--
-- Table structure for table `hr_tbl`
--

CREATE TABLE IF NOT EXISTS `hr_tbl` (
  `hr_name` varchar(50) NOT NULL,
  `hr_email` varchar(50) NOT NULL,
  `hr_mobile` varchar(50) NOT NULL,
  `hr_password` varchar(50) NOT NULL,
  `hr_designation` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hr_tbl`
--

INSERT INTO `hr_tbl` (`hr_name`, `hr_email`, `hr_mobile`, `hr_password`, `hr_designation`) VALUES
('Vishal Vanjari', 'vish@gmail.com', '1234567890', 'vishal', 'Head OF Project'),
('Pruthviraj Sharma', 'pri@gmail.com', '98656748333', 'pri123', 'CEO'),
('Nikhil Patil', 'nik@gmail.com', '7972075050', 'nik123', 'Head OF Department');

-- --------------------------------------------------------

--
-- Table structure for table `job_tbl`
--

CREATE TABLE IF NOT EXISTS `job_tbl` (
`jid` int(10) NOT NULL,
  `job_title` varchar(50) NOT NULL,
  `job_desc` varchar(200) NOT NULL,
  `salary_range` varchar(50) NOT NULL,
  `qualities` varchar(50) NOT NULL,
  `exprience` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `job_tbl`
--

INSERT INTO `job_tbl` (`jid`, `job_title`, `job_desc`, `salary_range`, `qualities`, `exprience`) VALUES
(1, 'Frontend Developer', 'It is a job for web developement', '10 lakh to 20 lakh', 'C', '2 Years'),
(2, 'Java Developer', 'It is a job of creating apps using java.', '100000 to 600000', 'O', '3 Years');

-- --------------------------------------------------------

--
-- Table structure for table `que_dataset`
--

CREATE TABLE IF NOT EXISTS `que_dataset` (
`QID` int(50) NOT NULL,
  `Question` varchar(50) NOT NULL,
  `HA` varchar(50) NOT NULL,
  `A` varchar(50) NOT NULL,
  `N` varchar(50) NOT NULL,
  `DA` varchar(50) NOT NULL,
  `HDA` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `que_dataset`
--

INSERT INTO `que_dataset` (`QID`, `Question`, `HA`, `A`, `N`, `DA`, `HDA`) VALUES
(1, 'I don''t talk a lot.', 'N', 'A', 'C', 'E', 'O'),
(2, 'I feel comfortable around people.', 'E', 'O', 'C', 'A', 'N'),
(3, 'I keep in the background.', 'N', 'A', 'E', 'C', 'O'),
(4, 'I start conversations.', 'O', 'E', 'A', 'C', 'N'),
(5, 'I talk to a lot of different people at parties.', 'E', 'O', 'A', 'C', 'N'),
(6, 'I don''t like to draw attention to myself.', 'N', 'A', 'C', 'O', 'E'),
(7, 'I am quiet around strangers.', 'N', 'A', 'C', 'O', 'E'),
(8, 'I am relaxed most of the time.', 'A', 'O', 'C', 'E', 'N'),
(9, 'I worry about things.', 'N', 'A', 'C', 'O', 'E'),
(10, 'I feel little concern for others.', 'A', 'N', 'E', 'O', 'C'),
(11, 'I get irritated easily.', 'N', 'C', 'A', 'O', 'E'),
(12, 'I get upset easily.', 'N', 'N', 'C', 'E', 'O'),
(13, 'I change my mood a lot.', 'N', 'C', 'A', 'E', '0'),
(14, 'I have a soft heart.', 'A', 'N', 'E', 'O', 'C'),
(15, 'I am always prepared.', 'O', 'C', 'A', 'E', 'N'),
(16, 'I follow a schedule.', 'C', 'A', 'O', 'E', 'N'),
(17, 'I do not have a good imagination.', 'N', 'A', 'C', 'E', 'O'),
(18, 'I use difficult words.', 'C', 'O', 'E', 'A', 'N'),
(19, 'I make a mess of things.', 'N', 'E', 'A', 'O', 'C'),
(20, 'I am quick to understand things.', 'O', 'C', 'A', 'E', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `result_tbl`
--

CREATE TABLE IF NOT EXISTS `result_tbl` (
  `jid` int(20) NOT NULL,
  `cid` int(20) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `cno` varchar(50) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `adress` varchar(50) NOT NULL,
  `O` int(20) NOT NULL,
  `C` int(20) NOT NULL,
  `E` int(20) NOT NULL,
  `A` int(20) NOT NULL,
  `N` int(20) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result_tbl`
--

INSERT INTO `result_tbl` (`jid`, `cid`, `fname`, `lname`, `email`, `dob`, `cno`, `cname`, `branch`, `adress`, `O`, `C`, `E`, `A`, `N`, `status`) VALUES
(1, 2, 'Yamini', 'Deshmukh', 'deshmukh@gmail.com', '2022-08-17', '9876547689', 'SVPS', 'Computer', 'Dhule', 5, 4, 5, 4, 2, 'Rejected'),
(2, 3, 'Jay', 'Sonar', 'jay@gmail.com', '2022-08-02', '7972075050', 'RCPIT', 'Computer', 'Amalner', 2, 1, 6, 10, 1, 'Rejected'),
(1, 2, 'Yamini', 'Deshmukh', 'deshmukh@gmail.com', '2022-08-17', '9876547689', 'SVPS', 'Computer', 'Dhule', 9, 3, 1, 3, 4, 'Rejected'),
(2, 3, 'Jay', 'Sonar', 'jay@gmail.com', '2022-08-02', '7972075050', 'RCPIT', 'Computer', 'Amalner', 3, 3, 5, 5, 4, 'Rejected'),
(2, 7, 'Mayur', 'Suryawanshi', 'mayur@gmail.com', '2022-08-04', '4567890', 'SVPS', 'Computer ', 'Dahiwad', 2, 6, 6, 1, 5, 'Rejected'),
(2, 8, 'Nikita', 'Patil', 'nikita@gmail.com', '2005-10-07', '3456789009', 'RCP', 'Computer', 'Dahiwad,Shirpur', 2, 7, 2, 9, 0, 'Rejected');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cand_tbl`
--
ALTER TABLE `cand_tbl`
 ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `job_tbl`
--
ALTER TABLE `job_tbl`
 ADD PRIMARY KEY (`jid`);

--
-- Indexes for table `que_dataset`
--
ALTER TABLE `que_dataset`
 ADD PRIMARY KEY (`QID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cand_tbl`
--
ALTER TABLE `cand_tbl`
MODIFY `cid` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `job_tbl`
--
ALTER TABLE `job_tbl`
MODIFY `jid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `que_dataset`
--
ALTER TABLE `que_dataset`
MODIFY `QID` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
