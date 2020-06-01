-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2020 at 06:45 AM
-- Server version: 8.0.19
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `state_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `name`, `state_id`) VALUES
(38, 'Gurugram', 16),
(39, 'Panipat', 16),
(40, 'Rewari', 16),
(41, 'Chandigarh', 16),
(42, 'Tirupati', 17),
(43, 'Vijayvada', 17),
(44, 'Elluru', 17),
(45, 'Nellore', 17),
(46, 'New Delhi', 18),
(47, 'Faridabad', 18),
(48, 'Chennai', 19),
(49, 'Madurai', 19),
(50, 'Coimbatore', 19),
(51, 'Salem', 19),
(52, 'Ballia', 20),
(53, 'Varanasi', 20),
(54, 'Lucknow', 20),
(55, 'Kanpur', 20);

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int NOT NULL,
  `school_id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `section` varchar(10) NOT NULL,
  `subjects` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `school_id`, `name`, `section`, `subjects`) VALUES
(12, 1, 'I', 'A', 'English, Hindi, Maths, Science, Sanskrit'),
(13, 1, 'I', 'B', 'English, Hindi, Maths, Science, Sanskrit'),
(14, 1, 'II', 'A', 'English, Hindi, Maths, Science, Sanskrit'),
(15, 1, 'II', 'B', 'English, Hindi, Maths, Science, Sanskrit'),
(16, 1, 'Nursery', 'A', 'English, Hindi'),
(17, 1, 'L.K.G', 'A', 'English, Hindi, Drawing'),
(18, 2, 'Nursery', 'A', 'English, Hindi'),
(19, 2, 'L.K.G', 'A', 'English, Hindi, Drawing'),
(20, 2, 'I', 'A', 'English, Hindi, Maths, Science, Sanskrit'),
(21, 2, 'III', 'A', 'English, Hindi, Maths, Science, Sanskrit'),
(22, 2, 'V', 'A', 'English, Hindi, Maths, Science, Sanskrit, Computer Science'),
(23, 3, 'V', 'A', 'English, Hindi, Maths, Science, Sanskrit, Computer Science, History'),
(24, 2, 'IV', 'A', 'English, Hindi, Maths, Science, Sanskrit, Computer Science, History'),
(25, 1, 'V', 'A', 'English, Hindi, Maths, Physics, Biology, Chemistry');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int NOT NULL,
  `country_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `country_name`) VALUES
(4, 'India');

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `board` varchar(50) NOT NULL,
  `medium` varchar(50) NOT NULL,
  `country` int NOT NULL,
  `city` int NOT NULL,
  `state` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `name`, `board`, `medium`, `country`, `city`, `state`) VALUES
(1, 'Shiv Nadar School', 'cbse', 'english', 4, 46, 18),
(2, 'DAV', 'cbse', 'english', 4, 38, 16),
(3, 'Modern', 'cbse', 'english', 4, 41, 16);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `country_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`) VALUES
(16, 'Haryana', 4),
(17, 'Andhra Pradesh', 4),
(18, 'Delhi', 4),
(19, 'Tamil Nadu', 4),
(20, 'Uttar Pradesh', 4);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int NOT NULL,
  `school_id` int NOT NULL,
  `class_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `age` int NOT NULL,
  `mobile` bigint NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `school_id`, `class_id`, `name`, `email`, `gender`, `age`, `mobile`, `address`) VALUES
(32, 1, 16, 'Ankit Singh', 'student@demo.com', 'male', 4, 12345, 'New Delhi, India'),
(33, 1, 16, 'Ankit Pathak', 'student1@demo.com', 'male', 4, 12345, 'New Delhi, India'),
(34, 1, 17, 'Ankit Garg', 'student2@demo.com', 'male', 12, 12345, 'New Delhi, India'),
(35, 1, 17, 'Amit Sharma', 'student3@demo.com', 'female', 12, 12345, 'Gurugram, India'),
(36, 1, 12, 'Aman Jain', 'student4@demo.com', 'female', 12, 12345, 'New Delhi, India'),
(37, 1, 13, 'Ankesh', 'student5@demo.com', 'male', 12, 12345, 'New Delhi, India');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `mobile` bigint NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `login_id` int NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `login_id`, `email`, `password`, `role`) VALUES
(6, 32, 'student@demo.com', '21232f297a57a5a743894a0e4a801fc3', 'student'),
(7, 34, 'student2@demo.com', '21232f297a57a5a743894a0e4a801fc3', 'student'),
(8, 35, 'student3@demo.com', '21232f297a57a5a743894a0e4a801fc3', 'student'),
(9, 36, 'student4@demo.com', '21232f297a57a5a743894a0e4a801fc3', 'student'),
(10, 37, 'student5@demo.com', '21232f297a57a5a743894a0e4a801fc3', 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_school_id` (`school_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `school_country_id` (`country`),
  ADD KEY `school_state_id` (`state`),
  ADD KEY `school_city_id` (`city`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `student_school_id` (`school_id`),
  ADD KEY `student_class_id` (`class_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `class_school_id` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `schools`
--
ALTER TABLE `schools`
  ADD CONSTRAINT `school_city_id` FOREIGN KEY (`city`) REFERENCES `city` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `school_country_id` FOREIGN KEY (`country`) REFERENCES `country` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `school_state_id` FOREIGN KEY (`state`) REFERENCES `states` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `states_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `student_class_id` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `student_school_id` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
