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
INSERT INTO `emp_details` VALUES (1,'C:/Users/govin/OneDrive/Desktop/BMS/Backend/src/main/resources/static/image/1Cover Letter.pdf',_binary '','3 Tomscot Way','2022-12-09',_binary '','2022-12-08',_binary '','BFSI Financial Services','mgleed0@accolitedigital.com','Maiga Gleed',5152393008,5,1,NULL,56,'Gurugram'),(2,NULL,_binary '','66 Loftsgordon Road','2023-04-08',_binary '','2023-04-07',_binary '','Media Telecom','nbing1@accolitedigital.com','Noland Bing',1301452822,2,2,NULL,58,'Hyderabad'),(3,NULL,_binary '','26 Lillian Parkway','2023-04-15',_binary '','2023-04-14',_binary '\0','Logistics','cblaxton2@accolitedigital.com','Cherie Blaxton',2016764571,3,3,NULL,59,'Bangalore'),(4,NULL,_binary '','49192 Gateway Hill','2023-02-24',_binary '','2023-02-23',_binary '\0','Technology','tflaonier3@accolitedigital.com','Tye Flaonier',1086121639,7,4,NULL,45,'Gurugram'),(5,'C:/Users/govin/OneDrive/Desktop/BMS/Backend/src/main/resources/static/image/5Maiga Gleed_Resume.pdf',_binary '','8 3rd Place','2022-11-24',_binary '','2022-11-23',_binary '\0','Healthcare','jstratten4@accolitedigital.com','Jehu Stratten',13324571499,3,5,NULL,51,'Hyderabad'),(6,NULL,_binary '','7233 Hovde Road','2022-12-17',_binary '','2022-12-16',_binary '\0','Consulting Services','hfranseco5@accolitedigital.com','Hilarius Franseco',6562331309,4,6,NULL,NULL,'Bangalore'),(7,NULL,_binary '','9 School Alley','2023-01-09',_binary '','2023-01-08',_binary '','BFSI Insurance','hbrickwood6@accolitedigital.com','Helena Brickwood',5849617270,6,7,NULL,60,'Gurugram'),(8,NULL,_binary '','615 Larry Terrace','2023-03-22',_binary '','2023-03-21',_binary '\0','Logistics','hrchazotte7@accolitedigital.com','Rik Chazotte',2241462779,8,8,NULL,NULL,'Hyderabad'),(9,NULL,_binary '','1 Doe Crossing Crossing','2023-02-15',_binary '','2023-02-14',_binary '\0','Healthcare','ganstie8@accolitedigital.com','Giffie Anstie',7107592482,2,9,NULL,NULL,'Bangalore'),(10,NULL,_binary '','976 Heath Alley','2022-10-10',_binary '','2022-10-09',_binary '\0','Technology','gmcfeat9@accolitedigital.com','Guinevere McFeat',3075956030,4,10,NULL,NULL,'Gurugram'),(11,NULL,_binary '','321 Fair Oaks Center','2023-01-10',_binary '','2022-01-09',_binary '\0','Media Telecom','dspinnacea@accolitedigital.com','Dorri Spinnace',33134755590,12,11,NULL,NULL,'Hyderabad'),(12,NULL,_binary '','46 Marcy Drive','2023-03-13',_binary '','2023-03-12',_binary '\0','BFSI Financial Services','dkmcfaterb@accolitedigital.com','Kailey McFater',1305815634,2,12,NULL,NULL,'Bangalore'),(13,NULL,_binary '','232 Transport Court','2023-04-02',_binary '','2023-04-01',_binary '\0','BFSI Insurance','fallinghamc@accolitedigital.com','Fae Allingham',3076955364,3,13,NULL,NULL,'Gurugram'),(14,NULL,_binary '','760 Pawling Terrace','2022-11-20',_binary '','2022-11-19',_binary '\0','BFSI Insurance','rtezured@accolitedigital.com','Ricca Tezure',3604590809,8,14,NULL,NULL,'Hyderabad'),(15,NULL,_binary '','8 Doe Crossing Trail','2022-12-31',_binary '','2022-12-30',_binary '\0','Technology','rlenine@accolitedigital.com','Ralina Lenin',6647202456,3,15,NULL,NULL,'Bangalore'),(16,NULL,_binary '','1358 Vera Place','2023-03-11',_binary '','2023-03-10',_binary '\0','Consulting Services','alucef@accolitedigital.com','Amaleta Luce',2944062058,5,16,NULL,NULL,'Gurugram'),(17,NULL,_binary '','7 Melby Court','2022-09-06',_binary '','2022-09-05',_binary '\0','Healthcare','pgalway@accolitedigital.com','Pepillo Galway',4235463922,9,17,NULL,NULL,'Hyderabad'),(18,NULL,_binary '','556 Fieldstone Alley','2023-01-16',_binary '','2023-01-15',_binary '\0','Healthcare','nventonh@accolitedigital.com','Nanci Venton',6818321176,3,18,NULL,NULL,'Gurugram'),(19,NULL,_binary '','05 Texas Crossing','2023-03-28',_binary '','2023-03-27',_binary '\0','BFSI Insurance','kyoungeri@accolitedigital.com','Kelsey Younger',7945258199,8,19,NULL,NULL,'Bangalore'),(20,NULL,_binary '','14453 Sauthoff Place','2023-04-24',_binary '','2023-04-23',_binary '\0','Logistics','dphinj@accolitedigital.com','Doy Phin',7152189653,13,20,NULL,NULL,'Hyderabad'),(21,NULL,_binary '','48223 Veith Center','2022-11-12',_binary '','2022-11-11',_binary '\0','Technology','bthorsenk@accolitedigital.com','Boot Thorsen',9253402438,11,21,NULL,NULL,'Gurugram'),(22,NULL,_binary '','4 Badeau Point','2022-12-10',_binary '','2022-12-09',_binary '\0','BFSI Financial Services','ddunthornl@accolitedigital.com','Del Dunthorn',9498960732,6,22,NULL,NULL,'Hyderabad'),(23,NULL,_binary '','24 Fulton Junction','2023-02-07',_binary '','2023-02-08',_binary '\0','BFSI Financial Services','dnchildesm@accolitedigital.com','Nahum Childes',2074290639,3,23,NULL,NULL,'Bangalore'),(24,NULL,_binary '','7352 Talmadge Court','2023-02-17',_binary '','2023-02-16',_binary '\0','BFSI Insurance','rmacguffogn@accolitedigital.com','Rene MacGuffog',1497501411,4,24,NULL,NULL,'Gurugram'),(25,NULL,_binary '','35651 Rockefeller Point','2023-03-28',_binary '','2023-03-27',_binary '\0','Media Telecom','rmacguffogn@accolitedigital.com','Augustina Kittles',1841600873,2,25,NULL,NULL,'Hyderabad'),(26,NULL,_binary '','35651 Rockefeller Point','2023-03-28',_binary '','2023-03-27',_binary '\0','Media Telecom','akittleso@accolitedigital.com','Augustina Kittles',1841600873,2,26,NULL,NULL,'Bangalore'),(27,NULL,_binary '','4313 Crest Line Way','2023-01-14',_binary '','2023-01-13',_binary '\0','Logistics','rbrothertonp@accolitedigital.com','Rubina Brotherton',8796959322,7,27,NULL,NULL,'Gurugram'),(28,NULL,_binary '','63 Division Way','2022-11-14',_binary '','2022-11-13',_binary '\0','Media Telecom','lwinstanleyr@accolitedigital.com','Layney Winstanley',4605075908,8,28,NULL,NULL,'Hyderabad'),(29,NULL,_binary '','7491 Homewood Avenue','2023-02-14',_binary '','2023-02-13',_binary '\0','Consulting Services','ekohters@accolitedigital.com','Enid Kohter',4002352969,13,29,NULL,43,'Bangalore'),(30,NULL,_binary '','7 Grim Lane','2022-07-12',_binary '\0','2022-07-11',_binary '\0','Consulting Services','oludlt@accolitedigital.com','Onofredo Ludl',1541971762,9,30,NULL,NULL,'Bangalore');
/*!40000 ALTER TABLE `emp_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-10  0:29:07
