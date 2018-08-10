-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 10, 2018 at 06:16 AM
-- Server version: 5.7.22
-- PHP Version: 7.1.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_members`
--

CREATE TABLE `blog_members` (
  `memberID` int(11) UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_members`
--

INSERT INTO `blog_members` (`memberID`, `username`, `password`, `email`) VALUES
(1, 'admin', '$2y$10$wJxa1Wm0rtS2BzqKnoCPd.7QQzgu7D/aLlMR5Aw3O.m9jx3oRJ5R2', 'demo@demo.com'),
(2, 'admin', '$2y$10$1jFW3v03W9lOEYl1vr9NletWo9B9I6G.MJgTainbeJWm1pfNJeMo6', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `postID` int(11) UNSIGNED NOT NULL,
  `postTitle` varchar(255) DEFAULT NULL,
  `postImage` text NOT NULL,
  `postDesc` text,
  `postCont` text,
  `postDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`postID`, `postTitle`, `postImage`, `postDesc`, `postCont`, `postDate`) VALUES
(21, 'Data Analysis', 'http://localhost/blog/images/display/2.png', '<p>Data Analysis service</p>', '<p><img src=\"../images/Wraps.jpg\" alt=\"\" width=\"3024\" height=\"4032\" />Boranet provides leading help desk services that are quick, easy and convenient. That\'s how we like it and that\'s how you want it.</p>', '2018-08-09 18:37:06'),
(22, 'SEO Service', 'http://localhost/blog/images/display/4.png', 'Information storage and transmission are vital to business. Product specs, financial data, and other information pertaining to your business should always be accessible.\r\n', '<p><span style=\"color: #999999; font-family: Oxygen, sans-serif; font-size: 16px; background-color: rgba(0, 0, 0, 0.1);\">Information storage and transmission are vital to business. Product specs, financial data, and other information pertaining to your business should always be accessible.</span></p>\r\n<p><span style=\"color: #999999; font-family: Oxygen, sans-serif; font-size: 16px; background-color: rgba(0, 0, 0, 0.1);\">Information storage and transmission are vital to business. Product specs, financial data, and other information pertaining to your business should always be accessible.</span></p>', '2018-08-09 21:28:42'),
(23, 'E-COMMERCE (B2B & B2C)', 'http://localhost/blog/images/display/3.png', 'BIGPOS provide', '<p><span style=\"color: #999999; font-family: Oxygen, sans-serif; font-size: 16px; background-color: rgba(0, 0, 0, 0.1);\">BIGPOS provides automation solutions for supermarket and grocery stores of all sizes. BIGPOS enables users to control their operations from the point of sale&nbsp;</span><span style=\"background-color: rgba(0, 0, 0, 0.1); color: #999999; font-family: Oxygen, sans-serif; font-size: 16px;\">BIGPOS provides automation solutions for supermarket and grocery stores of all sizes. BIGPOS enables users to control their operations from the point of sale</span></p>', '2018-08-09 21:30:55'),
(24, 'HELP DESK NETWORK ', 'http://localhost/blog/images/display/1.jpg', '<p>New York metropolita&nbsp;&nbsp;metropolita</p>', '<p><span style=\"color: #999999; font-family: Oxygen, sans-serif; font-size: 16px; background-color: rgba(0, 0, 0, 0.1);\">Boranet provides leading help desk services that are quick, easy and convenient. That\'s how we like it and that\'s how you want it.That\'s how we like it and that\'s how you want it.</span></p>', '2018-08-09 21:31:29'),
(25, 'WEB DESIGN', 'http://localhost/blog/images/display/9.png', '<p>SEO Team members work endlessl</p>', '<p><span style=\"color: #999999; font-family: Oxygen, sans-serif; font-size: 16px; background-color: rgba(0, 0, 0, 0.1);\">We help our clients optimize their websites on search engines, strengthening their online presence.</span></p>', '2018-08-09 21:48:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_members`
--
ALTER TABLE `blog_members`
  ADD PRIMARY KEY (`memberID`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`postID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_members`
--
ALTER TABLE `blog_members`
  MODIFY `memberID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `postID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
