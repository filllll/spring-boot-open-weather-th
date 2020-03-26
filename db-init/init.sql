-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: localhost    Database: weather_db
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `province` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `zone` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `api_id` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province`
--

LOCK TABLES `province` WRITE;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
INSERT INTO `province` VALUES (1,'เชียงราย','north','1153668'),(2,'เชียงใหม่','north','1153671'),(3,'น่าน','north','1608451'),(4,'พะเยา','north','1607758'),(5,'แพร่','north','1607551'),(6,'แม่ฮ่องสอน','north','1152221'),(7,'ลำปาง','north','1152472'),(8,'ลำพูน','north','1152467'),(9,'อุตรดิตถ์','north','1605214'),(10,'กาฬสินธุ์','north-east','1610468'),(11,'ขอนแก่น','north-east','1609775'),(12,'ชัยภูมิ','north-east','1611406'),(13,'นครพนม','north-east','1608530'),(14,'นครราชสีมา','north-east','1608528'),(15,'บึงกาฬ','north-east','8133594'),(16,'บุรีรัมย์','north-east','1611452'),(17,'มหาสารคาม','north-east','1608899'),(18,'มุกดาหาร','north-east','1608595'),(19,'ยโสธร','north-east','1604767'),(20,'ร้อยเอ็ด','north-east','1607000'),(21,'เลย','north-east','1609070'),(22,'ศรีสะเกษ','north-east','1606239'),(23,'สกลนคร','north-east','1606789'),(24,'สุรินทร์','north-east','1606029'),(25,'หนองคาย','north-east','1608231'),(26,'หนองบัวลำภู','north-east','1608269'),(27,'อุดรธานี','north-east','1906686'),(28,'อุบลราชธานี','north-east','1906688'),(29,'อำนาจเจริญ','north-east','1906689'),(30,'กรุงเทพมหานคร','center','1609350'),(31,'กำแพงเพชร','center','1153089'),(32,'ชัยนาท','center','1611415'),(33,'นครนายก','center','1608538'),(34,'นครปฐม','center','1608533'),(35,'นครสวรรค์','center','1608526'),(36,'นนทบุรี','center','1608132'),(37,'ปทุมธานี','center','1607982'),(38,'พระนครศรีอยุธยา','center','1607530'),(39,'พิจิตร','center','1607724'),(40,'พิษณุโลก','center','1607707'),(41,'เพชรบูรณ์','center','1607736'),(42,'ลพบุรี','center','1609031'),(43,'สมุทรปราการ','center','1606589'),(44,'สมุทรสงคราม','center','1606585'),(45,'สมุทรสาคร','center','1606587'),(46,'สระบุรี','center','1606417'),(47,'สิงห์บุรี','center','1606269'),(48,'สุโขทัย','center','1150532'),(49,'สุพรรณบุรี','center','1606032'),(50,'อ่างทอง','center','1621034'),(51,'อุทัยธานี','center','1149965'),(52,'จันทบุรี','east','1611268'),(53,'ฉะเชิงเทรา','east','1611438'),(54,'ชลบุรี','east','1611108'),(55,'ตราด','east','1605277'),(56,'ปราจีนบุรี','east','1906687'),(57,'ระยอง','east','1607016'),(58,'สระแก้ว','east','1906691'),(59,'กาญจนบุรี','west','1153080'),(60,'ตาก','west','1150489'),(61,'ประจวบคีรีขันธ์','west','1151073'),(62,'เพชรบุรี','west','1151416'),(63,'ราชบุรี','west','1150953'),(64,'กระบี่','south','1152631'),(65,'ชุมพร','south','1153555'),(66,'ตรัง','south','1150006'),(67,'นครศรีธรรมราช','south','1608525'),(68,'นราธิวาส','south','1608408'),(69,'ปัตตานี','south','1607976'),(70,'พังงา','south','1151464'),(71,'พัทลุง','south','1607778'),(72,'ภูเก็ต','south','1151253'),(73,'ยะลา','south','1604869'),(74,'ระนอง','south','1150964'),(75,'สตูล','south','1606375'),(76,'สงขลา','south','1606146'),(77,'สุราษฎร์ธานี','south','1150514');
/*!40000 ALTER TABLE `province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_log`
--

DROP TABLE IF EXISTS `transaction_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `service_name` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `function_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_520_ci,
  `create_datetime` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_log`
--

LOCK TABLES `transaction_log` WRITE;
/*!40000 ALTER TABLE `transaction_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-20 14:38:04
