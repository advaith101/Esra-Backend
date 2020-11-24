-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: covidtracker
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `LocationID` int NOT NULL AUTO_INCREMENT,
  `CompanyID` int NOT NULL,
  `Name` varchar(500) DEFAULT NULL,
  `CreatedAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `IsActive` tinyint DEFAULT '1',
  PRIMARY KEY (`LocationID`),
  KEY `CompanyID` (`CompanyID`),
  CONSTRAINT `locations_ibfk_1` FOREIGN KEY (`CompanyID`) REFERENCES `companies` (`CompanyID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,1,'GTX01: Gulf State Toyota','2020-04-17 09:35:49','2020-04-17 09:35:49',1),(2,1,'GTX02: Gulf States Toyota - PDC','2020-04-17 09:35:49','2020-04-17 09:35:49',1),(3,1,'GTX03: Gulf States Toyota - VPC','2020-04-17 09:35:49','2020-04-17 09:35:49',1),(4,1,'FCA01: Chupacabra Racing','2020-04-19 08:41:27','2020-04-19 08:41:27',1),(5,1,'FCA02: D&D CA','2020-04-19 08:41:28','2020-04-19 08:41:28',1),(6,1,'FCA03: T&S CA','2020-04-19 08:41:28','2020-04-19 08:41:28',1),(7,1,'FCO01: SIR North LLC','2020-04-19 08:41:29','2020-04-19 08:41:29',1),(8,1,'FCO02: T&S CO','2020-04-19 08:41:29','2020-04-19 08:41:29',1),(9,1,'FTX04: Friedkin Aviation','2020-04-19 08:41:30','2020-04-19 08:41:30',1),(10,1,'FTX03: CMR Energy','2020-04-19 08:41:30','2020-04-19 08:41:30',1),(11,1,'FTX05: D&D TX','2020-04-19 08:41:31','2020-04-19 08:41:31',1),(12,1,'FTX06: T&S TX','2020-04-19 08:41:32','2020-04-19 08:41:32',1),(13,1,'FTX07: Tomisu Friedkin','2020-04-19 08:41:32','2020-04-19 08:41:32',1),(14,1,'FTX08: Legendary Adventures','2020-04-19 08:41:33','2020-04-19 08:41:33',1),(15,1,'FTX09: Comanche Ranch','2020-04-19 08:41:33','2020-04-19 08:41:33',1);
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-16 20:19:40