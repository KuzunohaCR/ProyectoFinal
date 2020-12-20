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
-- Table structure for table `noadmin`
--

DROP TABLE IF EXISTS `noadmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `noadmin` (
  `idnoadmin` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `idpais` int NOT NULL,
  `edad` int NOT NULL,
  `identificacion` int NOT NULL,
  `correo` varchar(45) NOT NULL,
  `nombreusuario` varchar(45) NOT NULL,
  `contrasenna` varchar(45) NOT NULL,
  PRIMARY KEY (`idnoadmin`),
  KEY `idpais_idx` (`idpais`),
  CONSTRAINT `idpais` FOREIGN KEY (`idpais`) REFERENCES `pais` (`idpais`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noadmin`
--

LOCK TABLES `noadmin` WRITE;
/*!40000 ALTER TABLE `noadmin` DISABLE KEYS */;
INSERT INTO `noadmin` VALUES (1,'Jorge','Rosero',1,31,31,'Correo','Teko','Contra'),(2,'Jose','Corrales',4,1467567,28,'jcorrales@gmail.com','1','2'),(3,'Javier','Mena',2,26,35,'jmena@gmail.com','P-chan','pechis'),(4,'Randy','Leon',6,43,32,'RandyL@hotmail.com','Naranita','Naranitascr');
/*!40000 ALTER TABLE `noadmin` ENABLE KEYS */;
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
