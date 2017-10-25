-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2017 at 10:29 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel2`
--

-- --------------------------------------------------------

--
-- Table structure for table `block`
--

CREATE TABLE `block` (
  `id` int(11) NOT NULL,
  `block` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `block`
--

INSERT INTO `block` (`id`, `block`, `gender`, `description`, `status`) VALUES
(1, 'A', 'Male', 'bjh', 'enabled'),
(2, 'B', 'Male', 'hbjb', 'enabled'),
(3, 'C', 'Male', 'bhj', 'enabled'),
(4, 'D', 'Male', 'bhjb', 'enabled'),
(5, 'E', 'Male', 'hjjb', 'enabled');

-- --------------------------------------------------------

--
-- Table structure for table `fees_monthly`
--

CREATE TABLE `fees_monthly` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `fees_type` varchar(255) NOT NULL,
  `cost` varchar(255) NOT NULL,
  `paid_amount` varchar(255) NOT NULL,
  `due_balance` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `payment_date` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fees_monthly`
--

INSERT INTO `fees_monthly` (`id`, `student_name`, `fees_type`, `cost`, `paid_amount`, `due_balance`, `month`, `payment_date`, `status`) VALUES
(1, 'Deepak', 'Room Rent', '2000', '2000', '0', '07-01-2015', '07-07-2015', 'enabled'),
(3, 'Deepak', 'Mess Bill', '1500', '1500', '0', '08-01-2015', '08-02-2015', 'enabled'),
(4, 'Rajesh', 'Room Rent', '2000', '2000', '0', '08-01-2015', '08-10-2015', 'enabled'),
(5, 'Rudhra', 'Mess Bill', '1500', '1500', '0', '09-01-2015', '09-01-2015', 'enabled'),
(6, 'Mahendra', 'Room Rent', '2000', '1500', '500', '10-01-2015', '10-05-2015', 'enabled'),
(7, 'Mohan', 'Room Rent', '2000', '1500', '500', '10-01-2015', '10-07-2015', 'enabled'),
(8, 'Rudhra', 'Room Rent', '2000', '2000', '0', '09/01/2015', '09/02/2015', 'enabled'),
(9, 'Mohan', 'Mess Bill', '1500', '1500', '0', '10/01/2015', '10/05/2015', 'enabled'),
(10, 'Rajesh', 'Mess Bill', '1500', '1500', '0', '08/01/2015', '08/05/2015', 'enabled');

-- --------------------------------------------------------

--
-- Table structure for table `fees_structure`
--

CREATE TABLE `fees_structure` (
  `id` int(11) NOT NULL,
  `fees_type` varchar(255) NOT NULL,
  `cost` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fees_structure`
--

INSERT INTO `fees_structure` (`id`, `fees_type`, `cost`, `status`) VALUES
(1, 'Room Rent', '2000', 'enabled'),
(2, 'Mess Bill', '1500', 'enabled');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'admin', 'rajni'),
(2, 'admin', 'roshan');

-- --------------------------------------------------------

--
-- Table structure for table `messcard`
--

CREATE TABLE `messcard` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `food` varchar(255) NOT NULL,
  `messcard` varchar(255) NOT NULL,
  `startdate` varchar(255) NOT NULL,
  `enddate` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messcard`
--

INSERT INTO `messcard` (`id`, `name`, `food`, `messcard`, `startdate`, `enddate`, `status`) VALUES
(1, 'Deepak', 'vegeterian', 'permanent', '23-07-2015', '22-08-2015', 'enabled'),
(3, 'Deepak', 'vegeterian', 'permanent', '23-07-2015', '22-08-2015', 'enabled');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `roomno` varchar(255) NOT NULL,
  `block` varchar(255) NOT NULL,
  `beds` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `roomno`, `block`, `beds`, `description`, `status`) VALUES
(1, '101', 'A', 'bed1', 'test', ' disabled'),
(2, '101', 'A', 'bed2', 'test', ' disabled'),
(3, '101', 'A', 'bed3', 'test', 'enabled'),
(4, '101', 'A', 'bed4', 'test', 'enabled'),
(5, '101', 'A', 'bed5', 'vnnnj', 'enabled'),
(6, '102', 'A', 'bed1', 'vv', 'enabled'),
(7, '102', 'A', 'bed2', 'v', 'enabled'),
(8, '201', 'B', 'bed1', 'fsb', 'enabled'),
(9, '201', 'B', 'bed2', 'fv', 'enabled'),
(10, '202', 'B', 'bed1', 'fkvjbwkjh', 'enabled'),
(11, '203', 'B', 'bed1', 'test', 'enabled');

-- --------------------------------------------------------

--
-- Table structure for table `room_allotment`
--

CREATE TABLE `room_allotment` (
  `id` int(11) NOT NULL,
  `block` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `roomno` varchar(255) NOT NULL,
  `beds` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_allotment`
--

INSERT INTO `room_allotment` (`id`, `block`, `name`, `roomno`, `beds`, `status`) VALUES
(4, 'A', 'Deepak', '101', 'bed1', 'disabled'),
(5, 'A', 'Rudhra', '101', 'bed2', 'disabled');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `security` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `join` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `pnumber` varchar(255) NOT NULL,
  `blood` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `security`, `course`, `name`, `dob`, `join`, `fname`, `mname`, `gender`, `address`, `contact`, `pnumber`, `blood`, `status`) VALUES
(1, '10000', 'BE', 'Gaurang Sabane', '1989-12-16', '2015-07-21', 'Vijay', 'Pratibha', 'male', 'bkn', '8378002707', '7709092864', 'B', 'disabled'),
(2, '10000', 'MA', 'Rajni hisikar', '1988-12-01', '2015-07-23', 'xyz', 'abc', 'male', 'bkn', '7354341437', '8358030465', 'O+', 'enabled'),
(3, '10000', 'BE', 'Roshan Jadhav', '1989-12-16', '2015-07-21', 'Vilas', 'Maya', 'male', 'ujjain', '7354341437', '7697864086', 'O+', ' disabled'),
(4, '10000', 'BE', 'Ashu Jadhav', '1989-12-16', '2015-07-21', 'Vilas', 'Maya', 'male', 'bkn', '7354341437', '44466566', 'O+', 'enabled'),
(5, '10000', 'ITI', 'Mahendra', '1989-12-16', '4', 'Ramlal', 'bbbb', 'male', 'bkn', '7354341437', '8358030465', 'A+', 'enabled'),
(6, '10000', 'B.Com', 'Ankit', '1989-12-16', '2015-07-21', 'aatmaram', 'bbb', 'male', 'bjhbjhhb', '7354341437', '44466566', 'A+', 'enabled');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `block`
--
ALTER TABLE `block`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees_monthly`
--
ALTER TABLE `fees_monthly`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees_structure`
--
ALTER TABLE `fees_structure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messcard`
--
ALTER TABLE `messcard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_allotment`
--
ALTER TABLE `room_allotment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `block`
--
ALTER TABLE `block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `fees_monthly`
--
ALTER TABLE `fees_monthly`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `fees_structure`
--
ALTER TABLE `fees_structure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `messcard`
--
ALTER TABLE `messcard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `room_allotment`
--
ALTER TABLE `room_allotment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
