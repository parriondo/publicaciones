-- MySQL dump 10.17  Distrib 10.3.24-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: u915405791_publi
-- ------------------------------------------------------
-- Server version	10.3.24-MariaDB-cll-lve

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
-- Table structure for table `accolade`
--

DROP TABLE IF EXISTS `accolade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accolade` (
  `id` int(11) NOT NULL,
  `nombre_accolade` varchar(200) NOT NULL,
  `punto` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accolade`
--

/*!40000 ALTER TABLE `accolade` DISABLE KEYS */;
/*!40000 ALTER TABLE `accolade` ENABLE KEYS */;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area` (
  `id` int(11) NOT NULL,
  `nombre_area` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,'Consulting'),(2,'Arquitectura'),(3,'Ventas'),(4,'Marketing'),(5,'Comunicaciones'),(6,'Otra'),(7,'Consulting SDC'),(8,'Presales'),(9,'Oracle Digital'),(10,'Customer Success'),(11,'Sales'),(12,'University');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cargo` (
  `id` int(11) NOT NULL,
  `nombre_cargo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,'Gerente'),(2,'Responsable Redes'),(3,'Individual contributor '),(4,'Manager'),(5,'Senior Manager'),(6,'Director'),(7,'Senior Director'),(8,'Solution Engineer'),(9,'Consulting');
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;

--
-- Table structure for table `estado_experto`
--

DROP TABLE IF EXISTS `estado_experto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_experto` (
  `id` int(11) NOT NULL,
  `nombre_estado_experto` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_experto`
--

/*!40000 ALTER TABLE `estado_experto` DISABLE KEYS */;
INSERT INTO `estado_experto` VALUES (1,'Activo'),(2,'Inactivo'),(3,'No pertenece a la empresa'),(4,'Suspendido'),(5,'De baja');
/*!40000 ALTER TABLE `estado_experto` ENABLE KEYS */;

--
-- Table structure for table `estado_publicacion`
--

DROP TABLE IF EXISTS `estado_publicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_publicacion` (
  `id` int(11) NOT NULL,
  `nombre_estado_publicacion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_publicacion`
--

/*!40000 ALTER TABLE `estado_publicacion` DISABLE KEYS */;
INSERT INTO `estado_publicacion` VALUES (1,'En redacción'),(2,'Entregado'),(3,'Revisado'),(4,'Publicado'),(5,'Publicado directo');
/*!40000 ALTER TABLE `estado_publicacion` ENABLE KEYS */;

--
-- Table structure for table `experto`
--

DROP TABLE IF EXISTS `experto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `experto` (
  `id` int(11) NOT NULL,
  `nombre_apellido` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `celular` varchar(200) DEFAULT NULL,
  `linkedin` varchar(200) DEFAULT NULL,
  `fecha_registro_at` date DEFAULT NULL,
  `pais_id` int(11) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `cargo_id` int(11) DEFAULT NULL,
  `estado_experto_id` int(11) DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `pais_id` (`pais_id`),
  KEY `area_id` (`area_id`),
  KEY `cargo_id` (`cargo_id`),
  KEY `estado_experto_id` (`estado_experto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experto`
--

/*!40000 ALTER TABLE `experto` DISABLE KEYS */;
INSERT INTO `experto` VALUES (5,'THOMAS MARAGNO','thomas.maragno@oracle.com','1',NULL,'2017-10-25',2,8,1,1),(7,'CINDY PEREZ','cindy.perez@oracle.com','1',NULL,'2017-10-12',7,4,1,1),(8,'EZZIO DE JACOBIS','ezzio.de.jacobis@oracle.com','1',NULL,'2019-04-12',7,2,1,1),(9,'MARCELA ACOSTA','marcela.ma.acosta@oracle.com','1',NULL,'2018-10-29',7,1,1,1),(10,'JORGE PLASCENCIA','jorge.plascencia@oracle.com','1',NULL,'2017-10-15',7,2,1,1),(11,'JEREMY FONSECA','jeremy.fonseca@oracle.com','1',NULL,'2018-10-29',6,8,1,1),(12,'ANA LAURA MEDRANO','ana.medrano@oracle.com','1',NULL,'2017-09-14',6,6,1,1),(13,'ALEJANDRO FORERO','alejandro.forero@oracle.com','1',NULL,'2017-10-29',5,3,1,1),(14,'JONATHAN LEON','jonathan.leon@oracle.com','1',NULL,'2018-11-02',5,6,1,1),(15,'JUAN BERNATE','juan.bernate@oracle.com','1',NULL,'2018-10-29',5,5,1,1),(16,'LEONARDO CORTEZ','leonardo.cortez@oracle.com','1',NULL,'2018-03-27',5,6,1,1),(17,'ROBERTO GARCIA','roberto.g.garcia@oracle.com','1',NULL,'2018-10-29',5,5,1,1),(18,'CARLOS ORTIZ','carlos.e.ortiz@oracle.com','1',NULL,'2017-10-05',5,8,1,1),(19,'DIANA LEON','diana.leon@oracle.com','1',NULL,'2017-09-12',5,8,1,1),(20,'DIEGO CASAS','diego.casas@oracle.com','1',NULL,'2017-11-17',5,6,1,1),(21,'HARRY ANDRES ORTIZ','harry.andres.ortiz@oracle.com','1',NULL,'2018-03-22',5,8,1,1),(22,'SANDRA PATRICIA DAZA PORTILLA','sandra.daza@oracle.com','573106887454','https://www.linkedin.com/in/sandrapdaza/','2019-02-14',5,9,1,1),(23,'JOSE GARCIA','garcia.ribas@oracle.com','1',NULL,'2018-10-29',7,8,1,1),(24,'EMANUEL ORTIZ FLORES','emmanuel.o.ortiz@oracle.com','1',NULL,'2017-12-06',7,8,1,1),(25,'FIDEL VARGAS','fidel.vargas@oracle.com.ar','57987654738',NULL,'2017-10-12',5,6,1,1),(26,'JAVIER SANTANA ','javier.santana@oracle.com','1',NULL,'2018-04-17',5,3,8,1),(27,'LUZ ANGELA MONTEALEGRE','luz.angela.montealegre@oracle.com','1',NULL,'2018-03-07',5,8,1,1),(28,'ROBBY VEGA','robby.vega@oracle.com','1',NULL,'2017-08-23',5,1,5,1),(29,'ALFONSO CHANSAN','alfonso.r.chansan@oracle.com','1',NULL,'2018-08-20',4,8,5,1),(30,'BRAULIO FERNANDOIS','braulio.fernandois@oracle.com','1',NULL,'2018-08-07',4,6,5,1),(31,'JAVIER MONTIEL','javier.montiel@oracle.com','1',NULL,'2017-11-15',4,3,5,1),(32,'EDSON ARAUJO','edson.araujo@oracle.com','1',NULL,'2017-09-06',4,8,8,1),(33,'RAKESH DADLANI','rakesh.dadlani@oracle.com','1',NULL,'2018-09-03',4,10,1,1),(34,'ANDRES FARIAS','andres.f.farias@oracle.com','1',NULL,'2018-02-22',4,1,5,1),(35,'IGNACIO GODOY','ignacio.godoy@oracle.com','1',NULL,'2017-10-13',4,5,5,1),(36,'SERGIO DEL PINO','sergio.del.pino@oracle.com','1',NULL,'2017-08-23',4,3,6,1),(37,'SERGIO GAJARDO','sergio.gajardo@oracle.com','1',NULL,'2017-10-24',4,4,4,1),(38,'FABIANA CARVALHO','fabiana.a.carvalho@oracle.com','1',NULL,'2017-09-19',3,1,4,1),(39,'MARCOS PALMA','marcos.palma@oracle.com','1',NULL,'2017-09-25',3,6,4,1),(40,'BERNARD LONDON','bernard.london@oracle.com','1',NULL,'2018-01-03',3,2,6,1),(42,'ROBERTO SALOMON','roberto.salomon@oracle.com','1',NULL,'2017-09-07',3,5,8,1),(43,'SEBASTIAN FREIMAN','sebastian.freiman@oracle.com','1',NULL,'2018-07-07',1,2,4,1),(44,'CARLOS NASCIMBENE','carlos.nascimbene@oracle.com','1',NULL,'2018-05-23',1,8,7,1),(45,'MARTIN CASIELLES','martin.casielles@oracle.com','1',NULL,'2018-02-19',1,6,8,1),(46,'OMAR VIGETTI','omar.vigetti@oracle.com','1',NULL,'2017-09-08',1,6,4,1),(47,'ARTURO BLANCO','arturo.blanco@oracle.com','1',NULL,'2018-05-14',7,6,4,1),(48,'CARLOS BARRERA HARTMANN','carlos.barrera.hartmann@oracle.com','1',NULL,'2018-05-23',5,3,9,1),(49,'CLAUDIA HOLZER','claudia.holzer@oracle.com','1',NULL,'2017-09-05',6,3,4,1),(50,'EDEN PAIVA','eden.paiva@oracle.com','1',NULL,'2017-09-22',3,1,4,1),(51,'RAFAEL EDUARDO LOPEZ SARMIENTO','rafael.eduardo.lopez.sarmiento@oracle.com','1',NULL,'2017-09-22',5,6,4,1),(52,'ANGELA GUIZA CEPEDA','angela.guiza.cepeda@oracle.com','1',NULL,'2018-10-29',5,3,7,1),(53,'MANOLETTS MORALES','manoletts.morales@oracle.com','1',NULL,'2018-10-29',2,3,5,1),(54,'LEON KULIKOWSKI','leon.kulikowski@oracle.com','1',NULL,'2018-10-09',3,8,8,1),(55,'ALEXANDER BERNAL','alexander.bernal@oracle.com','1',NULL,'2018-09-06',5,4,5,1),(56,'JUAN GUIZADO','juan.guizado@oracle.com','1',NULL,'2018-10-29',8,2,8,1),(57,'CANDELARIO MILANO MOLINA','candelaria.milano.molina@oracle.com','1',NULL,'2018-08-29',1,6,8,1),(59,'MONICA SALARIS','monica.salaris@oracle.com','5491140714504',NULL,'2018-10-10',1,2,6,1),(60,'JORGE PACHON','jorge.pachon.garcia@oracle.com','1',NULL,'2018-11-29',5,6,8,1),(61,'CAMILO TELLEZ','camilo.tellez@oracle.com','573134789170',NULL,'2018-08-07',5,3,4,1),(62,'RODRIGO CAYUL','rodrigo.cayul@oracle.com','56933966834',NULL,'2019-02-05',4,1,5,1),(63,'RENATO CAETANO','renato.caetano@oracle.com','1',NULL,'2019-02-15',3,3,9,1),(64,'EVANDRO LIMA','evandro.lima@oracle.com','5511997142788',NULL,'2019-02-15',3,3,9,1),(65,'PABLO SIERRA OCANTO','pablo.sierra.ocanto@oracle.com','5491161565036',NULL,'2019-02-14',1,6,8,1),(66,'DANIBEL CORONADO','danibel.coronado@oracle.com','011',NULL,'2019-02-15',1,6,8,1),(67,'GABRIELA PERES','gabriella.peres@oracle.com','5511941349264',NULL,'2019-02-15',3,6,4,1),(68,'JAMES EVERETT','james.everett@oracle.com','1',NULL,'2019-02-15',8,3,4,1),(69,'MARTIN FODOR','martin.fodor@oracle.com','1',NULL,'2019-02-15',1,5,4,1),(70,'JORGE SANCHEZ','jorge.s.sanchez@oracle.com','1',NULL,'2019-02-15',7,6,4,1),(71,'VICTOR GRILLO','victor.grillo@oracle.com','54115299718',NULL,'2018-02-19',1,7,4,1),(72,'ALAN JOHNSON','alan.x.johnson@oracle.com','1',NULL,'2019-02-19',1,1,6,1),(73,'DANIEL NUNES','daniel.nunes@oracle.com','11943231872','https://www.linkedin.com/in/danunes/?locale=es_ES','2019-02-19',3,6,1,1),(74,'SANTIAGO GONZALVES','santiago.goncalves@oracle.com','1',NULL,'2019-02-19',1,4,4,1),(75,'XENIA MOLINA','xenia.molina@oracle.com','541152997127',NULL,'2019-02-19',1,7,4,1),(76,'ALLYSON ASSUNCAO','allyson.assuncao@oracle.com','1',NULL,'2019-02-19',3,7,4,1),(77,'ESTEBAN REINA RUBIANO','esteban.reina.rubiano@oracle.com','1',NULL,'2019-02-19',5,9,5,1),(78,'JIMENA PARRA','jimena.parra@oracle.com','1',NULL,'2019-02-20',5,3,1,1),(79,'GINA ALVAREZ','gina.alvarez@oracle.com','1',NULL,'2019-02-20',8,6,1,1),(80,'JAHIR VALENCIA','jahir.valencia@oracle.com','5215537322907',NULL,'2019-03-13',7,3,9,1),(81,'ANDRE PEREIRA','andre.p.pereira@oracle.com','5511956967631',NULL,'2018-03-22',3,4,5,1),(82,'JIMMY HERNANDEZ','jimmy.hernandez@oracle.com','5743105616',NULL,'2019-03-15',5,2,6,1),(83,'ALEXANDRE FEIJO','alexandre.feijo@oracle.com','1',NULL,'2019-02-20',3,3,9,1),(84,'HERNAN ENRIQUE AYMARD','hernan.enrique.aymard@oracle.com','1',NULL,'2018-03-20',1,6,1,1),(85,'KATIA SOARES','katia.soares@oracle.com','1',NULL,'2019-03-08',3,1,4,1),(86,'VICTOR YEPEZ','victor.yepez@oracle.com','1',NULL,'2019-04-01',6,6,8,1),(87,'EDUARDO WRONOWSKI','eduardo.wronowski@oracle.com','1',NULL,'2019-04-09',3,5,4,1),(88,'ALEJANDRO SEMPRINI','alejandro.semprini@oracle.com','1',NULL,'2019-04-04',1,3,4,1),(89,'MARIA CASADO','maria.casado@oracle.com','1',NULL,'2019-04-01',8,4,4,1),(90,'IGNACIO MACIAS','nacho.macias@oracle.com','1',NULL,'2019-04-03',8,1,9,1),(91,'ALEJANDRO ROUILLER','alejandro.rouiller@gmail.com','5491133552955',NULL,'2019-04-22',1,2,9,1),(92,'MARIA XIMENA LONDOÑO','MARIA.LONDONO@ORACLE.COM','3232101826','www.linkedin.com/in/ximenalondoño','2019-04-30',5,2,8,1),(93,'ADRIAN ARGUELLO','adrian.arguello@oracle.com','50670070585','www.linkedin.com/in/adrianarguello','2019-04-26',6,3,3,1),(94,'DAVI CARVAHLO','davi.carvahlo@oracle.com','5712345698',NULL,'2017-10-03',3,1,3,1),(95,'RICARDO URRESTI','ricardo.urresti@oracle.com','5709874553522',NULL,'2018-08-07',3,8,3,1),(96,'ALEX CAMPOS','alex.campos@oracle.com','5712345698',NULL,'2017-10-02',5,11,3,1),(97,'LUISA CARDENAS','luisa.cardenas@oracle.com','573134709389','https://www.linkedin.com/in/luisacardenas1/','2019-06-03',5,12,9,1);
/*!40000 ALTER TABLE `experto` ENABLE KEYS */;

--
-- Table structure for table `followup`
--

DROP TABLE IF EXISTS `followup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `followup` (
  `id` int(11) NOT NULL,
  `publicacion_id` int(11) DEFAULT NULL,
  `tipo_de_contacto_id` int(11) DEFAULT NULL,
  `fecha_at` date DEFAULT NULL,
  `template_enviado` tinyint(1) DEFAULT 0,
  `tips_de_redaccion_enviado` tinyint(1) DEFAULT 0,
  `comentarios` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `publicacion_id` (`publicacion_id`),
  KEY `tipo_de_contacto_id` (`tipo_de_contacto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `followup`
--

/*!40000 ALTER TABLE `followup` DISABLE KEYS */;
INSERT INTO `followup` VALUES (0,16,NULL,'2021-08-11',0,0,NULL),(24,9,1,'2019-04-22',1,1,NULL),(25,9,1,'2019-04-22',1,1,NULL),(26,9,5,'2019-04-22',1,0,NULL),(27,8,2,'2019-04-30',1,1,'Enviará borrador del próximo artículo después del 6 de mayo. Va a ser sobre el mismo tema');
/*!40000 ALTER TABLE `followup` ENABLE KEYS */;

--
-- Table structure for table `historial_publicacion`
--

DROP TABLE IF EXISTS `historial_publicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historial_publicacion` (
  `id` int(11) NOT NULL,
  `publicacion_id` int(11) DEFAULT NULL,
  `estado_publicacion_id` int(11) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `publicacion_id` (`publicacion_id`),
  KEY `estado_publicacion_id` (`estado_publicacion_id`),
  KEY `usuario_id` (`usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial_publicacion`
--

/*!40000 ALTER TABLE `historial_publicacion` DISABLE KEYS */;
INSERT INTO `historial_publicacion` VALUES (12,6,5,'2019-04-16','2019-04-16',1),(13,7,5,'2019-04-17','2019-04-17',1),(14,8,1,'2019-04-17','2019-04-25',1),(15,7,5,'2019-04-17','2019-04-17',1),(16,7,5,'2019-04-17',NULL,1),(17,9,1,'2019-01-01','2019-02-01',1),(18,9,2,'2019-02-01','2019-03-01',1),(19,9,3,'2019-03-01','2019-04-01',1),(20,9,2,'2019-04-01','2019-04-01',1),(21,9,3,'2019-04-01','2019-04-01',1),(22,9,4,'2019-04-01',NULL,1),(23,10,1,'2018-11-01','2018-11-01',1),(24,10,1,'2018-11-01','2018-11-01',1),(25,10,1,'2018-11-01','2018-11-01',1),(26,11,5,'2017-10-25',NULL,1),(27,12,5,'2017-10-25',NULL,1),(28,13,5,'2017-10-17',NULL,1),(29,14,5,'2017-10-25',NULL,1),(30,15,1,'2017-10-24','2017-10-24',1),(31,16,5,'2019-10-26',NULL,1),(32,17,5,'2018-04-25',NULL,1),(33,18,1,'2018-04-25','2018-04-27',1),(34,19,5,'2018-04-25',NULL,1),(35,20,5,'2018-04-25',NULL,1),(36,21,5,'2018-04-25',NULL,1),(37,22,1,'2018-04-25','2018-04-27',1),(38,23,5,'2018-08-28',NULL,1),(39,24,5,'2017-06-14',NULL,1),(40,25,5,'2017-08-01',NULL,1),(41,26,5,'2017-08-01',NULL,1),(42,27,5,'2017-05-26',NULL,1),(43,28,5,'2017-05-12',NULL,1),(44,29,5,'2017-05-07',NULL,1),(45,30,1,'2017-09-01','2017-09-02',1),(46,31,5,'2017-11-21',NULL,1),(47,32,1,'2019-04-09','2019-04-11',1),(48,33,1,'2019-04-16','2019-04-26',1),(49,8,2,'2019-04-25','2019-04-25',1),(50,8,3,'2019-04-25','2019-04-25',1),(51,8,4,'2019-04-25',NULL,1),(52,34,1,'2019-04-24','2019-04-30',1),(53,34,2,'2019-04-30','2019-05-02',1),(54,34,3,'2019-05-02','2019-05-02',1),(55,34,4,'2019-05-02',NULL,1),(56,30,2,'2017-09-02','2017-09-06',1),(57,30,3,'2017-09-06','2017-09-16',1),(58,30,4,'2017-09-16',NULL,1),(59,35,5,'2017-10-27',NULL,1),(60,36,5,'2017-10-17',NULL,1),(61,37,5,'2017-10-19',NULL,1),(62,38,5,'2017-10-24',NULL,1),(63,39,5,'2017-11-01',NULL,1),(64,40,5,'2018-11-27','2018-11-27',1),(65,40,5,'2018-11-27',NULL,1),(66,41,1,'2019-05-07','2019-05-29',1),(67,42,1,'2019-04-26','2019-05-03',1),(68,42,2,'2019-05-03','2019-05-08',1),(69,43,1,'2019-04-30','2019-05-09',1),(70,44,1,'2019-04-29','2019-04-29',1),(71,45,1,'2019-04-29','2019-05-25',1),(72,46,1,'2019-05-07',NULL,1),(73,47,5,'2018-12-11',NULL,1),(74,48,5,'2017-11-17',NULL,1),(75,49,5,'2018-10-23',NULL,1),(76,50,5,'2017-12-19',NULL,1),(77,42,3,'2019-05-08',NULL,1),(78,6,5,'2019-04-16',NULL,1),(79,51,5,'2018-11-08',NULL,1),(80,52,5,'2018-10-18',NULL,1),(81,53,5,'2018-08-19','2018-08-19',1),(82,54,5,'2018-08-02',NULL,1),(83,55,5,'2019-05-08',NULL,1),(84,43,2,'2019-05-09',NULL,1),(85,56,1,'2019-05-09','2019-05-31',1),(86,57,1,'2019-05-09','2019-05-09',1),(87,58,1,'2019-05-09','2019-05-22',1),(88,59,1,'2019-05-09','2019-05-30',1),(89,60,1,'2019-05-09','2019-05-09',1),(90,60,2,'2019-05-09','2019-05-09',1),(91,60,3,'2019-05-09','2019-05-09',1),(92,60,4,'2019-05-09',NULL,1),(93,61,5,'2018-11-08',NULL,1),(94,62,5,'2018-10-18',NULL,1),(95,53,5,'2018-08-19',NULL,1),(96,63,1,'2019-03-18','2019-03-21',1),(97,63,2,'2019-03-21','2019-03-23',1),(98,63,3,'2019-03-23','2019-03-23',1),(99,63,3,'2019-03-23','2019-03-23',1),(100,63,3,'2019-03-23','2019-04-29',1),(101,63,4,'2019-04-29',NULL,1),(102,64,1,'2018-05-09','2018-05-22',1),(103,64,2,'2018-05-22','2018-05-25',1),(104,64,3,'2018-05-25','2018-05-28',1),(105,64,4,'2018-05-28',NULL,1),(106,65,5,'2018-04-24',NULL,1),(107,66,1,'2017-06-06','2017-06-13',1),(108,67,5,'2018-07-11',NULL,1),(109,68,5,'2019-05-09',NULL,1),(110,69,5,'2018-03-30',NULL,1),(111,70,5,'2019-05-09',NULL,1),(112,71,5,'2018-08-30',NULL,1),(113,72,5,'2019-01-16',NULL,1),(114,73,1,'2019-01-30','2019-02-07',1),(115,74,5,'2017-10-18',NULL,1),(116,75,5,'2017-09-29',NULL,1),(117,76,1,'2017-10-05','2017-10-25',1),(118,77,5,'2017-10-27',NULL,1),(119,78,5,'2018-11-30',NULL,1),(120,79,5,'2018-09-18',NULL,1),(121,80,5,'2017-09-26',NULL,1),(122,81,5,'2018-10-30',NULL,1),(123,82,5,'2018-09-11',NULL,1),(124,83,1,'2019-05-09','2019-05-30',1),(125,57,1,'2019-05-09','2019-05-14',1),(126,84,5,'2018-10-23',NULL,1),(127,85,1,'2019-05-09','2019-05-17',1),(128,44,2,'2019-04-29','2019-05-03',1),(129,44,3,'2019-05-03','2019-05-15',1),(130,44,4,'2019-05-15','2019-05-15',1),(131,85,2,'2019-05-17',NULL,1),(132,33,2,'2019-04-26','2019-05-03',1),(133,33,3,'2019-05-03',NULL,1),(134,41,2,'2019-05-29','2019-05-31',1),(135,41,3,'2019-05-31',NULL,1),(136,44,4,'2019-05-15','2019-05-15',1),(137,44,4,'2019-05-15',NULL,1),(138,86,1,'2019-06-03','2019-06-04',1),(139,87,1,'2019-06-03','2019-06-05',1),(140,88,1,'2019-06-03','2019-06-04',1),(141,89,1,'2019-06-03','2019-06-03',1),(142,90,1,'2019-06-03','2019-06-04',1),(143,91,1,'2019-06-03','2019-06-27',1),(144,91,2,'2019-06-27',NULL,1),(145,45,2,'2019-05-25',NULL,1),(146,92,1,'2019-06-03','2019-06-03',1),(147,92,1,'2019-06-03',NULL,1),(148,93,1,'2019-06-03','2019-06-03',1),(149,94,1,'2019-06-03',NULL,1),(150,15,2,'2017-10-24','2017-10-26',1),(151,15,3,'2017-10-26','2017-10-26',1),(152,15,4,'2017-10-26',NULL,1),(153,32,2,'2019-04-11','2019-04-16',1),(154,32,3,'2019-04-16','2019-04-30',1),(155,32,4,'2019-04-30',NULL,1),(156,88,2,'2019-06-04','2019-06-04',1),(157,87,2,'2019-06-05','2019-06-05',1),(158,87,2,'2019-06-05','2019-06-05',1),(159,87,3,'2019-06-05','2019-06-05',1),(160,87,4,'2019-06-05','2019-06-05',1),(161,87,4,'2019-06-05',NULL,1),(162,89,2,'2019-06-03','2019-06-04',1),(163,89,3,'2019-06-04',NULL,1),(164,86,2,'2019-06-04',NULL,1),(165,56,2,'2019-05-31',NULL,1),(166,57,2,'2019-05-14',NULL,1),(167,58,2,'2019-05-22',NULL,1),(168,83,2,'2019-05-30',NULL,1),(169,59,2,'2019-05-30',NULL,1),(170,90,2,'2019-06-04',NULL,1),(171,73,2,'2019-02-07','2019-02-07',1),(172,73,2,'2019-02-07','2019-02-07',1),(173,73,3,'2019-02-07','2019-02-07',1),(174,73,4,'2019-02-07',NULL,1),(175,22,2,'2018-04-27','2018-05-02',1),(176,22,3,'2018-05-02','2018-05-02',1),(177,22,3,'2018-05-02','2018-05-02',1),(178,22,4,'2018-05-02',NULL,1),(179,93,2,'2019-06-03',NULL,1),(180,10,1,'2018-11-01',NULL,1),(181,18,2,'2018-04-27','2018-04-27',1),(182,18,3,'2018-04-27','2018-04-27',1),(183,18,4,'2018-04-27',NULL,1),(184,76,2,'2017-10-25','2017-11-03',1),(185,76,3,'2017-11-03','2017-11-07',1),(186,76,4,'2017-11-07',NULL,1),(187,66,2,'2017-06-13','2017-06-15',1),(188,66,3,'2017-06-15','2017-06-16',1),(189,66,4,'2017-06-16',NULL,1),(190,88,3,'2019-06-04',NULL,1),(191,95,1,'2019-06-04','2019-06-07',1),(192,95,2,'2019-06-07','2019-06-07',1),(193,95,2,'2019-06-07',NULL,1);
/*!40000 ALTER TABLE `historial_publicacion` ENABLE KEYS */;

--
-- Table structure for table `interes`
--

DROP TABLE IF EXISTS `interes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interes` (
  `id` int(11) NOT NULL,
  `nombre_interes` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interes`
--

/*!40000 ALTER TABLE `interes` DISABLE KEYS */;
INSERT INTO `interes` VALUES (1,'IoT'),(2,'Realidad Aumentada'),(3,'Realidad Virtual'),(4,'Blockchain'),(5,'Marketing'),(6,'Recursos Humanos'),(7,'Infraestructura'),(8,'Hardware'),(9,'Software'),(10,'Inteligencia Artificial'),(11,'Big Data'),(12,'Management'),(13,'Fusiones y Adquisiciones'),(14,'Ciencia y Tecnología'),(15,'Educación'),(16,'Innovación'),(17,'Industria 4.0'),(18,'Cloud'),(19,'SaaS'),(20,'Mobile apps'),(21,'Data Mining');
/*!40000 ALTER TABLE `interes` ENABLE KEYS */;

--
-- Table structure for table `interes_experto`
--

DROP TABLE IF EXISTS `interes_experto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interes_experto` (
  `id` int(11) NOT NULL,
  `experto_id` int(11) DEFAULT NULL,
  `interes_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `experto_id` (`experto_id`),
  KEY `interes_id` (`interes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interes_experto`
--

/*!40000 ALTER TABLE `interes_experto` DISABLE KEYS */;
INSERT INTO `interes_experto` VALUES (14,5,1),(15,5,2),(16,5,3),(17,5,4),(22,7,1),(23,7,2),(24,7,3),(25,7,4),(26,8,1),(27,8,2),(28,8,3),(29,8,4),(30,9,1),(31,9,2),(32,9,3),(33,9,4),(34,10,1),(35,10,2),(36,10,3),(37,10,4),(38,11,1),(39,11,2),(40,11,3),(41,11,4),(42,12,1),(43,12,2),(44,12,3),(45,12,4),(46,13,1),(47,13,2),(48,13,3),(49,13,4),(50,14,1),(51,14,2),(52,14,3),(53,14,4),(54,15,1),(55,15,2),(56,15,3),(57,15,4),(58,16,1),(59,16,2),(60,16,3),(61,16,4),(62,17,1),(63,17,2),(64,17,3),(65,17,4),(66,18,1),(67,18,2),(68,18,3),(69,18,4),(70,19,1),(71,19,2),(72,19,3),(73,19,4),(74,20,1),(75,20,2),(76,20,3),(77,20,4),(78,21,1),(79,21,2),(80,21,3),(81,21,4),(82,22,1),(83,22,2),(84,22,3),(85,22,4),(86,23,1),(87,23,2),(88,23,3),(89,23,4),(90,24,1),(91,24,2),(92,24,3),(93,24,4),(94,25,1),(95,25,2),(96,25,3),(97,25,4),(98,25,5),(99,25,6),(100,25,7),(101,25,8),(102,25,9),(103,26,1),(104,26,2),(105,26,3),(106,26,4),(107,26,5),(108,26,6),(109,26,7),(110,26,8),(111,26,9),(112,27,1),(113,27,2),(114,27,3),(115,27,4),(116,27,5),(117,27,6),(118,27,7),(119,27,8),(120,27,9),(121,28,1),(122,28,2),(123,28,3),(124,28,4),(125,28,5),(126,28,6),(127,28,7),(128,28,8),(129,28,9),(130,29,1),(131,29,2),(132,29,3),(133,29,4),(134,29,5),(135,29,6),(136,29,7),(137,29,8),(138,29,9),(139,30,1),(140,30,2),(141,30,3),(142,30,4),(143,30,5),(144,30,6),(145,30,7),(146,30,8),(147,30,9),(148,31,1),(149,31,2),(150,31,3),(151,31,4),(152,31,5),(153,31,6),(154,31,7),(155,31,8),(156,31,9),(157,32,1),(158,32,2),(159,32,3),(160,32,4),(161,32,5),(162,32,6),(163,32,7),(164,32,8),(165,32,9),(166,33,1),(167,33,2),(168,33,3),(169,33,4),(170,33,5),(171,33,6),(172,33,7),(173,33,8),(174,33,9),(175,34,1),(176,34,2),(177,34,3),(178,34,4),(179,34,5),(180,34,6),(181,34,7),(182,34,8),(183,34,9),(184,35,1),(185,35,2),(186,35,3),(187,35,4),(188,35,5),(189,35,6),(190,35,7),(191,35,8),(192,35,9),(193,36,1),(194,36,2),(195,36,3),(196,36,4),(197,36,5),(198,36,6),(199,36,7),(200,36,8),(201,36,9),(202,37,1),(203,37,2),(204,37,3),(205,37,4),(206,37,5),(207,37,6),(208,37,7),(209,37,8),(210,37,9),(211,38,1),(212,38,2),(213,38,3),(214,38,4),(215,38,5),(216,38,6),(217,38,7),(218,38,8),(219,38,9),(220,39,1),(221,39,2),(222,39,3),(223,39,4),(224,39,5),(225,39,6),(226,39,7),(227,39,8),(228,39,9),(229,40,1),(230,40,2),(231,40,3),(232,40,4),(233,40,5),(234,40,6),(235,40,7),(236,40,8),(237,40,9),(247,42,1),(248,42,2),(249,42,3),(250,42,4),(251,42,5),(252,42,6),(253,42,7),(254,42,8),(255,42,9),(256,43,1),(257,43,2),(258,43,3),(259,43,4),(260,43,5),(261,43,6),(262,43,7),(263,43,8),(264,43,9),(265,44,1),(266,44,2),(267,44,3),(268,44,4),(269,44,5),(270,44,6),(271,44,7),(272,44,8),(273,44,9),(274,45,1),(275,45,2),(276,45,3),(277,45,4),(278,45,5),(279,45,6),(280,45,7),(281,45,8),(282,45,9),(283,46,1),(284,46,2),(285,46,3),(286,46,4),(287,46,5),(288,46,6),(289,46,7),(290,46,8),(291,46,9),(292,47,1),(293,47,2),(294,47,3),(295,47,4),(296,47,5),(297,47,6),(298,47,7),(299,47,8),(300,47,9),(301,48,1),(302,48,2),(303,48,3),(304,48,4),(305,48,5),(306,48,6),(307,48,7),(308,48,8),(309,48,9),(310,49,1),(311,49,2),(312,49,3),(313,49,4),(314,49,5),(315,49,6),(316,49,7),(317,49,8),(318,49,9),(319,50,1),(320,50,2),(321,50,3),(322,50,4),(323,50,5),(324,50,6),(325,50,7),(326,50,8),(327,50,9),(328,51,1),(329,51,2),(330,51,3),(331,51,4),(332,51,5),(333,51,6),(334,51,7),(335,51,8),(336,51,9),(337,52,1),(338,52,2),(339,52,3),(340,52,4),(341,52,5),(342,52,6),(343,52,7),(344,52,8),(345,52,9),(346,53,1),(347,53,2),(348,53,3),(349,53,4),(350,53,5),(351,53,6),(352,53,7),(353,53,8),(354,53,9),(355,54,1),(356,54,2),(357,54,3),(358,54,4),(359,54,5),(360,54,6),(361,54,7),(362,54,8),(363,54,9),(364,55,1),(365,55,2),(366,55,3),(367,55,4),(368,55,5),(369,55,6),(370,55,7),(371,55,8),(372,55,9),(373,56,1),(374,56,2),(375,56,3),(376,56,4),(377,56,5),(378,56,6),(379,56,7),(380,56,8),(381,56,9),(382,57,1),(383,57,2),(384,57,3),(385,57,4),(386,57,5),(387,57,6),(388,57,7),(389,57,8),(390,57,9),(400,59,1),(401,59,2),(402,59,3),(403,59,4),(404,59,5),(405,59,6),(406,59,7),(407,59,8),(408,59,9),(409,60,1),(410,60,2),(411,60,3),(412,60,4),(413,60,5),(414,60,6),(415,60,7),(416,60,8),(417,60,9),(418,61,1),(419,61,2),(420,61,3),(421,61,4),(422,61,5),(423,61,6),(424,61,7),(425,61,8),(426,61,9),(427,62,1),(428,62,2),(429,62,3),(430,62,4),(431,62,5),(432,62,6),(433,62,7),(434,62,8),(435,62,9),(436,63,1),(437,63,2),(438,63,3),(439,63,4),(440,63,5),(441,63,6),(442,63,7),(443,63,8),(444,63,9),(445,64,1),(446,64,2),(447,64,3),(448,64,4),(449,64,5),(450,64,6),(451,64,7),(452,64,8),(453,64,9),(454,65,1),(455,65,2),(456,65,3),(457,65,4),(458,65,5),(459,65,6),(460,65,7),(461,65,8),(462,65,9),(463,66,1),(464,66,2),(465,66,3),(466,66,4),(467,66,5),(468,66,6),(469,66,7),(470,66,8),(471,66,9),(472,67,1),(473,67,2),(474,67,3),(475,67,4),(476,67,5),(477,67,6),(478,67,7),(479,67,8),(480,67,9),(481,68,1),(482,68,2),(483,68,3),(484,68,4),(485,68,5),(486,68,6),(487,68,7),(488,68,8),(489,68,9),(490,69,1),(491,69,2),(492,69,3),(493,69,4),(494,69,5),(495,69,6),(496,69,7),(497,69,8),(498,69,9),(499,70,1),(500,70,2),(501,70,3),(502,70,4),(503,70,5),(504,70,6),(505,70,7),(506,70,8),(507,70,9),(508,71,1),(509,71,2),(510,71,3),(511,71,4),(512,71,5),(513,71,6),(514,71,7),(515,71,8),(516,71,9),(517,72,1),(518,72,2),(519,72,3),(520,72,4),(521,72,5),(522,72,6),(523,72,7),(524,72,8),(525,72,9),(526,73,1),(527,73,2),(528,73,3),(529,73,4),(530,73,5),(531,73,6),(532,73,7),(533,73,8),(534,73,9),(535,74,1),(536,74,2),(537,74,3),(538,74,4),(539,74,5),(540,74,6),(541,74,7),(542,74,8),(543,74,9),(544,75,1),(545,75,2),(546,75,3),(547,75,4),(548,75,5),(549,75,6),(550,75,7),(551,75,8),(552,75,9),(553,76,1),(554,76,2),(555,76,3),(556,76,4),(557,76,5),(558,76,6),(559,76,7),(560,76,8),(561,76,9),(562,77,1),(563,77,2),(564,77,3),(565,77,4),(566,77,5),(567,77,6),(568,77,7),(569,77,8),(570,77,9),(571,78,1),(572,78,2),(573,78,3),(574,78,4),(575,78,5),(576,78,6),(577,78,7),(578,78,8),(579,78,9),(580,79,1),(581,79,2),(582,79,3),(583,79,4),(584,79,5),(585,79,6),(586,79,7),(587,79,8),(588,79,9),(589,80,1),(590,80,2),(591,80,3),(592,80,4),(593,80,5),(594,80,6),(595,80,7),(596,80,8),(597,80,9),(598,81,1),(599,81,2),(600,81,3),(601,81,4),(602,81,5),(603,81,6),(604,81,7),(605,81,8),(606,81,9),(607,82,1),(608,82,2),(609,82,3),(610,82,4),(611,82,5),(612,82,6),(613,82,7),(614,82,8),(615,82,9),(616,83,1),(617,83,2),(618,83,3),(619,83,4),(620,83,5),(621,83,6),(622,83,7),(623,83,8),(624,83,9),(625,84,1),(626,84,2),(627,84,3),(628,84,4),(629,84,5),(630,84,6),(631,84,7),(632,84,8),(633,84,9),(634,85,1),(635,85,2),(636,85,3),(637,85,4),(638,85,5),(639,85,6),(640,85,7),(641,85,8),(642,85,9),(643,86,1),(644,86,2),(645,86,3),(646,86,4),(647,86,5),(648,86,6),(649,86,7),(650,86,8),(651,86,9),(652,87,1),(653,87,2),(654,87,3),(655,87,4),(656,87,5),(657,87,6),(658,87,7),(659,87,8),(660,87,9),(661,88,1),(662,88,2),(663,88,3),(664,88,4),(665,88,5),(666,88,6),(667,88,7),(668,88,8),(669,88,9),(670,89,1),(671,89,2),(672,89,3),(673,89,4),(674,89,5),(675,89,6),(676,89,7),(677,89,8),(678,89,9),(679,90,1),(680,90,2),(681,90,3),(682,90,4),(683,90,5),(684,90,6),(685,90,7),(686,90,8),(687,90,9),(690,92,1),(691,92,2),(692,92,3),(693,92,4),(694,92,5),(695,92,9),(696,93,1),(697,93,2),(698,93,7),(699,93,8),(700,93,9),(701,94,9),(702,95,1),(703,95,4),(704,95,9),(705,95,10),(706,95,11),(707,96,9),(708,96,11),(709,96,14),(710,96,16),(711,96,18),(712,96,20),(713,96,21),(714,97,15),(715,43,18),(716,44,18),(717,45,18),(718,46,18),(719,57,18),(720,59,18),(721,65,18),(722,66,18),(723,69,18),(724,71,18),(725,72,18),(726,74,18),(727,75,18),(728,84,18),(729,88,18),(731,5,18),(732,53,18),(733,38,18),(734,39,18),(735,40,18),(736,42,18),(737,50,18),(738,54,18),(739,63,18),(740,64,18),(741,67,18),(742,73,18),(743,76,18),(744,81,18),(745,83,18),(746,85,18),(747,87,18),(748,94,18),(749,95,18),(750,29,18),(751,30,18),(752,31,18),(753,32,18),(754,33,18),(755,34,18),(756,35,18),(757,36,18),(758,37,18),(759,62,18),(760,13,18),(761,14,18),(762,15,18),(763,16,18),(764,17,18),(765,18,18),(766,19,18),(767,20,18),(768,21,18),(769,22,18),(770,25,18),(771,26,18),(772,27,18),(773,28,18),(774,48,18),(775,51,18),(776,52,18),(777,55,18),(778,60,18),(779,61,18),(780,77,18),(781,78,18),(782,82,18),(783,92,18),(784,97,18),(785,11,18),(786,12,18),(787,49,18),(788,86,18),(789,93,18),(790,7,18),(791,8,18),(792,9,18),(793,10,18),(794,23,18),(795,24,18),(796,47,18),(797,70,18),(798,80,18),(799,56,18),(800,68,18),(801,79,18),(802,89,18),(803,90,18),(845,91,1),(846,91,2),(847,91,9),(848,91,18);
/*!40000 ALTER TABLE `interes_experto` ENABLE KEYS */;

--
-- Table structure for table `interes_publicacion`
--

DROP TABLE IF EXISTS `interes_publicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interes_publicacion` (
  `id` int(11) NOT NULL,
  `interes_id` int(11) DEFAULT NULL,
  `publicacion_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `interes_id` (`interes_id`),
  KEY `publicacion_id` (`publicacion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interes_publicacion`
--

/*!40000 ALTER TABLE `interes_publicacion` DISABLE KEYS */;
INSERT INTO `interes_publicacion` VALUES (55,1,7),(56,2,7),(57,3,7),(58,4,7),(59,7,7),(60,9,7),(70,1,11),(71,2,11),(72,3,11),(73,4,11),(74,5,11),(75,6,11),(76,7,11),(77,8,11),(78,9,11),(79,1,12),(80,2,12),(81,3,12),(82,4,12),(83,5,12),(84,6,12),(85,7,12),(86,8,12),(87,9,12),(88,1,13),(89,2,13),(90,3,13),(91,4,13),(92,5,13),(93,6,13),(94,7,13),(95,8,13),(96,9,13),(97,1,14),(98,2,14),(99,3,14),(100,4,14),(101,5,14),(102,6,14),(103,7,14),(104,8,14),(105,9,14),(115,1,16),(116,2,16),(117,3,16),(118,4,16),(119,5,16),(120,6,16),(121,7,16),(122,8,16),(123,9,16),(124,1,17),(125,2,17),(126,3,17),(127,4,17),(128,5,17),(129,6,17),(130,7,17),(131,8,17),(132,9,17),(142,1,19),(143,2,19),(144,3,19),(145,4,19),(146,5,19),(147,6,19),(148,7,19),(149,8,19),(150,9,19),(151,1,20),(152,2,20),(153,3,20),(154,4,20),(155,5,20),(156,6,20),(157,7,20),(158,8,20),(159,9,20),(160,1,21),(161,2,21),(162,3,21),(163,4,21),(164,5,21),(165,6,21),(166,7,21),(167,8,21),(168,9,21),(178,5,23),(179,1,24),(180,5,24),(181,9,24),(182,5,25),(183,5,26),(184,5,27),(185,5,28),(186,5,29),(187,9,29),(190,5,31),(227,1,8),(228,2,8),(229,3,8),(230,4,8),(231,5,8),(232,6,8),(233,7,8),(234,8,8),(235,9,8),(239,4,34),(244,5,30),(245,9,30),(246,5,35),(247,5,36),(248,5,37),(249,5,38),(250,5,39),(252,5,40),(273,4,46),(274,5,47),(275,5,48),(276,5,49),(277,1,50),(278,2,50),(279,4,50),(280,5,50),(281,7,42),(282,8,42),(283,9,42),(284,1,6),(285,2,6),(286,3,6),(287,4,6),(288,5,51),(289,5,52),(291,5,54),(292,9,54),(293,11,54),(294,16,54),(295,21,54),(296,5,55),(297,9,55),(298,11,55),(299,1,43),(300,2,43),(301,3,43),(302,4,43),(303,5,43),(304,6,43),(305,7,43),(306,8,43),(307,9,43),(336,5,60),(337,9,60),(338,10,60),(339,11,60),(340,16,60),(341,5,61),(342,5,62),(343,16,62),(344,5,53),(355,6,63),(356,10,63),(363,5,64),(364,6,64),(365,9,65),(368,5,67),(369,9,67),(370,9,68),(371,12,68),(372,4,69),(373,9,69),(374,16,69),(375,9,70),(376,12,70),(377,4,71),(378,5,72),(379,9,72),(380,10,72),(381,11,72),(382,16,72),(385,11,74),(386,6,75),(387,15,75),(389,9,77),(390,14,77),(391,16,77),(392,6,78),(393,15,78),(394,16,78),(395,6,79),(396,12,79),(397,15,79),(398,16,79),(399,5,80),(400,10,80),(401,11,80),(402,16,80),(403,15,81),(404,16,81),(405,5,82),(406,11,82),(407,12,82),(414,16,84),(420,5,85),(421,18,85),(431,1,33),(432,2,33),(433,3,33),(434,4,33),(435,5,33),(436,6,33),(437,7,33),(438,8,33),(439,9,33),(442,1,41),(443,9,41),(445,4,44),(452,1,91),(453,5,45),(454,9,45),(456,1,92),(458,1,94),(477,1,15),(478,2,15),(479,3,15),(480,4,15),(481,5,15),(482,6,15),(483,7,15),(484,8,15),(485,9,15),(504,1,32),(505,2,32),(506,3,32),(507,4,32),(508,5,32),(509,6,32),(510,7,32),(511,8,32),(512,9,32),(518,1,87),(520,1,89),(521,1,86),(522,5,56),(523,10,56),(524,11,56),(525,5,57),(526,1,58),(527,5,58),(528,9,58),(529,10,58),(530,11,58),(531,18,58),(532,21,58),(533,5,83),(534,9,83),(535,10,83),(536,16,83),(537,18,83),(538,5,59),(539,12,59),(540,1,90),(547,9,73),(548,18,73),(576,1,22),(577,2,22),(578,3,22),(579,4,22),(580,5,22),(581,6,22),(582,7,22),(583,8,22),(584,9,22),(585,1,93),(586,9,10),(605,1,18),(606,2,18),(607,3,18),(608,4,18),(609,5,18),(610,6,18),(611,7,18),(612,8,18),(613,9,18),(616,14,76),(621,9,66),(622,12,66),(623,1,88),(626,1,95),(627,8,9),(628,9,9);
/*!40000 ALTER TABLE `interes_publicacion` ENABLE KEYS */;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pais` (
  `id` int(11) NOT NULL,
  `nombre_pais` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'Argentina'),(2,'Puerto Rico'),(3,'Brasil'),(4,'Chile'),(5,'Colombia'),(6,'Costa Rica'),(7,'México'),(8,'Perú');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;

--
-- Table structure for table `premio`
--

DROP TABLE IF EXISTS `premio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `premio` (
  `id` int(11) NOT NULL,
  `accion` varchar(200) DEFAULT NULL,
  `accolade_id` int(11) DEFAULT NULL,
  `numero_publicacion` int(11) DEFAULT NULL,
  `dias_desde_inscripcion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accolade_id` (`accolade_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `premio`
--

/*!40000 ALTER TABLE `premio` DISABLE KEYS */;
/*!40000 ALTER TABLE `premio` ENABLE KEYS */;

--
-- Table structure for table `premio_x_publicacion`
--

DROP TABLE IF EXISTS `premio_x_publicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `premio_x_publicacion` (
  `id` int(11) NOT NULL,
  `publicacion_id` int(11) DEFAULT NULL,
  `premio_id` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `premio_x_publicacion`
--

/*!40000 ALTER TABLE `premio_x_publicacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `premio_x_publicacion` ENABLE KEYS */;

--
-- Table structure for table `publicacion`
--

DROP TABLE IF EXISTS `publicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publicacion` (
  `id` int(11) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `experto_id` int(11) DEFAULT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `descripcion` varchar(1000) DEFAULT NULL,
  `estado_publicacion_id` int(11) DEFAULT NULL,
  `dropbox` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `experto_id` (`experto_id`),
  KEY `estado_publicacion_id` (`estado_publicacion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicacion`
--

/*!40000 ALTER TABLE `publicacion` DISABLE KEYS */;
INSERT INTO `publicacion` VALUES (6,'2019-04-16',22,'EN DEFENSA DEL ON PREMISE','Cuándo conviene ir a la Nube y cuándo no. Si usted está considerando si su organización debe ir o no a la Nube, si usted como consultor de Negocios está pensando cuál es el mejor consejo que puede dar',5,NULL),(7,'2019-04-17',65,'EL DESCUBRIMIENTO SE VUELVE DIGITAL','Las matemáticas y la geometría fueron las herramientas idóneas para ir, junto con la física, haciendo nuevos descubrimientos que con la ayuda del ingenio humano, terminaron encontrando usos en el día ',5,NULL),(8,'2019-04-17',15,'ES POSIBLE TRANSFORMAR EL MUNDO EMPODERANDO PERSONAS A TRAVÉS DE LA INNOVACIÓN','(Caso testigo) Transformar el mundo y estar donde más nos necesitan, enseñando cómo con disciplina, tiempo y dedicación podemos aportar para, entre todos, construir mejores comunidades y, en consecuen',4,NULL),(9,'2019-01-01',91,'DATA WAREHOUSING','Introducción a la arquitectura de Data Warehouse',4,'http://dropbox.com/sh/mwtcc2ngfyrwexg/AABmXID3fIfwHtZxXQ-Ev7LMa?dl=0'),(10,'2018-11-01',91,'DATA WAREHOUSING 2','Una revisión ',1,NULL),(11,'2017-10-25',24,'LA NUEVA ARQUITECTURA FINANCIERA EN LA ERA DE LA TRANSFORMACIÓN DIGITAL','Hay un nuevo concepto que invade el mercado y está aturdiendo a los ejecutivos: la Transformación Digital. Hoy en día gran parte de las organizaciones presentan el problema que yo suelo llamar “la incompatibilidad de caracteres”, en el que los estereotipos de las organizaciones en las que vivimos no están preparados para que estas sean dirigidas por profesionales de nuestra época. Y mucho menos podrán entregarles valor a los clientes del mañana',5,NULL),(12,'2017-10-25',25,'TRANSFORMACION DIGITAL','para garantizar una nueva e innovadora experiencia de cliente que permita obtener una ventaja competitiva de un negocio se puede basar en transformación digital, disrupción digital o con cualquier nombre que se quiera utilizar. Lo realmente importante es pensar diferente, fuera de la caja, romper paradigmas',5,NULL),(13,'2017-10-17',35,'¿LAS BUENAS IDEAS SE COPIAN?','¿las buenas ideas se copian? Mi respuesta es: absolutamente. Las buenas ideas se copian, reconocen y comparten.',5,NULL),(14,'2017-10-25',28,'LOS BOTS Y LA REVOLUCIÓN QUE ESTÁN CAUSANDO.','La tecnología de los bots esos programas informáticos que te hacen creer que estás hablando o chateando con un humano  está transformando la forma en la que las empresas se relacionan con sus clientes o con sus empleados. ',5,NULL),(15,'2017-10-24',36,'EL CICLO DE VIDA DE LA EXPERIENCIA DEL CLIENTE','UUn cliente que ha dejado de usar sus productos o servicios puede volver a considerarlos en el futuro) ¿Cómo te aseguraras de que tus clientes nunca lleguen a esa etapa?',4,NULL),(16,'2019-10-26',5,'APPLICATION DEVELOPMENTS USING ORACLE’S MOBILE CLOUD SERVICE ','This is my first setup post to document my experiences in the development of mobile applications using Oracle’s Mobile Cloud Service.  My primary goal was personal: I wanted to keep a record of everything I did; but it would be great if other people also found this useful. I have had this project in mind for quite a while, and I think it is time to put it in practice. I’m not sure how this idea would become popular among hourlybased workers, but the technology and architecture involved could be perfectly ported to other use cases, such as security tracking for employees who perform their duties in highrisk areas, monitoring the location and usage of movable assets around a compound and securing them via geofencing or any application where we need finegrained location information to perform real time actions using rich contextual information. ',5,NULL),(17,'2018-04-25',34,'ES JAVA Y JAVA ENTERPRISE EDITION (JEE) UNA TECNOLOGÍA VIGENTE?','Java es un lenguaje de programación orientado a objetos, que provee una plataforma sólida para poder construir piezas de software usando otros paradigmas, por ejemplo, basados en componentes, aspectos y servicios. Desde su aparición a finales de los 80’s, sin embargo, se ha corrido la voz de que le quedan sólo unos cuántos años de vida o bien que está siendo progresivamente abandonado por el mercado. Esto ha demostrado ser consistentemente falso, y en este artículo explicaremos por qué pensamos que su muerte aun se encuentra en un futuro lejano, y porqué es una buena elección como ingrediente para el desarrollo.',5,NULL),(18,'2018-04-25',40,'QUE TAL DOMINAR O MUNDO?','Trazendo um pouco a discussão para o âmbito das empresas, se você como eu trabalha em uma empresa que se enquadra entre as melhores no Great Place to Work, com certeza já tem a primeira parte de valores, missão e objetivos bem endereçada. Mas gostaria de focar mais na segunda parte, a parte das redes flexíveis e extensas, que devem privilegiar a comunicação contextual, ou seja, não faz sentido envolver toda a empresa em um processo de cotação, compra ou desenvolvimento de um novo produto ou oferta',4,NULL),(19,'2018-04-25',45,'¿CÓMO PODEMOS USAR LA EXPERIENCIA QUE NOS BRINDA LA REALIDAD VIRTUAL EN RECURSOS HUMANOS? ','Es cierto que se necesitaría un desarrollo propio con la casuística particular de la empresa de la que se trate. Pero pensemos en los beneficios que traería. Disminución de accidentes de trabajo, menor tiempo de curva de aprendizaje, optimización de la producción, o incluso estimulación de la creatividad sobre cómo resolver ciertos problemas. ',5,NULL),(20,'2018-04-25',21,'¿PUEDE SER UN SISTEMA DE TRANSPORTE PÚBLICO URBANO DE ALTA CALIDAD Y SOSTENIBLE FINANCIERAMENTE?','El sistema integrado de transporte público en Bogotá (Sitp) genera un déficit operacional de COP $661 mil millones anuales  (USD $220 millones), cifra que se genera de la diferencia entre los ingresos y los costos operacionales del sistema incluido el de recaudo, monto compensando con dinero de hacienda pública distrital sacrificando inversiones sociales o de infraestructura para mejorar la competitividad de la ciudad. Hay dos alternativas que se pueden combinar para resolver esta situación.',5,NULL),(21,'2018-04-25',26,'¿CÓMO AGILIZO LA GESTIÓN DE LOS CONTRATOS EN MI COMPAÑÍA?','Acabas de cerrar el negocio que tanto has deseado o lograste por fin los ahorros que necesitabas y ahora necesitas el contrato para firmarlo. Pero … ¡oh oh!, necesitas al equipo jurídico para validarlo y crearlo. Sabes también que este no es el único paso., ',5,NULL),(22,'2018-04-25',45,'¿ES BLOCKCHAIN UNA TECNOLOGÍA QUE PUEDE APALANCAR EL ÁREA DE RECURSOS HUMANOS?','Los usos de BlockChain en al área de Recursos Humanos (RHH) están en pleno auge, sobre todo en investigación. Las nuevas aplicaciones de esta tecnología tienen la capacidad de mejorar los procesos en las empresas, y en particular los del área de RRHH en donde ya están en marcha algunas de las soluciones hoy disponibles en el mercado, o incluso otras con algunas ideas disruptivas no tan desarrolladas.',4,NULL),(23,'2018-08-28',37,'Aplicación de e-Commerce en las Empresas','El comercio electrónico ha permitido ampliar los canales tradicionalmente usados para proveer de bienes y servicios a un mercado de consumidores en crecimiento. La existencia de la red en el medio ambiente de los negocios, ésta se ha hecho presente en prácticamente todas las áreas de las Empresas',5,NULL),(24,'2017-06-14',37,'Artificial… no tan Artificial','Hoy el uso de Inteligencia Artificial es fundamental en las estrategias comerciales y de atención del cliente. La híper Segmentación, el uso de datos es la estrella del norte que guiará a las empresas al éxito en sus estrategias y tácticas comerciales',5,NULL),(25,'2017-08-01',37,'Importancia de la competencia en un libre mercado','Si entendemos que un mercado es un lugar físico o virtual en esta época, donde se transan vienes y servicios entre oferentes y demandantes encontramos nuestra primera paradoja, ¿Quién debe brindar o supervisar que estos mercados sean libres y de alcance pata todos?.',5,NULL),(26,'2017-08-01',37,'Información + Análisis = Éxito en sus campañas de marketing.','Imagine si pudiera conectar solo los datos de marketing que necesita. ¿Qué pasaría si pudiera organizar las interacciones con los clientes en cualquier canal desde un único lugar? ¿Cómo seria si pudiera tener una tecnología que los marketer aprecien y quieran utilizar, pero en la que además confíe realmente el equipo informático?',5,NULL),(27,'2017-05-26',37,'No al spam, sólo con la fidelización lograremos nuestros objetivos','Es efectivo que un mailing, en el corto plazo logre que el web o producto promocionado, reciba muchas visitas. Pero estas estrategias pensadas a corto plazo son un riesgo. una empresa que piense a corto plazo, normalmente tiende a desaparecer.',5,NULL),(28,'2017-05-12',37,'Warketing e–Business.... Negocios en Internet.. Más que un canal de Distribución','Hoy día, en el entorno de las empresas, donde los recursos son escasos y se requiere de eficiencia para al menos mantener su competitividad, el e-Business les permite optimizar sus costos, especialmente en su relación con proveedores y consumidores. El manejo de información integrada en los distintos niveles de la cadena de suministro, posibilita la disminución de los costos de inventario, situación que afecta positiva y globalmente a la última línea de los estados de resultados de la empresas que participan en el comercio electrónico. ',5,NULL),(29,'2017-05-07',37,'Impacto de SCM en el e-Business','La interacción del SCM en el e-Business está dada por la factibilidad de realizar muchas o todas las transacciones que ocurren durante el funcionamiento de la Supply Chain en Internet',5,NULL),(30,'2017-09-01',37,'Customer Experience CX Cloud','Your customer has changed, and how you sell needs to change accordingly. To increase sales and optimize efficiency, modern sales requires fast and easy tools, mobile productivity, insightful and collaborative selling, and aggressive pipeline creation',4,NULL),(31,'2017-11-21',37,'Journey to modern marketing','Oracle Marketing Cloud: targeting, engagement, conversion, analysis, marketing technology, cross chanel, content, data management',5,NULL),(32,'2019-04-09',40,'Ambidestria – a chave para se tornar uma cidade inteligente','Uma cidade ser ambidestra significa que a cidade consegue equilibrar a sua capacidade de explorar/usar os recursos e serviços pré-existentes com a capacidade de explorar/descobrir novos caminhos e soluções para a cidade. Tomo a liberdade de chamar esse equilíbrio de explorar² (graças ao nosso idioma, no qual a mesma palavra se presta a ambos os usos). A partir dessa ideia inicial, o estudo prossegue definindo o que é uma cidade inteligente, corroborando a visão cada vez mais comum de que uma cidade inteligente é aquela que usa a tecnologia e a informação para melhorar a qualidade de vida dos cidadãos e fomentar o desenvolvimento socioeconômico da cidade.',4,NULL),(33,'2019-04-16',35,'Cuando la innovación no es un cuento chino','Aún es pronto para saber qué puede caminar en la integración de las experiencias digitales con las físicas (phygital) en el comercio minorista, pero las últimas tendencias de Shanghai son las que los minoristas de todo el mundo deberían prestar atención.',3,NULL),(34,'2019-04-24',84,'En vos confiamos Blockchain','Blockchain despegado las criptomonedas. Otros usos para el Blockchain. Concepto de arquitectura de confianza distribuida ',4,NULL),(35,'2017-10-27',37,'Adidas India y Oracle Marketing Cloud ','Video spbre cómo Adidas usa Oracle Marketing Cloud para orquestar marketing de canales cruzados para aumentar las tasas de apertura de correo electrónico en 2X y aumentar las conversiones en un 50% con una nueva experiencia de cliente.\r\n\r\n',5,NULL),(36,'2017-10-17',37,'El marketing no es una batalla de productos, sino de percepciones','La creación de valor es el objetivo de todas las empresas con afán de lucro. El objetivo de la creación de valor es puramente financiero y técnico, es decir, que el objetivo de la creación de valor es beneficiar al accionista y la empresa.',5,NULL),(37,'2017-10-19',37,'Modern Marketers using Data-Driven strategies','In an effort to better understand current and future usage of data-driven strategies by Modern Marketers, Radar Research led a research project to uncover key trends around marketing data management. Here are the highlights...',5,NULL),(38,'2017-10-24',37,'Meet Oracle Commerce Cloud ','Se estima que en Chile más de 10 millones de personas toman habitualmente decisiones de compra basadas en información online, lo que reafirma la importancia de este canal, cada vez más presente en los hábitos de consumo. ',5,NULL),(39,'2017-11-01',37,'Crear experiencias de cliente multi-canal','Es fácil crear datos a partir de diferentes fuentes útiles, crear audiencias específicas y, a continuación, ayudar a los clientes a definir su próxima experiencia interactuando con ellos prácticamente en tiempo real.\r\n\r\nOracle Responsys brinda a los equipos de marketing herramientas para ofrecer experiencias con el fin de atraer el interés que sus clientes demandan a través de dispositivos, canales y ciclos de vida. ',5,NULL),(40,'2018-11-27',37,'#WARKETING… La emoción para llamar la atención y luego captar la lealtad','El nuevo desafío: el aprendizaje del cerebro humano en función de la relevancia de las emociones en el acto de la libre elección de marca del consumidor, como en el desarrollo del proceso creativo del mensaje publicitario de la marca.',5,NULL),(41,'2019-05-07',93,'SMART AGRICULTURE','Cómo la ingeniería de datos pueden ayudar a la agricultura',3,NULL),(42,'2019-04-26',22,'UN CASO REAL DE AUTONOMOUS DATA BASE','En un mundo donde la tecnología lo revoluciona todo, podemos liberarnos de las macros y/o de las dependencias con los equipos de IT?',3,NULL),(43,'2019-04-30',92,'INNOVACION, ADELANTARSE AL CAMBIO O ADAPTARSE A EL','al mercado, por lo cual se vuelve fundamental adaptarse al cambio o anticiparse a él y es justo aquí donde empieza la innovación. Sin embargo, para muchos innovar en sus compañías todavía no es claro y se presentan dificultades a la hora de enfrentarse a un cambio o incluso pensar en él. ',2,NULL),(44,'2019-04-29',84,'BLOCKCHAIN - DECIDIENDO POR CONSENSO','Las redes de blockchain definen mecanismos de consenso para tomar decisiones, como confirmar una transacción. Estos mecanismos de consenso no solo buscan un \"acuerdo\" entre los miembros con respecto a las transacciones, sino que deben ser:\r\n-	Colaborativo, cooperativo: Deberían querer y poder participar todos poniendo el interés del grupo sobre intereses individuales. \r\n-	Igualitarios: Todos los miembros deben ser tratados por igual\r\n-	Inclusivo y participatorio: Cuanto más participen mejor\r\n',4,NULL),(45,'2019-04-29',88,'Análisis de datos de redes sociales ¿Por qué?','Conocer al cliente, es de un gran interés para muchas industrias por muchos motivos. Al conocerlos podemos crear publicidad que se ajuste a nuestro público, o modificar nuestros productos en base a sus comentarios, podemos saber en base a su edad o nivel cultural cual es la mejor forma de interactuar con ellos y mejorar la atención al cliente. ',2,NULL),(46,'2019-05-07',57,'BLOCKCHAIN COMO TRANSFORMADOR DE LA ECONOMIA','La transformación hacia una sistema social con una distribución de la riqueza más justa',1,NULL),(47,'2018-12-11',37,'LA TRANSFORMACIÓN DIGITAL ES COMO SALTAR EN PARACAIDAS','Los consumidores cambian más rápido que lo que se imaginan las empresas, están en un constante cambio y si las empresas no avanzan con ellos, el futuro del negocio va a estar en serios problemas.',5,NULL),(48,'2017-11-17',37,'WARKETING… La emoción para llamar la atención y luego captar la lealtad','el aprendizaje del cerebro humano en función de la relevancia de las emociones en el acto de la libre elección de marca del consumidor, como en el desarrollo del proceso creativo del mensaje publicitario de la marca.',5,NULL),(49,'2018-10-23',37,'Las claves del Marketing de Afiliación','ElMarketing de Afiliación se encarga de publicitar a tiendas o anunciantes a partir de la publicación de sus promociones. Existen distintos tipos y cada uno cuenta con metodologías diferentes. Este artículo describe las principales',5,NULL),(50,'2017-12-19',37,'10 tendencias tecnológicas para el 2018','La inteligencia artificial, las experiencias inmersivas, los gemelos digitales, el pensamiento basado en eventos y la seguridad adaptativa continua crean la base para la próxima generación de modelos de negocios digitales y ecosistemas.',5,NULL),(51,'2018-11-08',37,'ECONOMÍA, MARKETING Y CREACIÓN DE VALOR','Ahora el marketing ya no es sólo un accesorio dentro de la organización, sino que es parte de la estrategia misma del negocio.',5,NULL),(52,'2018-10-18',37,'https://www.linkedin.com/pulse/deliver-best-your-brand-how-modern-marketing-works-gajardo-ug%C3%A1s-/','Modern Marketers know their customers expect experiences that will blow their minds. Customers are tech savvy, on the move, and want to interact with your brand on their terms. This means wherever, whenever, and however they want.',5,NULL),(53,'2018-08-19',37,'LA SEGMENTACIÓN TRADICIONAL ESTÁ MUERTA','La cantidad de datos obtenidos de los consumidores online ha cambiado la forma de analizarlos, como dice Keith Mc Namara  “La segmentación como la han conducido históricamente los marketeros está muerta”',5,NULL),(54,'2018-08-02',37,'Oracle CX Audience simplemente iNcReÍbLe...','Hoy las estrategias y tácticas de marketing se ven enfrentadas a desafíos cada vez mayores, esto debido a que los consumidores son más exigentes y demandan que la comunicación sea segmentada y personalizada.',5,NULL),(55,'2019-05-08',37,'Oracle Infinity Digital Analytics (OMC)','Oracle InfinityTM is an enterprise analytics solution that harnesses big data to provide actionable customer intelligence at scale, in real time and with unlimited flexibility on a secure platform.',5,NULL),(56,'2019-05-09',37,'LA INTELIGENCIA ARTIFICIAL ESTA CAMBIANDO LA EXPERIENCIA DE LOS CLIENTES','la inteligencia artificial (IA) se volverá parte integral de nuestra economía y vidas mucho más rápido de lo que se esperaba, y puede ser ocupada de forma exitosa para proveer una experiencia superior a los clientes.',2,NULL),(57,'2019-05-09',37,'LAS 22 LEYES INMUTABLES DEL MARKETING','Las 22 Leyes Inmutables del Marketing”, de Al Ries y Jack Trout, constituye un libro de referencia para todos aquellas personas que, de una u otra manera, están relacionadas con esta actividad. Este libro, ameno a la par que instructivo, nos hace meditar sobre cómo funcionan las cosas en el mundo del marketing, aquí van las mejores 16',2,NULL),(58,'2019-05-09',37,'CX CUSTOMER EXPERIENCE EN LA CIUDAD DE LA FURIA','Los clientes de hoy demandan nuevas experiencias impulsadas por canales y opciones personalizadas. Cada viaje del cliente es único, pero debe asegurarse de que cada experiencia sea perfecta.',2,NULL),(59,'2019-05-09',37,'¿LA NEGOCIACIÓN ES UN JUEGO DE PODERES?','Tipos de negociadores. Qué es ser un buen negociador?',2,NULL),(60,'2019-05-09',37,'2019 un año con grandes desafíos','Durante el 2019 veremos como los gerentes visionarios, que implementaron herramientas de marketing digital, tendrán retornos medibles en cada acción ejecutada, optimizando y rentabilizando presupuestos de comunicación, asegurando el éxito del negocio.',4,NULL),(61,'2018-11-08',37,'ECONOMIA, MARKETING Y CREACION DE  VALOR','Ahora el marketing ya no es sólo un accesorio dentro de la organización, sino que es parte de la estrategia misma del negocio.',5,NULL),(62,'2018-10-18',37,'How Modern Marketing Works for You','Modern Marketers know their customers expect experiences that will blow their minds. Customers are tech savvy, on the move, and want to interact with your brand on their terms. This means wherever, whenever, and however they want.',5,NULL),(63,'2019-03-18',35,'LA NUEVA PESADILLA - LA INTELIGENCIA ARTIFICIAL DESPLAZA A LOS HUMANOS EN EL MUNDO LABORAL','Este es un tema ampliamente discutido cuando leemos sobre la Inteligencia Artificial (IA). Creo que es una preocupación natural en el ser humano considerar que las máquinas puedan desplazar a los humanos en la fuerza laboral. Ocurrió durante la primera y la segunda revolución industrial, y también está sucediendo ahora con el crecimiento de la inteligencia artificial y del aprendizaje automático.',4,NULL),(64,'2018-05-09',35,'CHIEF MARKETING TECHNOLOGIST, EL AVENGER QUE VIENE A CALMAR LA GUERRA SIN FIN ENTRE LAS ÁREAS DE TI Y MARKETIN','las áreas de marketing de las empresas suelen ser grandes consumidoras de servicios tecnológicos. En algunos casos estos son utilizados vía agencias y en otros hacen parte de un equipo interno. Sin importar cuál sea el caso, en algún momento suele existir un cruce con el área de informática para apoyo y revisión de estos procesos. Sin embargo, con el aumento en el número de tecnologías exclusivas de marketing y la complejidad creciente de los procesos de negocio, no basta con hacer trabajar juntos a los departamentos de marketing y tecnología ya que pueden surgir problemas.',4,NULL),(65,'2018-04-24',34,'Are Java and Java Enterprise Edition (JEE) Still Relevant Technologies?','Java is an object-oriented programming language that provides a solid platform to build pieces of software using other paradigms, for example those based on components, aspects and services. However, since it first appeared in the late 80s, it has been said that Java’s days are numbered or that is being gradually dropped by the market. This has proven to be outright false, and in this article I will explain why we think Java’s demise is still in the distant future and why it is a good choice as an ingredient for development.  ',5,NULL),(66,'2017-06-06',94,'Why do Human Capital Management projects fail from Day 1?','For the past two years, I have been in charge of Oracle’s consulting organization, which is dedicated to implementing Human Resources projects using Oracle technology in Latin America. During these years, this team has been involved in more than 150 projects, varying from small, to mid-size or full Human Resources transformation projects. What intrigues me today is that, although Human Resources (HR) is on the agenda of most of the CxOs, only 24% of these projects reach the actual implementation and deployment phases, and of the other 76%, almost all (88%) fail in the early stages, where project sponsors are still supporting project importance and benefits to the companies’ boards/committees. What is happening?',4,NULL),(67,'2018-07-11',44,'¿QUÉ ES LA EXPERIENCIA DEL CLIENTE?','Una mejor o peor experiencia de cliente sería el resultado de una concreción exitosa en mayor o menor medida de estos objetivos, soportados por capacidades tecnológicas específicas.',5,NULL),(68,'2019-05-09',27,'ERP UN DOLOR DE CABEZA','Un ERP de clase mundial, aparte de proveer las condiciones necesarias para llevar los estados financieros con el lleno de los requerimientos legales, debe entregar a los usuarios experiencias modernas, independientemente de su grupo generacional.  De ahí que tanto un milenial, uno de la Generación X e incluso un “baby boomer” debería poder usar, entender y trabajar sobre una solución ERP de este tipo.',5,NULL),(69,'2018-03-30',42,'Computação quântica e blockchain','O que chamamos de blockchain hoje é um conjunto de tecnologias que foram agregadas para resolver, originariamente, necessidades específicas: como garantir a unicidade de um recurso digital? Como impedir que um recurso, uma vez transferido de A para B, possa ser copiado e novamente transferido de A para outra pessoa qualquer? Estas perguntas surgiram quando se pensou em criar uma moeda digital: um modelo que permitiu o surgimento não apenas de uma mas de algumas centenas de ¬criptomoedas.',5,NULL),(70,'2019-05-09',27,'SOLUCIONES DE NEGOCIACIÓN, AHORROS, TRANSPARENCIA, GANANCIAS ','Para iniciar un proceso de negociación debemos buscar proveedores que puedan entregarnos los productos o servicios que estamos buscando.  Tradicionalmente, las áreas de compras salen a buscar tres cotizaciones para poder comparar y finalmente seleccionar uno de los proponentes.   Esto trae consigo tareas administrativas relacionadas con identificar el proveedor, pedirle la cotización, recibir sus ofertas, hacer el respectivo análisis, continuar con el proceso de negociación para ajustar el precio y finalmente asignar un proveedor.  ',5,NULL),(71,'2018-08-30',95,'O QUE É BLOCKCHAIN, EM PORTUGUÊS','O que é blockchain? Numa definição simples, é uma forma de criar registros seguros e imutáveis, que são distribuídos entre os participantes de uma rede ponto a ponto, e esses participantes são responsáveis por verificar novos registros e entrar em consenso sobre a validade dos mesmos para adicioná-los ao blockchain. Gostou? É correto, e muito abstrato. Vamos definir por uma analogia.\r\n\r\n',5,NULL),(72,'2019-01-16',60,'ORACLE CAPTURÓ LA ATENCIÓN DEL MARKETING DIGITAL EN 2018','Próximo a acabarse el 2018, llega el momento de hacer balances y sacar la cuenta de lo que se hizo en el año. Un informe de la consultora Gartner de principio de año resaltó una serie de 6 aspectos que los principales “marketers” en el mundo tenían que tener en la mira para el 2018. Y algunos de esos 6 aspectos son viejos conocidos para la suite de Oracle Marketing Cloud y otros recibieron atención especial en 2018.',5,NULL),(73,'2019-01-30',61,'CÓMO CONVERTIR UNA APLICACIÓN TRADICIONAL A UNA ARQUITECTURA DE NUBE, CASO REAL','En este artículo veremos el caso real de un cliente que logró sacarle máximo provecho a la Nube transformando su aplicación tradicional en una arquitectura escalable y elástica de nube.',4,NULL),(74,'2017-10-18',96,'BIG DATA Y LAS CINCO W','Con el objetivo de simplificar el término Big Data, con una mirada hacia su aplicabilidad en un lenguaje más cercano al negocio, hemos desarrollado las 5 W (doble uve) de Big Data. Las “5 W” se refieren a las preguntas que en inglés comienzan con W:: What (qué), Why (porqué), When (cuándo), Where (dónde) y Who (quién). De esta forma, se pretende ayudar empresas y personas a entender qué factores tomar en consideración en la implementación de Big Data.',5,NULL),(75,'2017-09-29',12,'APRENDIZAJE SOCIAL Y COLABORATIVO, MÁS ALLÁ DE LO TRADICIONAL ','Como empresa debemos pensar cómo aprenden mis colaboradores hoy y cómo lo harán mañana. Por lo que las herramientas sencillas para aprender y fáciles de usar son un factor diferencial y fundamental ya que hoy tendemos a agruparnos en “Comunidades de aprendizaje” y a buscar información en “Redes Sociales”. Es necesario habilitarlas a nivel empresarial para entender una colaboración entre todas las direcciones. ',5,NULL),(76,'2017-10-05',18,'CIBERTERRORISMO Y LEGISLACIÓN. UN LARGO CAMINO POR RECORRER','es necesario unir esfuerzos entre las empresas de tecnología que proveen servicios de internet y telecomunicaciones-que son las que más conocen sobre las características, avances y tipología de este tipo de acciones criminales- y el gobierno nacional para que entre ambos sectores se pueda robustecer e implementar la legislación actual y así se pueda proteger a una persona o empresa cuando es víctima de un ataque que vulnere la seguridad de su información.',4,NULL),(77,'2017-10-27',94,'MÉTODO DE CÁLCULO TARIFÁRIO NO TRANSPORTE PÚBLICO','É preciso uma transformação digital no planejamento tático e estratégico no transporte público. Primeiramente, é necessário que o gestor tenha em suas “mãos” todos os dados do transporte, para que então ele possa manipular e transformar essa informação em inteligência operacional e assim trabalhar o planejamento com mais agilidade e confiabilidade, através de uma visão analítica dos indicadores.',5,NULL),(78,'2018-11-30',19,'¿Cómo aprovecho del aprendizaje moderno en mi vida como parte de la transformación digital? ','En estos momentos uno de los principales temas con los que convivo cotidianamente es el aprendizaje moderno y todo lo que trae aparejado consigo. Ahora todo se relaciona con cómo aprender nuevas cosas, cómo entender hacia dónde debemos ir no solo como profesionales sino también como personas, cómo trabajadoras y en mi caso como mamá, ya que constantemente nos estamos enfrentando a nuevos retos que debemos dimensionar, entender y saber cómo abordarlos de manera cotidiana.',5,NULL),(79,'2018-09-18',19,'¿QUÉ SIGNIFICA LA ERA DIGITAL PARA LA GESTIÓN DE RECURSOS HUMANOS? ','“¿por dónde empezar la transformación?”, ¿cómo presentar la estrategia de la transformación de RH a los directivos?, ¿se puede lograr la transformación digital para Recursos Humanos y en cuánto tiempo? Al responder a varias de esas inquietudes es inevitable considerar cuál es el nivel de implementación y uso de las herramientas tecnológicas en nuestras áreas de Recursos Humanos. La transformación debe enfocarse desde el inicio en las principales necesidades organizacionales. Es importante evaluar cuáles son las verdaderas necesidades para poder enfocarse en las que sean más relevantes para el negocio. Antes de presentar una estrategia de transformación tecnológica hay que tener en claro por qué y para qué se necesita esa transformación. Sin esa claridad no podremos transmitir la credibilidad necesaria para impulsar el cambio. Entender y poder explicar por qué la transformación tecnológica no es un simple capricho del área, sino que es el camino que debemos emprender para alcanzar mayor',5,NULL),(80,'2017-09-26',46,'EL NUEVO IMPERATIVO, SER OMNIPRESENTE','La omnipresencia reemplazará a la omnicanalidad como táctica en muchos sectores, especialmente en Retail y Banca. Este nuevo \"modo de pensar” tendrá un gran efecto en la estrategia competitiva. Las marcas omnipresentes crearán experiencias de consumo que comprendan y respondan a las necesidades y expectativas, además de generar una mayor lealtad del cliente. ',5,NULL),(81,'2018-10-30',10,'¿SON LOS CIUDADANOS LOS CLIENTES DEL GOBIERNO?','¿Qué tan válido es considerar a los ciudadanos como clientes del Gobierno?, ¿Es válido emplear las mismas técnicas y tecnologías que emplean las compañías? Para esto analicemos la pregunta central desde tres ópticas: diferencias entre ciudadanos y clientes, diferencias entre empresas y gobiernos, y finalmente lo que los clientes buscan al interactuar con las empresas y lo que los ciudadanos buscan al interactuar con el Gobierno.\r\n\r\n',5,NULL),(82,'2018-09-11',28,'PARA DÓNDE VAMOS CON LA GESTIÓN DEL CONTENIDO','Cada día como individuos “procesamos” una cantidad de información importante que recibimos a través de mensajes de texto o voz, videos, imágenes, artículos, aplicaciones móvil, etc. Y todo esto es posible en nuestro trayecto de la casa a la oficina.  La combinación de los tipos de contenido y la proliferación de canales para transmitir los mismos abre un sin número de oportunidades para tener acceso a la información en el formato de nuestra preferencia.',5,NULL),(83,'2019-05-09',37,'EL USO DE ESTA TECNOLOGÍA ENTREGA MEJORAS EN EFICIENCIA, PRODUCTIVIDAD Y ES UN DIFERENCIADOR COMPETITIVO PARA EMPRESAS DE DIFERENTES ÁREAS','¿De qué forma las empresas pueden utilizar la IA para mejorar la experiencia de los clientes?  En Comunidad Empresas te mostramos 5 formas de hacerlo, con la mirada experta de Sergio Gajardo, Customer Experience CX Cloud de Oracle Chile.',2,NULL),(84,'2018-10-23',42,'LA FUERZA DE LA INNOVACIÓN','A tecnologia nos leva, muitas vezes, a lugares que não fomos capazes de imaginar quando a desenvolvemos. O fogo, certamente útil para esquentar as noites frias e cozinhar a comida dos nossos antepassados, passou a alimentar de forjas a geradores. As rodas de moinho tornaram-se a base das máquinas da revolução industrial. A lista é extensa e chega até os dias de hoje, acelerando a cada nova invenção. O GPS ilustra esse movimento de uma forma bastante acelerada.',5,NULL),(85,'2019-05-09',61,'LA NUBE ES MUCHO MÁS QUE UN CAMBIO DE LUGAR','Artículo aún en redacción',2,NULL),(86,'2019-05-22',84,'Blochain en las nubes','Cuando hablamos de blockchain, hablamos de una tecnología nueva, innovadora y que puede ayudarnos en el futuro a cambiar muchas de las actividades habituales en el negocio de cualquier empresa. Pero también hablamos de tecnologías no muy maduras, en permanente evolución y que requieren un esfuerzo mayor al habitual para implementar en proyectos importantes.',2,NULL),(87,'2019-04-09',84,'BLOCKCHAIN, SOBRE BITCOINS Y OTRAS COSAS','Con el tiempo, aparecen distintas implementaciones de blockchain más allá de la red de los bitcoins, que evolucionan o no en la arquitectura y que buscan cubrir necesidades más asociadas a los requerimientos típicos de empresas corporativas.',4,NULL),(88,'2019-05-23',88,'PROYECTOS BIG DATA QUIEN ES QUIEN?','Una de las primeras dudas cuando una empresa busca empezar un proyecto de Big Data y procesamiento de datos es ¿Quién tiene el conocimiento para llevar el proyecto adelante? ¿Cuáles son los roles que participan de un proyecto de estas características? Estas son preguntas que desvelan a personas que trabajan en Recursos Humanos. En las áreas de sistemas, las búsquedas de perfiles de IT son todo un rubro en sí mismo y Big Data no es la excepción.',3,NULL),(89,'2019-05-31',93,'AGRICULTURA INTELIGENTE','Los métodos de cultivo tradicionales no alcanzarán para suplir las demandas cada vez más grandes de alimentos. Por eso, la agricultura inteligente está dejando de ser una opción para convertirse en una solución.',3,NULL),(90,'2019-04-02',87,'Gerenciamiento de proyectos en cloud','Derivar los mitos sobre el gerenciamiento de proyectos en Cloud',2,NULL),(91,'2019-05-08',92,'De que hablamos cuando hablamos de innovacion','Según la ley de selección natural las especies que sobreviven no son las más fuertes, ni las más rápidas, ni las más inteligentes; sino aquellas que se adaptan mejor al cambio. Esta misma ley se aplica al mercado. Las empresas que no se adaptan a los cambios o se anticipan a ellos, mueren. Y es justo en esta lucha por la super vivencia cuando nace la innovación.',2,NULL),(92,'2019-05-28',9,'GESTION DE RUTAS A LA MEDIDA CUSTOM MODERN EXPERIENCE 2018','Historia de exito: En el proyecto, el cliente manifesto la intencion de personalizar el tema de gestion de rutas de acuerdo a los procesos de negocio que ha venido consolidando durante los últimos años. Oracle Engagement Cloud (Sales) en la vertical de bienes de consumo (consumer goods) maneja el concepto de DSD e incorpora la administración de rutas, ventas en el punto de venta, promociones, productos, entregas, pagos, entre otros procesos que se involucran en este tipo de modelos.',1,NULL),(93,'2019-05-06',97,'TRANSFORMACION DIGITAL EN FUERZAS ARMADAS','Oracle University puede ayudar a diferentes organismos gubernamentales, tales como las fuerzas armadas, a lograr el cumplimiento de sus metas a partir de la capacitación en tecnologías de la información y en la búsqueda de la innovación',2,NULL),(94,'2019-05-06',97,'POR QUE LA CERTIFICACION ES IMPORTANTE','Obtener la certificación de Oracle puede ayudarte a desarrollar habilidades muy valiosas en la industria',1,NULL),(95,'2019-05-14',36,'CUANDO NO PUEDAS DECIDIR, SUSCRIBETE... ','Para competir con las compañías de arriendo de autos o aplicaciones como Uber, BMW ha mejorado su estrategia de ventas con un modelo de suscripción escalonada que les permite a los clientes cambiar de cinco a seis vehículos diferentes tantas veces como lo deseen, BMW rastrea el kilometraje, el consumo de combustible y los niveles de líquido de cada vehículo y luego elabora un plan de precios que incluye asignaciones mensuales, con la capacidad de aumentar las tarifas si los conductores exceden sus límites de suscripción.',2,NULL);
/*!40000 ALTER TABLE `publicacion` ENABLE KEYS */;

--
-- Table structure for table `publicacion_red_de_publicacion`
--

DROP TABLE IF EXISTS `publicacion_red_de_publicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publicacion_red_de_publicacion` (
  `id` int(11) NOT NULL,
  `publicacion_id` int(11) DEFAULT NULL,
  `red_de_publicacion_id` int(11) DEFAULT NULL,
  `fecha_at` date DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `publicacion_id` (`publicacion_id`),
  KEY `red_de_publicacion_id` (`red_de_publicacion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicacion_red_de_publicacion`
--

/*!40000 ALTER TABLE `publicacion_red_de_publicacion` DISABLE KEYS */;
INSERT INTO `publicacion_red_de_publicacion` VALUES (25,7,3,'2019-04-22',NULL),(26,23,1,'2019-04-26','https://www.linkedin.com/pulse/aplicaci%C3%B3n-de-e-commerce-en-las-empresas-sergio-gajardo-ug%C3%A1s-/?lipi=urn:li:page:d_flagship3_profile_view_base_post_details;o80t3cG2RS69hDUUWlUHjQ=='),(27,24,1,'2019-04-27','https://www.linkedin.com/pulse/inteligencia-artificial-tan-sergio-gajardo-ug%C3%A1s-warketing-/'),(28,25,1,'2019-04-27','https://www.linkedin.com/pulse/importancia-de-la-competencia-en-un-libre-mercado-sergio/'),(29,26,1,'2019-04-27','https://www.linkedin.com/pulse/informaci%C3%B3n-an%C3%A1lisis-%C3%A9xito-en-sus-campa%C3%B1as-de-sergio-1/'),(30,27,1,'2019-04-27','https://www.linkedin.com/pulse/al-spam-s%C3%B3lo-con-la-fidelizaci%C3%B3n-lograremos-nuestros-sergio/'),(31,28,1,'2019-04-27','https://www.linkedin.com/pulse/warketing-ebusiness-negocios-en-internet-mas-que-un-sergio/'),(32,29,1,'2019-04-27','https://www.linkedin.com/pulse/impacto-de-scm-en-el-e-business-sergio-gajardo-ug%C3%A1s-warketing-/'),(33,31,1,'2019-04-27','https://www.linkedin.com/pulse/journey-modern-marketing-sergio-gajardo-ug%C3%A1s-warketing-/'),(34,34,1,'2019-05-06','https://www.linkedin.com/pulse/en-vos-confiamos-blockchain-hernan-aymard'),(35,30,1,'2019-05-06','https://www.linkedin.com/pulse/customer-experience-cx-cloud-sergio-gajardo-ug%C3%A1s-warketing-/'),(36,35,1,'2019-05-06','https://www.linkedin.com/pulse/adidas-india-y-oracle-marketing-cloud-sergio-gajardo-ug%C3%A1s-/'),(37,36,1,'2019-05-06','https://www.linkedin.com/pulse/el-marketing-es-una-batalla-de-productos-sino-sergio-gajardo-ug%C3%A1s-/'),(38,37,1,'2019-05-06','https://www.linkedin.com/pulse/modern-marketers-using-data-driven-strategies-sergio-gajardo-ug%C3%A1s-/'),(39,38,1,'2019-05-06','https://www.linkedin.com/pulse/meet-oracle-commerce-cloud-sergio-gajardo-ug%C3%A1s-/'),(40,39,1,'2019-05-06','https://www.linkedin.com/pulse/crear-experiencias-de-cliente-multi-canal-sergio-gajardo-ug%C3%A1s-/'),(42,40,1,'2019-05-06','https://www.linkedin.com/pulse/warketing-la-emoci%C3%B3n-para-llamar-atenci%C3%B3n-y-luego-gajardo-ug%C3%A1s-/'),(43,47,1,'2019-05-08','https://www.linkedin.com/pulse/transformaci%C3%B3n-digital-es-como-saltar-en-paraca%C3%ADdas-gajardo-ug%C3%A1s-/'),(44,48,1,'2019-05-08','https://www.linkedin.com/pulse/warketing-la-emoci%C3%B3n-para-llamar-atenci%C3%B3n-y-luego-gajardo-ug%C3%A1s-/'),(45,49,1,'2019-05-08','https://www.linkedin.com/pulse/las-claves-del-marketing-de-afiliaci%C3%B3n-sergio-gajardo-ug%C3%A1s-/'),(46,50,1,'2019-05-08','https://www.linkedin.com/pulse/10-tendencias-tecnol%C3%B3gicas-para-el-2018-sergio-gajardo-ug%C3%A1s-/'),(47,6,1,'2019-05-08','https://www.linkedin.com/sharing/share-offsite/?url=https%3A%2F%2Fwww.linkedin.com%2Fpulse%2Fen-defensa-del-on-premise-sandra-daza%2F%3Fpublished%3Dt'),(48,6,3,'2019-05-08',NULL),(49,51,1,'2019-05-08','https://www.linkedin.com/pulse/econom%C3%ADa-marketing-y-creaci%C3%B3n-de-valor-sergio-gajardo-ug%C3%A1s-/'),(50,52,1,'2019-05-08','https://www.linkedin.com/pulse/deliver-best-your-brand-how-modern-marketing-works-gajardo-ug%C3%A1s-/'),(52,54,1,'2019-05-08','https://www.linkedin.com/pulse/oracle-cx-audience-simplemente-incre%C3%ADble-sergio-gajardo-ug%C3%A1s-/'),(53,55,1,'2019-05-08','https://www.linkedin.com/pulse/oracle-infinity-digital-analytics-omc-sergio-gajardo-ug%C3%A1s-/'),(54,61,1,'2019-05-09','https://www.linkedin.com/pulse/econom%C3%ADa-marketing-y-creaci%C3%B3n-de-valor-sergio-gajardo-ug%C3%A1s-/'),(55,62,1,'2019-05-09','https://www.linkedin.com/pulse/deliver-best-your-brand-how-modern-marketing-works-gajardo-ug%C3%A1s-/'),(56,53,1,'2019-05-09','https://www.linkedin.com/pulse/la-segmentaci%C3%B3n-tradicional-est%C3%A1-muerta-sergio-gajardo-ug%C3%A1s-/'),(57,63,1,'2019-05-09','https://www.linkedin.com/pulse/la-nueva-pesadilla-inteligencia-artificial-desplaza-godoy-descazeaux/'),(58,64,1,'2019-05-09','https://www.linkedin.com/pulse/chief-marketing-technologist-el-avenger-que-viene-la-ignacio/'),(59,65,1,'2019-05-09','https://www.linkedin.com/pulse/java-enterprise-edition-jee-still-relevant-andr%C3%A9s-far%C3%ADas-riquelme/'),(60,65,4,'2019-05-09',NULL),(61,67,1,'2019-05-09','https://www.linkedin.com/pulse/qu%C3%A9-es-la-experiencia-del-cliente-carlos-nascimbene/'),(64,44,1,'2019-05-31','https://www.linkedin.com/pulse/blockchain-decidiendo-por-consenso-hernan-aymard'),(65,15,1,'2019-06-04','https://www.linkedin.com/pulse/el-ciclo-de-vida-la-experiencia-del-cliente-sergio-del-pino/'),(66,32,1,'2019-06-04','https://www.linkedin.com/pulse/ambidestria-chave-para-se-tornar-uma-cidade-bernard-london/'),(67,87,1,'2019-06-04','https://www.linkedin.com/in/heraym/detail/recent-activity/posts/'),(68,73,1,'2019-06-04','https://www.linkedin.com/pulse/c%C3%B3mo-transformar-una-aplicaci%C3%B3n-arquitectura-de-nube-tellez-sanchez/'),(69,22,1,'2019-06-04','https://www.linkedin.com/pulse/es-blockchain-una-tecnolog%C3%ADa-que-puede-apalancar-el-%C3%A1rea-casielles/'),(70,18,1,'2019-06-04','https://www.linkedin.com/pulse/que-tal-dominar-o-mundo-bernard-london/'),(71,76,1,'2019-06-04','https://www.linkedin.com/pulse/ciberterrorismo-y-legislaci%C3%B3n-un-largo-camino-por-recorrer-ortiz/'),(72,66,1,'2019-06-04','https://www.linkedin.com/pulse/why-do-human-capital-management-projects-fail-from-day-davi-carvalho/');
/*!40000 ALTER TABLE `publicacion_red_de_publicacion` ENABLE KEYS */;

--
-- Table structure for table `red_de_publicacion`
--

DROP TABLE IF EXISTS `red_de_publicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `red_de_publicacion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `es_blog` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `red_de_publicacion`
--

/*!40000 ALTER TABLE `red_de_publicacion` DISABLE KEYS */;
INSERT INTO `red_de_publicacion` VALUES (1,'Linked In',1),(2,'Facebook',1),(3,'Twitter',0),(4,'Blog EMEA',0),(5,'Oracle Champions',0),(6,'Business Innovative Blog',0),(7,'Future Tech',0),(8,'Otros',0);
/*!40000 ALTER TABLE `red_de_publicacion` ENABLE KEYS */;

--
-- Table structure for table `tipo_de_contacto`
--

DROP TABLE IF EXISTS `tipo_de_contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_de_contacto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_de_contacto`
--

/*!40000 ALTER TABLE `tipo_de_contacto` DISABLE KEYS */;
INSERT INTO `tipo_de_contacto` VALUES (1,'Teléfono'),(2,'Whatsapp'),(3,'Skype'),(4,'Correo'),(5,'Presencial');
/*!40000 ALTER TABLE `tipo_de_contacto` ENABLE KEYS */;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nick` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `clave` varchar(600) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 0,
  `nombre` varchar(200) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `avatar` blob DEFAULT NULL,
  `rol_id` int(11) DEFAULT NULL,
  `registrado_at` datetime DEFAULT NULL,
  `actualizado_in` datetime DEFAULT NULL,
  `reset` varchar(600) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'admin','maxter2024@gmail.com','d033e22ae348aeb5660fc2140aec35850c4da997',0,'Henry Stivens Adarme','Desarrollador de soluciones web y móviles.',NULL,1,'2011-01-06 21:28:36','2011-05-09 13:34:22','5bNX4GQJuNaJE91ShNSAGMwAteHDZiETSr3Y9BIKbSOZHh7V1'),(2,'chapulin','roberto.gomez@gmail.com','94ae0a96d83a445d72a93417b63ac90d79db5eca',0,'Roberto Gomez','Humorista',NULL,1,'2011-02-15 09:28:24','1969-12-31 19:00:00',NULL),(3,'henrystivens','henry.stivens@gmail.com','dd5fef9c1c1da1394d6d34b248c51be2ad740840',0,'Henry Stivens Adarme','Soy yo!',NULL,5,'2011-04-11 15:36:10','2011-04-18 09:33:31','Yl93ijGEmsLlMR2KzRmmNYzauNfpiOG71DxXn5bOmn1y5q0t9k'),(4,'juarmuri','juarmuri@gmail.com','7c4a8d09ca3762af61e59520943dc26494f8941b',0,'Julio Murillo',NULL,NULL,5,'2011-04-12 10:55:46','2011-04-12 10:58:00','iCbZDr9LK6qylP79MK6KVXWP6bihLdqtf'),(5,'arouiller','alejandro.rouiller@gmail.com','38421b9080f783f34ea4b286336488b2412b5439',0,'Alejandro Rouiller',NULL,NULL,NULL,'2019-07-02 11:33:54',NULL,NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

--
-- Dumping routines for database 'u915405791_publi'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-11 12:54:34
