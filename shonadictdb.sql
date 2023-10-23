-- MariaDB dump 10.19  Distrib 10.11.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: shonadictdb
-- ------------------------------------------------------
-- Server version	10.11.2-MariaDB

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
-- Table structure for table `antonyms`
--

DROP TABLE IF EXISTS `antonyms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `antonyms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word_id` int(11) NOT NULL,
  `antonym` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `word_id` (`word_id`),
  KEY `ix_antonyms_id` (`id`),
  CONSTRAINT `antonyms_ibfk_1` FOREIGN KEY (`word_id`) REFERENCES `words` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antonyms`
--

LOCK TABLES `antonyms` WRITE;
/*!40000 ALTER TABLE `antonyms` DISABLE KEYS */;
/*!40000 ALTER TABLE `antonyms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examples`
--

DROP TABLE IF EXISTS `examples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examples` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word_id` int(11) NOT NULL,
  `example` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `word_id` (`word_id`),
  KEY `ix_examples_id` (`id`),
  CONSTRAINT `examples_ibfk_1` FOREIGN KEY (`word_id`) REFERENCES `words` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examples`
--

LOCK TABLES `examples` WRITE;
/*!40000 ALTER TABLE `examples` DISABLE KEYS */;
INSERT INTO `examples` VALUES
(9,9,'','2023-10-05 11:19:42','2023-10-05 11:19:42'),
(10,10,'Nditsvode pahuma','2023-10-05 17:49:51','2023-10-05 17:49:51'),
(11,10,'akamutsvoda pamuromo','2023-10-05 17:49:51','2023-10-05 17:49:51'),
(12,11,'Mukamana uyu mwana wangu','2023-10-05 19:02:44','2023-10-05 19:02:44'),
(13,11,'Mukomana uyu ane musikana wake','2023-10-05 19:02:44','2023-10-05 19:02:44'),
(14,11,'Mukomana uyu itsvuura muromo','2023-10-05 19:02:44','2023-10-05 19:02:44'),
(15,12,'Motokari','2023-10-12 23:24:50','2023-10-12 23:24:50'),
(16,12,'Miti','2023-10-12 23:24:50','2023-10-12 23:24:50'),
(17,13,'Mwanakomana akaberekwa muna kurume','2023-10-12 23:31:41','2023-10-12 23:31:41');
/*!40000 ALTER TABLE `examples` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word_id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `word_id` (`word_id`),
  KEY `ix_images_id` (`id`),
  CONSTRAINT `images_ibfk_1` FOREIGN KEY (`word_id`) REFERENCES `words` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `synonyms`
--

DROP TABLE IF EXISTS `synonyms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `synonyms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word_id` int(11) NOT NULL,
  `synonym` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `word_id` (`word_id`),
  KEY `ix_synonyms_id` (`id`),
  CONSTRAINT `synonyms_ibfk_1` FOREIGN KEY (`word_id`) REFERENCES `words` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `synonyms`
--

LOCK TABLES `synonyms` WRITE;
/*!40000 ALTER TABLE `synonyms` DISABLE KEYS */;
/*!40000 ALTER TABLE `synonyms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_nyaudzousingwi`
--

DROP TABLE IF EXISTS `tbl_nyaudzousingwi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_nyaudzousingwi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` text NOT NULL,
  `definition` text NOT NULL,
  `bln_active` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `ix_tbl_nyaudzousingwi_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_nyaudzousingwi`
--

LOCK TABLES `tbl_nyaudzousingwi` WRITE;
/*!40000 ALTER TABLE `tbl_nyaudzousingwi` DISABLE KEYS */;
INSERT INTO `tbl_nyaudzousingwi` VALUES
(1,'Kuti Ndooo','Kusviba',1,'2023-10-17 16:01:26','2023-10-17 16:01:26'),
(2,'Kuti Vai','kupenya',1,'2023-10-17 16:01:45','2023-10-17 16:01:45'),
(3,'POSHOSHEDZA','pukushu pukushu (apply carelessly) Kumeso kwake kwairatidza kuti mafuta ainge angonzi pukushu pukushu,',1,'2023-10-17 16:57:44','2023-10-17 16:57:44'),
(6,'NYANGIRA','pfacha (arrive suddenly) Akangoerekana ati pfacha pamusha, vanhu vagere zvavo.',1,'2023-10-17 17:02:24','2023-10-17 17:02:24'),
(7,'SVABURA, ZVAMBURA','svabu (beat lightly)Amai vakamuti svabu nekashamhu, mushure mokunge aita musikanzwa.',1,'2023-10-17 17:03:23','2023-10-17 17:03:23'),
(8,'zvambu (beat severely)','Akanzi zvambu kusvika adura zvakanga zvaitika.',1,'2023-10-17 17:04:07','2023-10-17 17:04:07'),
(9,'KOTAMA','kota kota (bend over continuously (e.g. when hoeing)) Kota kota mubanimo.',1,'2023-10-17 17:04:51','2023-10-17 17:04:51');
/*!40000 ALTER TABLE `tbl_nyaudzousingwi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tsumo`
--

DROP TABLE IF EXISTS `tbl_tsumo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tsumo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` text NOT NULL,
  `bln_active` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `ix_tbl_tsumo_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tsumo`
--

LOCK TABLES `tbl_tsumo` WRITE;
/*!40000 ALTER TABLE `tbl_tsumo` DISABLE KEYS */;
INSERT INTO `tbl_tsumo` VALUES
(1,'Aive madziva ava mazambuko. (What used to be hard is now simple.People that used to be great are now simple).',1,'2023-10-17 17:21:13','2023-10-17 17:21:13'),
(2,'Akuruma nzeve ndewako',1,'2023-10-17 17:21:30','2023-10-17 17:21:30'),
(3,'Ane benzi ndeane rake, kudzana unopururudza',1,'2023-10-17 17:21:49','2023-10-17 17:21:49'),
(4,'Ateya mariva murutsva haatyi kusviba magaro.',1,'2023-10-17 17:22:07','2023-10-17 17:22:07'),
(5,'Chakafukidza dzimba matenga.',1,'2023-10-17 17:22:23','2023-10-17 17:22:23'),
(6,'Chaitemura chava kuseva.',1,'2023-10-17 17:22:40','2023-10-17 17:22:40'),
(7,' Chikuriri chine chimwe.',1,'2023-10-17 17:22:58','2023-10-17 17:22:58'),
(8,'Chinobhururka chinomhara. ',1,'2023-10-18 19:30:14','2023-10-18 19:30:14'),
(9,'Akanga nyimo avangarara',1,'2023-10-18 19:30:40','2023-10-18 19:30:40'),
(10,'Chinobhururka chinomhara. ',1,'2023-10-18 19:31:09','2023-10-18 19:31:09'),
(11,'Chirere chigokurerawo.',1,'2023-10-18 19:31:35','2023-10-18 19:31:35'),
(12,'Chisi hachiyeri musi wacharimwa',1,'2023-10-18 19:31:55','2023-10-18 19:31:55'),
(13,'Chisingaperi chinoshura',1,'2023-10-18 19:32:19','2023-10-18 19:32:19'),
(14,'Chitsva chiri murutsoka.',1,'2023-10-18 19:32:40','2023-10-18 19:32:40'),
(15,'Chiri mumusakasaka chinozvinzwira.',1,'2023-10-18 19:33:01','2023-10-18 19:33:01'),
(16,'Chara chimwe hachitswanyi inda',1,'2023-10-18 19:33:26','2023-10-18 19:33:26'),
(17,'Charova sei chando chakwidza hamba mumuti.',1,'2023-10-18 19:34:15','2023-10-18 19:34:15'),
(18,'. Charovedzera charovedzera, gudo rakakwira mawere kwasviba.',1,'2023-10-18 19:34:40','2023-10-18 19:34:40'),
(19,'Chembere mukadzi hazvienzani nekurara mugota.',1,'2023-10-18 19:35:01','2023-10-18 19:35:01'),
(20,'Chidamoyo hamba yakada makwati.',1,'2023-10-18 19:35:22','2023-10-18 19:35:22'),
(21,'Chinono chinengwe, bere rakadya richifamba.',1,'2023-10-18 19:35:49','2023-10-18 19:35:49'),
(22,'Chinoziva ivhu kuti mwana wembeva anorwara.',1,'2023-10-18 19:36:08','2023-10-18 19:36:08'),
(23,'Chiri mumoyo chiri muninga.',1,'2023-10-18 19:36:29','2023-10-18 19:36:29'),
(24,'Chiri pamuchena chiri pamutenure.',1,'2023-10-18 19:36:45','2023-10-18 19:36:45'),
(25,'Chitaurirwa hunyimwa mbare dzekumusana',1,'2023-10-18 19:37:16','2023-10-18 19:37:16'),
(26,'Chenga ose manhanga hapana risina mhodzi.',1,'2023-10-18 19:37:49','2023-10-18 19:37:49'),
(27,'Gudo guru peta muswe kuti vaduku vakutye.',1,'2023-10-18 19:38:06','2023-10-18 19:38:06'),
(28,'. Guyu kutsvuka kutsvuka zvaro asi mukati rine masvosve.',1,'2023-10-18 19:38:24','2023-10-18 19:38:24'),
(29,'Igaroziva kuti mhanza yembudzi iri mumabvi. ',1,'2023-10-18 19:38:53','2023-10-18 19:38:53'),
(30,'Imbwa nyoro ndidzo tsengi dzamatovo.',1,'2023-10-18 19:39:58','2023-10-18 19:39:58'),
(31,'Kakara kununa hudya kamwe.',1,'2023-10-18 19:40:16','2023-10-18 19:40:16'),
(32,'Kamoto kamberevere kakapisa matanda mberi.',1,'2023-10-18 19:40:34','2023-10-18 19:40:34'),
(33,'Kandiro kanoenda kunobva kamwe.',1,'2023-10-18 19:40:57','2023-10-18 19:40:57'),
(34,'Kuipa kuipa zvaro bveni, asi haridyi chakafa choga.',1,'2023-10-18 19:41:27','2023-10-18 19:41:27'),
(35,'Kukurukura hunge wapotswa.',1,'2023-10-18 19:41:52','2023-10-18 19:41:52'),
(36,'Kure kwegava ndiko kusina mutsubvu',1,'2023-10-18 19:42:43','2023-10-18 19:42:43'),
(37,'Kure kwemeso nzeve dzinonzwa.',1,'2023-10-18 19:43:49','2023-10-18 19:43:49'),
(38,'Kuudza mwana hupedzisira.',1,'2023-10-18 19:44:09','2023-10-18 19:44:09'),
(39,'Kuziva ambuya huudzwa.',1,'2023-10-18 19:44:26','2023-10-18 19:44:26'),
(40,'Kuwanda kwakanaka, kwakaipira kupedza muto.',1,'2023-10-18 19:44:58','2023-10-18 19:44:58'),
(41,'Kuwanda huuya.',1,'2023-10-18 19:45:28','2023-10-18 19:45:28'),
(42,'Kuvhunduka chati kwati hunge uine katurike.',1,'2023-10-18 19:46:07','2023-10-18 19:46:07'),
(43,'. Mandikurumidze akazvara mandinonoke.',1,'2023-10-18 19:46:24','2023-10-18 19:46:24'),
(44,'Manga chena yakaparira parere nhema.',1,'2023-10-18 19:48:07','2023-10-18 19:48:07'),
(45,'Matakadya kare haanyaradzi mwana.',1,'2023-10-18 19:48:39','2023-10-18 19:48:39'),
(46,'Mbeva zhinji hadzina mashe.',1,'2023-10-18 19:49:00','2023-10-18 19:49:00'),
(47,'Mbudzi kuzvarira pavanhu kuda kutandirwa imbwa.',1,'2023-10-18 19:49:27','2023-10-18 19:49:27'),
(48,'Mazvokuda mavanga enyora.',1,'2023-10-18 19:49:54','2023-10-18 19:49:54'),
(49,'Mhembwe rudzi inozvara mwana ane kazhumu.',1,'2023-10-18 19:50:13','2023-10-18 19:50:13'),
(50,'. Mudzimu wakupa chironda wati nhunzi dzikudye.',1,'2023-10-18 19:50:32','2023-10-18 19:50:32'),
(51,'Murombo haarovi chinenguwo.',1,'2023-10-18 19:50:53','2023-10-18 19:50:53'),
(52,'Muroyi royera kure vekwako vagokureverera.',1,'2023-10-18 19:51:16','2023-10-18 19:51:16'),
(53,'Mwana wamambo muranda kumwe.',1,'2023-10-18 19:51:38','2023-10-18 19:51:38'),
(54,'Mwana kuberekwa vaviri, mugota hamuchemi kacheche.',1,'2023-10-18 19:52:13','2023-10-18 19:52:13'),
(55,'Mviromviro yemhanza mapfeka.',1,'2023-10-18 19:52:29','2023-10-18 19:52:29'),
(56,'Mombe yekurunzirwa ndeyekukama wakarinde nzira.',1,'2023-10-18 19:52:50','2023-10-18 19:52:50'),
(57,'Makadzi munaku kusaba anoroya.',1,'2023-10-18 19:53:14','2023-10-18 19:53:14'),
(58,'Mukuru mukuru hanga haigari pfunde. ',1,'2023-10-18 19:53:43','2023-10-18 19:53:43'),
(59,'Mwana asingachemi anofira mumbereko.',1,'2023-10-18 19:54:03','2023-10-18 19:54:03'),
(60,'Takabva neko kumhunga hakuna ipwa.',1,'2023-10-18 19:54:25','2023-10-18 19:54:25'),
(61,'Nzenza mumvuri, asvika anovanda zuva.',1,'2023-10-18 19:54:52','2023-10-18 19:54:52'),
(62,'Nzombe huru yakabva mukurerwa.',1,'2023-10-18 19:55:16','2023-10-18 19:55:16'),
(63,'Nzou hairemerwi nenyanga dzayo.',1,'2023-10-18 19:55:33','2023-10-18 19:55:33'),
(64,'Pfavira ngoma, husiku hurefu.',1,'2023-10-18 19:55:55','2023-10-18 19:55:55'),
(65,'Rinamanyanga hariputirwi mushushunje.',1,'2023-10-18 19:56:15','2023-10-18 19:56:15'),
(66,'Ramba kuudzwa akaonekwa nembonje pahuma.',1,'2023-10-18 19:56:35','2023-10-18 19:56:35'),
(67,'Rega zvipore akabva mukutsva.',1,'2023-10-18 19:56:53','2023-10-18 19:56:53'),
(68,'Regai dzive shiri, mazai haana muto.',1,'2023-10-18 19:57:15','2023-10-18 19:57:15'),
(69,'Rudo ibofu.',1,'2023-10-18 19:57:34','2023-10-18 19:57:34'),
(70,'Rume rimwe harikombi churu.',1,'2023-10-18 19:57:55','2023-10-18 19:57:55'),
(71,'Simbi inorohwa ichapisa.',1,'2023-10-18 19:58:19','2023-10-18 19:58:19'),
(72,'Varume kutsva kwendebvu vanodzimurana.',1,'2023-10-18 19:58:37','2023-10-18 19:58:37'),
(73,'Vasikana kudada kudada zvenyu, tichaonana magaro pakuyambuka.',1,'2023-10-18 20:26:27','2023-10-18 20:26:27'),
(74,'Wakurumidza kumedza, kutsenga uchada.',1,'2023-10-18 20:27:05','2023-10-18 20:27:05'),
(75,'Yadeuka yadeuka mvura yemuguchu haidyorerwi.',1,'2023-10-18 20:27:33','2023-10-18 20:27:33'),
(76,'Yatsika dope yanwa.',1,'2023-10-18 20:28:15','2023-10-18 20:28:15'),
(77,'Zano ndega akasiya jira mumasese.',1,'2023-10-18 20:28:39','2023-10-18 20:28:39'),
(78,'Zizi harina nyanga.',1,'2023-10-18 20:29:10','2023-10-18 20:29:10'),
(79,'Zviuya hazviwanani.',1,'2023-10-18 20:29:31','2023-10-18 20:29:31'),
(80,'Zviro zviyedzwa chembere yekwaChivi yakabika mabwe ikanwa muto.',1,'2023-10-18 20:29:59','2023-10-18 20:29:59'),
(81,'Zingizi gonyera pamwe maruva enyika haaperi.',1,'2023-10-18 20:30:32','2023-10-18 20:30:32'),
(82,'Zvikoni zvikoni mimba haibvi negosoro.',1,'2023-10-18 20:30:54','2023-10-18 20:30:54'),
(83,'Akanga nyimo avangarara.',1,'2023-10-18 20:36:44','2023-10-18 20:36:44');
/*!40000 ALTER TABLE `tbl_tsumo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `ix_users_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `words`
--

DROP TABLE IF EXISTS `words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `words` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(255) NOT NULL,
  `definition` text NOT NULL,
  `part_of_speech` varchar(50) DEFAULT NULL,
  `pronunciation` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `ix_words_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `words`
--

LOCK TABLES `words` WRITE;
/*!40000 ALTER TABLE `words` DISABLE KEYS */;
INSERT INTO `words` VALUES
(9,'Mwari','Musika vanhu anonamatwa neva kristo',NULL,NULL,'2023-10-05 11:19:42','2023-10-05 11:19:42'),
(10,'tsvoda','kuratidza mudiwa wako rudo',NULL,NULL,'2023-10-05 17:49:51','2023-10-05 17:49:51'),
(11,'Mukomana','Munhurume ari mwana',NULL,NULL,'2023-10-05 19:02:44','2023-10-05 19:02:44'),
(12,'Zita','Izwi rinoshandiswa kudaidza naro chinhu',NULL,NULL,'2023-10-12 23:24:50','2023-10-12 23:24:50'),
(13,'Kurume','Mwedzi wechitatu wegore',NULL,NULL,'2023-10-12 23:31:41','2023-10-12 23:31:41'),
(14,'Ndira','Mwedzi wekutanga wegore',NULL,NULL,'2023-10-12 23:32:03','2023-10-12 23:32:03'),
(15,'Kukadzi','Mwedzi wechipiri wegore',NULL,NULL,'2023-10-12 23:32:21','2023-10-12 23:32:21'),
(16,'zvita','Mwedzi wekupedzisira wegore , mwedzi wegumi nembiri',NULL,NULL,'2023-10-12 23:32:57','2023-10-12 23:32:57'),
(17,'Motsi','Ndiyo nhumba yekutanga , muchirungu ndiye 1',NULL,NULL,'2023-10-12 23:40:03','2023-10-12 23:40:03'),
(18,'Piri','Ndiyo nhumba yechipiri , muchirungu ndiye 2',NULL,NULL,'2023-10-12 23:40:20','2023-10-12 23:40:20'),
(19,'Tatu','Ndiyo nhumba yechitatu , muchirungu ndiye 3',NULL,NULL,'2023-10-12 23:40:53','2023-10-12 23:40:53'),
(20,'China','N muchirungu ndiye 4',NULL,NULL,'2023-10-12 23:42:08','2023-10-12 23:42:08'),
(21,'Shanu','N muchirungu ndiye 5',NULL,NULL,'2023-10-12 23:42:33','2023-10-12 23:42:33'),
(22,'China','Ndiro zuva rechina muvhiki, muchirungu ndiye Thursday',NULL,NULL,'2023-10-12 23:43:30','2023-10-12 23:43:30'),
(23,'Tanhatu','Muchirungu ndiye 6',NULL,NULL,'2023-10-12 23:44:17','2023-10-12 23:44:17'),
(24,'Nomwe','Muchirungu ndiye 7',NULL,NULL,'2023-10-12 23:44:38','2023-10-12 23:44:38'),
(25,'Sere','Muchirungu ndiye 8',NULL,NULL,'2023-10-12 23:44:57','2023-10-12 23:44:57'),
(26,'Pfumbamwe','Muchirungu ndiye 9',NULL,NULL,'2023-10-12 23:45:12','2023-10-12 23:45:12'),
(27,'Gumi','Muchirungu ndiye 10',NULL,NULL,'2023-10-12 23:45:29','2023-10-12 23:45:29'),
(28,'Makumi maviri','Muchirungu ndiye 20',NULL,NULL,'2023-10-12 23:45:49','2023-10-12 23:45:49'),
(29,'Makumi matatu','Muchirungu ndiye 30',NULL,NULL,'2023-10-12 23:46:15','2023-10-12 23:46:15'),
(30,'Makumi mana','Muchirungu ndiye 40',NULL,NULL,'2023-10-12 23:46:48','2023-10-12 23:46:48'),
(31,'Makumi mashanu','Muchirungu ndiye 50',NULL,NULL,'2023-10-12 23:47:20','2023-10-12 23:47:20'),
(32,'Makumi matanhatu','Muchirungu ndiye 60',NULL,NULL,'2023-10-12 23:48:04','2023-10-12 23:48:04'),
(33,'Makumi manomwe','Muchirungu ndiye 70',NULL,NULL,'2023-10-12 23:48:32','2023-10-12 23:48:32'),
(34,'Makumi masere','Muchirungu ndiye 80',NULL,NULL,'2023-10-12 23:50:07','2023-10-12 23:50:07'),
(35,'Makumi mapfumbamwe','Muchirungu ndiye 90',NULL,NULL,'2023-10-12 23:50:30','2023-10-12 23:50:30'),
(36,'Zana','Muchirungu ndiye 100',NULL,NULL,'2023-10-12 23:50:55','2023-10-12 23:50:55'),
(37,'Churu','Muchirungu ndiye 1000',NULL,NULL,'2023-10-12 23:51:19','2023-10-12 23:51:19'),
(38,'Chipiri','Muchirungu ndiye watinoti Tuesday',NULL,NULL,'2023-10-13 00:02:39','2023-10-13 00:02:39'),
(39,'Chitatu','Muchirungu ndiye watinoti Wednesday',NULL,NULL,'2023-10-13 00:03:17','2023-10-13 00:03:17'),
(40,'China','Muchirungu ndiye watinoti Thursday',NULL,NULL,'2023-10-13 00:03:53','2023-10-13 00:03:53'),
(41,'Chishanu','Muchirungu ndiye watinoti Friday',NULL,NULL,'2023-10-13 00:04:13','2023-10-13 00:04:13'),
(42,'Mugovera','Muchirungu ndiye watinoti Saturday',NULL,NULL,'2023-10-13 00:04:34','2023-10-13 00:04:34'),
(43,'masvosvobwa','Zviratidzo zvinoneka mudenga husiku  kunge mwedzi Muchirungu ndiye watinoti shooting stars',NULL,NULL,'2023-10-13 00:07:16','2023-10-13 00:07:16'),
(44,'zvizvuvhutswa','gold nuggets',NULL,NULL,'2023-10-13 00:08:44','2023-10-13 00:08:44'),
(45,'akadzva','he/she was unsuccessful',NULL,NULL,'2023-10-13 00:09:27','2023-10-13 00:09:27'),
(46,'huzvweverere','emotions',NULL,NULL,'2023-10-13 00:10:09','2023-10-13 00:10:09');
/*!40000 ALTER TABLE `words` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-23  9:49:54
