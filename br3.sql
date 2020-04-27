-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 27 Avril 2020 à 16:17
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `br3`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrator`
--

CREATE TABLE IF NOT EXISTS `administrator` (
  `userId` int(254) NOT NULL AUTO_INCREMENT,
  `adminName` varchar(254) DEFAULT NULL,
  `adminEmail` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `administrator`
--

INSERT INTO `administrator` (`userId`, `adminName`, `adminEmail`) VALUES
(1, 'admin1', 'me.mr@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `userId` int(254) NOT NULL AUTO_INCREMENT,
  `costumerName` varchar(254) DEFAULT NULL,
  `costumerEmail` varchar(254) DEFAULT NULL,
  `creditCardInfo` varchar(254) DEFAULT NULL,
  `shippingInfo` varchar(254) DEFAULT NULL,
  `accountBalance` float DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `customer`
--

INSERT INTO `customer` (`userId`, `costumerName`, `costumerEmail`, `creditCardInfo`, `shippingInfo`, `accountBalance`) VALUES
(1, 'amine', 'email@email.com', 'aaaaaaaaaaaaaaaaaaaaaaaaaaa', 'info1', 55555),
(2, 'amine2', 'email@email.com', 'aaaaaaaaaaaaaaaaaaaaa', 'info2', 555);

-- --------------------------------------------------------

--
-- Structure de la table `orderdetails`
--

CREATE TABLE IF NOT EXISTS `orderdetails` (
  `orderDetailsId` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) DEFAULT NULL,
  `orderId` int(11) DEFAULT NULL,
  `productName` varchar(254) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unitCost` float DEFAULT NULL,
  `subTotal` float DEFAULT NULL,
  PRIMARY KEY (`orderDetailsId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `orderdetails`
--

INSERT INTO `orderdetails` (`orderDetailsId`, `productId`, `orderId`, `productName`, `quantity`, `unitCost`, `subTotal`) VALUES
(1, 1, 1, 'tv FITCO', 5, 1000, 20000000);

-- --------------------------------------------------------

--
-- Structure de la table `shippinginfo`
--

CREATE TABLE IF NOT EXISTS `shippinginfo` (
  `shippingId` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL,
  `shippingType` varchar(254) DEFAULT NULL,
  `shippingCost` int(11) DEFAULT NULL,
  `shippingRegionId` int(11) DEFAULT NULL,
  PRIMARY KEY (`shippingId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `shippinginfo`
--

INSERT INTO `shippinginfo` (`shippingId`, `orderId`, `shippingType`, `shippingCost`, `shippingRegionId`) VALUES
(2, 1, 'SSSSS', 3, 4);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userId` int(254) NOT NULL AUTO_INCREMENT,
  `password` varchar(254) DEFAULT NULL,
  `loginStatus` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`userId`, `password`, `loginStatus`) VALUES
(1, '1234', 'user');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
