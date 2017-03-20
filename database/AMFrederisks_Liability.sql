-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: AMFrederisks
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.21-MariaDB

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
-- Table structure for table `Liability`
--

DROP TABLE IF EXISTS `Liability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Liability` (
  `Lia_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Lia_Type` varchar(200) NOT NULL,
  PRIMARY KEY (`Lia_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Liability`
--

LOCK TABLES `Liability` WRITE;
/*!40000 ALTER TABLE `Liability` DISABLE KEYS */;
INSERT INTO `Liability` VALUES (1,'E_AMF_Commercial Business Application.pdf'),(2,'F_AMF_Commercial Business Application.pdf'),(3,'E_AMF_Commercial Business Application.pdf and E_AMF_Products Liability Supplement.pdf'),(4,'F_AMF_Commercial Business Application.pdf and F_AMF_Products Liability Supplement.pdf'),(5,'E_AMF_Commercial Business Application.pdf and E_AMF_Woodstove Questionnaire.pdf'),(6,'F_AMF_Commercial Business Application.pdf and F_AMF_Woodstove Questionnaire.pdf'),(7,'E_AMF_Boiler & Machinery Questionnaire.pdf'),(8,'F_AMF_Boiler & Machinery Questionnaire.pdf'),(9,'E_AMF_Contractors Equipment Application.pdf'),(10,'F_AMF_Contractors Equipment Application.pdf'),(11,'E_AMF_Commercial Business Application.pdf and  E_AMF_Daycare Questionnaire.pdf'),(12,'F_AMF_Commercial Business Application.pdf and  F_AMF_Daycare Questionnaire.pdf'),(13,'E_AMF_Liquor License Application.pdf'),(14,'F_AMF_Liquor License Application.pdf'),(15,'E_AMF_Commercial Business Application.pdf or E_AMF_Liquor License Application.pdf '),(16,'F_AMF_Commercial Business Application.pdf or F_AMF_Liquor License Application.pdf '),(17,'E_AMF_Commercial Business Application.pdf and E_AMF_Products Liability Supplement.pdf and E_AMF_Firearms & Ammunition Application.pdf'),(18,'F_AMF_Commercial Business Application.pdf and F_AMF_Products Liability Supplement.pdf and F_AMF_Firearms & Ammunition Application.pdf'),(19,'E_AMF_Installation Floater.pdf'),(20,'F_AMF_Installation Floater.pdf'),(21,'E_AMF_Logging Operations Application.pdf'),(22,'F_AMF_Logging Operations Application.pdf'),(23,'E_AMF_Commercial Business Application.pdf or E_AMF_Liquor License Application.pdf'),(24,'F_AMF_Commercial Business Application.pdf or F_AMF_Liquor License Application.pdf'),(25,'E_AMF_Motor Truck Cargo Application.pdf'),(26,'F_AMF_Motor Truck Cargo Application.pdf'),(27,'E_AMF_Municipality Application.pdf'),(28,'F_AMF_Municipality Application.pdf'),(29,'E_AMF_Rented Owner Occuipied or Vacant Dwelling Application.pdf and E_AMF_Woodstove Questionnaire.pdf'),(30,'F_AMF_Rented Owner Occuipied or Vacant Dwelling Application.pdf and E_AMF_Woodstove Questionnaire.pdf'),(31,'F_AMF_Rented Owner Occuipied or Vacant Dwelling Application.pdf and F_AMF_Woodstove Questionnaire.pd'),(32,'E_AMF_Roofing Application.pdf'),(33,'F_AMF_Roofing Application.pdf'),(34,'E_AMF_Commercial Business Application.pdf and E_AMF_Snow Removal Supplement.pdf'),(35,'F_AMF_Commercial Business Application.pdf and F_AMF_Snow Removal Supplement.pdf'),(36,'E_AMF_Special Event Application.pdf'),(37,'F_AMF_Special Event Application.pdf'),(38,'E_AMF_Transportation Application.pdf'),(39,'F_AMF_Transportation Application.pdf'),(40,'E_AMF_Liability Application.pdf and E_AMF_Products Liability Supplement.pdf'),(41,'F_AMF_Liability Application.pdf and F_AMF_Products Liability Supplement.pdf'),(42,'E_AMF_Waterworks Application.pdf'),(43,'F_AMF_Waterworks Application.pdf'),(44,'E_AMF_Commercial Business Application.pdf and E_AMF_Welding Supplement.pdf'),(45,'F_AMF_Commercial Business Application.pdf and F_AMF_Welding Supplement.pdf');
/*!40000 ALTER TABLE `Liability` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-19 23:28:31
