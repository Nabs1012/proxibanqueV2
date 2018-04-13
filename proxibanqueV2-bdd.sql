-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 13 Avril 2018 à 12:07
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `proxibanque`
--
CREATE DATABASE IF NOT EXISTS `proxibanque` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `proxibanque`;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `idClient` int(11) NOT NULL,
  `prenom` varchar(40) DEFAULT NULL,
  `nom` varchar(40) DEFAULT NULL,
  `idConseiller` int(11) NOT NULL,
  `voie` varchar(250) NOT NULL,
  `numeroVoie` varchar(250) NOT NULL,
  `ville` varchar(250) NOT NULL,
  `codePostal` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`idClient`, `prenom`, `nom`, `idConseiller`, `voie`, `numeroVoie`, `ville`, `codePostal`, `email`) VALUES
(10, 'Sam', 'Osa', 1, 'Terre neuve', '9', 'Lyon', '69006', 'sam.osa@gmail.com'),
(11, 'Ten', 'Dori', 1, 'rue de la place', '56', 'Lyon', '69007', 'doridori@gmail.com'),
(12, 'Liz', 'Arazou', 1, 'avenue Jean Jaures', '245', 'Lyon', '69007', 'etunetdeuxettrois@gmail.com'),
(13, 'Fred', 'Lagrange', 2, 'rue du plateau', '24', 'Villeurbanne', '69100', 'fredo.dodo@gmail.com'),
(14, 'Brahim', 'Benralem', 2, 'rue de la republique', '2', 'Lyon', '69001', 'brahim.benralem@gmail.com'),
(15, 'shara', 'Sersoub', 2, 'rue de Constantine', '17', 'Lyon', '69001', 'shara.dodo@gmail.com'),
(16, 'Fredy', 'Venus', 3, 'place de la galaxie', '256', 'Villeurbanne', '69100', 'univers.space@gmail.com'),
(17, 'Abdel', 'Azziz', 3, 'rue baraban', '10', 'Villeurbanne', '69100', 'abdelking@gmail.com'),
(18, 'Elena', 'Jali', 3, 'boulvard du Quebec', '24', 'Lyon', '69004', 'canada.independant@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE `compte` (
  `idCompte` int(11) NOT NULL,
  `solde` float DEFAULT '0',
  `numCompte` varchar(250) NOT NULL,
  `idClient` int(11) NOT NULL,
  `typeCompte` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `compte`
--

INSERT INTO `compte` (`idCompte`, `solde`, `numCompte`, `idClient`, `typeCompte`) VALUES
(1, 2000, 'C1000', 10, 'courant'),
(2, 2000, 'E1000', 10, 'epargne'),
(3, 2000, 'C1001', 11, 'courant'),
(4, 2000, 'E1001', 11, 'epargne'),
(5, 2000, 'C1002', 12, 'courant'),
(6, 2000, 'E1002', 12, 'epargne'),
(7, 2000, 'E1003', 13, 'epargne'),
(8, 2000, 'C1003', 13, 'courant'),
(9, 2000, 'E1004', 14, 'epargne'),
(10, 2000, 'C1004', 14, 'courant');

-- --------------------------------------------------------

--
-- Structure de la table `conseiller`
--

CREATE TABLE `conseiller` (
  `idConseiller` int(11) NOT NULL,
  `login` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `conseiller`
--

INSERT INTO `conseiller` (`idConseiller`, `login`, `password`) VALUES
(1, 'haricot', 'blanc'),
(2, 'patate', 'jaune'),
(3, 'tomate', 'rouge');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`idClient`),
  ADD KEY `fk_conseiller` (`idConseiller`);

--
-- Index pour la table `compte`
--
ALTER TABLE `compte`
  ADD PRIMARY KEY (`idCompte`),
  ADD KEY `fk_client` (`idClient`);

--
-- Index pour la table `conseiller`
--
ALTER TABLE `conseiller`
  ADD PRIMARY KEY (`idConseiller`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `idClient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `compte`
--
ALTER TABLE `compte`
  MODIFY `idCompte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `conseiller`
--
ALTER TABLE `conseiller`
  MODIFY `idConseiller` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `fk_conseiller` FOREIGN KEY (`idConseiller`) REFERENCES `conseiller` (`idConseiller`);

--
-- Contraintes pour la table `compte`
--
ALTER TABLE `compte`
  ADD CONSTRAINT `fk_client` FOREIGN KEY (`idClient`) REFERENCES `client` (`idClient`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
