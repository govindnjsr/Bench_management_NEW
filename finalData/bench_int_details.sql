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
INSERT INTO `int_details` VALUES (53,'Morgan Stanley','2023-04-27',1,_binary '',NULL),(54,'Morgan Stanley','2023-04-27',1,_binary '\0',NULL),(55,'Morgan Stanley','2023-04-27',1,_binary '\0',NULL),(56,'Morgan Stanley','2023-04-27',1,_binary '\0',NULL),(57,'accolite','2023-10-03',2,_binary '',NULL),(58,'Exl','2023-10-10',2,_binary '\0',NULL),(59,'Exl','2023-10-03',3,_binary '',NULL),(60,'Exl','2023-10-04',7,_binary '\0',NULL);
/*!40000 ALTER TABLE `int_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-10  0:29:08
