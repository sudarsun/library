-- MySQL dump 10.13  Distrib 5.1.62, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	5.1.62-0ubuntu0.11.10.1

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
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `author` (
  `auth_id` int(11) NOT NULL AUTO_INCREMENT,
  `auth_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`auth_id`),
  UNIQUE KEY `auth_name` (`auth_name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'Thirumoolar'),(2,'Thiruvalluvar'),(3,'Swami Vivekanandar'),(4,'திருமூலர்');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `book_id` tinyint(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8 NOT NULL,
  `author` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publication` text COLLATE utf8_unicode_ci,
  `edition` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `total_holding` int(4) DEFAULT NULL,
  `related_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `book_remark` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`book_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (9,'Mining Massive Datasets','Anand Rajaraman, Geoffrey Ullman','Cambrige','2nd edition',2006,2,'','');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`cat_id`),
  UNIQUE KEY `cat_name` (`cat_name`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (2,'à®…à®®à¯à®®à®¾33'),(3,'Devotion'),(4,'Sacred Script'),(5,'trial'),(6,'à®•à®£à®•à¯à®•à¯'),(7,'à®¤à®®à®¿à®´à¯'),(8,'trial2');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan`
--

DROP TABLE IF EXISTS `loan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loan` (
  `loan_id` int(11) NOT NULL AUTO_INCREMENT,
  `loan_book_id` varchar(255) DEFAULT NULL,
  `loan_mem_name` varchar(50) DEFAULT NULL,
  `loan_date` date DEFAULT NULL,
  `loan_return_date` date DEFAULT NULL,
  `loan_status` tinytext,
  `loan_return_stats` tinytext,
  `loan_return_mem_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`loan_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan`
--

LOCK TABLES `loan` WRITE;
/*!40000 ALTER TABLE `loan` DISABLE KEYS */;
INSERT INTO `loan` VALUES (21,'9','4','2013-08-22','2013-08-22','Returned',NULL,'4'),(22,'9','4','2013-08-22','2013-08-22','Returned',NULL,'4');
/*!40000 ALTER TABLE `loan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location` (
  `loc_id` int(11) NOT NULL AUTO_INCREMENT,
  `loc_name` varchar(255) NOT NULL,
  PRIMARY KEY (`loc_id`),
  UNIQUE KEY `loc_name` (`loc_name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Sithantham'),(2,'Samayam'),(3,'Thiruvasakam'),(4,'à®¤à¯‡à®µà®¾à®°à®®à¯');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `reader_id` int(11) NOT NULL AUTO_INCREMENT,
  `nric` varchar(12) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fname` varchar(50) CHARACTER SET utf8 NOT NULL,
  `lname` varchar(50) CHARACTER SET utf8 NOT NULL,
  `address` text CHARACTER SET utf8,
  `mobilephone` bigint(20) NOT NULL,
  `mem_remark` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`reader_id`),
  UNIQUE KEY `NRIC` (`nric`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (4,'CS13D030','SUDARSUN','SANTHIAPPAN','Thirumullaivoyil',9840737947,'');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-08-22 21:28:35
