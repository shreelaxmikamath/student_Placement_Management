-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2024 at 05:05 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `placementt`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `Application_id` int(11) NOT NULL,
  `Student_id` int(11) DEFAULT NULL,
  `Job_id` int(11) DEFAULT NULL,
  `Date_applied` date DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`Application_id`, `Student_id`, `Job_id`, `Date_applied`, `Status`) VALUES
(11, 101, 10, '2024-02-10', 'Pending'),
(12, 102, 20, '2024-02-12', 'Pending'),
(13, 103, 30, '2024-02-14', 'Pending'),
(14, 104, 40, '2024-02-16', 'Pending'),
(15, 105, 50, '2024-02-18', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `Company_id` int(11) NOT NULL,
  `Cname` varchar(100) DEFAULT NULL,
  `Contact_person` varchar(100) DEFAULT NULL,
  `Contact_email` varchar(100) DEFAULT NULL,
  `Contact_phone` varchar(20) DEFAULT NULL,
  `Industry` varchar(100) DEFAULT NULL,
  `Location` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`Company_id`, `Cname`, `Contact_person`, `Contact_email`, `Contact_phone`, `Industry`, `Location`) VALUES
(1, 'Tech Solutions Pvt. Ltd.', 'Amit Agarwal', 'amit.agarwal@techsolutions.com', '9876543210', 'Information Technology', 'Bangalore'),
(2, 'Engineering Innovations Ltd.', 'Neha Verma', 'neha.verma@enginnovations.com', '8765432109', 'Engineering', 'Mumbai'),
(3, 'Software Hub Inc.', 'Rajesh Khanna', 'rajesh.khanna@softwarehub.com', '7654321098', 'Information Technology', 'Hyderabad'),
(4, 'ElectroMech Pvt. Ltd.', 'Anil Kumar', 'anil.kumar@electromech.com', '6543210987', 'Electrical Engineering', 'Chennai'),
(5, 'Green Energy Solutions', 'Sneha Sharma', 'sneha.sharma@greenenergy.com', '5432109876', 'Renewable Energy', 'Pune');

-- --------------------------------------------------------

--
-- Table structure for table `job_postings`
--

CREATE TABLE `job_postings` (
  `Job_id` int(11) NOT NULL,
  `Company_id` int(11) DEFAULT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `Description` char(50) DEFAULT NULL,
  `Requirements` char(50) DEFAULT NULL,
  `Deadline` date DEFAULT NULL,
  `Salary` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_postings`
--

INSERT INTO `job_postings` (`Job_id`, `Company_id`, `Title`, `Description`, `Requirements`, `Deadline`, `Salary`) VALUES
(10, 1, 'Software Developer', 'Develop and maintain software applications.', 'Bachelor\'s degree in Computer Science or related f', '2024-03-15', 80000.00),
(20, 2, 'Mechanical Engineer', 'Design and analyze mechanical systems.', 'Bachelor\'s degree in Mechanical Engineering.', '2024-03-10', 75000.00),
(30, 3, 'Data Scientist', 'Analyze large datasets and develop predictive mode', 'Master\'s degree in Data Science or related field.', '2024-03-20', 90000.00),
(40, 4, 'Electrical Engineer', 'Design electrical systems and components.', 'Bachelor\'s degree in Electrical Engineering.', '2024-03-25', 70000.00),
(50, 5, 'Environmental Engineer', 'Design and implement environmental solutions.', 'Bachelor\'s degree in Environmental Engineering.', '2024-03-30', 85000.00);

-- --------------------------------------------------------

--
-- Table structure for table `placements`
--

CREATE TABLE `placements` (
  `Placement_id` int(11) NOT NULL,
  `Student_id` int(11) DEFAULT NULL,
  `Company_id` int(11) DEFAULT NULL,
  `Job_id` int(11) DEFAULT NULL,
  `Date_placed` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `placements`
--

INSERT INTO `placements` (`Placement_id`, `Student_id`, `Company_id`, `Job_id`, `Date_placed`) VALUES
(1000, 101, 1, 10, '2024-02-20'),
(1001, 102, 2, 20, '2024-02-22'),
(1002, 103, 3, 30, '2024-02-24'),
(1003, 104, 4, 40, '2024-02-26'),
(1004, 105, 5, 50, '2024-02-28');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `Student_id` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `CGPA` decimal(3,2) DEFAULT NULL,
  `Graduation_year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`Student_id`, `Name`, `Email`, `Phone`, `CGPA`, `Graduation_year`) VALUES
(101, 'Ramesh Kumar', 'rameshkumar@gmail.com', '+1234567890', 8.75, 2023),
(102, 'Priya Sharma', 'priyasharma@gmail.com.com', '+1987654321', 7.85, 2022),
(103, 'Rahul Singh', 'rahulsingh@gmail.com', '+1122334455', 9.56, 2024),
(104, 'shamitha Rao', 'shami.rao@gmail.com.com', '+9195957697', 6.78, 2022),
(105, 'Neha Gupta', 'nehagupt@gmail.com.com', '+9145678906', 7.90, 2021);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`Application_id`),
  ADD KEY `Student_id` (`Student_id`),
  ADD KEY `Job_id` (`Job_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`Company_id`);

--
-- Indexes for table `job_postings`
--
ALTER TABLE `job_postings`
  ADD PRIMARY KEY (`Job_id`),
  ADD KEY `Company_id` (`Company_id`);

--
-- Indexes for table `placements`
--
ALTER TABLE `placements`
  ADD PRIMARY KEY (`Placement_id`),
  ADD KEY `Student_id` (`Student_id`),
  ADD KEY `Job_id` (`Job_id`),
  ADD KEY `Company_id` (`Company_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`Student_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applications`
--
ALTER TABLE `applications`
  ADD CONSTRAINT `applications_ibfk_1` FOREIGN KEY (`Student_id`) REFERENCES `students` (`Student_id`),
  ADD CONSTRAINT `applications_ibfk_2` FOREIGN KEY (`Job_id`) REFERENCES `job_postings` (`Job_id`);

--
-- Constraints for table `job_postings`
--
ALTER TABLE `job_postings`
  ADD CONSTRAINT `job_postings_ibfk_1` FOREIGN KEY (`Company_id`) REFERENCES `companies` (`Company_id`);

--
-- Constraints for table `placements`
--
ALTER TABLE `placements`
  ADD CONSTRAINT `placements_ibfk_1` FOREIGN KEY (`Student_id`) REFERENCES `students` (`Student_id`),
  ADD CONSTRAINT `placements_ibfk_2` FOREIGN KEY (`Job_id`) REFERENCES `job_postings` (`Job_id`),
  ADD CONSTRAINT `placements_ibfk_3` FOREIGN KEY (`Company_id`) REFERENCES `companies` (`Company_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
