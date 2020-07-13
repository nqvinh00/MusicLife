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
-- Table structure for table `MusicLife_singer`
--

DROP TABLE IF EXISTS `MusicLife_singer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MusicLife_singer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instrument` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar2` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MusicLife_singer`
--

LOCK TABLES `MusicLife_singer` WRITE;
/*!40000 ALTER TABLE `MusicLife_singer` DISABLE KEYS */;
INSERT INTO `MusicLife_singer` VALUES (1,'Vũ.','Indie pop, acoustic, nhạc điện tử','Guitar','1995-10-03','Sinh ra trong gia đình có bố là quân nhân và mẹ là giáo viên, Vũ thường đăng tải các sáng tác của mình trên Soundcloud. Thể loại của anh theo đuổi là nhạc indie pop, acoustic. Trước khi đi hát, Vũ từng gia nhập quân ngũ và làm giảng viên tiếng Anh tại một trường quân sự. Đây cũng chính là khoảng thời gian anh sáng tác.','Vu.jpg','Vu1.jpg'),(2,'Da LAB','Pop, Hithop, Rap','Không','0000-00-00','Các thành viên nhóm Da LAB lấy chủ đề về Hà Nội trong những giờ cao điểm, các rapper của Da LAB đã khắc họa thủ đô ở một góc nhìn rất mới, gai góc hơn, đời thường hơn, mỗi phần của bài hát là một phần tâm tư riêng lẻ, nói tới sự vô cảm của con người trong xã hội hiện đại, những bon chen, những  giả tạo đã thành quen thuộc trong đời sống ngày một thực dụng bây giờ. Ca từ sâu sắc, phóng khoáng cùng cách thể hiện bài hát mang đậm chất riêng làm nên thành công cho chính bài hát “Hà Nội giờ tan tầm”.','dalab.jpg','dalab1.jpg'),(3,'Ngọt','Indie pop','Guitar, trống','0000-00-00','Ngọt là ban nhạc indie pop với các thành viên Vũ Đinh Trọng Thắng (hát, rhythm guitar), Nguyễn Chí Hùng (lead guitar), Phan Việt Hoàng (bass guitar) và Nguyễn Hùng Nam Anh (trống). Kể từ khi được thành lập vào năm 2013 tại Hà Nội, Ngọt sớm tạo được tiếng vang trong cộng đồng âm nhạc underground trên toàn quốc và qua nhiều bản thu âm trên mạng xã hội, ban nhạc dần trở thành một trong những nghệ sĩ nổi bật trong dòng nhạc indie tại Việt Nam.','ngot.jpg','ngot1.jpg');
/*!40000 ALTER TABLE `MusicLife_singer` ENABLE KEYS */;
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
