-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: rdcar
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cars` (
  `id_car` int NOT NULL AUTO_INCREMENT,
  `cat` varchar(2) NOT NULL,
  `b_co2` int NOT NULL,
  `brand` varchar(5) NOT NULL,
  `model` varchar(55) NOT NULL,
  `pack` varchar(57) DEFAULT NULL,
  `fuel` varchar(1) NOT NULL,
  `tank_size` varchar(4) NOT NULL,
  `tow_bracket` varchar(3) NOT NULL,
  `rim` varchar(10) NOT NULL,
  `max_km_per_year` int DEFAULT NULL,
  `ideal_km` int NOT NULL,
  `max_km` int NOT NULL,
  `list_price` varchar(8) NOT NULL,
  `benefit_kind_month` varchar(6) NOT NULL,
  `upgrade_cost` varchar(7) DEFAULT NULL,
  `downgrade_benefit` varchar(7) DEFAULT NULL,
  `available` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id_car`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (1,'2',104,'Audi','A3 Sportback 1,0 TFSi 116 pk 6v','Pack Business','B','50 L','Yes','steel',25000,100000,125000,'26421,84','106,67',NULL,'3433,69',NULL),(2,'2',106,'Audi','A3 Sportback 1,6TDI 116 pk 6v','Pack Business','D','50 L','Yes','steel',NULL,140000,180000,'27923,41','147,6',NULL,'1313,29',NULL),(3,'2',105,'Seat','Leon 5D Style 1,6l TDI CR 115pk 5v','Pack Club / Full LED','D','50 L','Yes','steel',NULL,140000,180000,'25077,9','130,76',NULL,'4924,35',NULL),(4,'2',110,'Skoda','Octavia Berline FL Ambi. 1,0TSI 115pk 6v','Pack Ambition GPS','B','50 L','Yes','steel',25000,100000,125000,'22887,27','106,67',NULL,'4768,49',NULL),(5,'2',105,'Skoda','Octavia Berline FL Ambi. 1,6TDI 115cv 5v','Pack Ambition GPS','D','50 L','Yes','steel',NULL,140000,180000,'25333,39','132,1',NULL,'3816,16',NULL),(6,'2',110,'Skoda','Octavia Combi Ambi 1,0TSI 115 pk 6v','Pack Ambition GPS','B','50 L','Yes','steel',25000,100000,125000,'23686,49','106,67',NULL,'4689,76',NULL),(7,'2',105,'Skoda','Octavia Combi Ambi FL 1,6TDI 115 pk 5v','Pack Ambition GPS','D','50 L','Yes','steel',NULL,140000,180000,'26132,62','136,26',NULL,'3529,27',NULL),(8,'2',108,'Seat','Leon ST Style 1,6l TDI CR 115pk 5v','Pack Club / Full LED','D','50 L','Yes','steel',NULL,140000,180000,'25941,98','140,83',NULL,'3312,15',NULL),(9,'2',112,'VW','Golf Variant Trendl.1,0TSI 110 pk 6v','Pack Comfort / Pack Travel','B','50 L','Yes','steel',25000,100000,125000,'24980,41','110,63',NULL,'2032,94',NULL),(10,'2',106,'VW','Golf Variant Trendl.1,6CRTDI 115 pk','Pack Comfort / Pack Travel','D','50 L','Yes','steel',NULL,140000,180000,'27260,91','144,09',NULL,'1182,77',NULL),(11,'2',106,'VW','Golf Highline 1,6 CRTDI BMT 115 pk','Pack Comfort / Pack Travel','D','50 L','Yes','steel',NULL,140000,180000,'28602,21','151,18',NULL,'1174,87',NULL),(12,'3',104,'Audi','A3 Sportback 1,0 TFSi 116 pk 6v','Pack Business Plus','B','50 L','Yes','steel',25000,100000,125000,'28847,12','111,27','814,96','4412,24',NULL),(13,'3',106,'Audi','A3 Sportback 1,6TDI 116pk 6v','Pack Business Plus','D','50 L','Yes','steel',NULL,140000,180000,'30130,9','159,26','3129,21','2097,99',NULL),(14,'3',103,'Audi','A3 Berline 1,0TFSI 116 pk 6v','Pack Business Plus','B','50 L','Yes','steel',25000,100000,125000,'29598,16','112,05','1799,69','3427,51',NULL),(15,'3',104,'Audi','A3 Berline 1,6TDI 116 pk 6v','Pack Business Plus','D','50 L','Yes','steel',NULL,140000,180000,'31099,74','159,94','3466,37','1760,83',NULL),(16,'3',106,'VW','Golf Variant High.1,6CRTDI 115 pk 5v','Pack Comfort / Pack Travel','D','50 L','Yes','steel',NULL,140000,180000,'29487,51','155,86','3418,6','1808,6',NULL),(17,'3',103,'VW','Passat Berline Comfortl.1,6TDI 120pk 6v','Business Pack','D','59 L','Yes','aluminium',NULL,140000,180000,'31684,48','160,69','3384,56','1842,64',NULL),(18,'3',113,'Seat','Ateca Style 1,6 TDI CR 115pk 6v','Pack Drive','D','50 L','Yes','steel',NULL,140000,180000,'28443,15','164,56','3485,08','1742,12',NULL),(19,'3',107,'Skoda','Superb Berline Ambition 1,6CRTDI 120 pk 6v','Pack Ambition Comfort / Pack Ambition GPS','D','66 L','Yes','steel',NULL,180000,200000,'31447,96','168,47','3263','1964,2',NULL),(20,'3',118,'VW','Touran Trendline TDI 1,6 BMT 115 pk 6v',NULL,'D','58 L','Yes','aluminium',NULL,140000,180000,'28300,8','173,85','3519,33','1707,87',NULL),(21,'3',111,'Skoda','Superb Combi Ambition 1,6CRTDI 120 pk 6v','Pack Ambition Comfort / Pack Ambition GPS','D','66 L','Yes','steel',NULL,180000,200000,'32492,97','183,35','3454,68','1772,52',NULL),(22,'4',110,'VW','Golf Sportsvan Highline 1,6 CRTDI 115 pk 5v','Pack Business Class GPS Discover Media','D','50 L','Yes','steel',NULL,140000,180000,'30054,57','167,45','2572,44','3235,56',NULL),(23,'4',98,'Audi','A4 Berline 2,0 TDI 136 pk 6v','Pack Business','D','54 L','Yes','aluminium',NULL,180000,200000,'35784,88','168,7','3678,48','2129,52',NULL),(24,'4',114,'Audi','Q2 1,6 TDI 6v 116 pk','Pack Business','D','50 L','Yes','steel',NULL,140000,180000,'29186,5','170,95','4023,76','1784,24',NULL),(25,'4',105,'VW','Passat Variant Comfort.1,6 TDI 120pk 6v','Business Pack','D','59 L','Yes','aluminium',NULL,140000,180000,'33555,72','174,97','3099,48','2708,52',NULL),(26,'4',118,'VW','Touran Trendline TDI 1,6 BMT 115 pk 6v','Pack Business','D','58 L','Yes','aluminium',NULL,140000,180000,'30209,7','185,57','3624,52','2183,48',NULL),(27,'4',107,'Skoda','Superb Berline Style 1,6CRTDI 120 pk 6v','Pack Style Comfort / Pack Style GPS / Pack Style Premium','D','66 L','Yes','steel',NULL,180000,200000,'35329,23','189,26','2564,3','3243,7',NULL),(28,'4',111,'Skoda','Superb Combi Style 1,6CRTDI 120 pk 6v','Pack Style Comfort / Pack Style GPS / Pack Style Premium','D','66 L','Yes','steel',NULL,180000,200000,'36374,25','205,25','3791,76','2016,24',NULL),(29,'5',36,'Audi','A3 Sportback Attraction 1,4 TFSI 204 pk S-Tronic E-tron','Pack Business','H','40 L','No','aluminium',NULL,140000,180000,'42864,24','122,47','4624,07','3797,53',NULL),(30,'5',99,'Audi','A4 Berline Design 2,0TDI ultra 150 pk 6v','Pack Business','D','54 L','Yes','aluminium',NULL,180000,200000,'37625,52','180,06','2411,69','6009,91',NULL),(31,'5',105,'VW','Passat Variant Highline 1,6TDI 120pk 6v','Business Pack','D','59 L','Yes','aluminium',NULL,140000,180000,'35281,08','183,97','2434,07','5987,53',NULL),(32,'5',103,'Audi','A4 Avant 2,0 TDI 136 pk 6v','Pack Business','D','54 L','Yes','aluminium',NULL,180000,200000,'37123,33','188,27','2048,21','6373,39',NULL),(33,'5',118,'VW','Touran Highline TDI 1,6 BMT 115pk 6v','Pack Business','D','58 L','Yes','aluminium',NULL,140000,180000,'31448,01','193,18','1778,99','6642,61',NULL),(34,'5',108,'VW','Passat Berline Highline 2,0TDI 150pk 6v','Business Pack ,+ GPS Discover Pro','D','59 L','Yes','aluminium',NULL,180000,200000,'36027,97','195,58','4348,57','4073,03',NULL),(35,'5',112,'Skoda','Superb Combi Ambition 2,0CRTDI 150 pk 6v','Pack Ambition Comfort / Pack Ambition GPS','D','66 L','Yes','steel',NULL,180000,200000,'35901,44','205,15','3230,24','5191,36',NULL),(36,'5',123,'VW','Tiguan Comfortl.2,0TDI BMT 115 pk 6v','Pack Travel','D','58 L','Yes','aluminium',NULL,180000,200000,'32587,1','211,82','4235,4','4186,2',NULL),(37,'6',109,'Audi','Q3 2,0 TDI ultra 150 pk 6v','Pack Business','D','64 L','Yes','aluminium',NULL,180000,200000,'34208,48','188,15','3408,75',NULL,NULL),(38,'6',99,'Audi','A4 Berline Design 2,0TDI ultra 150 pk 6v','Pack Business Plus','D','54 L','Yes','aluminium',NULL,180000,200000,'40125,52','192,03','1375,12',NULL,NULL),(39,'6',104,'Audi','A4 Avant Design 2,0TDI ultra 150 pk 6v','Pack Business Plus /','D','54 L','Yes','aluminium',NULL,180000,200000,'41463,98','213,24','2472,23',NULL,NULL),(40,'6',109,'Audi','A5 Sportback 2,0 TDI 150pk 6v','Pack Business Plus / Pack Technology','D','54 L','Yes','aluminium',NULL,180000,200000,'43947','241,71','5062,57',NULL,NULL),(41,'6',114,'Audi','A6 Berline 2.0 TDI ultra 136 pk 6v','Business Edition','D','73 L','Yes','aluminium',NULL,180000,200000,'43136,84','252,66','4614,83',NULL,NULL),(42,'6',130,'Seat','Alhambra Style Ecomotive 2,0CRTDI 150 pk 6v','Pack Executive / Pack Technology','D','73 L','Yes','aluminium',NULL,140000,180000,'37962,33','265,74','6112,76',NULL,NULL),(43,'6',118,'Audi','A6 Avant 2.0 TDI ultra 136 pk 6v','Business Edition','D','73 L','Yes','aluminium',NULL,180000,200000,'45173,61','277,5','6829,36',NULL,NULL),(44,'6+',114,'Audi','A6 Berline 2.0 TDI ultra 150 pk 6v','Business Edition','D','73 L','Yes','aluminium',NULL,180000,200000,'44401,37','260,07','1835,15',NULL,NULL),(45,'6+',130,'Seat','Alhambra Style Ecomotive 2,0CRTDI 150 pk 6v','Pack Executive / Pack Technology','D','73 L','Yes','aluminium',NULL,140000,180000,'38569,37','269,99','1402,86',NULL,NULL),(46,'6+',117,'Audi','Q5 2,0TDI 150 pk 6v','Pack Business Plus','D','65 L','Yes','aluminium',NULL,180000,200000,'44601,4','270,79','5308,27',NULL,NULL),(47,'6+',114,'Audi','A6 Berline 2.0 TDI ultra 190 pk 6v','Business Edition','D','73 L','Yes','aluminium',NULL,180000,200000,'46631,19','273,13','4619,41',NULL,NULL),(48,'6+',118,'Audi','A6 Avant 2.0 TDI ultra 150 pk 6v','Business Edition','D','73 L','Yes','aluminium',NULL,180000,200000,'46438,13','285,26','4101,92',NULL,NULL),(49,'6+',119,'Audi','A6 Avant 2.0 TDI ultra 190 pk 6v','Business Edition','D','73 L','Yes','aluminium',NULL,180000,200000,'48667,95','302,44','7096,31',NULL,NULL);
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-21  0:47:04
