-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: kt
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `score_details`
--

DROP TABLE IF EXISTS `score_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `score_details` (
  `sd_id` int NOT NULL AUTO_INCREMENT,
  `sid` int DEFAULT NULL,
  `scid` int DEFAULT NULL,
  PRIMARY KEY (`sd_id`),
  KEY `sd_st_fk` (`scid`),
  KEY `score_details` (`sid`),
  CONSTRAINT `score_details_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `students` (`sid`),
  CONSTRAINT `sd_sc_fk` FOREIGN KEY (`scid`) REFERENCES `scores` (`scid`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score_details`
--

LOCK TABLES `score_details` WRITE;
/*!40000 ALTER TABLE `score_details` DISABLE KEYS */;
INSERT INTO `score_details` VALUES (1,1,50),(2,1,54),(3,2,55),(4,3,56),(5,2,60),(6,3,62),(7,4,63),(8,4,67),(9,1,69),(10,2,75),(11,3,82),(12,5,86),(13,6,87),(14,4,94),(15,5,95),(16,7,96),(17,2,51),(18,1,52),(19,12,53),(20,3,61),(21,1,64),(22,4,66),(23,3,68),(24,5,70),(25,2,74),(26,4,76),(27,4,77),(28,5,78),(29,7,81),(30,8,84),(31,3,85),(32,17,88),(33,18,93),(34,19,97),(35,20,99),(36,8,57),(37,10,58),(38,11,59),(39,8,65),(40,9,71),(41,10,72),(42,11,73),(43,9,79),(44,10,80),(45,12,83),(46,13,89),(47,11,90),(48,12,91),(49,12,92),(50,13,98);
/*!40000 ALTER TABLE `score_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-23 17:15:46
