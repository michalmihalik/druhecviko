-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Hostiteľ: 127.0.0.1:3325
-- Čas generovania: Út 05.Nov 2019, 19:24
-- Verzia serveru: 10.4.8-MariaDB
-- Verzia PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáza: `users`
--

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_11_05_163617_create_users_table', 1);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `meno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priezvisko` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `heslo` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vek` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `users`
--

INSERT INTO `users` (`id`, `meno`, `priezvisko`, `email`, `heslo`, `vek`, `created_at`, `updated_at`) VALUES
(3, '4Nbl9', 'gcltS', '4Nbl9.gcltS@hmail.com', NULL, 69, '2019-11-05 17:09:56', '2019-11-05 17:09:56'),
(4, 'EdPZZ', 'eeFmd', 'EdPZZ.eeFmd@hmail.com', NULL, 80, '2019-11-05 17:09:57', '2019-11-05 17:09:57'),
(5, '3h49O', 'D8Aep', '3h49O.D8Aep@hmail.com', NULL, 21, '2019-11-05 17:09:58', '2019-11-05 17:09:58'),
(6, 'okspY', 'lUFKF', 'okspY.lUFKF@hmail.com', NULL, 35, '2019-11-05 17:09:59', '2019-11-05 17:09:59'),
(7, 'O3Bb4', 'rfFTS', 'O3Bb4.rfFTS@hmail.com', NULL, 36, '2019-11-05 17:10:00', '2019-11-05 17:10:00'),
(8, 'y1uMx', '3uYnd', 'y1uMx.3uYnd@hmail.com', NULL, 42, '2019-11-05 17:20:56', '2019-11-05 17:20:56');

--
-- Kľúče pre exportované tabuľky
--

--
-- Indexy pre tabuľku `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pre exportované tabuľky
--

--
-- AUTO_INCREMENT pre tabuľku `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pre tabuľku `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
