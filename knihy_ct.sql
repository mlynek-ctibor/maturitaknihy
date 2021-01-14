-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Čtv 10. pro 2020, 22:06
-- Verze serveru: 10.4.10-MariaDB
-- Verze PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `knihy_ct`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Struktura tabulky `knihy`
--

CREATE TABLE `knihy` (
  `id_knihy` int(11) NOT NULL,
  `nazev_knihy` varchar(45) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `prebal` varchar(120) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `autor` varchar(45) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `obdobi_idobdobi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Vypisuji data pro tabulku `knihy`
--

INSERT INTO `knihy` (`id_knihy`, `nazev_knihy`, `prebal`, `autor`, `obdobi_idobdobi`) VALUES
(2, ' Dekameron', 'https://www.databazeknih.cz/img/books/11_/1178/bmid_dekameron-Cxd-1178.jpg', 'Giovanni Boccaccio', 1),
(3, ' Hamlet', 'https://www.databazeknih.cz/img/books/67_/673/bmid_hamlet-mng-673.jpeg', 'William Shakespeare', 1),
(4, ' Romeo a Julie ', 'https://www.databazeknih.cz/img/books/68_/680/romeo-a-julie-680.jpg', 'William Shakespeare', 1),
(6, ' Lakomec', 'https://www.databazeknih.cz/img/books/19_/1958/bmid_lakomec-YR9-1958.jpg', 'Moliére', 1),
(12, ' Strakonický dudák', 'https://www.databazeknih.cz/img/books/77_/77278/strakonicky-dudak-77278.jpg', 'Josef Kajetán Tyl', 2),
(15, ' Křest sv. Vladimíra', 'https://www.databazeknih.cz/img/books/96_/96083/bmid_krest-svateho-vladimira-B3E-96083.jpeg', 'Karel Havlíček Borovský', 2),
(19, ' Staré pověsti české', 'https://www.databazeknih.cz/img/books/25_/255/stare-povesti-ceske-255.jpg', 'Alois Jirásek', 2),
(23, ' Babička', 'https://www.databazeknih.cz/img/books/25_/253/bmid_babicka-KqZ-253.jpg', 'Božena Němcová', 2),
(25, ' Revizor', 'https://www.databazeknih.cz/img/books/48_/48099/bmid_revizor-4B5-48099.jpg', 'Nikolaj Vasiljevič Gogol', 2),
(26, ' Evžen Oněgin', 'https://www.databazeknih.cz/img/books/28_/284/mid_evzen-onegin-r1y-284.png', 'Alexandr Sergejevič Puškin', 2),
(27, ' Na západní frontě klid', 'https://www.databazeknih.cz/img/books/25_/250/na-zapadni-fronte-klid-bWv-250.jpg', 'Erich Maria Remarque', 3),
(30, ' Kronika ohlášené smrti', 'https://www.databazeknih.cz/img/books/13_/13015/bmid_kronika-ohlasene-smrti-NwW-13015.jpg', 'Gabriel García  Marquéz', 3),
(33, ' Stařec a moře', 'https://www.databazeknih.cz/img/books/23_/238863/bmid_starec-a-more-L6B-238863.jpg', 'Ernest Hemingway', 3),
(36, ' Alkoholy', 'https://www.databazeknih.cz/img/books/31_/3190/alkoholy-3190.jpg', 'Guillaume Apollinaire', 3),
(38, ' Alchymista', 'https://www.databazeknih.cz/img/books/41_/413/bmid_alchymista-zdB-413.jpg', 'Paulo Coelho', 3),
(40, ' Proměna', 'https://www.databazeknih.cz/img/books/30_/30545/mid_promena-oeK-30545.jpg', 'Franz Kafka', 3),
(41, ' Pán prstenů: Společenstvo prstenu', 'https://www.databazeknih.cz/img/books/9_/2/bmid_pan-prstenu-spolecenstvo-prstenu-7Bu-2.jpg', 'John Ronald Reuel Tolkien', 3),
(42, ' Ostře sledované vlaky', 'https://www.databazeknih.cz/img/books/24_/2465/ostre-sledovane-vlaky-2465.jpg', 'Bohumil Hrabal', 4),
(43, ' Postřižiny', 'https://www.databazeknih.cz/img/books/55_/5536/postriziny-5536.jpg', 'Bohumil Hrabal', 4),
(44, ' Krysař', 'https://www.databazeknih.cz/img/books/20_/2073/krysar-2073.jpg', 'Viktor Dyk', 4),
(45, ' Němá barikáda', 'https://www.databazeknih.cz/img/books/35_/355/nema-barikada-355.jpg', 'Jan Drda', 4);

-- --------------------------------------------------------

--
-- Struktura tabulky `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabulky `menu`
--

CREATE TABLE `menu` (
  `idmenu` int(11) NOT NULL,
  `categorie` varchar(50) COLLATE utf8_general_mysql500_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Vypisuji data pro tabulku `menu`
--

INSERT INTO `menu` (`idmenu`, `categorie`) VALUES
(1, 'Literatura 18. stol.'),
(2, '   Literatura 19. stol'),
(3, '   Literatura S 20/21 stol.'),
(4, '   Literatura Č 20/21 stol.');

-- --------------------------------------------------------

--
-- Struktura tabulky `obdobi`
--

CREATE TABLE `obdobi` (
  `id_obdobi` int(11) NOT NULL,
  `nazev_obdobi` varchar(45) COLLATE utf8_general_mysql500_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Vypisuji data pro tabulku `obdobi`
--

INSERT INTO `obdobi` (`id_obdobi`, `nazev_obdobi`) VALUES
(1, 'Světová/česká - 18. stol.'),
(2, 'Světová/česká - 19. stol.'),
(3, 'Světová - 20./21. stol.'),
(4, 'Česká - 20./21. stol.');

-- --------------------------------------------------------

--
-- Struktura tabulky `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$12$/z4f42icLHN8U0As8i2eleKmo.sZN6tg4dmOciUi8hFpjHemK0TEW', 'admin@admin.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1607633966, 1, 'Admin', 'istrator', 'ADMIN', '0');

-- --------------------------------------------------------

--
-- Struktura tabulky `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2);

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `knihy`
--
ALTER TABLE `knihy`
  ADD PRIMARY KEY (`id_knihy`);

--
-- Klíče pro tabulku `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`idmenu`);

--
-- Klíče pro tabulku `obdobi`
--
ALTER TABLE `obdobi`
  ADD PRIMARY KEY (`id_obdobi`);

--
-- Klíče pro tabulku `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- Klíče pro tabulku `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pro tabulku `knihy`
--
ALTER TABLE `knihy`
  MODIFY `id_knihy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT pro tabulku `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `obdobi`
--
ALTER TABLE `obdobi`
  MODIFY `id_obdobi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pro tabulku `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pro tabulku `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Omezení pro exportované tabulky
--

--
-- Omezení pro tabulku `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
