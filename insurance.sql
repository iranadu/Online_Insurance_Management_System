-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2018 at 04:04 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `insurance`
--

-- --------------------------------------------------------

--
-- Table structure for table `policy`
--

CREATE TABLE `policy` (
  `policy_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `discription` text NOT NULL,
  `policy_type` varchar(20) NOT NULL,
  `cdate` date NOT NULL,
  `ctime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `policy`
--

INSERT INTO `policy` (`policy_id`, `title`, `discription`, `policy_type`, `cdate`, `ctime`) VALUES
(10, 'Day Care Surgery expenses', ' The SLI Annual Medical Plan also consists of a unique No Claim Bonus scheme, which increases the basic sum insured by 5%, up to a maximum of 50%, for every claim free year.', 'life', '2018-06-02', '18:31:29'),
(13, 'Free road side assistance service', 'This is why our policies are designed to make your life easier by offering you far more than just motor insurance', 'motor', '2018-06-02', '18:29:57'),
(14, 'Cover for buildings and fixtures.', 'This is an insurance solution designed to cater to the insurance requirements of planters and tea factory owners', 'property', '2018-06-02', '18:30:37'),
(15, 'Civil engineering work', 'This policy provides protection against risks related to manufacturing plants and associated machinery', 'property', '2018-06-02', '18:31:02'),
(16, 'SLI Comprehensive Plan', 'The SLI Comprehensive plan provides stable financial support in the event you need to reimburse your medical bills under a pre-specified maximum during a hospital stay', 'life', '2018-06-02', '19:00:07'),
(18, 'Dedicated and proactive customer care team.', 'This is why our policies are designed to make your life easier by offering you far more than just motor insurance', 'motor', '2018-06-02', '19:04:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` varchar(15) NOT NULL,
  `password` varchar(20) NOT NULL,
  `user_type` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `tel` int(10) NOT NULL,
  `cdate` date NOT NULL,
  `ctime` time NOT NULL,
  `lon` double NOT NULL,
  `lat` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `password`, `user_type`, `name`, `email`, `address`, `tel`, `cdate`, `ctime`, `lon`, `lat`) VALUES
('a-100200', '123', 'Agent', 'Sajith Pathirana', 'sajith@gmail.com', 'Mattakkuliya ,Colombo 10', 112896352, '2018-06-02', '18:11:23', 79.89827885742193, 6.864385581534593),
('a-100201', '123', 'Agent', 'Mayntha Perera', 'mayantha@gmail.com', 'Madola,Awissawella.', 114365988, '2018-06-02', '18:33:50', 79.89827885742193, 6.866771607849379),
('c-100200', '123', 'Client', 'Sajitha Athaudha', 'sajitha@gmail.com', 'Pitipana,Homagama.', 775698423, '2018-06-02', '18:35:37', 79.9243713867188, 6.936301959406526),
('c-100201', '123', 'Client', 'Lasantha Wickramasinghe', 'lasantha@gmail.com', 'Kadugannawa,Kandy', 725566987, '2018-06-02', '18:36:25', 79.90274205322271, 6.94039166144653),
('c-100203', '123', 'Client', 'Tharindhu Lakshan', 'tharindhu@gmail.com', 'No 106, 18th Lane, isurupura, malabe', 770179403, '2018-06-02', '18:57:07', 79.9899460327149, 6.931871408787362),
('m-100200', '123', 'Manager', 'Thilanka Sanjaya ', 'thilanka@gmail.com', 'Malabe,Kaduwela', 712896853, '2018-06-01', '10:17:26', 79.92025151367193, 6.897107183526455);

-- --------------------------------------------------------

--
-- Table structure for table `users_policy`
--

CREATE TABLE `users_policy` (
  `user_id` varchar(15) NOT NULL,
  `policy_id` int(11) NOT NULL,
  `cdate` date NOT NULL,
  `ctime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_policy`
--

INSERT INTO `users_policy` (`user_id`, `policy_id`, `cdate`, `ctime`) VALUES
('c-100200', 10, '2018-06-02', '19:21:44'),
('c-100200', 13, '2018-06-02', '19:21:44'),
('c-100200', 14, '2018-06-02', '19:21:44'),
('c-100201', 10, '2018-06-02', '19:33:43'),
('c-100201', 13, '2018-06-02', '19:33:43'),
('c-100201', 14, '2018-06-02', '19:33:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `policy`
--
ALTER TABLE `policy`
  ADD PRIMARY KEY (`policy_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_policy`
--
ALTER TABLE `users_policy`
  ADD PRIMARY KEY (`user_id`,`policy_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `policy`
--
ALTER TABLE `policy`
  MODIFY `policy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
