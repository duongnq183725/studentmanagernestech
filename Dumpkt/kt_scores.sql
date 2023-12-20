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
-- Table structure for table `scores`
--

DROP TABLE IF EXISTS `scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scores` (
  `scid` int NOT NULL AUTO_INCREMENT,
  `score` float(3,2) DEFAULT NULL,
  `type_id` int DEFAULT NULL,
  `sj_id` int DEFAULT NULL,
  PRIMARY KEY (`scid`),
  KEY `sc_sj_fk` (`sj_id`),
  KEY `ts_sj_fk` (`type_id`),
  CONSTRAINT `sc_sj_fk` FOREIGN KEY (`sj_id`) REFERENCES `subjects` (`sjid`),
  CONSTRAINT `ts_sj_fk` FOREIGN KEY (`type_id`) REFERENCES `type_score` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scores`
--

LOCK TABLES `scores` WRITE;
/*!40000 ALTER TABLE `scores` DISABLE KEYS */;
INSERT INTO `scores` VALUES (50,6.00,1,1),(51,6.00,3,2),(52,5.00,2,2),(53,6.60,1,2),(54,5.00,2,1),(55,8.50,1,1),(56,7.00,1,1),(57,8.00,3,3),(58,8.00,1,3),(59,8.00,1,3),(60,9.00,2,1),(61,6.00,3,2),(62,7.00,2,1),(63,5.00,2,1),(64,6.00,1,2),(65,7.00,2,3),(66,7.00,1,2),(67,5.00,1,1),(68,6.00,2,2),(69,7.00,3,1),(70,8.00,3,2),(71,6.00,2,3),(72,5.00,2,3),(73,4.00,2,3),(74,4.00,1,2),(75,6.00,3,1),(76,7.00,3,2),(77,8.00,2,2),(78,6.00,2,2),(79,5.00,3,3),(80,6.00,3,3),(81,7.00,2,2),(82,8.00,3,1),(83,6.00,2,3),(84,7.00,2,2),(85,4.00,1,2),(86,6.50,1,1),(87,5.00,1,1),(88,5.00,2,2),(89,5.00,2,3),(90,5.00,3,3),(91,5.00,1,3),(92,6.00,3,3),(93,5.80,2,2),(94,5.00,3,1),(95,4.00,3,1),(96,3.00,1,1),(97,5.00,2,2),(98,2.00,1,3),(99,9.00,2,2);
/*!40000 ALTER TABLE `scores` ENABLE KEYS */;
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
