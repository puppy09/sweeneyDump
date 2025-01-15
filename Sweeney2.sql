-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: db_sweeney
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `tb_categorias`
--

DROP TABLE IF EXISTS `tb_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_categorias` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `presupuesto` float NOT NULL,
  `id_user` int NOT NULL,
  `estatus` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_categorias`
--

LOCK TABLES `tb_categorias` WRITE;
/*!40000 ALTER TABLE `tb_categorias` DISABLE KEYS */;
INSERT INTO `tb_categorias` VALUES (1,'Comida',30,1,2),(3,'Servicios',30,2,1),(4,'Carls\'JR',700,2,1),(5,'Ropa',30,2,2),(6,'Ocio',30,2,2),(7,'Megacable',40,2,2),(8,'Videojuegos',30,2,2),(9,'Seguro',50,2,1),(11,'Categoria Prueba',10,6,1),(17,'El Tom Nook',300,2,1),(18,'La canela',200,2,1),(19,'La canela 2',200,2,1),(20,'La canela 3',200,2,1),(21,'Barbie Dolls',1500,2,1),(22,'Cartoon Network',600,2,1),(23,'Streaming HBO',400,2,1),(24,'CLUB PENGUIN',300,2,1),(25,'Netflix',400,2,1),(26,'Manzanita',600,2,2),(27,'Renta',4000,1,1),(28,'Renta',4500,12,1),(29,'Servicios',4500,12,1),(30,'Comida',5000,15,1);
/*!40000 ALTER TABLE `tb_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_categoriasgrupo`
--

DROP TABLE IF EXISTS `tb_categoriasgrupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_categoriasgrupo` (
  `id_categoria` int NOT NULL AUTO_INCREMENT,
  `id_grupo` int NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `id_creador` int NOT NULL,
  `presupuesto` float DEFAULT NULL,
  `estatus` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_categoriasgrupo`
--

LOCK TABLES `tb_categoriasgrupo` WRITE;
/*!40000 ALTER TABLE `tb_categoriasgrupo` DISABLE KEYS */;
INSERT INTO `tb_categoriasgrupo` VALUES (1,1,'LPS Viajes',2,50,1),(2,1,'Sims 4',2,60,2),(3,1,'Renta',2,5600,1),(4,1,'Servicios',2,4000,1),(5,1,'Mandado',2,3900,1),(6,1,'Categoria de Andrik 2',1,400,2),(7,1,'Internet',1,460,2),(8,1,'Categoria Prueba',1,400,2);
/*!40000 ALTER TABLE `tb_categoriasgrupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_corte_mensual`
--

DROP TABLE IF EXISTS `tb_corte_mensual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_corte_mensual` (
  `id_corte` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `mes` date NOT NULL,
  `total` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_corte`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_corte_mensual`
--

LOCK TABLES `tb_corte_mensual` WRITE;
/*!40000 ALTER TABLE `tb_corte_mensual` DISABLE KEYS */;
INSERT INTO `tb_corte_mensual` VALUES (1,2,'2024-11-01',1000),(2,2,'2024-11-01',1000),(3,2,'2024-11-01',1111),(4,2,'2024-11-01',1000),(5,2,'2024-11-01',10),(6,2,'2024-11-01',111),(7,2,'2024-11-01',1),(8,2,'2024-11-01',200),(9,2,'2024-11-01',10),(10,2,'2024-11-01',300),(11,2,'2024-12-01',900),(12,2,'2024-12-01',4000),(13,2,'2024-12-01',800),(14,2,'2024-12-01',500);
/*!40000 ALTER TABLE `tb_corte_mensual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_cuentas`
--

DROP TABLE IF EXISTS `tb_cuentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_cuentas` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `no_cuenta` varchar(45) NOT NULL,
  `fecha_vencimiento` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `saldo` float NOT NULL,
  `id_usuario` int NOT NULL,
  `estatus` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_cuentas`
--

LOCK TABLES `tb_cuentas` WRITE;
/*!40000 ALTER TABLE `tb_cuentas` DISABLE KEYS */;
INSERT INTO `tb_cuentas` VALUES (1,'12345678','12345','ahorros',3.09,1,0),(3,'41414145','12/33','Cuenta Vieja',52968,2,1),(5,'3131314','12/33','Cuenta de Ahorros',2872,2,2),(6,'424242','12/24','Cuenta de Inversiones',105000,2,2),(7,'1234','12/22','Cuenta 1',16000,2,2),(8,'2345','12/33','Cuenta 2',700,2,2),(9,'8798123412345890','12/30','Cuenta Prueba',0,2,2),(10,'0983735769012378','12/27','Cuenta Prueba 2',0,2,2),(11,'2134541359138374','01/25','Cuenta 1',20000,8,1),(12,'7847317391831939','12/34','Cuenta 2',0,8,1),(13,'8576903457869912','09/26','Cuenta 3',0,8,1),(14,'7364598712359689','12/55','Cuenta 4',0,8,1),(15,'1234589827134512','12/25','cuenta orueba',6000,2,2),(16,'1234728194782094','09/72','Cuenta X',1100,2,2),(17,'3442857821234523','12/56','Cuenta Nómina',3000,1,1),(18,'CUENTA PRUEBA','12/43','22287878778787787878',0,2,2),(19,'231315433333333','12/34','CUENTA DE PRUEBA',0,2,2),(20,'2213454375863859','09/25','Cuenta Prueba Revision',0,2,1),(21,'8736847362345728746','12/37','Cuenta Prueba 2',0,2,1),(22,'1234567890123456','12/45','Cuenta de Andrik',9700,12,1),(23,'1234567890123458','12/30','Cuenta Revision',9800,15,1),(24,'4728472648591647','12/40','Cuenta Revision 2',50000,15,1);
/*!40000 ALTER TABLE `tb_cuentas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_estatus`
--

DROP TABLE IF EXISTS `tb_estatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_estatus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `estatus` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_estatus`
--

LOCK TABLES `tb_estatus` WRITE;
/*!40000 ALTER TABLE `tb_estatus` DISABLE KEYS */;
INSERT INTO `tb_estatus` VALUES (1,'Activo'),(2,'Inactivo');
/*!40000 ALTER TABLE `tb_estatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_estatuspagos`
--

DROP TABLE IF EXISTS `tb_estatuspagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_estatuspagos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `estatus_pagos` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_estatuspagos`
--

LOCK TABLES `tb_estatuspagos` WRITE;
/*!40000 ALTER TABLE `tb_estatuspagos` DISABLE KEYS */;
INSERT INTO `tb_estatuspagos` VALUES (1,'pendiente'),(2,'liquidado'),(3,'reembolsado');
/*!40000 ALTER TABLE `tb_estatuspagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_grupos`
--

DROP TABLE IF EXISTS `tb_grupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_grupos` (
  `id_grupo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `id_creador` int NOT NULL,
  `fondos` float NOT NULL DEFAULT '0',
  `token` varchar(12) NOT NULL,
  PRIMARY KEY (`id_grupo`,`token`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_grupos`
--

LOCK TABLES `tb_grupos` WRITE;
/*!40000 ALTER TABLE `tb_grupos` DISABLE KEYS */;
INSERT INTO `tb_grupos` VALUES (1,'TERNURINESSS','xdddddd',2,76620.3,'bfc0aaebf1fe'),(2,'Cundina para comprar LPS','Pos una cundina para conprar LPS',1,0,'2a34efef81b1'),(3,'Casa','Grupo para gestionar los gastos de la casa',1,0,'55bf199a2b9f'),(4,'Escuela','Aqui se gestionara la escuela',2,0,'a14eca5e921f'),(8,'XD','un grupo muy xd',2,0,'887d07e00a54'),(9,'Prueba de Form DATA','UNA PRUEBA A VER SI JALA EL FORM DATA',2,0,'62a3ccbb2af0'),(10,'Revision','Estoy revisando :c',15,0,'aafaf35a4efb'),(11,'Grupo 2 ','Descripcion',15,0,'fbe8b482015b');
/*!40000 ALTER TABLE `tb_grupos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_miembrosgrupos`
--

DROP TABLE IF EXISTS `tb_miembrosgrupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_miembrosgrupos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_grupo` int NOT NULL,
  `id_usuario` int NOT NULL,
  `id_estatus` int NOT NULL DEFAULT '1',
  `tipo_usuario` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_miembrosgrupos`
--

LOCK TABLES `tb_miembrosgrupos` WRITE;
/*!40000 ALTER TABLE `tb_miembrosgrupos` DISABLE KEYS */;
INSERT INTO `tb_miembrosgrupos` VALUES (1,1,2,1,'CREADOR'),(2,1,1,1,'MIEMBRO'),(3,2,1,1,'CREADOR'),(4,3,1,1,'CREADOR'),(5,3,2,1,'MIEMBRO'),(6,4,2,1,'CREADOR'),(7,5,10,1,'CREADOR'),(10,8,2,1,'CREADOR'),(11,9,2,1,'CREADOR'),(12,10,15,1,'CREADOR'),(13,11,15,1,'CREADOR');
/*!40000 ALTER TABLE `tb_miembrosgrupos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_movimientos`
--

DROP TABLE IF EXISTS `tb_movimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_movimientos` (
  `id_movimiento` int NOT NULL AUTO_INCREMENT,
  `id_pago` int DEFAULT '0',
  `id_usuario` int NOT NULL,
  `no_cuenta` varchar(20) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `monto` float NOT NULL,
  `fecha` date NOT NULL,
  `tipo_movimiento` int NOT NULL,
  PRIMARY KEY (`id_movimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_movimientos`
--

LOCK TABLES `tb_movimientos` WRITE;
/*!40000 ALTER TABLE `tb_movimientos` DISABLE KEYS */;
INSERT INTO `tb_movimientos` VALUES (1,0,2,'41414145','El Sims 4 Urbanitas',1600,'2024-10-16',2),(2,0,2,'41414145','El Sims 4 Cats and Dogs',10000,'2024-10-16',2),(3,0,2,'41414145','El Sims 4 Cats and Dogs',10000,'2024-10-16',2),(4,0,2,'41414145','El Sims 4 Cats and Dogs',10000,'2024-10-16',2),(5,0,2,'41414145','El Sims 4 Cats and Dogs',10000,'2024-10-16',2),(6,22,2,'41414145','El Sims 4 Vampirtos',300,'2024-10-16',2),(7,0,2,'41414145','Reembolso de pago',1600.12,'2024-10-16',1),(8,0,2,'41414145','Reembolso de pago',1600.12,'2024-10-16',1),(9,0,2,'41414145','Reembolso de pago',1600.12,'2024-10-16',1),(10,0,2,'41414145','Ajuste de pago',6000,'2024-10-17',1),(11,0,2,'41414145','Ajuste de pago',2000,'2024-10-17',1),(12,0,2,'41414145','Ajuste de pago',2000,'2024-10-17',1),(13,0,2,'41414145','Ajuste de pago',10000,'2024-10-18',1),(14,0,2,'41414145','Ajuste de pago',10000,'2024-10-18',1),(15,0,2,'41414145','Ajuste de pago',10000,'2024-10-18',1),(16,0,2,'41414145','Ajuste de pago',20000,'2024-10-18',1),(17,0,2,'41414145','Ajuste de pago',9000,'2024-10-18',1),(18,0,2,'41414145','Ajuste de pago',3000,'2024-10-18',1),(19,0,2,'41414145','Ajuste de pago',900,'2024-10-18',1),(20,0,2,'41414145','Ajuste de pago',20000,'2024-10-18',1),(21,0,2,'41414145','Ajuste de pago',5000,'2024-10-18',1),(22,0,2,'41414145','Ajuste de Pago - Reembolso',5000,'2024-10-18',3),(23,0,2,'41414145','Ajuste de Pago - Reembolso',14000,'2024-10-18',3),(24,23,2,'41414145','Prueba de no fondos',800000,'2024-10-18',2),(25,24,2,'41414145','Prueba de no fondos',800000,'2024-10-18',2),(26,0,2,'41414145','Adicion de fondos al grupo 1',200,'2024-10-20',2),(27,0,2,'41414145','Adicion de fondos al grupo 1',1000,'2024-10-22',2),(28,0,1,'12345678','Adicion de fondos al grupo 1',120,'2024-10-28',2),(29,26,2,'41414145','una 4090 si señor',160,'2024-11-06',2),(30,27,2,'41414145','COMPRAS NAVIDEÑAS DE ALIEXPRESS',1700.12,'2024-11-08',2),(31,0,2,'3131314','Dineros',17000,'2024-11-08',1),(32,0,2,'3131314','Dineros',10000,'2024-11-08',1),(33,0,2,'3131314','Dineros',10000,'2024-11-10',1),(34,29,2,'3131314','',1000,'2024-11-13',2),(35,28,2,'3131314','',1000,'2024-11-13',2),(36,30,2,'3131314','PRUEBA ANGULAR',1000,'2024-11-13',2),(37,31,2,'3131314','PRUEBA ANGULAR',1000,'2024-11-13',2),(38,32,2,'3131314','prueba 2',100,'2024-11-13',2),(39,33,2,'3131314','prueba 2',100,'2024-11-13',2),(40,34,2,'3131314','PRUEBA 3',1000,'2024-11-13',2),(41,35,2,'3131314','PRUEBA 3',900,'2024-11-13',2),(42,36,2,'3131314','1111',1000,'2024-11-13',2),(43,37,2,'3131314','1111',1000,'2024-11-13',2),(44,39,2,'3131314','Prueba pago programado',100,'2024-11-13',2),(45,38,2,'3131314','Prueba pago programado',100,'2024-11-13',2),(46,40,2,'3131314','Prueba pago programado',100,'2024-11-13',2),(47,41,2,'3131314','Prueba pago programado',100,'2024-11-13',2),(48,43,2,'3131314','Prueba pago programado',100,'2024-11-13',2),(49,42,2,'3131314','Prueba pago programado',100,'2024-11-13',2),(50,44,2,'3131314','Prueba Pago Programado',100,'2024-11-13',2),(51,45,2,'3131314','Prueba Pago Programado',100,'2024-11-13',2),(52,46,2,'3131314','Pago',200,'2024-11-13',2),(53,47,2,'3131314','Pago',200,'2024-11-13',2),(54,48,2,'3131314','lola',100,'2024-11-13',2),(55,49,2,'3131314','lola',100,'2024-11-13',2),(56,50,2,'3131314','descripocion',10,'2024-11-13',2),(57,51,2,'3131314','descripocion',10,'2024-11-13',2),(58,52,2,'3131314','descripocion',10,'2024-11-13',2),(59,53,2,'3131314','descripocion',10,'2024-11-13',2),(60,54,2,'3131314','LOLA2',100,'2024-11-13',2),(61,0,2,'41414145','Este es un deposito de prueba',500.5,'2024-11-13',1),(62,55,2,'1234','Animal Crossing',1000,'2024-11-15',2),(63,56,2,'2345','Prueba Depositos update',3000,'2024-11-15',2),(64,0,2,'2345','Reembolso de pago',1000,'2024-11-15',3),(65,57,2,'0983735769012378','PRUEBA DE ACTUALIZACION 2',199,'2024-11-16',2),(66,0,2,'41414145','Ajuste de monto de pago con ID 57',80000,'2024-11-16',1),(67,0,2,'41414145','Ajuste de pago - Reembolso',80000,'2024-11-16',3),(68,0,2,'41414145','Ajuste de monto de pago con ID 56',2000,'2024-11-16',2),(69,0,2,'41414145','a ver si si',1000,'2024-11-18',1),(70,0,2,'424242','OTROS DINEROS',100000,'2024-11-18',1),(71,0,8,'2134541359138374','Ingreso ',10000,'2024-11-19',1),(72,0,2,'1234','Quincena',5000,'2024-11-20',1),(73,0,2,'3131314','Ajuste de monto de pago con ID 34',100,'2024-11-20',2),(74,0,2,'41414145','Ajuste de pago - Reembolso',9900,'2024-11-20',3),(75,0,2,'41414145','Reembolso de pago',100,'2024-11-20',3),(76,0,2,'1234589827134512','añadir fondos',10000,'2024-11-20',1),(77,0,2,'41414145','Ajuste de monto de pago con ID 57',99900,'2024-11-20',2),(78,0,2,'41414145','Ajuste de pago - Reembolso',99000,'2024-11-20',3),(79,0,2,'41414145','Ajuste de pago - Reembolso',801,'2024-11-20',3),(80,58,2,'1234','Pagos programados jadjadj',200,'2024-11-20',2),(81,0,2,'8798123412345890','Pago',1000,'2024-11-20',1),(82,0,2,'1234','xddd',10000,'2024-11-20',1),(83,0,2,'1234','Reembolso de pago',200,'2024-11-21',3),(84,0,2,'1234','Reembolso de pago',1000,'2024-11-21',3),(85,0,2,'3131314','Reembolso de pago',100,'2024-11-21',3),(86,59,2,'8798123412345890','Compra de medicamentos',1000,'2024-11-22',2),(87,0,2,'8798123412345890','Reembolso de pago',1000,'2024-11-22',3),(88,60,2,'1234728194782094','Prueba gasto Mensual',900,'2024-11-23',2),(89,61,2,'41414145','Prueba gasto mensual',900,'2024-11-23',2),(90,62,2,'41414145','prueba pagos mensuales',900,'2024-11-23',2),(91,63,2,'3131314','Prueba gasto mensual',1000,'2024-11-23',2),(92,64,2,'3131314','prueba 2 pago mensual',900,'2024-11-23',2),(93,65,2,'3131314','Prueba gasto Mensual',1000,'2024-11-23',2),(94,66,2,'3131314','Prueba 2 gasto mensual',500,'2024-11-23',2),(95,67,2,'3131314','Prueba nueva',1000,'2024-11-23',2),(96,68,2,'3131314','prueba nueva 2',1000,'2024-11-23',2),(97,69,2,'3131314','Prueba',1200,'2024-11-23',2),(98,70,2,'3131314','Prueba nueva',800,'2024-11-23',2),(99,71,2,'3131314','Prueba nueva',1000,'2024-11-23',2),(100,72,2,'3131314','prueba 2',1000,'2024-11-23',2),(101,73,2,'3131314','prueba 10',1000,'2024-11-23',2),(102,74,2,'3131314','prueba 1001',900,'2024-11-23',2),(103,75,2,'3131314','PRUEBA JSJSJ',1000,'2024-11-23',2),(104,76,2,'3131314','PRUEBA',1000,'2024-11-23',2),(105,77,2,'3131314','XDDD',1000,'2024-11-23',2),(106,78,2,'3131314','XDO',1000,'2024-11-23',2),(107,0,2,'3131314','Adicion de fondos al grupo TERNURINESSS',100,'2024-11-26',2),(108,0,2,'3131314','Adicion de fondos al grupo TERNURINESSS',4000,'2024-11-26',2),(109,0,2,'3131314','Adicion de fondos al grupo TERNURINESSS',6000,'2024-11-26',2),(110,79,2,'3131314','prueba',1111,'2024-11-27',2),(111,80,2,'41414145','zddddd',1000,'2024-11-27',2),(112,81,2,'41414145','prueba de pago',10,'2024-11-27',2),(113,82,2,'41414145','xd',111,'2024-11-27',2),(114,83,2,'41414145','xdddd',1,'2024-11-27',2),(115,84,2,'41414145','xd',200,'2024-11-27',2),(116,85,2,'2345','Prueba movimiento',300,'2024-11-30',2),(117,0,2,'2345','Ajuste de monto de pago con ID 85',90,'2024-11-30',2),(118,0,2,'2345','Ajuste de monto de pago con ID 85',100,'2024-11-30',2),(119,0,2,'2345','Ajuste de monto de pago con ID 85',100,'2024-11-30',2),(120,86,2,'3131314','prueba selects',300,'2024-11-30',2),(121,87,2,'3131314','Control PRO',900,'2024-12-01',2),(122,88,2,'1234589827134512','PC Geimer',4000,'2024-12-01',2),(123,89,2,'41414145','Perfume de Mamá',800,'2024-12-01',2),(124,91,2,'3131314','Amigo Kit de Telcel',500,'2024-12-01',2),(125,92,2,'41414145','Videojuego',1000,'2024-12-01',2),(126,93,2,'41414145','El iTunes',1000,'2024-12-01',2),(127,94,2,'41414145','Prueba del iTunes',100,'2024-12-01',2),(128,0,2,'41414145','Reembolso de pago',900,'2024-12-01',3),(129,95,2,'8798123412345890','Prueba',1000,'2024-12-02',2),(130,0,8,'2134541359138374','Ingreso Programado',10000,'2024-12-02',1),(131,96,2,'41414145','Prueba 2',10000,'2024-12-02',2),(132,0,2,'3131314','Adicion de fondos al grupo TERNURINESSS',1000,'2024-12-02',2),(133,97,2,'3131314','jalan esto?',100,'2024-12-02',2),(134,0,2,'41414145','Deposito de auxilio',90000,'2024-12-02',1),(135,98,2,'41414145','ya jalan los selects?',400,'2024-12-02',2),(136,99,2,'41414145','Pago nuevo Form 2',1,'2024-12-03',2),(137,100,2,'41414145','PAGO PRUEBA FORMS 2',300,'2024-12-03',2),(138,101,2,'41414145','PAGO FORMS 3',1,'2024-12-03',2),(139,102,2,'41414145','PRUEBA FORMS',6,'2024-12-03',2),(140,103,2,'41414145','prueba de 3 pesos',3,'2024-12-03',2),(141,0,2,'41414145','Prueba Fondos',1,'2024-12-03',1),(142,0,2,'3131314','Prueba de Fondos 2',3,'2024-12-03',1),(143,104,2,'41414145','Prueba redireccion',1,'2024-12-03',2),(144,0,2,'41414145','Ajuste de monto de pago con ID 90',100,'2024-12-03',2),(145,0,2,'3131314','Adicion de fondos al grupo TERNURINESSS',1000,'2024-12-03',2),(146,0,2,'41414145','Adicion de fondos al grupo TERNURINESSS',1000,'2024-12-03',2),(147,0,2,'41414145','prueba',1000,'2024-12-03',1),(148,0,2,'41414145','Adicion de fondos al grupo TERNURINESSS',1000,'2024-12-03',2),(149,0,2,'41414145','Quincena',14000,'2024-12-04',1),(150,105,12,'1234567890123456','Pago de Luz',1500,'2024-12-04',2),(151,0,12,'1234567890123456','Reembolso de pago',1200,'2024-12-04',3),(152,0,12,'1234567890123456','Ajuste de monto de pago con ID 105',300,'2024-12-04',2),(153,0,2,'41414145','Adicion de fondos al grupo TERNURINESSS',10000,'2024-12-04',2),(154,0,2,'41414145','Adicion de fondos al grupo TERNURINESSS',10000,'2024-12-04',2),(155,0,2,'41414145','Adicion de fondos al grupo TERNURINESSS',15000,'2024-12-04',2),(156,0,2,'41414145','Adicion de fondos al grupo TERNURINESSS',10000,'2024-12-04',2),(157,106,15,'1234567890123458','Cena Tacos Nuevamente',500,'2024-12-04',2),(158,0,15,'1234567890123458','Reembolso de pago',300,'2024-12-04',3),(159,0,15,'1234567890123458','Ajuste de monto de pago con ID 106',200,'2024-12-04',2);
/*!40000 ALTER TABLE `tb_movimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_movimientosgrupal`
--

DROP TABLE IF EXISTS `tb_movimientosgrupal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_movimientosgrupal` (
  `id_movimiento` int NOT NULL AUTO_INCREMENT,
  `id_grupo` int NOT NULL,
  `id_usuario` int NOT NULL,
  `tipo_movimiento` int NOT NULL,
  `id_pago` int DEFAULT NULL,
  `no_cuenta` varchar(20) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `monto` float NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id_movimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_movimientosgrupal`
--

LOCK TABLES `tb_movimientosgrupal` WRITE;
/*!40000 ALTER TABLE `tb_movimientosgrupal` DISABLE KEYS */;
INSERT INTO `tb_movimientosgrupal` VALUES (1,1,2,1,0,'41414145','Adicion de fondos del usuario 2',100,'2024-10-20'),(2,1,2,1,0,'41414145','Adicion de fondos del usuario 2',100,'2024-10-20'),(3,1,2,1,0,'41414145','Adicion de fondos del usuario 2',200,'2024-10-20'),(4,1,2,2,1,'41414145','Esto es un testeo 3',500,'2024-10-20'),(7,1,2,1,1,'4141415','Ajuste de monto de pago con ID 1',99.5,'2024-10-20'),(8,1,2,2,1,'4141415','Ajuste de monto de pago con ID 1',499,'2024-10-20'),(9,1,2,3,1,'41414145','Reembolso de pago con ID 1',500,'2024-10-20'),(10,1,2,2,2,'41414145','Ternuri Accesorios',199,'2024-10-20'),(11,1,2,3,2,'41414145','Reembolso de pago con ID 2',199,'2024-10-20'),(12,1,2,2,3,'41414145','Pago programado de prueba',1000.1,'2024-10-22'),(13,1,2,2,4,'41414145','Pago programado de prueba',1000.1,'2024-10-22'),(14,1,2,3,0,'41414145','Ajuste de Pago - Reembolso',2000.5,'2024-10-22'),(15,1,2,1,0,'41414145','Adicion de fondos del usuario 2',1000,'2024-10-22'),(16,1,2,1,0,'41414145','Adicion de fondos del usuario 2',1000,'2024-10-22'),(17,1,2,1,0,'41414145','Adicion de fondos del usuario 2',1000,'2024-10-22'),(18,1,2,1,0,'41414145','Adicion de fondos del usuario 2',1000,'2024-10-22'),(19,1,2,1,0,'41414145','Adicion de fondos del usuario 2',1000,'2024-10-22'),(20,1,1,1,0,'12345678','Adicion de fondos del usuario 1',120,'2024-10-28'),(21,1,2,2,5,'41414145','Pago programado de prueba',1000,'2024-10-30'),(22,1,2,2,6,'41414145','Pago programado de prueba',1000,'2024-10-30'),(23,1,2,2,7,'41414145','Pago programado de prueba',1000,'2024-10-30'),(24,1,2,2,8,'41414145','Pago programado de prueba',1000,'2024-10-30'),(25,1,2,1,0,'41414145','Adicion de fondos del usuario 2',1000,'2024-11-22'),(26,1,2,2,9,'','Pago programado prueba',100,'2024-11-26'),(27,1,2,2,10,'','pago normal prueba',1000,'2024-11-26'),(28,1,2,1,0,'3131314','pago normal prueba',100,'2024-11-26'),(29,1,2,1,0,'3131314','pago normal prueba 2',4000,'2024-11-26'),(30,1,2,1,0,'3131314','deposito normal',6000,'2024-11-26'),(31,1,2,2,11,'1234728194782094','PAGO YYY',500,'2024-11-30'),(33,1,2,1,11,'1234728194782094','Ajuste de monto de pago con ID 11',400,'2024-11-30'),(34,1,2,3,0,'41414145','Ajuste de Pago - Reembolso',6000,'2024-11-30'),(35,1,2,2,12,'','a ver si jala esto de los selects',1000,'2024-11-30'),(36,1,2,2,13,'','a ver si jalan los slects ottra vez',400,'2024-12-02'),(37,1,2,1,0,'3131314','YA LO ARREGLE?',1000,'2024-12-02'),(38,1,2,1,0,'3131314','prueba',1000,'2024-12-03'),(39,1,2,1,0,'41414145','prueba',1000,'2024-12-03'),(40,1,2,1,0,'41414145','prueba grupal fondos',1000,'2024-12-03'),(41,1,2,2,14,'41414145','prueba pago grupal grupal',1500,'2024-12-03'),(42,1,2,2,14,'41414145','Ajuste de monto de pago con ID 14',500,'2024-12-03'),(43,1,2,3,0,'41414145','Ajuste de Pago - Reembolso',6000,'2024-12-03'),(44,1,2,3,0,'41414145','Ajuste de Pago - Reembolso',6000,'2024-12-03'),(45,1,2,1,0,'41414145','Dinero pa la familia',10000,'2024-12-04'),(46,1,2,1,0,'41414145','Dinero al grupo',10000,'2024-12-04'),(47,1,2,1,0,'41414145','Prueba de Fondos',15000,'2024-12-04'),(48,1,2,1,0,'41414145','Prueba Fondos 3',10000,'2024-12-04');
/*!40000 ALTER TABLE `tb_movimientosgrupal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_movimientosprogramados`
--

DROP TABLE IF EXISTS `tb_movimientosprogramados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_movimientosprogramados` (
  `id_movimientoprogramado` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `no_cuenta` varchar(20) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `monto` float NOT NULL,
  `dia` int NOT NULL,
  `estatus` int NOT NULL,
  PRIMARY KEY (`id_movimientoprogramado`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_movimientosprogramados`
--

LOCK TABLES `tb_movimientosprogramados` WRITE;
/*!40000 ALTER TABLE `tb_movimientosprogramados` DISABLE KEYS */;
INSERT INTO `tb_movimientosprogramados` VALUES (1,2,'41414145','Veamos si funciona esto',9999,20,1),(2,2,'3131314','Dineros',5000,10,1),(3,2,'41414145','a ver si jala',10000,10000,2),(4,8,'2134541359138374','Ingreso Programado',10000,2,1),(5,2,'424242','Quincena',10000,15,2),(6,2,'1234','Quincena',5000,2,2),(7,2,'41414145','PAGO Programado prueba de fondos',20000,3,2),(8,2,'41414145','XD',5000,19,2),(9,2,'1234','Quincena de prueba',5000,18,2),(10,2,'41414145','TOM NOOK',3000,14,2),(11,2,'41414145','Prueba',1000,4,2),(12,2,'41414145','Okkk',5000,4,2),(13,2,'41414145','okkk',9000,4,2),(14,2,'41414145','prueba dias',700,1,2),(15,2,'41414145','Prueba programados',500,31,1),(16,12,'1234567890123456','Quincena',20000,12,1),(17,15,'1234567890123458','Quincena',20000,3,1);
/*!40000 ALTER TABLE `tb_movimientosprogramados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_movimientosprogramados_grupal`
--

DROP TABLE IF EXISTS `tb_movimientosprogramados_grupal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_movimientosprogramados_grupal` (
  `id_movimiento` int NOT NULL AUTO_INCREMENT,
  `id_grupo` int NOT NULL,
  `id_usuario` int NOT NULL,
  `no_cuenta` varchar(20) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `monto` float NOT NULL,
  `dia` int NOT NULL,
  `estatus` int NOT NULL,
  PRIMARY KEY (`id_movimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_movimientosprogramados_grupal`
--

LOCK TABLES `tb_movimientosprogramados_grupal` WRITE;
/*!40000 ALTER TABLE `tb_movimientosprogramados_grupal` DISABLE KEYS */;
INSERT INTO `tb_movimientosprogramados_grupal` VALUES (1,1,2,'41414145','prueba',50000,5,1),(2,1,2,'3131314','prueba fondos programados',1000,15,2),(3,1,2,'3131314','YA LO ARREGLE 2?',1000,10,1);
/*!40000 ALTER TABLE `tb_movimientosprogramados_grupal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_negocios`
--

DROP TABLE IF EXISTS `tb_negocios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_negocios` (
  `id_negocio` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `tipo_negocio` int DEFAULT NULL,
  `id_creador` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_negocio`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_negocios`
--

LOCK TABLES `tb_negocios` WRITE;
/*!40000 ALTER TABLE `tb_negocios` DISABLE KEYS */;
INSERT INTO `tb_negocios` VALUES (1,'Amazon',1,0),(2,'Aliexpress',1,0),(3,'MercadoLibre',1,0),(4,'ebay',1,0),(5,'McDonalds',3,0),(6,'Burger King',3,0),(7,'CFE',4,0),(8,'JAPAMA',4,0),(9,'Netflix',5,0),(10,'Amazon Prime',5,0),(11,'HBO Max',5,0),(12,'Paramount +',5,0),(13,'Liverpool',2,0),(14,'Sears',2,0),(15,'Gamepass',6,0),(16,'Home Depot',2,0),(17,'Office Depot',2,0),(18,'Carls Jr',3,0),(19,'Megacable',4,0),(20,'Totalplay',4,0),(21,'Telmex',4,0),(22,'Walmart',2,0),(23,'Bodega Aurrera',2,0),(24,'Soriana',2,0),(25,'Oxxo',2,0),(26,'Steam',6,0),(27,'EA',6,0),(28,'Starbucks',3,0),(29,'Caffenio',3,0),(30,'Cinemex',7,0),(31,'Cinepolis',7,0),(32,'Waldos',2,0),(33,'Italian Coffee',3,0),(34,'Nay Ramen',3,0),(35,'Nintendo Switch Online',6,0),(36,'Play Station Network',6,0),(37,'Temu',1,0),(38,'Microsoft 365',12,0),(39,'Disney +',5,0),(40,'Chevron',11,0),(41,'Banorte',8,0),(42,'Nu',8,0),(43,'Santander',8,0),(44,'Banamex',8,0),(45,'BBVA',8,0),(46,'KFC',3,0),(47,'Farmacia del Ahorro',10,0),(48,'Uber',11,0),(49,'Uber eats',3,0),(50,'Didi',11,0),(51,'Didi Food',3,0),(52,'Crunchyroll',5,0),(53,'YouTube Premium',5,0),(54,'Suburbia',2,0),(55,'Apple Store',2,0),(56,'C&A',2,0),(57,'iTunes',5,0),(58,'Spotify',5,0),(59,'Telcel',9,0),(60,'AT&T',9,0),(61,'Google One',12,0),(62,'Amazon Kindle',7,0),(63,'Smartfit',13,0),(64,'Farmacias Similares',10,0),(65,'Farmacon',10,0),(66,'Nitroil',11,0),(67,'Epic Games Store',6,0),(68,'Roblox',6,0),(69,'Little Caesar',3,2),(70,'CINNAMONROLL MERCH',1,2),(71,'Apple',9,2),(72,'Tiendita',2,2),(73,'Tacos el wero',3,15);
/*!40000 ALTER TABLE `tb_negocios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pagos`
--

DROP TABLE IF EXISTS `tb_pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_pagos` (
  `id_pago` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `no_cuenta` varchar(20) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `monto` float NOT NULL,
  `categoria` int NOT NULL,
  `subcategoria` int NOT NULL,
  `tipo_pago` int NOT NULL,
  `fecha` date NOT NULL,
  `pagos_hechos` int NOT NULL,
  `total_pagos` int NOT NULL,
  `estatus_pago` int NOT NULL,
  PRIMARY KEY (`id_pago`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pagos`
--

LOCK TABLES `tb_pagos` WRITE;
/*!40000 ALTER TABLE `tb_pagos` DISABLE KEYS */;
INSERT INTO `tb_pagos` VALUES (1,2,'41414145','COMPRAS NAVIDEÑAS DE ALIEXPRESS',1600.12,1,1,1,'2024-10-06',1,1,3),(2,2,'41414145','COMPRAS NAVIDEÑAS DE AMAZON',1600.12,1,1,1,'2024-10-06',1,1,3),(3,2,'41414145','ESTO ES PRUEBA DEL UPDATE DE PAGOS 3',7000,4,45,1,'2024-10-06',1,1,2),(4,2,'41414145','COMPRAS NAVIDEÑAS DE Steam',1600.12,1,1,1,'2024-10-07',1,1,2),(5,2,'41414145','COMPRAS DE LPS DE ALIEXPRESS',1600.12,1,1,1,'2024-10-09',1,1,2),(6,2,'41414145','COMPRAS DE LPS',1600.12,3,3,1,'2024-10-12',1,1,2),(7,2,'41414145','COMPRAS NAVIDEÑAS DE ALIEXPRESS',1600.12,4,45,1,'2024-10-12',1,1,2),(8,2,'41414145','COMPRAS NECESARIAS DE SANRIO',1000,4,45,2,'2024-10-13',1,3,1),(9,2,'41414145','COMPRAS NECESARIAS DE SANRIO',1000,4,45,2,'2024-10-13',2,3,1),(10,2,'41414145','COMPRAS NECESARIAS DE SANRIO',1000,4,45,2,'2024-10-13',3,3,2),(11,2,'41414145','Compra de Shein',1700,4,45,2,'2024-10-16',1,2,1),(12,2,'41414145','Compra de Lentes',2500,4,45,2,'2024-10-16',1,3,1),(13,2,'41414145','Compra de Shein',1700,4,45,2,'2024-10-16',2,2,2),(14,2,'41414145','Compra de Lentes',2500,4,45,2,'2024-10-16',2,3,1),(15,2,'41414145','Compra de Lentes',2500,4,45,2,'2024-10-16',3,3,2),(16,2,'41414145','El Sims 4 Urbanitas',1600,4,45,1,'2024-10-16',1,1,2),(17,2,'41414145','El Sims 4 Urbanitas',1600,4,45,1,'2024-10-16',1,1,2),(18,2,'41414145','El Sims 4 Cats and Dogs',10000,4,45,2,'2024-10-16',1,4,1),(19,2,'41414145','El Sims 4 Cats and Dogs',10000,4,45,2,'2024-10-16',2,5,1),(20,2,'41414145','El Sims 4 Cats and Dogs',10000,4,45,2,'2024-10-16',3,5,1),(21,2,'41414145','El Sims 4 Cats and Dogs',10000,4,45,2,'2024-10-16',4,5,1),(22,2,'41414145','El Sims 4 Vampirtos',300,4,45,1,'2024-10-16',1,1,2),(23,2,'41414145','Prueba de no fondos',800000,4,45,2,'2024-10-18',1,10,1),(24,2,'41414145','Prueba de no fondos',800000,4,45,2,'2024-10-18',1,10,1),(25,2,'41414145','COMPRA DE KUROMI MERCH',250,9,1,1,'2024-10-20',1,1,2),(26,2,'41414145','una 4090 si señor',160,4,45,1,'2024-11-06',1,1,2),(27,2,'41414145','COMPRAS NAVIDEÑAS DE ALIEXPRESS',1700.12,4,45,1,'2024-11-08',1,1,2),(28,2,'3131314','',1000,9,1,1,'2024-11-13',1,1,2),(29,2,'3131314','',1000,9,1,1,'2024-11-13',1,1,2),(30,2,'3131314','PRUEBA ANGULAR',1000,4,46,1,'2024-11-13',1,1,2),(31,2,'3131314','PRUEBA ANGULAR',1000,4,46,1,'2024-11-13',1,1,2),(32,2,'3131314','prueba 2',100,4,46,1,'2024-11-13',1,1,2),(33,2,'3131314','prueba 2',100,4,46,1,'2024-11-13',1,1,2),(34,2,'3131314','PRUEBA 3',1000,9,1,1,'2024-11-13',1,1,2),(35,2,'3131314','PRUEBA 3',900,9,1,1,'2024-11-13',1,1,2),(36,2,'3131314','1111',1000,4,46,1,'2024-11-13',1,1,2),(37,2,'3131314','1111',1000,4,46,1,'2024-11-13',1,1,2),(38,2,'3131314','Prueba pago programado',100,4,46,1,'2024-11-13',1,1,2),(39,2,'3131314','Prueba pago programado',100,4,46,1,'2024-11-13',1,1,2),(40,2,'3131314','Prueba pago programado',100,4,46,1,'2024-11-13',1,1,2),(41,2,'3131314','Prueba pago programado',100,4,46,1,'2024-11-13',1,1,2),(42,2,'3131314','Prueba pago programado',100,4,46,1,'2024-11-13',1,1,2),(43,2,'3131314','Prueba pago programado',100,4,46,1,'2024-11-13',1,1,2),(44,2,'3131314','Prueba Pago Programado',100,4,46,1,'2024-11-13',1,1,2),(45,2,'3131314','Prueba Pago Programado',100,4,46,1,'2024-11-13',1,1,2),(46,2,'3131314','Pago',200,4,45,1,'2024-11-13',1,1,2),(47,2,'3131314','Pago',200,4,45,1,'2024-11-13',1,1,2),(48,2,'3131314','lola',100,4,46,1,'2024-11-13',1,1,2),(49,2,'3131314','lola',100,4,46,1,'2024-11-13',1,1,3),(50,2,'3131314','descripocion',10,4,46,1,'2024-11-13',1,1,2),(51,2,'3131314','descripocion',10,4,46,1,'2024-11-13',1,1,2),(52,2,'3131314','descripocion',10,4,46,1,'2024-11-13',1,1,2),(53,2,'3131314','descripocion',10,4,46,1,'2024-11-13',1,1,2),(54,2,'3131314','LOLA2',100,4,46,1,'2024-11-13',1,1,2),(55,2,'1234','Animal Crossing',1000,9,1,1,'2024-11-15',1,1,3),(56,2,'41414145','Prueba Depositos update',3000,4,46,1,'2024-11-15',1,1,3),(57,2,'41414145','PRUEBA DE ACTUALIZACION 2',199,9,46,1,'2024-11-16',1,1,3),(58,2,'1234','Pagos programados jadjadj',200,4,46,1,'2024-11-20',1,1,3),(59,2,'8798123412345890','Compra de medicamentos',1000,4,47,1,'2024-11-22',1,1,3),(60,2,'1234728194782094','Prueba gasto Mensual',900,4,47,1,'2024-11-23',1,1,2),(61,2,'41414145','Prueba gasto mensual',900,4,45,1,'2024-11-23',1,1,2),(62,2,'41414145','prueba pagos mensuales',900,4,47,1,'2024-11-23',1,1,2),(63,2,'3131314','Prueba gasto mensual',1000,4,46,1,'2024-11-23',1,1,2),(64,2,'3131314','prueba 2 pago mensual',900,4,46,1,'2024-11-23',1,1,2),(65,2,'3131314','Prueba gasto Mensual',1000,4,49,1,'2024-11-23',1,1,2),(66,2,'3131314','Prueba 2 gasto mensual',500,4,48,1,'2024-11-23',1,1,2),(67,2,'3131314','Prueba nueva',1000,4,47,1,'2024-11-23',1,1,2),(68,2,'3131314','prueba nueva 2',1000,4,47,1,'2024-11-23',1,1,2),(69,2,'3131314','Prueba',1200,4,49,1,'2024-11-23',1,1,2),(70,2,'3131314','Prueba nueva',800,4,48,1,'2024-11-23',1,1,2),(71,2,'3131314','Prueba nueva',1000,4,48,1,'2024-11-23',1,1,2),(72,2,'3131314','prueba 2',1000,4,47,1,'2024-11-23',1,1,2),(73,2,'3131314','prueba 10',1000,4,46,1,'2024-11-23',1,1,2),(74,2,'3131314','prueba 1001',900,4,46,1,'2024-11-23',1,1,2),(75,2,'3131314','PRUEBA JSJSJ',1000,4,46,1,'2024-11-23',1,1,2),(76,2,'3131314','PRUEBA',1000,4,46,1,'2024-11-23',1,1,2),(77,2,'3131314','XDDD',1000,4,47,1,'2024-11-23',1,1,2),(78,2,'3131314','XDO',1000,4,47,1,'2024-11-23',1,1,2),(79,2,'3131314','prueba',1111,4,47,1,'2024-11-27',1,1,2),(80,2,'41414145','zddddd',1000,4,46,1,'2024-11-27',1,1,2),(81,2,'41414145','prueba de pago',10,4,46,1,'2024-11-27',1,1,2),(82,2,'41414145','xd',111,4,45,1,'2024-11-27',1,1,2),(83,2,'41414145','xdddd',1,6,46,1,'2024-11-27',1,1,2),(84,2,'41414145','xd',200,4,47,1,'2024-11-27',1,1,2),(85,2,'2345','Prueba movimiento',300,8,50,1,'2024-11-30',1,1,2),(86,2,'3131314','prueba selects',300,4,70,1,'2024-11-30',1,1,2),(87,2,'3131314','Control PRO',900,9,1,1,'2024-12-01',1,1,2),(88,2,'1234589827134512','PC Geimer',4000,20,71,1,'2024-12-01',1,1,2),(89,2,'41414145','Perfume de Mamá',800,23,60,1,'2024-12-01',1,1,2),(90,2,'41414145','Perfume Mama',1000,3,72,1,'2024-12-15',1,1,3),(91,2,'3131314','Amigo Kit de Telcel',500,3,60,1,'2024-12-01',1,1,2),(92,2,'41414145','Videojuego',1000,9,36,1,'2024-12-01',1,1,2),(93,2,'41414145','El iTunes',1000,3,71,1,'2024-12-01',1,1,2),(94,2,'41414145','Prueba del iTunes',100,3,71,1,'2024-12-01',1,1,2),(95,2,'8798123412345890','Prueba',1000,3,71,1,'2024-12-02',1,1,2),(96,2,'41414145','Prueba 2',10000,4,70,2,'2024-12-02',1,3,1),(97,2,'3131314','jalan esto?',100,3,71,1,'2024-12-02',1,1,2),(98,2,'41414145','ya jalan los selects?',400,3,71,1,'2024-12-02',1,1,2),(99,2,'41414145','Pago nuevo Form 2',1,3,60,1,'2024-12-03',1,1,2),(100,2,'41414145','PAGO PRUEBA FORMS 2',300,3,60,1,'2024-12-03',1,1,2),(101,2,'41414145','PAGO FORMS 3',1,3,60,1,'2024-12-03',1,1,2),(102,2,'41414145','PRUEBA FORMS',6,3,60,1,'2024-12-03',1,1,2),(103,2,'41414145','prueba de 3 pesos',3,3,60,1,'2024-12-03',1,1,2),(104,2,'41414145','Prueba redireccion',1,3,60,1,'2024-12-03',1,1,2),(105,12,'1234567890123456','Pago de Luz',1500,29,7,1,'2024-12-04',1,1,3),(106,15,'1234567890123458','Cena Tacos Nuevamente',500,30,7,1,'2024-12-04',1,1,3);
/*!40000 ALTER TABLE `tb_pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pagos_pendientes_grupal`
--

DROP TABLE IF EXISTS `tb_pagos_pendientes_grupal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_pagos_pendientes_grupal` (
  `id_pago_pendiente` int NOT NULL AUTO_INCREMENT,
  `id_grupo` int NOT NULL,
  `id_pago_programado` int NOT NULL,
  PRIMARY KEY (`id_pago_pendiente`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pagos_pendientes_grupal`
--

LOCK TABLES `tb_pagos_pendientes_grupal` WRITE;
/*!40000 ALTER TABLE `tb_pagos_pendientes_grupal` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_pagos_pendientes_grupal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pagosgrupal`
--

DROP TABLE IF EXISTS `tb_pagosgrupal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_pagosgrupal` (
  `id_pago` int NOT NULL AUTO_INCREMENT,
  `id_grupo` int NOT NULL,
  `id_usuario` int NOT NULL,
  `no_cuenta` varchar(20) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `monto` float NOT NULL,
  `categoria` int NOT NULL,
  `subcategoria` int NOT NULL,
  `estatus` int NOT NULL DEFAULT '2',
  `fecha` date NOT NULL,
  `tipo_pago` int NOT NULL DEFAULT '1',
  `pagos_hechos` int NOT NULL DEFAULT '0',
  `total_pagos` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_pago`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pagosgrupal`
--

LOCK TABLES `tb_pagosgrupal` WRITE;
/*!40000 ALTER TABLE `tb_pagosgrupal` DISABLE KEYS */;
INSERT INTO `tb_pagosgrupal` VALUES (1,1,2,'41414145','Esto es un testeo 3',500,1,1,3,'2024-10-20',1,0,0),(2,1,2,'41414145','Ternuri Accesorios',199,1,1,3,'2024-10-20',1,0,0),(3,1,2,'41414145','Pago programado de prueba',1000.1,1,1,1,'2024-10-22',2,1,3),(4,1,2,'41414145','Pago programado de prueba',1000.1,1,1,1,'2024-10-22',2,2,3),(5,1,2,'41414145','Pago programado de prueba',1000,1,1,2,'2024-10-30',2,6,3),(6,1,2,'41414145','Pago programado de prueba',1000,1,1,2,'2024-10-30',2,7,3),(7,1,2,'41414145','Pago programado de prueba',1000,1,1,2,'2024-10-30',2,8,3),(8,1,2,'41414145','Pago programado de prueba',1000,1,1,2,'2024-10-30',2,9,3),(9,1,2,'','Pago programado prueba',100,1,2,2,'2024-11-26',1,1,1),(10,1,2,'','pago normal prueba',1000,1,2,2,'2024-11-26',1,1,1),(11,1,2,'1234728194782094','PAGO YYY',500,2,1,2,'2024-11-30',1,1,1),(12,1,2,'','a ver si jala esto de los selects',1000,2,1,2,'2024-11-30',1,1,1),(13,1,2,'','a ver si jalan los slects ottra vez',400,2,1,1,'2024-12-02',2,1,10),(14,1,2,'41414145','prueba pago grupal grupal',1500,1,1,2,'2024-12-03',1,1,1);
/*!40000 ALTER TABLE `tb_pagosgrupal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pagospendientes`
--

DROP TABLE IF EXISTS `tb_pagospendientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_pagospendientes` (
  `id_pagopendiente` int NOT NULL AUTO_INCREMENT,
  `id_pagoprogramado` int NOT NULL,
  PRIMARY KEY (`id_pagopendiente`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pagospendientes`
--

LOCK TABLES `tb_pagospendientes` WRITE;
/*!40000 ALTER TABLE `tb_pagospendientes` DISABLE KEYS */;
INSERT INTO `tb_pagospendientes` VALUES (1,8),(2,8),(3,8),(4,8),(5,8),(6,8),(7,8),(8,8),(9,8),(10,8),(11,8),(12,1);
/*!40000 ALTER TABLE `tb_pagospendientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pagosprogramados`
--

DROP TABLE IF EXISTS `tb_pagosprogramados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_pagosprogramados` (
  `id_pagoprogramado` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `no_cuenta` varchar(20) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `monto` float NOT NULL,
  `categoria` int NOT NULL,
  `subcategoria` int NOT NULL,
  `dia_programado` int NOT NULL,
  `pagos_hechos` int NOT NULL,
  `total_pagos` int NOT NULL,
  `estatus_pago` int NOT NULL,
  `tipo_pago` int NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id_pagoprogramado`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pagosprogramados`
--

LOCK TABLES `tb_pagosprogramados` WRITE;
/*!40000 ALTER TABLE `tb_pagosprogramados` DISABLE KEYS */;
INSERT INTO `tb_pagosprogramados` VALUES (1,2,'41414145','Prueba',10000,4,70,25,0,7,1,2,'2024-11-21'),(2,2,'41414145','Prueba 2',10000,4,70,2,1,3,1,2,'2024-11-21'),(3,2,'8798123412345890','prueba selects 2',300,4,70,4,0,10,1,2,'2024-11-30'),(4,2,'41414145','jalara esto?',500,3,60,17,0,30,1,2,'2024-12-02'),(5,12,'1234567890123456','Pago de Agua',500,29,8,31,0,20,1,2,'2024-12-04'),(6,15,'1234567890123458','Neflis nuevo',329,30,9,4,0,12,1,2,'2024-12-04'),(7,15,'4728472648591647','Pago programado',1000,30,73,6,0,10,1,2,'2024-12-08');
/*!40000 ALTER TABLE `tb_pagosprogramados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pagosprogramadosgrupal`
--

DROP TABLE IF EXISTS `tb_pagosprogramadosgrupal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_pagosprogramadosgrupal` (
  `id_pago` int NOT NULL AUTO_INCREMENT,
  `id_grupo` int NOT NULL,
  `id_usuario` int NOT NULL,
  `no_cuenta` varchar(20) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `monto` float NOT NULL,
  `categoria` int NOT NULL,
  `subcategoria` int NOT NULL,
  `dia_programado` int NOT NULL,
  `pagos_hechos` int NOT NULL,
  `total_pagos` int NOT NULL,
  `estatus_pago` int NOT NULL,
  PRIMARY KEY (`id_pago`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pagosprogramadosgrupal`
--

LOCK TABLES `tb_pagosprogramadosgrupal` WRITE;
/*!40000 ALTER TABLE `tb_pagosprogramadosgrupal` DISABLE KEYS */;
INSERT INTO `tb_pagosprogramadosgrupal` VALUES (1,1,2,'41414145','Pago programado de prueba2',1000,1,2,20,9,3,2),(2,1,2,'','',10,2,2,4,0,10,1),(3,1,2,'','pago programado 2',200,2,1,11,0,4,1),(4,1,2,'','a ver si jalan los slects ottra vez',400,2,1,2,1,10,1),(5,1,2,'41414145','prueba pago programado',2000,1,2,31,0,13,1);
/*!40000 ALTER TABLE `tb_pagosprogramadosgrupal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_subcategoriasgrupo`
--

DROP TABLE IF EXISTS `tb_subcategoriasgrupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_subcategoriasgrupo` (
  `id_subcategoria` int NOT NULL AUTO_INCREMENT,
  `id_grupo` int NOT NULL,
  `id_categoria` int NOT NULL,
  `id_negocio` int NOT NULL,
  `id_creador` int NOT NULL,
  PRIMARY KEY (`id_subcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_subcategoriasgrupo`
--

LOCK TABLES `tb_subcategoriasgrupo` WRITE;
/*!40000 ALTER TABLE `tb_subcategoriasgrupo` DISABLE KEYS */;
INSERT INTO `tb_subcategoriasgrupo` VALUES (2,1,1,2,1),(3,1,2,1,2),(4,2,1,2,1),(7,1,1,1,2),(8,1,1,3,2),(9,1,1,4,1);
/*!40000 ALTER TABLE `tb_subcategoriasgrupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_subcategory`
--

DROP TABLE IF EXISTS `tb_subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_subcategory` (
  `id_subcategory` int NOT NULL AUTO_INCREMENT,
  `id_categoria` int NOT NULL,
  `id_negocio` int NOT NULL,
  `id_user` int NOT NULL,
  PRIMARY KEY (`id_subcategory`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_subcategory`
--

LOCK TABLES `tb_subcategory` WRITE;
/*!40000 ALTER TABLE `tb_subcategory` DISABLE KEYS */;
INSERT INTO `tb_subcategory` VALUES (8,4,70,2),(9,8,50,2),(10,8,51,2),(13,3,60,2),(14,9,27,2),(15,9,36,2),(16,3,72,2),(17,3,14,2),(18,3,28,2),(19,29,7,12),(20,29,8,12),(21,29,19,12),(22,30,73,15),(23,30,7,15),(24,30,9,15);
/*!40000 ALTER TABLE `tb_subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tipomovimientos`
--

DROP TABLE IF EXISTS `tb_tipomovimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_tipomovimientos` (
  `id_tipomovimiento` int NOT NULL AUTO_INCREMENT,
  `tipo_movimiento` varchar(100) NOT NULL,
  PRIMARY KEY (`id_tipomovimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tipomovimientos`
--

LOCK TABLES `tb_tipomovimientos` WRITE;
/*!40000 ALTER TABLE `tb_tipomovimientos` DISABLE KEYS */;
INSERT INTO `tb_tipomovimientos` VALUES (1,'Deposito'),(2,'Deduccion'),(3,'Reembolso');
/*!40000 ALTER TABLE `tb_tipomovimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tiponegocios`
--

DROP TABLE IF EXISTS `tb_tiponegocios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_tiponegocios` (
  `id_tiponegocio` int NOT NULL AUTO_INCREMENT,
  `tipo_negocio` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tiponegocio`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tiponegocios`
--

LOCK TABLES `tb_tiponegocios` WRITE;
/*!40000 ALTER TABLE `tb_tiponegocios` DISABLE KEYS */;
INSERT INTO `tb_tiponegocios` VALUES (1,'E-comerce'),(2,'Tiendas'),(3,'Comida Rapida'),(4,'Servicio'),(5,'Streaming'),(6,'Videojuegos'),(7,'Entretenimiento'),(8,'Bancos'),(9,'Telefonia'),(10,'Salud'),(11,'Gasolina'),(12,'Tecnologia'),(13,'GYM'),(14,'Otro');
/*!40000 ALTER TABLE `tb_tiponegocios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tipospagos`
--

DROP TABLE IF EXISTS `tb_tipospagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_tipospagos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tipospagos`
--

LOCK TABLES `tb_tipospagos` WRITE;
/*!40000 ALTER TABLE `tb_tipospagos` DISABLE KEYS */;
INSERT INTO `tb_tipospagos` VALUES (1,'unica exhibicion'),(2,'periodico');
/*!40000 ALTER TABLE `tb_tipospagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_users`
--

DROP TABLE IF EXISTS `tb_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_users` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contra` varchar(255) NOT NULL,
  `ingresos_mensules` float DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_users`
--

LOCK TABLES `tb_users` WRITE;
/*!40000 ALTER TABLE `tb_users` DISABLE KEYS */;
INSERT INTO `tb_users` VALUES (1,'andrik','gomez','kirna09@gmail.com','$2a$08$CdudC4wf2EuZuilcDbUgqO5DGveFZnOtNkeNRW5zD8Vsz36BJLRyK',0),(2,'ana','zepeda','gaby@gmail.com','$2a$08$CFOctp69KH2CKlH.yfbbkuz8JaIBAKK9HaaMRhF4MR.hX7HmwQql6',20499),(5,'juan','perez','lola@hotmail.com','$2a$08$vpxlkz4y9M2ONbAoEMmsBeApxKKwpdZS0K.px678PJAFkdtAt5e8S',0),(6,'Gustavo','Valdez','gustavito@gmail.com','$2a$08$qPy3g0AdBjZHiFxQvXfiSOV8/BhaQohxNxICuqeiGDO1TBsLaIV3W',0),(7,'Lili','Smith','lilianabaha@gmail.com','$2a$08$MFxlvSsBKlwbRVnh4A2nb.h8jeJ1wAclZgW1htRls7VlTXdkBVp2i',0),(8,'Ana Gaby','Zepeda Ramirez','anagaby@gmail.com','$2a$08$tzxHcxEYgigYU.5ZLMjxzOsfKRo0M8/61ZwEMBu0f6zjbnJ.zQBdW',0),(9,'Ana Gabr','Gomez Lopez','gaby@hotmail.com','$2a$08$1uVTcQoxXdwNdZ40ucBjHeH0H0/AWH3fkBNOJlz/SkXnII5Wxhoq2',0),(11,'PUPPY','LOPEZ','zepedaramireztics@gmail.com','$2a$08$nTW9v2qsA0/d9ZeqFSI4Iu9xuU2WH7Bv6dNVXuBg0UqSZMBKDOvAi',0),(12,'Andrik Sebastian','Gomez','assshh351@gmail.com','$2a$08$9QoSv4QYBxGOgwt4WFLVPOxQ6ADFtXvSyLGJEcUZLQYriECMSnoja',20000),(13,'ANA','RAMIREZ','andrikvaldez09@hotmail.com','$2a$08$dXUqFB6ek3lkvthVSLzKMemr7giVOeTRsjdsKWm5/CxLhqoaRZ0hG',0),(14,'LOLA','LOPEZ','greibol8_zr@hotmail.com','$2a$08$WVteFGj0xulnr8NtCH1TMuYJam.aUbwjOOrWqJPtN8ct.TAiKMtQ6',0),(15,'YUN','ATONDO','yunsebastian66@gmail.com','$2a$08$n8ccEvnsggmJhaoyp3ij6eoEr8lyvGO3XxapfX1PVvh116OimKOCW',20000);
/*!40000 ALTER TABLE `tb_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-15  2:05:36
