-- MySQL dump 10.13  Distrib 8.0.19, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: citrusDB
-- ------------------------------------------------------
-- Server version	5.7.28

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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `publish` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Product1','test.jpg','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac facilisis ipsum, nec commodo neque. Integer non pharetra arcu, vitae ornare velit. Sed iaculis nunc nibh, et posuere neque posuere quis.','2020-02-26 17:14:09','0000-00-00 00:00:00'),(2,'Product2','test1.jpg','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac facilisis ipsum, nec commodo neque. Integer non pharetra arcu, vitae ornare velit. Sed iaculis nunc nibh, et posuere neque posuere quis.','2020-02-26 17:14:17','0000-00-00 00:00:00'),(3,'Product3','test2.jpg','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac facilisis ipsum, nec commodo neque. Integer non pharetra arcu, vitae ornare velit. Sed iaculis nunc nibh, et posuere neque posuere quis.','2020-02-26 17:14:25','0000-00-00 00:00:00'),(4,'Product4','test3.jpg','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac facilisis ipsum, nec commodo neque. Integer non pharetra arcu, vitae ornare velit. Sed iaculis nunc nibh, et posuere neque posuere quis.','2020-02-26 17:14:31','0000-00-00 00:00:00'),(5,'Product5','test4.jpg','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac facilisis ipsum, nec commodo neque. Integer non pharetra arcu, vitae ornare velit. Sed iaculis nunc nibh, et posuere neque posuere quis.','2020-02-26 17:14:37','0000-00-00 00:00:00'),(6,'Product6','test5.jpg','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac facilisis ipsum, nec commodo neque. Integer non pharetra arcu, vitae ornare velit. Sed iaculis nunc nibh, et posuere neque posuere quis.','2020-02-26 17:14:43','0000-00-00 00:00:00'),(7,'Product7','test6.jpg','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac facilisis ipsum, nec commodo neque. Integer non pharetra arcu, vitae ornare velit. Sed iaculis nunc nibh, et posuere neque posuere quis.','2020-02-26 17:14:49','0000-00-00 00:00:00'),(8,'Product8','test7.jpg','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac facilisis ipsum, nec commodo neque. Integer non pharetra arcu, vitae ornare velit. Sed iaculis nunc nibh, et posuere neque posuere quis.','2020-02-26 17:14:56','0000-00-00 00:00:00'),(9,'Product9','test8.jpg','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac facilisis ipsum, nec commodo neque. Integer non pharetra arcu, vitae ornare velit. Sed iaculis nunc nibh, et posuere neque posuere quis.','2020-02-26 17:15:03','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-26 18:30:42
