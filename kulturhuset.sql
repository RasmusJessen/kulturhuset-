-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Vært: 127.0.0.1
-- Genereringstid: 20. 04 2018 kl. 13:08:18
-- Serverversion: 5.6.24
-- PHP-version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kulturhuset`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `arrangementer`
--

CREATE TABLE IF NOT EXISTS `arrangementer` (
  `id` int(2) NOT NULL,
  `tid` time(6) NOT NULL,
  `varighed` varchar(20) NOT NULL,
  `pris` varchar(8) NOT NULL,
  `info` varchar(300) NOT NULL,
  `titel` varchar(35) NOT NULL,
  `dato` date NOT NULL,
  `sted` varchar(70) NOT NULL,
  `fk_kategori` int(2) NOT NULL,
  `filnavn` varchar(35) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `arrangementer`
--

INSERT INTO `arrangementer` (`id`, `tid`, `varighed`, `pris`, `info`, `titel`, `dato`, `sted`, `fk_kategori`, `filnavn`) VALUES
(1, '20:30:00.000000', '120 Minutter', '150', 'Kom og se teater forstillingen på Den Lille Prins, vi har alle arbejdet hårdt på at få det op og køre og vi glæder os til at vise jer det ', 'Den Lille Prins', '2018-05-05', 'Taastrup Kulturcenter Poppel Alle 12, 2630 Taastrup', 1, 'teater.jpg'),
(2, '19:00:00.000000', '120 Minutter', '70', 'Kom ind og se den nye Black Panther film på vores store lærred inde i vores sal.', 'Black Panther', '2018-05-18', 'Taastrup Kulturcenter Poppel Alle 12, 2630 Taastrup', 2, 'black_panther.jpg'),
(3, '18:00:00.000000', '90 Minutter', 'Gratis', 'Kom og hør 4 unge fra Høje Taastrup gymnasium der vil fortælle dig om ommkring både fordele og ulemper ved sociale medier, og hvordan det har påvirket vores liv. Vi severer kaffe og kage til dem der er interesserede.', 'Fordrag om Sociale Medier', '2018-06-06', 'Taastrup Kulturcenter Poppel Alle 12, 2630 Taastrup', 3, 'social.jpg'),
(4, '20:00:00.000000', '180 Minutter ', '50', 'Kom og oplev Carl Emil Petersen fra Ulige Numre på vores scene. Carl Emil har fortsat en solokarrie efter Ulige Numre besluttet sig for at opløse bandet, og nu kan vi med glæde sige at vi har fået ham til at spille på vores scene. Så kom og hør Carl Emil og hans fantastiske musik. ', 'Koncert med Carl Emil', '2018-06-23', 'Taastrup Kulturcenter Poppel Alle 12, 2630 Taastrup', 4, 'carl_emil.jpg'),
(5, '19:00:00.000000', '120 Minutter', '70', 'Kom ind og se den hylende morsome Deadpool film med Ryan Renolds i hovedrollen', 'Deadpool', '2018-06-29', 'Taastrup Kulturcenter Poppel Alle 12, 2630 Taastrup', 5, 'deadpool.jpg'),
(6, '20:00:00.000000', '120 Minutter', '70', 'Kom ind og se den fantastiske film Wonder om drengen der kæmper med at være anderledes', 'Wonder', '2018-07-13', 'Taastrup Kulturcenter Poppel Alle 12, 2630 Taastrup', 6, 'wonder.jpg'),
(7, '18:00:00.000000', '4 Timer', '50', 'Kom og se vores vores version af den fantastiske musical Vi Maler Byen Rød', 'Vi Maler Byen Rød', '2018-07-20', 'Taastrup Kulturcenter Poppel Alle 12, 2630 Taastrup', 7, 'musical.jpg'),
(8, '17:00:00.000000', '60 Minutter', 'Gratis', 'Kim Jensen snakker om hvordan mobning var en stor del af hans liv og hvordan han kom igennem de hårde dage i Folkeskolen.', 'Mobnings livet', '2018-07-24', 'Taastrup Kulturcenter Poppel Alle 12, 2630 Taastrup', 8, 'kim.jpg'),
(9, '20:00:00.000000', '60 Timer', 'Gratis', 'Cecilie kommer og fortæller om sin tid som model og hvordan det påvirkede hende både psykisk, fysisk og hvordan hun endelig fik jeg taget sig sammen til at komme ud af det.', 'Mit liv som model', '2018-07-31', 'Taastrup Kulturcenter Poppel Alle 12, 2630 Taastrup', 9, 'cecilie.jpg'),
(10, '19:00:00.000000', '120 Minutter', '50', 'Se vores Teater forstilling på Folk og røvere i Kardemomme By. Vores fantastiske skuespillere glæder sig meget til optræde for jer.', 'Folk og røvere i Kardemomme By', '2018-08-10', 'Taastrup Kulturcenter Poppel Alle 12, 2630 Taastrup', 10, 'kardemomme.jpg'),
(11, '19:30:00.000000', '180 Minutter', '40', 'Vi har fået Joey Moe til at spille hos os og det bliver så fedt, så kom og hør en fantastisk koncert med en Danmarks PopPrins.', 'Koncert med Joey Moe', '2018-08-18', 'Taastrup Kulturcenter Poppel Alle 12, 2630 Taastrup', 11, 'joey.jpg'),
(12, '14:00:00.000000', '120 Minutter', '50', 'Gilli kommer til vores Kulturhus og giver en koncert, så kom med hvis du elsker hans musik', 'Koncert med Gilli', '2018-08-31', 'Taastrup Kulturcenter Poppel Alle 12, 2630 Taastrup', 12, 'gilli.jpg');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id` int(2) NOT NULL,
  `navn` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `kategori`
--

INSERT INTO `kategori` (`id`, `navn`) VALUES
(1, 'Teaterforstilling'),
(2, 'Biograffilm'),
(3, 'Fordrag'),
(4, 'Koncert'),
(5, 'Biograffilm'),
(6, 'Biograffilm'),
(7, 'Teaterforstilling'),
(8, 'Fordrag'),
(9, 'Fordrag'),
(10, 'Teaterforstilling'),
(11, 'Koncert'),
(12, 'Koncert');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `kontakt`
--

CREATE TABLE IF NOT EXISTS `kontakt` (
  `id` int(2) NOT NULL,
  `navn` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `besked` varchar(60) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `kontakt`
--

INSERT INTO `kontakt` (`id`, `navn`, `email`, `besked`) VALUES
(1, 'Rasmus Jessen', 'rasjes2103@gmail.com', 'hey'),
(2, 'Rasmus Jessen', 'rasjes2103@gmail.com', 'hey'),
(3, 'Rasmus Jessen', 'rasjes2103@gmail.com', 'hey\r\n'),
(4, 'Rasmus Jessen', 'rasjes2103@gmail.com', 'hey\r\n'),
(5, 'Martin ', 'martin@mail.dk', 'what what\r\n'),
(6, 'Peter Jessen', 'peter.jessen@mail.dk', 'hej'),
(7, 'hey ', 'hey@kdk.dk', 'hey'),
(8, 'Rasmus Jessen', 'rasjes2103@gmail.com', 'hey hey');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `nyhedsbrev`
--

CREATE TABLE IF NOT EXISTS `nyhedsbrev` (
  `id` int(2) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `nyhedsbrev`
--

INSERT INTO `nyhedsbrev` (`id`, `email`) VALUES
(32, 'rasjes2103@gmail.com'),
(33, 'martin@mail.dk'),
(34, 'peter.jessen@mail.dk'),
(35, 'rasjes2103@gmail.com'),
(36, 'martin@mail.dk'),
(37, 'rasjes2103@gmail.com'),
(38, 'j@9'),
(39, 'j@9'),
(40, 'j@9'),
(41, 'j@9'),
(42, 'rasjes2103@gmail.com'),
(43, 'rasjes2103@gmail.com'),
(44, 'martin@mail.dk'),
(45, 'martin@mail.dk'),
(46, 'hghghgh@lifiuiufi.dk'),
(47, 'rasjes2103@gmail.com');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(2) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `mob_no` varchar(8) NOT NULL,
  `user_name` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `mob_no`, `user_name`, `password`) VALUES
(1, 'Rasmus ', 'Jessen ', '40146677', 'ralle2103', '21031999'),
(2, 'Rasmus ', 'Jessen ', '40146677', 'rasmus ', '1234'),
(3, 'Martin ', 'Jessen ', '12345678', 'what', '12'),
(4, 'Rasmus ', 'Jessen', '40146677', 'ralle', '12');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `arrangementer`
--
ALTER TABLE `arrangementer`
  ADD PRIMARY KEY (`id`), ADD KEY `fk_kategori` (`fk_kategori`), ADD KEY `fk_kategori_2` (`fk_kategori`);

--
-- Indeks for tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- Indeks for tabel `kontakt`
--
ALTER TABLE `kontakt`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `nyhedsbrev`
--
ALTER TABLE `nyhedsbrev`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `arrangementer`
--
ALTER TABLE `arrangementer`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- Tilføj AUTO_INCREMENT i tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- Tilføj AUTO_INCREMENT i tabel `kontakt`
--
ALTER TABLE `kontakt`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- Tilføj AUTO_INCREMENT i tabel `nyhedsbrev`
--
ALTER TABLE `nyhedsbrev`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- Tilføj AUTO_INCREMENT i tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Begrænsninger for dumpede tabeller
--

--
-- Begrænsninger for tabel `arrangementer`
--
ALTER TABLE `arrangementer`
ADD CONSTRAINT `arrangementer_ibfk_1` FOREIGN KEY (`fk_kategori`) REFERENCES `kategori` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
