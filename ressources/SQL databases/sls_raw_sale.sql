-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: sls_raw
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
-- Table structure for table `sale`
--

DROP TABLE IF EXISTS `sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sale` (
  `sale_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `lens_id` bigint(20) NOT NULL,
  `sales_channel_id` bigint(20) NOT NULL,
  `amount` double DEFAULT NULL,
  PRIMARY KEY (`sale_id`),
  KEY `fk_customer_id_idx` (`customer_id`),
  KEY `fk_lens_id_idx` (`lens_id`),
  KEY `fk_sale_sales_channel_idx` (`sales_channel_id`),
  CONSTRAINT `fk_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `fk_lens_id` FOREIGN KEY (`lens_id`) REFERENCES `lens` (`lens_id`),
  CONSTRAINT `fk_sale_sales_channel` FOREIGN KEY (`sales_channel_id`) REFERENCES `sales_channel` (`sales_channel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale`
--

LOCK TABLES `sale` WRITE;
/*!40000 ALTER TABLE `sale` DISABLE KEYS */;
INSERT INTO `sale` VALUES (1,'2013-02-01',1,106,1,240),(2,'2013-02-02',2,113,2,60),(3,'2013-02-02',3,110,2,220),(4,'2013-02-03',4,122,2,450),(5,'2013-02-04',5,123,2,420),(6,'2013-02-04',6,124,1,140),(7,'2013-02-05',7,125,2,60),(8,'2013-02-06',8,106,3,130),(9,'2013-02-07',9,110,2,220),(10,'2013-02-07',9,111,2,56),(11,'2013-02-07',9,112,2,45),(12,'2013-02-08',10,134,3,35),(13,'2013-02-09',11,135,1,28),(14,'2013-02-10',9,106,2,240),(15,'2013-02-10',9,113,2,68),(16,'2013-02-10',9,113,2,68);
/*!40000 ALTER TABLE `sale` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-11 16:28:27
