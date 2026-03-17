-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: sistem_mahasiswa
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

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
-- Table structure for table `krs`
--

DROP TABLE IF EXISTS `krs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krs` (
  `NPM` varchar(10) DEFAULT NULL,
  `ID_matkul` int(11) DEFAULT NULL,
  `Nilai` int(11) DEFAULT NULL,
  KEY `NPM` (`NPM`),
  KEY `ID_matkul` (`ID_matkul`),
  CONSTRAINT `krs_ibfk_1` FOREIGN KEY (`NPM`) REFERENCES `mahasiswa` (`NPM`),
  CONSTRAINT `krs_ibfk_2` FOREIGN KEY (`ID_matkul`) REFERENCES `mata_kuliah` (`ID_matkul`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krs`
--

LOCK TABLES `krs` WRITE;
/*!40000 ALTER TABLE `krs` DISABLE KEYS */;
INSERT INTO `krs` VALUES ('24001',1,88),('24001',2,85),('24002',1,82),('24002',3,90),('24003',2,87),('24003',4,80),('24004',1,78),('24004',5,92),('24005',3,85),('24005',2,89),('24006',2,84),('24006',8,86),('24007',3,88),('24007',8,81),('24008',4,79),('24008',2,83),('24009',2,91),('24009',3,87),('24010',8,85),('24010',4,82),('24011',6,80),('24011',7,84),('24012',7,86),('24012',6,81),('24013',6,88),('24013',4,83),('24014',7,85),('24014',1,79),('24015',6,82),('24015',5,87),('24016',5,90),('24016',2,84),('24017',5,92),('24017',3,88),('24018',5,89),('24018',4,85),('24019',2,83),('24019',6,81),('24020',3,87),('24020',7,86);
/*!40000 ALTER TABLE `krs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mahasiswa`
--

DROP TABLE IF EXISTS `mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mahasiswa` (
  `NPM` varchar(10) NOT NULL,
  `Nama` varchar(100) DEFAULT NULL,
  `Jurusan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`NPM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahasiswa`
--

LOCK TABLES `mahasiswa` WRITE;
/*!40000 ALTER TABLE `mahasiswa` DISABLE KEYS */;
INSERT INTO `mahasiswa` VALUES ('24001','Ajax','Informatika'),('24002','Benjamin','Informatika'),('24003','Cornellius','Informatika'),('24004','David','Informatika'),('24005','Elenore','Informatika'),('24006','Ferden','Sistem Informasi'),('24007','Gisseppe','Sistem Informasi'),('24008','Halima','Sistem Informasi'),('24009','Ivo','Sistem Informasi'),('24010','Joseph','Sistem Informasi'),('24011','Kevin','Teknik Komputer'),('24012','Liam','Teknik Komputer'),('24013','Mira','Teknik Komputer'),('24014','Noire','Teknik Komputer'),('24015','Omane','Teknik Komputer'),('24016','Peter','Data Science'),('24017','Qonita','Data Science'),('24018','Ruth','Data Science'),('24019','Saphire','Teknologi Informasi'),('24020','Tony','Teknologi Informasi');
/*!40000 ALTER TABLE `mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mata_kuliah`
--

DROP TABLE IF EXISTS `mata_kuliah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mata_kuliah` (
  `ID_matkul` int(11) NOT NULL,
  `Nama_matkul` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_matkul`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mata_kuliah`
--

LOCK TABLES `mata_kuliah` WRITE;
/*!40000 ALTER TABLE `mata_kuliah` DISABLE KEYS */;
INSERT INTO `mata_kuliah` VALUES (1,'Algoritma'),(2,'Basis Data'),(3,'Pemrograman Web'),(4,'Struktur Data'),(5,'Machine Learning'),(6,'Jaringan Komputer'),(7,'Sistem Operasi'),(8,'Manajemen TI');
/*!40000 ALTER TABLE `mata_kuliah` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-18  0:53:14
