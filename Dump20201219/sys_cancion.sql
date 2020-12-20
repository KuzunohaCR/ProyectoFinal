-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: sys
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `cancion`
--

DROP TABLE IF EXISTS `cancion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cancion` (
  `idcancion` int NOT NULL AUTO_INCREMENT,
  `nombrecancion` varchar(45) NOT NULL,
  `generos` int NOT NULL,
  `compositor` int NOT NULL,
  `fechalanzamiento` date NOT NULL,
  PRIMARY KEY (`idcancion`),
  KEY `idcanciongenero_idx` (`generos`),
  KEY `idcancioncompositor_idx` (`compositor`),
  CONSTRAINT `idcancioncompositor` FOREIGN KEY (`compositor`) REFERENCES `compositor` (`idcompositor`),
  CONSTRAINT `idcanciongenero` FOREIGN KEY (`generos`) REFERENCES `genero` (`idgenero`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancion`
--

LOCK TABLES `cancion` WRITE;
/*!40000 ALTER TABLE `cancion` DISABLE KEYS */;
INSERT INTO `cancion` VALUES (1,'Pa lo bueno',1,1,'2000-03-20'),(2,'De regreso',1,1,'2000-03-20'),(3,'Ich Will',2,1,'2000-03-21'),(4,'I love tacos',2,1,'2020-02-21'),(5,'With and againt you',1,1,'2000-10-10'),(6,'Kamikaze',1,1,'2000-11-11'),(7,'Jeans',1,1,'2000-11-11'),(8,'Another side',2,1,'2001-11-11'),(9,'Radio',2,1,'2018-06-23'),(10,'Platz eins',3,1,'2019-04-09'),(11,'Lola',2,1,'2000-04-30'),(12,'With and against you',2,1,'2020-06-12'),(13,'El rey',1,1,'1989-05-23'),(14,'Mutter',3,3,'2008-03-10'),(15,'Volvere',1,1,'2005-03-23'),(16,'Cumbia Metalera',1,4,'2000-05-13');
/*!40000 ALTER TABLE `cancion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-19 22:22:45
