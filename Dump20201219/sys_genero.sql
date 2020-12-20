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
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genero` (
  `idgenero` int NOT NULL AUTO_INCREMENT,
  `nombregenero` varchar(45) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`idgenero`),
  UNIQUE KEY `idgenero_UNIQUE` (`idgenero`),
  UNIQUE KEY `nombregenero_UNIQUE` (`nombregenero`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'Salsa','Mezcla de los sonidos africanos y caribeños'),(2,'Rock','Rock es un género reconocido por la predominancia de la guitarra eléctrica'),(3,'Metal','Género musical que tiene elementos del rock and roll, blues y música clásica'),(4,'Hip Hop','Su esencia narrativa se expresa a través de los ”raperos” y del sonido'),(5,'Jazz','El jazz es un género musical nacido a finales del siglo XIX en los Estados Unidos'),(6,'Pop','La música pop es un género de música popular que tuvo su origen a finales de los años 1950'),(7,'Ranchera','La ranchera es un género musical popular y folclórico de la música mexicana');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-19 22:22:46
