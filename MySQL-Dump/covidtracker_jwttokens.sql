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
-- Table structure for table `jwttokens`
--

DROP TABLE IF EXISTS `jwttokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jwttokens` (
  `TokenID` int NOT NULL AUTO_INCREMENT,
  `UserID` int DEFAULT NULL,
  `Token` varchar(1000) DEFAULT NULL,
  `RefreshToken` varchar(1000) DEFAULT NULL,
  `TokenData` json DEFAULT NULL,
  `CreatedAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `IsActive` tinyint DEFAULT '1',
  PRIMARY KEY (`TokenID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jwttokens`
--

LOCK TABLES `jwttokens` WRITE;
/*!40000 ALTER TABLE `jwttokens` DISABLE KEYS */;
INSERT INTO `jwttokens` VALUES (1,1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJUcmFja0NvdmlkX1BvcnRhbCIsInN1YiI6InRlc3R1c2VyQGxhbWJkYXplbi5jb20iLCJ1aWQiOiJ0cmFja2NvdmlkX2E1ajFnc3l1NWQ4NnU0dHlhbG95dXk0IiwidmVyIjoiMS4wIiwiZW1haWwiOiJhZG1pbkB0ZXN0LmNvbSIsImlhdCI6MTU5MjM1MTc0NSwiZXhwIjoxNTkyMzU1MzQ1fQ.0ZXnH0YjO335z1-WqUp8_xjJhpAO92wMGLK22tuso8g','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6IllCL1FhSEl0SWl3Z2kweTNzUEd6UXc9PSIsInVpZCI6InRyYWNrY292aWRfYTVqMWdzeXU1ZDg2dTR0eWFsb3l1eTQiLCJpc3MiOiJUcmFja0NvdmlkX1BvcnRhbCIsInN1YiI6InRlc3R1c2VyQGxhbWJkYXplbi5jb20iLCJ2ZXIiOiIxLjAiLCJpYXQiOjE1OTIzNDQzMjEsImV4cCI6MTU5MjQzMDcyMX0.HEOhYjCgUcWYtWXWmTbXDgThht1E7S4YI68IZXbX5hk','{\"iss\": \"TrackCovid_Portal\", \"sub\": \"testuser@lambdazen.com\", \"uid\": \"trackcovid_a5j1gsyu5d86u4tyaloyuy4\", \"ver\": \"1.0\", \"email\": \"admin@test.com\"}','2020-04-19 09:03:06','2020-06-16 19:55:45',1),(2,2,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InVlUkxpZmlXK0lKYTh3VmZkNUdiNHBhelBhMldUNmZ1cmNlamRmaG92Tzg9IiwidWlkIjoidHJhY2tjb3ZpZF9hNWoxZ3N5dTVkODZ1NHR5YWxveXV5NCIsImlzcyI6IlRyYWNrQ292aWRfUG9ydGFsIiwic3ViIjoidGVzdHVzZXJAbGFtYmRhemVuLmNvbSIsInZlciI6IjEuMCIsImlhdCI6MTU4NzM3OTE0MCwiZXhwIjoxNTg3MzgyNzQwfQ.s5H0mCbiaW-V-Gv2uH_SUN0muwJCG4cO7IghaHeslBQ','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InVlUkxpZmlXK0lKYTh3VmZkNUdiNHBhelBhMldUNmZ1cmNlamRmaG92Tzg9IiwidWlkIjoidHJhY2tjb3ZpZF9hNWoxZ3N5dTVkODZ1NHR5YWxveXV5NCIsImlzcyI6IlRyYWNrQ292aWRfUG9ydGFsIiwic3ViIjoidGVzdHVzZXJAbGFtYmRhemVuLmNvbSIsInZlciI6IjEuMCIsImlhdCI6MTU4NzM3OTE0MCwiZXhwIjoxNTg3NDY1NTQwfQ.SMiaaAjopXsY5ZsTw3_rI0YIaW0yquyG7xa_JYgXN7s','{\"iss\": \"TrackCovid_Portal\", \"sub\": \"testuser@lambdazen.com\", \"uid\": \"trackcovid_a5j1gsyu5d86u4tyaloyuy4\", \"ver\": \"1.0\", \"email\": \"employee@test.com\"}','2020-04-19 09:07:48','2020-04-20 10:39:00',1),(3,3,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Inc5UUN3d0VSZGhYUVQzMzRmMkZoWjhsWmswbmw5bHVFIiwidWlkIjoidHJhY2tjb3ZpZF9hNWoxZ3N5dTVkODZ1NHR5YWxveXV5NCIsImlzcyI6IlRyYWNrQ292aWRfUG9ydGFsIiwic3ViIjoidGVzdHVzZXJAbGFtYmRhemVuLmNvbSIsInZlciI6IjEuMCIsImlhdCI6MTU4NzM4MDU2NiwiZXhwIjoxNTg3Mzg0MTY2fQ._8v6tymNn7qA3QPz-NDio4FbrpIZP7wnUwyaS_YHje8','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Inc5UUN3d0VSZGhYUVQzMzRmMkZoWjhsWmswbmw5bHVFIiwidWlkIjoidHJhY2tjb3ZpZF9hNWoxZ3N5dTVkODZ1NHR5YWxveXV5NCIsImlzcyI6IlRyYWNrQ292aWRfUG9ydGFsIiwic3ViIjoidGVzdHVzZXJAbGFtYmRhemVuLmNvbSIsInZlciI6IjEuMCIsImlhdCI6MTU4NzM4MDU2NiwiZXhwIjoxNTg3NDY2OTY2fQ.DNWn3uLtO5M8Gnsq2aCfRCeguCnSfXch8PLrEQLMsmA','{\"iss\": \"TrackCovid_Portal\", \"sub\": \"testuser@lambdazen.com\", \"uid\": \"trackcovid_a5j1gsyu5d86u4tyaloyuy4\", \"ver\": \"1.0\", \"email\": \"test@test.com\"}','2020-04-19 10:57:39','2020-04-20 11:02:46',1),(4,4,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im1hbm9qNzdAZ21haWwuY29tIiwidWlkIjoidHJhY2tjb3ZpZF9hNWoxZ3N5dTVkODZ1NHR5YWxveXV5NCIsImlzcyI6IlRyYWNrQ292aWRfUG9ydGFsIiwic3ViIjoidGVzdHVzZXJAbGFtYmRhemVuLmNvbSIsInZlciI6IjEuMCIsImlhdCI6MTU4NzI5NDMyNiwiZXhwIjoxNTg3Mjk3OTI2fQ.8-cp8viYhkTZ7gNRgtMExQg2PtnDagISlQ_1AGFBlIQ','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im1hbm9qNzdAZ21haWwuY29tIiwidWlkIjoidHJhY2tjb3ZpZF9hNWoxZ3N5dTVkODZ1NHR5YWxveXV5NCIsImlzcyI6IlRyYWNrQ292aWRfUG9ydGFsIiwic3ViIjoidGVzdHVzZXJAbGFtYmRhemVuLmNvbSIsInZlciI6IjEuMCIsImlhdCI6MTU4NzI5NDMyNiwiZXhwIjoxNTg3MzgwNzI2fQ.B7-ZcZ0zVWZ80DJy-7l-TVxH89bFZ3b7YLSdNetErpM','{\"iss\": \"TrackCovid_Portal\", \"sub\": \"testuser@lambdazen.com\", \"uid\": \"trackcovid_a5j1gsyu5d86u4tyaloyuy4\", \"ver\": \"1.0\", \"email\": \"manoj77@gmail.com\"}','2020-04-19 11:05:26','2020-04-19 11:05:26',1),(5,216,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImVtcGxveWVlQHRlc3QuY29tIiwidWlkIjoidHJhY2tjb3ZpZF9hNWoxZ3N5dTVkODZ1NHR5YWxveXV5NCIsImlzcyI6IlRyYWNrQ292aWRfUG9ydGFsIiwic3ViIjoidGVzdHVzZXJAbGFtYmRhemVuLmNvbSIsInZlciI6IjEuMCIsImlhdCI6MTU4NzM1ODI1OCwiZXhwIjoxNTg3MzYxODU4fQ.dt6agWAsvIpfSiau1KsVKXJTUwnfVHK2cFZbBYwSK5g','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImVtcGxveWVlQHRlc3QuY29tIiwidWlkIjoidHJhY2tjb3ZpZF9hNWoxZ3N5dTVkODZ1NHR5YWxveXV5NCIsImlzcyI6IlRyYWNrQ292aWRfUG9ydGFsIiwic3ViIjoidGVzdHVzZXJAbGFtYmRhemVuLmNvbSIsInZlciI6IjEuMCIsImlhdCI6MTU4NzM1ODI1OCwiZXhwIjoxNTg3NDQ0NjU4fQ.sFh4mamozpVqawUxFYC6RqW-gttm6kvoabvOAgexxQg','{\"iss\": \"TrackCovid_Portal\", \"sub\": \"testuser@lambdazen.com\", \"uid\": \"trackcovid_a5j1gsyu5d86u4tyaloyuy4\", \"ver\": \"1.0\", \"email\": \"employee@test.com\"}','2020-04-19 16:12:48','2020-04-20 04:50:58',1),(6,215,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImQxNjI1MzE4Y2ZiYTJiNjhhMGZjZmI1ZTQ3YWZhYjQyMjQzNjMwYjg4ZDYwNGI2OTY3MzBhM2Y0ZDZmMWY3YjVkODZiMjYxN2E0MzFkZDc1YWE0ZGIwMWMxMWY1N2NkNTRjYjYzMjFjNTZiZDMwYTAwMDcyMGQ2MGE4MmM4YThjIiwidWlkIjoidHJhY2tjb3ZpZF9hNWoxZ3N5dTVkODZ1NHR5YWxveXV5NCIsImlzcyI6IlRyYWNrQ292aWRfUG9ydGFsIiwic3ViIjoidGVzdHVzZXJAbGFtYmRhemVuLmNvbSIsInZlciI6IjEuMCIsImlhdCI6MTU4NzM2ODQxMCwiZXhwIjoxNTg3MzcyMDEwfQ.LIC6Tb6bFcaXnPst0p8n97wJ3HE-dLQkUJYHi1Xm0O8','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImQxNjI1MzE4Y2ZiYTJiNjhhMGZjZmI1ZTQ3YWZhYjQyMjQzNjMwYjg4ZDYwNGI2OTY3MzBhM2Y0ZDZmMWY3YjVkODZiMjYxN2E0MzFkZDc1YWE0ZGIwMWMxMWY1N2NkNTRjYjYzMjFjNTZiZDMwYTAwMDcyMGQ2MGE4MmM4YThjIiwidWlkIjoidHJhY2tjb3ZpZF9hNWoxZ3N5dTVkODZ1NHR5YWxveXV5NCIsImlzcyI6IlRyYWNrQ292aWRfUG9ydGFsIiwic3ViIjoidGVzdHVzZXJAbGFtYmRhemVuLmNvbSIsInZlciI6IjEuMCIsImlhdCI6MTU4NzM2ODQxMCwiZXhwIjoxNTg3NDU0ODEwfQ.EtMnpRSbfwC9x5OJ8uLbISfccyjQGXfa_g9MpzaYoJ0','{\"iss\": \"TrackCovid_Portal\", \"sub\": \"testuser@lambdazen.com\", \"uid\": \"trackcovid_a5j1gsyu5d86u4tyaloyuy4\", \"ver\": \"1.0\", \"email\": \"admin@test.com\"}','2020-04-19 16:15:24','2020-04-20 07:40:10',1),(7,193,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImphbmV0QGphY2tzb24uY29tIiwidWlkIjoidHJhY2tjb3ZpZF9hNWoxZ3N5dTVkODZ1NHR5YWxveXV5NCIsImlzcyI6IlRyYWNrQ292aWRfUG9ydGFsIiwic3ViIjoidGVzdHVzZXJAbGFtYmRhemVuLmNvbSIsInZlciI6IjEuMCIsImlhdCI6MTU4NzM2MDc4OCwiZXhwIjoxNTg3MzY0Mzg4fQ.1yJ9-LHt5Uk2dnIKI3XzmNsERNB3kENpZZTR6rMSL4Y','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImphbmV0QGphY2tzb24uY29tIiwidWlkIjoidHJhY2tjb3ZpZF9hNWoxZ3N5dTVkODZ1NHR5YWxveXV5NCIsImlzcyI6IlRyYWNrQ292aWRfUG9ydGFsIiwic3ViIjoidGVzdHVzZXJAbGFtYmRhemVuLmNvbSIsInZlciI6IjEuMCIsImlhdCI6MTU4NzM2MDc4OCwiZXhwIjoxNTg3NDQ3MTg4fQ.6I4LTEBXLxWYkObkiD3EqC7QnW62ReislVHb44opr6E','{\"iss\": \"TrackCovid_Portal\", \"sub\": \"testuser@lambdazen.com\", \"uid\": \"trackcovid_a5j1gsyu5d86u4tyaloyuy4\", \"ver\": \"1.0\", \"email\": \"janet@jackson.com\"}','2020-04-19 16:19:49','2020-04-20 05:33:08',1),(8,208,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImpvaG5AamFja3Nvbi5jb20iLCJ1aWQiOiJ0cmFja2NvdmlkX2E1ajFnc3l1NWQ4NnU0dHlhbG95dXk0IiwiaXNzIjoiVHJhY2tDb3ZpZF9Qb3J0YWwiLCJzdWIiOiJ0ZXN0dXNlckBsYW1iZGF6ZW4uY29tIiwidmVyIjoiMS4wIiwiaWF0IjoxNTg3MzYwODczLCJleHAiOjE1ODczNjQ0NzN9.ZSej_ydi4FmUYCGY_7u4jHUFhbMBWoPblRQYx7IyuFM','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImpvaG5AamFja3Nvbi5jb20iLCJ1aWQiOiJ0cmFja2NvdmlkX2E1ajFnc3l1NWQ4NnU0dHlhbG95dXk0IiwiaXNzIjoiVHJhY2tDb3ZpZF9Qb3J0YWwiLCJzdWIiOiJ0ZXN0dXNlckBsYW1iZGF6ZW4uY29tIiwidmVyIjoiMS4wIiwiaWF0IjoxNTg3MzYwODczLCJleHAiOjE1ODc0NDcyNzN9.PiiTsEK8s41EUOySLnKXKG5PmW0FGKnoFIoa1ABvS_8','{\"iss\": \"TrackCovid_Portal\", \"sub\": \"testuser@lambdazen.com\", \"uid\": \"trackcovid_a5j1gsyu5d86u4tyaloyuy4\", \"ver\": \"1.0\", \"email\": \"john@jackson.com\"}','2020-04-19 18:16:03','2020-04-20 05:34:33',1),(9,217,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6IllCL1FhSEl0SWl3Z2kweTNzUEd6UXc9PSIsInVpZCI6InRyYWNrY292aWRfYTVqMWdzeXU1ZDg2dTR0eWFsb3l1eTQiLCJpc3MiOiJUcmFja0NvdmlkX1BvcnRhbCIsInN1YiI6InRlc3R1c2VyQGxhbWJkYXplbi5jb20iLCJ2ZXIiOiIxLjAiLCJpYXQiOjE1ODczNzM5MDEsImV4cCI6MTU4NzM3NzUwMX0.UH0bBCThPiZDy0ptKqlmY0wYlKWnam2KiHoQK9zazPw','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6IllCL1FhSEl0SWl3Z2kweTNzUEd6UXc9PSIsInVpZCI6InRyYWNrY292aWRfYTVqMWdzeXU1ZDg2dTR0eWFsb3l1eTQiLCJpc3MiOiJUcmFja0NvdmlkX1BvcnRhbCIsInN1YiI6InRlc3R1c2VyQGxhbWJkYXplbi5jb20iLCJ2ZXIiOiIxLjAiLCJpYXQiOjE1ODczNzM5MDEsImV4cCI6MTU4NzQ2MDMwMX0.63ii5AIXuX4A5_hmBZ2Qsy8CxXkhahalJu574dR5xOI','{\"iss\": \"TrackCovid_Portal\", \"sub\": \"testuser@lambdazen.com\", \"uid\": \"trackcovid_a5j1gsyu5d86u4tyaloyuy4\", \"ver\": \"1.0\", \"email\": \"ead66aacf3a528c5902c8d6c00b7226a7e5ae1158b55047e63ea0a8bc4421c972d52a921a845527b762e785ca702cb00212d49e671636a81b5669bf81e25f9196ee849838ef0215fc09c9a3ce50b56ab9161497ae3d9bb2a5bf174bc31992458db69bb9ebc640e76cd7341418ac4\"}','2020-04-20 07:54:28','2020-04-20 09:11:41',1),(10,11,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6IlVxa1dXS1ZGVEZOMTZzOG1MS01kcUxoWTJNb0g4WkczIiwidWlkIjoidHJhY2tjb3ZpZF9hNWoxZ3N5dTVkODZ1NHR5YWxveXV5NCIsImlzcyI6IlRyYWNrQ292aWRfUG9ydGFsIiwic3ViIjoidGVzdHVzZXJAbGFtYmRhemVuLmNvbSIsInZlciI6IjEuMCIsImlhdCI6MTU4NzU2MDM1MywiZXhwIjoxNTg3NTYzOTUzfQ.GgMOgrCNOlNUvr37oj-QZ1Xo5Y9mr58kQp9FcSa12m4','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6IlVxa1dXS1ZGVEZOMTZzOG1MS01kcUxoWTJNb0g4WkczIiwidWlkIjoidHJhY2tjb3ZpZF9hNWoxZ3N5dTVkODZ1NHR5YWxveXV5NCIsImlzcyI6IlRyYWNrQ292aWRfUG9ydGFsIiwic3ViIjoidGVzdHVzZXJAbGFtYmRhemVuLmNvbSIsInZlciI6IjEuMCIsImlhdCI6MTU4NzU2MDM1MywiZXhwIjoxNTg3NjQ2NzUzfQ.cf329BuoL1zuCt72HJh6i-9789lppUioKlC1zLpXyn8','{\"iss\": \"TrackCovid_Portal\", \"sub\": \"testuser@lambdazen.com\", \"uid\": \"trackcovid_a5j1gsyu5d86u4tyaloyuy4\", \"ver\": \"1.0\", \"email\": \"UqkWWKVFTFN16s8mLKMdqLhY2MoH8ZG3\"}','2020-04-20 10:56:10','2020-04-22 12:59:13',1),(11,14,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Ik1Ga2N0clNaWUovWVZxVjU3TXhxc0M2bVRNQm94UXIvIiwidWlkIjoidHJhY2tjb3ZpZF9hNWoxZ3N5dTVkODZ1NHR5YWxveXV5NCIsImlzcyI6IlRyYWNrQ292aWRfUG9ydGFsIiwic3ViIjoidGVzdHVzZXJAbGFtYmRhemVuLmNvbSIsInZlciI6IjEuMCIsImlhdCI6MTU4NzM4NzgzMiwiZXhwIjoxNTg3MzkxNDMyfQ.MBkaJKoOQVlWo-ueTZQUcAvF0ha2HwJsgiB0GFUy2gI','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Ik1Ga2N0clNaWUovWVZxVjU3TXhxc0M2bVRNQm94UXIvIiwidWlkIjoidHJhY2tjb3ZpZF9hNWoxZ3N5dTVkODZ1NHR5YWxveXV5NCIsImlzcyI6IlRyYWNrQ292aWRfUG9ydGFsIiwic3ViIjoidGVzdHVzZXJAbGFtYmRhemVuLmNvbSIsInZlciI6IjEuMCIsImlhdCI6MTU4NzM4NzgzMiwiZXhwIjoxNTg3NDc0MjMyfQ.XUlAXd4lPJ8xnWAe6viMJ6D2IpDkcaJykvZfOJGhXKo','{\"iss\": \"TrackCovid_Portal\", \"sub\": \"testuser@lambdazen.com\", \"uid\": \"trackcovid_a5j1gsyu5d86u4tyaloyuy4\", \"ver\": \"1.0\", \"email\": \"MFkctrSZYJ/YVqV57MxqsC6mTMBoxQr/\"}','2020-04-20 10:56:27','2020-04-20 13:03:52',1),(12,15,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJUcmFja0NvdmlkX1BvcnRhbCIsInN1YiI6InRlc3R1c2VyQGxhbWJkYXplbi5jb20iLCJ1aWQiOiJ0cmFja2NvdmlkX2E1ajFnc3l1NWQ4NnU0dHlhbG95dXk0IiwidmVyIjoiMS4wIiwiZW1haWwiOiJjZ0VZeFM2NFYxUmdwN2FZaXBXNHdHUG9zT2p0ZHY2TiIsImlhdCI6MTU4NzU4NTYwNCwiZXhwIjoxNTg3NTg5MjA0fQ.k_47T4re0uwLQk711TjtPDo6hI1scsXfbDOW9zWsuus','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImNnRVl4UzY0VjFSZ3A3YVlpcFc0d0dQb3NPanRkdjZOIiwidWlkIjoidHJhY2tjb3ZpZF9hNWoxZ3N5dTVkODZ1NHR5YWxveXV5NCIsImlzcyI6IlRyYWNrQ292aWRfUG9ydGFsIiwic3ViIjoidGVzdHVzZXJAbGFtYmRhemVuLmNvbSIsInZlciI6IjEuMCIsImlhdCI6MTU4NzU3NzMwNSwiZXhwIjoxNTg3NjYzNzA1fQ.l1R3PnwrRxMtkOALc3HljLCIhA6DjBG95ViPS5CRObM','{\"iss\": \"TrackCovid_Portal\", \"sub\": \"testuser@lambdazen.com\", \"uid\": \"trackcovid_a5j1gsyu5d86u4tyaloyuy4\", \"ver\": \"1.0\", \"email\": \"cgEYxS64V1Rgp7aYipW4wGPosOjtdv6N\"}','2020-04-20 14:33:52','2020-04-22 20:00:04',1),(13,16,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6IjJ0enNGYzF2QThqSmIxdmp5eExDb3B3TUhYMDg5TnpMIiwidWlkIjoidHJhY2tjb3ZpZF9hNWoxZ3N5dTVkODZ1NHR5YWxveXV5NCIsImlzcyI6IlRyYWNrQ292aWRfUG9ydGFsIiwic3ViIjoidGVzdHVzZXJAbGFtYmRhemVuLmNvbSIsInZlciI6IjEuMCIsImlhdCI6MTU4NzU2MDkzMSwiZXhwIjoxNTg3NTY0NTMxfQ.DcwN-J7BSZLalgTjcZsSyBweq1QqY_ZqlOlcP27yiQc','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6IjJ0enNGYzF2QThqSmIxdmp5eExDb3B3TUhYMDg5TnpMIiwidWlkIjoidHJhY2tjb3ZpZF9hNWoxZ3N5dTVkODZ1NHR5YWxveXV5NCIsImlzcyI6IlRyYWNrQ292aWRfUG9ydGFsIiwic3ViIjoidGVzdHVzZXJAbGFtYmRhemVuLmNvbSIsInZlciI6IjEuMCIsImlhdCI6MTU4NzU2MDkzMSwiZXhwIjoxNTg3NjQ3MzMxfQ.jeHSneRKBRfLplBFgiB_r3WRdetZuXItvWgkahiTMsE','{\"iss\": \"TrackCovid_Portal\", \"sub\": \"testuser@lambdazen.com\", \"uid\": \"trackcovid_a5j1gsyu5d86u4tyaloyuy4\", \"ver\": \"1.0\", \"email\": \"2tzsFc1vA8jJb1vjyxLCopwMHX089NzL\"}','2020-04-22 13:08:51','2020-04-22 13:08:51',1),(14,12,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6IlUzaHlzL095RmdTa1NHazRLU2I2eS9BQ3ZIYm9FU3JHIiwidWlkIjoidHJhY2tjb3ZpZF9hNWoxZ3N5dTVkODZ1NHR5YWxveXV5NCIsImlzcyI6IlRyYWNrQ292aWRfUG9ydGFsIiwic3ViIjoidGVzdHVzZXJAbGFtYmRhemVuLmNvbSIsInZlciI6IjEuMCIsImlhdCI6MTU4ODAxNDU2NCwiZXhwIjoxNTg4MDE4MTY0fQ.mbEimdrippkuUrCP8RIz_y-YFQXYPKnK3QGsIWJzIog','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6IlUzaHlzL095RmdTa1NHazRLU2I2eS9BQ3ZIYm9FU3JHIiwidWlkIjoidHJhY2tjb3ZpZF9hNWoxZ3N5dTVkODZ1NHR5YWxveXV5NCIsImlzcyI6IlRyYWNrQ292aWRfUG9ydGFsIiwic3ViIjoidGVzdHVzZXJAbGFtYmRhemVuLmNvbSIsInZlciI6IjEuMCIsImlhdCI6MTU4ODAxNDU2NCwiZXhwIjoxNTg4MTAwOTY0fQ.6TyESQ7em1F2MmUwyGk4NRQwb7QLqrxFFJVVyHba2i0','{\"iss\": \"TrackCovid_Portal\", \"sub\": \"testuser@lambdazen.com\", \"uid\": \"trackcovid_a5j1gsyu5d86u4tyaloyuy4\", \"ver\": \"1.0\", \"email\": \"U3hys/OyFgSkSGk4KSb6y/ACvHboESrG\"}','2020-04-23 21:46:10','2020-04-27 19:09:24',1),(15,24,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6IkVNTFlYemZBOXhzPSIsInVpZCI6InRyYWNrY292aWRfYTVqMWdzeXU1ZDg2dTR0eWFsb3l1eTQiLCJpc3MiOiJUcmFja0NvdmlkX1BvcnRhbCIsInN1YiI6InRlc3R1c2VyQGxhbWJkYXplbi5jb20iLCJ2ZXIiOiIxLjAiLCJpYXQiOjE1ODgwMzYxMjAsImV4cCI6MTU4ODAzOTcyMH0.equb13pqhMXDdmOncs3Ix_cLFGbkDI0EX5TFgsoTI6A','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6IkVNTFlYemZBOXhzPSIsInVpZCI6InRyYWNrY292aWRfYTVqMWdzeXU1ZDg2dTR0eWFsb3l1eTQiLCJpc3MiOiJUcmFja0NvdmlkX1BvcnRhbCIsInN1YiI6InRlc3R1c2VyQGxhbWJkYXplbi5jb20iLCJ2ZXIiOiIxLjAiLCJpYXQiOjE1ODgwMzYxMjAsImV4cCI6MTU4ODEyMjUyMH0.68efm62MH7_miukwZKzkk4FdKzmW9_yzwIT1GOFRdn0','{\"iss\": \"TrackCovid_Portal\", \"sub\": \"testuser@lambdazen.com\", \"uid\": \"trackcovid_a5j1gsyu5d86u4tyaloyuy4\", \"ver\": \"1.0\", \"email\": \"EMLYXzfA9xs=\"}','2020-04-27 20:34:56','2020-04-28 01:08:40',1);
/*!40000 ALTER TABLE `jwttokens` ENABLE KEYS */;
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