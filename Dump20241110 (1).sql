CREATE DATABASE  IF NOT EXISTS `unir` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `unir`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: unir
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `ID` int NOT NULL,
  `NOMBRE` varchar(50) DEFAULT NULL,
  `APELLIDO1` varchar(50) DEFAULT NULL,
  `APELLIDO2` varchar(50) DEFAULT NULL,
  `CIUDAD` varchar(50) DEFAULT NULL,
  `CATEGORIA` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Aarón','Rivero','Gómez','Almería',100),(2,'Adela','Salas','Díaz','Granada',200),(3,'Adolfo','Rubio','Flores','Sevilla',NULL),(4,'Adrián','Suárez',NULL,'Jaén',300),(5,'Marcos','Loyola','Méndez','Almería',200),(6,'María','Santana','Moreno','Cádiz',100),(7,'Pilar','Ruiz',NULL,'Sevilla',300),(8,'Pepe','Ruiz','Santana','Huelva',200),(9,'Guillermo','López','Gómez','Granada',225),(10,'Daniel','Santana','Loyola','Sevilla',125);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comercial`
--

DROP TABLE IF EXISTS `comercial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comercial` (
  `ID` int NOT NULL,
  `NOMBRE` varchar(50) DEFAULT NULL,
  `APELLIDO1` varchar(50) DEFAULT NULL,
  `APELLIDO2` varchar(50) DEFAULT NULL,
  `COMISION` decimal(3,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comercial`
--

LOCK TABLES `comercial` WRITE;
/*!40000 ALTER TABLE `comercial` DISABLE KEYS */;
INSERT INTO `comercial` VALUES (1,'Daniel','Sáez','Vega',0.15),(2,'Juan','Gómez','López',0.13),(3,'Diego','Flores','Salas',0.11),(4,'Marta','Herrera','Gil',0.14),(5,'Antonio','Carretero','Ortega',0.12),(6,'Manuel','Domínguez','Hernández',0.13),(7,'Antonio','Vega','Hernández',0.11),(8,'Alfredo','Ruiz','Flores',0.05);
/*!40000 ALTER TABLE `comercial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `ID` int NOT NULL,
  `TOTAL` decimal(10,2) DEFAULT NULL,
  `FECHA` date DEFAULT NULL,
  `ID_CLIENTE` int DEFAULT NULL,
  `ID_COMERCIAL` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_PEDIDO_CLIENTE` (`ID_CLIENTE`),
  KEY `FK_PEDIDO_COMERCIAL` (`ID_COMERCIAL`),
  CONSTRAINT `FK_PEDIDO_CLIENTE` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `cliente` (`ID`),
  CONSTRAINT `FK_PEDIDO_COMERCIAL` FOREIGN KEY (`ID_COMERCIAL`) REFERENCES `comercial` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,150.50,'2017-10-05',5,2),(2,270.65,'2016-09-10',1,5),(3,65.26,'2017-10-05',2,1),(4,110.50,'2016-08-17',8,3),(5,948.50,'2017-09-10',5,2),(6,2400.60,'2016-07-27',7,1),(7,5760.00,'2015-09-10',2,1),(8,1983.43,'2017-10-10',4,6),(9,2480.40,'2016-10-10',8,3),(10,250.45,'2015-06-27',8,2),(11,75.29,'2016-08-17',3,7),(12,3045.60,'2017-04-25',2,1),(13,545.75,'2019-01-25',6,1),(14,145.82,'2017-02-02',6,1),(15,370.85,'2019-03-11',1,5),(16,2389.23,'2019-03-11',1,5);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `resumenpedidos`
--

DROP TABLE IF EXISTS `resumenpedidos`;
/*!50001 DROP VIEW IF EXISTS `resumenpedidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `resumenpedidos` AS SELECT 
 1 AS `ID_PEDIDO`,
 1 AS `TOTAL`,
 1 AS `FECHA`,
 1 AS `ID_CLIENTE`,
 1 AS `NOMBRE_CLIENTE`,
 1 AS `APELLIDO1_CLIENTE`,
 1 AS `APELLIDO2_CLIENTE`,
 1 AS `ID_COMERCIAL`,
 1 AS `NOMBRE_COMERCIAL`,
 1 AS `APELLIDO1_COMERCIAL`,
 1 AS `APELLIDO2_COMERCIAL`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `resumenpedidos`
--

/*!50001 DROP VIEW IF EXISTS `resumenpedidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `resumenpedidos` AS select `p`.`ID` AS `ID_PEDIDO`,`p`.`TOTAL` AS `TOTAL`,`p`.`FECHA` AS `FECHA`,`c`.`ID` AS `ID_CLIENTE`,`c`.`NOMBRE` AS `NOMBRE_CLIENTE`,`c`.`APELLIDO1` AS `APELLIDO1_CLIENTE`,`c`.`APELLIDO2` AS `APELLIDO2_CLIENTE`,`com`.`ID` AS `ID_COMERCIAL`,`com`.`NOMBRE` AS `NOMBRE_COMERCIAL`,`com`.`APELLIDO1` AS `APELLIDO1_COMERCIAL`,`com`.`APELLIDO2` AS `APELLIDO2_COMERCIAL` from ((`pedido` `p` join `cliente` `c` on((`p`.`ID_CLIENTE` = `c`.`ID`))) join `comercial` `com` on((`p`.`ID_COMERCIAL` = `com`.`ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-10 12:46:33
