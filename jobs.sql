-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2022 at 12:42 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobs`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `apply` varchar(255) NOT NULL,
  `qual` varchar(255) CHARACTER SET latin1 NOT NULL,
  `year` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `name`, `apply`, `qual`, `year`) VALUES
(1, 'Abhi', 'Web Developer', 'IT', '2020'),
(2, 'Ram', 'Software Developer', 'BTech CSE', '2020'),
(4, 'Rasheed', 'Frontend Developer', 'BTech', '2022'),
(5, 'Charan Rao', 'Backend Developer', 'BTech CSE', '2021'),
(6, 'Alam', 'System Engineer', 'BTech', '2021'),
(7, 'Lateef', 'Digital Engineer', 'BTECH CSE', '2019');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `Jdesc` varchar(200) NOT NULL,
  `skills` varchar(50) NOT NULL,
  `CTC` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `cname`, `position`, `Jdesc`, `skills`, `CTC`) VALUES
(1, 'Wipro', 'System Engineer', '', 'C, Java ,Python, SQL, DBMS ', '5LPA'),
(2, 'Microsoft', 'Software Developer', 'Frontend', 'Java , OOPS and Data Structure', '16LPA'),
(3, 'Google', 'Web Developer', 'Backend', 'HTML , PHP , Python , Data Science', '25LPA'),
(6, 'TCS', 'Web Developer', 'Digital Engineer', 'HTML,PHP', '12LPA'),
(7, 'Infosys', 'Software Developer', 'Fullstack', 'HTML,PHP', '12LPA');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `email` varchar(110) CHARACTER SET latin1 NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `phone_no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Name`, `email`, `password`, `phone_no`) VALUES
(1, 'Abhishek', 'abireddy150@gmail.com', '1234', '0123456789'),
(2, 'Ramesh', '192g1a0537@gmail.com', '1234', '1234567890'),
(3, 'Alam', '192g1a0533@gmail.com', '1234', '1122334455'),
(4, 'Rasheed', '192g1a0519@gmail.com', '1234', '1112223334');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
