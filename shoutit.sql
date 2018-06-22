-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3307
-- Erstellungszeit: 22. Jun 2018 um 16:26
-- Server-Version: 5.6.26
-- PHP-Version: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

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
  `time` time NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `shouts`
--

INSERT INTO `shouts` (`ID`, `user`, `msg`, `time`) VALUES
(1, 'Martin', 'Ein erster Test', '13:37:00'),
(2, 'Verena', '*pfeift*\r\nHaaaaaallo', '13:38:00'),
(3, 'Tom', 'HAAALLLOOOOO', '13:38:00'),
(4, 'Martin', 'Lol...^^', '13:39:00'),
(5, 'sdfsdfsdf', 'sdfsdfsd', '22:01:07'),
(6, 'test datumsformat', 'bla', '01:06:00'),
(7, 'format m.j. h:s', 'da', '00:00:22'),
(8, 'h:s', 'adad', '01:58:00'),
(9, 'h:s', 'ein paar sekunden spÃ¤ter', '01:22:00'),
(10, 'h:s:m', 'adasd', '01:05:06'),
(11, 'h i s', 'eheh', '01:52:50'),
(12, 'werwer', 'werwe', '03:28:33'),
(13, 'pojpok', 'p0ÃŸip', '04:20:47');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `shouts`
--
ALTER TABLE `shouts`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `shouts`
--
ALTER TABLE `shouts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
