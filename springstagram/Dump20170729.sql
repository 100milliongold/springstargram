-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: hanbit
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `tbl_board`
--

DROP TABLE IF EXISTS `tbl_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_board` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `contents` text NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `update_dt` datetime NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_board`
--

LOCK TABLES `tbl_board` WRITE;
/*!40000 ALTER TABLE `tbl_board` DISABLE KEYS */;
INSERT INTO `tbl_board` VALUES (1,'두뻔재','ㅋㅋㅋㅋ',0,'2017-07-08 16:23:19'),(2,'두뻔재','ㅋㅋㅋㅋ',0,'2017-07-08 16:23:22'),(3,'두뻔재','ㅋㅋㅋㅋ',0,'2017-07-08 16:23:24'),(4,'첫번째','ㅋㅋㅋㅋ',0,'2017-07-08 17:18:59'),(5,'ㅁㅇㅁㄴㅇㅁ','ㅁㄴㅇㅁㄴㅇㅁㄴㅇ\nㅁㄴㅇㅁㄴㅇ\nㅁㄴㅇㅁㄴㅇ',0,'2017-07-08 18:31:39'),(6,'게시판','우왕',0,'2017-07-08 18:31:57'),(7,'asdasdsa','asdasd',0,'2017-07-15 10:43:44');
/*!40000 ALTER TABLE `tbl_board` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-29 17:48:06
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: springstagram
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `tbl_comments`
--

DROP TABLE IF EXISTS `tbl_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_comments` (
  `photo_id` varchar(8) NOT NULL,
  `id` varchar(45) NOT NULL,
  `author` varchar(100) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `update_dt` datetime NOT NULL,
  PRIMARY KEY (`photo_id`,`id`),
  CONSTRAINT `fk_table1_tbl_photos` FOREIGN KEY (`photo_id`) REFERENCES `tbl_photos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_comments`
--

LOCK TABLES `tbl_comments` WRITE;
/*!40000 ALTER TABLE `tbl_comments` DISABLE KEYS */;
INSERT INTO `tbl_comments` VALUES ('0oeXsJQY','2IFuBS6I','익명','개같은 사장','2017-07-29 17:20:35'),('0oeXsJQY','BACPpwqX','뚠을 벌어야','이 집에서 살지','2017-07-29 17:24:06'),('0oeXsJQY','F0hoHfq8','문재인은 뭐하는겨','안잡아가고','2017-07-29 17:20:56'),('0oeXsJQY','RPQNW7Fp','SI','Ssibal Internet','2017-07-29 17:30:38'),('9RKtXbd1','365vO5tD','asd','asd','2017-07-29 17:31:28'),('9RKtXbd1','9IWXjMdz','aaczxc','zxczxc','2017-07-29 17:37:09'),('9RKtXbd1','DN2Py813','ㄴㅁㅁㄴㅇ','ㅁㄴㅇㅁㄴㅇ','2017-07-29 17:37:53'),('9RKtXbd1','DZtexE9a','ㄴㅁㅁㄴㅇ','ㅁㄴㅇㅁㄴㅇ','2017-07-29 17:40:01'),('9RKtXbd1','g20HI5A6','ㄴㅁㅁㄴㅇ','ㅁㄴㅇㅁㄴㅇ','2017-07-29 17:39:57'),('9RKtXbd1','JdW4mnOs','ㄴㅁㅁㄴㅇ','ㅁㄴㅇㅁㄴㅇ','2017-07-29 17:39:59'),('9RKtXbd1','jqY081Qn','aaaa','aaa','2017-07-29 17:36:18'),('9RKtXbd1','jwUmP136','ㄴㅁㅁㄴㅇ','ㅁㄴㅇㅁㄴㅇ','2017-07-29 17:39:58'),('9RKtXbd1','m6ZtnFZW','aaczxc','zxczxc','2017-07-29 17:37:12'),('9RKtXbd1','MTtFWgch','ㄴㅁㅁㄴㅇ','ㅁㄴㅇㅁㄴㅇ','2017-07-29 17:39:56'),('9RKtXbd1','O4YR3cuA','asd','asd','2017-07-29 17:31:27'),('9RKtXbd1','OkcPEgno','asd','asd','2017-07-29 17:31:22'),('9RKtXbd1','PzIVprVS','asd','asd','2017-07-29 17:32:08'),('9RKtXbd1','qZStgUnx','ㄴㅁㅁㄴㅇ','ㅁㄴㅇㅁㄴㅇ','2017-07-29 17:39:55'),('9RKtXbd1','t7jO1b2E','ㄴㅁㅁㄴㅇ','ㅁㄴㅇㅁㄴㅇ','2017-07-29 17:39:54'),('9RKtXbd1','uD8IY4ou','ㄴㅁㅁㄴㅇ','ㅁㄴㅇㅁㄴㅇ','2017-07-29 17:39:57'),('9RKtXbd1','UtCP8Sgo','asd','asd','2017-07-29 17:31:26'),('9RKtXbd1','VGX8E7I9','aaczxc','zxczxc','2017-07-29 17:37:13'),('9RKtXbd1','vnnpd15G','ㄴㅁㅁㄴㅇ','ㅁㄴㅇㅁㄴㅇ','2017-07-29 17:39:56'),('9RKtXbd1','vvhB4e3t','aaczxc','zxczxc','2017-07-29 17:37:13'),('9RKtXbd1','XcCeQod2','test','test','2017-07-29 17:31:14'),('gbKmokmC','1Jrpv6vH','ㅋㅌㅊㅋㅌㅊㅌㅋㅊ','ㅌㅋㅋㅌㅊㅌㅊㅋㅌㅊㅋ','2017-07-29 17:45:43'),('gbKmokmC','AVBZyoV8','ㅋㅌㅊㅋㅌㅊㅌㅋㅊ','ㅌㅋㅋㅌㅊㅌㅊㅋㅌㅊㅋ','2017-07-29 17:45:43'),('oOXaheM3','789aPZ2G','ㅁㄴㅇ','ㅁㄴㅇㅁㄴ','2017-07-29 17:44:42'),('oOXaheM3','C0h20ebM','ㅁㄴㅇ','ㅁㄴㅇㅁㄴ','2017-07-29 17:44:40'),('oOXaheM3','HHsGE72b','ㅁㄴㅇ','ㅁㄴㅇㅁㄴ','2017-07-29 17:44:39'),('oOXaheM3','jGnCiNQj','ㅁㄴㅇ','ㅁㄴㅇㅁㄴ','2017-07-29 17:44:43'),('oOXaheM3','k0DcseUw','ㅁㄴㅇ','ㅁㄴㅇㅁㄴ','2017-07-29 17:44:42'),('oOXaheM3','KQt54eH5','ㅁㄴㅇ','ㅁㄴㅇㅁㄴ','2017-07-29 17:44:39'),('oOXaheM3','M8vMu3n8','ㅁㄴㅇ','ㅁㄴㅇㅁㄴ','2017-07-29 17:45:08'),('oOXaheM3','NGTQzapv','ㅁㄴㅇ','ㅁㄴㅇㅁㄴ','2017-07-29 17:44:34'),('oOXaheM3','NV5Z05am','ㅁㄴㅇ','ㅁㄴㅇㅁㄴ','2017-07-29 17:44:42'),('oOXaheM3','R8utpuGk','ㅁㄴㅇ','ㅁㄴㅇㅁㄴ','2017-07-29 17:44:56'),('oOXaheM3','ryqZEy6T','ㅁㄴㅇ','ㅁㄴㅇㅁㄴ','2017-07-29 17:44:43'),('SwUrZyXK','Afk1zmdc','익명','지랄','2017-07-29 17:37:30'),('SwUrZyXK','v8RBNgwE','익명','누구야?','2017-07-29 17:37:36');
/*!40000 ALTER TABLE `tbl_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_files`
--

DROP TABLE IF EXISTS `tbl_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_files` (
  `photo_id` varchar(8) NOT NULL,
  `file_path` varchar(1000) NOT NULL,
  `file_type` varchar(45) NOT NULL,
  `file_length` bigint(20) NOT NULL,
  PRIMARY KEY (`photo_id`),
  CONSTRAINT `fk_table1_tbl_photos1` FOREIGN KEY (`photo_id`) REFERENCES `tbl_photos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_files`
--

LOCK TABLES `tbl_files` WRITE;
/*!40000 ALTER TABLE `tbl_files` DISABLE KEYS */;
INSERT INTO `tbl_files` VALUES ('0oeXsJQY','/hanbit/files/photos/0oeXsJQY','image/jpeg',561276),('9RKtXbd1','/hanbit/files/photos/9RKtXbd1','image/jpeg',775702),('gbKmokmC','/hanbit/files/photos/gbKmokmC','image/jpeg',845941),('MvNTo9bQ','/hanbit/files/photos/MvNTo9bQ','image/jpeg',777835),('oOXaheM3','/hanbit/files/photos/oOXaheM3','image/jpeg',780831),('SwUrZyXK','/hanbit/files/photos/SwUrZyXK','image/jpeg',620888),('tu6RwBIj','/hanbit/files/photos/tu6RwBIj','image/jpeg',879394),('UjWtjQ6b','/hanbit/files/photos/UjWtjQ6b','image/jpeg',620888);
/*!40000 ALTER TABLE `tbl_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_photos`
--

DROP TABLE IF EXISTS `tbl_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_photos` (
  `id` varchar(8) NOT NULL,
  `name` varchar(200) NOT NULL,
  `content` varchar(500) NOT NULL,
  `likes` int(11) NOT NULL,
  `update_dt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_photos`
--

LOCK TABLES `tbl_photos` WRITE;
/*!40000 ALTER TABLE `tbl_photos` DISABLE KEYS */;
INSERT INTO `tbl_photos` VALUES ('0oeXsJQY','SI 약자는','Ssibal IT가 아닐까??',27,'2017-07-29 16:05:24'),('9RKtXbd1','adasd','asdasdasdasd',10,'2017-07-29 15:29:24'),('gbKmokmC','ㅁㄴㅇ','ㄴㅁㅇㄴㅁㅇㅁㄴㅇㅁㄴ',22,'2017-07-29 17:41:05'),('MvNTo9bQ','asdas','dasdasd',109,'2017-07-22 18:03:58'),('oOXaheM3','사진','ㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴ',36,'2017-07-29 13:10:46'),('SwUrZyXK','사진입니다.','나좀 쩌는듯??',16,'2017-07-29 10:29:47'),('tu6RwBIj','asd','asdasd',332,'2017-07-29 09:44:24'),('UjWtjQ6b','노드 js','asdasdasd',213,'2017-07-29 12:17:54');
/*!40000 ALTER TABLE `tbl_photos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-29 17:48:06
