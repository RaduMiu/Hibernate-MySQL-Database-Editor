-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: proiect
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `asocieri_client_cont`
--

DROP TABLE IF EXISTS `asocieri_client_cont`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asocieri_client_cont` (
  `idasociere` bigint unsigned NOT NULL AUTO_INCREMENT,
  `rolclient` varchar(45) DEFAULT NULL,
  `idclient` bigint unsigned DEFAULT NULL,
  `idcont` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`idasociere`),
  KEY `fk_asocieri_1_idx` (`idclient`),
  KEY `fk_asocieri_2_idx` (`idcont`),
  CONSTRAINT `fk_asocieri_1` FOREIGN KEY (`idclient`) REFERENCES `clienti` (`idclienti`),
  CONSTRAINT `fk_asocieri_2` FOREIGN KEY (`idcont`) REFERENCES `conturi` (`idconturi`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asocieri_client_cont`
--

LOCK TABLES `asocieri_client_cont` WRITE;
/*!40000 ALTER TABLE `asocieri_client_cont` DISABLE KEYS */;
INSERT INTO `asocieri_client_cont` VALUES (16,'titular',6,11),(20,'titular',2,12),(21,'asociatie',15,19),(22,'cotitular',9,15),(24,'titular',5,13),(27,'test',15,19);
/*!40000 ALTER TABLE `asocieri_client_cont` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clienti`
--

DROP TABLE IF EXISTS `clienti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clienti` (
  `idclienti` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nume` varchar(45) DEFAULT NULL,
  `prenume` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `telefon` varchar(45) DEFAULT NULL,
  `adresa` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idclienti`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clienti`
--

LOCK TABLES `clienti` WRITE;
/*!40000 ALTER TABLE `clienti` DISABLE KEYS */;
INSERT INTO `clienti` VALUES (1,'Mocanu','Stefan','mocanustefan@yahoo.com','0743123453','Buzau'),(2,'Iancu','Radu','iancuradu@gmail.com','0745221784','Cluj'),(3,'Gheorghe','Ioana','gheorgheioana@gmail.com','0733357193','Ploiesti'),(5,'Trache','Sorin','sorintrache@gmail.com','0765663421','Bucuresti'),(6,'Vulturu','Maria','mariavulturu@gmail.com','0789223461','Mioveni'),(9,'Ciungu','Alexia','ciungualexia@gmail.com','0754321256','Timisoara'),(13,'Miu','Radu','miu.alex@yahoo.com','0756916146','Bucuresti'),(15,'Ene','Fabian','enefabian@gmail.com','0741234573','Constanta');
/*!40000 ALTER TABLE `clienti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conturi`
--

DROP TABLE IF EXISTS `conturi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conturi` (
  `idconturi` bigint unsigned NOT NULL AUTO_INCREMENT,
  `iban` varchar(45) DEFAULT NULL,
  `sold` float DEFAULT NULL,
  `tipCont` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`idconturi`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conturi`
--

LOCK TABLES `conturi` WRITE;
/*!40000 ALTER TABLE `conturi` DISABLE KEYS */;
INSERT INTO `conturi` VALUES (11,'RO22UVCD234567890123456',100,'econimii','2014-07-19'),(12,'RO11WXYZ123456789012345',10000,'debit','2020-04-11'),(13,'RO33LMNO345678901234567',500,'econimii','2002-12-10'),(14,'RO44PQRS456789012345678',333,'investitii','2015-04-02'),(15,'RO55TUVW567890123456789',760,'debit','2018-10-10'),(16,'RO66ABCD678901234567890',450.5,'econimii','1900-02-02'),(17,'RO77EFGH789012345678901',200.6,'debit','2022-04-10'),(18,'RO88IJKL890123456789012',1432,'investitii','2012-11-05'),(19,'RO99MNOP901234567890123',361,'investitii','2023-09-07');
/*!40000 ALTER TABLE `conturi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-06 10:10:56
