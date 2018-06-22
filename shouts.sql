-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 22. Jun 2018 um 15:06
-- Server Version: 5.5.16
-- PHP-Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `shoutit`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `shouts`
--

CREATE TABLE IF NOT EXISTS `shouts` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Daten für Tabelle `shouts`
--

INSERT INTO `shouts` (`ID`, `user`, `msg`, `time`) VALUES
(1, 'Martin', 'Ein erste Test', '13:37:00'),
(2, 'Verena', '*pfeift*\r\nHaaaaaallo', '13:38:00'),
(3, 'Tom', 'HAAALLLOOOOO', '13:38:00'),
(4, 'Martin', 'Lol...^^', '13:39:00'),
(5, 'sdfsdfsdf', 'sdfsdfsd', '22:01:07'),
(6, 'test datumsformat', 'bla', '01:06:00'),
(7, 'format m.j. h:s', 'da', '00:00:22'),
(8, 'h:s', 'adad', '01:58:00'),
(9, 'h:s', 'ein paar sekunden spÃ¤ter', '01:22:00'),
(10, 'h:s:m', 'adasd', '01:05:06'),
(11, 'h i s', 'eheh', '01:52:50');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
