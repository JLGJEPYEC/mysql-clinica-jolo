-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: clinica2
-- ------------------------------------------------------
-- Server version	10.4.11-MariaDB

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
-- Current Database: `clinica2`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `clinica2` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `clinica2`;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add camas',7,'add_camas'),(26,'Can change camas',7,'change_camas'),(27,'Can delete camas',7,'delete_camas'),(28,'Can view camas',7,'view_camas'),(29,'Can add cargo',8,'add_cargo'),(30,'Can change cargo',8,'change_cargo'),(31,'Can delete cargo',8,'delete_cargo'),(32,'Can view cargo',8,'view_cargo'),(33,'Can add citas',9,'add_citas'),(34,'Can change citas',9,'change_citas'),(35,'Can delete citas',9,'delete_citas'),(36,'Can view citas',9,'view_citas'),(37,'Can add empleados',10,'add_empleados'),(38,'Can change empleados',10,'change_empleados'),(39,'Can delete empleados',10,'delete_empleados'),(40,'Can view empleados',10,'view_empleados'),(41,'Can add especialidades',11,'add_especialidades'),(42,'Can change especialidades',11,'change_especialidades'),(43,'Can delete especialidades',11,'delete_especialidades'),(44,'Can view especialidades',11,'view_especialidades'),(45,'Can add habitacion',12,'add_habitacion'),(46,'Can change habitacion',12,'change_habitacion'),(47,'Can delete habitacion',12,'delete_habitacion'),(48,'Can view habitacion',12,'view_habitacion'),(49,'Can add historias clinicas',13,'add_historiasclinicas'),(50,'Can change historias clinicas',13,'change_historiasclinicas'),(51,'Can delete historias clinicas',13,'delete_historiasclinicas'),(52,'Can view historias clinicas',13,'view_historiasclinicas'),(53,'Can add medicamentos',14,'add_medicamentos'),(54,'Can change medicamentos',14,'change_medicamentos'),(55,'Can delete medicamentos',14,'delete_medicamentos'),(56,'Can view medicamentos',14,'view_medicamentos'),(57,'Can add medicos',15,'add_medicos'),(58,'Can change medicos',15,'change_medicos'),(59,'Can delete medicos',15,'delete_medicos'),(60,'Can view medicos',15,'view_medicos'),(61,'Can add pacientes',16,'add_pacientes'),(62,'Can change pacientes',16,'change_pacientes'),(63,'Can delete pacientes',16,'delete_pacientes'),(64,'Can view pacientes',16,'view_pacientes'),(65,'Can add pagos',17,'add_pagos'),(66,'Can change pagos',17,'change_pagos'),(67,'Can delete pagos',17,'delete_pagos'),(68,'Can view pagos',17,'view_pagos'),(69,'Can add pisos',18,'add_pisos'),(70,'Can change pisos',18,'change_pisos'),(71,'Can delete pisos',18,'delete_pisos'),(72,'Can view pisos',18,'view_pisos'),(73,'Can add quirofanos',19,'add_quirofanos'),(74,'Can change quirofanos',19,'change_quirofanos'),(75,'Can delete quirofanos',19,'delete_quirofanos'),(76,'Can view quirofanos',19,'view_quirofanos'),(77,'Can add recetas',20,'add_recetas'),(78,'Can change recetas',20,'change_recetas'),(79,'Can delete recetas',20,'delete_recetas'),(80,'Can view recetas',20,'view_recetas'),(81,'Can add servicio',21,'add_servicio'),(82,'Can change servicio',21,'change_servicio'),(83,'Can delete servicio',21,'delete_servicio'),(84,'Can view servicio',21,'view_servicio'),(85,'Can add turnos',22,'add_turnos'),(86,'Can change turnos',22,'change_turnos'),(87,'Can delete turnos',22,'delete_turnos'),(88,'Can view turnos',22,'view_turnos'),(89,'Can add consultas',23,'add_consultas'),(90,'Can change consultas',23,'change_consultas'),(91,'Can delete consultas',23,'delete_consultas'),(92,'Can view consultas',23,'view_consultas'),(93,'Can add intervenciones',24,'add_intervenciones'),(94,'Can change intervenciones',24,'change_intervenciones'),(95,'Can delete intervenciones',24,'delete_intervenciones'),(96,'Can view intervenciones',24,'view_intervenciones'),(97,'Can add recetas medicamentos',25,'add_recetasmedicamentos'),(98,'Can change recetas medicamentos',25,'change_recetasmedicamentos'),(99,'Can delete recetas medicamentos',25,'delete_recetasmedicamentos'),(100,'Can view recetas medicamentos',25,'view_recetasmedicamentos'),(101,'Can add internamientos',26,'add_internamientos'),(102,'Can change internamientos',26,'change_internamientos'),(103,'Can delete internamientos',26,'delete_internamientos'),(104,'Can view internamientos',26,'view_internamientos'),(105,'Can add auth group',27,'add_authgroup'),(106,'Can change auth group',27,'change_authgroup'),(107,'Can delete auth group',27,'delete_authgroup'),(108,'Can view auth group',27,'view_authgroup'),(109,'Can add auth group permissions',28,'add_authgrouppermissions'),(110,'Can change auth group permissions',28,'change_authgrouppermissions'),(111,'Can delete auth group permissions',28,'delete_authgrouppermissions'),(112,'Can view auth group permissions',28,'view_authgrouppermissions'),(113,'Can add auth permission',29,'add_authpermission'),(114,'Can change auth permission',29,'change_authpermission'),(115,'Can delete auth permission',29,'delete_authpermission'),(116,'Can view auth permission',29,'view_authpermission'),(117,'Can add auth user',30,'add_authuser'),(118,'Can change auth user',30,'change_authuser'),(119,'Can delete auth user',30,'delete_authuser'),(120,'Can view auth user',30,'view_authuser'),(121,'Can add auth user groups',31,'add_authusergroups'),(122,'Can change auth user groups',31,'change_authusergroups'),(123,'Can delete auth user groups',31,'delete_authusergroups'),(124,'Can view auth user groups',31,'view_authusergroups'),(125,'Can add auth user user permissions',32,'add_authuseruserpermissions'),(126,'Can change auth user user permissions',32,'change_authuseruserpermissions'),(127,'Can delete auth user user permissions',32,'delete_authuseruserpermissions'),(128,'Can view auth user user permissions',32,'view_authuseruserpermissions'),(129,'Can add django admin log',33,'add_djangoadminlog'),(130,'Can change django admin log',33,'change_djangoadminlog'),(131,'Can delete django admin log',33,'delete_djangoadminlog'),(132,'Can view django admin log',33,'view_djangoadminlog'),(133,'Can add django content type',34,'add_djangocontenttype'),(134,'Can change django content type',34,'change_djangocontenttype'),(135,'Can delete django content type',34,'delete_djangocontenttype'),(136,'Can view django content type',34,'view_djangocontenttype'),(137,'Can add django migrations',35,'add_djangomigrations'),(138,'Can change django migrations',35,'change_djangomigrations'),(139,'Can delete django migrations',35,'delete_djangomigrations'),(140,'Can view django migrations',35,'view_djangomigrations'),(141,'Can add django session',36,'add_djangosession'),(142,'Can change django session',36,'change_djangosession'),(143,'Can delete django session',36,'delete_djangosession'),(144,'Can view django session',36,'view_djangosession');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$180000$jFPawfpNUehP$lzskAS10hTtkJzESZ1SFIrbpMzsY6EWJGmQA84P5W9s=','2020-02-24 03:29:33.553155',1,'jolo','','','aea@aea.com',1,1,'2020-02-06 08:45:28.145255');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `camas`
--

DROP TABLE IF EXISTS `camas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `camas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LETRA` char(1) NOT NULL,
  `DESCRIPCION` varchar(45) NOT NULL,
  `ESTADO` varchar(45) NOT NULL,
  `habitacion_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_camas_habitacion1` (`habitacion_ID`),
  CONSTRAINT `fk_camas_habitacion1` FOREIGN KEY (`habitacion_ID`) REFERENCES `habitacion` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camas`
--

LOCK TABLES `camas` WRITE;
/*!40000 ALTER TABLE `camas` DISABLE KEYS */;
INSERT INTO `camas` VALUES (1,'A','cama','vacio',1),(2,'B','cama','vacio',1),(3,'C','cama','vacio',1);
/*!40000 ALTER TABLE `camas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cargo` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(45) NOT NULL,
  `PAGO` float NOT NULL,
  `DESCRIPCION` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,'registrador',2000,'es un registrador'),(2,'medico planilla',7500,'es medico planilla'),(3,'psicologo',2500,'es un psicologo'),(4,'limpieza',1500,'es de limpieza'),(5,'administrativo',4000,'encargado del funcionamiento'),(6,'empleado mantenimiento',2500,'mantenimiento infraestructura');
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citas`
--

DROP TABLE IF EXISTS `citas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `citas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FECHA_REGISTRO` datetime NOT NULL,
  `FECHA_CITA` datetime NOT NULL,
  `ASISTIO` tinyint(4) NOT NULL,
  `MEDICO` int(11) NOT NULL,
  `PACIENTE` int(11) NOT NULL,
  `EMPLEADO_DNI` int(11) NOT NULL,
  `MOTIVO` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_citas_EMPLEADO1` (`EMPLEADO_DNI`),
  KEY `fk_CITAS_MEDICOS1` (`MEDICO`),
  KEY `fk_CITAS_PACIENTES1` (`PACIENTE`),
  CONSTRAINT `fk_CITAS_MEDICOS1` FOREIGN KEY (`MEDICO`) REFERENCES `medicos` (`DNI`),
  CONSTRAINT `fk_CITAS_PACIENTES1` FOREIGN KEY (`PACIENTE`) REFERENCES `pacientes` (`DNI`),
  CONSTRAINT `fk_citas_EMPLEADO1` FOREIGN KEY (`EMPLEADO_DNI`) REFERENCES `empleados` (`DNI`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citas`
--

LOCK TABLES `citas` WRITE;
/*!40000 ALTER TABLE `citas` DISABLE KEYS */;
INSERT INTO `citas` VALUES (1,'2020-02-13 16:17:00','2020-02-20 16:17:04',0,632220,93365,2005,'depresion');
/*!40000 ALTER TABLE `citas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consultas`
--

DROP TABLE IF EXISTS `consultas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consultas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FECHA_REGISTRO` datetime NOT NULL,
  `PACIENTE` int(11) NOT NULL,
  `MEDICO` int(11) NOT NULL,
  `ESPECIALIDAD` int(11) NOT NULL,
  `EMPLEADO_DNI` int(11) NOT NULL,
  `MOTIVO` varchar(45) NOT NULL,
  `servicio_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_consultas_EMPLEADO1` (`EMPLEADO_DNI`),
  KEY `fk_CONSULTAS_ESPECIALIDADES1` (`ESPECIALIDAD`),
  KEY `fk_CONSULTAS_MEDICOS1` (`MEDICO`),
  KEY `fk_CONSULTAS_PACIENTES1` (`PACIENTE`),
  KEY `fk_consultas_servicio1` (`servicio_ID`),
  KEY `idx_consulta_id` (`ID`) USING HASH,
  CONSTRAINT `fk_CONSULTAS_ESPECIALIDADES1` FOREIGN KEY (`ESPECIALIDAD`) REFERENCES `especialidades` (`ID`),
  CONSTRAINT `fk_CONSULTAS_MEDICOS1` FOREIGN KEY (`MEDICO`) REFERENCES `medicos` (`DNI`),
  CONSTRAINT `fk_CONSULTAS_PACIENTES1` FOREIGN KEY (`PACIENTE`) REFERENCES `pacientes` (`DNI`),
  CONSTRAINT `fk_consultas_EMPLEADO1` FOREIGN KEY (`EMPLEADO_DNI`) REFERENCES `empleados` (`DNI`),
  CONSTRAINT `fk_consultas_servicio1` FOREIGN KEY (`servicio_ID`) REFERENCES `servicio` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultas`
--

LOCK TABLES `consultas` WRITE;
/*!40000 ALTER TABLE `consultas` DISABLE KEYS */;
INSERT INTO `consultas` VALUES (1,'2020-02-06 16:50:07',6326,738499,6,2005,'depresion',1);
/*!40000 ALTER TABLE `consultas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-02-06 16:13:54.476635','1','Especialidades object (1)',1,'[{\"added\": {}}]',11,1),(2,'2020-02-06 16:14:03.038229','2','Especialidades object (2)',1,'[{\"added\": {}}]',11,1),(3,'2020-02-06 16:14:14.447921','3','Especialidades object (3)',1,'[{\"added\": {}}]',11,1),(4,'2020-02-06 16:14:31.595560','4','Especialidades object (4)',1,'[{\"added\": {}}]',11,1),(5,'2020-02-06 16:14:57.109582','5','Especialidades object (5)',1,'[{\"added\": {}}]',11,1),(6,'2020-02-06 16:15:20.879542','6','Especialidades object (6)',1,'[{\"added\": {}}]',11,1),(7,'2020-02-06 16:39:35.215505','1','Turnos object (1)',1,'[{\"added\": {}}]',22,1),(8,'2020-02-06 16:40:07.253402','738499','Medicos object (738499)',1,'[{\"added\": {}}]',15,1),(9,'2020-02-06 16:41:48.798063','2','Turnos object (2)',1,'[{\"added\": {}}]',22,1),(10,'2020-02-06 16:41:56.885788','632220','Medicos object (632220)',1,'[{\"added\": {}}]',15,1),(11,'2020-02-06 16:42:31.660716','3300','Medicos object (3300)',1,'[{\"added\": {}}]',15,1),(12,'2020-02-06 16:43:05.748581','9922','Medicos object (9922)',1,'[{\"added\": {}}]',15,1),(13,'2020-02-06 16:44:49.153588','6326','Pacientes object (6326)',1,'[{\"added\": {}}]',16,1),(14,'2020-02-06 16:45:32.110965','93365','Pacientes object (93365)',1,'[{\"added\": {}}]',16,1),(15,'2020-02-06 16:46:15.891932','63063','Pacientes object (63063)',1,'[{\"added\": {}}]',16,1),(16,'2020-02-06 16:47:53.541425','1','Cargo object (1)',1,'[{\"added\": {}}]',8,1),(17,'2020-02-06 16:48:27.139985','2005','Empleados object (2005)',1,'[{\"added\": {}}]',10,1),(18,'2020-02-06 16:48:59.674393','1','Servicio object (1)',1,'[{\"added\": {}}]',21,1),(19,'2020-02-06 16:50:42.876455','1','Consultas object (1)',1,'[{\"added\": {}}]',23,1),(20,'2020-02-11 16:04:42.755836','1','Medicamentos object (1)',1,'[{\"added\": {}}]',14,1),(21,'2020-02-11 16:05:18.268974','2','Medicamentos object (2)',1,'[{\"added\": {}}]',14,1),(22,'2020-02-11 16:05:53.079849','3','Medicamentos object (3)',1,'[{\"added\": {}}]',14,1),(23,'2020-02-11 16:06:17.214948','4','Medicamentos object (4)',1,'[{\"added\": {}}]',14,1),(24,'2020-02-11 16:06:50.629164','5','Medicamentos object (5)',1,'[{\"added\": {}}]',14,1),(25,'2020-02-11 16:07:24.086323','6','Medicamentos object (6)',1,'[{\"added\": {}}]',14,1),(26,'2020-02-11 16:07:48.977736','7','Medicamentos object (7)',1,'[{\"added\": {}}]',14,1),(27,'2020-02-11 16:08:22.475601','8','Medicamentos object (8)',1,'[{\"added\": {}}]',14,1),(28,'2020-02-11 16:08:55.432032','9','Medicamentos object (9)',1,'[{\"added\": {}}]',14,1),(29,'2020-02-11 16:09:21.118427','10','Medicamentos object (10)',1,'[{\"added\": {}}]',14,1),(30,'2020-02-11 16:10:29.476937','1','Recetas object (1)',1,'[{\"added\": {}}]',20,1),(31,'2020-02-11 16:11:53.040012','2','Recetas object (2)',1,'[{\"added\": {}}]',20,1),(32,'2020-02-11 16:59:53.734331','1','RecetasMedicamentos object (1)',2,'[]',25,1),(33,'2020-02-13 15:49:36.611095','11','RecetasMedicamentos object (11)',1,'[{\"added\": {}}]',25,1),(34,'2020-02-13 15:50:15.063731','11','RecetasMedicamentos object (11)',2,'[{\"changed\": {\"fields\": [\"Cantidad\"]}}]',25,1),(35,'2020-02-13 15:50:58.503925','12','RecetasMedicamentos object (12)',1,'[{\"added\": {}}]',25,1),(36,'2020-02-13 15:54:30.671518','3','Recetas object (3)',1,'[{\"added\": {}}]',20,1),(37,'2020-02-13 15:55:37.065746','13','RecetasMedicamentos object (13)',1,'[{\"added\": {}}]',25,1),(38,'2020-02-13 16:17:49.977074','1','Citas object (1)',1,'[{\"added\": {}}]',9,1),(39,'2020-02-13 16:20:47.887366','1','Pisos object (1)',1,'[{\"added\": {}}]',18,1),(40,'2020-02-13 16:20:50.877386','1','Habitacion object (1)',1,'[{\"added\": {}}]',12,1),(41,'2020-02-13 16:21:02.987453','1','Camas object (1)',1,'[{\"added\": {}}]',7,1),(42,'2020-02-13 16:21:38.965315','2','Camas object (2)',1,'[{\"added\": {}}]',7,1),(43,'2020-02-13 16:21:46.549831','3','Camas object (3)',1,'[{\"added\": {}}]',7,1),(44,'2020-02-13 16:36:17.159638','14','RecetasMedicamentos object (14)',1,'[{\"added\": {}}]',25,1),(45,'2020-02-24 03:34:54.274843','632220','Medicos object (632220)',2,'[{\"changed\": {\"fields\": [\"Nombres\", \"Apellidos\"]}}]',15,1),(46,'2020-02-24 03:35:21.006772','9982','Medicos object (9982)',2,'[{\"changed\": {\"fields\": [\"Dni\", \"Nombres\", \"Apellidos\"]}}]',15,1),(47,'2020-02-24 03:36:02.224183','9922','Medicos object (9922)',2,'[{\"changed\": {\"fields\": [\"Nombres\", \"Apellidos\"]}}]',15,1),(48,'2020-02-24 03:36:21.570382','3300','Medicos object (3300)',2,'[{\"changed\": {\"fields\": [\"Nombres\", \"Apellidos\"]}}]',15,1),(49,'2020-02-24 03:37:38.503217','6663356','Medicos object (6663356)',1,'[{\"added\": {}}]',15,1),(50,'2020-02-24 03:40:25.990453','6','Especialidades object (6)',2,'[]',11,1),(51,'2020-02-24 03:40:42.123529','1','Especialidades object (1)',2,'[{\"changed\": {\"fields\": [\"Fecha creacion\"]}}]',11,1),(52,'2020-02-24 03:40:50.701098','1','Especialidades object (1)',2,'[]',11,1),(53,'2020-02-24 03:40:55.353680','2','Especialidades object (2)',2,'[{\"changed\": {\"fields\": [\"Fecha creacion\"]}}]',11,1),(54,'2020-02-24 03:41:01.128740','3','Especialidades object (3)',2,'[{\"changed\": {\"fields\": [\"Fecha creacion\"]}}]',11,1),(55,'2020-02-24 03:41:06.636247','4','Especialidades object (4)',2,'[{\"changed\": {\"fields\": [\"Fecha creacion\"]}}]',11,1),(56,'2020-02-24 03:41:12.111619','4','Especialidades object (4)',2,'[]',11,1),(57,'2020-02-24 03:41:18.038362','6','Especialidades object (6)',2,'[{\"changed\": {\"fields\": [\"Fecha creacion\"]}}]',11,1),(58,'2020-02-24 03:41:23.549205','5','Especialidades object (5)',2,'[{\"changed\": {\"fields\": [\"Fecha creacion\"]}}]',11,1),(59,'2020-02-24 03:41:27.913854','1','Especialidades object (1)',2,'[]',11,1),(60,'2020-02-24 03:42:30.843948','1','Especialidades object (1)',2,'[]',11,1),(61,'2020-02-24 03:42:53.763778','7','Especialidades object (7)',1,'[{\"added\": {}}]',11,1),(62,'2020-02-24 03:43:12.538580','8','Especialidades object (8)',1,'[{\"added\": {}}]',11,1),(63,'2020-02-24 03:43:41.180850','9','Especialidades object (9)',1,'[{\"added\": {}}]',11,1),(64,'2020-02-24 03:47:33.321705','10','Especialidades object (10)',1,'[{\"added\": {}}]',11,1),(65,'2020-02-24 03:48:09.708136','11','Especialidades object (11)',1,'[{\"added\": {}}]',11,1),(66,'2020-02-24 03:48:20.597751','12','Especialidades object (12)',1,'[{\"added\": {}}]',11,1),(67,'2020-02-24 03:48:35.818127','13','Especialidades object (13)',1,'[{\"added\": {}}]',11,1),(68,'2020-02-24 03:48:48.264528','14','Especialidades object (14)',1,'[{\"added\": {}}]',11,1),(69,'2020-02-24 03:48:56.330418','15','Especialidades object (15)',1,'[{\"added\": {}}]',11,1),(70,'2020-02-24 03:53:14.212898','16','Especialidades object (16)',1,'[{\"added\": {}}]',11,1),(71,'2020-02-24 03:53:21.871818','17','Especialidades object (17)',1,'[{\"added\": {}}]',11,1),(72,'2020-02-24 03:58:20.489322','18','Especialidades object (18)',1,'[{\"added\": {}}]',11,1),(73,'2020-02-24 03:58:30.993012','19','Especialidades object (19)',1,'[{\"added\": {}}]',11,1),(74,'2020-02-24 03:58:55.448328','20','Especialidades object (20)',1,'[{\"added\": {}}]',11,1),(75,'2020-02-24 04:49:10.457785','1','Cargo object (1)',2,'[]',8,1),(76,'2020-02-24 04:52:00.475271','2','Cargo object (2)',1,'[{\"added\": {}}]',8,1),(77,'2020-02-24 04:52:23.438221','3','Cargo object (3)',1,'[{\"added\": {}}]',8,1),(78,'2020-02-24 04:53:03.912063','4','Cargo object (4)',1,'[{\"added\": {}}]',8,1),(79,'2020-02-24 04:53:28.461951','5','Cargo object (5)',1,'[{\"added\": {}}]',8,1),(80,'2020-02-24 05:09:20.315438','6','Cargo object (6)',1,'[{\"added\": {}}]',8,1),(81,'2020-02-24 05:15:21.832350','1','Servicio object (1)',2,'[{\"changed\": {\"fields\": [\"Precio\"]}}]',21,1),(82,'2020-02-24 05:42:52.641285','93365','Pacientes object (93365)',2,'[]',16,1),(83,'2020-02-24 05:42:58.603937','63063','Pacientes object (63063)',2,'[]',16,1),(84,'2020-02-24 05:43:01.790547','6326','Pacientes object (6326)',2,'[]',16,1),(85,'2020-02-24 05:46:03.237416','96465','Pacientes object (96465)',1,'[{\"added\": {}}]',16,1),(86,'2020-02-24 05:46:41.316033','846664','Pacientes object (846664)',1,'[{\"added\": {}}]',16,1),(87,'2020-02-24 05:49:45.789179','546432','Pacientes object (546432)',1,'[{\"added\": {}}]',16,1),(88,'2020-02-24 05:50:20.703875','663112','Pacientes object (663112)',1,'[{\"added\": {}}]',16,1),(89,'2020-02-25 10:49:35.499623','15','RecetasMedicamentos object (15)',1,'[{\"added\": {}}]',25,1),(90,'2020-02-25 10:52:07.524423','16','RecetasMedicamentos object (16)',1,'[{\"added\": {}}]',25,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(27,'appclinica1','authgroup'),(28,'appclinica1','authgrouppermissions'),(29,'appclinica1','authpermission'),(30,'appclinica1','authuser'),(31,'appclinica1','authusergroups'),(32,'appclinica1','authuseruserpermissions'),(7,'appclinica1','camas'),(8,'appclinica1','cargo'),(9,'appclinica1','citas'),(23,'appclinica1','consultas'),(33,'appclinica1','djangoadminlog'),(34,'appclinica1','djangocontenttype'),(35,'appclinica1','djangomigrations'),(36,'appclinica1','djangosession'),(10,'appclinica1','empleados'),(11,'appclinica1','especialidades'),(12,'appclinica1','habitacion'),(13,'appclinica1','historiasclinicas'),(26,'appclinica1','internamientos'),(24,'appclinica1','intervenciones'),(14,'appclinica1','medicamentos'),(15,'appclinica1','medicos'),(16,'appclinica1','pacientes'),(17,'appclinica1','pagos'),(18,'appclinica1','pisos'),(19,'appclinica1','quirofanos'),(20,'appclinica1','recetas'),(25,'appclinica1','recetasmedicamentos'),(21,'appclinica1','servicio'),(22,'appclinica1','turnos'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-02-06 08:43:29.959967'),(2,'auth','0001_initial','2020-02-06 08:43:32.379551'),(3,'admin','0001_initial','2020-02-06 08:43:44.523321'),(4,'admin','0002_logentry_remove_auto_add','2020-02-06 08:43:49.128667'),(5,'admin','0003_logentry_add_action_flag_choices','2020-02-06 08:43:49.305829'),(6,'appclinica1','0001_initial','2020-02-06 08:43:49.580846'),(7,'appclinica1','0002_auto_20200202_1545','2020-02-06 08:43:49.767081'),(8,'appclinica1','0003_authgroup_authgrouppermissions_authpermission_authuser_authusergroups_authuseruserpermissions_django','2020-02-06 08:43:49.882303'),(9,'appclinica1','0004_auto_20200202_1749','2020-02-06 08:43:50.014791'),(10,'appclinica1','0005_authgroup_authgrouppermissions_authpermission_authuser_authusergroups_authuseruserpermissions_django','2020-02-06 08:43:50.273045'),(11,'contenttypes','0002_remove_content_type_name','2020-02-06 08:43:52.531834'),(12,'auth','0002_alter_permission_name_max_length','2020-02-06 08:43:54.925652'),(13,'auth','0003_alter_user_email_max_length','2020-02-06 08:43:56.601712'),(14,'auth','0004_alter_user_username_opts','2020-02-06 08:43:56.647839'),(15,'auth','0005_alter_user_last_login_null','2020-02-06 08:43:57.264639'),(16,'auth','0006_require_contenttypes_0002','2020-02-06 08:43:57.304902'),(17,'auth','0007_alter_validators_add_error_messages','2020-02-06 08:43:57.554409'),(18,'auth','0008_alter_user_username_max_length','2020-02-06 08:43:57.949793'),(19,'auth','0009_alter_user_last_name_max_length','2020-02-06 08:43:58.096973'),(20,'auth','0010_alter_group_name_max_length','2020-02-06 08:43:59.595722'),(21,'auth','0011_update_proxy_permissions','2020-02-06 08:43:59.894585'),(22,'sessions','0001_initial','2020-02-06 08:44:02.479253');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0gott5apl22bn9t7rxqiezjaoi45zu4u','MGYwMGYxNmI1NjFkNGY1ZjJiZGQ0YTBhZWQxYWY5ODUxN2Y0OGQ5Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3NzNjMzY4ZDk3MjgyNTJmZDRhNjMwMTY4NGQzOTliYzBlNDRhOTk3In0=','2020-02-20 08:55:31.752642'),('fnc7k48yvpp20rwaa41f8pkbscx212yf','MGYwMGYxNmI1NjFkNGY1ZjJiZGQ0YTBhZWQxYWY5ODUxN2Y0OGQ5Mjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3NzNjMzY4ZDk3MjgyNTJmZDRhNjMwMTY4NGQzOTliYzBlNDRhOTk3In0=','2020-03-09 03:29:33.625715');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleados` (
  `DNI` int(11) NOT NULL,
  `NOMBRE` varchar(45) NOT NULL,
  `APELLIDOS` varchar(45) NOT NULL,
  `TELEFONO` varchar(45) NOT NULL,
  `DIRECCION` varchar(45) NOT NULL,
  `CARGO_ID` int(11) NOT NULL,
  `FECHA_INGRESO` date NOT NULL,
  `FECHA_DESP` datetime DEFAULT NULL,
  PRIMARY KEY (`DNI`),
  KEY `fk_EMPLEADOS_CARGO1` (`CARGO_ID`),
  KEY `idx_nom_empl` (`NOMBRE`),
  CONSTRAINT `fk_EMPLEADOS_CARGO1` FOREIGN KEY (`CARGO_ID`) REFERENCES `cargo` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (2005,'manuel','palma','866','lince',1,'2018-02-06',NULL);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidades`
--

DROP TABLE IF EXISTS `especialidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `especialidades` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(45) NOT NULL,
  `FECHA_CREACION` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidades`
--

LOCK TABLES `especialidades` WRITE;
/*!40000 ALTER TABLE `especialidades` DISABLE KEYS */;
INSERT INTO `especialidades` VALUES (1,'urologia','2018-02-06'),(2,'pediatria','2018-02-06'),(3,'ginecologia','2018-02-06'),(4,'medicina general','2018-02-06'),(5,'ecografía','2018-02-06'),(6,'psicologia','2018-02-06'),(7,'traumatología','2018-02-06'),(8,'psiquiatria','2018-02-06'),(9,'gastroenterología','2018-02-06'),(10,'cardiología','2018-02-06'),(11,'desintometría','2018-02-06'),(12,'dermatología','2018-02-06'),(13,'mamografía','2018-02-06'),(14,'odontología','2018-02-06'),(15,'oftalmología','2018-02-06'),(16,'nutrición','2018-02-06'),(17,'medicina interna','2018-02-06'),(18,'podología','2018-02-06'),(19,'otorrinolaringólogo','2018-02-06'),(20,'radiología','2018-02-06');
/*!40000 ALTER TABLE `especialidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habitacion`
--

DROP TABLE IF EXISTS `habitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `habitacion` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NUMERO` int(11) NOT NULL,
  `DESCRIPCION` varchar(45) NOT NULL,
  `pisos_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_habitacion_pisos1` (`pisos_ID`),
  CONSTRAINT `fk_habitacion_pisos1` FOREIGN KEY (`pisos_ID`) REFERENCES `pisos` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitacion`
--

LOCK TABLES `habitacion` WRITE;
/*!40000 ALTER TABLE `habitacion` DISABLE KEYS */;
INSERT INTO `habitacion` VALUES (1,4,'hab',1);
/*!40000 ALTER TABLE `habitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historias_clinicas`
--

DROP TABLE IF EXISTS `historias_clinicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historias_clinicas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FECHA_REG` datetime NOT NULL,
  `PACIENTE` int(11) NOT NULL,
  `PESO` float NOT NULL,
  `TALLA` float NOT NULL,
  `DESCRIPCION` varchar(100) NOT NULL,
  `IMC` float DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_HISTORIAS_CLINICAS_PACIENTES1` (`PACIENTE`),
  CONSTRAINT `fk_HISTORIAS_CLINICAS_PACIENTES1` FOREIGN KEY (`PACIENTE`) REFERENCES `pacientes` (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historias_clinicas`
--

LOCK TABLES `historias_clinicas` WRITE;
/*!40000 ALTER TABLE `historias_clinicas` DISABLE KEYS */;
/*!40000 ALTER TABLE `historias_clinicas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informacion`
--

DROP TABLE IF EXISTS `informacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `informacion` (
  `id_inf` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(15) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `detalle` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_inf`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informacion`
--

LOCK TABLES `informacion` WRITE;
/*!40000 ALTER TABLE `informacion` DISABLE KEYS */;
INSERT INTO `informacion` VALUES (2,'root@localhost','2020-02-25 05:49:35','descuento al inventario medicamentos de 2'),(3,'root@localhost','2020-02-25 05:52:07','descuento al inventario medicamentos de 1'),(4,'root@localhost','2020-02-25 05:54:50','descuento al inventario medicamentos de 7'),(5,'root@localhost','2020-02-25 06:06:37','se insertó un nuevo usuario'),(6,'root@localhost','2020-02-25 06:09:55','datos actualizados en un usuario'),(7,'root@localhost','2020-02-25 06:13:18','descuento al inventario medicamentos de 1'),(8,'root@localhost','2020-02-25 06:14:29','descuento al inventario medicamentos de 2');
/*!40000 ALTER TABLE `informacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internamientos`
--

DROP TABLE IF EXISTS `internamientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `internamientos` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FECHA_INICIO` datetime NOT NULL,
  `FECHA_FIN` datetime NOT NULL,
  `PACIENTE` int(11) NOT NULL,
  `MOTIVO` varchar(45) NOT NULL,
  `CAMA` int(11) NOT NULL,
  `HABITACION` int(11) NOT NULL,
  `PISO` int(11) NOT NULL,
  `EMPLEADO_DNI` int(11) NOT NULL,
  `servicio_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_hospitalizacion_EMPLEADO1` (`EMPLEADO_DNI`),
  KEY `fk_INGRESOS_CAMAS1` (`CAMA`),
  KEY `fk_INGRESOS_PACIENTES1` (`PACIENTE`),
  KEY `fk_internamientos_servicio1` (`servicio_ID`),
  CONSTRAINT `fk_INGRESOS_CAMAS1` FOREIGN KEY (`CAMA`) REFERENCES `camas` (`ID`),
  CONSTRAINT `fk_INGRESOS_PACIENTES1` FOREIGN KEY (`PACIENTE`) REFERENCES `pacientes` (`DNI`),
  CONSTRAINT `fk_hospitalizacion_EMPLEADO1` FOREIGN KEY (`EMPLEADO_DNI`) REFERENCES `empleados` (`DNI`),
  CONSTRAINT `fk_internamientos_servicio1` FOREIGN KEY (`servicio_ID`) REFERENCES `servicio` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internamientos`
--

LOCK TABLES `internamientos` WRITE;
/*!40000 ALTER TABLE `internamientos` DISABLE KEYS */;
/*!40000 ALTER TABLE `internamientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intervenciones`
--

DROP TABLE IF EXISTS `intervenciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intervenciones` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FECHA` datetime NOT NULL,
  `DURACION` float NOT NULL,
  `MEDICO` int(11) NOT NULL,
  `PACIENTE` int(11) NOT NULL,
  `EMPLEADO_DNI` int(11) NOT NULL,
  `quirofanos_ID` int(11) NOT NULL,
  `servicio_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_intervenciones_EMPLEADO1` (`EMPLEADO_DNI`),
  KEY `fk_INTERVENCIONES_MEDICOS1` (`MEDICO`),
  KEY `fk_INTERVENCIONES_PACIENTES1` (`PACIENTE`),
  KEY `fk_intervenciones_quirofanos1` (`quirofanos_ID`),
  KEY `fk_intervenciones_servicio1` (`servicio_ID`),
  CONSTRAINT `fk_INTERVENCIONES_MEDICOS1` FOREIGN KEY (`MEDICO`) REFERENCES `medicos` (`DNI`),
  CONSTRAINT `fk_INTERVENCIONES_PACIENTES1` FOREIGN KEY (`PACIENTE`) REFERENCES `pacientes` (`DNI`),
  CONSTRAINT `fk_intervenciones_EMPLEADO1` FOREIGN KEY (`EMPLEADO_DNI`) REFERENCES `empleados` (`DNI`),
  CONSTRAINT `fk_intervenciones_quirofanos1` FOREIGN KEY (`quirofanos_ID`) REFERENCES `quirofanos` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_intervenciones_servicio1` FOREIGN KEY (`servicio_ID`) REFERENCES `servicio` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intervenciones`
--

LOCK TABLES `intervenciones` WRITE;
/*!40000 ALTER TABLE `intervenciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `intervenciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicamentos`
--

DROP TABLE IF EXISTS `medicamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicamentos` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(45) NOT NULL,
  `DESCRIPCION` varchar(45) NOT NULL,
  `PRECIO` float NOT NULL,
  `STOCK` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicamentos`
--

LOCK TABLES `medicamentos` WRITE;
/*!40000 ALTER TABLE `medicamentos` DISABLE KEYS */;
INSERT INTO `medicamentos` VALUES (1,'Ranitidina','AGENTES PARA EL TRATAMIENTO DE ALTERACIONES C',85,11),(2,'Atropina (clorhidrato)','AGENTES CONTRA PADECIMIENTOS FUNCIONALES DEL',50,25),(3,'Ondansetrón','ANTIEMÉTICOS Y ANTINAUSEOSOS',52,58),(4,'Nistatina (antiinfeccioso)','ANTIDIARREICOS, AGENTES ANTIINFLAMATORIOS/ANT',58,6),(5,'insulina humana intermedia NPH','MEDICAMENTOS USADOS EN DIABETES',82,37),(6,'Tocoferol (Vitamina E)','VITAMINAS',87,8),(7,'Calcio (carbonato)','SUPLEMENTOS MINERALES',87,80),(8,'Warfarina','AGENTES ANTITROMBÓTICOS',56,70),(9,'Acido fólico','PREPARADOS ANTIANÉMICOS',32,8),(10,'Albúmina humana','SUSTITUTOS DE LA SANGRE Y SOLUCIONES PARA PER',58,9);
/*!40000 ALTER TABLE `medicamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicos`
--

DROP TABLE IF EXISTS `medicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicos` (
  `DNI` int(11) NOT NULL,
  `NOMBRES` varchar(45) NOT NULL,
  `APELLIDOS` varchar(45) NOT NULL,
  `DIRECCION` varchar(45) NOT NULL,
  `CELULAR` varchar(45) NOT NULL,
  `ESPECIALIDAD` int(11) NOT NULL,
  `TURNO` int(11) NOT NULL,
  `FECHA_REGISTRO` datetime NOT NULL,
  PRIMARY KEY (`DNI`),
  KEY `fk_MEDICOS_ESPECIALIDADES` (`ESPECIALIDAD`),
  KEY `fk_MEDICOS_TURNOS1` (`TURNO`),
  KEY `idx_nom_med` (`NOMBRES`) USING HASH,
  KEY `idx_dni_med` (`DNI`) USING HASH,
  CONSTRAINT `fk_MEDICOS_ESPECIALIDADES` FOREIGN KEY (`ESPECIALIDAD`) REFERENCES `especialidades` (`ID`),
  CONSTRAINT `fk_MEDICOS_TURNOS1` FOREIGN KEY (`TURNO`) REFERENCES `turnos` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicos`
--

LOCK TABLES `medicos` WRITE;
/*!40000 ALTER TABLE `medicos` DISABLE KEYS */;
INSERT INTO `medicos` VALUES (3300,'diana','medina soto','los olivos','22056',3,1,'2020-02-06 16:42:30'),(9922,'jason','retamozo','miraflores','636545',1,2,'2020-02-06 16:43:03'),(9982,'helmunt','romero','miraflores','636545',1,2,'2020-02-06 16:43:03'),(632220,'xiomara','veliz','san luis','93233',5,2,'2020-02-06 16:41:54'),(738499,'frank','herrera','mirones bajo','9852333',6,1,'2020-02-06 16:40:01'),(6663356,'alvaro','espíritu','los olivos','2633115',2,1,'2020-02-24 03:37:36'),(6663357,'luis','fernandez','lima cercado','975222',10,1,'2007-02-18 16:43:00'),(6663358,'angie','zavaleta','san juan de lurigancho','975223',4,1,'2008-02-18 16:43:00'),(6663359,'karen rocio','guzman','san juan de lurigancho','975224',2,1,'2009-02-18 16:43:00'),(6663360,'michelle','guzman','lima cercado','975225',11,1,'2010-02-18 16:43:00'),(6663361,'juan alberto','beru','los olivos','975226',4,1,'2011-02-18 16:43:00'),(6663362,'jhonny','guzman','lima cercado','975227',11,2,'2012-02-18 16:43:00'),(6663363,'rosaluz','chaparro','ate','975228',4,2,'2013-02-18 16:43:00'),(6663364,'benjamin','calderon','ate','975229',10,2,'2014-02-18 16:43:00'),(6663365,'diana','sanchez','ate','975230',16,2,'2015-02-18 16:43:00'),(6663366,'victor hugo','guzman','san martin de porres','975231',4,2,'2016-02-18 16:43:00'),(6663367,'carolina','guzman','puente piedra','975232',2,2,'2017-02-18 16:43:00'),(6663368,'soledad','guzman','lima cercado','975233',4,2,'2018-02-18 16:43:00'),(6663369,'carol','diaz','puente piedra','975234',14,1,'2019-02-18 16:43:00'),(6663370,'evelyn','salas','ate','975235',4,1,'2020-02-18 16:43:00'),(6663371,'angiel','guzman','puente piedra','975236',4,1,'2021-02-18 16:43:00'),(6663372,'jenniffer','ruiz','lima cercado','975237',19,1,'2022-02-18 16:43:00'),(6663373,'ivett','jurado','lima cercado','975238',16,1,'2023-02-18 16:43:00'),(6663374,'patty','guzman','san juan de lurigancho','975239',7,1,'2024-02-18 16:43:00'),(6663375,'mellissa','guzman','lima cercado','975240',4,2,'2025-02-18 16:43:00'),(6663376,'paola','malpartida','puente piedra','975241',3,2,'2026-02-18 16:43:00'),(6663377,'mirta','zambrano','san martin de porres','975242',5,2,'2027-02-18 16:43:00'),(6663378,'esteban','milla','los olivos','975243',1,2,'2028-02-18 16:43:00'),(6663379,'brian','gamarra','san miguel','975244',6,2,'2001-03-18 16:43:00'),(6663380,'joel','guerrero','san martin de porres','975245',5,2,'2002-03-18 16:43:00'),(6663381,'luciana','girao','san juan de lurigancho','975246',5,2,'2003-03-18 16:43:00'),(6663382,'juan','herrera','rimac','975247',4,1,'2004-03-18 16:43:00'),(6663383,'joel','hernandez','surco','975248',4,1,'2005-03-18 16:43:00'),(6663384,'jose','hinostroza','ate','975249',4,1,'2006-03-18 16:43:00'),(6663385,'julio','jimenez','ate','975250',6,1,'2007-03-18 16:43:00'),(6663386,'gilberto','jurado','ate','975251',6,1,'2008-03-18 16:43:00'),(6663387,'grecia','janampa','surco','975252',3,1,'2009-03-18 16:43:00'),(6663388,'gabriel','luque','surco','975253',8,2,'2010-03-18 16:43:00'),(6663389,'alexis','linares','san juan de lurigancho','975254',9,2,'2011-03-18 16:43:00'),(6663390,'elisa','lopez','san juan de lurigancho','975255',6,2,'2012-03-18 16:43:00'),(6663391,'aldair','loyola','lima cercado','975256',6,2,'2013-03-18 16:43:00'),(6663392,'romario','larico','lima cercado','975257',4,2,'2014-03-18 16:43:00'),(6663393,'omar','miranda','los olivos','975258',4,2,'2015-03-18 16:43:00'),(6663394,'marcos','montes','san martin de porres','975259',7,2,'2016-03-18 16:43:00'),(6663395,'diana','meza','san juan de lurigancho','975260',5,1,'2017-03-18 16:43:00'),(6663396,'carlos','navarro','ate','975261',9,1,'2018-03-18 16:43:00'),(6663397,'carla','olaya','san miguel','975262',10,1,'2019-03-18 16:43:00'),(6663398,'mijael','ojeda','puente piedra','975263',12,1,'2020-03-18 16:43:00'),(6663399,'andres','orellana','rimac','975264',10,1,'2021-03-18 16:43:00'),(6663400,'andrea','palacios','los olivos','975265',4,1,'2022-03-18 16:43:00');
/*!40000 ALTER TABLE `medicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pacientes` (
  `DNI` int(11) NOT NULL,
  `NOMBRES` varchar(45) NOT NULL,
  `APELLIDOS` varchar(45) NOT NULL,
  `DIRECCION` varchar(45) NOT NULL,
  `CELULAR` varchar(9) NOT NULL,
  `FECHA_NAC` date NOT NULL,
  `EDAD` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` VALUES (6326,'julian','amador','carabayllo','600696','1970-02-06',50),(63063,'marta','ferrer','lince','9256','1990-02-06',30),(93365,'pedro','martinez','la victoria','025656','1980-07-08',40),(96465,'luis mauricio','malaga fuenzalida','miraflores','54','1993-02-24',25),(546432,'carla','vallenas hoempler','callao','84611','1989-02-24',34),(663112,'martin','barueto','miraflores','25633','1989-02-12',34),(846664,'jose francisco','maita','jesus maria','966112','1994-02-24',24),(8521634,'gonzalo','yamamoto','san juan de miraflores','9157866','1994-05-10',26),(8521635,'victor samuel','rivera','san isidro','9157867','1994-05-10',26),(8521636,'victor','lostaunau','la victoria','9157868','1994-05-10',26),(8521637,'milagros','juarez','surco','9157869','1994-05-10',26),(8521638,'alejandro','mu¤ante','surco','9157870','1994-05-10',26),(8521639,'marcelo','abad','san borja','9157871','1994-05-10',26),(8521640,'abigail','montes yngar','surco','9157872','1994-05-10',26),(8521641,'jorge','villena','jesus maria','9157873','1994-05-10',26),(8521642,'david','motta','san borja','9157874','1994-05-10',26),(8521643,'luis','andia','rimac','9157875','1994-05-10',26),(8521644,'luis','alvarez','chorrillos','9157876','1994-05-10',26),(8521645,'miguel angel','chiri','jesus maria','9157877','1994-05-10',26),(8521646,'walter','arauco','ate','9157878','1994-05-10',26),(8521647,'semiramis','arauco','ate','9157879','1994-05-10',26),(8521648,'nicolas','barnechea','san borja','9157880','1994-05-10',26),(8521649,'oscar','herrera','san miguel','9157881','1994-05-10',26),(8521650,'grecia','wall','san juan de miraflores','9157882','1993-05-10',25),(8521651,'bosko','blanco','la victoria','9157883','1994-05-10',26),(8521652,'milagros','retamozo','bre¤a','9157884','1994-05-10',26),(8521653,'david','castillo','lince','9157885','1994-05-10',26),(8521654,'luis','abarca','surquillo','9157886','1994-05-10',26),(8521655,'junior','herrera','san juan de lurigancho','9157887','1994-05-10',26),(8521656,'gonzalo','rivera','san martin de porres','9157888','1994-05-10',26),(8521657,'jenniffer','ponte guerrero','los olivos','9157889','1994-05-10',26),(8521658,'ricardo','martinez','lima cercado','9157890','1994-05-10',26),(8521659,'angelo','d valos','la victoria','9157891','1994-05-10',26),(8521660,'ashely','barahona','cieneguilla','9157892','1994-05-10',26),(8521661,'andres','gutierrez','la molina','9157893','1994-05-10',26),(8521662,'fernando','flores','lurin','9157894','1994-05-10',26),(8521663,'mario','quispe','madgalena','9157895','1994-05-10',26),(8521664,'andrea','rospigliosi','pueblo libre','9157896','1994-05-10',26),(8521665,'gabriel','rosadio','san luis','9157897','1994-05-10',26),(8521666,'david','escobar','santa anita','9157898','1994-05-10',26),(8521667,'eleazar','lopez','villa el salvador','9157899','1994-05-10',26),(8521668,'fabricio','garcia','lima cercado','9157900','1994-05-10',26),(8521669,'grecia','saenz','san miguel','9157901','1994-05-10',26),(8521670,'alexis','tarazona','callao','9157902','1994-05-10',26),(8521671,'huber','andia','san miguel','9157903','1994-05-10',26),(8521672,'ivan','alvarez','surquillo','9157904','1994-05-10',26),(8521673,'junior','chiri','surquillo','9157905','1994-05-10',26),(8521674,'juan','arauco','miraflores','9157906','1994-05-10',26),(8521675,'karla','arauco','san martin de porres','9157907','1994-05-10',26),(8521676,'kelly','barnechea','los olivos','9157908','1994-05-10',26),(8521677,'kimberly','herrera','madgalena','9157909','1994-05-10',26),(8521678,'kevin','wall','madgalena','9157910','1994-05-10',26),(8521679,'lorena','blanco','san isidro','9157911','1994-05-10',26),(8521680,'lorenzo','retamozo','miraflores','9157912','1994-05-10',26),(8521681,'laura','castillo','san juan de lurigancho','9157913','1994-05-10',26),(8521682,'luis','abarca','san juan de lurigancho','9157914','1994-05-10',26),(8521683,'martin','herrera','san miguel','9157915','1994-05-10',26),(8521684,'milagros','rivera','lince','9157916','1994-05-10',26),(8521685,'miguel','tarazona','la victoria','9157917','1994-05-10',26),(8521686,'nicolas','martinez','los olivos','9157918','1994-05-10',26),(8521687,'nicole','d valos','los olivos','9157919','1994-05-10',26),(8521688,'nestor','barahona','madgalena','9157920','1994-05-10',26),(8521689,'nicanor','gutierrez','lince','9157921','1994-05-10',26),(8521690,'oscar','flores','lince','9157922','1994-05-10',26),(8521691,'olinda','quispe','surco','9157923','1994-05-10',26),(8521692,'ofelia','rospigliosi','san juan de miraflores','9157924','1994-05-10',26),(8521693,'paula','rosadio','chorrillos','9157925','1994-05-10',26),(8521694,'paola','escobar','la victoria','9157926','1994-05-10',26),(8521695,'paolo','d valos','madgalena','9157927','1994-05-10',26),(8521696,'pedro','castillo','san miguel','9157928','1994-05-10',26),(8521697,'rosa','abarca','chorrillos','9157929','1994-05-10',26),(8521698,'ricardo','herrera','chorrillos','9157930','1994-05-10',26),(8521699,'roberto','rivera','villa el salvador','9157931','1994-05-10',26),(8521700,'rocio','rivera','ate','9157932','1994-05-10',26),(8521701,'soledad','martinez','ate','9157933','1994-05-10',26),(8521702,'saul','d valos','ate','9157934','1994-05-10',26),(8521703,'salvador','flores','la victoria','9157935','1994-05-10',26),(8521704,'sergio','quispe','lima cercado','9157936','1994-05-10',26),(8521705,'sebastian','flores','lima cercado','9157937','1994-05-10',26),(8521706,'andrea','narvaez','la molina','9157938','1994-05-10',26);
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger det_insertar_pac
after insert on pacientes
for each row
begin
	insert into informacion (usuario,fecha,detalle)  values ((select current_user()),now(),"se insertó un nuevo usuario" );
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger det_actualizar_pac
after update on pacientes
for each row
begin
	insert into informacion (usuario,fecha,detalle)  values ((select current_user()),now(),"datos actualizados en un usuario" );
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagos` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MONTO` float NOT NULL,
  `FECHA` datetime NOT NULL,
  `SERVICIO_ID` int(11) NOT NULL,
  `PACIENTE` int(11) NOT NULL,
  `CAJERO` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_PAGOS_CAJEROS1` (`CAJERO`),
  KEY `fk_PAGOS_PACIENTES1` (`PACIENTE`),
  KEY `fk_PAGOS_SERVICIO1` (`SERVICIO_ID`),
  CONSTRAINT `fk_PAGOS_CAJEROS1` FOREIGN KEY (`CAJERO`) REFERENCES `empleados` (`DNI`),
  CONSTRAINT `fk_PAGOS_PACIENTES1` FOREIGN KEY (`PACIENTE`) REFERENCES `pacientes` (`DNI`),
  CONSTRAINT `fk_PAGOS_SERVICIO1` FOREIGN KEY (`SERVICIO_ID`) REFERENCES `servicio` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pisos`
--

DROP TABLE IF EXISTS `pisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pisos` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NUMERO` int(11) NOT NULL,
  `NUMERO_HAB` tinyint(4) NOT NULL,
  `FECHA_INAU` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pisos`
--

LOCK TABLES `pisos` WRITE;
/*!40000 ALTER TABLE `pisos` DISABLE KEYS */;
INSERT INTO `pisos` VALUES (1,1,10,'2020-02-13 16:20:46');
/*!40000 ALTER TABLE `pisos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quirofanos`
--

DROP TABLE IF EXISTS `quirofanos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quirofanos` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LETRA` char(1) NOT NULL,
  `DESCRIPCION` varchar(45) NOT NULL,
  `PISO` int(11) NOT NULL,
  `pisos_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_quirofanos_pisos1` (`pisos_ID`),
  CONSTRAINT `fk_quirofanos_pisos1` FOREIGN KEY (`pisos_ID`) REFERENCES `pisos` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quirofanos`
--

LOCK TABLES `quirofanos` WRITE;
/*!40000 ALTER TABLE `quirofanos` DISABLE KEYS */;
/*!40000 ALTER TABLE `quirofanos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recetas`
--

DROP TABLE IF EXISTS `recetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recetas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  ` DESCRIPCION` varchar(45) NOT NULL,
  `F_REGISTRO` datetime NOT NULL,
  `MEDICO` int(11) NOT NULL,
  `PACIENTE` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_RECETAS_MEDICOS1` (`MEDICO`),
  KEY `fk_RECETAS_PACIENTES1` (`PACIENTE`),
  CONSTRAINT `fk_RECETAS_MEDICOS1` FOREIGN KEY (`MEDICO`) REFERENCES `medicos` (`DNI`),
  CONSTRAINT `fk_RECETAS_PACIENTES1` FOREIGN KEY (`PACIENTE`) REFERENCES `pacientes` (`DNI`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recetas`
--

LOCK TABLES `recetas` WRITE;
/*!40000 ALTER TABLE `recetas` DISABLE KEYS */;
INSERT INTO `recetas` VALUES (1,'Receta para la anemia','2020-02-11 16:10:04',3300,6326),(2,'Receta para la la diabetes','2020-02-11 16:10:59',632220,93365),(3,'deficit de calcio','2020-02-13 15:54:15',738499,93365);
/*!40000 ALTER TABLE `recetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recetas_medicamentos`
--

DROP TABLE IF EXISTS `recetas_medicamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recetas_medicamentos` (
  `id_rm` int(11) NOT NULL AUTO_INCREMENT,
  `recetas_ID` int(11) NOT NULL,
  `medicamentos_ID` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id_rm`),
  KEY `fk_recetas_has_medicamentos_medicamentos1` (`medicamentos_ID`),
  KEY `fk_recetas_has_medicamentos_recetas1` (`recetas_ID`),
  CONSTRAINT `fk_recetas_has_medicamentos_medicamentos1` FOREIGN KEY (`medicamentos_ID`) REFERENCES `medicamentos` (`ID`),
  CONSTRAINT `fk_recetas_has_medicamentos_recetas1` FOREIGN KEY (`recetas_ID`) REFERENCES `recetas` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recetas_medicamentos`
--

LOCK TABLES `recetas_medicamentos` WRITE;
/*!40000 ALTER TABLE `recetas_medicamentos` DISABLE KEYS */;
INSERT INTO `recetas_medicamentos` VALUES (1,1,3,5),(2,1,3,4),(3,1,3,1),(4,1,3,2),(5,2,5,10),(6,2,5,3),(7,2,5,3),(8,1,3,3),(9,1,3,2),(10,2,5,3),(11,2,5,2),(12,2,5,2),(13,3,7,10),(14,3,7,6),(15,2,5,2),(16,2,5,1),(17,1,3,7),(18,1,3,1),(19,1,3,2);
/*!40000 ALTER TABLE `recetas_medicamentos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger descontar_unidad_inventario 
after insert on recetas_medicamentos 
for each row
begin
    set @unit_receta = new.cantidad;
    set @unit_disp = (select stock from medicamentos 
    where id = new.medicamentos_id);
    set @unit_disp = @unit_disp-@unit_receta;
    update medicamentos set STOCK = @unit_disp where id = new.medicamentos_id ;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger detalle_rec_med 
after insert on recetas_medicamentos
for each row
begin
	insert into informacion (usuario,fecha,detalle)  values (current_user(),now(),concat("descuento al inventario medicamentos de " ,new.cantidad) );
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `servicio`
--

DROP TABLE IF EXISTS `servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicio` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(45) NOT NULL,
  `PRECIO` float NOT NULL,
  `DESCRIPCION` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio`
--

LOCK TABLES `servicio` WRITE;
/*!40000 ALTER TABLE `servicio` DISABLE KEYS */;
INSERT INTO `servicio` VALUES (1,'consulta',30,'consulta general');
/*!40000 ALTER TABLE `servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turnos`
--

DROP TABLE IF EXISTS `turnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turnos` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DIA_TURNO` varchar(15) NOT NULL,
  `HORA_INICIO` time NOT NULL,
  `HORA_FIN` time NOT NULL,
  `CUPOS` tinyint(4) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turnos`
--

LOCK TABLES `turnos` WRITE;
/*!40000 ALTER TABLE `turnos` DISABLE KEYS */;
INSERT INTO `turnos` VALUES (1,'mañana','08:00:00','12:00:00',10),(2,'tarde','12:00:00','18:00:00',10);
/*!40000 ALTER TABLE `turnos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-26 13:41:49
