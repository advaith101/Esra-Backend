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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `CompanyID` int NOT NULL,
  `Name` text,
  `Password` text NOT NULL,
  `Email` varchar(8000) NOT NULL,
  `LocationID` int DEFAULT NULL,
  `DepartmentID` int DEFAULT NULL,
  `IsAdmin` tinyint DEFAULT '0',
  `CreatedAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` int DEFAULT NULL,
  `IsActive` tinyint DEFAULT '1',
  `Status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `UserID_UNIQUE` (`UserID`),
  KEY `CompanyID` (`CompanyID`),
  KEY `LocationID` (`LocationID`),
  KEY `DepartmentID` (`DepartmentID`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`CompanyID`) REFERENCES `companies` (`CompanyID`) ON DELETE CASCADE,
  CONSTRAINT `users_ibfk_2` FOREIGN KEY (`LocationID`) REFERENCES `locations` (`LocationID`) ON DELETE CASCADE,
  CONSTRAINT `users_ibfk_3` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'YB/QaHItIiwgi0y3sPGzQw==','2jq4OJX7u8o=','YB/QaHItIiwgi0y3sPGzQw==',8,1,1,'2020-04-20 09:43:39','2020-04-20 09:43:39',1,1,1),(2,1,'amlRZ09NmDjuhjGkGAFdrYUEQL1DKsVz','ueRLifiW+IJa8wVfd5Gb4gOciz8y2icR','ueRLifiW+IJa8wVfd5Gb4pazPa2WT6furcejdfhovO8=',2,1,1,'2020-04-20 10:27:12','2020-04-20 10:27:12',1,1,0),(3,1,'KQAsp58ARUGk/7H2EubKAUn482RV28Wd','w9QCwwERdhXoPI9pCjxShrKlnZvfX3MF','w9QCwwERdhXQT334f2FhZ8lZk0nl9luE',2,1,1,'2020-04-20 10:43:57','2020-04-20 10:43:57',1,1,0),(4,1,'O3/IDNfEXqn4FDY0iZq5cQ==','fMGZfoSaHjjhBfFex3F/bQ==','p044MY8EgbxogW0Nxl+PZw==',3,1,1,'2020-04-20 10:49:45','2020-04-20 10:49:45',1,1,0),(5,1,'UKCA4vuA3D4VFKmQKTi+YA==','SPhynCl0ZrhUKO8cb8t3UA==','SPhynCl0Zrjtw3L2tGTeVMvqAZ/1Sh+q',4,1,1,'2020-04-20 10:50:52','2020-04-20 10:50:52',1,1,0),(6,1,'niouv8Z9csFfFyQT1xCsweo+dC4wKfs6','y5GEvF61o2LaphKwyH1UUg==','y5GEvF61o2I5zSfizfcUZAEq2jGJkvNd',5,1,1,'2020-04-20 10:51:24','2020-04-20 10:51:24',1,1,0),(7,1,'WK2J1p/0/gH0sjbln/o1ig==','XDdHVuPZ+cURL20YtBN1TA==','XDdHVuPZ+cVq6FZNDSBjo52nTxNwMFZ1',3,1,1,'2020-04-20 10:52:52','2020-04-20 10:52:52',1,1,0),(8,1,'fR8NKW6CgstAol67qh/7ag==','1i+cOslJ7gks9kQ8cQlUKQ==','1i+cOslJ7gn51/Q8+H8jRZkRSNz1CBd7',1,1,1,'2020-04-20 10:53:18','2020-04-20 10:53:18',1,1,0),(9,1,'gBzB+q1ZP0XSfbO1k/SmWQ==','ekEz47bl7soRxwWRigbe1A==','ekEz47bl7so2M7xfIHyaRxD/0fgZQZWzPxqYZTr1qtI=',1,1,1,'2020-04-20 10:53:39','2020-04-20 10:53:39',1,1,0),(10,1,'PWbZynOIjvxRB2RK0BGzzQ==','ccJwuxc7pgqcIqDIABpCtQ==','ccJwuxc7pgqZyXfgsrm8kxFyrXrlLVtZ',1,1,1,'2020-04-20 10:54:04','2020-04-20 10:54:04',1,1,0),(11,1,'9S7UDtCe3guVuIMOyPP4Sw==','UqkWWKVFTFNkOO6S0fSWXA==','UqkWWKVFTFN16s8mLKMdqLhY2MoH8ZG3',1,1,1,'2020-04-20 10:54:25','2020-04-20 10:54:25',1,1,0),(12,1,'ZmB7f0glHLk66HvpTvC7Yw==','u0GfHIbFQftB99t8HrH5hQ==','U3hys/OyFgSkSGk4KSb6y/ACvHboESrG',1,1,1,'2020-04-20 10:54:46','2020-04-20 10:54:46',1,1,0),(13,1,'vjTKbDmWlT4Ea227FNDE/A==','sWnEn6hNVeIayPZYQccEBQ==','sWnEn6hNVeJspmYq/k+SsqcrwwRlYouD',1,1,1,'2020-04-20 10:55:06','2020-04-20 10:55:06',1,1,0),(14,1,'3aQzL8x3AAIt54auKTjbGA==','MFkctrSZYJ/4DF+hBLq3ow==','MFkctrSZYJ/YVqV57MxqsC6mTMBoxQr/',1,1,1,'2020-04-20 10:55:25','2020-04-20 10:55:25',1,1,0),(15,1,'NBrAIvpH1cniZbQhma1IpA==','d404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db','cgEYxS64V1Rgp7aYipW4wGPosOjtdv6N',2,1,0,'2020-04-20 14:33:36','2020-04-20 14:33:36',1,1,0),(16,1,'SctZ7GNnGH19vNDra92tZg==','2jq4OJX7u8o=','2tzsFc1vA8jJb1vjyxLCopwMHX089NzL',NULL,NULL,0,'2020-04-22 13:08:35','2020-04-22 13:08:35',1,1,0),(17,1,'sZFMCASQKbwwr4rWfuiytA==','2jq4OJX7u8o=','ZU6xFYvEwCTVqkK4h84r823mbnnny8eV',NULL,NULL,0,'2020-04-23 21:48:50','2020-04-23 21:48:50',12,1,0),(18,1,'qUXNlRrzhMRVhXTR4z4HOA==','2jq4OJX7u8o=','MHvPb+1WVvPTAhY8PRB6db2j6ghTR5AM',NULL,NULL,0,'2020-04-23 21:51:25','2020-04-23 21:51:25',12,1,0),(19,1,'22ox0uAOI9h83CZb2ifiTA==','2jq4OJX7u8o=','+xnPYQq/Jcsy/ejfK+K6QIIbkEl1BQ1U',NULL,NULL,0,'2020-04-23 21:52:32','2020-04-23 21:52:32',12,1,0),(20,1,'xg0ikdlnlOHQA84avircJw==','2jq4OJX7u8o=','RD6+nziSmSnxpv658i35ODALNu2KHUea',NULL,NULL,0,'2020-04-23 21:53:44','2020-04-23 21:53:44',12,1,0),(21,1,'kSxBwJu066JBYTbd5gzPng==','2jq4OJX7u8o=','17QPt6GOt8J8rcu7F4VRO4dh8VsEwdBB',NULL,NULL,0,'2020-04-23 21:54:45','2020-04-23 21:54:45',12,1,0),(22,1,'5RW2PArDMfohK7R0lFH2QA==','2jq4OJX7u8o=','SPdmzD91H9/Q4dfdz5mdQo895+FQVnxKMWo4g3p8U2g=',NULL,NULL,0,'2020-04-23 21:55:51','2020-04-23 21:55:51',12,1,0),(23,1,'lO+t6Xk0xG6sS4J3xHyiiTv3SjPbwtMc','2jq4OJX7u8o=','KKeuledGvuUMM73pnBSf6N8ftdA2g2kw',NULL,NULL,0,'2020-04-27 19:12:45','2020-04-27 19:12:45',12,1,0),(24,1,'AYCqZUo+H5XuI8asDLOpFA==','2jq4OJX7u8o=','EMLYXzfA9xs=',1,1,0,'2020-04-27 20:34:16','2020-04-27 20:34:16',1,1,0),(25,1,'tMa/m5AknUM=','2jq4OJX7u8o=','ljdx9uhtOhOwkQE9P58tM2/FnZXfyEWb',NULL,NULL,0,'2020-06-08 16:57:43','2020-06-08 16:57:43',1,1,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-16 20:19:39
