-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: dma
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `fact_sale`
--

DROP TABLE IF EXISTS `fact_sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `fact_sale` (
  `date_tk` int(11) DEFAULT NULL,
  `sale_id` bigint(20) DEFAULT NULL,
  `sales_channel` varchar(70) DEFAULT NULL,
  `lens_tk` bigint(20) DEFAULT NULL,
  `customer_tk` bigint(20) DEFAULT NULL,
  `sales` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fact_sale`
--

LOCK TABLES `fact_sale` WRITE;
/*!40000 ALTER TABLE `fact_sale` DISABLE KEYS */;
INSERT INTO `fact_sale` VALUES (20130209,13,'store',135,9,28),(20130208,12,'store',134,8,35),(20130206,8,'store',106,6,130),(20130204,6,'store',124,11,140),(20130201,1,'store',106,1,240),(20130210,15,'online',113,7,68),(20130210,16,'online',113,7,68),(20130210,14,'online',106,7,240),(20130207,11,'online',112,7,45),(20130207,10,'online',111,7,56),(20130207,9,'online',110,7,220),(20130205,7,'online',125,5,60),(20130204,5,'online',123,4,420),(20130203,4,'online',122,3,450),(20130202,3,'online',110,2,220),(20130202,2,'online',113,10,60);
/*!40000 ALTER TABLE `fact_sale` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-11 16:28:30
