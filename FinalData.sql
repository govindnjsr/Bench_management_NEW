-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: bench
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `dto`
--

DROP TABLE IF EXISTS `dto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dto` (
  `employee_id` bigint NOT NULL,
  `active_status` bit(1) NOT NULL,
  `angular` bit(1) NOT NULL,
  `bench_period` bigint DEFAULT NULL,
  `bench_status` bit(1) NOT NULL,
  `css` bit(1) NOT NULL,
  `employee_name` varchar(255) DEFAULT NULL,
  `experience` bigint NOT NULL,
  `html` bit(1) NOT NULL,
  `java` bit(1) NOT NULL,
  `javascript` bit(1) NOT NULL,
  `location` bigint NOT NULL,
  `python` bit(1) NOT NULL,
  `react` bit(1) NOT NULL,
  `springboot` bit(1) NOT NULL,
  `blocked` bit(1) NOT NULL,
  `business_unit` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `resume` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dto`
--

LOCK TABLES `dto` WRITE;
/*!40000 ALTER TABLE `dto` DISABLE KEYS */;
/*!40000 ALTER TABLE `dto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_details`
--

DROP TABLE IF EXISTS `emp_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp_details` (
  `id` bigint NOT NULL,
  `resume` varchar(255) DEFAULT NULL,
  `active` bit(1) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `bench_date` varchar(255) DEFAULT NULL,
  `bench_status` bit(1) NOT NULL,
  `billable_date` varchar(255) DEFAULT NULL,
  `blocked` bit(1) NOT NULL,
  `business_unit` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone_no` bigint NOT NULL,
  `work_exp` bigint NOT NULL,
  `skills_id` bigint DEFAULT NULL,
  `emp_loc_id` bigint DEFAULT NULL,
  `on_going` bigint DEFAULT NULL,
  `emp_location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4723eyybcxvvodbpwbsj6qvai` (`skills_id`),
  KEY `FK6m5s1dugbf1w0lulyq6eouige` (`emp_loc_id`),
  CONSTRAINT `FK4723eyybcxvvodbpwbsj6qvai` FOREIGN KEY (`skills_id`) REFERENCES `skill` (`id`),
  CONSTRAINT `FK6m5s1dugbf1w0lulyq6eouige` FOREIGN KEY (`emp_loc_id`) REFERENCES `location` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_details`
--

LOCK TABLES `emp_details` WRITE;
/*!40000 ALTER TABLE `emp_details` DISABLE KEYS */;
INSERT INTO `emp_details` VALUES (1,'C:/Users/govin/OneDrive/Desktop/BMS/Backend/src/main/resources/static/image/1Cover Letter.pdf',_binary '','3 Tomscot Way','2022-12-09',_binary '','2022-12-08',_binary '','BFSI Financial Services','mgleed0@accolitedigital.com','Maiga Gleed',5152393008,5,1,NULL,56,'Gurugram'),(2,NULL,_binary '','66 Loftsgordon Road','2023-04-08',_binary '','2023-04-07',_binary '','Media Telecom','nbing1@accolitedigital.com','Noland Bing',1301452822,2,2,NULL,58,'Hyderabad'),(3,NULL,_binary '','26 Lillian Parkway','2023-04-15',_binary '','2023-04-14',_binary '\0','Logistics','cblaxton2@accolitedigital.com','Cherie Blaxton',2016764571,3,3,NULL,59,'Bangalore'),(4,NULL,_binary '','49192 Gateway Hill','2023-02-24',_binary '','2023-02-23',_binary '\0','Technology','tflaonier3@accolitedigital.com','Tye Flaonier',1086121639,7,4,NULL,45,'Gurugram'),(5,'C:/Users/govin/OneDrive/Desktop/BMS/Backend/src/main/resources/static/image/5Maiga Gleed_Resume.pdf',_binary '','8 3rd Place','2022-11-24',_binary '','2022-11-23',_binary '\0','Healthcare','jstratten4@accolitedigital.com','Jehu Stratten',13324571499,3,5,NULL,61,'Hyderabad'),(6,NULL,_binary '','7233 Hovde Road','2022-12-17',_binary '','2022-12-16',_binary '\0','Consulting Services','hfranseco5@accolitedigital.com','Hilarius Franseco',6562331309,4,6,NULL,NULL,'Bangalore'),(7,NULL,_binary '','9 School Alley','2023-01-09',_binary '','2023-01-08',_binary '','BFSI Insurance','hbrickwood6@accolitedigital.com','Helena Brickwood',5849617270,6,7,NULL,60,'Gurugram'),(8,NULL,_binary '','615 Larry Terrace','2023-03-22',_binary '','2023-03-21',_binary '\0','Logistics','hrchazotte7@accolitedigital.com','Rik Chazotte',2241462779,8,8,NULL,NULL,'Hyderabad'),(9,NULL,_binary '','1 Doe Crossing Crossing','2023-02-15',_binary '','2023-02-14',_binary '\0','Healthcare','ganstie8@accolitedigital.com','Giffie Anstie',7107592482,2,9,NULL,NULL,'Bangalore'),(10,NULL,_binary '','976 Heath Alley','2022-10-10',_binary '','2022-10-09',_binary '\0','Technology','gmcfeat9@accolitedigital.com','Guinevere McFeat',3075956030,4,10,NULL,NULL,'Gurugram'),(11,NULL,_binary '','321 Fair Oaks Center','2023-01-10',_binary '','2022-01-09',_binary '\0','Media Telecom','dspinnacea@accolitedigital.com','Dorri Spinnace',33134755590,12,11,NULL,NULL,'Hyderabad'),(12,NULL,_binary '','46 Marcy Drive','2023-03-13',_binary '','2023-03-12',_binary '\0','BFSI Financial Services','dkmcfaterb@accolitedigital.com','Kailey McFater',1305815634,2,12,NULL,NULL,'Bangalore'),(13,NULL,_binary '','232 Transport Court','2023-04-02',_binary '','2023-04-01',_binary '\0','BFSI Insurance','fallinghamc@accolitedigital.com','Fae Allingham',3076955364,3,13,NULL,NULL,'Gurugram'),(14,NULL,_binary '','760 Pawling Terrace','2022-11-20',_binary '','2022-11-19',_binary '\0','BFSI Insurance','rtezured@accolitedigital.com','Ricca Tezure',3604590809,8,14,NULL,NULL,'Hyderabad'),(15,NULL,_binary '','8 Doe Crossing Trail','2022-12-31',_binary '','2022-12-30',_binary '\0','Technology','rlenine@accolitedigital.com','Ralina Lenin',6647202456,3,15,NULL,NULL,'Bangalore'),(16,NULL,_binary '','1358 Vera Place','2023-03-11',_binary '','2023-03-10',_binary '\0','Consulting Services','alucef@accolitedigital.com','Amaleta Luce',2944062058,5,16,NULL,NULL,'Gurugram'),(17,NULL,_binary '','7 Melby Court','2022-09-06',_binary '','2022-09-05',_binary '\0','Healthcare','pgalway@accolitedigital.com','Pepillo Galway',4235463922,9,17,NULL,NULL,'Hyderabad'),(18,NULL,_binary '','556 Fieldstone Alley','2023-01-16',_binary '','2023-01-15',_binary '\0','Healthcare','nventonh@accolitedigital.com','Nanci Venton',6818321176,3,18,NULL,NULL,'Gurugram'),(19,NULL,_binary '','05 Texas Crossing','2023-03-28',_binary '','2023-03-27',_binary '\0','BFSI Insurance','kyoungeri@accolitedigital.com','Kelsey Younger',7945258199,8,19,NULL,NULL,'Bangalore'),(20,NULL,_binary '','14453 Sauthoff Place','2023-04-24',_binary '','2023-04-23',_binary '\0','Logistics','dphinj@accolitedigital.com','Doy Phin',7152189653,13,20,NULL,NULL,'Hyderabad'),(21,NULL,_binary '','48223 Veith Center','2022-11-12',_binary '','2022-11-11',_binary '\0','Technology','bthorsenk@accolitedigital.com','Boot Thorsen',9253402438,11,21,NULL,NULL,'Gurugram'),(22,NULL,_binary '','4 Badeau Point','2022-12-10',_binary '','2022-12-09',_binary '\0','BFSI Financial Services','ddunthornl@accolitedigital.com','Del Dunthorn',9498960732,6,22,NULL,NULL,'Hyderabad'),(23,NULL,_binary '','24 Fulton Junction','2023-02-07',_binary '','2023-02-08',_binary '\0','BFSI Financial Services','dnchildesm@accolitedigital.com','Nahum Childes',2074290639,3,23,NULL,NULL,'Bangalore'),(24,NULL,_binary '','7352 Talmadge Court','2023-02-17',_binary '','2023-02-16',_binary '\0','BFSI Insurance','rmacguffogn@accolitedigital.com','Rene MacGuffog',1497501411,4,24,NULL,NULL,'Gurugram'),(25,NULL,_binary '','35651 Rockefeller Point','2023-03-28',_binary '','2023-03-27',_binary '\0','Media Telecom','rmacguffogn@accolitedigital.com','Augustina Kittles',1841600873,2,25,NULL,NULL,'Hyderabad'),(26,NULL,_binary '','35651 Rockefeller Point','2023-03-28',_binary '','2023-03-27',_binary '\0','Media Telecom','akittleso@accolitedigital.com','Augustina Kittles',1841600873,2,26,NULL,NULL,'Bangalore'),(27,NULL,_binary '','4313 Crest Line Way','2023-01-14',_binary '','2023-01-13',_binary '\0','Logistics','rbrothertonp@accolitedigital.com','Rubina Brotherton',8796959322,7,27,NULL,NULL,'Gurugram'),(28,NULL,_binary '','63 Division Way','2022-11-14',_binary '','2022-11-13',_binary '\0','Media Telecom','lwinstanleyr@accolitedigital.com','Layney Winstanley',4605075908,8,28,NULL,NULL,'Hyderabad'),(29,NULL,_binary '','7491 Homewood Avenue','2023-02-14',_binary '','2023-02-13',_binary '\0','Consulting Services','ekohters@accolitedigital.com','Enid Kohter',4002352969,13,29,NULL,43,'Bangalore'),(30,NULL,_binary '','7 Grim Lane','2022-07-12',_binary '\0','2022-07-11',_binary '\0','Consulting Services','oludlt@accolitedigital.com','Onofredo Ludl',1541971762,9,30,NULL,NULL,'Bangalore');
/*!40000 ALTER TABLE `emp_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empdetails_seq`
--

DROP TABLE IF EXISTS `empdetails_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empdetails_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empdetails_seq`
--

LOCK TABLES `empdetails_seq` WRITE;
/*!40000 ALTER TABLE `empdetails_seq` DISABLE KEYS */;
INSERT INTO `empdetails_seq` VALUES (31);
/*!40000 ALTER TABLE `empdetails_seq` ENABLE KEYS */;
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
INSERT INTO `hibernate_sequence` VALUES (31);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `int_details`
--

DROP TABLE IF EXISTS `int_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `int_details` (
  `sr_no` bigint NOT NULL,
  `client` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `id` bigint NOT NULL,
  `result` bit(1) NOT NULL,
  `emp_intv_id` bigint DEFAULT NULL,
  PRIMARY KEY (`sr_no`),
  KEY `FKp6097i0r2yreagjxrtdi9uh54` (`emp_intv_id`),
  CONSTRAINT `FKp6097i0r2yreagjxrtdi9uh54` FOREIGN KEY (`emp_intv_id`) REFERENCES `emp_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `int_details`
--

LOCK TABLES `int_details` WRITE;
/*!40000 ALTER TABLE `int_details` DISABLE KEYS */;
INSERT INTO `int_details` VALUES (53,'Morgan Stanley','2023-04-27',1,_binary '',NULL),(54,'Morgan Stanley','2023-04-27',1,_binary '\0',NULL),(55,'Morgan Stanley','2023-04-27',1,_binary '\0',NULL),(56,'Morgan Stanley','2023-04-27',1,_binary '\0',NULL),(57,'accolite','2023-10-03',2,_binary '',NULL),(58,'Exl','2023-10-10',2,_binary '\0',NULL),(59,'Exl','2023-10-03',3,_binary '',NULL),(60,'Exl','2023-10-04',7,_binary '\0',NULL),(61,'Amazon','2023-10-11',5,_binary '',NULL);
/*!40000 ALTER TABLE `int_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intdetails_seq`
--

DROP TABLE IF EXISTS `intdetails_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `intdetails_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intdetails_seq`
--

LOCK TABLES `intdetails_seq` WRITE;
/*!40000 ALTER TABLE `intdetails_seq` DISABLE KEYS */;
INSERT INTO `intdetails_seq` VALUES (62);
/*!40000 ALTER TABLE `intdetails_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `id` bigint NOT NULL,
  `loc_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Gurugram'),(2,'Bangalore'),(3,'Hyderabad');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locationmanagertable`
--

DROP TABLE IF EXISTS `locationmanagertable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locationmanagertable` (
  `locationxid` bigint NOT NULL,
  `managerxid` bigint NOT NULL,
  KEY `FKsa8ku700ya0elahr8rl496l7v` (`managerxid`),
  KEY `FKbt8rrf9sjfv2xopn7ci7s5p6w` (`locationxid`),
  CONSTRAINT `FKbt8rrf9sjfv2xopn7ci7s5p6w` FOREIGN KEY (`locationxid`) REFERENCES `manager_details` (`id`),
  CONSTRAINT `FKsa8ku700ya0elahr8rl496l7v` FOREIGN KEY (`managerxid`) REFERENCES `location` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locationmanagertable`
--

LOCK TABLES `locationmanagertable` WRITE;
/*!40000 ALTER TABLE `locationmanagertable` DISABLE KEYS */;
INSERT INTO `locationmanagertable` VALUES (2,3),(2,1),(3,2),(3,3);
/*!40000 ALTER TABLE `locationmanagertable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `id` bigint NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `emp_id` bigint NOT NULL,
  `role` bigint NOT NULL,
  `secret_key` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'dhruv.bansal@accolitedigital.com',1,2,NULL),(2,'shambhavi.vats@accolitedigital.com',2,1,NULL),(3,'govindpanchal97@gmail.com',3,2,'NABDOE2GIRLAQVIGJYJR6DI5LZLB27TC'),(5,'2020pgcaca38@nitjsr.ac.in',5,1,'KYZAUAKMLAMUEBLHCQZSEKKRHRGDK6CR');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager_details`
--

DROP TABLE IF EXISTS `manager_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager_details` (
  `id` bigint NOT NULL,
  `m_active` bit(1) DEFAULT NULL,
  `m_email` varchar(255) DEFAULT NULL,
  `m_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager_details`
--

LOCK TABLES `manager_details` WRITE;
/*!40000 ALTER TABLE `manager_details` DISABLE KEYS */;
INSERT INTO `manager_details` VALUES (1,_binary '','shambhavi.vats@accolitedigital.com','Shambhavi Vats'),(2,_binary '','govindpanchal977@gmail.com','Ayush'),(3,_binary '','govindpanchal97@gmail.com','Gobind');
/*!40000 ALTER TABLE `manager_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mngdetails_seq`
--

DROP TABLE IF EXISTS `mngdetails_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mngdetails_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mngdetails_seq`
--

LOCK TABLES `mngdetails_seq` WRITE;
/*!40000 ALTER TABLE `mngdetails_seq` DISABLE KEYS */;
INSERT INTO `mngdetails_seq` VALUES (1);
/*!40000 ALTER TABLE `mngdetails_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill` (
  `id` bigint NOT NULL,
  `angular` bit(1) NOT NULL,
  `css` bit(1) NOT NULL,
  `html` bit(1) NOT NULL,
  `java` bit(1) NOT NULL,
  `javascript` bit(1) NOT NULL,
  `python` bit(1) NOT NULL,
  `react` bit(1) NOT NULL,
  `springboot` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
INSERT INTO `skill` VALUES (1,_binary '\0',_binary '\0',_binary '',_binary '',_binary '\0',_binary '',_binary '\0',_binary ''),(2,_binary '',_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '\0',_binary '\0'),(3,_binary '\0',_binary '',_binary '',_binary '\0',_binary '',_binary '\0',_binary '\0',_binary '\0'),(4,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '\0',_binary ''),(5,_binary '',_binary '\0',_binary '\0',_binary '',_binary '',_binary '\0',_binary '',_binary '\0'),(6,_binary '\0',_binary '',_binary '\0',_binary '',_binary '\0',_binary '\0',_binary '',_binary ''),(7,_binary '\0',_binary '\0',_binary '',_binary '\0',_binary '\0',_binary '',_binary '',_binary '\0'),(8,_binary '\0',_binary '\0',_binary '',_binary '\0',_binary '',_binary '',_binary '\0',_binary '\0'),(9,_binary '\0',_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '\0',_binary ''),(10,_binary '\0',_binary '',_binary '\0',_binary '',_binary '\0',_binary '',_binary '\0',_binary '\0'),(11,_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '\0',_binary ''),(12,_binary '',_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '\0'),(13,_binary '',_binary '\0',_binary '\0',_binary '',_binary '\0',_binary '\0',_binary '',_binary ''),(14,_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '\0',_binary '\0'),(15,_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '\0',_binary '\0'),(16,_binary '\0',_binary '',_binary '\0',_binary '\0',_binary '',_binary '\0',_binary '\0',_binary ''),(17,_binary '',_binary '',_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0'),(18,_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '\0'),(19,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '\0',_binary '',_binary ''),(20,_binary '\0',_binary '',_binary '\0',_binary '',_binary '\0',_binary '',_binary '\0',_binary '\0'),(21,_binary '\0',_binary '',_binary '\0',_binary '',_binary '\0',_binary '\0',_binary '\0',_binary ''),(22,_binary '\0',_binary '\0',_binary '',_binary '\0',_binary '',_binary '\0',_binary '',_binary '\0'),(23,_binary '\0',_binary '\0',_binary '',_binary '\0',_binary '\0',_binary '',_binary '',_binary '\0'),(24,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '',_binary ''),(25,_binary '',_binary '\0',_binary '\0',_binary '',_binary '\0',_binary '\0',_binary '\0',_binary ''),(26,_binary '',_binary '\0',_binary '\0',_binary '',_binary '\0',_binary '\0',_binary '\0',_binary ''),(27,_binary '',_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '\0',_binary '\0'),(28,_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '\0',_binary '\0',_binary ''),(29,_binary '\0',_binary '\0',_binary '',_binary '\0',_binary '\0',_binary '\0',_binary '',_binary ''),(30,_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '',_binary '\0',_binary '',_binary '\0');
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-10  1:23:47
