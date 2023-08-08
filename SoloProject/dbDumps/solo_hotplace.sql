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
-- Table structure for table `hotplace`
--

DROP TABLE IF EXISTS `hotplace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotplace` (
  `CATEGORY` text,
  `NO` int DEFAULT NULL,
  `AREA_CD` text,
  `AREA_NM` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotplace`
--

LOCK TABLES `hotplace` WRITE;
/*!40000 ALTER TABLE `hotplace` DISABLE KEYS */;
INSERT INTO `hotplace` VALUES ('관광특구',1,'POI001','강남 MICE 관광특구'),('관광특구',2,'POI002','동대문 관광특구'),('관광특구',3,'POI003','명동 관광특구'),('관광특구',4,'POI004','이태원 관광특구'),('관광특구',5,'POI005','잠실 관광특구'),('관광특구',6,'POI006','종로·청계 관광특구'),('관광특구',7,'POI007','홍대 관광특구'),('고궁·문화유산',8,'POI008','경복궁'),('고궁·문화유산',9,'POI009','광화문·덕수궁'),('고궁·문화유산',10,'POI010','보신각'),('고궁·문화유산',11,'POI011','서울 암사동 유적'),('고궁·문화유산',12,'POI012','창덕궁·종묘'),('인구밀집지역',13,'POI013','가산디지털단지역'),('인구밀집지역',14,'POI014','강남역'),('인구밀집지역',15,'POI015','건대입구역'),('인구밀집지역',16,'POI016','고덕역'),('인구밀집지역',17,'POI017','고속터미널역'),('인구밀집지역',18,'POI018','교대역'),('인구밀집지역',19,'POI019','구로디지털단지역'),('인구밀집지역',20,'POI020','구로역'),('인구밀집지역',21,'POI021','군자역'),('인구밀집지역',22,'POI022','남구로역'),('인구밀집지역',23,'POI023','대림역'),('인구밀집지역',24,'POI024','동대문역'),('인구밀집지역',25,'POI025','뚝섬역'),('인구밀집지역',26,'POI026','미아사거리역'),('인구밀집지역',27,'POI027','발산역'),('인구밀집지역',28,'POI028','북한산우이역'),('인구밀집지역',29,'POI029','사당역'),('인구밀집지역',30,'POI030','삼각지역'),('인구밀집지역',31,'POI031','서울대입구역'),('인구밀집지역',32,'POI032','서울식물원·마곡나루역'),('인구밀집지역',33,'POI033','서울역'),('인구밀집지역',34,'POI034','선릉역'),('인구밀집지역',35,'POI035','성신여대입구역'),('인구밀집지역',36,'POI036','수유역'),('인구밀집지역',37,'POI037','신논현역·논현역'),('인구밀집지역',38,'POI038','신도림역'),('인구밀집지역',39,'POI039','신림역'),('인구밀집지역',40,'POI040','신촌·이대역'),('인구밀집지역',41,'POI041','양재역'),('인구밀집지역',42,'POI042','역삼역'),('인구밀집지역',43,'POI043','연신내역'),('인구밀집지역',44,'POI044','오목교역·목동운동장'),('인구밀집지역',45,'POI045','왕십리역'),('인구밀집지역',46,'POI046','용산역'),('인구밀집지역',47,'POI047','이태원역'),('인구밀집지역',48,'POI048','장지역'),('인구밀집지역',49,'POI049','장한평역'),('인구밀집지역',50,'POI050','천호역'),('인구밀집지역',51,'POI051','총신대입구(이수)역'),('인구밀집지역',52,'POI052','충정로역'),('인구밀집지역',53,'POI053','합정역'),('인구밀집지역',54,'POI054','혜화역'),('인구밀집지역',55,'POI055','홍대입구역(2호선)'),('인구밀집지역',56,'POI056','회기역'),('발달상권',57,'POI057','4·19 카페거리'),('발달상권',58,'POI058','가락시장'),('발달상권',59,'POI059','가로수길'),('발달상권',60,'POI060','광장(전통)시장'),('발달상권',61,'POI061','김포공항'),('발달상권',62,'POI062','낙산공원·이화마을'),('발달상권',63,'POI063','노량진'),('발달상권',64,'POI064','덕수궁길·정동길'),('발달상권',65,'POI065','방배역 먹자골목'),('발달상권',66,'POI066','북촌한옥마을'),('발달상권',67,'POI067','서촌'),('발달상권',68,'POI068','성수카페거리'),('발달상권',69,'POI069','수유리 먹자골목'),('발달상권',70,'POI070','쌍문동 맛집거리'),('발달상권',71,'POI071','압구정로데오거리'),('발달상권',72,'POI072','여의도'),('발달상권',73,'POI073','연남동'),('발달상권',74,'POI074','영등포 타임스퀘어'),('발달상권',75,'POI075','외대앞'),('발달상권',76,'POI076','용리단길'),('발달상권',77,'POI077','이태원 앤틱가구거리'),('발달상권',78,'POI078','인사동·익선동'),('발달상권',79,'POI079','창동 신경제 중심지'),('발달상권',80,'POI080','청담동 명품거리'),('발달상권',81,'POI081','청량리 제기동 일대 전통시장'),('발달상권',82,'POI082','해방촌·경리단길'),('발달상권',83,'POI083','DDP(동대문디자인플라자)'),('발달상권',84,'POI084','DMC(디지털미디어시티)'),('공원',85,'POI085','강서한강공원'),('공원',86,'POI086','고척돔'),('공원',87,'POI087','광나루한강공원'),('공원',88,'POI088','광화문광장'),('공원',89,'POI089','국립중앙박물관·용산가족공원'),('공원',90,'POI090','난지한강공원'),('공원',91,'POI091','남산공원'),('공원',92,'POI092','노들섬'),('공원',93,'POI093','뚝섬한강공원'),('공원',94,'POI094','망원한강공원'),('공원',95,'POI095','반포한강공원'),('공원',96,'POI096','북서울꿈의숲'),('공원',97,'POI097','불광천'),('공원',98,'POI098','서리풀공원·몽마르뜨공원'),('공원',99,'POI099','서울광장'),('공원',100,'POI100','서울대공원'),('공원',101,'POI101','서울숲공원'),('공원',102,'POI102','아차산'),('공원',103,'POI103','양화한강공원'),('공원',104,'POI104','어린이대공원'),('공원',105,'POI105','여의도한강공원'),('공원',106,'POI106','월드컵공원'),('공원',107,'POI107','응봉산'),('공원',108,'POI108','이촌한강공원'),('공원',109,'POI109','잠실종합운동장'),('공원',110,'POI110','잠실한강공원'),('공원',111,'POI111','잠원한강공원'),('공원',112,'POI112','청계산'),('공원',113,'POI113','청와대');
/*!40000 ALTER TABLE `hotplace` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-07 19:29:50
