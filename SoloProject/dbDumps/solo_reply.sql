-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: solo
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `reply`
--

DROP TABLE IF EXISTS `reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reply` (
  `rNo` int NOT NULL AUTO_INCREMENT,
  `bNo` int DEFAULT NULL,
  `mNo` int DEFAULT NULL,
  `CONTENT` varchar(1000) DEFAULT NULL,
  `STATUS` varchar(1) DEFAULT 'Y',
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `MODIFY_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rNo`),
  KEY `bNo` (`bNo`),
  KEY `mNo` (`mNo`),
  CONSTRAINT `reply_ibfk_1` FOREIGN KEY (`bNo`) REFERENCES `board` (`bNo`),
  CONSTRAINT `reply_ibfk_2` FOREIGN KEY (`mNo`) REFERENCES `member` (`mNo`),
  CONSTRAINT `reply_chk_1` CHECK ((`STATUS` in (_utf8mb4'Y',_utf8mb4'N')))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply`
--

LOCK TABLES `reply` WRITE;
/*!40000 ALTER TABLE `reply` DISABLE KEYS */;
INSERT INTO `reply` VALUES (1,1,1,'안녕하세요.','Y','2023-08-07 14:15:46','2023-08-07 14:15:46'),(2,1,1,'반갑습니다.','Y','2023-08-07 14:16:03','2023-08-07 14:16:03'),(3,1,1,NULL,'Y','2023-08-07 14:41:32','2023-08-07 14:41:32'),(4,1,1,NULL,'Y','2023-08-07 14:43:14','2023-08-07 14:43:14'),(5,1,1,NULL,'Y','2023-08-07 14:49:25','2023-08-07 14:49:25'),(6,1,1,'안녕','Y','2023-08-07 14:50:40','2023-08-07 14:50:40');
/*!40000 ALTER TABLE `reply` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-07 19:29:51