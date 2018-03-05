-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 05, 2018 at 08:44 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alfabion`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `description`, `img`, `price`, `hits`, `category`, `created_on`) VALUES
(1, 'Elesdi', 'Aztec krista, 155ug, GammaGoblin', 'lsd.jpg', 1000, 0, 'Droge', '2018-02-24'),
(2, 'Pečurke', 'Golden Teacher, Hawaii, Amazonian...', 'gt.jpg', 500, 0, 'Psihodelici', '2018-02-24'),
(3, 'Changa', '35% DMT, unique blend, high MAOi content', 'changa.jpg', 1500, 0, 'Psihodelici', '2018-02-24'),
(4, 'MDMA', 'lek za dušu', 'mdma.jpg', 3600, 0, 'Psihodelici', '2018-02-25'),
(6, 'boris', 'description', 'lsd.jpg', 1000, 0, 'Droge', '2018-03-09'),
(7, 'boris', 'description', 'lsd.jpg', 1000, NULL, 'Droge', NULL),
(8, 'boris', 'description', 'lsd.jpg', 1000, NULL, 'Droge', NULL),
(9, 'boris', 'description', 'lsd.jpg', 1000, NULL, 'Droge', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `name`, `lastname`) VALUES
(1, 'boris', '123456', 'boris.dovecer@gmail.com', 'Boris', 'Dovečer');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
