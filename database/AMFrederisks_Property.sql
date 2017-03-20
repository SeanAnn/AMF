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
-- Table structure for table `Property`
--

DROP TABLE IF EXISTS `Property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Property` (
  `Pro_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Pro_Type` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`Pro_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Property`
--

LOCK TABLES `Property` WRITE;
/*!40000 ALTER TABLE `Property` DISABLE KEYS */;
INSERT INTO `Property` VALUES (1,'E_AMF_Commercial Business Application.pdf'),(2,'F_AMF_Commercial Business Application.pdf'),(3,'E_AMF_Commercial Business Application.pdf and E_AMF_Contractors Equipment Application.pdf'),(4,'F_AMF_Commercial Business Application.pdf and F_AMF_Contractors Equipment Application.pdf'),(5,'E_AMF_Commercial Business Application.pdf and E_AMF_Woodstove Questionnaire.pdf'),(6,'F_AMF_Commercial Business Application.pdf and F_AMF_Woodstove Questionnaire.pdf'),(7,'E_AMF_Commercial Business Application.pdf and E_AMF_Builders Risk Application.pdf'),(8,'F_AMF_Commercial Business Application.pdf and F_AMF_Builders Risk Application.pdf'),(9,'E_AMF_Commercial Business Application.pdf and  E_AMF_Daycare Questionnaire.pdf'),(10,'F_AMF_Commercial Business Application.pdf and  F_AMF_Daycare Questionnaire.pdf'),(11,'E_AMF_Liquor License Application.pdf'),(12,'F_AMF_Liquor License Application.pdf'),(13,'E_AMF_Commercial Business Application.pdf PDF or E_AMF_Liquor License Application.pdf'),(14,'F_AMF_Commercial Business Application.pdf or F_AMF_Liquor License Application.pdf'),(15,'E_AMF_Municipality Application.pdf'),(16,'F_AMF_Municipality Application.pdf'),(17,'E_AMF_Rented Owner Occuipied or Vacant Dwelling Application.pdf and E_AMF_Woodstove Questionnaire.pdf'),(18,'F_AMF_Rented Owner Occuipied or Vacant Dwelling Application.pdf and E_AMF_Woodstove Questionnaire.pdf'),(19,'F_AMF_Rented Owner Occuipied or Vacant Dwelling Application.pdf and F_AMF_Woodstove Questionnaire.pdf'),(20,'E_AMF_Special Event Application.pdf'),(21,'F_AMF_Special Event Application.pdf'),(22,'E_AMF_Commercial Business Application.pdf and E_AMF_Motor Truck Cargo Application.pdf'),(23,'F_AMF_Commercial Business Application.pdf and F_AMF_Motor Truck Cargo Application.pdf'),(24,'E_AMF_Waterworks Application.pdf'),(25,'F_AMF_Waterworks Application.pdf'),(26,'');
/*!40000 ALTER TABLE `Property` ENABLE KEYS */;
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
