-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Jan 29. 14:58
-- Kiszolgáló verziója: 10.4.6-MariaDB
-- PHP verzió: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `szoftver`
--
CREATE DATABASE IF NOT EXISTS `szoftver` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `szoftver`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `program`
--

CREATE TABLE `program` (
  `paz` int(11) NOT NULL,
  `nev` varchar(64) COLLATE utf8_hungarian_ci NOT NULL,
  `mega` int(11) NOT NULL,
  `taz` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `program`
--

INSERT INTO `program` (`paz`, `nev`, `mega`, `taz`) VALUES
(1, 'Windows 10', 20000, 1),
(2, 'Office 2019', 3000, 2),
(3, 'GIMP 2.10', 1200, 3),
(4, 'Inkscape 1.2', 500, 3),
(5, 'VLC media player', 130, 4),
(6, 'Borderlands 3', 75000, 5);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tipus`
--

CREATE TABLE `tipus` (
  `taz` int(11) NOT NULL,
  `tipus` varchar(32) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `tipus`
--

INSERT INTO `tipus` (`taz`, `tipus`) VALUES
(1, 'Operációs rendszer'),
(2, 'Irodai program'),
(3, 'Képszerkesztő'),
(4, 'Média lejátszó'),
(5, 'Játék');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`paz`),
  ADD KEY `taztaz` (`taz`);

--
-- A tábla indexei `tipus`
--
ALTER TABLE `tipus`
  ADD PRIMARY KEY (`taz`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `program`
--
ALTER TABLE `program`
  MODIFY `paz` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT a táblához `tipus`
--
ALTER TABLE `tipus`
  MODIFY `taz` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `program`
--
ALTER TABLE `program`
  ADD CONSTRAINT `taztaz` FOREIGN KEY (`taz`) REFERENCES `tipus` (`taz`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
