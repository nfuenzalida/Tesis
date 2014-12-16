CREATE DATABASE  IF NOT EXISTS `bd_proyecto` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bd_proyecto`;
-- MySQL dump 10.13  Distrib 5.6.17, for osx10.6 (i386)
--
-- Host: localhost    Database: bd_proyecto
-- ------------------------------------------------------
-- Server version	5.5.38

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_camaras`
--

DROP TABLE IF EXISTS `tbl_camaras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_camaras` (
  `cod_camara` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_camara` varchar(50) DEFAULT NULL,
  `calles` varchar(45) DEFAULT NULL,
  `cantidad_lotes` varchar(45) DEFAULT NULL,
  `cod_lote` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_camara`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_camaras`
--

LOCK TABLES `tbl_camaras` WRITE;
/*!40000 ALTER TABLE `tbl_camaras` DISABLE KEYS */;
INSERT INTO `tbl_camaras` VALUES (1,'Camara 1','10','200',NULL),(2,'Camara 2','12','250',NULL);
/*!40000 ALTER TABLE `tbl_camaras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_detalle_proveedores`
--

DROP TABLE IF EXISTS `tbl_detalle_proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_detalle_proveedores` (
  `cod_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_fruta` varchar(50) DEFAULT NULL,
  `cod_lote` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_detalle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_detalle_proveedores`
--

LOCK TABLES `tbl_detalle_proveedores` WRITE;
/*!40000 ALTER TABLE `tbl_detalle_proveedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_detalle_proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lotes`
--

DROP TABLE IF EXISTS `tbl_lotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lotes` (
  `cod_lote` int(11) NOT NULL AUTO_INCREMENT,
  `cod_proveedor` int(11) DEFAULT NULL,
  `cantidad_bins` varchar(50) DEFAULT NULL,
  `tipo_fruta` varchar(45) DEFAULT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  `cod_temperatura` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_lote`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lotes`
--

LOCK TABLES `tbl_lotes` WRITE;
/*!40000 ALTER TABLE `tbl_lotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_mensaje`
--

DROP TABLE IF EXISTS `tbl_mensaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_mensaje` (
  `cod_mensaje` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` varchar(20) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `mensaje` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`cod_mensaje`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mensaje`
--

LOCK TABLES `tbl_mensaje` WRITE;
/*!40000 ALTER TABLE `tbl_mensaje` DISABLE KEYS */;
INSERT INTO `tbl_mensaje` VALUES (19,'12-12-2014','Nicolas Fuenzalida','okno'),(20,'15-12-2014','Juan','oksi');
/*!40000 ALTER TABLE `tbl_mensaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_personal`
--

DROP TABLE IF EXISTS `tbl_personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_personal` (
  `rut_personal` varchar(12) NOT NULL,
  `nombre_completo` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `trabajo` varchar(45) DEFAULT NULL,
  `jornada` varchar(45) DEFAULT NULL,
  `observacion` varchar(45) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`rut_personal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_personal`
--

LOCK TABLES `tbl_personal` WRITE;
/*!40000 ALTER TABLE `tbl_personal` DISABLE KEYS */;
INSERT INTO `tbl_personal` VALUES ('18.334.834-5','Nicolas Andres Fuenzalida Contreras','53967399','Arturo Prat # 186','na.fuenzalida.maiden@gmail.com','Admin','Diurno','','nicolas.jpg');
/*!40000 ALTER TABLE `tbl_personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_procesos`
--

DROP TABLE IF EXISTS `tbl_procesos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_procesos` (
  `cod_proceso` int(11) NOT NULL AUTO_INCREMENT,
  `cod_lote` int(11) DEFAULT NULL,
  `cod_camara` int(11) DEFAULT NULL,
  `fecha_proceso` varchar(15) DEFAULT NULL,
  `rut_personal` varchar(12) DEFAULT NULL,
  `cantidad_bins` varchar(50) DEFAULT NULL,
  `tipo_fruta` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cod_proceso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_procesos`
--

LOCK TABLES `tbl_procesos` WRITE;
/*!40000 ALTER TABLE `tbl_procesos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_procesos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_proveedores`
--

DROP TABLE IF EXISTS `tbl_proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_proveedores` (
  `cod_proveedores` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `tipo_fruta` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cod_proveedores`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_proveedores`
--

LOCK TABLES `tbl_proveedores` WRITE;
/*!40000 ALTER TABLE `tbl_proveedores` DISABLE KEYS */;
INSERT INTO `tbl_proveedores` VALUES (1,'Sofruco','Manzana'),(2,'Organica','Manzana');
/*!40000 ALTER TABLE `tbl_proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_registro_despacho`
--

DROP TABLE IF EXISTS `tbl_registro_despacho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_registro_despacho` (
  `cod_despacho` int(11) NOT NULL AUTO_INCREMENT,
  `empresa_transporte` varchar(45) DEFAULT NULL,
  `nombre_conductor` varchar(100) DEFAULT NULL,
  `rut_conductor` varchar(12) DEFAULT NULL,
  `patente_camion` varchar(6) DEFAULT NULL,
  `patente_carro` varchar(6) DEFAULT NULL,
  `tipo_bin` varchar(45) DEFAULT NULL,
  `cantidad_bin` varchar(45) DEFAULT NULL,
  `fecha` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cod_despacho`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_registro_despacho`
--

LOCK TABLES `tbl_registro_despacho` WRITE;
/*!40000 ALTER TABLE `tbl_registro_despacho` DISABLE KEYS */;
INSERT INTO `tbl_registro_despacho` VALUES (1,'asdasd','asdas','asda','asdsa','asdas','asdas','asdas',NULL);
/*!40000 ALTER TABLE `tbl_registro_despacho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_registro_ingreso`
--

DROP TABLE IF EXISTS `tbl_registro_ingreso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_registro_ingreso` (
  `cod_ingreso` int(11) NOT NULL AUTO_INCREMENT,
  `patente_camion` varchar(50) NOT NULL,
  `patente_carro` varchar(50) NOT NULL,
  `nombre_conductor` varchar(50) NOT NULL,
  `empresa_transporte` varchar(50) NOT NULL,
  `rut_conductor` varchar(50) NOT NULL,
  `tipo_bin` varchar(50) NOT NULL,
  `cantidad_total_bin` varchar(50) NOT NULL,
  `cantidad_malo_bin` varchar(50) NOT NULL,
  `cantidad_reparable_bin` varchar(50) NOT NULL,
  `observacion` varchar(50) NOT NULL,
  PRIMARY KEY (`cod_ingreso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_registro_ingreso`
--

LOCK TABLES `tbl_registro_ingreso` WRITE;
/*!40000 ALTER TABLE `tbl_registro_ingreso` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_registro_ingreso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_stock`
--

DROP TABLE IF EXISTS `tbl_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_stock` (
  `cod_stock` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad_bin_plastico` varchar(45) DEFAULT NULL,
  `cantidad_bin_madera` varchar(45) DEFAULT NULL,
  `cantidad_bin_malo` varchar(45) DEFAULT NULL,
  `cantidad_bin_reparacion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cod_stock`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_stock`
--

LOCK TABLES `tbl_stock` WRITE;
/*!40000 ALTER TABLE `tbl_stock` DISABLE KEYS */;
INSERT INTO `tbl_stock` VALUES (1,'540','230','234','122');
/*!40000 ALTER TABLE `tbl_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_temperatura`
--

DROP TABLE IF EXISTS `tbl_temperatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_temperatura` (
  `cod_temperatura` varchar(45) NOT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  `temperatura` varchar(45) DEFAULT NULL,
  `cod_lote` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cod_temperatura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_temperatura`
--

LOCK TABLES `tbl_temperatura` WRITE;
/*!40000 ALTER TABLE `tbl_temperatura` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_temperatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_transporte`
--

DROP TABLE IF EXISTS `tbl_transporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_transporte` (
  `cod_transporte` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_empresa` varchar(50) DEFAULT NULL,
  `dueno_empresa` varchar(100) DEFAULT NULL,
  `rut_transporte` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`cod_transporte`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_transporte`
--

LOCK TABLES `tbl_transporte` WRITE;
/*!40000 ALTER TABLE `tbl_transporte` DISABLE KEYS */;
INSERT INTO `tbl_transporte` VALUES (1,'Transportes Fuenzalida','Nicolas Fuenzalida','11.111.111-2');
/*!40000 ALTER TABLE `tbl_transporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_transportista`
--

DROP TABLE IF EXISTS `tbl_transportista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_transportista` (
  `rut_transportista` varchar(12) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `patente_camion` varchar(8) DEFAULT NULL,
  `patente_carro` varchar(8) DEFAULT NULL,
  `cod_transporte` int(11) NOT NULL,
  PRIMARY KEY (`rut_transportista`,`cod_transporte`),
  KEY `fk_transportista_idx` (`cod_transporte`),
  CONSTRAINT `fk_transportista` FOREIGN KEY (`cod_transporte`) REFERENCES `tbl_transporte` (`cod_transporte`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_transportista`
--

LOCK TABLES `tbl_transportista` WRITE;
/*!40000 ALTER TABLE `tbl_transportista` DISABLE KEYS */;
INSERT INTO `tbl_transportista` VALUES ('33.333.333-3','Juan','ZX-23-34','PN-69-69',1);
/*!40000 ALTER TABLE `tbl_transportista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_usuario`
--

DROP TABLE IF EXISTS `tbl_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_usuario` (
  `cod_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `rut_personal` varchar(12) NOT NULL,
  `nombre_usuario` varchar(100) DEFAULT NULL,
  `tipo_usuario` varchar(10) DEFAULT NULL,
  `clave` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`cod_usuario`,`rut_personal`),
  KEY `fk_rut_personal_idx` (`rut_personal`),
  CONSTRAINT `fk_rut_personal` FOREIGN KEY (`rut_personal`) REFERENCES `tbl_personal` (`rut_personal`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuario`
--

LOCK TABLES `tbl_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_usuario` DISABLE KEYS */;
INSERT INTO `tbl_usuario` VALUES (6,'18.334.834-5','Nicolas Fuenzalida','Admin','1234');
/*!40000 ALTER TABLE `tbl_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_viajes`
--

DROP TABLE IF EXISTS `tbl_viajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_viajes` (
  `cod_viaje` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_viajes` varchar(12) DEFAULT NULL,
  `rut_transportista` varchar(12) DEFAULT NULL,
  `cod_despacho` int(11) DEFAULT NULL,
  `cod_ingreso` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_viaje`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_viajes`
--

LOCK TABLES `tbl_viajes` WRITE;
/*!40000 ALTER TABLE `tbl_viajes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_viajes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-16 14:28:57
