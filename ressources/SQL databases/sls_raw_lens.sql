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
-- Table structure for table `lens`
--

DROP TABLE IF EXISTS `lens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `lens` (
  `lens_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `lens_category_id` bigint(20) NOT NULL,
  `focal_length_min` int(11) DEFAULT NULL,
  `focal_length_max` int(11) DEFAULT NULL,
  `aperture_max` double DEFAULT NULL,
  `aperture_min` double DEFAULT NULL,
  `focusing_distance_min` int(11) DEFAULT NULL,
  `filter_size` int(11) DEFAULT NULL,
  PRIMARY KEY (`lens_id`),
  KEY `idx_lens_category` (`lens_category_id`),
  CONSTRAINT `fk_lens_category` FOREIGN KEY (`lens_category_id`) REFERENCES `lens_category` (`lens_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=457 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lens`
--

LOCK TABLES `lens` WRITE;
/*!40000 ALTER TABLE `lens` DISABLE KEYS */;
INSERT INTO `lens` VALUES (1,'Makinon 135mm f/2.8',NULL,1,135,NULL,2.8,NULL,NULL,NULL),(2,'Robotar 28mm f/2.8',NULL,8,28,28,2.8,2.8,NULL,NULL),(3,'Vega-1 50mm f/2.8',NULL,1,50,NULL,2.8,NULL,NULL,NULL),(4,'Auto Reflecta 55mm f/1.8',NULL,1,55,NULL,1.8,NULL,NULL,NULL),(5,'Maginon 70-210mm f/4.5-5.6',NULL,1,70,210,4.5,5.6,NULL,NULL),(6,'Accura Diamatic 135mm f/2.8',NULL,1,135,NULL,2.8,NULL,NULL,NULL),(7,'KMZ or BeLOMO MIR-1 37mm f/2.8-16.0',NULL,8,37,37,2.8,16,70,49),(8,'Albinar',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(9,'Albinar Super 85-205mm f/3.8',NULL,9,85,205,3.8,3.8,NULL,NULL),(10,'Albinar MC TeLe 135mm f/2.8',NULL,4,135,135,2.8,2.8,NULL,NULL),(11,'Asahi Optical Co.',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL),(12,'Asahi Optical Co. Super-Multi-Coated Takumar 24mm f/3.5-16.0',1973,7,24,24,3.5,16,25,58),(13,'Asahi Optical Co. Super-Multi-Coated Takumar 20mm f/4.5-16.0',1970,7,20,20,4.5,16,20,77),(14,'Asahi Optical Co. Super-Multi-Coated Takumar 15mm f/3.5-22.0',1974,7,15,15,3.5,22,0,NULL),(15,'Asahi Optical Co. Fisheye-Takumar 18mm f/11.0-32.0',1963,7,18,18,11,32,0,NULL),(16,'Asahi Optical Co. Super Fisheye 17mm f/4.0-22.0',1968,7,17,17,4,22,20,NULL),(17,'Asahi Optical Co. Super-Multi-Coated Takumar 28mm f/3.5-16.0',1971,8,28,28,3.5,16,40,49),(18,'Asahi Optical Co. Super 35mm f/3.5-16.0',1964,8,35,35,3.5,16,45,49),(19,'Asahi Optical Co. Super-Multi-Coated 35mm f/3.5-16.0',1971,8,35,35,3.5,16,45,49),(20,'Asahi Optical Co. Auto-Takumar 35mm f/2.3-22.0',1958,8,35,35,2.3,22,45,62),(21,'Asahi Optical Co. Auto-Takumar 35mm f/3.5-22.0',1959,8,35,35,3.5,22,45,46),(22,'Asahi Optical Co. Super-Takumar 24mm f/3.5-16.0',1969,7,24,24,3.5,16,25,58),(23,'Asahi Optical Co. Takumar 35mm f/4.0-22.0',1957,8,35,35,4,22,45,46),(24,'Asahi Optical Co. Super Takumar 50mm f/1.4-16.0',1965,5,50,50,1.4,16,45,49),(25,'Asahi Optical Co. Super Takumar 50mm f/1.4-16.0',1964,5,50,50,1.4,16,45,49),(26,'Asahi Optical Co. Super-Multi-Coated 50mm f/1.4-16.0',1971,5,50,50,1.4,16,45,49),(27,'Asahi Optical Co. Takumar 50mm f/3.5-22.0',NULL,5,50,50,3.5,22,45,46),(28,'Asahi Optical Co. Macro Takumar 50mm f/4.0-22.0',1964,3,50,50,4,22,20,49),(29,'Asahi Optical Co. Super Macro Takumar 50mm f/4.0-22.0',1969,3,50,50,4,22,23,49),(30,'Asahi Optical Co. Super-Multi-Coated Macro 50mm f/4.0-22.0',1971,3,50,50,4,22,23,49),(31,'Asahi Optical Co. Auto-Takumar 55mm f/1.8-16.0',1960,5,55,55,1.8,16,45,49),(32,'Asahi Optical Co. Super 55mm f/1.8-16.0',1962,5,55,55,1.8,16,45,49),(33,'Asahi Optical Co. Super-Multi-Coated 55mm f/1.8-16.0',1971,5,55,55,1.8,16,45,49),(34,'Asahi Optical Co. SMC Takumar 55mm f/2.0-16.0',NULL,5,55,55,2,16,45,49),(35,'Asahi Optical Co. Super Takumar 28mm f/3.5-22.0',1962,8,28,28,3.5,22,40,58),(36,'Asahi Optical Co. Super 35mm f/2.0-16.0',1966,8,35,35,2,16,45,70),(37,'Asahi Optical Co. Super-Multi-Coated Takumar 35mm f/2.0-16.0',1972,8,35,35,2,16,40,49),(38,'Asahi Optical Co. Auto-Takumar 55mm f/1.8-22.0',1958,5,55,55,1.8,22,55,46),(39,'Asahi Optical Co. Takumar 55mm f/1.8-22.0',1958,5,55,55,1.8,22,55,46),(40,'Asahi Optical Co. Auto-Takumar 55mm f/2.0-22.0',1959,5,55,55,2,22,55,46),(41,'Asahi Optical Co. Auto-Takumar 55mm f/2.2-22.0',1961,5,55,55,2.2,22,55,46),(42,'Asahi Optical Co. Takumar 55mm f/2.2-22.0',1957,5,55,55,2.2,22,55,46),(43,'Asahi Optical Co. Takumar 58mm f/2.0-22.0',1957,5,58,58,2,22,60,46),(44,'Asahi Optical Co. Takumar 58mm f/2.4-22.0',1957,5,58,58,2.4,22,60,46),(45,'Asahi Optical Co. Super-Multi-Coated Zoom 70-150mm f/4.5-22.0',1966,9,70,150,4.5,22,350,67),(46,'Asahi Optical Co. Super-Zoom 70-150mm f/4.5-22.0',1964,9,70,150,4.5,22,350,67),(47,'Asahi Optical Co. Takumar 83mm f/1.9-22.0',1957,6,83,83,1.9,22,110,49),(48,'Asahi Optical Co. Auto-Takumar 85mm f/1.8-16.0',1960,6,85,85,1.8,16,85,55),(49,'Asahi Optical Co. Super-Multi-Coated 85mm f/1.8-16.0',1972,6,85,85,1.8,16,85,58),(50,'Asahi Optical Co. Super-Multi-Coated Takumar 85mm f/1.8-16.0',1973,6,85,85,1.8,16,85,58),(51,'Asahi Optical Co. Super-Takumar 85mm f/1.9-16.0',NULL,6,85,85,1.9,16,NULL,NULL),(52,'Asahi Optical Co. Macro Takumar 85mm f/3.5-22.0',NULL,3,85,85,3.5,22,NULL,NULL),(53,'Asahi Optical Co. Super-Multi-Coated Zoom 85-210mm f/4.5-22.0',1971,9,85,210,4.5,22,350,58),(54,'Asahi Optical Co. Takumar 100mm f/2.0-22.0',1964,6,100,100,2,22,100,58),(55,'Asahi Optical Co. Takumar 100mm f/3.5-22.0',1957,6,100,100,3.5,22,120,46),(56,'Asahi Optical Co. Bellows Takumar 100mm f/4.0-22.0',1966,3,100,100,4,22,NULL,49),(57,'Asahi Optical Co. Super-Multi-Coated Bellows-Takumar 100mm f/4.0-22.0',1971,3,100,100,4,22,NULL,49),(58,'Asahi Optical Co. Super-Multi-Coated Macro 100mm f/4.0-22.0',1975,3,100,100,4,22,45,49),(59,'Asahi Optical Co. Auto-Takumar 105mm f/2.8-22.0',1959,6,105,105,2.8,22,120,49),(60,'Asahi Optical Co. Super-Multi-Coated 105mm f/2.8-22.0',1971,6,105,105,2.8,22,120,49),(61,'Asahi Optical Co. Super-Takumar 105mm f/2.8-22.0',1963,6,105,105,2.8,22,120,49),(62,'Asahi Optical Co. Takumar 105mm f/2.8-22.0',1958,6,105,105,2.8,22,120,46),(63,'Asahi Optical Co. Super-Multi-Coated Index 108mm f/2.8',NULL,6,108,NULL,2.8,NULL,NULL,NULL),(64,'Asahi Optical Co. Super-Multi-Coated 120mm f/2.8-22.0',1973,6,120,120,2.8,22,120,49),(65,'Asahi Optical Co. Super 135mm f/2.5-22.0',1973,4,135,135,2.5,22,2,58),(66,'Asahi Optical Co. Super-Multi-Coated 135mm f/2.5-22.0',1971,4,135,135,2.5,22,115,58),(67,'Asahi Optical Co. Auto-Takumar 135mm f/3.5-22.0',1960,4,135,135,3.5,22,180,49),(68,'Asahi Optical Co. Super-Multi-Coated 135mm f/3.5-22.0',1971,4,135,135,3.5,22,150,49),(69,'Asahi Optical Co. Super-Takumar 135mm f/3.5-22.0',1966,4,135,135,3.5,22,150,49),(70,'Asahi Optical Co. Takumar Model 1 135mm f/3.5-22.0',1957,4,135,135,3.5,22,200,46),(71,'Asahi Optical Co. Super 150mm f/4.0-22.0',1968,4,150,150,4,22,180,49),(72,'Asahi Optical Co. Super-Multi-Coated 150mm f/4.0-22.0',1971,4,150,150,4,22,180,49),(73,'Asahi Optical Co. Takumar 200mm f/3.5-22.0',1962,2,200,200,3.5,22,250,67),(74,'Asahi Optical Co. Super 200mm f/4.0-22.0',1968,2,200,200,4,22,250,58),(75,'Asahi Optical Co. Super-Multi-Coated 200mm f/4.0-22.0',1971,2,200,200,4,22,250,58),(76,'Asahi Optical Co. Tele-Takumar 200mm f/5.6-22.0',1958,2,200,200,5.6,22,250,49),(77,'Asahi Optical Co. Super 300mm f/4.0-22.0',1969,2,300,300,4,22,550,77),(78,'Asahi Optical Co. Super-Multi-Coated 300mm f/4.0-22.0',1972,2,300,300,4,22,550,77),(79,'Asahi Optical Co. Takumar 300mm f/4.0-22.0',1958,2,300,300,4,22,550,82),(80,'Asahi Optical Co. Tele-Takumar 300mm f/6.3-22.0',1962,2,300,300,6.3,22,550,58),(81,'Asahi Optical Co. Tele-Takumar / Super Multi-Coated Takumar 400mm f/5.6-45.0',1965,2,400,400,5.6,45,800,77),(82,'Asahi Optical Co. Takumar 500mm f/5.0-22.0',1957,2,500,500,5,22,1000,46),(83,'Asahi Optical Co. Super-Multi-Coated 500mm f/4.5-45.0',1971,2,500,500,4.5,45,1000,49),(84,'Asahi Optical Co. Takumar 500mm f/4.5-45.0',1965,2,500,500,4.5,45,1000,49),(85,'Asahi Optical Co. Takumar 1000mm f/8.0-22.0',1961,2,1000,1000,8,22,3000,49),(86,'Asahi Optical Co. Super Multi-Coated Takumar 1000mm f/8.0-45.0',1971,2,1000,1000,8,45,3000,49),(87,'Belarusian Optical and Mechanical Association / BelOMA MS Peleng 3.5/8A 8mm f/3.5-16.0',NULL,7,8,8,3.5,16,30,NULL),(88,'Belarusian Optical and Mechanical Association / BelOMA MS Peleng 2.8X17 17mm f/2.8-16.0',NULL,7,17,17,2.8,16,30,NULL),(89,'Beroflex Super wide 12mm f/8.0-16.0',NULL,7,12,12,8,16,NULL,NULL),(90,'Beroflex – 28mm f/2.8',NULL,8,28,28,2.8,2.8,NULL,NULL),(91,'Beroflex MC Auto-Beroflex 28mm f/2.8-16.0',NULL,8,28,28,2.8,16,30,52),(92,'Beroflex Beroflex Auto 28mm f/2.8-22.0',NULL,8,28,28,2.8,22,40,62),(93,'Beroflex Auto-Beroflex-Ultra 55mm f/1.4-16.0',NULL,5,55,55,1.4,16,50,55),(94,'Beroflex Zoom 75-235mm f/4.5',NULL,9,75,235,4.5,4.5,NULL,NULL),(95,'Beroflex Auto 135mm f/3.5',NULL,4,135,135,3.5,3.5,NULL,NULL),(96,'Beroflex MC Auto-Beroflex 135mm f/2.8-16.0',NULL,6,135,135,2.8,16,150,55),(97,'Beroflex Beroflex Auto 200mm f/3.5-22.0',NULL,4,200,200,3.5,22,350,62),(98,'Beroflex Beroflex 12?? 200mm f/4.5-22.0',NULL,4,200,200,4.5,22,300,52),(99,'Beroflex 500mm f/8.0',NULL,1,500,NULL,8,NULL,NULL,NULL),(100,'Carena Super Carenar 55mm f/1.4-16.0',NULL,5,55,55,1.4,16,50,55),(101,'Carenar Super Carenar 28mm f/2.8-22.0',NULL,8,28,28,2.8,22,NULL,NULL),(102,'Carl Zeiss Distagon 25mm f/4.0',NULL,7,25,25,4,4,NULL,NULL),(103,'Carl Zeiss / Cosina Distagon T* 25/2.8 ZS 25mm f/2.8-22.0',2006,8,25,25,2.8,22,17,58),(104,'Carl Zeiss / Cosina Distagon T* 35/2.0 ZS 35mm f/2.0-22.0',2006,8,35,35,2,22,30,58),(105,'Carl Zeiss / Cosina Planar T* 1.4/50 ZS 50mm f/1.4-16.0',2006,5,50,50,1.4,16,45,58),(106,'Carl Zeiss Jena Flektogon 20mm f/2.8-22.0',1975,7,20,20,2.8,22,19,67),(107,'Carl Zeiss Jena Flektogon 20mm f/4.0-22.0',NULL,7,20,20,4,22,16,77),(108,'Carl Zeiss Jena Flektogon 25mm f/4.0-22.0',NULL,7,25,25,4,22,18,77),(109,'Carl Zeiss Jena Flektogon 35mm f/2.8-16.0',1951,8,35,35,2.8,16,18,49),(110,'Carl Zeiss Jena Flektogon 35mm f/2.4-22.0',NULL,8,35,35,2.4,22,19,49),(111,'Carl Zeiss Jena Vario-Pancolar 35-70mm f/2.7-22.0',NULL,9,35,70,2.7,22,80,58),(112,'Carl Zeiss Jena Tessar 40mm f/4.5-16.0',1950,8,40,40,4.5,16,40,49),(113,'Carl Zeiss Jena Pancolar 50mm f/1.8-16.0',NULL,5,50,50,1.8,16,NULL,49),(114,'Carl Zeiss Jena Pancolar 50mm f/2.0-16.0',NULL,5,50,50,2,16,50,49),(115,'Carl Zeiss Jena Tessar 50mm f/3.5-16.0',1949,5,50,50,3.5,16,NULL,30),(116,'Carl Zeiss Jena Flexon 50mm f/2.0-22.0',1953,5,50,50,2,22,50,49),(117,'Carl Zeiss Jena Tessar 50mm f/2.8-22.0',1950,5,50,50,2.8,22,58,49),(118,'Carl Zeiss Jena Pancolar 55mm f/1.4-16.0',1968,5,55,55,1.4,16,39,58),(119,'Carl Zeiss Jena Macro Pancolar 55mm f/2.8-22.0',1983,3,55,55,2.8,22,25,49),(120,'Carl Zeiss Jena Biotar 58mm f/2.0-16.0',1950,5,58,58,2,16,50,49),(121,'Carl Zeiss Jena Biotar 75mm f/1.5',1951,6,75,75,1.5,1.5,80,58),(122,'Carl Zeiss Jena Pancolar 75mm f/1.4-22.0',196,6,75,75,1.4,22,NULL,77),(123,'Carl Zeiss Jena Pancolar 80mm f/1.8-16.0',NULL,6,80,80,1.8,16,83,58),(124,'Carl Zeiss Jena Biometar 80mm f/2.8-22.0',NULL,6,80,80,2.8,22,80,49),(125,'Carl Zeiss Jena Sonnar 135mm f/3.5-22.0',NULL,6,135,135,3.5,22,100,49),(126,'Carl Zeiss Jena Sonnar 135mm f/4.0-22.0',NULL,6,135,135,4,22,120,NULL),(127,'Carl Zeiss Jena Triotar 135mm f/4.0-22.0',1949,6,135,135,4,22,120,49),(128,'Carl Zeiss Jena Sonnar 180mm f/2.8-22.0',NULL,4,180,180,2.8,22,170,86),(129,'Carl Zeiss Jena Sonnar 200mm f/2.8-22.0',NULL,4,200,200,2.8,22,220,77),(130,'Carl Zeiss Jena Sonnar 300mm f/4.0',NULL,2,300,300,4,4,NULL,NULL),(131,'Carl Zeiss Jena Spiegelobjektiv 500mm f/4.0',1959,2,500,500,4,4,NULL,NULL),(132,'Carl Zeiss Jena Fernobjektiv 500mm f/8.0-45.0',NULL,2,500,500,8,45,600,77),(133,'Carl Zeiss Jena Spiegelobjektiv / Prakticar 1000mm f/5.6',1960,2,1000,1000,5.6,5.6,1600,NULL),(134,'Chinon Auto Chinon 28mm f/2.8-22.0',NULL,8,28,28,2.8,22,35,49),(135,'Chinon Auto Chinon 35mm f/2.8-22.0',NULL,8,35,35,2.8,22,50,49),(136,'Chinon Auto Chinon 55mm f/1.4-16.0',NULL,5,55,55,1.4,16,50,55),(137,'Chinon Auto Chinon 55mm f/1.4-16.0',NULL,5,55,55,1.4,16,50,55),(138,'Computar Computar 35mm f/2.8-16.0',NULL,8,35,35,2.8,16,60,49),(139,'Cosina Zoom 19-35mm f/3.5-22.0',NULL,9,19,35,3.5,22,50,77),(140,'Cosina – 24mm f/2.8-22.0',NULL,8,24,24,2.8,22,19,52),(141,'Cosina Zoom 28-210mm f/3.5-22.0',NULL,9,28,210,3.5,22,190,72),(142,'Cosina Cosinon auto 55mm f/1.4-16.0',NULL,5,55,55,1.4,16,50,55),(143,'Cosina / Voigtlander Ultron SL Aspherical 40mm f/2.0-16.0',NULL,5,40,40,2,16,40,52),(144,'Cosina / Voigtlander Color-Heliar SL 75mm f/2.5-22.0',NULL,6,75,75,2.5,22,70,49),(145,'Cosina / Voigtlander APO-Lanthar SL Close Focus 90mm f/3.5-22.0',NULL,6,90,90,3.5,22,50,49),(146,'Cosina / Voigtlander Macro APO-Lanthar SL 125mm f/2.5-22.0',NULL,3,125,125,2.5,22,38,58),(147,'Cosina / Voigtlander APO-Lanthar SL Close Focus 180mm f/4.0-22.0',NULL,4,180,180,4,22,120,49),(148,'E. Ludwig Meritar 50mm f/2.9-22.0',NULL,5,50,50,2.9,22,60,NULL),(149,'Edixa Westromat 50mm 1.9',NULL,5,50,50,1.9,NULL,NULL,NULL),(150,'Enna Ennalyt 28mm f/3.5',NULL,8,28,28,3.5,3.5,NULL,NULL),(151,'Enna Lithagon 28mm f/3.5',NULL,8,28,28,3.5,3.5,NULL,NULL),(152,'Enna Zoom 85-250mm f/4.0-22.0',NULL,9,85,250,4,22,NULL,NULL),(153,'Enna Tele Ennalyt 240mm f/4.5-22.0',NULL,4,240,240,4.5,22,400,NULL),(154,'Enna Tele-Ennalyt 400mm f4.5 400mm f/4.5-32.0',NULL,4,400,400,4.5,32,NULL,95),(155,'Enna Manchen Macro-Revuenon 28mm f/3.5-16.0',NULL,8,28,28,3.5,16,20,52),(156,'Enna Manchen Lithagon 35mm f/3.5-22.0',NULL,8,35,35,3.5,22,50,52),(157,'ENNA Manchen Ennalyt 50mm f/1.9-22.0',NULL,5,50,50,1.9,22,38,52),(158,'Exakta Macro 70-210mm f/4.5-5.6',NULL,3,70,210,4.5,5.6,NULL,NULL),(159,'Eyemik Auto Wide 35mm f/2.8-22.0',NULL,8,35,35,2.8,22,50,52),(160,'Feinmess Bonotar 105mm f/4.5-22.0',NULL,4,105,105,4.5,22,NULL,40),(161,'Fujifilm EBC Fujinon F 16mm f/2.8-22.0',NULL,1,16,16,2.8,22,25,NULL),(162,'Fujifilm EBC Fujinon F 19mm f/3.5-22.0',NULL,8,19,19,3.5,22,NULL,77),(163,'Fujifilm EBC Fujinon W 28mm f/3.5-16.0',NULL,8,28,28,3.5,16,40,49),(164,'Fujifilm EBC Fujinon W 35mm f/1.9-16.0',NULL,8,35,35,1.9,16,40,49),(165,'Fujifilm EBC Fujinon W 35mm f/2.8-16.0',NULL,8,35,35,2.8,16,40,49),(166,'Fujifilm EBC Fujinon 50mm f/1.4-16.0',NULL,5,50,50,1.4,16,45,49),(167,'Fujifilm Fujinon 50mm f/1.4-16.0',NULL,5,50,50,1.4,16,45,49),(168,'Fujifilm EBC Fujinon Z 54-270mm f/4.5-22.0',NULL,9,54,270,4.5,22,250,62),(169,'Fujifilm Fujinon 55mm f/1.8-16.0',NULL,5,55,55,1.8,16,45,49),(170,'Fujifilm EBC Fujinon Macro 55mm f/3.5-32.0',NULL,3,55,55,3.5,32,24,49),(171,'Fujifilm EBC Fujinon Z 75-150mm f/4.5-22.0',NULL,9,75,150,4.5,22,180,62),(172,'Fujifilm EBC Fujinon Z 75-205mm f/3.8-22.0',NULL,9,75,205,3.8,22,200,62),(173,'Fujifilm EBC Fujinon SF 85mm f/4.0-16.0',NULL,6,85,85,4,16,100,NULL),(174,'Fujifilm EBC Fujinon T 100mm f/2.8-22.0',NULL,6,100,100,2.8,22,120,49),(175,'Fujifilm EBC Fujinon T 135mm f/3.5-22.0',NULL,4,135,135,3.5,22,150,49),(176,'Fujifilm EBC Fujinon T 200mm f/4.5-22.0',NULL,4,200,200,4.5,22,250,49),(177,'Fujifilm EBC Fujinon T 400mm f/4.5-45.0',NULL,2,400,400,4.5,45,800,NULL),(178,'Fujifilm EBC Fujinon T 600mm f/5.6-45.0',NULL,2,600,600,5.6,45,1250,NULL),(179,'Fujifilm EBC Fujinon T 1000mm f/8.0-45.0',NULL,2,1000,1000,8,45,3000,NULL),(180,'Hanimex Hanimar Automatic 28mm f/2.8-22.0',NULL,7,28,28,2.8,22,40,62),(181,'Hanimex Hanimex Automatic 35mm f/2.8-22.0',NULL,8,35,35,2.8,22,50,55),(182,'Hanimex Automatic Zoom C-Macro 35-70mm f/-1.0-22.0',NULL,9,35,70,-1,22,50,55),(183,'Hanimex Hanimar 135mm f/3.5',NULL,4,135,135,3.5,3.5,NULL,NULL),(184,'Hanimex Hanimar auto “s” 135mm f/2.8-22.0',NULL,4,135,135,2.8,22,200,58),(185,'Hanimex Hanimex Automatic 135mm f/2.8-22.0',NULL,4,135,135,2.8,22,150,55),(186,'Hanimex Hanimar Automatic 200mm f/3.5-22.0',NULL,4,200,200,3.5,22,270,62),(187,'Hanimex Hanimar 400mm f/6.3',NULL,2,400,400,6.3,6.3,NULL,NULL),(188,'Hanza Auto Zoom 85-205mm f/3.8',NULL,9,85,205,3.8,3.8,NULL,NULL),(189,'Hanza 200 200mm f/3.9-32.0',NULL,4,200,200,3.9,32,250,NULL),(190,'Helios 44 58mm f/2.0-16.0',NULL,5,58,58,2,16,NULL,NULL),(191,'Helios 40 85mm f/1.5-22.0',NULL,6,85,85,1.5,22,80,66),(192,'Helios 40-2 85mm f/1.5-22.0',NULL,6,85,85,1.5,22,80,67),(193,'Helios Macro 85-210mm f/3.8-22.0',NULL,9,85,210,3.8,22,170,62),(194,'Isco-Gattingen Westron 35mm f/2.8-16.0',NULL,8,35,35,2.8,16,30,49),(195,'Isco-Gattingen Edixa-Westanar 50mm f/2.8-16.0',NULL,5,50,50,2.8,16,75,41),(196,'Isco-Gattingen Iscotar 50mm f/2.8-16.0',NULL,5,50,50,2.8,16,80,49),(197,'ISCO-Gattingen Westanar 50mm f/2.8-16.0',NULL,5,50,50,2.8,16,100,40),(198,'ISCO-Gattingen Westanar 50mm f/3.5-16.0',NULL,5,50,50,3.5,16,100,40),(199,'Isco-Gattingen Edixa ISCO-MAT 50mm f/1.9-22.0',NULL,1,50,50,1.9,22,50,49),(200,'Isco-Gattingen Edixa Westromat 50mm f/1.9-22.0',NULL,5,50,50,1.9,22,50,49),(201,'Isco-Gattingen Westagon 50mm f/1.9-22.0',NULL,5,50,50,1.9,22,50,49),(202,'Isco-Gattingen Isconar 100mm f/4.5-22.0',NULL,6,100,100,4.5,22,150,41),(203,'Isco-Gattingen Tele Westanar 135mm f/3.5-22.0',NULL,6,135,135,3.5,22,250,NULL),(204,'Isco-Gattingen Isconar 135mm f/4.0-22.0',NULL,4,135,135,4,22,150,49),(205,'Japan Auto-Flex 50mm f/2.8-16.0',NULL,5,50,50,2.8,16,50,52),(206,'Jupiter 9 85mm f/2.0-16.0',NULL,6,85,85,2,16,80,49),(207,'Jupiter 11 135mm f/4.0',NULL,4,135,135,4,4,NULL,NULL),(208,'Jupiter 6 180mm f/2.8',NULL,4,180,180,2.8,2.8,NULL,77),(209,'Jupiter 21M 200mm f/4.0',NULL,2,200,200,4,4,2,NULL),(210,'Kenlock Kenlock automatic MC 24mm f/2.5-16.0',NULL,7,24,24,2.5,16,30,62),(211,'Kern Macro Switar 50mm f/1.9-16.0',NULL,5,50,50,1.9,16,27,NULL),(212,'Kilfitt Macro-Kilar 40mm f/2.8-22.0',NULL,3,40,40,2.8,22,NULL,NULL),(213,'Kilfitt Macro-Kilar 40mm f/3.5-22.0',NULL,3,40,40,3.5,22,NULL,NULL),(214,'Kilfitt Kilar 90mm f/2.5-22.0',NULL,6,90,90,2.5,22,NULL,NULL),(215,'Kilfitt Macro-Kilar 90mm f/2.8-32.0',NULL,3,90,90,2.8,32,NULL,NULL),(216,'Kilfitt Kilar 135mm f/3.8-22.0',NULL,6,135,135,3.8,22,NULL,40),(217,'Kilfitt Kilar 150mm f/3.5-22.0',NULL,4,150,150,3.5,22,NULL,52),(218,'Kilfitt Reflectar 250mm f/4.0',NULL,2,250,250,4,4,NULL,NULL),(219,'Kilfitt Sport Reflectar 500mm f/5.6',NULL,2,500,500,5.6,5.6,NULL,NULL),(220,'Kilfitt Sport Reflectar 1000mm f/8.0',NULL,1,1000,1000,8,8,NULL,NULL),(221,'Kiron Kiron 24mm f/2.0-16.0',NULL,8,24,24,2,16,30,55),(222,'Kiron Kiron 28mm f/2.0-16.0',NULL,8,28,28,2,16,30,55),(223,'Kiron Kiron 105mm f/2.8-32.0',NULL,3,105,105,2.8,32,35,52),(224,'KMZ Industar-61 L/Z 50mm f/2.8-16.0',NULL,5,50,50,2.8,16,28,49),(225,'KMZ Volna 9 50mm f/2.8-16.0',NULL,5,50,50,2.8,16,23,52),(226,'KMZ Industar-50-2 50mm f/3.5-16.0',NULL,5,50,50,3.5,16,1,36),(227,'KMZ Tair-3 300mm f/4.5-22.0',NULL,2,300,300,4.5,22,300,72),(228,'KMZ or BeLOMO or Lytkarino Helios 44-2 58mm f/2.0-16.0',NULL,5,58,58,2,16,50,49),(229,'KMZ/BeLOMO Helios-44-M 58mm f/2.0-16.0',NULL,5,58,58,2,16,NULL,52),(230,'Komura Komura 85mm f/1.4-16.0',NULL,6,85,85,1.4,16,100,67),(231,'Korea Praktica 135mm f/2.8-22.0',NULL,4,135,135,2.8,22,NULL,52),(232,'Luxon MC Auto Zoom 28-70mm f/3.5-22.0',NULL,9,28,70,3.5,22,80,58),(233,'Mamiya Auto Mamiya/Sekor SX 21mm f/4.0-16.0',NULL,8,21,21,4,16,45,49),(234,'Mamiya Auto Mamiya / Sekor 28mm f/2.8-16.0',NULL,8,28,28,2.8,16,30,58),(235,'Mamiya Auto Mamiya / Sekor 35mm f/2.8-16.0',NULL,8,35,35,2.8,16,40,49),(236,'Mamiya Auto Mamiya / Sekor 50mm f/2.0-16.0',NULL,5,50,50,2,16,50,52),(237,'Mamiya Auto Mamiya/Sekor 55mm f/1.4-16.0',NULL,5,55,55,1.4,16,55,55),(238,'Mamiya Auto Mamiya/Sekor SX 55mm f/1.4-16.0',NULL,5,55,55,1.4,16,45,NULL),(239,'Mamiya Auto Mamiya / Sekor 55mm f/1.8-16.0',NULL,5,55,55,1.8,16,50,52),(240,'Mamiya Auto Mamiya / Sekor 55mm f/2.0-16.0',NULL,5,55,55,2,16,50,52),(241,'Mamiya Auto Mamiya / Sekor 135mm f/2.8-22.0',NULL,6,135,135,2.8,22,150,55),(242,'Mamiya Auto Mamiya / Sekor 135mm f/3.5-22.0',NULL,6,135,135,3.5,22,180,49),(243,'Mamiya Auto Mamiya / Sekor 200mm f/3.5-22.0',NULL,4,200,200,3.5,22,300,67),(244,'Meyer Orestegor / Pentacon 300mm f/4.0-22.0',NULL,2,300,300,4,22,NULL,NULL),(245,'Meyer Telemegor 300mm f/4.5',NULL,2,300,300,4.5,4.5,NULL,NULL),(246,'Meyer Telemegor 250mm f/5.5',NULL,2,250,250,5.5,5.5,NULL,NULL),(247,'Meyer Orestegor 200mm f/4.0-22.0',NULL,2,200,200,4,22,250,NULL),(248,'Meyer Telemegor 180mm f/5.5',NULL,4,180,180,5.5,5.5,NULL,NULL),(249,'Meyer Primotar 180mm f/3.5',NULL,1,180,NULL,3.5,NULL,NULL,NULL),(250,'Meyer Primoplan 75mm f/1.9',NULL,1,75,75,1.9,NULL,NULL,NULL),(251,'Meyer Orestor / Pentacon 135mm f/2.8-22.0',NULL,6,135,135,2.8,22,NULL,55),(252,'Meyer Primotar 135mm f/3.5',NULL,1,135,NULL,3.5,NULL,NULL,NULL),(253,'Meyer Trioplan 100mm f/2.8-22.0',NULL,6,100,100,2.8,22,120,49),(254,'Meyer Orestegor / Pentacon / Prakticar 500mm f/5.6',NULL,1,500,NULL,5.6,NULL,NULL,NULL),(255,'Meyer Orestor / Pentacon 100mm f/2.8',NULL,1,100,NULL,2.8,NULL,NULL,NULL),(256,'Meyer Telemegor 400mm f/5.5',NULL,2,400,400,5.5,5.5,NULL,NULL),(257,'Meyer Orestegon / Pentacon 29mm f/2.8-16.0',1970,8,29,29,2.8,16,25,55),(258,'Meyer Lydith / Pentacon 30mm f/3.5',1964,8,30,30,3.5,3.5,40,49),(259,'Meyer Primagon 35mm f/4.5',NULL,1,35,NULL,4.5,NULL,NULL,NULL),(260,'Meyer Helioplan / Wide-Angle Anastigmat 40mm f/4.5',NULL,1,40,NULL,4.5,NULL,NULL,NULL),(261,'Meyer Oreston / Pentacon 50mm f/1.4',NULL,1,50,NULL,1.4,NULL,NULL,NULL),(262,'Meyer Trioplan 50mm f/2.9',NULL,1,50,NULL,2.9,NULL,NULL,NULL),(263,'Meyer Primotar-E 50mm f/3.5',NULL,1,50,NULL,3.5,NULL,NULL,NULL),(264,'Meyer Oreston / Pentacon 50mm f/1.8-16.0',1965,5,50,50,1.8,16,33,49),(265,'Meyer Domiron 50mm f/2.0-16.0',1960,5,50,50,2,16,40,NULL),(266,'Meyer Domiplan 50mm f/2.8-16.0',1962,5,50,50,2.8,16,75,49),(267,'Meyer Domiplan 50mm f/2.8-22.0',NULL,5,50,50,2.8,22,75,49),(268,'Meyer Primotar 50mm f/2.8-32.0',1951,5,50,50,2.8,32,60,NULL),(269,'Meyer Primoplan 58mm f/1.9',1950,5,58,58,1.9,1.9,50,49),(270,'MIR 1B 37mm f/2.8-16.0',NULL,8,37,37,2.8,16,NULL,49),(271,'MIR 24M 35mm f/2.0',NULL,8,35,35,2,2,NULL,NULL),(272,'MIR 10A 28mm f/3.5-16.0',NULL,8,28,28,3.5,16,22,67),(273,'MIR 20M 20mm f/3.5-16.0',NULL,7,20,20,3.5,16,18,28),(274,'Mirage 135mm f2.8 Auto 135mm f/2.8-16.0',NULL,6,135,135,2.8,16,180,55),(275,'Montgomery Ward Auto Zoom 85-205mm f/3.8-22.0',NULL,9,85,205,3.8,22,200,58),(276,'Olympus G. Zuiko Auto-W 28mm f/3.5-16.0',NULL,8,28,28,3.5,16,25,49),(277,'Olympus G. Zuiko Auto-W 35mm f/2.8-16.0',NULL,8,35,35,2.8,16,NULL,49),(278,'Olympus G. Zuiko Auto-S 50mm f/1.4-16.0',NULL,5,50,50,1.4,16,NULL,NULL),(279,'Olympus F. Zuiko Auto-S 50mm f/1.8-16.0',NULL,5,50,50,1.8,16,40,49),(280,'Olympus E. Zuiko Auto-T 135mm f/3.5-22.0',NULL,6,135,135,3.5,22,NULL,NULL),(281,'Olympus E. Zuiko Auto-T 200mm f/4.0-22.0',NULL,2,200,200,4,22,NULL,58),(282,'Optomax 35mm f2.8 Auto 35mm f/2.8-22.0',NULL,8,35,35,2.8,22,50,55),(283,'P. Angenieux Type R 61 24mm f/3.5-22.0',NULL,8,24,24,3.5,22,NULL,NULL),(284,'P. Angenieux Type R 11 28mm f/3.5-22.0',NULL,8,28,28,3.5,22,NULL,NULL),(285,'P. Angenieux Type R 1 35mm f/2.5-22.0',NULL,8,35,35,2.5,22,NULL,NULL),(286,'P. Angenieux Type S 21 50mm f/1.5-22.0',NULL,5,50,50,1.5,22,NULL,NULL),(287,'P. Angenieux Type P 1 90mm f/1.8-22.0',NULL,6,90,90,1.8,22,NULL,NULL),(288,'P. Angenieux Type Y12 90mm f/2.5-22.0',NULL,6,90,90,2.5,22,NULL,NULL),(289,'P. Angenieux Type P 21 180mm f/4.5-22.0',NULL,4,180,180,4.5,22,NULL,NULL),(290,'Pentacon Multi Coating 29mm f/2.8-22.0',NULL,8,29,29,2.8,22,25,55),(291,'Pentacon Multi Coating 50mm f/1.8-16.0',NULL,5,50,50,1.8,16,33,49),(292,'Pentacon Electric 135mm f/2.8-22.0',NULL,4,135,135,2.8,22,170,55),(293,'Pentacon Pentacon auto MC 135mm f/2.8-22.0',NULL,6,135,135,2.8,22,170,NULL),(294,'Pentor – 35mm f/2.8-16.0',NULL,8,35,35,2.8,16,50,NULL),(295,'Pentor Auto 200mm f/3.5-22.0',NULL,2,200,200,3.5,22,260,62),(296,'Petri C.C. Auto 45mm f/2.8-16.0',NULL,1,45,45,2.8,16,NULL,52),(297,'Petri C.C. Auto 55mm f/1.8-16.0',NULL,5,55,55,1.8,16,60,52),(298,'Photax Zoom-Macro 37-105mm f/3.5-22.0',NULL,9,37,105,3.5,22,30,67),(299,'Piesker Voss 35mm f/2.8',NULL,8,35,35,2.8,2.8,NULL,NULL),(300,'Piesker Voss 100mm f/2.8-22.0',NULL,6,100,100,2.8,22,NULL,NULL),(301,'Piesker Kalimar 100mm f/3.5-22.0',NULL,3,100,100,3.5,22,NULL,NULL),(302,'Piesker Votar 135mm f/3.5-22.0',NULL,4,135,135,3.5,22,NULL,NULL),(303,'Piesker Tele-Votar 180mm f/5.5',NULL,4,180,180,5.5,5.5,NULL,NULL),(304,'Piesker Tele-Votar 250mm f/5.5',NULL,2,250,250,5.5,5.5,NULL,NULL),(305,'Porst Porst Super Weitwinkel 28mm f/2.8-22.0',NULL,7,28,28,2.8,22,40,62),(306,'Porst Super-WW-AS 28mm f/2.8-22.0',NULL,7,28,28,2.8,22,25,49),(307,'Porst 35mm f/2.8',NULL,1,35,NULL,2.8,NULL,NULL,NULL),(308,'Porst Weitwinkel 35mm f/2.8-22.0',NULL,8,35,35,2.8,22,50,55),(309,'Porst 50mm f/1.7',NULL,1,50,NULL,1.7,NULL,NULL,NULL),(310,'Porst Color Reflex Auto 50mm f/1.8',NULL,5,50,50,1.8,1.8,NULL,NULL),(311,'Porst Porst Color Reflex MC auto 50mm f/1.7-16.0',NULL,5,50,50,1.7,16,50,49),(312,'Porst Porst Color Reflex MC Auto 55mm f/1.4-16.0',NULL,5,55,55,1.4,16,50,55),(313,'Porst Porst Color Reflex auto 55mm f/2.8-22.0',NULL,5,55,55,2.8,22,90,49),(314,'Porst Porst Tele auto 100mm f/2.8-22.0',NULL,6,100,100,2.8,22,120,52),(315,'Porst Porst Tele auto D 135mm f/3.5-22.0',NULL,4,135,135,3.5,22,250,49),(316,'Porst 200mm f/3.5',NULL,1,200,NULL,3.5,NULL,NULL,NULL),(317,'Porst Super-Tele-AS 200mm f/3.5-22.0',NULL,4,200,200,3.5,22,300,58),(318,'Porst Super Tele auto 240mm f/4.5-22.0',NULL,4,240,240,4.5,22,400,52),(319,'Promatic Auto 300mm f/5.5',NULL,2,300,300,5.5,5.5,NULL,NULL),(320,'Ranger Wide Auto 35mm f/2.8-16.0',NULL,8,35,35,2.8,16,50,49),(321,'Ranger Auto Telephoto 135mm f/2.8-22.0',NULL,4,135,135,2.8,22,200,55),(322,'Raynox 200mm f/3.5',NULL,1,200,NULL,3.5,NULL,NULL,NULL),(323,'Reflecta Super Reflecta 55mm f/1.4-16.0',NULL,5,55,55,1.4,16,50,55),(324,'Reflexogon Reflexogon 28mm f/3.5-16.0',NULL,7,28,28,3.5,16,22,49),(325,'Revue Macro-Revuenon 28mm f/3.5-16.0',NULL,8,28,28,3.5,16,20,54),(326,'Revue Auto Revuenon 28mm f/2.8-22.0',NULL,7,28,28,2.8,22,36,52),(327,'Revue Revuenon 50mm f/1.8',NULL,5,50,50,1.8,1.8,NULL,NULL),(328,'Revue Tomioka Auto Revuenon 55mm f/1.2-16.0',NULL,5,55,55,1.2,16,50,55),(329,'Revue Auto Revuenon 55mm f/1.4-16.0',NULL,5,55,55,1.4,16,50,55),(330,'Revue Auto Revuenon 55mm f/1.4-16.0',NULL,5,55,55,1.4,16,50,55),(331,'Revue Auto Revuenon 55mm f/1.7-16.0',NULL,5,55,55,1.7,16,50,52),(332,'Revue Revuenon-zoom 70-220mm f/4.0-22.0',NULL,9,70,220,4,22,200,67),(333,'Revue Revuenon-Zoom 80-205mm f/3.9-22.0',NULL,9,80,205,3.9,22,200,58),(334,'Revue Auto Revuenon 135mm f/2.8-22.0',NULL,6,135,135,2.8,22,150,55),(335,'Revue Auto Revuenon 135mm f/2.8-22.0',NULL,6,135,135,2.8,22,150,52),(336,'Revue Auto Revuenon 135mm f/2.8-22.0',NULL,4,135,135,2.8,22,150,52),(337,'Revue Auto-Revuenon 200mm f/3.5-22.0',NULL,4,200,200,3.5,22,280,58),(338,'Revue Revuenon Mirror Lens 500mm f/8.0',NULL,2,500,500,8,8,400,77),(339,'Revuenon Auto Revuenon 35mm f/2.8-22.0',NULL,8,35,35,2.8,22,50,52),(340,'Revuenon Revuenon-Special 35mm f/2.8-22.0',NULL,8,35,35,2.8,22,50,52),(341,'Revuenon Auto Revuenon 50mm f/1.8-16.0',NULL,5,50,50,1.8,16,48,49),(342,'Revuenon Auto Revuenon 50mm f/2.0-16.0',NULL,5,50,50,2,16,50,52),(343,'Revuenon MC Revuenon 125mm f/2.8-16.0',NULL,4,125,125,2.8,16,143,52),(344,'Revuenon Revuenon-Special 135mm f/2.8-22.0',NULL,4,135,135,2.8,22,250,55),(345,'Rexatar Auto MC 135mm f/2.8-22.0',NULL,4,135,135,2.8,22,150,55),(346,'Riken Optical Corp Auto Rikenon 55mm f/1.4-16.0',NULL,8,55,55,1.4,16,50,55),(347,'Robotar Robotar 35mm f/2.8-22.0',NULL,8,35,35,2.8,22,50,55),(348,'Robotar Robotar 35mm f/2.8-22.0',NULL,8,35,35,2.8,22,50,55),(349,'Robotar Robotar 35mm f/2.8-22.0',35,8,35,35,2.8,22,40,49),(350,'Rodenstock Eurygon 30mm f/2.8-16.0',NULL,8,30,30,2.8,16,NULL,NULL),(351,'Rodenstock Eurygon 35mm f/4.0-16.0',NULL,8,35,35,4,16,NULL,NULL),(352,'Rodenstock Heligon 50mm f/2.0-16.0',NULL,5,50,50,2,16,NULL,NULL),(353,'Rollei / Voigtlander Color-Skoparex 25mm f/2.8-16.0',NULL,8,25,25,2.8,16,NULL,49),(354,'Rollei / Voigtlander Color-Skoparex 35mm f/2.8-16.0',NULL,8,35,35,2.8,16,NULL,49),(355,'Rollei / Voigtlander Color-Ultron 50mm f/1.8-16.0',NULL,5,50,50,1.8,16,NULL,49),(356,'Rollei / Voigtlander Color-Dynarex 85mm f/2.8-16.0',NULL,6,85,85,2.8,16,NULL,49),(357,'Rollei / Voigtlander Color-Dynarex 135mm f/4.0-22.0',NULL,4,135,135,4,22,NULL,NULL),(358,'Rollei / Voigtlander Color-Dynarex 200mm f/4.0-22.0',NULL,2,200,200,4,22,NULL,NULL),(359,'Rollei-HFT Planar 50mm f/1.8-16.0',NULL,5,50,50,1.8,16,45,49),(360,'Schacht Ulm Edixa-S-Travegon-A 35mm f/2.8-22.0',NULL,8,35,35,2.8,22,50,49),(361,'Schacht Ulm Edixa-Travenar 50mm f/2.8-16.0',NULL,5,50,50,2.8,16,50,49),(362,'Schacht Ulm Praktica-Travenar R 90mm f/2.8-22.0',NULL,6,90,90,2.8,22,100,49),(363,'Schacht Ulm Travegar 100mm f/3.3-22.0',NULL,6,100,100,3.3,22,90,49),(364,'Schneider C-Curtagon 35mm f/2.8-22.0',NULL,8,35,35,2.8,22,100,NULL),(365,'Schneider Edixa-Tele-Atron 135mm f/3.5-32.0',1961,4,135,135,3.5,32,200,49),(366,'Schneider Apla-Tele-Xenar 360mm f/5.5',NULL,2,360,360,5.5,5.5,NULL,NULL),(367,'Schneider-Kreuznach PC-Super-Angulon 28mm f/2.8-22.0',NULL,8,28,28,2.8,22,28,67),(368,'Schneider-Kreuznach Edixa Curtagon 28mm f/4.0-22.0',NULL,7,28,28,4,22,25,49),(369,'Schneider-Kreuznach C-Curtagon 35mm f/2.8-22.0',NULL,8,35,35,2.8,22,100,NULL),(370,'Schneider-Kreuznach Curtagon 35mm f/2.8-22.0',NULL,8,35,35,2.8,22,30,49),(371,'Schneider-Kreuznach Edixa-Curtagon 35mm f/2.8-22.0',NULL,8,35,35,2.8,22,35,49),(372,'Schneider-Kreuznach PA-Curtagon 35mm f/4.0-22.0',NULL,8,35,35,4,22,28,49),(373,'Schneider-Kreuznach Xenar 50mm f/2.8-16.0',NULL,5,50,50,2.8,16,75,40),(374,'Schneider-Kreuznach Xenon 50mm f/1.9-22.0',NULL,5,50,50,1.9,22,50,49),(375,'Schneider-Kreuznach Edixa-Xenar 50mm f/2.8-22.0',NULL,5,50,50,2.8,22,50,49),(376,'Schneider-Kreuznach Xenar 50mm f/2.8-22.0',NULL,5,50,50,2.8,22,50,49),(377,'Schneider-Kreuznach C-Xenar 50mm f/3.5-22.0',NULL,5,50,50,3.5,22,200,NULL),(378,'Sears Auto 28mm f/2.8-22.0',NULL,8,28,28,2.8,22,150,58),(379,'Sears Auto Sears 55mm f/1.4-16.0',NULL,5,55,55,1.4,16,50,55),(380,'Sears Auto 135mm f/2.8-22.0',NULL,4,135,135,2.8,22,150,55),(381,'Sigma Telemax 135mm f/2.8-22.0',NULL,6,135,135,2.8,22,135,NULL),(382,'Sigma Zoom Macro IG 39-80mm f/3.5',NULL,3,39,80,3.5,3.5,NULL,NULL),(383,'Sigma Sigma-XQ 35mm f/2.8-32.0',NULL,8,35,35,2.8,32,50,62),(384,'Sigma Fish Eye Ultra-Wideangle 12mm f/8.0-16.0',NULL,7,12,12,8,16,NULL,NULL),(385,'Sigma XQ Multi-Coated 28mm f/2.8-22.0',NULL,8,28,28,2.8,22,23,NULL),(386,'Sirius 28mm f2.8 Macro MC Automatic 28mm f/2.8-22.0',NULL,8,28,28,2.8,22,20,52),(387,'Soligor 28 mm C/D 28mm f/2.0-16.0',NULL,8,28,28,2,16,24,58),(388,'Soligor Wide Auto 35mm f/2.8-16.0',NULL,8,35,35,2.8,16,40,NULL),(389,'Soligor Zoom 35-70mm f/2.5-3.5',NULL,9,35,70,2.5,3.5,NULL,NULL),(390,'Soligor Zoom 35-70mm f/3.5-4.5',NULL,9,35,70,3.5,4.5,NULL,NULL),(391,'Soligor Soligor C/D 100mm f/2.0-16.0',NULL,6,100,100,2,16,150,58),(392,'Soligor Soligor 105mm f/2.8-16.0',NULL,6,105,105,2.8,16,120,49),(393,'Soligor Soligor C/D 135mm f/2.0-22.0',NULL,6,135,135,2,22,180,77),(394,'Soligor tele-auto 135mm f/2.8-22.0',NULL,6,135,135,2.8,22,NULL,NULL),(395,'Soligor Tele-Auto 135mm f/3.5-22.0',NULL,4,135,135,3.5,22,150,52),(396,'Soligor MC Soligor 200mm f/2.8-22.0',NULL,4,200,200,2.8,22,250,72),(397,'Soligor Soligor C/D 200mm f/2.8-22.0',NULL,4,200,200,2.8,22,220,77),(398,'Soligor Tele-auto 300mm f/5.5',NULL,2,300,300,5.5,5.5,NULL,NULL),(399,'Soligor 400mm f/6.3',NULL,1,400,NULL,6.3,NULL,NULL,NULL),(400,'Steinheil Auto-Cassaron 50mm f/2.8-22.0',NULL,5,50,50,2.8,22,80,NULL),(401,'Steinheil Auto-Cassarit 100mm f/3.5-22.0',NULL,6,100,100,3.5,22,NULL,49),(402,'Steinheil Manchen Edixa-Auto-Cassaron 50mm f/2.8-22.0',NULL,5,50,50,2.8,22,80,49),(403,'Steinheil Manchen Tele-Quinar 200mm f/4.5-32.0',NULL,4,200,200,4.5,32,210,54),(404,'Tokina 17mm f3.5 TL RMC 17mm f/3.5-16.0',NULL,8,17,17,3.5,16,NULL,67),(405,'Tokina RMC wide-auto 28mm f/2.8',NULL,8,28,28,2.8,2.8,NULL,NULL),(406,'Tokina Zoom 28-85mm f/4.5',NULL,9,28,85,4.5,4.5,NULL,NULL),(407,'Tokina Wide-Auto 35mm f/2.8-16.0',NULL,8,35,35,2.8,16,40,52),(408,'Tokina Zoom 75-260mm f/4.5',NULL,9,75,260,4.5,4.5,NULL,NULL),(409,'Tokina AT-X 80-200mm f/2.8',NULL,9,80,200,2.8,2.8,NULL,NULL),(410,'Tokina Zoom 80-200mm f/4.5',NULL,9,80,200,4.5,4.5,NULL,NULL),(411,'Tokina RMC Tokina 135mm f/2.8-22.0',NULL,6,135,135,2.8,22,150,52),(412,'Tomioka Tominon 50mm f/2.0-16.0',NULL,1,50,50,2,16,NULL,49),(413,'Tomioka Tominon 55mm f/1.2-16.0',NULL,5,55,55,1.2,16,50,55),(414,'Tomioka Tominon 55mm f/1.4-16.0',NULL,5,55,55,1.4,16,NULL,55),(415,'Vivitar n/a 28mm f/2.5',NULL,8,28,28,2.5,2.5,NULL,NULL),(416,'Vivitar Vivitar Series 1 Auto Wide Angle 28mm f/1.9-16.0',NULL,8,28,28,1.9,16,30,58),(417,'Vivitar Macro Focusing Zoom 28-210mm f/3.5-22.0',NULL,9,28,210,3.5,22,250,72),(418,'Vivitar 35mm f/1.9-16.0',NULL,1,35,NULL,1.9,16,NULL,NULL),(419,'Vivitar n/a 35mm f/3.5',NULL,8,35,35,3.5,3.5,NULL,NULL),(420,'Vivitar Auto Wide Angle 35mm f/2.8-22.0',NULL,8,35,35,2.8,22,40,52),(421,'Vivitar Series-1 Varifocal 35-85mm f/2.8-16.0',1974,3,35,85,2.8,16,NULL,72),(422,'Vivitar Zoom 35-205mm f/3.8',NULL,9,35,205,3.8,3.8,NULL,NULL),(423,'Vivitar Auto Macro 55mm f/2.8-16.0',NULL,3,55,55,2.8,16,21,62),(424,'Vivitar Zoom 75-205mm',NULL,9,75,205,NULL,NULL,NULL,NULL),(425,'Vivitar Series-1 Flat Field Macro 90-180mm f/4.5-22.0',1973,9,90,180,4.5,22,70,72),(426,'Vivitar Series-1 135mm f/2.3-22.0',NULL,4,135,135,2.3,22,150,72),(427,'Vivitar Auto Telephoto 135mm f/2.8-22.0',NULL,4,135,135,2.8,22,140,55),(428,'Vivitar Tele 200mm f/3.5-22.0',1975,4,200,200,3.5,22,183,62),(429,'Vivitar n/a 400mm f/5.6',NULL,2,400,400,5.6,5.6,NULL,NULL),(430,'Vivitar Series-1 Aspherical Mirror 450mm f/4.5',1983,2,450,450,4.5,4.5,NULL,NULL),(431,'Vivitar Tele 500mm f/6.3-32.0',NULL,2,500,500,6.3,32,NULL,NULL),(432,'Vivitar Solid Cat 600mm f/8.0',NULL,2,600,600,8,8,NULL,NULL),(433,'Vivitar Solid Cat 800mm f/11.0',NULL,2,800,800,11,11,NULL,NULL),(434,'Yashica Auto Yashinon-DX 28mm f/2.8-16.0',NULL,7,28,28,2.8,16,40,NULL),(435,'Yashica Auto Yashinon-DX 35mm f/2.8-16.0',NULL,8,35,35,2.8,16,40,NULL),(436,'Yashica Super Yashinon 35mm f/2.8-16.0',1960,8,35,35,2.8,16,NULL,NULL),(437,'Yashica Auto Yashinon DS-M 50mm f/1.4-16.0',NULL,5,50,50,1.4,16,50,55),(438,'Yashica Auto Yashinon-DS 50mm f/1.4-16.0',NULL,5,50,50,1.4,16,50,55),(439,'Yashica Auto Yashinon-DX 50mm f/1.7-16.0',NULL,5,50,50,1.7,16,48,NULL),(440,'Yashica Auto Yashinon 50mm f/1.8-16.0',NULL,5,50,50,1.8,16,50,55),(441,'Yashica Yashinon 50mm f/1.9-16.0',NULL,5,50,50,1.9,16,55,NULL),(442,'Yashica Auto Yashinon 50mm f/2.0-16.0',1960,5,50,50,2,16,NULL,NULL),(443,'Yashica Auto Yashinon 55mm f/1.2-16.0',NULL,5,55,55,1.2,16,50,NULL),(444,'Yashica Macro Yashinon 60mm f/2.8-22.0',NULL,3,60,60,2.8,22,23,58),(445,'Yashica Super Yashinon 100mm f/2.8-22.0',1960,6,100,100,2.8,22,NULL,NULL),(446,'Yashica Auto Yashinon-DX 135mm f/2.8-22.0',NULL,6,135,135,2.8,22,150,NULL),(447,'Yashica Super Yashinon 135mm f/2.8-22.0',1960,6,135,135,2.8,22,NULL,NULL),(448,'Yashica Super Yashinon 135mm f/3.5-22.0',1960,6,135,135,3.5,22,NULL,NULL),(449,'Yashica Super Yashinon 180mm f/3.5-22.0',1960,4,180,180,3.5,22,NULL,NULL),(450,'Yashica Super Yashinon 250mm f/4.0-22.0',1960,2,250,250,4,22,NULL,NULL),(451,'Zeiss Ikon / Voigtlander Distagon 25mm f/2.8-16.0',1969,8,25,25,2.8,16,NULL,NULL),(452,'Zeiss Ikon / Voigtlander Distagon 25mm f/4.0-16.0',1969,8,25,25,4,16,NULL,NULL),(453,'Zeiss Ikon / Voigtlander Skoparex 35mm f/3.4-16.0',1969,8,35,35,3.4,16,30,NULL),(454,'Zeiss Ikon / Voigtlander Ultron 50mm f/1.8-16.0',1969,5,50,50,1.8,16,45,NULL),(455,'Zeiss Ikon / Voigtlander Tessar 50mm f/2.8-16.0',1969,5,50,50,2.8,16,45,NULL),(456,'Zeiss Ikon / Voigtlander Dynarex 135mm f/4.0-22.0',1969,4,135,135,4,22,NULL,NULL);
/*!40000 ALTER TABLE `lens` ENABLE KEYS */;
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
