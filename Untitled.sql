-- MySQL dump 10.13  Distrib 8.0.29, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: avikka
-- ------------------------------------------------------
-- Server version	8.4.0

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
-- Table structure for table `ProductOffer`
--

DROP TABLE IF EXISTS `ProductOffer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ProductOffer` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `offerId` int NOT NULL,
  `productId` int NOT NULL,
  PRIMARY KEY (`offerId`,`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductOffer`
--

LOCK TABLES `ProductOffer` WRITE;
/*!40000 ALTER TABLE `ProductOffer` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProductOffer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Specifications`
--

DROP TABLE IF EXISTS `Specifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Specifications` (
  `Specification_id` int NOT NULL AUTO_INCREMENT,
  `skin_type` varchar(255) DEFAULT NULL,
  `hair_type` varchar(255) DEFAULT NULL,
  `benefits` varchar(255) NOT NULL,
  `primary_concerns` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `product_id` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`Specification_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `Specifications_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Specifications`
--

LOCK TABLES `Specifications` WRITE;
/*!40000 ALTER TABLE `Specifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `Specifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Videothumnails`
--

DROP TABLE IF EXISTS `Videothumnails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Videothumnails` (
  `Videothumnail_id` int NOT NULL AUTO_INCREMENT,
  `thumbnail_url` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`Videothumnail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Videothumnails`
--

LOCK TABLES `Videothumnails` WRITE;
/*!40000 ALTER TABLE `Videothumnails` DISABLE KEYS */;
/*!40000 ALTER TABLE `Videothumnails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `addresses_id` int NOT NULL AUTO_INCREMENT,
  `pincode` int NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `house_flat_office_no` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `contact_name` varchar(255) NOT NULL,
  `mobile_num` bigint NOT NULL,
  `address_type` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`addresses_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `registrations` (`user_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (21,804450,'patna','Bihar','01','parsa','01','Raj',9110189251,'Home',1,'2023-11-21 11:04:10','2023-11-21 11:04:10'),(22,804450,'patna','Bihar','01','parsa','01','Raj',9110189252,'Home',1,'2023-11-21 11:05:01','2023-11-21 11:05:01'),(35,804453,'MASHAURHI','Bihar','chanda chak kurthoul patna','parsa','parsa','Raj',9110189253,'Home',1,'2023-12-01 09:02:24','2023-12-01 09:02:24'),(36,804450,'patna','Bihar','jj','parsa','jj','Raj',9110189254,'Home',1,'2023-12-01 11:35:29','2023-12-01 11:35:29'),(38,804450,'patna','Bihar','chanda chak kurthoul patna','parsa','parsa','Raj',9110189255,'Home',1,'2023-12-02 08:45:33','2023-12-02 08:45:33');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `brand_id` int NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(255) NOT NULL,
  `brand_type` varchar(255) NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'Good Vibes','Top Brands'),(2,'Maybelline','Top Brands'),(3,'Ny Bae','Top Brands'),(4,'Faces Canada','Top Brands'),(5,'Lakme','Top Brands'),(6,'Purplle','Top Brands'),(7,'Purplle1','Lower'),(8,'Purplle1','Lower'),(9,'Purplle1','Lower'),(10,'Purplle1','Lower'),(11,'Purplle2','Lower'),(12,'Purplle1','Top Brands'),(13,'Purplle3','Lower'),(14,'Purplle3','Top'),(15,'Purplle3','Top'),(16,'Purplle5','Top'),(17,'Purplle5','Top'),(18,'Purplle7','Top'),(19,'Purplle10','Top'),(20,'Purplle11','Top'),(21,'Purplle11','Top'),(22,'Purplle3','Top'),(23,'Purplle3','Top'),(24,'Purplle1','Lower');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carousels`
--

DROP TABLE IF EXISTS `carousels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carousels` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(255) NOT NULL,
  `place` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `product_categories` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carousels`
--

LOCK TABLES `carousels` WRITE;
/*!40000 ALTER TABLE `carousels` DISABLE KEYS */;
INSERT INTO `carousels` VALUES (16,'lakme','first','1695209131789-banner2.PNG','2023-09-20 11:25:31','2023-09-20 11:25:31','hair care'),(17,'goodvibes','first','1695209313609-banner4.PNG','2023-09-20 11:28:33','2023-09-20 11:28:33','ubtan'),(18,'lakme','third','1695209479330-Capture2.PNG','2023-09-20 11:31:19','2023-09-20 11:31:19','eyeshadow'),(19,'goodvibes','third','1695209592685-Capture3.PNG','2023-09-20 11:33:12','2023-09-20 11:33:12','suncreem'),(20,'lakme','third','1695209693575-Capture4.PNG','2023-09-20 11:34:53','2023-09-20 11:34:53','eyeshdow'),(21,'lakme','first','1695209865653-banner3.PNG','2023-09-20 11:37:45','2023-09-20 11:37:45','eyeshdow'),(22,'kkk','fiv','1701075088046-banner4.PNG','2023-11-27 08:51:28','2023-11-27 08:51:28','hhhh');
/*!40000 ALTER TABLE `carousels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cart_id` int NOT NULL AUTO_INCREMENT,
  `id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `id` (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`id`) REFERENCES `registrations` (`user_id`),
  CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cartitem`
--

DROP TABLE IF EXISTS `cartitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cartitem` (
  `cart_id` int NOT NULL AUTO_INCREMENT,
  `id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `id` (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `cartitem_ibfk_1` FOREIGN KEY (`id`) REFERENCES `registrations` (`user_id`),
  CONSTRAINT `cartitem_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartitem`
--

LOCK TABLES `cartitem` WRITE;
/*!40000 ALTER TABLE `cartitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `cartitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cetegories`
--

DROP TABLE IF EXISTS `cetegories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cetegories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categories_name` varchar(255) NOT NULL,
  `categories_id` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cetegories`
--

LOCK TABLES `cetegories` WRITE;
/*!40000 ALTER TABLE `cetegories` DISABLE KEYS */;
INSERT INTO `cetegories` VALUES (1,'Makeup',600,'2023-09-30 04:43:53','2023-09-30 04:43:11'),(2,'Skin Care',200,'2023-09-25 08:54:35','2023-09-25 08:54:35'),(3,'Hair Care',300,'2023-09-25 08:55:23','2023-09-25 08:55:23'),(4,'Appliances',400,'2023-09-25 08:56:27','2023-09-25 08:56:27'),(5,'Personal Care',500,'2023-09-25 08:56:53','2023-09-25 08:56:53'),(17,'Raaz9',2100,'2023-11-29 04:44:05','2023-11-29 04:44:05');
/*!40000 ALTER TABLE `cetegories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colors` (
  `color_id` int NOT NULL AUTO_INCREMENT,
  `color_name` varchar(255) NOT NULL,
  `color_code` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`color_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `subCetegories_name` varchar(255) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_id` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'Face Makeup','Primer',1,'2023-09-26 09:38:02','2023-09-26 09:38:02'),(2,'Face Makeup','Conclear',2,'2023-09-26 09:38:58','2023-09-26 09:38:58'),(3,'Face Makeup','Compact',3,'2023-09-26 09:39:32','2023-09-26 09:39:32'),(4,'Face Makeup','Bluce',4,'2023-09-26 09:39:55','2023-09-26 09:39:55'),(5,'Eyes Makeup','Eye liner',5,'2023-09-26 09:42:01','2023-09-26 09:42:01'),(6,'Eyes Makeup','Eye shadow',6,'2023-09-26 09:47:29','2023-09-26 09:47:29'),(7,'Eyes Makeup','Kajal',7,'2023-09-26 09:48:09','2023-09-26 09:48:09'),(9,'Clensers','Fashwas',14,'2023-09-27 09:00:25','2023-09-27 09:00:25'),(10,'Clensers','Clenser',15,'2023-09-27 09:00:45','2023-09-27 09:00:45'),(11,'Clensers','Facial',16,'2023-09-27 09:01:18','2023-09-27 09:01:18'),(12,'Marks','Sheet Marks',17,'2023-09-27 09:02:18','2023-09-27 09:02:18'),(13,'Marks','Face Marks',18,'2023-09-27 09:02:32','2023-09-27 09:02:32'),(16,'Marks','Face Marks1',22,'2023-11-29 09:57:20','2023-11-29 09:57:20');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offer`
--

DROP TABLE IF EXISTS `offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offer` (
  `offer_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `discountType` varchar(255) NOT NULL,
  `discountValue` float NOT NULL,
  `termsAndConditions` text NOT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`offer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offer`
--

LOCK TABLES `offer` WRITE;
/*!40000 ALTER TABLE `offer` DISABLE KEYS */;
INSERT INTO `offer` VALUES (1,'raaz','fdgfdgdffdgdgdfgfg','buy-one-get-one',20,'dsjjshhjhjd',1),(2,'raaz1','fdgfdgdffdgdgdfgfg','buy-one-get-one',10,'dsjjshhjhjd',1),(3,'raaz5','hk;oihknjb.jbv','buy-one-get-one',20,'dsjjshhjhjd',1),(4,'raaz5','n.kjkkk;l;\';>\",.mn,b','buy-one-get-one',23,'dsjjshhjhjd',1);
/*!40000 ALTER TABLE `offer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderItems`
--

DROP TABLE IF EXISTS `orderItems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderItems` (
  `orderItemId` int NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `orderId` varchar(255) NOT NULL,
  `product_id` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`orderItemId`),
  KEY `orderId` (`orderId`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `orderItems_ibfk_5` FOREIGN KEY (`orderId`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orderItems_ibfk_6` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderItems`
--

LOCK TABLES `orderItems` WRITE;
/*!40000 ALTER TABLE `orderItems` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderItems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderitems`
--

DROP TABLE IF EXISTS `orderitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderitems` (
  `orderItemId` int NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `orderId` varchar(255) NOT NULL,
  `product_id` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`orderItemId`),
  KEY `orderId` (`orderId`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `orderitems_ibfk_379` FOREIGN KEY (`orderId`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orderitems_ibfk_380` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitems`
--

LOCK TABLES `orderitems` WRITE;
/*!40000 ALTER TABLE `orderitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` varchar(255) NOT NULL,
  `CustomerAddress` json NOT NULL,
  `PaymentMethod` varchar(50) NOT NULL,
  `TransactionID` varchar(100) NOT NULL,
  `PaymentStatus` varchar(20) NOT NULL,
  `OrderStatus` varchar(20) NOT NULL,
  `shipped` tinyint(1) DEFAULT '0',
  `delivered` tinyint(1) DEFAULT '0',
  `ShippingCost` decimal(10,2) NOT NULL,
  `TrackingNumber` varchar(50) NOT NULL,
  `ExpectedDeliveryDate` datetime NOT NULL,
  `OrderDate` datetime NOT NULL,
  `TotalAmount` decimal(10,2) NOT NULL,
  `DiscountAmount` decimal(10,2) DEFAULT NULL,
  `user_id` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `registrationUserId` int DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`),
  KEY `registrationUserId` (`registrationUserId`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `registrations` (`user_id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`registrationUserId`) REFERENCES `registrations` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('AVIK-52-384128','{\"city\": \"patna\", \"state\": \"Bihar\", \"address\": \"parsa\", \"pincode\": 804450, \"user_id\": 1, \"landmark\": \"01\", \"createdAt\": \"2023-11-21T11:05:01.000Z\", \"updatedAt\": \"2023-11-21T11:05:01.000Z\", \"mobile_num\": 9110189252, \"address_type\": \"Home\", \"addresses_id\": 22, \"contact_name\": \"Raj\", \"house_flat_office_no\": \"01\"}','upi','ph12356748','confirmed','confirmed',0,0,0.00,'4567894321','2023-12-18 11:30:12','2023-12-18 11:30:12',75.00,25.00,1,'2023-12-11 11:30:12','2023-12-11 11:30:12',NULL),('AVIK-64629-55381','{\"city\": \"patna\", \"state\": \"Bihar\", \"address\": \"parsa\", \"pincode\": 804450, \"user_id\": 1, \"landmark\": \"01\", \"createdAt\": \"2023-11-21T11:05:01.000Z\", \"updatedAt\": \"2023-11-21T11:05:01.000Z\", \"mobile_num\": 9110189252, \"address_type\": \"Home\", \"addresses_id\": 22, \"contact_name\": \"Raj\", \"house_flat_office_no\": \"01\"}','upi','ph12356748','confirmed','confirmed',0,0,0.00,'4567894321','2023-12-18 11:38:44','2023-12-18 11:38:44',75.00,25.00,1,'2023-12-11 11:38:44','2023-12-11 11:38:44',NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_offer`
--

DROP TABLE IF EXISTS `product_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_offer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `productId` int NOT NULL,
  `offerId` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_offer`
--

LOCK TABLES `product_offer` WRITE;
/*!40000 ALTER TABLE `product_offer` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_offer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productoffer`
--

DROP TABLE IF EXISTS `productoffer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productoffer` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `offerId` int NOT NULL,
  `productId` int NOT NULL,
  PRIMARY KEY (`offerId`,`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productoffer`
--

LOCK TABLES `productoffer` WRITE;
/*!40000 ALTER TABLE `productoffer` DISABLE KEYS */;
INSERT INTO `productoffer` VALUES ('2023-12-18 06:43:06','2023-12-18 06:43:06',1,11),('2023-12-18 06:43:06','2023-12-18 06:43:06',1,12),('2023-12-18 07:09:09','2023-12-18 07:09:09',2,14),('2023-12-18 07:09:09','2023-12-18 07:09:09',2,15),('2023-12-19 04:07:30','2023-12-19 04:07:30',3,15),('2023-12-19 04:07:30','2023-12-19 04:07:30',3,16),('2023-12-19 04:07:30','2023-12-19 04:07:30',3,17),('2023-12-19 04:09:28','2023-12-19 04:09:28',4,18),('2023-12-19 04:09:28','2023-12-19 04:09:28',4,19),('2023-12-19 04:09:28','2023-12-19 04:09:28',4,20);
/*!40000 ALTER TABLE `productoffer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_categories` varchar(255) DEFAULT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `brand_id` int DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `product_description` text,
  `product_price` int DEFAULT NULL,
  `product_thumnail_img` varchar(255) DEFAULT NULL,
  `product_ad` tinyint(1) DEFAULT NULL,
  `count_in_stock` int DEFAULT '0',
  `offer` varchar(255) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `ideal_for` json DEFAULT NULL,
  `product_work_for` json DEFAULT NULL,
  `highlights` varchar(255) DEFAULT NULL,
  `product_expiry_date` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `product_all_img` json DEFAULT NULL,
  `lens_type` varchar(45) DEFAULT NULL,
  `frem_type` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (40,'','',NULL,'','wild new','',1499,'uploads/1730133991028-RJP_0652.JPG',0,0,'',NULL,20,NULL,NULL,'amazing screen glases',NULL,'2024-10-28 16:46:31','2024-10-28 16:46:31','[\"uploads/1730133990928-RJP_0649.JPG\", \"uploads/1730133990940-RJP_0650.JPG\", \"uploads/1730133990957-RJP_0651.JPG\", \"uploads/1730133990979-RJP_0652.JPG\", \"uploads/1730133991008-RJP_0653.JPG\"]','screen glases','round','for women'),(41,'','',NULL,'','wild new','',595,'uploads/1730134631349-RJP_0422.JPG',0,0,'',NULL,20,NULL,NULL,'amazing screen glases',NULL,'2024-10-28 16:57:11','2024-10-28 16:57:11','[\"uploads/1730134631235-RJP_0418.JPG\", \"uploads/1730134631249-RJP_0420.JPG\", \"uploads/1730134631265-RJP_0422.JPG\", \"uploads/1730134631281-RJP_0423.JPG\", \"uploads/1730134631301-RJP_0424.JPG\"]','eye glases','full rim','for women'),(42,'','',NULL,'','wild new','',1300,'uploads/1730135080465-RJP_0597.JPG',0,0,'',NULL,20,NULL,NULL,'amazing eye glases',NULL,'2024-10-28 17:04:40','2024-10-28 17:04:40','[\"uploads/1730135080358-RJP_0595.JPG\", \"uploads/1730135080370-RJP_0596.JPG\", \"uploads/1730135080383-RJP_0597.JPG\", \"uploads/1730135080398-RJP_0598.JPG\", \"uploads/1730135080445-RJP_0599.JPG\"]','eye glases','cat eye','for child'),(43,'','',NULL,'','wild new','',2100,'uploads/1730135341347-RJP_0503.JPG',0,0,'',NULL,20,NULL,NULL,'amazing eye glases',NULL,'2024-10-28 17:09:01','2024-10-28 17:09:01','[\"uploads/1730135341232-RJP_0498.JPG\", \"uploads/1730135341250-RJP_0499.JPG\", \"uploads/1730135341272-RJP_0501.JPG\", \"uploads/1730135341287-RJP_0502.JPG\", \"uploads/1730135341309-RJP_0503.JPG\"]','sun glases','square','for men'),(44,'','',NULL,'','wild new','',999,'uploads/1730135526441-RJP_0503.JPG',0,0,'',NULL,20,NULL,NULL,'amazing eye glases',NULL,'2024-10-28 17:12:06','2024-10-28 17:12:06','[\"uploads/1730135526336-RJP_0405.JPG\", \"uploads/1730135526349-RJP_0406.JPG\", \"uploads/1730135526363-RJP_0408.JPG\", \"uploads/1730135526379-RJP_0410.JPG\", \"uploads/1730135526401-RJP_0413.JPG\"]','dceyewr','avaiator','for men'),(45,'','',NULL,'','wild new','',899,'uploads/1730135627843-RJP_0640.JPG',0,0,'',NULL,20,NULL,NULL,'amazing eye glases',NULL,'2024-10-28 17:13:47','2024-10-28 17:13:47','[\"uploads/1730135627737-RJP_0638.JPG\", \"uploads/1730135627750-RJP_0639.JPG\", \"uploads/1730135627785-RJP_0640.JPG\", \"uploads/1730135627802-RJP_0641.JPG\", \"uploads/1730135627822-RJP_0642.JPG\"]','fasttrack','wayfarer','for men');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registrations`
--

DROP TABLE IF EXISTS `registrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registrations` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT 'GUEST',
  `mobile_num` varchar(255) NOT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `mobile_num` (`mobile_num`),
  UNIQUE KEY `mobile_num_2` (`mobile_num`),
  UNIQUE KEY `mobile_num_3` (`mobile_num`),
  UNIQUE KEY `mobile_num_4` (`mobile_num`),
  UNIQUE KEY `mobile_num_5` (`mobile_num`),
  UNIQUE KEY `mobile_num_6` (`mobile_num`),
  UNIQUE KEY `mobile_num_7` (`mobile_num`),
  UNIQUE KEY `mobile_num_8` (`mobile_num`),
  UNIQUE KEY `mobile_num_9` (`mobile_num`),
  UNIQUE KEY `mobile_num_10` (`mobile_num`),
  UNIQUE KEY `mobile_num_11` (`mobile_num`),
  UNIQUE KEY `mobile_num_12` (`mobile_num`),
  UNIQUE KEY `mobile_num_13` (`mobile_num`),
  UNIQUE KEY `mobile_num_14` (`mobile_num`),
  UNIQUE KEY `mobile_num_15` (`mobile_num`),
  UNIQUE KEY `mobile_num_16` (`mobile_num`),
  UNIQUE KEY `mobile_num_17` (`mobile_num`),
  UNIQUE KEY `mobile_num_18` (`mobile_num`),
  UNIQUE KEY `mobile_num_19` (`mobile_num`),
  UNIQUE KEY `mobile_num_20` (`mobile_num`),
  UNIQUE KEY `mobile_num_21` (`mobile_num`),
  UNIQUE KEY `mobile_num_22` (`mobile_num`),
  UNIQUE KEY `mobile_num_23` (`mobile_num`),
  UNIQUE KEY `mobile_num_24` (`mobile_num`),
  UNIQUE KEY `mobile_num_25` (`mobile_num`),
  UNIQUE KEY `mobile_num_26` (`mobile_num`),
  UNIQUE KEY `mobile_num_27` (`mobile_num`),
  UNIQUE KEY `mobile_num_28` (`mobile_num`),
  UNIQUE KEY `mobile_num_29` (`mobile_num`),
  UNIQUE KEY `mobile_num_30` (`mobile_num`),
  UNIQUE KEY `mobile_num_31` (`mobile_num`),
  UNIQUE KEY `mobile_num_32` (`mobile_num`),
  UNIQUE KEY `mobile_num_33` (`mobile_num`),
  UNIQUE KEY `mobile_num_34` (`mobile_num`),
  UNIQUE KEY `mobile_num_35` (`mobile_num`),
  UNIQUE KEY `mobile_num_36` (`mobile_num`),
  UNIQUE KEY `mobile_num_37` (`mobile_num`),
  UNIQUE KEY `mobile_num_38` (`mobile_num`),
  UNIQUE KEY `mobile_num_39` (`mobile_num`),
  UNIQUE KEY `mobile_num_40` (`mobile_num`),
  UNIQUE KEY `mobile_num_41` (`mobile_num`),
  UNIQUE KEY `mobile_num_42` (`mobile_num`),
  UNIQUE KEY `mobile_num_43` (`mobile_num`),
  UNIQUE KEY `mobile_num_44` (`mobile_num`),
  UNIQUE KEY `mobile_num_45` (`mobile_num`),
  UNIQUE KEY `mobile_num_46` (`mobile_num`),
  UNIQUE KEY `mobile_num_47` (`mobile_num`),
  UNIQUE KEY `mobile_num_48` (`mobile_num`),
  UNIQUE KEY `mobile_num_49` (`mobile_num`),
  UNIQUE KEY `mobile_num_50` (`mobile_num`),
  UNIQUE KEY `mobile_num_51` (`mobile_num`),
  UNIQUE KEY `mobile_num_52` (`mobile_num`),
  UNIQUE KEY `mobile_num_53` (`mobile_num`),
  UNIQUE KEY `mobile_num_54` (`mobile_num`),
  UNIQUE KEY `mobile_num_55` (`mobile_num`),
  UNIQUE KEY `mobile_num_56` (`mobile_num`),
  UNIQUE KEY `mobile_num_57` (`mobile_num`),
  UNIQUE KEY `mobile_num_58` (`mobile_num`),
  UNIQUE KEY `mobile_num_59` (`mobile_num`),
  UNIQUE KEY `mobile_num_60` (`mobile_num`),
  UNIQUE KEY `mobile_num_61` (`mobile_num`),
  UNIQUE KEY `mobile_num_62` (`mobile_num`),
  UNIQUE KEY `mobile_num_63` (`mobile_num`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registrations`
--

LOCK TABLES `registrations` WRITE;
/*!40000 ALTER TABLE `registrations` DISABLE KEYS */;
INSERT INTO `registrations` VALUES (1,'GUEST','09110189245',NULL,NULL,NULL,'2023-09-14 09:29:46','2023-09-14 09:29:46'),(2,'GUEST','9110189245',NULL,NULL,NULL,'2023-09-14 09:34:30','2023-09-14 09:34:30'),(3,'GUEST','9110189280',NULL,NULL,NULL,'2024-10-30 17:51:21','2024-10-30 17:51:21');
/*!40000 ALTER TABLE `registrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  `rating` float NOT NULL,
  `review_title` varchar(255) NOT NULL,
  `review_comment` varchar(255) NOT NULL,
  `review_img` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `review_ibfk_100` FOREIGN KEY (`user_id`) REFERENCES `registrations` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `review_ibfk_99` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller` (
  `seller_id` int NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) DEFAULT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `brand_usp` varchar(255) DEFAULT NULL,
  `marketplaces` varchar(255) DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`seller_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` VALUES (1,'softgenics','testing','mishra74881@gmial.com','Makeup, Skin Care, Hair, Appliances, Fragrance, Men\'s Personal Care, Accessories','testing','Nykaa, Myntra, Amazon, Flipkart','568374658','873568','$2b$08$ZbR5jHSM/c/ii8xSa1F62eV.FO8HSxARAH3lyqjK5Xsa2rOaF9Ng6',1),(2,'flipcard','kargo','mishra74881@gmail.com','Makeup, Skin Care, Appliances','mama earth','Nykaa, Myntra, Amazon, Flipkart','Ayush','8709345226','$2b$08$LZLMpL4tK0wtrICY/RjepuoiqogAVu8.t1x8WB6rV1pxnYNV7YwQG',1),(3,'raj','garniar','softgenic.raj123@gmail.com','Makeup, Skin Care','hhhhhh','Nykaa, Myntra','raj','09110189245','$2b$08$qeBLpEgR8cDryg7YRgz9vOLRFPT5IuK15PgauIwNT0CJPETYuo6ze',1),(4,'ragonline','kargo, lenin','mishra74881@gmail.com@gmail.com','Makeup, Skin Care, Hair, Accessories','no','Nykaa, Amazon','niraj','8709345226',NULL,0);
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subCetegories`
--

DROP TABLE IF EXISTS `subCetegories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subCetegories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categories_name` varchar(255) NOT NULL,
  `subCetegories_name` varchar(255) NOT NULL,
  `subCetegories_id` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subCetegories`
--

LOCK TABLES `subCetegories` WRITE;
/*!40000 ALTER TABLE `subCetegories` DISABLE KEYS */;
INSERT INTO `subCetegories` VALUES (1,'Makeup','Face Makeup',90,'2024-05-13 13:40:12','2024-05-13 13:40:12'),(2,'Makeup','Eyes Makeup',91,'2024-05-13 13:41:41','2024-05-13 13:41:41'),(3,'Makeup','Skin Care',93,'2024-05-13 13:42:20','2024-05-13 13:42:20'),(4,'Makeup','Hair Care',94,'2024-05-13 13:42:57','2024-05-13 13:42:57');
/*!40000 ALTER TABLE `subCetegories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcetegories`
--

DROP TABLE IF EXISTS `subcetegories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subcetegories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categories_name` varchar(255) NOT NULL,
  `subCetegories_name` varchar(255) NOT NULL,
  `subCetegories_id` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subCetegories_id_UNIQUE` (`subCetegories_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcetegories`
--

LOCK TABLES `subcetegories` WRITE;
/*!40000 ALTER TABLE `subcetegories` DISABLE KEYS */;
INSERT INTO `subcetegories` VALUES (1,'Makeup','Face Makeup',201,'2023-09-26 04:47:44','2023-09-26 04:47:44'),(2,'Makeup','Eyes Makeup',202,'2023-09-26 04:49:10','2023-09-26 04:49:10'),(3,'Makeup','Lip Makeup',204,'2023-09-26 04:49:28','2023-09-26 04:49:28'),(6,'Makeup','Brushes And Tools',208,'2023-09-26 05:08:42','2023-09-26 05:08:42'),(8,'Makeup','By Skin Tone',210,'2023-09-26 05:19:21','2023-09-26 05:19:21'),(9,'Skin Care','Clensers',310,'2023-09-27 08:57:03','2023-09-27 08:57:03'),(11,'Skin Care','Marks',311,'2023-09-27 08:57:28','2023-09-27 08:57:28'),(13,'Skin Care','Toner',312,'2023-09-27 08:57:49','2023-09-27 08:57:49');
/*!40000 ALTER TABLE `subcetegories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videos` (
  `video_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `like` int DEFAULT NULL,
  `shared` int DEFAULT NULL,
  `video_type` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) NOT NULL,
  `Videothumnail_id` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`video_id`),
  KEY `Videothumnail_id` (`Videothumnail_id`),
  CONSTRAINT `videos_ibfk_1` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_10` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_100` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_101` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_102` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_103` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_104` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_105` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_106` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_107` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_108` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_109` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_11` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_110` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_111` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_112` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_113` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_114` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_115` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_116` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_117` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_118` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_119` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_12` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_120` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_121` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_122` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_123` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_124` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_125` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_126` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_127` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_128` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_129` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_13` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_130` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_131` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_132` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_133` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_134` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_135` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_136` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_137` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_138` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_139` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_14` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_140` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_141` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_142` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_143` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_144` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_145` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_146` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_147` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_148` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_149` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_15` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_150` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_151` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_152` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_153` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_154` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_155` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_156` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_157` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_158` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_159` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_16` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_160` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_161` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_162` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_163` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_164` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_165` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_166` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_167` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_168` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_169` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_17` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_170` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_171` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_172` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_173` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_174` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_175` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_176` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_177` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_178` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_179` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_18` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_180` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_181` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_182` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_183` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_184` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_185` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_186` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_187` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_19` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_2` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_20` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_21` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_22` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_23` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_24` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_25` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_26` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_27` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_28` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_29` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_3` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_30` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_31` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_32` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_33` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_34` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_35` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_36` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_37` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_38` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_39` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_4` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_40` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_41` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_42` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_43` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_44` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_45` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_46` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_47` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_48` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_49` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_5` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_50` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_51` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_52` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_53` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_54` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_55` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_56` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_57` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_58` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_59` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_6` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_60` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_61` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_62` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_63` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_64` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_65` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_66` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_67` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_68` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_69` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_7` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_70` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_71` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_72` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_73` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_74` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_75` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_76` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_77` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_78` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_79` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_8` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_80` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_81` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_82` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_83` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_84` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_85` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_86` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_87` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_88` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_89` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_9` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_90` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_91` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_92` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_93` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_94` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_95` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_96` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_97` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_98` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `videos_ibfk_99` FOREIGN KEY (`Videothumnail_id`) REFERENCES `videothumnails` (`Videothumnail_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` VALUES (1,'hhhhhhhhhhhhhhhhhhhhhh','flfgzl',0,0,'Face Wash','video\\1702636504765-WhatsApp Video 2023-12-15 at 1.01.12 PM.mp4',10,'2023-12-15 10:35:05','2023-12-15 10:35:05'),(2,'hhhhhhhhhhhhhhhhhhhhhh','jdjjksdjkdjkdkjsdkjk',0,0,'Hair Care','video\\1702636559685-WhatsApp Video 2023-12-15 at 1.01.12 PM.mp4',10,'2023-12-15 10:36:00','2023-12-15 10:36:00'),(3,'hhhhhhhhhhhhhhhhhhhhhh','jdjjksdjkdjkdkjsdkjk',0,0,'Hair Care','video\\1702636578403-WhatsApp Video 2023-12-15 at 1.01.12 PM.mp4',10,'2023-12-15 10:36:18','2023-12-15 10:36:18'),(4,'hhhhhhhhhhhhhhhhhhhhhh','dsnjkdjk',0,0,'Face Wash','video\\1702636882307-WhatsApp Video 2023-12-15 at 1.01.12 PM.mp4',10,'2023-12-15 10:41:22','2023-12-15 10:41:22'),(5,'rrrrrrr','klnkjhvjgffhg',0,0,'Face Wash','video\\1702700207797-WhatsApp Video 2023-12-15 at 1.01.12 PM.mp4',11,'2023-12-16 04:16:48','2023-12-16 04:16:48');
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videothumnails`
--

DROP TABLE IF EXISTS `videothumnails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videothumnails` (
  `Videothumnail_id` int NOT NULL AUTO_INCREMENT,
  `thumbnail_url` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`Videothumnail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videothumnails`
--

LOCK TABLES `videothumnails` WRITE;
/*!40000 ALTER TABLE `videothumnails` DISABLE KEYS */;
INSERT INTO `videothumnails` VALUES (10,'uploads/1702613604206-banner5.PNG','2023-12-15 04:13:24','2023-12-15 04:13:24'),(11,'uploads/1702617923737-banner4.PNG','2023-12-15 05:25:23','2023-12-15 05:25:23'),(12,'uploads/1702624325175-banner2.PNG','2023-12-15 07:12:05','2023-12-15 07:12:05'),(13,'uploads/1702624377706-banner3.PNG','2023-12-15 07:12:57','2023-12-15 07:12:57');
/*!40000 ALTER TABLE `videothumnails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-02 17:10:02
