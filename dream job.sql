-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 28, 2019 at 02:06 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job`
--

-- --------------------------------------------------------

--
-- Table structure for table `a`
--

CREATE TABLE `a` (
  `a` int(11) DEFAULT NULL,
  `b` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `createdAt` date NOT NULL DEFAULT current_timestamp(),
  `active` int(11) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id_company`, `name`, `companyname`, `country`, `state`, `city`, `contactno`, `website`, `email`, `password`, `aboutme`, `logo`, `createdAt`, `active`) VALUES
(110, 'company', 'company', 'India', 'West Bengal', 'Kolkata', '1234567890', 'fbh', 'company@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', 'dsfvdf', 'j1.jpg', '2019-10-11', 1),
(111, '77', '100', 'India', 'Delhi', 'Delhi', '9876543210', '77', 'c47@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', 'c47', 'j2.jpg', '2019-10-19', 1),
(113, 'company7', 'c7', 'India', 'Andhra Pradesh', 'Hyderabad', '9876543210', 'c7', 'company7@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', 'dfghghg', 'j3.jpg', '2019-10-22', 1),
(115, 'satish', 'd', 'India', 'West Bengal', 'Kolkata', '9876543210', 'sd', 'satish@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', 'sfd', 'j5.jpg', '2019-10-22', 1),
(117, 'company1', 'company1', 'India', 'Andhra Pradesh', 'Hyderabad', '1234567890', 'c7', 'company1@gmail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', 'ccc', 'j3.jpg', '2019-10-26', 1),
(118, 'company2', 'company2', 'India', 'Andhra Pradesh', 'Hyderabad', '7894561230', 'c7', 'company2@gmail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', 'c', '5db4938183e87.jpg', '2019-10-27', 1),
(119, 'company3', 'company3', 'India', 'Delhi', 'Delhi', '7894561230', 'c7', 'company3@gmail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', 'ccsa', '5db493f5283fd.jpg', '2019-10-27', 1);

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
  `selection_procedure` text COLLATE utf8_bin DEFAULT NULL,
  `way_to_prepare` text COLLATE utf8_bin DEFAULT NULL,
  `overall_exp` text COLLATE utf8_bin DEFAULT NULL,
  `tips_advise` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`id_experience`, `id_user`, `id_company`, `job_profile`, `selection_procedure`, `way_to_prepare`, `overall_exp`, `tips_advise`) VALUES
(8, 7, 117, 'sa', 'asd', 'dasd', 'dsfa', 'fsd');

-- --------------------------------------------------------

--
-- Table structure for table `job_post`
--

CREATE TABLE `job_post` (
  `id_jobpost` int(11) NOT NULL,
  `id_company` int(11) NOT NULL,
  `jobtitle` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `minimumsalary` int(255) NOT NULL,
  `maximumsalary` int(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `createdat` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_post`
--

INSERT INTO `job_post` (`id_jobpost`, `id_company`, `jobtitle`, `description`, `minimumsalary`, `maximumsalary`, `experience`, `qualification`, `createdat`) VALUES
(116, 111, 'dsvhd', '<p>dfhyu</p>', 4000, 5000, '6', '36', '2019-10-20'),
(118, 115, 'hgkj', '<p>uku</p>', 10000, 20000, '2', '2', '2019-10-22'),
(119, 113, 'kncslkdfn', '<p>dfvdflkjm</p>', 1022, 2255, '5', '55', '2019-10-24'),
(120, 113, '1111', '<p>1111</p>', 1000, 2000, '45', 'fldk', '2019-10-24'),
(121, 113, 'jdhf', '<p><strong>ckjdjkkfkl</strong></p>', 12345, 23568, '25', 'sjhdj', '2019-10-24'),
(124, 117, 'e', '                      r\\r\\n                    ', 11111, 22222, '34', '4', '2019-10-27');

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
  `createdAt` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mailbox`
--

INSERT INTO `mailbox` (`id_mailbox`, `id_fromuser`, `fromuser`, `id_touser`, `subject`, `message`, `createdAt`) VALUES
(1, 101, 'company', 1, 'hgcvnhjbnm mn', '<p>vjhnmgvjhbmn</p>', '2019-10-13'),
(3, 2, 'user', 102, 'dsfc x', '<p>sdcd</p>', '2019-10-14'),
(4, 2, 'user', 102, 'zxcvbbn', '<p>ASDfghh</p>', '2019-10-15'),
(5, 109, 'company', 7, 'you appliation got accepted', '', '2019-10-19');

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
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
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
  `country_id` int(11) NOT NULL DEFAULT 1
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
  `address` text DEFAULT NULL,
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
  `active` int(11) NOT NULL DEFAULT 0,
  `aboutme` text DEFAULT NULL,
  `skills` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `firstname`, `lastname`, `email`, `password`, `address`, `city`, `state`, `contactno`, `qualification`, `stream`, `passingyear`, `dob`, `age`, `designation`, `resume`, `hash`, `active`, `aboutme`, `skills`) VALUES
(2, 'Roshan', 'Lal Sahu', 'roshan.dakshana16@gmail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', 'sdfc', 'cfds', 'dfcd', '1234567890', 'btech', 'cse', '2020-04-30', '1997-08-10', '21', 'fdzv', '5bc49da8c4a2f.pdf', 'b689a43e636d0c91ba24761544ab7c33', 1, 'i am roshan studying in nitk.', 'acdac'),
(3, 'onkar ', 'kumar', 'kumar.onkar7@gmail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', 'cdx', 'scx', 'cdzx', '1234569874', 'btech', 'cse', '2020-10-30', '1998-09-15', '20', 'asx', '5bc2c8de662ba.pdf', '034b48b90d441d1877ea2c08750fdddb', 1, 'i m onkar.', 'afcx'),
(4, 'fname 1', 'lname 1', 'flname1@mail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', 'devfsdfv', 'dsfvsdv', 'dsfvs', '1236521362', 'deas', 'dxdq', '2021-10-30', '1997-08-10', '21', 'fvc', '5bc46d739e88e.pdf', '434c4f9bf67c07709f188d7374deae8b', 0, 'i\'m fname lname 1.', 'dfvs'),
(5, 'fyguhi', 'yuhijk', 'oleg@test.com', 'MjdmNzFlODJkN2YzNjk2ZDBiZjQyZGMzODkwNTEwMDk=', 'UJSIHUIhash', 'Amravati', 'Maharashtra', '8237480392', 'M.Tech.', 'CSE', '0207-08-01', '1995-08-10', '23', '', '5bc6f9bf75d63.pdf', 'b54427626c63b622aaccfab05e493726', 1, 'fhgjhgfhgjh', 'kUCH NHI ATA'),
(6, 'fname 10', 'lname 10', 'flname10@mail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', ',d,mnvkvc', 'lkmvc', 'kdjsn,mvdj', '1231254632', 'sdvgf', 'advszcv', '2020-10-20', '6325-08-10', '-4307', 'cdknjzc,mv', '5bc70439bd344.pdf', '96e0440c00737090aab793f5ef6a271c', 1, 'this is fname lname 10', 'dckjzxhnckj'),
(7, 'satish', 'LKSD', 'adsatish47@gmail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', 'awef', 'arf', 'arfearf', '7894561230', 'btech', 'rem', '2019-10-16', '', '', 'erfjl', '5daae7df0618f.', '066ed5c9a19add31be50ad85ebb593a3', 1, 'sfdklmsf', 'aefn'),
(8, 'cc', 'c', 'candidate1@gmail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', 'sgb', 'sfgb', 'fdg', '7894561230', 'dsf', 'fd', '2015-04-05', '2000-04-01', '19', 'dfff', '5dabef96db636.pdf', 'b91754a9c250f5d61c596ae3bdaedb36', 1, 'sdf', 'df');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `a`
--
ALTER TABLE `a`
  ADD KEY `a` (`a`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `apply_job_post`
--
ALTER TABLE `apply_job_post`
  ADD PRIMARY KEY (`id_apply`),
  ADD KEY `fk_user` (`id_user`),
  ADD KEY `fk_company` (`id_company`);

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
  ADD PRIMARY KEY (`id_experience`),
  ADD KEY `fk_exp_company` (`id_company`),
  ADD KEY `fk_exp_user` (`id_user`);

--
-- Indexes for table `job_post`
--
ALTER TABLE `job_post`
  ADD PRIMARY KEY (`id_jobpost`),
  ADD KEY `fk_comapny` (`id_company`);

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
  MODIFY `id_apply` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id_company` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `id_experience` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `job_post`
--
ALTER TABLE `job_post`
  MODIFY `id_jobpost` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `mailbox`
--
ALTER TABLE `mailbox`
  MODIFY `id_mailbox` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `a`
--
ALTER TABLE `a`
  ADD CONSTRAINT `a_ibfk_1` FOREIGN KEY (`a`) REFERENCES `admin` (`id_admin`);

--
-- Constraints for table `apply_job_post`
--
ALTER TABLE `apply_job_post`
  ADD CONSTRAINT `fk_comapny_jobpost` FOREIGN KEY (`id_company`) REFERENCES `company` (`id_company`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_company` FOREIGN KEY (`id_company`) REFERENCES `company` (`id_company`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `experience`
--
ALTER TABLE `experience`
  ADD CONSTRAINT `fk_exp_company` FOREIGN KEY (`id_company`) REFERENCES `company` (`id_company`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_exp_user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE;

--
-- Constraints for table `job_post`
--
ALTER TABLE `job_post`
  ADD CONSTRAINT `fk_comapny` FOREIGN KEY (`id_company`) REFERENCES `company` (`id_company`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
