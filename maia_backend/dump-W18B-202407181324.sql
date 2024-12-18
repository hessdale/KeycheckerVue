-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: maia_db
-- ------------------------------------------------------
-- Server version	5.5.5-10.6.13-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `salt` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_un` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (2,'maia','*839B0D925490759238CF456892C739D460B68A9F','6141dfe77a3d4d7b8226cae75e652a85');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_session`
--

DROP TABLE IF EXISTS `client_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_session` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `token` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `client_session_client_FK` (`client_id`),
  CONSTRAINT `client_session_client_FK` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_session`
--

LOCK TABLES `client_session` WRITE;
/*!40000 ALTER TABLE `client_session` DISABLE KEYS */;
INSERT INTO `client_session` VALUES (1,2,'c9a6e00acc68404fb3f55e89bf5d408d','2024-03-24 14:01:02'),(2,2,'179bd894acf44af0a2e657021c64b187','2024-03-24 14:03:33'),(3,2,'9f6ccb9be727458d938b6cdda9bc4c10','2024-03-24 14:15:16'),(4,2,'61a2e87e911f4fcc92b0bc7555b3dc34','2024-03-24 14:15:23'),(5,2,'b8c319fe0cf542af9aea54faf719552e','2024-03-24 14:15:47'),(6,2,'c49db4c177df4550baf66d01a4436a88','2024-03-24 14:23:22'),(7,2,'66270880b08a49f7ad6e08c6c0f3efdc','2024-03-25 17:10:18'),(8,2,'53780535f7114d7f9574a560e74d4202','2024-03-25 17:10:49'),(9,2,'256a5fdb02ad4cacbc9f199f8680ab0d','2024-03-27 15:44:51'),(10,2,'859f0409640544c3b51849df476ed790','2024-03-28 18:38:56'),(11,2,'54c440b67bf044a0898a4134def97449','2024-03-29 17:22:19'),(12,2,'682370dd6f8e4cb4aa913a0ce640ecd6','2024-03-30 11:22:32'),(13,2,'9aed77b5ad7f43c89a96d64014f8b560','2024-04-02 12:10:29');
/*!40000 ALTER TABLE `client_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_comments`
--

DROP TABLE IF EXISTS `contact_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(200) NOT NULL,
  `note` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_comments`
--

LOCK TABLES `contact_comments` WRITE;
/*!40000 ALTER TABLE `contact_comments` DISABLE KEYS */;
INSERT INTO `contact_comments` VALUES (1,'Dale','Hess','hessdale96@gmail.com','test'),(2,'Dale','Hess','hessdale96@gmail.com','test'),(3,'Dale','Hess','hessdale96@gmail.com','test'),(4,'Dale','Hess','hessdale96@gmail.com','testttt'),(5,'Dale','Hess','hessdale96@gmail.com','testttt'),(6,'DAle','Hess','hessdale96@gmail.com','testtttt'),(7,'Dale','Hess','hessdale96@gmail.com','testing using form'),(8,'Dale','Hess','hessdale96@gmail.com','testing'),(9,'Dale','hessdale96@gmail.com','hessdale96@gmail.com','testing1'),(10,'Dale','Hess','hessdale96@gmail.com','testing2'),(11,'Dale','Hess','hessdale96@gmail.com','testing 3'),(12,'Dale','Hess','hessdale96@gmail.com','testing 3'),(13,'Dale','Hess','hessdale96@gmail.com','testing4'),(14,'asdjkhlasd','asdhjksdahjk','asdkhj','jkhasdhjkasdhjkasd'),(15,'test','hessdale96@gmail.com','hessdale96@gmail.com','test1222'),(16,'first','last','hessdale96@gmail.com','test1222'),(17,'Dale','Hess','hessdale96@gmail.com',''),(18,'Dale','Hess','hessdale96@gmail.com','test'),(19,'empty test','','',''),(20,'empty test','','',''),(21,'empty test','','',''),(22,'empty test','empty','hessdale96@gmail.com','test'),(23,'Dale','Hess','hessdale96@gmail.com','need to fix name auto fill'),(24,'hessdale96@gmail.com','hessdale96@gmail.com','hessdale96@gmail.com','test'),(25,'Dale','Hess','hessdale96@gmail.com','testing autofill working'),(26,'Dale','Hess','hessdale96@gmail.com','autofill works and not is right size'),(27,'Dale','Hess','hessdale96@gmail.com','test'),(28,'Dale','Hess','hessdale96@gmail.com','note test'),(29,'Dale','Hess','hessdale96@gmail.com','message');
/*!40000 ALTER TABLE `contact_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `design_photos`
--

DROP TABLE IF EXISTS `design_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `design_photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(100) NOT NULL,
  `image_description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `design_photos_un` (`file`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `design_photos`
--

LOCK TABLES `design_photos` WRITE;
/*!40000 ALTER TABLE `design_photos` DISABLE KEYS */;
INSERT INTO `design_photos` VALUES (10,'94f7120fd1544ba585d96ffdae5596df.jpg','beige design poster with various bonsai trees on it'),(11,'5bac29721a084aa497f529d55e2a301b.jpg','white design poster of various types of midcentury modern chairs'),(12,'5cd9c32f29e246cdaa65355db9c3eac3.jpeg','poster of a map with with coffee cups on it showcasing cafes in vancouver'),(13,'05d92578813548ecab0acbae33c91dd5.jpeg','collage of various drawn colourful shous'),(14,'1dbf99c171394ece975dce5d0e459ddd.gif','cartoon animated gif of three people under an umbrella'),(15,'9b3e396ee20147a2830d603525dbcf63.gif','animated gif of a person with a watering can watering books'),(17,'f367c77ef32b465dae23027d330f44f8.jpg','poster saying beans beans the magical fruit that has three happy bean characters on it'),(18,'fa1b39e553154b8d82130af865852da4.jpeg','poster for dj event for oldflings in nyc'),(19,'227553f3403846058dfa43a6b4cd2772.jpg','poster of a peaceful day at the park playing solitaire and reading'),(20,'f01937eb013748a8b0a865da2ac2647e.png','sign for natural and eco friendly hair removal with women and flowers on it'),(22,'8509ffa8ab3e48569f77bb629c06e03f.gif','animated gif of sophie spinning around and torn photos collaged over and scratched'),(23,'9bb870325a2544499023de0039666df6.jpg','collage photos of sophie on the couch and close up');
/*!40000 ALTER TABLE `design_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `misc_photos`
--

DROP TABLE IF EXISTS `misc_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `misc_photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(100) NOT NULL,
  `image_description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewTable_un` (`file`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `misc_photos`
--

LOCK TABLES `misc_photos` WRITE;
/*!40000 ALTER TABLE `misc_photos` DISABLE KEYS */;
INSERT INTO `misc_photos` VALUES (1,'625b055b8d1a40b29fc4a739af30418b.jpg','a photo of a pink rose on a red background with a small bow of pearls on the stem'),(2,'72f3225b82ae4c0ebe0f2b68a5d556ff.jpg','crushed old budwieser can on the beach'),(3,'57f4a509587a43b7bd8d593742e7a58b.jpeg','f.miller facial products floating on cloudy background'),(4,'5addef274c064cf1b7d95dafc2744848.jpeg','pink flowers with pearls draped over them on a white background'),(5,'d5422f2f8aed4a829877dafc86056bf2.jpg','heart shaped earrings on a red background'),(6,'46cf5c3beaef4484aa8a5394b70d8ff5.jpg','pearl necklaces on a red background'),(8,'c5c3540643a84d01909c5115b446b07e.jpeg','monstera plant on the sunlight in front of a lace curtain');
/*!40000 ALTER TABLE `misc_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portrait_photos`
--

DROP TABLE IF EXISTS `portrait_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `portrait_photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(100) NOT NULL,
  `image_description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `portrait_photos_un` (`file`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portrait_photos`
--

LOCK TABLES `portrait_photos` WRITE;
/*!40000 ALTER TABLE `portrait_photos` DISABLE KEYS */;
INSERT INTO `portrait_photos` VALUES (1,'256a3595a6d343aaa245ba3c60f1b9d6.jpeg','woman laying on a lap wearing blue ruby jewelry'),(2,'5914ed314aed48b1b64b7bd9a4186d96.jpeg','two female models wearing pearls'),(3,'49c740e8c51042898f7cce4145d9fb64.jpg','male model wearing blue suit in front of white background'),(4,'d36e3aa8b0a443828d3235e52b98ac52.jpg','male model wearing blue suit in front of white background'),(5,'e9483b2906904f02a02d094f560b4319.jpg','male model wearing grey suit in front of white background with messy lipstick'),(6,'c9adeb259c37456993000d259390cc19.jpg','male model wearing grey suit in front of white background with messy lipstick'),(8,'863b7f7aa8a247a0bac2bb0a9c59c7ed.jpg','male model wearing brown suit in front of red background lighting a cigarette'),(9,'6fba025f2ed449b8bdd8eba2c311b221.jpeg','male model wearing brown suit in front of red background lighting a cigarette'),(10,'ea349e362314474e8664b7b3b40f58b0.jpeg','headshot of male model wearing brown suit in front of red background'),(11,'3aef7256114246bba5f9f62804bbb392.jpeg','male model wearing brown suit in front of red background lighting a cigarette'),(12,'6fe862a254c541a4864ec8a60ae95609.jpeg','collage of headshots of male model wearing a brown shirt'),(13,'b06fa8cce64c4f9783bcebb766aed286.jpeg','headshot of woman wearing blue ruby jewelry'),(14,'01ad4c97a8974c8b8098ef373e617caf.jpeg','headshot of woman wearing blue ruby jewelry'),(15,'769923002f7d4c07a770b78d0012eacf.jpeg','women wearing blue ruby jewelry'),(16,'49a35c484e26449ba3c74857134fd993.jpeg','woman with her child playing andwearing blue ruby jewelry'),(17,'571535e7ddd445eab1a33b404bffef88.jpeg','woman shaking her head on a roof top'),(19,'47c3661d6ae84fcc994a3e80667ffec2.jpeg','headshot of a woman wearing pearls'),(20,'3807a5fbb55d467bb7f23f9a58255618.jpeg','woman wearing pearls in front of a beige background'),(22,'5fe3aae503bb4ba28b11ad4bedf4ad77.jpeg','woman wearing pearls in front of a beige background'),(23,'4a16ca04b0ff48e2a943c35b172d0b2d.jpeg','woman wearing jewelry in front of a blue background'),(25,'1be6c631b038458ca9b30e0d9b2f3218.jpeg','woman sitting on couch wearing pearls'),(26,'d2619ee9b06d45648a4c527bd13e5a02.jpeg','male model wearing brown suit in front of red background lighting a cigarette');
/*!40000 ALTER TABLE `portrait_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'maia_db'
--
/*!50003 DROP PROCEDURE IF EXISTS `delete_client_session` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_client_session`(token_input varchar(100))
    MODIFIES SQL DATA
begin
	select convert(username using "utf8") as username from maia_db.client where id=(select client_id from client_session where token = token_input);
    delete from maia_db.client_session where token = token_input;
    commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_design_photos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_design_photos`()
begin
	SELECT id, convert(file using "utf8")as file, convert(image_description using "utf8")as image_description FROM maia_db.design_photos;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_misc_photos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_misc_photos`()
begin
	SELECT id, convert(file using "utf8")as file, convert(image_description using "utf8")as image_description FROM maia_db.misc_photos;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_portrait_photos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_portrait_photos`()
begin
	SELECT id, convert(file using "utf8")as file, convert(image_description using "utf8")as image_description FROM maia_db.portrait_photos;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `post_client` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `post_client`(username_input varchar(100),password_input varchar(100),salt_input varchar(100))
    MODIFIES SQL DATA
begin
	INSERT INTO maia_db.client ( username, password, salt) values (username_input,password(concat(password_input,salt_input)),salt_input);
    select c.id from maia_db.client c where c.id = last_insert_id(); 
	commit;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `post_client_session` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `post_client_session`(token_input varchar(100),username_input varchar(100),password_input varchar(100))
    MODIFIES SQL DATA
begin
	INSERT INTO maia_db.client_session (client_id, token, created_at) 
	VALUES((SELECT id FROM maia_db.client where username = username_input and 
	password = password(concat(password_input,(select c.salt from client c where username=username_input)))),
	token_input,now());
	select id,convert(token using"utf8")as token from client_session cs where id = last_insert_id(); 
	commit;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `post_contact_form` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `post_contact_form`(first_name_input varchar(150), last_name_input varchar(150), email_input varchar(200), note_input varchar(2000))
    MODIFIES SQL DATA
begin
	INSERT INTO maia_db.contact_comments ( first_name, last_name, email, note)
    VALUES(first_name_input, last_name_input, email_input, note_input);
    select convert(cc.first_name using "utf8") as first_name ,convert(cc.last_name using "utf8") as last_name ,convert(cc.email using "utf8") as email,convert(cc.note using "utf8") as note  from maia_db.contact_comments cc where id = last_insert_id();
	commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `post_design_photo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `post_design_photo`(token_input varchar(100),file_input varchar(100),image_description_input varchar(100))
    MODIFIES SQL DATA
begin
	if (select id from client_session where token=token_input) is not null then
	INSERT INTO maia_db.design_photos (file, image_description) VALUES(file_input,image_description_input);
    select dp.id from maia_db.design_photos dp where id = last_insert_id(); 
    commit;
    end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `post_misc_photo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `post_misc_photo`(token_input varchar(100),file_input varchar(100),image_description_input varchar(100))
    MODIFIES SQL DATA
begin
if (select id from client_session where token=token_input) is not null then
	INSERT INTO maia_db.misc_photos (file, image_description) VALUES(file_input,image_description_input);
    select mp.id from maia_db.misc_photos mp where id = last_insert_id(); 
    commit;
    end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `post_portrait_photo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `post_portrait_photo`(token_input varchar(100),file_input varchar(100),image_description_input varchar(100))
    MODIFIES SQL DATA
begin
	if (select id from client_session where token=token_input) is not null then
	INSERT INTO maia_db.portrait_photos (file, image_description) VALUES(file_input,image_description_input);
    select pp.id from maia_db.portrait_photos pp where id = last_insert_id();
    commit;
    end if;
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

-- Dump completed on 2024-07-18 13:24:51
