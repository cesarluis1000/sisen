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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acos`
--

LOCK TABLES `acos` WRITE;
/*!40000 ALTER TABLE `acos` DISABLE KEYS */;
INSERT INTO `acos` VALUES (1,NULL,NULL,NULL,'controllers',1,154),(8,1,NULL,NULL,'Groups',2,13),(9,8,NULL,NULL,'index',3,4),(10,8,NULL,NULL,'view',5,6),(11,8,NULL,NULL,'add',7,8),(12,8,NULL,NULL,'edit',9,10),(13,8,NULL,NULL,'delete',11,12),(20,1,NULL,NULL,'Pages',14,17),(21,20,NULL,NULL,'display',15,16),(22,1,NULL,NULL,'Parametros',18,29),(23,22,NULL,NULL,'index',19,20),(24,22,NULL,NULL,'view',21,22),(25,22,NULL,NULL,'add',23,24),(26,22,NULL,NULL,'edit',25,26),(27,22,NULL,NULL,'delete',27,28),(46,1,NULL,NULL,'Users',30,47),(47,46,NULL,NULL,'login',31,32),(48,46,NULL,NULL,'logout',33,34),(49,46,NULL,NULL,'index',35,36),(50,46,NULL,NULL,'view',37,38),(51,46,NULL,NULL,'add',39,40),(52,46,NULL,NULL,'edit',41,42),(53,46,NULL,NULL,'delete',43,44),(54,1,NULL,NULL,'AclExtras',48,49),(55,1,NULL,NULL,'DebugKit',50,57),(56,55,NULL,NULL,'ToolbarAccess',51,56),(57,56,NULL,NULL,'history_state',52,53),(58,56,NULL,NULL,'sql_explain',54,55),(61,46,NULL,NULL,'initDB',45,46),(62,1,NULL,NULL,'Permisos',58,71),(63,62,NULL,NULL,'roles',59,60),(64,62,NULL,NULL,'aplicaciones',61,62),(65,62,NULL,NULL,'add',63,64),(66,62,NULL,NULL,'acceso',65,66),(67,62,NULL,NULL,'edit',67,68),(68,62,NULL,NULL,'delete',69,70),(73,1,NULL,NULL,'Menus',72,81),(74,73,NULL,NULL,'index',73,74),(75,73,NULL,NULL,'add',75,76),(79,73,NULL,NULL,'delete',77,78),(80,73,NULL,NULL,'edit',79,80),(81,1,NULL,NULL,'Encuestas',82,99),(82,81,NULL,NULL,'index',83,84),(83,81,NULL,NULL,'view',85,86),(84,81,NULL,NULL,'add',87,88),(85,81,NULL,NULL,'edit',89,90),(86,81,NULL,NULL,'delete',91,92),(87,1,NULL,NULL,'Preguntas',100,111),(88,87,NULL,NULL,'index',101,102),(89,87,NULL,NULL,'view',103,104),(90,87,NULL,NULL,'add',105,106),(91,87,NULL,NULL,'edit',107,108),(92,87,NULL,NULL,'delete',109,110),(93,1,NULL,NULL,'Opciones',112,123),(94,93,NULL,NULL,'index',113,114),(95,93,NULL,NULL,'view',115,116),(96,93,NULL,NULL,'add',117,118),(97,93,NULL,NULL,'edit',119,120),(98,93,NULL,NULL,'delete',121,122),(99,1,NULL,NULL,'Respuestas',124,135),(100,99,NULL,NULL,'index',125,126),(101,99,NULL,NULL,'view',127,128),(102,99,NULL,NULL,'add',129,130),(103,99,NULL,NULL,'edit',131,132),(104,99,NULL,NULL,'delete',133,134),(105,1,NULL,NULL,'Encuestados',136,153),(106,105,NULL,NULL,'index',137,138),(107,105,NULL,NULL,'view',139,140),(108,105,NULL,NULL,'add',141,142),(109,105,NULL,NULL,'edit',143,144),(110,105,NULL,NULL,'delete',145,146),(111,81,NULL,NULL,'grafico',93,94),(112,105,NULL,NULL,'correo',147,148),(113,105,NULL,NULL,'correos',149,150),(114,105,NULL,NULL,'add_list',151,152),(115,81,NULL,NULL,'correos_video',95,96),(116,81,NULL,NULL,'enlace_video',97,98);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aros`
--

LOCK TABLES `aros` WRITE;
/*!40000 ALTER TABLE `aros` DISABLE KEYS */;
INSERT INTO `aros` VALUES (1,NULL,'Group',1,'Administrador',1,4),(2,NULL,'Group',2,'managers',5,8),(3,NULL,'Group',3,'users',9,12),(4,1,'User',1,'cramos',2,3),(5,2,'User',2,'joselo',6,7),(6,3,'User',3,'marisa',10,11),(7,NULL,'Group',4,'Vendedor',13,16),(8,7,'User',4,'paco',14,15),(9,NULL,'Group',5,'Administrador Web',17,20),(10,9,'User',5,'johanesp',18,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aros_acos`
--

LOCK TABLES `aros_acos` WRITE;
/*!40000 ALTER TABLE `aros_acos` DISABLE KEYS */;
INSERT INTO `aros_acos` VALUES (1,1,1,'1','1','1','1'),(2,2,1,'-1','-1','-1','-1'),(7,3,1,'-1','-1','-1','-1'),(10,3,48,'1','1','1','1'),(17,2,8,'1','1','1','1'),(18,2,12,'-1','-1','-1','-1'),(19,9,1,'1','1','1','1');
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
INSERT INTO `cake_sessions` VALUES ('1ug2b582oooottgo2u71mob7u1','Config|a:3:{s:9:\"userAgent\";s:32:\"e0fe61737b81db681501ad73d49f44e9\";s:4:\"time\";i:1618596897;s:9:\"countdown\";i:10;}Auth|a:1:{s:4:\"User\";a:13:{s:2:\"id\";s:1:\"1\";s:7:\"nombres\";N;s:3:\"app\";N;s:3:\"apm\";N;s:6:\"correo\";N;s:8:\"username\";s:6:\"cramos\";s:8:\"group_id\";s:1:\"1\";s:6:\"estado\";s:1:\"A\";s:7:\"creador\";s:6:\"cramos\";s:6:\"creado\";s:19:\"2017-04-26 01:24:19\";s:11:\"modificador\";s:0:\"\";s:10:\"modificado\";N;s:5:\"Group\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:13:\"Administrador\";s:6:\"estado\";s:1:\"A\";s:7:\"creador\";s:6:\"cramos\";s:6:\"creado\";s:19:\"2017-04-26 01:19:00\";s:11:\"modificador\";s:0:\"\";s:10:\"modificado\";N;}}}',1618596897),('3jlhitgtu62ncg6d3u9rignugv','Config|a:3:{s:9:\"userAgent\";s:32:\"e0fe61737b81db681501ad73d49f44e9\";s:4:\"time\";i:1618556173;s:9:\"countdown\";i:10;}Message|a:0:{}Auth|a:1:{s:4:\"User\";a:13:{s:2:\"id\";s:1:\"1\";s:7:\"nombres\";N;s:3:\"app\";N;s:3:\"apm\";N;s:6:\"correo\";N;s:8:\"username\";s:6:\"cramos\";s:8:\"group_id\";s:1:\"1\";s:6:\"estado\";s:1:\"A\";s:7:\"creador\";s:6:\"cramos\";s:6:\"creado\";s:19:\"2017-04-26 01:24:19\";s:11:\"modificador\";s:0:\"\";s:10:\"modificado\";N;s:5:\"Group\";a:7:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:13:\"Administrador\";s:6:\"estado\";s:1:\"A\";s:7:\"creador\";s:6:\"cramos\";s:6:\"creado\";s:19:\"2017-04-26 01:19:00\";s:11:\"modificador\";s:0:\"\";s:10:\"modificado\";N;}}}',1618556173),('r016ao6djd46raf3ej8slcgcli','Config|a:3:{s:9:\"userAgent\";s:32:\"4a0447ac2d6bbb6f4f0ba62ba0cd831a\";s:4:\"time\";i:1618337013;s:9:\"countdown\";i:10;}Message|a:1:{s:4:\"auth\";a:4:{s:7:\"message\";s:51:\"No está autorizado para acceder a esta aplicación\";s:3:\"key\";s:4:\"auth\";s:7:\"element\";s:13:\"Flash/default\";s:6:\"params\";a:0:{}}}Auth|a:1:{s:8:\"redirect\";s:25:\"/Encuestas/enlace_video/6\";}',1618337013);
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
  `dni` varchar(8) COLLATE utf8_bin NOT NULL,
  `telefono` varchar(9) COLLATE utf8_bin DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuestados`
--

LOCK TABLES `encuestados` WRITE;
/*!40000 ALTER TABLE `encuestados` DISABLE KEYS */;
INSERT INTO `encuestados` VALUES (1,'Cesar','Ramos','Cueva','42684024',NULL,'cesarluis1000@hotmail.com',NULL,'d8b21902c5da652220c3acfcb0ee7a21',1,'E','cramos','2021-04-06 01:31:44','cramos','2021-04-06 01:49:25'),(2,'Silvia','Medrano','Pulido','42684036',NULL,'silvia@gmail.com',NULL,'7e59cb9bb4d5f1aa066d61d6765a41ea',1,'E','cramos','2021-04-06 01:50:25','cramos','2021-04-06 02:17:20'),(3,'Silvia','Medrano','Pulido','12345678','987654321','silvia@gmail.com',NULL,'5fa3efef8e662269245e95fe1886d0f2',4,'E','cramos','2021-04-07 22:31:11',NULL,NULL),(4,'Jorge ','Duran','Morales','42684024','962531478','cesarluis1000@hotmail.com',NULL,'c6be72d8d11aeac17e2735b64a3f2bf9',5,'E','cramos','2021-04-07 23:50:04','cramos','2021-04-14 19:06:31'),(5,'Julia','Perez','Mendoza','56987412','965214587','julia@gmail.com',NULL,'620cc93b65451aeef8b2474dcd3132df',5,'E','cramos','2021-04-07 23:58:56',NULL,NULL),(6,'Maria','Lluch','Melendez','98521452','965231458','cesarluis1007@gmail.com',NULL,'f11e6be5269a79f8751cad426d1dcdb1',5,'A','cramos','2021-04-08 00:00:33','cramos','2021-04-16 09:41:15'),(7,'Pablo','Estepa','Velasco','95647447','962654123','pablo@gmail.com',NULL,'21f309b85f08fc15498514c176f83a04',5,'E','cramos','2021-04-08 00:01:19',NULL,NULL),(8,'Martin','Santos','Benavent','56987452','965874112','martin@gmail.com',NULL,'e958f632c64a44d22805d49d0dc58f14',5,'E','cramos','2021-04-08 00:02:05',NULL,NULL),(9,'Emilia','Olalla','Gordon','56874125','965231400','emilia@gmail.com',NULL,'5f4b2ed184537632b7d85dc7631eade5',5,'E','cramos','2021-04-08 00:03:09',NULL,NULL),(10,'Andrea','Carrillo','Parrado','95547858','962547896','andrea@gmail.com',NULL,'d32244fd85578c4020db01c32f19b41f',5,'E','cramos','2021-04-08 00:05:38',NULL,NULL),(11,'Eva','Fresno','Piedra','96588541','962587452','eva@gmail.com',NULL,'6e21071485ef8fb5ea83470d1472082b',5,'E','cramos','2021-04-08 00:06:14',NULL,NULL),(12,'Angeles ','Miñano','Valdivia','85654754','962533145','angeles@gmail.com',NULL,'1bc988e4709f7f02d0c0d475b351cb0e',5,'E','cramos','2021-04-08 00:06:52',NULL,NULL),(13,'Lorena','Baños','Lage','56854412','962587458','lorena@gmail.com',NULL,'c1855194bd918506c4bf482a931ced38',5,'E','cramos','2021-04-08 00:08:00',NULL,NULL),(14,'Carlos Alberto ','Uribe','Antonio','08551377','994727584','c.uribe@cacsanfrancisco.com',NULL,'725e966ad516ca340d2162bbedd99d90',6,'A','cramos','2021-04-08 11:50:11','cramos','2021-04-08 18:38:51'),(15,'Marco Antonio','Villavicencio','Guardia','22498668','962683344','m.villavicencio@cacsanfrancisco.com',NULL,'c054b0a0b4439c244251d5b16d19f3c3',6,'E','cramos','2021-04-08 11:51:20',NULL,NULL),(16,'Omayra','Cachay','Suarez','43546273','931856255','o.cachay@cacsanfrancisco.com',NULL,'417679016a2ff8b9ee515fca0ff44fd1',6,'E','cramos','2021-04-08 11:54:21',NULL,NULL),(17,'Fernando Augusto','Calderon ','Juarez','43177536','962983008','fcalderon@cacsf.pe',NULL,'a783f8d332ba169c288137d251bfb5f7',6,'E','cramos','2021-04-08 11:55:08',NULL,NULL),(18,'Jose Antonio','Valdivia','Jaimes','48152730','947544288','jvaldivia@cacsf.pe',NULL,'d62eb556b9c9acb46c7dec3f50015385',6,'E','cramos','2021-04-08 11:56:05',NULL,NULL),(19,'Johan Neisel','Espinoza','Soria','42041946','913701117','jespinoza@cacsf.pe',NULL,'2c4b98574c3da794c03c34c6a545e2e9',6,'E','cramos','2021-04-08 11:57:11',NULL,NULL),(20,'Crecia Thalia','Trujillo','Melchor','47240211','996930900','c.trujillo@cacsf.pe',NULL,'4fe65652cf35dfd86df3970f0151705d',6,'E','cramos','2021-04-08 11:57:53',NULL,NULL),(21,'Jhonatan Niels','Machuca','Verde','44116017','947476491','j.machuca@cacsf.pe',NULL,'9e07086559a0c59f7440d2a248bd0524',6,'E','cramos','2021-04-08 11:58:32',NULL,NULL),(22,'Becker David','Acosta ','Lopez','42674788','943811875','b.acosta@cacsf.pe',NULL,'154138cff3d7b2a3f62e6480d1dc2736',6,'E','cramos','2021-04-08 11:59:07',NULL,NULL),(23,'Elizabeth Jaqueline','Alvarez','Pajuelo','42528491','932000567','e.pejuelo@cacsf.pe',NULL,'e9b64f82341afc9dfe90b03b022fe015',6,'E','cramos','2021-04-08 11:59:47',NULL,NULL),(25,'Carlos Alberto ','Uribe','Antonio','08551377','994727584','c.uribe@cacsanfrancisco.com',NULL,'397914f9df6da7fc0d1260325de40db3',8,'A','cramos','2021-04-12 07:33:54',NULL,NULL),(26,'Marco Antonio','Villavicencio','Guardia','22498668','962683344','m.villavicencio@cacsanfrancisco.com',NULL,'1b095aff35633e0eeeea3e7d1424f069',8,'A','cramos','2021-04-12 07:33:54',NULL,NULL),(27,'Omayra','Cachay','Suarez','43546273','931856255','o.cachay@cacsanfrancisco.com',NULL,'02883cafe70d0670a7ee7ff631a4d6d4',8,'A','cramos','2021-04-12 07:33:54',NULL,NULL),(28,'Fernando Augusto','Calderon ','Juarez','43177536','962983008','fcalderon@cacsf.pe',NULL,'52ed24007b8ac27d76d277776480fabb',8,'A','cramos','2021-04-12 07:33:54',NULL,NULL),(29,'Jose Antonio','Valdivia','Jaimes','48152730','947544288','jvaldivia@cacsf.pe',NULL,'552cb2384a6ae9649a45b2b8c6e47189',8,'A','cramos','2021-04-12 07:33:54',NULL,NULL),(30,'Johan Neisel','Espinoza','Soria','42041946','913701117','jespinoza@cacsf.pe',NULL,'7565337ee67262c20305d9335dfaaad0',8,'A','cramos','2021-04-12 07:33:54',NULL,NULL),(31,'Crecia Thalia','Trujillo','Melchor','47240211','996930900','c.trujillo@cacsf.pe',NULL,'d6ff8063ce0b2df3e949ab8a61650462',8,'A','cramos','2021-04-12 07:33:54',NULL,NULL),(32,'Jhonatan Niels','Machuca','Verde','44116017','947476491','j.machuca@cacsf.pe',NULL,'ef3582c738b697333fc491501ccf0df1',8,'A','cramos','2021-04-12 07:33:54',NULL,NULL),(33,'Becker David','Acosta ','Lopez','42674788','943811875','b.acosta@cacsf.pe',NULL,'b9fd7e2021aae63e3c21bad5bf242524',8,'A','cramos','2021-04-12 07:33:54',NULL,NULL),(34,'Elizabeth Jaqueline','Alvarez','Pajuelo','42528491','932000567','e.pejuelo@cacsf.pe',NULL,'7b98a2e4ecc0fbfc55f45333a6802997',8,'A','cramos','2021-04-12 07:33:54',NULL,NULL),(35,'Cesar','Ramos','Cueva','42684024','989231175','cesarluis1000@hotmail.com',NULL,'da03aa14706a1e7786418493ef79e35c',5,'E','cramos','2021-04-16 09:01:29','cramos','2021-04-16 11:06:53'),(36,'Carlos Alberto ','Uribe','Antonio','08551377','994727584','c.uribe@cacsanfrancisco.com',NULL,'92cc6b29cd60b18361aee6c3fbf3b761',9,'A','cramos','2021-04-16 10:53:14',NULL,NULL),(37,'Marco Antonio','Villavicencio','Guardia','22498668','962683344','m.villavicencio@cacsanfrancisco.com',NULL,'2826bf2dcbf3f3e010c099f3c4685381',9,'A','cramos','2021-04-16 10:53:14',NULL,NULL),(38,'Omayra','Cachay','Suarez','43546273','931856255','o.cachay@cacsanfrancisco.com',NULL,'89833084f852416f26fb9a82c2ab466a',9,'A','cramos','2021-04-16 10:53:14',NULL,NULL),(39,'Fernando Augusto','Calderon ','Juarez','43177536','962983008','fcalderon@cacsf.pe',NULL,'9fe4335dc37a233370771e9bcafdaebd',9,'A','cramos','2021-04-16 10:53:14',NULL,NULL),(40,'Jose Antonio','Valdivia','Jaimes','48152730','947544288','jvaldivia@cacsf.pe',NULL,'6744a4d56575cbacdd780bb405568054',9,'A','cramos','2021-04-16 10:53:14',NULL,NULL),(41,'Johan Neisel','Espinoza','Soria','42041946','913701117','jespinoza@cacsf.pe',NULL,'596c6d0215bd35ce8366afc23e416768',9,'A','cramos','2021-04-16 10:53:14',NULL,NULL),(42,'Crecia Thalia','Trujillo','Melchor','47240211','996930900','c.trujillo@cacsf.pe',NULL,'ca54738e86513084958969779e42b7f3',9,'A','cramos','2021-04-16 10:53:14',NULL,NULL),(43,'Jhonatan Niels','Machuca','Verde','44116017','947476491','j.machuca@cacsf.pe',NULL,'d18ad88e4a5a9b51e3c6aedc590bd3d5',9,'A','cramos','2021-04-16 10:53:14',NULL,NULL),(44,'Becker David','Acosta ','Lopez','42674788','943811875','b.acosta@cacsf.pe',NULL,'ba878e7a4fad1114c9789236bad1518f',9,'A','cramos','2021-04-16 10:53:14',NULL,NULL),(45,'Elizabeth Jaqueline','Alvarez','Pajuelo','42528491','932000567','e.pejuelo@cacsf.pe',NULL,'f089e1a8e824024611df09226cadebe0',9,'A','cramos','2021-04-16 10:53:14',NULL,NULL),(46,'Cesar Luis','Ramos','Cueva','42684024','964121255','cesarluis1000@hotmail.com',NULL,'fdca3d12d6d4dc47f6e7753961bcabcb',5,'E','cramos','2021-04-16 10:58:40',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuestas`
--

LOCK TABLES `encuestas` WRITE;
/*!40000 ALTER TABLE `encuestas` DISABLE KEYS */;
INSERT INTO `encuestas` VALUES (1,'Elecciones generales 2021','2021-04-05 17:34:30','2021-04-05 17:34:33','https://us05web.zoom.us/j/5641667630?pwd=bXhNSktpUWZiM25GZDFId3VwWTd1Zz09','A','cramos','2021-04-05 17:34:39',NULL,NULL),(2,'Elecciones generales 2022','2021-04-05 20:22:38','2021-04-05 20:22:40','https://us05web.zoom.us/j/5641667630?pwd=bXhNSktpUWZiM25GZDFId3VwWTd1Zz09','A','cramos','2021-04-05 20:35:07',NULL,NULL),(3,'Elecciones generales 2023','2021-04-05 21:22:16','2021-04-05 21:22:19','','A','cramos','2021-04-05 21:22:29',NULL,NULL),(4,'Elecciones generales 2024','2021-04-07 22:23:32','2021-04-07 22:23:34','https://us05web.zoom.us/j/5641667630?pwd=bXhNSktpUWZiM25GZDFId3VwWTd1Zz09','A','cramos','2021-04-07 22:23:39',NULL,NULL),(5,'Elecciones generales 2025','2021-04-18 15:00:00','2021-04-18 15:30:00','https://us05web.zoom.us/j/5641667630?pwd=bXhNSktpUWZiM25GZDFId3VwWTd1Zz09  ','A','cramos','2021-04-07 23:40:21','cramos','2021-04-16 01:41:24'),(6,'Cooperativa San Francisco','2021-04-08 11:46:10','2021-04-08 11:46:12','https://us05web.zoom.us/j/5641667630?pwd=bXhNSktpUWZiM25GZDFId3VwWTd1Zz09  ','A','cramos','2021-04-08 11:47:47',NULL,NULL),(7,'ENCUESTA PRUEBA','2021-04-10 15:20:26','2021-04-10 17:42:59','','A','cramos','2021-04-08 13:43:19',NULL,NULL),(8,'ENCUENTA PRUEBA 2','2021-04-09 15:20:08','2021-04-09 17:50:25','','A','cramos','2021-04-08 13:50:38',NULL,NULL),(9,'Elecciones generales 2026','2021-04-18 12:00:00','2021-04-18 12:30:00','https://us05web.zoom.us/j/5641667630?pwd=bXhNSktpUWZiM25GZDFId3VwWTd1Zz09','A','cramos','2021-04-16 09:22:11',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'Administrador','A','cramos','2017-04-26 01:19:00','',NULL),(2,'managers','A','cramos','2017-04-26 01:22:43','',NULL),(3,'users','A','cramos','2017-04-26 01:22:56','',NULL),(4,'Vendedor','A','cramos','2017-05-06 05:53:41','',NULL),(5,'Administrador Web','A','cramos','2021-04-05 20:09:47','',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Permisos',NULL,1,12,1,NULL,NULL,NULL,NULL,NULL),(2,'Grupos',1,2,3,1,9,NULL,NULL,NULL,NULL),(3,'Usuarios',1,4,5,1,49,NULL,NULL,NULL,NULL),(4,'Aplicaciones',1,6,7,1,64,NULL,NULL,NULL,NULL),(5,'Accesos',1,8,9,1,63,NULL,NULL,NULL,NULL),(10,'Permisos',NULL,13,14,2,NULL,NULL,NULL,NULL,NULL),(14,'Menu',1,10,11,1,74,NULL,NULL,NULL,NULL),(15,'Aplicaciones',NULL,15,26,1,NULL,NULL,NULL,NULL,NULL),(16,'Encuestas',15,16,17,1,82,NULL,NULL,NULL,NULL),(17,'Preguntas',15,18,19,1,88,NULL,NULL,NULL,NULL),(18,'Opciones',15,20,21,1,94,NULL,NULL,NULL,NULL),(20,'Encuestados',15,22,23,1,106,NULL,NULL,NULL,NULL),(21,'Respuestas',15,24,25,1,100,'cramos','2021-04-07 22:35:55',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opciones`
--

LOCK TABLES `opciones` WRITE;
/*!40000 ALTER TABLE `opciones` DISABLE KEYS */;
INSERT INTO `opciones` VALUES (1,'Yonhy Lescano',1,'A','cramos','2021-04-05 23:28:18','cramos','2021-04-05 23:29:59'),(2,'George Forsyth',1,'A','cramos','2021-04-06 00:12:52',NULL,NULL),(3,'Keiko Fujimori',1,'A','cramos','2021-04-06 00:13:50',NULL,NULL),(4,'Veronika Mendoza',1,'A','cramos','2021-04-06 00:18:52',NULL,NULL),(5,'Yonhy Lescano',2,'A','cramos','2021-04-06 09:05:03',NULL,NULL),(6,'George Forsyth',2,'A','cramos','2021-04-06 09:05:13',NULL,NULL),(7,'Keiko Fujimori',2,'A','cramos','2021-04-06 09:05:22',NULL,NULL),(8,'Veronika Mendoza',2,'A','cramos','2021-04-06 09:05:29',NULL,NULL),(9,'Yonhy Lescano',3,'A','cramos','2021-04-06 09:06:21',NULL,NULL),(10,'George Forsyth',3,'A','cramos','2021-04-06 09:06:29',NULL,NULL),(11,'Keiko Fujimori',3,'A','cramos','2021-04-06 09:06:36',NULL,NULL),(12,'Yonhy Lescano',4,'A','cramos','2021-04-06 09:07:03',NULL,NULL),(13,'George Forsyth',4,'A','cramos','2021-04-06 09:07:08',NULL,NULL),(14,'Yonhy Lescano',5,'A','cramos','2021-04-07 20:04:51',NULL,NULL),(15,'George Forsyth',5,'A','cramos','2021-04-07 20:05:10',NULL,NULL),(16,'Keiko Fujimori',5,'A','cramos','2021-04-07 20:05:16',NULL,NULL),(17,'Veronika Mendoza',5,'A','cramos','2021-04-07 20:20:18',NULL,NULL),(18,'Yonhy Lescano',6,'A','cramos','2021-04-07 20:26:43',NULL,NULL),(19,'George Forsyth',6,'A','cramos','2021-04-07 20:26:49',NULL,NULL),(20,'Yonhy Lescano',7,'A','cramos','2021-04-07 20:27:44',NULL,NULL),(21,'George Forsyth',7,'A','cramos','2021-04-07 20:27:53',NULL,NULL),(22,'Keiko Fujimori',7,'A','cramos','2021-04-07 20:28:03',NULL,NULL),(23,'Veronika Mendoza',7,'A','cramos','2021-04-07 20:28:10',NULL,NULL),(24,'Yonhy Lescano',8,'A','cramos','2021-04-07 22:25:01',NULL,NULL),(25,'George Forsyth',8,'A','cramos','2021-04-07 22:25:05',NULL,NULL),(26,'Keiko Fujimori',8,'A','cramos','2021-04-07 22:25:13',NULL,NULL),(27,'Veronika Mendoza',8,'A','cramos','2021-04-07 22:25:23',NULL,NULL),(28,'Yonhy Lescano',9,'A','cramos','2021-04-07 22:28:05',NULL,NULL),(29,'George Forsyth',9,'A','cramos','2021-04-07 22:28:15',NULL,NULL),(30,'Yonhy Lescano',10,'A','cramos','2021-04-07 22:28:51',NULL,NULL),(31,'George Forsyth',10,'A','cramos','2021-04-07 22:28:56',NULL,NULL),(32,'Keiko Fujimori',10,'A','cramos','2021-04-07 22:29:00',NULL,NULL),(33,'Veronika Mendoza',10,'A','cramos','2021-04-07 22:29:05',NULL,NULL),(34,'Rafael Aliaga',10,'A','cramos','2021-04-07 22:29:24',NULL,NULL),(35,'Yonhy Lescano ',11,'A','cramos','2021-04-07 23:48:35',NULL,NULL),(36,'George Forsyth ',11,'A','cramos','2021-04-07 23:50:26',NULL,NULL),(37,'Keiko Fujimori 	',11,'A','cramos','2021-04-07 23:50:42',NULL,NULL),(38,'Veronika Mendoza ',12,'A','cramos','2021-04-07 23:51:20',NULL,NULL),(39,'George Forsyth ',12,'A','cramos','2021-04-07 23:51:55',NULL,NULL),(40,'Keiko Fujimori ',12,'A','cramos','2021-04-07 23:52:10',NULL,NULL),(41,'Yonhy Lescano ',12,'A','cramos','2021-04-07 23:52:47',NULL,NULL),(42,'Yonhy Lescano ',13,'A','cramos','2021-04-07 23:53:02',NULL,NULL),(43,'Veronika Mendoza ',13,'A','cramos','2021-04-07 23:53:06',NULL,NULL),(44,'Keiko Fujimori ',13,'A','cramos','2021-04-07 23:53:17',NULL,NULL),(45,'Keiko Fujimori ',14,'A','cramos','2021-04-07 23:53:56',NULL,NULL),(46,'Yonhy Lescano ',14,'A','cramos','2021-04-07 23:54:17',NULL,NULL),(47,'Veronika Mendoza ',14,'A','cramos','2021-04-07 23:54:24',NULL,NULL),(48,'George Forsyth ',14,'A','cramos','2021-04-07 23:54:44',NULL,NULL),(49,'Yonhy Lescano ',15,'A','cramos','2021-04-07 23:55:36',NULL,NULL),(50,'George Forsyth ',15,'A','cramos','2021-04-07 23:55:43','cramos','2021-04-07 23:56:19'),(51,'Veronika Mendoza ',15,'A','cramos','2021-04-07 23:57:48',NULL,NULL),(52,'JOHAN ESPINOZA',16,'A','cramos','2021-04-08 13:45:38',NULL,NULL),(53,'FERNANDO CALDERON',16,'A','cramos','2021-04-08 13:45:52',NULL,NULL),(55,'JOSE VALDIVA',16,'A','cramos','2021-04-08 13:47:52','cramos','2021-04-08 13:48:04'),(56,'MARCO VILLAVICENCIO',16,'A','cramos','2021-04-08 13:49:00',NULL,NULL),(57,'JOHAN ESPINOZA',17,'A','cramos','2021-04-08 13:49:28',NULL,NULL),(58,'FERNANDO CALDERON',17,'A','cramos','2021-04-08 13:49:36',NULL,NULL),(59,'JOSE VALDIVA',17,'A','cramos','2021-04-08 13:49:44',NULL,NULL),(60,'MARCO VILLAVICENCIO',17,'A','cramos','2021-04-08 13:49:50',NULL,NULL),(61,'JOHAN ESPINOZA',20,'A','cramos','2021-04-08 14:38:44',NULL,NULL),(62,'FERNANDO CALDERON',20,'A','cramos','2021-04-08 14:39:01',NULL,NULL),(63,'MARCO VILLAVICENCIO',20,'A','cramos','2021-04-08 14:39:08',NULL,NULL),(64,'Johan Espinoza',21,'A','cramos','2021-04-08 17:46:20',NULL,NULL),(65,'Fernando Calderon',21,'A','cramos','2021-04-08 17:46:31',NULL,NULL),(66,'Jose Valdivia',21,'A','cramos','2021-04-08 17:46:47',NULL,NULL),(67,'Marco Villavicencio',21,'A','cramos','2021-04-08 17:47:02','cramos','2021-04-08 17:49:19'),(68,'Johan Espinoza',22,'A','cramos','2021-04-08 17:48:28',NULL,NULL),(69,'Fernando Calderon',22,'A','cramos','2021-04-08 17:48:34',NULL,NULL),(70,'Jose Valdivia',22,'A','cramos','2021-04-08 17:48:45',NULL,NULL),(71,'Marco Villavicencio',22,'A','cramos','2021-04-08 17:48:59',NULL,NULL);
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
  `nro_respuesta` int(2) NOT NULL DEFAULT 1,
  `estado` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'A',
  `creador` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `creado` datetime DEFAULT NULL,
  `modificador` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `modificado` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_preguntas_encuestas1_idx` (`encuesta_id`),
  CONSTRAINT `fk_preguntas_encuestas1` FOREIGN KEY (`encuesta_id`) REFERENCES `encuestas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preguntas`
--

LOCK TABLES `preguntas` WRITE;
/*!40000 ALTER TABLE `preguntas` DISABLE KEYS */;
INSERT INTO `preguntas` VALUES (1,'¿Elección de Presidente?',1,1,'A','cramos','2021-04-05 20:58:01',NULL,NULL),(2,'¿Elección de Secretario?',1,1,'A','cramos','2021-04-05 22:34:01','cramos','2021-04-05 23:18:16'),(3,'¿Elección de Tesorero?',1,1,'A','cramos','2021-04-05 22:35:18','cramos','2021-04-05 23:18:20'),(4,'¿Elección de Vocero?',1,1,'A','cramos','2021-04-05 22:39:05','cramos','2021-04-05 23:19:20'),(5,'¿Elección de Gerente?',2,1,'A','cramos','2021-04-07 19:55:32','cramos','2021-04-07 21:47:50'),(6,'¿Elección de Secretario?',2,1,'A','cramos','2021-04-07 20:26:27',NULL,NULL),(7,'¿Elección de Vocero?',2,2,'A','cramos','2021-04-07 20:27:26',NULL,NULL),(8,'¿Elección de Presidente?',4,1,'A','cramos','2021-04-07 22:24:09',NULL,NULL),(9,'¿Elección de Secretario?',4,1,'A','cramos','2021-04-07 22:24:17','cramos','2021-04-07 22:27:38'),(10,'¿Elección de Voceros?',4,2,'A','cramos','2021-04-07 22:24:28',NULL,NULL),(11,'¿Elección de Presidente? ',5,1,'A','cramos','2021-04-07 23:43:36',NULL,NULL),(12,'¿Elección de Secretario? ',5,1,'A','cramos','2021-04-07 23:43:49',NULL,NULL),(13,'¿Elección de Tesorero? ',5,1,'A','cramos','2021-04-07 23:44:00',NULL,NULL),(14,'¿Elección de Vocero? ',5,1,'A','cramos','2021-04-07 23:44:22',NULL,NULL),(15,'¿Elección de Gerente? ',5,1,'A','cramos','2021-04-07 23:45:03',NULL,NULL),(16,'DELEGADOS POR 2 AÑOS',7,1,'A','cramos','2021-04-08 13:44:23',NULL,NULL),(17,'DELEGADOS POR 3 AÑOS',7,1,'A','cramos','2021-04-08 13:44:34',NULL,NULL),(18,'DELEGADOS POR 5 AÑOS',7,1,'A','cramos','2021-04-08 13:44:43',NULL,NULL),(19,'CONSEJO DE ADMINISTRACION',8,2,'A','cramos','2021-04-08 14:37:48',NULL,NULL),(20,'CONSEJO DE VIGILANCIA',8,2,'A','cramos','2021-04-08 14:37:54','cramos','2021-04-08 14:38:07'),(21,'¿Delegados por 2 años? ',6,1,'A','cramos','2021-04-08 17:45:58',NULL,NULL),(22,'¿Delegados por 3 años? ',6,1,'A','cramos','2021-04-08 17:48:14',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respuestas`
--

LOCK TABLES `respuestas` WRITE;
/*!40000 ALTER TABLE `respuestas` DISABLE KEYS */;
INSERT INTO `respuestas` VALUES (1,1,1,'A','cramos','2021-04-07 03:48:04',NULL,NULL),(2,6,1,'A','cramos','2021-04-07 03:48:04',NULL,NULL),(3,11,1,'A','cramos','2021-04-07 03:48:04',NULL,NULL),(4,12,1,'A','cramos','2021-04-07 03:48:04',NULL,NULL),(5,3,2,'A','cramos','2021-04-07 05:26:47',NULL,NULL),(6,6,2,'A','cramos','2021-04-07 05:26:47',NULL,NULL),(7,11,2,'A','cramos','2021-04-07 05:26:47',NULL,NULL),(8,13,2,'A','cramos','2021-04-07 05:26:47',NULL,NULL),(9,24,3,'A','cramos','2021-04-07 22:33:54',NULL,NULL),(10,29,3,'A','cramos','2021-04-07 22:33:54',NULL,NULL),(11,32,3,'A','cramos','2021-04-07 22:33:54',NULL,NULL),(17,36,5,'A','cramos','2021-04-08 00:13:50',NULL,NULL),(18,41,5,'A','cramos','2021-04-08 00:13:50',NULL,NULL),(19,44,5,'A','cramos','2021-04-08 00:13:50',NULL,NULL),(20,46,5,'A','cramos','2021-04-08 00:13:50',NULL,NULL),(21,50,5,'A','cramos','2021-04-08 00:13:50',NULL,NULL),(27,36,7,'A','cramos','2021-04-08 00:14:24',NULL,NULL),(28,39,7,'A','cramos','2021-04-08 00:14:24',NULL,NULL),(29,43,7,'A','cramos','2021-04-08 00:14:24',NULL,NULL),(30,45,7,'A','cramos','2021-04-08 00:14:24',NULL,NULL),(31,50,7,'A','cramos','2021-04-08 00:14:24',NULL,NULL),(32,37,8,'A','cramos','2021-04-08 00:14:41',NULL,NULL),(33,40,8,'A','cramos','2021-04-08 00:14:41',NULL,NULL),(34,43,8,'A','cramos','2021-04-08 00:14:41',NULL,NULL),(35,47,8,'A','cramos','2021-04-08 00:14:41',NULL,NULL),(36,49,8,'A','cramos','2021-04-08 00:14:41',NULL,NULL),(37,37,9,'A','cramos','2021-04-08 00:15:05',NULL,NULL),(38,40,9,'A','cramos','2021-04-08 00:15:05',NULL,NULL),(39,42,9,'A','cramos','2021-04-08 00:15:05',NULL,NULL),(40,46,9,'A','cramos','2021-04-08 00:15:05',NULL,NULL),(41,51,9,'A','cramos','2021-04-08 00:15:05',NULL,NULL),(42,36,10,'A','cramos','2021-04-08 00:15:33',NULL,NULL),(43,38,10,'A','cramos','2021-04-08 00:15:33',NULL,NULL),(44,42,10,'A','cramos','2021-04-08 00:15:33',NULL,NULL),(45,47,10,'A','cramos','2021-04-08 00:15:33',NULL,NULL),(46,50,10,'A','cramos','2021-04-08 00:15:33',NULL,NULL),(47,35,11,'A','cramos','2021-04-08 00:15:56',NULL,NULL),(48,39,11,'A','cramos','2021-04-08 00:15:56',NULL,NULL),(49,44,11,'A','cramos','2021-04-08 00:15:56',NULL,NULL),(50,47,11,'A','cramos','2021-04-08 00:15:56',NULL,NULL),(51,51,11,'A','cramos','2021-04-08 00:15:56',NULL,NULL),(52,35,13,'A','cramos','2021-04-08 00:16:20',NULL,NULL),(53,39,13,'A','cramos','2021-04-08 00:16:20',NULL,NULL),(54,43,13,'A','cramos','2021-04-08 00:16:20',NULL,NULL),(55,45,13,'A','cramos','2021-04-08 00:16:20',NULL,NULL),(56,50,13,'A','cramos','2021-04-08 00:16:20',NULL,NULL),(59,64,15,'A','cramos','2021-04-08 17:50:49',NULL,NULL),(60,69,15,'A','cramos','2021-04-08 17:50:49',NULL,NULL),(61,66,16,'A','cramos','2021-04-08 17:51:07',NULL,NULL),(62,68,16,'A','cramos','2021-04-08 17:51:07',NULL,NULL),(63,67,17,'A','cramos','2021-04-08 17:51:22',NULL,NULL),(64,69,17,'A','cramos','2021-04-08 17:51:22',NULL,NULL),(65,67,18,'A','cramos','2021-04-08 17:51:52',NULL,NULL),(66,68,18,'A','cramos','2021-04-08 17:51:52',NULL,NULL),(67,64,19,'A','cramos','2021-04-08 17:52:06',NULL,NULL),(68,71,19,'A','cramos','2021-04-08 17:52:06',NULL,NULL),(69,65,20,'A','cramos','2021-04-08 17:52:24',NULL,NULL),(70,71,20,'A','cramos','2021-04-08 17:52:24',NULL,NULL),(71,66,21,'A','cramos','2021-04-08 17:52:39',NULL,NULL),(72,68,21,'A','cramos','2021-04-08 17:52:39',NULL,NULL),(73,67,22,'A','cramos','2021-04-08 17:52:53',NULL,NULL),(74,70,22,'A','cramos','2021-04-08 17:52:53',NULL,NULL),(75,65,23,'A','cramos','2021-04-08 17:53:06',NULL,NULL),(76,68,23,'A','cramos','2021-04-08 17:53:06',NULL,NULL),(77,37,12,'A','cramos','2021-04-09 02:33:36',NULL,NULL),(78,39,12,'A','cramos','2021-04-09 02:33:36',NULL,NULL),(79,43,12,'A','cramos','2021-04-09 02:33:36',NULL,NULL),(80,48,12,'A','cramos','2021-04-09 02:33:36',NULL,NULL),(81,50,12,'A','cramos','2021-04-09 02:33:36',NULL,NULL),(87,36,4,'A','cramos','2021-04-15 05:01:02',NULL,NULL),(88,39,4,'A','cramos','2021-04-15 05:01:02',NULL,NULL),(89,43,4,'A','cramos','2021-04-15 05:01:02',NULL,NULL),(90,46,4,'A','cramos','2021-04-15 05:01:02',NULL,NULL),(91,50,4,'A','cramos','2021-04-15 05:01:02',NULL,NULL),(92,35,35,'A','cramos','2021-04-16 10:56:44',NULL,NULL),(93,38,35,'A','cramos','2021-04-16 10:56:44',NULL,NULL),(94,44,35,'A','cramos','2021-04-16 10:56:44',NULL,NULL),(95,48,35,'A','cramos','2021-04-16 10:56:44',NULL,NULL),(96,51,35,'A','cramos','2021-04-16 10:56:44',NULL,NULL),(101,36,46,'A','cramos','2021-04-16 11:02:33',NULL,NULL),(102,39,46,'A','cramos','2021-04-16 11:02:33',NULL,NULL),(103,43,46,'A','cramos','2021-04-16 11:02:33',NULL,NULL),(104,46,46,'A','cramos','2021-04-16 11:02:33',NULL,NULL),(105,50,46,'A','cramos','2021-04-16 11:02:33',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,NULL,NULL,NULL,NULL,'cramos','22c2b57f5874e00d79a0fdc49677aee7cb00272b',1,'A','cramos','2017-04-26 01:24:19','',NULL),(2,NULL,NULL,NULL,NULL,'joselo','bf6a2efc75b87407bbd2d59cd620f9c4948ce1c9',2,'A','cramos','2017-04-26 01:26:18','','2017-04-26 01:26:20'),(3,NULL,NULL,NULL,NULL,'lucia','bf6a2efc75b87407bbd2d59cd620f9c4948ce1c9',3,'A','cramos','2017-04-26 01:26:43','','2017-04-26 01:26:45'),(4,NULL,NULL,NULL,NULL,'paco','bf6a2efc75b87407bbd2d59cd620f9c4948ce1c9',4,'A','',NULL,'',NULL),(5,'Johan','','','','johanesp','8ed787c92ff18d74e2391f173f7b085456ef221d',5,'A','','2021-04-05 19:15:20','',NULL);
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

-- Dump completed on 2021-04-16 12:36:47
