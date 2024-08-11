-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: cozyheavenstay
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_roles` (
  `admin_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  PRIMARY KEY (`admin_id`,`role_id`),
  KEY `FK3liyab508sfblqps0eqjhmjqk` (`role_id`),
  CONSTRAINT `FK3liyab508sfblqps0eqjhmjqk` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `FKc81vkimke52rrhcirn0mpdgdm` FOREIGN KEY (`admin_id`) REFERENCES `administrator` (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (5,2),(6,2),(7,2);
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrator` (
  `admin_id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES (5,'$2a$10$60atXzLllP1TOXWF0h310et6TOjEA.f1VF..UUul4jvJqFd0R/caW','Karan123','karan123@gmail.com'),(6,'$2a$10$Gmf9H749UQhlPMz66l1EUeboWstFBl0W9efO/KYUISW.c/8fwtWPa','Karan90','karan@gmail.com'),(7,'$2a$10$aOzDJoHTqHEL/0/6l2mmsONrdo7p6A6uGsIBm0uDIutyIuyUH8rna','Diya123','diya@email.com');
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel` (
  `hotel_id` bigint NOT NULL AUTO_INCREMENT,
  `amenities` varchar(255) DEFAULT NULL,
  `hotel_name` varchar(255) DEFAULT NULL,
  `hotel_owner_id` bigint DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `rating` double NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `owner_id` bigint DEFAULT NULL,
  PRIMARY KEY (`hotel_id`),
  KEY `FKi81wditgw8px4nxpuk5te0b8e` (`hotel_owner_id`),
  CONSTRAINT `FKi81wditgw8px4nxpuk5te0b8e` FOREIGN KEY (`hotel_owner_id`) REFERENCES `hotel_owner` (`owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES (5,'Free WIFI, Swimming Pool','Cozy Inn',NULL,'Near lake','Nainital','India',4,'Uttarakhand',NULL,NULL),(8,'Swimming Pool, Free Wi-Fi,  Bicycle Rental,  Restaurant , Pet Friendly, Comfortable Beds ,Shower , Parking , Non-Smoking','Sunrise Retreat Resort',NULL,'Mall Road Mallitaal','Nainital','India',4,'Uttarakhand',NULL,NULL),(50,'Swimming Pool, Free Wi-Fi,  Bicycle Rental,  Restaurant , Pet Friendly, Comfortable Beds ,Shower , Parking , Non-Smoking','Karan Inn',4,'Dehradun','Dehradun','India',5,'Uttarakhand',NULL,4),(55,'Swimming Pool, Free Wi-Fi,  Bicycle Rental,  Restaurant , Pet Friendly, Comfortable Beds ,Shower , Parking , Non-Smoking','Sunrise Retreat Resort',4,'Mall Road Mallitaal','Nainital','India',4,'Uttarakhand',NULL,4),(56,'Swimming Pool, Free Wi-Fi,  Bicycle Rental,  Restaurant , Pet Friendly, Comfortable Beds ,Shower , Parking , Non-Smoking','Paradise Inn',4,'Mall Road Mallitaal','Nainital','India',5,'Uttarakhand',NULL,4),(57,'Swimming Pool, Free Wi-Fi,  Bicycle Rental,  Restaurant , Pet Friendly, Comfortable Beds ,Shower , Parking , Non-Smoking','Karan Inn',4,'Dehradun','Dehradun','India',5,'Uttarakhand',NULL,4);
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_owner`
--

DROP TABLE IF EXISTS `hotel_owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel_owner` (
  `owner_id` bigint NOT NULL AUTO_INCREMENT,
  `hotel_id` bigint DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_owner`
--

LOCK TABLES `hotel_owner` WRITE;
/*!40000 ALTER TABLE `hotel_owner` DISABLE KEYS */;
INSERT INTO `hotel_owner` VALUES (4,5,'$2a$10$FmQ4.OhyIYnuPiiwWch2yORt/bzYFjUcj3v0bR0oO8GkYwc.H4A.G','Karan101','karan101@email.com'),(5,NULL,'$2a$10$ED5H8vNWuFWEqvH9n5DEau/8LAVOphxTbrHoxpAXPLGqEBB85N5B.','Diya','diya@email.com');
/*!40000 ALTER TABLE `hotel_owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner_roles`
--

DROP TABLE IF EXISTS `owner_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owner_roles` (
  `owner_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  PRIMARY KEY (`owner_id`,`role_id`),
  KEY `FKsi7y1047bfnqf5v2w4uuh3y6i` (`role_id`),
  CONSTRAINT `FKj4cje9hjm7abq4b5mihyiwa7o` FOREIGN KEY (`owner_id`) REFERENCES `hotel_owner` (`owner_id`),
  CONSTRAINT `FKsi7y1047bfnqf5v2w4uuh3y6i` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner_roles`
--

LOCK TABLES `owner_roles` WRITE;
/*!40000 ALTER TABLE `owner_roles` DISABLE KEYS */;
INSERT INTO `owner_roles` VALUES (4,3),(5,3);
/*!40000 ALTER TABLE `owner_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `reservation_id` bigint NOT NULL AUTO_INCREMENT,
  `check_in_date` datetime(6) DEFAULT NULL,
  `check_out_date` datetime(6) DEFAULT NULL,
  `no_of_adults` int NOT NULL,
  `no_of_childrens` int NOT NULL,
  `no_of_rooms` int NOT NULL,
  `room_id` bigint DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `total_fare` double NOT NULL,
  `administrator_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`reservation_id`),
  KEY `FKk0p1r4eomlftpgp6l8byti66d` (`administrator_id`),
  KEY `FKm4oimk0l1757o9pwavorj6ljg` (`user_id`),
  CONSTRAINT `FKk0p1r4eomlftpgp6l8byti66d` FOREIGN KEY (`administrator_id`) REFERENCES `administrator` (`admin_id`),
  CONSTRAINT `FKm4oimk0l1757o9pwavorj6ljg` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,'2024-03-01 14:00:00.000000','2024-03-05 11:00:00.000000',2,1,2,1,'Pending',0,NULL,4),(3,'2024-02-17 10:00:00.000000','2024-02-20 10:00:00.000000',1,0,1,1,'CONFIRMED',4000,NULL,NULL),(4,'2024-02-17 10:00:00.000000','2024-02-20 10:00:00.000000',1,0,1,1,'CONFIRMED',4000,NULL,NULL),(13,'2024-03-16 17:45:00.000000','2024-03-16 17:47:00.000000',2,1,2,NULL,'BOOKED',1000,NULL,45),(14,'2024-03-16 17:45:00.000000','2024-03-16 17:47:00.000000',2,1,2,NULL,'BOOKED',1000,NULL,45),(15,'2024-03-16 17:45:00.000000','2024-03-16 17:47:00.000000',2,1,2,NULL,'BOOKED',1000,NULL,45),(16,'2024-03-16 19:30:00.000000','2024-03-16 19:32:00.000000',2,1,2,NULL,'BOOKED',1000,NULL,45),(17,'2024-03-16 19:30:00.000000','2024-03-16 19:32:00.000000',2,1,2,NULL,'BOOKED',1000,NULL,45),(19,'2024-03-16 19:30:00.000000','2024-03-16 19:32:00.000000',2,1,2,2,'BOOKED',1000,NULL,NULL),(20,'2024-03-16 19:30:00.000000','2024-03-16 19:32:00.000000',2,1,2,42,'BOOKED',1000,NULL,NULL),(21,'2024-03-16 20:42:00.000000','2024-03-16 20:43:00.000000',2,1,2,3,'BOOKED',1000,NULL,NULL),(22,'2024-03-16 20:42:00.000000','2024-03-16 20:43:00.000000',2,1,2,43,'BOOKED',1000,NULL,NULL),(23,'2024-03-17 15:57:00.000000','2024-03-17 15:58:00.000000',2,1,2,NULL,'BOOKED',1000,NULL,45),(24,'2024-03-17 15:57:00.000000','2024-03-17 15:58:00.000000',2,1,2,4,'BOOKED',1000,NULL,45),(25,'2024-03-17 15:57:00.000000','2024-03-17 15:58:00.000000',2,1,2,5,'BOOKED',1000,NULL,45),(26,'2024-03-17 15:57:00.000000','2024-03-17 15:58:00.000000',2,1,2,6,'BOOKED',1000,NULL,45),(27,'2024-03-17 15:57:00.000000','2024-03-17 15:58:00.000000',2,1,2,7,'BOOKED',1000,NULL,45),(28,'2024-03-17 15:57:00.000000','2024-03-17 15:58:00.000000',2,1,2,8,'BOOKED',1000,NULL,45),(29,'2024-03-17 15:57:00.000000','2024-03-17 15:58:00.000000',2,1,2,9,'BOOKED',1000,NULL,45),(30,'2024-03-17 15:57:00.000000','2024-03-17 15:58:00.000000',2,1,2,10,'BOOKED',1000,NULL,45),(31,'2024-03-17 15:57:00.000000','2024-03-17 15:58:00.000000',2,1,2,11,'BOOKED',1000,NULL,45),(32,'2024-03-17 15:57:00.000000','2024-03-17 15:58:00.000000',2,1,2,12,'BOOKED',1000,NULL,45),(33,'2024-03-17 15:57:00.000000','2024-03-17 15:58:00.000000',2,1,2,13,'BOOKED',1000,NULL,45),(34,'2024-03-17 15:57:00.000000','2024-03-17 15:58:00.000000',2,1,2,14,'BOOKED',1000,NULL,45),(35,'2024-03-17 15:57:00.000000','2024-03-17 15:58:00.000000',2,1,2,15,'BOOKED',1000,NULL,45),(36,'2024-03-17 15:57:00.000000','2024-03-17 15:58:00.000000',2,1,2,16,'BOOKED',1000,NULL,45),(37,'2024-03-17 15:57:00.000000','2024-03-17 15:58:00.000000',2,1,2,17,'BOOKED',1000,NULL,45),(48,'2024-03-18 16:14:00.000000','2024-03-18 16:15:00.000000',2,1,1,3,'BOOKED',0,NULL,NULL),(49,'2024-03-18 16:14:00.000000','2024-03-18 16:15:00.000000',2,1,2,4,'CONFIRMED',0,NULL,45),(50,'2024-03-18 16:14:00.000000','2024-03-18 16:15:00.000000',2,1,1,5,'CONFIRMED',0,NULL,45),(51,'2024-03-18 16:14:00.000000','2024-03-18 16:15:00.000000',2,1,1,6,'CONFIRMED',0,NULL,45),(52,'2024-03-18 16:14:00.000000','2024-03-18 16:15:00.000000',2,1,1,7,'CONFIRMED',0,NULL,45),(53,'2024-03-18 16:14:00.000000','2024-03-18 16:15:00.000000',2,1,1,8,'CONFIRMED',0,NULL,45),(54,'2024-03-18 16:14:00.000000','2024-03-18 16:15:00.000000',2,1,1,9,'CONFIRMED',0,NULL,45),(55,'2024-03-18 16:14:00.000000','2024-03-18 16:15:00.000000',2,1,1,10,'CONFIRMED',0,NULL,45),(56,'2024-03-18 16:14:00.000000','2024-03-18 16:15:00.000000',2,1,1,14,'CONFIRMED',0,NULL,45),(57,'2024-03-18 16:14:00.000000','2024-03-18 16:15:00.000000',2,1,1,17,'CONFIRMED',0,NULL,45),(58,'2024-03-18 16:14:00.000000','2024-03-18 16:15:00.000000',2,1,1,18,'CONFIRMED',0,NULL,45),(59,'2024-03-18 16:14:00.000000','2024-03-18 16:15:00.000000',2,1,1,3,'CONFIRMED',0,NULL,45),(60,'2024-03-18 16:14:00.000000','2024-03-18 16:15:00.000000',2,1,1,4,'CONFIRMED',2000,NULL,45),(61,'2024-03-18 16:14:00.000000','2024-03-18 16:15:00.000000',4,0,1,3,'CONFIRMED',2000,NULL,45),(62,'2024-03-16 17:10:00.000000','2024-03-17 17:11:00.000000',4,0,1,4,'CONFIRMED',2000,NULL,45),(63,'2024-03-12 17:10:00.000000','2024-03-14 17:11:00.000000',4,0,1,5,'CONFIRMED',2000,NULL,45),(64,'2024-03-12 17:10:00.000000','2024-03-14 17:11:00.000000',4,0,1,6,'CONFIRMED',2000,NULL,45),(65,'2024-03-12 17:10:00.000000','2024-03-14 17:11:00.000000',4,0,1,7,'CONFIRMED',2000,NULL,45),(66,'2024-03-12 17:10:00.000000','2024-03-14 17:11:00.000000',4,0,1,8,'CONFIRMED',2000,NULL,45),(67,'2024-03-19 00:00:00.000000','2024-03-20 00:00:00.000000',1,0,1,3,'CONFIRMED',0,NULL,45),(68,'2024-03-12 17:10:00.000000','2024-03-14 17:11:00.000000',4,0,1,4,'CONFIRMED',2000,NULL,45),(69,'2024-03-12 17:10:00.000000','2024-03-14 17:11:00.000000',4,0,1,5,'CONFIRMED',2000,NULL,45),(70,'2024-03-19 00:00:00.000000','2024-03-20 00:00:00.000000',1,2,1,6,'CONFIRMED',0,NULL,45),(71,'2024-03-18 00:00:00.000000','2024-03-20 00:00:00.000000',1,0,1,7,'CONFIRMED',0,NULL,45),(72,'2024-03-18 00:00:00.000000','2024-03-21 00:00:00.000000',1,0,1,8,'CONFIRMED',0,NULL,45),(73,'2024-03-18 00:00:00.000000','2024-03-20 00:00:00.000000',1,0,1,9,'CONFIRMED',4400,NULL,45),(74,'2024-03-18 00:00:00.000000','2024-03-21 00:00:00.000000',1,0,1,10,'CONFIRMED',6600,NULL,45),(75,'2024-03-20 00:00:00.000000','2024-03-23 00:00:00.000000',3,0,1,2,'CONFIRMED',92340,NULL,45),(76,'2024-03-19 00:00:00.000000','2024-03-29 00:00:00.000000',1,0,1,31,'CONFIRMED',47000,NULL,45),(77,'2024-03-19 00:00:00.000000','2024-03-21 00:00:00.000000',1,0,1,3,'CONFIRMED',4400,NULL,45),(78,'2024-03-20 00:00:00.000000','2024-03-22 00:00:00.000000',1,0,1,4,'CONFIRMED',4400,NULL,45);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation_room`
--

DROP TABLE IF EXISTS `reservation_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation_room` (
  `reservation_id` bigint NOT NULL,
  `room_id` bigint NOT NULL,
  KEY `FKe368pj2d58a8xx37fk8p6k1jl` (`room_id`),
  KEY `FK1p8c0gdgl9nnw8g3mavqchw2j` (`reservation_id`),
  CONSTRAINT `FK1p8c0gdgl9nnw8g3mavqchw2j` FOREIGN KEY (`reservation_id`) REFERENCES `reservation` (`reservation_id`),
  CONSTRAINT `FKe368pj2d58a8xx37fk8p6k1jl` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation_room`
--

LOCK TABLES `reservation_room` WRITE;
/*!40000 ALTER TABLE `reservation_room` DISABLE KEYS */;
INSERT INTO `reservation_room` VALUES (13,38),(13,41),(14,38),(14,41),(15,38),(15,41),(16,38),(16,41),(17,8),(17,42),(23,38),(23,41),(24,38),(24,41),(25,38),(25,41),(26,38),(26,41),(27,38),(27,41),(28,38),(28,41),(29,38),(29,41),(30,38),(30,41),(31,38),(31,41),(32,38),(32,41),(33,38),(33,41),(34,38),(34,41),(35,38),(35,41),(36,38),(36,41),(37,38),(37,41);
/*!40000 ALTER TABLE `reservation_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `review_id` bigint NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) DEFAULT NULL,
  `hotel_id` bigint DEFAULT NULL,
  `rating` int NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `hotel_hotel_id` bigint DEFAULT NULL,
  `user_user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`review_id`),
  KEY `FKsla20i6hr9xp4i0i3ml72wmw2` (`hotel_hotel_id`),
  KEY `FK5bhefci502sd63299f0mw09t7` (`user_user_id`),
  CONSTRAINT `FK5bhefci502sd63299f0mw09t7` FOREIGN KEY (`user_user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKsla20i6hr9xp4i0i3ml72wmw2` FOREIGN KEY (`hotel_hotel_id`) REFERENCES `hotel` (`hotel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ROLE_USER'),(2,'ROLE_ADMIN'),(3,'ROLE_OWNER');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `room_id` bigint NOT NULL AUTO_INCREMENT,
  `ac_status` bit(1) NOT NULL,
  `availability` enum('AVAILABLE','BOOKED','RESERVED','UNDER_MAINTENANCE') DEFAULT NULL,
  `base_fare` double NOT NULL,
  `bed_type` varchar(255) DEFAULT NULL,
  `max_occupancy` int NOT NULL,
  `room_number` varchar(255) DEFAULT NULL,
  `room_type` enum('STANDARD','DELUXE','SUITE') DEFAULT NULL,
  `hotel_id` bigint DEFAULT NULL,
  PRIMARY KEY (`room_id`),
  KEY `FKdosq3ww4h9m2osim6o0lugng8` (`hotel_id`),
  CONSTRAINT `FKdosq3ww4h9m2osim6o0lugng8` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`),
  CONSTRAINT `room_chk_1` CHECK ((`room_type` between 0 and 3))
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,_binary '','AVAILABLE',100,'King',2,'101','DELUXE',50),(2,_binary '','BOOKED',2500,'DOUBLE',3,'100','STANDARD',50),(3,_binary '','BOOKED',2000,'Single',4,'101','STANDARD',50),(4,_binary '','BOOKED',2000,'Single',4,'101','STANDARD',50),(5,_binary '','AVAILABLE',2000,'Single',4,'101','STANDARD',50),(6,_binary '','AVAILABLE',2000,'Single',4,'101','STANDARD',50),(7,_binary '','AVAILABLE',2000,'Single',4,'101','STANDARD',50),(8,_binary '','AVAILABLE',2000,'Single',4,'101','STANDARD',50),(9,_binary '','AVAILABLE',2000,'Single',4,'101','STANDARD',50),(10,_binary '','AVAILABLE',2000,'Single',4,'102','STANDARD',50),(11,_binary '','AVAILABLE',2500,'DOUBLE',4,'100','STANDARD',50),(12,_binary '','AVAILABLE',2500,'DOUBLE',4,'100','STANDARD',50),(13,_binary '','AVAILABLE',2500,'DOUBLE',4,'100','STANDARD',50),(14,_binary '','AVAILABLE',2000,'Single',4,'101','STANDARD',50),(15,_binary '','AVAILABLE',2500,'DOUBLE',4,'100','STANDARD',50),(16,_binary '','AVAILABLE',3000,'KING',4,'104','STANDARD',50),(17,_binary '','AVAILABLE',2000,'Single',4,'101','STANDARD',50),(18,_binary '','AVAILABLE',2000,'SINGLE',4,'108','STANDARD',50),(20,_binary '','AVAILABLE',2000,'SINGLE',4,'109','STANDARD',50),(21,_binary '','AVAILABLE',2000,'SINGLE',4,'105','STANDARD',50),(22,_binary '','AVAILABLE',2000,'SINGLE',4,'110','STANDARD',50),(23,_binary '\0','AVAILABLE',0,'SINGLE',4,'111','STANDARD',50),(24,_binary '','AVAILABLE',2500,'DOUBLE',4,'111','STANDARD',50),(25,_binary '','AVAILABLE',2500,'DOUBLE',4,'111','STANDARD',50),(26,_binary '','AVAILABLE',2500,'DOUBLE',4,'111','STANDARD',50),(27,_binary '','AVAILABLE',2500,'DOUBLE',4,'111','STANDARD',50),(28,_binary '','AVAILABLE',2500,'DOUBLE',4,'112','STANDARD',50),(29,_binary '','AVAILABLE',2500,'DOUBLE',4,'113','STANDARD',50),(31,_binary '','BOOKED',3700,'DOUBLE',4,'200','DELUXE',50),(33,_binary '','AVAILABLE',1000,'SINGLE',4,'105','DELUXE',50),(34,_binary '','AVAILABLE',1000,'SINGLE',4,'105','DELUXE',50),(35,_binary '','AVAILABLE',2200,'SINGLE',4,'115','STANDARD',50),(36,_binary '','AVAILABLE',2200,'SINGLE',4,'116','STANDARD',50),(37,_binary '','AVAILABLE',3200,'SINGLE',4,'201','DELUXE',50),(38,_binary '','AVAILABLE',2700,'DOUBLE',2,'202','STANDARD',50),(39,_binary '','AVAILABLE',200,NULL,4,'203','STANDARD',50),(40,_binary '','AVAILABLE',2200,'SINGLE',4,'101','STANDARD',55),(41,_binary '','AVAILABLE',3700,'DOUBLE',4,'204','DELUXE',50),(42,_binary '','AVAILABLE',5700,'KING',2,'102','DELUXE',55),(43,_binary '','AVAILABLE',4700,'KING',2,'103','DELUXE',55),(44,_binary '','AVAILABLE',5700,'KING',2,'104','DELUXE',55),(45,_binary '','AVAILABLE',5700,'KING',2,'105','DELUXE',55),(46,_binary '','AVAILABLE',2000,'Single',4,'301','DELUXE',50),(47,_binary '','AVAILABLE',7500,'KING',2,'106','SUITE',55),(48,_binary '','AVAILABLE',4700,'DOUBLE',4,'107','DELUXE',55),(49,_binary '\0','AVAILABLE',7300,NULL,4,'108',NULL,55),(50,_binary '','AVAILABLE',2200,'SINGLE',4,'302','STANDARD',50),(51,_binary '','AVAILABLE',2200,'SINGLE',4,'109','STANDARD',55),(52,_binary '','AVAILABLE',4700,'SINGLE',4,'110','DELUXE',55),(53,_binary '','AVAILABLE',7500,'KING',4,'111','SUITE',55),(54,_binary '','AVAILABLE',2700,'DOUBLE',4,'101','STANDARD',56);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `roles` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (4,'123 Main Street, City','1234567890','example@example.com','Male',NULL,'example_user','123 Main Street, City'),(5,'123 Street, City','1234567890','user1@example.com','Male','password1','user1',NULL),(6,'123 Street, City','1234567890','user1@example.com','Male','password1','user1',NULL),(26,'nainital','8907654321','karannayal1890@gmail.com','male','$2a$10$0e0DM8CiGTAvOqQa24YxmOGTlsD2tRWNBSg1552F9WNs4xkWnMQ5O','User0989',NULL),(27,'Bhowali, Nainital, India','9078563412','karan1@gmail.com','male','$2a$10$NcwNaDB0EY28rPMdMt10FuEPPStuSGAbRTpMxCjZsA9urTr5eiCt6','Karan',NULL),(28,'Bhowali, Nainital, India','9078563411','karan2@gmail.com','male','$2a$10$/p00zc9A.UXCeMYKU990.eVSBmME5LbY2eboBd59lgXF9fzLZ9Wby','Karan12',NULL),(29,'Haldwani, Nainital, India','9078563491','diya@gmail.com','female','$2a$10$9.18Qho5xSG/fuxnmQhjDe5PgVTtauyABd8RlDOkeavjfZpnFpjfm','Diya',NULL),(30,'Haldwani, Nainital, India','9078563491','diya1@gmail.com','female','$2a$10$eK2iGYvLU59BEnHE2BlKjuIST1JNoJO5sbu2T/8FgjPjb6Nim6N4S','Diya1',NULL),(31,'Haldwani, Nainital, India','9078563491','diya2@gmail.com','female','$2a$10$UY6gPowGyFP4GhQS86syN.3sbkBtznUxFniBQGWmInDj74zz0ZAJm','Diya2',NULL),(32,'Haldwani, Nainital, India','9078563491','diya3@gmail.com','female','$2a$10$BE8NQC69bYZR6RA7hAfnXu7dsOprTgYsvKLeEDzCjxhdoVmGLDT86','Diyoo',NULL),(33,'Haldwani, Nainital, India','9078563491','diya4@gmail.com','female','$2a$10$CuZZt8sNtkbzs.xju7JXzeeTajjDzN76UnD15i8ZrtNgSiXF55HSW','Diyioo',NULL),(34,'Haldwani, Nainital, India','9078563491','diya5@gmail.com','female','$2a$10$S7EviyIs5hs6x2IiOLJXHur0H.2OvrXzFFZW2q0hbK8SJEFTGDQ3.','Diyio',NULL),(35,'Haldwani, Nainital, India','9078563491','diya6@gmail.com','female','$2a$10$5dleHnVw/5D7KaeynMM6Ku9vYlMlcHI3MKDGKpo90TJ9gUtvv1rX6','Diyiio',NULL),(36,'Haldwani, Nainital, India','9078563491','diya7@gmail.com','female','$2a$10$Sx3M0.xDGhfMpVol5/ziXOiONVW/f1TiveMoPamaeP3BU/XxSWbxe','Diy',NULL),(37,'Haldwani, Nainital, India','9078563491','diya8@gmail.com','female','$2a$10$SjZgH65uUEePiLDklO/EceA/go9Q/LeDyZVgOLR1pT14tbOfz0sZu','Dipp',NULL),(38,'Haldwani, Nainital, India','9078563491','diya9@gmail.com','female','$2a$10$byCa1IE.EsfAtGxBQLoHueAwrk90.FVPWgZcwabaSDZbOipiqSN4y','Deepp',NULL),(39,'Haldwani, Nainital, India','9078563491','diya10@gmail.com','female','$2a$10$L1/KhM82JhxTanWQlcbZs.ARG3ie3lx1jTYoLJIp9kRfDJf.hkiSi','Depp',NULL),(40,'nainital','8967453729','karannayal189@gmail.com','male','$2a$10$pOwOSRaHmq/IHKYnroB2U.fhD.8Jq5Hj..vd/WK.VY8VYH/6PsRtK','User098',NULL),(41,'Haldwani, Nainital, India','9078563471','diya11@gmail.com','female','$2a$10$93JYMXOhmr8RM1biY9T4juVccMMH3AUC34jwo4Cy8hhywIXxG64Ua','Diya123',NULL),(42,'Haldwani, Nainital, India','9078563473','diya12@gmail.com','female','$2a$10$cMyrd5NGAXzcJeD8463wOO3sZB.6TIkE5U.CQwKLrIo/8gZ5TL/.y','DiyaOwner',NULL),(44,'Dehradun','8976312890','user101@gmail.com','male','$2a$10$SDqerBiw.X86TFu4/tdL8.Nf7pX3JKfNpRnYr0LRkP75POPNn7Y8m','User101',NULL),(45,'nainital','8906790456','prashant@gmail.com','male','$2a$10$5YTcSC0BpkTjm35.DjNaKO82zsNgpqGSePVT/2QWA2r0PpzBfa0WO','Prashant1',NULL),(46,'nainital','7894578963','prashant1@gmail.com','male','$2a$10$7aPV7imgqeS7myxvsS01ZOVLTHZAx3B7GvBnVQHYVlQq53SOP3Hpa','Prashant2',NULL),(49,'Nainital','7896523456','User1@email.com','male','$2a$10$kbQwSsw2K7etfrC8l/wDsuer4u77RwsHsEit.askTN0jdK7odsFj6','User12',NULL),(50,'Haldwani','897685489','Siya@gmail.com','female','$2a$10$.QQxgsDUuINojYALoVC6r.6BA8KbzNPvZP9p5tup10kdXCTUmBfii','Siya',NULL),(51,'Delhi','6789045673','user123@email.com','male','$2a$10$55TAFgaH7ebMTPaxKhG.P.SI.kStYm4qvOd0SEPe7mEQK4O4TGRW.','User123',NULL),(52,'Nakuchiyataal','8796543789','user1234@email.com','male','$2a$10$grrJ4sQm4UbrkJ0YETviieDOTSnV7VbBHbOANfjS2flQ33NPMoMuS','User1234',NULL),(58,'Thalambur','7890634567','jk18@mail.com','male','$2a$10$S5lPry7VCJ8U/il.G1bNPezmtcW2yBfZlPWcEkVx2G0Vtaz4yS0i6','JK',NULL),(59,'Kerela','9012389045','jk19@mail.com','male','$2a$10$1Nx.G0/fjk/m9VkQgt7ul.3x5xM7deHi0td/xy/TPZYf3PUZ0Imum','JK1',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_roles` (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKj6m8fwv7oqv74fcehir1a9ffy` (`role_id`),
  CONSTRAINT `FKgd3iendaoyh04b95ykqise6qh` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKj6m8fwv7oqv74fcehir1a9ffy` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles`
--

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` VALUES (26,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(44,1),(45,1),(46,1),(49,1),(50,1),(51,1),(52,1),(58,1),(59,1),(27,2),(29,2),(28,3),(42,3);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-11 16:51:01
