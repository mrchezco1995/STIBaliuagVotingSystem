CREATE DATABASE  IF NOT EXISTS `stielections` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `stielections`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: stielections
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `candidates`
--

DROP TABLE IF EXISTS `candidates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `candidates` (
  `idcandidate` int(11) NOT NULL AUTO_INCREMENT,
  `membername` varchar(45) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
  `partylist` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcandidate`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidates`
--

LOCK TABLES `candidates` WRITE;
/*!40000 ALTER TABLE `candidates` DISABLE KEYS */;
INSERT INTO `candidates` VALUES (1,'Mark Christian Sevilleno','President','LIPAD'),(2,'Mayu Javier','Vice President','LIPAD'),(3,'Patricia Caluag','Secretary','LIPAD'),(4,'Janna Samson','Treasurer','LIPAD'),(5,'Jomari Vasallo','Auditor','LIPAD'),(6,'Geraldine Cuevas','P.R.O._F','LIPAD'),(7,'Ethan Jesther Mendez','P.R.O._M','LIPAD'),(8,'Allyssa Sarmiento','Grade 12 Representative','LIPAD'),(11,'Alvie De Sahagun','President','LEGIT'),(12,'Raizza Flores','Vice President','LEGIT'),(13,'Danella Castillo','Secretary','LEGIT'),(14,'Jorie Iligan','Treasurer','LEGIT'),(15,'Don Villaroman','Auditor','LEGIT'),(16,'Julie Dimla','P.R.O._F','LEGIT'),(17,'Mark John Villafane','P.R.O._M','LEGIT'),(18,'Raechel Rola','Grade 12 Representative','LEGIT');
/*!40000 ALTER TABLE `candidates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voters`
--

DROP TABLE IF EXISTS `voters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voters` (
  `idvoters` int(11) NOT NULL AUTO_INCREMENT,
  `lastname` varchar(45) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `middlename` varchar(45) NOT NULL,
  `grade` varchar(45) NOT NULL,
  `strand` varchar(45) NOT NULL,
  `presvote` varchar(45) NOT NULL,
  `vpresvote` varchar(45) NOT NULL,
  `secvote` varchar(45) NOT NULL,
  `treasvote` varchar(45) NOT NULL,
  `audvote` varchar(45) NOT NULL,
  `provote` varchar(45) NOT NULL,
  `g11repvote` varchar(45) NOT NULL,
  `g12repvote` varchar(45) NOT NULL,
  `g13repvote` varchar(45) NOT NULL DEFAULT 'none',
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idvoters`),
  UNIQUE KEY `idvoters_UNIQUE` (`idvoters`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voters`
--

LOCK TABLES `voters` WRITE;
/*!40000 ALTER TABLE `voters` DISABLE KEYS */;
/*!40000 ALTER TABLE `voters` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-05 22:32:03
