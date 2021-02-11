-- MySQL dump 10.13  Distrib 8.0.21, for osx10.13 (x86_64)
--
-- Host: localhost    Database: marvel
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `characters`
--

DROP TABLE IF EXISTS `characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `characters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters`
--

LOCK TABLES `characters` WRITE;
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
INSERT INTO `characters` VALUES (1,'2021-02-11 13:51:50','2021-02-11 13:51:50','Dr. Autumn Wiza','Aut et autem officiis iusto explicabo inventore et.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(2,'2021-02-11 13:51:50','2021-02-11 13:51:50','Fredy Glover','Atque enim rerum et odio et facilis.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(3,'2021-02-11 13:51:50','2021-02-11 13:51:50','Sierra Schultz','Et voluptas pariatur placeat quis error provident.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(4,'2021-02-11 13:51:50','2021-02-11 13:51:50','Peggie Larkin','Nam veniam odit est sunt rem.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(5,'2021-02-11 13:51:50','2021-02-11 13:51:50','Marjory Lind PhD','Voluptatem voluptatem voluptas nihil voluptatem veniam.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(6,'2021-02-11 13:51:50','2021-02-11 13:51:50','Dr. Rhoda Durgan','Laudantium aliquid ratione quis veniam omnis.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(7,'2021-02-11 13:51:50','2021-02-11 13:51:50','Jameson Cummings','Nihil deserunt aut eum quia repellendus at nemo.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(8,'2021-02-11 13:51:50','2021-02-11 13:51:50','Ms. Katarina Bogan','Exercitationem aut distinctio ipsa aliquid odit sunt qui.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(9,'2021-02-11 13:51:50','2021-02-11 13:51:50','Kailee Dickens','Aut quam voluptatibus est dolorem.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(10,'2021-02-11 13:51:50','2021-02-11 13:51:50','Augustine Howe','Ipsa dolores facere aliquid ducimus quam.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(11,'2021-02-11 13:51:50','2021-02-11 13:51:50','Brook Borer PhD','Quis quae veniam enim itaque eligendi harum ut.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(12,'2021-02-11 13:51:50','2021-02-11 13:51:50','Augustus Flatley IV','Quia eum et accusantium qui rem culpa.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(13,'2021-02-11 13:51:50','2021-02-11 13:51:50','Prof. Tre Greenfelder','Quia culpa nisi consequatur consequatur enim similique alias.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(14,'2021-02-11 13:51:50','2021-02-11 13:51:50','Mr. Fermin Adams II','Quibusdam optio et recusandae neque ullam fugit eos tenetur.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(15,'2021-02-11 13:51:50','2021-02-11 13:51:50','Berenice Russel','Ex aperiam magni quo reprehenderit nam quasi.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(16,'2021-02-11 13:51:50','2021-02-11 13:51:50','Jarvis Murray','Sit sunt nulla earum doloribus blanditiis et dolorum.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(17,'2021-02-11 13:51:50','2021-02-11 13:51:50','Yvette Von','Voluptate ut ipsum quidem adipisci impedit distinctio dolorem.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(18,'2021-02-11 13:51:50','2021-02-11 13:51:50','Darron Roberts','Veritatis rerum adipisci corporis.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(19,'2021-02-11 13:51:50','2021-02-11 13:51:50','Arne Ullrich PhD','Corrupti quia eius dicta id autem.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(20,'2021-02-11 13:51:50','2021-02-11 13:51:50','Prof. Wilfredo Macejkovic','Non rerum unde dolor debitis ut qui voluptas.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(21,'2021-02-11 13:51:50','2021-02-11 13:51:50','Anabelle Abbott','Voluptatem temporibus qui itaque voluptas iure sequi excepturi.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(22,'2021-02-11 13:51:50','2021-02-11 13:51:50','Ms. Taryn Bergstrom','Beatae quo et autem vel temporibus blanditiis.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(23,'2021-02-11 13:51:50','2021-02-11 13:51:50','Dr. Lori Halvorson','Nulla necessitatibus error quia exercitationem ea.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(24,'2021-02-11 13:51:50','2021-02-11 13:51:50','Lenna Gerhold','Sed harum illum recusandae consectetur consequatur atque et.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(25,'2021-02-11 13:51:50','2021-02-11 13:51:50','Bridie Morar','Voluptatem animi et dolor quasi totam ut aut ut.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(26,'2021-02-11 13:51:50','2021-02-11 13:51:50','Zoie Watsica','Nihil facere delectus voluptatem eos.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(27,'2021-02-11 13:51:50','2021-02-11 13:51:50','Prof. Sebastian McDermott','Id et aut quaerat omnis ducimus nostrum non.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(28,'2021-02-11 13:51:50','2021-02-11 13:51:50','Delpha Luettgen','Aspernatur eos labore cumque quas cum et doloribus.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(29,'2021-02-11 13:51:50','2021-02-11 13:51:50','Maxine Watsica Sr.','Dolorum soluta nostrum sed eos in sed excepturi consequatur.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(30,'2021-02-11 13:51:50','2021-02-11 13:51:50','Sadie Hartmann','Qui non non minima qui enim ad.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(31,'2021-02-11 13:51:50','2021-02-11 13:51:50','Herta Funk','Sed ut sit tempora delectus repudiandae.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(32,'2021-02-11 13:51:50','2021-02-11 13:51:50','Jeramy Haag','Optio quaerat laborum aut qui.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(33,'2021-02-11 13:51:50','2021-02-11 13:51:50','Madie Cole','Et sed nihil nihil cum odio expedita aut.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(34,'2021-02-11 13:51:50','2021-02-11 13:51:50','Eldridge Bartell','Et necessitatibus aut ut omnis odit.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(35,'2021-02-11 13:51:50','2021-02-11 13:51:50','Elissa Kilback','Laboriosam temporibus voluptatem aperiam qui repellendus.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(36,'2021-02-11 13:51:50','2021-02-11 13:51:50','Victor Kshlerin','Molestiae corporis fugit fugit tempora suscipit nam.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(37,'2021-02-11 13:51:50','2021-02-11 13:51:50','Ms. Esta Lueilwitz II','Maiores totam culpa omnis eveniet fugit.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(38,'2021-02-11 13:51:51','2021-02-11 13:51:51','Lisandro Marks','Et et doloremque rem odio molestias dolorum.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(39,'2021-02-11 13:51:51','2021-02-11 13:51:51','Ashly Crona','Ea maiores dolor recusandae fugit eligendi sint.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(40,'2021-02-11 13:51:51','2021-02-11 13:51:51','Alanna Lockman','Et iure placeat ea quia sapiente quia exercitationem.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(41,'2021-02-11 13:51:51','2021-02-11 13:51:51','Astrid Jacobi','Voluptate deserunt commodi rerum ut.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(42,'2021-02-11 13:51:51','2021-02-11 13:51:51','Reggie Okuneva DVM','Sunt qui sed non quia.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(43,'2021-02-11 13:51:51','2021-02-11 13:51:51','Katheryn Shanahan','Eius reprehenderit molestiae omnis voluptatem totam aut.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(44,'2021-02-11 13:51:51','2021-02-11 13:51:51','Annetta Lockman','Voluptatum ipsam ea et natus et.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(45,'2021-02-11 13:51:51','2021-02-11 13:51:51','Prof. Stone Reichel MD','Qui nisi rem consectetur ut vero enim.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(46,'2021-02-11 13:51:51','2021-02-11 13:51:51','Lois Moore IV','Sit quo et fugiat temporibus pariatur ut ut.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(47,'2021-02-11 13:51:51','2021-02-11 13:51:51','Christophe Kshlerin','Error aperiam et exercitationem quaerat molestiae qui quia maxime.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(48,'2021-02-11 13:51:51','2021-02-11 13:51:51','Willard Streich','Voluptate doloremque ex et aut voluptatem odio velit nobis.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(49,'2021-02-11 13:51:51','2021-02-11 13:51:51','Prof. Wilhelm Kunde I','Debitis doloremque culpa aut enim minus at est.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg'),(50,'2021-02-11 13:51:51','2021-02-11 13:51:51','Donnell Hessel MD','Autem et voluptatem recusandae et tenetur culpa autem.','/public/AAAAAAAAFSg/e3imfYguE_w/s1600/xx.jpg');
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `characters_comics`
--

DROP TABLE IF EXISTS `characters_comics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `characters_comics` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `comic_id` bigint unsigned NOT NULL,
  `character_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `characters_comics_comic_id_foreign` (`comic_id`),
  KEY `characters_comics_character_id_foreign` (`character_id`),
  CONSTRAINT `characters_comics_character_id_foreign` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`),
  CONSTRAINT `characters_comics_comic_id_foreign` FOREIGN KEY (`comic_id`) REFERENCES `comics` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters_comics`
--

LOCK TABLES `characters_comics` WRITE;
/*!40000 ALTER TABLE `characters_comics` DISABLE KEYS */;
INSERT INTO `characters_comics` VALUES (1,'2021-02-11 13:51:53','2021-02-11 13:51:53',97,5),(2,'2021-02-11 13:51:53','2021-02-11 13:51:53',44,23),(3,'2021-02-11 13:51:53','2021-02-11 13:51:53',85,17),(4,'2021-02-11 13:51:53','2021-02-11 13:51:53',64,14),(5,'2021-02-11 13:51:53','2021-02-11 13:51:53',49,23),(6,'2021-02-11 13:51:53','2021-02-11 13:51:53',30,37),(7,'2021-02-11 13:51:53','2021-02-11 13:51:53',30,42),(8,'2021-02-11 13:51:53','2021-02-11 13:51:53',100,47),(9,'2021-02-11 13:51:53','2021-02-11 13:51:53',90,48),(10,'2021-02-11 13:51:53','2021-02-11 13:51:53',31,22),(11,'2021-02-11 13:51:53','2021-02-11 13:51:53',83,35),(12,'2021-02-11 13:51:53','2021-02-11 13:51:53',98,12),(13,'2021-02-11 13:51:53','2021-02-11 13:51:53',54,39),(14,'2021-02-11 13:51:53','2021-02-11 13:51:53',85,19),(15,'2021-02-11 13:51:53','2021-02-11 13:51:53',37,24),(16,'2021-02-11 13:51:53','2021-02-11 13:51:53',96,18),(17,'2021-02-11 13:51:53','2021-02-11 13:51:53',64,20),(18,'2021-02-11 13:51:53','2021-02-11 13:51:53',97,13),(19,'2021-02-11 13:51:53','2021-02-11 13:51:53',21,29),(20,'2021-02-11 13:51:53','2021-02-11 13:51:53',56,19),(21,'2021-02-11 13:51:53','2021-02-11 13:51:53',44,32),(22,'2021-02-11 13:51:53','2021-02-11 13:51:53',100,42),(23,'2021-02-11 13:51:53','2021-02-11 13:51:53',24,9),(24,'2021-02-11 13:51:53','2021-02-11 13:51:53',29,27),(25,'2021-02-11 13:51:53','2021-02-11 13:51:53',35,45),(26,'2021-02-11 13:51:53','2021-02-11 13:51:53',75,16),(27,'2021-02-11 13:51:53','2021-02-11 13:51:53',50,13),(28,'2021-02-11 13:51:53','2021-02-11 13:51:53',10,47),(29,'2021-02-11 13:51:53','2021-02-11 13:51:53',94,7),(30,'2021-02-11 13:51:53','2021-02-11 13:51:53',29,13),(31,'2021-02-11 13:51:53','2021-02-11 13:51:53',89,41),(32,'2021-02-11 13:51:53','2021-02-11 13:51:53',52,20),(33,'2021-02-11 13:51:53','2021-02-11 13:51:53',97,50),(34,'2021-02-11 13:51:53','2021-02-11 13:51:53',87,1),(35,'2021-02-11 13:51:53','2021-02-11 13:51:53',79,41),(36,'2021-02-11 13:51:53','2021-02-11 13:51:53',34,44),(37,'2021-02-11 13:51:53','2021-02-11 13:51:53',62,10),(38,'2021-02-11 13:51:53','2021-02-11 13:51:53',20,31),(39,'2021-02-11 13:51:53','2021-02-11 13:51:53',39,21),(40,'2021-02-11 13:51:53','2021-02-11 13:51:53',8,33),(41,'2021-02-11 13:51:53','2021-02-11 13:51:53',12,45),(42,'2021-02-11 13:51:53','2021-02-11 13:51:53',12,25),(43,'2021-02-11 13:51:53','2021-02-11 13:51:53',86,25),(44,'2021-02-11 13:51:53','2021-02-11 13:51:53',24,10),(45,'2021-02-11 13:51:53','2021-02-11 13:51:53',33,42),(46,'2021-02-11 13:51:53','2021-02-11 13:51:53',33,41),(47,'2021-02-11 13:51:53','2021-02-11 13:51:53',50,10),(48,'2021-02-11 13:51:53','2021-02-11 13:51:53',50,19),(49,'2021-02-11 13:51:53','2021-02-11 13:51:53',64,46),(50,'2021-02-11 13:51:53','2021-02-11 13:51:53',60,45);
/*!40000 ALTER TABLE `characters_comics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `characters_events`
--

DROP TABLE IF EXISTS `characters_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `characters_events` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `event_id` bigint unsigned NOT NULL,
  `character_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `characters_events_event_id_foreign` (`event_id`),
  KEY `characters_events_character_id_foreign` (`character_id`),
  CONSTRAINT `characters_events_character_id_foreign` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`),
  CONSTRAINT `characters_events_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters_events`
--

LOCK TABLES `characters_events` WRITE;
/*!40000 ALTER TABLE `characters_events` DISABLE KEYS */;
INSERT INTO `characters_events` VALUES (1,'2021-02-11 13:51:52','2021-02-11 13:51:52',8,44),(2,'2021-02-11 13:51:52','2021-02-11 13:51:52',23,18),(3,'2021-02-11 13:51:52','2021-02-11 13:51:52',43,36),(4,'2021-02-11 13:51:52','2021-02-11 13:51:52',91,46),(5,'2021-02-11 13:51:52','2021-02-11 13:51:52',82,38),(6,'2021-02-11 13:51:52','2021-02-11 13:51:52',54,6),(7,'2021-02-11 13:51:52','2021-02-11 13:51:52',64,31),(8,'2021-02-11 13:51:52','2021-02-11 13:51:52',89,1),(9,'2021-02-11 13:51:52','2021-02-11 13:51:52',34,47),(10,'2021-02-11 13:51:52','2021-02-11 13:51:52',75,19),(11,'2021-02-11 13:51:52','2021-02-11 13:51:52',13,22),(12,'2021-02-11 13:51:52','2021-02-11 13:51:52',55,20),(13,'2021-02-11 13:51:52','2021-02-11 13:51:52',73,9),(14,'2021-02-11 13:51:52','2021-02-11 13:51:52',57,40),(15,'2021-02-11 13:51:52','2021-02-11 13:51:52',53,28),(16,'2021-02-11 13:51:52','2021-02-11 13:51:52',84,50),(17,'2021-02-11 13:51:52','2021-02-11 13:51:52',97,47),(18,'2021-02-11 13:51:52','2021-02-11 13:51:52',1,27),(19,'2021-02-11 13:51:52','2021-02-11 13:51:52',36,30),(20,'2021-02-11 13:51:52','2021-02-11 13:51:52',16,15),(21,'2021-02-11 13:51:52','2021-02-11 13:51:52',23,50),(22,'2021-02-11 13:51:52','2021-02-11 13:51:52',58,24),(23,'2021-02-11 13:51:52','2021-02-11 13:51:52',24,45),(24,'2021-02-11 13:51:52','2021-02-11 13:51:52',4,16),(25,'2021-02-11 13:51:52','2021-02-11 13:51:52',87,14),(26,'2021-02-11 13:51:52','2021-02-11 13:51:52',77,30),(27,'2021-02-11 13:51:52','2021-02-11 13:51:52',33,3),(28,'2021-02-11 13:51:52','2021-02-11 13:51:52',5,25),(29,'2021-02-11 13:51:52','2021-02-11 13:51:52',40,31),(30,'2021-02-11 13:51:52','2021-02-11 13:51:52',29,4),(31,'2021-02-11 13:51:52','2021-02-11 13:51:52',28,31),(32,'2021-02-11 13:51:52','2021-02-11 13:51:52',45,19),(33,'2021-02-11 13:51:52','2021-02-11 13:51:52',67,49),(34,'2021-02-11 13:51:52','2021-02-11 13:51:52',25,34),(35,'2021-02-11 13:51:52','2021-02-11 13:51:52',95,6),(36,'2021-02-11 13:51:52','2021-02-11 13:51:52',61,40),(37,'2021-02-11 13:51:52','2021-02-11 13:51:52',81,16),(38,'2021-02-11 13:51:52','2021-02-11 13:51:52',64,34),(39,'2021-02-11 13:51:52','2021-02-11 13:51:52',63,8),(40,'2021-02-11 13:51:52','2021-02-11 13:51:52',68,13),(41,'2021-02-11 13:51:52','2021-02-11 13:51:52',86,1),(42,'2021-02-11 13:51:52','2021-02-11 13:51:52',16,25),(43,'2021-02-11 13:51:52','2021-02-11 13:51:52',57,23),(44,'2021-02-11 13:51:52','2021-02-11 13:51:52',88,20),(45,'2021-02-11 13:51:52','2021-02-11 13:51:52',61,29),(46,'2021-02-11 13:51:52','2021-02-11 13:51:52',99,41),(47,'2021-02-11 13:51:52','2021-02-11 13:51:52',73,2),(48,'2021-02-11 13:51:52','2021-02-11 13:51:52',43,41),(49,'2021-02-11 13:51:52','2021-02-11 13:51:52',91,45),(50,'2021-02-11 13:51:52','2021-02-11 13:51:52',71,11);
/*!40000 ALTER TABLE `characters_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `characters_series`
--

DROP TABLE IF EXISTS `characters_series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `characters_series` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `serie_id` bigint unsigned NOT NULL,
  `character_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `characters_series_serie_id_foreign` (`serie_id`),
  KEY `characters_series_character_id_foreign` (`character_id`),
  CONSTRAINT `characters_series_character_id_foreign` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`),
  CONSTRAINT `characters_series_serie_id_foreign` FOREIGN KEY (`serie_id`) REFERENCES `series` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters_series`
--

LOCK TABLES `characters_series` WRITE;
/*!40000 ALTER TABLE `characters_series` DISABLE KEYS */;
INSERT INTO `characters_series` VALUES (1,'2021-02-11 13:51:53','2021-02-11 13:51:53',78,14),(2,'2021-02-11 13:51:53','2021-02-11 13:51:53',42,4),(3,'2021-02-11 13:51:53','2021-02-11 13:51:53',29,38),(4,'2021-02-11 13:51:53','2021-02-11 13:51:53',79,3),(5,'2021-02-11 13:51:53','2021-02-11 13:51:53',26,48),(6,'2021-02-11 13:51:53','2021-02-11 13:51:53',27,45),(7,'2021-02-11 13:51:53','2021-02-11 13:51:53',9,26),(8,'2021-02-11 13:51:53','2021-02-11 13:51:53',65,4),(9,'2021-02-11 13:51:53','2021-02-11 13:51:53',55,47),(10,'2021-02-11 13:51:53','2021-02-11 13:51:53',61,21),(11,'2021-02-11 13:51:53','2021-02-11 13:51:53',5,40),(12,'2021-02-11 13:51:53','2021-02-11 13:51:53',87,33),(13,'2021-02-11 13:51:53','2021-02-11 13:51:53',22,28),(14,'2021-02-11 13:51:53','2021-02-11 13:51:53',27,46),(15,'2021-02-11 13:51:53','2021-02-11 13:51:53',4,38),(16,'2021-02-11 13:51:53','2021-02-11 13:51:53',68,27),(17,'2021-02-11 13:51:53','2021-02-11 13:51:53',29,12),(18,'2021-02-11 13:51:53','2021-02-11 13:51:53',22,41),(19,'2021-02-11 13:51:53','2021-02-11 13:51:53',33,25),(20,'2021-02-11 13:51:53','2021-02-11 13:51:53',81,46),(21,'2021-02-11 13:51:53','2021-02-11 13:51:53',27,24),(22,'2021-02-11 13:51:53','2021-02-11 13:51:53',92,11),(23,'2021-02-11 13:51:53','2021-02-11 13:51:53',21,7),(24,'2021-02-11 13:51:53','2021-02-11 13:51:53',64,47),(25,'2021-02-11 13:51:53','2021-02-11 13:51:53',21,15),(26,'2021-02-11 13:51:53','2021-02-11 13:51:53',88,20),(27,'2021-02-11 13:51:53','2021-02-11 13:51:53',54,17),(28,'2021-02-11 13:51:53','2021-02-11 13:51:53',77,8),(29,'2021-02-11 13:51:53','2021-02-11 13:51:53',39,5),(30,'2021-02-11 13:51:53','2021-02-11 13:51:53',58,10),(31,'2021-02-11 13:51:53','2021-02-11 13:51:53',17,7),(32,'2021-02-11 13:51:53','2021-02-11 13:51:53',35,10),(33,'2021-02-11 13:51:53','2021-02-11 13:51:53',67,7),(34,'2021-02-11 13:51:53','2021-02-11 13:51:53',8,7),(35,'2021-02-11 13:51:53','2021-02-11 13:51:53',9,40),(36,'2021-02-11 13:51:53','2021-02-11 13:51:53',7,16),(37,'2021-02-11 13:51:53','2021-02-11 13:51:53',38,27),(38,'2021-02-11 13:51:53','2021-02-11 13:51:53',36,31),(39,'2021-02-11 13:51:53','2021-02-11 13:51:53',57,9),(40,'2021-02-11 13:51:53','2021-02-11 13:51:53',9,25),(41,'2021-02-11 13:51:53','2021-02-11 13:51:53',66,48),(42,'2021-02-11 13:51:53','2021-02-11 13:51:53',22,1),(43,'2021-02-11 13:51:53','2021-02-11 13:51:53',99,39),(44,'2021-02-11 13:51:53','2021-02-11 13:51:53',93,6),(45,'2021-02-11 13:51:53','2021-02-11 13:51:53',82,34),(46,'2021-02-11 13:51:53','2021-02-11 13:51:53',61,43),(47,'2021-02-11 13:51:53','2021-02-11 13:51:53',38,25),(48,'2021-02-11 13:51:53','2021-02-11 13:51:53',88,11),(49,'2021-02-11 13:51:53','2021-02-11 13:51:53',46,34),(50,'2021-02-11 13:51:53','2021-02-11 13:51:53',2,39);
/*!40000 ALTER TABLE `characters_series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `characters_stories`
--

DROP TABLE IF EXISTS `characters_stories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `characters_stories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `story_id` bigint unsigned NOT NULL,
  `character_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `characters_stories_story_id_foreign` (`story_id`),
  KEY `characters_stories_character_id_foreign` (`character_id`),
  CONSTRAINT `characters_stories_character_id_foreign` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`),
  CONSTRAINT `characters_stories_story_id_foreign` FOREIGN KEY (`story_id`) REFERENCES `stories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters_stories`
--

LOCK TABLES `characters_stories` WRITE;
/*!40000 ALTER TABLE `characters_stories` DISABLE KEYS */;
INSERT INTO `characters_stories` VALUES (1,'2021-02-11 13:51:53','2021-02-11 13:51:53',10,38),(2,'2021-02-11 13:51:53','2021-02-11 13:51:53',91,19),(3,'2021-02-11 13:51:53','2021-02-11 13:51:53',89,45),(4,'2021-02-11 13:51:53','2021-02-11 13:51:53',88,6),(5,'2021-02-11 13:51:53','2021-02-11 13:51:53',27,13),(6,'2021-02-11 13:51:53','2021-02-11 13:51:53',64,5),(7,'2021-02-11 13:51:53','2021-02-11 13:51:53',74,36),(8,'2021-02-11 13:51:53','2021-02-11 13:51:53',60,10),(9,'2021-02-11 13:51:53','2021-02-11 13:51:53',17,8),(10,'2021-02-11 13:51:53','2021-02-11 13:51:53',94,15),(11,'2021-02-11 13:51:53','2021-02-11 13:51:53',15,45),(12,'2021-02-11 13:51:53','2021-02-11 13:51:53',100,42),(13,'2021-02-11 13:51:53','2021-02-11 13:51:53',81,43),(14,'2021-02-11 13:51:53','2021-02-11 13:51:53',16,20),(15,'2021-02-11 13:51:53','2021-02-11 13:51:53',97,31),(16,'2021-02-11 13:51:53','2021-02-11 13:51:53',16,33),(17,'2021-02-11 13:51:53','2021-02-11 13:51:53',61,37),(18,'2021-02-11 13:51:53','2021-02-11 13:51:53',31,22),(19,'2021-02-11 13:51:53','2021-02-11 13:51:53',57,30),(20,'2021-02-11 13:51:53','2021-02-11 13:51:53',96,49),(21,'2021-02-11 13:51:53','2021-02-11 13:51:53',94,48),(22,'2021-02-11 13:51:53','2021-02-11 13:51:53',45,48),(23,'2021-02-11 13:51:53','2021-02-11 13:51:53',97,25),(24,'2021-02-11 13:51:53','2021-02-11 13:51:53',82,12),(25,'2021-02-11 13:51:53','2021-02-11 13:51:53',39,34),(26,'2021-02-11 13:51:53','2021-02-11 13:51:53',8,44),(27,'2021-02-11 13:51:53','2021-02-11 13:51:53',13,33),(28,'2021-02-11 13:51:53','2021-02-11 13:51:53',64,47),(29,'2021-02-11 13:51:53','2021-02-11 13:51:53',60,13),(30,'2021-02-11 13:51:53','2021-02-11 13:51:53',76,23),(31,'2021-02-11 13:51:53','2021-02-11 13:51:53',47,18),(32,'2021-02-11 13:51:53','2021-02-11 13:51:53',22,26),(33,'2021-02-11 13:51:53','2021-02-11 13:51:53',44,38),(34,'2021-02-11 13:51:53','2021-02-11 13:51:53',4,47),(35,'2021-02-11 13:51:53','2021-02-11 13:51:53',76,30),(36,'2021-02-11 13:51:53','2021-02-11 13:51:53',44,46),(37,'2021-02-11 13:51:53','2021-02-11 13:51:53',10,41),(38,'2021-02-11 13:51:53','2021-02-11 13:51:53',41,39),(39,'2021-02-11 13:51:53','2021-02-11 13:51:53',45,4),(40,'2021-02-11 13:51:53','2021-02-11 13:51:53',10,25),(41,'2021-02-11 13:51:53','2021-02-11 13:51:53',4,3),(42,'2021-02-11 13:51:53','2021-02-11 13:51:53',14,26),(43,'2021-02-11 13:51:53','2021-02-11 13:51:53',70,10),(44,'2021-02-11 13:51:53','2021-02-11 13:51:53',5,26),(45,'2021-02-11 13:51:53','2021-02-11 13:51:53',93,43),(46,'2021-02-11 13:51:53','2021-02-11 13:51:53',26,48),(47,'2021-02-11 13:51:53','2021-02-11 13:51:53',59,16),(48,'2021-02-11 13:51:53','2021-02-11 13:51:53',35,1),(49,'2021-02-11 13:51:53','2021-02-11 13:51:53',83,44),(50,'2021-02-11 13:51:53','2021-02-11 13:51:53',58,27);
/*!40000 ALTER TABLE `characters_stories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `characters_urls`
--

DROP TABLE IF EXISTS `characters_urls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `characters_urls` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `character_url_type_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `character_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `characters_urls_character_id_foreign` (`character_id`),
  KEY `characters_urls_character_url_type_name_foreign` (`character_url_type_name`),
  CONSTRAINT `characters_urls_character_id_foreign` FOREIGN KEY (`character_id`) REFERENCES `characters` (`id`),
  CONSTRAINT `characters_urls_character_url_type_name_foreign` FOREIGN KEY (`character_url_type_name`) REFERENCES `characters_urls_types` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters_urls`
--

LOCK TABLES `characters_urls` WRITE;
/*!40000 ALTER TABLE `characters_urls` DISABLE KEYS */;
INSERT INTO `characters_urls` VALUES (1,'pariatur','http://bartoletti.net/provident-quaerat-qui-fuga-dolore-ut',7,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(2,'pariatur','http://schmidt.com/blanditiis-dicta-enim-dolorem-harum-quaerat-aut',12,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(3,'dolorem','http://www.auer.com/',38,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(4,'consectetur','http://www.rolfson.biz/',31,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(5,'consectetur','http://www.fisher.biz/ipsam-aut-est-dolore-blanditiis-numquam',30,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(6,'consectetur','http://www.hodkiewicz.org/voluptatem-ab-consequatur-perspiciatis-ut-odit-consectetur-et',42,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(7,'consectetur','http://www.nikolaus.com/dolore-qui-animi-voluptatem-eum-quo',15,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(8,'pariatur','https://www.bailey.biz/rerum-qui-ut-quia-fugit-odio',9,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(9,'consectetur','https://www.lind.com/quis-labore-aliquid-corporis-asperiores-repellat',17,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(10,'pariatur','http://bogan.com/sit-officia-impedit-eius-repudiandae-dolorem.html',21,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(11,'consectetur','https://www.heaney.com/fugit-suscipit-et-enim-voluptas-perspiciatis-quaerat-reiciendis',22,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(12,'dolorem','http://pfannerstill.com/impedit-praesentium-quidem-earum-aspernatur-omnis-quaerat.html',37,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(13,'pariatur','https://www.stehr.com/asperiores-et-dolore-voluptas-sit-repudiandae-debitis-numquam',15,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(14,'dolorem','http://pfeffer.info/est-dolor-ut-ut-deleniti-fuga-sed',42,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(15,'dolorem','http://halvorson.com/quia-et-corporis-quo-quia-quas',11,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(16,'pariatur','http://bergstrom.com/hic-facere-animi-consequatur-eos',26,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(17,'dolorem','http://www.krajcik.com/porro-ex-commodi-qui-nesciunt-perspiciatis',37,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(18,'consectetur','http://www.hudson.net/',19,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(19,'dolorem','http://www.price.com/veritatis-beatae-necessitatibus-expedita-et-est-occaecati.html',3,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(20,'consectetur','http://kreiger.com/nisi-sunt-dolorem-deleniti-vero-minima-ut-deserunt.html',40,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(21,'dolorem','http://ward.com/',2,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(22,'dolorem','https://www.kemmer.org/quia-dolores-ut-cumque-et-suscipit-architecto-amet-autem',6,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(23,'dolorem','http://www.toy.com/quibusdam-libero-nam-qui-harum-corrupti-cum-vel.html',39,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(24,'dolorem','https://www.bauch.org/quia-tempora-nihil-provident-natus-est-cupiditate-debitis-fuga',14,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(25,'dolorem','http://schowalter.com/dolore-quo-vitae-laborum-corporis-doloribus-ipsum-porro.html',28,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(26,'consectetur','http://brekke.com/exercitationem-quod-reprehenderit-et-distinctio-ipsa',18,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(27,'pariatur','https://labadie.net/nisi-iste-odit-vero-impedit-et-sunt-assumenda-aliquid.html',30,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(28,'dolorem','http://www.jacobson.info/',47,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(29,'pariatur','https://www.rogahn.com/enim-qui-qui-aut-rerum',35,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(30,'pariatur','https://www.dietrich.com/ut-cumque-repudiandae-dignissimos-vero',36,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(31,'pariatur','http://sawayn.com/eos-quis-ad-laboriosam-voluptatem-sint-quam-quibusdam.html',15,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(32,'pariatur','http://breitenberg.com/enim-labore-deserunt-sit-nobis-qui',37,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(33,'pariatur','http://feeney.com/nam-veniam-quia-ducimus-pariatur-rerum-non',5,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(34,'dolorem','https://kreiger.biz/aut-voluptatum-temporibus-dolor-quod.html',21,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(35,'pariatur','https://jast.org/laborum-repudiandae-itaque-libero-est-velit-est-doloribus-eaque.html',41,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(36,'pariatur','https://www.vonrueden.org/eveniet-blanditiis-repellendus-praesentium-error-vel-assumenda-debitis-blanditiis',39,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(37,'pariatur','https://mohr.com/rem-sed-atque-quaerat-omnis-distinctio-velit.html',11,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(38,'dolorem','https://www.spinka.com/sit-a-iste-sit-tempora',42,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(39,'consectetur','http://www.fisher.biz/',3,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(40,'pariatur','http://luettgen.biz/quia-laboriosam-aut-et-laborum-illum',30,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(41,'pariatur','http://www.swift.com/',27,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(42,'pariatur','http://fadel.com/voluptas-autem-dolor-accusamus-assumenda-tenetur',21,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(43,'consectetur','http://www.bashirian.net/',37,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(44,'pariatur','http://kozey.com/sint-doloribus-quis-et-quaerat-tempora-ex-officiis',17,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(45,'consectetur','http://www.cummings.com/rerum-doloremque-odit-pariatur-id-ut-et-rerum.html',7,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(46,'dolorem','http://gibson.com/tempora-non-et-dolores',24,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(47,'dolorem','http://www.johnston.com/',35,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(48,'pariatur','http://www.hilpert.com/ut-officiis-molestias-enim-qui-nostrum-qui-tempora.html',24,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(49,'consectetur','http://www.breitenberg.info/nulla-quam-reprehenderit-numquam',41,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(50,'dolorem','https://www.maggio.com/recusandae-quos-tempora-occaecati',30,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(51,'dolorem','https://www.ernser.com/quidem-eveniet-architecto-enim-et',17,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(52,'dolorem','http://www.kassulke.info/et-voluptatibus-velit-et-in',46,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(53,'dolorem','http://www.miller.org/praesentium-atque-harum-perferendis-eligendi-est',39,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(54,'dolorem','http://www.mueller.com/et-odit-quae-pariatur.html',14,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(55,'dolorem','http://www.rodriguez.com/provident-qui-dignissimos-voluptas',4,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(56,'consectetur','http://www.kunde.com/eius-rerum-ducimus-dolore-non-accusantium-qui-odio-qui.html',4,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(57,'pariatur','http://christiansen.com/',4,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(58,'pariatur','https://wilkinson.com/quisquam-et-consequatur-dolores.html',50,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(59,'dolorem','http://yost.com/et-alias-praesentium-quo-quod-officia-dicta-excepturi',33,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(60,'pariatur','http://www.hayes.info/',49,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(61,'pariatur','http://crooks.com/et-quo-quam-adipisci-voluptatem-ea-quia-enim',45,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(62,'dolorem','https://www.mills.net/nemo-sed-facere-voluptate',36,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(63,'dolorem','http://www.wolff.net/ipsam-odit-ut-adipisci-amet-exercitationem-ad.html',28,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(64,'dolorem','http://beatty.org/veniam-ipsa-cupiditate-beatae-qui',29,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(65,'pariatur','http://crist.info/quasi-magnam-rerum-a-quia-unde-deleniti-quia-illo',11,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(66,'dolorem','http://www.schimmel.net/libero-ut-et-officiis-ex-enim',39,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(67,'dolorem','http://www.fadel.com/',48,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(68,'dolorem','https://www.predovic.biz/iste-error-unde-vitae-velit',36,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(69,'pariatur','http://www.wunsch.com/',19,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(70,'pariatur','http://osinski.org/sed-architecto-alias-quibusdam-et',28,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(71,'consectetur','http://www.kub.com/similique-dolor-officiis-ducimus-nihil-et-est',17,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(72,'dolorem','https://wuckert.com/optio-et-asperiores-atque-voluptas.html',28,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(73,'pariatur','https://www.dare.org/sunt-sint-iste-officia',35,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(74,'pariatur','http://www.kub.info/at-voluptatum-vero-aliquid-aut-quia-at-consequatur-labore',22,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(75,'dolorem','http://murazik.com/quo-in-omnis-porro-reprehenderit-iste',47,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(76,'pariatur','http://hintz.org/',32,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(77,'consectetur','http://www.purdy.net/',1,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(78,'dolorem','http://www.walsh.com/aperiam-quod-consectetur-ea.html',3,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(79,'consectetur','http://www.hodkiewicz.net/fugit-aperiam-cumque-amet-dignissimos.html',9,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(80,'consectetur','http://www.crona.net/neque-non-optio-nulla-delectus-aut-consectetur.html',22,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(81,'pariatur','http://www.kuhic.com/',23,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(82,'consectetur','http://www.baumbach.com/recusandae-perspiciatis-et-sit.html',9,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(83,'consectetur','http://www.kuphal.biz/et-quia-sunt-sit-ex-facere-nam-tempore.html',18,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(84,'dolorem','http://gottlieb.com/voluptatibus-architecto-quae-facilis-facere-vel',4,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(85,'pariatur','http://weimann.com/cupiditate-mollitia-laudantium-id-iure-sit-non-possimus.html',46,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(86,'pariatur','https://toy.com/praesentium-ab-laboriosam-voluptatem-facilis-eum-natus-officia.html',28,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(87,'dolorem','http://www.mraz.com/',38,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(88,'consectetur','http://www.little.org/in-quod-vel-voluptatem-neque-iure-reprehenderit-accusamus.html',13,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(89,'consectetur','http://www.larkin.com/',45,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(90,'dolorem','http://www.reichert.com/officiis-est-minus-commodi-qui-non-voluptatem',17,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(91,'pariatur','http://www.bradtke.com/',33,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(92,'consectetur','http://www.braun.com/libero-quam-magni-cumque-rerum-rerum',16,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(93,'pariatur','http://www.jaskolski.org/',33,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(94,'consectetur','http://keebler.biz/ut-vel-omnis-incidunt-hic-laboriosam-nam-labore-voluptatem',42,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(95,'dolorem','http://renner.com/',45,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(96,'consectetur','http://www.ward.com/molestiae-quidem-repellat-tempora-qui-amet-fugiat-neque-necessitatibus.html',5,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(97,'pariatur','http://boyle.com/',11,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(98,'consectetur','http://wisozk.info/rerum-ducimus-quia-quo-et-est',40,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(99,'dolorem','http://bosco.com/',36,'2021-02-11 13:51:52','2021-02-11 13:51:52'),(100,'consectetur','http://oconnell.com/aut-nihil-et-officia-autem-voluptatem.html',26,'2021-02-11 13:51:52','2021-02-11 13:51:52');
/*!40000 ALTER TABLE `characters_urls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `characters_urls_types`
--

DROP TABLE IF EXISTS `characters_urls_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `characters_urls_types` (
  `name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `characters_urls_types_name_index` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters_urls_types`
--

LOCK TABLES `characters_urls_types` WRITE;
/*!40000 ALTER TABLE `characters_urls_types` DISABLE KEYS */;
INSERT INTO `characters_urls_types` VALUES ('consectetur'),('dolorem'),('pariatur');
/*!40000 ALTER TABLE `characters_urls_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comics`
--

DROP TABLE IF EXISTS `comics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comics` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comics`
--

LOCK TABLES `comics` WRITE;
/*!40000 ALTER TABLE `comics` DISABLE KEYS */;
INSERT INTO `comics` VALUES (1,'2021-02-11 13:51:51','2021-02-11 13:51:51','Joel Schuster'),(2,'2021-02-11 13:51:51','2021-02-11 13:51:51','Dr. Rico Leannon'),(3,'2021-02-11 13:51:51','2021-02-11 13:51:51','Ignatius Murazik'),(4,'2021-02-11 13:51:51','2021-02-11 13:51:51','Torrey Hauck'),(5,'2021-02-11 13:51:51','2021-02-11 13:51:51','Ms. Providenci Conn I'),(6,'2021-02-11 13:51:51','2021-02-11 13:51:51','Ila Rohan'),(7,'2021-02-11 13:51:51','2021-02-11 13:51:51','Selmer Dare'),(8,'2021-02-11 13:51:51','2021-02-11 13:51:51','Prof. Tanner Bogan MD'),(9,'2021-02-11 13:51:51','2021-02-11 13:51:51','Maximo Vandervort'),(10,'2021-02-11 13:51:51','2021-02-11 13:51:51','Dr. Susanna Stiedemann'),(11,'2021-02-11 13:51:51','2021-02-11 13:51:51','Carlee Huels V'),(12,'2021-02-11 13:51:51','2021-02-11 13:51:51','Keely Thompson'),(13,'2021-02-11 13:51:51','2021-02-11 13:51:51','Alfreda Prosacco'),(14,'2021-02-11 13:51:51','2021-02-11 13:51:51','Demetrius Koelpin'),(15,'2021-02-11 13:51:51','2021-02-11 13:51:51','Matilda Lesch'),(16,'2021-02-11 13:51:51','2021-02-11 13:51:51','Dr. Tressie Pollich'),(17,'2021-02-11 13:51:51','2021-02-11 13:51:51','Prof. Cindy Pollich IV'),(18,'2021-02-11 13:51:51','2021-02-11 13:51:51','Gage Schultz'),(19,'2021-02-11 13:51:51','2021-02-11 13:51:51','D\'angelo Hagenes'),(20,'2021-02-11 13:51:51','2021-02-11 13:51:51','Braden Boyer'),(21,'2021-02-11 13:51:51','2021-02-11 13:51:51','Prof. Karl Blanda'),(22,'2021-02-11 13:51:51','2021-02-11 13:51:51','Megane Dibbert'),(23,'2021-02-11 13:51:51','2021-02-11 13:51:51','Mrs. Vernie Maggio'),(24,'2021-02-11 13:51:51','2021-02-11 13:51:51','Kaitlyn Deckow'),(25,'2021-02-11 13:51:51','2021-02-11 13:51:51','Alisa Roob'),(26,'2021-02-11 13:51:51','2021-02-11 13:51:51','Cedrick Bayer I'),(27,'2021-02-11 13:51:51','2021-02-11 13:51:51','Jammie Bogisich PhD'),(28,'2021-02-11 13:51:51','2021-02-11 13:51:51','Hannah Nader'),(29,'2021-02-11 13:51:51','2021-02-11 13:51:51','Orie Collier V'),(30,'2021-02-11 13:51:51','2021-02-11 13:51:51','Palma Marks'),(31,'2021-02-11 13:51:51','2021-02-11 13:51:51','Dr. Marcellus Bauch'),(32,'2021-02-11 13:51:51','2021-02-11 13:51:51','Letitia Feil'),(33,'2021-02-11 13:51:51','2021-02-11 13:51:51','Stacy Ondricka'),(34,'2021-02-11 13:51:51','2021-02-11 13:51:51','Prof. Nickolas Wintheiser'),(35,'2021-02-11 13:51:51','2021-02-11 13:51:51','Breanne Gleason'),(36,'2021-02-11 13:51:51','2021-02-11 13:51:51','Tracy Kohler'),(37,'2021-02-11 13:51:51','2021-02-11 13:51:51','Toy Rogahn IV'),(38,'2021-02-11 13:51:51','2021-02-11 13:51:51','Santina Wyman'),(39,'2021-02-11 13:51:51','2021-02-11 13:51:51','Mrs. Edna Spinka'),(40,'2021-02-11 13:51:51','2021-02-11 13:51:51','Harold Schaefer'),(41,'2021-02-11 13:51:51','2021-02-11 13:51:51','Miss Jodie Mertz'),(42,'2021-02-11 13:51:51','2021-02-11 13:51:51','Nyah Gutmann'),(43,'2021-02-11 13:51:51','2021-02-11 13:51:51','Odessa Krajcik PhD'),(44,'2021-02-11 13:51:51','2021-02-11 13:51:51','Royce Ernser'),(45,'2021-02-11 13:51:51','2021-02-11 13:51:51','Miss Elouise Larkin MD'),(46,'2021-02-11 13:51:51','2021-02-11 13:51:51','Idella Davis'),(47,'2021-02-11 13:51:51','2021-02-11 13:51:51','Jacklyn Wisoky'),(48,'2021-02-11 13:51:51','2021-02-11 13:51:51','Prof. Darrell Hodkiewicz'),(49,'2021-02-11 13:51:51','2021-02-11 13:51:51','Sibyl Balistreri'),(50,'2021-02-11 13:51:51','2021-02-11 13:51:51','Paul Armstrong'),(51,'2021-02-11 13:51:51','2021-02-11 13:51:51','Ila Hauck Sr.'),(52,'2021-02-11 13:51:51','2021-02-11 13:51:51','Norberto Mueller'),(53,'2021-02-11 13:51:51','2021-02-11 13:51:51','Gaylord Bogan'),(54,'2021-02-11 13:51:51','2021-02-11 13:51:51','Alejandrin Quitzon'),(55,'2021-02-11 13:51:51','2021-02-11 13:51:51','Dr. Candelario Kuphal DDS'),(56,'2021-02-11 13:51:51','2021-02-11 13:51:51','Marguerite Reynolds'),(57,'2021-02-11 13:51:51','2021-02-11 13:51:51','Susie Bashirian'),(58,'2021-02-11 13:51:51','2021-02-11 13:51:51','Dr. Constantin Hackett'),(59,'2021-02-11 13:51:51','2021-02-11 13:51:51','Amy Johnson'),(60,'2021-02-11 13:51:51','2021-02-11 13:51:51','Prof. Joel Metz MD'),(61,'2021-02-11 13:51:51','2021-02-11 13:51:51','Mrs. Leda Rutherford'),(62,'2021-02-11 13:51:51','2021-02-11 13:51:51','Miss Bert Schneider I'),(63,'2021-02-11 13:51:51','2021-02-11 13:51:51','Linnea Cremin'),(64,'2021-02-11 13:51:51','2021-02-11 13:51:51','Freeda Kuvalis'),(65,'2021-02-11 13:51:51','2021-02-11 13:51:51','Ona Mayert'),(66,'2021-02-11 13:51:51','2021-02-11 13:51:51','Arvel Bauch'),(67,'2021-02-11 13:51:51','2021-02-11 13:51:51','Filomena O\'Keefe'),(68,'2021-02-11 13:51:51','2021-02-11 13:51:51','Freeda Jenkins'),(69,'2021-02-11 13:51:51','2021-02-11 13:51:51','Columbus Veum'),(70,'2021-02-11 13:51:51','2021-02-11 13:51:51','Prof. Candido Wisoky Sr.'),(71,'2021-02-11 13:51:51','2021-02-11 13:51:51','Ms. Norma Schmeler V'),(72,'2021-02-11 13:51:51','2021-02-11 13:51:51','Margie Prohaska I'),(73,'2021-02-11 13:51:51','2021-02-11 13:51:51','Dr. Hassie Heathcote'),(74,'2021-02-11 13:51:51','2021-02-11 13:51:51','Mrs. Joana Schiller V'),(75,'2021-02-11 13:51:51','2021-02-11 13:51:51','Krista Powlowski'),(76,'2021-02-11 13:51:51','2021-02-11 13:51:51','Ressie Wilkinson IV'),(77,'2021-02-11 13:51:51','2021-02-11 13:51:51','Dr. Joelle Schultz'),(78,'2021-02-11 13:51:51','2021-02-11 13:51:51','Janessa Pouros'),(79,'2021-02-11 13:51:51','2021-02-11 13:51:51','Marty Durgan DDS'),(80,'2021-02-11 13:51:51','2021-02-11 13:51:51','Davonte Wolf'),(81,'2021-02-11 13:51:51','2021-02-11 13:51:51','Myron Botsford'),(82,'2021-02-11 13:51:51','2021-02-11 13:51:51','Zander Smitham'),(83,'2021-02-11 13:51:51','2021-02-11 13:51:51','Osvaldo Purdy'),(84,'2021-02-11 13:51:51','2021-02-11 13:51:51','Isaac Rodriguez V'),(85,'2021-02-11 13:51:51','2021-02-11 13:51:51','Lester Wolf'),(86,'2021-02-11 13:51:51','2021-02-11 13:51:51','Dr. Anabel Rice V'),(87,'2021-02-11 13:51:51','2021-02-11 13:51:51','Julie Green'),(88,'2021-02-11 13:51:51','2021-02-11 13:51:51','Rae Gerlach'),(89,'2021-02-11 13:51:51','2021-02-11 13:51:51','Kasandra Collier'),(90,'2021-02-11 13:51:51','2021-02-11 13:51:51','Prof. Caterina White'),(91,'2021-02-11 13:51:51','2021-02-11 13:51:51','Candelario Olson'),(92,'2021-02-11 13:51:51','2021-02-11 13:51:51','Adrianna Senger IV'),(93,'2021-02-11 13:51:51','2021-02-11 13:51:51','Linnea Will'),(94,'2021-02-11 13:51:51','2021-02-11 13:51:51','Isom Stanton DDS'),(95,'2021-02-11 13:51:51','2021-02-11 13:51:51','Marcellus Cremin MD'),(96,'2021-02-11 13:51:51','2021-02-11 13:51:51','Prof. Damon Kuhic IV'),(97,'2021-02-11 13:51:51','2021-02-11 13:51:51','Ms. Shanon Will V'),(98,'2021-02-11 13:51:51','2021-02-11 13:51:51','Tristian Gulgowski'),(99,'2021-02-11 13:51:51','2021-02-11 13:51:51','Dino Pfeffer'),(100,'2021-02-11 13:51:51','2021-02-11 13:51:51','Elias Connelly');
/*!40000 ALTER TABLE `comics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'2021-02-11 13:51:51','2021-02-11 13:51:51','Dr. Lulu Pollich MD'),(2,'2021-02-11 13:51:51','2021-02-11 13:51:51','Dr. Jerrod Strosin'),(3,'2021-02-11 13:51:51','2021-02-11 13:51:51','Zion Runolfsson'),(4,'2021-02-11 13:51:51','2021-02-11 13:51:51','Eleazar Tillman'),(5,'2021-02-11 13:51:51','2021-02-11 13:51:51','Virginia Prosacco IV'),(6,'2021-02-11 13:51:51','2021-02-11 13:51:51','Alyson Beahan'),(7,'2021-02-11 13:51:51','2021-02-11 13:51:51','Cristian Gulgowski'),(8,'2021-02-11 13:51:51','2021-02-11 13:51:51','Mr. Constantin Treutel MD'),(9,'2021-02-11 13:51:51','2021-02-11 13:51:51','Pinkie Gleichner IV'),(10,'2021-02-11 13:51:51','2021-02-11 13:51:51','Amelia Gusikowski Sr.'),(11,'2021-02-11 13:51:51','2021-02-11 13:51:51','Diego Pagac'),(12,'2021-02-11 13:51:51','2021-02-11 13:51:51','Rowena Denesik'),(13,'2021-02-11 13:51:51','2021-02-11 13:51:51','Miss Madelynn Considine'),(14,'2021-02-11 13:51:51','2021-02-11 13:51:51','Camille Hintz'),(15,'2021-02-11 13:51:51','2021-02-11 13:51:51','Eloisa Konopelski'),(16,'2021-02-11 13:51:51','2021-02-11 13:51:51','Mrs. Eulah Lubowitz'),(17,'2021-02-11 13:51:51','2021-02-11 13:51:51','Felicita Runolfsson II'),(18,'2021-02-11 13:51:51','2021-02-11 13:51:51','Liam Green'),(19,'2021-02-11 13:51:51','2021-02-11 13:51:51','Prof. Kathryne Thiel'),(20,'2021-02-11 13:51:51','2021-02-11 13:51:51','Wendell Shields'),(21,'2021-02-11 13:51:51','2021-02-11 13:51:51','Destin Haley'),(22,'2021-02-11 13:51:51','2021-02-11 13:51:51','Mason Stamm'),(23,'2021-02-11 13:51:51','2021-02-11 13:51:51','Ellis Maggio'),(24,'2021-02-11 13:51:51','2021-02-11 13:51:51','Helene Beatty'),(25,'2021-02-11 13:51:51','2021-02-11 13:51:51','Rosario Steuber'),(26,'2021-02-11 13:51:51','2021-02-11 13:51:51','Kenton O\'Hara'),(27,'2021-02-11 13:51:51','2021-02-11 13:51:51','Donna Maggio'),(28,'2021-02-11 13:51:51','2021-02-11 13:51:51','Eden Herzog'),(29,'2021-02-11 13:51:51','2021-02-11 13:51:51','Rafael Mosciski'),(30,'2021-02-11 13:51:51','2021-02-11 13:51:51','Magali Bernier'),(31,'2021-02-11 13:51:51','2021-02-11 13:51:51','Zora Feest DDS'),(32,'2021-02-11 13:51:51','2021-02-11 13:51:51','Angel Berge III'),(33,'2021-02-11 13:51:51','2021-02-11 13:51:51','Karlee Leannon'),(34,'2021-02-11 13:51:51','2021-02-11 13:51:51','Ms. Lauriane Moore'),(35,'2021-02-11 13:51:51','2021-02-11 13:51:51','Mr. Arnold Corwin Jr.'),(36,'2021-02-11 13:51:51','2021-02-11 13:51:51','Ervin Jast'),(37,'2021-02-11 13:51:51','2021-02-11 13:51:51','Lazaro Schuppe I'),(38,'2021-02-11 13:51:51','2021-02-11 13:51:51','Keegan Prohaska'),(39,'2021-02-11 13:51:51','2021-02-11 13:51:51','Mr. Heber Schuppe'),(40,'2021-02-11 13:51:51','2021-02-11 13:51:51','Prof. Rey Hettinger'),(41,'2021-02-11 13:51:51','2021-02-11 13:51:51','Luther Jerde'),(42,'2021-02-11 13:51:51','2021-02-11 13:51:51','Mr. Clovis Rosenbaum'),(43,'2021-02-11 13:51:51','2021-02-11 13:51:51','Frederick Blick'),(44,'2021-02-11 13:51:51','2021-02-11 13:51:51','Mitchel Moore'),(45,'2021-02-11 13:51:51','2021-02-11 13:51:51','Beverly Kassulke'),(46,'2021-02-11 13:51:51','2021-02-11 13:51:51','Miss Cara Corkery'),(47,'2021-02-11 13:51:51','2021-02-11 13:51:51','Lola Schultz'),(48,'2021-02-11 13:51:51','2021-02-11 13:51:51','Hailey Boehm'),(49,'2021-02-11 13:51:51','2021-02-11 13:51:51','Ava O\'Hara DVM'),(50,'2021-02-11 13:51:51','2021-02-11 13:51:51','Georgette Miller'),(51,'2021-02-11 13:51:51','2021-02-11 13:51:51','Brycen Lueilwitz DDS'),(52,'2021-02-11 13:51:51','2021-02-11 13:51:51','Marcellus Pfeffer'),(53,'2021-02-11 13:51:51','2021-02-11 13:51:51','Dr. Deshawn Langworth'),(54,'2021-02-11 13:51:51','2021-02-11 13:51:51','Lucious Yost'),(55,'2021-02-11 13:51:51','2021-02-11 13:51:51','Jared Carroll'),(56,'2021-02-11 13:51:51','2021-02-11 13:51:51','America Strosin'),(57,'2021-02-11 13:51:51','2021-02-11 13:51:51','Myrna Kuvalis'),(58,'2021-02-11 13:51:51','2021-02-11 13:51:51','Clementina Toy'),(59,'2021-02-11 13:51:51','2021-02-11 13:51:51','Henri Deckow'),(60,'2021-02-11 13:51:51','2021-02-11 13:51:51','Maximo Swift'),(61,'2021-02-11 13:51:51','2021-02-11 13:51:51','Megane Gislason'),(62,'2021-02-11 13:51:51','2021-02-11 13:51:51','Emmitt Blick'),(63,'2021-02-11 13:51:51','2021-02-11 13:51:51','Selena Jacobi Jr.'),(64,'2021-02-11 13:51:51','2021-02-11 13:51:51','Kaitlin Fahey Jr.'),(65,'2021-02-11 13:51:51','2021-02-11 13:51:51','Prof. Ola Wilkinson DDS'),(66,'2021-02-11 13:51:51','2021-02-11 13:51:51','Nathan Olson DVM'),(67,'2021-02-11 13:51:51','2021-02-11 13:51:51','Prof. Florence Larson'),(68,'2021-02-11 13:51:51','2021-02-11 13:51:51','Tyreek Stokes'),(69,'2021-02-11 13:51:51','2021-02-11 13:51:51','Axel Hettinger'),(70,'2021-02-11 13:51:51','2021-02-11 13:51:51','Keven Brekke'),(71,'2021-02-11 13:51:51','2021-02-11 13:51:51','Miss Gladyce Lockman'),(72,'2021-02-11 13:51:51','2021-02-11 13:51:51','Junius Satterfield'),(73,'2021-02-11 13:51:51','2021-02-11 13:51:51','Hettie Fahey'),(74,'2021-02-11 13:51:51','2021-02-11 13:51:51','Mrs. Charlene Miller MD'),(75,'2021-02-11 13:51:51','2021-02-11 13:51:51','Kianna Wintheiser'),(76,'2021-02-11 13:51:51','2021-02-11 13:51:51','Jessy Beahan'),(77,'2021-02-11 13:51:51','2021-02-11 13:51:51','Kariane Cormier III'),(78,'2021-02-11 13:51:51','2021-02-11 13:51:51','Kaci Kunze'),(79,'2021-02-11 13:51:51','2021-02-11 13:51:51','Kara Dooley'),(80,'2021-02-11 13:51:51','2021-02-11 13:51:51','Samanta Sauer II'),(81,'2021-02-11 13:51:51','2021-02-11 13:51:51','Bessie Botsford'),(82,'2021-02-11 13:51:51','2021-02-11 13:51:51','Daren Ortiz'),(83,'2021-02-11 13:51:51','2021-02-11 13:51:51','Dr. Gavin Schaefer DVM'),(84,'2021-02-11 13:51:51','2021-02-11 13:51:51','Harvey Kuphal'),(85,'2021-02-11 13:51:51','2021-02-11 13:51:51','Zena Baumbach'),(86,'2021-02-11 13:51:51','2021-02-11 13:51:51','Derek Goldner I'),(87,'2021-02-11 13:51:51','2021-02-11 13:51:51','Leanne Turcotte'),(88,'2021-02-11 13:51:51','2021-02-11 13:51:51','Jillian Cole'),(89,'2021-02-11 13:51:51','2021-02-11 13:51:51','Erika Lueilwitz'),(90,'2021-02-11 13:51:51','2021-02-11 13:51:51','Genoveva Maggio'),(91,'2021-02-11 13:51:51','2021-02-11 13:51:51','Camden Towne'),(92,'2021-02-11 13:51:51','2021-02-11 13:51:51','Estell Wiegand'),(93,'2021-02-11 13:51:51','2021-02-11 13:51:51','Ms. Macie Langworth'),(94,'2021-02-11 13:51:51','2021-02-11 13:51:51','Alfreda Kunze'),(95,'2021-02-11 13:51:51','2021-02-11 13:51:51','Miss Adriana Pagac II'),(96,'2021-02-11 13:51:51','2021-02-11 13:51:51','Grady Sawayn'),(97,'2021-02-11 13:51:51','2021-02-11 13:51:51','Reymundo Schimmel'),(98,'2021-02-11 13:51:51','2021-02-11 13:51:51','Prof. Bernardo Macejkovic DDS'),(99,'2021-02-11 13:51:51','2021-02-11 13:51:51','Derrick Bartoletti'),(100,'2021-02-11 13:51:51','2021-02-11 13:51:51','Mervin Koelpin');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2021_02_09_101311_create_stories_types_table',1),(5,'2021_02_09_101439_create_characters_table',1),(6,'2021_02_09_101501_create_comics_table',1),(7,'2021_02_09_101530_create_events_table',1),(8,'2021_02_09_101542_create_series_table',1),(9,'2021_02_09_101554_create_stories_table',1),(10,'2021_02_09_102912_create_characters_urls_types_table',1),(11,'2021_02_09_102926_create_characters_urls_table',1),(12,'2021_02_09_110425_create_characters_comics_table',1),(13,'2021_02_09_110439_create_characters_events_table',1),(14,'2021_02_09_110449_create_characters_series_table',1),(15,'2021_02_09_110502_create_characters_stories_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `series`
--

DROP TABLE IF EXISTS `series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `series` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `uri` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series`
--

LOCK TABLES `series` WRITE;
/*!40000 ALTER TABLE `series` DISABLE KEYS */;
INSERT INTO `series` VALUES (1,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://reichel.org/nostrum-optio-earum-omnis-ut-pariatur-praesentium-nostrum-sunt','Rogers Parker'),(2,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://blanda.biz/perferendis-exercitationem-id-necessitatibus-itaque-unde-quo-deserunt','Flossie Harris'),(3,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.moore.biz/reiciendis-sed-nesciunt-rerum-illum-et-voluptas','Deanna Carter'),(4,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://hansen.net/','Dr. Lincoln Lesch'),(5,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.raynor.com/neque-a-dolor-expedita-explicabo-nam-et-unde','Zane Sporer'),(6,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://wiegand.biz/aliquam-qui-aut-officiis-explicabo.html','Russ Mante'),(7,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://kassulke.biz/perferendis-quae-nemo-rerum-similique-dolor-perferendis-nulla.html','Manley Terry'),(8,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://lowe.net/quo-natus-sunt-officiis-dignissimos','Dawn Flatley'),(9,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://hahn.com/perspiciatis-ut-voluptatem-occaecati-similique-quaerat','Prof. Branson Schowalter PhD'),(10,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.schuster.info/omnis-possimus-libero-ea','Dr. Genevieve Flatley II'),(11,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://schaefer.com/minima-dolorem-officiis-tempore-voluptas-deleniti-et-ducimus-cum','Prof. Soledad Bradtke Jr.'),(12,'2021-02-11 13:51:51','2021-02-11 13:51:51','https://www.heathcote.com/magni-est-consequatur-quas-architecto-aliquid-blanditiis','Mrs. Izabella Simonis DDS'),(13,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://erdman.net/','Nia Kautzer'),(14,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.emmerich.com/facere-vitae-eos-non-magni-voluptatem-harum','Abigail Schuster'),(15,'2021-02-11 13:51:51','2021-02-11 13:51:51','https://www.berge.com/ullam-praesentium-quia-dolorem-libero-modi-maxime-omnis-fuga','Lyric Macejkovic'),(16,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.hahn.com/ut-blanditiis-blanditiis-eaque-nemo-aperiam-corporis','Miss Amy Eichmann DVM'),(17,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.rippin.com/corporis-et-deleniti-est-minus-quia-quod.html','Mr. Oda Pagac'),(18,'2021-02-11 13:51:51','2021-02-11 13:51:51','https://www.auer.com/non-quas-et-est-vitae-ex-nihil-ut-aliquid','Nina Pollich'),(19,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.fadel.info/amet-autem-velit-voluptatem-sit-dolorum-deserunt-perferendis','Alexandrea Howe'),(20,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.bode.net/est-hic-voluptates-perferendis-enim-perspiciatis','Mr. Trey Bergnaum'),(21,'2021-02-11 13:51:51','2021-02-11 13:51:51','https://murray.com/et-sunt-tempore-aliquam-placeat-nemo.html','Reggie Emmerich Jr.'),(22,'2021-02-11 13:51:51','2021-02-11 13:51:51','https://gutmann.info/quae-quibusdam-et-tenetur-debitis-delectus.html','Clifton Powlowski'),(23,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.dickinson.com/nisi-culpa-ut-veritatis-et-et-dolorum','Nora Lindgren'),(24,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.dooley.net/','Houston Pouros'),(25,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://nitzsche.org/soluta-molestiae-et-qui-quidem.html','Ferne Heaney V'),(26,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.lehner.com/','Ayden Abshire'),(27,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.quigley.com/dolor-quos-tempora-doloribus-porro-consequatur-labore','Verdie Gislason'),(28,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.koelpin.net/molestias-adipisci-eum-ab-debitis-dignissimos-ipsa-distinctio','Laura Weissnat'),(29,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.blick.net/ut-ad-sunt-error','Kiara Pacocha'),(30,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://schmitt.com/','Shaun Lynch'),(31,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.schneider.info/ea-aut-ut-sit-sit','Montana Goyette PhD'),(32,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://nicolas.biz/voluptas-veritatis-dolor-sit-sint-fugiat','Alexzander Kshlerin'),(33,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.cummerata.com/','Dr. Andrew Pacocha PhD'),(34,'2021-02-11 13:51:51','2021-02-11 13:51:51','https://www.heaney.com/est-id-temporibus-qui-hic-qui-rem-minus','Dr. Olga Nienow MD'),(35,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.jerde.net/','Reinhold Larkin IV'),(36,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.donnelly.biz/','Jamir Rolfson'),(37,'2021-02-11 13:51:51','2021-02-11 13:51:51','https://www.stark.com/debitis-provident-quia-cum-aspernatur-nam','Mr. Jonathon Tremblay'),(38,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://zieme.com/porro-ut-incidunt-eos-voluptatibus.html','Reese Lind'),(39,'2021-02-11 13:51:51','2021-02-11 13:51:51','https://www.bernier.info/est-commodi-at-consequatur-eligendi-nihil','Trycia Reilly V'),(40,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://towne.com/dolorem-enim-commodi-dolorem-adipisci.html','Austyn Rowe'),(41,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://shanahan.com/','Aubree Murphy'),(42,'2021-02-11 13:51:51','2021-02-11 13:51:51','https://pacocha.com/et-minus-ipsam-debitis-quo-doloremque.html','Felicity Gleichner'),(43,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://powlowski.com/vero-fugiat-et-eos-et-quaerat-omnis-rem.html','Marty Wiza'),(44,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.labadie.net/ullam-ut-minus-facere-illum-mollitia-nihil.html','Citlalli Toy'),(45,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://mclaughlin.com/rerum-eaque-rem-repellendus-numquam-non.html','Prof. Johan Turner'),(46,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.weissnat.com/dolores-explicabo-quia-consequatur-dolores','Jermaine Schmitt DDS'),(47,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://turner.com/debitis-officiis-ex-voluptas-facere-voluptate-officia-ab','Justice Watsica'),(48,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://price.biz/consequatur-in-assumenda-veniam-hic-veritatis-iste.html','Celestino Jast III'),(49,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://hane.com/dolorem-molestiae-consectetur-repellat-est-id-molestiae','Prof. Travis Schuster DDS'),(50,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://satterfield.biz/','Willow Schuppe V'),(51,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.walsh.com/molestias-ex-labore-nulla-praesentium-temporibus','Lenora Langworth'),(52,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://bechtelar.com/incidunt-accusantium-molestias-sit-ullam-in','Devyn Kautzer MD'),(53,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://wolf.com/','Ms. Shaniya Barrows DVM'),(54,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://schoen.org/et-iusto-excepturi-eos-iusto-consequuntur-repudiandae','Carson Graham'),(55,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://mante.biz/eum-voluptatem-voluptatibus-ratione-minima-in-veritatis-illum','Bo Moore'),(56,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.gusikowski.com/','Mrs. Marilyne Rath'),(57,'2021-02-11 13:51:51','2021-02-11 13:51:51','https://hane.net/magni-sapiente-officiis-sed-hic-perspiciatis.html','Roslyn Thiel I'),(58,'2021-02-11 13:51:51','2021-02-11 13:51:51','https://hagenes.org/qui-facere-consequatur-praesentium-rerum-architecto.html','Raina Hyatt'),(59,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://jacobi.com/praesentium-molestias-ipsa-quidem-reprehenderit-quibusdam-quisquam-cupiditate-sed','Prof. Susanna Stracke'),(60,'2021-02-11 13:51:51','2021-02-11 13:51:51','https://www.langworth.com/sit-voluptas-asperiores-et','Jamarcus Prohaska I'),(61,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://lesch.com/quia-consequatur-ex-quidem-impedit-facilis-quo','Mr. Zachery Schultz MD'),(62,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://wehner.com/','Morgan Schmitt'),(63,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://schimmel.biz/voluptatum-autem-officia-eos-delectus','Kaitlin Paucek'),(64,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.frami.net/autem-vel-deserunt-maiores-nesciunt-quas','Hollie Hamill'),(65,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.walker.net/dolores-facere-non-aliquid-error','Tressa Spencer'),(66,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.ortiz.info/fugit-magni-non-molestiae','Sydney Treutel'),(67,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.ryan.com/ut-sequi-neque-molestias-ut-quo-nulla-harum.html','Miss Baby Shanahan'),(68,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://farrell.info/iste-nesciunt-quis-non-et-dolor','Aniyah Hirthe'),(69,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://brakus.net/dolores-aut-amet-illum-odit-autem.html','Hollie Medhurst'),(70,'2021-02-11 13:51:51','2021-02-11 13:51:51','https://www.cassin.com/consequatur-enim-necessitatibus-repudiandae-exercitationem','Eryn Emmerich'),(71,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://yost.com/iure-nobis-molestiae-vitae-nihil-nam-facere-nisi','Prof. Bruce Bahringer'),(72,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.becker.com/','Timmy Berge Jr.'),(73,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.haag.org/','Mara Gottlieb'),(74,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.herman.info/ipsum-itaque-ratione-veniam-omnis-vitae','Prof. Maryse Beier'),(75,'2021-02-11 13:51:51','2021-02-11 13:51:51','https://howell.org/nisi-molestiae-dolor-neque-iure-consequatur-nisi-consequatur.html','Dennis Watsica'),(76,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.predovic.com/quis-aut-esse-voluptas-provident-iure','Katlynn Kuvalis'),(77,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://bruen.com/vero-qui-accusamus-voluptates-eum-quia-tempora-in.html','Gerard Lang'),(78,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.wolff.com/eligendi-est-omnis-dolor-et-eos-quidem-distinctio.html','Jessy Macejkovic'),(79,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.nitzsche.com/qui-illo-occaecati-quam-quo-est-qui-repellendus','Ryan Murazik'),(80,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.hammes.com/','Sylvan Hermiston'),(81,'2021-02-11 13:51:51','2021-02-11 13:51:51','https://www.jast.org/laborum-provident-dignissimos-saepe-in-id-qui','Aurelia Haag'),(82,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.schinner.biz/eos-omnis-sint-animi-maxime-non-alias-deserunt.html','Ms. Rosamond Wyman'),(83,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.nicolas.biz/temporibus-non-illum-est-dicta-et-cumque.html','Hollis Grant II'),(84,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.swift.info/exercitationem-doloribus-totam-sed-odio-facilis-sapiente-error.html','Prof. Carli Bergstrom'),(85,'2021-02-11 13:51:51','2021-02-11 13:51:51','https://www.harber.biz/iste-provident-molestiae-in','Mrs. Cathryn Kub Jr.'),(86,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.kling.com/','Oceane Torphy'),(87,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.jaskolski.com/','Callie Swift'),(88,'2021-02-11 13:51:51','2021-02-11 13:51:51','https://larkin.com/quam-nulla-ut-quas-commodi-neque-odit.html','Kayla VonRueden I'),(89,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.jones.com/','Ms. Laila Rodriguez'),(90,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.farrell.com/et-maxime-quae-voluptas-placeat-veritatis-qui','Magali Bergstrom'),(91,'2021-02-11 13:51:51','2021-02-11 13:51:51','https://murray.com/dolore-aliquid-fugit-nihil-cupiditate-ea-eligendi-vel.html','Mrs. Marquise Brown Sr.'),(92,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://ondricka.com/deserunt-explicabo-accusamus-rerum-et-vel-qui','Antonietta Ritchie'),(93,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://bailey.net/at-sunt-commodi-quaerat-repudiandae-assumenda-consequatur-dignissimos.html','Marques Rodriguez'),(94,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://lowe.com/ipsam-sunt-minima-sed-dolorem-hic-voluptatibus-sit.html','Mona Ward'),(95,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.schulist.info/aut-id-quaerat-est-aut-dolores-esse-ut','Prof. Claudie Greenfelder DDS'),(96,'2021-02-11 13:51:51','2021-02-11 13:51:51','https://hagenes.com/ut-error-voluptatem-est-magnam-est.html','Mr. Jamey Raynor'),(97,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://www.jones.com/','Miss Herta Schamberger'),(98,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://ledner.com/','Mae Wolf'),(99,'2021-02-11 13:51:51','2021-02-11 13:51:51','https://www.yost.info/odit-eius-maxime-eveniet-voluptatum','Sharon Haag'),(100,'2021-02-11 13:51:51','2021-02-11 13:51:51','http://heller.com/iusto-illum-mollitia-itaque-laborum-quam-vel-amet-excepturi','Phoebe Heathcote');
/*!40000 ALTER TABLE `series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stories`
--

DROP TABLE IF EXISTS `stories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `story_type_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `stories_story_type_name_foreign` (`story_type_name`),
  CONSTRAINT `stories_story_type_name_foreign` FOREIGN KEY (`story_type_name`) REFERENCES `stories_types` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stories`
--

LOCK TABLES `stories` WRITE;
/*!40000 ALTER TABLE `stories` DISABLE KEYS */;
INSERT INTO `stories` VALUES (1,'2021-02-11 13:51:51','2021-02-11 13:51:51','Ea et maxime.','libero','ipsum'),(2,'2021-02-11 13:51:51','2021-02-11 13:51:51','Ipsum.','sapiente','molestias'),(3,'2021-02-11 13:51:51','2021-02-11 13:51:51','Eum eum est.','libero','et'),(4,'2021-02-11 13:51:51','2021-02-11 13:51:51','Ab voluptas.','libero','et'),(5,'2021-02-11 13:51:51','2021-02-11 13:51:51','Atque est.','sapiente','nesciunt'),(6,'2021-02-11 13:51:51','2021-02-11 13:51:51','Rem.','sapiente','at'),(7,'2021-02-11 13:51:51','2021-02-11 13:51:51','Rerum quia.','sapiente','aperiam'),(8,'2021-02-11 13:51:51','2021-02-11 13:51:51','Aut tempore.','sapiente','et'),(9,'2021-02-11 13:51:51','2021-02-11 13:51:51','Illo eaque.','sapiente','harum'),(10,'2021-02-11 13:51:51','2021-02-11 13:51:51','Sapiente.','libero','maxime'),(11,'2021-02-11 13:51:51','2021-02-11 13:51:51','Natus et et.','sapiente','maiores'),(12,'2021-02-11 13:51:51','2021-02-11 13:51:51','Aut minima.','sapiente','assumenda'),(13,'2021-02-11 13:51:51','2021-02-11 13:51:51','Temporibus.','sapiente','minima'),(14,'2021-02-11 13:51:51','2021-02-11 13:51:51','Facere.','sapiente','fugiat'),(15,'2021-02-11 13:51:51','2021-02-11 13:51:51','Sit nobis.','libero','consequatur'),(16,'2021-02-11 13:51:51','2021-02-11 13:51:51','Non.','libero','necessitatibus'),(17,'2021-02-11 13:51:51','2021-02-11 13:51:51','Et nostrum.','sapiente','dolor'),(18,'2021-02-11 13:51:51','2021-02-11 13:51:51','Voluptatibus.','sapiente','id'),(19,'2021-02-11 13:51:51','2021-02-11 13:51:51','Quod quis.','sapiente','est'),(20,'2021-02-11 13:51:51','2021-02-11 13:51:51','Quia sit.','libero','porro'),(21,'2021-02-11 13:51:51','2021-02-11 13:51:51','Assumenda id.','libero','blanditiis'),(22,'2021-02-11 13:51:51','2021-02-11 13:51:51','A fuga est.','sapiente','et'),(23,'2021-02-11 13:51:51','2021-02-11 13:51:51','Est voluptas.','sapiente','ratione'),(24,'2021-02-11 13:51:51','2021-02-11 13:51:51','Quae dolores.','libero','corporis'),(25,'2021-02-11 13:51:51','2021-02-11 13:51:51','Error ea.','libero','molestias'),(26,'2021-02-11 13:51:51','2021-02-11 13:51:51','Adipisci.','sapiente','cupiditate'),(27,'2021-02-11 13:51:51','2021-02-11 13:51:51','Inventore.','libero','vel'),(28,'2021-02-11 13:51:51','2021-02-11 13:51:51','Aut neque.','libero','accusamus'),(29,'2021-02-11 13:51:51','2021-02-11 13:51:51','Molestias.','libero','quam'),(30,'2021-02-11 13:51:51','2021-02-11 13:51:51','A sit minima.','sapiente','minima'),(31,'2021-02-11 13:51:51','2021-02-11 13:51:51','Itaque.','sapiente','facilis'),(32,'2021-02-11 13:51:51','2021-02-11 13:51:51','Deserunt et.','libero','omnis'),(33,'2021-02-11 13:51:51','2021-02-11 13:51:51','Maxime.','sapiente','quo'),(34,'2021-02-11 13:51:51','2021-02-11 13:51:51','Sit rerum ut.','sapiente','veniam'),(35,'2021-02-11 13:51:51','2021-02-11 13:51:51','Qui.','libero','sit'),(36,'2021-02-11 13:51:51','2021-02-11 13:51:51','Dolor.','libero','aspernatur'),(37,'2021-02-11 13:51:51','2021-02-11 13:51:51','Nihil velit.','sapiente','ratione'),(38,'2021-02-11 13:51:51','2021-02-11 13:51:51','Aut non.','libero','rerum'),(39,'2021-02-11 13:51:51','2021-02-11 13:51:51','Nemo quia.','sapiente','tempora'),(40,'2021-02-11 13:51:51','2021-02-11 13:51:51','Et qui.','sapiente','vitae'),(41,'2021-02-11 13:51:51','2021-02-11 13:51:51','Et aut.','sapiente','ad'),(42,'2021-02-11 13:51:51','2021-02-11 13:51:51','Id vitae.','libero','eos'),(43,'2021-02-11 13:51:52','2021-02-11 13:51:52','Dolores.','libero','minima'),(44,'2021-02-11 13:51:52','2021-02-11 13:51:52','Soluta.','sapiente','ut'),(45,'2021-02-11 13:51:52','2021-02-11 13:51:52','Rerum.','sapiente','enim'),(46,'2021-02-11 13:51:52','2021-02-11 13:51:52','Ipsam neque.','sapiente','sed'),(47,'2021-02-11 13:51:52','2021-02-11 13:51:52','Et expedita.','libero','qui'),(48,'2021-02-11 13:51:52','2021-02-11 13:51:52','Et quas.','libero','sint'),(49,'2021-02-11 13:51:52','2021-02-11 13:51:52','Optio odit.','sapiente','officia'),(50,'2021-02-11 13:51:52','2021-02-11 13:51:52','Fugit quia.','sapiente','eligendi'),(51,'2021-02-11 13:51:52','2021-02-11 13:51:52','Est illo.','libero','qui'),(52,'2021-02-11 13:51:52','2021-02-11 13:51:52','Id quam.','sapiente','molestiae'),(53,'2021-02-11 13:51:52','2021-02-11 13:51:52','Voluptatibus.','sapiente','est'),(54,'2021-02-11 13:51:52','2021-02-11 13:51:52','Odit et est.','sapiente','accusantium'),(55,'2021-02-11 13:51:52','2021-02-11 13:51:52','Nobis neque.','libero','neque'),(56,'2021-02-11 13:51:52','2021-02-11 13:51:52','Nobis beatae.','sapiente','repellat'),(57,'2021-02-11 13:51:52','2021-02-11 13:51:52','Odit.','sapiente','sed'),(58,'2021-02-11 13:51:52','2021-02-11 13:51:52','Sed quas.','libero','officiis'),(59,'2021-02-11 13:51:52','2021-02-11 13:51:52','Quia vero.','sapiente','sunt'),(60,'2021-02-11 13:51:52','2021-02-11 13:51:52','Explicabo.','libero','corporis'),(61,'2021-02-11 13:51:52','2021-02-11 13:51:52','Repellendus.','libero','voluptate'),(62,'2021-02-11 13:51:52','2021-02-11 13:51:52','Cupiditate.','libero','sunt'),(63,'2021-02-11 13:51:52','2021-02-11 13:51:52','Aliquam iure.','libero','officiis'),(64,'2021-02-11 13:51:52','2021-02-11 13:51:52','Et nostrum.','sapiente','eum'),(65,'2021-02-11 13:51:52','2021-02-11 13:51:52','Autem sit.','libero','ea'),(66,'2021-02-11 13:51:52','2021-02-11 13:51:52','Quaerat.','libero','harum'),(67,'2021-02-11 13:51:52','2021-02-11 13:51:52','Earum rerum.','libero','delectus'),(68,'2021-02-11 13:51:52','2021-02-11 13:51:52','Eveniet.','libero','nemo'),(69,'2021-02-11 13:51:52','2021-02-11 13:51:52','Eveniet vero.','libero','sunt'),(70,'2021-02-11 13:51:52','2021-02-11 13:51:52','Quia.','sapiente','quaerat'),(71,'2021-02-11 13:51:52','2021-02-11 13:51:52','Aut quae.','sapiente','et'),(72,'2021-02-11 13:51:52','2021-02-11 13:51:52','Ex sint.','libero','repellat'),(73,'2021-02-11 13:51:52','2021-02-11 13:51:52','Eos ipsam.','libero','incidunt'),(74,'2021-02-11 13:51:52','2021-02-11 13:51:52','Ab est sed.','sapiente','cupiditate'),(75,'2021-02-11 13:51:52','2021-02-11 13:51:52','Dolorem.','sapiente','perferendis'),(76,'2021-02-11 13:51:52','2021-02-11 13:51:52','Quas ut.','sapiente','voluptas'),(77,'2021-02-11 13:51:52','2021-02-11 13:51:52','Qui sunt.','sapiente','consectetur'),(78,'2021-02-11 13:51:52','2021-02-11 13:51:52','Nostrum a.','sapiente','quia'),(79,'2021-02-11 13:51:52','2021-02-11 13:51:52','Aut laborum.','libero','soluta'),(80,'2021-02-11 13:51:52','2021-02-11 13:51:52','Eveniet.','sapiente','consequatur'),(81,'2021-02-11 13:51:52','2021-02-11 13:51:52','Eaque est.','libero','veniam'),(82,'2021-02-11 13:51:52','2021-02-11 13:51:52','Consectetur.','libero','quo'),(83,'2021-02-11 13:51:52','2021-02-11 13:51:52','Est autem.','sapiente','et'),(84,'2021-02-11 13:51:52','2021-02-11 13:51:52','Omnis et.','sapiente','exercitationem'),(85,'2021-02-11 13:51:52','2021-02-11 13:51:52','Aliquid.','sapiente','maiores'),(86,'2021-02-11 13:51:52','2021-02-11 13:51:52','Ea et quo ut.','libero','ut'),(87,'2021-02-11 13:51:52','2021-02-11 13:51:52','Perspiciatis.','libero','dolor'),(88,'2021-02-11 13:51:52','2021-02-11 13:51:52','Illo.','sapiente','maxime'),(89,'2021-02-11 13:51:52','2021-02-11 13:51:52','Ut unde sunt.','sapiente','velit'),(90,'2021-02-11 13:51:52','2021-02-11 13:51:52','Atque totam.','sapiente','dolor'),(91,'2021-02-11 13:51:52','2021-02-11 13:51:52','Dolore qui.','libero','nemo'),(92,'2021-02-11 13:51:52','2021-02-11 13:51:52','Ut voluptas.','sapiente','ratione'),(93,'2021-02-11 13:51:52','2021-02-11 13:51:52','Totam cum.','libero','unde'),(94,'2021-02-11 13:51:52','2021-02-11 13:51:52','Autem.','sapiente','laudantium'),(95,'2021-02-11 13:51:52','2021-02-11 13:51:52','Ratione.','sapiente','quaerat'),(96,'2021-02-11 13:51:52','2021-02-11 13:51:52','In amet.','libero','assumenda'),(97,'2021-02-11 13:51:52','2021-02-11 13:51:52','Dolorem.','sapiente','qui'),(98,'2021-02-11 13:51:52','2021-02-11 13:51:52','Dolor iste.','libero','quia'),(99,'2021-02-11 13:51:52','2021-02-11 13:51:52','Fugit alias.','sapiente','sapiente'),(100,'2021-02-11 13:51:52','2021-02-11 13:51:52','Dignissimos.','libero','explicabo');
/*!40000 ALTER TABLE `stories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stories_types`
--

DROP TABLE IF EXISTS `stories_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stories_types` (
  `name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `stories_types_name_index` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stories_types`
--

LOCK TABLES `stories_types` WRITE;
/*!40000 ALTER TABLE `stories_types` DISABLE KEYS */;
INSERT INTO `stories_types` VALUES ('libero'),('sapiente');
/*!40000 ALTER TABLE `stories_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-11 16:38:06
