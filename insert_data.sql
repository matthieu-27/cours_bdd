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

--
-- Déchargement des données de la table `g_article`
--

INSERT INTO `g_article` (`a_id`, `a_reference`, `a_designation`, `a_marque`, `a_quantite`) VALUES
(1, 'ART-001', 'Balai d\'essuie-glace', 'SKF', 25),
(2, 'ART-002', 'Rotor de frein', 'Hella', 77),
(3, 'ART-003', 'Filtre à huile', 'Varta', 43),
(4, 'ART-004', 'Durite de radiateur', 'SKF', 22),
(5, 'ART-005', 'Filtre à air', 'Valeo', 8),
(6, 'ART-006', 'Liquide de refroidissement', 'Mann', 93),
(7, 'ART-007', 'Courroie de distribution', 'Bridgestone', 64),
(8, 'ART-008', 'Bougie d\'allumage', 'Bridgestone', 18),
(9, 'ART-009', 'Silencieux', 'Hella', 13),
(10, 'ART-010', 'Batterie', 'SKF', 94),
(11, 'ART-011', 'Plaquette de frein', 'SKF', 57),
(12, 'ART-012', 'Filtre à carburant', 'Brembo', 6),
(13, 'ART-013', 'Pot d\'échappement', 'SKF', 88),
(14, 'ART-014', 'Disque de frein', 'Michelin', 96),
(15, 'ART-015', 'Amortisseur', 'TRW', 64),
(16, 'ART-016', 'Cardan', 'Valeo', 75),
(17, 'ART-017', 'Kit de distribution', 'Brembo', 48),
(18, 'ART-018', 'Feu arrière', 'Monroe', 12),
(19, 'ART-019', 'Pompe à eau', 'Brembo', 51),
(20, 'ART-020', 'Pneu hiver', 'Michelin', 39);

--
-- Déchargement des données de la table `g_client`
--

INSERT INTO `g_client` (`c_id`, `c_nom`, `c_prenom`, `c_tel`, `c_adresse`) VALUES
(1, 'Petit', 'Luc', '0630193880', '4 Rue des Fleurs'),
(2, 'Thomas', 'Jean', '0613385357', '63 Rue de Lyon'),
(3, 'Durand', 'Emma', '0654738553', '90 Rue du Lac'),
(4, 'Robert', 'Camille', '0678574553', '34 Rue de Lyon'),
(5, 'Petit', 'Nicolas', '0626845364', '62 Rue du Lac'),
(6, 'Moreau', 'Jean', '0662157313', '14 Rue du Lac'),
(7, 'Dubois', 'Emma', '0621392366', '62 Rue des Fleurs'),
(8, 'Petit', 'Marie', '0679778859', '80 Rue des Fleurs'),
(9, 'Durand', 'Paul', '0698883975', '82 Rue des Fleurs'),
(10, 'Robert', 'Sophie', '0623479854', '24 Rue de Lyon'),
(11, 'Thomas', 'Nicolas', '0683506850', '89 Rue du Lac'),
(12, 'Durand', 'Marie', '0623187277', '60 Rue du Lac'),
(13, 'Durand', 'Luc', '0678979792', '41 Rue des Fleurs'),
(14, 'Dubois', 'Marie', '0647709731', '15 Rue des Fleurs'),
(15, 'Richard', 'Paul', '0636939239', '65 Rue de Paris'),
(16, 'Robert', 'Luc', '0633027075', '71 Rue de Paris'),
(17, 'Bernard', 'Nicolas', '0691200125', '88 Rue de Paris'),
(18, 'Durand', 'Paul', '0696191493', '8 Rue des Alpes'),
(19, 'Richard', 'Pierre', '0697796277', '81 Rue des Alpes'),
(20, 'Bernard', 'Sophie', '0676401385', '35 Rue de Paris');

--
-- Déchargement des données de la table `g_ordre`
--

INSERT INTO `g_ordre` (`o_id`, `o_date`, `o_temps`, `o_fk_c_id`) VALUES
(1, '2023-02-14 00:00:00', 7, NULL),
(2, '2023-03-03 00:00:00', 6, NULL),
(3, '2023-05-14 00:00:00', 3, NULL),
(4, '2023-10-11 00:00:00', 1, NULL),
(5, '2023-01-28 00:00:00', 6, NULL),
(6, '2023-04-18 00:00:00', 5, NULL),
(7, '2023-02-13 00:00:00', 1, NULL),
(8, '2023-12-06 00:00:00', 3, NULL),
(9, '2023-10-13 00:00:00', 2, NULL),
(10, '2023-11-27 00:00:00', 4, NULL),
(11, '2023-05-08 00:00:00', 7, NULL),
(12, '2023-12-14 00:00:00', 3, NULL),
(13, '2023-08-19 00:00:00', 6, NULL),
(14, '2023-07-09 00:00:00', 1, NULL),
(15, '2023-08-13 00:00:00', 4, NULL),
(16, '2023-10-10 00:00:00', 1, NULL),
(17, '2023-05-01 00:00:00', 6, NULL),
(18, '2023-04-26 00:00:00', 1, NULL),
(19, '2023-08-21 00:00:00', 2, NULL),
(20, '2023-09-16 00:00:00', 4, NULL);

--
-- Déchargement des données de la table `g_voiture`
--

INSERT INTO `g_voiture` (`v_id`, `v_marque`, `v_type`, `v_energie`) VALUES
(1, 'Citroën', 'Break', 'Électrique'),
(2, 'Toyota', 'Citadine', 'Électrique'),
(3, 'Peugeot', 'Citadine', 'Diesel'),
(4, 'BMW', 'Berline', 'Essence'),
(5, 'Peugeot', 'Citadine', 'Hybride'),
(6, 'Renault', 'Monospace', 'Hybride'),
(7, 'Volkswagen', 'Citadine', 'Essence'),
(8, 'BMW', 'Berline', 'Hybride'),
(9, 'Renault', 'Monospace', 'Hybride'),
(10, 'Mercedes', 'SUV', 'Essence'),
(11, 'Volkswagen', 'Citadine', 'Électrique'),
(12, 'Peugeot', 'Berline', 'Essence'),
(13, 'Renault', 'SUV', 'Électrique'),
(14, 'Mercedes', 'SUV', 'Hybride'),
(15, 'BMW', 'Break', 'Hybride'),
(16, 'BMW', 'Monospace', 'Hybride'),
(17, 'Ford', 'Citadine', 'Diesel'),
(18, 'Mercedes', 'Berline', 'Électrique'),
(19, 'Toyota', 'Break', 'Diesel'),
(20, 'Citroën', 'Monospace', 'Diesel');

--
-- Déchargement des données de la table `g_voiture_client`
--

INSERT INTO `g_voiture_client` (`voiture_id`, `client_id`, `vc_plaque`) VALUES
(1, 7, '251 AB 33'),
(1, 10, '921 EF 89'),
(2, 6, '234 EF 26'),
(2, 16, '537 EF 36'),
(3, 15, '559 EF 95'),
(4, 8, '332 EF 28'),
(5, 6, '727 EF 81'),
(5, 9, '679 AB 23'),
(5, 19, '136 EF 18'),
(8, 17, '780 GH 42'),
(10, 17, '519 GH 98'),
(15, 1, '995 CD 75'),
(15, 2, '376 GH 17'),
(15, 7, '198 AB 27'),
(16, 6, '403 GH 78'),
(18, 1, '325 XY 39'),
(18, 19, '474 XY 60'),
(19, 1, '915 EF 29'),
(19, 15, '739 AB 57');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
