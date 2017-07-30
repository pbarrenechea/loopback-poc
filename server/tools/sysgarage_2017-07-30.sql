# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.35)
# Database: sysgarage
# Generation Time: 2017-07-30 18:01:43 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table AccessToken
# ------------------------------------------------------------

CREATE TABLE `AccessToken` (
  `id` varchar(255) NOT NULL,
  `ttl` int(11) DEFAULT NULL,
  `scopes` text,
  `created` datetime DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `AccessToken` WRITE;
/*!40000 ALTER TABLE `AccessToken` DISABLE KEYS */;

INSERT INTO `AccessToken` (`id`, `ttl`, `scopes`, `created`, `userId`)
VALUES
	('4htNCe7GoHQllWC25IXftTZrMCDbap9gcpJkqSdDyCesGs5tYJQXlohZMqeqe7XH',1209600,NULL,'2017-07-23 17:01:28',1),
	('4qiAwJ8ugWg9OdT5tCm9y42F9pb69JrrgAYfoiyy2RvT4tTw6aX5AsEnUaWugrLz',1209600,NULL,'2017-07-24 17:23:34',1),
	('dg4KBpFDnM7pLKAaAlA99EmoNlfDJ5mJpIDVEyAkCtMbJeSUvSPEEbx2tYvYl13M',1209600,NULL,'2017-07-30 14:12:55',10),
	('fA1IUFBPrNKPMlscO0ClgFvVuMEkZL9ZdST8zNC3jqOOJ0n6Qbdr1xoyfIs3v6sa',1209600,NULL,'2017-07-23 17:20:22',1),
	('fCXEhpN65CmpbdSUWU5AAmDPIpne70D2ccPEFE9DOMBMkSH6B6PM53VFeHuaHA0N',1209600,NULL,'2017-07-23 17:03:25',1),
	('ftHIXzlmLNbdQsjp9PBViWsleuXj87V0DkJL8Ap4sudZudaifvzzBako0C8oxPd1',1209600,NULL,'2017-07-24 16:27:19',1),
	('iSzbFVuZU4KuDw6ZOfIYj79mNXxTPfceV0R9Zq2ENCrA5IIIyHrBcSJDQODVQ0v1',1209600,NULL,'2017-07-24 17:21:28',1),
	('NTUvc0rQbVcKPcqKcFyVCHRqLa4pQT5PoHuEJizfBYd96OOXEaUe8NueCGDbpbuO',1209600,NULL,'2017-07-22 17:25:44',1),
	('O9JS58WXyOdgcRBfW7dMKkR2lD6e6tO3pwF7HcWllNfvr7zFyzLCUCsz1EhZOlXi',1209600,NULL,'2017-07-30 13:28:08',1),
	('OcwgqFhasmG3TrhvWjTxk2RpoCvPLvjiYe8Co5S9cGP4KJyErEs2S7ExaanRdmp5',1209600,NULL,'2017-07-30 14:10:09',10),
	('ooKAjJuJFPMzyRHIA7fdDFN5fCvpWhu7APqvIeC2eoUYRtKBDkogoQzIV5HFRCQE',1209600,NULL,'2017-07-30 12:50:34',1),
	('pwZm2g4hD0uaY3Cs7bZd3JtRJlxaExAFaYo48BrVD9ZyJGMqwMYMe4wnSAFwK0Ss',1209600,NULL,'2017-07-30 12:46:34',1),
	('qKMGpUZ1iJlvv0sJi9AJIk4VpbJTdR3U8kiQa0DhUhEUQkRNoCgoAJUt8KTAdtZO',1209600,NULL,'2017-07-24 17:06:53',1),
	('tjcIBDH4EtRz3picFC2sdFg0alSFKHeVdBCLohwDFnnyy1mGTFucu2dxLFtAwbkB',1209600,NULL,'2017-07-30 13:40:43',1),
	('TuyVjOM5BX9GsxbykdoOCGQBG4Nqo7bRISNBA2LCRXSVNE2acMhytQ2yJ5n5d4Wu',1209600,NULL,'2017-07-23 17:01:57',1),
	('WeSsaj4Syh98tnIflHLRvGEzDjl0fSaS7fqAhufKlxsOzkezQdhKdm2Fj9aP4Oc6',1209600,NULL,'2017-07-30 14:00:04',10),
	('wlxconIhTi0LoNKn2lQuTtot9UvfZnr1eAtFUJ6PDyVM41ktDdGOj0lfuID0sO8B',1209600,NULL,'2017-07-22 17:26:45',1),
	('x0MpkcxLvssvE4IBRJzgLSDV17dxYMTwShx08SUBP2C6hXdg415WNMCdxvnovX56',1209600,NULL,'2017-07-24 16:32:09',1),
	('X7mSOyRGKrISs0AfqAXorvVmVnSiD8w9dpbaZSJ5BXR3ChkIuqM6fo5YPRwyCUvK',1209600,NULL,'2017-07-30 14:59:06',1),
	('y28gPwD4IhqCVrIHW336ze21amONt6G7AcTk9FCIVJH6O154kdJlmEFmNKEYyafp',1209600,NULL,'2017-07-30 14:45:12',1),
	('YPJ7Gw8NFtUpydfNp0GhciH6tFyVK9k36cui6Yqm9CVmzk9zbANJx0FGexNNtvB2',1209600,NULL,'2017-07-23 16:41:43',1);

/*!40000 ALTER TABLE `AccessToken` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ACL
# ------------------------------------------------------------

CREATE TABLE `ACL` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(512) DEFAULT NULL,
  `property` varchar(512) DEFAULT NULL,
  `accessType` varchar(512) DEFAULT NULL,
  `permission` varchar(512) DEFAULT NULL,
  `principalType` varchar(512) DEFAULT NULL,
  `principalId` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ACL` WRITE;
/*!40000 ALTER TABLE `ACL` DISABLE KEYS */;

INSERT INTO `ACL` (`id`, `model`, `property`, `accessType`, `permission`, `principalType`, `principalId`)
VALUES
	(1,'Prime','isPrime','EXECUTE','ALLOW','ROLE','2');

/*!40000 ALTER TABLE `ACL` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Role
# ------------------------------------------------------------

CREATE TABLE `Role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(512) NOT NULL,
  `description` varchar(512) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Role` WRITE;
/*!40000 ALTER TABLE `Role` DISABLE KEYS */;

INSERT INTO `Role` (`id`, `name`, `description`, `created`, `modified`)
VALUES
	(1,'admin',NULL,'2017-07-23 17:29:57','2017-07-23 17:29:57'),
	(2,'client',NULL,'2017-07-23 17:30:07','2017-07-23 17:30:07');

/*!40000 ALTER TABLE `Role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table RoleMapping
# ------------------------------------------------------------

CREATE TABLE `RoleMapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `principalType` varchar(512) DEFAULT NULL,
  `principalId` varchar(255) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `principalId` (`principalId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `RoleMapping` WRITE;
/*!40000 ALTER TABLE `RoleMapping` DISABLE KEYS */;

INSERT INTO `RoleMapping` (`id`, `principalType`, `principalId`, `roleId`)
VALUES
	(7,'user','11',1);

/*!40000 ALTER TABLE `RoleMapping` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table User
# ------------------------------------------------------------

DROP TABLE IF EXISTS `User`;

CREATE TABLE `User` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `realm` varchar(512) DEFAULT NULL,
  `username` varchar(512) DEFAULT NULL,
  `password` varchar(512) NOT NULL,
  `email` varchar(512) NOT NULL,
  `emailVerified` tinyint(1) DEFAULT NULL,
  `verificationToken` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;

INSERT INTO `User` (`id`, `realm`, `username`, `password`, `email`, `emailVerified`, `verificationToken`)
VALUES
	(11,NULL,'admin','$2a$10$wNWbutxgBeL1IbIWJVR57eB9mIGsg.fnV6ta6wWP/RdWgci3VPWKO','admin@admin.com',NULL,NULL);

/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
