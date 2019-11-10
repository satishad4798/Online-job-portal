-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 30, 2019 at 08:54 PM
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

--
-- Dumping data for table `apply_job_post`
--

INSERT INTO `apply_job_post` (`id_apply`, `id_jobpost`, `id_company`, `id_user`, `status`) VALUES
(31, 125, 117, 7, 2);

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
  `logo` varchar(255) NOT NULL DEFAULT 'j7.jpg',
  `createdAt` date NOT NULL DEFAULT current_timestamp(),
  `active` int(11) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id_company`, `name`, `companyname`, `country`, `state`, `city`, `contactno`, `website`, `email`, `password`, `aboutme`, `logo`, `createdAt`, `active`) VALUES
(110, 'company', 'company', 'India', 'West Bengal', 'Kolkata', '1234567890', 'fbh', 'company@gmail.com', 'YjdlNDhmMTk4NjFhNDNjNGM2MDdhOGFlZTBiY2M3Mjg=', 'dsfvdf', 'j1.jpg', '2019-10-11', 1),
(117, 'company1', 'company1', 'India', 'Andhra Pradesh', 'Hyderabad', '1234567890', 'c7', 'company1@gmail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', 'ccc', 'j3.jpg', '2019-10-26', 1),
(118, 'company2', 'company2', 'India', 'Andhra Pradesh', 'Hyderabad', '7894561230', 'c7', 'company2@gmail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', 'c', '5db4938183e87.jpg', '2019-10-27', 1),
(119, 'company3', 'company3', 'India', 'Delhi', 'Delhi', '7894561230', 'c7', 'company3@gmail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', 'ccsa', '5db493f5283fd.jpg', '2019-10-27', 1),
(122, 'Pankaj kumar', 'Amazon', 'India', 'Karnataka', 'Mangalore', '7894561230', 'www.amazon.com', 'amazon@gmail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', 'sd', '5db9e53b5449b.jpg', '2019-10-31', 1),
(123, 'Satish', 'Flipkart', 'India', 'Andhra Pradesh', 'Hyderabad', '7894561230', 'www.flipkart.com', 'flipkart@gmail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', 'online shopping ', '5db9e6f0f31c1.jpg', '2019-10-31', 1);

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
(125, 117, 'company1', '                      \\r\\n                    fserf', 1111, 12222, '3', '3', '2019-10-31'),
(126, 122, 'amazon-codefundo', 'platform to enhance your software skill \\r\\n                    ', 20000, 80000, '2', 'btech', '2019-10-31'),
(127, 122, 'amazon-databse-manager', 'database management                      \\r\\n                    ', 20000, 60000, '3', 'btech', '2019-10-31'),
(128, 123, 'shopping databse management ', '    managing database', 20000, 80000, '3', 'btech', '2019-10-31'),
(129, 123, 'flipkart-web developement', '                      web devlopement\\r\\n                    ', 30000, 70000, '2', 'btech', '2019-10-31'),
(130, 118, 'job 1 bty company 2', 'dbms                    ', 11111, 22233, '3', 'btech', '2019-10-31'),
(131, 118, 'job 2 by company2', '       analyst          \\r\\n                    ', 22222, 300000, '3', 'btech', '2019-10-31'),
(132, 119, 'job 3 by company 3', ' android development           \\r\\n                    ', 20000, 30000, '1', 'btech', '2019-10-31');

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

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `member_id` int(8) NOT NULL,
  `member_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `member_password` varchar(64) NOT NULL,
  `member_email` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`member_id`, `member_name`, `member_password`, `member_email`) VALUES
(1, 'vincy', 'e2f3088a505f1ed02e40f5b62550f291', 'user@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_temp`
--

CREATE TABLE `password_reset_temp` (
  `email` varchar(250) NOT NULL,
  `key` varchar(250) NOT NULL,
  `expDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `password_reset_temp`
--

INSERT INTO `password_reset_temp` (`email`, `key`, `expDate`) VALUES
('adsatish47@gmail.com', '768e78024aa8fdb9b8fe87be86f647452e4dad0209', '2019-10-29 15:55:46'),
('adsatish47@gmail.com', '768e78024aa8fdb9b8fe87be86f647457097adf400', '2019-10-29 15:56:57'),
('adsatish47@gmail.com', '768e78024aa8fdb9b8fe87be86f64745ba6dd54c16', '2019-10-29 15:58:08'),
('adsatish47@gmail.com', '768e78024aa8fdb9b8fe87be86f6474579f114bad7', '2019-10-29 15:58:37'),
('adsatish47@gmail.com', '768e78024aa8fdb9b8fe87be86f647458de93f14f3', '2019-10-29 15:59:49'),
('adsatish47@gmail.com', '768e78024aa8fdb9b8fe87be86f647453c0a347a39', '2019-10-29 16:00:21'),
('adsatish47@gmail.com', '768e78024aa8fdb9b8fe87be86f64745ca7d766282', '2019-10-29 16:00:30'),
('adsatish47@gmail.com', '768e78024aa8fdb9b8fe87be86f647457697a76aee', '2019-10-29 19:57:43');

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
  `active` int(11) NOT NULL DEFAULT 1,
  `aboutme` text DEFAULT NULL,
  `skills` text DEFAULT NULL,
  `security_question` varchar(20) DEFAULT NULL,
  `security_answer` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `firstname`, `lastname`, `email`, `password`, `address`, `city`, `state`, `contactno`, `qualification`, `stream`, `passingyear`, `dob`, `age`, `designation`, `resume`, `hash`, `active`, `aboutme`, `skills`, `security_question`, `security_answer`) VALUES
(2, 'Roshan', 'Lal Sahu', 'roshan.dakshana16@gmail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', 'sdfc', 'cfds', 'dfcd', '1234567890', 'btech', 'cse', '2020-04-30', '1997-08-10', '21', 'fdzv', '5bc49da8c4a2f.pdf', 'b689a43e636d0c91ba24761544ab7c33', 1, 'i am roshan studying in nitk.', 'acdac', '1', '1'),
(3, 'onkar ', 'kumar', 'kumar.onkar7@gmail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', 'cdx', 'scx', 'cdzx', '1234569874', 'btech', 'cse', '2020-10-30', '1998-09-15', '20', 'asx', '5bc2c8de662ba.pdf', '034b48b90d441d1877ea2c08750fdddb', 1, 'i m onkar.', 'afcx', '1', '1'),
(4, 'fname 1', 'lname 1', 'flname1@mail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', 'devfsdfv', 'dsfvsdv', 'dsfvs', '1236521362', 'deas', 'dxdq', '2021-10-30', '1997-08-10', '21', 'fvc', '5bc46d739e88e.pdf', '434c4f9bf67c07709f188d7374deae8b', 0, 'i\'m fname lname 1.', 'dfvs', '1', '1'),
(5, 'fyguhi', 'yuhijk', 'oleg@test.com', 'MjdmNzFlODJkN2YzNjk2ZDBiZjQyZGMzODkwNTEwMDk=', 'UJSIHUIhash', 'Amravati', 'Maharashtra', '8237480392', 'M.Tech.', 'CSE', '0207-08-01', '1995-08-10', '23', '', '5bc6f9bf75d63.pdf', 'b54427626c63b622aaccfab05e493726', 1, 'fhgjhgfhgjh', 'kUCH NHI ATA', '1', '1'),
(6, 'fname 10', 'lname 10', 'flname10@mail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', ',d,mnvkvc', 'lkmvc', 'kdjsn,mvdj', '1231254632', 'sdvgf', 'advszcv', '2020-10-20', '6325-08-10', '-4307', 'cdknjzc,mv', '5bc70439bd344.pdf', '96e0440c00737090aab793f5ef6a271c', 1, 'this is fname lname 10', 'dckjzxhnckj', '1', '1'),
(7, 'satish', 'LKSD', 'adsatish47@gmail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', 'awef', 'arf', 'arfearf', '7894561230', 'btech', 'rem', '2019-10-16', '', '', 'erfjl', '5bc70439bd344.pdf', '066ed5c9a19add31be50ad85ebb593a3', 1, 'sfdklmsf', 'aefn', '1', 'satish'),
(8, 'cc', 'c', 'candidate1@gmail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', 'sgb', 'sfgb', 'fdg', '7894561230', 'dsf', 'fd', '2015-04-05', '2000-04-01', '19', 'dfff', '5dabef96db636.pdf', 'b91754a9c250f5d61c596ae3bdaedb36', 1, 'sdf', 'df', '1', '1'),
(9, 'fdg', 'dfg', 'ads', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', '54', '45', '65', '7894561234', 'dfg', 'dfgdf', '2019-10-11', '2001-10-11', '18', '\\7\\', '5db6f6dd230b9.pdf', '43a1951efd14be7a26e48ddd23c96301', 0, 'hjgh', '65', '1', '1'),
(10, 'satish securtoyi', 'fd', 'security@gmail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', '784', '454', '65', '1234567890', 'rd', 'fd', '2019-10-16', '1994-09-28', '25', 'satish', '5db8074ed7808.pdf', '7bbeaba92cc79fdf3b1e1733ba3d6c89', 0, 'dsfdsf', '654', '1', '1'),
(11, 'check', 'c', 'check@gmail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', 'rf', 'erf', 're', '1234567890', 'ds', 'sd', '2019-10-11', '1999-10-07', '20', 'tgr', '5db80850d5d1a.pdf', '7220144be490b0301d3591af9032c746', 0, 'ds', 'ref', '2', '1'),
(12, 'ddddddd', 'gjh', 'can@gmail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', '5', '66', 'gyu', '1234567890', 'hjgj', 'hkjl', '', '1992-10-08', '27', 'guy', '5db808fec4c06.pdf', 'e6e6a701a15bbc74dbd97f220939b0e5', 1, 'dsf', 'ygu', '4', 'pyar pyar'),
(13, 'sadf', 'dsf', 'sdf@dsfd.com', 'ODY2MTA3YjdkOTk0MTg1ZWMxMjFhOGQ5MWExNWQ4OTY=', 'fdg', 'sdgfg', 'dfsg', '2789456133', 'dfs', 'dfsg', '2019-10-17', '1999-10-06', '20', '111', '5db9d6b0a0cea.pdf', '64a20d107b1a3b6ce8bdd87ac3f17998', 0, 'dfvd', 'fdsg', '2', 'dsf'),
(14, 'sad', 'dsad', 'asd@gmail.com', 'NTUwZGUzMTM4ZGJkNjMwMDJjZDQwZDI1YmRiOWNkMTg=', '2', 'ewrew', 'we', '9854123545', '22', '2', '2222-02-02', '1998-03-03', '21', 'ew', '5db9d8153d27e.pdf', '3f6ebcd359c25851f9dbd73c5578106c', 0, 'sfsdf', 'ew', '2', 'ewr'),
(15, 'pramod', 'refe', 'pramodbb1998@gmail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', '213', '213', '321', '9854123545', '32', '324', '6666-06-06', '1998-04-04', '21', '321', '5db9d8f8c3ed6.pdf', '78b703521de16cc578b296b3dc83e895', 0, 'sdfa', '321', '1', '1'),
(16, 'sam', 'ew', 'sam@gmail.com', 'ZTM4OGYwMmY3NTBlNjVlYmJhOTVhYjk0OTNjZGEwMWU=', 'e', 'r', 'ert', '7894561230', '323', '34', '2222-03-03', '1998-03-04', '21', 'ter', '5db9da208fd22.', 'ad37db546ae3a25a16303583b7571325', 1, 'asd', 'ert', '1', '1');

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
  MODIFY `id_apply` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id_company` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

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
  MODIFY `id_jobpost` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

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
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
