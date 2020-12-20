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
-- Table structure for table `cancionusuario`
--

DROP TABLE IF EXISTS `cancionusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cancionusuario` (
  `idcancionusuario` int NOT NULL AUTO_INCREMENT,
  `idusuario` int NOT NULL,
  `idcancion` int NOT NULL,
  PRIMARY KEY (`idcancionusuario`),
  KEY `id_del_usuario_idx` (`idusuario`),
  KEY `id_cancion_del_usuario_idx` (`idcancion`),
  CONSTRAINT `id_cancion_del_usuario` FOREIGN KEY (`idcancion`) REFERENCES `cancion` (`idcancion`),
  CONSTRAINT `id_del_usuario` FOREIGN KEY (`idusuario`) REFERENCES `noadmin` (`idnoadmin`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancionusuario`
--

LOCK TABLES `cancionusuario` WRITE;
/*!40000 ALTER TABLE `cancionusuario` DISABLE KEYS */;
INSERT INTO `cancionusuario` VALUES (1,1,11),(2,2,8),(3,1,12),(4,1,13),(5,1,16),(6,4,15),(7,1,14);
/*!40000 ALTER TABLE `cancionusuario` ENABLE KEYS */;
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
