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
-- Table structure for table `performawards`
--

DROP TABLE IF EXISTS `performawards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `performawards` (
  `mt20id` varchar(100) DEFAULT NULL,
  `prfnm` varchar(100) DEFAULT NULL,
  `prfpdfrom` varchar(100) DEFAULT NULL,
  `prfpdto` varchar(100) DEFAULT NULL,
  `fcltynm` varchar(100) DEFAULT NULL,
  `poster` varchar(100) DEFAULT NULL,
  `genrenm` varchar(100) DEFAULT NULL,
  `prfstate` varchar(100) DEFAULT NULL,
  `awards` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performawards`
--

LOCK TABLES `performawards` WRITE;
/*!40000 ALTER TABLE `performawards` DISABLE KEYS */;
INSERT INTO `performawards` VALUES ('PF219852','제31회 젊은연극제, 오장군의 발톱','2023.06.23','2023.06.24','서강대 메리홀','http://www.kopis.or.kr/upload/pfmPoster/PF_PF219852_230608_124357.jpg','연극','공연완료','제24회 1988 백상예술대상 대상'),('PF219538','예술의전당 영상화사업(SAC ON SCREEN), 돌아온다','2023.06.08','2023.06.08','군위 삼국유사교육문화회관','http://www.kopis.or.kr/upload/pfmPoster/PF_PF219538_230602_183247.jpg','연극','공연완료','제36회 2015 서울연극제 연출상<br>제36회 2015 서울연극제 우수상'),('PF219386','결투','2023.06.30','2023.07.09','대학로예술극장','http://www.kopis.or.kr/upload/pfmPoster/PF_PF219386_230531_153544.jpg','연극','공연예정','제59회 2023 백상예술대상 젊은연극상'),('PF219344','발이 되기 [부산]','2023.06.03','2023.06.03','부산민주공원 공연장','http://www.kopis.or.kr/upload/pfmPoster/PF_PF219344_230531_104423.jpg','연극','공연완료','2022 공연과 이론 <br>제11회 2021 서울연극제 문화체육관광부장관상<br>제11회 2021 서울연극제 연출상'),('PF219167','당신만이 [장성]','2023.06.07','2023.06.07','장성문화예술회관','http://www.kopis.or.kr/upload/pfmPoster/PF_PF219167_230526_140231.jpg','뮤지컬','공연완료','2017 한국한류대상 대중문화대상<br>제4회 2012 대한민국 클린콘텐츠 대상'),('PF218968','데스노트 [대구]','2023.06.30','2023.07.16','계명아트센터','http://www.kopis.or.kr/upload/pfmPoster/PF_PF218968_230523_125611.gif','뮤지컬','공연예정','제7회 2022 한국뮤지컬어워즈 작품상<br>제7회 2022 한국뮤지컬어워즈 무대예술상<br>제7회 2022 한국뮤지컬어워즈 조연상(남자)<br>제7회 2022 한국뮤지컬어워즈 연출상'),('PF218819','바다로 가는 기사들','2023.06.07','2023.06.18','후암스테이지','http://www.kopis.or.kr/upload/pfmPoster/PF_PF218819_230523_110146.gif','연극','공연완료','3회 2014 대한민국 셰익스피어 어워즈 무대미술상'),('PF218720','패랭이꽃의 저항','2023.06.02','2023.06.02','양산문화예술회관','http://www.kopis.or.kr/upload/pfmPoster/PF_PF218720_230519_010421.jpg','연극','공연완료','제41회 충남연극제 은상'),('PF218701','내가 그린 너에게','2023.06.01','2023.06.04','소극장 혜화당(구. 까망소극장)','http://www.kopis.or.kr/upload/pfmPoster/PF_PF218701_230518_151134.gif','연극','공연완료','제21회 2021 월드 2인극 페스티벌 우수 희곡상<br>제21회 2021 월드 2인극 페스티벌 은상'),('PF215516','버건디 무키 채널 오프닝 멘트','2023.04.22','2023.04.30','서울문화재단 대학로극장 쿼드(예술청)','http://www.kopis.or.kr/upload/pfmPoster/PF_PF215516_230323_105626.jpg','연극','공연완료','제44회 2023 서울연극제 공식선정작'),('PF214011','연극 on stage, 붉은 낙엽 [화성]','2023.04.01','2023.04.01','반석아트홀(동탄복합문화센터)','http://www.kopis.or.kr/upload/pfmPoster/PF_PF214011_230227_102744.gif','연극','공연완료','제58회 동아연극상 작품상<br>제42회 서울연극제 무대예술상<br>제42회 서울연극제 우수상<br>제42회 서울연극제 연기상'),('PF213876','라흐마니노프','2023.04.01','2023.04.22','국립중앙박물관 극장 용','http://www.kopis.or.kr/upload/pfmPoster/PF_PF213876_230224_094949.gif','뮤지컬','공연완료','제5회 예그린뮤지컬어워드 극본상<br>제1회 한국뮤지컬어워즈 작곡상<br>제1회 한국뮤지컬어워즈 음악감독상'),('PF213549','신바람 삼대 [울산]','2023.04.18','2023.06.04','CK아트홀','http://www.kopis.or.kr/upload/pfmPoster/PF_PF213549_230217_113252.jpg','연극','공연완료','제12회 한국국제2인극페스티벌 인기상'),('PF213179','레드북','2023.03.14','2023.05.28','홍익대 대학로 아트센터','http://www.kopis.or.kr/upload/pfmPoster/PF_PF213179_230213_094930.gif','뮤지컬','공연완료','예그린뮤지컬어워드 극본상<br>예그린뮤지컬어워드 음악상<br>제6회 한국뮤지컬어워즈 연출상<br>제6회 한국뮤지컬어워즈 음악상<br>제6회 한국뮤지컬어워즈 작품상<br>제3회 한국뮤지컬어워즈 작품상<br>제3회 한국뮤지컬어워즈 연출상<br>제3회 한국뮤지컬어워즈 안무상'),('PF211664','신바람 삼대 [문경]','2023.02.10','2023.02.11','문경문화예술회관','http://www.kopis.or.kr/upload/pfmPoster/PF_PF211664_230201_112028.jpg','연극','공연완료','제12회 한국국제2인극페스티벌 인기상'),('PF211446','호프: 읽히지 않은 책과 읽히지 않은 인생','2023.03.16','2023.06.11','유니플렉스','http://www.kopis.or.kr/upload/pfmPoster/PF_PF211446_230127_095750.gif','뮤지컬','공연완료','제8회 예그린뮤지컬어워드 올해의 뮤지컬<br>제8회 예그린뮤지컬어워드 극본상<br>제4회 한국뮤지컬어워즈 프로듀서상<br>제4회 한국뮤지컬어워즈 극본상<br>제4회 한국뮤지컬어워즈 음악상-작곡<br>제4회 한국뮤지컬어워즈 연출상<br>제4회 한국뮤지컬어워즈 대상<br>제4회 한국뮤지컬어워즈 음악상-편곡/음악감독'),('PF202152','루드윅: 베토벤 더 피아노 [서울]','2022.12.20','2023.03.12','예스24 스테이지(구. DCF대명문화공장)','http://www.kopis.or.kr/upload/pfmPoster/PF_PF202152_221115_095537.gif','뮤지컬','공연완료','제8회 2019 예그린뮤지컬어워드 음악상'),('PF198620','랭보','2022.10.18','2023.01.01','티오엠씨어터(구. 문화공간필링)','http://www.kopis.or.kr/upload/pfmPoster/PF_PF198620_220923_092850.gif','뮤지컬','공연완료','한국뮤지컬어워즈 '),('PF185308','두들팝 [서울]','2022.01.22','2023.08.31','신한pLay 스퀘어 (구. 신한카드 판스퀘어)','http://www.kopis.or.kr/upload/pfmPoster/PF_PF185308_211230_111207.gif','뮤지컬','공연중','2019 에딘버러 프린지 페스티벌(Edinburgh Festival Fringe) EDITOR\'S AWARD WINNER<br>2018 에딘버러 프린지 페스티벌(Edinburgh Festival Fringe) BEST SHOW<br>2018 에딘버러 프린지 페스티벌(Edinburgh Festival Fringe) AISAN ARTS AWARD BEST COMEDY'),('PF180108','빨래','2021.11.05','2023.10.01','유니플렉스','http://www.kopis.or.kr/upload/pfmPoster/PF_PF180108_220513_095237.gif','뮤지컬','공연중','2008 SFCC Awards(외신기자단) 외신 기자상<br>제6회 2007 예그린뮤지컬어워드 대상<br>제11회 2005 한국뮤지컬대상 극본상<br>제11회 2005 한국뮤지컬대상 작사상<br>제4회 2000 더 뮤지컬 어워즈 작사작곡상<br>제4회 2000 더 뮤지컬 어워즈 극본상');
/*!40000 ALTER TABLE `performawards` ENABLE KEYS */;
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
