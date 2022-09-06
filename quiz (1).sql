-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2020 at 06:20 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.2.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `choices`
--

CREATE TABLE `choices` (
  `choice1` text DEFAULT NULL,
  `choice2` text DEFAULT NULL,
  `choice3` text DEFAULT NULL,
  `choice4` text DEFAULT NULL,
  `q_no` int(11) NOT NULL,
  `correct` text NOT NULL,
  `level` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `choices`
--

INSERT INTO `choices` (`choice1`, `choice2`, `choice3`, `choice4`, `q_no`, `correct`, `level`) VALUES
('hypertext markup language', 'hyperlink markup language', 'hyperlink makeup language', 'hypolink markup language', 1, '1', 1),
('google', 'mozilla', 'world wide web consortium', 'microsoft', 2, '3', 1),
('h1', 'h2', 'head', 'heading', 3, '1', 1),
('br', 'break', 'li', 'lb', 4, '1', 1),
('style=\"background-color:yellow\"', 'line-height', 'video', 'audio', 5, '1', 1),
('computer style sheeet', 'cascading style sheet', 'colorful style sheet', 'creative style sheet', 6, '2', 2),
('at the botttom', 'head', 'body', 'footer', 7, '2', 2),
('script', 'css', 'style', 'color', 8, '3', 2),
('//this is comment', '//comment//', '/*comment*/', 'comment', 9, '3', 2),
('background-color', 'bgcolor', 'color', 'paint', 10, '1', 2),
('scripting', 'js', 'javascript', 'script', 11, '4', 3),
('head', 'body', 'bottom', 'both head and body', 12, '2', 3),
('script src=\"xxx.js\"', 'script name=\"xxx.js\"', 'script href=\"xxx.js\"', 'script place=\"xxx.js\"', 13, '1', 3),
('function myfunction()', 'function = myfunction()', 'create myfunction()', 'generate myfunction()', 14, '1', 3),
('call myfunction()', 'call function myfunction()', 'myfunction()', 'function myfunction()', 15, '3', 3),
('It can encrypt data. ', 'PHP can access cookies variables and set cookies.', 'Using PHP, you can restrict users to access some pages of your website. ', ' All of the above', 16, '4', 4),
('Strings', 'arrays', 'objects', 'resources', 17, '4', 4),
('.', '+', 'append', 'none', 18, '1', 4),
('env()', 'environment()', 'getenv()', 'search()', 19, '3', 4),
('getMessage()', 'getline()', 'message()', 'getcode()', 20, '1', 4);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `no` int(11) NOT NULL,
  `level` int(11) NOT NULL DEFAULT 1,
  `question` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`no`, `level`, `question`) VALUES
(1, 1, 'What does HTML stand for?'),
(2, 1, 'Who is making the Web standards?'),
(3, 1, 'Choose the correct HTML element for the largest heading:'),
(4, 1, 'What is the correct HTML element for inserting a line break?'),
(5, 1, 'What is the correct HTML element for adding a background color?'),
(6, 2, 'What does CSS stand for?'),
(7, 2, 'Where in an HTML document is the correct place to refer to an external style sheet?'),
(8, 2, 'Which HTML tag is used to define an internal style sheet?'),
(9, 2, 'How do you insert a comment in a CSS file?'),
(10, 2, 'Which property is used to change the background color?'),
(11, 3, 'Inside which HTML element do we put the JavaScript?'),
(12, 3, 'Where is the correct place to insert a JavaScript?'),
(13, 3, 'What is the correct syntax for referring to an external script called \"xxx.js\"?'),
(14, 3, 'How do you create a function in JavaScript?'),
(15, 3, 'How do you call a function named \"myFunction\"?'),
(16, 4, ' Which of the following is correct about PHP?'),
(17, 4, 'Which of the following type of variables are special variables that hold references to resources external to PHP?'),
(18, 4, 'Which of the following operator is used to concatenate two strings?'),
(19, 4, 'Which of the following function is used to get environment variables in PHP?'),
(20, 4, 'Which of the following method of Exception class retrieve the error message when error occured?');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `question` text NOT NULL,
  `on_question` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `score`, `question`, `on_question`) VALUES
(1, 'manvendra', '81dc9bdb52d04dc20036dbd8313ed055', 22, 'a:20:{i:0;a:2:{i:0;i:1;i:1;i:3;}i:1;a:2:{i:0;i:1;i:1;i:4;}i:2;a:2:{i:0;i:1;i:1;i:5;}i:3;a:2:{i:0;i:1;i:1;i:1;}i:4;a:2:{i:0;i:1;i:1;i:2;}i:5;a:2:{i:0;i:2;i:1;i:10;}i:6;a:2:{i:0;i:2;i:1;i:9;}i:7;a:2:{i:0;i:2;i:1;i:8;}i:8;a:2:{i:0;i:2;i:1;i:7;}i:9;a:2:{i:0;i:2;i:1;i:6;}i:10;a:2:{i:0;i:3;i:1;i:11;}i:11;a:2:{i:0;i:3;i:1;i:12;}i:12;a:2:{i:0;i:3;i:1;i:13;}i:13;a:2:{i:0;i:3;i:1;i:15;}i:14;a:2:{i:0;i:3;i:1;i:14;}i:15;a:2:{i:0;i:4;i:1;i:17;}i:16;a:2:{i:0;i:4;i:1;i:20;}i:17;a:2:{i:0;i:4;i:1;i:18;}i:18;a:2:{i:0;i:4;i:1;i:16;}i:19;a:2:{i:0;i:4;i:1;i:19;}}', 20),
(2, 'msk', '1a1dc91c907325c69271ddf0c944bc72', 56, 'a:20:{i:0;a:2:{i:0;i:1;i:1;i:3;}i:1;a:2:{i:0;i:1;i:1;i:4;}i:2;a:2:{i:0;i:1;i:1;i:5;}i:3;a:2:{i:0;i:1;i:1;i:1;}i:4;a:2:{i:0;i:1;i:1;i:2;}i:5;a:2:{i:0;i:2;i:1;i:10;}i:6;a:2:{i:0;i:2;i:1;i:9;}i:7;a:2:{i:0;i:2;i:1;i:8;}i:8;a:2:{i:0;i:2;i:1;i:7;}i:9;a:2:{i:0;i:2;i:1;i:6;}i:10;a:2:{i:0;i:3;i:1;i:11;}i:11;a:2:{i:0;i:3;i:1;i:12;}i:12;a:2:{i:0;i:3;i:1;i:13;}i:13;a:2:{i:0;i:3;i:1;i:15;}i:14;a:2:{i:0;i:3;i:1;i:14;}i:15;a:2:{i:0;i:4;i:1;i:17;}i:16;a:2:{i:0;i:4;i:1;i:20;}i:17;a:2:{i:0;i:4;i:1;i:18;}i:18;a:2:{i:0;i:4;i:1;i:16;}i:19;a:2:{i:0;i:4;i:1;i:19;}}', 20),
(3, 'sk', '81dc9bdb52d04dc20036dbd8313ed055', 18, 'a:20:{i:0;a:2:{i:0;i:1;i:1;i:1;}i:1;a:2:{i:0;i:1;i:1;i:4;}i:2;a:2:{i:0;i:1;i:1;i:5;}i:3;a:2:{i:0;i:1;i:1;i:3;}i:4;a:2:{i:0;i:1;i:1;i:2;}i:5;a:2:{i:0;i:2;i:1;i:8;}i:6;a:2:{i:0;i:2;i:1;i:10;}i:7;a:2:{i:0;i:2;i:1;i:9;}i:8;a:2:{i:0;i:2;i:1;i:6;}i:9;a:2:{i:0;i:2;i:1;i:7;}i:10;a:2:{i:0;i:3;i:1;i:15;}i:11;a:2:{i:0;i:3;i:1;i:11;}i:12;a:2:{i:0;i:3;i:1;i:12;}i:13;a:2:{i:0;i:3;i:1;i:13;}i:14;a:2:{i:0;i:3;i:1;i:14;}i:15;a:2:{i:0;i:4;i:1;i:19;}i:16;a:2:{i:0;i:4;i:1;i:17;}i:17;a:2:{i:0;i:4;i:1;i:20;}i:18;a:2:{i:0;i:4;i:1;i:18;}i:19;a:2:{i:0;i:4;i:1;i:16;}}', 13),
(9, 'harsh', 'd4e3730e8cba214f85cddae5f9331d74', 52, 'a:20:{i:0;a:2:{i:0;i:1;i:1;i:1;}i:1;a:2:{i:0;i:1;i:1;i:4;}i:2;a:2:{i:0;i:1;i:1;i:5;}i:3;a:2:{i:0;i:1;i:1;i:3;}i:4;a:2:{i:0;i:1;i:1;i:2;}i:5;a:2:{i:0;i:2;i:1;i:8;}i:6;a:2:{i:0;i:2;i:1;i:10;}i:7;a:2:{i:0;i:2;i:1;i:9;}i:8;a:2:{i:0;i:2;i:1;i:6;}i:9;a:2:{i:0;i:2;i:1;i:7;}i:10;a:2:{i:0;i:3;i:1;i:15;}i:11;a:2:{i:0;i:3;i:1;i:11;}i:12;a:2:{i:0;i:3;i:1;i:12;}i:13;a:2:{i:0;i:3;i:1;i:13;}i:14;a:2:{i:0;i:3;i:1;i:14;}i:15;a:2:{i:0;i:4;i:1;i:19;}i:16;a:2:{i:0;i:4;i:1;i:17;}i:17;a:2:{i:0;i:4;i:1;i:20;}i:18;a:2:{i:0;i:4;i:1;i:18;}i:19;a:2:{i:0;i:4;i:1;i:16;}}', 20),
(10, 'manu', 'f13bb1bed03db9d68a7d9a48aafeec78', 6, 'a:20:{i:0;a:2:{i:0;i:1;i:1;i:1;}i:1;a:2:{i:0;i:1;i:1;i:4;}i:2;a:2:{i:0;i:1;i:1;i:5;}i:3;a:2:{i:0;i:1;i:1;i:3;}i:4;a:2:{i:0;i:1;i:1;i:2;}i:5;a:2:{i:0;i:2;i:1;i:8;}i:6;a:2:{i:0;i:2;i:1;i:10;}i:7;a:2:{i:0;i:2;i:1;i:9;}i:8;a:2:{i:0;i:2;i:1;i:6;}i:9;a:2:{i:0;i:2;i:1;i:7;}i:10;a:2:{i:0;i:3;i:1;i:15;}i:11;a:2:{i:0;i:3;i:1;i:11;}i:12;a:2:{i:0;i:3;i:1;i:12;}i:13;a:2:{i:0;i:3;i:1;i:13;}i:14;a:2:{i:0;i:3;i:1;i:14;}i:15;a:2:{i:0;i:4;i:1;i:19;}i:16;a:2:{i:0;i:4;i:1;i:17;}i:17;a:2:{i:0;i:4;i:1;i:20;}i:18;a:2:{i:0;i:4;i:1;i:18;}i:19;a:2:{i:0;i:4;i:1;i:16;}}', 3),
(11, 'anand', 'ebec8668739808cdfc6deb174e400616', 2, 'a:20:{i:0;a:2:{i:0;i:1;i:1;i:2;}i:1;a:2:{i:0;i:1;i:1;i:1;}i:2;a:2:{i:0;i:1;i:1;i:3;}i:3;a:2:{i:0;i:1;i:1;i:5;}i:4;a:2:{i:0;i:1;i:1;i:4;}i:5;a:2:{i:0;i:2;i:1;i:6;}i:6;a:2:{i:0;i:2;i:1;i:8;}i:7;a:2:{i:0;i:2;i:1;i:7;}i:8;a:2:{i:0;i:2;i:1;i:10;}i:9;a:2:{i:0;i:2;i:1;i:9;}i:10;a:2:{i:0;i:3;i:1;i:12;}i:11;a:2:{i:0;i:3;i:1;i:11;}i:12;a:2:{i:0;i:3;i:1;i:13;}i:13;a:2:{i:0;i:3;i:1;i:15;}i:14;a:2:{i:0;i:3;i:1;i:14;}i:15;a:2:{i:0;i:4;i:1;i:16;}i:16;a:2:{i:0;i:4;i:1;i:18;}i:17;a:2:{i:0;i:4;i:1;i:17;}i:18;a:2:{i:0;i:4;i:1;i:19;}i:19;a:2:{i:0;i:4;i:1;i:20;}}', 2),
(12, 'anand1', 'ebec8668739808cdfc6deb174e400616', -4, 'a:20:{i:0;a:2:{i:0;i:1;i:1;i:1;}i:1;a:2:{i:0;i:1;i:1;i:4;}i:2;a:2:{i:0;i:1;i:1;i:5;}i:3;a:2:{i:0;i:1;i:1;i:3;}i:4;a:2:{i:0;i:1;i:1;i:2;}i:5;a:2:{i:0;i:2;i:1;i:8;}i:6;a:2:{i:0;i:2;i:1;i:10;}i:7;a:2:{i:0;i:2;i:1;i:9;}i:8;a:2:{i:0;i:2;i:1;i:6;}i:9;a:2:{i:0;i:2;i:1;i:7;}i:10;a:2:{i:0;i:3;i:1;i:15;}i:11;a:2:{i:0;i:3;i:1;i:11;}i:12;a:2:{i:0;i:3;i:1;i:12;}i:13;a:2:{i:0;i:3;i:1;i:13;}i:14;a:2:{i:0;i:3;i:1;i:14;}i:15;a:2:{i:0;i:4;i:1;i:19;}i:16;a:2:{i:0;i:4;i:1;i:17;}i:17;a:2:{i:0;i:4;i:1;i:20;}i:18;a:2:{i:0;i:4;i:1;i:18;}i:19;a:2:{i:0;i:4;i:1;i:16;}}', 1),
(13, 'anandmani', 'e9afc5d6afc0b32555f24167821c8ed2', -2, 'a:20:{i:0;a:2:{i:0;i:1;i:1;i:3;}i:1;a:2:{i:0;i:1;i:1;i:4;}i:2;a:2:{i:0;i:1;i:1;i:5;}i:3;a:2:{i:0;i:1;i:1;i:1;}i:4;a:2:{i:0;i:1;i:1;i:2;}i:5;a:2:{i:0;i:2;i:1;i:10;}i:6;a:2:{i:0;i:2;i:1;i:9;}i:7;a:2:{i:0;i:2;i:1;i:8;}i:8;a:2:{i:0;i:2;i:1;i:7;}i:9;a:2:{i:0;i:2;i:1;i:6;}i:10;a:2:{i:0;i:3;i:1;i:11;}i:11;a:2:{i:0;i:3;i:1;i:12;}i:12;a:2:{i:0;i:3;i:1;i:13;}i:13;a:2:{i:0;i:3;i:1;i:15;}i:14;a:2:{i:0;i:3;i:1;i:14;}i:15;a:2:{i:0;i:4;i:1;i:17;}i:16;a:2:{i:0;i:4;i:1;i:20;}i:17;a:2:{i:0;i:4;i:1;i:18;}i:18;a:2:{i:0;i:4;i:1;i:16;}i:19;a:2:{i:0;i:4;i:1;i:19;}}', 1),
(14, 'dumb1@gmail.com', '512d93a598a2e0659ccb01ad2e78076e', 24, 'a:20:{i:0;a:2:{i:0;i:1;i:1;i:1;}i:1;a:2:{i:0;i:1;i:1;i:4;}i:2;a:2:{i:0;i:1;i:1;i:5;}i:3;a:2:{i:0;i:1;i:1;i:3;}i:4;a:2:{i:0;i:1;i:1;i:2;}i:5;a:2:{i:0;i:2;i:1;i:8;}i:6;a:2:{i:0;i:2;i:1;i:10;}i:7;a:2:{i:0;i:2;i:1;i:9;}i:8;a:2:{i:0;i:2;i:1;i:6;}i:9;a:2:{i:0;i:2;i:1;i:7;}i:10;a:2:{i:0;i:3;i:1;i:15;}i:11;a:2:{i:0;i:3;i:1;i:11;}i:12;a:2:{i:0;i:3;i:1;i:12;}i:13;a:2:{i:0;i:3;i:1;i:13;}i:14;a:2:{i:0;i:3;i:1;i:14;}i:15;a:2:{i:0;i:4;i:1;i:19;}i:16;a:2:{i:0;i:4;i:1;i:17;}i:17;a:2:{i:0;i:4;i:1;i:20;}i:18;a:2:{i:0;i:4;i:1;i:18;}i:19;a:2:{i:0;i:4;i:1;i:16;}}', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `choices`
--
ALTER TABLE `choices`
  ADD PRIMARY KEY (`q_no`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
