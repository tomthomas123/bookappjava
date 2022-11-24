-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2022 at 12:29 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `librarydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `adminname` varchar(20) NOT NULL,
  `adminusername` varchar(20) NOT NULL,
  `adminpassword` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `adminname`, `adminusername`, `adminpassword`) VALUES
(1, 'tom', 'tom123', '123@tom');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `bookname` varchar(20) NOT NULL,
  `bookauthor` varchar(20) NOT NULL,
  `bookcategory` varchar(20) NOT NULL,
  `book_rentprice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `bookname`, `bookauthor`, `bookcategory`, `book_rentprice`) VALUES
(1, 'The Art Of War', 'Sun Tzu', 'Non-fiction', 20),
(2, 'A Room of One’s Own', 'Virginia Woolf', 'Non-fiction', 30),
(3, 'The Elements of Styl', 'William Strunk', 'Non-fiction', 50),
(4, 'Nine Stories', '.D. Salinger', 'Short stories', 10),
(5, 'Mile 81', 'Stephen King', 'Short stories', 20),
(6, 'In the Penal Colony', 'Franz Kafka', 'Short stories', 30),
(7, 'Second Variety', 'Philip K. ', 'Short stories', 50),
(8, 'Animal Farm', 'George Orwell', 'Novels', 20),
(9, 'The Fifth Child', 'Doris Lessing', 'Novels', 25),
(11, 'Black Water', 'Joyce Carol Oates', 'Novels', 50),
(13, 'wingss', 'abdu j p', 'self', 20),
(14, 'wings', 'apj', 'self story', 25);

-- --------------------------------------------------------

--
-- Table structure for table `issue_book`
--

CREATE TABLE `issue_book` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `issue_date` date NOT NULL,
  `return_date` date NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issue_book`
--

INSERT INTO `issue_book` (`id`, `user_id`, `book_id`, `issue_date`, `return_date`, `amount`) VALUES
(1, 1, 2, '2022-11-02', '2022-11-04', 0),
(2, 1, 1, '2022-11-02', '2022-11-04', 0),
(3, 3, 3, '2022-11-15', '2022-11-24', 0),
(4, 4, 4, '2022-11-02', '2022-11-04', 0),
(5, 1, 5, '2022-11-02', '2022-11-03', 0),
(6, 2, 6, '2022-11-09', '2022-11-26', 0),
(7, 3, 7, '2022-11-02', '2022-11-05', 0),
(8, 4, 8, '2022-11-22', '2022-11-24', 0),
(9, 1, 9, '2022-11-02', '2022-11-04', 0),
(10, 2, 10, '2022-11-16', '2022-11-18', 0);

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`id`, `user_id`, `user_name`) VALUES
(1, 1, 'amal'),
(2, 2, 'alan'),
(3, 3, 'ajith'),
(4, 4, 'aswin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issue_book`
--
ALTER TABLE `issue_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `issue_book`
--
ALTER TABLE `issue_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `userdata`
--
ALTER TABLE `userdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
