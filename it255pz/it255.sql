-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2018 at 07:36 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `it255`
--

-- --------------------------------------------------------

--
-- Table structure for table `poruke`
--

CREATE TABLE `poruke` (
  `poruka_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `poruke`
--

INSERT INTO `poruke` (`poruka_id`, `name`, `email`, `message`) VALUES
(1, 'Rizbo', 'boris.dovecer.1720@metropolitan.ac.rs', 'jebo te sajt!'),
(2, 'boris', 'boris.dovecer@gmail.com', 'sta sad??'),
(3, 'Kata', 'kata@salata.pizza', 'salaaaata, krompir, urnebes, pavlaka u pečurkama, kečap, majonez, krastavci, paprika, paradajz, čeri i sve ostalo što ima'),
(4, 'Luka', 'boris.dovecer.1720@metropolitan.ac.rs', 'jebi se u glavuuuuuuuuuu!!!!!');

-- --------------------------------------------------------

--
-- Table structure for table `recepti`
--

CREATE TABLE `recepti` (
  `recept_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `recepti`
--

INSERT INTO `recepti` (`recept_id`, `title`, `description`, `author`, `img`, `category`, `created_on`) VALUES
(1, 'Strašni, slatki paukovi', 'POTREBNI SASTOJCI (za oko 15 paukova)\r\n\r\nZA KUGLICE:\r\n\r\n– 100g prepečenih oraha\r\n– 100g prepečenih badema\r\n– 150g pečene bundeve\r\n– 20ml kokosovog ulja\r\n– 3 kašike agave\r\n– 3 kašike kokosovog brašna\r\n– 1/2 kašičice  cimeta\r\n– po prstohvat đumbira i muškat', 'Boris', 'https://veganjamcije.files.wordpress.com/2017/10/72.jpg?w=2360', 'Slatkiši', '0000-00-00'),
(2, 'Čokoladni tofu tart', 'Sastojci su za tart prečnika 27cm\r\n\r\nKORA:\r\n\r\n    130g lešnika\r\n    200g ovsenih pahuljica\r\n    3 supene kašike ječmenog/rižinog slada\r\n    5 supenih kašika nerafinisanog kokosovog ulja ili biljnog maslaca po izboru\r\n    prstohvat soli\r\n\r\nFIL:\r\n\r\n    200m', 'Kata', 'https://veganjamcije.files.wordpress.com/2016/02/cover1.jpg?w=1500&h=525&crop=1', 'Slatkiši', '0000-00-00'),
(3, 'Šarena letnja pita', 'SASTOJCI:\r\n\r\nZA KORU:\r\n\r\n    200g brašna od splete\r\n    oko 70ml vode\r\n    2 supene kašike maslinovog ulja\r\n    1/2 kafene kašičice soli\r\n    1/2 kafene kašičice sode bikarbone\r\n\r\nZA KREM SIR:\r\n\r\n    200g sirovih indijskih oraha\r\n    100ml vode\r\n    1 man', 'Boris', 'https://veganjamcije.files.wordpress.com/2017/08/3.jpg?w=1024&h=678', 'Slano', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `name`, `lastname`, `email`) VALUES
(1, 'rene', '123456', 'Rene', 'Vegan', 'rene@vegan.de'),
(2, 'boris', 'boris', 'Boris', 'Dovečer', 'boris.dovecer.1720@metropolitan.ac.rs');

-- --------------------------------------------------------

--
-- Table structure for table `vesti`
--

CREATE TABLE `vesti` (
  `vesti_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vesti`
--

INSERT INTO `vesti` (`vesti_id`, `title`, `description`, `author`, `img`, `created_on`) VALUES
(4, 'Osvoji i ti ', 'Svaki čokolinoljubac dobro zna važnost rituala pripreme Čokolina. Dodaješ li prvo mlijeko ili Čokolino, toplo ih hladno, mala ili velika žlica, koja zdjelica… I Lino zna važnost tog istog rituala pa te nagrađuje tvojom vlastitom Čokolino zdjelicom. Jer štSvaki čokolinoljubac dobro zna važnost rituala pripreme Čokolina. Dodaješ li prvo mlijeko ili Čokolino, toplo ih hladno, mala ili velika žlica, koja zdjelica… I Lino zna važnost tog istog rituala pa te nagrađuje tvojom vlastitom Čokolino zdjelicom. Jer štSvaki čokolinoljubac dobro zna važnost rituala pripreme Čokolina. Dodaješ li prvo mlijeko ili Čokolino, toplo ih hladno, mala ili velika žlica, koja zdjelica… I Lino zna važnost tog istog rituala pa te nagrađuje tvojom vlastitom Čokolino zdjelicom. Jer štSvaki čokolinoljubac dobro zna važnost rituala pripreme Čokolina. Dodaješ li prvo mlijeko ili Čokolino, toplo ih hladno, mala ili velika žlica, koja zdjelica… I Lino zna važnost tog istog rituala pa te nagrađuje tvojom vlastitom Čokolino zdjelicom. Jer št\r\ndsads\r\nadasd', 'Borissss', 'https://coolinarika.azureedge.net/images/_variations/1/1/116f90ed8207d7d49af81e56a29e07f0_header.jpg?v=37', '0000-00-00'),
(5, 'Ove sezone nosimo zeleno', 'Zima je konačno out, proljeće je in! Ma jedva smo dočekali topliji i sunčaniji travanj koji je našim vrtovima i tržnicama podario obilje jestivih vjesnika proljeća. U društvu s coolkom jako se veselimo uživanju u isprobavanju cool ideja i maštovitih kreacZima je konačno out, proljeće je in! Ma jedva smo dočekali topliji i sunčaniji travanj koji je našim vrtovima i tržnicama podario obilje jestivih vjesnika proljeća. U društvu s coolkom jako se veselimo uživanju u isprobavanju cool ideja i maštovitih kreacZima je konačno out, proljeće je in! Ma jedva smo dočekali topliji i sunčaniji travanj koji je našim vrtovima i tržnicama podario obilje jestivih vjesnika proljeća. U društvu s coolkom jako se veselimo uživanju u isprobavanju cool ideja i maštovitih kreacZima je konačno out, proljeće je in! Ma jedva smo dočekali topliji i sunčaniji travanj koji je našim vrtovima i tržnicama podario obilje jestivih vjesnika proljeća. U društvu s coolkom jako se veselimo uživanju u isprobavanju cool ideja i maštovitih kreacZima je konačno out, proljeće je in! Ma jedva smo dočekali topliji i sunčaniji travanj koji je našim vrtovima i tržnicama podario obilje jestivih vjesnika proljeća. U društvu s coolkom jako se veselimo uživanju u isprobavanju cool ideja i maštovitih kreac', 'Kata', 'https://coolinarika.azureedge.net/images/_variations/b/d/bd5ab496340a0cdcd8a419c081de058b_listing_xl.jpg?v=46', '0000-00-00'),
(6, 'Poslasticepera', 'Zima je konačno out, proljeće je in! Ma jedva smo dočekali topliji i sunčaniji travanj koji je našim vrtovima i tržnicama podario obilje jestivih vjesnika proljeća. U društvu s coolkom jako se veselimo uživanju u isprobavanju cool ideja i maštovitih kreacZima je konačno out, proljeće je in! Ma jedva smo dočekali topliji i sunčaniji travanj koji je našim vrtovima i tržnicama podario obilje jestivih vjesnika proljeća. U društvu s coolkom jako se veselimo uživanju u isprobavanju cool ideja i maštovitih kreacZima je konačno out, proljeće je in! Ma jedva smo dočekali topliji i sunčaniji travanj koji je našim vrtovima i tržnicama podario obilje jestivih vjesnika proljeća. U društvu s coolkom jako se veselimo uživanju u isprobavanju cool ideja i maštovitih kreacZima je konačno out, proljeće je in! Ma jedva smo dočekali topliji i sunčaniji travanj koji je našim vrtovima i tržnicama podario obilje jestivih vjesnika proljeća. U društvu s coolkom jako se veselimo uživanju u isprobavanju cool ideja i maštovitih kreac', 'Boris', 'https://coolinarika.azureedge.net/images/_variations/f/3/f36c337ea7e5008ceff83c0fef09deeb_header.jpg?v=49', '0000-00-00'),
(12, 'Vegetarijanstvo i veganizam', 'Vegetarijanstvo i veganizam su još jedna od stvari koje su u ovoj zemlji totalno pogrešno shvaćene i ljudi se prema njima odnose sa određenom dozom konzervativnosti, kao i prema mnogim drugim veoma važnim stvarima. Većina ljudi koji su otvorili ovu stranicu je već pri samom čitanju naslova okrenula stranicu i počela čitati neki drugi tekst u ovom magazinu. Ali, nadam se da vas je dosta nastavilo, jer u ovom tekstu \"ćete naći mnoge stvari koje su vas možda zanimale, a nadam se da će se bar neko od vas odlučiti za ovaj način prehrane, koji je ujedno i jeftiniji od prehrane koja se zasniva na unošenju namirnica životinjskog porijekla!', 'boris', 'https://tinkturedrsulca.com/wp-content/uploads/2017/07/raw-puding.jpg', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `poruke`
--
ALTER TABLE `poruke`
  ADD PRIMARY KEY (`poruka_id`);

--
-- Indexes for table `recepti`
--
ALTER TABLE `recepti`
  ADD PRIMARY KEY (`recept_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `vesti`
--
ALTER TABLE `vesti`
  ADD PRIMARY KEY (`vesti_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `poruke`
--
ALTER TABLE `poruke`
  MODIFY `poruka_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `recepti`
--
ALTER TABLE `recepti`
  MODIFY `recept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vesti`
--
ALTER TABLE `vesti`
  MODIFY `vesti_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
