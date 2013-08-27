CREATE DATABASE  IF NOT EXISTS `wfac` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `wfac`;
-- MySQL dump 10.13  Distrib 5.5.22, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: wfac
-- ------------------------------------------------------
-- Server version	5.5.22-0ubuntu1

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
-- Table structure for table `controller_files`
--

DROP TABLE IF EXISTS `controller_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `controller_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controller_files`
--

LOCK TABLES `controller_files` WRITE;
/*!40000 ALTER TABLE `controller_files` DISABLE KEYS */;
INSERT INTO `controller_files` VALUES (1,'controller_files','ControllerFilesController.php','2013-08-24 23:05:29','2013-08-24 23:05:29'),(2,'groups','GroupsController.php','2013-08-24 23:06:10','2013-08-24 23:06:10'),(3,'model_files','ModelFilesController.php','2013-08-24 23:06:29','2013-08-24 23:06:29'),(4,'users','UsersController.php','2013-08-24 23:06:47','2013-08-24 23:06:47'),(5,'purchase_orders','PurchaseOrdersController.php','2013-08-27 10:14:13','2013-08-27 10:14:13'),(6,'purchase_items','PurchaseItemsController.php','2013-08-27 10:14:25','2013-08-27 10:14:25'),(7,'option_groups','OptionGroupsController.php','2013-08-27 16:34:00','2013-08-27 16:34:00'),(8,'options','OptionsController.php','2013-08-27 16:34:06','2013-08-27 16:34:06');
/*!40000 ALTER TABLE `controller_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'系统开发人员','2013-08-24 23:43:16','2013-08-24 23:43:16');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_files`
--

DROP TABLE IF EXISTS `model_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `display_field` varchar(127) NOT NULL,
  `validate` varchar(1023) DEFAULT NULL,
  `belongs_to` varchar(1023) DEFAULT NULL,
  `has_many` varchar(1023) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_files`
--

LOCK TABLES `model_files` WRITE;
/*!40000 ALTER TABLE `model_files` DISABLE KEYS */;
INSERT INTO `model_files` VALUES (1,'cats','Cat.php','','','','','2013-08-24 17:58:04','2013-08-24 17:58:04'),(2,'cats','Cat.php','name','','','','2013-08-24 17:58:46','2013-08-24 17:58:46'),(3,'dogs','Dog.php','','','','','2013-08-24 17:59:07','2013-08-24 17:59:07'),(4,'pears','Pear.php','namdewfwe','','','','2013-08-24 17:59:20','2013-08-24 17:59:20');
/*!40000 ALTER TABLE `model_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option_groups`
--

DROP TABLE IF EXISTS `option_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `option_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option_groups`
--

LOCK TABLES `option_groups` WRITE;
/*!40000 ALTER TABLE `option_groups` DISABLE KEYS */;
INSERT INTO `option_groups` VALUES (1,'dddddddddd','2013-08-27 16:36:04','2013-08-27 16:36:04'),(2,'ogggg_b','2013-08-27 16:36:23','2013-08-27 16:36:23'),(3,'ogggg_catssssssss','2013-08-27 16:36:28','2013-08-27 16:44:24'),(5,'og_kkkkksssssss','2013-08-27 16:51:42','2013-08-27 16:51:42'),(6,'og_ccccsssssssss','2013-08-27 17:01:31','2013-08-27 17:01:31'),(7,'og_quyusssssssssss','2013-08-27 17:08:14','2013-08-27 17:08:14');
/*!40000 ALTER TABLE `option_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `option_value` smallint(6) unsigned NOT NULL,
  `option_text` varchar(255) NOT NULL,
  `option_group_id` int(10) unsigned NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `options`
--

LOCK TABLES `options` WRITE;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` VALUES (1,32,'fdsfds',6,'2013-08-27 17:01:51','2013-08-27 17:01:51'),(2,1,'A1111111',7,'2013-08-27 17:08:52','2013-08-27 17:08:59'),(3,2,'a2222222222222',7,'2013-08-27 17:09:10','2013-08-27 17:09:15'),(4,3,'B11111111',7,'2013-08-27 17:09:35','2013-08-27 17:09:58'),(5,4,'C111111111',7,'2013-08-27 17:09:46','2013-08-27 17:10:01');
/*!40000 ALTER TABLE `options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_items`
--

DROP TABLE IF EXISTS `purchase_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `unit` varchar(127) NOT NULL,
  `purchase_order_id` int(10) unsigned NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_items`
--

LOCK TABLES `purchase_items` WRITE;
/*!40000 ALTER TABLE `purchase_items` DISABLE KEYS */;
INSERT INTO `purchase_items` VALUES (1,'铁',100.50,100,'吨',1,'2013-08-27 11:18:42','2013-08-27 11:40:30'),(2,'铝',200.50,100,'吨',1,'2013-08-27 11:19:03','2013-08-27 11:40:44');
/*!40000 ALTER TABLE `purchase_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_orders`
--

DROP TABLE IF EXISTS `purchase_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_orders`
--

LOCK TABLES `purchase_orders` WRITE;
/*!40000 ALTER TABLE `purchase_orders` DISABLE KEYS */;
INSERT INTO `purchase_orders` VALUES (1,'A公司','2013-08-27 10:16:51','2013-08-27 11:42:15');
/*!40000 ALTER TABLE `purchase_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` char(40) NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'yr','409e4e13ca5170f8cc5bee8b2794096ec4597ae1',1,'2013-08-24 23:52:44','2013-08-24 23:52:44'),(2,'wy','409e4e13ca5170f8cc5bee8b2794096ec4597ae1',1,'2013-08-24 23:53:48','2013-08-24 23:53:48');
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

-- Dump completed on 2013-08-27 17:11:38
