-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 23, 2020 at 04:46 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotelfull`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
CREATE TABLE IF NOT EXISTS `booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `checkin` varchar(100) DEFAULT NULL,
  `checkout` varchar(100) DEFAULT NULL,
  `adults` int(11) DEFAULT NULL,
  `child` int(11) DEFAULT NULL,
  `rooms` int(11) DEFAULT NULL,
  `state` varchar(11) NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `name`, `contact`, `checkin`, `checkout`, `adults`, `child`, `rooms`, `state`) VALUES
(1, 'deshan', '1230456', '2020-05-14', '2020-05-18', 2, 3, 1, 'done'),
(2, 'prod1', '0768241048', '2020-05-04', '2020-05-05', 2, 0, 1, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
CREATE TABLE IF NOT EXISTS `content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pos` varchar(100) NOT NULL,
  `body` varchar(10000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `pos`, `body`) VALUES
(6, 'hp1', 'Savour your penchant for finer comforts. Partner with sheer luxury at Cinnamon Grand, as you attend a business event in the capital city.\r\nLet the opulence of our meeting rooms and conference halls seep into flourishing\r\nwork partnerships.\r\nRaise a toast to all the success at our plush restaurants and taste jubilance like never before. When youâ??ve enjoyed every bit of your Grand accomplishments , retire to your room, and relish the exquisite comforts that Colomboâ??s most lavish business hotel has to offer.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'hivindu', 'sahanpasindu@gmail.com', '123456'),
(2, 'deshan', 'deshan@gmail.com', '123456'),
(3, 'prod1', 'harry@den.com', '123456789');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
