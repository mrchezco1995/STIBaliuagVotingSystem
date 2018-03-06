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
INSERT INTO `candidates` VALUES (1,'CANDIDATE 1 Pres','President','PartyList1'),(2,'CANDIDATE 1 Vpres','Vice President','PartyList1'),(3,'CANDIDATE 1 Sec','Secretary','PartyList1'),(4,'CANDIDATE 1 Treas','Treasurer','PartyList1'),(5,'CANDIDATE 1 AUD','Auditor','PartyList1'),(6,'CANDIDATE 1 PRO','P.R.O._F','PartyList1'),(7,'CANDIDATE 1 REPR1','P.R.O._M','PartyList1'),(8,'CANDIDATE 1 REPR2','Grade 12 Representative','PartyList1'),(11,'CANDIDATE 2 Pres','President','PartyList2'),(12,'CANDIDATE 2 Vpres','Vice President','PartyList2'),(13,'CANDIDATE 2 Sec','Secretary','PartyList2'),(14,'CANDIDATE 2 Treas','Treasurer','PartyList2'),(15,'CANDIDATE 2 AUD','Auditor','PartyList2'),(16,'CANDIDATE 2 PRO','P.R.O._F','PartyList2'),(17,'CANDIDATE 2 REPR1','P.R.O._M','PartyList2'),(18,'CANDIDATE 2 REPR2','Grade 12 Representative','PartyList2');
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

-- Dump completed on 2018-03-06 20:48:21
