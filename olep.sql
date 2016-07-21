-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 21, 2016 at 07:50 AM
-- Server version: 5.7.12-0ubuntu1
-- PHP Version: 7.0.4-7ubuntu2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `olep`
--

-- --------------------------------------------------------

--
-- Table structure for table `exam_responses_html`
--

CREATE TABLE `exam_responses_html` (
  `regno` int(6) NOT NULL,
  `examid` int(6) NOT NULL,
  `q1` char(1) NOT NULL,
  `q2` char(1) NOT NULL,
  `q3` char(1) NOT NULL,
  `q4` char(1) NOT NULL,
  `q5` char(1) NOT NULL,
  `q6` char(1) NOT NULL,
  `q7` char(1) NOT NULL,
  `q8` char(1) NOT NULL,
  `q9` char(1) NOT NULL,
  `q10` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exam_responses_java`
--

CREATE TABLE `exam_responses_java` (
  `regno` int(6) NOT NULL,
  `examid` int(6) NOT NULL,
  `q1` char(1) NOT NULL,
  `q2` char(1) NOT NULL,
  `q3` char(1) NOT NULL,
  `q4` char(1) NOT NULL,
  `q5` char(1) NOT NULL,
  `q6` char(1) NOT NULL,
  `q7` char(1) NOT NULL,
  `q8` char(1) NOT NULL,
  `q9` char(1) NOT NULL,
  `q10` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exam_users_html`
--

CREATE TABLE `exam_users_html` (
  `uid` varchar(35) NOT NULL,
  `regno` int(6) NOT NULL,
  `pwd` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exam_users_java`
--

CREATE TABLE `exam_users_java` (
  `uid` varchar(35) NOT NULL,
  `regno` int(6) NOT NULL,
  `pwd` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `html_exam`
--

CREATE TABLE `html_exam` (
  `regno` int(6) NOT NULL,
  `examid` int(6) NOT NULL,
  `exam_date` date NOT NULL,
  `result` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `java_exam`
--

CREATE TABLE `java_exam` (
  `regno` int(6) NOT NULL,
  `examid` int(6) NOT NULL,
  `exam_date` date NOT NULL,
  `result` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `questions_html`
--

CREATE TABLE `questions_html` (
  `question` varchar(500) NOT NULL,
  `op1` char(230) NOT NULL,
  `op2` char(230) NOT NULL,
  `op3` char(230) NOT NULL,
  `op4` char(230) NOT NULL,
  `ans` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions_html`
--

INSERT INTO `questions_html` (`question`, `op1`, `op2`, `op3`, `op4`, `ans`) VALUES
('Are HTML tags case sensitive?', 'True', 'False', 'Don\'t know', 'Who cares', 'b'),
('Which of the following tag represents a section of the document intended for navigation in HTML5?', 'footer', 'nav', 'section', 'dialog', 'b'),
('Which of the following input control represents a date and time (year, month, day, hour, minute, second, fractions of a second) encoded according to ISO 8601 with the time zone set to UTC in Web Form 2.0?', 'datetime\r\n', 'datetime-local', 'date\r\n', 'month', 'a'),
('Which of the following is true about Cookies?\r\n', 'Cookies are included with every HTTP request, thereby slowing down your web application by transmitting the same data.\r\n', 'Cookies are included with every HTTP request, thereby sending data unencrypted over the internet.', 'Cookies are limited to about 4 KB of data . Not enough to store required data.\r\n', 'All of the above.\r\n', 'd'),
('Which value of Socket.readyState atribute of WebSocket indicates that the connection has been closed or could not be opened?\r\n', '0', '1', '2', '3', 'd'),
('Which of the following method returns a geolocation object in HTML5?', 'navigator.geolocation', 'browser.geolocation', 'API.geolocation', 'None of the above.', 'a'),
('Which of the following attribute specifies if the element must have it\'s spelling or grammar checked?', 'Item', 'itemcheck', 'spellcheck', 'itemgroup', 'c'),
('Which of the following attribute triggers event when the window loses focus?', 'onbeforeload', 'onblur', 'onlostfocus', 'lostfocus', 'b'),
('Which of the following attribute triggers event when dragged element is being dropped?', 'ondrop\r\n', 'ondurationchange\r\n', 'onemptied\r\n', 'onended', 'a'),
('Which of the following attribute triggers event when the duration and other media data of a media element is loaded?', 'onloadedmetadata\r\n', 'onloadstart\r\n', 'onmessage', 'onoffline', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `questions_java`
--

CREATE TABLE `questions_java` (
  `question` varchar(500) NOT NULL,
  `op1` varchar(230) NOT NULL,
  `op2` varchar(230) NOT NULL,
  `op3` varchar(230) NOT NULL,
  `op4` varchar(230) NOT NULL,
  `ans` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions_java`
--

INSERT INTO `questions_java` (`question`, `op1`, `op2`, `op3`, `op4`, `ans`) VALUES
('What is the size of byte variable?', '8 bit ', '16 bit', '32 bit', '64 bit', 'a'),
('What is the default value of double variable?', '0.0d', '0.0f', '0', 'not defined', 'a'),
('Which of the following is true about public access modifier?', 'Variables, methods and constructors which are declared public can be accessed by any class.', 'Variables, methods and constructors which are declared public can be accessed by any class lying in same package.', 'Variables, methods and constructors which are declared public in the superclass can be accessed only by its child class.', 'None of the above.   Show Answer', 'a'),
('Inheritance represents', 'HAS-A relationship.', 'IS-A relationship.', 'None', 'who cares', 'b'),
('What kind of variables a class can consist of?', 'class variables, instance variables', 'class variables, local variables, instance variables', 'class variables', 'class variables, local variables   Show Answer', 'b'),
('When static binding occurs?', 'Static binding occurs during Compile time.', 'Static binding occurs during load time.', 'Static binding occurs during runtime.', 'None of the above.   Show Answer', 'a'),
('What is Serialization?', 'Serialization is the process of writing the state of an object to another object.', 'Serialization is the process of writing the state of an object to a byte stream.', 'Both of the above.', 'None of the above.', 'b'),
('Can a top level class be private or protected?', 'True', 'False', 'Don\'t know', 'Who cares', 'b'),
('When finally block gets executed?', 'Always when try block get executed, no matter exception occured or not.', 'Always when a method get executed, no matter exception occured or not.', 'Always when a try block get executed, if exception do not occur.', 'Only when exception occurs in try block code.', 'a'),
('', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` varchar(30) NOT NULL COMMENT 'userid',
  `pwd` varchar(32) NOT NULL COMMENT 'password hash'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `pwd`) VALUES
('tkpandey', '912ec803b2ce49e4a541068d495ab570');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `uid` varchar(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  `mail` varchar(35) NOT NULL,
  `mob` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`uid`, `name`, `mail`, `mob`) VALUES
('tkpandey', 'Tanmay', 'tkpandey@gmail.com', 303540221);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exam_users_html`
--
ALTER TABLE `exam_users_html`
  ADD UNIQUE KEY `regno` (`regno`);

--
-- Indexes for table `exam_users_java`
--
ALTER TABLE `exam_users_java`
  ADD UNIQUE KEY `regno` (`regno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `uid` (`uid`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD UNIQUE KEY `uid` (`uid`),
  ADD UNIQUE KEY `mail` (`mail`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
