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

-- Dump completed on 2023-10-10  0:29:08
