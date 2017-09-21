-- MySQL dump 10.16  Distrib 10.1.10-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: tic
-- ------------------------------------------------------
-- Server version	10.1.10-MariaDB

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
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `games` (
  `username` varchar(15) NOT NULL,
  `enemy` varchar(15) NOT NULL,
  `1` varchar(2) DEFAULT NULL,
  `2` varchar(2) DEFAULT NULL,
  `3` varchar(2) DEFAULT NULL,
  `4` varchar(2) DEFAULT NULL,
  `5` varchar(2) DEFAULT NULL,
  `6` varchar(2) DEFAULT NULL,
  `7` varchar(2) DEFAULT NULL,
  `8` varchar(2) DEFAULT NULL,
  `9` varchar(2) DEFAULT NULL,
  `won` int(11) DEFAULT NULL,
  `lost` int(11) DEFAULT NULL,
  `draw` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES ('peter','KI','x','x','o','0','0','o','0','0','o',1,NULL,NULL),('peter','KI','x','x','x','0','o','o','0','o','0',NULL,1,NULL),('peter','KI','o','x','x','0','o','0','0','0','o',1,NULL,NULL),('peter','KI','x','x','0','o','o','o','0','0','0',1,NULL,NULL),('peter','KI','x','x','o','x','o','o','x','o','o',NULL,1,NULL),('peter','KI','x','x','o','x','o','o','x','o','o',1,NULL,NULL),('peter','KI','x','x','o','o','o','x','x','o','o',NULL,1,NULL),('peter','KI','x','x','o','o','o','x','o','0','0',1,NULL,NULL),('peter','KI','x','x','o','x','o','o','x','o','o',NULL,1,NULL),('peter','KI','x','x','o','x','o','o','x','o','o',1,NULL,NULL),('peter','KI','x','x','o','x','o','0','o','o','0',1,NULL,NULL),('peter','KI','o','x','x','x','o','x','o','o','o',NULL,1,NULL),('peter','KI','o','x','x','x','o','x','o','o','o',1,NULL,NULL),('peter','KI','x','x','0','o','o','o','0','0','0',1,NULL,NULL),('peter','KI','x','x','x','0','o','o','0','o','0',NULL,1,NULL),('peter','KI','x','x','o','0','o','0','o','0','0',1,NULL,NULL),('peter','KI','x','x','0','o','o','o','0','0','0',1,NULL,NULL),('peter','KI','x','x','o','0','o','0','o','0','0',1,NULL,NULL),('peter','KI','x','o','x','x','o','o','o','x','o',NULL,1,NULL),('peter','KI','x','o','x','0','o','0','0','o','0',1,NULL,NULL),('peter','KI','x','o','x','0','o','0','0','o','0',1,NULL,NULL),('peter','KI','x','x','x','0','o','o','0','o','0',NULL,1,NULL),('peter','KI','x','o','x','o','x','o','o','x','o',NULL,1,NULL),('peter','KI','x','x','o','0','o','0','o','0','0',1,NULL,NULL),('peter','KI','o','x','x','0','o','0','0','0','o',1,NULL,NULL),('peter','KI','x','x','o','0','o','0','o','0','0',1,NULL,NULL),('peter','KI','x','x','o','0','o','0','o','0','0',1,NULL,NULL),('peter','KI','x','o','x','0','o','0','0','o','0',1,NULL,NULL),('peter','KI','x','x','o','0','o','0','o','0','0',1,NULL,NULL),('peter','KI','x','o','x','0','o','0','0','o','0',1,NULL,NULL),('peter','KI','','','','','','','','','',NULL,NULL,1),('peter','KI','','','','','','','','','',NULL,NULL,1),('peter','KI','x','o','x','0','o','0','0','o','0',1,NULL,NULL),('peter','KI','','','','','','','','','',NULL,NULL,1),('peter','KI','','','','','','','','','',NULL,NULL,1),('peter','KI','','','','','','','','','',NULL,NULL,1),('peter','KI','','','','','','','','','',NULL,NULL,1),('peter','KI','x','x','o','0','o','0','o','0','0',1,NULL,NULL),('peter','KI','o','x','x','0','o','0','0','0','o',1,NULL,NULL),('peter','KI','x','x','o','x','o','o','o','0','0',1,NULL,NULL),('peter','KI','x','x','o','x','o','o','o','0','0',1,NULL,NULL),('peter','KI','x','o','x','o','x','o','o','x','o',NULL,1,NULL),('peter','KI','x','o','x','x','o','o','o','x','o',NULL,1,NULL),('peter','KI','x','o','x','o','x','o','x','0','o',NULL,1,NULL),('peter','KI','x','o','x','o','o','x','x','o','o',NULL,1,NULL),('peter','KI','x','o','x','o','o','x','x','o','o',1,NULL,NULL),('peter','KI','x','o','x','o','x','o','o','x','o',NULL,1,NULL),('peter','KI','x','x','o','o','o','x','x','o','o',NULL,1,NULL),('peter','KI','x','x','o','0','o','0','o','0','0',1,NULL,NULL),('peter','KI','x','o','x','0','o','0','0','o','0',1,NULL,NULL),('peter','KI','o','x','x','0','o','0','0','0','o',1,NULL,NULL),('peter','KI','x','x','o','x','o','0','o','0','o',1,NULL,NULL),('peter','KI','x','x','o','o','o','x','x','o','o',NULL,1,NULL),('peter','KI','x','o','x','0','o','0','0','o','0',1,NULL,NULL),('peter','KI','x','o','x','0','o','0','0','o','0',1,NULL,NULL),('peter','KI','x','x','o','0','o','0','o','0','0',1,NULL,NULL),('peter','KI','x','o','x','o','x','o','o','x','o',NULL,1,NULL),('peter','KI','x','o','x','0','o','0','0','o','0',1,NULL,NULL);
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `userame` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('peter','123456'),('peter2','159');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-21 20:37:23
