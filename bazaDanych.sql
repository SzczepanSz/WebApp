CREATE DATABASE  IF NOT EXISTS `web_customer_tracker` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `web_customer_tracker`;
-- MySQL dump 10.13  Distrib 5.6.13, for osx10.6 (i386)
--
-- Host: 127.0.0.1    Database: web_customer_tracker
-- ------------------------------------------------------
-- Server version	5.6.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `systems`
--

DROP TABLE IF EXISTS `systems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `system` varchar(45) DEFAULT NULL,
  `request` int DEFAULT NULL,
  `order_number` varchar(45) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `amount_type` varchar(45) DEFAULT NULL,
  `amount_period` varchar(45) DEFAULT NULL,
  `authorization_percent` int DEFAULT NULL,
  `active` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `technology` varchar(45) DEFAULT NULL,
  `owner` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systems`
--

LOCK TABLES `systems` WRITE;
/*!40000 ALTER TABLE `systems` DISABLE KEYS */;

INSERT INTO `systems` VALUES 
	(1,'KUCYK','2222','22/2011','2012-02-02','2014-04-03','100.00','NET','MONTH','2','true','system zarzadzania stadnina','spring MVC','Stadnina koni'),
	(2,'LÓDKA',	'2343',	'21/2012','2012-03-10','2014-03-03','555','NET',	'MONTH','2','true','wypozyczalnia jachtow','pHp','Jacht S.A'),
	(3,'KAPISZON','1232','34/2010','2011-06-04','2014-06-05','453.33','NET','MONTH','2','true','pomiar mocy wybuchu ','java','Stragan z Fajerwerkami'),
	(4,'KOTEK','3131','22/2015','2015-01-21','2016-01-01','123.31','BRU','YEAR','2','false','system obslugi schroniska','ASP.NET','Schronisko dl psow'),
	(5,'DEMON','1222','303/2017','2017-03-15','2017-12-22','122.11','NET','MONTH','2','true','narzedzie do nagrywania CD','C++','Komunie i Sluby'),
    (6,'ZÓLWIK','5511','212/2017','1917-01-23','2017-12-25','122.12','NET','MONTH','2','true','system kontroli akwarium','LabView','Basen'),
    (7,'KOJOTEK','3322','311/2017','2017-01-12','2017-12-31','444.00','NET','MONTH','2','true','jak zlapac strusia','catcher','Toys4boys');

/*!40000 ALTER TABLE `systems` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-24 21:50:59
