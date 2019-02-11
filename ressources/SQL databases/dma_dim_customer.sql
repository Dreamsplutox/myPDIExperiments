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
-- Table structure for table `dim_customer`
--

DROP TABLE IF EXISTS `dim_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dim_customer` (
  `customer_tk` bigint(20) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_customer`
--

LOCK TABLES `dim_customer` WRITE;
/*!40000 ALTER TABLE `dim_customer` DISABLE KEYS */;
INSERT INTO `dim_customer` VALUES (0,1,NULL,NULL,NULL,NULL,NULL,NULL),(1,1,'1900-01-01 00:00:00','2200-01-01 00:00:00',1,'Mr Paul Summers','1 Kensington High Street','London'),(2,1,'1900-01-01 00:00:00','2200-01-01 00:00:00',3,'Mr Paul Cliff','23 Grand Drive','Brighton'),(3,1,'1900-01-01 00:00:00','2200-01-01 00:00:00',4,'Mr Tony Simmers','34 Summer Avenue','Bristol'),(4,1,'1900-01-01 00:00:00','2200-01-01 00:00:00',5,'Mrs Clair Lennox','Flat 2, Winter Mansion, Blue Drive','London'),(5,1,'1900-01-01 00:00:00','2200-01-01 00:00:00',7,'Mr Martin Laubbaum','11A William Estate','York'),(6,1,'1900-01-01 00:00:00','2200-01-01 00:00:00',8,'Mr Tony Hiller','45 Cumberland Road','London'),(7,1,'1900-01-01 00:00:00','2200-01-01 00:00:00',9,'Mr Sam Barber','22 Yorkshire Drive','York'),(8,1,'1900-01-01 00:00:00','2200-01-01 00:00:00',10,'Mrs Susan North','45 Long Avenue','Bristol'),(9,1,'1900-01-01 00:00:00','2200-01-01 00:00:00',11,'Mrs Lindsay Cross','65B Morton Drive','London'),(10,1,'1900-01-01 00:00:00','2200-01-01 00:00:00',2,'Mrs Susi Redcliff','11 Henry Avenue','London'),(11,1,'1900-01-01 00:00:00','2200-01-01 00:00:00',6,'Mr Diego Sanchez','Flat 3, Sister Road','London'),(12,1,'1900-01-01 00:00:00','2200-01-01 00:00:00',12,'Mr Sam Lincoln','45 Winter Drive','London');
/*!40000 ALTER TABLE `dim_customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-11 16:28:28
