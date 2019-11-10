-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2018 at 06:07 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ita`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `apply_job_post`
--

CREATE TABLE `apply_job_post` (
  `id_apply` int(11) NOT NULL,
  `id_jobpost` int(11) NOT NULL,
  `id_company` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apply_job_post`
--

INSERT INTO `apply_job_post` (`id_apply`, `id_jobpost`, `id_company`, `id_user`, `status`) VALUES
(1, 101, 101, 1, 2),
(3, 101, 101, 2, 2),
(6, 104, 103, 6, 2),
(7, 107, 106, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `state_id`) VALUES
(1, 'Hyderabad', 1),
(2, 'Delhi', 2),
(3, 'Bangalore', 3),
(4, 'Mangalore', 3),
(5, 'Kolkata', 4),
(6, 'Mumbai', 5),
(7, 'Pune', 5);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id_company` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `companyname` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `contactno` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `aboutme` varchar(255) DEFAULT NULL,
  `logo` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` int(11) NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id_company`, `name`, `companyname`, `country`, `state`, `city`, `contactno`, `website`, `email`, `password`, `aboutme`, `logo`, `createdAt`, `active`) VALUES
(102, 'name 1', 'company 1', 'India', 'Karnataka', 'Bangalore', '1254698763', 'company1.com', 'company1@mail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', 'Company one - jdlfndlkfmlkdsv', '5bc2c083dd29e.jpg', '2018-10-14 04:05:23', 1),
(103, 'name 2', 'company 2', 'India', 'Karnataka', 'Mangalore', '1236547890', 'company2.com', 'company2@mail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', 'this is the company 2', '5bc42a454557c.jpg', '2018-10-15 05:48:53', 1),
(104, 'name 3', 'company 3', 'India', 'Andhra Pradesh', 'Hyderabad', '1203654789', 'company3.com', 'company3@mail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', 'this is company 3', '5bc42ace1996b.jpg', '2018-10-15 05:51:10', 1),
(105, 'name 4', 'company 4', 'India', 'Delhi', 'Delhi', '1254639875', 'company4.com', 'company4@mail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', 'this is company 4', '5bc42b43d8ca5.jpg', '2018-10-15 05:53:07', 1),
(106, 'name 5', 'company 5', 'India', 'West Bengal', 'Kolkata', '1254632569', 'company5.com', 'company5@mail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', 'this is company 5', '5bc42b92e5492.jpg', '2018-10-15 05:54:26', 1),
(107, 'name 6', 'company 6', 'India', 'Maharashtra', 'Mumbai', '3265145879', 'company6.com', 'company6@mail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', 'this is company 6', '5bc42bf06ca63.jpg', '2018-10-15 05:56:00', 1),
(108, 'name 7', 'company 7', 'India', 'Maharashtra', 'Pune', '3265145879', 'company7.com', 'company7@mail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', 'this is company 7', '5bc42c2ae9d49.jpg', '2018-10-15 05:56:58', 1);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `sortname` varchar(3) NOT NULL,
  `name` varchar(150) NOT NULL,
  `phonecode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `sortname`, `name`, `phonecode`) VALUES
(101, 'IN', 'India', 91);

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `id_experience` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_company` int(11) DEFAULT NULL,
  `job_profile` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `selection_procedure` text COLLATE utf8_bin,
  `way_to_prepare` text COLLATE utf8_bin,
  `overall_exp` text COLLATE utf8_bin,
  `tips_advise` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`id_experience`, `id_user`, `id_company`, `job_profile`, `selection_procedure`, `way_to_prepare`, `overall_exp`, `tips_advise`) VALUES
(1, 2, 102, 'abc', '<p>adgsfgbfgb</p>', 'sdfgvfsbgf', 'gvfxbgdfbf', 'sfgvbfvb'),
(2, 6, 103, 'asdcdvdsv', '<p>dfcvdv</p>', 'cdzvdsvdscv', 'vdszv ', 'dsvd scv'),
(3, 2, 102, 'efvsdzcbfx', '<p>sfgvbxvb</p>', 'fxgbdfxfv', 'fxfbv ', 'bfxv'),
(4, 2, 0, '1=1', '', '', '', ''),
(7, 2, 106, 'njjkm,', '<p>njhbknmlk.,</p>', 'njkuihbjknl', 'nhjb', 'cffygvhjbk');

-- --------------------------------------------------------

--
-- Table structure for table `job_post`
--

CREATE TABLE `job_post` (
  `id_jobpost` int(11) NOT NULL,
  `id_company` int(11) NOT NULL,
  `jobtitle` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `minimumsalary` varchar(255) NOT NULL,
  `maximumsalary` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `createdat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_post`
--

INSERT INTO `job_post` (`id_jobpost`, `id_company`, `jobtitle`, `description`, `minimumsalary`, `maximumsalary`, `experience`, `qualification`, `createdat`) VALUES
(104, 103, 'job 1 by company 2', '<p>this is job post-1 by company 1.</p>', '2365', '6521', '1', 'sdfdbgcnv', '2018-10-15 06:01:18'),
(105, 104, 'job 1 by company 3', '<p>this is job post-1 created by company 3</p>', '3264', '1254', '3', 'iufh', '2018-10-15 06:02:11'),
(106, 105, 'job 1 by company 4', '<p>this is job post-1 created by company 4</p>', '6520', '1236', '3', 'wedf', '2018-10-15 06:03:25'),
(107, 106, 'job 1 by company 5', '<p>this is job post-1 created by company 5</p>', '12265', '52361', '4', 'ghkmb', '2018-10-15 06:04:31'),
(108, 107, 'job 1 by company 6', '<p>this is job post-1 created by company 6.</p>', '1236', '2365', '5', 'hgfd', '2018-10-15 06:05:49'),
(109, 108, 'job 1 by company 7', '<p>this is job post-1 created by company 7.</p>', '4561', '5647', '6', 'fhgbcn', '2018-10-15 06:06:43');

-- --------------------------------------------------------

--
-- Table structure for table `mailbox`
--

CREATE TABLE `mailbox` (
  `id_mailbox` int(11) NOT NULL,
  `id_fromuser` int(11) NOT NULL,
  `fromuser` varchar(255) NOT NULL,
  `id_touser` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mailbox`
--

INSERT INTO `mailbox` (`id_mailbox`, `id_fromuser`, `fromuser`, `id_touser`, `subject`, `message`, `createdAt`) VALUES
(1, 101, 'company', 1, 'hgcvnhjbnm mn', '<p>vjhnmgvjhbmn</p>', '2018-10-13 10:28:11'),
(3, 2, 'user', 102, 'dsfc x', '<p>sdcd</p>', '2018-10-14 04:20:32'),
(4, 2, 'user', 102, 'zxcvbbn', '<p>ASDfghh</p>', '2018-10-15 16:46:09');

-- --------------------------------------------------------

--
-- Table structure for table `reply_mailbox`
--

CREATE TABLE `reply_mailbox` (
  `id_reply` int(11) NOT NULL,
  `id_mailbox` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `usertype` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reply_mailbox`
--

INSERT INTO `reply_mailbox` (`id_reply`, `id_mailbox`, `id_user`, `usertype`, `message`, `createdAt`) VALUES
(1, 1, 1, 'user', '', '2018-10-14 04:12:19'),
(2, 1, 1, 'user', '<p>x xzxzx</p>', '2018-10-14 04:12:28'),
(3, 4, 2, 'user', '', '2018-10-15 17:40:58'),
(4, 3, 102, 'company', '<p>dgfvggnhb</p>', '2018-11-01 16:02:02');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`) VALUES
(1, 'Andhra Pradesh', 101),
(2, 'Delhi', 101),
(3, 'Karnataka', 101),
(4, 'West Bengal', 101),
(5, 'Maharashtra', 101);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `contactno` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `stream` varchar(255) DEFAULT NULL,
  `passingyear` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `resume` varchar(255) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '0',
  `aboutme` text,
  `skills` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `firstname`, `lastname`, `email`, `password`, `address`, `city`, `state`, `contactno`, `qualification`, `stream`, `passingyear`, `dob`, `age`, `designation`, `resume`, `hash`, `active`, `aboutme`, `skills`) VALUES
(2, 'Roshan', 'Lal Sahu', 'roshan.dakshana16@gmail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', 'sdfc', 'cfds', 'dfcd', '1234567890', 'btech', 'cse', '2020-04-30', '1997-08-10', '21', 'fdzv', '5bc49da8c4a2f.pdf', 'b689a43e636d0c91ba24761544ab7c33', 1, 'i am roshan studying in nitk.', 'acdac'),
(3, 'onkar ', 'kumar', 'kumar.onkar7@gmail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', 'cdx', 'scx', 'cdzx', '1234569874', 'btech', 'cse', '2020-10-30', '1998-09-15', '20', 'asx', '5bc2c8de662ba.pdf', '034b48b90d441d1877ea2c08750fdddb', 1, 'i m onkar.', 'afcx'),
(4, 'fname 1', 'lname 1', 'flname1@mail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', 'devfsdfv', 'dsfvsdv', 'dsfvs', '1236521362', 'deas', 'dxdq', '2021-10-30', '1997-08-10', '21', 'fvc', '5bc46d739e88e.pdf', '434c4f9bf67c07709f188d7374deae8b', 0, 'i\'m fname lname 1.', 'dfvs'),
(5, 'fyguhi', 'yuhijk', 'oleg@test.com', 'MjdmNzFlODJkN2YzNjk2ZDBiZjQyZGMzODkwNTEwMDk=', 'UJSIHUIhash', 'Amravati', 'Maharashtra', '8237480392', 'M.Tech.', 'CSE', '0207-08-01', '1995-08-10', '23', '', '5bc6f9bf75d63.pdf', 'b54427626c63b622aaccfab05e493726', 1, 'fhgjhgfhgjh', 'kUCH NHI ATA'),
(6, 'fname 10', 'lname 10', 'flname10@mail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', ',d,mnvkvc', 'lkmvc', 'kdjsn,mvdj', '1231254632', 'sdvgf', 'advszcv', '2020-10-20', '6325-08-10', '-4307', 'cdknjzc,mv', '5bc70439bd344.pdf', '96e0440c00737090aab793f5ef6a271c', 1, 'this is fname lname 10', 'dckjzxhnckj');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `apply_job_post`
--
ALTER TABLE `apply_job_post`
  ADD PRIMARY KEY (`id_apply`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id_company`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id_experience`);

--
-- Indexes for table `job_post`
--
ALTER TABLE `job_post`
  ADD PRIMARY KEY (`id_jobpost`);

--
-- Indexes for table `mailbox`
--
ALTER TABLE `mailbox`
  ADD PRIMARY KEY (`id_mailbox`);

--
-- Indexes for table `reply_mailbox`
--
ALTER TABLE `reply_mailbox`
  ADD PRIMARY KEY (`id_reply`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `apply_job_post`
--
ALTER TABLE `apply_job_post`
  MODIFY `id_apply` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id_company` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `id_experience` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `job_post`
--
ALTER TABLE `job_post`
  MODIFY `id_jobpost` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `mailbox`
--
ALTER TABLE `mailbox`
  MODIFY `id_mailbox` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reply_mailbox`
--
ALTER TABLE `reply_mailbox`
  MODIFY `id_reply` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
