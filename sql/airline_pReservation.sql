-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 211.238.142.21    Database: airline
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `pReservation`
--

DROP TABLE IF EXISTS `pReservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pReservation` (
  `pResNum` int(11) NOT NULL AUTO_INCREMENT,
  `carNum` varchar(100) DEFAULT NULL COMMENT '차량번호',
  `resDate` date DEFAULT NULL COMMENT '예약날',
  `rate` int(11) DEFAULT NULL COMMENT '요금',
  `id` varchar(400) DEFAULT NULL COMMENT 'ID(FK)',
  `startDate` date DEFAULT NULL COMMENT '주차장이용시작일',
  `endDate` date DEFAULT NULL COMMENT '주차장이용종료일',
  `areaNum` int(11) DEFAULT NULL COMMENT '자리번호',
  `airport` varchar(100) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pResNum`),
  KEY `FK_pRes_idx` (`id`),
  KEY `FK_aiport_idx` (`airport`),
  CONSTRAINT `FK_pRes` FOREIGN KEY (`id`) REFERENCES `members` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pReservation`
--

LOCK TABLES `pReservation` WRITE;
/*!40000 ALTER TABLE `pReservation` DISABLE KEYS */;
INSERT INTO `pReservation` VALUES (1,'37가2948','2020-01-02',2000,NULL,'2020-01-01','2020-01-31',1,'김포공항',NULL,NULL),(2,'23마3782','2020-01-05',80000,NULL,'2020-01-08','2020-02-01',5,'김포공항',NULL,NULL),(3,'23가4281','2020-01-14',80000,NULL,'2020-01-14','2020-01-15',66,'제주공항',NULL,NULL),(4,'23가4484','2020-01-14',760000,NULL,'2020-01-14','2020-02-01',19,'제주공항',NULL,NULL),(5,'91가3784','2020-01-14',80000,NULL,'2020-01-14','2020-01-15',8,'김포공항',NULL,NULL),(6,'23가4281','2020-01-14',80000,NULL,'2020-01-15','2020-01-16',34,'김포공항',NULL,NULL),(7,'83부8472','2020-01-20',80000,NULL,'2020-01-18','2020-02-01',99,'김포공항',NULL,NULL),(8,'09나2847','2020-01-17',576000,NULL,'2020-01-17','2020-02-07',45,'인천공항',NULL,NULL),(9,'09나2847','2020-01-17',256500,NULL,'2020-01-17','2020-01-25',1,'인천공항',NULL,NULL),(10,'09나2847','2020-01-17',256500,NULL,'2020-01-17','2020-01-25',1,'인천공항',NULL,NULL),(11,'09나2847','2020-01-17',256500,NULL,'2020-01-17','2020-01-25',1,'인천공항',NULL,NULL),(12,'09나2847','2020-01-17',256500,NULL,'2020-01-17','2020-01-25',1,'인천공항',NULL,NULL),(13,'23가4281','2020-02-05',414000,NULL,'2020-02-05','2020-02-20',7,'인천공항','01011111111','7777'),(14,'23가4281','2020-02-05',232750,NULL,'2020-02-20','2020-02-29',6,'제주공항','','1234'),(18,'23가4281','2020-02-05',513000,NULL,'2020-02-05','2020-02-28',0,'제주공항','01011111111','4444'),(25,'23가4281','2020-02-05',342000,NULL,'2020-02-13','2020-02-28',7,'제주공항','01011111111','1234'),(27,'23가4281','2020-02-06',391500,NULL,'2020-02-13','2020-02-27',4,'인천공항','01011111111','4123'),(28,'23가4281','2020-02-06',391500,NULL,'2020-02-13','2020-02-27',4,'인천공항','01011111111','4123'),(29,'23가4281','2020-02-06',391500,NULL,'2020-02-13','2020-02-27',4,'인천공항','01011111111','4123'),(30,'23가4281','2020-02-06',55000,NULL,'2020-02-14','2020-02-15',67,'제주공항','01011111111','8888'),(31,'22누1234','2020-02-07',140125,'jinck22','2020-02-13','2020-02-22',8,'인천공항','01022259422','1234'),(37,'23가4281','2020-02-10',213750,'test','2020-02-21','2020-02-29',68,'제주공항','010-1234-1234','1234'),(38,'22누1234','2020-02-11',75000,'jinck222','2020-02-19','2020-02-21',3,'인천공항','01022259422','1234'),(40,'91가3784','2020-02-11',342000,NULL,'2020-02-12','2020-02-28',31,'김포공항','01038209098','1111'),(41,'91가3784','2020-02-11',342000,NULL,'2020-02-12','2020-02-28',31,'김포공항','01038209098','1111'),(42,'91가3784','2020-02-11',342000,NULL,'2020-02-12','2020-02-28',31,'김포공항','01038209098','1111'),(43,'23가4484','2020-02-11',65000,NULL,'2020-02-14','2020-02-15',36,'인천공항','01038209098','1234'),(44,'22누1234','2020-02-11',60000,'jinck222','2020-02-19','2020-02-21',36,'김포공항','01022259422','1234'),(45,'22누1234','2020-02-11',40000,'jinck222','2020-02-13','2020-02-14',12,'김포공항','01022259422','1234'),(46,'22누1234','2020-02-11',40000,'jinck222','2020-02-13','2020-02-13',12,'김포공항','01022259422','1234'),(47,'23가4281','2020-02-14',304000,'test','2020-02-14','2020-02-26',8,'제주공항','01012341234',NULL),(48,'66루2899','2020-02-14',50000,'test','2020-02-27','2020-02-28',31,'인천공항','01012341234',NULL),(49,'09나2847','2020-02-14',304000,'test','2020-02-14','2020-02-26',61,'제주공항','01012341234',NULL),(50,'09나2847','2020-02-14',218500,NULL,'2020-02-17','2020-02-26',30,'제주공항','01012344321','5555'),(51,'08허1234','2020-01-01',24000000,NULL,'2020-01-01','2020-01-31',1,'제주공항','11111111111',NULL),(52,'07나2837','2020-01-01',20000000,NULL,'2020-01-01','2020-01-31',1,'인천공항','11111111111',NULL),(53,'08나2834','2020-01-01',45600000,NULL,'2020-01-01','2020-01-31',1,'김포공항','11111111111',NULL),(54,'47나1927','2020-02-17',670500,'test','2020-02-01','2020-02-25',37,'인천공항','01012341234',NULL),(55,'47나1927','2020-02-17',463500,'test','2020-02-01','2020-02-17',19,'인천공항','01012341234',NULL),(56,'47나1927','2020-02-17',313500,'test','2020-02-17','2020-02-28',10,'인천공항','01012341234',NULL),(57,'47나1927','2020-02-17',486000,'test','2020-02-01','2020-02-18',31,'인천공항','01012341234',NULL),(58,'47나1927','2020-02-17',436500,'test','2020-02-10','2020-02-26',13,'인천공항','01012341234',NULL),(59,'47나1927','2020-02-17',576000,'test','2020-02-04','2020-02-25',23,'인천공항','01012341234',NULL),(60,'47나1927','2020-02-17',463500,'test','2020-02-01','2020-02-17',1,'인천공항','01012341234',NULL),(61,'47나1927','2020-02-17',304000,'test','2020-02-19','2020-02-29',1,'인천공항','01012341234',NULL),(62,'47나1927','2020-02-17',289750,'test','2020-02-17','2020-02-27',34,'인천공항','01012341234',NULL),(63,'47나1927','2020-02-17',289750,'test','2020-02-17','2020-02-27',12,'인천공항','01012341234',NULL),(64,'47나1927','2020-02-17',20000,'test','2020-02-17','2020-02-17',27,'제주공항','01012341234',NULL),(65,'47나1927','2020-02-17',20000,'test','2020-02-17','2020-02-17',55,'김포공항','01012341234',NULL),(66,'47나1927','2020-02-17',266000,'test','2020-02-17','2020-02-26',48,'인천공항','01012341234',NULL),(67,'47나1927','2020-02-17',472500,'test','2020-02-02','2020-02-19',40,'인천공항','01012341234',NULL),(68,'47나1927','2020-02-17',391500,'test','2020-02-05','2020-02-19',27,'인천공항','01012341234',NULL),(69,'47나1927','2020-02-17',450000,'test','2020-02-04','2020-02-25',1,'김포공항','01012341234',NULL),(70,'47나1927','2020-02-17',237500,'test','2020-02-19','2020-02-29',92,'김포공항','01012341234',NULL),(71,'47나1927','2020-02-17',228000,'test','2020-02-17','2020-02-27',41,'김포공항','01012341234',NULL),(72,'47나1927','2020-02-17',486000,'test','2020-02-03','2020-02-26',42,'김포공항','01012341234',NULL),(73,'47나1927','2020-02-17',275500,'test','2020-02-17','2020-02-29',68,'김포공항','01012341234',NULL),(74,'47나1927','2020-02-17',306000,'test','2020-02-03','2020-02-17',63,'김포공항','01012341234',NULL),(75,'47나1927','2020-02-17',306000,'test','2020-02-03','2020-02-17',83,'김포공항','01012341234',NULL),(76,'47나1927','2020-02-17',558000,'test','2020-02-01','2020-02-27',21,'김포공항','01012341234',NULL),(77,'47나1927','2020-02-17',432000,'test','2020-02-07','2020-02-27',101,'김포공항','01012341234',NULL),(78,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',43,'김포공항','01012341234',NULL),(79,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',102,'김포공항','01012341234',NULL),(80,'21가7452','2020-02-17',576000,'test','2020-02-01','2020-02-28',84,'김포공항','01012341234',NULL),(81,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',24,'김포공항','01012341234',NULL),(82,'21가7452','2020-02-17',-740000,'test','2020-04-01','2020-02-23',3,'김포공항','01012341234',NULL),(83,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',103,'김포공항','01012341234',NULL),(84,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',7,'김포공항','01012341234',NULL),(85,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',6,'김포공항','01012341234',NULL),(86,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',8,'김포공항','01012341234',NULL),(87,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',9,'김포공항','01012341234',NULL),(88,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',26,'김포공항','01012341234',NULL),(89,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',27,'김포공항','01012341234',NULL),(90,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',10,'김포공항','01012341234',NULL),(91,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',44,'김포공항','01012341234',NULL),(92,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',46,'김포공항','01012341234',NULL),(93,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',66,'김포공항','01012341234',NULL),(94,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',25,'김포공항','01012341234',NULL),(95,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',65,'김포공항','01012341234',NULL),(96,'21가7452','2020-02-17',5535000,'test','2020-02-01','2020-10-23',4,'김포공항','01012341234',NULL),(97,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',64,'김포공항','01012341234',NULL),(98,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',104,'김포공항','01012341234',NULL),(99,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',105,'김포공항','01012341234',NULL),(100,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',22,'김포공항','01012341234',NULL),(101,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',90,'김포공항','01012341234',NULL),(102,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',86,'김포공항','01012341234',NULL),(103,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',48,'김포공항','01012341234',NULL),(104,'21가7452','2020-02-17',360000,'test','2020-02-01','2020-02-17',85,'김포공항','01012341234',NULL),(105,'21가7452','2020-02-17',152000,'test','2020-02-17','2020-02-23',106,'김포공항','01012341234',NULL),(106,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',75,'김포공항','01012341234',NULL),(107,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',16,'김포공항','01012341234',NULL),(108,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',29,'김포공항','01012341234',NULL),(109,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',47,'김포공항','01012341234',NULL),(110,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',88,'김포공항','01012341234',NULL),(111,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',108,'김포공항','01012341234',NULL),(112,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',50,'김포공항','01012341234',NULL),(113,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',51,'김포공항','01012341234',NULL),(114,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',70,'김포공항','01012341234',NULL),(115,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',45,'김포공항','01012341234',NULL),(116,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',23,'김포공항','01012341234',NULL),(117,'21가7452','2020-02-17',576000,'test','2020-02-01','2020-02-28',2,'김포공항','01012341234',NULL),(118,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',34,'김포공항','01012341234',NULL),(119,'21가7452','2020-02-17',152000,'test','2020-02-17','2020-02-23',5,'김포공항','01012341234',NULL),(120,'21가7452','2020-02-17',152000,'test','2020-02-17','2020-02-23',67,'김포공항','01012341234',NULL),(121,'21가7452','2020-02-17',360000,'test','2020-02-01','2020-02-17',87,'김포공항','01012341234',NULL),(122,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',107,'김포공항','01012341234',NULL),(123,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',11,'김포공항','01012341234',NULL),(124,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',28,'김포공항','01012341234',NULL),(125,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',49,'김포공항','01012341234',NULL),(126,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',15,'김포공항','01012341234',NULL),(127,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',110,'김포공항','01012341234',NULL),(128,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',111,'김포공항','01012341234',NULL),(129,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',71,'김포공항','01012341234',NULL),(130,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',53,'김포공항','01012341234',NULL),(131,'21가7452','2020-02-17',486000,'test','2020-02-01','2020-02-23',73,'김포공항','01012341234',NULL),(132,'21가7452','2020-02-17',275500,'test','2020-02-17','2020-02-29',93,'김포공항','01012341234',NULL),(133,'21가7452','2020-02-17',275500,'test','2020-02-17','2020-02-29',114,'김포공항','01012341234',NULL),(134,'21가7452','2020-02-17',275500,'test','2020-02-17','2020-02-29',69,'김포공항','01012341234',NULL),(135,'21가7452','2020-02-17',360000,'test','2020-02-01','2020-02-17',112,'김포공항','01012341234',NULL),(136,'21가7452','2020-02-17',360000,'test','2020-02-01','2020-02-17',56,'김포공항','01012341234',NULL),(137,'21가7452','2020-02-17',774000,'test','2020-02-01','2020-02-29',9,'인천공항','01012341234',NULL),(138,'21가7452','2020-02-17',774000,'test','2020-02-01','2020-02-29',51,'인천공항','01012341234',NULL),(139,'21가7452','2020-02-17',774000,'test','2020-02-01','2020-02-29',2,'인천공항','01012341234',NULL),(140,'21가7452','2020-02-17',387000,'test','2020-02-01','2020-02-29',6,'인천공항','01012341234',NULL),(141,'21가7452','2020-02-17',774000,'test','2020-02-01','2020-02-29',17,'인천공항','01012341234',NULL),(142,'21가7452','2020-02-17',3177000,'test','2020-02-01','2020-05-29',15,'인천공항','01012341234',NULL),(143,'21가7452','2020-02-17',774000,'test','2020-02-01','2020-02-29',14,'인천공항','01012341234',NULL),(144,'21가7452','2020-02-17',774000,'test','2020-02-01','2020-02-29',16,'인천공항','01012341234',NULL),(145,'21가7452','2020-02-17',774000,'test','2020-02-01','2020-02-29',21,'인천공항','01012341234',NULL),(146,'21가7452','2020-02-17',774000,'test','2020-02-01','2020-02-29',43,'인천공항','01012341234',NULL),(147,'21가7452','2020-02-17',774000,'test','2020-02-01','2020-02-29',50,'인천공항','01012341234',NULL),(148,'21가7452','2020-02-17',351500,'test','2020-02-17','2020-02-29',36,'인천공항','01012341234',NULL),(149,'21가7452','2020-02-17',351500,'test','2020-02-17','2020-02-29',25,'인천공항','01012341234',NULL),(150,'21가7452','2020-02-17',351500,'test','2020-02-17','2020-02-29',32,'인천공항','01012341234',NULL),(151,'21가7452','2020-02-17',25000,'test','2020-02-17','2020-02-17',46,'인천공항','01012341234',NULL),(152,'21가7452','2020-02-17',643500,'test','2020-02-01','2020-02-29',32,'제주공항','01012341234',NULL),(153,'21가7452','2020-02-17',643500,'test','2020-02-01','2020-02-29',42,'제주공항','01012341234',NULL),(154,'21가7452','2020-02-17',643500,'test','2020-02-01','2020-02-29',33,'제주공항','01012341234',NULL),(155,'21가7452','2020-02-17',321750,'test','2020-02-01','2020-02-29',41,'제주공항','01012341234',NULL),(156,'21가7452','2020-02-17',643500,'test','2020-02-01','2020-02-29',51,'제주공항','01012341234',NULL),(157,'21가7452','2020-02-17',643500,'test','2020-02-01','2020-02-29',21,'제주공항','01012341234',NULL),(158,'21가7452','2020-02-17',643500,'test','2020-02-01','2020-02-29',22,'제주공항','01012341234',NULL),(159,'21가7452','2020-02-17',643500,'test','2020-02-01','2020-02-29',52,'제주공항','01012341234',NULL),(160,'21가7452','2020-02-17',643500,'test','2020-02-01','2020-02-29',43,'제주공항','01012341234',NULL),(161,'21가7452','2020-02-17',643500,'test','2020-02-01','2020-02-29',53,'제주공항','01012341234',NULL),(162,'21가7452','2020-02-17',643500,'test','2020-02-01','2020-02-29',39,'제주공항','01012341234',NULL),(163,'21가7452','2020-02-17',643500,'test','2020-02-01','2020-02-29',49,'제주공항','01012341234',NULL),(164,'21가7452','2020-02-17',643500,'test','2020-02-01','2020-02-29',60,'제주공항','01012341234',NULL),(165,'21가7452','2020-02-17',643500,'test','2020-02-01','2020-02-29',38,'제주공항','01012341234',NULL),(166,'21가7452','2020-02-17',643500,'test','2020-02-01','2020-02-29',29,'제주공항','01012341234',NULL),(167,'21가7452','2020-02-17',643500,'test','2020-02-01','2020-02-29',28,'제주공항','01012341234',NULL),(168,'21가7452','2020-02-17',643500,'test','2020-02-01','2020-02-29',20,'제주공항','01012341234',NULL),(169,'21가7452','2020-02-17',643500,'test','2020-02-01','2020-02-29',59,'제주공항','01012341234',NULL),(170,'21가7452','2020-02-17',643500,'test','2020-02-01','2020-02-29',48,'제주공항','01012341234',NULL),(171,'21가7452','2020-02-17',643500,'test','2020-02-01','2020-02-29',70,'제주공항','01012341234',NULL),(172,'21가7452','2020-02-17',643500,'test','2020-02-01','2020-02-29',23,'제주공항','01012341234',NULL),(173,'21가7452','2020-02-17',643500,'test','2020-02-01','2020-02-29',44,'제주공항','01012341234',NULL),(174,'21가7452','2020-02-17',643500,'test','2020-02-01','2020-02-29',34,'제주공항','01012341234',NULL),(175,'21가7452','2020-02-17',643500,'test','2020-02-01','2020-02-29',11,'제주공항','01012341234',NULL),(176,'21가7452','2020-02-17',643500,'test','2020-02-01','2020-02-29',25,'제주공항','01012341234',NULL),(177,'21가7452','2020-02-17',643500,'test','2020-02-01','2020-02-29',13,'제주공항','01012341234',NULL),(178,'21가7452','2020-02-17',643500,'test','2020-02-01','2020-02-29',1,'제주공항','01012341234',NULL),(179,'21가7452','2020-02-17',643500,'test','2020-02-01','2020-02-29',63,'제주공항','01012341234',NULL),(180,'21가7452','2020-02-17',20000,'test','2020-02-17','2020-02-17',16,'제주공항','01012341234',NULL),(181,'21가7452','2020-02-17',20000,'test','2020-02-17','2020-02-17',3,'제주공항','01012341234',NULL),(182,'21가7452','2020-02-17',247000,NULL,'2020-02-17','2020-02-28',33,'김포공항','01038209098','3333'),(183,'21가7452','2020-02-17',256500,NULL,'2020-02-17','2020-02-28',37,'제주공항','01012344321','5555'),(184,'21가7452','2020-02-17',742500,'everyair','2020-01-02','2020-01-28',10,'인천공항','01022259422',NULL),(185,'23가4484','2020-02-17',365750,'everyair','2020-02-14','2020-02-26',29,'인천공항','01022259422',NULL),(186,'23가4281','2020-02-17',218500,'test','2020-02-17','2020-02-26',56,'제주공항','01012341234',NULL),(187,'22누1235','2020-02-17',100000,'everyair','2020-02-17','2020-02-21',69,'제주공항','01022259422',NULL),(188,'21나7556','2020-02-17',648000,'everyair','2020-02-17','2020-03-17',54,'제주공항','01022259422',NULL);
/*!40000 ALTER TABLE `pReservation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-17 15:56:48