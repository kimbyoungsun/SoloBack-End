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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `bNo` int NOT NULL AUTO_INCREMENT,
  `mNo` int DEFAULT NULL,
  `TITLE` varchar(1000) DEFAULT NULL,
  `CONTENT` varchar(2000) DEFAULT NULL,
  `TYPE` varchar(100) DEFAULT NULL,
  `ORIGINAL_FILENAME` varchar(100) DEFAULT NULL,
  `RENAMED_FILENAME` varchar(100) DEFAULT NULL,
  `READCOUNT` int DEFAULT '0',
  `STATUS` varchar(1) DEFAULT 'Y',
  `CREATE_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  `MODIFY_DATE` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`bNo`),
  KEY `FK_BOARD_WRITER` (`mNo`),
  CONSTRAINT `FK_BOARD_WRITER` FOREIGN KEY (`mNo`) REFERENCES `member` (`mNo`) ON DELETE SET NULL,
  CONSTRAINT `board_chk_1` CHECK ((`STATUS` in (_utf8mb4'Y',_utf8mb4'N')))
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,1,'저희 반려동물 맡아주실분','저희 귀여운 반려동물을 맡아주세요','pet','원본파일명.txt','변경된파일명.txt',90,'Y','2023-08-07 13:20:52','2023-08-07 13:20:52'),(2,1,'선풍기가 고장났어요','선풍기를 고칠줄 아시는 고수분 계신가요?','talent','원본파일명.txt','변경된파일명.txt',0,'Y','2023-08-07 15:05:32','2023-08-07 15:05:32'),(3,1,'아이폰 팝니다.','사용한지 3년된 아이폰 중고로 팔아요','product','원본파일명.txt','변경된파일명.txt',3,'Y','2023-08-07 15:05:36','2023-08-07 15:05:36'),(4,1,'코딩 고수님 구해요','선풍기를 고칠줄 아시는 고수분 계신가요?','talent','원본파일명.txt','변경된파일명.txt',1,'Y','2023-08-07 15:08:26','2023-08-07 15:08:26'),(5,1,'제가 일주일간 여행을 갑니다.','저희 귀여운 반려동물을 맡아주세요','pet','원본파일명.txt','변경된파일명.txt',1,'Y','2023-08-07 15:08:29','2023-08-07 15:08:29'),(6,1,'카레 레시피 좀 알려주세요','선풍기를 고칠줄 아시는 고수분 계신가요?','talent','원본파일명.txt','변경된파일명.txt',2,'Y','2023-08-07 15:08:34','2023-08-07 15:08:34'),(7,1,'시골에 내려가게 되었는데','저희 귀여운 반려동물을 맡아주세요','pet','원본파일명.txt','변경된파일명.txt',0,'Y','2023-08-07 15:08:37','2023-08-07 15:08:37'),(8,1,'이틀간 이사를 가게 되었습니다.','저희 귀여운 반려동물을 맡아주세요','pet','원본파일명.txt','변경된파일명.txt',1,'Y','2023-08-07 15:08:44','2023-08-07 15:08:44'),(9,1,'마우스가 고장났어요','선풍기를 고칠줄 아시는 고수분 계신가요?','talent','원본파일명.txt','변경된파일명.txt',2,'Y','2023-08-07 15:08:50','2023-08-07 15:08:50'),(10,1,'안녕하세요',NULL,NULL,'bernarbook0.png','20230807_161547958.png',9,'Y','2023-08-07 16:15:47','2023-08-07 16:15:47'),(11,1,'안녕하세요',NULL,NULL,NULL,NULL,6,'Y','2023-08-07 16:30:01','2023-08-07 16:30:01'),(12,1,'asdasd','asdasd',NULL,'bernarbook1.png','20230807_172316209.png',48,'N','2023-08-07 16:31:19','2023-08-07 17:23:16'),(13,1,'안녕하세요','안녕하세요','pet',NULL,NULL,6,'Y','2023-08-07 16:33:04','2023-08-07 16:33:04');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-07 19:29:49
