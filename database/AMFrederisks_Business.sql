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
-- Table structure for table `Business`
--

DROP TABLE IF EXISTS `Business`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Business` (
  `Bus_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Des_ID` int(11) NOT NULL,
  `Lan_ID` int(11) NOT NULL,
  `Lia_ID` int(11) NOT NULL,
  `Pro_ID` int(11) NOT NULL,
  `EO_ID` int(11) NOT NULL,
  `Exc_ID` int(11) NOT NULL,
  `Umb_ID` int(11) NOT NULL,
  PRIMARY KEY (`Bus_ID`),
  KEY `Des_ID_idx` (`Des_ID`),
  KEY `Lan_ID_idx` (`Lan_ID`),
  KEY `Lia_ID_idx` (`Lia_ID`),
  KEY `Pro_ID_idx` (`Pro_ID`),
  KEY `EO_ID_idx` (`EO_ID`),
  KEY `Exc_ID_idx` (`Exc_ID`),
  KEY `Umb_ID_idx` (`Umb_ID`),
  CONSTRAINT `Des_ID` FOREIGN KEY (`Des_ID`) REFERENCES `Description` (`Des_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `EO_ID` FOREIGN KEY (`EO_ID`) REFERENCES `EO` (`EO_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Exc_ID` FOREIGN KEY (`Exc_ID`) REFERENCES `Excess` (`Exc_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Lan_ID` FOREIGN KEY (`Lan_ID`) REFERENCES `Language` (`Lan_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Lia_ID` FOREIGN KEY (`Lia_ID`) REFERENCES `Liability` (`Lia_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Pro_ID` FOREIGN KEY (`Pro_ID`) REFERENCES `Property` (`Pro_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Umb_ID` FOREIGN KEY (`Umb_ID`) REFERENCES `Umbrella` (`Umb_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=938 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Business`
--

LOCK TABLES `Business` WRITE;
/*!40000 ALTER TABLE `Business` DISABLE KEYS */;
INSERT INTO `Business` VALUES (1,1,1,1,1,1,1,1),(2,2,2,2,2,2,2,2),(3,3,1,1,1,1,1,1),(4,4,2,2,2,2,2,2),(5,5,1,1,3,5,1,1),(6,6,2,2,4,5,2,2),(7,7,1,1,1,1,1,1),(8,8,2,1,2,2,2,2),(9,9,1,1,1,1,1,1),(10,10,2,2,2,2,2,2),(11,11,1,1,1,5,1,1),(12,12,2,2,2,5,2,2),(13,13,1,3,1,5,1,1),(14,14,2,4,2,5,2,2),(15,15,1,1,1,5,1,1),(16,16,2,2,2,5,2,2),(17,17,1,1,3,5,1,1),(18,18,2,2,4,5,2,2),(19,19,1,3,1,5,1,1),(20,20,2,4,2,5,2,2),(21,21,1,3,1,1,1,1),(22,22,2,4,2,2,2,2),(23,23,1,1,3,5,1,1),(24,24,2,2,4,5,2,2),(25,25,1,1,1,1,1,1),(26,26,2,2,2,2,2,2),(27,27,1,1,1,1,1,1),(28,28,2,2,2,2,2,2),(29,29,1,1,1,5,1,1),(30,30,2,2,2,5,2,2),(31,31,1,1,1,5,1,1),(32,32,2,2,2,5,2,2),(33,33,1,1,1,1,1,1),(34,34,2,2,2,2,2,2),(35,35,1,1,1,1,1,1),(36,36,2,2,2,2,2,2),(37,37,1,1,1,5,1,1),(38,38,2,2,2,5,2,2),(39,39,1,3,1,5,1,1),(40,40,2,4,2,5,2,2),(41,41,1,1,1,5,1,1),(42,42,2,2,2,5,2,2),(43,43,1,1,1,5,1,1),(44,44,2,2,2,5,2,2),(45,45,1,1,1,1,1,1),(46,46,2,2,2,2,2,2),(47,47,1,1,1,5,1,1),(48,48,2,2,2,5,2,2),(49,49,1,1,1,1,1,1),(50,50,2,2,2,2,2,2),(51,51,1,1,1,1,1,1),(52,52,2,2,2,2,2,2),(53,53,1,1,1,1,1,1),(54,54,2,2,2,2,2,2),(55,55,1,1,1,1,1,1),(56,56,2,2,2,2,2,2),(57,57,1,1,1,1,1,1),(58,58,2,2,2,2,2,2),(59,59,1,1,1,1,1,1),(60,60,2,2,2,2,2,2),(61,61,1,1,1,1,1,1),(62,62,2,2,2,2,2,2),(63,63,1,1,1,1,1,1),(64,64,2,2,2,2,2,2),(65,65,1,1,1,1,1,1),(66,66,2,2,2,2,2,2),(67,67,1,3,1,5,1,1),(68,68,2,4,2,5,2,2),(69,69,1,1,1,5,1,1),(70,70,2,2,2,5,2,2),(71,71,1,3,1,5,1,1),(72,72,2,4,2,5,2,2),(73,73,1,1,26,5,1,1),(74,74,2,2,26,5,2,2),(75,75,1,1,1,5,1,1),(76,76,2,2,2,5,2,2),(77,77,1,3,1,5,1,1),(78,78,2,4,2,5,2,2),(79,79,1,3,1,5,1,1),(80,80,2,4,2,5,2,2),(81,81,1,3,1,5,1,1),(82,82,2,4,2,5,2,2),(83,83,1,3,1,5,1,1),(84,84,2,4,2,5,2,2),(85,85,1,1,1,5,1,1),(86,86,2,2,2,5,2,2),(87,87,1,1,1,5,1,1),(88,88,2,2,2,5,2,2),(89,89,1,1,1,5,1,1),(90,90,2,2,2,5,2,2),(91,91,1,3,1,5,1,1),(92,92,2,4,2,5,2,2),(93,93,1,1,1,1,1,1),(94,94,2,2,2,2,2,2),(95,95,1,3,1,5,1,1),(96,96,2,4,2,5,2,2),(97,97,1,1,1,1,1,1),(98,98,2,2,2,2,2,2),(99,99,1,3,1,5,1,1),(100,100,2,4,2,5,2,2),(101,101,1,3,1,5,1,1),(102,102,2,4,2,5,2,2),(103,103,1,1,1,1,1,1),(104,104,2,2,2,2,2,2),(105,105,1,5,5,5,1,1),(106,106,2,6,6,5,2,2),(107,107,1,1,1,1,1,1),(108,108,2,2,2,2,2,2),(109,109,1,7,26,5,3,3),(110,110,2,8,26,5,3,3),(111,111,1,1,1,5,1,1),(112,112,2,2,2,5,2,2),(113,113,1,1,1,1,1,1),(114,114,2,2,2,2,2,2),(115,115,1,1,1,1,1,1),(116,116,2,2,2,2,2,2),(117,117,1,1,1,5,1,1),(118,118,2,2,2,5,2,2),(119,119,1,1,1,5,1,1),(120,120,2,2,2,5,2,2),(121,121,1,3,1,5,1,1),(122,122,2,4,2,5,2,2),(123,123,1,1,3,5,1,1),(124,124,2,2,4,5,2,2),(125,125,1,1,7,5,1,1),(126,126,2,2,8,5,2,2),(127,127,1,1,1,5,1,1),(128,128,2,2,2,5,2,2),(129,129,1,1,3,5,1,1),(130,130,2,2,4,5,2,2),(131,131,1,1,3,5,1,1),(132,132,2,2,4,5,2,2),(133,133,1,3,1,5,1,1),(134,134,2,4,2,5,2,2),(135,135,1,3,1,5,1,1),(136,136,2,4,2,5,2,2),(137,137,1,1,1,5,1,1),(138,138,2,2,2,5,2,2),(139,139,1,1,1,1,1,1),(140,140,2,2,2,2,2,2),(141,141,1,3,1,5,1,1),(142,142,2,4,2,5,2,2),(143,143,1,3,1,5,1,1),(144,144,2,4,2,5,2,2),(145,145,1,1,1,5,1,1),(146,146,2,2,2,5,2,2),(147,147,1,1,1,5,1,1),(148,148,2,2,2,5,2,2),(149,149,1,3,1,1,1,1),(150,150,2,4,2,2,2,2),(151,151,1,3,1,5,1,1),(152,152,2,4,2,5,2,2),(153,153,1,1,1,5,1,1),(154,154,2,2,2,5,2,2),(155,155,1,3,1,5,1,1),(156,156,2,4,2,5,2,2),(157,157,1,1,1,5,1,1),(158,158,2,2,2,5,2,2),(159,159,1,1,1,5,1,1),(160,160,2,2,2,5,2,2),(161,161,1,3,1,5,1,1),(162,162,2,4,2,5,2,2),(163,163,1,3,1,5,1,1),(164,164,2,4,2,5,2,2),(165,165,1,1,1,5,1,1),(166,166,2,2,2,5,2,2),(167,167,1,1,1,5,1,1),(168,168,2,2,2,5,2,2),(169,169,1,3,1,5,1,1),(170,170,2,4,2,5,2,2),(171,171,1,3,3,5,1,1),(172,172,1,3,3,5,1,1),(173,173,1,3,1,5,1,1),(174,174,2,4,2,5,2,2),(175,175,1,1,3,5,1,1),(176,176,2,2,4,5,2,2),(177,177,1,3,1,5,1,1),(178,178,2,4,2,5,2,2),(179,179,1,3,1,5,1,1),(180,180,2,4,2,5,2,2),(181,181,1,1,1,5,1,1),(182,182,2,2,2,5,2,2),(183,183,1,1,1,5,1,1),(184,184,2,2,2,5,2,2),(185,185,1,1,1,5,1,1),(186,186,2,2,2,5,2,2),(187,187,1,1,3,5,1,1),(188,188,1,2,4,5,2,2),(189,189,1,1,1,1,1,1),(190,190,2,2,2,2,2,2),(191,191,1,3,1,5,1,1),(192,192,2,4,2,5,2,2),(193,193,1,1,1,5,1,1),(194,194,2,2,2,5,2,2),(195,195,1,1,1,1,1,1),(196,196,2,2,2,2,2,2),(197,197,1,1,1,1,1,1),(198,198,2,2,2,2,2,2),(199,199,1,1,1,5,1,1),(200,200,2,2,2,5,2,2),(201,201,1,1,1,1,1,1),(202,202,2,2,2,2,2,2),(203,203,1,3,1,5,1,1),(204,204,2,4,2,5,2,2),(205,205,1,3,1,5,1,1),(206,206,2,4,2,5,2,2),(207,207,1,1,1,1,1,1),(208,208,2,2,2,2,2,2),(209,209,1,3,1,5,1,1),(210,210,2,4,2,5,2,2),(211,211,1,1,1,5,1,1),(212,212,2,2,2,5,2,2),(213,213,1,1,1,5,1,1),(214,214,2,2,2,5,2,2),(215,215,1,1,1,5,1,1),(216,216,2,2,2,5,2,2),(217,217,1,1,1,5,1,1),(218,218,2,2,2,5,2,2),(219,219,1,1,1,5,1,1),(220,220,2,2,2,5,2,2),(221,221,1,1,1,5,1,1),(222,222,2,2,2,5,2,2),(223,223,1,1,1,1,1,1),(224,224,2,2,2,2,2,2),(225,225,1,1,3,5,1,1),(226,226,2,2,4,5,2,2),(227,227,1,1,3,5,1,1),(228,228,2,2,4,5,2,2),(229,229,1,3,1,5,1,1),(230,230,2,4,2,5,2,2),(231,231,1,1,1,5,1,1),(232,232,2,2,2,5,2,2),(233,233,1,1,3,5,1,1),(234,234,2,2,4,5,2,2),(235,235,1,3,1,5,1,1),(236,236,2,4,2,5,2,2),(237,237,1,3,1,1,1,1),(238,238,2,4,2,2,2,2),(239,239,1,9,26,5,3,3),(240,240,2,10,26,5,3,3),(241,241,1,1,1,1,1,1),(242,242,2,2,2,2,2,2),(243,243,1,1,1,5,1,1),(244,244,2,2,2,5,2,2),(245,245,1,1,1,1,1,1),(246,246,2,2,2,2,2,2),(247,247,1,1,1,1,1,1),(248,248,2,2,2,2,2,2),(249,249,1,3,1,5,1,1),(250,250,2,4,2,5,2,2),(251,251,1,1,1,1,1,1),(252,252,2,2,2,2,2,2),(253,253,1,1,1,1,1,1),(254,254,2,2,2,2,2,2),(255,255,1,3,1,5,1,1),(256,256,2,4,2,5,2,2),(257,257,1,1,1,5,1,1),(258,258,2,2,2,5,2,2),(259,259,1,1,1,5,1,1),(260,260,2,2,2,5,2,2),(261,261,1,1,1,5,1,1),(262,262,2,2,2,5,2,2),(263,263,1,1,1,1,1,1),(264,264,2,2,2,2,2,2),(265,265,1,1,1,1,1,1),(266,266,2,2,2,2,2,2),(267,267,1,11,9,1,1,1),(268,268,2,12,10,2,2,2),(269,269,1,1,1,1,1,1),(270,270,2,2,2,2,2,2),(271,271,1,1,1,1,1,1),(272,272,2,2,2,2,2,2),(273,273,1,1,1,5,1,1),(274,274,2,2,2,5,2,2),(275,275,1,1,1,5,1,1),(276,276,2,2,2,5,2,2),(277,277,1,1,1,1,1,1),(278,278,2,2,2,2,2,2),(279,279,1,1,1,5,1,1),(280,280,2,2,2,5,2,2),(281,281,1,1,1,5,1,1),(282,282,2,2,2,5,2,2),(283,283,1,1,1,5,1,1),(284,284,2,2,2,5,2,2),(285,285,1,1,1,1,1,1),(286,286,2,2,2,2,2,2),(287,287,1,13,11,5,1,1),(288,288,2,14,12,5,2,2),(289,289,1,1,1,5,1,1),(290,290,2,2,2,5,2,2),(291,291,1,1,1,1,1,1),(292,292,2,2,2,2,2,2),(293,293,1,1,1,1,1,1),(294,294,2,2,2,2,2,2),(295,295,1,1,1,1,1,1),(296,296,2,2,2,2,2,2),(297,297,1,3,1,5,1,1),(298,298,2,4,2,5,2,2),(299,299,1,1,1,5,1,1),(300,300,2,2,2,5,2,2),(301,301,1,3,1,5,1,1),(302,302,2,4,2,5,2,2),(303,303,1,1,1,5,1,1),(304,304,2,2,2,5,2,2),(305,305,1,1,3,5,1,1),(306,306,2,2,4,5,2,2),(307,307,1,1,1,5,1,1),(308,308,2,2,2,5,2,2),(309,309,1,1,1,1,1,1),(310,310,2,2,2,2,2,2),(311,311,1,1,3,5,1,1),(312,312,2,2,4,5,2,2),(313,313,1,1,1,5,1,1),(314,314,2,2,2,5,2,2),(315,315,1,1,1,5,1,1),(316,316,2,2,2,5,2,2),(317,317,1,1,3,5,1,1),(318,318,2,2,4,5,2,2),(319,319,1,1,1,1,1,1),(320,320,2,2,2,2,2,2),(321,321,1,3,1,5,1,1),(322,322,2,4,2,5,2,2),(323,323,1,1,1,5,1,1),(324,324,2,2,2,5,2,2),(325,325,1,3,1,5,1,1),(326,326,2,4,2,5,2,2),(327,327,1,1,1,5,1,1),(328,328,2,2,2,5,2,2),(329,329,1,3,1,5,1,1),(330,330,2,4,2,5,2,2),(331,331,1,3,1,5,1,1),(332,332,2,4,2,5,2,2),(333,333,1,3,1,5,1,1),(334,334,2,4,2,5,2,2),(335,335,1,1,3,5,1,1),(336,336,2,2,4,5,2,2),(337,337,1,1,1,1,1,1),(338,338,2,2,2,2,2,2),(339,339,1,3,1,5,1,1),(340,340,2,4,2,5,2,2),(341,341,1,1,3,5,1,1),(342,342,2,2,4,5,2,2),(343,343,1,1,1,1,1,1),(344,344,2,2,2,2,2,2),(345,345,1,1,1,5,1,1),(346,346,2,2,2,5,2,2),(347,347,1,1,1,1,1,1),(348,348,2,2,2,2,2,2),(349,349,1,1,3,5,1,1),(350,350,2,2,4,5,2,2),(351,351,1,3,1,5,1,1),(352,352,2,4,2,5,2,2),(353,353,1,1,3,5,1,1),(354,354,2,2,4,5,2,2),(355,355,1,1,3,5,1,1),(356,356,2,2,4,5,2,2),(357,357,1,3,1,5,1,1),(358,358,2,4,2,5,2,2),(359,359,1,1,1,5,1,1),(360,360,2,2,2,5,2,2),(361,361,1,1,1,5,1,1),(362,362,2,2,2,5,2,2),(363,363,1,1,1,5,1,1),(364,364,2,2,2,5,2,2),(365,365,1,3,1,5,1,1),(366,366,2,4,2,5,2,2),(367,367,1,3,3,5,1,1),(368,368,2,4,4,5,2,2),(369,369,1,1,1,1,1,1),(370,370,2,2,2,2,2,2),(371,371,1,1,1,1,1,1),(372,372,2,2,2,2,2,2),(373,373,1,3,1,1,1,1),(374,374,2,4,2,2,2,2),(375,375,1,3,3,5,1,1),(376,376,2,4,4,5,2,2),(377,377,1,3,1,5,1,1),(378,378,2,4,2,5,2,2),(379,379,1,3,1,5,1,1),(380,380,2,4,2,5,2,2),(381,381,1,3,1,5,1,1),(382,382,2,4,2,5,2,2),(383,383,1,3,1,5,1,1),(384,384,2,4,2,5,2,2),(385,385,1,3,1,5,1,1),(386,386,2,4,2,5,2,2),(387,387,1,1,3,5,1,1),(388,388,2,2,4,5,2,2),(389,389,1,3,3,5,1,1),(390,390,2,4,4,5,2,2),(391,391,1,3,1,5,1,1),(392,392,2,4,2,5,2,2),(393,393,1,3,1,1,1,1),(394,394,2,4,2,2,2,2),(395,395,1,3,1,5,1,1),(396,396,2,4,2,5,2,2),(397,397,1,1,1,1,1,1),(398,398,2,2,2,2,2,2),(399,399,1,1,1,5,1,1),(400,400,2,2,2,5,2,2),(401,401,1,1,1,1,1,1),(402,402,2,2,2,2,2,2),(403,403,1,3,1,5,1,1),(404,404,2,4,2,5,2,2),(405,405,1,3,1,5,1,1),(406,406,2,4,2,5,2,2),(407,407,1,3,1,5,1,1),(408,408,2,4,2,5,2,2),(409,409,1,3,1,5,1,1),(410,410,2,4,2,5,2,2),(411,411,1,1,1,1,1,1),(412,412,2,2,2,2,2,2),(413,413,1,1,1,1,1,1),(414,414,2,2,2,2,2,2),(415,415,1,3,1,5,1,1),(416,416,2,4,2,5,2,2),(417,417,1,3,1,5,1,1),(418,418,2,4,2,5,2,2),(419,419,1,3,1,5,1,1),(420,420,2,4,2,5,2,2),(421,421,1,3,1,5,1,1),(422,422,2,4,2,5,2,2),(423,423,1,3,1,5,1,1),(424,424,2,4,2,5,2,2),(425,425,1,1,1,5,1,1),(426,426,2,2,2,5,2,2),(427,427,1,3,1,5,1,1),(428,428,2,4,2,5,2,2),(429,429,1,3,1,5,1,1),(430,430,2,4,2,5,2,2),(431,431,1,1,3,5,1,1),(432,432,2,2,4,5,2,2),(433,433,1,1,3,5,1,1),(434,434,2,2,4,5,2,2),(435,435,1,1,1,5,1,1),(436,436,2,2,2,5,2,2),(437,437,1,1,1,5,1,1),(438,438,2,2,2,5,2,2),(439,439,1,3,3,5,1,1),(440,440,2,4,4,5,2,2),(441,441,1,15,13,1,1,1),(442,442,2,16,14,2,2,2),(443,443,1,1,1,5,1,1),(444,444,2,2,2,5,2,2),(445,445,1,1,1,1,1,1),(446,446,2,2,2,2,2,2),(447,447,1,1,1,1,1,1),(448,448,2,2,2,2,2,2),(449,449,1,1,1,5,1,1),(450,450,2,2,2,5,2,2),(451,451,1,3,1,5,1,1),(452,452,2,4,2,5,2,2),(453,453,1,3,1,5,1,1),(454,454,2,4,2,5,2,2),(455,455,1,1,1,1,1,1),(456,456,2,2,2,2,2,2),(457,457,1,17,1,5,1,1),(458,458,2,18,2,5,2,2),(459,459,1,3,3,5,1,1),(460,460,2,4,4,5,2,2),(461,461,1,1,1,5,1,1),(462,462,2,2,2,5,2,2),(463,463,1,3,1,5,1,1),(464,464,2,4,2,5,2,2),(465,465,1,1,1,1,1,1),(466,466,2,2,2,2,2,2),(467,467,1,3,1,1,1,1),(468,468,2,4,2,2,2,2),(469,469,1,3,1,5,1,1),(470,470,2,4,2,5,2,2),(471,471,1,3,3,5,1,1),(472,472,2,4,4,5,2,2),(473,473,1,1,1,5,1,1),(474,474,2,2,2,5,2,2),(475,475,1,3,1,5,1,1),(476,476,2,4,2,5,2,2),(477,477,1,1,1,1,1,1),(478,478,2,2,2,2,2,2),(479,479,1,1,1,1,1,1),(480,480,2,2,2,2,2,2),(481,481,1,1,1,5,1,1),(482,482,2,2,2,5,2,2),(483,483,1,3,3,5,1,1),(484,484,2,4,4,5,2,2),(485,485,1,1,1,1,1,1),(486,486,2,2,2,2,2,2),(487,487,1,3,1,5,1,1),(488,488,2,4,2,5,2,2),(489,489,1,19,26,5,3,3),(490,490,2,20,26,5,3,3),(491,491,1,3,3,5,1,1),(492,492,2,4,4,5,2,2),(493,493,1,1,1,1,1,1),(494,494,2,2,2,2,2,2),(495,495,1,1,1,1,1,1),(496,496,2,2,2,2,2,2),(497,497,1,3,1,1,1,1),(498,498,2,4,2,2,2,2),(499,499,1,1,1,1,1,1),(500,500,2,2,2,2,2,2),(501,501,1,3,3,5,1,1),(502,502,2,4,4,5,2,2),(503,503,1,3,1,5,1,1),(504,504,2,4,2,5,2,2),(505,505,1,3,1,1,1,1),(506,506,2,4,2,2,2,2),(507,507,1,3,1,1,1,1),(508,508,2,4,2,2,2,2),(509,509,1,3,1,5,1,1),(510,510,2,4,2,5,2,2),(511,511,1,1,1,1,1,1),(512,512,2,2,2,2,2,2),(513,513,1,3,1,1,1,1),(514,514,2,4,2,2,2,2),(515,515,1,3,1,5,1,1),(516,516,2,4,2,5,2,2),(517,517,1,1,1,5,1,1),(518,518,2,2,2,5,2,2),(519,519,1,3,1,5,1,1),(520,520,2,4,2,5,2,2),(521,521,1,3,1,5,1,1),(522,522,2,4,2,5,2,2),(523,523,1,1,1,1,1,1),(524,524,2,2,2,2,2,2),(525,525,1,3,1,5,1,1),(526,526,2,4,2,5,2,2),(527,527,1,1,1,1,1,1),(528,528,2,2,2,2,2,2),(529,529,1,3,1,1,1,1),(530,530,2,4,2,2,2,2),(531,531,1,3,1,5,1,1),(532,532,2,4,2,5,2,2),(533,533,1,1,1,5,1,1),(534,534,2,2,2,5,2,2),(535,535,1,3,1,5,1,1),(536,536,2,4,2,5,2,2),(537,537,1,1,3,5,1,1),(538,538,2,2,4,5,2,2),(539,539,1,3,1,5,1,1),(540,540,2,4,2,5,2,2),(541,541,1,1,1,1,1,1),(542,542,2,2,2,2,2,2),(543,543,1,3,1,5,1,1),(544,544,2,4,2,5,2,2),(545,545,1,21,3,5,1,1),(546,546,2,22,4,5,2,2),(547,547,1,3,1,5,1,1),(548,548,2,4,2,5,2,2),(549,549,1,1,1,5,1,1),(550,550,2,2,2,5,2,2),(551,551,1,3,1,5,1,1),(552,552,2,4,2,5,2,2),(553,553,1,1,1,5,1,1),(554,554,2,2,2,5,2,2),(555,555,1,1,1,1,1,1),(556,556,2,2,2,2,2,2),(557,557,1,3,1,5,1,1),(558,558,2,4,2,5,2,2),(559,559,1,3,1,5,1,1),(560,560,2,4,2,5,2,2),(561,561,1,15,13,1,1,1),(562,562,2,16,14,2,2,2),(563,563,1,1,1,1,1,1),(564,564,2,2,2,2,2,2),(565,565,1,1,1,1,1,1),(566,566,2,2,2,2,2,2),(567,567,1,1,1,1,1,1),(568,568,2,2,2,2,2,2),(569,569,1,3,3,5,1,1),(570,570,2,4,4,5,2,2),(571,571,1,1,1,1,1,1),(572,572,2,2,2,2,2,2),(573,573,1,3,1,5,1,1),(574,574,2,4,2,5,2,2),(575,575,1,1,1,1,1,1),(576,576,2,2,2,2,2,2),(577,577,1,1,1,1,1,1),(578,578,1,1,1,1,1,1),(579,579,1,1,1,1,1,1),(580,580,2,2,2,2,2,2),(581,581,1,3,1,5,1,1),(582,582,2,4,2,5,2,2),(583,583,1,1,1,5,1,1),(584,584,2,2,2,5,2,2),(585,585,1,3,1,5,1,1),(586,586,2,4,2,5,2,2),(587,587,1,3,1,5,1,1),(588,588,2,4,2,5,2,2),(589,589,1,3,1,5,1,1),(590,590,2,4,2,5,2,2),(591,591,1,1,1,5,1,1),(592,592,2,2,2,5,2,2),(593,593,1,1,1,1,1,1),(594,594,2,2,2,2,2,2),(595,595,1,15,13,5,1,1),(596,596,2,16,14,5,2,2),(597,597,1,25,26,5,3,3),(598,598,2,26,26,5,3,3),(599,599,1,3,1,5,1,1),(600,600,2,4,2,5,2,2),(601,601,1,1,26,5,1,1),(602,602,2,2,26,5,2,2),(603,603,1,3,1,5,1,1),(604,604,2,4,2,5,2,2),(605,605,1,27,15,5,3,3),(606,606,2,28,16,5,3,3),(607,607,1,1,1,1,1,1),(608,608,2,2,2,2,2,2),(609,609,1,1,1,5,1,1),(610,610,2,2,2,5,2,2),(611,611,1,1,1,1,1,1),(612,612,2,2,2,2,2,2),(613,613,1,1,1,1,1,1),(614,614,2,2,2,2,2,2),(615,615,1,3,1,5,1,1),(616,616,2,4,2,5,2,2),(617,617,1,3,1,5,1,1),(618,618,2,4,2,5,2,2),(619,619,1,1,1,1,1,1),(620,620,2,2,2,2,2,2),(621,621,1,1,1,1,1,1),(622,622,2,2,2,2,2,2),(623,623,1,1,1,1,1,1),(624,624,2,2,2,2,2,2),(625,625,1,3,1,5,1,1),(626,626,2,4,2,5,2,2),(627,627,1,3,1,5,1,1),(628,628,2,4,2,5,2,2),(629,629,1,1,1,1,1,1),(630,630,2,2,2,2,2,2),(631,631,1,1,1,1,1,1),(632,632,2,2,2,2,2,2),(633,633,1,1,1,5,1,1),(634,634,2,2,2,5,2,2),(635,635,1,3,1,5,1,1),(636,636,2,4,2,5,2,2),(637,637,1,1,1,5,1,1),(638,638,2,2,2,5,2,2),(639,639,1,29,17,5,1,1),(640,640,2,30,18,5,2,2),(641,641,1,1,1,5,1,1),(642,642,2,2,2,5,2,2),(643,643,1,3,1,5,1,1),(644,644,2,4,2,5,2,2),(645,645,1,3,1,5,1,1),(646,646,2,4,2,5,2,2),(647,647,1,3,3,5,1,1),(648,648,2,4,4,5,2,2),(649,649,1,3,1,5,1,1),(650,650,2,4,2,5,2,2),(651,651,1,3,1,5,1,1),(652,652,2,4,2,5,2,2),(653,653,1,1,1,3,1,1),(654,654,2,2,2,4,2,2),(655,655,1,3,1,5,1,1),(656,656,2,4,2,5,2,2),(657,657,1,1,1,1,1,1),(658,658,2,2,2,2,2,2),(659,659,1,3,1,5,1,1),(660,660,2,4,2,5,2,2),(661,661,1,1,1,1,1,1),(662,662,2,2,2,2,2,2),(663,663,1,1,1,1,1,1),(664,664,2,2,2,2,2,2),(665,665,1,3,1,1,1,1),(666,666,2,4,2,2,2,2),(667,667,1,3,1,5,1,1),(668,668,2,4,2,5,2,2),(669,669,1,1,1,5,1,1),(670,670,2,2,2,5,2,2),(671,671,1,1,1,1,1,1),(672,672,2,2,2,2,2,2),(673,673,1,1,1,1,1,1),(674,674,2,2,2,2,2,2),(675,675,1,1,1,1,1,1),(676,676,2,2,2,2,2,2),(677,677,1,1,1,1,1,1),(678,678,2,2,2,2,2,2),(679,679,1,1,1,5,1,1),(680,680,2,2,2,5,2,2),(681,681,1,1,1,1,1,1),(682,682,2,2,2,2,2,2),(683,683,1,3,1,1,1,1),(684,684,2,4,2,2,2,2),(685,685,1,1,1,5,1,1),(686,686,2,2,2,5,2,2),(687,687,1,1,3,5,1,1),(688,688,2,2,4,5,2,2),(689,689,1,3,1,5,1,1),(690,690,2,4,2,5,2,2),(691,691,1,3,1,5,1,1),(692,692,2,4,2,5,2,2),(693,693,1,3,3,5,1,1),(694,694,2,4,4,5,2,2),(695,695,1,3,1,5,1,1),(696,696,2,4,2,5,2,2),(697,697,1,3,1,1,1,1),(698,698,2,4,2,2,2,2),(699,699,1,3,1,5,1,1),(700,700,2,4,2,5,2,2),(701,701,2,4,2,5,2,2),(702,702,1,3,1,1,1,1),(703,703,2,4,2,2,2,2),(704,704,1,1,1,1,1,1),(705,705,2,2,2,2,2,2),(706,706,1,3,1,5,1,1),(707,707,2,4,2,5,2,2),(708,708,1,1,1,1,1,1),(709,709,2,2,2,2,2,2),(710,710,1,1,1,1,1,1),(711,711,2,2,2,2,2,2),(712,712,1,3,1,5,1,1),(713,713,2,4,2,5,2,2),(714,714,1,1,1,5,1,1),(715,715,2,2,2,5,2,2),(716,716,1,1,1,5,1,1),(717,717,2,2,2,5,2,2),(718,718,1,3,1,5,1,1),(719,719,2,4,2,5,2,2),(720,720,1,1,1,1,1,1),(721,721,2,2,2,2,2,2),(722,722,1,1,1,1,1,1),(723,723,2,2,2,2,2,2),(724,724,1,1,1,1,1,1),(725,725,2,2,2,2,2,2),(726,726,1,29,17,5,1,1),(727,727,2,31,18,5,2,2),(728,728,1,3,1,5,1,1),(729,729,2,4,2,5,2,2),(730,730,1,15,13,5,1,1),(731,731,2,16,14,5,2,2),(732,732,1,3,1,5,1,1),(733,733,2,4,2,5,2,2),(734,734,1,32,3,5,1,1),(735,735,2,33,4,5,2,2),(736,736,1,1,1,1,1,1),(737,737,2,2,2,2,2,2),(738,738,1,1,1,5,1,1),(739,739,2,2,2,5,2,2),(740,740,1,3,1,5,1,1),(741,741,2,4,2,5,2,2),(742,742,1,1,1,5,1,1),(743,743,2,2,2,5,2,2),(744,744,1,1,1,1,1,1),(745,745,2,2,2,2,2,2),(746,746,1,3,1,5,1,1),(747,747,2,4,2,5,2,2),(748,748,1,3,3,5,1,1),(749,749,2,4,4,5,2,2),(750,750,1,1,1,5,1,1),(751,751,2,2,2,5,2,2),(752,752,1,1,1,1,1,1),(753,753,2,2,2,2,2,2),(754,754,1,3,1,5,1,1),(755,755,2,4,2,5,2,2),(756,756,1,3,1,5,1,1),(757,757,2,4,2,5,2,2),(758,758,1,1,1,5,1,1),(759,759,2,2,2,5,2,2),(760,760,1,3,1,1,1,1),(761,761,2,4,2,2,2,2),(762,762,1,3,3,5,1,1),(763,763,2,4,4,5,2,2),(764,764,1,3,1,5,1,1),(765,765,2,4,2,5,2,2),(766,766,1,3,3,5,1,1),(767,767,2,4,4,5,2,2),(768,768,1,3,3,5,1,1),(769,769,2,4,4,5,2,2),(770,770,1,3,1,5,1,1),(771,771,2,4,2,5,2,2),(772,772,1,3,1,5,1,1),(773,773,2,4,2,5,2,2),(774,774,1,1,1,5,1,1),(775,775,2,2,2,5,2,2),(776,776,1,3,3,5,1,1),(777,777,2,4,4,5,2,2),(778,778,1,1,1,1,1,1),(779,779,2,2,2,2,2,2),(780,780,1,3,1,5,1,1),(781,781,2,4,2,5,2,2),(782,782,1,34,1,5,1,1),(783,783,2,35,2,5,2,2),(784,784,1,3,1,5,1,1),(785,785,2,4,2,5,2,2),(786,786,1,3,1,5,1,1),(787,787,2,4,2,5,2,2),(788,788,1,36,20,5,1,1),(789,789,2,37,21,5,2,2),(790,790,1,1,1,1,1,1),(791,791,2,2,2,2,2,2),(792,792,1,17,1,5,1,1),(793,793,2,18,2,5,2,2),(794,794,1,3,1,5,1,1),(795,795,2,4,2,5,2,2),(796,796,1,1,1,1,1,1),(797,797,2,2,2,2,2,2),(798,798,1,3,1,5,1,1),(799,799,2,4,2,5,2,2),(800,800,1,3,1,5,1,1),(801,801,2,4,2,5,2,2),(802,802,1,1,3,5,1,1),(803,803,2,2,4,5,2,2),(804,804,1,1,1,5,1,1),(805,805,2,2,2,5,2,2),(806,806,1,3,3,5,1,1),(807,807,2,4,4,5,2,2),(808,808,1,3,3,5,1,1),(809,809,2,4,4,5,2,2),(810,810,1,3,1,5,1,1),(811,811,2,4,2,5,2,2),(812,812,1,3,3,5,1,1),(813,813,2,4,4,5,2,2),(814,814,1,1,1,5,1,1),(815,815,2,2,2,5,2,2),(816,816,1,3,1,5,1,1),(817,817,2,4,2,5,2,2),(818,818,1,1,1,1,1,1),(819,819,2,2,2,2,2,2),(820,820,1,3,3,5,1,1),(821,821,2,4,4,5,2,2),(822,822,1,1,1,5,1,1),(823,823,2,2,2,5,2,2),(824,824,1,1,1,1,1,1),(825,825,2,2,2,2,2,2),(826,826,1,1,1,1,1,1),(827,827,2,2,2,2,2,2),(828,828,1,13,11,5,1,1),(829,829,2,14,12,5,2,2),(830,830,1,1,1,5,1,1),(831,831,2,2,2,5,2,2),(832,832,1,3,1,5,1,1),(833,833,2,4,2,5,2,2),(834,834,1,3,1,5,1,1),(835,835,2,4,2,5,2,2),(836,836,1,1,1,1,1,1),(837,837,2,2,2,2,2,2),(838,838,1,3,1,5,1,1),(839,839,2,4,2,5,2,2),(840,840,1,1,1,5,1,1),(841,841,2,2,2,5,2,2),(842,842,1,1,1,1,1,1),(843,843,2,2,2,2,2,2),(844,844,1,1,1,1,1,1),(845,845,2,2,2,2,2,2),(846,846,1,3,1,5,1,1),(847,847,2,4,2,5,2,2),(848,848,1,1,1,5,1,1),(849,849,2,2,2,5,2,2),(850,850,1,3,1,5,1,1),(851,851,2,4,2,5,2,2),(852,852,1,3,1,5,1,1),(853,853,2,4,2,5,2,2),(854,854,1,3,3,5,1,1),(855,855,2,4,4,5,2,2),(856,856,1,3,1,5,1,1),(857,857,2,4,2,5,2,2),(858,858,1,1,1,1,1,1),(859,859,2,2,2,2,2,2),(860,860,1,3,1,5,1,1),(861,861,2,4,2,5,2,2),(862,862,1,3,1,5,1,1),(863,863,2,4,2,5,2,2),(864,864,1,1,1,1,1,1),(865,865,2,2,2,2,2,2),(866,866,1,1,26,5,3,3),(867,867,2,2,26,5,3,3),(868,868,1,3,1,5,1,1),(869,869,2,4,2,5,2,2),(870,870,1,3,1,5,1,1),(871,871,2,4,2,5,2,2),(872,872,1,1,1,1,1,1),(873,873,2,2,2,2,2,2),(874,874,1,3,1,5,1,1),(875,875,2,4,2,5,2,2),(876,876,1,38,26,5,3,3),(877,877,2,39,26,5,3,3),(878,878,1,1,1,5,1,1),(879,879,2,2,2,5,2,2),(880,880,1,3,1,5,1,1),(881,881,2,4,2,5,2,2),(882,882,1,3,1,5,1,1),(883,883,2,4,2,5,2,2),(884,884,1,3,1,5,1,1),(885,885,2,4,2,5,2,2),(886,886,1,1,26,5,3,3),(887,887,2,2,26,5,3,3),(888,888,1,3,1,5,1,1),(889,889,2,4,2,5,2,2),(890,890,1,1,22,5,1,1),(891,891,2,2,23,5,2,2),(892,892,1,40,26,5,1,1),(893,893,2,41,26,5,2,2),(894,894,1,3,1,5,1,1),(895,895,2,4,2,5,2,2),(896,896,1,3,1,5,1,1),(897,897,2,4,2,5,2,2),(898,898,1,1,1,1,1,1),(899,899,2,2,2,2,2,2),(900,900,1,3,1,5,1,1),(901,901,2,4,2,5,2,2),(902,902,1,1,1,5,1,1),(903,903,2,2,2,5,2,2),(904,904,1,3,1,5,1,1),(905,905,2,4,2,5,2,2),(906,906,1,3,3,5,1,1),(907,907,2,4,4,5,2,2),(908,908,1,42,24,5,3,3),(909,909,2,43,25,5,3,3),(910,910,1,1,1,1,1,1),(911,911,2,2,2,2,2,2),(912,912,1,1,1,1,1,1),(913,913,2,2,2,2,2,2),(914,914,1,3,1,1,1,1),(915,915,2,4,2,2,2,2),(916,916,1,1,1,1,1,1),(917,917,2,2,2,2,2,2),(918,918,1,44,1,5,1,1),(919,919,2,45,2,5,2,2),(920,920,1,3,1,5,1,1),(921,921,2,4,2,5,2,2),(922,922,1,3,1,5,1,1),(923,923,2,4,2,5,2,2),(924,924,1,1,1,5,1,1),(925,925,2,2,2,5,2,2),(926,926,1,3,1,5,1,1),(927,927,2,4,2,5,2,2),(928,928,1,3,1,5,1,1),(929,929,2,4,2,5,2,2),(930,930,1,3,1,5,1,1),(931,931,2,4,2,5,2,2),(932,932,1,3,1,5,1,1),(933,933,2,4,2,5,2,2),(934,934,1,3,1,5,1,1),(935,935,2,4,2,5,2,2),(936,936,1,1,3,5,1,1),(937,937,2,2,4,5,2,2);
/*!40000 ALTER TABLE `Business` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-19 23:28:32
