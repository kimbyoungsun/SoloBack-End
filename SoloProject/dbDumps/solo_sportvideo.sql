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
-- Table structure for table `sportvideo`
--

DROP TABLE IF EXISTS `sportvideo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sportvideo` (
  `no` int DEFAULT NULL,
  `category1` text,
  `category2` text,
  `category3` text,
  `title` text,
  `youtube` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sportvideo`
--

LOCK TABLES `sportvideo` WRITE;
/*!40000 ALTER TABLE `sportvideo` DISABLE KEYS */;
INSERT INTO `sportvideo` VALUES (1,'국민체력100','백세편살 운동처방','집콕운동','집중력 버프가 필요할 때? (ep1. 뇌를 자극시키는 집중력 향상 운동) 집콕운동','6AiSi3E3ifs'),(2,'국민체력100','백세편살 운동처방','집콕운동','운동 효과도 더블로가 (ep2. 수다잼 운동잼 짝 스트레칭)','2gHcoelhHw0'),(3,'국민체력100','백세편살 운동처방','집콕운동','깨어나세요 용사여..! (ep3. 체력 +999 강화 운동)','CRMpWponGIc'),(4,'국민체력100','백세편살 운동처방','집콕운동','꽃보다 근력! 꽃중년을 위한 의자운동 (ep4. 부상 없는 어르신 운동)','6ulvd_mw_uo'),(5,'국민체력100','백세편살 운동처방','집콕운동','[ENG] 뻣뻣한 몸이 10분만에 말랑말랑! (ep5. 10가지 스트레칭 루틴) 10min Home Workout｜Stretching Routine','6ies7bJfYRs'),(6,'국민체력100','백세편살 운동처방','집콕운동','키는 쑥쑥! 체형은 바르게 (ep.6 바른 성장을 위한 키즈 요가)','YevYZNaPgEw'),(7,'국민체력100','백세편살 운동처방','집콕운동','키는 쑥쑥! 체형은 바르게 (ep.6 바른 성장을 위한 키즈 요가)','4ZLaumFIAfk'),(8,'국민체력100','백세편살 운동처방','집콕운동','일상을 멈출 수 없다면 통증을 멈추세요! (ep.8 시니어를 위한 하체와 코어 요가)','clifZdPnX9E'),(9,'국민체력100','백세편살 운동처방','집콕운동','추석이 끝나도 붓기 없는 몸을 선물하는 스트레칭 하루 7분 (ep.9 명절 증후군 없애는 스트레칭)','OtFsfY1RzO4'),(10,'국민체력100','백세편살 운동처방','집콕운동','추석 먹부림으로 급찐살 빼는 운동 송편한접시쯤 그냥 빠질 듯 6분 운동 (ep.10 칼로리 소모를 높이는 전신운동)','AygL5ZUWD-k'),(11,'국민체력100','백세편살 운동처방','집콕운동','딱 5분! 중상급자 상체 챌린지 홈트 프로운동러 처방사님도 땀이 주루룩 (ep.11 중상급자를 위한 상체 챌린지)','owKBuruZh6o'),(12,'국민체력100','백세편살 운동처방','집콕운동','딱 5분! 중상급자 하체 챌린지 홈트 과연 당신은 할 수 있을지?!! (ep.12 중상급자를 위한 하체 챌린지)','Gw73tXd_Wow'),(13,'국민체력100','백세편살 운동처방','집콕운동','북극한파 빙판길에서 살아남는 10분 운동법 (ep.13 낙상 예방 운동) 10min WORKOUT','ZqVxVExFDuA'),(14,'국민체력100','백세편살 운동처방','집콕운동','뼈가 튼튼해지는 10분 운동법 (ep.14 골밀도 강화 운동)','uUT9odWaPPw'),(15,'국민체력100','백세편살 운동처방','집콕운동','집에서 사뿐사뿐 유산소 운동 가능? 웅가능!!! 체력향상  다이어트  땀뻘뻘 홈트 (ep.15 NO층간소음 #1)','DuSIEmcodeU'),(16,'국민체력100','백세편살 운동처방','집콕운동','누운 김에 11자 복근 만들어드립니다 체력향상  코어  복근 (ep.16 NO층간소음 #2)','OJk1dk-Px1c'),(17,'국민체력100','백세편살 운동처방','집콕운동','리얼 집콕운동 (feat.해병대 출신) 양치  재택근무  설거지  빨래할 때 추천 운동(ep.17 NO층간소음 #4)_다이어트  칼로리소모  땀나는 운동  지방감소','5OuS13W2DYw'),(18,'국민체력100','백세편살 운동처방','집콕운동','[ASMR운동] #1. 조용하게 칼로리 태우기 아기 몰래 운동하는 법 ','9Sk2Xfgcb9c'),(19,'국민체력100','백세편살 운동처방','집콕운동','[소도구 운동] #1. 물병편 철이 없었죠. 물병이 없어서 운동을 못했다는 것 자체가 유산소  전신  근력  상체  하체  복근','vBT9uYhj9WI'),(20,'국민체력100','백세편살 운동처방','집콕운동','[소도구 운동] #2. 계단편 운동할 곳 없다는 핑계는 NO! 계단이 있잖아요 유산소  전신  근력','TEFpZBNPXBU'),(21,'국민체력100','백세편살 운동처방','다이어트 댄스','사랑의 재개발 &찐이야 트로트 다이어트 댄스 칼로리 소모 끝판왕 신이난다 신이나','SppuZgNfIFo'),(22,'국민체력100','백세편살 운동처방','다이어트 댄스','순정 &천생연분 90년대 추억의 노래와 함께 그 시절의 몸으로 BACK 체력도 BACK ','E_dWHCrHbfM'),(23,'국민체력100','백세편살 운동처방','다이어트 댄스','내 나이가 어때서 &진또배기 흥이난다 흥이나 집에서 명절느낌내기','HIaBlv0MGek'),(24,'국민체력100','백세편살 운동처방','다이어트 댄스','Dynamite &주라주라 스트레스 뿌셔뿌셔 고민걱정 날리GO 지방 날리GO','osn4_oxOBZI'),(25,'국민체력100','백세편살 운동처방','다이어트 댄스','Savage Love &Bad 다이어트 댄스(탄력밴드ver.) 지방 다 태워버리는 매운맛 운동','uj3K878KnFo'),(26,'국민체력100','백세편살 운동처방','다이어트 댄스','Uptown Funk &HandClap 다이어트 댄스(서바이벌ver.) 누가 서바이벌만 합니까. 같이 살 뺍니다. 실시!','3YolNeNanLU'),(27,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 팔굽혀펴기 근력·근지구력 향상 프로그램','8iUa8b_j9QI'),(28,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 누워서 뒤로 팔굽혀펴기 근력·근지구력 향상 프로그램','_QdRvkPQ-EE'),(29,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 앉아서 엉덩이 들고 이동하기 근력·근지구력 향상 프로그램','nIYbPqFNO4U'),(30,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 엎드려 팔로 걷기 근력·근지구력 향상 프로그램','J8AH3hWBVME'),(31,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 아령 앞으로 들어올리기 근력·근지구력 향상 프로그램','eKgfqbub0uE'),(32,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 아령 뒤로 들어올리기 근력·근지구력 향상 프로그램','qj3zLd6yHic'),(33,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 의자 잡고 팔 뒤로 굽히기 근력·근지구력 향상 프로그램','05Lk6_BvAmg'),(34,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 밴드 앞 옆으로 들어올리기 근력·근지구력 향상 프로그램','a8g7ZyPdGfc'),(35,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 밴드 어깨 뒤로 들어올리기 근력·근지구력 향상 프로그램','WRG6W36C7VU'),(36,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 엎드려 상체 들어올리기 근력·근지구력 향상 프로그램','NcMo93Lp2bs'),(37,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 슈퍼맨자세 근력·근지구력 향상 프로그램','4-OXSsCc7tE'),(38,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 엎드려 팔 대고 버티기 근력·근지구력 향상 프로그램','hfO4ZCt_DM4'),(39,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 옆으로 팔 대고 버티기2 근력·근지구력 향상 프로그램','lVxep68_b-Y'),(40,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 앉아서 다리 펴고 들어올리기 근력·근지구력 향상 프로그램','8ko-zEe6QbU'),(41,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 누워서 다리 펴고 원 그리기 근력·근지구력 향상 프로그램','zI8DaA4G5lc'),(42,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 팔꿈치 무릎 교차 닿기 근력·근지구력 향상 프로그램','XBDKsUgPmiI'),(43,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 팔 구부려 등 모으기 근력·근지구력 향상 프로그램','yKDmNLrGYQU'),(44,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 윗몸 말아올리기 근력·근지구력 향상 프로그램','Kyt-UTRiVnM'),(45,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 머리 뒤로 깍지 끼고 상체 숙이기 근력·근지구력 향상 프로그램','Ei7tJWdISDA'),(46,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 엎드려 무릎 당기기 근력·근지구력 향상 프로그램','r-MKM8QOH_M'),(47,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 다리 올려 의자 넘기 근력·근지구력 향상 프로그램','HA_gTzMAd9w'),(48,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 앉아서 밴드 당기기 근력·근지구력 향상 프로그램','xiIJzYConj0'),(49,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 밴드로 다리 올려 버티기 근력·근지구력 향상 프로그램','xfCUGYGnOas'),(50,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 밴드 다리 올려 버티기2 근력·근지구력 향상 프로그램','ATBODED9lpw'),(51,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 밴드 앞으로 당기기 근력·근지구력 향상 프로그램','jSyfdSN7348'),(52,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 무릎 구부려 상체 비틀기 근력·근지구력 향상 프로그램','9RlA3_KeEIg'),(53,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 공 잡고 상체 들어올리기 근력·근지구력 향상 프로그램','HxYEP4OxA6A'),(54,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 팔로 써클링 누르기 근력·근지구력 향상 프로그램','08ZrHhPlqag'),(55,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] V자 버티기 근력·근지구력 향상 프로그램','pgx7kHmOd08'),(56,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 써클휠로 다리 끌어당기기 근력·근지구력 향상 프로그램','s9KC6DIT8DY'),(57,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 옆으로 누워 다리 들어올리기 근력·근지구력 향상 프로그램','39UIxnja2Mc'),(58,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 엎드려 다리 들어올리기 근력·근지구력 향상 프로그램','LFdPiGNtGvs'),(59,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 무릎 굽혀 엉덩이 들어올리기 근력·근지구력 향상 프로그램','LNH-Gh5GB1k'),(60,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 옆으로 누워 무릎 벌리기 근력·근지구력 향상 프로그램','EH2tnm66bpY'),(61,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 앉았다 일어서기 근력·근지구력 향상 프로그램','CZl5Th--uhQ'),(62,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 옆으로 다리 뻗기 근력·근지구력 향상 프로그램','W87D90EHUjI'),(63,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 다리 앞뒤로 벌려 굽혔다 펴기 근력·근지구력 향상 프로그램','yn_JjLJaR4U'),(64,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 교차 다리 굽히기 근력·근지구력 향상 프로그램','qg6l38ZHUpA'),(65,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 뒷발 의자 올려 굽히기 근력·근지구력 향상 프로그램','pC-Klz76ZA8'),(66,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 앞으로 나가며 앉았다 일어서기 근력·근지구력 향상 프로그램','trVV1QXctrk'),(67,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 다리 옆으로 들어올리기 근력·근지구력 향상 프로그램','ZPeV_MD9ZlY'),(68,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 앞발 들어올리기 근력·근지구력 향상 프로그램','Wpy4zo0O-eo'),(69,'운동처방전','유소년 운동처방','근력 및 근지구력','앞발 의자 올려 굽히기 근력·근지구력 향상 프로그램','3ofToKYGZX4'),(70,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 발 뒤꿈치 들어올리기 근력·근지구력 향상 프로그램','KLp2eCPRc6Q'),(71,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 밴드 한 발 뒤로 들기 근력·근지구력 향상 프로그램','96vKSCBl_WM'),(72,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 의자에 앉아 다리 펴서 들어올리기 근력·근지구력 향상 프로그램','TeOzUtF_60o'),(73,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 밴드 잡고 무릎 펴기 근력·근지구력 향상 프로그램','V3dy9zf-zeA'),(74,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 밴드 잡고 다리 옆으로 벌리기 근력·근지구력 향상 프로그램','WXatlRyvZNM'),(75,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 무릎 올려 공 닿기 근력·근지구력 향상 프로그램','aJ2URWnaYzU'),(76,'운동처방전','유소년 운동처방','근력 및 근지구력','[유소년] 허리 비틀어 앉았다 일어서기 근력·근지구력 향상 프로그램','LXvXhGDda-c'),(77,'운동처방전','유소년 운동처방','심폐지구력','[유소년] 제자리 뛰기 심폐지구력 향상 프로그램','uy1T5QNARJ4'),(78,'운동처방전','유소년 운동처방','심폐지구력','[유소년] 엎드려 무릎 연속 차기 심폐지구력 향상 프로그램','uOEDN5JKB_Y'),(79,'운동처방전','유소년 운동처방','심폐지구력','[유소년] 1단 줄넘기 심폐지구력 향상 프로그램','7Rqc2MhfqKU'),(80,'운동처방전','유소년 운동처방','심폐지구력','[유소년] 왕복 달리기 심폐지구력 향상 프로그램','npkhsPgJKxc'),(81,'운동처방전','유소년 운동처방','심폐지구력','[유소년] 계단 오르기 심폐지구력 향상 프로그램','fo1FlS41oig'),(82,'운동처방전','유소년 운동처방','심폐지구력','[유소년] 박스 오르내리기 심폐지구력 향상 프로그램','B_ZmgQ0r4G0'),(83,'운동처방전','유소년 운동처방','심폐지구력','[유소년] 다리 모았다 벌려 뛰기 심폐지구력 향상 프로그램','S0R0DfN9uF8'),(84,'운동처방전','유소년 운동처방','심폐지구력','[유소년] 박스 옆으로 번갈아 뛰기 심폐지구력 향상 프로그램','goxQEwmXISE'),(85,'운동처방전','유소년 운동처방','심폐지구력','[유소년] 한 발 무릎 위 올려차기 l 심폐지구력 향상 프로그램','NBpEWlVUiak'),(86,'운동처방전','유소년 운동처방','유연성','[유소년] 발바닥 마주대고 끌어당기기 유연성 향상 프로그램','AG_1Tvtobko'),(87,'운동처방전','유소년 운동처방','유연성','[유소년] 무릎 굽혀 가슴 닿기 유연성 향상 프로그램','sWMuG_CdohI'),(88,'운동처방전','유소년 운동처방','유연성','[유소년] 다리 굽혀(W자) 상체 뒤로 눕기 유연성 향상 프로그램','8iOLRNEXF0Y'),(89,'운동처방전','유소년 운동처방','유연성','[유소년] 발목 얹고 다리 잡아당기기 유연성 향상 프로그램','7lHtKJw7qTQ'),(90,'운동처방전','유소년 운동처방','유연성','[유소년] 다리 벌려 앞으로 상체 숙이기 유연성 향상 프로그램','oPEXWcRANJA'),(91,'운동처방전','유소년 운동처방','유연성','[유소년] 한 발 앞굽이 팔 위로 뻗어 가슴 내밀기 유연성 향상 프로그램','MyWN4BooK7A'),(92,'운동처방전','유소년 운동처방','유연성','[유소년] 다리 벌려 옆으로 상체 숙이기 유연성 향상 프로그램','4Sh-l6LW2io'),(93,'운동처방전','유소년 운동처방','유연성','[유소년] 다리 모아 상체 숙이기 유연성 향상 프로그램','UbdHMbDdlfI'),(94,'운동처방전','유소년 운동처방','유연성','[유소년] 다리 꼬아 상체 앞으로 숙이기 유연성 향상 프로그램','xnDoF8SHosI'),(95,'운동처방전','유소년 운동처방','유연성','[유소년] 앉아서 한발 앞으로 굽히기 유연성 향상 프로그램','z1fguNdHKLM'),(96,'운동처방전','유소년 운동처방','유연성','[유소년] 앉아서 옆구리 늘려주기 유연성 향상 프로그램','M95EiuTLuC4'),(97,'운동처방전','유소년 운동처방','유연성','[유소년] 앉아 윗몸 앞으로 굽히기 유연성 향상 프로그램','DSzbj4FpZ_w'),(98,'운동처방전','유소년 운동처방','유연성','[유소년] 무릎 대고 상체 뒤로 젖히기 유연성 향상 프로그램','fgTEpCT_qT0'),(99,'운동처방전','유소년 운동처방','유연성','[유소년] 엎드려 상체 들어올리기 유연성 향상 프로그램','UubzHdVpQjw'),(100,'운동처방전','유소년 운동처방','유연성','[유소년] 엎드려 교차 발 잡아당기기 유연성 향상 프로그램','k2umioC4dn0'),(101,'운동처방전','유소년 운동처방','유연성','[유소년] 한발 뒤로 빼고 앞으로 굽히기 유연성 향상 프로그램','ro5XgKye-4E'),(102,'운동처방전','유소년 운동처방','유연성','[유소년] 무릎 대고 옆으로 기울이기 유연성 향상 프로그램','wp0vr0I8UEA'),(103,'운동처방전','유소년 운동처방','유연성','[유소년] 누워서 굽힌 다리 펴기 유연성 향상 프로그램','NCc6T_T7JJ8'),(104,'운동처방전','유소년 운동처방','유연성','[유소년] 엎드려 어깨 늘리기 유연성 향상 프로그램','BsW63YITwXg'),(105,'운동처방전','유소년 운동처방','유연성','[유소년] 활 자세 유연성 향상 프로그램','roGAu693-os'),(106,'운동처방전','유소년 운동처방','유연성','[유소년] 다리 모아 뒤로 눕기 유연성 향상 프로그램','0hJraABwrQ4'),(107,'운동처방전','유소년 운동처방','순발력','[유소년] 팔 빨리 흔들기 순발력 향상 프로그램','ZUKM0wbqF4k'),(108,'운동처방전','유소년 운동처방','순발력','[유소년] 잔발치기 순발력 향상 프로그램','C75IYA85mnk'),(109,'운동처방전','유소년 운동처방','순발력','[유소년] 벽 잡고 빨리 뛰기 순발력 향상 프로그램','aNpV1R-dcRU'),(110,'운동처방전','유소년 운동처방','순발력','[유소년] 50M 달리기 순발력 향상 프로그램','tVuErfFGLaE'),(111,'운동처방전','유소년 운동처방','순발력','[유소년] 점프해서 발바닥 치기 순발력 향상 프로그램','8KF6J_MMj7w'),(112,'운동처방전','유소년 운동처방','순발력','[유소년] 점프해서 손 발끝 닿기 순발력 향상 프로그램','rkfDOMaPDfw'),(113,'운동처방전','유소년 운동처방','순발력','[유소년] 제자리 멀리 뛰기 순발력 향상 프로그램','bbLthsYBQDI'),(114,'운동처방전','유소년 운동처방','순발력','[유소년] 대(大)자 점프 뛰기 순발력 향상 프로그램','LX1hy8AJYCE'),(115,'운동처방전','유소년 운동처방','순발력','[유소년] 콘 뛰어넘기 순발력 향상 프로그램','sx_cwgl6dGo'),(116,'운동처방전','유소년 운동처방','순발력','[유소년] 연속 무릎 올리기 순발력 향상 프로그램','ca_bJSTNiNE'),(117,'운동처방전','유소년 운동처방','순발력','[유소년] 2단 줄넘기 순발력 향상 프로그램','MgxsqDqM9AQ'),(118,'운동처방전','유소년 운동처방','민첩성','[유소년] 4방향 콘 찍고 달리기 민첩성 향상 프로그램','7BwpXiGOMjQ'),(119,'운동처방전','유소년 운동처방','민첩성','[유소년] 점프하며 앞으로 나가기 민첩성 향상 프로그램','_ZoCIx54eeA'),(120,'운동처방전','유소년 운동처방','민첩성','[유소년] S자 달리기 민첩성 향상 프로그램','Fwp_dC6fY7U'),(121,'운동처방전','유소년 운동처방','민첩성','[유소년] 십(十)자 달리기 민첩성 향상 프로그램','k7nYGwru9qo'),(122,'운동처방전','유소년 운동처방','민첩성','[유소년] 반복 옆 뛰기 민첩성 향상 프로그램','4gw_K966RAM'),(123,'운동처방전','유소년 운동처방','민첩성','[유소년] 의자 잡고 반복 옆 뛰기 민첩성 향상 프로그램','hOgaVdOSwdw'),(124,'운동처방전','유소년 운동처방','협응력','[유소년] 양 손 번갈아 공 튕기기 협응력 향상 프로그램','vffvCksMUfg'),(125,'운동처방전','유소년 운동처방','협응력','[유소년] 공 위로 던지고 제자리 돌아 받기 협응력 향상 프로그램','m-ISbQftC2E'),(126,'운동처방전','유소년 운동처방','협응력','[유소년] 십(十)자 드리블 협응력 향상 프로그램','byRsrO8qhpg'),(127,'운동처방전','유소년 운동처방','협응력','[유소년] 무릎-허리 높이로 공 튕기기 협응력 향상 프로그램','z4ROS7dj1fA'),(128,'운동처방전','유소년 운동처방','협응력','[유소년] 라켓으로 공치며 앞으로 가기 협응력 향상 프로그램','S8MFxWv9wg4'),(129,'운동처방전','유소년 운동처방','협응력','[유소년] 훌라후프 하며 앞으로 가기 협응력 향상 프로그램','LVgDNxRug0E'),(130,'운동처방전','유소년 운동처방','협응력','[유소년] 공 양 손으로 주고 받기 협응력 향상 프로그램','wpRYvVFM-HA'),(131,'운동처방전','유소년 운동처방','협응력','[유소년] 벽 패스 협응력 향상 프로그램','beu4oIY1vjE'),(132,'운동처방전','유소년 운동처방','협응력','[유소년] 훌라후프로 공 끌고 가기 협응력 향상 프로그램','83Y-Fp_lbf4'),(133,'운동처방전','유소년 운동처방','협응력','[유소년] 공 던져 색깔 맞추기 협응력 향상 프로그램','54fLPATKj50'),(134,'운동처방전','유소년 운동처방','협응력','[유소년] 계이름 치기 협응력 향상 프로그램','RBkj5eAk8N0'),(135,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[어깨 1단계] 테이블에 팔 앞으로 뻗기','oPwT6mBN4sE'),(136,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[어깨 1단계] 테이블에 엎드려 팔 뒤로 올리기','d8oicWOpW8s'),(137,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[어깨 1단계] 테이블에 엎드려 팔 45˚ 벌려 들기','enWc5OFuP0s'),(138,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[어깨1단계]누워서막대기들어올리기','1X3g_xXFxUE'),(139,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[어깨 1단계] 등 뒤로 막대기 옆으로 밀기','t9FckiwWxtM'),(140,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[어깨 1단계] 몸 앞에서 막대기 옆으로 밀기','WHAr1-A_1fs'),(141,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[어깨 1단계] 수건을 이용한 팔 뒤로 올리기','pJGuqnje5Yo'),(142,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[어깨 1단계] 벽을 이용한 팔 옆으로 올리기','YGP1Qs9bhw4'),(143,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[어깨 1단계] 벽에서 팔굽혀펴기 후 벽 밀기','ESIj2DwPqeo'),(144,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[어깨 1단계] 벽에서 짐볼 대고 원 그리기','XAr0m5RUdfI'),(145,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[어깨 2단계] 네발기기 자세에서 짐볼로 어깨늘리기','w57JM9yd514'),(146,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[어깨 2단계] 짐볼로 양팔 뻗어 어깨 스트레칭','qnI9g89iBAE'),(147,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[어깨 2단계] 짐볼로 한 팔 뻗어 어깨 스트레칭','V0m3cOW0qm8'),(148,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[어깨 2단계] 양발 앞뒤로 뻗어 짐볼 굴리기','HGK3fgCrgkA'),(149,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[어깨 2단계] 밴드 잡고 팔 옆으로 뻗기','B0YX1qIXMCo'),(150,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[어깨 2단계] 밴드 잡고 머리 위로 팔돌리기','OicYQ2iyaRM'),(151,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[어깨 2단계] 밴드 잡고 만세하여 삼각형 만들기','CcAfS2kTJnw'),(152,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[어깨 2단계] 밴드 당겨 올리기','WLIPn8k1NI4'),(153,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[어깨 2단계] 팔다리로 밴드 늘려 옆으로 걷기','03DdfZ_V_Hk'),(154,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[어깨 2단계] 밴드잡고 팔 뒤로 뻗기','7U0ryionr3A'),(155,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[어깨 2단계] 엎드려 팔꿈치 들어올리기','WuHmIr1z7so'),(156,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[어깨 2단계] 엎드려 팔꿈치 들어올리고 손 띄우기','tbLxHyistws'),(157,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[어깨 2단계] 엎드려 양팔 뻗어 등 조이고 뒷짐지기','UQ7z9TdvIfk'),(158,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[어깨 2단계] 손머리 뒤로하고 뒷짐지기','Xx9BPWlejoI'),(159,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[어깨 2단계] 팔 벌리고 뒷짐진 후 만세하기','-EIBoVl1cyg'),(160,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[어깨 2단계] 접시돌리기','gXIKJtdMvdE'),(161,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[어깨 2단계] 케틀벨 들고 원 그리기','2m_hkC-L4w4'),(162,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[어깨 2단계] 케틀벨 들어올리기','p9-UD4jSi4s'),(163,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[어깨 2단계] 옆으로 앉아 엉덩이 들어 원그리기','-7brIvxp930'),(164,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[어깨 2단계] 케틀벨 들어올리고 옆으로 팔 뻗기','Jawzqd6W3e4'),(165,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[어깨 2단계] 상체숙여 팔 구부리고 어깨 돌리기','DYMtM0D6zyM'),(166,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[어깨 2단계] 벽 모퉁이 가슴 스트레칭','0ScAV5zVnE0'),(167,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[어깨 2단계] 팔 앞으로/옆으로 들기','10AmMSkGRxg'),(168,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[어깨 2단계] 팔 구부려 어깨 돌리기','7YaYV2FRi-k'),(169,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[어깨 2단계] 밴드잡고 대각선 옆으로 양팔 들기','8E1tkdp9hwY'),(170,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[허리 1단계] 네발기기 자세로 허리 들어주기','h_6ED2iaNaY'),(171,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[허리 1단계] 한다리 뒤로 뻗어 발잡기','NJIyVeoFUkI'),(172,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[허리 1단계] 4자 다리 끌어안기','6YUXa_pHhsM'),(173,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[허리 1단계] 엎드려 팔뻗어 상체 들어올리기','g8F4108b36g'),(174,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[허리 1단계] 팔다리 반대로 뻗어 스트레칭','mopXauVQfio'),(175,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[허리 1단계] 누워서 다리 들고 좌우로 움직이기','P-X29BD2K-c'),(176,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[허리 1단계] 네발기기 자세로 팔 다리 교차 들기','ZqY-BWOfavs'),(177,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[허리 1단계] 짐볼 브릿지','k7qfWdREYyA'),(178,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[허리 1단계] 짐볼 리버스 브릿지','4cFynRuIWhY'),(179,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[허리 1단계] 짐볼 한다리 브릿지','g_a_Br5cVmw'),(180,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[허리 1단계] 짐볼 누르기','DfrNSg99oF0'),(181,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[허리 1단계] 한다리 뻗어 짐볼 누르기','E05IcTyOhpo'),(182,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[허리 1단계] 무릎 터치 플랭크','TuaWGla24cA'),(183,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[허리 1단계] 스쿼트 자세에서 미니밴드 엉덩이 운동','ntnWD4Ml0gc'),(184,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[허리 1단계] 막대기를 이용하여 몸통 회전하기','aE0nSMm_1Sc'),(185,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[허리 2단계] 옆으로 앉아 짐볼 밀기','4JeRn6iRv2M'),(186,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[허리 2단계] 짐볼 위에 눕기','yrvrk2DCvRk'),(187,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[허리 2단계] 짐볼 잡고 다리 뒤로 뻗기','yUIyE5kK3wA'),(188,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[허리 2단계] 플랭크(엎드려 버티기)','i_TtjVYn9fQ'),(189,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[허리 2단계] 짐볼 플랭크','cAiGavivKEY'),(190,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[허리 2단계] 짐볼 한다리 플랭크','9wPBwGZ6_6o'),(191,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[허리 2단계] 다리 옆으로 뻗고 끌어오기','MBRgj2_g9yc'),(192,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[허리 2단계] 앉아서 미니밴드 엉덩이 운동','qmsuBvU840M'),(193,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[허리 2단계] 미니밴드 옆으로 걷기','2vevXGJOKOg'),(194,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[허리 2단계] 미니밴드 옆으로 다리 뻗기','4n1fPw1mcAo'),(195,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[허리 2단계] 브릿지 다리끌기','9fn1nCUAo1I'),(196,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[허리 2단계] 플랭크 무릎 끌어올리기','wEfum_4pk7A'),(197,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[허리 2단계] 밴드 양팔(앞으로) 뻗기','zCfmCErNAdA'),(198,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','허리 2단계] 밴드 양팔(앞으로) 뻗어 다리 바꾸기','F6bwrdnVgRI'),(199,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','허리 2단계] 한 다리로 서서 밴드 양팔(앞으로) 뻗기','aTBKTc5zDxg'),(200,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[허리 2단계] 막대기를 이용하여 앉아 몸통 회전하기','RIbud7uCTDw'),(201,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[허리 2단계] 막대기를 이용하여 전신 회전하기','KRuiV-F4-9o'),(202,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[허리 2단계] 막대기를 이용하여(스쿼트자세로) 한팔 위로 뻗기','nYryI39814A'),(203,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[허리 2단계] 밴드잡고 팔다리 교차하기','pnJ-5znGQ84'),(204,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[허리 2단계] 케틀벨들고 밴드잡고 팔다리 교차하기','W3N6jkd-N9k'),(205,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[허리 2단계] 엎드려 팔 다리 들기','rG_BF9l8ZtM'),(206,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[허리 2단계] 상체변화 플랭크','1kmZAVibXg8'),(207,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[허리 2단계] 양발 앞뒤로 뻗어 한 팔 위로 상체 비틀기','0aV5sJbkSCs'),(208,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[허리 2단계] 뒤로 땅 짚고 엉덩이 들어올리기','NytHCtpDpUs'),(209,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 1단계] 다리 들어올리기','all5pu1gnGE'),(210,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 1단계] 옆으로 누워 다리 들어올리기','qLaJIBGDV18'),(211,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 1단계] 옆으로 누워 안쪽다리 올리기','l-AqRVz3BJw'),(212,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 1단계] 한 다리 들고 원 그리기','VPf5vbkt3Hw'),(213,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 1단계] 브릿지 후 뒤꿈치 들기','S2czTQVHfUc'),(214,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 1단계] 네발기기 자세로 뒷발차기','_070D1dByHs'),(215,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 1단계] 런지','SEvt-t1Iu_s'),(216,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 1단계] 스쿼트 유지하기','XCqge_uWQPo'),(217,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 1단계] 양발 앞뒤로 뻗어 니킥','uVmtqY19SSI'),(218,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 1단계] 니킥하고 옆으로 다리들기','qJO32patgXE'),(219,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 1단계] 리버스 런지 후 다리올리기','BQqtuZn1T2c'),(220,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 1단계] 사이드 런지 후 제기차기','3X4CiOX0hoI'),(221,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 1단계] 무릎대고 앉았다 일어나기','2rgTtCyoTWM'),(222,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 1단계] 더킹 런지(Ducking lunge)','a1lzn6_V5a0'),(223,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 1단계] 스쿼트 후 뒤꿈치 들기','70k_8vO2s7I'),(224,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 2단계] 다리 뒤로 뻗은 후 니킥','pRz8d3qepJQ'),(225,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 2단계] 스쿼트 후 사이드 크런치','EvCBmy0cBfQ'),(226,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 2단계] 스쿼트 후 옆으로 다리들기','50JBTJXp5_0'),(227,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 2단계] 한발 뒤로 차고 점프','fcjBXyVETxY'),(228,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 2단계] 사이드 런지 후 점프','gw88_oXy6fk'),(229,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 2단계] 몸통 비틀어 다리 들어올리기','pziEkUaxRWQ'),(230,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 2단계] 발 바꿔 계단뛰기','uHIIc35SAuI'),(231,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 2단계] 점프하며 팔다리 앞으로 교차하기','NQkyVEeqHLw'),(232,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 2단계] 엉덩이 들어올려 다리 벌리기','5lnyl11vq2I'),(233,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 2단계] 옆으로 누워 미니볼 들어올리기','sDngb073b8k'),(234,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 2단계] 다리 앞으로 당겼다가 뒤로 차기','2E6CT7GYstg'),(235,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 2단계] 스쿼트 후 뒤꿈치 들고 다리 옆으로 차기','74t2DyCUkt0'),(236,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 2단계] 대각선 뒤로 앉았다 일어나며 다리 옆으로 들기','Puuce3TLAgk'),(237,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 2단계] 한 다리 힙 쓰러스트(등 대고 누워 다리 구부려 올렸다 내리기)','pvUZS24KHdg'),(238,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 2단계] 내회전 스쿼트(앉아서 한 쪽씩 교차로 무릎 안쪽으로 내렸다 올라오기)','rx4hh6UTyVM'),(239,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 2단계] 리버스 플랭크 터치(앉아서 엉덩이 들고 손 발 닿기)','KbuZww79fyU'),(240,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 2단계] 로우 런지 킥백(한쪽 다리 뒤로 뻗어 쪼그려 앚았다가 일어나면서 뒤로 차기)','OOXZvBz9Zbk'),(241,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 2단계] 싱글레그 햄스트링 컬(누워서 한 발 짐볼에 올려 엉덩이 들고 무릎 구부리기)','L91j0OBcHZ8'),(242,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 2단계] 플랭크 로테이션(회전 플랭크/팔굽혀펴기 자세에서 팔다리 교차하여 들고 골반 회전시키기)','QbtwunyTygg'),(243,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 2단계] 공중 런지(에어본 런지/한 발로 앉았다 일어나며 무릎 당기기)','rJaEWl8fwAk'),(244,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 2단계] 앞뒤로 다리 벌려 앉아 몸통 회전하기','hN21Ucw7zqg'),(245,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 2단계] 옆으로 누워 무릎 벌리기','djdQ5zFA7MY'),(246,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 2단계] 의자에 앉아 두 다리 들어올리기','O6uDBAFp6bo'),(247,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 2단계] 의자에 앉아 다리 뻗기','J_4tk10nZY0'),(248,'운동처방전','근·골격계 건강을 위한 운동','근·골격계','[무릎 2단계] 의자에 앉았다 일어서기','mz9So3gEgH4');
/*!40000 ALTER TABLE `sportvideo` ENABLE KEYS */;
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