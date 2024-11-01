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
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel` (
  `hotelID` int NOT NULL AUTO_INCREMENT,
  `airportCode` char(3) DEFAULT NULL,
  `hotelName` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  PRIMARY KEY (`hotelID`),
  UNIQUE KEY `hotelName` (`hotelName`),
  KEY `airportCode` (`airportCode`),
  CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`airportCode`) REFERENCES `airport` (`airportCode`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES (1,'TFS','Richardson, Russell and Perez','South Joanna'),(2,'HMJ','French, Nguyen and Morris','Calhounberg'),(3,'VUW','Bowen, Ortiz and Campbell','Jacquelineshire'),(4,'OLW','Ryan-Ramos','Brooksview'),(5,'ZOG','Adams, Bennett and Meyer','Nguyenchester'),(6,'RRN','Perkins, Francis and Glover','East Marcborough'),(7,'OLW','Greene-Hughes','Carpenterland'),(8,'FWM','Bolton-Quinn','New Timothyton'),(9,'FWM','Riley LLC','Jamieland'),(10,'HRW','Hopkins-Green','East Jennifer'),(11,'OST','Rhodes, Hanna and Martin','East Kennethborough'),(12,'GXK','Jones and Sons','Taylorbury'),(13,'DFO','Scott Ltd','South Michaelbury'),(14,'GCH','Young-Orr','Mccartyhaven'),(15,'ZGU','Golden and Sons','Lake Brianna'),(16,'PUH','Oneal-Jones','Shariside'),(17,'OLQ','Holland, Koch and Vargas','Nashchester'),(18,'GMJ','Bartlett, Perkins and Hooper','West Penny'),(19,'LTA','Bell Group','South Markfort'),(20,'IFI','Chen Group','Patrickborough'),(21,'TFS','Smith, House and Walton','East Mackenzie'),(22,'DFG','Carrillo LLC','Deniseland'),(23,'XRV','Leach Inc','Port Steven'),(24,'EEB','Francis-Hamilton','East Elizabethfurt'),(25,'DVM','Rice, Adams and Cooper','Phyllisview'),(26,'HQG','Gilbert, Munoz and Terrell','South Brianport'),(27,'HRW','Ferguson PLC','East Jameshaven'),(28,'AEI','Ware Group','Carlosland'),(29,'DUK','Fitzpatrick PLC','Lake Andrea'),(30,'OLQ','Davenport LLC','Blackburnchester'),(31,'MJB','Coleman, Lowe and Marshall','East Matthewshire'),(32,'OLQ','Stone-Terry','Port Kenneth'),(33,'VUW','Gonzales-Burch','Katherineshire'),(34,'QHD','Miller, Andrews and Shepard','Toddton'),(35,'SMS','Hammond-Black','Port Shannon'),(36,'SZX','Long-Harrell','North Kristinchester'),(37,'ZGU','Burch-Dean','Thomasborough'),(38,'PAN','Henderson-Thomas','North Kevin'),(39,'LSO','Olson-Fowler','Port Steven'),(40,'DAP','Gonzalez PLC','Woodton'),(41,'PAA','Kelly Inc','Howellstad'),(42,'CJK','Griffin, Simpson and Moore','Carrilloton'),(43,'RQF','Wright, Brown and Phillips','West Julia'),(44,'UTP','Roberts-Li','New Sarah'),(45,'DVM','Black-Campbell','Judyport'),(46,'DAB','Davis LLC','West Lisa'),(47,'GMH','Short-Soto','New Lisatown'),(48,'HMJ','Drake-Simpson','New Travis'),(49,'MED','Marquez-Ward','Gomezmouth'),(50,'MED','Lewis, Hernandez and Coleman','Barronchester'),(51,'HRW','Torres, Jones and Carrillo','Juarezview'),(52,'PAA','Foley, King and Paul','Port Johnport'),(53,'ZYD','Gonzales Inc','Matthewchester'),(54,'PUH','Fritz LLC','Marilynton'),(55,'GMJ','Jackson Group','West Mark'),(56,'VKL','Torres-Cole','Port Mariahhaven'),(57,'GHB','Quinn, Baker and Henderson','Lake Adam'),(58,'DFG','Burgess-Palmer','Port Kaitlyn'),(59,'MMV','Moreno-Garrett','West Alicia'),(60,'IFU','Lopez and Sons','Vargasborough'),(61,'WDL','Joyce-Keller','West Evan'),(62,'DFG','Sanders, Wilson and Henry','Jamesside'),(63,'YFY','Yates, Sosa and Frye','Crossberg'),(64,'FWM','Hayes, Huff and Gibson','West Leslie'),(65,'ECJ','Carrillo Inc','Samuelhaven'),(66,'LSM','Kaufman-Hunt','East Cynthia'),(67,'HNT','Bruce, Johnson and Cobb','North Sheilamouth'),(68,'ODE','Martinez, Perez and Thomas','South Valerieland'),(69,'PUH','Perry-Duran','South Tristan'),(70,'IZN','Bradley, Crawford and Hoover','Janicefort'),(71,'HQG','Williams-Schroeder','Andreamouth'),(72,'GCH','Brown LLC','Hardingville'),(73,'BRF','Odonnell and Sons','Shannonton'),(74,'YFY','Moore Ltd','Nixonfort'),(75,'DPP','Weber, Brown and Walters','East Jasonville'),(76,'DDQ','Gibson-Gomez','Velasquezfurt'),(77,'WDL','Rose and Sons','South Dawnport'),(78,'FWM','Green, Hart and Acosta','South Kelly'),(79,'KOA','Trevino Inc','Morrisville'),(80,'ZOG','Hutchinson, Wiggins and Johnson','Adamville'),(81,'SWS','Freeman Inc','Lake Cindy'),(82,'MEP','Mckee, Smith and Scott','Lake Michele'),(83,'WFN','Morris Group','Lake Nicoleburgh'),(84,'OST','Oliver, Green and Schwartz','Lake Amanda'),(85,'HMJ','Powell-Gomez','East Cameronfort'),(86,'NIL','Washington, Sanchez and Adkins','New Douglasbury'),(87,'DVN','Santos-Cline','Lake Andrea'),(88,'GHB','Becker, Harrison and Green','Alexville'),(89,'QFC','Jenkins-Gray','North Stephanie'),(90,'ZYD','Rubio-Mitchell','Lynnland'),(91,'ECJ','Castro, Terry and Allison','Matthewfort'),(92,'XND','Case LLC','New Ashleystad'),(93,'NTY','Hogan-Jones','Port Michaelport'),(94,'RQF','Benitez, Sampson and French','East Jacquelineburgh'),(95,'MEP','Hughes, Schwartz and Wilson','Lake Joseph'),(96,'EHE','Woods Inc','Annefort'),(97,'DAB','Garcia LLC','Georgeborough'),(98,'BZD','Bautista LLC','Jerryport'),(99,'XND','White and Sons','New Christopherfurt'),(100,'LSO','Ferrell-Rodriguez','Lake Anthonyborough');
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-01 14:18:32
