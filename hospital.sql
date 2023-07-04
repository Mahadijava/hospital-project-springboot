-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: hospitaldb
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `id` bigint NOT NULL,
  `last_updated_at` datetime(6) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `last_updated_by` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `appointment_date` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `doctor_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `patient_address` varchar(255) DEFAULT NULL,
  `patient_name` varchar(255) DEFAULT NULL,
  `patient_phone` varchar(255) DEFAULT NULL,
  `recommendation` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (5,'2023-04-30 14:57:03.013000',_binary '','2023-04-30 14:57:03.013000',NULL,NULL,'25','2023-04-23','Cardiology','Nazim Hossain','Male','Dhaka','A','415454',NULL,NULL),(6,'2023-04-30 15:17:09.697000',_binary '','2023-04-30 15:17:09.697000',NULL,NULL,'25','2023-04-10','Neurology','Mahadi Hasan','Male','sdfdasf','B','852828','No Recommendation','Pending');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bed_type`
--

DROP TABLE IF EXISTS `bed_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bed_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bed_type` varchar(45) DEFAULT NULL,
  `bed_price` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bed_type`
--

LOCK TABLES `bed_type` WRITE;
/*!40000 ALTER TABLE `bed_type` DISABLE KEYS */;
INSERT INTO `bed_type` VALUES (1,'Single Cabin (AC)',2500),(2,'Single Cabin (Non AC)',2000),(3,'Double Bed (AC)',5000),(4,'Double Bed (Non AC)',4000),(5,'Ward (AC)',1000),(6,'Ward (Non AC)',700);
/*!40000 ALTER TABLE `bed_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billing_patient`
--

DROP TABLE IF EXISTS `billing_patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billing_patient` (
  `id` bigint NOT NULL,
  `last_updated_at` datetime(6) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `last_updated_by` varchar(255) DEFAULT NULL,
  `admission_date` datetime(6) DEFAULT NULL,
  `age` bigint DEFAULT NULL,
  `bed_bill` bigint DEFAULT NULL,
  `cabin_price` bigint DEFAULT NULL,
  `cabin_type` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `discount` bigint DEFAULT NULL,
  `doctor_charge` bigint DEFAULT NULL,
  `doctor_name` varchar(255) DEFAULT NULL,
  `doctor_visit` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `medicine` varchar(255) DEFAULT NULL,
  `medicine_price` bigint DEFAULT NULL,
  `patient_address` varchar(255) DEFAULT NULL,
  `patient_case` varchar(255) DEFAULT NULL,
  `patient_name` varchar(255) DEFAULT NULL,
  `patient_phone` varchar(255) DEFAULT NULL,
  `release_date` datetime(6) DEFAULT NULL,
  `room_number` varchar(255) DEFAULT NULL,
  `staying_days` bigint DEFAULT NULL,
  `surgery_cost` bigint DEFAULT NULL,
  `surgery_details` varchar(255) DEFAULT NULL,
  `total` bigint DEFAULT NULL,
  `visit_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing_patient`
--

LOCK TABLES `billing_patient` WRITE;
/*!40000 ALTER TABLE `billing_patient` DISABLE KEYS */;
/*!40000 ALTER TABLE `billing_patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cabin`
--

DROP TABLE IF EXISTS `cabin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cabin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `room_number` varchar(45) DEFAULT NULL,
  `cabin_type` varchar(45) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cabin`
--

LOCK TABLES `cabin` WRITE;
/*!40000 ALTER TABLE `cabin` DISABLE KEYS */;
INSERT INTO `cabin` VALUES (1,'SAC-101','Single Cabin (AC)',2500,1),(2,'SAC-102','Single Cabin (AC)',2500,1),(3,'SAC-103','Single Cabin (AC)',2500,1),(4,'SAC-104','Single Cabin (AC)',2500,1),(5,'SNAC-201','Single Cabin (Non AC)',2000,1),(6,'SNAC-202','Single Cabin (Non AC)',2000,1),(7,'SNAC-203','Single Cabin (Non AC)',2000,1),(8,'SNAC-204','Single Cabin (Non AC)',2000,1),(9,'DBAC-301','Double Bed (AC)',5000,1),(10,'DBAC-302','Double Bed (AC)',5000,1),(11,'DBAC-303','Double Bed (AC)',5000,1),(12,'DBAC-304','Double Bed (AC)',5000,1),(13,'DBNAC-401','Double Bed (Non AC)',4000,1),(14,'DBNAC-402','Double Bed (Non AC)',4000,1),(15,'DBNAC-403','Double Bed (Non AC)',4000,1),(16,'DBNAC-404','Double Bed (Non AC)',4000,1),(17,'ACW-500','Ward (AC)',1000,1),(18,'ACW-501','Ward (AC)',1000,1),(19,'ACW-502','Ward (AC)',1000,1),(20,'ACW-503','Ward (AC)',1000,1),(21,'ACW-504','Ward (AC)',1000,1),(22,'ACW-505','Ward (AC)',1000,1),(23,'NACW-600','Ward (Non AC)',700,1),(24,'NACW-601','Ward (Non AC)',700,1),(25,'NACW-602','Ward (Non AC)',700,1),(26,'NACW-603','Ward (Non AC)',700,1),(27,'NACW-604','Ward (Non AC)',700,1),(28,'NACW-605','Ward (Non AC)',700,1),(30,'NACW-606','Ward (Non AC)',700,1);
/*!40000 ALTER TABLE `cabin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor_signup`
--

DROP TABLE IF EXISTS `doctor_signup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor_signup` (
  `id` bigint NOT NULL,
  `last_updated_at` datetime(6) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `last_updated_by` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `doctor_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `specialization_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1oqhk0y8weobee739qg9qik3v` (`specialization_id`),
  CONSTRAINT `FK1oqhk0y8weobee739qg9qik3v` FOREIGN KEY (`specialization_id`) REFERENCES `specialization` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_signup`
--

LOCK TABLES `doctor_signup` WRITE;
/*!40000 ALTER TABLE `doctor_signup` DISABLE KEYS */;
INSERT INTO `doctor_signup` VALUES (1,'2023-04-30 13:50:45.364000',_binary '','2023-04-30 13:50:45.364000',NULL,NULL,'Neurology','Tamal Bishwash','abc@gmail.com','135135','16516546','mahadi',NULL),(2,'2023-04-30 13:51:54.055000',_binary '','2023-04-30 13:51:54.055000',NULL,NULL,'Neurology','Mahadi Hasan','abc@gmail.com','135135','465165','tamalika',NULL),(3,'2023-04-30 13:52:19.599000',_binary '','2023-04-30 13:52:19.599000',NULL,NULL,'Cardiology','Nazim Hossain','abc@gmail.com','135135','54654354','nazim',NULL),(4,'2023-04-30 13:53:07.271000',_binary '','2023-04-30 13:53:07.271000',NULL,NULL,'Cardiology','Ashraf Ahmed','abc@gmail.com','135135','54654354','ashraf',NULL);
/*!40000 ALTER TABLE `doctor_signup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (8);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pathology_list`
--

DROP TABLE IF EXISTS `pathology_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pathology_list` (
  `id` int NOT NULL,
  `lab_test_name` varchar(255) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pathology_list`
--

LOCK TABLES `pathology_list` WRITE;
/*!40000 ALTER TABLE `pathology_list` DISABLE KEYS */;
INSERT INTO `pathology_list` VALUES (1,'CBC',NULL),(2,'X-Ray',NULL),(3,'MRI',NULL),(4,'Ultrasonography',NULL),(5,'CT-Scan',NULL),(6,'Blood Sugar',NULL),(7,'THS',NULL),(8,'FT3',NULL),(9,'FT4',NULL);
/*!40000 ALTER TABLE `pathology_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pathology_patient`
--

DROP TABLE IF EXISTS `pathology_patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pathology_patient` (
  `id` bigint NOT NULL,
  `last_updated_at` datetime(6) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `last_updated_by` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `lab_test` tinyblob,
  `patient_name` varchar(255) DEFAULT NULL,
  `patient_phone` varchar(255) DEFAULT NULL,
  `reffered_by` varchar(255) DEFAULT NULL,
  `result_date` varchar(255) DEFAULT NULL,
  `test_date` varchar(255) DEFAULT NULL,
  `total` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pathology_patient`
--

LOCK TABLES `pathology_patient` WRITE;
/*!40000 ALTER TABLE `pathology_patient` DISABLE KEYS */;
/*!40000 ALTER TABLE `pathology_patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pathology_patient_pathology_lists`
--

DROP TABLE IF EXISTS `pathology_patient_pathology_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pathology_patient_pathology_lists` (
  `pathology_patient_id` bigint NOT NULL,
  `pathology_lists_id` int NOT NULL,
  KEY `FKk8snnrcrq7uletailim9ff12` (`pathology_lists_id`),
  KEY `FK7gsg7vkxo40w8y8o365kqyjog` (`pathology_patient_id`),
  CONSTRAINT `FK7gsg7vkxo40w8y8o365kqyjog` FOREIGN KEY (`pathology_patient_id`) REFERENCES `pathology_patient` (`id`),
  CONSTRAINT `FKk8snnrcrq7uletailim9ff12` FOREIGN KEY (`pathology_lists_id`) REFERENCES `pathology_list` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pathology_patient_pathology_lists`
--

LOCK TABLES `pathology_patient_pathology_lists` WRITE;
/*!40000 ALTER TABLE `pathology_patient_pathology_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `pathology_patient_pathology_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_admission`
--

DROP TABLE IF EXISTS `patient_admission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_admission` (
  `id` bigint NOT NULL,
  `last_updated_at` datetime(6) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `last_updated_by` varchar(255) DEFAULT NULL,
  `admission_date` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `cabin_type` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `doctor_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `patient_address` varchar(255) DEFAULT NULL,
  `patient_name` varchar(255) DEFAULT NULL,
  `patient_phone` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `release_date` varchar(255) DEFAULT NULL,
  `room_number` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `total_bed_bill` int DEFAULT NULL,
  `admission_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_admission`
--

LOCK TABLES `patient_admission` WRITE;
/*!40000 ALTER TABLE `patient_admission` DISABLE KEYS */;
INSERT INTO `patient_admission` VALUES (7,'2023-05-22 00:42:33.981902',_binary '','2023-05-22 00:42:33.981902',NULL,NULL,NULL,NULL,'Single Cabin (AC)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,2500,NULL,'SAC-102',NULL,NULL,NULL);
/*!40000 ALTER TABLE `patient_admission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specialization`
--

DROP TABLE IF EXISTS `specialization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specialization` (
  `id` int NOT NULL,
  `specialized` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialization`
--

LOCK TABLES `specialization` WRITE;
/*!40000 ALTER TABLE `specialization` DISABLE KEYS */;
INSERT INTO `specialization` VALUES (1,'Cardiology'),(2,'Neurology'),(3,'Dermatology'),(4,'Orthopedic'),(5,'Eye Specialist'),(6,'Child Specialist'),(7,'Gastroliver');
/*!40000 ALTER TABLE `specialization` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-04 20:14:44
