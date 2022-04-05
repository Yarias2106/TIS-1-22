-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: munaydb
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `auth_group`
--
DROP DATABASE munaydb;
CREATE DATABASE munaydb;
USE munaydb;
DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add docente',7,'add_docente'),(26,'Can change docente',7,'change_docente'),(27,'Can delete docente',7,'delete_docente'),(28,'Can view docente',7,'view_docente'),(29,'Can add materia',8,'add_materia'),(30,'Can change materia',8,'change_materia'),(31,'Can delete materia',8,'delete_materia'),(32,'Can view materia',8,'view_materia'),(33,'Can add reserva',9,'add_reserva'),(34,'Can change reserva',9,'change_reserva'),(35,'Can delete reserva',9,'delete_reserva'),(36,'Can view reserva',9,'view_reserva'),(37,'Can add grupo',10,'add_grupo'),(38,'Can change grupo',10,'change_grupo'),(39,'Can delete grupo',10,'delete_grupo'),(40,'Can view grupo',10,'view_grupo'),(41,'Can add aula',11,'add_aula'),(42,'Can change aula',11,'change_aula'),(43,'Can delete aula',11,'delete_aula'),(44,'Can view aula',11,'view_aula'),(45,'Can add access attempt',12,'add_accessattempt'),(46,'Can change access attempt',12,'change_accessattempt'),(47,'Can delete access attempt',12,'delete_accessattempt'),(48,'Can view access attempt',12,'view_accessattempt'),(49,'Can add access log',13,'add_accesslog'),(50,'Can change access log',13,'change_accesslog'),(51,'Can delete access log',13,'delete_accesslog'),(52,'Can view access log',13,'view_accesslog');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=319 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$260000$1zHQpCSRqkF262lKUvCEd9$/mg0w9azCMtJoY3kLxaoXQmGvSDF3glrSIpWcB4F3N8=','2022-04-05 13:43:07.449010',1,'munay','','','munayTec@gmail.com',1,1,'2022-04-02 04:52:47.539165'),(2,'pbkdf2_sha256$260000$EQkrp1wSpeUnIXmvaVsTUa$GDl3Oa2vAy6Blx4GP1hPMy7GMcfo5K2gM2Z4lSNOjBw=','2022-04-05 13:42:55.112316',0,'achaperez@gmail.com','','','',0,1,'2022-04-02 04:56:46.000000'),(3,'pbkdf2_sha256$260000$CCViZj1Wqc843FUVWRb4aE$6MhuMxv+FihCRtyMclWVxYv0QtCLG5v4KwW+/e9Yqo0=',NULL,0,'agredacorrales@gmail.com','','','',0,1,'2022-04-02 04:59:19.000000'),(4,'pbkdf2_sha256$260000$WGpOQML8ZPUlxzbhBXH6iS$AFd5bRG4RomdbKlBv4OAC1HvXbat+O6BYePZ0Yag9fE=',NULL,0,'aguilarmamani@gmail.com','','','',0,1,'2022-04-02 23:50:08.000000'),(5,'pbkdf2_sha256$260000$mWw5kFCToey88HH90txBg4$328lc6Z93VC8oUMyJ13SCql0h4FGLMaHQOL9Istogow=',NULL,0,'aguirretorrico@gmail.com','','','',0,1,'2022-04-02 23:50:43.000000'),(6,'pbkdf2_sha256$260000$wFiCBQ7wkl58ydVwskjuLo$//v0D3uTbiGH9BA7aFyttepkayuVKcElCNJ5drOqp9Y=',NULL,0,'alcocergarnica@gmail.com','','','',0,1,'2022-04-02 23:51:59.000000'),(7,'pbkdf2_sha256$260000$n1tsgOnsg5GD03tRxm78vQ$MhLD6wr2AUgccsrdze+mXBDMjo1u/h9wMQ19oa01MGE=',NULL,0,'alconpuña@gmail.com','','','',0,1,'2022-04-03 00:11:16.000000'),(8,'pbkdf2_sha256$260000$PZeI1L4hFY8nskYPHpy6FW$jgKAFUo3x9zQCpCmWN7HV1qwAa/dZrdJ4iroJq/IZq4=',NULL,0,'alejoespinoza@gmail.com','','','',0,1,'2022-04-03 00:12:20.000000'),(9,'pbkdf2_sha256$260000$lgdESsqTpHpzhLN7DWAjg3$5SkMJJSpuPdeSGtRnFMnJFgea2gJlXFcsYwzhxdJlDI=',NULL,0,'alfarodenus@gmail.com','','','',0,1,'2022-04-03 00:13:02.000000'),(10,'pbkdf2_sha256$260000$g5WdcG6nsH6IogU934bBWK$syqz/fzKMz7yxmR2Yzy+OI5QkaiIWqKEJ57u8oguEQs=',NULL,0,'alissparedes@gmail.com','','','',0,1,'2022-04-03 00:13:40.000000'),(11,'pbkdf2_sha256$260000$NM0odkwOGCZT1XIuUpOrvO$RgrUZ2sFbpcXabwY4OTtpA+AFJNIG2VnM7mKQY9PRwo=',NULL,0,'alvarezcaero@gmail.com','','','',0,1,'2022-04-03 00:14:54.000000'),(12,'pbkdf2_sha256$260000$z5gpalPmtCqJjMxCTIH41R$YuRnvXQWH7NtTctKU2tgiXnHJAqVQwZdHh3NE4ylvhM=',NULL,0,'alvarezquiroz@gmail.com','','','',0,1,'2022-04-03 00:15:43.000000'),(13,'pbkdf2_sha256$260000$kR0J6QOoXvO3RhUnpmyfF2$Ah1Dx6VJ5firb3UsLKVD6PzU5U4kJPks09nVgoetI9c=',NULL,0,'andradeuzieta@gmail.com','','','',0,1,'2022-04-03 00:18:03.000000'),(14,'pbkdf2_sha256$260000$mmxXubOlQESpU0RRXkOwkn$NsXeOK8TKH8335l0gom9KO8wsnjKdTaN1gwapxvw/OQ=',NULL,0,'antezanacamacho@gmail.com','','','',0,1,'2022-04-03 00:30:43.000000'),(15,'pbkdf2_sha256$260000$stOvSAovnFe5wq1KmTcWtL$UJwJ8djjcuqRq537pDVdPshNpfcMkxVjnSPgEMVT6Yo=',NULL,0,'antezanafernandez@gmail.com','','','',0,1,'2022-04-03 00:31:24.000000'),(16,'pbkdf2_sha256$260000$qTI5Kr19KgxLxjYIkTJdqO$vEhgGgGC5Y7z7f8gZRrBjcnGc5TeHys+1JZDHoyNiWA=',NULL,0,'antezananogales@gmail.com','','','',0,1,'2022-04-03 00:36:00.000000'),(17,'pbkdf2_sha256$260000$a93j6UgCXlEpYPp7AfmPuL$fys8QNG8vDSff005cU+w2kie9dPeuCBhWJHN5fMUnxw=',NULL,0,'antezanaroman@gmail.com','','','',0,1,'2022-04-03 00:37:45.000000'),(18,'pbkdf2_sha256$260000$6TRkWra3N6lHGscwIVaqzi$6OQiS/U5nuqJCOT9l+Htmcvc1IH/fh/rv/9vp9xvqaU=',NULL,0,'antezanavalera@gmail.com','','','',0,1,'2022-04-03 00:38:22.000000'),(19,'pbkdf2_sha256$260000$MRoLqsOTctem9WRZzNNkYn$TFg2vg78ACOzuxlgBU5yujwAA8nTXMMzvpxfOHmaF5s=',NULL,0,'aparicioyuja@gmail.com','','','',0,1,'2022-04-03 00:38:49.000000'),(20,'pbkdf2_sha256$260000$HtmhSFGW61zJJcFRcsbm4K$QwspCHVCFB891lPDe9l1RQcGolco9P+6ilFep4KXIhE=',NULL,0,'arancibiaguzman@gmail.com','','','',0,1,'2022-04-03 00:39:14.000000'),(21,'pbkdf2_sha256$260000$ZVpeQxN3qXzmS4ZUPNb8Kp$0LXQ5nu8HK8PduFqJaXUSTo5YhyAkYRs62/SBpqcBXA=',NULL,0,'arancibiamiranda@gmail.com','','','',0,1,'2022-04-03 00:45:11.000000'),(22,'pbkdf2_sha256$260000$wyNCX9SyP754DxZeITNtOI$4N+B9J+lfDuqoBhO3IrqHHCU+TzmuFiOGgGAh0NdixI=',NULL,0,'aranibarlafuente@gmail.com','','','',0,1,'2022-04-03 00:48:46.000000'),(23,'pbkdf2_sha256$260000$4HZ6f2brIAT6bam95K54lO$z/8rGB0mSyuIjw3q3wSd8V2C1QeqHg9lR3/WuZ+7x7k=',NULL,0,'araozjaldin@gmail.com','','','',0,1,'2022-04-03 00:51:14.000000'),(24,'pbkdf2_sha256$260000$2oUDOItlMIcfyGPmur0d2m$7MdpbalgFYrzU91lLsKppisD8PUJSII6KcL8wxweOeA=',NULL,0,'arcegarcia@gmail.com','','','',0,1,'2022-04-03 00:51:44.000000'),(25,'pbkdf2_sha256$260000$Dwz1aLZc3nPrrGJmGDTXjP$V/mlhgp5Z8Ah7nib+hYlBo4kvVWscIaHrV/PN7vuDeU=',NULL,0,'arispesantander@gmail.com','','','',0,1,'2022-04-03 00:52:10.000000'),(26,'pbkdf2_sha256$260000$gFxJNPKrJRhobtlg6dxSWF$SU/AOG/hNfcgqzGd5uV1Ad1Tk5LDjt4BcRReErCbxXs=',NULL,0,'arispesantander2@gmail.com','','','',0,1,'2022-04-03 00:52:30.000000'),(27,'pbkdf2_sha256$260000$XpfqQOIjy0nV2Jcb30KCWc$tjyu3+yUOwZx20sodZgcKuEINz+hHrAawnZFqfn/LbI=',NULL,0,'arnezcamacho@gmail.com','','','',0,1,'2022-04-03 16:24:26.000000'),(28,'pbkdf2_sha256$260000$V3BCkBxEunP6mWC764qRNG$WQ/TvjfRRbCiqaDJRdk8PPrJGK0DQKpNSDTqzqUzz04=',NULL,0,'arneztorrico@gmail.com','','','',0,1,'2022-04-03 16:25:23.000000'),(29,'pbkdf2_sha256$260000$1i4WLEOhEZfJIsMN0uipUo$z/cckYLq0uLaJ5b5bodIj1we1Y75jWwbsqigOPW66Rk=',NULL,0,'arrazolarivero@gmail.com','','','',0,1,'2022-04-03 16:27:48.000000'),(30,'pbkdf2_sha256$260000$8ezinHxQdvPctBU7cO3VrO$XWwpMUSBaqHHL1hsnYp0yTQUZK4TuIXe38fu8p2xebg=',NULL,0,'arzabemaure@gmail.com','','','',0,1,'2022-04-03 16:28:15.000000'),(31,'pbkdf2_sha256$260000$ay3Ki5B0mz6qb2gVzBlDGi$gDc/r6sFhvIBXzP+BOHcAVyvWiwpzZe75Pjz2Gpod2o=',NULL,0,'atahuachi@gmail.com','','','',0,1,'2022-04-03 16:30:59.000000'),(32,'pbkdf2_sha256$260000$XNKU5FGAoPaZwn64epZA2p$Ub/rAbAWmaTX7fMBdVJdqBFF0DaqtL7YJBaROoPO7Wk=',NULL,0,'avilaalba@gmail.com','','','',0,1,'2022-04-03 16:31:25.000000'),(33,'pbkdf2_sha256$260000$yphCM665XcPSs9620QfWfq$+pNvW1swDg1QbcMyJyfQVgwHBMN5V/ieXoyFhRxAHbU=',NULL,0,'avilalara@gmail.com','','','',0,1,'2022-04-03 16:32:35.000000'),(34,'pbkdf2_sha256$260000$NHpQ8RuiZNnTuiRTWkOQ9N$YwMqWnWp/zo+EjcRX5uD7p6u6Kp1l8exzD+Eq1F/I50=',NULL,0,'ayllonacosta@gmail.com','','','',0,1,'2022-04-03 16:34:05.000000'),(35,'pbkdf2_sha256$260000$RhTsru4F2TS97c5SM3Jqtv$Y9WCRZf3UQXnj/AdEWz9f4zeQIgGkQjpd7bXbDdcMFM=',NULL,0,'ayoroacardozo@gmail.com','','','',0,1,'2022-04-03 16:34:30.000000'),(36,'pbkdf2_sha256$260000$7vTakUXyJCPEXQPTzoIGsN$5ZQKfTvfewDjcufwJlST9o1EzTii+jD1GnzzcZ7SS/0=',NULL,0,'azeroalcocer@gmail.com','','','',0,1,'2022-04-03 16:34:56.000000'),(37,'pbkdf2_sha256$260000$bULVmuyJYe1Kn83PojgNA7$+KeKMNbAlHwpGw1Qn4vEsm7MgbiVsIbY3s6DWnYROVI=',NULL,0,'Balderramaangulo@gmail.com','','','',0,1,'2022-04-03 16:40:35.000000'),(38,'pbkdf2_sha256$260000$SfuBsvNNQ6AL2cBtIdIQUS$HO9PxOStR2ZDOxnF+p4UpDl9MS53l2iAJmhDSG1PjEA=',NULL,0,'balderramaidina@gmail.com','','','',0,1,'2022-04-03 16:41:01.000000'),(39,'pbkdf2_sha256$260000$8oJdXYY3owjO5u0WDD94en$SWN2EEHSB7msOt+SSCHlSaW+0KSFr48QMtJIg1xf6W0=',NULL,0,'balderramatorrico@gmail.com','','','',0,1,'2022-04-03 16:41:40.000000'),(40,'pbkdf2_sha256$260000$5hdmWb01dROW8dBVygHkrh$Ff3/xQ3iACXDIyziHsaC0HW19EUp67k0ypQDfmpc15s=',NULL,0,'Baldiviesosaenz@gmail.com','','','',0,1,'2022-04-03 16:42:16.000000'),(41,'pbkdf2_sha256$260000$dlU4O22bQB1eFiwzYDAGpq$WCCSCEX5BvVHA8j1Pu85IkjQDQJizuYr4eHv+4WyvEE=',NULL,0,'baptistachuya@gmail.com','','','',0,1,'2022-04-03 16:42:40.000000'),(42,'pbkdf2_sha256$260000$8h3NcEz3roBvEPiS5iqGAA$JfeQ/JERfZLi0qhe7V1Hlb9FKbizHquLsOhEnNVSQsQ=',NULL,0,'bautistaherbas@gmail.com','','','',0,1,'2022-04-03 16:46:23.000000'),(43,'pbkdf2_sha256$260000$OPPGk5zjqvdaiPqiKq4DWw$JmhvwyFTwvMSW04D6ZJWc8klt6Jo7xFmbqnaeZ7bP3g=',NULL,0,'blancococa@gmail.com','','','',0,1,'2022-04-03 16:46:48.000000'),(44,'pbkdf2_sha256$260000$m669gzFOBsAz7aAwwel5zG$/8ndTH8z1ZdiEhDPmQPtzN/f/wkqr9p2PZhWBp8ZQoQ=',NULL,0,'brucknerbazoberry@gmail.com','','','',0,1,'2022-04-03 16:50:15.000000'),(45,'pbkdf2_sha256$260000$Aq5OObiQ55uGZoAOL8Wqwh$te9O1INXlbHhoIjjJtknzWN6MCChbphRPwrCZ53q24o=',NULL,0,'bustillosvargas@gmail.com','','','',0,1,'2022-04-03 16:50:51.000000'),(46,'pbkdf2_sha256$260000$8vPhoJMsJxz2Sfvy8CSIuv$QyB/7kTva3oInwsuX2lKOK08lFFTpatxN7Jy3q2jBy4=',NULL,0,'butrongandarillas@gmail.com','','','',0,1,'2022-04-03 16:51:13.000000'),(47,'pbkdf2_sha256$260000$BxdQT4WhoEBUT43DmW9Kz8$jGNG0HUqAvqrLuYzyA70z9lmRMhGX+noqOjlFVI14nI=',NULL,0,'caballeroflores@gmail.com','','','',0,1,'2022-04-03 16:51:34.000000'),(48,'pbkdf2_sha256$260000$3Ah2doDe3JenflGuXiuS5c$L+CqjCYoFpup2iSYqA2hjcnzE7nwGtC2RKGOfki5+Wg=',NULL,0,'cahillmangudo@gmail.com','','','',0,1,'2022-04-03 16:51:58.000000'),(49,'pbkdf2_sha256$260000$SB3MTCRHnXEXOGykHuyMqG$5tfXqmEpCfmNhm+aRBmJPdnuSrrdN37aUltyRDmXL0U=',NULL,0,'calanchanavia@gmail.com','','','',0,1,'2022-04-03 16:52:21.000000'),(50,'pbkdf2_sha256$260000$bEBCaBu86uJsqx4eEljscX$7fCAbRm546ZHQUM5khjuVhDahMuJBZCnT9Y75mBQWjE=',NULL,0,'camachodelcastillo@gmail.com','','','',0,1,'2022-04-03 16:52:45.000000'),(51,'pbkdf2_sha256$260000$bWfepIBEndWH7ZAv9d5aAR$MTguPrQpr/gesSqKiEIc+Use2qvDAl0im/pmjgo2PtI=',NULL,0,'camachopeña@gmail.com','','','',0,1,'2022-04-03 16:53:09.000000'),(52,'pbkdf2_sha256$260000$psHrkbrsdhZu7zcxNwYAdw$nK/IDmd+lj1Fqo0x7eiYw48CM2bpQEfuS0ysmUAlj6E=',NULL,0,'camachoquiroga@gmail.com','','','',0,1,'2022-04-03 16:53:54.000000'),(53,'pbkdf2_sha256$260000$qIVtO01TaFXOWN5hpYR6Y5$v6xrCFOqGdHBgbatuh+W8qxvJv+mWZ2yvVOosrxbxx0=',NULL,0,'camachovillazon@gmail.com','','','',0,1,'2022-04-03 16:54:17.000000'),(54,'pbkdf2_sha256$260000$OibfUQ6EV5asHMcyb5J2jT$AByiSCb8r7Fvx0ebbXuHAetkpkC5qtiUe1MQK7ViQR8=',NULL,0,'canedoespinoza@gmail.com','','','',0,1,'2022-04-03 16:54:41.000000'),(55,'pbkdf2_sha256$260000$5hFUoBXUBFDuronlKOsZBG$634t67yLBtyItuRpDqu+dOeOhdboNW8a6IvgU4k9cHQ=',NULL,0,'carballocadima@gmail.com','','','',0,1,'2022-04-03 16:55:02.000000'),(56,'pbkdf2_sha256$260000$GW6jCiQqspdU07ZoF5SZin$9F6jWzSQ4Yn0LMONies/ft0uXaAMkBYqq2bRJPVttnU=',NULL,0,'carrascocalvo@gmail.com','','','',0,1,'2022-04-03 16:55:26.000000'),(57,'pbkdf2_sha256$260000$clCW5jKSvUcFrktaNo3RZV$FgN8kZ2NozUkFqpfyrZMXr+uYPsKvmntw28J7e9Uw0A=',NULL,0,'castellonreynaga@gmail.com','','','',0,1,'2022-04-03 16:55:47.000000'),(58,'pbkdf2_sha256$260000$MOsDzbeMlPUuL1KM31FlEo$lXRFMBnhYNKs4JN9KDUbNvhMHw+QLAlwfi1tJp+qe5E=',NULL,0,'castellontorrico@gmail.com','','','',0,1,'2022-04-03 16:56:08.000000'),(59,'pbkdf2_sha256$260000$9IqWgCnOgrYR4hoQ77a2AB$pTEVVp75Q5CS4Wre+wVi1TVb5oJ4mccsSrh/3QPbpOs=',NULL,0,'castillozegarra@gmail.com','','','',0,1,'2022-04-03 16:56:32.000000'),(60,'pbkdf2_sha256$260000$Al38Lm48zLBHN82eMCUi4X$qOjYpMEVqaWNnF7I+/cXag7YAp8mf1Nb+p8AJQI7ohc=',NULL,0,'castrolazarte@gmail.com','','','',0,1,'2022-04-03 16:56:55.000000'),(61,'pbkdf2_sha256$260000$TIasnAcVKuAjScEbP9nsWw$x4pwaz9EL7W43w7l8sWiBPlZyZDdJuoOBEW1YY8tyiQ=',NULL,0,'cataririos@gmail.com','','','',0,1,'2022-04-03 16:57:24.000000'),(62,'pbkdf2_sha256$260000$qmRLPfhL0QR9Ufm95vQjY8$uEH8jfcWy+5N7thB8r4ka0jbauhsGbeeeVeVqi9z++Y=',NULL,0,'cespedesguizada@gmail.com','','','',0,1,'2022-04-03 16:57:50.000000'),(63,'pbkdf2_sha256$260000$MZtJ8cQTNoi87mlyequCvJ$He/iHNGjwQSlFCK9fgc6TxE5fSn4Ywy4eEyROYBDEmk=',NULL,0,'choqueflores@gmail.com','','','',0,1,'2022-04-03 16:58:13.000000'),(64,'pbkdf2_sha256$260000$0RzvttJ62fNfUYY6E9aQ6y$/Y+oTJUP65wjy8PLXqmFFVGRniRw0WWQL658DYZzJ3g=',NULL,0,'choqueuno@gmail.com','','','',0,1,'2022-04-03 16:58:34.000000'),(65,'pbkdf2_sha256$260000$KhukqmguS7o5f8X2sS85mW$xPnTFWQDEbbjkhjHHZvQPcT8LFoWozi2d3zT3Sqh46w=',NULL,0,'claroscruz@gmail.com','','','',0,1,'2022-04-03 16:58:55.000000'),(66,'pbkdf2_sha256$260000$JOi1kTPt6uYXUezfeFBqMP$gja89aGy6bdF40XCC9zypTpuJKEJA1+yJI1ISa2h02k=',NULL,0,'claurerichard@gmail.com','','','',0,1,'2022-04-03 16:59:14.000000'),(67,'pbkdf2_sha256$260000$P9UQWgoasXhfz4VU24GgY8$aYJgdwmne+JL4H3MDPXicsCXQo4tBJYat9uNUO/VQso=',NULL,0,'cocamendez@gmail.com','','','',0,1,'2022-04-03 16:59:39.000000'),(68,'pbkdf2_sha256$260000$RE3bGNSq4XnQrG3S167tnT$YUn17jqSa0B7Q3JsRkcYNeDcCy2FJA6mw9Uq7KXYOpo=',NULL,0,'cosiopapadopolis@gmail.com','','','',0,1,'2022-04-03 17:00:09.000000'),(69,'pbkdf2_sha256$260000$rgEX6QyIB0xokQW1hPGxtw$g1OkBsna/uG9wHik7nmYJdVOKRRzjqe5ICNiDAhAU1w=',NULL,0,'cossiocabrera@gmail.com','','','',0,1,'2022-04-03 17:03:25.000000'),(70,'pbkdf2_sha256$260000$Myte9XPEkRU08F8wn34r9o$Bz2gIEdTntFNxQoosWbvEznpKFS+ODnvwvoco29coyI=',NULL,0,'costasjauregui@gmail.com','','','',0,1,'2022-04-03 17:03:52.000000'),(71,'pbkdf2_sha256$260000$IY3qF8jmu6jbgqDbVsyxGN$FWznjAG1d+yNaXLRSfQ8grqBIoNkUXMlGoniAWwzYPI=',NULL,0,'crespogarcia@gmail.com','','','',0,1,'2022-04-03 17:04:18.000000'),(72,'pbkdf2_sha256$260000$4whpCWZYdf75mAf4zwjtKi$iZdeocuNjJNcFAPkG6glz6PJrrUaKpuyYvEkpiyux3E=',NULL,0,'cuellarolivera@gmail.com','','','',0,1,'2022-04-03 17:04:39.000000'),(73,'pbkdf2_sha256$260000$IkUw3IH2zzcRbDooMUeFKp$J0SwhSmgdqdFr6Dd34v37WDGT/ZDGhKYvh0OBJe7Lqs=',NULL,0,'cupeclemente@gmail.com','','','',0,1,'2022-04-03 17:05:02.000000'),(74,'pbkdf2_sha256$260000$52bg5eW0IlpbIyelOM6Jli$Ijvp1Hbvi3e3zOMt8rrhTubBW0SxDVe2+j/J6a5GU2w=',NULL,0,'cussinicolas@gmail.com','','','',0,1,'2022-04-03 17:05:23.000000'),(75,'pbkdf2_sha256$260000$wPedoPIwfsueqUrWLhTqD7$56uC619YIXeWpJ3PMt+iUWFfQh8rUJMVxdTLt6mzKJ0=',NULL,0,'davalosbrozovic@gmail.com','','','',0,1,'2022-04-03 17:05:45.000000'),(76,'pbkdf2_sha256$260000$D0iAwR5FMoqG32J5RJhWIu$hIuYVHqKdoK2GUV09w8bkAnOkh27qtpNKF/rMTUvgxI=',NULL,0,'davilacabrera@gmail.com','','','',0,1,'2022-04-03 17:06:11.000000'),(77,'pbkdf2_sha256$260000$SitILRqK4FxT1b2lsptShp$XPEODSWu925PAfPOXKmbVNXY15HiCga+VSVFZHIC3Ck=',NULL,0,'delcastilloantezana@gmail.com','','','',0,1,'2022-04-03 17:06:37.000000'),(78,'pbkdf2_sha256$260000$w2vvOGVjBfATPyUnnXp2hI$pqwQuBYhJgNXEEKMS7PkYsf4dqE3A3/C1oV483lEIuw=',NULL,0,'delgadillocossio@gmail.com','','','',0,1,'2022-04-03 17:06:58.000000'),(79,'pbkdf2_sha256$260000$ulz3kI4qquJogOz3rV54kO$9HtvCju856fa1o6M6uGlgGirfInbXLE1CCcT7vNb4Rs=',NULL,0,'diazcoimbra@gmail.com','','','',0,1,'2022-04-03 17:07:33.000000'),(80,'pbkdf2_sha256$260000$D1tOiDDLe5hc49T9cFm9h6$hAaDixTyznbRXcLSXfF53//VoMy7I/6e/puusoyfGUA=',NULL,0,'dominguez@gmail.com','','','',0,1,'2022-04-03 17:08:00.000000'),(81,'pbkdf2_sha256$260000$OZTxmXXK7mQWZe0byUjI2J$CE7S1Jnt6rckltWAvBZgRoetCA1ssFdzcov6gJf5z0Y=',NULL,0,'dominguezblanco@gmail.com','','','',0,1,'2022-04-03 17:08:22.000000'),(82,'pbkdf2_sha256$260000$MWHxIyK0nW05mRuE4bs3XF$Rt91bGDvAVj5yzyKlNC7j9mllrQ84BdG7fWAxujAGTo=',NULL,0,'dominguezchura@gmail.com','','','',0,1,'2022-04-03 17:08:48.000000'),(83,'pbkdf2_sha256$260000$7KmgUgYfAJJFO97zIRDCYd$LzPKpcmhM1JJOfYdIfUCnir//BqhVK13MCME3X/BDK8=',NULL,0,'duchenayala@gmail.com','','','',0,1,'2022-04-03 17:09:13.000000'),(84,'pbkdf2_sha256$260000$YHWZp2mr7uo23amDN0nZnP$mVtBgvBKhk1i4gaBW9WVRtVoLa3IrSpTJzz7utvpG1E=',NULL,0,'echeverriaherrera@gmail.com','','','',0,1,'2022-04-03 17:09:37.000000'),(85,'pbkdf2_sha256$260000$QgeYi7PyeH3xrMs2GErwdo$3yCIwYT+0OXQ/h9YxfRztCbVUwC0rpZVIqkbf19f3RM=',NULL,0,'eduardofranz@gmail.com','','','',0,1,'2022-04-03 17:09:58.000000'),(86,'pbkdf2_sha256$260000$GRJo5TZSp5qVB47xrNBGBr$lxCtToyZ5CmD94UWeHFdDi3swVhQErabyNlGR08SEjo=',NULL,0,'escalerafernandez@gmail.com','','','',0,1,'2022-04-03 17:10:19.000000'),(87,'pbkdf2_sha256$260000$hydWZLgnk63ZC8G5Pz0AnN$BCzz6+NCiBIllC78ehsE3nD2EAuPwB4qFxb/UwVImwY=',NULL,0,'escaleramejia@gmail.com','','','',0,1,'2022-04-03 17:10:40.000000'),(88,'pbkdf2_sha256$260000$PxQYZcMtuseifVolXpEI5z$el+ceqZtwo2a33qym8rTkMnOb1Dvtq/inS1/zRW0kQw=',NULL,0,'escaleravasquez@gmail.com','','','',0,1,'2022-04-03 17:11:01.000000'),(89,'pbkdf2_sha256$260000$tSarbN8lMAx7HnsjwT3MLt$nUbmOSLz2b34nWjtklv1Y2izEQ5BzFsDNzKLoTi6b6s=',NULL,0,'escobarseleme@gmail.com','','','',0,1,'2022-04-03 17:11:31.000000'),(90,'pbkdf2_sha256$260000$uVCctaW0a9EglMATtEttBD$zD6Zyo+fI8yvYDNtuI1VAuG//L9EQza7q0lGbGU9H7E=',NULL,0,'espinozaalcocer@gmail.com','','','',0,1,'2022-04-03 17:11:51.000000'),(91,'pbkdf2_sha256$260000$ZWCtZ2dB3XV8omcMjw068U$dC2noYi/mDO+AH4pPZ//yvu1EmE+rUDULd2tu2bYfz0=',NULL,0,'espinozaorosco@gmail.com','','','',0,1,'2022-04-03 17:12:10.000000'),(92,'pbkdf2_sha256$260000$rfjDwfF4utq4hNZqxceMRc$4MPNQiBvQp4MubbWF7BdjfAaV0GOfYfGWc5wscYQYtw=',NULL,0,'espinozaorosco2@gmail.com','','','',0,1,'2022-04-03 17:12:34.000000'),(93,'pbkdf2_sha256$260000$sNELfhEREu4qMwBOh9R1AC$t7PQ3/hDBfHB8tnKqvqvzKsoi0zlH8GEyLRwnjJ6iP4=',NULL,0,'fernandezcalatayud@gmail.com','','','',0,1,'2022-04-03 17:13:22.000000'),(94,'pbkdf2_sha256$260000$h4a8qG5rB3ArB1xmlWP0Zc$bRRxDe/vLglP37YgN/X27Qf3ZQpLQxlJk3qWmOaOcoQ=',NULL,0,'fernandezguzman@gmail.com','','','',0,1,'2022-04-03 17:13:49.000000'),(95,'pbkdf2_sha256$260000$CVWaetAvHgnuZfgh4uxwa0$8weQ0e5Ik4fbsx3RwwGbFRFsG5W7UoC8EzL1fCbz4nU=',NULL,0,'fernandezleon@gmail.com','','','',0,1,'2022-04-03 17:14:16.000000'),(96,'pbkdf2_sha256$260000$usSxzD36BXH1qUXKyXXdbo$DKl+ewQ7jHWGHJDF9XDtnpCkLUf3zWXAqU15lhzdNVc=',NULL,0,'fernandezramos@gmail.com','','','',0,1,'2022-04-03 17:14:35.000000'),(97,'pbkdf2_sha256$260000$aBgBEQKV2rI3oOSzM2qfbi$tk8EEL3ABAQjjxIVznflMYk9LcQb4KcAiHhLBn9cF/E=',NULL,0,'fernandezrios@gmail.com','','','',0,1,'2022-04-03 17:14:57.000000'),(98,'pbkdf2_sha256$260000$XJPSisurMU7HDPfQYk6Q5l$fXKgEEBe/b4DaP6MXiNUJvfLFWSfLt7pXVbYocm2siI=',NULL,0,'fernandezterrazas@gmail.com','','','',0,1,'2022-04-03 17:15:19.000000'),(99,'pbkdf2_sha256$260000$mNCPPcdlU1j2E7UOcgRgXg$bXj3gwfxRUc15sqBJZ3FWQgRfBB6KAIVMc0CroewAGw=',NULL,0,'ferrufinoguardia@gmail.com','','','',0,1,'2022-04-03 17:15:40.000000'),(100,'pbkdf2_sha256$260000$C56yeJSM5g02bmhtvRdFzY$6LD3444x8oWwsH0V4Xc1x2mAmkNrCsHaghZFEoqPYtA=',NULL,0,'fiorilolozada@gmail.com','','','',0,1,'2022-04-03 17:16:02.000000'),(101,'pbkdf2_sha256$260000$8s6dAbcU3UjQ1ydO2QnNa9$U0Vtq7WGvyq+m8E9gcYc/4/DT9O1gwnWRPukD/wPD3s=',NULL,0,'floreroortuño@gmail.com','','','',0,1,'2022-04-03 17:16:34.000000'),(103,'pbkdf2_sha256$320000$8L5yQqpxhU5zYa5gup7ufb$etlHjThvnkfeYvrbLvVcd/kjR+M9qaJsJ3H5sLEj1nA=',NULL,0,'floresflores@gmail.com','','','',0,1,'2022-04-04 21:56:00.000000'),(104,'pbkdf2_sha256$320000$MpKHxnvMPhPmXaod2OY7DC$V9CGX8FMIoexAWnQC9pZKoCmMEsGxogK9GpWxTg4aJY=',NULL,0,'floresgarcia@gmail.com','','','',0,1,'2022-04-04 21:56:40.000000'),(105,'pbkdf2_sha256$320000$0Tzmy160aC5jKAl4XR6ZaT$F9Xv4WpO+YCfn14aTYvglOUv4eUlO0u6+4tjfjrgSt0=',NULL,0,'floresrios@gmail.com','','','',0,1,'2022-04-04 21:57:25.000000'),(106,'pbkdf2_sha256$320000$FgqXxVrFLQ841Yzkzi2T1w$5yVHc7RKbLkKVhNzLCbaQ0N9+wDkA1YTtozPR00H/Jk=',NULL,0,'floressoliz@gmail.com','','','',0,1,'2022-04-04 21:58:43.000000'),(107,'pbkdf2_sha256$320000$3Tbo17YpEaWNNsG8suEWKc$+4tTZOLXwkg9Cy0ZV8aLZ2bxWCWkVNJuLh8tGRSYug0=',NULL,0,'floresvillaroel@gmail.com','','','',0,1,'2022-04-04 21:59:29.000000'),(108,'pbkdf2_sha256$320000$Kb6we2TSFzOAFp0UmgNZK5$Uy2muz4u+MDq7V7T1cUXJi710bFRd/dUtde7aD/zaJY=',NULL,0,'fuentesmiranda@gmail.com','','','',0,1,'2022-04-04 21:59:53.000000'),(109,'pbkdf2_sha256$320000$wWW26XuesblJJHTirux8wH$jdxweb6gCg1+8/nFmhr/+Iq0mMzr4Q7kmavPhxLpd4c=',NULL,0,'galarzabarron@gmail.com','','','',0,1,'2022-04-04 22:00:35.000000'),(110,'pbkdf2_sha256$320000$l3046IspXUND7po9IjEsG8$JTnYEXro40/gbnkF5Pk/4EAsa9QgDdMYpUFpk6ftXvQ=',NULL,0,'garciaanturiano@gmail.com','','','',0,1,'2022-04-04 22:01:00.000000'),(111,'pbkdf2_sha256$320000$3ZhvIE23bobGPEvmJaTBIy$6olUnnsWDpCJ+MQReXRAt/euWH2IorsPxwdx8Ey1tHw=',NULL,0,'garciamolina@gmail.com','','','',0,1,'2022-04-04 22:01:24.000000'),(112,'pbkdf2_sha256$320000$L3LSJ5U3rH4KzIDYbaP4dl$V04Uexazbn3rPTDi2jE6LtyN6aFen7ZXFwkEkfer6oM=',NULL,0,'garciaorellana@gmail.com','','','',0,1,'2022-04-04 22:01:48.000000'),(113,'pbkdf2_sha256$320000$OSzBUQ0ZriRSJESEeR6Va3$+jTc4PQQ0Dw5usC+8/n/Nr3/Z5mmHb/siiCAZ5qFg88=',NULL,0,'garciaperez@gmail.com','','','',0,1,'2022-04-04 22:02:46.000000'),(114,'pbkdf2_sha256$320000$hwkE2uaVuH9GkbRWpvJt98$77OWx5eWIGKgEn82uoISv71hP660ISNDWHy8X0o4jms=',NULL,0,'garnicaarostegui@gmail.com','','','',0,1,'2022-04-04 22:03:15.000000'),(115,'pbkdf2_sha256$320000$39uhU0hnWo1ne3wN6aGk0x$NtBlUzPMqTJLqMPNakYywT/6GtyHfxkuf4ma+pTzykg=',NULL,0,'garridovargas@gmail.com','','','',0,1,'2022-04-04 22:03:58.000000'),(116,'pbkdf2_sha256$320000$6sw5JMCg09PFcd1I6m4ZzB$3O5k/98+l75ut4nfUQ9a+s5+BNjtOAbO6vYr6/BqSB8=',NULL,0,'gianninizalloco@gmail.com','','','',0,1,'2022-04-04 22:04:23.000000'),(117,'pbkdf2_sha256$320000$lDO3hHaaiugELWDFP2OjCB$6tN8HHTaCG26m0NGAOAQ6uwFPp2xgFqyQbPPZaUSSvQ=',NULL,0,'goitiaarce@gmail.com','','','',0,1,'2022-04-04 22:04:46.000000'),(118,'pbkdf2_sha256$320000$eSMckf4fu9aPjaNc7B48UX$uDna0dKDl08h0HcMGU9rZQBzUrZDwtv4zkzWUhN1QAI=',NULL,0,'goitiaarze@gmail.com','','','',0,1,'2022-04-04 22:05:12.000000'),(119,'pbkdf2_sha256$320000$yGEnIKq5xtA3DyrJsFoJX8$ud0Owwf5coVvHKIiwBo545GQBScxBg1qJg/FiusFOUk=',NULL,0,'gomezugarte@gmail.com','','','',0,1,'2022-04-04 22:05:34.000000'),(120,'pbkdf2_sha256$320000$t4FQmExKqiwsbrIkwOWt4M$EdRTjN/uqmet/SaUrnHQJGjuoJFYgm6++4WEBmXfpiQ=',NULL,0,'gomezvargas@gmail.com','','','',0,1,'2022-04-04 22:05:59.000000'),(121,'pbkdf2_sha256$320000$WP6aMn6lwIEfKEmwDbSywe$SthvQ2G75Fhi3Kv8P7XK1oL7ODrZ3LJJnaQrDcOIy8M=',NULL,0,'gonzalesacosta@gmail.com','','','',0,1,'2022-04-04 22:06:18.000000'),(122,'pbkdf2_sha256$320000$lpEJC2ruMA3JmvvYWXJDRe$XEbKK0YFedpHswWiig6TaeVmMjKjeuXvLzRw7c/oB/Q=',NULL,0,'gonzalesamaya@gmail.com','','','',0,1,'2022-04-04 22:06:48.000000'),(123,'pbkdf2_sha256$320000$I8YeuBXs2Q69adu2QuZCzr$sN4RY8gmSvt9Lwvx4TuOdFNmZOr9k1bwtjEpv/dZ9yQ=',NULL,0,'gonzalescartagena@gmail.com','','','',0,1,'2022-04-04 22:15:29.000000'),(124,'pbkdf2_sha256$320000$tXd6pmbtdZ51uYQN2HLfTd$jITRoajo71xjOF4wkKRStf3SCrxE2wBkECBOrzdZwmc=',NULL,0,'gonzalescastellon@gmail.com','','','',0,1,'2022-04-04 22:16:26.000000'),(125,'pbkdf2_sha256$320000$2Uc7IUW65ewB5kAmMsGSw2$vJm9gubUlhbF6zPBfGw8KOaxGZWiJD8En6BuZVSkFSc=',NULL,0,'grilosalvatierra@gmail.com','','','',0,1,'2022-04-04 22:17:01.000000'),(126,'pbkdf2_sha256$320000$IxyYn8Rf0nHdvEZKayF63n$7EM8/VzTO7yezdgnr2LyoJJoVJB5lT2JH/CkrRhn7sE=',NULL,0,'guillensalvador@gmail.com','','','',0,1,'2022-04-04 22:17:24.000000'),(127,'pbkdf2_sha256$320000$B9NVyBDd0qka69HcFKbZNZ$6BH6p/QjAXvRpa5B5bsKDk61M4Y6vEsF2iJPEgIjwgk=',NULL,0,'gutierrezandrade@gmail.com','','','',0,1,'2022-04-04 22:17:47.000000'),(128,'pbkdf2_sha256$320000$oeircgTGX8z7nIPNx9UDEF$yYS+bB5EkqY3CBhE0ZG0Z3VsmdymdqecIu00QIsLao4=',NULL,0,'gutierrezmartinez@gmail.com','','','',0,1,'2022-04-04 22:20:02.000000'),(129,'pbkdf2_sha256$320000$AmeZQsmjTBStZ7EsNMPR1K$Y9GbY62l5MjgxbwEzpZB3evsIMR7QAYmJE9SCy+BEuc=',NULL,0,'guzmanalanes@gmail.com','','','',0,1,'2022-04-04 22:20:30.000000'),(130,'pbkdf2_sha256$320000$DPOcfw9JVi8hxC4hTEqzhP$A4gXpTBSwe6YG5t+fAw+w3xAHNCHDrbWA8g9zq38l4Q=',NULL,0,'guzmanorellana@gmail.com','','','',0,1,'2022-04-04 22:20:51.000000'),(131,'pbkdf2_sha256$320000$wXEIULmE7XBcFPc2wjCaNf$v1XtVaCcsPPN8RsGsm+r5Mam7JmbPZ0E9ouD/YBGP90=',NULL,0,'guzmansaavedra@gmail.com','','','',0,1,'2022-04-04 22:22:05.000000'),(132,'pbkdf2_sha256$320000$m6CU06XbP6XqpzrFBdJmbZ$JiLon4J3ZqDdo6btAIutylyWUHZLoZ7PR5U4nGh6Yjg=',NULL,0,'guzmansuarez@gmail.com','','','',0,1,'2022-04-04 22:22:30.000000'),(133,'pbkdf2_sha256$320000$rYj3fG0plY6FOXh2k78wGj$snsiBPQ9+IYvEyDicN6oKDc4kYasDktZkhOB9zJKwn4=',NULL,0,'herbasangulo@gmail.com','','','',0,1,'2022-04-04 22:23:02.000000'),(134,'pbkdf2_sha256$320000$F7ys3K4jbmwxGewRQXYONQ$DErTvRrJOUh29fVbS+pHolu4XvAEWNRWQXbgD2XHXC4=',NULL,0,'herbastorrico@gmail.com','','','',0,1,'2022-04-04 22:23:45.000000'),(135,'pbkdf2_sha256$320000$uoj4Qb4id8RVP78DX7lZsi$OoVy7GdVmTCgnGIIDOR/7SJvSFx0Azdw5CE5BuktmJk=',NULL,0,'herediagomez@gmail.com','','','',0,1,'2022-04-04 22:24:14.000000'),(136,'pbkdf2_sha256$320000$rtg1FdqktANXlKKMtS1e7Y$A1FKaM8fhEZCUbQxko3nez3a4ufy73nvTsfDMvKjHBg=',NULL,0,'herediasoliz@gmail.com','','','',0,1,'2022-04-04 22:24:35.000000'),(137,'pbkdf2_sha256$320000$E5EtROYeAISa7Xx6KtqcU5$nwAZ20PjfXEom8565p9fF4VyPw/tP8FM5jeYM8a+Umg=',NULL,0,'hidalgosanchez@gmail.com','','','',0,1,'2022-04-04 22:25:01.000000'),(138,'pbkdf2_sha256$320000$KwE4gNqdGyX0SiBRXcrUBY$2KTaKZAZvUPoL10Muha12d4Riza3QDRh5TS8Hle7siQ=',NULL,0,'hinojosasalazar@gmail.com','','','',0,1,'2022-04-04 22:25:29.000000'),(139,'pbkdf2_sha256$320000$oBB9HOr2hKBNM4GMGc2dx0$5lw/zW4lxpuAJozeOIfGDrLV/jyTPKFI7zb5BQJzXzU=',NULL,0,'hinojosatorrico@gmail.com','','','',0,1,'2022-04-04 22:26:00.000000'),(140,'pbkdf2_sha256$320000$5GE18e97BQ4mOGVc6WlPp7$QmCiDhRXtyhfwGrJ74xYvEyh5W/xHhTbpXhNpeWp8fE=',NULL,0,'hoepfnerreynolds@gmail.com','','','',0,1,'2022-04-04 22:26:24.000000'),(141,'pbkdf2_sha256$320000$uTetWNohBjGmmWMyJP7vNx$uak/rS/IMfH0jsVHfLRKd1X90nZ0f5jUUw+wneCyWis=',NULL,0,'hossesahonero@gmail.com','','','',0,1,'2022-04-04 22:26:49.000000'),(142,'pbkdf2_sha256$320000$1d0xpZl4DhRfuoNXew6LJw$Gvk/dyk6DkDUkEyIzL/y051blUVOyCvzGfYkcF0jrOE=',NULL,0,'iriartepuña@gmail.com','','','',0,1,'2022-04-04 22:27:17.000000'),(143,'pbkdf2_sha256$320000$DiHNiBMBntXKdR4n7MA6Jg$JJj/D9Uuo2seZp/YgZwj8wHqiS6ROG0wQv4mHS6593w=',NULL,0,'jaldinflorero@gmail.com','','','',0,1,'2022-04-04 22:27:39.000000'),(144,'pbkdf2_sha256$320000$ft3gHwzOt3jZHH0FJEjRLS$dN/6kaTvShXfFcA8xPQ8ObV/fLoMXnwJgEYenSg/rbc=',NULL,0,'jaldinrosales@gmail.com','','','',0,1,'2022-04-04 22:28:09.000000'),(145,'pbkdf2_sha256$320000$MZU1x7eHGVP4dFCPleqadv$2r2D0LGaLrLhbnFdynNzr3J0zNvjVJx1MUKzg/E1yOQ=',NULL,0,'jaldinsalazar@gmail.com','','','',0,1,'2022-04-04 22:28:41.000000'),(146,'pbkdf2_sha256$320000$aFIlkO6SFjBxsiwYIejpNY$hxl7IxYQJqIdJImqmWWFfr9iuyOSHaRIFJseNe8oeKc=',NULL,0,'jaureguicarrasco@gmail.com','','','',0,1,'2022-04-04 22:29:26.000000'),(147,'pbkdf2_sha256$320000$PXASa5DcEpwLUlAIKkDLI4$5xODTYsV0qwjXLQP8SHULJCZ2J9mx6BWHeFUuBJA6PI=',NULL,0,'joffrelara@gmail.com','','','',0,1,'2022-04-04 22:29:53.000000'),(148,'pbkdf2_sha256$320000$WCzRhoZjT1WCvYSBgXWDx5$f0HMvL1XrakSR0GBQ2tUQhAIDh15gBRKOGmmQxzFhRE=',NULL,0,'juchanibazualdo@gmail.com','','','',0,1,'2022-04-04 22:30:10.000000'),(149,'pbkdf2_sha256$320000$6cYcxchaJYrlpJKel2H7Gj$8lEFNKEf0d6pNQgYN9Ct9f8MRDpGWTDN4oG3rNRnQz4=',NULL,0,'laimezapata@gmail.com','','','',0,1,'2022-04-04 22:30:29.000000'),(150,'pbkdf2_sha256$320000$zZ2L1o8z4F0KH3CORHJ5BV$92DRs1RFUBQikr6dk04U+lYpsWE9vyBNaVzPQRBlAOE=',NULL,0,'langegonzales@gmail.com','','','',0,1,'2022-04-04 22:30:57.000000'),(151,'pbkdf2_sha256$320000$1aHtgrUH8S5OOqh8pLhElv$cTnA0rAxpQuiEmM4U6WikyTLOvaW09um6apWK4jEoOo=',NULL,0,'lazarteastulla@gmail.com','','','',0,1,'2022-04-04 22:31:25.000000'),(152,'pbkdf2_sha256$320000$7IlJXZRnyy3T4MvITiNyQz$XTLa5IVXqvCMcAN4E+vLDPvBhqwYfPLJo0B1SYr4ovs=',NULL,0,'lazartevillaroel@gmail.com','','','',0,1,'2022-04-04 22:31:45.000000'),(153,'pbkdf2_sha256$320000$HmvljBcTA4RDNckbXrtAqw$co3eqUAzUPevGyLGO/C4syyjSLVGYs42THKRuPNdFT8=',NULL,0,'ledezmaperizza@gmail.com','','','',0,1,'2022-04-04 22:32:06.000000'),(154,'pbkdf2_sha256$320000$Sfk571owMc3SQY7NcS7ovA$QK8pNFTGqf/7cDAGQiS+BXipWs5mKbGntpAVXlN5/XE=',NULL,0,'leonromero@gmail.com','','','',0,1,'2022-04-04 22:32:51.000000'),(155,'pbkdf2_sha256$320000$8kRaVig7cbNXtVmfIZlqUW$+JOe4lq9bF4zmaIvmtDTR2AOk7yumY265Qydy18AizY=',NULL,0,'limavacaflor@gmail.com','','','',0,1,'2022-04-04 22:33:32.000000'),(156,'pbkdf2_sha256$320000$fUFDvDXbaNlf8hoLSr7AzK$MsiO5iLxRUN7bNmOVJ3bfraAnL9fO+NlybtBaaOFKjA=',NULL,0,'llavevincenti@gmail.com','','','',0,1,'2022-04-04 22:33:54.000000'),(157,'pbkdf2_sha256$320000$pu4V5bcJkKxt5GYAzHNIZW$RE7rUHMhB/QXhrEEjwIdHXjafkGEj/81k5/nxYqc4a8=',NULL,0,'lopezarze@gmail.com','','','',0,1,'2022-04-04 22:34:14.000000'),(158,'pbkdf2_sha256$320000$GPIr5ijvDF8WdFIm5nU1Ud$gvLxMNignOatFR86KUDxJYpeQhGUKNGb5bBXSw42ouA=',NULL,0,'lopezlopez@gmail.com','','','',0,1,'2022-04-04 22:34:34.000000'),(159,'pbkdf2_sha256$320000$Q94rFRZJqZiVRKAylR0b3c$gijokGgSL8eRtrz13TDLmcb9Y0fLU1/3KUOylQd6NZo=',NULL,0,'lopezloredo@gmail.com','','','',0,1,'2022-04-04 22:36:14.000000'),(160,'pbkdf2_sha256$320000$NvvrxqvW8eyO4heSY5rsau$XHT+eR1LUwH6ZUGnwnj2MU3iO9UFqc8VJIaxQLC8sSA=',NULL,0,'lucanolucano@gmail.com','','','',0,1,'2022-04-04 22:36:37.000000'),(161,'pbkdf2_sha256$320000$80dpk1izrJKuOmhp706g4n$MuK2DLLXb3n346vzBja6jce2YUhPOOzYSlnwRvHhVHc=',NULL,0,'magariñosvillaroel@gmail.com','','','',0,1,'2022-04-04 22:37:01.000000'),(162,'pbkdf2_sha256$320000$GNdhbGRWez0AUg7o5I8PX2$bY1/tx3wwGazHVK8BFePVAe+WmpzZ/pgiU62dLnNWXk=',NULL,0,'maldonadocespedes@gmail.com','','','',0,1,'2022-04-04 22:37:23.000000'),(163,'pbkdf2_sha256$320000$8RvYGvOw4oEdrNc0lsaMPh$eaRngAd1Q3nKgWOXVQ+laJUNjc0fdaTIetF91nT78SE=',NULL,0,'maldonadogutierrez@gmail.com','','','',0,1,'2022-04-04 22:38:11.000000'),(164,'pbkdf2_sha256$320000$vdFQZydFXM4iunmw77nBJj$wXAxXsvKsiIFqIGtE6iDsgZMpwNbTJzjPuklG1Wc6+Y=',NULL,0,'maldonadolopez@gmail.com','','','',0,1,'2022-04-04 22:38:34.000000'),(165,'pbkdf2_sha256$320000$u8SImw05qjm28qTnPUisuk$wegHQhSUChMIBL3cHiMmIhqzGQWBc96osUFPJBxq3aQ=',NULL,0,'maldonadomaldonado@gmail.com','','','',0,1,'2022-04-04 22:39:03.000000'),(166,'pbkdf2_sha256$320000$dWQLGyCrCs8kQSAEu6LQNv$quSsL6S2nKmEF7Crv+rdHy6HaSPHilROf4ei4PfZfQY=',NULL,0,'manchegocastellon@gmail.com','','','',0,1,'2022-04-04 22:39:26.000000'),(167,'pbkdf2_sha256$320000$YmQzTOEPeDCNxeSPO9Qvqp$cCQLJd6oxeJpVyC+847FwCgu7Vi5WdhlKbm60yetfk4=',NULL,0,'manzanedamamani@gmail.com','','','',0,1,'2022-04-04 22:39:54.000000'),(168,'pbkdf2_sha256$320000$STZeu3JAZK7dyrbb0pIj3n$Q45vVzEV4ebfgWUGp4p6MDOEaA+EycxOXckDLJ6Ee5A=',NULL,0,'manzursoria@gmail.com','','','',0,1,'2022-04-04 22:40:14.000000'),(169,'pbkdf2_sha256$320000$JNX3bqJI6XyNhWKh2xLv9B$R18Ly+jnzPFrtdBYffpy9LSkghpPuX+CC7hyXL2XQl8=',NULL,0,'martinezmaida@gmail.com','','','',0,1,'2022-04-04 22:40:35.000000'),(170,'pbkdf2_sha256$320000$Vbs0WygFHuGJAltsfnk64j$yZmaek+awzkTJzWaf1Hg7zGC2UNA2fInUZpRus24y5g=',NULL,0,'matiasmarca@gmail.com','','','',0,1,'2022-04-04 22:40:53.000000'),(171,'pbkdf2_sha256$320000$Zlf15tWljtNEiCUrlvfxDv$gwQtuhqUu0WnPZspOIaZIU0UIoHreKaeIkSjjXKz0Rg=',NULL,0,'medinagamboa@gmail.com','','','',0,1,'2022-04-04 22:42:16.000000'),(172,'pbkdf2_sha256$320000$YIFd1W5x6JGWw0Mm7i0R2F$atHbrsp2N6E1R/TdLF/4qQxejvjZWYUZE3oadIC9n5g=',NULL,0,'medranoantezana@gmail.com','','','',0,1,'2022-04-04 22:42:40.000000'),(173,'pbkdf2_sha256$320000$ScIntGDGTLTcePH4N6XGZc$9Ik78488qBhkYyomfGOstS1TL/lY0CKaXydnCZ79aOg=',NULL,0,'medranomercado@gmail.com','','','',0,1,'2022-04-04 22:43:18.000000'),(174,'pbkdf2_sha256$320000$QShQb6T9knzq9F6Y5Ckdhk$ly0GCvQD59Oo/Fe47H7APeIdmwyfH7TEUgtf/aLBRiU=',NULL,0,'mejiaurquieta@gmail.com','','','',0,1,'2022-04-04 22:43:52.000000'),(175,'pbkdf2_sha256$320000$pcweSKi6C0i4mkGeop09vO$EASAUhs7Pk2282DBDey1p3DqtEe43334kArAQHE85MI=',NULL,0,'mendeztorrico@gmail.com','','','',0,1,'2022-04-04 22:44:17.000000'),(176,'pbkdf2_sha256$320000$L2a0usdP5246IOh5j5xdPk$UtUhudc+CwO01qk029CvaiqnG4vUf0sCtodhJXjJLt4=',NULL,0,'mendezvelasquez@gmail.com','','','',0,1,'2022-04-04 22:44:40.000000'),(177,'pbkdf2_sha256$320000$CvQVaQH8ncxvrRYpKiw5f9$GYwmdhoqIpWbBIotKQYT45ROKiZq1wvSbGl2ItKx0Cg=',NULL,0,'mendietabrito@gmail.com','','','',0,1,'2022-04-04 22:45:02.000000'),(178,'pbkdf2_sha256$320000$ctRaNvau4KozQ3r9Kj3db7$Cydie98Nwt27D2Ikn6qyTNuVFSNzekLjBAOM/n95t1Q=',NULL,0,'mercadoguzman@gmail.com','','','',0,1,'2022-04-04 22:45:22.000000'),(179,'pbkdf2_sha256$320000$lcrBa0mR6ZmlTKbTQB7ff9$3llQ0s+54zCrN7OZ8Uf9TvQSRGpJzh6qWzhbsEsQ0Rg=',NULL,0,'meridalopez@gmail.com','','','',0,1,'2022-04-04 22:45:48.000000'),(180,'pbkdf2_sha256$320000$Mfo7kCnstswam4GBx8IO9b$rqyK0cCxuYVAn/YJq8TZkwPEawMJFLfQ4VN0d2Qy8Yo=',NULL,0,'meruviameruvia@gmail.com','','','',0,1,'2022-04-04 22:46:08.000000'),(181,'pbkdf2_sha256$320000$Kqg3LPrGViE8yys687TDVX$cGHuVqLOet9YYvlQjkQHLRP02DxdaUssSOYGnkwuQBc=',NULL,0,'mezarosso@gmail.com','','','',0,1,'2022-04-04 22:46:31.000000'),(182,'pbkdf2_sha256$320000$unzJXDjlM6WeIynMcnI99B$H8ktFRzTH/jei2d2vXrf5qvvN8dio+djHHHLZ0ba5dk=',NULL,0,'michelvargas@gmail.com','','','',0,1,'2022-04-04 22:50:12.000000'),(183,'pbkdf2_sha256$320000$gRiPuCKWKvxhIPxGLUMoSk$ea+RtjuCZfkI2kw2AAD09gV0ER4/kr/JrywAR2mfFLY=',NULL,0,'montañoanaya@gmail.com','','','',0,1,'2022-04-04 22:51:13.000000'),(184,'pbkdf2_sha256$320000$LtQch16s4OeGdRcVHoLjGG$Tt5pxIo34hJW6tBXd2pJmwBrb7SanKaDfCgVz8XDs1Y=',NULL,0,'montañomedina@gmail.com','','','',0,1,'2022-04-04 22:51:46.000000'),(185,'pbkdf2_sha256$320000$mOuUcgmX0oMlrL5ZhjyQ9o$m/FgwZIhUkc/zIqNMu69cwI5FmrM0GQO0xhMoHHaybM=',NULL,0,'montañomerida@gmail.com','','','',0,1,'2022-04-04 22:52:17.000000'),(186,'pbkdf2_sha256$320000$krDQc8VhKQYtOIcxV2ADLR$NepK6icb/0G6vBckk9sr1GCkWH7KOs6kN9GLOki0+no=',NULL,0,'montañoquiroga@gmail.com','','','',0,1,'2022-04-04 22:52:50.000000'),(187,'pbkdf2_sha256$320000$VQWsUvTgtuBnUF3W8EpsY9$kLhryEVRVRXM7X3Ui3i/H4KV9PRuH18gIfNGfblo4Tg=',NULL,0,'montecinoschoque@gmail.com','','','',0,1,'2022-04-04 22:53:13.000000'),(188,'pbkdf2_sha256$320000$zgwVLfBtQXjgTUt4ugd0A2$LRLM7qYV8VacvrG6otrzGYRpPNxeefSWDKC3qB4jJSA=',NULL,0,'montenegroterrazas@gmail.com','','','',0,1,'2022-04-04 22:53:43.000000'),(189,'pbkdf2_sha256$320000$X8QnPMFrPgrJs21u2CjZkn$XTn7AtE4nwUwxnGy3fE0yHRB3jOCWlVzOurek9gQKrM=',NULL,0,'monteroguevara@gmail.com','','','',0,1,'2022-04-04 22:54:13.000000'),(190,'pbkdf2_sha256$320000$Hx5lgvZRQdaXg1j8H81feL$7jMOh9mu4WFnL2pvvJa8wHhMulDv+phUUGcA5lz9Tsc=',NULL,0,'montoyaburgos@gmail.com','','','',0,1,'2022-04-04 22:54:37.000000'),(191,'pbkdf2_sha256$320000$6NeoBjDvmR7N5sQiz2oEfr$y9jdgr1+TXYpC2SILu/HqSvqTslL1ngZS1keNDDjrs0=',NULL,0,'moralesmaldonado@gmail.com','','','',0,1,'2022-04-04 22:55:03.000000'),(192,'pbkdf2_sha256$320000$Rkrn8kXozqfQgcFmeX4B1F$I0W7zXdUIQgNPs/I8J4vohI6DNEQR33t1+Y7VQ+nGmM=',NULL,0,'moratogamboa@gmail.com','','','',0,1,'2022-04-04 22:55:26.000000'),(193,'pbkdf2_sha256$320000$TLQjvIEwWRuclLdUsRtSvW$CG748LYxZ+wJkdzMlFTYaMxP5PBs1YCAxC4vQmFL72c=',NULL,0,'moreiracalizaya@gmail.com','','','',0,1,'2022-04-04 22:55:45.000000'),(194,'pbkdf2_sha256$320000$T6DsFqeyxmNvy1LyHYV3L3$eETiBR1ags1PE83iqbZuHKqB8DjQVXeCW88pRQ7XdA0=',NULL,0,'moreirarosas@gmail.com','','','',0,1,'2022-04-04 22:56:17.000000'),(195,'pbkdf2_sha256$320000$N8mCVz6q4rHBpvgeAshKid$/wWZkL8mEggTQ9Smm5EPDzxHKhsUL2YoTg1jK/NZ15w=',NULL,0,'moyaalbarracin@gmail.com','','','',0,1,'2022-04-04 22:57:05.000000'),(196,'pbkdf2_sha256$320000$Tc0Erj1FBvb6zoTQvguGvZ$PJMYCBBcWl5elRhJP6J5Wi8e7JozVuNtkunSxrpBM8Y=',NULL,0,'mullersantacruz@gmail.com','','','',0,1,'2022-04-04 22:57:41.000000'),(197,'pbkdf2_sha256$320000$oAhnyKoHQVoQw55sQUkN6p$/nUM8jQW7DyR4Sph3q5jDOKUNVJtsrhI1e5pMSv3PNU=',NULL,0,'muñozcollazos@gmail.com','','','',0,1,'2022-04-04 22:58:10.000000'),(198,'pbkdf2_sha256$320000$XHZ0z2B957MTyuO91TvuXJ$Kb4Zb6AJ9elkHrUlqwEArZiCUiRSMsXGwzvjTEmqQGU=',NULL,0,'muñozquispe@gmail.com','','','',0,1,'2022-04-04 22:58:28.000000'),(199,'pbkdf2_sha256$320000$He2xGbRAB4ZsDDaFCuawzn$7hXMubtm2aeS1u6mkhx07AS8EXgYaxmrdBVj5qyNScQ=',NULL,0,'muñozvasquez@gmail.com','','','',0,1,'2022-04-04 22:58:46.000000'),(200,'pbkdf2_sha256$320000$qwiLk8sDQkHUVPpbSRTRCP$U4pG2qCz2Wg/wvrqCe12GvqGU32/jyyv/RTvUmJVkoE=',NULL,0,'navarroantezana@gmail.com','','','',0,1,'2022-04-04 22:59:08.000000'),(201,'pbkdf2_sha256$320000$pCF8pzUq8PXoOMhMOuXXKf$tZnfkG4a39LyW1GiPV3fvJZH4pyROt9n1UXkP4Iqbog=',NULL,0,'omonteojalvo@gmail.com','','','',0,1,'2022-04-04 22:59:36.000000'),(202,'pbkdf2_sha256$320000$7ZYYYjniIMbSUA9qtGcIHw$wHzXT265s2G8jRdqS8wS5Yr7OH7y4hoVPFkl9iMm6LQ=',NULL,0,'omonteojalvo2@gmail.com','','','',0,1,'2022-04-04 23:00:03.000000'),(203,'pbkdf2_sha256$320000$5NDYljWF6J2y9csW6H1hQn$o6p6YpSAyJMWEdZi/3wGVr/74W3Gup4ERTB4Y56bgwU=',NULL,0,'oporto@gmail.com','','','',0,1,'2022-04-04 23:04:22.000000'),(204,'pbkdf2_sha256$320000$SD6DiaZX9Gs4agrpYTd6Tr$ouurb+0XqaVnkkkx/B7TOimJVUVNA6voiFhNUgDPqwA=',NULL,0,'ordoñezsalvatierra@gmail.com','','','',0,1,'2022-04-04 23:04:46.000000'),(205,'pbkdf2_sha256$320000$w32gUvd0PViDD53FAyjOG3$LRbL/MvfWGrZs0HKA6RLIZ9LohYONyDnUooDq2fsWrA=',NULL,0,'orellanaaraoz@gmail.com','','','',0,1,'2022-04-04 23:05:09.000000'),(206,'pbkdf2_sha256$320000$IDY8dq5kH46CXNA59LHq23$1Um50T3DW2+iUlAOVDOBhtMs+f1Cdqz6WS36AkRPC/Y=',NULL,0,'orellanajimenez@gmail.com','','','',0,1,'2022-04-04 23:05:43.000000'),(207,'pbkdf2_sha256$320000$awsYfeL8uE0lyual1Nvey7$sX3nWRFWaQS4jru1KMqnedb/zz2fHXxCAXyedxIVibA=',NULL,0,'orsisaldias@gmail.com','','','',0,1,'2022-04-04 23:06:12.000000'),(208,'pbkdf2_sha256$320000$NuNMCxFOi7xHYt9hhjejoJ$Xip6vD7OMminfCDcTzU8X03EgrT9CIi5oPfG5LHKNk0=',NULL,0,'pachecogarcia@gmail.com','','','',0,1,'2022-04-04 23:06:52.000000'),(209,'pbkdf2_sha256$320000$e12qWqdGezWMOLx0ZlWW4T$RuVtWZcdPIwpiyiQbo12hh/cRj7xTAg2hQDe8IemYAM=',NULL,0,'pardoiriarte@gmail.com','','','',0,1,'2022-04-04 23:07:13.000000'),(210,'pbkdf2_sha256$320000$1seDOryNutvXngZ6UfCmcv$0B3bx6uXdLth+KvH9xbSARqsbQKD6Fy4F6iULOu3dLs=',NULL,0,'patiñotito@gmail.com','','','',0,1,'2022-04-04 23:07:31.000000'),(211,'pbkdf2_sha256$320000$uxyYtbEKdt8kii40M4ssxj$4x8p3yjQV+IQn2LGqtPhopCfi5aH2PmiwpVWNeO9wH8=',NULL,0,'peetersilonaa@gmail.com','','','',0,1,'2022-04-04 23:07:55.000000'),(212,'pbkdf2_sha256$320000$F5Jh4LePfCqoMO5DNc08N2$WM8J9L6CiMH/F8jxt87HTd6TE7a5i3jIa5eCgykVvYo=',NULL,0,'perezaparicio@gmail.com','','','',0,1,'2022-04-04 23:08:18.000000'),(213,'pbkdf2_sha256$320000$QRhHfs5rR9YY7ppqJcbV2E$0IH/TMY42VIHblEUr5/7Ddb1UKxcPnSMP1lowC6qUvc=',NULL,0,'perezcespedes@gmail.com','','','',0,1,'2022-04-04 23:09:01.000000'),(214,'pbkdf2_sha256$320000$brjxY1W6SkJSq5jUqEBD9N$DQ9peqb13PpvqGgAeHcI8vrQ+g9N2j5ZMlOwR9j9rRc=',NULL,0,'perezchacon@gmail.com','','','',0,1,'2022-04-04 23:09:19.000000'),(215,'pbkdf2_sha256$320000$OPjjroLG2X1BZe5ES7b4YF$Cy6apcgFluxR9ddK4vJNECVvRgB1TR9EoJfa0KKuw44=',NULL,0,'perezfuentes@gmail.com','','','',0,1,'2022-04-04 23:09:43.000000'),(216,'pbkdf2_sha256$320000$wflnxt1v126Kbtyra35m2s$aISDVEAHeyA2Q8Q6g+LQbXCU/wR9Bnm/+4NlE08aL4U=',NULL,0,'perezparra@gmail.com','','','',0,1,'2022-04-04 23:10:02.000000'),(217,'pbkdf2_sha256$320000$CwRia6pfF525M33kDNdkId$Ji4sHZHGp6lN0nVCaPhJ8ScCN/bA5NMMliesIq8/TFc=',NULL,0,'perezperedo@gmail.com','','','',0,1,'2022-04-04 23:10:22.000000'),(218,'pbkdf2_sha256$320000$OTg6h9frTwQYyUwz9uqdgp$yXM/O7+vT/cyIVcKYCG2nwojr47glv2gvbgttBJkPXE=',NULL,0,'perezrea@gmail.com','','','',0,1,'2022-04-04 23:11:23.000000'),(219,'pbkdf2_sha256$320000$pe0s4uUn7GJ3mDndFn9RRw$M5D7nbIVJ9qqaGSxnCDow5nX4aj2JtReQp4vFSrqCOg=',NULL,0,'perezzubieta@gmail.com','','','',0,1,'2022-04-04 23:11:48.000000'),(220,'pbkdf2_sha256$320000$DzhMnXU6sf4M8LWXEitM4o$TY3uULxlHRhI5WDJYqMWXfavZVS5eTqa10GIN4qdcBQ=',NULL,0,'periconbalderrama@gmail.com','','','',0,1,'2022-04-04 23:12:14.000000'),(221,'pbkdf2_sha256$320000$2kbR3XP0RHDLLGkTUSZh00$t5ZIKhBMrRsBG/QDKa5+5j4pXw3VwgLp+uUYxutJp8A=',NULL,0,'poncedelleon@gmail.com','','','',0,1,'2022-04-04 23:12:42.000000'),(223,'pbkdf2_sha256$320000$oXZHTU9jtgvaTuiICrZ06m$LLoqF98CCLN3fR/gc0uMmvfifXt2s22M1cf29sv4tUc=',NULL,0,'quillaguaman@gmail.com','','','',0,1,'2022-04-05 00:02:30.000000'),(224,'pbkdf2_sha256$320000$7i4kLQvHb8bHWuuvDwlO0d$LZG7txguESty0FkJP4b+Oiq8og6/goHxEY4iYU6lbzU=',NULL,0,'quirozchavez@gmail.com','','','',0,1,'2022-04-05 00:03:26.000000'),(225,'pbkdf2_sha256$320000$tfAWUstqoaZlLbnIw2he9T$uHQrWCGVo4uNW+dnMGQQNyVig9gl61hdC+DIwd11DAk=',NULL,0,'pelospaco@gmail.com','','','',0,1,'2022-04-05 00:06:16.000000'),(226,'pbkdf2_sha256$320000$4BY5AFSvph2PX3J7a2X2c6$7OHxLb2pZS122j9aR7UNNAfeYlBM3khHLvVr9sAWOFE=',NULL,0,'revolloteran@gmail.com','','','',0,1,'2022-04-05 00:06:44.000000'),(227,'pbkdf2_sha256$320000$POie1jaK7SsCNBb6Y7iEnY$sZC+gFujJSW6fgrRF6YXjA/7bTdyL0I7vHUUSo5ni5M=',NULL,0,'riojacardenas@gmail.com','','','',0,1,'2022-04-05 00:07:20.000000'),(228,'pbkdf2_sha256$320000$8taZIYIrybx7mfIIjrC4ul$i7IoenLuvxJ2I2GzdTa6bN1zDDscVQ3oZN3SvwXP5To=',NULL,0,'riosdelprado@gmail.com','','','',0,1,'2022-04-05 00:09:38.000000'),(229,'pbkdf2_sha256$320000$p1DZeeu8V4isrrDGrWqy3j$Jm9GwNtQxo+JlGOIlCmBUhHm2VNoawQ+WwV6RMMQWBc=',NULL,0,'riverolujan@gmail.com','','','',0,1,'2022-04-05 00:09:59.000000'),(230,'pbkdf2_sha256$320000$LDmsIyAkCa3T03MDi3hH6i$SXWBIU+dv03aky2xu7OQ/6LUwentQbKODgTY8GTyNh0=',NULL,0,'rocasubirana@gmail.com','','','',0,1,'2022-04-05 00:10:23.000000'),(231,'pbkdf2_sha256$320000$WzuXkBJnkoURtEumRA9KfY$pdYo9/gTmiPgZ7It8fk6bRe1fTZBHxiW8zOlf9IX1Og=',NULL,0,'rochacuadros@gmail.com','','','',0,1,'2022-04-05 00:10:42.000000'),(232,'pbkdf2_sha256$320000$wFhfo37EpEWKtH3JD9rkxc$zwN2Zuoe0S5Jd5W4YcSj3AzX+OnF0IntZFxqmMRFM0M=',NULL,0,'rochamaldonado@gmail.com','','','',0,1,'2022-04-05 00:11:06.000000'),(233,'pbkdf2_sha256$320000$98Bfe0RP1NeArqRMZ9n4TS$96YFyKeuSH7Y13msikredQ4C/lKJtgZ+GgYBWe6DuAE=',NULL,0,'rochatriveño@gmail.com','','','',0,1,'2022-04-05 00:12:00.000000'),(234,'pbkdf2_sha256$320000$kHl4TWI2tqJHm04ktSVRIE$7dQdtDwvOb3SRnq7pXYWgx3sDqALAR+NcnVrLTZwNVY=',NULL,0,'rodriguezbilbao@gmail.com','','','',0,1,'2022-04-05 00:16:35.000000'),(235,'pbkdf2_sha256$320000$spFisQsHXKFWSFISlCFnob$FGZS1AqSI35dkVpUS1KpzATmbm2ZwyjMLJN1anCE1rM=',NULL,0,'rodriguezostria@gmail.com','','','',0,1,'2022-04-05 00:16:55.000000'),(236,'pbkdf2_sha256$320000$JWV8OHxjvbBm89E32goYJj$obHsBvntLxn1s5APzNy7WdBaSmsLRvCElcD0HPqWDaw=',NULL,0,'rodriguezramirez@gmail.com','','','',0,1,'2022-04-05 00:17:13.000000'),(237,'pbkdf2_sha256$320000$RonONmk5WKet5hCBnVJ0eK$xUhnJGwT2U5SEbegIB7bdByyZ9vegz/aUrue8e3GMPs=',NULL,0,'rodriguezroca@gmail.com','','','',0,1,'2022-04-05 00:17:36.000000'),(238,'pbkdf2_sha256$320000$KAo1XFEVMITE4BVGGVon6m$mwa6PbcBbaRdsofxfz4hQeVQ2X5kmvzAXbVvWIPKnJ8=',NULL,0,'rodriguezsejas@gmail.com','','','',0,1,'2022-04-05 00:17:55.000000'),(239,'pbkdf2_sha256$320000$5kTVATLh7xGq2MRkTe5HzR$IRY5WoMCGW17ahJ00Kre8wVTqaBMmrin4AlnwwxICTI=',NULL,0,'rodriguezsoriano@gmail.com','','','',0,1,'2022-04-05 00:18:16.000000'),(240,'pbkdf2_sha256$320000$xTgMc8pXXlMH1Nq1KdSJFt$f5Joa8kpovgnBaCoL57r+/Vy98kjrIPwz12Th+Vdry4=',NULL,0,'rojasarnez@gmail.com','','','',0,1,'2022-04-05 00:18:36.000000'),(241,'pbkdf2_sha256$320000$AMawjsYWvb3fo7GMlwgyqi$85eOhv06NMlJPFVJbxc1I0pBamdiYXdlEVA51cHOFh0=',NULL,0,'rojascespedes@gmail.com','','','',0,1,'2022-04-05 00:19:04.000000'),(242,'pbkdf2_sha256$320000$Tmy14r9TfkPw774Z87LYby$yrftfwqk7APNXfmEajNPuck8V3P9jRekyAG/vvo+oAc=',NULL,0,'rojasmichaga@gmail.com','','','',0,1,'2022-04-05 00:19:27.000000'),(243,'pbkdf2_sha256$320000$MHAGjCOeJCb0pwFdylk60c$CFawgd7iI37Qrn98w5Y0fGUXHLrJExo7ERfbC9uGtOc=',NULL,0,'rojassalinas@gmail.com','','','',0,1,'2022-04-05 00:19:58.000000'),(244,'pbkdf2_sha256$320000$fME8AUWcYjFbHhOxLncOOS$XDKTjlsDo+aY0r7sksJnrccCxUwL9q9/m8hDuulKAwk=',NULL,0,'rojaszurita@gmail.com','','','',0,1,'2022-04-05 00:27:03.000000'),(245,'pbkdf2_sha256$320000$d6Kn0R3Gdeeg3924Z4sl5B$WF06mp9O6V/oxg32pEEhWwhkELS7gqDUywD006YMqdM=',NULL,0,'romanarispe@gmail.com','','','',0,1,'2022-04-05 00:27:28.000000'),(246,'pbkdf2_sha256$320000$zupzDUQP1dx5MxIDdwCZma$PmQTViLOYFuwJQddsqnJyH/PFD1wILjktpeflOIzJNE=',NULL,0,'romeroencinas@gmail.com','','','',0,1,'2022-04-05 00:27:54.000000'),(247,'pbkdf2_sha256$320000$atmQwGyWKTpyEmnJkknITX$mkY5ClWIJ2Dlu7kWEbP+DxPpqfprKRDamzG+5Sad5k4=',NULL,0,'romerojaldin@gmail.com','','','',0,1,'2022-04-05 00:28:14.000000'),(248,'pbkdf2_sha256$320000$wRWNNdU0b83XnjAt5Bfd3J$h4elw4XhPhysTOuQiuIb+bUEYyo1kyVL6XtVSxUxfZI=',NULL,0,'romerorodriguez@gmail.com','','','',0,1,'2022-04-05 00:28:32.000000'),(249,'pbkdf2_sha256$320000$Un00l5wOcptFTls2238N0X$gLg+pohiH+8bRyRqHKwj5sfcJVCRXW2OmLOUgfsxgUQ=',NULL,0,'ruizbetancur@gmail.com','','','',0,1,'2022-04-05 00:28:57.000000'),(250,'pbkdf2_sha256$320000$DXe38vZ6NeHMARmgu2Xk1v$EdJbdIHWfG6y+hRJmMRTN+7v5qpqtPLZHab99gMsapQ=',NULL,0,'ruizucumari@gmail.com','','','',0,1,'2022-04-05 00:29:22.000000'),(251,'pbkdf2_sha256$320000$QapyiXFibfME5FSEr6UO9Z$avOa7/EPd9b84Z90dv2TxbCovGRZ71Y8vLxzcZYeMi4=',NULL,0,'saavedraantezana@gmail.com','','','',0,1,'2022-04-05 00:29:50.000000'),(252,'pbkdf2_sha256$320000$FNGLsUpfR7oaCEMyLQG47s$S5Bw6vx8KftQTVNBKDR6GhZgA9sLyuFjItDn6nN0/+I=',NULL,0,'sacaventura@gmail.com','','','',0,1,'2022-04-05 00:30:08.000000'),(253,'pbkdf2_sha256$320000$lTxPebT5j6a4wROSfhxM7D$w6MHNw2jOacqFrSQuY0SUKe+gIwRbM2yVFw2DCmajXE=',NULL,0,'sahoneroirahola@gmail.com','','','',0,1,'2022-04-05 00:30:35.000000'),(254,'pbkdf2_sha256$320000$xyOEf6IhELIPYnt8rflK2u$8bT9TLVqVZFtM/9dZ3vi7bDmPE534ks/TgOnoPk9tbo=',NULL,0,'salazaranaya@gmail.com','','','',0,1,'2022-04-05 00:31:44.000000'),(255,'pbkdf2_sha256$320000$Lh99TBoP8mqOcIwXc3fqnu$e/lEva8reEmyNEpCmdZWb/9nymF5G3q4X+nfInn64Gc=',NULL,0,'salazarserrudo@gmail.com','','','',0,1,'2022-04-05 00:32:03.000000'),(256,'pbkdf2_sha256$320000$Sb0N5uW7l8ji2lV92gDLHW$x+W+bKJZ90gLEeuSG/mOobyMNP1MVExSm6ark/XZRbs=',NULL,0,'salinaspereira@gmail.com','','','',0,1,'2022-04-05 00:32:32.000000'),(257,'pbkdf2_sha256$320000$qLzLieeg5kyUhKPQITjaCV$s553FvX9Lt2cQBrU/TCKDwR8GIp5F28wfMue7GyFoLw=',NULL,0,'salinaspericon@gmail.com','','','',0,1,'2022-04-05 00:32:56.000000'),(258,'pbkdf2_sha256$320000$4G4081dBeCNtPm1GZ4aecA$gDMmp81URIMsoDKvKGG9/4At+cSUZCxO2g3mPhA0pVo=',NULL,0,'saramaniaguilar@gmail.com','','','',0,1,'2022-04-05 00:33:25.000000'),(259,'pbkdf2_sha256$320000$r7IEAsnIa2l28Ev4hQJzC4$yoNn5u4TTPAxWq44PxMpHcw3H70fEfYucp7Cd0qQydQ=',NULL,0,'sarmientofranco@gmail.com','','','',0,1,'2022-04-05 00:33:42.000000'),(260,'pbkdf2_sha256$320000$WTjxhpXdGmc92dzsPgPQLW$7t+oUtbFdO17TchKEowK4YVjZRoPhhZQV4tdZWCzmlk=',NULL,0,'severichechacon@gmail.com','','','',0,1,'2022-04-05 00:34:06.000000'),(261,'pbkdf2_sha256$320000$Psmr1Yqd3eFNBJzhy5tgie$0k/yd8HjCF48ea1JlHe4maSD2tpK+4oEzPs3HFBYTC0=',NULL,0,'shitikovgagarina@gmail.com','','','',0,1,'2022-04-05 00:34:28.000000'),(262,'pbkdf2_sha256$320000$pjdOQAqyUAfeDiV9FWH4PZ$5Zh+dtODZV/sSN6mO7U/q2p4d6bKHTff35pEzutvQDs=',NULL,0,'solizmartinez@gmail.com','','','',0,1,'2022-04-05 00:34:47.000000'),(263,'pbkdf2_sha256$320000$XJppsE2gAdKYWTfzmxqinl$Lw44CrtErQCOaNhZMhVX8JfDsP/LgdcyjXYDw8dH9vA=',NULL,0,'sorucomaita@gmail.com','','','',0,1,'2022-04-05 00:35:14.000000'),(264,'pbkdf2_sha256$320000$pg7wdAwWPh1NTeOAzrXHBv$bjXASgdUpBLb2RHxY7EfuBvFpTwgRWGbt3kM9d1aKqk=',NULL,0,'sotomoreira@gmail.com','','','',0,1,'2022-04-05 00:35:59.000000'),(265,'pbkdf2_sha256$320000$kPJcdulKAkgOSGqHZ467gD$fgxoYyvpRZMdWJasBfIU50SuAH08Tl8T7BuEzdJKJjI=',NULL,0,'sotosoliz@gmail.com','','','',0,1,'2022-04-05 00:36:18.000000'),(266,'pbkdf2_sha256$320000$dkJJQ3m0VU8gqynwDe3dM8$nQ+2WhDTeY5wh9L371eGpBLJvqRp9zN/FCdBk/BAjOE=',NULL,0,'suarezsuarez@gmail.com','','','',0,1,'2022-04-05 00:36:38.000000'),(267,'pbkdf2_sha256$320000$CAcqzHoriUoDyaim7jUJPA$mSxKPdCNROpc0cjLIbgZ+vdpU0welmWMPZuWJxRq2M8=',NULL,0,'taborgaacha@gmail.com','','','',0,1,'2022-04-05 00:37:12.000000'),(268,'pbkdf2_sha256$320000$SBAtkMFpuedDWUBs7rDaZ0$msmBGzuujK1LXlKD0czClZIdTIM+HuMtdp+wl8yVtHk=',NULL,0,'tancarasandagorda@gmail.com','','','',0,1,'2022-04-05 00:37:31.000000'),(269,'pbkdf2_sha256$320000$X2o2p2om8WehKHMxlBGyAG$eIe0risHCOLbwEzhbX+bIALtFkKTKSbJI1GTA7i1rjU=',NULL,0,'taylorterrazas@gmail.com','','','',0,1,'2022-04-05 00:37:54.000000'),(270,'pbkdf2_sha256$320000$uhILaspTBlmhRD9zSS17Qf$nuPWypp7HSdoKPXDd8oDv+4QKc9ux+ZL5hzf7eFDVhw=',NULL,0,'teranaiza@gmail.com','','','',0,1,'2022-04-05 00:38:16.000000'),(271,'pbkdf2_sha256$320000$ZHnqjqX1fjupP8iCtVpcq3$FtrdPBVQpx5wHgEuxkW2YSrrWC1vno/csFaZ4EESQIA=',NULL,0,'terrazaslobo@gmail.com','','','',0,1,'2022-04-05 00:38:36.000000'),(272,'pbkdf2_sha256$320000$MqxuwuN3LAjI4b0XaRISPu$ygzhwy0IblF3QslqzyLt9Usf1rK/hQTU825HPlmYDHM=',NULL,0,'terrazasmaldonado@gmail.com','','','',0,1,'2022-04-05 00:39:00.000000'),(273,'pbkdf2_sha256$320000$DiioL7BzNPyt2jgihppdeT$Bmzw4BZh8xuE8GA2phrcTnP67Dmpc7YT9nI50aY/Uo8=',NULL,0,'terrazasvargas@gmail.com','','','',0,1,'2022-04-05 00:39:25.000000'),(274,'pbkdf2_sha256$320000$OHVNQX7JvRFq7BsMLkbQpZ$2hzUYPu8VRHbk7/IyEwpxHBEY/7uKIrvTXoU2BFcwGY=',NULL,0,'torrejonrocabado@gmail.com','','','',0,1,'2022-04-05 00:39:44.000000'),(275,'pbkdf2_sha256$320000$hhX44gXlordlJ7MFxFfOHp$wQktmbRqzW6DJnu0l7DJQTHVN44OVsG6fIt82IFHVck=',NULL,0,'torresnavarro@gmail.com','','','',0,1,'2022-04-05 00:40:06.000000'),(276,'pbkdf2_sha256$320000$oJxD7yAKRezRPU52Y8Ulqd$Kr+GnU+kbV0LXA3sUGkkxCHwXoz1/dFzxFIBY/Hh3Qw=',NULL,0,'torrezpelaez@gmail.com','','','',0,1,'2022-04-05 00:40:28.000000'),(277,'pbkdf2_sha256$320000$HpmHu4Qj6s6A5FbI4fCgca$svLoEEb0A9dB5VEaD5wI4GtQOYZBqum8HcD8XsQKUTg=',NULL,0,'torrezquiteros@gmail.com','','','',0,1,'2022-04-05 00:40:49.000000'),(278,'pbkdf2_sha256$320000$jXjTVgqHbmfItQbjKN5hbL$VNUtHO93k7UtTGVPKsjyO/ZjhMCIdGWrb3ZKFsvU/I0=',NULL,0,'torricobarron@gmail.com','','','',0,1,'2022-04-05 00:41:09.000000'),(279,'pbkdf2_sha256$320000$veOcTKOgwHD3SlosrGcHBW$pijRkY4VBtVlw9Yam7peDuUKOprDYOs5sra271bMXFM=',NULL,0,'torricobascope@gmail.com','','','',0,1,'2022-04-05 00:41:45.000000'),(280,'pbkdf2_sha256$320000$pwxGqrt1sNGaAGuyn2VC8E$Z85V/heAdMw3bvYJgl/gajZAzlz7sARHf+PEHO2X3E0=',NULL,0,'torricomejia@gmail.com','','','',0,1,'2022-04-05 00:42:04.000000'),(281,'pbkdf2_sha256$320000$XiCwi7D4MTrnxx6kLyoVIq$krZVDiQBfZAi3dl1+Ylkc49JTUS4K9fdJVU7E7R46M4=',NULL,0,'torricotroche@gmail.com','','','',0,1,'2022-04-05 00:42:34.000000'),(282,'pbkdf2_sha256$320000$PiMU3QQyk5lrhxZJ8aks2l$Re4/2+qMuSUwcKOt09/dM9a2gyrK5BH7VfX4Ta27oOI=',NULL,0,'torricovallejos@gmail.com','','','',0,1,'2022-04-05 00:42:55.000000'),(283,'pbkdf2_sha256$320000$oJ7tQvBu7n0Zuv7Hs6Im9g$GGta/SiP1V1xjBwNUKlwpO3jOKEhKlPclWjv7Wo/jCw=',NULL,0,'trigorocha@gmail.com','','','',0,1,'2022-04-05 00:43:19.000000'),(284,'pbkdf2_sha256$320000$ksF5zghp5YB35sGMJIdh1a$4Q2ue9vspTrWTyBdMiNIiB09voc7/c8iwZ5PeAYvPbA=',NULL,0,'trivenoherrera@gmail.com','','','',0,1,'2022-04-05 00:43:58.000000'),(285,'pbkdf2_sha256$320000$HqFh4pcmA6JrvDzfaH4R5O$ih/4CaiD+PgIJQJgLU7Q/1yoXUfIsW7sPiLdb7fmnY4=',NULL,0,'trujilloaranibar@gmail.com','','','',0,1,'2022-04-05 00:44:16.000000'),(286,'pbkdf2_sha256$320000$buEqu3voL0s6QFJ84bOzcD$0vAfRLJQl56EWtUu7FAqWUoWkbUt3P0cA+N8Cj5gdaU=',NULL,0,'ugartecejas@gmail.com','','','',0,1,'2022-04-05 00:44:35.000000'),(287,'pbkdf2_sha256$320000$Kt1U13Vvi7KRYIiWq1v5cm$1DSV/Dpma0G2Rd374KRm4B3EvBHtBtKEHCNyjRuoukE=',NULL,0,'ureñaperez@gmail.com','','','',0,1,'2022-04-05 00:44:56.000000'),(288,'pbkdf2_sha256$320000$fMnVj4scig6u61QTCGgv8I$OAqEg85WUgmj/6yQB333EE0Y7JGuGYnyT9N1egIu6W4=',NULL,0,'ureycontreras@gmail.com','','','',0,1,'2022-04-05 00:45:21.000000'),(289,'pbkdf2_sha256$320000$A5zj78aCL6Zpjn3UAi8H5s$YbdyYakCZ1nYSStQk3x13RMQoXEMaG8403bL4kHHhFw=',NULL,0,'urrutiamedrano@gmail.com','','','',0,1,'2022-04-05 00:45:48.000000'),(290,'pbkdf2_sha256$320000$iBdb5zEyVFiHoPBDO4QVW8$2kV9TILKjAEAPmQdLl15sIF/8X8s+9QsEKnXAOsrFjk=',NULL,0,'urrutiazelada@gmail.com','','','',0,1,'2022-04-05 00:46:05.000000'),(291,'pbkdf2_sha256$320000$8STFhagSVIUJjAd7iL6L4s$S6GTs84gerpTGrcBVxWWfjKPwyUZfnSYzxeITt4XcQ0=',NULL,0,'ustarizaramayo@gmail.com','','','',0,1,'2022-04-05 00:46:28.000000'),(292,'pbkdf2_sha256$320000$rvX5dM7JW8hYoNTJOBmoup$7KOISatjEMGGppdFmcRLivhAa2uT60yWIZlO5XOL2fo=',NULL,0,'ustarisvargas@gmail.com','','','',0,1,'2022-04-05 00:46:50.000000'),(293,'pbkdf2_sha256$320000$bLHV5SApLUU4fxsdSWhoEe$cjl0LhZN4UADwNT/ydy93zweUmkNa1ZCll4NLHK97Ug=',NULL,0,'valenzuelamiranda@gmail.com','','','',0,1,'2022-04-05 00:47:10.000000'),(294,'pbkdf2_sha256$320000$wjQerfSfk1NQhqQyiksJXW$nq/BQr8wy6PSyKd5yOv6BqrnwxEnznt/liAamvB6nNg=',NULL,0,'vallejocamacho@gmail.com','','','',0,1,'2022-04-05 00:47:36.000000'),(295,'pbkdf2_sha256$320000$uMWG5skIx6d2QbqbXZJ9vM$2JEhJlJLd8sbikgBGSPk6Y8oBBKQaqKuFC3jTvJRzQc=',NULL,0,'vargasantezana@gmail.com','','','',0,1,'2022-04-05 00:47:53.000000'),(296,'pbkdf2_sha256$320000$lE91GOzOzavy3WMCTMRNpS$XWGbIIEIRt+Ky1FCjQRMFzKlFQCDrnVsQZTNxWErhEA=',NULL,0,'vargascolque@gmail.com','','','',0,1,'2022-04-05 00:48:14.000000'),(297,'pbkdf2_sha256$320000$Il1CjGlBjqtgjbVeM3vjkF$8ycesr/p/4gC74fqwS8yUBTHgAf56CZvGWWoV68TtL0=',NULL,0,'vargasperedo@gmail.com','','','',0,1,'2022-04-05 00:48:34.000000'),(298,'pbkdf2_sha256$320000$zhR6BuBUC3pTgGGdygQ26Y$A5oQaNWo06wkYSZwAzGZdG2TJCKq/Xhr3P4XM355188=',NULL,0,'vargasquiroz@gmail.com','','','',0,1,'2022-04-05 00:48:53.000000'),(299,'pbkdf2_sha256$320000$I79C0Azw8hUsxMksUixYzY$zwZRkcHo+yAk7Jdk0itB0AKu3cB7dUS8aSDqidwP72M=',NULL,0,'vargasreinaga@gmail.com','','','',0,1,'2022-04-05 00:49:16.000000'),(300,'pbkdf2_sha256$320000$ObQEPIYNJnLiEuu32Vnt4P$5HJmVzxdsrsQ1qrquU//N1YIcwQ+F+lZAzHf7+WPxQE=',NULL,0,'vargasvallejos@gmail.com','','','',0,1,'2022-04-05 00:49:35.000000'),(301,'pbkdf2_sha256$320000$GpGHYkbT1wUII0yKkQOf3i$UsASZivd0lMAt/6Rc4MAA50mIwQ+kwPpycDl64dgPCY=',NULL,0,'vasquezcarrillo@gmail.com','','','',0,1,'2022-04-05 00:49:57.000000'),(302,'pbkdf2_sha256$320000$OPnTHHLh5lU2vRGifFmVN5$zQzp88HFGS0q9YCEw8smjikACHjWdPwXPn1fwsd0Cjk=',NULL,0,'vegaalfaro@gmail.com','','','',0,1,'2022-04-05 00:50:18.000000'),(303,'pbkdf2_sha256$320000$anCksgN5LWAFPkqDmtRSHL$wBrB1NFCa7MChbzbddK28kKrjLvJ8ygDdrhQWQb2d5w=',NULL,0,'veracortes@gmail.com','','','',0,1,'2022-04-05 00:50:46.000000'),(304,'pbkdf2_sha256$320000$wBP20UHtqGSnBslYIxBKpi$UYz3DSRlwGee44j5dP+ZT+nybPiWVsWnU1R0ZnHo5Z4=',NULL,0,'vilasecagamarra@gmail.com','','','',0,1,'2022-04-05 00:51:24.000000'),(305,'pbkdf2_sha256$320000$WuPqvO9ar65FZHjGcd7yO6$HKdnkxp2/QI8B07WaAj7wFed3BGM7+jYNv2goJtrkzE=',NULL,0,'villaroel@gmail.com','','','',0,1,'2022-04-05 00:51:44.000000'),(306,'pbkdf2_sha256$320000$bhVCdQUDnE0VPXNPXz5pB8$l3W0KPeDan5IncfsakOQkMk9EQ3ZVw8I01DEUCgHPXg=',NULL,0,'villaroelnovillo@gmail.com','','','',0,1,'2022-04-05 00:52:08.000000'),(307,'pbkdf2_sha256$320000$sR5apcPb5qzCMtRPfMBDjd$70BeMzqfWp/sp/R2cz83CNgMA1U37Mk6AxW/5Y/FFXQ=',NULL,0,'villaroeltapia@gmail.com','','','',0,1,'2022-04-05 00:52:29.000000'),(308,'pbkdf2_sha256$320000$FCn4FjjGjjgwW21cZSkwnG$HFF3M4Y7L7LkI44os6CLgnsYjnh5n1r9BwiBeU6uB08=',NULL,0,'villazongomez@gmail.com','','','',0,1,'2022-04-05 00:52:51.000000'),(309,'pbkdf2_sha256$320000$eHIta8gcvwI8KNgrJCKlGs$P2SXnyI3HbMhlJe3tFrYjXe9LSPU/IScINK4RlDxlVo=',NULL,0,'villazonrocha@gmail.com','','','',0,1,'2022-04-05 00:53:10.000000'),(310,'pbkdf2_sha256$320000$ftVdRCAAHZIW1mJNVCaUKm$EVN8jjSz+Z7sQOXUHvOFaN+9YNU3xcXQe+gvlrDRS3Q=',NULL,0,'viscarravargas@gmail.com','','','',0,1,'2022-04-05 00:53:30.000000'),(311,'pbkdf2_sha256$320000$pGqwD8XOkI8SSGjVzVWr7r$SnMuyecxsszRAhEAKakHvthPd2+O6fdWjlcjTb00VXc=',NULL,0,'zabalagamontaño@gmail.com','','','',0,1,'2022-04-05 00:53:48.000000'),(312,'pbkdf2_sha256$320000$z19fiumNJ9ANU6XhLybqvi$v0WkZuYTKFlBm2sHAd+U1rbP8trOHx7TmI/uJ1nVGls=',NULL,0,'zallesmedrano@gmail.com','','','',0,1,'2022-04-05 00:54:16.000000'),(313,'pbkdf2_sha256$320000$paubIwkFKVLH0pQtnwmNJZ$dzyFdLeWo7iqB4CJpJ7waR7yukjptzagmV3lopEHV/U=',NULL,0,'zambranaburgos@gmail.com','','','',0,1,'2022-04-05 00:54:36.000000'),(314,'pbkdf2_sha256$320000$11p7N1kEU6Hf065AC66Wn2$VZGL9hYQnD6II6aooF5/Wujmf+AhALTyH2otaw4Xc8I=',NULL,0,'zambranamontan@gmail.com','','','',0,1,'2022-04-05 00:54:56.000000'),(315,'pbkdf2_sha256$320000$Qc943Mkd1V8CuFRdESkFeO$3n/oI6m59KF2PUtVkFUEepSico5hDusfKbx3habe8rY=',NULL,0,'zambranavilar@gmail.com','','','',0,1,'2022-04-05 00:55:20.000000'),(316,'pbkdf2_sha256$320000$OlCTnRuQPN00CfbTVpA6V7$0K+sCDyuOSFIC7zXp9NaaHHlfdICLTjHmPRJLNqncd4=',NULL,0,'zapataschltze@gmail.com','','','',0,1,'2022-04-05 00:55:42.000000'),(317,'pbkdf2_sha256$320000$JNCQRv5T32vYQ8dPdldzc6$6kW+hYNt6mKATh+dOLebfKU+2CerECoWcFaZ/PTbMU8=',NULL,0,'zegarradorado@gmail.com','','','',0,1,'2022-04-05 00:56:00.000000'),(318,'pbkdf2_sha256$320000$A9GRnAWDmN8OTuAnE3JOlj$5tz+k/nEAIB7mPHmTyR7hhf0XJwXCT8TGehcsYF0dHg=',NULL,0,'zuritaorellana@gmail.com','','','',0,1,'2022-04-05 00:56:58.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `axes_accessattempt`
--

DROP TABLE IF EXISTS `axes_accessattempt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `axes_accessattempt` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_agent` varchar(255) NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `http_accept` varchar(1025) NOT NULL,
  `path_info` varchar(255) NOT NULL,
  `attempt_time` datetime(6) NOT NULL,
  `get_data` longtext NOT NULL,
  `post_data` longtext NOT NULL,
  `failures_since_start` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `axes_accessattempt_username_ip_address_user_agent_8ea22282_uniq` (`username`,`ip_address`,`user_agent`),
  KEY `axes_accessattempt_ip_address_10922d9c` (`ip_address`),
  KEY `axes_accessattempt_user_agent_ad89678b` (`user_agent`),
  KEY `axes_accessattempt_username_3f2d4ca0` (`username`),
  CONSTRAINT `axes_accessattempt_chk_1` CHECK ((`failures_since_start` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `axes_accessattempt`
--

LOCK TABLES `axes_accessattempt` WRITE;
/*!40000 ALTER TABLE `axes_accessattempt` DISABLE KEYS */;
/*!40000 ALTER TABLE `axes_accessattempt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `axes_accesslog`
--

DROP TABLE IF EXISTS `axes_accesslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `axes_accesslog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_agent` varchar(255) NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `http_accept` varchar(1025) NOT NULL,
  `path_info` varchar(255) NOT NULL,
  `attempt_time` datetime(6) NOT NULL,
  `logout_time` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `axes_accesslog_ip_address_86b417e5` (`ip_address`),
  KEY `axes_accesslog_user_agent_0e659004` (`user_agent`),
  KEY `axes_accesslog_username_df93064b` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `axes_accesslog`
--

LOCK TABLES `axes_accesslog` WRITE;
/*!40000 ALTER TABLE `axes_accesslog` DISABLE KEYS */;
INSERT INTO `axes_accesslog` VALUES (1,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36','127.0.0.1','achaperez@gmail.com','text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9','/login/','2022-04-05 13:42:55.116426','2022-04-05 13:42:57.179303'),(2,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36','127.0.0.1','munay','text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9','/admin/login/','2022-04-05 13:43:07.452785',NULL);
/*!40000 ALTER TABLE `axes_accesslog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(12,'axes','accessattempt'),(13,'axes','accesslog'),(5,'contenttypes','contenttype'),(11,'GestionDB','aula'),(7,'GestionDB','docente'),(10,'GestionDB','grupo'),(8,'GestionDB','materia'),(9,'GestionDB','reserva'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'GestionDB','0001_initial','2022-04-05 12:13:45.051575'),(2,'contenttypes','0001_initial','2022-04-05 12:13:45.120972'),(3,'auth','0001_initial','2022-04-05 12:13:45.683460'),(4,'admin','0001_initial','2022-04-05 12:13:45.883828'),(5,'admin','0002_logentry_remove_auto_add','2022-04-05 12:13:45.900008'),(6,'admin','0003_logentry_add_action_flag_choices','2022-04-05 12:13:45.910967'),(7,'contenttypes','0002_remove_content_type_name','2022-04-05 12:13:46.004695'),(8,'auth','0002_alter_permission_name_max_length','2022-04-05 12:13:46.072540'),(9,'auth','0003_alter_user_email_max_length','2022-04-05 12:13:46.096233'),(10,'auth','0004_alter_user_username_opts','2022-04-05 12:13:46.107298'),(11,'auth','0005_alter_user_last_login_null','2022-04-05 12:13:46.155691'),(12,'auth','0006_require_contenttypes_0002','2022-04-05 12:13:46.167057'),(13,'auth','0007_alter_validators_add_error_messages','2022-04-05 12:13:46.177395'),(14,'auth','0008_alter_user_username_max_length','2022-04-05 12:13:46.263262'),(15,'auth','0009_alter_user_last_name_max_length','2022-04-05 12:13:46.332649'),(16,'auth','0010_alter_group_name_max_length','2022-04-05 12:13:46.358427'),(17,'auth','0011_update_proxy_permissions','2022-04-05 12:13:46.372389'),(18,'auth','0012_alter_user_first_name_max_length','2022-04-05 12:13:46.439200'),(19,'axes','0001_initial','2022-04-05 12:13:46.495909'),(20,'axes','0002_auto_20151217_2044','2022-04-05 12:13:46.622610'),(21,'axes','0003_auto_20160322_0929','2022-04-05 12:13:46.639360'),(22,'axes','0004_auto_20181024_1538','2022-04-05 12:13:46.658309'),(23,'axes','0005_remove_accessattempt_trusted','2022-04-05 12:13:46.709313'),(24,'axes','0006_remove_accesslog_trusted','2022-04-05 12:13:46.756269'),(25,'axes','0007_alter_accessattempt_unique_together','2022-04-05 12:13:46.785006'),(26,'sessions','0001_initial','2022-04-05 12:13:46.825070');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('iwevlx14lwbgq91tn729bsg1avkxmu0a','.eJxVjDsOwyAQBe9CHSH-YlOmzxnQAktwEoFk7MrK3WNLLpJ2Zt7bWMB1qWEdNIcpsyuT7PLLIqYXtUPkJ7ZH56m3ZZ4iPxJ-2sHvPdP7drZ_BxVH3dcWlZYGMkVhpEkWo9PSZV0IPaBQ1lGkJMrOwaOCgkAgi3EetdJJsM8X6ZQ4JQ:1nbjSd:AJrkIJtgpqq-NpUzbX1dJrK4dVMQ940xZuSmGp_9l0A','2022-04-19 13:43:07.454784');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gestiondb_aula`
--

DROP TABLE IF EXISTS `gestiondb_aula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gestiondb_aula` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Cant_Estudiante` int NOT NULL,
  `Cod_Reserva_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `GestionDB_aula_Cod_Reserva_id_6ca90fcc_fk_GestionDB_reserva_id` (`Cod_Reserva_id`),
  CONSTRAINT `GestionDB_aula_Cod_Reserva_id_6ca90fcc_fk_GestionDB_reserva_id` FOREIGN KEY (`Cod_Reserva_id`) REFERENCES `gestiondb_reserva` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gestiondb_aula`
--

LOCK TABLES `gestiondb_aula` WRITE;
/*!40000 ALTER TABLE `gestiondb_aula` DISABLE KEYS */;
/*!40000 ALTER TABLE `gestiondb_aula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gestiondb_docente`
--

DROP TABLE IF EXISTS `gestiondb_docente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gestiondb_docente` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre_Docente` varchar(50) NOT NULL,
  `apellido_Docente` varchar(50) NOT NULL,
  `email` varchar(80) NOT NULL,
  `contraseña` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=316 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gestiondb_docente`
--

LOCK TABLES `gestiondb_docente` WRITE;
/*!40000 ALTER TABLE `gestiondb_docente` DISABLE KEYS */;
INSERT INTO `gestiondb_docente` VALUES (1,'Samuel','Achá Perez','achaperez@gmail.com','mantequilla'),(2,'Luis Roberto','Agreda Corrales','agredacorrales@gmail.com','mantequilla'),(3,'Wilson Gonzalo','Aguilar Mamani','aguilarmamani@gmail.com','mantequilla'),(4,'Ivan Felix','Aguirre Torrico','aguirretorrico@gmail.com','mantequilla'),(5,'Richard Cesar','Alcocer Garnica','alcocergarnica@gmail.com','mantequilla'),(6,'Juan Nolasco','Alcon Puña','alconpuña@gmail.com','mantequilla'),(7,'Lucio','Alejo Espinoza','alejoespinoza@gmail.com','mantequilla'),(8,'Gonzalo','Alfaro Denus','alfarodenus@gmail.com','mantequilla'),(9,'Emilio','Aliss Paredes','alissparedes@gmail.com','mantequilla'),(10,'Maria Mercedes','Alvarez Caero','alvarezcaero@gmail.com','mantequilla'),(11,'Richard Milton','Alvarez Quiroz','alvarezquiroz@gmail.com','mantequilla'),(12,'Marko Jorge','Andrade Uzieta','andradeuzieta@gmail.com','mantequilla'),(13,'Marcelo','Antezana Camacho','antezanacamacho@gmail.com','mantequilla'),(14,'Henry','Antezana Fernandez','antezanafernandez@gmail.com','mantequilla'),(15,'Victor Hugo','Antezana Nogales','antezananogales@gmail.com','mantequilla'),(16,'Omar','Antezana Roman','antezanaroman@gmail.com','mantequilla'),(17,'Carola','Antezana Valera','antezanavalera@gmail.com','mantequilla'),(18,'Tatiana ','Aparicio Yuja','aparicioyuja@gmail.com','mantequilla'),(19,'Marcelo Eduardo','Arancibia Guzman','arancibiaguzman@gmail.com','mantequilla'),(20,'Marco Antonio','Arancibia Miranda','arancibiamiranda@gmail.com','mantequilla'),(21,'Ligia Jaqueline','Aranibar Lafuente','aranibarlafuente@gmail.com','mantequilla'),(22,'Joaquin Ricardo','Araoz Jaldin','araozjaldin@gmail.com','mantequilla'),(23,'Omar Orlando','Arce Garcia','arcegarcia@gmail.com','mantequilla'),(24,'Alberto','Arispe Santander','arispesantander@gmail.com','mantequilla'),(25,'Walter ','Arispe Santander','arispesantander2@gmail.com','mantequilla'),(26,'Maria Del Carmen','Arnez Camacho','arnezcamacho@gmail.com','mantequilla'),(27,'Edith Maritza','Arnez Torrico','arneztorrico@gmail.com','mantequilla'),(28,'Silvia Susana','Arrazola Rivero','arrazolarivero@gmail.com','mantequilla'),(29,'Jose Omar','Arzabe Maure','arzabemaure@gmail.com','mantequilla'),(30,'Margoth','Atahuachi','atahuachi@gmail.com','mantequilla'),(31,'Martha Teresa','Avila Alba','avilaalba@gmail.com','mantequilla'),(32,'Alfredo ','Avila Lara','avilalara@gmail.com','mantequilla'),(33,'Jaime','Ayllon Acosta','ayllonacosta@gmail.com','mantequilla'),(34,'Jose Richard','Ayoroa Cardozo','ayoroacardozo@gmail.com','mantequilla'),(35,'Pablo','Azero Alcocer','azeroalcocer@gmail.com','mantequilla'),(36,'Roger Wilmer','Balderrama Angulo','Balderramaangulo@gmail.com','mantequilla'),(37,'Jose Luis','Balderrama Idina','balderramaidina@gmail.com','mantequilla'),(38,'Jose Antonio','Balderrama Torrico','balderramatorrico@gmail.com','mantequilla'),(39,'Rene Jesus','Baldivieso Saenz','Baldiviesosaenz@gmail.com','mantequilla'),(40,'Lizeth Monica','Baptista Chuya','baptistachuya@gmail.com','mantequilla'),(41,'Toribio','Bautista Herbas','bautistaherbas@gmail.com','mantequilla'),(42,'Leticia','Blanco Coca','blancococa@gmail.com','mantequilla'),(43,'Maria Lidia Amparo','Bruckner Bazoberry','brucknerbazoberry@gmail.com','mantequilla'),(44,'Alex Isrrael','Bustillos Vargas','bustillosvargas@gmail.com','mantequilla'),(45,'Fernando','Butron Gandarillas','butrongandarillas@gmail.com','mantequilla'),(46,'Javier ','Caballero Flores','caballeroflores@gmail.com','mantequilla'),(47,'Jennifer','Cahill Mangudo','cahillmangudo@gmail.com','mantequilla'),(48,'Boris','Calancha Navia','calanchanavia@gmail.com','mantequilla'),(49,'Indira','Camacho Del Castillo','camachodelcastillo@gmail.com','mantequilla'),(50,'Christian Boris','Camacho Peña','camachopeña@gmail.com','mantequilla'),(51,'Roger Orlando','Camacho Quiroga','camachoquiroga@gmail.com','mantequilla'),(52,'Jimmy Erick','Camacho Villazon','camachovillazon@gmail.com','mantequilla'),(53,'Walter','Canedo Espinoza','canedoespinoza@gmail.com','mantequilla'),(54,'Sergio Carlos','Carballo Cadima','carballocadima@gmail.com','mantequilla'),(55,'Alvaro Hernando','Carrasco Calvo','carrascocalvo@gmail.com','mantequilla'),(56,'Dilian','Castellon Reynaga','castellonreynaga@gmail.com','mantequilla'),(57,'Raul Fernando','Castellon Torrico','castellontorrico@gmail.com','mantequilla'),(58,'Juan Carlos','Castillo Zegarra','castillozegarra@gmail.com','mantequilla'),(59,'Cecilia Beatriz','Castro Lazarte','castrolazarte@gmail.com','mantequilla'),(60,'Raul ','Catari Rios','cataririos@gmail.com','mantequilla'),(61,'Maria Benita','Cespedes Guizada','cespedesguizada@gmail.com','mantequilla'),(62,'Alex Danchgelo','Choque Flores','choqueflores@gmail.com','mantequilla'),(63,'Francisco','Choque Uno','choqueuno@gmail.com','mantequilla'),(64,'Luis Gualberto','Claros Cruz','claroscruz@gmail.com','mantequilla'),(65,'Patricia Angelica','Claure Richard','claurerichard@gmail.com','mantequilla'),(66,'Juan Carlos','Coca Mendez','cocamendez@gmail.com','mantequilla'),(67,'Carlos Javier Alfredo','Cosio Papadopolis','cosiopapadopolis@gmail.com','mantequilla'),(68,'Walter Felix','Cossio Cabrera','cossiocabrera@gmail.com','mantequilla'),(69,'Vladimir Abel','Costas Jauregui','costasjauregui@gmail.com','mantequilla'),(70,'Alberto Rudy','Crespo Garcia','crespogarcia@gmail.com','mantequilla'),(71,'Oscar ','Cuellar Olivera','cuellarolivera@gmail.com','mantequilla'),(72,'Gualberto','Cupe Clemente','cupeclemente@gmail.com','mantequilla'),(73,'Grover Humberto','Cussi Nicolas','cussinicolas@gmail.com','mantequilla'),(74,'Jorge','Davalos Brozovic','davalosbrozovic@gmail.com','mantequilla'),(75,'Marcelo Armando','Davila Cabrera','davilacabrera@gmail.com','mantequilla'),(76,'Marithza','Del Castillo Antezana','delcastilloantezana@gmail.com','mantequilla'),(77,'David Alfredo','Delgadillo Cossio','delgadillocossio@gmail.com','mantequilla'),(78,'Rolando','Diaz Coimbra','diazcoimbra@gmail.com','mantequilla'),(79,'Gerardo','Dominguez','dominguez@gmail.com','mantequilla'),(80,'Carmen Rosario','Dominguez Blanco','dominguezblanco@gmail.com','mantequilla'),(81,'Raul Agapito','Dominguez Chura','dominguezchura@gmail.com','mantequilla'),(82,'Jorge Martin','Duchen Ayala','duchenayala@gmail.com','mantequilla'),(83,'Rodrigo Carlos','Echeverria Herrera','echeverriaherrera@gmail.com','mantequilla'),(84,'Marcelo','Eduardo Franz','eduardofranz@gmail.com','mantequilla'),(85,'David','Escalera Fernandez','escalerafernandez@gmail.com','mantequilla'),(86,'Edwin','Escalera Mejia','escaleramejia@gmail.com','mantequilla'),(87,'Armando ','Escalera Vasquez','escaleravasquez@gmail.com','mantequilla'),(88,'Marco ','Escobar Seleme','escobarseleme@gmail.com','mantequilla'),(89,'Jenny','Espinoza Alcocer','espinozaalcocer@gmail.com','mantequilla'),(90,'Jose ','Espinoza Orosco','espinozaorosco@gmail.com','mantequilla'),(91,'Ruben','Espinoza Orosco','espinozaorosco2@gmail.com','mantequilla'),(92,'Milton','Fernandez Calatayud','fernandezcalatayud@gmail.com','mantequilla'),(93,'Helder Octavio','Fernandez Guzman','fernandezguzman@gmail.com','mantequilla'),(94,'Juan A.','Fernandez Leon','fernandezleon@gmail.com','mantequilla'),(95,'David','Fernandez Ramos','fernandezramos@gmail.com','mantequilla'),(96,'Hugo William','Fernandez Rios','fernandezrios@gmail.com','mantequilla'),(97,'Erika','Fernandez Terrazas','fernandezterrazas@gmail.com','mantequilla'),(98,'Erick Vladimir','Ferrufino Guardia','ferrufinoguardia@gmail.com','mantequilla'),(99,'Americo','Fiorilo Lozada','fiorilolozada@gmail.com','mantequilla'),(100,'Oscar','Florero Ortuño','floreroortuño@gmail.com','mantequilla'),(101,'Freddy','Flores Flores','floresflores@gmail.com','mantequilla'),(102,'Hernan','Flores Garcia','floresgarcia@gmail.com','mantequilla'),(103,'Abraham','Flores Rios','floresrios@gmail.com','mantequilla'),(104,'Juan Marcelo','Flores Soliz','floressoliz@gmail.com','mantequilla'),(105,'Corina','Flores Villaroel','floresvillaroel@gmail.com','mantequilla'),(106,'Ivan ','Fuentes Miranda','fuentesmiranda@gmail.com','mantequilla'),(107,'Angel','Galarza Barron','galarzabarron@gmail.com','mantequilla'),(108,'Oscar Ricardo','Garcia Anturiano','garciaanturiano@gmail.com','mantequilla'),(109,'Juan Ruben','Garcia Molina','garciamolina@gmail.com','mantequilla'),(110,'Ana Lineth','Garcia Orellana','garciaorellana@gmail.com','mantequilla'),(111,'Carmen Rosa','Garcia Perez','garciaperez@gmail.com','mantequilla'),(112,'Rolando','Garnica Arostegui','garnicaarostegui@gmail.com','mantequilla'),(113,'Andres','Garrido Vargas','garridovargas@gmail.com','mantequilla'),(114,'Maria Esther','Giannini Zallocco','gianninizalloco@gmail.com','mantequilla'),(115,'Edgar','Goitia Arce','goitiaarce@gmail.com','mantequilla'),(116,'Oscar Javier','Goitia Arze','goitiaarze@gmail.com','mantequilla'),(117,'Guido','Gomez Ugarte','gomezugarte@gmail.com','mantequilla'),(118,'Nelson Emilio','Gomez Vargas','gomezvargas@gmail.com','mantequilla'),(119,'Raul Humberto','Gonzales Acosta','gonzalesacosta@gmail.com','mantequilla'),(120,'Andres Saul','Gonzales Amaya','gonzalesamaya@gmail.com','mantequilla'),(121,'Lucio','Gonzales Cartagena','gonzalescartagena@gmail.com','mantequilla'),(122,'Carlos Esteban','Gonzales Castellon','gonzalescastellon@gmail.com','mantequilla'),(123,'Maria Estela','Grilo Salvatierra','grilosalvatierra@gmail.com','mantequilla'),(124,'Roxana ','Guillen Salvador','guillensalvador@gmail.com','mantequilla'),(125,'Osvaldo Walter','Gutierrez Andrade','gutierrezandrade@gmail.com','mantequilla'),(126,'Victor','Gutierrez Martinez','gutierrezmartinez@gmail.com','mantequilla'),(127,'Gerardo','Guzman Alanes','guzmanalanes@gmail.com','mantequilla'),(128,'Gonzalo Enrique Antonio','Guzman Orellana','guzmanorellana@gmail.com','mantequilla'),(129,'Rocio','Guzman Saavedra','guzmansaavedra@gmail.com','mantequilla'),(130,'Hector Orlando','Guzman Suarez','guzmansuarez@gmail.com','mantequilla'),(131,'Adelina','Herbas Angulo','herbasangulo@gmail.com','mantequilla'),(132,'Boris Christian','Herbas Torrico','herbastorrico@gmail.com','mantequilla'),(133,'Marcelo Waldo','Heredia Gomez','herediagomez@gmail.com','mantequilla'),(134,'Wilson','Heredia Soliz','herediasoliz@gmail.com','mantequilla'),(135,'Mary Isabel','Hidalgo Sanchez','hidalgosanchez@gmail.com','mantequilla'),(136,'Nelson','Hinojosa Salazar','hinojosasalazar@gmail.com','mantequilla'),(137,'Marcelo Jose','Hinojosa Torrico','hinojosatorrico@gmail.com','mantequilla'),(138,'Mauricio','Hoepfner Reynolds','hoepfnerreynolds@gmail.com','mantequilla'),(139,'Ronald','Hosse Sahonero','hossesahonero@gmail.com','mantequilla'),(140,'Mercedes','Iriarte Puña','iriartepuña@gmail.com','mantequilla'),(141,'Hernan ','Jaldin Florero','jaldinflorero@gmail.com','mantequilla'),(142,'K. Rolando','Jaldin Rosales','jaldinrosales@gmail.com','mantequilla'),(143,'Juan','Jaldin Salazar','jaldinsalazar@gmail.com','mantequilla'),(144,'Maria Ivonne','Jauregui Carrasco','jaureguicarrasco@gmail.com','mantequilla'),(145,'Carlos Gaston','Joffre Lara','joffrelara@gmail.com','mantequilla'),(146,'Demetrio','Juchani Bazualdo','juchanibazualdo@gmail.com','mantequilla'),(147,'Valentin','Laime Zapata','laimezapata@gmail.com','mantequilla'),(148,'Wilhelm Eduardo','Lange Gonzales','langegonzales@gmail.com','mantequilla'),(149,'Patricia Sandra','Lazarte Astulla','lazarteastulla@gmail.com','mantequilla'),(150,'Luis ','Lazarte Villaroel','lazartevillaroel@gmail.com','mantequilla'),(151,'Fernando Arturo','Ledezma Perizza','ledezmaperizza@gmail.com','mantequilla'),(152,'Gualberto','Leon Romero','leonromero@gmail.com','mantequilla'),(153,'Tito Anibal','Lima Vacaflor','limavacaflor@gmail.com','mantequilla'),(154,'Edgar ','Llave Vincenti','llavevincenti@gmail.com','mantequilla'),(155,'Javier Bernardo','Lopez Arze','lopezarze@gmail.com','mantequilla'),(156,'Maria Alicia','Lopez Lopez','lopezlopez@gmail.com','mantequilla'),(157,'Grover Dante','Lopez Loredo','lopezloredo@gmail.com','mantequilla'),(158,'Marcelo Javier','Lucano Lucano','lucanolucano@gmail.com','mantequilla'),(159,'Mabel Gloria','Magariños Villaroel','magariñosvillaroel@gmail.com','mantequilla'),(160,'Raul','Maldonado Cespedes','maldonadocespedes@gmail.com','mantequilla'),(161,'Eliana Mirtha','Maldonado Gutierrez','maldonadogutierrez@gmail.com','mantequilla'),(162,'Pascual','Maldonado Lopez','maldonadolopez@gmail.com','mantequilla'),(163,'Mabel','Maldonado Maldonado','maldonadomaldonado@gmail.com','mantequilla'),(164,'Roberto Juan','Manchego Castellon','manchegocastellon@gmail.com','mantequilla'),(165,'Juvenal','Manzaneda Mamani','manzanedamamani@gmail.com','mantequilla'),(166,'Carlos B.','Manzur Soria','manzursoria@gmail.com','mantequilla'),(167,'Amilcar Saul','Martinez Maida','martinezmaida@gmail.com','mantequilla'),(168,'Vidal','Matias Marca','matiasmarca@gmail.com','mantequilla'),(169,'Julio','Medina Gamboa','medinagamboa@gmail.com','mantequilla'),(170,'Ruder','Medrano Antezana','medranoantezana@gmail.com','mantequilla'),(171,'Nora','Medrano Mercado','medranomercado@gmail.com','mantequilla'),(172,'Victor Ramiro','Mejia Urquieta','mejiaurquieta@gmail.com','mantequilla'),(173,'Roberto','Mendez Torrico','mendeztorrico@gmail.com','mantequilla'),(174,'Ivan','Mendez Velasquez','mendezvelasquez@gmail.com','mantequilla'),(175,'Sonia','Mendieta Brito','mendietabrito@gmail.com','mantequilla'),(176,'Alvaro Rodolfo','Mercado Guzman','mercadoguzman@gmail.com','mantequilla'),(177,'Reinaldo','Merida Lopez','meridalopez@gmail.com','mantequilla'),(178,'Jose','Meruvia Meruvia','meruviameruvia@gmail.com','mantequilla'),(179,'Felix','Meza Rosso','mezarosso@gmail.com','mantequilla'),(180,'Ana Maria','Michel Vargas','michelvargas@gmail.com','mantequilla'),(181,'Juan Francisco','Montaño Anaya','montañoanaya@gmail.com','mantequilla'),(182,'Sergio Arnaldo','Montaño Medina','montañomedina@gmail.com','mantequilla'),(183,'Rosario','Montaño Merida','montañomerida@gmail.com','mantequilla'),(184,'Victor Hugo','Montaño Quiroga','montañoquiroga@gmail.com','mantequilla'),(185,'Marco Antonio','Montecinos Choque','montecinoschoque@gmail.com','mantequilla'),(186,'Luis Edgar','Montenegro Terrazas','montenegroterrazas@gmail.com','mantequilla'),(187,'Juan Jose Edgar','Montero Guevara','monteroguevara@gmail.com','mantequilla'),(188,'Yony Richard','Montoya Burgos','montoyaburgos@gmail.com','mantequilla'),(189,'Andres ','Morales Maldonado','moralesmaldonado@gmail.com','mantequilla'),(190,'Oscar','Morato Gamboa','moratogamboa@gmail.com','mantequilla'),(191,'Rene ','Moreira Calizaya','moreiracalizaya@gmail.com','mantequilla'),(192,'Boris Arturo','Moreira Rosas','moreirarosas@gmail.com','mantequilla'),(193,'Martin','Moya Albarracin','moyaalbarracin@gmail.com','mantequilla'),(194,'Hans Cristian','Muller Santa Cruz','mullersantacruz@gmail.com','mantequilla'),(195,'Maria Susana Del Rosario','Muñoz Collazos','muñozcollazos@gmail.com','mantequilla'),(196,'Vladimir Felix','Muñoz Quispe','muñozquispe@gmail.com','mantequilla'),(197,'Galo Osvaldo','Muñoz Vasquez','muñozvasquez@gmail.com','mantequilla'),(198,'Freddy ','Navarro Antezana','navarroantezana@gmail.com','mantequilla'),(199,'Jose Gil','Omonte Ojalvo','omonteojalvo@gmail.com','mantequilla'),(200,'Jose Roberto','Omonte Ojalvo','omonteojalvo2@gmail.com','mantequilla'),(201,'Carla ','Oporto','oporto@gmail.com','mantequilla'),(202,'Miguel Angel','Ordoñez Salvatierra','ordoñezsalvatierra@gmail.com','mantequilla'),(203,'Jorge Walter','Orellana Araoz','orellanaaraoz@gmail.com','mantequilla'),(204,'Jaime ','Orellana Jimenez','orellanajimenez@gmail.com','mantequilla'),(205,'Hernan ','Orsi Saldias','orsisaldias@gmail.com','mantequilla'),(206,'Roberto','Pacheco Garcia','pachecogarcia@gmail.com','mantequilla'),(207,'Juan Fernando','Pardo Iriarte','pardoiriarte@gmail.com','mantequilla'),(208,'Ronald Edgar','Patiño Tito','patiñotito@gmail.com','mantequilla'),(209,'Magda Lena','Peeters Ilonaa','peetersilonaa@gmail.com','mantequilla'),(210,'Jose Luis ','Perez Aparicio','perezaparicio@gmail.com','mantequilla'),(211,'Jose Roberto','Perez Cespedes','perezcespedes@gmail.com','mantequilla'),(212,'Maribel','Perez Chacon','perezchacon@gmail.com','mantequilla'),(213,'Omar David','Perez Fuentes','perezfuentes@gmail.com','mantequilla'),(214,'Gustavo Adolfo','Perez Parra','perezparra@gmail.com','mantequilla'),(215,'Yuri German','Perez Peredo','perezperedo@gmail.com','mantequilla'),(216,'Daysi Del Rosario','Perez Rea','perezrea@gmail.com','mantequilla'),(217,'Jose Carlos','Perez Zubieta','perezzubieta@gmail.com','mantequilla'),(218,'Alfredo','Pericon Balderrama','periconbalderrama@gmail.com','mantequilla'),(219,'Mauricio Luis','Ponce Del Leon','poncedelleon@gmail.com','mantequilla'),(220,'Leyton Jorge','Quillaguaman','quillaguaman@gmail.com','mantequilla'),(221,'Abdon','Quiroz Chavez','quirozchavez@gmail.com','mantequilla'),(222,'Santiago','Relos Paco','pelospaco@gmail.com','mantequilla'),(223,'Luz Maya','Revollo Teran','revolloteran@gmail.com','mantequilla'),(224,'Gaston Gil','Rioja Cardenas','riojacardenas@gmail.com','mantequilla'),(225,'Juan','Rios Del Prado','riosdelprado@gmail.com','mantequilla'),(226,'Mirtha Judith','Rivero Lujan','riverolujan@gmail.com','mantequilla'),(227,'Felix Rustan','Roca Subirana','rocasubirana@gmail.com','mantequilla'),(228,'Juan Carlos','Rocha Cuadros','rochacuadros@gmail.com','mantequilla'),(229,'German','Rocha Maldonado','rochamaldonado@gmail.com','mantequilla'),(230,'Edwin Augusto','Rocha Triveño','rochatriveño@gmail.com','mantequilla'),(231,'Erika Patricia','Rodriguez Bilbao','rodriguezbilbao@gmail.com','mantequilla'),(232,'Juan Carlos','Rodriguez Ostria','rodriguezostria@gmail.com','mantequilla'),(233,'Carlos Alberto','Rodriguez Ramirez','rodriguezramirez@gmail.com','mantequilla'),(234,'Gabriel','Rodriguez Roca','rodriguezroca@gmail.com','mantequilla'),(235,'Juan Antonio','Rodriguez Sejas','rodriguezsejas@gmail.com','mantequilla'),(236,'Helmer Jimy','Rodriguez Soriano','rodriguezsoriano@gmail.com','mantequilla'),(237,'Cinthia Carola','Rojas Arnez','rojasarnez@gmail.com','mantequilla'),(238,'Jenny','Rojas Cespedes','rojascespedes@gmail.com','mantequilla'),(239,'Maria Fernanda','Rojas Michaga','rojasmichaga@gmail.com','mantequilla'),(240,'Hugo ','Rojas Salinas','rojassalinas@gmail.com','mantequilla'),(241,'Ramiro','Rojas Zurita','rojaszurita@gmail.com','mantequilla'),(242,'Manuel Fdo.','Roman Arispe','romanarispe@gmail.com','mantequilla'),(243,'Raul','Romero Encinas','romeroencinas@gmail.com','mantequilla'),(244,'Ana Maria','Romero Jaldin','romerojaldin@gmail.com','mantequilla'),(245,'Patricia','Romero Rodriguez','romerorodriguez@gmail.com','mantequilla'),(246,'Olga ','Ruiz Betancur','ruizbetancur@gmail.com','mantequilla'),(247,'Ivan','Ruiz Ucumari','ruizucumari@gmail.com','mantequilla'),(248,'Felipe Ramiro','Saavedra Antezana','saavedraantezana@gmail.com','mantequilla'),(249,'Oscar','Saca Ventura','sacaventura@gmail.com','mantequilla'),(250,'Ricardo','Sahonero Irahola','sahoneroirahola@gmail.com','mantequilla'),(251,'Rosemary','Salazar Anaya','salazaranaya@gmail.com','mantequilla'),(252,'Carla','Salazar Serrudo','salazarserrudo@gmail.com','mantequilla'),(253,'Luis Mauricio','Salinas Pereira','salinaspereira@gmail.com','mantequilla'),(254,'Walter Oscar Gonzalo','Salinas Pericon','salinaspericon@gmail.com','mantequilla'),(255,'Arturo','Saramani Aguilar','saramaniaguilar@gmail.com','mantequilla'),(256,'Ariel Antonio','Sarmiento Franco','sarmientofranco@gmail.com','mantequilla'),(257,'Angelica','Severiche Chacon','severichechacon@gmail.com','mantequilla'),(258,'Galina','Shitikov Gagarina','shitikovgagarina@gmail.com','mantequilla'),(259,'Rene Fernando','Soliz Martinez','solizmartinez@gmail.com','mantequilla'),(260,'Jose Antonio','Soruco Maita','sorucomaita@gmail.com','mantequilla'),(261,'Juan Carlos','Soto Moreira','sotomoreira@gmail.com','mantequilla'),(262,'Jose Roberto','Soto Soliz','sotosoliz@gmail.com','mantequilla'),(263,'Cesar Martin','Suarez Suarez','suarezsuarez@gmail.com','mantequilla'),(264,'Fidel','Taborga Acha','taborgaacha@gmail.com','mantequilla'),(265,'Jose Felix','Tancara Sandagorda','tancarasandagorda@gmail.com','mantequilla'),(266,'Darlong Howard','Taylor Terrazas','taylorterrazas@gmail.com','mantequilla'),(267,'Rodolfo Raul','Teran Aiza','teranaiza@gmail.com','mantequilla'),(268,'Juan','Terrazas Lobo','terrazaslobo@gmail.com','mantequilla'),(269,'Israel','Terrazas Maldonado','terrazasmaldonado@gmail.com','mantequilla'),(270,'Juan Carlos','Terrazas Vargas','terrazasvargas@gmail.com','mantequilla'),(271,'Julio Marcelo','Torrejon Rocabado','torrejonrocabado@gmail.com','mantequilla'),(272,'Epifanio Julio','Torres Navarro','torresnavarro@gmail.com','mantequilla'),(273,'Raul Wilder','Torrez Pelaez','torrezpelaez@gmail.com','mantequilla'),(274,'Edwin Teofilo','Torrez Quinteros','torrezquiteros@gmail.com','mantequilla'),(275,'Norman','Torrico Barron','torricobarron@gmail.com','mantequilla'),(276,'Rosemary','Torrico Bascope','torricobascope@gmail.com','mantequilla'),(277,'Rene','Torrico Mejia','torricomejia@gmail.com','mantequilla'),(278,'Milka Monica','Torrico Troche','torricotroche@gmail.com','mantequilla'),(279,'Sonia ','Torrico Vallejos','torricovallejos@gmail.com','mantequilla'),(280,'Ingrid Vicky','Trigo Rocha','trigorocha@gmail.com','mantequilla'),(281,'Pedro','Triveno Herrera','trivenoherrera@gmail.com','mantequilla'),(282,'Wilson Orlando','Trujillo Aranibar','trujilloaranibar@gmail.com','mantequilla'),(283,'Felix','Ugarte Cejas','ugartecejas@gmail.com','mantequilla'),(284,'Edwin Claudio','Ureña Perez','ureñaperez@gmail.com','mantequilla'),(285,'Mario','Urey Contreras','ureycontreras@gmail.com','mantequilla'),(286,'Jose A.','Urrutia Medrano','urrutiamedrano@gmail.com','mantequilla'),(287,'Jose Gabriel','Urrutia Zelada','urrutiazelada@gmail.com','mantequilla'),(288,'Victor Rene','Ustariz Aramayo','ustarizaramayo@gmail.com','mantequilla'),(289,'Hernan','Ustaris Vargas','ustarisvargas@gmail.com','mantequilla'),(290,'Roberto','Valenzuela Miranda','valenzuelamiranda@gmail.com','mantequilla'),(291,'Marco Antonio','Vallejo Camacho','vallejocamacho@gmail.com','mantequilla'),(292,'Ademar Marcelo','Vargas Antezana','vargasantezana@gmail.com','mantequilla'),(293,'Aidee','Vargas Colque','vargascolque@gmail.com','mantequilla'),(294,'Emir Felix','Vargas Peredo','vargasperedo@gmail.com','mantequilla'),(295,'Carlos Alberto','Vargas Quiroz','vargasquiroz@gmail.com','mantequilla'),(296,'Juan Carlos','Vargas Reinaga','vargasreinaga@gmail.com','mantequilla'),(297,'Luz Virginia','Vargas Vallejos','vargasvallejos@gmail.com','mantequilla'),(298,'Michael Huascar','Vasquez Carrillo','vasquezcarrillo@gmail.com','mantequilla'),(299,'Wilfredo','Vega Alfaro','vegaalfaro@gmail.com','mantequilla'),(300,'Carlos Alberto','Vera Cortes','veracortes@gmail.com','mantequilla'),(301,'Luis Antonio','Vilaseca Gamarra','vilasecagamarra@gmail.com','mantequilla'),(302,'Gilarmando','Villaroel','villaroel@gmail.com','mantequilla'),(303,'Jimmy','Villaroel Novillo','villaroelnovillo@gmail.com','mantequilla'),(304,'Henry Frank','Villaroel Tapia','villaroeltapia@gmail.com','mantequilla'),(305,'Mauricio Florencio','Villazon Gomez','villazongomez@gmail.com','mantequilla'),(306,'Yamir','Villazon Rocha','villazonrocha@gmail.com','mantequilla'),(307,'Marco Antonio','Viscarra Vargas','viscarravargas@gmail.com','mantequilla'),(308,'Oscar A. ','Zabalaga Montaño','zabalagamontaño@gmail.com','mantequilla'),(309,'Mario Grover','Zalles Medrano','zallesmedrano@gmail.com','mantequilla'),(310,'Jhomil Efrain','Zambrana Burgos','zambranaburgos@gmail.com','mantequilla'),(311,'Jose Eduardo','Zambrana Montan','zambranamontan@gmail.com','mantequilla'),(312,'Jorge','Zambrana Vilar','zambranavilar@gmail.com','mantequilla'),(313,'Maria E.','Zapata Schultze','zapataschltze@gmail.com','mantequilla'),(314,'Luis Roberto','Zegarra Dorado','zegarradorado@gmail.com','mantequilla'),(315,'Rimer Mauricio','Zurita Orellana','zuritaorellana@gmail.com','mantequilla');
/*!40000 ALTER TABLE `gestiondb_docente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gestiondb_grupo`
--

DROP TABLE IF EXISTS `gestiondb_grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gestiondb_grupo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Cod_Docente_id` bigint DEFAULT NULL,
  `Cod_Materia_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `GestionDB_grupo_Cod_Docente_id_80104cf4_fk_GestionDB_docente_id` (`Cod_Docente_id`),
  KEY `GestionDB_grupo_Cod_Materia_id_cfc732f3_fk_GestionDB_materia_id` (`Cod_Materia_id`),
  CONSTRAINT `GestionDB_grupo_Cod_Docente_id_80104cf4_fk_GestionDB_docente_id` FOREIGN KEY (`Cod_Docente_id`) REFERENCES `gestiondb_docente` (`id`),
  CONSTRAINT `GestionDB_grupo_Cod_Materia_id_cfc732f3_fk_GestionDB_materia_id` FOREIGN KEY (`Cod_Materia_id`) REFERENCES `gestiondb_materia` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gestiondb_grupo`
--

LOCK TABLES `gestiondb_grupo` WRITE;
/*!40000 ALTER TABLE `gestiondb_grupo` DISABLE KEYS */;
/*!40000 ALTER TABLE `gestiondb_grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gestiondb_materia`
--

DROP TABLE IF EXISTS `gestiondb_materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gestiondb_materia` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(60) NOT NULL,
  `Carrera` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gestiondb_materia`
--

LOCK TABLES `gestiondb_materia` WRITE;
/*!40000 ALTER TABLE `gestiondb_materia` DISABLE KEYS */;
/*!40000 ALTER TABLE `gestiondb_materia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gestiondb_reserva`
--

DROP TABLE IF EXISTS `gestiondb_reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gestiondb_reserva` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cant_Periodos` int NOT NULL,
  `fecha_Reserva` time(6) NOT NULL,
  `Fecha_Solicitud_Res` time(6) NOT NULL,
  `motivo` varchar(256) NOT NULL,
  `cant_Estudiantes` int NOT NULL,
  `Cod_Docente_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `GestionDB_reserva_Cod_Docente_id_eafeaf18_fk_GestionDB` (`Cod_Docente_id`),
  CONSTRAINT `GestionDB_reserva_Cod_Docente_id_eafeaf18_fk_GestionDB` FOREIGN KEY (`Cod_Docente_id`) REFERENCES `gestiondb_docente` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gestiondb_reserva`
--

LOCK TABLES `gestiondb_reserva` WRITE;
/*!40000 ALTER TABLE `gestiondb_reserva` DISABLE KEYS */;
/*!40000 ALTER TABLE `gestiondb_reserva` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-05  9:43:53
