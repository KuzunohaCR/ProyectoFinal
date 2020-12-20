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
-- Table structure for table `Artista`
--

DROP TABLE IF EXISTS `Artista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Artista` (
  `idArtista` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `idpais` int NOT NULL,
  `nombreartistico` varchar(45) NOT NULL,
  `fechanacimiento` varchar(45) NOT NULL,
  `fechadefuncion` varchar(45) DEFAULT NULL,
  `idGenero` int NOT NULL,
  `edad` int NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`idArtista`),
  KEY `idArtistaPais_idx` (`idpais`),
  KEY `idArtistaGenero_idx` (`idGenero`),
  CONSTRAINT `idArtistaGenero` FOREIGN KEY (`idGenero`) REFERENCES `genero` (`idgenero`),
  CONSTRAINT `idArtistaPais` FOREIGN KEY (`idpais`) REFERENCES `pais` (`idpais`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Artista`
--

LOCK TABLES `Artista` WRITE;
/*!40000 ALTER TABLE `Artista` DISABLE KEYS */;
INSERT INTO `Artista` VALUES (1,'Pepe','Flores',1,'Juanes','1970-04-24','',3,21,'Cantante famoso'),(2,'Marc','Antoni',5,'Marc','1987-08-06','',1,33,'Famoso'),(3,'Michael','Jackson',5,'M.J','1960-07-02','2005-04-05',2,60,'Rey del pop'),(4,'Till','Lindemann',1,'Lindemann','1970-03-04','',3,50,'Vocalista de Rammstein y Lindemann');
/*!40000 ALTER TABLE `Artista` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-19 22:22:48
