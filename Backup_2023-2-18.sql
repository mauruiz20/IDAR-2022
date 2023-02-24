CREATE DATABASE  IF NOT EXISTS `gestion_pagos2022` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gestion_pagos2022`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: gestion_pagos2022
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `aud_comercios`
--

DROP TABLE IF EXISTS `aud_comercios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aud_comercios` (
  `Id` bigint NOT NULL AUTO_INCREMENT,
  `FechaAud` datetime NOT NULL,
  `UsuarioAud` varchar(30) NOT NULL,
  `IP` varchar(40) NOT NULL,
  `UserAgent` varchar(255) DEFAULT NULL,
  `Aplicacion` varchar(50) NOT NULL,
  `Motivo` varchar(100) DEFAULT NULL,
  `TipoAud` char(1) NOT NULL,
  `IdComercio` int NOT NULL,
  `Comercio` varchar(100) NOT NULL,
  `Telefono` varchar(12) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `Localidad` varchar(100) NOT NULL,
  `EstadoComercio` char(1) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_FechaAud` (`FechaAud`),
  KEY `IX_Usuario` (`UsuarioAud`),
  KEY `IX_IP` (`IP`),
  KEY `IX_Aplicacion` (`Aplicacion`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabla que almacena la auditoria de los comercios del sistema.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aud_comercios`
--

LOCK TABLES `aud_comercios` WRITE;
/*!40000 ALTER TABLE `aud_comercios` DISABLE KEYS */;
INSERT INTO `aud_comercios` VALUES (1,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',1,'Ut Tincidunt Orci Associates','3863530567','P.O. Box 740, 981 Vestibulum, St.','Przemyśl','A'),(2,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',2,'Risus Donec Corp.','3863351745','796-9641 Eu St.','İmamoğlu','A'),(3,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',3,'At Velit Pellentesque Ltd','3863477373','8499 Magna. Ave','Pacasmayo','A'),(4,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',4,'A Incorporated','3865735380','Ap #469-6993 Eget, Avenue','Bakhmut','A'),(5,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',5,'Consequat Enim Corp.','3817111349','Ap #560-4263 Ornare, Ave','Drachten','A'),(6,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',6,'Mi Aliquam Inc.','3817515162','858-7837 Enim Road','Seletar','A'),(7,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',7,'Aliquet Molestie Corp.','3863127716','P.O. Box 224, 4626 Odio Rd.','Oud-Turnhout','A'),(8,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',8,'Lorem Eu Metus Associates','3865208823','Ap #198-9609 Velit. Avenue','Gujranwala','A'),(9,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',9,'Molestie Orci Corp.','3812124827','Ap #425-6390 Ipsum Avenue','Trondheim','A'),(10,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',10,'Nisl Maecenas Inc.','3863431988','P.O. Box 845, 4596 Tellus. Rd.','Mora','A'),(11,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',11,'Vitae Aliquet Ltd','3812672517','8091 Et Road','Stade','A'),(12,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',12,'Auctor Quis Incorporated','3865955528','4658 Ultrices. Rd.','Secunda','A'),(13,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',13,'Condimentum Eget Foundation','3863149406','Ap #494-4960 Dolor Street','Cartago','A'),(14,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',14,'Varius PC','3863564501','P.O. Box 682, 8197 Turpis Street','Jamshedpur','A'),(15,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',15,'Lorem Ipsum Dolor Limited','3816048652','Ap #847-1513 Magna Road','Sincelejo','A'),(16,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',16,'Lacus Pede Incorporated','3865413451','P.O. Box 696, 2075 Dui, Road','Coatzacoalcos','A'),(17,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',17,'Sed Est Nunc LLC','3865858634','9978 Tristique Street','Lafayette','A'),(18,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',18,'Montes Nascetur Ridiculus Limited','3865643782','1796 Orci Ave','Chalon-sur-Saône','A'),(19,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',19,'Arcu Nunc Mauris Corp.','3863652163','570-9450 Sem St.','Bo\'ness','A'),(20,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',20,'Pretium Corporation','3863384786','999-1564 Congue St.','Sasolburg','A'),(21,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',21,'Interdum Ligula Foundation','3865753398','Ap #214-8557 Lectus Street','Heredia','A'),(22,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',22,'Cum Inc.','3865408732','P.O. Box 720, 8796 Eget Street','Fourbechies','A'),(23,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',23,'Amet Industries','3863529062','445-4198 Nulla Avenue','Haguenau','A'),(24,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',24,'Tristique Neque PC','3863255128','635-4284 Non Av.','Rhemes-Saint-Georges','A'),(25,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',25,'Suspendisse Tristique Neque Associates','3819782006','858-6688 Erat Av.','Okene','A'),(26,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',26,'Luctusa Lobortis Incorporated','3863548517','255-277 In St.','Nieuwegein','A'),(27,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',27,'Rhoncus Nullam Institute','3863534007','Ap #460-8056 Tempus Ave','Lambayeque','A'),(28,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',28,'Dapibus PC','3811526222','P.O. Box 655, 1506 Sem, Road','Alice','A'),(29,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',29,'Malesuada Vel Convallis Consulting','3863732742','933-8807 Blandit Street','Swellendam','A'),(30,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',30,'Neque In Ornare Corporation','3863665894','P.O. Box 548, 6692 Vel, Av.','Port Augusta','A'),(31,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',31,'Duis Sit Limited','3863630725','Ap #864-657 Amet, Street','Kemerovo','A'),(32,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',32,'Vehicula Risus LLP','3865806777','Ap #614-898 Donec Ave','Moscow','A'),(33,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',33,'Natoque Penatibus Ltd','3812767324','2130 Odio. St.','Heusden','B'),(34,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',34,'Enim Curabitur Limited','3863527065','244-214 Felis Road','Suncheon','B'),(35,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',35,'Faucibus Morbi Vehicula Institute','3863636364','1554 Arcu Ave','Tengah','B'),(36,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',36,'Erat Volutpat LLC','3865802147','Ap #785-2798 Blandit Ave','Meeuwen','A'),(37,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',37,'Blandit Mattis Corp.','3865768417','5855 Phasellus Avenue','Betim','A'),(38,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',38,'Ornare Sagittis Ltd','3863656339','252-7920 Aliquam St.','Kitzbühel','B'),(39,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',39,'Vitae Aliquam Eros Limited','3865742161','4682 Nulla. Rd.','Gentinnes','B'),(40,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',40,'Enim Nisl Ltd','3863502391','7978 Ac, Av.','Gorontalo','B'),(41,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',41,'Sit Amet Faucibus PC','3818451931','P.O. Box 727, 451 Aliquam St.','Trois-Rivières','B'),(42,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',42,'Dui Corporation','3818015357','841-9819 Fusce St.','Carletonville','B'),(43,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',43,'Est Mauris Institute','3813479678','9086 Eu St.','Metz','A'),(44,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',44,'Sed LLC','3819863675','571-2105 Vestibulum St.','Melville','A'),(45,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',45,'Enim Mi Incorporated','3863127864','Ap #330-7194 Natoque Rd.','Devonport','A'),(46,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',46,'Eu Odio Corporation','3863593291','306 Non Street','Uitkerke','B'),(47,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',47,'Curabitur Sed Ltd','3818984408','Ap #177-8247 Dis Road','Olsztyn','B'),(48,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',48,'Risus Nulla LLC','3818174401','241-3189 Nam Street','Guadalupe','A'),(49,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',49,'Habitant Morbi Tristique LLC','3863264557','238-7852 Eros Rd.','Phalaborwa','B'),(50,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',50,'Lorem Corp.','3815449281','4460 Euismod Avenue','Galway','B'),(51,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',51,'Congue Turpis Institute','3863662584','Ap #487-9200 Eleifend Rd.','Gdynia','A'),(52,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',52,'Enim Incorporated','3865521681','Ap #643-8554 Adipiscing Ave','Eindhoven','B'),(53,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',53,'Placerat Cras Ltd','3865274644','Ap #928-9682 Arcu Rd.','Bogotá','A'),(54,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',54,'Euismod Enim Institute','3865185178','Ap #523-3247 Ipsum St.','Victorias','B'),(55,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',55,'Quisque Ornare LLC','3812029340','441-8438 Lacinia Rd.','Port Blair','A'),(56,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',56,'Magna Cras Incorporated','3863301680','7761 Facilisis. Avenue','Culiacán','B'),(57,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',57,'Gravida Foundation','3863413852','323-1116 Eros Road','Meppel','A'),(58,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',58,'Luctuse Associates','3865281203','298-467 Eu, Av.','Kavaratti','B'),(59,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',59,'Sodales Incorporated','3865421908','364-7865 Egestas. Rd.','Ferlach','A'),(60,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',60,'In Faucibus Inc.','3865583334','3050 Phasellus Street','Porvenir','A'),(61,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',61,'Vivamus Non Incorporated','3863816866','Ap #707-3242 Laoreet, Av.','Vladimir','A'),(62,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',62,'Ac Inc.','3863625004','Ap #554-855 Non Avenue','Bilbo','A'),(63,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',63,'Est Ac Inc.','3863958583','117-8919 Sed St.','Legal','B'),(64,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',64,'Blandit Congue Inc.','3819421880','Ap #318-8383 Sem. Rd.','Suwałki','B'),(65,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',65,'Est Arcu Incorporated','3865674113','722-241 Sem, Ave','Berlin','B'),(66,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',66,'Est Arcu Ac Institute','3816274934','875-8909 Mauris Road','Butuan','B'),(67,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',67,'Fringilla Cursus Purus Ltd','3812387427','617-5285 Id Street','Gdynia','B'),(68,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',68,'Donec Vitae Ltd','3863622105','P.O. Box 954, 2532 In St.','Hofors','A'),(69,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',69,'Ligula Institute','3865856376','Ap #161-3107 Maecenas Av.','San Pablo','A'),(70,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',70,'Odio Auctor Institute','3814382679','558-4266 Diam St.','Ciudad Real','B'),(71,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',71,'Auctor Non PC','3863733814','P.O. Box 750, 9521 Nulla. Rd.','Vereeniging','A'),(72,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',72,'Sed Diam Lorem Ltd','3863502399','706-9463 Pharetra St.','Nậm Nhùn','A'),(73,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',73,'Urna Nullam Foundation','3816125106','8912 Quisque Av.','Recanati','A'),(74,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',74,'Nunc Sollicitudin LLC','3863108872','P.O. Box 792, 1792 Ridiculus Ave','Mercedes','B'),(75,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',75,'Ornare Placerat Corp.','3865365186','P.O. Box 465, 9941 Ullamcorper, Avenue','Tiruvottiyur','B'),(76,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',76,'Ac Mattis Limited','3865134581','9210 Donec Road','Rockhampton','A'),(77,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',77,'Luctush Associates','3816819131','205-753 Ac Av.','Tolyatti','B'),(78,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',78,'Egestas Institute','3863553694','P.O. Box 764, 9255 Nunc Rd.','Bludenz','A'),(79,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',79,'Ut Erat Sed Institute','3863480243','P.O. Box 195, 5170 Eleifend, Rd.','Roermond','A'),(80,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',80,'Aliquam Ornare Corp.','3865115831','2227 Mauris Road','Queenstown','B'),(81,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',81,'Gravida Limited','3863531261','Ap #163-4555 Sociis Road','Shandong','B'),(82,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',82,'Eros Proin Limited','3811104110','Ap #373-3804 Sed St.','Ronciglione','B'),(83,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',83,'Magna Ut Industries','3814254415','724-6553 Turpis. Av.','San José del Guaviare','A'),(84,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',84,'Orci Sem Ltd','3817922356','Ap #773-8557 Hendrerit Av.','Kidderminster','A'),(85,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',85,'Eget Ipsum Corp.','3863881823','Ap #248-9244 Accumsan Rd.','Wolverhampton','B'),(86,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',86,'Orci Luctus Corporation','3811935629','Ap #751-9844 Nunc Street','Cedar Rapids','A'),(87,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',87,'Ac LLC','3863051452','208-9941 Dolor. Av.','Dublin','A'),(88,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',88,'Risus At LLC','3813141268','603-5664 Nisi Av.','Onitsha','B'),(89,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',89,'Eu Neque Incorporated','3863120188','Ap #520-4241 Velit. Ave','Waarmaarde','A'),(90,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',90,'Aliquet Limited','3818724343','Ap #760-2005 Eleifend St.','Ernage','B'),(91,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',91,'Fusce Foundation','3863338290','2371 Egestas Street','Portland','A'),(92,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',92,'Curabitur Inc.','3863824496','840-5352 Hendrerit. Ave','Cabo de Hornos','B'),(93,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',93,'Lobortis Risus Corporation','3865843753','Ap #290-8781 Natoque Av.','Clementi','B'),(94,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',94,'Cras Interdum Corp.','3863972284','P.O. Box 349, 8492 Blandit Ave','Brive-la-Gaillarde','B'),(95,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',95,'Pretium Et Corp.','3814898782','P.O. Box 707, 4596 Adipiscing St.','Florø','A'),(96,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',96,'Diam Ltd','3865383025','340-7951 Rutrum. Ave','Ananindeua','A'),(97,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',97,'Dictum Eleifend Industries','3863651944','Ap #641-7518 Porttitor Ave','Pontevedra','B'),(98,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',98,'Facilisis Lorem Tristique PC','3818836300','Ap #115-2427 Cursus Road','Anhui','B'),(99,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',99,'Eu Enim Corporation','3865891552','619 Iaculis, Rd.','Arica','B'),(100,'2023-02-15 22:06:16','root','localhost',NULL,'localhost',NULL,'I',100,'Orci Donec Nibh Company','3863558584','363-3896 Scelerisque Ave','Gorontalo','A'),(101,'2023-02-15 22:17:26','root','localhost',NULL,'localhost',NULL,'I',101,'Computación','3814567168','San Martin 130','San Miguel de Tucumán','A'),(102,'2023-02-15 22:18:52','root','localhost',NULL,'localhost',NULL,'A',101,'Computación','3814567168','San Martin 130','San Miguel de Tucumán','A'),(103,'2023-02-15 22:18:52','root','localhost',NULL,'localhost',NULL,'D',101,'Electronica y Electrica','3811234567','San Juan 530','San Miguel de Tucumán','A'),(104,'2023-02-15 22:33:08','root','localhost',NULL,'localhost',NULL,'B',101,'Electronica y Electrica','3811234567','San Juan 530','San Miguel de Tucumán','A'),(105,'2023-02-15 22:33:19','root','localhost',NULL,'localhost',NULL,'I',101,'Computación','3814567168','San Martin 130','San Miguel de Tucumán','A'),(106,'2023-02-15 22:35:37','root','localhost',NULL,'localhost',NULL,'A',101,'Computación','3814567168','San Martin 130','San Miguel de Tucumán','A'),(107,'2023-02-15 22:35:37','root','localhost',NULL,'localhost',NULL,'D',101,'Computación','3814567168','San Martin 130','San Miguel de Tucumán','B'),(108,'2023-02-15 22:35:54','root','localhost',NULL,'localhost',NULL,'A',101,'Computación','3814567168','San Martin 130','San Miguel de Tucumán','B'),(109,'2023-02-15 22:35:54','root','localhost',NULL,'localhost',NULL,'D',101,'Computación','3814567168','San Martin 130','San Miguel de Tucumán','A'),(110,'2023-02-15 22:35:55','root','localhost',NULL,'localhost',NULL,'A',101,'Computación','3814567168','San Martin 130','San Miguel de Tucumán','A'),(111,'2023-02-15 22:35:55','root','localhost',NULL,'localhost',NULL,'D',101,'Computación','3814567168','San Martin 130','San Miguel de Tucumán','B'),(112,'2023-02-15 22:35:58','root','localhost',NULL,'localhost',NULL,'A',101,'Computación','3814567168','San Martin 130','San Miguel de Tucumán','B'),(113,'2023-02-15 22:35:58','root','localhost',NULL,'localhost',NULL,'D',101,'Computación','3814567168','San Martin 130','San Miguel de Tucumán','A'),(114,'2023-02-15 22:42:46','root','localhost',NULL,'localhost',NULL,'A',50,'Lorem Corp.','3815449281','4460 Euismod Avenue','Galway','B'),(115,'2023-02-15 22:42:46','root','localhost',NULL,'localhost',NULL,'D',50,'Lorem Corp.','3815449281','4460 Euismod Avenue','Galway','A'),(116,'2023-02-18 19:35:26','root','localhost',NULL,'localhost',NULL,'B',101,'Computación','3814567168','San Martin 130','San Miguel de Tucumán','A');
/*!40000 ALTER TABLE `aud_comercios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comercios`
--

DROP TABLE IF EXISTS `comercios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comercios` (
  `IdComercio` int unsigned NOT NULL AUTO_INCREMENT,
  `Comercio` varchar(100) NOT NULL,
  `Telefono` varchar(15) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `Localidad` varchar(100) NOT NULL,
  `EstadoComercio` char(1) NOT NULL,
  PRIMARY KEY (`IdComercio`),
  UNIQUE KEY `UI_Comercio` (`Comercio`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabla que almacena los comercios del sistema.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comercios`
--

LOCK TABLES `comercios` WRITE;
/*!40000 ALTER TABLE `comercios` DISABLE KEYS */;
INSERT INTO `comercios` VALUES (1,'Ut Tincidunt Orci Associates','3863530567','P.O. Box 740, 981 Vestibulum, St.','Przemyśl','A'),(2,'Risus Donec Corp.','3863351745','796-9641 Eu St.','İmamoğlu','A'),(3,'At Velit Pellentesque Ltd','3863477373','8499 Magna. Ave','Pacasmayo','A'),(4,'A Incorporated','3865735380','Ap #469-6993 Eget, Avenue','Bakhmut','A'),(5,'Consequat Enim Corp.','3817111349','Ap #560-4263 Ornare, Ave','Drachten','A'),(6,'Mi Aliquam Inc.','3817515162','858-7837 Enim Road','Seletar','A'),(7,'Aliquet Molestie Corp.','3863127716','P.O. Box 224, 4626 Odio Rd.','Oud-Turnhout','A'),(8,'Lorem Eu Metus Associates','3865208823','Ap #198-9609 Velit. Avenue','Gujranwala','A'),(9,'Molestie Orci Corp.','3812124827','Ap #425-6390 Ipsum Avenue','Trondheim','A'),(10,'Nisl Maecenas Inc.','3863431988','P.O. Box 845, 4596 Tellus. Rd.','Mora','A'),(11,'Vitae Aliquet Ltd','3812672517','8091 Et Road','Stade','A'),(12,'Auctor Quis Incorporated','3865955528','4658 Ultrices. Rd.','Secunda','A'),(13,'Condimentum Eget Foundation','3863149406','Ap #494-4960 Dolor Street','Cartago','A'),(14,'Varius PC','3863564501','P.O. Box 682, 8197 Turpis Street','Jamshedpur','A'),(15,'Lorem Ipsum Dolor Limited','3816048652','Ap #847-1513 Magna Road','Sincelejo','A'),(16,'Lacus Pede Incorporated','3865413451','P.O. Box 696, 2075 Dui, Road','Coatzacoalcos','A'),(17,'Sed Est Nunc LLC','3865858634','9978 Tristique Street','Lafayette','A'),(18,'Montes Nascetur Ridiculus Limited','3865643782','1796 Orci Ave','Chalon-sur-Saône','A'),(19,'Arcu Nunc Mauris Corp.','3863652163','570-9450 Sem St.','Bo\'ness','A'),(20,'Pretium Corporation','3863384786','999-1564 Congue St.','Sasolburg','A'),(21,'Interdum Ligula Foundation','3865753398','Ap #214-8557 Lectus Street','Heredia','A'),(22,'Cum Inc.','3865408732','P.O. Box 720, 8796 Eget Street','Fourbechies','A'),(23,'Amet Industries','3863529062','445-4198 Nulla Avenue','Haguenau','A'),(24,'Tristique Neque PC','3863255128','635-4284 Non Av.','Rhemes-Saint-Georges','A'),(25,'Suspendisse Tristique Neque Associates','3819782006','858-6688 Erat Av.','Okene','A'),(26,'Luctusa Lobortis Incorporated','3863548517','255-277 In St.','Nieuwegein','A'),(27,'Rhoncus Nullam Institute','3863534007','Ap #460-8056 Tempus Ave','Lambayeque','A'),(28,'Dapibus PC','3811526222','P.O. Box 655, 1506 Sem, Road','Alice','A'),(29,'Malesuada Vel Convallis Consulting','3863732742','933-8807 Blandit Street','Swellendam','A'),(30,'Neque In Ornare Corporation','3863665894','P.O. Box 548, 6692 Vel, Av.','Port Augusta','A'),(31,'Duis Sit Limited','3863630725','Ap #864-657 Amet, Street','Kemerovo','A'),(32,'Vehicula Risus LLP','3865806777','Ap #614-898 Donec Ave','Moscow','A'),(33,'Natoque Penatibus Ltd','3812767324','2130 Odio. St.','Heusden','B'),(34,'Enim Curabitur Limited','3863527065','244-214 Felis Road','Suncheon','B'),(35,'Faucibus Morbi Vehicula Institute','3863636364','1554 Arcu Ave','Tengah','B'),(36,'Erat Volutpat LLC','3865802147','Ap #785-2798 Blandit Ave','Meeuwen','A'),(37,'Blandit Mattis Corp.','3865768417','5855 Phasellus Avenue','Betim','A'),(38,'Ornare Sagittis Ltd','3863656339','252-7920 Aliquam St.','Kitzbühel','B'),(39,'Vitae Aliquam Eros Limited','3865742161','4682 Nulla. Rd.','Gentinnes','B'),(40,'Enim Nisl Ltd','3863502391','7978 Ac, Av.','Gorontalo','B'),(41,'Sit Amet Faucibus PC','3818451931','P.O. Box 727, 451 Aliquam St.','Trois-Rivières','B'),(42,'Dui Corporation','3818015357','841-9819 Fusce St.','Carletonville','B'),(43,'Est Mauris Institute','3813479678','9086 Eu St.','Metz','A'),(44,'Sed LLC','3819863675','571-2105 Vestibulum St.','Melville','A'),(45,'Enim Mi Incorporated','3863127864','Ap #330-7194 Natoque Rd.','Devonport','A'),(46,'Eu Odio Corporation','3863593291','306 Non Street','Uitkerke','B'),(47,'Curabitur Sed Ltd','3818984408','Ap #177-8247 Dis Road','Olsztyn','B'),(48,'Risus Nulla LLC','3818174401','241-3189 Nam Street','Guadalupe','A'),(49,'Habitant Morbi Tristique LLC','3863264557','238-7852 Eros Rd.','Phalaborwa','B'),(50,'Lorem Corp.','3815449281','4460 Euismod Avenue','Galway','A'),(51,'Congue Turpis Institute','3863662584','Ap #487-9200 Eleifend Rd.','Gdynia','A'),(52,'Enim Incorporated','3865521681','Ap #643-8554 Adipiscing Ave','Eindhoven','B'),(53,'Placerat Cras Ltd','3865274644','Ap #928-9682 Arcu Rd.','Bogotá','A'),(54,'Euismod Enim Institute','3865185178','Ap #523-3247 Ipsum St.','Victorias','B'),(55,'Quisque Ornare LLC','3812029340','441-8438 Lacinia Rd.','Port Blair','A'),(56,'Magna Cras Incorporated','3863301680','7761 Facilisis. Avenue','Culiacán','B'),(57,'Gravida Foundation','3863413852','323-1116 Eros Road','Meppel','A'),(58,'Luctuse Associates','3865281203','298-467 Eu, Av.','Kavaratti','B'),(59,'Sodales Incorporated','3865421908','364-7865 Egestas. Rd.','Ferlach','A'),(60,'In Faucibus Inc.','3865583334','3050 Phasellus Street','Porvenir','A'),(61,'Vivamus Non Incorporated','3863816866','Ap #707-3242 Laoreet, Av.','Vladimir','A'),(62,'Ac Inc.','3863625004','Ap #554-855 Non Avenue','Bilbo','A'),(63,'Est Ac Inc.','3863958583','117-8919 Sed St.','Legal','B'),(64,'Blandit Congue Inc.','3819421880','Ap #318-8383 Sem. Rd.','Suwałki','B'),(65,'Est Arcu Incorporated','3865674113','722-241 Sem, Ave','Berlin','B'),(66,'Est Arcu Ac Institute','3816274934','875-8909 Mauris Road','Butuan','B'),(67,'Fringilla Cursus Purus Ltd','3812387427','617-5285 Id Street','Gdynia','B'),(68,'Donec Vitae Ltd','3863622105','P.O. Box 954, 2532 In St.','Hofors','A'),(69,'Ligula Institute','3865856376','Ap #161-3107 Maecenas Av.','San Pablo','A'),(70,'Odio Auctor Institute','3814382679','558-4266 Diam St.','Ciudad Real','B'),(71,'Auctor Non PC','3863733814','P.O. Box 750, 9521 Nulla. Rd.','Vereeniging','A'),(72,'Sed Diam Lorem Ltd','3863502399','706-9463 Pharetra St.','Nậm Nhùn','A'),(73,'Urna Nullam Foundation','3816125106','8912 Quisque Av.','Recanati','A'),(74,'Nunc Sollicitudin LLC','3863108872','P.O. Box 792, 1792 Ridiculus Ave','Mercedes','B'),(75,'Ornare Placerat Corp.','3865365186','P.O. Box 465, 9941 Ullamcorper, Avenue','Tiruvottiyur','B'),(76,'Ac Mattis Limited','3865134581','9210 Donec Road','Rockhampton','A'),(77,'Luctush Associates','3816819131','205-753 Ac Av.','Tolyatti','B'),(78,'Egestas Institute','3863553694','P.O. Box 764, 9255 Nunc Rd.','Bludenz','A'),(79,'Ut Erat Sed Institute','3863480243','P.O. Box 195, 5170 Eleifend, Rd.','Roermond','A'),(80,'Aliquam Ornare Corp.','3865115831','2227 Mauris Road','Queenstown','B'),(81,'Gravida Limited','3863531261','Ap #163-4555 Sociis Road','Shandong','B'),(82,'Eros Proin Limited','3811104110','Ap #373-3804 Sed St.','Ronciglione','B'),(83,'Magna Ut Industries','3814254415','724-6553 Turpis. Av.','San José del Guaviare','A'),(84,'Orci Sem Ltd','3817922356','Ap #773-8557 Hendrerit Av.','Kidderminster','A'),(85,'Eget Ipsum Corp.','3863881823','Ap #248-9244 Accumsan Rd.','Wolverhampton','B'),(86,'Orci Luctus Corporation','3811935629','Ap #751-9844 Nunc Street','Cedar Rapids','A'),(87,'Ac LLC','3863051452','208-9941 Dolor. Av.','Dublin','A'),(88,'Risus At LLC','3813141268','603-5664 Nisi Av.','Onitsha','B'),(89,'Eu Neque Incorporated','3863120188','Ap #520-4241 Velit. Ave','Waarmaarde','A'),(90,'Aliquet Limited','3818724343','Ap #760-2005 Eleifend St.','Ernage','B'),(91,'Fusce Foundation','3863338290','2371 Egestas Street','Portland','A'),(92,'Curabitur Inc.','3863824496','840-5352 Hendrerit. Ave','Cabo de Hornos','B'),(93,'Lobortis Risus Corporation','3865843753','Ap #290-8781 Natoque Av.','Clementi','B'),(94,'Cras Interdum Corp.','3863972284','P.O. Box 349, 8492 Blandit Ave','Brive-la-Gaillarde','B'),(95,'Pretium Et Corp.','3814898782','P.O. Box 707, 4596 Adipiscing St.','Florø','A'),(96,'Diam Ltd','3865383025','340-7951 Rutrum. Ave','Ananindeua','A'),(97,'Dictum Eleifend Industries','3863651944','Ap #641-7518 Porttitor Ave','Pontevedra','B'),(98,'Facilisis Lorem Tristique PC','3818836300','Ap #115-2427 Cursus Road','Anhui','B'),(99,'Eu Enim Corporation','3865891552','619 Iaculis, Rd.','Arica','B'),(100,'Orci Donec Nibh Company','3863558584','363-3896 Scelerisque Ave','Gorontalo','A');
/*!40000 ALTER TABLE `comercios` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Comercios_AFTER_INSERT` AFTER INSERT ON `comercios` FOR EACH ROW BEGIN
INSERT INTO aud_Comercios VALUES(0, NOW(), SUBSTRING_INDEX(USER(),'@',1), SUBSTRING_INDEX(USER(),'@',-1), NULL,
SUBSTRING_INDEX(USER(),'@',-1), NULL, 'I', NEW.IdComercio, NEW.Comercio, NEW.Telefono, NEW.Direccion, NEW.Localidad, NEW.EstadoComercio);
END */;;
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
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Comercios_AFTER_UPDATE` AFTER UPDATE ON `comercios` FOR EACH ROW BEGIN
INSERT INTO aud_Comercios VALUES(0, NOW(), SUBSTRING_INDEX(USER(),'@',1), SUBSTRING_INDEX(USER(),'@',-1), NULL,
SUBSTRING_INDEX(USER(),'@',-1), NULL, 'A', OLD.IdComercio, OLD.Comercio, OLD.Telefono, OLD.Direccion, OLD.Localidad,
OLD.EstadoComercio);
INSERT INTO aud_Comercios VALUES(0, NOW(), SUBSTRING_INDEX(USER(),'@',1), SUBSTRING_INDEX(USER(),'@',-1), NULL,
SUBSTRING_INDEX(USER(),'@',-1), NULL, 'D', NEW.IdComercio, NEW.Comercio, NEW.Telefono, NEW.Direccion, NEW.Localidad, 
NEW.EstadoComercio);
END */;;
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
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Comercios_AFTER_DELETE` AFTER DELETE ON `comercios` FOR EACH ROW BEGIN
INSERT INTO aud_Comercios VALUES(0, NOW(), SUBSTRING_INDEX(USER(),'@',1), SUBSTRING_INDEX(USER(),'@',-1), NULL,
SUBSTRING_INDEX(USER(),'@',-1), NULL, 'B', OLD.IdComercio, OLD.Comercio, OLD.Telefono, OLD.Direccion, OLD.Localidad,
OLD.EstadoComercio);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `mediospago`
--

DROP TABLE IF EXISTS `mediospago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mediospago` (
  `IdMedioPago` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `MedioPago` varchar(100) NOT NULL,
  `Tipo` varchar(10) NOT NULL,
  `Banco` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IdMedioPago`),
  UNIQUE KEY `UI_MedioPago` (`MedioPago`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabla que almacena los medios de pago del sistema.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mediospago`
--

LOCK TABLES `mediospago` WRITE;
/*!40000 ALTER TABLE `mediospago` DISABLE KEYS */;
INSERT INTO `mediospago` VALUES (1,'Visa Credito','Credito','BNA'),(2,'Visa Debito','Debito','BNA'),(3,'Visa Prepago','Prepago',NULL),(4,'Mastercard Credito','Credito','Macro'),(5,'Mastercard Debito','Debito','Macro'),(6,'Maestro','Debito','BNA'),(7,'MercadoPago','Prepago',NULL);
/*!40000 ALTER TABLE `mediospago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planes`
--

DROP TABLE IF EXISTS `planes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planes` (
  `IdPlan` smallint unsigned NOT NULL AUTO_INCREMENT,
  `IdMedioPago` tinyint unsigned NOT NULL,
  `Codigo` varchar(15) NOT NULL,
  `NumCuotas` tinyint NOT NULL,
  `TNA` decimal(5,2) NOT NULL,
  PRIMARY KEY (`IdPlan`,`IdMedioPago`),
  UNIQUE KEY `UI_IdPlan` (`IdPlan`),
  UNIQUE KEY `UI_Codigo` (`Codigo`),
  KEY `RefMediosPago4` (`IdMedioPago`),
  CONSTRAINT `RefMediosPago4` FOREIGN KEY (`IdMedioPago`) REFERENCES `mediospago` (`IdMedioPago`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabla que almacena los planes soportados del sistema.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planes`
--

LOCK TABLES `planes` WRITE;
/*!40000 ALTER TABLE `planes` DISABLE KEYS */;
INSERT INTO `planes` VALUES (1,4,'3991754',6,99.70),(2,2,'5556686',3,39.61),(3,4,'5925836',12,96.09),(4,4,'6595017',12,86.83),(5,2,'4125080',9,81.62),(6,2,'5327180',1,29.00),(7,3,'8641321',9,23.21),(8,2,'5022993',1,70.04),(9,4,'4387713',12,53.45),(10,2,'9239689',6,77.39),(11,2,'6603150',1,23.77),(12,2,'6451970',12,32.03),(13,3,'3414773',1,65.25),(14,5,'9763273',12,8.89),(15,5,'3579970',12,49.59),(16,2,'2212988',3,6.87),(17,5,'4101670',1,74.33),(18,2,'3902533',12,81.31),(19,6,'2584272',6,52.05),(20,2,'6376399',12,37.02),(21,5,'4579633',1,47.63),(22,3,'1361463',1,69.38),(23,4,'3744254',6,46.68),(24,6,'2950529',1,4.26),(25,4,'5294180',6,91.05),(26,1,'1061328',3,46.31),(27,3,'1212667',1,26.97),(28,4,'4457996',6,4.61),(29,6,'9452878',9,26.18),(30,2,'9049922',12,38.79),(31,1,'8211948',1,67.41),(32,3,'7456079',12,35.96),(33,3,'8153302',1,47.63),(34,3,'9231454',3,72.57),(35,2,'3168792',3,85.26),(36,7,'6656942',6,14.25),(37,2,'3181000',1,5.01),(38,4,'8303074',6,97.18),(39,7,'8698014',9,85.75),(40,7,'3819799',9,65.62),(41,4,'1200214',9,96.53),(42,5,'5494094',12,99.12),(43,6,'5176714',6,51.03),(44,5,'6168033',12,29.87),(45,3,'5265342',9,83.42),(46,2,'1082934',12,52.65),(47,2,'8650225',3,23.61),(48,1,'9836427',6,69.64),(49,6,'2101021',12,71.72),(50,5,'6340774',3,80.12),(51,3,'3384921',9,19.43),(52,4,'6169660',6,42.26),(53,4,'3898328',1,67.41),(54,3,'6441657',1,5.74),(55,1,'7984824',9,74.30),(56,2,'1410983',9,87.64),(57,3,'5846328',12,70.26),(58,4,'1240280',6,19.38),(59,4,'8630407',9,19.42),(60,5,'6730407',6,23.88),(61,7,'2377513',12,26.12),(62,2,'8501355',1,59.08),(63,3,'1911048',12,88.09),(64,3,'7041370',12,51.25),(65,5,'7886747',1,8.88),(66,7,'9326323',12,28.40),(67,5,'8853787',3,87.47),(68,1,'7683952',9,81.85),(69,4,'5966781',3,81.05),(70,4,'6027899',3,61.30),(71,2,'6008339',1,25.29),(72,2,'5659117',6,8.42),(73,2,'4947668',1,18.14),(74,2,'2171914',3,7.39),(75,3,'5715176',6,89.07),(76,1,'8291954',1,75.69),(77,3,'9040299',6,90.48),(78,6,'9532020',6,47.61),(79,6,'7268475',3,5.23),(80,6,'6680178',3,71.72),(81,2,'1225562',1,83.33),(82,2,'1615575',3,31.65),(83,2,'2980915',3,78.53),(84,4,'2273957',6,53.70),(85,5,'8415514',6,82.27),(86,3,'3613382',1,99.54),(87,7,'2359349',3,14.67),(88,5,'5923531',1,30.26),(89,6,'1908805',9,96.54),(90,3,'6123908',9,15.72),(91,4,'2489281',9,19.49),(92,3,'6120859',6,47.84),(93,6,'6037149',1,51.12),(94,3,'9558486',1,65.56),(95,6,'3331640',9,16.09),(96,5,'2686131',12,53.57),(97,6,'7595577',6,29.29),(98,3,'5991690',3,54.14),(99,4,'7786434',12,73.29),(100,3,'2409066',12,40.06);
/*!40000 ALTER TABLE `planes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planescomercio`
--

DROP TABLE IF EXISTS `planescomercio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planescomercio` (
  `IdPlanComercio` int unsigned NOT NULL AUTO_INCREMENT,
  `IdComercio` int unsigned NOT NULL,
  `IdPlan` smallint unsigned NOT NULL,
  `IdMedioPago` tinyint unsigned NOT NULL,
  `EstadoPComercio` char(1) NOT NULL,
  PRIMARY KEY (`IdPlanComercio`,`IdComercio`,`IdPlan`,`IdMedioPago`),
  UNIQUE KEY `UI_IdPlanComercio` (`IdPlanComercio`),
  UNIQUE KEY `UI_IdComercioIdPlan` (`IdComercio`,`IdPlan`),
  KEY `RefPlanes5` (`IdPlan`,`IdMedioPago`),
  CONSTRAINT `RefComercios6` FOREIGN KEY (`IdComercio`) REFERENCES `comercios` (`IdComercio`),
  CONSTRAINT `RefPlanes5` FOREIGN KEY (`IdPlan`, `IdMedioPago`) REFERENCES `planes` (`IdPlan`, `IdMedioPago`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabla que almacena los planes de comercio del sistema.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planescomercio`
--

LOCK TABLES `planescomercio` WRITE;
/*!40000 ALTER TABLE `planescomercio` DISABLE KEYS */;
INSERT INTO `planescomercio` VALUES (1,1,1,4,'A'),(2,2,2,2,'A'),(3,3,3,4,'A'),(4,4,4,4,'A'),(5,5,5,2,'A'),(6,6,19,6,'B'),(7,7,14,5,'B'),(8,8,36,7,'B'),(9,9,31,1,'B'),(10,10,63,3,'B'),(11,11,75,3,'A'),(12,50,75,3,'A');
/*!40000 ALTER TABLE `planescomercio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `IdUsuario` int unsigned NOT NULL AUTO_INCREMENT,
  `IdComercio` int unsigned NOT NULL,
  `Nombres` varchar(60) NOT NULL,
  `Apellidos` varchar(60) NOT NULL,
  `Telefono` varchar(15) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `DNI` varchar(10) NOT NULL,
  `EstadoUsuario` char(1) NOT NULL,
  PRIMARY KEY (`IdUsuario`,`IdComercio`),
  UNIQUE KEY `UI_IdUsuario` (`IdUsuario`),
  UNIQUE KEY `UI_DNI` (`DNI`),
  KEY `IX_NombresApellidos` (`Nombres`,`Apellidos`),
  KEY `RefComercios1` (`IdComercio`),
  CONSTRAINT `RefComercios1` FOREIGN KEY (`IdComercio`) REFERENCES `comercios` (`IdComercio`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabla que almacena los usuarios.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,1,'Quyn','Nolan','3817576390','quyn3861@google.com','3098879','A'),(2,2,'Mariam','Guerra Kane','3863896711','mariam@google.com','3708647','B'),(3,3,'Hermione Bradley','Mathis Burks','3865337843','hermionebradley447@google.com','4328861','A'),(4,4,'Keely','Robinson Bond','3863865741','keely@google.com','4888476','A'),(5,5,'Cameron','Sampson Pruitt','3863945716','cameron@hotmail.com','3378886','A'),(6,6,'Malachi Kasper','Keith','3812279162','malachikasper9496@hotmail.com','3247380','A'),(7,7,'Stone Madeson','Wilkerson Cooper','3863384351','stonemadeson6331@google.com','3397953','A'),(8,8,'Tarik','Snider Michael','3865108483','tarik6739@google.com','3388263','A'),(9,9,'Garth','Knight','3865127811','garth2644@hotmail.com','3944765','B'),(10,10,'Kiona','Reyes','3865273752','kiona@google.com','3281806','A'),(11,1,'Roanna Aurora','Boyer','3863128899','roannaaurora@hotmail.com','3363142','B'),(12,2,'Angelica Danielle','Leonard Manning','3863631355','angelicadanielle7517@hotmail.com','3003189','A'),(13,3,'Quemby','Wolf','3865545787','quemby@hotmail.com','3584740','B'),(14,4,'Donna','Bond','3863150425','donna@google.com','3408002','A'),(15,5,'Aidan','Gilbert','3812234297','aidan@hotmail.com','4749515','B'),(16,6,'Caleb','Cohen','3865813812','caleb6990@google.com','4257844','A'),(17,7,'Kylie','Bridges Odom','3863315371','kylie5804@google.com','3139272','A'),(18,8,'Emma','Burris Irwin','3817304714','emma6882@google.com','4758325','B'),(19,9,'Colton','Doyle','3865287272','colton@hotmail.com','4612640','A'),(20,10,'Buffy Isabella','Drake Hines','3865353016','buffyisabella8757@hotmail.com','3335084','B'),(21,1,'Sopoline','Hobbs Martin','3863541664','sopoline5735@hotmail.com','4367559','A'),(22,2,'Joel','Torres Buckner','3863385687','joel5298@hotmail.com','3206570','B'),(23,3,'Chester Brielle','Pitts Klein','3814422233','chesterbrielle8182@google.com','4713317','B'),(24,4,'Oren Christian','Banks Dillon','3863449113','orenchristian@google.com','4565996','B'),(25,5,'Alec Candace','Wiley','3865814031','aleccandace@google.com','4275726','B'),(26,6,'Marsden','Osborn','3863354404','marsden6853@hotmail.com','4458763','A'),(27,7,'Deacon','Salazar Burks','3865064653','deacon@google.com','3385890','A'),(28,8,'Shad','Fisher Gregory','3865676948','shad9367@google.com','3454758','B'),(29,9,'Ira','Peck','3815393614','ira@hotmail.com','4339926','B'),(30,10,'Carter','York Schultz','3865634824','carter@hotmail.com','3277824','B'),(31,11,'Timothy','Townsend','3810262841','timothy@google.com','4933573','B'),(32,12,'Oleg','Noble Curtis','3865985357','oleg7982@google.com','3216624','B'),(33,13,'Uta','Rush Hardin','3863395834','uta@google.com','3790020','A'),(34,14,'Hyatt','Mclaughlin','3865723056','hyatt@google.com','3961809','A'),(35,15,'Donovan Kylee','Cooke Charles','3865168880','donovankylee2941@google.com','4438307','A'),(36,16,'Edward Yvette','Pickett','3813148020','edwardyvette@hotmail.com','4428849','B'),(37,17,'Ali Lev','Pugh Vaughn','3865318948','alilev5453@hotmail.com','4114099','A'),(38,18,'Chancellor Ariel','Frank','3865515640','chancellorariel@hotmail.com','3559413','A'),(39,19,'Emily','Parker Luna','3863383833','emily8485@google.com','4033917','B'),(40,1,'Raja','Nunez May','3863413923','raja@google.com','3828057','A'),(41,2,'Eric','Hutchinson','3863452324','eric6266@hotmail.com','3809999','A'),(42,3,'Zephr','Fernandez Bell','3865925600','zephr@hotmail.com','4012259','A'),(43,4,'Jenna Castor','Mcgee','3811418589','jennacastor@hotmail.com','3634438','A'),(44,5,'Dawn','Austin','3817322865','dawn1098@google.com','4494711','B'),(45,6,'Thane','Riggs Dominguez','3865246676','thane@google.com','3577073','B'),(46,7,'Baxter Leonard','Simpson','3863330423','baxterleonard6899@google.com','3126476','A'),(47,8,'Maile Deanna','Bell','3819903326','mailedeanna@hotmail.com','4929085','B'),(48,9,'Audrey Howard','Sharpe Howe','3865007873','audreyhoward7607@hotmail.com','4394625','A'),(49,10,'David Autumn','O\'Neill','3812100120','davidautumn@hotmail.com','3663612','A'),(50,20,'Cailin Raya','Dudley','3814755121','cailinraya@google.com','4516285','A'),(51,21,'Sade','Black Joseph','3865976752','sade@google.com','3908641','A'),(52,22,'Bert Kasper','Bullock Garcia','3811355601','bertkasper@google.com','3027090','A'),(53,23,'Quamar Rudyard','Lambert','3863929317','quamarrudyard2968@google.com','4766864','A'),(54,24,'Stephen','Nicholson','3812104224','stephen5717@hotmail.com','3901446','B'),(55,25,'Penelope','Estrada','3863522934','penelope@hotmail.com','3431943','B'),(56,26,'Merritt Abraham','Garrett Raymond','3863629992','merrittabraham4001@hotmail.com','3645992','B'),(57,27,'Chancellor Kerry','Christensen','3863961737','chancellorkerry@google.com','3886650','A'),(58,28,'Brent','Lyons Curry','3865993255','brent@google.com','4996953','A'),(59,29,'Florence','Whitaker','3815647281','florence@google.com','3947917','A'),(60,30,'Kirk Kevyn','Hatfield Wilkerson','3865297732','kirkkevyn@hotmail.com','3116879','B'),(61,1,'Griffith','Mccarthy','3863741085','griffith@google.com','3730400','B'),(62,2,'Imogene','Rutledge Dennis','3817597782','imogene@google.com','3800589','B'),(63,3,'Dylan','Frye Velasquez','3863219374','dylan4595@hotmail.com','3889812','A'),(64,4,'Olympia Xena','Sears Ferguson','3863378617','olympiaxena1482@hotmail.com','4798994','B'),(65,5,'Silas Jonas','Dean','3863213276','silasjonas@hotmail.com','4029867','B'),(66,6,'Jenna','Castro Reid','3865613128','jenna@hotmail.com','3808473','B'),(67,7,'Camille Vladimir','Estes Patrick','3816396364','camillevladimir3341@google.com','3396171','A'),(68,8,'Hamilton Colin','Olson Holmes','3865557829','hamiltoncolin6327@hotmail.com','3662472','A'),(69,9,'Ulysses','Gilbert','3863826775','ulysses@hotmail.com','3554761','B'),(70,10,'Armando Kadeem','Perry','3814715983','armandokadeem8928@hotmail.com','3602323','A'),(71,1,'Ciaran','Moon','3863122746','ciaran6394@hotmail.com','3391098','A'),(72,2,'Illana','Sharp','3863735834','illana@google.com','3249074','B'),(73,3,'Camilla Hakeem','Trujillo','3865243692','camillahakeem3169@google.com','4679130','A'),(74,4,'Elijah Shad','Anderson','3818215301','elijahshad@hotmail.com','4392069','B'),(75,5,'Merrill','Gutierrez','3865121566','merrill@hotmail.com','3769412','A'),(76,6,'Garrett','Barrera Jefferson','3819634591','garrett7733@google.com','3406560','B'),(77,7,'Sawyer Adara','Wise Hansen','3811421185','sawyeradara1138@hotmail.com','4526280','A'),(78,8,'Macon Murphy','Morris Lynch','3863461386','maconmurphy5260@google.com','4104911','B'),(79,9,'Samantha Alexander','Marsh Nunez','3815872048','samanthaalexander4055@google.com','4541127','A'),(80,10,'Lucas Burton','Snyder','3863461645','lucasburton9374@hotmail.com','3915740','B'),(81,1,'Patience Talon','Acevedo Carey','3817514513','patiencetalon@hotmail.com','4022618','A'),(82,2,'Alec Darius','Kelley Williamson','3863888323','alecdarius5517@hotmail.com','4237482','A'),(83,3,'Wayne','Bolton Goodman','3863088184','wayne6031@google.com','4287545','A'),(84,4,'Rosalyn','Mckinney','3865790304','rosalyn4380@google.com','4725127','A'),(85,5,'Brandon','Lambert','3865674136','brandon1210@google.com','4927393','B'),(86,6,'Dennis','Mccarthy','3863152900','dennis2084@hotmail.com','4300410','B'),(87,7,'Jackson','Gallegos Cameron','3865835606','jackson6523@hotmail.com','3402100','B'),(88,8,'Clayton','Lara','3865824392','clayton385@google.com','4297369','B'),(89,9,'Katelyn','Young','3863574113','katelyn@google.com','4219056','B'),(90,10,'Melissa','Pace Elliott','3865202845','melissa8265@hotmail.com','3683878','A'),(91,1,'Steel','Hunt Klein','3865147458','steel9630@google.com','3823570','B'),(92,2,'Ivana','Sanchez','3863433516','ivana@google.com','3345763','B'),(93,3,'Wang Sigourney','Carver Macdonald','3865658083','wangsigourney@hotmail.com','4210767','B'),(94,4,'Herrod','Mcgee Tucker','3865635576','herrod@hotmail.com','3449865','B'),(95,5,'Lilah','Cannon','3815948909','lilah6603@google.com','4381327','A'),(96,6,'Jameson','Mills Daugherty','3812273196','jameson@google.com','3893360','A'),(97,7,'Chava','Collier Lynch','3863152433','chava@google.com','4028988','B'),(98,7,'Daquan','Snider Anderson','3865236022','daquan8632@google.com','4985061','A'),(99,8,'Blossom Amethyst','Harrington Avila','3863285160','blossomamethyst3086@hotmail.com','3509952','A'),(100,10,'Macon','Travis Beasley','3811241564','macon1814@google.com','4153306','A');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `IdVenta` int unsigned NOT NULL AUTO_INCREMENT,
  `IdPlanComercio` int unsigned DEFAULT NULL,
  `IdUsuario` int unsigned NOT NULL,
  `IdComercio` int unsigned NOT NULL,
  `IdPlan` smallint unsigned DEFAULT NULL,
  `IdMedioPago` tinyint unsigned DEFAULT NULL,
  `FechaAlta` datetime NOT NULL,
  `Monto` decimal(12,2) NOT NULL,
  `Detalles` text NOT NULL,
  `ApellidosCliente` varchar(60) NOT NULL,
  `NombresCliente` varchar(60) NOT NULL,
  `DireccionCliente` varchar(100) NOT NULL,
  `DNICliente` varchar(10) NOT NULL,
  `NumTarjetaCliente` varchar(20) NOT NULL,
  `EstadoVenta` char(1) NOT NULL,
  `Observaciones` text,
  PRIMARY KEY (`IdVenta`),
  KEY `IX_DNI` (`DNICliente`),
  KEY `IX_FechaAlta` (`FechaAlta`),
  KEY `RefUsuarios2` (`IdUsuario`,`IdComercio`),
  KEY `RefPlanesComercio3` (`IdPlanComercio`,`IdComercio`,`IdPlan`,`IdMedioPago`),
  CONSTRAINT `RefPlanesComercio3` FOREIGN KEY (`IdPlanComercio`, `IdComercio`, `IdPlan`, `IdMedioPago`) REFERENCES `planescomercio` (`IdPlanComercio`, `IdComercio`, `IdPlan`, `IdMedioPago`),
  CONSTRAINT `RefUsuarios2` FOREIGN KEY (`IdUsuario`, `IdComercio`) REFERENCES `usuarios` (`IdUsuario`, `IdComercio`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabla que almacena las ventas del sistema.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,1,1,1,1,4,'2021-12-26 00:00:00',5716.14,'aliquet. Proin velit. Sed malesuada','Sykes Hodges','Julie','9000 Suspendisse St.','2890546','4928 275 98 1845','C','nibh dolor, nonummy ac, feugiat non, lobortis'),(2,2,2,2,2,2,'2022-01-24 00:00:00',5088.23,'lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur','Potter','Sylvester','P.O. Box 833, 2369 Eu Rd.','1289849','455673 4632687549','A','dolor. Donec fringilla. Donec feugiat metus sit amet ante.'),(3,3,3,3,3,4,'2023-01-22 00:00:00',9588.86,'ipsum sodales purus, in molestie','Guzman Huff','Janna','1360 Orci. Av.','3121115','5168 1463 2965 9774','F','cursus purus. Nullam scelerisque neque sed sem'),(4,4,4,4,4,4,'2022-09-24 00:00:00',4911.66,'nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus','Tucker Rojas','Hayfa','P.O. Box 641, 7624 Nulla. Av.','3561524','3625 747628 34488','A','mauris'),(5,5,5,5,5,2,'2021-12-30 00:00:00',3057.17,'lobortis mauris. Suspendisse','Salas O\'Neill','Keane Darryl','P.O. Box 767, 1450 Pede. Road','2686656','533 53578 32245 773','P','amet'),(6,6,6,6,19,6,'2023-03-28 00:00:00',6291.67,'neque non quam. Pellentesque habitant morbi tristique senectus et netus et','Yang','Dora Nora','696-9032 Metus. St.','4286209','3729 832333 26396','C','non, dapibus'),(7,2,2,2,2,2,'2023-03-02 00:00:00',3647.86,'convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus.','Bradley Buck','Alan Lesley','663-5923 Rhoncus. Rd.','4579554','366826575482327','C','vulputate,'),(8,1,1,1,1,4,'2023-06-22 00:00:00',4376.41,'enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin','Snider','Hiroko Tarik','261-3500 Vitae St.','2122682','3012 542868 42127','C','metus vitae'),(9,1,1,1,1,4,'2022-02-14 00:00:00',2456.51,'vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi','Hines Ware','Maggie','192-7561 Nunc St.','2782540','364471216738183','A','eu nulla at sem molestie sodales.'),(10,3,3,3,3,4,'2023-11-14 00:00:00',5612.99,'erat','Valdez Baker','Alika Asher','1841 Ac Rd.','3012898','4175 0045 1611 7760','F','et, rutrum eu, ultrices sit'),(11,6,6,6,19,6,'2022-05-31 00:00:00',9367.80,'torquent per conubia nostra, per inceptos hymenaeos. Mauris ut','Prince Pennington','Ingrid Dustin','938-6998 Nec Rd.','1899360','6767438531828387','C','Nunc ut erat. Sed nunc');
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'gestion_pagos2022'
--

--
-- Dumping routines for database 'gestion_pagos2022'
--
/*!50003 DROP PROCEDURE IF EXISTS `psp_asignar_plan_comercio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_asignar_plan_comercio`(pIdVenta int, pIdPlanComercio int)
SALIR:BEGIN
	/*
	Permite asignar un plan de comercio que exista, este asociado al comercio y este dado de alta, 
    a la venta, siempre y cuando la venta se encuentre en el estado de A: En Edición. 
    Establece a la venta en estado P: Pendiente. 
    Devuelve OK o el mensaje de error en Mensaje.
    */
    
    DECLARE pEstadoVenta, pEstadoPComercio char(1);    
    DECLARE pIdComercio int;
    DECLARE pIdPlan smallint;
    DECLARE pIdMedioPago tinyint;
 -- Manejo de error en la transacción
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
        ROLLBACK;
	END;
 -- Controla que la venta exista
    SET pEstadoVenta = (SELECT EstadoVenta FROM Ventas WHERE IdVenta = pIdVenta);
    IF pEstadoVenta IS NULL THEN
		SELECT 'La venta no existe.' AS Mensaje;
        LEAVE SALIR;
	END IF;
 -- Controla que la venta este en estado A: En Edición
    IF pEstadoVenta != 'A' THEN
		SELECT 'La venta no se encuentra en edición.' AS Mensaje;
        LEAVE SALIR;
	END IF;
 -- Averigua el comercio de la venta
	SET pIdComercio = (SELECT IdComercio FROM Ventas WHERE IdVenta = pIdVenta);
 -- Controla que el plan de comercio exista y este asociado al comercio
	SET pEstadoPComercio = (SELECT EstadoPComercio FROM PlanesComercio WHERE IdPlanComercio = pIdPlanComercio AND IdComercio = pIdComercio);
    IF pEstadoPComercio IS NULL THEN
		SELECT 'El plan de comercio no existe o no está asociado al comercio de la venta.' AS Mensaje;
        LEAVE SALIR;
	END IF;
 -- Controla que el plan de comercio esté dado de alta
    IF pEstadoPComercio = 'B' THEN
		SELECT 'El plan de comercio está dado de baja.' AS Mensaje;
        LEAVE SALIR;
	END IF; 
 
	START TRANSACTION;
	 -- Averigua el IdPlan y el IdMedioPago
        SELECT IdPlan, IdMedioPago INTO pIdPlan, pIdMedioPago FROM PlanesComercio 
        WHERE IdPlanComercio = pIdPlanComercio;
        
     -- Asigna a la venta el plan de comercio y lo pasa a pendiente
		UPDATE Ventas SET IdPlanComercio = pIdPlanComercio, IdPlan = pIdPlan, IdMedioPago = pIdMedioPago, 
							EstadoVenta = 'P'
        WHERE IdVenta = pIdVenta;
	COMMIT;
 -- Éxito
    SELECT 'OK' AS Mensaje;    
 -- Mensaje varchar(100)
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_borrar_comercio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_borrar_comercio`(pIdComercio int)
SALIR:BEGIN
	/*
	Permite borrar un comercio siempre y cuando no tenga usuarios y planes de comercio asociados. 
    Devuelve OK o el mensaje de error en Mensaje.    	
    */    
 -- Manejo de error en la transacción.
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
        ROLLBACK;
	END;
 -- Controla que no tenga usuarios asociados.
    IF EXISTS(SELECT IdUsuario FROM Usuarios WHERE IdComercio = pIdComercio) THEN
		SELECT 'Existen usuarios asociados.' AS Mensaje;
        LEAVE SALIR;
	END IF;
 -- Controla que no tenga planes de comercio asociados.
    IF EXISTS(SELECT IdPlanComercio FROM PlanesComercio WHERE IdComercio = pIdComercio) THEN
		SELECT 'Existen planes de comercio asociados.' AS Mensaje;
        LEAVE SALIR;
	END IF;
    
 -- Borra al comercio.    
	DELETE FROM Comercios WHERE IdComercio = pIdComercio;
 -- Éxito.
    SELECT 'OK' AS Mensaje;
 -- Mensaje varchar(100).
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_borrar_medio_pago` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_borrar_medio_pago`(pIdMedioPago tinyint)
SALIR:BEGIN
	/*
	Permite borrar un medio de pago controlando que no existan planes asociados. 
    Devuelve OK o el mensaje de error en Mensaje.		
    */
    
 -- Manejo de error en la transacción
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
        ROLLBACK;
	END;
 -- Controla que no tenga planes asociados
    IF EXISTS(SELECT IdPlan FROM Planes WHERE IdMedioPago = pIdMedioPago) THEN
		SELECT 'Existen planes asociados.' AS Mensaje;
        LEAVE SALIR;
	END IF;
    
 -- Borra al medio de pago
	DELETE FROM MediosPago WHERE IdMedioPago = pIdMedioPago;
    
 -- Éxito.
    SELECT 'OK' AS Mensaje;    
 -- Mensaje varchar(100)
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_borrar_plan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_borrar_plan`(pIdPlan smallint)
SALIR:BEGIN
	/*
	Permite borrar un plan siempre y cuando no existan planes de comercio asociados. 
    Devuelve OK o el mensaje de error en Mensaje.  
    */
    
 -- Manejo de error en la transacción
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
        ROLLBACK;
	END;
 -- Controla que no tenga planes de comercio asociados
    IF EXISTS(SELECT IdPlanComercio FROM PlanesComercio WHERE IdPlan = pIdPlan) THEN
		SELECT 'Existen planes de comercio asociados.' AS Mensaje;
        LEAVE SALIR;
	END IF;
    
 -- Borra al medio de pago
	DELETE FROM Planes WHERE IdPlan = pIdPlan;
    
 -- Éxito.
    SELECT 'OK' AS Mensaje;        
 -- Mensaje varchar(100)
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_borrar_plan_comercio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_borrar_plan_comercio`(pIdPlanComercio int)
SALIR:BEGIN
	/*
	Permite borrar un plan de comercio siempre y cuando no existan ventas asociadas. 
    Devuelve OK o el mensaje de error en Mensaje.
    */

 -- Manejo de error en la transacción
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
        ROLLBACK;
	END;
 -- Controla que no tenga ventas asociadas
    IF EXISTS(SELECT IdVenta FROM Ventas WHERE IdPlanComercio = pIdPlanComercio) THEN
		SELECT 'Existen ventas asociadas.' AS Mensaje;
        LEAVE SALIR;
	END IF;
    
 -- Borra al plan de comercio
	DELETE FROM PlanesComercio WHERE IdPlanComercio = pIdPlanComercio;
    
 -- Éxito.
    SELECT 'OK' AS Mensaje;        
    
 -- Mensaje varchar(100)
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_borrar_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_borrar_usuario`(pIdUsuario int)
SALIR:BEGIN
	/*
	Permite borrar un usuario siempre y cuando no tenga ventas asociadas. 
    Devuelve OK o el mensaje de error en Mensaje.    	
    */
 -- Manejo de error en la transacción
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
        ROLLBACK;
	END;
 -- Controla que no tenga ventas asociadas
    IF EXISTS(SELECT IdVenta FROM Ventas WHERE IdUsuario = pIdUsuario) THEN
		SELECT 'Existen ventas asociadas.' AS Mensaje;
        LEAVE SALIR;
	END IF;
    
 -- Borra al usuario
	DELETE FROM Usuarios WHERE IdUsuario = pIdUsuario;
    
 -- Éxito.
    SELECT 'OK' AS Mensaje;
 -- Mensaje varchar(100)
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_borrar_venta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_borrar_venta`(pIdVenta int)
SALIR:BEGIN
	/*
	Permite borrar una venta, siempre y cuando la misma se encuentre en estado A: En Edición. 
    Devuelve OK o el mensaje de error en Mensaje.
    */
    DECLARE pEstadoVenta char(1);
 -- Manejo de error en la transacción
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
        ROLLBACK;
	END;
 -- Controla que la venta exista
    SET pEstadoVenta = (SELECT EstadoVenta FROM Ventas WHERE IdVenta = pIdVenta);
    IF pEstadoVenta IS NULL THEN
		SELECT 'La venta no existe.' AS Mensaje;
        LEAVE SALIR;
	END IF;
 -- Controla que la venta este en estado A: En Edición
	IF pEstadoVenta != 'A' THEN
		SELECT 'La venta no se encuentra en edición.' AS Mensaje;
        LEAVE SALIR;
	END IF;
    
 -- Borra a la venta
	DELETE FROM Ventas WHERE IdVenta = pIdVenta;
    
 -- Éxito.
    SELECT 'OK' AS Mensaje;        
    
 -- Mensaje varchar(100)
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_buscar_comercios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_buscar_comercios`(pCadena varchar(100), pIncluyeBajas char(1), pOffset int, pRowCount int)
BEGIN
	/*
	Permite buscar los comercios dada una cadena de búsqueda que contenga una parte del nombre. 
    Puede o no incluir los comercios dados de baja según pIncluyeBajas (S: Si - N: No). Ordena por nombre del comercio.  
    Para listar todos, cadena vacía. Pagina.	
    */
    DECLARE pNumRows int;
    
    SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
    
 -- Tabla temporal para averiguar el número total de filas devuelto
    WITH
    cte_com AS
    (SELECT		*
    FROM		Comercios
    WHERE		Comercio LIKE CONCAT('%',pCadena,'%') AND
				(pIncluyeBajas = 'S' OR (pIncluyeBajas = 'N' AND EstadoComercio = 'A')))
    
    SELECT		*, (SELECT COUNT(*) FROM cte_com) AS NumRows
    FROM		cte_com
    ORDER BY	Comercio			
	LIMIT 		pOffset, pRowCount;
    
    SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;
 -- {Campos de la Tabla Comercios, NumRows int}
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_crear_comercio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_crear_comercio`(pComercio varchar(100), pTelefono varchar(12), 
											pDireccion varchar(100), pLocalidad varchar(100))
SALIR:BEGIN
	/*
	Permite crear un comercio controlando que el nombre del mismo no exista ya. Lo crea con estado A: Alta. 
    Devuelve OK + Id o el mensaje de error en Mensaje.	
    */
    DECLARE pIdComercio int;    
 -- Manejo de error en la transacción.
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
        ROLLBACK;
	END;
 -- Controla que los campos obligatorios no sean nulos o vacíos.
	IF (pComercio IS NULL OR pComercio = '' OR
        pTelefono IS NULL OR pTelefono = '') THEN
		SELECT 'Campos obligatorios.' AS Mensaje;
		LEAVE SALIR;
	END IF;
    IF (pDireccion IS NULL OR pDireccion = '' OR
		pLocalidad IS NULL OR pLocalidad = '') THEN
		SELECT 'Campos obligatorios.' AS Mensaje;
		LEAVE SALIR;
	END IF;
 -- Controla que el nombre del comercio no exista ya.
	IF EXISTS(SELECT Comercio FROM Comercios WHERE Comercio = pComercio) THEN
		SELECT 'Comercio ya existente.' AS Mensaje;
		LEAVE SALIR;
	END IF;
 
    START TRANSACTION;    
	 -- Crea al comercio.
		INSERT INTO Comercios (Comercio, Telefono, Direccion, Localidad, EstadoComercio) VALUES 
								(pComercio, pTelefono, pDireccion, pLocalidad, 'A');
		SET pIdComercio = LAST_INSERT_ID();	
    COMMIT;
 -- Éxito.
    SELECT CONCAT('OK', pIdComercio) AS Mensaje;
 -- Mensaje varchar(100), Id int.
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_crear_medio_pago` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_crear_medio_pago`(pMedioPago varchar(100), pTipo varchar(10), pBanco varchar(100))
SALIR:BEGIN
	/*
	Permite crear un medio de pago, controlando que el nombre del mismo no exista ya, el banco es opcional. 
    Devuelve OK + Id o el mensaje de error en Mensaje.
    */
    DECLARE pIdMedioPago tinyint;
    
 -- Manejo de error en la transacción
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
        ROLLBACK;
	END;
 -- Controla que los campos obligatorios no sean nulos o vacíos
	IF (pMedioPago IS NULL OR pMedioPago = '' OR
        pTipo IS NULL OR pTipo = '') THEN
		SELECT 'Campos obligatorios.' AS Mensaje;
		LEAVE SALIR;
	END IF;
 -- Controla que el nombre del medio de pago no exista ya
	IF EXISTS (SELECT MedioPago FROM MediosPago WHERE MedioPago = pMedioPago) THEN
		SELECT 'Nombre del medio de pago ya existente.' AS Mensaje;
		LEAVE SALIR;
	END IF;
	
    START TRANSACTION;
	 -- Crea al medio de pago
		INSERT INTO MediosPago (MedioPago, Tipo, Banco) VALUES 
								(pMedioPago, pTipo, pBanco);
		SET pIdMedioPago = LAST_INSERT_ID();
	COMMIT;
 -- Éxito
    SELECT CONCAT('OK', pIdMedioPago) AS Mensaje;    
 -- Mensaje varchar(100), Id tinyint
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_crear_plan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_crear_plan`(pIdMedioPago tinyint, pCodigo varchar(15), pNumCuotas tinyint, 
									pTNA decimal(5,2))
SALIR:BEGIN
	/*
	Permite crear un plan controlando que el medio de pago exista, el código de la misma no exista ya, 
    el número de cuotas sea mayor a cero y el TNA entre 0 y 100. Devuelve OK + Id o el mensaje de error en 
    Mensaje.
    */
    DECLARE pIdPlan int;
    
 -- Manejo de error en la transacción
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
        ROLLBACK;
	END;
 -- Controla que los campos obligatorios no sean nulos o vacíos
	IF (pIdMedioPago IS NULL OR pIdMedioPago = '' OR
		pCodigo IS NULL OR pCodigo = '' OR
        pNumCuotas IS NULL OR pNumCuotas = '' OR
        pTNA IS NULL OR pTNA = '') THEN
		SELECT 'Campos obligatorios.' AS Mensaje;
		LEAVE SALIR;
	END IF;
 -- Controla que el número de cuotas sea mayor a cero y el TNA entre 0 y 100
	IF (pNumCuotas <= 0 OR pTNA < 0 OR pTNA > 100) THEN
		SELECT 'Parámetros erróneos.' AS Mensaje;
        LEAVE SALIR;
	END IF;
 -- Controla que el medio de pago exista
	IF NOT EXISTS (SELECT IdMedioPago FROM MediosPago WHERE IdMedioPago = pIdMedioPago) THEN
		SELECT 'El medio de pago no existe.' AS Mensaje;
		LEAVE SALIR;
	END IF;
 -- Controla que el código no exista ya
	IF EXISTS (SELECT Codigo FROM Planes WHERE Codigo = pCodigo) THEN
		SELECT 'Código ya existente.' AS Mensaje;
        LEAVE SALIR;
	END IF;
    
    START TRANSACTION;
		-- Crea al plan
		INSERT INTO Planes (IdMedioPago, Codigo, NumCuotas, TNA) VALUES 
							(pIdMedioPago, pCodigo, pNumCuotas, pTNA);
		SET pIdPlan = LAST_INSERT_ID();
    COMMIT;
 -- Éxito
    SELECT CONCAT('OK', pIdPlan) AS Mensaje;     
    
 -- Mensaje varchar(100), Id smallint
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_crear_plan_comercio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_crear_plan_comercio`(pIdComercio int, pIdPlan smallint, pIdMedioPago tinyint)
SALIR:BEGIN
	/*
	Permite crear un plan de comercio controlando que exista el comercio, plan y medio de pago, y además que 
    no exista otro plan de comercio con dichas asociaciones.
    Lo crea con estado A: Alta. Devuelve OK + Id o el mensaje de error en Mensaje.
    */
	DECLARE pIdPlanComercio int;
 -- Manejo de error en la transacción	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
        ROLLBACK;
	END;
 -- Controla que los campos obligatorios no sean nulos
	IF (pIdComercio IS NULL OR pIdPlan IS NULL OR pIdMedioPago IS NULL) THEN
		SELECT 'Campos obligatorios.' AS Mensaje;
		LEAVE SALIR;
	END IF;
 -- Controla que el comercio exista
	IF NOT EXISTS (SELECT IdComercio FROM Comercios WHERE IdComercio = pIdComercio) THEN
		SELECT 'El comercio no existe.' AS Mensaje;
		LEAVE SALIR;
	END IF;
 -- Controla que el plan con el medio de pago exista
	IF NOT EXISTS (SELECT IdPlan FROM Planes WHERE IdPlan = pIdPlan AND IdMedioPago = pIdMedioPago) THEN
		SELECT 'El plan con el medio de pago no existe.' AS Mensaje;
		LEAVE SALIR;
	END IF;
 -- Controla que la terna no este repetida para un plan de comercio existente
	IF EXISTS (SELECT IdPlanComercio FROM PlanesComercio WHERE IdComercio = pIdComercio AND IdPlan = pIdPlan AND IdMedioPago = pIdMedioPago) THEN
		SELECT 'Plan de comercio ya existente para las asociaciones dadas.' AS Mensaje;
        LEAVE SALIR;
	END IF;
    
    START TRANSACTION;
	 -- Crea al plan de comercio
		INSERT INTO PlanesComercio (IdComercio, IdPlan, IdMedioPago, EstadoPComercio) VALUES 
							(pIdComercio, pIdPlan, pIdMedioPago, 'A');
		SET pIdPlanComercio = LAST_INSERT_ID();
	COMMIT;
 -- Éxito
    SELECT CONCAT('OK', pIdPlanComercio) AS Mensaje;
 -- Mensaje varchar(100), Id int
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_crear_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_crear_usuario`(pIdComercio int, pApellidos varchar(60), pNombres varchar(60), 
									pTelefono varchar(15), pEmail varchar(60), pDNI varchar(10))
SALIR:BEGIN
	/*
	Permite crear un usuario, controlando que el comercio asociado exista y el DNI no exista ya. 
    Se crea en estado A: Alta. Devuelve OK + Id o el mensaje de error en Mensaje.    
    */
    DECLARE pIdUsuario int;
    
 -- Manejo de error en la transacción
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
        ROLLBACK;
	END;
 -- Controla que los campos obligatorios no sean nulos o vacíos
	IF (pIdComercio IS NULL OR pIdComercio = '' OR
		pApellidos IS NULL OR pApellidos = '' OR
        pNombres IS NULL OR pNombres = '') THEN
		SELECT 'Campos obligatorios.' AS Mensaje;
		LEAVE SALIR;
	END IF;
    IF (pTelefono IS NULL OR pTelefono = '' OR
		pEmail IS NULL OR pEmail = '' OR
        pDNI IS NULL OR pDNI = '') THEN
		SELECT 'Campos obligatorios.' AS Mensaje;
		LEAVE SALIR;
	END IF;
 -- Controla que el DNI no exista ya
	IF EXISTS (SELECT DNI FROM Usuarios WHERE DNI = pDNI) THEN
		SELECT 'DNI ya existente.' AS Mensaje;
		LEAVE SALIR;
	END IF;
 -- Controla que el comercio exista
	IF NOT EXISTS (SELECT IdComercio FROM Comercios WHERE IdComercio = pIdComercio) THEN    
		SELECT 'El comercio no existe.' AS Mensaje;
        LEAVE SALIR;
	END IF;
    
    START TRANSACTION;
	 -- Crea al usuario;
		INSERT INTO Usuarios (IdComercio, Nombres, Apellidos, Telefono, Email, DNI, EstadoUsuario) VALUES 
								(pIdComercio, pNombres, pApellidos, pTelefono, pEmail, pDNI, 'A');
		SET pIdUsuario = LAST_INSERT_ID();
	COMMIT;
 -- Éxito
    SELECT CONCAT('OK', pIdUsuario) AS Mensaje;
    
 -- Mensaje varchar(100), Id int
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_crear_venta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_crear_venta`(pIdUsuario int, pIdComercio int, pFechaAlta datetime, pMonto Decimal(12,2), 
									pDetalles text, pApellidosCliente varchar(60), pNombresCliente varchar(60), 
                                    pDireccionCliente varchar(100), pDNICliente varchar(10), pNumTarjetaCliente varchar(20), 
                                    pObservaciones TEXT)
SALIR:BEGIN
	/*
	Permite crear una nueva venta controlando que exista el usuario con el comercio asignado, y esté dado de alta. 
    Lo crea en estado A: En Edición. Devuelve OK + Id o el mensaje de error en Mensaje.
    */
 	DECLARE pIdVenta int;
    DECLARE pEstadoUsuario char(1);
 -- Manejo de error en la transacción	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
        ROLLBACK;
	END;
 -- Controla que los campos obligatorios no sean nulos
	IF (pIdUsuario IS NULL OR pIdUsuario = '' OR 
		pIdComercio IS NULL OR pIdComercio = '' OR
		pFechaAlta IS NULL OR 
        pMonto IS NULL OR pMonto = '' OR
        pDetalles IS NULL OR pDetalles = '') THEN
		SELECT 'Campos obligatorios.' AS Mensaje;
		LEAVE SALIR;
	END IF;
    IF (pApellidosCliente IS NULL OR pApellidosCliente = '' OR 
		pNombresCliente IS NULL OR pNombresCliente = '' OR
		pDireccionCliente IS NULL OR pDireccionCliente = '' OR
        pDNICliente IS NULL OR pDNICliente = '' OR
        pNumTarjetaCliente IS NULL OR pNumTarjetaCliente = '') THEN
		SELECT 'Campos obligatorios.' AS Mensaje;
		LEAVE SALIR;
	END IF;
 -- Controla que el monto sea mayor o igual que cero
	IF (pMonto < 0) THEN
		SELECT 'El monto debe ser mayor o igual que cero.' AS Mensaje;
        LEAVE SALIR;
	END IF;
 -- Controla que exista el usuario con el comercio asignado
	SET pEstadoUsuario = (SELECT EstadoUsuario FROM Usuarios WHERE IdUsuario = pIdUsuario AND IdComercio = pIdComercio);
    IF pEstadoUsuario IS NULL THEN
		SELECT 'El usuario con ese comercio no existe.' AS Mensaje;
		LEAVE SALIR;
	END IF;
 -- Controla que el usuario esté dado de alta
    IF pEstadoUsuario = 'B' THEN
		SELECT 'El usuario está dado de baja.' AS Mensaje;
        LEAVE SALIR;
	END IF;
    
    START TRANSACTION;
	 -- Crea a la venta en estado pendiente
		INSERT INTO Ventas (IdUsuario, IdComercio, FechaAlta, Monto, Detalles, ApellidosCliente, NombresCliente, DireccionCliente, 
							DNICliente, NumTarjetaCliente, Observaciones, EstadoVenta) VALUES 
							(pIdUsuario, pIdComercio, pFechaAlta, pMonto, pDetalles, pApellidosCliente, pNombresCliente, 
                            pDireccionCliente, pDNICliente, pNumTarjetaCliente, pObservaciones, 'A');
		SET pIdVenta = LAST_INSERT_ID();
	COMMIT;
 -- Éxito
    SELECT CONCAT('OK', pIdVenta) AS Mensaje;
 -- Mensaje varchar(100), Id int
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_dame_comercio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_dame_comercio`(pIdComercio int)
BEGIN
	/*
	Procedimiento que sirve para instanciar un comercio desde la base de datos.    
    */
	SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
    
    SELECT * FROM Comercios WHERE IdComercio = pIdComercio;
    
    SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;
 -- {Campos de la Tabla Comercios}
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_dame_medio_pago` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_dame_medio_pago`(pIdMedioPago tinyint)
BEGIN
	/*
	Procedimiento que sirve para instanciar un medio de pago desde la base de datos.    	
    */
    SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
    
    SELECT * FROM MediosPago WHERE IdMedioPago = pIdMedioPago;
    
    SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;
    
 -- {Campos de la Tabla MediosPago}
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_dame_plan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_dame_plan`(pIdPlan smallint)
BEGIN
	/*
	Procedimiento que sirve para instanciar un plan desde la base de datos.
    */
    SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
    
    SELECT * FROM Planes WHERE IdPlan = pIdPlan;
    
    SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;
    
 -- {Campos de la Tabla Planes}
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_dame_plan_comercio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_dame_plan_comercio`(pIdPlanComercio int)
BEGIN
	/*
	Procedimiento que sirve para instanciar un plan de comercio desde la base de datos.    	
    */
    SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
    
    SELECT * FROM PlanesComercio WHERE IdPlanComercio = pIdPlanComercio;
    
    SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;
    
 -- {Campos de la Tabla PlanesComercio}
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_dame_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_dame_usuario`(pIdUsuario int)
BEGIN
	/*
	Procedimiento que sirve para instanciar un usuario desde la base de datos.		
    */
    
    SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
    
    SELECT * FROM Usuarios WHERE IdUsuario = pIdUsuario;
    
    SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;
    
 -- {Campos de la Tabla Usuarios}
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_dame_venta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_dame_venta`(pIdVenta int)
BEGIN
	/*
	Procedimiento que sirve para instanciar una venta desde la base de datos.    
    */
    
    SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
    
    SELECT * FROM Ventas WHERE IdVenta = pIdVenta;
    
    SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
    
 -- {Campos de la Tabla Ventas}
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_daralta_comercio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_daralta_comercio`(pIdComercio int)
SALIR:BEGIN
	/*
    Permite cambiar el estado del comercio a A: Alta siempre y cuando no esté dado de alta ya.
    Devuelve OK o el mensaje de error en Mensaje.
    */
    DECLARE pEstadoComercio char(1);
 -- Manejo de error en la transacción.
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
        ROLLBACK;
	END;
 -- Controla si existe el comercio.
    SET pEstadoComercio = (SELECT EstadoComercio FROM Comercios WHERE IdComercio = pIdComercio);
    IF pEstadoComercio IS NULL THEN
		SELECT 'El comercio no existe.' AS Mensaje;
        LEAVE SALIR;
	END IF;
 -- Controla que no esté dado de alta ya.
    IF pEstadoComercio = 'A' THEN
		SELECT 'El comercio ya está dado de alta.' AS Mensaje;
        LEAVE SALIR;
	END IF;
    
 -- Da de alta al comercio.
	UPDATE Comercios SET EstadoComercio = 'A' WHERE IdComercio = pIdComercio;
 -- Éxito.
    SELECT 'OK' AS Mensaje;    
 -- Mensaje varchar(100).
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_daralta_plan_comercio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_daralta_plan_comercio`(pIdPlanComercio int)
SALIR:BEGIN
	/*
	Permite cambiar el estado del plan de comercio a A: Alta siempre y cuando no esté dado de alta ya. 
    Devuelve OK o el mensaje de error en Mensaje.
    */

    DECLARE pEstadoPComercio char(1);
 -- Manejo de error en la transacción
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
        ROLLBACK;
	END;
 -- Controla si existe el plan de comercio
    SET pEstadoPComercio = (SELECT EstadoPComercio FROM PlanesComercio WHERE IdPlanComercio = pIdPlanComercio);
    IF pEstadoPComercio IS NULL THEN
		SELECT 'El plan de comercio no existe.' AS Mensaje;
        LEAVE SALIR;
	END IF;
 -- Controla que no esté dado de alta ya
    IF pEstadoPComercio = 'A' THEN
		SELECT 'El plan de comercio ya está dado de alta.' AS Mensaje;
        LEAVE SALIR;
	END IF;
        
 -- Da de alta al plan de comercio
	UPDATE PlanesComercio SET EstadoPComercio = 'A' WHERE IdPlanComercio = pIdPlanComercio;

 -- Éxito
    SELECT 'OK' AS Mensaje;    
 -- Mensaje varchar(100)
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_daralta_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_daralta_usuario`(pIdUsuario int)
SALIR:BEGIN
	/*
	Permite cambiar el estado del usuario a A: Alta siempre y cuando no esté dado de alta ya. 
    Devuelve OK o el mensaje de error en Mensaje.		
    */
    
    DECLARE pEstadoUsuario char(1);
 -- Manejo de error en la transacción
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
        ROLLBACK;
	END;
 -- Controla si existe el usuario
    SET pEstadoUsuario = (SELECT EstadoUsuario FROM Usuarios WHERE IdUsuario = pIdUsuario);
    IF pEstadoUsuario IS NULL THEN
		SELECT 'El usuario no existe.' AS Mensaje;
        LEAVE SALIR;
	END IF;
 -- Controla que no esté dado de alta ya
    IF pEstadoUsuario = 'A' THEN
		SELECT 'El usuario ya está dado de alta.' AS Mensaje;
        LEAVE SALIR;
	END IF;
        
 -- Da de alta al usuario
	UPDATE Usuarios SET EstadoUsuario = 'A' WHERE IdUsuario = pIdUsuario;

 -- Éxito
    SELECT 'OK' AS Mensaje;    
 -- Mensaje varchar(100)
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_darbaja_comercio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_darbaja_comercio`(pIdComercio int)
SALIR:BEGIN
	/*
    Permite cambiar el estado del comercio a B: Baja siempre y cuando no esté dado de baja ya, y no existan usuarios y planes de comercio en 
    estado A: Alta. Devuelve OK o el mensaje de error en Mensaje. 
    */
    DECLARE pEstadoComercio, pEstadoUsuario, pEstadoPlanComercio char(1);
 -- Manejo de error en la transacción.
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
        ROLLBACK;
	END;
 -- Controla si existe el comercio.
    SET pEstadoComercio = (SELECT EstadoComercio FROM Comercios WHERE IdComercio = pIdComercio);
    IF pEstadoComercio IS NULL THEN
		SELECT 'El comercio no existe.' AS Mensaje;
        LEAVE SALIR;
	END IF;
 -- Controla que no esté dado de baja ya.
    IF pEstadoComercio = 'B' THEN
		SELECT 'El comercio ya está dado de baja.' AS Mensaje;
        LEAVE SALIR;
	END IF;
 -- Controla que no existan usuarios asociados dados de alta.
	IF EXISTS (SELECT IdUsuario FROM Usuarios WHERE IdComercio = pIdComercio AND EstadoUsuario = 'A') THEN
		SELECT 'Existen usuarios dados de alta.' AS Mensaje;
        LEAVE SALIR;
	END IF;
 -- Controla que no existan planes de comercio dados de alta.
	IF EXISTS (SELECT IdPlanComercio FROM PlanesComercio WHERE IdComercio = pIdComercio AND EstadoPComercio = 'A') THEN
		SELECT 'Existen planes de comercio dados de alta.' AS Mensaje;
        LEAVE SALIR;
	END IF;

 -- Da de baja al comercio.
	UPDATE Comercios SET EstadoComercio = 'B'
	WHERE IdComercio = pIdComercio;
 -- Éxito.
    SELECT 'OK' AS Mensaje;    
 -- Mensaje varchar(100).
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_darbaja_plan_comercio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_darbaja_plan_comercio`(pIdPlanComercio int)
SALIR:BEGIN
	/*
	Permite cambiar el estado del plan de comercio a B: Baja siempre y cuando no esté dado de baja ya, y no existan 
    ventas asociadas en estado A: En Edición o P: Pendiente.
    Devuelve OK o el mensaje de error en Mensaje.
    */

    DECLARE pEstadoPComercio char(1);
 -- Manejo de error en la transacción
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
        ROLLBACK;
	END;
 -- Controla si existe el plan de comercio
    SET pEstadoPComercio = (SELECT EstadoPComercio FROM PlanesComercio WHERE IdPlanComercio = pIdPlanComercio);
    IF pEstadoPComercio IS NULL THEN
		SELECT 'El plan de comercio no existe.' AS Mensaje;
        LEAVE SALIR;
	END IF;
 -- Controla que no esté dado de baja ya
    IF pEstadoPComercio = 'B' THEN
		SELECT 'El plan de comercio ya está dado de baja.' AS Mensaje;
        LEAVE SALIR;
	END IF;
 -- Controla que no tenga ventas asociadas en estado En Edición o Pendiente
	IF EXISTS (SELECT IdVenta FROM Ventas WHERE IdPlanComercio = pIdPlanComercio AND (EstadoVenta = 'A' OR EstadoVenta = 'P')) THEN
		SELECT 'Existen ventas asociadas en estado En Edición o Pendiente.' AS Mensaje;
		LEAVE SALIR;
	END IF;
        
 -- Da de baja al plan de comercio
	UPDATE PlanesComercio SET EstadoPComercio = 'B' WHERE IdPlanComercio = pIdPlanComercio;

 -- Éxito
    SELECT 'OK' AS Mensaje;    
 -- Mensaje varchar(100)
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_darbaja_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_darbaja_usuario`(pIdUsuario int)
SALIR:BEGIN
	/*
	Permite cambiar el estado del usuario a B: Baja siempre y cuando no esté dado de baja ya, y no existan 
    ventas asociadas en estado A: En Edición o P: Pendiente. 
    Devuelve OK o el mensaje de error en Mensaje.	
    */
    
    DECLARE pEstadoUsuario char(1);
 -- Manejo de error en la transacción
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
        ROLLBACK;
	END;
 -- Controla si existe el usuario
    SET pEstadoUsuario = (SELECT EstadoUsuario FROM Usuarios WHERE IdUsuario = pIdUsuario);
    IF pEstadoUsuario IS NULL THEN
		SELECT 'El usuario no existe.' AS Mensaje;
        LEAVE SALIR;
	END IF;
 -- Controla que no esté dado de baja ya
    IF pEstadoUsuario = 'B' THEN
		SELECT 'El usuario ya está dado de baja.' AS Mensaje;
        LEAVE SALIR;
	END IF;
 -- Controla que no tenga ventas asociadas en estado En Edición o Pendiente
	IF EXISTS (SELECT IdVenta FROM Ventas WHERE IdUsuario = pIdUsuario AND (EstadoVenta = 'A' OR EstadoVenta = 'P')) THEN
		SELECT 'Existen ventas asociadas en estado En Edición o Pendiente.' AS Mensaje;
		LEAVE SALIR;
	END IF;        
 -- Da de baja al usuario
	UPDATE Usuarios SET EstadoUsuario = 'B' WHERE IdUsuario = pIdUsuario;

 -- Éxito
    SELECT 'OK' AS Mensaje;    
 -- Mensaje varchar(100)
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_darbaja_venta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_darbaja_venta`(pIdVenta int)
SALIR:BEGIN
	/*
	Permite cambiar el estado de la venta a C: Baja siempre y cuando esté en el estado P: Pendiente. 
    Devuelve OK o el mensaje de error en Mensaje. 		
    */    
    DECLARE pEstadoVenta char(1);    
    
 -- Manejo de error en la transacción
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
        ROLLBACK;
	END;
 -- Controla que la venta exista
    SET pEstadoVenta = (SELECT EstadoVenta FROM Ventas WHERE IdVenta = pIdVenta);
    IF pEstadoVenta IS NULL THEN
		SELECT 'La venta no existe.' AS Mensaje;
        LEAVE SALIR;
	END IF;
 -- Controla que la venta este en estado P: Pendiente
    IF pEstadoVenta != 'P' THEN
		SELECT 'La venta no se encuentra pendiente.' AS Mensaje;
        LEAVE SALIR;
	END IF;
        
 -- Modifica el estado de la venta a C: Baja
	UPDATE Ventas SET EstadoVenta = 'C'
	WHERE IdVenta = pIdVenta;
 -- Éxito
    SELECT 'OK' AS Mensaje;    
 -- Mensaje varchar(100)
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_finalizar_venta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_finalizar_venta`(pIdVenta int)
SALIR:BEGIN
	/*
	Permite cambiar el estado de la venta a F: Finalizada siempre y cuando esté en el estado P: Pendiente. 
    Devuelve OK o el mensaje de error en Mensaje. 
    */    
    DECLARE pEstadoVenta char(1);    
    
 -- Manejo de error en la transacción
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' AS Mensaje;
        ROLLBACK;
	END;
 -- Controla que la venta exista
    SET pEstadoVenta = (SELECT EstadoVenta FROM Ventas WHERE IdVenta = pIdVenta);
    IF pEstadoVenta IS NULL THEN
		SELECT 'La venta no existe.' AS Mensaje;
        LEAVE SALIR;
	END IF;
 -- Controla que la venta este en estado P: Pendiente
    IF pEstadoVenta != 'P' THEN
		SELECT 'La venta no se encuentra pendiente.' AS Mensaje;
        LEAVE SALIR;
	END IF;
        
 -- Modifica el estado de la venta a F: Finalizada
	UPDATE Ventas SET EstadoVenta = 'F'
	WHERE IdVenta = pIdVenta;
 -- Éxito
    SELECT 'OK' AS Mensaje;    
 -- Mensaje varchar(100)
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_modificar_comercio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_modificar_comercio`(pIdComercio int, pComercio varchar(100), pTelefono varchar(12), 
											pDireccion varchar(100), pLocalidad varchar(100))
SALIR:BEGIN
	/*
	Permite modificar un comercio controlando que el nombre del mismo no exista exista ya. 
    Devuelve OK o el mensaje de error en Mensaje.
    */
 -- Manejo de error en la transacción.
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
        ROLLBACK;
	END;
 -- Controla que los campos obligatorios no sean nulos o vacíos.
	IF (pIdComercio IS NULL OR
		pComercio IS NULL OR pComercio = '' OR
        pTelefono IS NULL OR pTelefono = '') THEN
		SELECT 'Campos obligatorios.' AS Mensaje;
		LEAVE SALIR;
	END IF;
    IF (pDireccion IS NULL OR pDireccion = '' OR
		pLocalidad IS NULL OR pLocalidad = '') THEN
		SELECT 'Campos obligatorios.' AS Mensaje;
		LEAVE SALIR;
	END IF;
 -- Controla que el nombre del comercio no exista ya.
	IF EXISTS(SELECT Comercio FROM Comercios WHERE Comercio = pComercio AND IdComercio != pIdComercio) THEN
		SELECT 'Comercio ya existente.' AS Mensaje;
		LEAVE SALIR;
	END IF;
                
 -- Modifica al comercio.    
	UPDATE Comercios SET Comercio = pComercio, Telefono = pTelefono, Direccion = pDireccion, Localidad = pLocalidad
	WHERE IdComercio = pIdComercio;
 -- Éxito.
    SELECT CONCAT('OK') AS Mensaje;
 -- Mensaje varchar(100)
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_modificar_medio_pago` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_modificar_medio_pago`(pIdMedioPago tinyint, pMedioPago varchar(100), 
											pTipo varchar(10), pBanco varchar(100))
SALIR:BEGIN
	/*
	Permite modificar un medio de pago, controlando que el nombre del mismo no exista exista ya. 
    Devuelve OK o el mensaje de error en Mensaje.
    */

 -- Manejo de error en la transacción
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
        ROLLBACK;
	END;
 -- Controla que los campos obligatorios no sean nulos o vacíos
	IF (pIdMedioPago IS NULL OR
		pMedioPago IS NULL OR pMedioPago = '' OR
        pTipo IS NULL OR pTipo = '') THEN
		SELECT 'Campos obligatorios.' AS Mensaje;
		LEAVE SALIR;
	END IF;
 -- Controla que el nombre del medio de pago no exista ya
	IF EXISTS (SELECT MedioPago FROM MediosPago WHERE MedioPago = pMedioPago AND IdMedioPago != pIdMedioPago) THEN
		SELECT 'Nombre del medio de pago ya existente.' AS Mensaje;
		LEAVE SALIR;
	END IF;
    
 -- Modifica al medio de pago
	UPDATE MediosPago SET MedioPago = pMedioPago, Tipo = pTipo, Banco = pBanco
    WHERE IdMedioPago = pIdMedioPago;
							
 -- Éxito
    SELECT 'OK' AS Mensaje;
 -- Mensaje varchar(100)
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_modificar_plan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_modificar_plan`(pIdPlan smallint, pCodigo varchar(15), 
										pNumCuotas tinyint, pTNA decimal(5,2))
SALIR:BEGIN
	/*
	Permite modificar un plan controlando que el código no exista ya, el número de cuotas 
    sea mayor a cero y el TNA entre 0 y 100. Devuelve OK o el mensaje de error en Mensaje.    
    */

 -- Manejo de error en la transacción
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
        ROLLBACK;
	END;
 -- Controla que los campos obligatorios no sean nulos o vacíos
	IF (pIdPlan IS NULL OR pIdPlan = '' OR
		pCodigo IS NULL OR pCodigo = '' OR
        pNumCuotas IS NULL OR pNumCuotas = '' OR
        pTNA IS NULL OR pTNA = '') THEN
		SELECT 'Campos obligatorios.' AS Mensaje;
		LEAVE SALIR;
	END IF;
 -- Controla que el número de cuotas sea mayor a cero y el TNA entre 0 y 100
	IF (pNumCuotas <= 0 OR pTNA < 0 OR pTNA > 100) THEN
		SELECT 'Parámetros erróneos.' AS Mensaje;
        LEAVE SALIR;
	END IF;
 -- Controla que el código no exista ya
	IF EXISTS (SELECT Codigo FROM Planes WHERE Codigo = pCodigo AND IdPlan != pIdPlan) THEN
		SELECT 'Código ya existente.' AS Mensaje;
        LEAVE SALIR;
	END IF;
    
 -- Modifica al plan
	UPDATE Planes SET Codigo = pCodigo, NumCuotas = pNumCuotas, TNA = pTNA
    WHERE IdPlan = pIdPlan;
							
 -- Éxito
    SELECT 'OK' AS Mensaje;
 -- Mensaje varchar(100)
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psp_modificar_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psp_modificar_usuario`(pIdUsuario int, pApellidos varchar(60), 
										pNombres varchar(60), pTelefono varchar(15), 
                                        pEmail varchar(60), pDNI varchar(10))
SALIR:BEGIN
	/*
	Permite modificar un usuario controlando que el DNI no exista ya. 
    Devuelve OK o el mensaje de error en Mensaje.
    */
    
 -- Manejo de error en la transacción
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN
		SHOW ERRORS;
		SELECT 'Error en la transacción. Contáctese con el administrador.' Mensaje;
        ROLLBACK;
	END;
 -- Controla que los campos obligatorios no sean nulos o vacíos
	IF (pApellidos IS NULL OR pApellidos = '' OR
        pNombres IS NULL OR pNombres = '') THEN
		SELECT 'Campos obligatorios.' AS Mensaje;
		LEAVE SALIR;
	END IF;
    IF (pTelefono IS NULL OR pTelefono = '' OR
		pEmail IS NULL OR pEmail = '' OR
        pDNI IS NULL OR pDNI = '') THEN
		SELECT 'Campos obligatorios.' AS Mensaje;
		LEAVE SALIR;
	END IF;
 -- Controla que el DNI no exista ya
	IF EXISTS (SELECT DNI FROM Usuarios WHERE DNI = pDNI AND IdUsuario != pIdUsuario) THEN
		SELECT 'DNI ya existente.' AS Mensaje;
		LEAVE SALIR;
	END IF;
 
	UPDATE Usuarios SET Nombres = pNombres, Apellidos = pApellidos, Telefono = pTelefono, Email = pEmail, DNI = pDNI
    WHERE IdUsuario = pIdUsuario;
							
 -- Éxito
    SELECT 'OK' AS Mensaje;
 -- Mensaje varchar(100)
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-18 19:42:57
