CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `follows`
--

DROP TABLE IF EXISTS `follows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `follows` (
  `Users_ID` int NOT NULL,
  `follow_ID` int NOT NULL,
  PRIMARY KEY (`Users_ID`,`follow_ID`),
  KEY `fk_Users_has_Users_Users2_idx` (`follow_ID`),
  KEY `fk_Users_has_Users_Users1_idx` (`Users_ID`),
  CONSTRAINT `fk_Users_has_Users_Users1` FOREIGN KEY (`Users_ID`) REFERENCES `users` (`ID`),
  CONSTRAINT `fk_Users_has_Users_Users2` FOREIGN KEY (`follow_ID`) REFERENCES `users` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follows`
--

LOCK TABLES `follows` WRITE;
/*!40000 ALTER TABLE `follows` DISABLE KEYS */;
INSERT INTO `follows` VALUES (2,1),(5,1),(1,2),(1,3),(2,3),(3,5);
/*!40000 ALTER TABLE `follows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `Users_ID` int NOT NULL,
  `Tweet_ID` int NOT NULL,
  PRIMARY KEY (`Users_ID`,`Tweet_ID`),
  KEY `fk_Users_has_Tweet_Tweet1_idx` (`Tweet_ID`),
  KEY `fk_Users_has_Tweet_Users1_idx` (`Users_ID`),
  CONSTRAINT `fk_Users_has_Tweet_Tweet1` FOREIGN KEY (`Tweet_ID`) REFERENCES `tweet` (`ID`),
  CONSTRAINT `fk_Users_has_Tweet_Users1` FOREIGN KEY (`Users_ID`) REFERENCES `users` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (1,100),(2,102),(3,220);
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tweet`
--

DROP TABLE IF EXISTS `tweet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tweet` (
  `ID` int NOT NULL,
  `Content` varchar(225) DEFAULT NULL,
  `Date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Users_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_Tweet_Users1_idx` (`Users_ID`),
  CONSTRAINT `fk_Tweet_Users1` FOREIGN KEY (`Users_ID`) REFERENCES `users` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tweet`
--

LOCK TABLES `tweet` WRITE;
/*!40000 ALTER TABLE `tweet` DISABLE KEYS */;
INSERT INTO `tweet` VALUES (100,'first tweet','2025-10-03 05:22:14',1),(102,'hello everybody','2025-10-03 05:25:46',2),(200,'hello everybody','2025-10-03 05:24:56',2),(220,'GOOD MORINIG','2025-10-03 05:24:56',3);
/*!40000 ALTER TABLE `tweet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `ID` int NOT NULL,
  `Username` varchar(225) NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `password_hash` char(64) NOT NULL,
  `salt` varchar(24) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'areej','Areej Alam','are@gmail.com','2025-10-02 22:52:47','9e140386bd1abab363157fabaded974d5a3dca72b0bdd9da403b64aa647c20aa','qYSY7AxcsmryT/TN'),(2,'Nora','Nora Almasud','nora@gmail.com','2025-10-02 22:52:47','8bf93386d5bc5ceb84db970adb738ba719572a885f94d9def7b547c0789676af','pKhVFCwcuvYJP0kv'),(3,'Nor','Nor Almsaud','nor@gmail.com','2025-10-02 22:52:47','7bfdb98721444a9832e6fbab0b9bafd46025595ecc53d6085c64d3dfbb3203d7','0Ci29zAKqRTcpu20'),(5,'Ahmad','Ahmad Saud','ahd@gmail.com','2025-10-02 22:52:47','08c9fb947cf6b5240ab197bea84677d70bfcdb14df6ca720064a4d472d4553e9','Hw7pUT9JhpAl1L/J'),(6,'Hmad','Hmad Salm','hm@gmail.com','2025-10-02 22:52:47','333630619dd3f98ba3963339911cf3c4efbe648600d7083d633e1a699ca1f29b','ErLk6dBlsDVnM8i5'),(7,'Saad','Saad Ahmad','sad@gmail.com','2025-10-02 22:35:10','003e532c6593cbfa71ef5f562133b71fba7062fbcdf42125cbcccce1e64ca54e','xk7J6kMhdv+l5laq');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mydb'
--
/*!50003 DROP PROCEDURE IF EXISTS `createtweet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `createtweet`(
in p_id int ,
in p_content varchar(225),
in p_user_id int
)
begin 
insert into tweet (ID,Content,Users_ID)
values (p_id,p_content,p_user_id);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Createuser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Createuser`(
in p_id int ,
in p_username varchar(225),
in p_name varchar(225),
in p_email varchar(225),
in p_plain_password varchar(50)
)
begin
declare v_salt varchar(24);
declare v_hash char(64);
set v_salt = to_base64(random_bytes(12));
set v_hash = sha2(concat(v_salt, p_plain_password),256);
insert into users (ID,Username,name,Email,password_hash,salt)
value (p_id,p_username,p_name,p_email,v_hash,v_salt);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-05  7:40:38
