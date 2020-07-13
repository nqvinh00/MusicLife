-- MariaDB dump 10.17  Distrib 10.4.13-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: MusicLife
-- ------------------------------------------------------
-- Server version	10.4.13-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `MusicLife_song`
--

DROP TABLE IF EXISTS `MusicLife_song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MusicLife_song` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `singer` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_datetime` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MusicLife_song`
--

LOCK TABLES `MusicLife_song` WRITE;
/*!40000 ALTER TABLE `MusicLife_song` DISABLE KEYS */;
INSERT INTO `MusicLife_song` VALUES (1,'Lời yêu em','Vũ.','Vũ.','Vu-LoiYeuEm.mp3','2020-06-24'),(2,'Thằng Nam khóc','Vũ.','Vũ.','ThangNamkhoc.mp3','2020-06-25'),(3,'Chuyện những người yêu xa','Vũ.','Vũ.','Chuyen-Nhung-Nguoi-Yeu-Xa-Vu.mp3','2020-06-28'),(4,'Đông kiếm em','Vũ.','Vũ.','Dong-Kiem-Em-Vu.mp3','2020-06-28'),(5,'Phút ban đầu','Vũ.','Vũ.','Phut-Ban-Dau-Vu.mp3','2020-06-28'),(6,'Luôn là mình','Da LAB','Da LAB','Luon-La-Minh-Da-LAB.mp3','2020-06-28'),(7,'Sàn nhà ký ức','Da LAB','Da LAB','San-Nha-Ky-Uc-Da-LAB.mp3','2020-06-28'),(8,'Việt Nam','Da LAB','Da LAB','Viet-Nam-Da-LAB.mp3','2020-06-28'),(9,'Hà Nội của bố','Da LAB','Da LAB','Ha-Noi-Cua-Bo-Dalab.mp3','2020-06-28'),(10,'Xanh','Ngọt','Ngọt','Xanh-Ngot.mp3','2020-06-29'),(11,'Khắp xung quanh','Ngọt','Ngọt','Khap-Xung-Quanh-Ngot.mp3','2020-06-29'),(12,'Kẻ thù','Ngọt','Ngọt','Ke-Thu-Ngot.mp3','2020-06-29'),(13,'Em dạo này','Ngọt','Ngọt','Em-Dao-Nay-Ngot.mp3','2020-06-29');
/*!40000 ALTER TABLE `MusicLife_song` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-29 13:31:08
