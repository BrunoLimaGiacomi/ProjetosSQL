CREATE DATABASE  IF NOT EXISTS `cadastro_19_05` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `cadastro_19_05`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: cadastro_19_05
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoa` (
  `id_pes` int(11) NOT NULL AUTO_INCREMENT,
  `nome_pes` varchar(35) NOT NULL,
  `cpf_pes` char(11) NOT NULL,
  PRIMARY KEY (`id_pes`),
  UNIQUE KEY `cpf_pes` (`cpf_pes`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES (1,'Josney da Silva','88594857394'),(2,'Marcela Rocha','45993847384'),(3,'Ermival da Conceição','44839485763'),(4,'Carlos Almeida','48557394856'),(5,'Romildo Araújo','48339537495');
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservista`
--

DROP TABLE IF EXISTS `reservista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservista` (
  `id_res` int(11) NOT NULL AUTO_INCREMENT,
  `num_res` char(11) NOT NULL,
  `sit_res` enum('reserva','ativa') DEFAULT NULL,
  `id_pes` int(11) NOT NULL,
  PRIMARY KEY (`id_res`),
  UNIQUE KEY `num_res` (`num_res`),
  UNIQUE KEY `id_pes` (`id_pes`),
  CONSTRAINT `reservista_ibfk_1` FOREIGN KEY (`id_pes`) REFERENCES `pessoa` (`id_pes`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservista`
--

LOCK TABLES `reservista` WRITE;
/*!40000 ALTER TABLE `reservista` DISABLE KEYS */;
INSERT INTO `reservista` VALUES (2,'88493840388','ativa',3),(3,'47384473847','reserva',5);
/*!40000 ALTER TABLE `reservista` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-19 17:31:59
