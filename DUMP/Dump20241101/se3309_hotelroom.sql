-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: se3309
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `hotelroom`
--

DROP TABLE IF EXISTS `hotelroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotelroom` (
  `hotelID` int NOT NULL,
  `roomType` varchar(50) NOT NULL,
  `pricePerNight` decimal(10,2) NOT NULL,
  `availabilityStatus` tinyint(1) NOT NULL,
  PRIMARY KEY (`hotelID`,`roomType`),
  CONSTRAINT `hotelroom_ibfk_1` FOREIGN KEY (`hotelID`) REFERENCES `hotel` (`hotelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotelroom`
--

LOCK TABLES `hotelroom` WRITE;
/*!40000 ALTER TABLE `hotelroom` DISABLE KEYS */;
INSERT INTO `hotelroom` VALUES (1,'Double',70.56,1),(1,'Single',204.11,1),(1,'Suite',112.44,0),(2,'Double',75.93,0),(2,'Single',260.98,1),(2,'Suite',220.53,1),(3,'Double',171.23,1),(3,'Single',275.03,1),(3,'Suite',129.01,1),(4,'Double',79.32,0),(4,'Single',185.70,0),(4,'Suite',235.87,1),(5,'Double',234.77,0),(5,'Single',125.83,0),(5,'Suite',191.51,0),(6,'Double',187.63,1),(6,'Single',161.98,0),(6,'Suite',74.41,0),(7,'Double',102.82,0),(7,'Single',175.48,0),(7,'Suite',214.70,0),(8,'Double',96.39,1),(8,'Single',93.41,0),(8,'Suite',284.85,1),(9,'Double',246.99,1),(9,'Single',131.28,0),(9,'Suite',50.50,0),(10,'Double',172.07,0),(10,'Single',260.95,0),(10,'Suite',289.43,0),(11,'Double',269.46,0),(11,'Single',107.20,1),(11,'Suite',85.97,1),(12,'Double',90.48,0),(12,'Single',284.45,0),(12,'Suite',116.14,1),(13,'Double',224.42,1),(13,'Single',81.46,1),(13,'Suite',174.39,1),(14,'Double',129.75,0),(14,'Single',288.33,0),(14,'Suite',75.18,1),(15,'Double',288.23,0),(15,'Single',218.18,1),(15,'Suite',211.45,0),(16,'Double',146.90,1),(16,'Single',189.78,0),(16,'Suite',295.85,1),(17,'Double',79.36,0),(17,'Single',203.33,1),(17,'Suite',298.56,1),(18,'Double',192.64,0),(18,'Single',137.50,0),(18,'Suite',222.96,0),(19,'Double',89.86,0),(19,'Single',67.09,0),(19,'Suite',127.54,0),(20,'Double',134.36,1),(20,'Single',93.43,1),(20,'Suite',285.98,1),(21,'Double',228.41,0),(21,'Single',127.78,0),(21,'Suite',253.81,0),(22,'Double',246.55,0),(22,'Single',276.75,1),(22,'Suite',122.49,0),(23,'Double',51.58,1),(23,'Single',273.05,1),(23,'Suite',95.77,1),(24,'Double',292.01,0),(24,'Single',252.61,0),(24,'Suite',86.21,1),(25,'Double',290.54,1),(25,'Single',192.79,1),(25,'Suite',188.94,1),(26,'Double',253.61,0),(26,'Single',121.38,0),(26,'Suite',191.33,1),(27,'Double',208.11,1),(27,'Single',178.31,1),(27,'Suite',82.06,1),(28,'Double',54.60,0),(28,'Single',133.10,0),(28,'Suite',81.92,1),(29,'Double',263.55,1),(29,'Single',164.47,1),(29,'Suite',225.97,0),(30,'Double',165.97,0),(30,'Single',116.93,0),(30,'Suite',194.09,0),(31,'Double',280.84,1),(31,'Single',216.28,0),(31,'Suite',204.45,0),(32,'Double',240.76,1),(32,'Single',170.15,1),(32,'Suite',150.55,1),(33,'Double',208.29,1),(33,'Single',217.03,0),(33,'Suite',60.95,1),(34,'Double',277.84,0),(34,'Single',134.68,1),(34,'Suite',223.90,0),(35,'Double',265.06,0),(35,'Single',118.44,1),(35,'Suite',144.10,1),(36,'Double',181.15,1),(36,'Single',94.38,0),(36,'Suite',119.38,1),(37,'Double',127.55,1),(37,'Single',259.00,1),(37,'Suite',156.49,1),(38,'Double',272.65,0),(38,'Single',93.99,1),(38,'Suite',281.33,1),(39,'Double',195.00,0),(39,'Single',83.78,1),(39,'Suite',242.60,1),(40,'Double',114.77,1),(40,'Single',122.51,1),(40,'Suite',228.94,0),(41,'Double',244.83,0),(41,'Single',51.63,1),(41,'Suite',229.75,0),(42,'Double',179.12,0),(42,'Single',174.56,1),(42,'Suite',156.77,1),(43,'Double',154.20,0),(43,'Single',287.90,1),(43,'Suite',219.67,1),(44,'Double',116.99,0),(44,'Single',252.09,1),(44,'Suite',74.16,0),(45,'Double',111.20,0),(45,'Single',52.55,0),(45,'Suite',255.61,1),(46,'Double',236.33,0),(46,'Single',60.01,1),(46,'Suite',87.52,0),(47,'Double',257.62,0),(47,'Single',73.05,0),(47,'Suite',126.94,1),(48,'Double',189.14,0),(48,'Single',224.05,1),(48,'Suite',292.38,0),(49,'Double',279.45,1),(49,'Single',175.14,1),(49,'Suite',208.59,0),(50,'Double',186.16,0),(50,'Single',249.37,0),(50,'Suite',72.12,1),(51,'Double',94.00,0),(51,'Single',149.56,0),(51,'Suite',77.78,1),(52,'Double',176.60,1),(52,'Single',94.74,1),(52,'Suite',218.99,0),(53,'Double',172.69,0),(53,'Single',116.81,0),(53,'Suite',108.95,0),(54,'Double',193.44,0),(54,'Single',264.99,1),(54,'Suite',74.85,1),(55,'Double',104.94,1),(55,'Single',125.46,0),(55,'Suite',69.72,0),(56,'Double',265.16,1),(56,'Single',88.36,0),(56,'Suite',287.07,1),(57,'Double',120.49,1),(57,'Single',108.91,0),(57,'Suite',135.46,0),(58,'Double',261.89,0),(58,'Single',164.70,1),(58,'Suite',269.65,0),(59,'Double',198.71,1),(59,'Single',214.47,0),(59,'Suite',166.75,1),(60,'Double',292.90,0),(60,'Single',115.30,0),(60,'Suite',278.38,1),(61,'Double',112.61,0),(61,'Single',291.60,0),(61,'Suite',67.72,0),(62,'Double',94.69,0),(62,'Single',232.64,0),(62,'Suite',279.33,1),(63,'Double',77.71,1),(63,'Single',218.22,0),(63,'Suite',118.35,0),(64,'Double',147.82,1),(64,'Single',290.68,0),(64,'Suite',74.11,1),(65,'Double',263.43,1),(65,'Single',185.16,1),(65,'Suite',63.91,1),(66,'Double',242.80,0),(66,'Single',245.32,0),(66,'Suite',83.25,0),(67,'Double',293.11,0),(67,'Single',193.83,0),(67,'Suite',114.64,0),(68,'Double',98.02,0),(68,'Single',293.37,0),(68,'Suite',80.46,1),(69,'Double',80.77,0),(69,'Single',101.21,1),(69,'Suite',187.32,0),(70,'Double',56.70,0),(70,'Single',289.30,1),(70,'Suite',140.43,0),(71,'Double',138.39,1),(71,'Single',190.12,1),(71,'Suite',127.08,1),(72,'Double',106.66,0),(72,'Single',146.20,0),(72,'Suite',67.78,0),(73,'Double',80.89,1),(73,'Single',226.39,0),(73,'Suite',268.84,0),(74,'Double',247.66,1),(74,'Single',86.67,1),(74,'Suite',299.56,0),(75,'Double',293.19,1),(75,'Single',86.07,1),(75,'Suite',287.55,1),(76,'Double',82.99,0),(76,'Single',235.01,0),(76,'Suite',281.99,1),(77,'Double',211.74,1),(77,'Single',73.23,1),(77,'Suite',232.84,1),(78,'Double',59.64,0),(78,'Single',283.91,1),(78,'Suite',128.26,1),(79,'Double',252.96,0),(79,'Single',54.10,0),(79,'Suite',114.50,0),(80,'Double',275.17,0),(80,'Single',88.30,0),(80,'Suite',175.45,0),(81,'Double',122.69,1),(81,'Single',109.88,0),(81,'Suite',90.75,0),(82,'Double',156.16,0),(82,'Single',204.95,0),(82,'Suite',129.61,1),(83,'Double',291.31,1),(83,'Single',98.16,0),(83,'Suite',232.67,0),(84,'Double',102.88,1),(84,'Single',273.20,0),(84,'Suite',102.95,0),(85,'Double',121.55,1),(85,'Single',158.57,0),(85,'Suite',167.07,1),(86,'Double',279.71,0),(86,'Single',184.21,1),(86,'Suite',51.57,0),(87,'Double',207.93,0),(87,'Single',92.71,1),(87,'Suite',74.97,1),(88,'Double',75.03,1),(88,'Single',220.39,1),(88,'Suite',117.86,1),(89,'Double',74.72,0),(89,'Single',84.31,1),(89,'Suite',181.03,0),(90,'Double',129.81,0),(90,'Single',262.82,0),(90,'Suite',173.19,1),(91,'Double',289.44,1),(91,'Single',98.01,0),(91,'Suite',118.28,0),(92,'Double',192.28,1),(92,'Single',139.52,1),(92,'Suite',233.85,1),(93,'Double',285.88,0),(93,'Single',247.81,0),(93,'Suite',68.71,0),(94,'Double',90.22,0),(94,'Single',250.77,1),(94,'Suite',116.01,0),(95,'Double',74.99,0),(95,'Single',178.10,1),(95,'Suite',116.16,1),(96,'Double',218.30,0),(96,'Single',115.14,0),(96,'Suite',193.33,0),(97,'Double',240.54,0),(97,'Single',177.47,1),(97,'Suite',62.37,0),(98,'Double',160.47,0),(98,'Single',202.43,1),(98,'Suite',173.29,1),(99,'Double',195.22,1),(99,'Single',228.18,0),(99,'Suite',295.14,0),(100,'Double',54.61,1),(100,'Single',93.22,0),(100,'Suite',180.34,1);
/*!40000 ALTER TABLE `hotelroom` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-01 14:18:34
