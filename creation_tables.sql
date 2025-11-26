-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 26 nov. 2025 à 12:06
-- Version du serveur : 5.7.40
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `garage`
--

-- --------------------------------------------------------

--
-- Structure de la table `g_article`
--

DROP TABLE IF EXISTS `g_article`;
CREATE TABLE IF NOT EXISTS `g_article` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_reference` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT 'Référence de l''article',
  `a_designation` varchar(60) COLLATE utf8mb4_bin NOT NULL COMMENT 'Référence du code barre',
  `a_marque` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT 'Référence de la marque',
  `a_quantite` int(11) NOT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `g_article_voiture`
--

DROP TABLE IF EXISTS `g_article_voiture`;
CREATE TABLE IF NOT EXISTS `g_article_voiture` (
  `voiture_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  PRIMARY KEY (`voiture_id`,`article_id`),
  KEY `voiture_id` (`voiture_id`),
  KEY `article_id` (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `g_client`
--

DROP TABLE IF EXISTS `g_client`;
CREATE TABLE IF NOT EXISTS `g_client` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_nom` varchar(16) COLLATE utf8mb4_bin NOT NULL,
  `c_prenom` varchar(16) COLLATE utf8mb4_bin NOT NULL,
  `c_tel` varchar(16) COLLATE utf8mb4_bin NOT NULL,
  `c_adresse` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `g_ordre`
--

DROP TABLE IF EXISTS `g_ordre`;
CREATE TABLE IF NOT EXISTS `g_ordre` (
  `o_id` int(11) NOT NULL AUTO_INCREMENT,
  `o_date` datetime NOT NULL,
  `o_temps` int(11) NOT NULL,
  `o_fk_c_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`o_id`),
  KEY `c_fk` (`o_fk_c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `g_voiture`
--

DROP TABLE IF EXISTS `g_voiture`;
CREATE TABLE IF NOT EXISTS `g_voiture` (
  `v_id` int(11) NOT NULL AUTO_INCREMENT,
  `v_marque` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `v_type` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `v_energie` varchar(15) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `g_voiture_client`
--

DROP TABLE IF EXISTS `g_voiture_client`;
CREATE TABLE IF NOT EXISTS `g_voiture_client` (
  `voiture_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `vc_plaque` varchar(16) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`voiture_id`,`client_id`),
  KEY `client_id` (`client_id`),
  KEY `voiture_id` (`voiture_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `g_article_voiture`
--
ALTER TABLE `g_article_voiture`
  ADD CONSTRAINT `article_id` FOREIGN KEY (`article_id`) REFERENCES `g_article` (`a_id`),
  ADD CONSTRAINT `voiture_id` FOREIGN KEY (`voiture_id`) REFERENCES `g_voiture` (`v_id`);

--
-- Contraintes pour la table `g_ordre`
--
ALTER TABLE `g_ordre`
  ADD CONSTRAINT `c_fk` FOREIGN KEY (`o_fk_c_id`) REFERENCES `g_client` (`c_id`);

--
-- Contraintes pour la table `g_voiture_client`
--
ALTER TABLE `g_voiture_client`
  ADD CONSTRAINT `g_voiture_client_ibfk_1` FOREIGN KEY (`voiture_id`) REFERENCES `g_voiture` (`v_id`),
  ADD CONSTRAINT `g_voiture_client_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `g_client` (`c_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
