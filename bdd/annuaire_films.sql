-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Jeu 22 Novembre 2018 à 12:44
-- Version du serveur :  10.3.10-MariaDB-1:10.3.10+maria~bionic-log
-- Version de PHP :  7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `annuaire_films`
--

-- --------------------------------------------------------

--
-- Structure de la table `films`
--

CREATE TABLE `films` (
  `id` int(4) NOT NULL,
  `titre` char(255) NOT NULL,
  `description` text NOT NULL,
  `annee` year(4) NOT NULL,
  `realisateur` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Contenu de la table `films`
--

INSERT INTO `films` (`id`, `titre`, `description`, `annee`, `realisateur`) VALUES
(1, 'creed 2', 'La vie est devenue un numéro d\'équilibriste pour Adonis Creed entre ses obligations personnelles et son entraînement pour son prochain grand match. Et l\'enjeu du combat est d\'autant plus élevé que son rival est lié au passé de sa famille. Mais il peut compter sur Rocky Balboa à ses côtés...\n', 2019, 'Steven Caple Jr'),
(2, 'asterix - le secret de la potion magique', 'À la suite d’une chute lors de la cueillette du gui, le druide Panoramix décide qu’il est temps d’assurer l’avenir du village. Accompagné d’Astérix et Obélix, il entreprend de parcourir le monde gaulois à la recherche d’un jeune druide talentueux à qui transmettre le Secret de la Potion Magique…\n', 2018, 'Louis Clichy, Alexandre Astier'),
(3, 'Tekken', 'Adaptation cinématographique du jeu de combat japonais \"Tekken\" centrée sur l\'histoire de deux amis d\'enfance qui défient les combattants des quatre coins du globe.\n', 2010, 'Dwight H. Little'),
(4, 'Independance Day : Resurgence', 'Nous avons toujours su qu\'ils reviendraient. La terre est menacée par une catastrophe d’une ampleur inimaginable. Pour la protéger, toutes les nations ont collaboré autour d’un programme de défense colossal exploitant la technologie extraterrestre récupérée. ', 2016, 'Roland Emmerich'),
(5, 'Spider-Man : new Generation', 'présente Miles Morales, un adolescent vivant à Brooklyn, et révèle les possibilités illimitées du Spider-Verse, un univers où plus d’un peut porter le masque…', 2018, 'Bob Persichetti, Petter Ramsey, Rodney Rothman'),
(6, 'Thugs of Hindostan', 'La guerre pour la liberté sur terre se joue en pleine mer. Au 18ème siècle, la British Navy est confrontée à Khudabaksh, un \"Thug des mers\" qui se bat pour libérer son pays. Les anglais, ne sachant comment l\'affronter, font appelle à un autre Thug, Firangi Mallah.', 2018, 'Vijay Krishna Acharya'),
(7, 'Dumbo', 'Les enfants de Holt Farrier, ex-artiste de cirque chargé de s’occuper d’un éléphanteau dont les oreilles démesurées sont la risée du public, découvrent que ce dernier sait voler…', 2019, 'Tim Burton'),
(8, 'La note bleue', 'Nohant 1846. Le dernier jour d\'une liaison qui dura huit ans entre George Sand et Frederic Chopin et qui vit naitre leurs plus belles oeuvres.', 1991, 'Andrzej Zulawski'),
(9, 'Airlift', '02 août 1990 : les troupes irakiennes envahissent le Koweït. L\'Inde vote à l\'ONU les sanctions contre l\'Irak et, prend en charge l\'évacuation de la centaine de milliers de ses ressortissants expatriés. Ainsi l’Inde aura mis en place le plus grand pont aérien et humanitaire jamais organisé au monde.', 2016, 'Raja Menon');

-- --------------------------------------------------------

--
-- Structure de la table `film_genre`
--

CREATE TABLE `film_genre` (
  `film` int(4) NOT NULL,
  `genre` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `film_genre`
--

INSERT INTO `film_genre` (`film`, `genre`) VALUES
(1, 1),
(1, 7),
(2, 2),
(2, 9),
(3, 1),
(3, 3),
(3, 4),
(4, 1),
(4, 10),
(5, 1),
(5, 2),
(6, 1),
(6, 6),
(7, 4),
(7, 9),
(8, 5),
(8, 7),
(8, 8),
(9, 6),
(9, 7);

-- --------------------------------------------------------

--
-- Structure de la table `film_realisateur`
--

CREATE TABLE `film_realisateur` (
  `film` int(4) NOT NULL,
  `realisateur` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `film_realisateur`
--

INSERT INTO `film_realisateur` (`film`, `realisateur`) VALUES
(1, 1),
(2, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(5, 7),
(5, 8),
(6, 9),
(7, 10),
(8, 11),
(9, 12),
(10, 13),
(11, 14),
(12, 15);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `id` int(4) NOT NULL,
  `type` char(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `genre`
--

INSERT INTO `genre` (`id`, `type`) VALUES
(1, 'Action'),
(2, 'Animation'),
(3, 'Arts Martiaux'),
(4, 'Aventure'),
(5, 'Biopic'),
(6, 'Bollywood'),
(7, 'Drame'),
(8, 'Romance'),
(9, 'Famille'),
(10, 'Science-fiction');

-- --------------------------------------------------------

--
-- Structure de la table `realisateur`
--

CREATE TABLE `realisateur` (
  `id` int(4) NOT NULL,
  `realisateur` char(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `realisateur`
--

INSERT INTO `realisateur` (`id`, `realisateur`) VALUES
(1, 'Steven Caple Jr'),
(2, 'Louis Clichy'),
(3, 'Alexandre Astier'),
(4, 'Dwight H. Little'),
(5, 'Roland Emmerich'),
(6, 'Bob Persichetti'),
(7, 'Petter Ramsey'),
(8, 'Rodney Rothman'),
(9, 'Vijay Krishna Acharya'),
(10, 'Tim Burton'),
(11, 'Andrzej Zulawski'),
(12, 'Raja Menon'),
(13, 'Robert Rodriguez'),
(14, 'James Wan'),
(15, 'Yarrow Cheney');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
