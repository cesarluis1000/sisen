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
-- Table structure for table `acos`
--

DROP TABLE IF EXISTS `acos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_acos_lft_rght` (`lft`,`rght`),
  KEY `idx_acos_alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acos`
--

LOCK TABLES `acos` WRITE;
/*!40000 ALTER TABLE `acos` DISABLE KEYS */;
INSERT INTO `acos` VALUES (1,NULL,NULL,NULL,'controllers',1,142),(8,1,NULL,NULL,'Groups',2,13),(9,8,NULL,NULL,'index',3,4),(10,8,NULL,NULL,'view',5,6),(11,8,NULL,NULL,'add',7,8),(12,8,NULL,NULL,'edit',9,10),(13,8,NULL,NULL,'delete',11,12),(20,1,NULL,NULL,'Pages',14,17),(21,20,NULL,NULL,'display',15,16),(22,1,NULL,NULL,'Parametros',18,29),(23,22,NULL,NULL,'index',19,20),(24,22,NULL,NULL,'view',21,22),(25,22,NULL,NULL,'add',23,24),(26,22,NULL,NULL,'edit',25,26),(27,22,NULL,NULL,'delete',27,28),(46,1,NULL,NULL,'Users',30,47),(47,46,NULL,NULL,'login',31,32),(48,46,NULL,NULL,'logout',33,34),(49,46,NULL,NULL,'index',35,36),(50,46,NULL,NULL,'view',37,38),(51,46,NULL,NULL,'add',39,40),(52,46,NULL,NULL,'edit',41,42),(53,46,NULL,NULL,'delete',43,44),(54,1,NULL,NULL,'AclExtras',48,49),(55,1,NULL,NULL,'DebugKit',50,57),(56,55,NULL,NULL,'ToolbarAccess',51,56),(57,56,NULL,NULL,'history_state',52,53),(58,56,NULL,NULL,'sql_explain',54,55),(61,46,NULL,NULL,'initDB',45,46),(62,1,NULL,NULL,'Permisos',58,71),(63,62,NULL,NULL,'roles',59,60),(64,62,NULL,NULL,'aplicaciones',61,62),(65,62,NULL,NULL,'add',63,64),(66,62,NULL,NULL,'acceso',65,66),(67,62,NULL,NULL,'edit',67,68),(68,62,NULL,NULL,'delete',69,70),(73,1,NULL,NULL,'Menus',72,81),(74,73,NULL,NULL,'index',73,74),(75,73,NULL,NULL,'add',75,76),(79,73,NULL,NULL,'delete',77,78),(80,73,NULL,NULL,'edit',79,80),(81,1,NULL,NULL,'Encuestas',82,93),(82,81,NULL,NULL,'index',83,84),(83,81,NULL,NULL,'view',85,86),(84,81,NULL,NULL,'add',87,88),(85,81,NULL,NULL,'edit',89,90),(86,81,NULL,NULL,'delete',91,92),(87,1,NULL,NULL,'Preguntas',94,105),(88,87,NULL,NULL,'index',95,96),(89,87,NULL,NULL,'view',97,98),(90,87,NULL,NULL,'add',99,100),(91,87,NULL,NULL,'edit',101,102),(92,87,NULL,NULL,'delete',103,104),(93,1,NULL,NULL,'Opciones',106,117),(94,93,NULL,NULL,'index',107,108),(95,93,NULL,NULL,'view',109,110),(96,93,NULL,NULL,'add',111,112),(97,93,NULL,NULL,'edit',113,114),(98,93,NULL,NULL,'delete',115,116),(99,1,NULL,NULL,'Respuestas',118,129),(100,99,NULL,NULL,'index',119,120),(101,99,NULL,NULL,'view',121,122),(102,99,NULL,NULL,'add',123,124),(103,99,NULL,NULL,'edit',125,126),(104,99,NULL,NULL,'delete',127,128),(105,1,NULL,NULL,'Encuestados',130,141),(106,105,NULL,NULL,'index',131,132),(107,105,NULL,NULL,'view',133,134),(108,105,NULL,NULL,'add',135,136),(109,105,NULL,NULL,'edit',137,138),(110,105,NULL,NULL,'delete',139,140);
/*!40000 ALTER TABLE `acos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aros`
--

DROP TABLE IF EXISTS `aros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aros_lft_rght` (`lft`,`rght`),
  KEY `idx_aros_alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aros`
--

LOCK TABLES `aros` WRITE;
/*!40000 ALTER TABLE `aros` DISABLE KEYS */;
INSERT INTO `aros` VALUES (1,NULL,'Group',1,'Administrador',1,4),(2,NULL,'Group',2,'managers',5,8),(3,NULL,'Group',3,'users',9,12),(4,1,'User',1,'cramos',2,3),(5,2,'User',2,'joselo',6,7),(6,3,'User',3,'marisa',10,11),(7,NULL,'Group',4,'Vendedor',13,16),(8,7,'User',4,'paco',14,15);
/*!40000 ALTER TABLE `aros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aros_acos`
--

DROP TABLE IF EXISTS `aros_acos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aros_acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) NOT NULL DEFAULT '0',
  `_read` varchar(2) NOT NULL DEFAULT '0',
  `_update` varchar(2) NOT NULL DEFAULT '0',
  `_delete` varchar(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ARO_ACO_KEY` (`aro_id`,`aco_id`),
  KEY `idx_aco_id` (`aco_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aros_acos`
--

LOCK TABLES `aros_acos` WRITE;
/*!40000 ALTER TABLE `aros_acos` DISABLE KEYS */;
INSERT INTO `aros_acos` VALUES (1,1,1,'1','1','1','1'),(2,2,1,'-1','-1','-1','-1'),(7,3,1,'-1','-1','-1','-1'),(10,3,48,'1','1','1','1'),(17,2,8,'1','1','1','1'),(18,2,12,'-1','-1','-1','-1');
/*!40000 ALTER TABLE `aros_acos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cake_sessions`
--

DROP TABLE IF EXISTS `cake_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cake_sessions` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `data` text DEFAULT NULL,
  `expires` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cake_sessions`
--

LOCK TABLES `cake_sessions` WRITE;
/*!40000 ALTER TABLE `cake_sessions` DISABLE KEYS */;
INSERT INTO `cake_sessions` VALUES ('i72qa9g3t91gtkj2u03hrbe2dc','Config|a:3:{s:9:\"userAgent\";s:32:\"4a0447ac2d6bbb6f4f0ba62ba0cd831a\";s:4:\"time\";i:1617611523;s:9:\"countdown\";i:10;}Message|a:1:{s:4:\"auth\";a:4:{s:7:\"message\";s:51:\"No está autorizado para acceder a esta aplicación\";s:3:\"key\";s:4:\"auth\";s:7:\"element\";s:13:\"Flash/default\";s:6:\"params\";a:0:{}}}Auth|a:1:{s:4:\"User\";a:13:{s:2:\"id\";s:1:\"1\";s:7:\"nombres\";N;s:3:\"app\";N;s:3:\"apm\";N;s:6:\"correo\";N;s:8:\"username\";s:6:\"cramos\";s:8:\"group_id\";s:1:\"1\";s:6:\"estado\";s:1:\"A\";s:7:\"creador\";s:6:\"cramos\";s:6:\"creado\";s:19:\"2017-04-26 01:24:19\";s:11:\"modificador\";s:0:\"\";s:10:\"modificado\";N;s:5:\"Group\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:13:\"Administrador\";s:6:\"estado\";s:1:\"A\";s:7:\"creador\";s:6:\"cramos\";s:6:\"creado\";s:19:\"2017-04-26 01:19:00\";s:11:\"modificador\";s:0:\"\";s:10:\"modificado\";N;}}}',1617611523);
/*!40000 ALTER TABLE `cake_sessions` ENABLE KEYS */;
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
  `dni` int(11) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuestados`
--

LOCK TABLES `encuestados` WRITE;
/*!40000 ALTER TABLE `encuestados` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuestados` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuestas`
--

LOCK TABLES `encuestas` WRITE;
/*!40000 ALTER TABLE `encuestas` DISABLE KEYS */;
/*!40000 ALTER TABLE `encuestas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `estado` varchar(1) NOT NULL DEFAULT 'A',
  `creador` varchar(45) DEFAULT NULL,
  `creado` datetime DEFAULT NULL,
  `modificador` varchar(45) DEFAULT NULL,
  `modificado` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'Administrador','A','cramos','2017-04-26 01:19:00','',NULL),(2,'managers','A','cramos','2017-04-26 01:22:43','',NULL),(3,'users','A','cramos','2017-04-26 01:22:56','',NULL),(4,'Vendedor','A','cramos','2017-05-06 05:53:41','',NULL);
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  `aro_id` int(10) DEFAULT NULL,
  `aco_id` int(10) DEFAULT NULL,
  `creador` varchar(45) DEFAULT NULL,
  `creado` datetime DEFAULT NULL,
  `modificador` varchar(45) DEFAULT NULL,
  `modificado` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_menus_acos1_idx` (`aco_id`),
  KEY `fk_menus_arod1_idx` (`aro_id`) USING BTREE,
  CONSTRAINT `fk_menus_acos1` FOREIGN KEY (`aco_id`) REFERENCES `acos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_menus_aros1` FOREIGN KEY (`aro_id`) REFERENCES `aros` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Permisos',NULL,1,12,1,NULL,NULL,NULL,NULL,NULL),(2,'Grupos',1,2,3,1,9,NULL,NULL,NULL,NULL),(3,'Usuarios',1,4,5,1,49,NULL,NULL,NULL,NULL),(4,'Aplicaciones',1,6,7,1,64,NULL,NULL,NULL,NULL),(5,'Accesos',1,8,9,1,63,NULL,NULL,NULL,NULL),(10,'Permisos',NULL,13,14,2,NULL,NULL,NULL,NULL,NULL),(14,'Menu',1,10,11,1,74,NULL,NULL,NULL,NULL),(15,'Aplicaciones',NULL,15,26,1,NULL,NULL,NULL,NULL,NULL),(16,'Encuestas',15,16,17,1,82,NULL,NULL,NULL,NULL),(17,'Preguntas',15,18,19,1,88,NULL,NULL,NULL,NULL),(18,'Opciones',15,20,21,1,94,NULL,NULL,NULL,NULL),(19,'Respuestas',15,22,23,1,100,NULL,NULL,NULL,NULL),(20,'Encuestados',15,24,25,1,106,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `note` text NOT NULL,
  `color` varchar(20) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (1,'title','note','-8469267','2020-04-18 20:31:37'),(2,'cesar','cesar','-2184710','2020-04-19 04:02:45'),(3,'cesar','cesar','-2184710','2020-04-19 04:05:25'),(4,'cesar','cesar','-2184710','2020-04-19 04:11:54'),(5,'cesar','cesar','-2184710','2020-04-19 04:20:28'),(6,'cesar','ramos','-2184710','2020-04-19 04:24:40'),(7,'title','note','-8469267','2020-04-19 04:48:19'),(8,'title','note','-8469267','2020-04-19 04:50:14'),(9,'title','note','-8469267','2020-04-19 04:52:08'),(10,'title','note','-8469267','2020-04-19 04:53:31'),(11,'cesar','cesar','-2184710','2020-04-19 05:09:14'),(12,'cesar','cesar','-2184710','2020-04-19 05:11:30'),(13,'Silvia','Silvia','-2184710','2020-04-19 05:18:55'),(14,'Karen','Karen','-2184710','2020-04-19 05:21:33'),(15,'Evelyn','Evelyn','-2184710','2020-04-19 05:22:55'),(17,'Gaby','Rodas','-1222758','2020-04-19 07:21:47'),(18,'Enma','Villareal','-3081091','2020-04-19 07:48:04'),(19,'Helen','Muñoz','-13963914','2020-04-19 08:19:07'),(20,'Cielo','Azul','-8469267','2020-04-19 08:20:53'),(21,'Alianza','Lima','-8469267','2020-04-19 08:31:26'),(22,'Hola','Mundo','-13963914','2020-05-01 23:51:08');
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opciones`
--

LOCK TABLES `opciones` WRITE;
/*!40000 ALTER TABLE `opciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `opciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parametros`
--

DROP TABLE IF EXISTS `parametros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parametros` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `modulo` varchar(45) NOT NULL,
  `variable` varchar(45) NOT NULL,
  `valor` varchar(45) NOT NULL,
  `creador` varchar(45) DEFAULT NULL,
  `creado` datetime DEFAULT NULL,
  `modificador` varchar(45) DEFAULT NULL,
  `modificado` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parametros`
--

LOCK TABLES `parametros` WRITE;
/*!40000 ALTER TABLE `parametros` DISABLE KEYS */;
INSERT INTO `parametros` VALUES (3,'migracion_productos','sizePag','500',NULL,NULL,NULL,NULL),(4,'migracion_productos','page','5',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `parametros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (1,'Cesar','Ramos'),(2,'Vanessa','Medrano Pulido'),(3,'Lucia del Rosario','Diaz Mensoza'),(5,'Silvia','Medrano Pulido');
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
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
  `estado` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'A',
  `creador` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `creado` datetime DEFAULT NULL,
  `modificador` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `modificado` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_preguntas_encuestas1_idx` (`encuesta_id`),
  CONSTRAINT `fk_preguntas_encuestas1` FOREIGN KEY (`encuesta_id`) REFERENCES `encuestas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preguntas`
--

LOCK TABLES `preguntas` WRITE;
/*!40000 ALTER TABLE `preguntas` DISABLE KEYS */;
/*!40000 ALTER TABLE `preguntas` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respuestas`
--

LOCK TABLES `respuestas` WRITE;
/*!40000 ALTER TABLE `respuestas` DISABLE KEYS */;
/*!40000 ALTER TABLE `respuestas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(45) DEFAULT NULL,
  `app` varchar(45) DEFAULT NULL,
  `apm` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` char(40) NOT NULL,
  `group_id` int(11) NOT NULL,
  `estado` varchar(1) NOT NULL DEFAULT 'A',
  `creador` varchar(45) DEFAULT NULL,
  `creado` datetime DEFAULT NULL,
  `modificador` varchar(45) DEFAULT NULL,
  `modificado` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `fk_users_group1_idx` (`group_id`),
  CONSTRAINT `fk_users_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,NULL,NULL,NULL,NULL,'cramos','22c2b57f5874e00d79a0fdc49677aee7cb00272b',1,'A','cramos','2017-04-26 01:24:19','',NULL),(2,NULL,NULL,NULL,NULL,'joselo','bf6a2efc75b87407bbd2d59cd620f9c4948ce1c9',2,'A','cramos','2017-04-26 01:26:18','','2017-04-26 01:26:20'),(3,NULL,NULL,NULL,NULL,'lucia','bf6a2efc75b87407bbd2d59cd620f9c4948ce1c9',3,'A','cramos','2017-04-26 01:26:43','','2017-04-26 01:26:45'),(4,NULL,NULL,NULL,NULL,'paco','bf6a2efc75b87407bbd2d59cd620f9c4948ce1c9',4,'A','',NULL,'',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-05  2:39:12
