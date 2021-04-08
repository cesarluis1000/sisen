-- MariaDB dump 10.18  Distrib 10.4.17-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: sisen
-- ------------------------------------------------------
-- Server version	10.4.17-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `encuestas`
--

DROP TABLE IF EXISTS `encuestas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuestas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_fin` datetime NOT NULL,
  `enlace_zoom` varchar(255) DEFAULT NULL,
  `estado` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'A',
  `creador` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `creado` datetime DEFAULT NULL,
  `modificador` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `modificado` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuestas`
--

LOCK TABLES `encuestas` WRITE;
/*!40000 ALTER TABLE `encuestas` DISABLE KEYS */;
INSERT INTO `encuestas` VALUES (1,'Elecciones generales 2021','2021-04-05 17:34:30','2021-04-05 17:34:33','https://us05web.zoom.us/j/5641667630?pwd=bXhNSktpUWZiM25GZDFId3VwWTd1Zz09','A','cramos','2021-04-05 17:34:39',NULL,NULL),(2,'Elecciones generales 2022','2021-04-05 20:22:38','2021-04-05 20:22:40','https://us05web.zoom.us/j/5641667630?pwd=bXhNSktpUWZiM25GZDFId3VwWTd1Zz09','A','cramos','2021-04-05 20:35:07',NULL,NULL),(3,'Elecciones generales 2023','2021-04-05 21:22:16','2021-04-05 21:22:19','','A','cramos','2021-04-05 21:22:29',NULL,NULL);
/*!40000 ALTER TABLE `encuestas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preguntas`
--

DROP TABLE IF EXISTS `preguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preguntas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_bin NOT NULL,
  `encuesta_id` int(11) NOT NULL,
  `nro_respuesta` int(2) NOT NULL DEFAULT 1,
  `estado` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'A',
  `creador` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `creado` datetime DEFAULT NULL,
  `modificador` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `modificado` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_preguntas_encuestas1_idx` (`encuesta_id`),
  CONSTRAINT `fk_preguntas_encuestas1` FOREIGN KEY (`encuesta_id`) REFERENCES `encuestas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preguntas`
--

LOCK TABLES `preguntas` WRITE;
/*!40000 ALTER TABLE `preguntas` DISABLE KEYS */;
INSERT INTO `preguntas` VALUES (1,'¿Elección de Presidente?',1,1,'A','cramos','2021-04-05 20:58:01',NULL,NULL),(2,'¿Elección de Secretario?',1,1,'A','cramos','2021-04-05 22:34:01','cramos','2021-04-05 23:18:16'),(3,'¿Elección de Tesorero?',1,1,'A','cramos','2021-04-05 22:35:18','cramos','2021-04-05 23:18:20'),(4,'¿Elección de Vocero?',1,1,'A','cramos','2021-04-05 22:39:05','cramos','2021-04-05 23:19:20'),(5,'¿Elección de Gerente?',2,1,'A','cramos','2021-04-07 19:55:32','cramos','2021-04-07 21:47:50'),(6,'¿Elección de Secretario?',2,1,'A','cramos','2021-04-07 20:26:27',NULL,NULL),(7,'¿Elección de Vocero?',2,2,'A','cramos','2021-04-07 20:27:26',NULL,NULL);
/*!40000 ALTER TABLE `preguntas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opciones`
--

DROP TABLE IF EXISTS `opciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_bin NOT NULL,
  `pregunta_id` int(11) NOT NULL,
  `estado` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'A',
  `creador` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `creado` datetime DEFAULT NULL,
  `modificador` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `modificado` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_opciones_preguntas1_idx` (`pregunta_id`),
  CONSTRAINT `fk_opciones_preguntas1` FOREIGN KEY (`pregunta_id`) REFERENCES `preguntas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opciones`
--

LOCK TABLES `opciones` WRITE;
/*!40000 ALTER TABLE `opciones` DISABLE KEYS */;
INSERT INTO `opciones` VALUES (1,'Yonhy Lescano',1,'A','cramos','2021-04-05 23:28:18','cramos','2021-04-05 23:29:59'),(2,'George Forsyth',1,'A','cramos','2021-04-06 00:12:52',NULL,NULL),(3,'Keiko Fujimori',1,'A','cramos','2021-04-06 00:13:50',NULL,NULL),(4,'Veronika Mendoza',1,'A','cramos','2021-04-06 00:18:52',NULL,NULL),(5,'Yonhy Lescano',2,'A','cramos','2021-04-06 09:05:03',NULL,NULL),(6,'George Forsyth',2,'A','cramos','2021-04-06 09:05:13',NULL,NULL),(7,'Keiko Fujimori',2,'A','cramos','2021-04-06 09:05:22',NULL,NULL),(8,'Veronika Mendoza',2,'A','cramos','2021-04-06 09:05:29',NULL,NULL),(9,'Yonhy Lescano',3,'A','cramos','2021-04-06 09:06:21',NULL,NULL),(10,'George Forsyth',3,'A','cramos','2021-04-06 09:06:29',NULL,NULL),(11,'Keiko Fujimori',3,'A','cramos','2021-04-06 09:06:36',NULL,NULL),(12,'Yonhy Lescano',4,'A','cramos','2021-04-06 09:07:03',NULL,NULL),(13,'George Forsyth',4,'A','cramos','2021-04-06 09:07:08',NULL,NULL),(14,'Yonhy Lescano',5,'A','cramos','2021-04-07 20:04:51',NULL,NULL),(15,'George Forsyth',5,'A','cramos','2021-04-07 20:05:10',NULL,NULL),(16,'Keiko Fujimori',5,'A','cramos','2021-04-07 20:05:16',NULL,NULL),(17,'Veronika Mendoza',5,'A','cramos','2021-04-07 20:20:18',NULL,NULL),(18,'Yonhy Lescano',6,'A','cramos','2021-04-07 20:26:43',NULL,NULL),(19,'George Forsyth',6,'A','cramos','2021-04-07 20:26:49',NULL,NULL),(20,'Yonhy Lescano',7,'A','cramos','2021-04-07 20:27:44',NULL,NULL),(21,'George Forsyth',7,'A','cramos','2021-04-07 20:27:53',NULL,NULL),(22,'Keiko Fujimori',7,'A','cramos','2021-04-07 20:28:03',NULL,NULL),(23,'Veronika Mendoza',7,'A','cramos','2021-04-07 20:28:10',NULL,NULL);
/*!40000 ALTER TABLE `opciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respuestas`
--

DROP TABLE IF EXISTS `respuestas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `respuestas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `opcion_id` int(11) NOT NULL,
  `encuestado_id` int(11) NOT NULL,
  `estado` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'A',
  `creador` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `creado` datetime DEFAULT NULL,
  `modificador` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `modificado` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_respuestas_opciones1_idx` (`opcion_id`),
  KEY `fk_respuestas_encuestados1_idx` (`encuestado_id`),
  CONSTRAINT `fk_respuestas_encuestados1` FOREIGN KEY (`encuestado_id`) REFERENCES `encuestados` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_respuestas_opciones1` FOREIGN KEY (`opcion_id`) REFERENCES `opciones` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respuestas`
--

LOCK TABLES `respuestas` WRITE;
/*!40000 ALTER TABLE `respuestas` DISABLE KEYS */;
INSERT INTO `respuestas` VALUES (1,1,1,'A','cramos','2021-04-07 03:48:04',NULL,NULL),(2,6,1,'A','cramos','2021-04-07 03:48:04',NULL,NULL),(3,11,1,'A','cramos','2021-04-07 03:48:04',NULL,NULL),(4,12,1,'A','cramos','2021-04-07 03:48:04',NULL,NULL),(5,3,2,'A','cramos','2021-04-07 05:26:47',NULL,NULL),(6,6,2,'A','cramos','2021-04-07 05:26:47',NULL,NULL),(7,11,2,'A','cramos','2021-04-07 05:26:47',NULL,NULL),(8,13,2,'A','cramos','2021-04-07 05:26:47',NULL,NULL);
/*!40000 ALTER TABLE `respuestas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuestados`
--

DROP TABLE IF EXISTS `encuestados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuestados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(255) COLLATE utf8_bin NOT NULL,
  `app` varchar(255) COLLATE utf8_bin NOT NULL,
  `apm` varchar(255) COLLATE utf8_bin NOT NULL,
  `dni` int(8) NOT NULL,
  `telefono` int(9) DEFAULT NULL,
  `correo` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `hash` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `encuesta_id` int(11) NOT NULL,
  `estado` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'A',
  `creador` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `creado` datetime DEFAULT NULL,
  `modificador` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `modificado` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_encuestados_encuestas1_idx` (`encuesta_id`),
  CONSTRAINT `fk_encuestados_encuestas1` FOREIGN KEY (`encuesta_id`) REFERENCES `encuestas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuestados`
--

LOCK TABLES `encuestados` WRITE;
/*!40000 ALTER TABLE `encuestados` DISABLE KEYS */;
INSERT INTO `encuestados` VALUES (1,'Cesar','Ramos','Cueva',42684024,NULL,'cesarluis1000@hotmail.com',NULL,NULL,1,'A','cramos','2021-04-06 01:31:44','cramos','2021-04-06 01:49:25'),(2,'Silvia','Medrano','Pulido',42684036,NULL,'silvia@gmail.com',NULL,NULL,1,'A','cramos','2021-04-06 01:50:25','cramos','2021-04-06 02:17:20');
/*!40000 ALTER TABLE `encuestados` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-07 21:49:36
