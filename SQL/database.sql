-- MySQL dump 10.13  Distrib 8.0.28, for macos10.15 (x86_64)
--
-- Host: localhost    Database: nest
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `code` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'1DZxvIBP9nFCdTtuwCXYTkuGKyGGD325',1,'2022-03-16 02:41:33','2022-03-16 02:41:33','2022-03-16 02:41:33');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Everyday Fresh','2027-03-16 00:00:00','not_set','IZ6WU8KUALYD','promotion/1.png','/products',0,1,'published','2022-03-16 02:41:39','2022-03-16 02:41:39'),(2,'Make your Breakfast','2027-03-16 00:00:00','not_set','ILSFJVYFGCPZ','promotion/2.png','/products',0,2,'published','2022-03-16 02:41:39','2022-03-16 02:41:39'),(3,'The best Organic','2027-03-16 00:00:00','not_set','ILSDKVYFGXPH','promotion/3.png','/products',0,3,'published','2022-03-16 02:41:39','2022-03-16 02:41:39'),(4,'Bring nature into your home','2027-03-16 00:00:00','not_set','IZ6WU8KUALYG','promotion/4.png','/products',0,4,'published','2022-03-16 02:41:39','2022-03-16 02:41:39'),(5,'Delivered to your home','2027-03-16 00:00:00','banner-big','IZ6WU8KUALYH','promotion/5.png','/products',0,5,'published','2022-03-16 02:41:39','2022-03-16 02:41:39'),(6,'Save 17% on Oganic Juice','2027-03-16 00:00:00','no_set','IZ6WU8KUALYI','promotion/6.png','/products',0,6,'published','2022-03-16 02:41:39','2022-03-16 02:41:39'),(7,'Everyday Fresh & Clean with Our Products','2027-03-16 00:00:00','item-style-4','IZ6WU8KUALYJ','promotion/7.png','/products',0,7,'published','2022-03-16 02:41:39','2022-03-16 02:41:39'),(8,'The best Organic Products Online','2027-03-16 00:00:00','item-style-5','IZ6WU8KUALYK','promotion/8.png','/products',0,8,'published','2022-03-16 02:41:39','2022-03-16 02:41:39'),(9,'Everyday Fresh with Our Products','2027-03-16 00:00:00','item-style-2','IZ6WU8KUALYL','promotion/9.png',NULL,0,9,'published','2022-03-16 02:41:39','2022-03-16 02:41:39'),(10,'100% guaranteed all Fresh items','2027-03-16 00:00:00','item-style-2','IZ6WU8KUALYM','promotion/10.png',NULL,0,10,'published','2022-03-16 02:41:39','2022-03-16 02:41:39'),(11,'Special grocery sale off this month','2027-03-16 00:00:00','item-style-2','IZ6WU8KUALYN','promotion/11.png',NULL,0,11,'published','2022-03-16 02:41:39','2022-03-16 02:41:39'),(12,'Enjoy 15% OFF for all vegetable and fruit','2027-03-16 00:00:00','item-style-2','IZ6WU8KUALYO','promotion/12.png',NULL,0,12,'published','2022-03-16 02:41:39','2022-03-16 02:41:39');
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
INSERT INTO `ads_translations` VALUES ('vi',1,'Tươi mỗi ngày','promotion/1.png','/vi/products'),('vi',2,'Nấu bữa sáng của bạn','promotion/2.png','/vi/products'),('vi',3,'Hữu cơ tốt nhất','promotion/3.png','/vi/products'),('vi',4,'Mang thiên nhiên vào ngôi nhà của bạn','promotion/4.png','/vi/products'),('vi',5,'Giao tận nhà','promotion/5.png','/vi/products'),('vi',6,'Tiết kiệm 17% khi mua nước ép hữu cơ','promotion/6.png','/vi/products'),('vi',7,'Tươi và Sạch hàng ngày với các sản phẩm của chúng tôi','promotion/7.png','/vi/products'),('vi',8,'Các sản phẩm hữu cơ tốt nhất trực tuyến','promotion/8.png','/vi/products'),('vi',9,'Tươi mới mỗi ngày với các sản phẩm của chúng tôi','promotion/9.png','/vi/products'),('vi',10,'100% đảm bảo tất cả các mặt hàng tươi','promotion/10.png','/vi/products'),('vi',11,'Giảm giá hàng tạp hóa đặc biệt trong tháng này','promotion/11.png','/vi/products'),('vi',12,'GIẢM GIÁ 15% cho tất cả rau và trái cây','promotion/12.png','/vi/products');
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `module` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int unsigned NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Id minus exercitationem aut et tenetur ratione. Nulla quidem consequuntur modi. Iste repudiandae culpa dolores dolores ex enim consequuntur.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2022-03-16 02:41:33','2022-03-16 02:41:33'),(2,'Fashion',0,'Qui explicabo facere cupiditate voluptas tenetur sit. Unde aut molestiae nulla quis quod corporis. Accusamus ut expedita dolor consequatur omnis. Tempora id mollitia quo minima.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-03-16 02:41:33','2022-03-16 02:41:33'),(3,'Electronic',0,'Illum facere placeat fugiat repellat libero. Est consequatur et culpa et sed. Itaque blanditiis numquam non possimus molestiae atque dolor. A officiis cupiditate soluta aut.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-03-16 02:41:33','2022-03-16 02:41:33'),(4,'Commercial',0,'Qui earum iusto in eveniet ad ratione sint. Quia nisi neque sed ipsum aut aut. Error ex voluptate qui facere est quia.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-03-16 02:41:33','2022-03-16 02:41:33');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
INSERT INTO `categories_translations` VALUES ('vi',1,'Thương mại điện tử',NULL),('vi',2,'Thời trang',NULL),('vi',3,'Điện tử',NULL),('vi',4,'Thương mại',NULL);
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int unsigned NOT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `record_id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_backup`
--

DROP TABLE IF EXISTS `cities_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_backup` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int unsigned NOT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `record_id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_backup`
--

LOCK TABLES `cities_backup` WRITE;
/*!40000 ALTER TABLE `cities_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` int NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_backup`
--

DROP TABLE IF EXISTS `countries_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_backup` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_backup`
--

LOCK TABLES `countries_backup` WRITE;
/*!40000 ALTER TABLE `countries_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` int NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` int unsigned NOT NULL,
  `widget_id` int unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Perxsion',NULL,NULL,NULL,'published',0,1,'2022-03-16 02:40:42','2022-03-16 02:40:42'),(2,'Hiching',NULL,NULL,NULL,'published',1,1,'2022-03-16 02:40:43','2022-03-16 02:40:43'),(3,'Kepslo',NULL,NULL,NULL,'published',2,1,'2022-03-16 02:40:43','2022-03-16 02:40:43'),(4,'Groneba',NULL,NULL,NULL,'published',3,1,'2022-03-16 02:40:43','2022-03-16 02:40:43'),(5,'Babian',NULL,NULL,NULL,'published',4,1,'2022-03-16 02:40:43','2022-03-16 02:40:43'),(6,'Valorant',NULL,NULL,NULL,'published',5,1,'2022-03-16 02:40:43','2022-03-16 02:40:43'),(7,'Pure',NULL,NULL,NULL,'published',6,1,'2022-03-16 02:40:43','2022-03-16 02:40:43');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
INSERT INTO `ec_brands_translations` VALUES ('vi',1,'Perxsion',NULL),('vi',2,'Hiching',NULL),('vi',3,'Kepslo',NULL),('vi',4,'Groneba',NULL),('vi',5,'Babian',NULL),('vi',6,'Valorant',NULL),('vi',7,'Pure',NULL);
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2022-03-16 02:40:43','2022-03-16 02:40:43'),(2,'EUR','€',0,2,1,0,0.84,'2022-03-16 02:40:43','2022-03-16 02:40:43'),(3,'VND','₫',0,0,2,0,23203,'2022-03-16 02:40:43','2022-03-16 02:40:43');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Caleigh Johns','customer@shariqq.com','+16629987978','GI','Tennessee','Lake Brandifort','9515 Veum Garden Apt. 907',1,1,'2022-03-16 02:41:07','2022-03-16 02:41:07','40401-8047'),(2,'Caleigh Johns','customer@shariqq.com','+15124973496','TJ','Colorado','West Elna','3838 Hammes Mountains Apt. 490',1,0,'2022-03-16 02:41:07','2022-03-16 02:41:07','65859'),(3,'Amelie Mohr','vendor@shariqq.com','+17622727996','IL','Michigan','Barrybury','31844 Lehner Crossing',2,1,'2022-03-16 02:41:07','2022-03-16 02:41:07','52912-7327'),(4,'Amelie Mohr','vendor@shariqq.com','+16615760672','LT','Vermont','Lindsayville','9088 Mittie Trail Suite 425',2,0,'2022-03-16 02:41:07','2022-03-16 02:41:07','49185'),(5,'Mrs. Lucy Crona','ruthe.dibbert@example.org','+14584419263','MS','Wisconsin','Pfannerstillburgh','52933 Beverly Fords Apt. 521',3,1,'2022-03-16 02:41:07','2022-03-16 02:41:07','44320-9990'),(6,'Prof. Frederik Feil II','yhickle@example.net','+15597811095','IN','Hawaii','South Rosie','791 Fadel Light',4,1,'2022-03-16 02:41:07','2022-03-16 02:41:07','61145-4323'),(7,'Abbey Schamberger','ziemann.amelie@example.net','+17863657765','AZ','New Jersey','Leschborough','4284 Bosco Loaf Suite 109',5,1,'2022-03-16 02:41:07','2022-03-16 02:41:07','33966-6143'),(8,'Miss Oceane Bernier','batz.roberta@example.org','+13808727860','GB','Connecticut','North Codymouth','50034 Aurore Junction',6,1,'2022-03-16 02:41:08','2022-03-16 02:41:08','62564-5531'),(9,'Prof. Destini Reilly','buckridge.mark@example.net','+16516619823','QA','Florida','South Melvina','380 Juliet Mountains Suite 436',7,1,'2022-03-16 02:41:08','2022-03-16 02:41:08','91123'),(10,'Jazlyn Renner','sstreich@example.net','+17315441164','CK','Colorado','Steubermouth','203 Roberts Loaf Suite 616',8,1,'2022-03-16 02:41:08','2022-03-16 02:41:08','31141'),(11,'Ms. Carley Ruecker','konopelski.mariela@example.net','+14308211658','RS','Indiana','Drakemouth','59375 Griffin Valley',9,1,'2022-03-16 02:41:08','2022-03-16 02:41:08','37112'),(12,'Dr. Norval Sporer III','qbeatty@example.net','+12518271631','KE','Michigan','Krystelstad','39663 Matteo Crossroad Suite 088',10,1,'2022-03-16 02:41:08','2022-03-16 02:41:08','54754');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Caleigh Johns','customer@shariqq.com','$2y$10$JGWlXWKtCg8DWwLfY6047OORaESvkCYxgFe1/crLIPoJVVLnHRwOO','customers/4.jpg','1981-02-19','+12087466160',NULL,'2022-03-16 02:41:07','2022-03-16 02:41:07','2022-03-16 09:41:07',NULL,0,NULL,'activated'),(2,'Amelie Mohr','vendor@shariqq.com','$2y$10$NAtOUiC3yZXa6cTesh9cgOe/jR8q6MMayZIb8M4.fdA1vrERRqI16','customers/1.jpg','1984-03-06','+13606386581',NULL,'2022-03-16 02:41:07','2022-03-16 02:41:48','2022-03-16 09:41:07',NULL,1,'2022-03-16 09:41:48','activated'),(3,'Mrs. Lucy Crona','ruthe.dibbert@example.org','$2y$10$6yhRKcpfigQ9s5LixuUzLOh76mzmaSGPtzTkAu1E0zn0hh0Zto33C','customers/1.jpg','2002-02-15','+14589481574',NULL,'2022-03-16 02:41:07','2022-03-16 02:41:07','2022-03-16 09:41:07',NULL,0,NULL,'activated'),(4,'Prof. Frederik Feil II','yhickle@example.net','$2y$10$21Rb8zPuyqouX7jU7y5ew.DnvGNn1tiFooN.LpV7EA3rcvsQbzDJ6','customers/2.jpg','1995-03-04','+14632772186',NULL,'2022-03-16 02:41:07','2022-03-16 02:41:07','2022-03-16 09:41:07',NULL,0,NULL,'activated'),(5,'Abbey Schamberger','ziemann.amelie@example.net','$2y$10$Cj0iNhr5UwnsBCjT0kKnG.szPEEwvXA12qHuNzY3QEpGnZM0Rdw2G','customers/3.jpg','1975-03-06','+16579051970',NULL,'2022-03-16 02:41:07','2022-03-16 02:41:48','2022-03-16 09:41:07',NULL,1,'2022-03-16 09:41:48','activated'),(6,'Miss Oceane Bernier','batz.roberta@example.org','$2y$10$b3hjNko2/KIUad81GyBO7uhl76wrp.WIGMZP/EhRTtdUveC0I.L4W','customers/4.jpg','1994-02-28','+18648625533',NULL,'2022-03-16 02:41:08','2022-03-16 02:41:48','2022-03-16 09:41:08',NULL,1,'2022-03-16 09:41:48','activated'),(7,'Prof. Destini Reilly','buckridge.mark@example.net','$2y$10$DWYYkcPgAdV6LZZOf./X3eOEWqkYfXXoLu2HEkPf3W7tKCKmDyKCK','customers/5.jpg','1979-03-06','+19255228879',NULL,'2022-03-16 02:41:08','2022-03-16 02:41:08','2022-03-16 09:41:08',NULL,0,NULL,'activated'),(8,'Jazlyn Renner','sstreich@example.net','$2y$10$qfkouKn3IbRWI1CvtDaAaOikXuDjKF6Pgso3BSzpN28Ogo6SLNLBu','customers/6.jpg','1986-02-28','+19846490797',NULL,'2022-03-16 02:41:08','2022-03-16 02:41:08','2022-03-16 09:41:08',NULL,0,NULL,'activated'),(9,'Ms. Carley Ruecker','konopelski.mariela@example.net','$2y$10$yjS356A2/rEPlLG2f6Otq.s9TUFEecVMmlJr3QsFWhaNDEQsuN6VO','customers/7.jpg','1999-03-09','+13419477609',NULL,'2022-03-16 02:41:08','2022-03-16 02:41:48','2022-03-16 09:41:08',NULL,1,'2022-03-16 09:41:48','activated'),(10,'Dr. Norval Sporer III','qbeatty@example.net','$2y$10$/rsr6Uf/EsgLrRpY2k4kdOlkSZzASbcoSKIYn/K4tHau1YMdkDKkW','customers/8.jpg','1983-02-25','+13417221205',NULL,'2022-03-16 02:41:08','2022-03-16 02:41:49','2022-03-16 09:41:08',NULL,1,'2022-03-16 09:41:49','activated');
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` int unsigned NOT NULL,
  `customer_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` int unsigned NOT NULL,
  `product_collection_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,3,166.8,20,4),(2,20,92.0286,18,5),(3,8,86.9,16,2),(4,2,368.8,13,3),(5,7,90.44,8,1),(6,1,239.97,13,4),(6,2,290.43,10,3),(6,3,97.3,17,3),(6,4,47.2104,11,3),(6,5,26,19,3),(6,6,28.08,18,4),(6,7,36.89,9,2),(6,8,38.5125,8,2),(6,9,81.6,20,3),(6,10,204.66,17,2),(6,11,50.6,6,2),(6,12,51.7548,6,5),(6,13,41.14,14,2),(6,14,97.5,9,4),(6,15,71.3,9,5),(6,16,65.1882,18,2),(6,17,82.11,16,4),(6,18,38.4,13,2),(6,19,52.5,11,3),(6,20,70.6266,18,2);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Deal of the Day','2022-05-16 00:00:00','published','2022-04-20 20:19:52','2022-04-20 20:19:52'),(2,'Flash sale 2','2022-05-25 00:00:00','published','2022-04-20 20:19:52','2022-04-20 20:19:52'),(3,'Flash sale 3','2022-06-02 00:00:00','published','2022-04-20 20:19:52','2022-04-20 20:19:52'),(4,'Flash sale 4','2022-05-22 00:00:00','published','2022-04-20 20:19:52','2022-04-20 20:19:52'),(5,'Flash sale 5','2022-05-31 00:00:00','published','2022-04-20 20:19:52','2022-04-20 20:19:52'),(6,'Daily Best Sales','2022-05-21 00:00:00','published','2022-04-20 20:19:52','2022-04-20 20:19:52');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
INSERT INTO `ec_flash_sales_translations` VALUES ('vi',1,'Ưu đãi trong ngày'),('vi',2,'Khuyến mãi 2'),('vi',3,'Khuyến mãi 3'),('vi',4,'Khuyến mãi 4'),('vi',5,'Khuyến mãi 5'),('vi',6,'Bán tốt nhất hàng ngày');
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int unsigned NOT NULL,
  `zip_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Prof. Destini Reilly','+16516619823','buckridge.mark@example.net','QA','Florida','South Melvina','380 Juliet Mountains Suite 436',1,'91123'),(2,'Prof. Destini Reilly','+16516619823','buckridge.mark@example.net','QA','Florida','South Melvina','380 Juliet Mountains Suite 436',2,'91123'),(3,'Prof. Destini Reilly','+16516619823','buckridge.mark@example.net','QA','Florida','South Melvina','380 Juliet Mountains Suite 436',3,'91123'),(4,'Prof. Frederik Feil II','+15597811095','yhickle@example.net','IN','Hawaii','South Rosie','791 Fadel Light',4,'61145-4323'),(5,'Prof. Frederik Feil II','+15597811095','yhickle@example.net','IN','Hawaii','South Rosie','791 Fadel Light',5,'61145-4323'),(6,'Prof. Frederik Feil II','+15597811095','yhickle@example.net','IN','Hawaii','South Rosie','791 Fadel Light',6,'61145-4323'),(7,'Mrs. Lucy Crona','+14584419263','ruthe.dibbert@example.org','MS','Wisconsin','Pfannerstillburgh','52933 Beverly Fords Apt. 521',7,'44320-9990'),(8,'Mrs. Lucy Crona','+14584419263','ruthe.dibbert@example.org','MS','Wisconsin','Pfannerstillburgh','52933 Beverly Fords Apt. 521',8,'44320-9990'),(9,'Mrs. Lucy Crona','+14584419263','ruthe.dibbert@example.org','MS','Wisconsin','Pfannerstillburgh','52933 Beverly Fords Apt. 521',9,'44320-9990'),(10,'Prof. Destini Reilly','+16516619823','buckridge.mark@example.net','QA','Florida','South Melvina','380 Juliet Mountains Suite 436',10,'91123'),(11,'Prof. Destini Reilly','+16516619823','buckridge.mark@example.net','QA','Florida','South Melvina','380 Juliet Mountains Suite 436',11,'91123'),(12,'Jazlyn Renner','+17315441164','sstreich@example.net','CK','Colorado','Steubermouth','203 Roberts Loaf Suite 616',12,'31141'),(13,'Jazlyn Renner','+17315441164','sstreich@example.net','CK','Colorado','Steubermouth','203 Roberts Loaf Suite 616',13,'31141'),(14,'Jazlyn Renner','+17315441164','sstreich@example.net','CK','Colorado','Steubermouth','203 Roberts Loaf Suite 616',14,'31141'),(15,'Prof. Frederik Feil II','+15597811095','yhickle@example.net','IN','Hawaii','South Rosie','791 Fadel Light',15,'61145-4323'),(16,'Prof. Frederik Feil II','+15597811095','yhickle@example.net','IN','Hawaii','South Rosie','791 Fadel Light',16,'61145-4323'),(17,'Prof. Frederik Feil II','+15597811095','yhickle@example.net','IN','Hawaii','South Rosie','791 Fadel Light',17,'61145-4323'),(18,'Mrs. Lucy Crona','+14584419263','ruthe.dibbert@example.org','MS','Wisconsin','Pfannerstillburgh','52933 Beverly Fords Apt. 521',18,'44320-9990'),(19,'Mrs. Lucy Crona','+14584419263','ruthe.dibbert@example.org','MS','Wisconsin','Pfannerstillburgh','52933 Beverly Fords Apt. 521',19,'44320-9990'),(20,'Mrs. Lucy Crona','+14584419263','ruthe.dibbert@example.org','MS','Wisconsin','Pfannerstillburgh','52933 Beverly Fords Apt. 521',20,'44320-9990'),(21,'Caleigh Johns','+16629987978','customer@shariqq.com','GI','Tennessee','Lake Brandifort','9515 Veum Garden Apt. 907',21,'40401-8047'),(22,'Caleigh Johns','+16629987978','customer@shariqq.com','GI','Tennessee','Lake Brandifort','9515 Veum Garden Apt. 907',22,'40401-8047'),(23,'Caleigh Johns','+16629987978','customer@shariqq.com','GI','Tennessee','Lake Brandifort','9515 Veum Garden Apt. 907',23,'40401-8047'),(24,'Prof. Frederik Feil II','+15597811095','yhickle@example.net','IN','Hawaii','South Rosie','791 Fadel Light',24,'61145-4323'),(25,'Prof. Frederik Feil II','+15597811095','yhickle@example.net','IN','Hawaii','South Rosie','791 Fadel Light',25,'61145-4323'),(26,'Jazlyn Renner','+17315441164','sstreich@example.net','CK','Colorado','Steubermouth','203 Roberts Loaf Suite 616',26,'31141'),(27,'Jazlyn Renner','+17315441164','sstreich@example.net','CK','Colorado','Steubermouth','203 Roberts Loaf Suite 616',27,'31141'),(28,'Jazlyn Renner','+17315441164','sstreich@example.net','CK','Colorado','Steubermouth','203 Roberts Loaf Suite 616',28,'31141'),(29,'Prof. Destini Reilly','+16516619823','buckridge.mark@example.net','QA','Florida','South Melvina','380 Juliet Mountains Suite 436',29,'91123'),(30,'Prof. Destini Reilly','+16516619823','buckridge.mark@example.net','QA','Florida','South Melvina','380 Juliet Mountains Suite 436',30,'91123'),(31,'Prof. Frederik Feil II','+15597811095','yhickle@example.net','IN','Hawaii','South Rosie','791 Fadel Light',31,'61145-4323'),(32,'Prof. Frederik Feil II','+15597811095','yhickle@example.net','IN','Hawaii','South Rosie','791 Fadel Light',32,'61145-4323'),(33,'Prof. Frederik Feil II','+15597811095','yhickle@example.net','IN','Hawaii','South Rosie','791 Fadel Light',33,'61145-4323'),(34,'Mrs. Lucy Crona','+14584419263','ruthe.dibbert@example.org','MS','Wisconsin','Pfannerstillburgh','52933 Beverly Fords Apt. 521',34,'44320-9990'),(35,'Mrs. Lucy Crona','+14584419263','ruthe.dibbert@example.org','MS','Wisconsin','Pfannerstillburgh','52933 Beverly Fords Apt. 521',35,'44320-9990'),(36,'Prof. Destini Reilly','+16516619823','buckridge.mark@example.net','QA','Florida','South Melvina','380 Juliet Mountains Suite 436',36,'91123'),(37,'Prof. Destini Reilly','+16516619823','buckridge.mark@example.net','QA','Florida','South Melvina','380 Juliet Mountains Suite 436',37,'91123'),(38,'Prof. Destini Reilly','+16516619823','buckridge.mark@example.net','QA','Florida','South Melvina','380 Juliet Mountains Suite 436',38,'91123'),(39,'Jazlyn Renner','+17315441164','sstreich@example.net','CK','Colorado','Steubermouth','203 Roberts Loaf Suite 616',39,'31141'),(40,'Jazlyn Renner','+17315441164','sstreich@example.net','CK','Colorado','Steubermouth','203 Roberts Loaf Suite 616',40,'31141'),(41,'Jazlyn Renner','+17315441164','sstreich@example.net','CK','Colorado','Steubermouth','203 Roberts Loaf Suite 616',41,'31141'),(42,'Prof. Destini Reilly','+16516619823','buckridge.mark@example.net','QA','Florida','South Melvina','380 Juliet Mountains Suite 436',42,'91123'),(43,'Prof. Destini Reilly','+16516619823','buckridge.mark@example.net','QA','Florida','South Melvina','380 Juliet Mountains Suite 436',43,'91123'),(44,'Jazlyn Renner','+17315441164','sstreich@example.net','CK','Colorado','Steubermouth','203 Roberts Loaf Suite 616',44,'31141'),(45,'Jazlyn Renner','+17315441164','sstreich@example.net','CK','Colorado','Steubermouth','203 Roberts Loaf Suite 616',45,'31141'),(46,'Jazlyn Renner','+17315441164','sstreich@example.net','CK','Colorado','Steubermouth','203 Roberts Loaf Suite 616',46,'31141'),(47,'Caleigh Johns','+16629987978','customer@shariqq.com','GI','Tennessee','Lake Brandifort','9515 Veum Garden Apt. 907',47,'40401-8047'),(48,'Caleigh Johns','+16629987978','customer@shariqq.com','GI','Tennessee','Lake Brandifort','9515 Veum Garden Apt. 907',48,'40401-8047'),(49,'Prof. Frederik Feil II','+15597811095','yhickle@example.net','IN','Hawaii','South Rosie','791 Fadel Light',49,'61145-4323'),(50,'Mrs. Lucy Crona','+14584419263','ruthe.dibbert@example.org','MS','Wisconsin','Pfannerstillburgh','52933 Beverly Fords Apt. 521',50,'44320-9990');
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `order_id` int unsigned NOT NULL,
  `extras` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_seeder','Order is created from the checkout page',NULL,1,NULL,'2022-04-05 20:19:54','2022-04-05 20:19:54'),(2,'confirm_order','Order was verified by %user_name%',0,1,NULL,'2022-04-05 20:19:54','2022-04-05 20:19:54'),(3,'confirm_payment','Payment was confirmed (amount $1,798.00) by %user_name%',0,1,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(4,'create_shipment','Created shipment for order',0,1,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(5,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,1,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(6,'create_order_from_seeder','Order is created from the checkout page',NULL,2,NULL,'2022-04-19 04:19:54','2022-04-19 04:19:54'),(7,'confirm_order','Order was verified by %user_name%',0,2,NULL,'2022-04-19 04:19:54','2022-04-19 04:19:54'),(8,'confirm_payment','Payment was confirmed (amount $59.40) by %user_name%',0,2,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(9,'create_shipment','Created shipment for order',0,2,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(10,'create_order_from_seeder','Order is created from the checkout page',NULL,3,NULL,'2022-04-15 20:19:54','2022-04-15 20:19:54'),(11,'confirm_order','Order was verified by %user_name%',0,3,NULL,'2022-04-15 20:19:54','2022-04-15 20:19:54'),(12,'create_shipment','Created shipment for order',0,3,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(13,'create_order_from_seeder','Order is created from the checkout page',NULL,4,NULL,'2022-04-11 08:19:54','2022-04-11 08:19:54'),(14,'confirm_order','Order was verified by %user_name%',0,4,NULL,'2022-04-11 08:19:54','2022-04-11 08:19:54'),(15,'confirm_payment','Payment was confirmed (amount $172.80) by %user_name%',0,4,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(16,'create_shipment','Created shipment for order',0,4,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(17,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,4,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(18,'create_order_from_seeder','Order is created from the checkout page',NULL,5,NULL,'2022-04-08 04:19:54','2022-04-08 04:19:54'),(19,'confirm_order','Order was verified by %user_name%',0,5,NULL,'2022-04-08 04:19:54','2022-04-08 04:19:54'),(20,'confirm_payment','Payment was confirmed (amount $381.30) by %user_name%',0,5,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(21,'create_shipment','Created shipment for order',0,5,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(22,'create_order_from_seeder','Order is created from the checkout page',NULL,6,NULL,'2022-04-16 02:19:54','2022-04-16 02:19:54'),(23,'confirm_order','Order was verified by %user_name%',0,6,NULL,'2022-04-16 02:19:54','2022-04-16 02:19:54'),(24,'confirm_payment','Payment was confirmed (amount $237.30) by %user_name%',0,6,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(25,'create_shipment','Created shipment for order',0,6,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(26,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,6,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(27,'create_order_from_seeder','Order is created from the checkout page',NULL,7,NULL,'2022-04-17 20:19:54','2022-04-17 20:19:54'),(28,'confirm_order','Order was verified by %user_name%',0,7,NULL,'2022-04-17 20:19:54','2022-04-17 20:19:54'),(29,'confirm_payment','Payment was confirmed (amount $365.80) by %user_name%',0,7,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(30,'create_shipment','Created shipment for order',0,7,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(31,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,7,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(32,'create_order_from_seeder','Order is created from the checkout page',NULL,8,NULL,'2022-04-19 08:19:54','2022-04-19 08:19:54'),(33,'confirm_order','Order was verified by %user_name%',0,8,NULL,'2022-04-19 08:19:54','2022-04-19 08:19:54'),(34,'confirm_payment','Payment was confirmed (amount $262.50) by %user_name%',0,8,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(35,'create_shipment','Created shipment for order',0,8,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(36,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,8,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(37,'create_order_from_seeder','Order is created from the checkout page',NULL,9,NULL,'2022-04-05 20:19:54','2022-04-05 20:19:54'),(38,'confirm_order','Order was verified by %user_name%',0,9,NULL,'2022-04-05 20:19:54','2022-04-05 20:19:54'),(39,'confirm_payment','Payment was confirmed (amount $262.50) by %user_name%',0,9,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(40,'create_shipment','Created shipment for order',0,9,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(41,'create_order_from_seeder','Order is created from the checkout page',NULL,10,NULL,'2022-04-16 14:19:54','2022-04-16 14:19:54'),(42,'confirm_order','Order was verified by %user_name%',0,10,NULL,'2022-04-16 14:19:54','2022-04-16 14:19:54'),(43,'create_shipment','Created shipment for order',0,10,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(44,'create_order_from_seeder','Order is created from the checkout page',NULL,11,NULL,'2022-04-10 22:19:54','2022-04-10 22:19:54'),(45,'confirm_order','Order was verified by %user_name%',0,11,NULL,'2022-04-10 22:19:54','2022-04-10 22:19:54'),(46,'confirm_payment','Payment was confirmed (amount $137.50) by %user_name%',0,11,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(47,'create_shipment','Created shipment for order',0,11,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(48,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,11,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(49,'create_order_from_seeder','Order is created from the checkout page',NULL,12,NULL,'2022-04-11 12:19:54','2022-04-11 12:19:54'),(50,'confirm_order','Order was verified by %user_name%',0,12,NULL,'2022-04-11 12:19:54','2022-04-11 12:19:54'),(51,'create_shipment','Created shipment for order',0,12,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(52,'create_order_from_seeder','Order is created from the checkout page',NULL,13,NULL,'2022-04-19 12:19:54','2022-04-19 12:19:54'),(53,'confirm_order','Order was verified by %user_name%',0,13,NULL,'2022-04-19 12:19:54','2022-04-19 12:19:54'),(54,'confirm_payment','Payment was confirmed (amount $583.80) by %user_name%',0,13,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(55,'create_shipment','Created shipment for order',0,13,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(56,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,13,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(57,'create_order_from_seeder','Order is created from the checkout page',NULL,14,NULL,'2022-04-19 12:19:54','2022-04-19 12:19:54'),(58,'confirm_order','Order was verified by %user_name%',0,14,NULL,'2022-04-19 12:19:54','2022-04-19 12:19:54'),(59,'confirm_payment','Payment was confirmed (amount $685.70) by %user_name%',0,14,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(60,'create_shipment','Created shipment for order',0,14,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(61,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,14,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(62,'create_order_from_seeder','Order is created from the checkout page',NULL,15,NULL,'2022-04-13 08:19:54','2022-04-13 08:19:54'),(63,'confirm_order','Order was verified by %user_name%',0,15,NULL,'2022-04-13 08:19:54','2022-04-13 08:19:54'),(64,'create_shipment','Created shipment for order',0,15,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(65,'create_order_from_seeder','Order is created from the checkout page',NULL,16,NULL,'2022-04-15 20:19:54','2022-04-15 20:19:54'),(66,'confirm_order','Order was verified by %user_name%',0,16,NULL,'2022-04-15 20:19:54','2022-04-15 20:19:54'),(67,'confirm_payment','Payment was confirmed (amount $372.00) by %user_name%',0,16,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(68,'create_shipment','Created shipment for order',0,16,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(69,'create_order_from_seeder','Order is created from the checkout page',NULL,17,NULL,'2022-04-19 14:19:54','2022-04-19 14:19:54'),(70,'confirm_order','Order was verified by %user_name%',0,17,NULL,'2022-04-19 14:19:54','2022-04-19 14:19:54'),(71,'confirm_payment','Payment was confirmed (amount $356.50) by %user_name%',0,17,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(72,'create_shipment','Created shipment for order',0,17,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(73,'create_order_from_seeder','Order is created from the checkout page',NULL,18,NULL,'2022-04-15 00:19:54','2022-04-15 00:19:54'),(74,'confirm_order','Order was verified by %user_name%',0,18,NULL,'2022-04-15 00:19:54','2022-04-15 00:19:54'),(75,'create_shipment','Created shipment for order',0,18,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(76,'create_order_from_seeder','Order is created from the checkout page',NULL,19,NULL,'2022-04-17 08:19:54','2022-04-17 08:19:54'),(77,'confirm_order','Order was verified by %user_name%',0,19,NULL,'2022-04-17 08:19:54','2022-04-17 08:19:54'),(78,'confirm_payment','Payment was confirmed (amount $341.00) by %user_name%',0,19,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(79,'create_shipment','Created shipment for order',0,19,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(80,'create_order_from_seeder','Order is created from the checkout page',NULL,20,NULL,'2022-04-10 08:19:54','2022-04-10 08:19:54'),(81,'confirm_order','Order was verified by %user_name%',0,20,NULL,'2022-04-10 08:19:54','2022-04-10 08:19:54'),(82,'confirm_payment','Payment was confirmed (amount $273.00) by %user_name%',0,20,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(83,'create_shipment','Created shipment for order',0,20,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(84,'create_order_from_seeder','Order is created from the checkout page',NULL,21,NULL,'2022-04-17 14:19:54','2022-04-17 14:19:54'),(85,'confirm_order','Order was verified by %user_name%',0,21,NULL,'2022-04-17 14:19:54','2022-04-17 14:19:54'),(86,'confirm_payment','Payment was confirmed (amount $520.60) by %user_name%',0,21,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(87,'create_shipment','Created shipment for order',0,21,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(88,'create_order_from_seeder','Order is created from the checkout page',NULL,22,NULL,'2022-04-14 08:19:54','2022-04-14 08:19:54'),(89,'confirm_order','Order was verified by %user_name%',0,22,NULL,'2022-04-14 08:19:54','2022-04-14 08:19:54'),(90,'confirm_payment','Payment was confirmed (amount $262.50) by %user_name%',0,22,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(91,'create_shipment','Created shipment for order',0,22,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(92,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,22,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(93,'create_order_from_seeder','Order is created from the checkout page',NULL,23,NULL,'2022-04-10 00:19:54','2022-04-10 00:19:54'),(94,'confirm_order','Order was verified by %user_name%',0,23,NULL,'2022-04-10 00:19:54','2022-04-10 00:19:54'),(95,'confirm_payment','Payment was confirmed (amount $356.50) by %user_name%',0,23,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(96,'create_shipment','Created shipment for order',0,23,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(97,'create_order_from_seeder','Order is created from the checkout page',NULL,24,NULL,'2022-04-14 20:19:54','2022-04-14 20:19:54'),(98,'confirm_order','Order was verified by %user_name%',0,24,NULL,'2022-04-14 20:19:54','2022-04-14 20:19:54'),(99,'create_shipment','Created shipment for order',0,24,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(100,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,24,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(101,'create_order_from_seeder','Order is created from the checkout page',NULL,25,NULL,'2022-04-13 20:19:54','2022-04-13 20:19:54'),(102,'confirm_order','Order was verified by %user_name%',0,25,NULL,'2022-04-13 20:19:54','2022-04-13 20:19:54'),(103,'confirm_payment','Payment was confirmed (amount $140.80) by %user_name%',0,25,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(104,'create_shipment','Created shipment for order',0,25,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(105,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,25,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(106,'create_order_from_seeder','Order is created from the checkout page',NULL,26,NULL,'2022-04-18 02:19:54','2022-04-18 02:19:54'),(107,'confirm_order','Order was verified by %user_name%',0,26,NULL,'2022-04-18 02:19:54','2022-04-18 02:19:54'),(108,'confirm_payment','Payment was confirmed (amount $79.20) by %user_name%',0,26,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(109,'create_shipment','Created shipment for order',0,26,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(110,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,26,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(111,'create_order_from_seeder','Order is created from the checkout page',NULL,27,NULL,'2022-04-19 22:19:54','2022-04-19 22:19:54'),(112,'confirm_order','Order was verified by %user_name%',0,27,NULL,'2022-04-19 22:19:54','2022-04-19 22:19:54'),(113,'confirm_payment','Payment was confirmed (amount $247.80) by %user_name%',0,27,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(114,'create_shipment','Created shipment for order',0,27,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(115,'create_order_from_seeder','Order is created from the checkout page',NULL,28,NULL,'2022-04-17 04:19:54','2022-04-17 04:19:54'),(116,'confirm_order','Order was verified by %user_name%',0,28,NULL,'2022-04-17 04:19:54','2022-04-17 04:19:54'),(117,'confirm_payment','Payment was confirmed (amount $126.50) by %user_name%',0,28,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(118,'create_shipment','Created shipment for order',0,28,NULL,'2022-04-20 20:19:55','2022-04-20 20:19:55'),(119,'create_order_from_seeder','Order is created from the checkout page',NULL,29,NULL,'2022-04-20 00:19:55','2022-04-20 00:19:55'),(120,'confirm_order','Order was verified by %user_name%',0,29,NULL,'2022-04-20 00:19:55','2022-04-20 00:19:55'),(121,'confirm_payment','Payment was confirmed (amount $130.90) by %user_name%',0,29,NULL,'2022-04-20 20:19:55','2022-04-20 20:19:55'),(122,'create_shipment','Created shipment for order',0,29,NULL,'2022-04-20 20:19:55','2022-04-20 20:19:55'),(123,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,29,NULL,'2022-04-20 20:19:55','2022-04-20 20:19:55'),(124,'create_order_from_seeder','Order is created from the checkout page',NULL,30,NULL,'2022-04-16 16:19:55','2022-04-16 16:19:55'),(125,'confirm_order','Order was verified by %user_name%',0,30,NULL,'2022-04-16 16:19:55','2022-04-16 16:19:55'),(126,'create_shipment','Created shipment for order',0,30,NULL,'2022-04-20 20:19:55','2022-04-20 20:19:55'),(127,'create_order_from_seeder','Order is created from the checkout page',NULL,31,NULL,'2022-04-17 20:19:55','2022-04-17 20:19:55'),(128,'confirm_order','Order was verified by %user_name%',0,31,NULL,'2022-04-17 20:19:55','2022-04-17 20:19:55'),(129,'confirm_payment','Payment was confirmed (amount $1,305.10) by %user_name%',0,31,NULL,'2022-04-20 20:19:55','2022-04-20 20:19:55'),(130,'create_shipment','Created shipment for order',0,31,NULL,'2022-04-20 20:19:55','2022-04-20 20:19:55'),(131,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,31,NULL,'2022-04-20 20:19:55','2022-04-20 20:19:55'),(132,'create_order_from_seeder','Order is created from the checkout page',NULL,32,NULL,'2022-04-16 08:19:55','2022-04-16 08:19:55'),(133,'confirm_order','Order was verified by %user_name%',0,32,NULL,'2022-04-16 08:19:55','2022-04-16 08:19:55'),(134,'confirm_payment','Payment was confirmed (amount $223.20) by %user_name%',0,32,NULL,'2022-04-20 20:19:55','2022-04-20 20:19:55'),(135,'create_shipment','Created shipment for order',0,32,NULL,'2022-04-20 20:19:55','2022-04-20 20:19:55'),(136,'create_order_from_seeder','Order is created from the checkout page',NULL,33,NULL,'2022-04-13 08:19:55','2022-04-13 08:19:55'),(137,'confirm_order','Order was verified by %user_name%',0,33,NULL,'2022-04-13 08:19:55','2022-04-13 08:19:55'),(138,'create_shipment','Created shipment for order',0,33,NULL,'2022-04-20 20:19:55','2022-04-20 20:19:55'),(139,'create_order_from_seeder','Order is created from the checkout page',NULL,34,NULL,'2022-04-18 20:19:55','2022-04-18 20:19:55'),(140,'confirm_order','Order was verified by %user_name%',0,34,NULL,'2022-04-18 20:19:55','2022-04-18 20:19:55'),(141,'confirm_payment','Payment was confirmed (amount $1,306.90) by %user_name%',0,34,NULL,'2022-04-20 20:19:55','2022-04-20 20:19:55'),(142,'create_shipment','Created shipment for order',0,34,NULL,'2022-04-20 20:19:55','2022-04-20 20:19:55'),(143,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,34,NULL,'2022-04-20 20:19:55','2022-04-20 20:19:55'),(144,'create_order_from_seeder','Order is created from the checkout page',NULL,35,NULL,'2022-04-15 12:19:56','2022-04-15 12:19:56'),(145,'confirm_order','Order was verified by %user_name%',0,35,NULL,'2022-04-15 12:19:56','2022-04-15 12:19:56'),(146,'create_shipment','Created shipment for order',0,35,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(147,'create_order_from_seeder','Order is created from the checkout page',NULL,36,NULL,'2022-04-20 06:19:56','2022-04-20 06:19:56'),(148,'confirm_order','Order was verified by %user_name%',0,36,NULL,'2022-04-20 06:19:56','2022-04-20 06:19:56'),(149,'confirm_payment','Payment was confirmed (amount $151.20) by %user_name%',0,36,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(150,'create_shipment','Created shipment for order',0,36,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(151,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,36,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(152,'create_order_from_seeder','Order is created from the checkout page',NULL,37,NULL,'2022-04-17 22:19:56','2022-04-17 22:19:56'),(153,'confirm_order','Order was verified by %user_name%',0,37,NULL,'2022-04-17 22:19:56','2022-04-17 22:19:56'),(154,'confirm_payment','Payment was confirmed (amount $465.30) by %user_name%',0,37,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(155,'create_shipment','Created shipment for order',0,37,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(156,'create_order_from_seeder','Order is created from the checkout page',NULL,38,NULL,'2022-04-16 18:19:56','2022-04-16 18:19:56'),(157,'confirm_order','Order was verified by %user_name%',0,38,NULL,'2022-04-16 18:19:56','2022-04-16 18:19:56'),(158,'confirm_payment','Payment was confirmed (amount $130.90) by %user_name%',0,38,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(159,'create_shipment','Created shipment for order',0,38,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(160,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,38,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(161,'create_order_from_seeder','Order is created from the checkout page',NULL,39,NULL,'2022-04-15 20:19:56','2022-04-15 20:19:56'),(162,'confirm_order','Order was verified by %user_name%',0,39,NULL,'2022-04-15 20:19:56','2022-04-15 20:19:56'),(163,'confirm_payment','Payment was confirmed (amount $691.30) by %user_name%',0,39,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(164,'create_shipment','Created shipment for order',0,39,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(165,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,39,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(166,'create_order_from_seeder','Order is created from the checkout page',NULL,40,NULL,'2022-04-17 08:19:56','2022-04-17 08:19:56'),(167,'confirm_order','Order was verified by %user_name%',0,40,NULL,'2022-04-17 08:19:56','2022-04-17 08:19:56'),(168,'create_shipment','Created shipment for order',0,40,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(169,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,40,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(170,'create_order_from_seeder','Order is created from the checkout page',NULL,41,NULL,'2022-04-19 20:19:56','2022-04-19 20:19:56'),(171,'confirm_order','Order was verified by %user_name%',0,41,NULL,'2022-04-19 20:19:56','2022-04-19 20:19:56'),(172,'create_shipment','Created shipment for order',0,41,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(173,'create_order_from_seeder','Order is created from the checkout page',NULL,42,NULL,'2022-04-18 08:19:56','2022-04-18 08:19:56'),(174,'confirm_order','Order was verified by %user_name%',0,42,NULL,'2022-04-18 08:19:56','2022-04-18 08:19:56'),(175,'confirm_payment','Payment was confirmed (amount $223.20) by %user_name%',0,42,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(176,'create_shipment','Created shipment for order',0,42,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(177,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,42,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(178,'create_order_from_seeder','Order is created from the checkout page',NULL,43,NULL,'2022-04-17 12:19:56','2022-04-17 12:19:56'),(179,'confirm_order','Order was verified by %user_name%',0,43,NULL,'2022-04-17 12:19:56','2022-04-17 12:19:56'),(180,'create_shipment','Created shipment for order',0,43,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(181,'create_order_from_seeder','Order is created from the checkout page',NULL,44,NULL,'2022-04-17 20:19:56','2022-04-17 20:19:56'),(182,'confirm_order','Order was verified by %user_name%',0,44,NULL,'2022-04-17 20:19:56','2022-04-17 20:19:56'),(183,'confirm_payment','Payment was confirmed (amount $223.20) by %user_name%',0,44,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(184,'create_shipment','Created shipment for order',0,44,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(185,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,44,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(186,'create_order_from_seeder','Order is created from the checkout page',NULL,45,NULL,'2022-04-17 20:19:56','2022-04-17 20:19:56'),(187,'confirm_order','Order was verified by %user_name%',0,45,NULL,'2022-04-17 20:19:56','2022-04-17 20:19:56'),(188,'confirm_payment','Payment was confirmed (amount $132.00) by %user_name%',0,45,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(189,'create_shipment','Created shipment for order',0,45,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(190,'create_order_from_seeder','Order is created from the checkout page',NULL,46,NULL,'2022-04-20 04:19:56','2022-04-20 04:19:56'),(191,'confirm_order','Order was verified by %user_name%',0,46,NULL,'2022-04-20 04:19:56','2022-04-20 04:19:56'),(192,'create_shipment','Created shipment for order',0,46,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(193,'create_order_from_seeder','Order is created from the checkout page',NULL,47,NULL,'2022-04-18 08:19:56','2022-04-18 08:19:56'),(194,'confirm_order','Order was verified by %user_name%',0,47,NULL,'2022-04-18 08:19:56','2022-04-18 08:19:56'),(195,'confirm_payment','Payment was confirmed (amount $223.20) by %user_name%',0,47,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(196,'create_shipment','Created shipment for order',0,47,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(197,'create_order_from_seeder','Order is created from the checkout page',NULL,48,NULL,'2022-04-19 14:19:56','2022-04-19 14:19:56'),(198,'confirm_order','Order was verified by %user_name%',0,48,NULL,'2022-04-19 14:19:56','2022-04-19 14:19:56'),(199,'confirm_payment','Payment was confirmed (amount $676.90) by %user_name%',0,48,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(200,'create_shipment','Created shipment for order',0,48,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(201,'create_order_from_seeder','Order is created from the checkout page',NULL,49,NULL,'2022-04-20 00:19:56','2022-04-20 00:19:56'),(202,'confirm_order','Order was verified by %user_name%',0,49,NULL,'2022-04-20 00:19:56','2022-04-20 00:19:56'),(203,'confirm_payment','Payment was confirmed (amount $245.30) by %user_name%',0,49,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(204,'create_shipment','Created shipment for order',0,49,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(205,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,49,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(206,'create_order_from_seeder','Order is created from the checkout page',NULL,50,NULL,'2022-04-20 10:19:56','2022-04-20 10:19:56'),(207,'confirm_order','Order was verified by %user_name%',0,50,NULL,'2022-04-20 10:19:56','2022-04-20 10:19:56'),(208,'confirm_payment','Payment was confirmed (amount $962.80) by %user_name%',0,50,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(209,'create_shipment','Created shipment for order',0,50,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(210,'update_status','Order confirmed by %user_name%',0,1,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(211,'update_status','Order confirmed by %user_name%',0,4,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(212,'update_status','Order confirmed by %user_name%',0,6,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(213,'update_status','Order confirmed by %user_name%',0,7,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(214,'update_status','Order confirmed by %user_name%',0,8,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(215,'update_status','Order confirmed by %user_name%',0,11,NULL,'2022-04-20 20:19:57','2022-04-20 20:19:57'),(216,'update_status','Order confirmed by %user_name%',0,13,NULL,'2022-04-20 20:19:57','2022-04-20 20:19:57'),(217,'update_status','Order confirmed by %user_name%',0,14,NULL,'2022-04-20 20:19:57','2022-04-20 20:19:57'),(218,'update_status','Order confirmed by %user_name%',0,22,NULL,'2022-04-20 20:19:57','2022-04-20 20:19:57'),(219,'update_status','Order confirmed by %user_name%',0,25,NULL,'2022-04-20 20:19:57','2022-04-20 20:19:57'),(220,'update_status','Order confirmed by %user_name%',0,26,NULL,'2022-04-20 20:19:57','2022-04-20 20:19:57'),(221,'update_status','Order confirmed by %user_name%',0,29,NULL,'2022-04-20 20:19:57','2022-04-20 20:19:57'),(222,'update_status','Order confirmed by %user_name%',0,31,NULL,'2022-04-20 20:19:58','2022-04-20 20:19:58'),(223,'update_status','Order confirmed by %user_name%',0,34,NULL,'2022-04-20 20:19:58','2022-04-20 20:19:58'),(224,'update_status','Order confirmed by %user_name%',0,36,NULL,'2022-04-20 20:19:58','2022-04-20 20:19:58'),(225,'update_status','Order confirmed by %user_name%',0,38,NULL,'2022-04-20 20:19:58','2022-04-20 20:19:58'),(226,'update_status','Order confirmed by %user_name%',0,39,NULL,'2022-04-20 20:19:58','2022-04-20 20:19:58'),(227,'update_status','Order confirmed by %user_name%',0,42,NULL,'2022-04-20 20:19:58','2022-04-20 20:19:58'),(228,'update_status','Order confirmed by %user_name%',0,44,NULL,'2022-04-20 20:19:58','2022-04-20 20:19:58'),(229,'update_status','Order confirmed by %user_name%',0,49,NULL,'2022-04-20 20:19:59','2022-04-20 20:19:59');
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `product_id` int unsigned DEFAULT NULL,
  `product_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,3,461.00,46.10,'[]',29,'All Natural Italian-Style Chicken Meatballs',2169.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(2,1,3,119.00,11.90,'[]',71,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',2646.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(3,2,1,54.00,5.40,'[]',40,'Chobani Complete Vanilla Greek',676.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(4,3,1,115.00,11.50,'[]',90,'Signature Wood-Fired Mushroom and Caramelized',645.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(5,4,1,54.00,5.40,'[]',41,'Chobani Complete Vanilla Greek',676.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(6,4,2,54.00,5.40,'[]',42,'Chobani Complete Vanilla Greek',1352.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(7,5,3,123.00,12.30,'[]',78,'Perdue Simply Smart Organics Gluten Free',2508.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(8,6,2,113.00,11.30,'[]',81,'Organic Cage-Free Grade A Large Brown Eggs',1688.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(9,7,3,118.00,11.80,'[]',58,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',1785.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(10,8,2,125.00,12.50,'[]',63,'Organic Frozen Triple Berry Blend',1044.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(11,9,2,125.00,12.50,'[]',76,'Simply Lemonade with Raspberry Juice',1402.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(12,10,2,125.00,12.50,'[]',46,'Encore Seafoods Stuffed Alaskan',1396.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(13,10,3,115.00,11.50,'[]',68,'Oroweat Country Buttermilk Bread',2466.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(14,11,1,125.00,12.50,'[]',62,'Organic Frozen Triple Berry Blend',522.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(15,12,3,461.00,46.10,'[]',29,'All Natural Italian-Style Chicken Meatballs',2169.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(16,13,2,278.00,27.80,'[]',32,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',1156.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(17,14,1,379.00,37.90,'[]',52,'Haagen-Dazs Caramel Cone Ice Cream',726.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(18,14,2,128.00,12.80,'[]',79,'Chen Watermelon',1520.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(19,15,2,278.00,27.80,'[]',34,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',1156.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(20,16,3,120.00,12.00,'[]',50,'Gorton’s Beer Battered Fish Fillets',1566.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(21,17,3,115.00,11.50,'[]',67,'Oroweat Country Buttermilk Bread',2466.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(22,18,3,119.00,11.90,'[]',44,'Canada Dry Ginger Ale – 2 L Bottle',1518.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(23,19,3,110.00,11.00,'[]',55,'Nestle Original Coffee-Mate Coffee Creamer',2406.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(24,20,2,130.00,13.00,'[]',83,'Colorful Banana',1038.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(25,21,1,121.00,12.10,'[]',59,'Pepperidge Farm Farmhouse Hearty White Bread',722.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(26,21,3,125.00,12.50,'[]',62,'Organic Frozen Triple Berry Blend',1566.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(27,22,2,125.00,12.50,'[]',77,'Simply Lemonade with Raspberry Juice',1402.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(28,23,3,115.00,11.50,'[]',90,'Signature Wood-Fired Mushroom and Caramelized',1935.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(29,24,1,125.00,12.50,'[]',49,'Encore Seafoods Stuffed Alaskan',698.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(30,25,1,128.00,12.80,'[]',79,'Chen Watermelon',760.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(31,26,1,72.00,7.20,'[]',36,'Foster Farms Takeout Crispy Classic',771.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(32,27,2,118.00,11.80,'[]',56,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',1190.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(33,28,1,115.00,11.50,'[]',90,'Signature Wood-Fired Mushroom and Caramelized',645.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(34,29,1,119.00,11.90,'[]',72,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',882.00,0,'2022-04-20 20:19:55','2022-04-20 20:19:55'),(35,30,3,115.00,11.50,'[]',88,'Signature Wood-Fired Mushroom and Caramelized',1935.00,0,'2022-04-20 20:19:55','2022-04-20 20:19:55'),(36,31,3,421.00,42.10,'[]',26,'Seeds of Change Organic Quinoe',1899.00,0,'2022-04-20 20:19:55','2022-04-20 20:19:55'),(37,32,3,72.00,7.20,'[]',36,'Foster Farms Takeout Crispy Classic',2313.00,0,'2022-04-20 20:19:55','2022-04-20 20:19:55'),(38,33,3,115.00,11.50,'[]',68,'Oroweat Country Buttermilk Bread',2466.00,0,'2022-04-20 20:19:55','2022-04-20 20:19:55'),(39,34,1,120.00,12.00,'[]',50,'Gorton’s Beer Battered Fish Fillets',522.00,0,'2022-04-20 20:19:55','2022-04-20 20:19:55'),(40,34,3,379.00,37.90,'[]',52,'Haagen-Dazs Caramel Cone Ice Cream',2178.00,0,'2022-04-20 20:19:55','2022-04-20 20:19:55'),(41,35,2,125.00,12.50,'[]',75,'Simply Lemonade with Raspberry Juice',1402.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(42,36,2,72.00,7.20,'[]',37,'Foster Farms Takeout Crispy Classic',1542.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(43,37,3,110.00,11.00,'[]',54,'Nestle Original Coffee-Mate Coffee Creamer',2406.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(44,37,1,113.00,11.30,'[]',81,'Organic Cage-Free Grade A Large Brown Eggs',844.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(45,38,1,119.00,11.90,'[]',72,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',882.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(46,39,3,110.00,11.00,'[]',55,'Nestle Original Coffee-Mate Coffee Creamer',2406.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(47,39,3,113.00,11.30,'[]',82,'Organic Cage-Free Grade A Large Brown Eggs',2532.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(48,40,2,125.00,12.50,'[]',75,'Simply Lemonade with Raspberry Juice',1402.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(49,41,2,115.00,11.50,'[]',88,'Signature Wood-Fired Mushroom and Caramelized',1290.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(50,42,3,72.00,7.20,'[]',38,'Foster Farms Takeout Crispy Classic',2313.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(51,43,3,118.00,11.80,'[]',58,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',1785.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(52,44,3,72.00,7.20,'[]',37,'Foster Farms Takeout Crispy Classic',2313.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(53,45,1,120.00,12.00,'[]',51,'Gorton’s Beer Battered Fish Fillets',522.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(54,46,1,119.00,11.90,'[]',71,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',882.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(55,47,3,72.00,7.20,'[]',38,'Foster Farms Takeout Crispy Classic',2313.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(56,48,1,119.00,11.90,'[]',72,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',882.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(57,48,3,130.00,13.00,'[]',83,'Colorful Banana',1557.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(58,48,1,130.00,13.00,'[]',85,'Colorful Banana',519.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(59,49,1,110.00,11.00,'[]',55,'Nestle Original Coffee-Mate Coffee Creamer',802.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(60,49,1,113.00,11.30,'[]',82,'Organic Cage-Free Grade A Large Brown Eggs',844.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(61,50,1,278.00,27.80,'[]',34,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',578.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(62,50,1,120.00,12.00,'[]',74,'All Natural Italian-Style Chicken Meatballs',715.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(63,50,2,125.00,12.50,'[]',75,'Simply Lemonade with Raspberry Juice',1402.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(64,50,2,125.00,12.50,'[]',76,'Simply Lemonade with Raspberry Juice',1402.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56');
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `shipping_option` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '1',
  `token` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,7,'1','default','completed',1798.00,58.00,0.00,NULL,NULL,0.00,1740.00,1,NULL,1,'Aq1DE8qpw7pWPIyXLIaBEmzhFti6o',1,'2022-04-05 20:19:54','2022-04-20 20:19:54',3),(2,7,'1','default','pending',59.40,5.40,0.00,NULL,NULL,0.00,54.00,1,NULL,1,'JAPT18D9HAOotcGRyUZ052pqovY3y',2,'2022-04-19 04:19:54','2022-04-20 20:19:54',4),(3,7,'1','default','pending',126.50,11.50,0.00,NULL,NULL,0.00,115.00,1,NULL,1,'cfkV31cNJz9RHuXuW5JVdrH4FWkna',3,'2022-04-15 20:19:54','2022-04-20 20:19:54',2),(4,4,'1','default','completed',172.80,10.80,0.00,NULL,NULL,0.00,162.00,1,NULL,1,'u7dIje1cilBtljkttR8EHU1Imvb09',4,'2022-04-11 08:19:54','2022-04-20 20:19:54',4),(5,4,'1','default','pending',381.30,12.30,0.00,NULL,NULL,0.00,369.00,1,NULL,1,'yA2eLBLRUDwOmsWSqaBJV77EbeX2u',5,'2022-04-08 04:19:54','2022-04-20 20:19:54',3),(6,4,'1','default','completed',237.30,11.30,0.00,NULL,NULL,0.00,226.00,1,NULL,1,'SrqKQO0TEPiBt53WqAxnZx2GFSpy7',6,'2022-04-16 02:19:54','2022-04-20 20:19:54',5),(7,3,'1','default','completed',365.80,11.80,0.00,NULL,NULL,0.00,354.00,1,NULL,1,'0dHGZA6KIzw2v5ydaHmHUcazsiwHc',7,'2022-04-17 20:19:54','2022-04-20 20:19:54',1),(8,3,'1','default','completed',262.50,12.50,0.00,NULL,NULL,0.00,250.00,1,NULL,1,'bINFJhbUTNZ3IkQB4Dz5R5HXZmbQk',8,'2022-04-19 08:19:54','2022-04-20 20:19:54',5),(9,3,'1','default','pending',262.50,12.50,0.00,NULL,NULL,0.00,250.00,1,NULL,1,'mVryBC9uV0cIAxaWlci3rKfkkYDKO',9,'2022-04-05 20:19:54','2022-04-20 20:19:54',4),(10,7,'1','default','pending',619.00,24.00,0.00,NULL,NULL,0.00,595.00,1,NULL,1,'f9BHY9qLR0JUACLVk668eICf7V1ih',10,'2022-04-16 14:19:54','2022-04-20 20:19:54',3),(11,7,'1','default','completed',137.50,12.50,0.00,NULL,NULL,0.00,125.00,1,NULL,1,'zvlDxoPLTJnnFwJRRPTGVrbPU4rQE',11,'2022-04-10 22:19:54','2022-04-20 20:19:54',5),(12,8,'1','default','pending',1429.10,46.10,0.00,NULL,NULL,0.00,1383.00,1,NULL,1,'Ku0qvs4iLz62xGkz1xhmIsXL73rm7',12,'2022-04-11 12:19:54','2022-04-20 20:19:54',3),(13,8,'1','default','completed',583.80,27.80,0.00,NULL,NULL,0.00,556.00,1,NULL,1,'w25Rem1n2qeJwxcbc6qDdfZwnWUSR',13,'2022-04-19 12:19:54','2022-04-20 20:19:54',4),(14,8,'1','default','completed',685.70,50.70,0.00,NULL,NULL,0.00,635.00,1,NULL,1,'F1NEdXAX8ciu7RjvISmpjrG8J8DTw',14,'2022-04-19 12:19:54','2022-04-20 20:19:54',1),(15,4,'1','default','pending',583.80,27.80,0.00,NULL,NULL,0.00,556.00,1,NULL,1,'FWQjtKNVIwsbOyAdoIq5T66YMHtph',15,'2022-04-13 08:19:54','2022-04-20 20:19:54',4),(16,4,'1','default','pending',372.00,12.00,0.00,NULL,NULL,0.00,360.00,1,NULL,1,'ii6dxcbSxWUkREaU16pSiebYAppRq',16,'2022-04-15 20:19:54','2022-04-20 20:19:54',1),(17,4,'1','default','pending',356.50,11.50,0.00,NULL,NULL,0.00,345.00,1,NULL,1,'V3JtVxKCWLCEGTdzO6GN6PCeIunI6',17,'2022-04-19 14:19:54','2022-04-20 20:19:54',3),(18,3,'1','default','pending',368.90,11.90,0.00,NULL,NULL,0.00,357.00,1,NULL,1,'HSFwfRIpZVpQbHYYCR7TCTVlQRQsK',18,'2022-04-15 00:19:54','2022-04-20 20:19:54',1),(19,3,'1','default','pending',341.00,11.00,0.00,NULL,NULL,0.00,330.00,1,NULL,1,'7Ax0bPAzmAtS8zsfkBQGTcI7VWO1g',19,'2022-04-17 08:19:54','2022-04-20 20:19:54',5),(20,3,'1','default','pending',273.00,13.00,0.00,NULL,NULL,0.00,260.00,1,NULL,1,'T9EOJKg79efsyrLiL7CWKW0gSXKFL',20,'2022-04-10 08:19:54','2022-04-20 20:19:54',3),(21,1,'1','default','pending',520.60,24.60,0.00,NULL,NULL,0.00,496.00,1,NULL,1,'DFsVd1eyyynaWqdrTefw76Bs8cjkG',21,'2022-04-17 14:19:54','2022-04-20 20:19:54',5),(22,1,'1','default','completed',262.50,12.50,0.00,NULL,NULL,0.00,250.00,1,NULL,1,'5YWXF8rgAmwXK2n4fjGa9sTFrnJpj',22,'2022-04-14 08:19:54','2022-04-20 20:19:54',4),(23,1,'1','default','pending',356.50,11.50,0.00,NULL,NULL,0.00,345.00,1,NULL,1,'NKQ5y9RYkTDthXmT1qLgXUCrRUapG',23,'2022-04-10 00:19:54','2022-04-20 20:19:54',2),(24,4,'1','default','completed',137.50,12.50,0.00,NULL,NULL,0.00,125.00,1,NULL,1,'MnB2XsWnefNram5rBIgtuBOa8iXU9',24,'2022-04-14 20:19:54','2022-04-20 20:19:54',3),(25,4,'1','default','completed',140.80,12.80,0.00,NULL,NULL,0.00,128.00,1,NULL,1,'qOCkAQQ7E0MSuOC4awTJR3KV7sQnc',25,'2022-04-13 20:19:54','2022-04-20 20:19:54',1),(26,8,'1','default','completed',79.20,7.20,0.00,NULL,NULL,0.00,72.00,1,NULL,1,'IvZ67wffEefk18ShWkIYt0V3CZGfN',26,'2022-04-18 02:19:54','2022-04-20 20:19:54',4),(27,8,'1','default','pending',247.80,11.80,0.00,NULL,NULL,0.00,236.00,1,NULL,1,'otJjvnrLzsNAv7UHTmm1uKinmRPc3',27,'2022-04-19 22:19:54','2022-04-20 20:19:54',1),(28,8,'1','default','pending',126.50,11.50,0.00,NULL,NULL,0.00,115.00,1,NULL,1,'jinH2fTJI7YOv5fdgzeEaXKEXVitC',28,'2022-04-17 04:19:54','2022-04-20 20:19:54',2),(29,7,'1','default','completed',130.90,11.90,0.00,NULL,NULL,0.00,119.00,1,NULL,1,'luto6785VVgPj7XfXYGv3HsLvXq0P',29,'2022-04-20 00:19:55','2022-04-20 20:19:55',3),(30,7,'1','default','pending',356.50,11.50,0.00,NULL,NULL,0.00,345.00,1,NULL,1,'mAEvQQ2eIednqvwmgGPaDV8PoLcTT',30,'2022-04-16 16:19:55','2022-04-20 20:19:55',2),(31,4,'1','default','completed',1305.10,42.10,0.00,NULL,NULL,0.00,1263.00,1,NULL,1,'40cRo9MXXUgKARBxYZA9i6NGeleZz',31,'2022-04-17 20:19:55','2022-04-20 20:19:55',5),(32,4,'1','default','pending',223.20,7.20,0.00,NULL,NULL,0.00,216.00,1,NULL,1,'tXrS4EZvSRb9E2KEtgSd2oloCVbFd',32,'2022-04-16 08:19:55','2022-04-20 20:19:55',4),(33,4,'1','default','pending',356.50,11.50,0.00,NULL,NULL,0.00,345.00,1,NULL,1,'GNNYiTaQfqHKpTB3t59eCXTpHCU7Z',33,'2022-04-13 08:19:55','2022-04-20 20:19:55',3),(34,3,'1','default','completed',1306.90,49.90,0.00,NULL,NULL,0.00,1257.00,1,NULL,1,'bAksB1xulOm3LIjBqyyItGSkrKDfM',34,'2022-04-18 20:19:55','2022-04-20 20:19:55',1),(35,3,'1','default','pending',262.50,12.50,0.00,NULL,NULL,0.00,250.00,1,NULL,1,'2VvG5SYxTJX8htBPVfyHsOz2PY0aj',35,'2022-04-15 12:19:56','2022-04-20 20:19:56',4),(36,7,'1','default','completed',151.20,7.20,0.00,NULL,NULL,0.00,144.00,1,NULL,1,'tPEIxHGrxcPrF9TvYxwIdHWIe5478',36,'2022-04-20 06:19:56','2022-04-20 20:19:56',4),(37,7,'1','default','pending',465.30,22.30,0.00,NULL,NULL,0.00,443.00,1,NULL,1,'vDwyS06zgCgHqTbCrmhDLFNWnm3yY',37,'2022-04-17 22:19:56','2022-04-20 20:19:56',5),(38,7,'1','default','completed',130.90,11.90,0.00,NULL,NULL,0.00,119.00,1,NULL,1,'DMAqM8gD6qwbvNiVF22QbnpHUyLVK',38,'2022-04-16 18:19:56','2022-04-20 20:19:56',3),(39,8,'1','default','completed',691.30,22.30,0.00,NULL,NULL,0.00,669.00,1,NULL,1,'AR4FMCPWsq50aMJgxZNSiyKyxgkRk',39,'2022-04-15 20:19:56','2022-04-20 20:19:56',5),(40,8,'1','default','completed',262.50,12.50,0.00,NULL,NULL,0.00,250.00,1,NULL,1,'OT6aRhKBZr6AdgeVQfK5lXTWv123B',40,'2022-04-17 08:19:56','2022-04-20 20:19:56',4),(41,8,'1','default','pending',241.50,11.50,0.00,NULL,NULL,0.00,230.00,1,NULL,1,'ejFB381sJJGNZUY0jNlVKGpUN3ND4',41,'2022-04-19 20:19:56','2022-04-20 20:19:56',2),(42,7,'1','default','completed',223.20,7.20,0.00,NULL,NULL,0.00,216.00,1,NULL,1,'ArMuznusP99vjk6reeur5GgKrBxxt',42,'2022-04-18 08:19:56','2022-04-20 20:19:56',4),(43,7,'1','default','pending',365.80,11.80,0.00,NULL,NULL,0.00,354.00,1,NULL,1,'yTZX9UmtgIlZRicxN2iryOBdZOUJI',43,'2022-04-17 12:19:56','2022-04-20 20:19:56',1),(44,8,'1','default','completed',223.20,7.20,0.00,NULL,NULL,0.00,216.00,1,NULL,1,'4P9pK1BumQEOKhqKYIyFFodjn3Pzu',44,'2022-04-17 20:19:56','2022-04-20 20:19:56',4),(45,8,'1','default','pending',132.00,12.00,0.00,NULL,NULL,0.00,120.00,1,NULL,1,'AOsQJF8g9SKoWlGZoGHXROjRghyOw',45,'2022-04-17 20:19:56','2022-04-20 20:19:56',1),(46,8,'1','default','pending',130.90,11.90,0.00,NULL,NULL,0.00,119.00,1,NULL,1,'DIPWda6pudx0AxK7rkV4PeCTE63tT',46,'2022-04-20 04:19:56','2022-04-20 20:19:56',3),(47,1,'1','default','pending',223.20,7.20,0.00,NULL,NULL,0.00,216.00,1,NULL,1,'pYJpwcqowXDvydXPzYmLaKm8isEs3',47,'2022-04-18 08:19:56','2022-04-20 20:19:56',4),(48,1,'1','default','pending',676.90,37.90,0.00,NULL,NULL,0.00,639.00,1,NULL,1,'D00xwHmAZi2izF54E6Evd5vElVFNa',48,'2022-04-19 14:19:56','2022-04-20 20:19:56',3),(49,4,'1','default','completed',245.30,22.30,0.00,NULL,NULL,0.00,223.00,1,NULL,1,'NHV0SdViBWdQQjEuHYpOttC0ge6E4',49,'2022-04-20 00:19:56','2022-04-20 20:19:56',5),(50,3,'1','default','pending',962.80,64.80,0.00,NULL,NULL,0.00,898.00,1,NULL,1,'WqyqY2jawUv0Yt25SLkYWuL3DPJOl',50,'2022-04-20 10:19:56','2022-04-20 20:19:56',4);
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Weight','weight','text',1,1,1,'published',0,'2022-04-20 20:19:53','2022-04-20 20:19:53',0),(2,'Boxes','boxes','text',1,1,1,'published',1,'2022-04-20 20:19:53','2022-04-20 20:19:53',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` int NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets_translations` VALUES ('vi',1,'Cân nặng'),('vi',2,'Số hộp');
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int unsigned NOT NULL,
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'1KG','1kg',NULL,NULL,1,1,'published','2022-04-20 20:19:53','2022-04-20 20:19:53'),(2,1,'2KG','2kg',NULL,NULL,0,2,'published','2022-04-20 20:19:53','2022-04-20 20:19:53'),(3,1,'3KG','3kg',NULL,NULL,0,3,'published','2022-04-20 20:19:53','2022-04-20 20:19:53'),(4,1,'4KG','4kg',NULL,NULL,0,4,'published','2022-04-20 20:19:53','2022-04-20 20:19:53'),(5,1,'5KG','5kg',NULL,NULL,0,5,'published','2022-04-20 20:19:53','2022-04-20 20:19:53'),(6,2,'1 Box','1box',NULL,NULL,1,1,'published','2022-04-20 20:19:53','2022-04-20 20:19:53'),(7,2,'2 Boxes','2boxes',NULL,NULL,0,2,'published','2022-04-20 20:19:53','2022-04-20 20:19:53'),(8,2,'3 Boxes','3boxes',NULL,NULL,0,3,'published','2022-04-20 20:19:53','2022-04-20 20:19:53'),(9,2,'4 Boxes','4boxes',NULL,NULL,0,4,'published','2022-04-20 20:19:53','2022-04-20 20:19:53'),(10,2,'5 Boxes','5boxes',NULL,NULL,0,5,'published','2022-04-20 20:19:53','2022-04-20 20:19:53');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` int NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attributes_translations` VALUES ('vi',1,'1KG'),('vi',2,'2KG'),('vi',3,'3KG'),('vi',4,'4KG'),('vi',5,'5KG'),('vi',6,'1 Hộp'),('vi',7,'2 Hộp'),('vi',8,'3 Hộp'),('vi',9,'4 Hộp'),('vi',10,'5 Hộp');
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Milks and Dairies',0,NULL,'published',0,'product-categories/image-1.png',1,'2022-03-16 02:40:48','2022-03-16 02:40:48'),(2,'Clothing & beauty',0,NULL,'published',1,'product-categories/image-2.png',1,'2022-03-16 02:40:48','2022-03-16 02:40:48'),(3,'Pet Toy',0,NULL,'published',2,'product-categories/image-3.png',1,'2022-03-16 02:40:48','2022-03-16 02:40:48'),(4,'Baking material',0,NULL,'published',3,'product-categories/image-4.png',1,'2022-03-16 02:40:48','2022-03-16 02:40:48'),(5,'Fresh Fruit',0,NULL,'published',4,'product-categories/image-5.png',1,'2022-03-16 02:40:48','2022-03-16 02:40:48'),(6,'Wines & Drinks',0,NULL,'published',5,'product-categories/image-6.png',1,'2022-03-16 02:40:48','2022-03-16 02:40:48'),(7,'Fresh Seafood',0,NULL,'published',6,'product-categories/image-7.png',1,'2022-03-16 02:40:48','2022-03-16 02:40:48'),(8,'Fast food',0,NULL,'published',7,'product-categories/image-8.png',1,'2022-03-16 02:40:48','2022-03-16 02:40:48'),(9,'Vegetables',0,NULL,'published',8,'product-categories/image-9.png',1,'2022-03-16 02:40:48','2022-03-16 02:40:48'),(10,'Bread and Juice',0,NULL,'published',9,'product-categories/image-10.png',1,'2022-03-16 02:40:48','2022-03-16 02:40:48'),(11,'Cake & Milk',0,NULL,'published',10,'product-categories/image-11.png',1,'2022-03-16 02:40:48','2022-03-16 02:40:48'),(12,'Coffee & Teas',0,NULL,'published',11,'product-categories/image-12.png',1,'2022-03-16 02:40:48','2022-03-16 02:40:48'),(13,'Pet Foods',0,NULL,'published',12,'product-categories/image-13.png',0,'2022-03-16 02:40:48','2022-03-16 02:40:48'),(14,'Diet Foods',0,NULL,'published',13,'product-categories/image-14.png',0,'2022-03-16 02:40:48','2022-03-16 02:40:48');
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
INSERT INTO `ec_product_categories_translations` VALUES ('vi',1,'Sữa',NULL),('vi',2,'Quần áo và làm đẹp',NULL),('vi',3,'Đồ chơi thú cưng',NULL),('vi',4,'Nguyên liệu làm bánh',NULL),('vi',5,'Trái cây tươi',NULL),('vi',6,'Rượu & Đồ uống',NULL),('vi',7,'Hải sản tươi sống',NULL),('vi',8,'Đồ ăn nhanh',NULL),('vi',9,'Rau',NULL),('vi',10,'Bánh và đồ uống',NULL),('vi',11,'Bánh và sữa',NULL),('vi',12,'Cà phê và trà',NULL),('vi',13,'Đồ ăn thú nuôi',NULL),('vi',14,'Đồ ăn kiêng',NULL);
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,8,1),(2,9,2),(3,12,3),(4,3,4),(5,10,5),(6,8,6),(7,14,7),(8,12,8),(9,11,9),(10,13,10),(11,8,11),(12,12,12),(13,7,13),(14,2,14),(15,3,15),(16,7,16),(17,5,17),(18,9,18),(19,5,19),(20,13,20),(21,6,21),(22,4,22),(23,3,23),(24,12,24);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_collection_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,2,1),(2,3,2),(3,3,3),(4,2,4),(5,2,5),(6,2,6),(7,3,7),(8,1,8),(9,1,9),(10,3,10),(11,3,11),(12,2,12),(13,2,13),(14,1,14),(15,3,15),(16,2,16),(17,1,17),(18,3,18),(19,3,19),(20,3,20),(21,1,21),(22,2,22),(23,3,23),(24,3,24);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2022-03-16 02:40:48','2022-03-16 02:40:48',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2022-03-16 02:40:48','2022-03-16 02:40:48',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2022-03-16 02:40:48','2022-03-16 02:40:48',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
INSERT INTO `ec_product_collections_translations` VALUES ('vi',1,'Hàng mới về',NULL),('vi',2,'Bán chạy nhất',NULL),('vi',3,'Khuyến mãi đặc biệt',NULL);
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,1,22),(2,1,10),(3,1,19),(4,2,7),(5,2,11),(6,2,3),(7,2,16),(8,3,17),(9,3,10),(10,3,24),(11,3,12),(12,4,10),(13,4,21),(14,4,15),(15,5,4),(16,5,8),(17,5,18),(18,5,14),(19,6,2),(20,6,12),(21,6,20),(22,6,24),(23,7,10),(24,7,14),(25,7,12),(26,7,15),(27,8,6),(28,8,1),(29,8,17),(30,8,9),(31,9,10),(32,9,13),(33,9,24),(34,9,5),(35,10,8),(36,10,6),(37,10,11),(38,10,23),(39,11,19),(40,11,21),(41,11,15),(42,12,24),(43,12,19),(44,12,14),(45,13,11),(46,13,12),(47,13,9),(48,13,14),(49,14,9),(50,14,17),(51,14,16),(52,15,13),(53,15,22),(54,15,3),(55,16,15),(56,16,11),(57,16,18),(58,16,2),(59,17,14),(60,17,21),(61,17,12),(62,18,12),(63,18,16),(64,18,3),(65,18,21),(66,19,21),(67,19,16),(68,19,6),(69,20,23),(70,20,3),(71,20,24),(72,21,12),(73,21,22),(74,21,19),(75,21,4),(76,22,21),(77,22,18),(78,22,12),(79,22,2),(80,23,13),(81,23,5),(82,23,18),(83,23,8),(84,24,23),(85,24,2),(86,24,17);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,21),(3,7),(3,14);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#ec2434','published','2022-03-16 02:40:48','2022-03-16 02:40:48'),(2,'New','#00c9a7','published','2022-03-16 02:40:48','2022-03-16 02:40:48'),(3,'Sale','#fe9931','published','2022-03-16 02:40:48','2022-03-16 02:40:48');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
INSERT INTO `ec_product_labels_translations` VALUES ('vi',1,'Nổi bật',NULL),('vi',2,'Mới',NULL),('vi',3,'Giảm giá',NULL);
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` int unsigned NOT NULL,
  `tag_id` int unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,3),(1,5),(1,6),(2,3),(2,4),(2,6),(3,2),(3,4),(4,4),(4,5),(5,2),(5,3),(6,2),(6,5),(7,1),(7,3),(7,5),(8,1),(8,2),(9,1),(9,2),(9,6),(10,1),(10,4),(11,1),(11,4),(11,5),(12,2),(12,3),(12,5),(13,2),(13,4),(13,6),(14,5),(14,6),(15,1),(15,3),(15,6),(16,1),(16,3),(16,6),(17,2),(17,5),(17,6),(18,1),(18,2),(18,4),(19,1),(19,4),(19,6),(20,2),(20,4),(20,5),(21,2),(21,5),(21,6),(22,3),(22,4),(22,6),(23,1),(23,4),(24,5),(24,6);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Wallet',NULL,'published','2022-03-16 02:40:48','2022-03-16 02:40:48'),(2,'Bags',NULL,'published','2022-03-16 02:40:48','2022-03-16 02:40:48'),(3,'Shoes',NULL,'published','2022-03-16 02:40:48','2022-03-16 02:40:48'),(4,'Clothes',NULL,'published','2022-03-16 02:40:48','2022-03-16 02:40:48'),(5,'Hand bag',NULL,'published','2022-03-16 02:40:48','2022-03-16 02:40:48');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` int unsigned NOT NULL,
  `variation_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (1,3,1),(2,8,1),(3,1,2),(4,6,2),(5,3,3),(6,9,3),(7,1,4),(8,10,4),(9,4,5),(10,7,5),(11,1,6),(12,7,6),(13,1,7),(14,7,7),(15,1,8),(16,6,8),(17,5,9),(18,6,9),(19,3,10),(20,8,10),(21,3,11),(22,10,11),(23,3,12),(24,6,12),(25,1,13),(26,7,13),(27,1,14),(28,7,14),(29,1,15),(30,7,15),(31,4,16),(32,9,16),(33,4,17),(34,8,17),(35,5,18),(36,6,18),(37,2,19),(38,8,19),(39,5,20),(40,10,20),(41,4,21),(42,10,21),(43,4,22),(44,6,22),(45,1,23),(46,10,23),(47,1,24),(48,8,24),(49,2,25),(50,8,25),(51,2,26),(52,9,26),(53,1,27),(54,10,27),(55,4,28),(56,7,28),(57,5,29),(58,6,29),(59,2,30),(60,8,30),(61,3,31),(62,10,31),(63,5,32),(64,8,32),(65,5,33),(66,10,33),(67,4,34),(68,10,34),(69,5,35),(70,10,35),(71,2,36),(72,7,36),(73,2,37),(74,7,37),(75,5,38),(76,6,38),(77,4,39),(78,8,39),(79,4,40),(80,8,40),(81,1,41),(82,8,41),(83,5,42),(84,7,42),(85,5,43),(86,10,43),(87,5,44),(88,9,44),(89,4,45),(90,6,45),(91,3,46),(92,10,46),(93,2,47),(94,8,47),(95,5,48),(96,8,48),(97,2,49),(98,6,49),(99,5,50),(100,8,50),(101,1,51),(102,7,51),(103,2,52),(104,9,52),(105,3,53),(106,9,53),(107,5,54),(108,9,54),(109,5,55),(110,10,55),(111,4,56),(112,7,56),(113,2,57),(114,10,57),(115,3,58),(116,9,58),(117,3,59),(118,10,59),(119,1,60),(120,6,60),(121,1,61),(122,10,61),(123,5,62),(124,8,62),(125,2,63),(126,7,63),(127,2,64),(128,10,64),(129,3,65),(130,10,65),(131,5,66),(132,8,66);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned DEFAULT NULL,
  `configurable_product_id` int unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,25,1,1),(2,26,1,0),(3,27,1,0),(4,28,2,1),(5,29,2,0),(6,30,2,0),(7,31,3,1),(8,32,3,0),(9,33,3,0),(10,34,3,0),(11,35,3,0),(12,36,4,1),(13,37,4,0),(14,38,4,0),(15,39,5,1),(16,40,6,1),(17,41,6,0),(18,42,6,0),(19,43,7,1),(20,44,7,0),(21,45,7,0),(22,46,8,1),(23,47,8,0),(24,48,8,0),(25,49,8,0),(26,50,9,1),(27,51,9,0),(28,52,10,1),(29,53,10,0),(30,54,11,1),(31,55,11,0),(32,56,12,1),(33,57,12,0),(34,58,12,0),(35,59,13,1),(36,60,13,0),(37,61,13,0),(38,62,14,1),(39,63,14,0),(40,64,14,0),(41,65,15,1),(42,66,15,0),(43,67,15,0),(44,68,15,0),(45,69,16,1),(46,70,16,0),(47,71,17,1),(48,72,17,0),(49,73,17,0),(50,74,18,1),(51,75,19,1),(52,76,19,0),(53,77,19,0),(54,78,20,1),(55,79,21,1),(56,80,21,0),(57,81,22,1),(58,82,22,0),(59,83,23,1),(60,84,23,0),(61,85,23,0),(62,86,23,0),(63,87,23,0),(64,88,24,1),(65,89,24,0),(66,90,24,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute`
--

DROP TABLE IF EXISTS `ec_product_with_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute`
--

LOCK TABLES `ec_product_with_attribute` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute` VALUES (1,3,1),(2,10,1),(3,5,2),(4,6,2),(5,5,3),(6,7,3),(7,1,4),(8,7,4),(9,1,5),(10,9,5),(11,1,6),(12,7,6),(13,2,7),(14,6,7),(15,2,8),(16,9,8),(17,4,9),(18,6,9),(19,4,10),(20,10,10),(21,5,11),(22,10,11),(23,5,12),(24,10,12),(25,5,13),(26,8,13),(27,1,14),(28,6,14),(29,2,15),(30,8,15),(31,2,16),(32,6,16),(33,2,17),(34,8,17),(35,1,18),(36,7,18),(37,1,19),(38,10,19),(39,1,20),(40,10,20),(41,1,21),(42,10,21),(43,3,22),(44,10,22),(45,3,23),(46,9,23),(47,3,24),(48,7,24);
/*!40000 ALTER TABLE `ec_product_with_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,1,0),(2,2,1,0),(3,1,2,0),(4,2,2,0),(5,1,3,0),(6,2,3,0),(7,1,4,0),(8,2,4,0),(9,1,5,0),(10,2,5,0),(11,1,6,0),(12,2,6,0),(13,1,7,0),(14,2,7,0),(15,1,8,0),(16,2,8,0),(17,1,9,0),(18,2,9,0),(19,1,10,0),(20,2,10,0),(21,1,11,0),(22,2,11,0),(23,1,12,0),(24,2,12,0),(25,1,13,0),(26,2,13,0),(27,1,14,0),(28,2,14,0),(29,1,15,0),(30,2,15,0),(31,1,16,0),(32,2,16,0),(33,1,17,0),(34,2,17,0),(35,1,18,0),(36,2,18,0),(37,1,19,0),(38,2,19,0),(39,1,20,0),(40,2,20,0),(41,1,21,0),(42,2,21,0),(43,1,22,0),(44,2,22,0),(45,1,23,0),(46,2,23,0),(47,1,24,0),(48,2,24,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` int unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` int unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `store_id` int unsigned DEFAULT NULL,
  `created_by_id` int DEFAULT '0',
  `created_by_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `approved_by` int DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Seeds of Change Organic Quinoe','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/1.jpg\",\"products\\/1-1.jpg\"]','HS-101-A0',0,10,0,1,1,5,0,0,421,NULL,NULL,NULL,20.00,10.00,19.00,633.00,1,185125,'2022-03-16 02:41:04','2022-03-16 02:41:49','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL),(2,'All Natural Italian-Style Chicken Meatballs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\"]','HS-123-A0',0,17,0,1,1,6,0,0,461,NULL,NULL,NULL,12.00,17.00,12.00,723.00,1,37187,'2022-03-16 02:41:04','2022-03-16 02:41:49','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(3,'Angie’s Boomchickapop Sweet & Salty Kettle Corn','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/3.jpg\",\"products\\/3-1.jpg\"]','HS-160-A0',0,11,0,1,1,3,0,0,278,NULL,NULL,NULL,13.00,10.00,16.00,578.00,1,99121,'2022-03-16 02:41:04','2022-03-16 02:41:49','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL),(4,'Foster Farms Takeout Crispy Classic','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\"]','HS-105-A0',0,13,0,1,1,1,0,0,72,59.76,NULL,NULL,14.00,15.00,12.00,771.00,1,175882,'2022-03-16 02:41:04','2022-03-16 02:41:49','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL),(5,'Blue Diamond Almonds Lightly','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\"]','HS-189-A0',0,11,0,1,1,2,0,0,50,NULL,NULL,NULL,11.00,18.00,12.00,897.00,1,113575,'2022-03-16 02:41:04','2022-03-16 02:41:49','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL),(6,'Chobani Complete Vanilla Greek','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/6.jpg\",\"products\\/6-1.jpg\"]','HS-135-A0',0,15,0,1,1,5,0,0,54,NULL,NULL,NULL,11.00,11.00,19.00,676.00,1,70152,'2022-03-16 02:41:04','2022-03-16 02:41:49','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL),(7,'Canada Dry Ginger Ale – 2 L Bottle','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/7.jpg\",\"products\\/7-1.jpg\"]','HS-178-A0',0,11,0,1,1,3,0,0,119,NULL,NULL,NULL,12.00,10.00,15.00,506.00,1,185209,'2022-03-16 02:41:04','2022-03-16 02:41:49','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(8,'Encore Seafoods Stuffed Alaskan','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\"]','HS-180-A0',0,17,0,1,1,6,0,0,125,98.75,NULL,NULL,20.00,11.00,11.00,698.00,1,190952,'2022-03-16 02:41:04','2022-03-16 02:41:49','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(9,'Gorton’s Beer Battered Fish Fillets','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\"]','HS-135-A0',0,10,0,1,1,6,0,0,120,NULL,NULL,NULL,12.00,15.00,19.00,522.00,1,95360,'2022-03-16 02:41:04','2022-03-16 02:41:49','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(10,'Haagen-Dazs Caramel Cone Ice Cream','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\"]','HS-186-A0',0,16,0,1,1,1,0,0,379,NULL,NULL,NULL,18.00,18.00,18.00,726.00,1,157137,'2022-03-16 02:41:04','2022-03-16 02:41:49','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(11,'Nestle Original Coffee-Mate Coffee Creamer','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\"]','HS-103-A0',0,10,0,1,1,4,0,0,110,NULL,NULL,NULL,17.00,10.00,19.00,802.00,1,6522,'2022-03-16 02:41:04','2022-03-16 02:41:49','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL),(12,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\"]','HS-102-A0',0,18,0,1,1,7,0,0,118,101.48,NULL,NULL,12.00,19.00,18.00,595.00,1,36483,'2022-03-16 02:41:04','2022-03-16 02:41:49','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(13,'Pepperidge Farm Farmhouse Hearty White Bread','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]','HS-145-A0',0,11,0,1,1,5,0,0,121,NULL,NULL,NULL,15.00,18.00,13.00,722.00,1,145649,'2022-03-16 02:41:04','2022-03-16 02:41:49','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL),(14,'Organic Frozen Triple Berry Blend','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/14.jpg\",\"products\\/14-1.jpg\"]','HS-139-A0',0,10,0,1,1,5,0,0,125,NULL,NULL,NULL,13.00,12.00,15.00,522.00,1,74805,'2022-03-16 02:41:04','2022-03-16 02:41:49','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL),(15,'Oroweat Country Buttermilk Bread','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]','HS-185-A0',0,12,0,1,1,2,0,0,115,NULL,NULL,NULL,18.00,17.00,20.00,822.00,1,41462,'2022-03-16 02:41:04','2022-03-16 02:41:49','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(16,'Foster Farms Takeout Crispy Classic Buffalo Wings','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/16.jpg\",\"products\\/16-1.jpg\",\"products\\/16-2.jpg\",\"products\\/16-3.jpg\",\"products\\/16-4.jpg\",\"products\\/16-5.jpg\",\"products\\/16-6.jpg\"]','HS-106-A0',0,16,0,1,1,2,0,0,119,98.77,NULL,NULL,18.00,16.00,17.00,786.00,1,153425,'2022-03-16 02:41:04','2022-03-16 02:41:49','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL),(17,'Angie’s Boomchickapop Sweet & Salty Kettle Corn','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/17.jpg\",\"products\\/17-1.jpg\"]','HS-120-A0',0,11,0,1,1,6,0,0,119,NULL,NULL,NULL,12.00,15.00,15.00,882.00,1,145032,'2022-03-16 02:41:04','2022-03-16 02:41:49','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(18,'All Natural Italian-Style Chicken Meatballs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\"]','HS-124-A0',0,12,0,1,1,4,0,0,120,NULL,NULL,NULL,16.00,10.00,15.00,715.00,1,50746,'2022-03-16 02:41:04','2022-03-16 02:41:49','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL),(19,'Simply Lemonade with Raspberry Juice','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\"]','HS-126-A0',0,19,0,1,1,3,0,0,125,NULL,NULL,NULL,18.00,10.00,12.00,701.00,1,182762,'2022-03-16 02:41:04','2022-03-16 02:41:49','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL),(20,'Perdue Simply Smart Organics Gluten Free','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\"]','HS-167-A0',0,18,0,1,1,2,0,0,123,107.01,NULL,NULL,19.00,11.00,15.00,836.00,1,46645,'2022-03-16 02:41:04','2022-03-16 02:41:49','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(21,'Chen Watermelon','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\"]','HS-136-A0',0,11,0,1,1,4,0,0,128,NULL,NULL,NULL,20.00,11.00,10.00,760.00,1,61744,'2022-03-16 02:41:04','2022-03-16 02:41:49','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(22,'Organic Cage-Free Grade A Large Brown Eggs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\"]','HS-125-A0',0,14,0,1,1,3,0,0,113,NULL,NULL,NULL,14.00,16.00,13.00,844.00,1,93764,'2022-03-16 02:41:04','2022-03-16 02:41:49','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL),(23,'Colorful Banana','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\"]','HS-179-A0',0,12,0,1,1,4,0,0,130,NULL,NULL,NULL,19.00,15.00,12.00,519.00,1,156857,'2022-03-16 02:41:04','2022-03-16 02:41:49','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(24,'Signature Wood-Fired Mushroom and Caramelized','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p><ul>\n                                        <li><i class=\"fi-rs-hourglass mr-5 text-brand\"></i> 1 Year AL Jazeera Brand Warranty</li>\n                                        <li><i class=\"fi-rs-paper-plane mr-5 text-brand\"></i> 30 Day Return Policy</li>\n                                        <li><i class=\"fi-rs-credit-card mr-5 text-brand\"></i> Cash on Delivery available</li>\n                                    </ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/24.jpg\",\"products\\/24-1.jpg\"]','HS-174-A0',0,13,0,1,1,5,0,0,115,98.9,NULL,NULL,19.00,13.00,13.00,645.00,1,41180,'2022-03-16 02:41:04','2022-03-16 02:41:49','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(25,'Seeds of Change Organic Quinoe',NULL,NULL,'published','[\"products\\/1.jpg\"]','HS-101-A0',0,10,0,1,0,5,1,0,421,NULL,NULL,NULL,20.00,10.00,19.00,633.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(26,'Seeds of Change Organic Quinoe',NULL,NULL,'published','[\"products\\/1-1.jpg\"]','HS-101-A0-A1',0,10,0,1,0,5,1,0,421,NULL,NULL,NULL,20.00,10.00,19.00,633.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(27,'Seeds of Change Organic Quinoe',NULL,NULL,'published','[\"products\\/1.jpg\"]','HS-101-A0-A2',0,10,0,1,0,5,1,0,421,NULL,NULL,NULL,20.00,10.00,19.00,633.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(28,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/2.jpg\"]','HS-123-A0',0,17,0,1,0,6,1,0,461,NULL,NULL,NULL,12.00,17.00,12.00,723.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(29,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/2-1.jpg\"]','HS-123-A0-A1',0,17,0,1,0,6,1,0,461,NULL,NULL,NULL,12.00,17.00,12.00,723.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(30,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/2.jpg\"]','HS-123-A0-A2',0,17,0,1,0,6,1,0,461,NULL,NULL,NULL,12.00,17.00,12.00,723.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(31,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/3.jpg\"]','HS-160-A0',0,11,0,1,0,3,1,0,278,NULL,NULL,NULL,13.00,10.00,16.00,578.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(32,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/3-1.jpg\"]','HS-160-A0-A1',0,11,0,1,0,3,1,0,278,NULL,NULL,NULL,13.00,10.00,16.00,578.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(33,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/3.jpg\"]','HS-160-A0-A2',0,11,0,1,0,3,1,0,278,NULL,NULL,NULL,13.00,10.00,16.00,578.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(34,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/3.jpg\"]','HS-160-A0-A3',0,11,0,1,0,3,1,0,278,NULL,NULL,NULL,13.00,10.00,16.00,578.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(35,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/3.jpg\"]','HS-160-A0-A4',0,11,0,1,0,3,1,0,278,NULL,NULL,NULL,13.00,10.00,16.00,578.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(36,'Foster Farms Takeout Crispy Classic',NULL,NULL,'published','[\"products\\/4.jpg\"]','HS-105-A0',0,13,0,1,0,1,1,0,72,59.76,NULL,NULL,14.00,15.00,12.00,771.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(37,'Foster Farms Takeout Crispy Classic',NULL,NULL,'published','[\"products\\/4-1.jpg\"]','HS-105-A0-A1',0,13,0,1,0,1,1,0,72,61.92,NULL,NULL,14.00,15.00,12.00,771.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(38,'Foster Farms Takeout Crispy Classic',NULL,NULL,'published','[\"products\\/4.jpg\"]','HS-105-A0-A2',0,13,0,1,0,1,1,0,72,58.32,NULL,NULL,14.00,15.00,12.00,771.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(39,'Blue Diamond Almonds Lightly',NULL,NULL,'published','[\"products\\/5.jpg\"]','HS-189-A0',0,11,0,1,0,2,1,0,50,NULL,NULL,NULL,11.00,18.00,12.00,897.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(40,'Chobani Complete Vanilla Greek',NULL,NULL,'published','[\"products\\/6.jpg\"]','HS-135-A0',0,15,0,1,0,5,1,0,54,NULL,NULL,NULL,11.00,11.00,19.00,676.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(41,'Chobani Complete Vanilla Greek',NULL,NULL,'published','[\"products\\/6-1.jpg\"]','HS-135-A0-A1',0,15,0,1,0,5,1,0,54,NULL,NULL,NULL,11.00,11.00,19.00,676.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(42,'Chobani Complete Vanilla Greek',NULL,NULL,'published','[\"products\\/6.jpg\"]','HS-135-A0-A2',0,15,0,1,0,5,1,0,54,NULL,NULL,NULL,11.00,11.00,19.00,676.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(43,'Canada Dry Ginger Ale – 2 L Bottle',NULL,NULL,'published','[\"products\\/7.jpg\"]','HS-178-A0',0,11,0,1,0,3,1,0,119,NULL,NULL,NULL,12.00,10.00,15.00,506.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(44,'Canada Dry Ginger Ale – 2 L Bottle',NULL,NULL,'published','[\"products\\/7-1.jpg\"]','HS-178-A0-A1',0,11,0,1,0,3,1,0,119,NULL,NULL,NULL,12.00,10.00,15.00,506.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(45,'Canada Dry Ginger Ale – 2 L Bottle',NULL,NULL,'published','[\"products\\/7.jpg\"]','HS-178-A0-A2',0,11,0,1,0,3,1,0,119,NULL,NULL,NULL,12.00,10.00,15.00,506.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(46,'Encore Seafoods Stuffed Alaskan',NULL,NULL,'published','[\"products\\/8.jpg\"]','HS-180-A0',0,17,0,1,0,6,1,0,125,98.75,NULL,NULL,20.00,11.00,11.00,698.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(47,'Encore Seafoods Stuffed Alaskan',NULL,NULL,'published','[\"products\\/8-1.jpg\"]','HS-180-A0-A1',0,17,0,1,0,6,1,0,125,91.25,NULL,NULL,20.00,11.00,11.00,698.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(48,'Encore Seafoods Stuffed Alaskan',NULL,NULL,'published','[\"products\\/8.jpg\"]','HS-180-A0-A2',0,17,0,1,0,6,1,0,125,93.75,NULL,NULL,20.00,11.00,11.00,698.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(49,'Encore Seafoods Stuffed Alaskan',NULL,NULL,'published','[\"products\\/8.jpg\"]','HS-180-A0-A3',0,17,0,1,0,6,1,0,125,87.5,NULL,NULL,20.00,11.00,11.00,698.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(50,'Gorton’s Beer Battered Fish Fillets',NULL,NULL,'published','[\"products\\/9.jpg\"]','HS-135-A0',0,10,0,1,0,6,1,0,120,NULL,NULL,NULL,12.00,15.00,19.00,522.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(51,'Gorton’s Beer Battered Fish Fillets',NULL,NULL,'published','[\"products\\/9-1.jpg\"]','HS-135-A0-A1',0,10,0,1,0,6,1,0,120,NULL,NULL,NULL,12.00,15.00,19.00,522.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(52,'Haagen-Dazs Caramel Cone Ice Cream',NULL,NULL,'published','[\"products\\/10.jpg\"]','HS-186-A0',0,16,0,1,0,1,1,0,379,NULL,NULL,NULL,18.00,18.00,18.00,726.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(53,'Haagen-Dazs Caramel Cone Ice Cream',NULL,NULL,'published','[\"products\\/10-1.jpg\"]','HS-186-A0-A1',0,16,0,1,0,1,1,0,379,NULL,NULL,NULL,18.00,18.00,18.00,726.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(54,'Nestle Original Coffee-Mate Coffee Creamer',NULL,NULL,'published','[\"products\\/11.jpg\"]','HS-103-A0',0,10,0,1,0,4,1,0,110,NULL,NULL,NULL,17.00,10.00,19.00,802.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(55,'Nestle Original Coffee-Mate Coffee Creamer',NULL,NULL,'published','[\"products\\/11-1.jpg\"]','HS-103-A0-A1',0,10,0,1,0,4,1,0,110,NULL,NULL,NULL,17.00,10.00,19.00,802.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(56,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,NULL,'published','[\"products\\/12.jpg\"]','HS-102-A0',0,18,0,1,0,7,1,0,118,101.48,NULL,NULL,12.00,19.00,18.00,595.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(57,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,NULL,'published','[\"products\\/12-1.jpg\"]','HS-102-A0-A1',0,18,0,1,0,7,1,0,118,99.12,NULL,NULL,12.00,19.00,18.00,595.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(58,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,NULL,'published','[\"products\\/12.jpg\"]','HS-102-A0-A2',0,18,0,1,0,7,1,0,118,105.02,NULL,NULL,12.00,19.00,18.00,595.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(59,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL,'published','[\"products\\/13.jpg\"]','HS-145-A0',0,11,0,1,0,5,1,0,121,NULL,NULL,NULL,15.00,18.00,13.00,722.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(60,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL,'published','[\"products\\/13-1.jpg\"]','HS-145-A0-A1',0,11,0,1,0,5,1,0,121,NULL,NULL,NULL,15.00,18.00,13.00,722.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(61,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL,'published','[\"products\\/13.jpg\"]','HS-145-A0-A2',0,11,0,1,0,5,1,0,121,NULL,NULL,NULL,15.00,18.00,13.00,722.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(62,'Organic Frozen Triple Berry Blend',NULL,NULL,'published','[\"products\\/14.jpg\"]','HS-139-A0',0,10,0,1,0,5,1,0,125,NULL,NULL,NULL,13.00,12.00,15.00,522.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(63,'Organic Frozen Triple Berry Blend',NULL,NULL,'published','[\"products\\/14-1.jpg\"]','HS-139-A0-A1',0,10,0,1,0,5,1,0,125,NULL,NULL,NULL,13.00,12.00,15.00,522.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(64,'Organic Frozen Triple Berry Blend',NULL,NULL,'published','[\"products\\/14.jpg\"]','HS-139-A0-A2',0,10,0,1,0,5,1,0,125,NULL,NULL,NULL,13.00,12.00,15.00,522.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(65,'Oroweat Country Buttermilk Bread',NULL,NULL,'published','[\"products\\/15.jpg\"]','HS-185-A0',0,12,0,1,0,2,1,0,115,NULL,NULL,NULL,18.00,17.00,20.00,822.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(66,'Oroweat Country Buttermilk Bread',NULL,NULL,'published','[\"products\\/15-1.jpg\"]','HS-185-A0-A1',0,12,0,1,0,2,1,0,115,NULL,NULL,NULL,18.00,17.00,20.00,822.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(67,'Oroweat Country Buttermilk Bread',NULL,NULL,'published','[\"products\\/15.jpg\"]','HS-185-A0-A2',0,12,0,1,0,2,1,0,115,NULL,NULL,NULL,18.00,17.00,20.00,822.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(68,'Oroweat Country Buttermilk Bread',NULL,NULL,'published','[\"products\\/15.jpg\"]','HS-185-A0-A3',0,12,0,1,0,2,1,0,115,NULL,NULL,NULL,18.00,17.00,20.00,822.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(69,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL,'published','[\"products\\/16.jpg\"]','HS-106-A0',0,16,0,1,0,2,1,0,119,98.77,NULL,NULL,18.00,16.00,17.00,786.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(70,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL,'published','[\"products\\/16-1.jpg\"]','HS-106-A0-A1',0,16,0,1,0,2,1,0,119,105.91,NULL,NULL,18.00,16.00,17.00,786.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(71,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-120-A0',0,11,0,1,0,6,1,0,119,NULL,NULL,NULL,12.00,15.00,15.00,882.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(72,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/17-1.jpg\"]','HS-120-A0-A1',0,11,0,1,0,6,1,0,119,NULL,NULL,NULL,12.00,15.00,15.00,882.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(73,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-120-A0-A2',0,11,0,1,0,6,1,0,119,NULL,NULL,NULL,12.00,15.00,15.00,882.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(74,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/18.jpg\"]','HS-124-A0',0,12,0,1,0,4,1,0,120,NULL,NULL,NULL,16.00,10.00,15.00,715.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(75,'Simply Lemonade with Raspberry Juice',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-126-A0',0,19,0,1,0,3,1,0,125,NULL,NULL,NULL,18.00,10.00,12.00,701.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(76,'Simply Lemonade with Raspberry Juice',NULL,NULL,'published','[\"products\\/19-1.jpg\"]','HS-126-A0-A1',0,19,0,1,0,3,1,0,125,NULL,NULL,NULL,18.00,10.00,12.00,701.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(77,'Simply Lemonade with Raspberry Juice',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-126-A0-A2',0,19,0,1,0,3,1,0,125,NULL,NULL,NULL,18.00,10.00,12.00,701.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(78,'Perdue Simply Smart Organics Gluten Free',NULL,NULL,'published','[\"products\\/20.jpg\"]','HS-167-A0',0,18,0,1,0,2,1,0,123,107.01,NULL,NULL,19.00,11.00,15.00,836.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(79,'Chen Watermelon',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-136-A0',0,11,0,1,0,4,1,0,128,NULL,NULL,NULL,20.00,11.00,10.00,760.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(80,'Chen Watermelon',NULL,NULL,'published','[\"products\\/21-1.jpg\"]','HS-136-A0-A1',0,11,0,1,0,4,1,0,128,NULL,NULL,NULL,20.00,11.00,10.00,760.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(81,'Organic Cage-Free Grade A Large Brown Eggs',NULL,NULL,'published','[\"products\\/22.jpg\"]','HS-125-A0',0,14,0,1,0,3,1,0,113,NULL,NULL,NULL,14.00,16.00,13.00,844.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(82,'Organic Cage-Free Grade A Large Brown Eggs',NULL,NULL,'published','[\"products\\/22-1.jpg\"]','HS-125-A0-A1',0,14,0,1,0,3,1,0,113,NULL,NULL,NULL,14.00,16.00,13.00,844.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(83,'Colorful Banana',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-179-A0',0,12,0,1,0,4,1,0,130,NULL,NULL,NULL,19.00,15.00,12.00,519.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(84,'Colorful Banana',NULL,NULL,'published','[\"products\\/23-1.jpg\"]','HS-179-A0-A1',0,12,0,1,0,4,1,0,130,NULL,NULL,NULL,19.00,15.00,12.00,519.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(85,'Colorful Banana',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-179-A0-A2',0,12,0,1,0,4,1,0,130,NULL,NULL,NULL,19.00,15.00,12.00,519.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(86,'Colorful Banana',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-179-A0-A3',0,12,0,1,0,4,1,0,130,NULL,NULL,NULL,19.00,15.00,12.00,519.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(87,'Colorful Banana',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-179-A0-A4',0,12,0,1,0,4,1,0,130,NULL,NULL,NULL,19.00,15.00,12.00,519.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(88,'Signature Wood-Fired Mushroom and Caramelized',NULL,NULL,'published','[\"products\\/24.jpg\"]','HS-174-A0',0,13,0,1,0,5,1,0,115,98.9,NULL,NULL,19.00,13.00,13.00,645.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(89,'Signature Wood-Fired Mushroom and Caramelized',NULL,NULL,'published','[\"products\\/24-1.jpg\"]','HS-174-A0-A1',0,13,0,1,0,5,1,0,115,81.65,NULL,NULL,19.00,13.00,13.00,645.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(90,'Signature Wood-Fired Mushroom and Caramelized',NULL,NULL,'published','[\"products\\/24.jpg\"]','HS-174-A0-A2',0,13,0,1,0,5,1,0,115,98.9,NULL,NULL,19.00,13.00,13.00,645.00,NULL,0,'2022-03-16 02:41:04','2022-03-22 19:29:17','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
INSERT INTO `ec_products_translations` VALUES ('vi',1,'Hạt Quinoa hữu cơ',NULL,NULL),('vi',2,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',3,'Angie’s Boomchickapop Sweet & Salty',NULL,NULL),('vi',4,'Foster Farms Takeout Crispy Classic',NULL,NULL),('vi',5,'Diamond Almonds xanh nhạt',NULL,NULL),('vi',6,'Chobani vani Hy Lạp',NULL,NULL),('vi',7,'Gừng khô Canada',NULL,NULL),('vi',8,'Hải sản Alaska',NULL,NULL),('vi',9,'Cá phi lê tẩm Gorton',NULL,NULL),('vi',10,'Kem Haagen-Dazs Caramel Cone',NULL,NULL),('vi',11,'Máy làm kem cà phê nguyên bản của Nestle',NULL,NULL),('vi',12,'Cà phê rang nhẹ hương vị quế vani tự nhiên',NULL,NULL),('vi',13,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL),('vi',14,'Hỗn hợp ba quả mọng đông lạnh hữu cơ',NULL,NULL),('vi',15,'Bánh mì bơ sữa đồng quê Oroweat',NULL,NULL),('vi',16,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL),('vi',17,'Ngô Angie’s boomchickapop ngọt và mặn',NULL,NULL),('vi',18,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',19,'Nước ép chanh và mâm xôi',NULL,NULL),('vi',20,'Perdue hữu cơ không chứa Gluten',NULL,NULL),('vi',21,'Dưa hấu chen',NULL,NULL),('vi',22,'Trứng loại A lớn hữu cơ',NULL,NULL),('vi',23,'Chuối đầy màu sắc',NULL,NULL),('vi',24,'Nấm đặc trưng và caramel',NULL,NULL),('vi',25,'Hạt Quinoa hữu cơ',NULL,NULL),('vi',26,'Hạt Quinoa hữu cơ',NULL,NULL),('vi',27,'Hạt Quinoa hữu cơ',NULL,NULL),('vi',28,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',29,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',30,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',31,'Angie’s Boomchickapop Sweet & Salty',NULL,NULL),('vi',32,'Angie’s Boomchickapop Sweet & Salty',NULL,NULL),('vi',33,'Angie’s Boomchickapop Sweet & Salty',NULL,NULL),('vi',34,'Angie’s Boomchickapop Sweet & Salty',NULL,NULL),('vi',35,'Angie’s Boomchickapop Sweet & Salty',NULL,NULL),('vi',36,'Foster Farms Takeout Crispy Classic',NULL,NULL),('vi',37,'Foster Farms Takeout Crispy Classic',NULL,NULL),('vi',38,'Foster Farms Takeout Crispy Classic',NULL,NULL),('vi',39,'Diamond Almonds xanh nhạt',NULL,NULL),('vi',40,'Chobani vani Hy Lạp',NULL,NULL),('vi',41,'Chobani vani Hy Lạp',NULL,NULL),('vi',42,'Chobani vani Hy Lạp',NULL,NULL),('vi',43,'Gừng khô Canada',NULL,NULL),('vi',44,'Gừng khô Canada',NULL,NULL),('vi',45,'Gừng khô Canada',NULL,NULL),('vi',46,'Hải sản Alaska',NULL,NULL),('vi',47,'Hải sản Alaska',NULL,NULL),('vi',48,'Hải sản Alaska',NULL,NULL),('vi',49,'Hải sản Alaska',NULL,NULL),('vi',50,'Cá phi lê tẩm Gorton',NULL,NULL),('vi',51,'Cá phi lê tẩm Gorton',NULL,NULL),('vi',52,'Kem Haagen-Dazs Caramel Cone',NULL,NULL),('vi',53,'Kem Haagen-Dazs Caramel Cone',NULL,NULL),('vi',54,'Máy làm kem cà phê nguyên bản của Nestle',NULL,NULL),('vi',55,'Máy làm kem cà phê nguyên bản của Nestle',NULL,NULL),('vi',56,'Cà phê rang nhẹ hương vị quế vani tự nhiên',NULL,NULL),('vi',57,'Cà phê rang nhẹ hương vị quế vani tự nhiên',NULL,NULL),('vi',58,'Cà phê rang nhẹ hương vị quế vani tự nhiên',NULL,NULL),('vi',59,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL),('vi',60,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL),('vi',61,'Pepperidge Farm Farmhouse Hearty White Bread',NULL,NULL),('vi',62,'Hỗn hợp ba quả mọng đông lạnh hữu cơ',NULL,NULL),('vi',63,'Hỗn hợp ba quả mọng đông lạnh hữu cơ',NULL,NULL),('vi',64,'Hỗn hợp ba quả mọng đông lạnh hữu cơ',NULL,NULL),('vi',65,'Bánh mì bơ sữa đồng quê Oroweat',NULL,NULL),('vi',66,'Bánh mì bơ sữa đồng quê Oroweat',NULL,NULL),('vi',67,'Bánh mì bơ sữa đồng quê Oroweat',NULL,NULL),('vi',68,'Bánh mì bơ sữa đồng quê Oroweat',NULL,NULL),('vi',69,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL),('vi',70,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL),('vi',71,'Ngô Angie’s boomchickapop ngọt và mặn',NULL,NULL),('vi',72,'Ngô Angie’s boomchickapop ngọt và mặn',NULL,NULL),('vi',73,'Ngô Angie’s boomchickapop ngọt và mặn',NULL,NULL),('vi',74,'Thịt gà viên kiểu Ý tự nhiên',NULL,NULL),('vi',75,'Nước ép chanh và mâm xôi',NULL,NULL),('vi',76,'Nước ép chanh và mâm xôi',NULL,NULL),('vi',77,'Nước ép chanh và mâm xôi',NULL,NULL),('vi',78,'Perdue hữu cơ không chứa Gluten',NULL,NULL),('vi',79,'Dưa hấu chen',NULL,NULL),('vi',80,'Dưa hấu chen',NULL,NULL),('vi',81,'Trứng loại A lớn hữu cơ',NULL,NULL),('vi',82,'Trứng loại A lớn hữu cơ',NULL,NULL),('vi',83,'Chuối đầy màu sắc',NULL,NULL),('vi',84,'Chuối đầy màu sắc',NULL,NULL),('vi',85,'Chuối đầy màu sắc',NULL,NULL),('vi',86,'Chuối đầy màu sắc',NULL,NULL),('vi',87,'Chuối đầy màu sắc',NULL,NULL),('vi',88,'Nấm đặc trưng và caramel',NULL,NULL),('vi',89,'Nấm đặc trưng và caramel',NULL,NULL),('vi',90,'Nấm đặc trưng và caramel',NULL,NULL);
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,6,14,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(2,3,7,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(3,3,15,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/20.jpg\"]'),(4,5,10,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/3.jpg\"]'),(5,1,17,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/19.jpg\"}'),(6,7,9,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/13.jpg\"}'),(7,8,6,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/20.jpg\"]'),(8,5,6,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(9,10,4,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/4.jpg\"]'),(10,7,23,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/3.jpg\"]'),(11,9,16,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(12,1,23,3.00,'Clean & perfect source code','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/1.jpg\"]'),(13,2,20,1.00,'Good app, good backup service and support. Good documentation.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(14,3,11,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/20.jpg\"}'),(15,8,14,1.00,'Best ecommerce CMS online store!','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/12.jpg\"]'),(16,1,14,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(17,2,12,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/2.jpg\"]'),(18,1,19,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(19,8,5,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(20,10,6,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(21,5,1,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/2.jpg\"]'),(22,1,3,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/3.jpg\"]'),(23,1,8,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(24,4,2,5.00,'Best ecommerce CMS online store!','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(25,5,1,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/9.jpg\"]'),(26,6,19,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(27,4,10,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/1.jpg\"]'),(28,4,1,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(29,1,10,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/17.jpg\"]'),(30,3,4,3.00,'Good app, good backup service and support. Good documentation.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(31,10,3,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-03-16 02:41:08','2022-03-16 02:41:08','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/21.jpg\"}'),(32,8,8,5.00,'Good app, good backup service and support. Good documentation.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(33,2,5,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/1.jpg\"]'),(34,2,9,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(35,7,23,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/22.jpg\"]'),(36,10,22,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(37,6,14,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-03-16 02:41:08','2022-03-16 02:41:08','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/19.jpg\"}'),(38,8,3,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(39,8,10,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(40,1,12,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(41,10,23,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/13.jpg\"]'),(42,10,10,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/3.jpg\"]'),(43,4,24,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/17.jpg\"]'),(44,7,17,4.00,'Best ecommerce CMS online store!','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/24.jpg\"]'),(45,9,11,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/4.jpg\"]'),(46,8,4,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(47,1,5,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(48,6,16,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(49,6,6,3.00,'Good app, good backup service and support. Good documentation.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/23.jpg\"]'),(50,2,12,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/15.jpg\"]'),(51,8,18,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(52,8,13,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(53,10,6,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(54,5,6,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(55,3,18,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/21.jpg\"}'),(56,2,9,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/21.jpg\"]'),(57,5,5,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/20.jpg\"]'),(58,7,19,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/21.jpg\"]'),(59,10,7,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(60,5,13,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(61,8,13,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/4.jpg\"]'),(62,3,15,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(63,6,9,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/2.jpg\"]'),(64,3,7,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(65,7,12,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(66,9,18,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(67,7,24,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/3.jpg\"]'),(68,3,7,1.00,'Clean & perfect source code','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/16.jpg\"]'),(69,8,23,2.00,'Best ecommerce CMS online store!','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/1.jpg\"]'),(70,9,1,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(71,1,2,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/17.jpg\"]'),(72,1,19,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(73,5,12,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/1.jpg\"]'),(74,7,1,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(75,1,12,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(76,6,10,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(77,7,9,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(78,8,8,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(79,8,24,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(80,9,18,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/15.jpg\"]'),(81,3,6,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/18.jpg\"]'),(82,2,9,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(83,2,3,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/3.jpg\"]'),(84,1,11,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(85,8,4,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/16.jpg\"]'),(86,9,15,2.00,'Good app, good backup service and support. Good documentation.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/1.jpg\"]'),(87,6,6,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/3.jpg\"]'),(88,10,4,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/2.jpg\"]'),(89,10,17,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(90,5,14,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/1.jpg\"]'),(91,8,12,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/11.jpg\"]'),(92,9,8,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(93,5,8,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(94,5,10,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(95,2,16,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(96,1,13,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/3.jpg\"]'),(97,10,10,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(98,9,19,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(99,8,1,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/1.jpg\",\"products\\/6.jpg\",\"products\\/22.jpg\"]'),(100,4,19,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-03-16 02:41:08','2022-03-16 02:41:08','[\"products\\/2.jpg\",\"products\\/7.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `shipment_id` int unsigned NOT NULL,
  `order_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
INSERT INTO `ec_shipment_histories` VALUES (1,'create_from_order','Shipping was created from order %order_id%',0,1,1,'2022-04-05 20:19:54','2022-04-05 20:19:54'),(2,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,1,1,'2022-04-19 04:19:54','2022-04-20 20:19:54'),(3,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,1,1,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(4,'create_from_order','Shipping was created from order %order_id%',0,2,2,'2022-04-19 04:19:54','2022-04-19 04:19:54'),(5,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,2,2,'2022-04-19 04:19:54','2022-04-20 20:19:54'),(6,'create_from_order','Shipping was created from order %order_id%',0,3,3,'2022-04-15 20:19:54','2022-04-15 20:19:54'),(7,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,3,3,'2022-04-19 04:19:54','2022-04-20 20:19:54'),(8,'create_from_order','Shipping was created from order %order_id%',0,4,4,'2022-04-11 08:19:54','2022-04-11 08:19:54'),(9,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,4,4,'2022-04-19 06:19:54','2022-04-20 20:19:54'),(10,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,4,4,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(11,'create_from_order','Shipping was created from order %order_id%',0,5,5,'2022-04-08 04:19:54','2022-04-08 04:19:54'),(12,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,5,5,'2022-04-19 06:19:54','2022-04-20 20:19:54'),(13,'create_from_order','Shipping was created from order %order_id%',0,6,6,'2022-04-16 02:19:54','2022-04-16 02:19:54'),(14,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,6,6,'2022-04-19 06:19:54','2022-04-20 20:19:54'),(15,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,6,6,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(16,'create_from_order','Shipping was created from order %order_id%',0,7,7,'2022-04-17 20:19:54','2022-04-17 20:19:54'),(17,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,7,7,'2022-04-19 08:19:54','2022-04-20 20:19:54'),(18,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,7,7,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(19,'create_from_order','Shipping was created from order %order_id%',0,8,8,'2022-04-19 08:19:54','2022-04-19 08:19:54'),(20,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,8,8,'2022-04-19 08:19:54','2022-04-20 20:19:54'),(21,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,8,8,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(22,'create_from_order','Shipping was created from order %order_id%',0,9,9,'2022-04-05 20:19:54','2022-04-05 20:19:54'),(23,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,9,9,'2022-04-19 08:19:54','2022-04-20 20:19:54'),(24,'create_from_order','Shipping was created from order %order_id%',0,10,10,'2022-04-16 14:19:54','2022-04-16 14:19:54'),(25,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,10,10,'2022-04-19 10:19:54','2022-04-20 20:19:54'),(26,'create_from_order','Shipping was created from order %order_id%',0,11,11,'2022-04-10 22:19:54','2022-04-10 22:19:54'),(27,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,11,11,'2022-04-19 10:19:54','2022-04-20 20:19:54'),(28,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,11,11,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(29,'create_from_order','Shipping was created from order %order_id%',0,12,12,'2022-04-11 12:19:54','2022-04-11 12:19:54'),(30,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,12,12,'2022-04-19 12:19:54','2022-04-20 20:19:54'),(31,'create_from_order','Shipping was created from order %order_id%',0,13,13,'2022-04-19 12:19:54','2022-04-19 12:19:54'),(32,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,13,13,'2022-04-19 12:19:54','2022-04-20 20:19:54'),(33,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,13,13,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(34,'create_from_order','Shipping was created from order %order_id%',0,14,14,'2022-04-19 12:19:54','2022-04-19 12:19:54'),(35,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,14,14,'2022-04-19 12:19:54','2022-04-20 20:19:54'),(36,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,14,14,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(37,'create_from_order','Shipping was created from order %order_id%',0,15,15,'2022-04-13 08:19:54','2022-04-13 08:19:54'),(38,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,15,15,'2022-04-19 14:19:54','2022-04-20 20:19:54'),(39,'create_from_order','Shipping was created from order %order_id%',0,16,16,'2022-04-15 20:19:54','2022-04-15 20:19:54'),(40,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,16,16,'2022-04-19 14:19:54','2022-04-20 20:19:54'),(41,'create_from_order','Shipping was created from order %order_id%',0,17,17,'2022-04-19 14:19:54','2022-04-19 14:19:54'),(42,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,17,17,'2022-04-19 14:19:54','2022-04-20 20:19:54'),(43,'create_from_order','Shipping was created from order %order_id%',0,18,18,'2022-04-15 00:19:54','2022-04-15 00:19:54'),(44,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,18,18,'2022-04-19 16:19:54','2022-04-20 20:19:54'),(45,'create_from_order','Shipping was created from order %order_id%',0,19,19,'2022-04-17 08:19:54','2022-04-17 08:19:54'),(46,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,19,19,'2022-04-19 16:19:54','2022-04-20 20:19:54'),(47,'create_from_order','Shipping was created from order %order_id%',0,20,20,'2022-04-10 08:19:54','2022-04-10 08:19:54'),(48,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,20,20,'2022-04-19 16:19:54','2022-04-20 20:19:54'),(49,'create_from_order','Shipping was created from order %order_id%',0,21,21,'2022-04-17 14:19:54','2022-04-17 14:19:54'),(50,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,21,21,'2022-04-19 18:19:54','2022-04-20 20:19:54'),(51,'create_from_order','Shipping was created from order %order_id%',0,22,22,'2022-04-14 08:19:54','2022-04-14 08:19:54'),(52,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,22,22,'2022-04-19 18:19:54','2022-04-20 20:19:54'),(53,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,22,22,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(54,'create_from_order','Shipping was created from order %order_id%',0,23,23,'2022-04-10 00:19:54','2022-04-10 00:19:54'),(55,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,23,23,'2022-04-19 18:19:54','2022-04-20 20:19:54'),(56,'create_from_order','Shipping was created from order %order_id%',0,24,24,'2022-04-14 20:19:54','2022-04-14 20:19:54'),(57,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,24,24,'2022-04-19 20:19:54','2022-04-20 20:19:54'),(58,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,24,24,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(59,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,24,24,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(60,'create_from_order','Shipping was created from order %order_id%',0,25,25,'2022-04-13 20:19:54','2022-04-13 20:19:54'),(61,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,25,25,'2022-04-19 20:19:54','2022-04-20 20:19:54'),(62,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,25,25,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(63,'create_from_order','Shipping was created from order %order_id%',0,26,26,'2022-04-18 02:19:54','2022-04-18 02:19:54'),(64,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,26,26,'2022-04-19 22:19:54','2022-04-20 20:19:54'),(65,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,26,26,'2022-04-20 20:19:54','2022-04-20 20:19:54'),(66,'create_from_order','Shipping was created from order %order_id%',0,27,27,'2022-04-19 22:19:54','2022-04-19 22:19:54'),(67,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,27,27,'2022-04-19 22:19:54','2022-04-20 20:19:54'),(68,'create_from_order','Shipping was created from order %order_id%',0,28,28,'2022-04-17 04:19:54','2022-04-17 04:19:54'),(69,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,28,28,'2022-04-19 22:19:55','2022-04-20 20:19:55'),(70,'create_from_order','Shipping was created from order %order_id%',0,29,29,'2022-04-20 00:19:55','2022-04-20 00:19:55'),(71,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,29,29,'2022-04-20 00:19:55','2022-04-20 20:19:55'),(72,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,29,29,'2022-04-20 20:19:55','2022-04-20 20:19:55'),(73,'create_from_order','Shipping was created from order %order_id%',0,30,30,'2022-04-16 16:19:55','2022-04-16 16:19:55'),(74,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,30,30,'2022-04-20 00:19:55','2022-04-20 20:19:55'),(75,'create_from_order','Shipping was created from order %order_id%',0,31,31,'2022-04-17 20:19:55','2022-04-17 20:19:55'),(76,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,31,31,'2022-04-20 02:19:55','2022-04-20 20:19:55'),(77,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,31,31,'2022-04-20 20:19:55','2022-04-20 20:19:55'),(78,'create_from_order','Shipping was created from order %order_id%',0,32,32,'2022-04-16 08:19:55','2022-04-16 08:19:55'),(79,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,32,32,'2022-04-20 02:19:55','2022-04-20 20:19:55'),(80,'create_from_order','Shipping was created from order %order_id%',0,33,33,'2022-04-13 08:19:55','2022-04-13 08:19:55'),(81,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,33,33,'2022-04-20 02:19:55','2022-04-20 20:19:55'),(82,'create_from_order','Shipping was created from order %order_id%',0,34,34,'2022-04-18 20:19:55','2022-04-18 20:19:55'),(83,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,34,34,'2022-04-20 04:19:55','2022-04-20 20:19:55'),(84,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,34,34,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(85,'create_from_order','Shipping was created from order %order_id%',0,35,35,'2022-04-15 12:19:56','2022-04-15 12:19:56'),(86,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,35,35,'2022-04-20 04:19:56','2022-04-20 20:19:56'),(87,'create_from_order','Shipping was created from order %order_id%',0,36,36,'2022-04-20 06:19:56','2022-04-20 06:19:56'),(88,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,36,36,'2022-04-20 06:19:56','2022-04-20 20:19:56'),(89,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,36,36,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(90,'create_from_order','Shipping was created from order %order_id%',0,37,37,'2022-04-17 22:19:56','2022-04-17 22:19:56'),(91,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,37,37,'2022-04-20 06:19:56','2022-04-20 20:19:56'),(92,'create_from_order','Shipping was created from order %order_id%',0,38,38,'2022-04-16 18:19:56','2022-04-16 18:19:56'),(93,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,38,38,'2022-04-20 06:19:56','2022-04-20 20:19:56'),(94,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,38,38,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(95,'create_from_order','Shipping was created from order %order_id%',0,39,39,'2022-04-15 20:19:56','2022-04-15 20:19:56'),(96,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,39,39,'2022-04-20 08:19:56','2022-04-20 20:19:56'),(97,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,39,39,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(98,'create_from_order','Shipping was created from order %order_id%',0,40,40,'2022-04-17 08:19:56','2022-04-17 08:19:56'),(99,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,40,40,'2022-04-20 08:19:56','2022-04-20 20:19:56'),(100,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,40,40,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(101,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,40,40,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(102,'create_from_order','Shipping was created from order %order_id%',0,41,41,'2022-04-19 20:19:56','2022-04-19 20:19:56'),(103,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,41,41,'2022-04-20 08:19:56','2022-04-20 20:19:56'),(104,'create_from_order','Shipping was created from order %order_id%',0,42,42,'2022-04-18 08:19:56','2022-04-18 08:19:56'),(105,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,42,42,'2022-04-20 10:19:56','2022-04-20 20:19:56'),(106,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,42,42,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(107,'create_from_order','Shipping was created from order %order_id%',0,43,43,'2022-04-17 12:19:56','2022-04-17 12:19:56'),(108,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,43,43,'2022-04-20 10:19:56','2022-04-20 20:19:56'),(109,'create_from_order','Shipping was created from order %order_id%',0,44,44,'2022-04-17 20:19:56','2022-04-17 20:19:56'),(110,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,44,44,'2022-04-20 12:19:56','2022-04-20 20:19:56'),(111,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,44,44,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(112,'create_from_order','Shipping was created from order %order_id%',0,45,45,'2022-04-17 20:19:56','2022-04-17 20:19:56'),(113,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,45,45,'2022-04-20 12:19:56','2022-04-20 20:19:56'),(114,'create_from_order','Shipping was created from order %order_id%',0,46,46,'2022-04-20 04:19:56','2022-04-20 04:19:56'),(115,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,46,46,'2022-04-20 12:19:56','2022-04-20 20:19:56'),(116,'create_from_order','Shipping was created from order %order_id%',0,47,47,'2022-04-18 08:19:56','2022-04-18 08:19:56'),(117,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,47,47,'2022-04-20 14:19:56','2022-04-20 20:19:56'),(118,'create_from_order','Shipping was created from order %order_id%',0,48,48,'2022-04-19 14:19:56','2022-04-19 14:19:56'),(119,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,48,48,'2022-04-20 14:19:56','2022-04-20 20:19:56'),(120,'create_from_order','Shipping was created from order %order_id%',0,49,49,'2022-04-20 00:19:56','2022-04-20 00:19:56'),(121,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,49,49,'2022-04-20 16:19:56','2022-04-20 20:19:56'),(122,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,49,49,'2022-04-20 20:19:56','2022-04-20 20:19:56'),(123,'create_from_order','Shipping was created from order %order_id%',0,50,50,'2022-04-20 10:19:56','2022-04-20 10:19:56'),(124,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,50,50,'2022-04-20 18:19:56','2022-04-20 20:19:56');
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,1,NULL,4815.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54','JJD0039757059','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-24 03:19:54','2022-04-21 03:19:54'),(2,2,NULL,676.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54','JJD0058152774','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-23 03:19:54',NULL),(3,3,NULL,645.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54','JJD0071699108','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-30 03:19:54',NULL),(4,4,NULL,2028.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54','JJD0048662104','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-26 03:19:54','2022-04-21 03:19:54'),(5,5,NULL,2508.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54','JJD0097020034','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-24 03:19:54',NULL),(6,6,NULL,1688.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54','JJD0054168750','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-22 03:19:54','2022-04-21 03:19:54'),(7,7,NULL,1785.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54','JJD0082205138','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-30 03:19:54','2022-04-21 03:19:54'),(8,8,NULL,1044.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54','JJD0062221136','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-24 03:19:54','2022-04-21 03:19:54'),(9,9,NULL,1402.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54','JJD0092932405','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-27 03:19:54',NULL),(10,10,NULL,3862.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54','JJD003293177','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-28 03:19:54',NULL),(11,11,NULL,522.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54','JJD0019917057','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-27 03:19:54','2022-04-21 03:19:54'),(12,12,NULL,2169.00,NULL,'','approved',1429.10,'pending','pending',0.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54','JJD0013741852','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-01 03:19:54',NULL),(13,13,NULL,1156.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54','JJD0080361175','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-28 03:19:54','2022-04-21 03:19:54'),(14,14,NULL,2246.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54','JJD0040449707','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-25 03:19:54','2022-04-21 03:19:54'),(15,15,NULL,1156.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54','JJD0033632422','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-30 03:19:54',NULL),(16,16,NULL,1566.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54','JJD0057254463','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-23 03:19:54',NULL),(17,17,NULL,2466.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54','JJD007363813','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-30 03:19:54',NULL),(18,18,NULL,1518.00,NULL,'','approved',368.90,'pending','pending',0.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54','JJD0078197793','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-27 03:19:54',NULL),(19,19,NULL,2406.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54','JJD0081818932','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-22 03:19:54',NULL),(20,20,NULL,1038.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54','JJD0024950324','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-01 03:19:54',NULL),(21,21,NULL,2288.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54','JJD0054114111','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-30 03:19:54',NULL),(22,22,NULL,1402.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54','JJD0077015041','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-25 03:19:54','2022-04-21 03:19:54'),(23,23,NULL,1935.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54','JJD0075283574','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-23 03:19:54',NULL),(24,24,NULL,698.00,NULL,'','delivered',137.50,'completed','pending',0.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54','JJD0023379286','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-01 03:19:54','2022-04-21 03:19:54'),(25,25,NULL,760.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54','JJD0079455248','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-29 03:19:54','2022-04-21 03:19:54'),(26,26,NULL,771.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54','JJD0071290097','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-29 03:19:54','2022-04-21 03:19:54'),(27,27,NULL,1190.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54','JJD0033527222','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-25 03:19:54',NULL),(28,28,NULL,645.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:54','2022-04-20 20:19:54','JJD0028795222','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-28 03:19:54',NULL),(29,29,NULL,882.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:55','2022-04-20 20:19:55','JJD0068895037','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-26 03:19:55','2022-04-21 03:19:55'),(30,30,NULL,1935.00,NULL,'','approved',356.50,'pending','pending',0.00,0,'2022-04-20 20:19:55','2022-04-20 20:19:55','JJD0027301272','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-29 03:19:55',NULL),(31,31,NULL,1899.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:55','2022-04-20 20:19:55','JJD0049742648','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-29 03:19:55','2022-04-21 03:19:55'),(32,32,NULL,2313.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:55','2022-04-20 20:19:55','JJD0033599986','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-30 03:19:55',NULL),(33,33,NULL,2466.00,NULL,'','approved',356.50,'pending','pending',0.00,0,'2022-04-20 20:19:55','2022-04-20 20:19:55','JJD0067898152','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-01 03:19:55',NULL),(34,34,NULL,2700.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:55','2022-04-20 20:19:55','JJD0069464400','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-26 03:19:55','2022-04-21 03:19:55'),(35,35,NULL,1402.00,NULL,'','approved',262.50,'pending','pending',0.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56','JJD0014189788','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-22 03:19:56',NULL),(36,36,NULL,1542.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56','JJD0040448813','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-29 03:19:56','2022-04-21 03:19:56'),(37,37,NULL,3250.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56','JJD0082177538','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-24 03:19:56',NULL),(38,38,NULL,882.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56','JJD005107366','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-25 03:19:56','2022-04-21 03:19:56'),(39,39,NULL,4938.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56','JJD0086031488','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-26 03:19:56','2022-04-21 03:19:56'),(40,40,NULL,1402.00,NULL,'','delivered',262.50,'completed','pending',0.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56','JJD0058074911','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-23 03:19:56','2022-04-21 03:19:56'),(41,41,NULL,1290.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56','JJD0090312583','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-22 03:19:56',NULL),(42,42,NULL,2313.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56','JJD0017712670','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-26 03:19:56','2022-04-21 03:19:56'),(43,43,NULL,1785.00,NULL,'','approved',365.80,'pending','pending',0.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56','JJD0037844738','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-22 03:19:56',NULL),(44,44,NULL,2313.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56','JJD0039037762','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-26 03:19:56','2022-04-21 03:19:56'),(45,45,NULL,522.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56','JJD0095747385','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-28 03:19:56',NULL),(46,46,NULL,882.00,NULL,'','approved',130.90,'pending','pending',0.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56','JJD0021076194','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-26 03:19:56',NULL),(47,47,NULL,2313.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56','JJD0078375573','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-01 03:19:56',NULL),(48,48,NULL,2958.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56','JJD0076590685','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-24 03:19:56',NULL),(49,49,NULL,1646.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56','JJD0025509984','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-05-01 03:19:56','2022-04-21 03:19:56'),(50,50,NULL,4097.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-04-20 20:19:56','2022-04-20 20:19:56','JJD0083079538','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-04-24 03:19:56',NULL);
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2022-03-16 02:41:08','2022-03-16 02:41:08');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` int unsigned NOT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` int unsigned NOT NULL,
  `type` enum('base_on_price','base_on_weight') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'base_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free shipping',1,'base_on_price',0.00,NULL,0.00,'2022-03-16 02:41:08','2022-03-16 02:41:08'),(2,'Local Pickup',1,'base_on_price',0.00,NULL,20.00,'2022-03-16 02:41:08','2022-03-16 02:41:08'),(3,'Flat Rate',1,'base_on_price',0.00,NULL,25.00,'2022-03-16 02:41:08','2022-03-16 02:41:08');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Nest','sales@shariqq.com','18006268','North Link Building, 10 Admiralty Street','SG','Singapore','Singapore',1,1,'2022-03-16 02:41:08','2022-03-16 02:41:08');
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2022-03-16 02:41:05','2022-03-16 02:41:05'),(2,'None',0.000000,2,'published','2022-03-16 02:41:05','2022-03-16 02:41:05');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Shipping',0,'published','2022-03-16 02:41:39','2022-03-16 02:41:39'),(2,'Payment',1,'published','2022-03-16 02:41:39','2022-03-16 02:41:39'),(3,'Order & Returns',2,'published','2022-03-16 02:41:39','2022-03-16 02:41:39');
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` int NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
INSERT INTO `faq_categories_translations` VALUES ('vi',1,'VẬN CHUYỂN'),('vi',2,'THANH TOÁN'),('vi',3,'ĐƠN HÀNG & HOÀN TRẢ');
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int unsigned NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2022-03-16 02:41:39','2022-03-16 02:41:39'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2022-03-16 02:41:39','2022-03-16 02:41:39'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2022-03-16 02:41:39','2022-03-16 02:41:39'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2022-03-16 02:41:39','2022-03-16 02:41:39'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2022-03-16 02:41:39','2022-03-16 02:41:39'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2022-03-16 02:41:39','2022-03-16 02:41:39'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2022-03-16 02:41:39','2022-03-16 02:41:39'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2022-03-16 02:41:39','2022-03-16 02:41:39'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2022-03-16 02:41:39','2022-03-16 02:41:39'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2022-03-16 02:41:39','2022-03-16 02:41:39');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` int NOT NULL,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
INSERT INTO `faqs_translations` VALUES ('vi',1,'Có những phương thức vận chuyển nào?','Ex Portland Pitchfork irure ria mép. Eutra fap trước khi họ bán hết theo đúng nghĩa đen. Aliquip ugh quyền xe đạp thực sự mlkshk, rượu bia thủ công mực seitan. '),('vi',2,'Bạn có giao hàng quốc tế không?','Áo hoodie túi tote Tofu mixtape. Quần đùi jean đánh chữ Wolf quinoa, túi messenger hữu cơ freegan cray. '),('vi',3,'Mất bao lâu để nhận được gói hàng của tôi?','Bữa nửa buổi ăn sáng bằng bụng heo quay từ máy đánh chữ VHS, cà phê có nguồn gốc đơn Paleo, Wes Anderson. Khoan Pitchfork linh hoạt, theo nghĩa đen là đổ qua fap theo nghĩa đen. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray bền vững slow-carb raw denim Church-key fap chillwave Etsy. +1 bộ dụng cụ đánh máy, đậu phụ Banksy Vice của American Apparel. '),('vi',4,'Phương thức thanh toán nào được chấp nhận?','Fashion Axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Quầy ảnh Voluptate fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur ria mép. Twee chia gian hàng chụp ảnh xe bán đồ ăn sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. '),('vi',5,'Mua trực tuyến có an toàn không?','Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia credit. Tiệc trên mái nhà Neutra Austin Brooklyn, Thundercats swag synth gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. '),('vi',6,'Làm cách nào để đặt hàng?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Định mức seitan trong tương lai. Master làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt chậm carb cấp độ tiếp theo. Vải thô denim polaroid nhạt từ trang trại đến bàn, đặt một con chim trên đó hình xăm lo-fi Wes Anderson Pinterest letterpress. Bậc thầy gian hàng ảnh Schlitz của Fingerstache McSweeney đang làm sạch thẻ bắt đầu bằng hashtag theo yêu cầu riêng, chillwave gentrify. '),('vi',7,'Làm cách nào để tôi có thể hủy hoặc thay đổi đơn hàng của mình?','Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia tín. Tiệc trên mái nhà Neutra Austin ở Brooklyn, synth Thundercats có gian hàng ảnh 8-bit. '),('vi',8,'Tôi có cần tài khoản để đặt hàng không?','Thundercats làm lung lay gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Twee chia ảnh gian hàng xe bán thức ăn làm sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. Cray ugh 3 wolf moon fap, rìu thời trang mỉa mai người bán thịt máy đánh chữ chambray VHS banjo nghệ thuật đường phố. '),('vi',9,'Làm cách nào để theo dõi đơn hàng của tôi?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Định mức seitan trong tương lai. Bậc thầy làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt theo kiểu chậm carb cấp độ tiếp theo. '),('vi',10,'Làm cách nào để trả lại sản phẩm?','Kale chips Truffaut Williamsburg, fixie hashtag Pinterest raw denim c hambray uống giấm Carles street art Bushwick gastropub. Chìa khóa nhà thờ Wolf Tumblr. Xe tải thực phẩm kẻ sọc Echo Park YOLO cắn hella, giao dịch trực tiếp Thundercats legging quinoa trước khi bán hết. Có thể bạn chưa từng nghe nói về họ những người truyền bá vị umami đích thực uống giấm Pinterest Áo len Cosby, fingerstache fap High Life. ');
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','92fcd8b43212d9f1bc83c866b413f161',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','739d3020a836759e75fb3469c8d7218c',2,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(3,'en_US','64dc4173d29df61125b30558cb939d2b',3,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(4,'en_US','cfa912d7bdbe28c2bea645c87536fdf6',4,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(5,'en_US','e7fe8aca0199d3c1a0ea78a6824e4db9',5,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(6,'en_US','1a49623831e1e9f67448f62ac1012d94',6,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(7,'en_US','70ac15049e1cd524d1f1b7c3ca6da327',7,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(8,'vi','92fcd8b43212d9f1bc83c866b413f161',8,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(9,'vi','739d3020a836759e75fb3469c8d7218c',9,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(10,'vi','64dc4173d29df61125b30558cb939d2b',10,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(11,'vi','cfa912d7bdbe28c2bea645c87536fdf6',11,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(12,'vi','e7fe8aca0199d3c1a0ea78a6824e4db9',12,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(13,'vi','1a49623831e1e9f67448f62ac1012d94',13,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(14,'vi','70ac15049e1cd524d1f1b7c3ca6da327',14,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(15,'en_US','48858465ef8602fab7cadfe776cc0e40',1,'Botble\\Menu\\Models\\MenuLocation'),(16,'en_US','a0ecb363dab9e5c2ea98b53ed2954e92',1,'Botble\\Menu\\Models\\Menu'),(17,'en_US','fd2cbb0a7fc1081dc0755536b6d0d979',2,'Botble\\Menu\\Models\\MenuLocation'),(18,'en_US','e0d3d24f18b44675f8c7b1b397c061cd',2,'Botble\\Menu\\Models\\Menu'),(19,'en_US','5a6039393073410c984b60c2a5f43d83',3,'Botble\\Menu\\Models\\Menu'),(20,'en_US','e9a5c25bc687410820db37a819fabed9',4,'Botble\\Menu\\Models\\Menu'),(21,'en_US','72b164ac58345d7cdbacf3f714f6bd31',5,'Botble\\Menu\\Models\\Menu'),(22,'vi','fa57f119cd6385a9f97c5cda710c7634',3,'Botble\\Menu\\Models\\MenuLocation'),(23,'vi','a0ecb363dab9e5c2ea98b53ed2954e92',6,'Botble\\Menu\\Models\\Menu'),(24,'vi','3cbcad40892cb704e11d0f40f1537b90',4,'Botble\\Menu\\Models\\MenuLocation'),(25,'vi','e0d3d24f18b44675f8c7b1b397c061cd',7,'Botble\\Menu\\Models\\Menu'),(26,'vi','5a6039393073410c984b60c2a5f43d83',8,'Botble\\Menu\\Models\\Menu'),(27,'vi','e9a5c25bc687410820db37a819fabed9',9,'Botble\\Menu\\Models\\Menu'),(28,'vi','72b164ac58345d7cdbacf3f714f6bd31',10,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta_backup`
--

DROP TABLE IF EXISTS `language_meta_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta_backup` (
  `lang_meta_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta_backup`
--

LOCK TABLES `language_meta_backup` WRITE;
/*!40000 ALTER TABLE `language_meta_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `language_meta_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0),(2,'Tiếng Việt','vi','vi','vn',0,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_folder_id_user_id_created_at_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'icon-1',1,'image/png',4323,'product-categories/icon-1.png','[]','2022-03-16 02:40:43','2022-03-16 02:40:43',NULL),(2,0,'icon-10',1,'image/png',4357,'product-categories/icon-10.png','[]','2022-03-16 02:40:43','2022-03-16 02:40:43',NULL),(3,0,'icon-11',1,'image/png',2024,'product-categories/icon-11.png','[]','2022-03-16 02:40:43','2022-03-16 02:40:43',NULL),(4,0,'icon-12',1,'image/png',3531,'product-categories/icon-12.png','[]','2022-03-16 02:40:43','2022-03-16 02:40:43',NULL),(5,0,'icon-13',1,'image/png',2344,'product-categories/icon-13.png','[]','2022-03-16 02:40:43','2022-03-16 02:40:43',NULL),(6,0,'icon-14',1,'image/png',2314,'product-categories/icon-14.png','[]','2022-03-16 02:40:44','2022-03-16 02:40:44',NULL),(7,0,'icon-2',1,'image/png',3204,'product-categories/icon-2.png','[]','2022-03-16 02:40:44','2022-03-16 02:40:44',NULL),(8,0,'icon-3',1,'image/png',4184,'product-categories/icon-3.png','[]','2022-03-16 02:40:44','2022-03-16 02:40:44',NULL),(9,0,'icon-4',1,'image/png',4648,'product-categories/icon-4.png','[]','2022-03-16 02:40:44','2022-03-16 02:40:44',NULL),(10,0,'icon-5',1,'image/png',4594,'product-categories/icon-5.png','[]','2022-03-16 02:40:44','2022-03-16 02:40:44',NULL),(11,0,'icon-6',1,'image/png',3518,'product-categories/icon-6.png','[]','2022-03-16 02:40:45','2022-03-16 02:40:45',NULL),(12,0,'icon-7',1,'image/png',3829,'product-categories/icon-7.png','[]','2022-03-16 02:40:45','2022-03-16 02:40:45',NULL),(13,0,'icon-8',1,'image/png',4815,'product-categories/icon-8.png','[]','2022-03-16 02:40:45','2022-03-16 02:40:45',NULL),(14,0,'icon-9',1,'image/png',3126,'product-categories/icon-9.png','[]','2022-03-16 02:40:45','2022-03-16 02:40:45',NULL),(15,0,'image-1',1,'image/png',25796,'product-categories/image-1.png','[]','2022-03-16 02:40:45','2022-03-16 02:40:45',NULL),(16,0,'image-10',1,'image/png',13714,'product-categories/image-10.png','[]','2022-03-16 02:40:45','2022-03-16 02:40:45',NULL),(17,0,'image-11',1,'image/png',18723,'product-categories/image-11.png','[]','2022-03-16 02:40:46','2022-03-16 02:40:46',NULL),(18,0,'image-12',1,'image/png',19482,'product-categories/image-12.png','[]','2022-03-16 02:40:46','2022-03-16 02:40:46',NULL),(19,0,'image-13',1,'image/png',19312,'product-categories/image-13.png','[]','2022-03-16 02:40:46','2022-03-16 02:40:46',NULL),(20,0,'image-14',1,'image/png',19593,'product-categories/image-14.png','[]','2022-03-16 02:40:46','2022-03-16 02:40:46',NULL),(21,0,'image-15',1,'image/png',17706,'product-categories/image-15.png','[]','2022-03-16 02:40:46','2022-03-16 02:40:46',NULL),(22,0,'image-2',1,'image/png',19956,'product-categories/image-2.png','[]','2022-03-16 02:40:46','2022-03-16 02:40:46',NULL),(23,0,'image-3',1,'image/png',20032,'product-categories/image-3.png','[]','2022-03-16 02:40:47','2022-03-16 02:40:47',NULL),(24,0,'image-4',1,'image/png',18475,'product-categories/image-4.png','[]','2022-03-16 02:40:47','2022-03-16 02:40:47',NULL),(25,0,'image-5',1,'image/png',16666,'product-categories/image-5.png','[]','2022-03-16 02:40:47','2022-03-16 02:40:47',NULL),(26,0,'image-6',1,'image/png',15381,'product-categories/image-6.png','[]','2022-03-16 02:40:47','2022-03-16 02:40:47',NULL),(27,0,'image-7',1,'image/png',13804,'product-categories/image-7.png','[]','2022-03-16 02:40:47','2022-03-16 02:40:47',NULL),(28,0,'image-8',1,'image/png',17392,'product-categories/image-8.png','[]','2022-03-16 02:40:48','2022-03-16 02:40:48',NULL),(29,0,'image-9',1,'image/png',17729,'product-categories/image-9.png','[]','2022-03-16 02:40:48','2022-03-16 02:40:48',NULL),(30,0,'1-1',2,'image/jpeg',77048,'products/1-1.jpg','[]','2022-03-16 02:40:49','2022-03-16 02:40:49',NULL),(31,0,'1',2,'image/jpeg',80718,'products/1.jpg','[]','2022-03-16 02:40:49','2022-03-16 02:40:49',NULL),(32,0,'10-1',2,'image/jpeg',105100,'products/10-1.jpg','[]','2022-03-16 02:40:49','2022-03-16 02:40:49',NULL),(33,0,'10',2,'image/jpeg',117642,'products/10.jpg','[]','2022-03-16 02:40:49','2022-03-16 02:40:49',NULL),(34,0,'11-1',2,'image/jpeg',45724,'products/11-1.jpg','[]','2022-03-16 02:40:50','2022-03-16 02:40:50',NULL),(35,0,'11',2,'image/jpeg',46272,'products/11.jpg','[]','2022-03-16 02:40:50','2022-03-16 02:40:50',NULL),(36,0,'12-1',2,'image/jpeg',72251,'products/12-1.jpg','[]','2022-03-16 02:40:50','2022-03-16 02:40:50',NULL),(37,0,'12',2,'image/jpeg',71309,'products/12.jpg','[]','2022-03-16 02:40:51','2022-03-16 02:40:51',NULL),(38,0,'13-1',2,'image/jpeg',32608,'products/13-1.jpg','[]','2022-03-16 02:40:51','2022-03-16 02:40:51',NULL),(39,0,'13',2,'image/jpeg',33526,'products/13.jpg','[]','2022-03-16 02:40:51','2022-03-16 02:40:51',NULL),(40,0,'14-1',2,'image/jpeg',64893,'products/14-1.jpg','[]','2022-03-16 02:40:52','2022-03-16 02:40:52',NULL),(41,0,'14',2,'image/jpeg',53642,'products/14.jpg','[]','2022-03-16 02:40:52','2022-03-16 02:40:52',NULL),(42,0,'15-1',2,'image/jpeg',93293,'products/15-1.jpg','[]','2022-03-16 02:40:52','2022-03-16 02:40:52',NULL),(43,0,'15',2,'image/jpeg',70399,'products/15.jpg','[]','2022-03-16 02:40:53','2022-03-16 02:40:53',NULL),(44,0,'16-1',2,'image/jpeg',59168,'products/16-1.jpg','[]','2022-03-16 02:40:53','2022-03-16 02:40:53',NULL),(45,0,'16-2',2,'image/jpeg',74882,'products/16-2.jpg','[]','2022-03-16 02:40:53','2022-03-16 02:40:53',NULL),(46,0,'16-3',2,'image/jpeg',71574,'products/16-3.jpg','[]','2022-03-16 02:40:54','2022-03-16 02:40:54',NULL),(47,0,'16-4',2,'image/jpeg',87131,'products/16-4.jpg','[]','2022-03-16 02:40:54','2022-03-16 02:40:54',NULL),(48,0,'16-5',2,'image/jpeg',59849,'products/16-5.jpg','[]','2022-03-16 02:40:54','2022-03-16 02:40:54',NULL),(49,0,'16-6',2,'image/jpeg',91691,'products/16-6.jpg','[]','2022-03-16 02:40:54','2022-03-16 02:40:54',NULL),(50,0,'16',2,'image/jpeg',100953,'products/16.jpg','[]','2022-03-16 02:40:55','2022-03-16 02:40:55',NULL),(51,0,'17-1',2,'image/jpeg',17816,'products/17-1.jpg','[]','2022-03-16 02:40:55','2022-03-16 02:40:55',NULL),(52,0,'17',2,'image/jpeg',17551,'products/17.jpg','[]','2022-03-16 02:40:55','2022-03-16 02:40:55',NULL),(53,0,'18-1',2,'image/jpeg',13352,'products/18-1.jpg','[]','2022-03-16 02:40:55','2022-03-16 02:40:55',NULL),(54,0,'18',2,'image/jpeg',20319,'products/18.jpg','[]','2022-03-16 02:40:56','2022-03-16 02:40:56',NULL),(55,0,'19-1',2,'image/jpeg',22960,'products/19-1.jpg','[]','2022-03-16 02:40:56','2022-03-16 02:40:56',NULL),(56,0,'19',2,'image/jpeg',15156,'products/19.jpg','[]','2022-03-16 02:40:56','2022-03-16 02:40:56',NULL),(57,0,'2-1',2,'image/jpeg',56143,'products/2-1.jpg','[]','2022-03-16 02:40:56','2022-03-16 02:40:56',NULL),(58,0,'2',2,'image/jpeg',64331,'products/2.jpg','[]','2022-03-16 02:40:56','2022-03-16 02:40:56',NULL),(59,0,'20-1',2,'image/jpeg',27985,'products/20-1.jpg','[]','2022-03-16 02:40:57','2022-03-16 02:40:57',NULL),(60,0,'20',2,'image/jpeg',18065,'products/20.jpg','[]','2022-03-16 02:40:57','2022-03-16 02:40:57',NULL),(61,0,'21-1',2,'image/jpeg',28003,'products/21-1.jpg','[]','2022-03-16 02:40:57','2022-03-16 02:40:57',NULL),(62,0,'21',2,'image/jpeg',18198,'products/21.jpg','[]','2022-03-16 02:40:57','2022-03-16 02:40:57',NULL),(63,0,'22-1',2,'image/jpeg',28621,'products/22-1.jpg','[]','2022-03-16 02:40:57','2022-03-16 02:40:57',NULL),(64,0,'22',2,'image/jpeg',19002,'products/22.jpg','[]','2022-03-16 02:40:57','2022-03-16 02:40:57',NULL),(65,0,'23-1',2,'image/jpeg',35525,'products/23-1.jpg','[]','2022-03-16 02:40:58','2022-03-16 02:40:58',NULL),(66,0,'23',2,'image/jpeg',19227,'products/23.jpg','[]','2022-03-16 02:40:58','2022-03-16 02:40:58',NULL),(67,0,'24-1',2,'image/jpeg',20531,'products/24-1.jpg','[]','2022-03-16 02:40:58','2022-03-16 02:40:58',NULL),(68,0,'24',2,'image/jpeg',10609,'products/24.jpg','[]','2022-03-16 02:40:58','2022-03-16 02:40:58',NULL),(69,0,'3-1',2,'image/jpeg',79350,'products/3-1.jpg','[]','2022-03-16 02:40:58','2022-03-16 02:40:58',NULL),(70,0,'3',2,'image/jpeg',89626,'products/3.jpg','[]','2022-03-16 02:40:59','2022-03-16 02:40:59',NULL),(71,0,'4-1',2,'image/jpeg',58354,'products/4-1.jpg','[]','2022-03-16 02:40:59','2022-03-16 02:40:59',NULL),(72,0,'4',2,'image/jpeg',76935,'products/4.jpg','[]','2022-03-16 02:40:59','2022-03-16 02:40:59',NULL),(73,0,'5-1',2,'image/jpeg',91691,'products/5-1.jpg','[]','2022-03-16 02:41:00','2022-03-16 02:41:00',NULL),(74,0,'5',2,'image/jpeg',100953,'products/5.jpg','[]','2022-03-16 02:41:00','2022-03-16 02:41:00',NULL),(75,0,'6-1',2,'image/jpeg',74851,'products/6-1.jpg','[]','2022-03-16 02:41:00','2022-03-16 02:41:00',NULL),(76,0,'6',2,'image/jpeg',89464,'products/6.jpg','[]','2022-03-16 02:41:01','2022-03-16 02:41:01',NULL),(77,0,'7-1',2,'image/jpeg',66135,'products/7-1.jpg','[]','2022-03-16 02:41:01','2022-03-16 02:41:01',NULL),(78,0,'7',2,'image/jpeg',71573,'products/7.jpg','[]','2022-03-16 02:41:01','2022-03-16 02:41:01',NULL),(79,0,'8-1',2,'image/jpeg',41283,'products/8-1.jpg','[]','2022-03-16 02:41:02','2022-03-16 02:41:02',NULL),(80,0,'8',2,'image/jpeg',33964,'products/8.jpg','[]','2022-03-16 02:41:02','2022-03-16 02:41:02',NULL),(81,0,'9-1',2,'image/jpeg',78790,'products/9-1.jpg','[]','2022-03-16 02:41:02','2022-03-16 02:41:02',NULL),(82,0,'9',2,'image/jpeg',84813,'products/9.jpg','[]','2022-03-16 02:41:03','2022-03-16 02:41:03',NULL),(83,0,'1',3,'image/jpeg',274660,'customers/1.jpg','[]','2022-03-16 02:41:05','2022-03-16 02:41:05',NULL),(84,0,'2',3,'image/jpeg',295031,'customers/2.jpg','[]','2022-03-16 02:41:05','2022-03-16 02:41:05',NULL),(85,0,'3',3,'image/jpeg',183576,'customers/3.jpg','[]','2022-03-16 02:41:05','2022-03-16 02:41:05',NULL),(86,0,'4',3,'image/jpeg',245360,'customers/4.jpg','[]','2022-03-16 02:41:05','2022-03-16 02:41:05',NULL),(87,0,'5',3,'image/jpeg',262908,'customers/5.jpg','[]','2022-03-16 02:41:06','2022-03-16 02:41:06',NULL),(88,0,'6',3,'image/jpeg',109600,'customers/6.jpg','[]','2022-03-16 02:41:06','2022-03-16 02:41:06',NULL),(89,0,'7',3,'image/jpeg',159280,'customers/7.jpg','[]','2022-03-16 02:41:06','2022-03-16 02:41:06',NULL),(90,0,'8',3,'image/jpeg',99998,'customers/8.jpg','[]','2022-03-16 02:41:07','2022-03-16 02:41:07',NULL),(96,0,'1-1',5,'image/png',519229,'sliders/1-1.png','[]','2022-03-16 02:41:13','2022-03-16 02:41:13',NULL),(97,0,'1-2',5,'image/png',468469,'sliders/1-2.png','[]','2022-03-16 02:41:14','2022-03-16 02:41:14',NULL),(98,0,'1-3',5,'image/png',2697,'sliders/1-3.png','[]','2022-03-16 02:41:15','2022-03-16 02:41:15',NULL),(99,0,'2-1',5,'image/png',159240,'sliders/2-1.png','[]','2022-03-16 02:41:15','2022-03-16 02:41:15',NULL),(100,0,'2-2',5,'image/png',113574,'sliders/2-2.png','[]','2022-03-16 02:41:16','2022-03-16 02:41:16',NULL),(101,0,'2-3',5,'image/png',2697,'sliders/2-3.png','[]','2022-03-16 02:41:16','2022-03-16 02:41:16',NULL),(102,0,'3-1',5,'image/png',519229,'sliders/3-1.png','[]','2022-03-16 02:41:16','2022-03-16 02:41:16',NULL),(103,0,'3-2',5,'image/png',468469,'sliders/3-2.png','[]','2022-03-16 02:41:17','2022-03-16 02:41:17',NULL),(104,0,'4-1',5,'image/png',618556,'sliders/4-1.png','[]','2022-03-16 02:41:18','2022-03-16 02:41:18',NULL),(105,0,'4-2',5,'image/png',949745,'sliders/4-2.png','[]','2022-03-16 02:41:18','2022-03-16 02:41:18',NULL),(106,0,'4-3',5,'image/png',2697,'sliders/4-3.png','[]','2022-03-16 02:41:19','2022-03-16 02:41:19',NULL),(107,0,'5-1',5,'image/png',1273599,'sliders/5-1.png','[]','2022-03-16 02:41:20','2022-03-16 02:41:20',NULL),(108,0,'5-2',5,'image/png',695846,'sliders/5-2.png','[]','2022-03-16 02:41:20','2022-03-16 02:41:20',NULL),(109,0,'banner-1',5,'image/png',104000,'sliders/banner-1.png','[]','2022-03-16 02:41:21','2022-03-16 02:41:21',NULL),(110,0,'thumbnail-1',5,'image/jpeg',28966,'sliders/thumbnail-1.jpg','[]','2022-03-16 02:41:22','2022-03-16 02:41:22',NULL),(111,0,'thumbnail-2',5,'image/jpeg',13975,'sliders/thumbnail-2.jpg','[]','2022-03-16 02:41:22','2022-03-16 02:41:22',NULL),(112,0,'thumbnail-3',5,'image/jpeg',15751,'sliders/thumbnail-3.jpg','[]','2022-03-16 02:41:22','2022-03-16 02:41:22',NULL),(113,0,'thumbnail-4',5,'image/jpeg',16846,'sliders/thumbnail-4.jpg','[]','2022-03-16 02:41:22','2022-03-16 02:41:22',NULL),(114,0,'thumbnail-5',5,'image/jpeg',24938,'sliders/thumbnail-5.jpg','[]','2022-03-16 02:41:23','2022-03-16 02:41:23',NULL),(115,0,'thumbnail-6',5,'image/jpeg',63412,'sliders/thumbnail-6.jpg','[]','2022-03-16 02:41:23','2022-03-16 02:41:23',NULL),(116,0,'1',6,'image/png',533812,'news/1.png','[]','2022-03-16 02:41:23','2022-03-16 02:41:23',NULL),(117,0,'10',6,'image/png',439491,'news/10.png','[]','2022-03-16 02:41:24','2022-03-16 02:41:24',NULL),(118,0,'11',6,'image/png',593219,'news/11.png','[]','2022-03-16 02:41:25','2022-03-16 02:41:25',NULL),(119,0,'2',6,'image/png',633277,'news/2.png','[]','2022-03-16 02:41:26','2022-03-16 02:41:26',NULL),(120,0,'3',6,'image/png',372986,'news/3.png','[]','2022-03-16 02:41:26','2022-03-16 02:41:26',NULL),(121,0,'4',6,'image/png',438363,'news/4.png','[]','2022-03-16 02:41:27','2022-03-16 02:41:27',NULL),(122,0,'5',6,'image/png',483356,'news/5.png','[]','2022-03-16 02:41:28','2022-03-16 02:41:28',NULL),(123,0,'6',6,'image/png',502720,'news/6.png','[]','2022-03-16 02:41:29','2022-03-16 02:41:29',NULL),(124,0,'7',6,'image/png',465225,'news/7.png','[]','2022-03-16 02:41:30','2022-03-16 02:41:30',NULL),(125,0,'8',6,'image/png',489034,'news/8.png','[]','2022-03-16 02:41:31','2022-03-16 02:41:31',NULL),(126,0,'9',6,'image/png',328817,'news/9.png','[]','2022-03-16 02:41:32','2022-03-16 02:41:32',NULL),(127,0,'1',7,'image/png',50119,'promotion/1.png','[]','2022-03-16 02:41:33','2022-03-16 02:41:33',NULL),(128,0,'10',7,'image/png',108470,'promotion/10.png','[]','2022-03-16 02:41:34','2022-03-16 02:41:34',NULL),(129,0,'11',7,'image/png',106453,'promotion/11.png','[]','2022-03-16 02:41:34','2022-03-16 02:41:34',NULL),(130,0,'12',7,'image/png',104430,'promotion/12.png','[]','2022-03-16 02:41:35','2022-03-16 02:41:35',NULL),(131,0,'2',7,'image/png',38339,'promotion/2.png','[]','2022-03-16 02:41:36','2022-03-16 02:41:36',NULL),(132,0,'3',7,'image/png',65066,'promotion/3.png','[]','2022-03-16 02:41:36','2022-03-16 02:41:36',NULL),(133,0,'4',7,'image/png',62462,'promotion/4.png','[]','2022-03-16 02:41:36','2022-03-16 02:41:36',NULL),(134,0,'5',7,'image/png',190175,'promotion/5.png','[]','2022-03-16 02:41:37','2022-03-16 02:41:37',NULL),(135,0,'6',7,'image/png',190175,'promotion/6.png','[]','2022-03-16 02:41:37','2022-03-16 02:41:37',NULL),(136,0,'7',7,'image/png',272480,'promotion/7.png','[]','2022-03-16 02:41:38','2022-03-16 02:41:38',NULL),(137,0,'8',7,'image/png',73547,'promotion/8.png','[]','2022-03-16 02:41:38','2022-03-16 02:41:38',NULL),(138,0,'9',7,'image/png',126894,'promotion/9.png','[]','2022-03-16 02:41:39','2022-03-16 02:41:39',NULL),(139,0,'app-store',8,'image/jpeg',29714,'general/app-store.jpg','[]','2022-03-16 02:41:40','2022-03-16 02:41:40',NULL),(140,0,'category-1',8,'image/png',4323,'general/category-1.png','[]','2022-03-16 02:41:40','2022-03-16 02:41:40',NULL),(141,0,'facebook',8,'image/png',646,'general/facebook.png','[]','2022-03-16 02:41:40','2022-03-16 02:41:40',NULL),(142,0,'favicon',8,'image/png',3890,'general/favicon.png','[]','2022-03-16 02:41:40','2022-03-16 02:41:40',NULL),(143,0,'google-play',8,'image/jpeg',29477,'general/google-play.jpg','[]','2022-03-16 02:41:40','2022-03-16 02:41:40',NULL),(144,0,'header-bg',8,'image/png',16995,'general/header-bg.png','[]','2022-03-16 02:41:40','2022-03-16 02:41:40',NULL),(145,0,'home-6',8,'image/jpeg',799491,'general/home-6.jpeg','[]','2022-03-16 02:41:41','2022-03-16 02:41:41',NULL),(146,0,'icon-1',8,'image/png',2024,'general/icon-1.png','[]','2022-03-16 02:41:41','2022-03-16 02:41:41',NULL),(147,0,'icon-2',8,'image/png',3531,'general/icon-2.png','[]','2022-03-16 02:41:41','2022-03-16 02:41:41',NULL),(148,0,'icon-3',8,'image/png',2344,'general/icon-3.png','[]','2022-03-16 02:41:41','2022-03-16 02:41:41',NULL),(149,0,'icon-4',8,'image/png',2314,'general/icon-4.png','[]','2022-03-16 02:41:42','2022-03-16 02:41:42',NULL),(150,0,'icon-5',8,'image/png',2853,'general/icon-5.png','[]','2022-03-16 02:41:42','2022-03-16 02:41:42',NULL),(151,0,'instagram',8,'image/png',2586,'general/instagram.png','[]','2022-03-16 02:41:42','2022-03-16 02:41:42',NULL),(152,0,'loading',8,'image/gif',25062,'general/loading.gif','[]','2022-03-16 02:41:42','2022-03-16 02:41:42',NULL),(153,0,'login-1',8,'image/png',270812,'general/login-1.png','[]','2022-03-16 02:41:42','2022-03-16 02:41:42',NULL),(154,0,'logo',8,'image/png',7698,'general/logo.png','[]','2022-03-16 02:41:43','2022-03-16 02:41:43',NULL),(155,0,'newsletter-background-image',8,'image/png',28409,'general/newsletter-background-image.png','[]','2022-03-16 02:41:43','2022-03-16 02:41:43',NULL),(156,0,'newsletter-image',8,'image/png',116235,'general/newsletter-image.png','[]','2022-03-16 02:41:44','2022-03-16 02:41:44',NULL),(157,0,'open-graph-image',8,'image/png',436809,'general/open-graph-image.png','[]','2022-03-16 02:41:44','2022-03-16 02:41:44',NULL),(158,0,'payment-methods',8,'image/png',10634,'general/payment-methods.png','[]','2022-03-16 02:41:44','2022-03-16 02:41:44',NULL),(159,0,'pinterest',8,'image/png',2128,'general/pinterest.png','[]','2022-03-16 02:41:44','2022-03-16 02:41:44',NULL),(160,0,'twitter',8,'image/png',1759,'general/twitter.png','[]','2022-03-16 02:41:45','2022-03-16 02:41:45',NULL),(161,0,'youtube',8,'image/png',1083,'general/youtube.png','[]','2022-03-16 02:41:45','2022-03-16 02:41:45',NULL),(162,0,'1',9,'image/png',11920,'stores/1.png','[]','2022-03-16 02:41:45','2022-03-16 02:41:45',NULL),(163,0,'10',9,'image/png',6583,'stores/10.png','[]','2022-03-16 02:41:45','2022-03-16 02:41:45',NULL),(164,0,'11',9,'image/png',6934,'stores/11.png','[]','2022-03-16 02:41:45','2022-03-16 02:41:45',NULL),(165,0,'12',9,'image/png',7396,'stores/12.png','[]','2022-03-16 02:41:46','2022-03-16 02:41:46',NULL),(166,0,'13',9,'image/png',5881,'stores/13.png','[]','2022-03-16 02:41:46','2022-03-16 02:41:46',NULL),(167,0,'14',9,'image/png',7188,'stores/14.png','[]','2022-03-16 02:41:46','2022-03-16 02:41:46',NULL),(168,0,'15',9,'image/png',7142,'stores/15.png','[]','2022-03-16 02:41:46','2022-03-16 02:41:46',NULL),(169,0,'16',9,'image/png',4659,'stores/16.png','[]','2022-03-16 02:41:46','2022-03-16 02:41:46',NULL),(170,0,'17',9,'image/png',6781,'stores/17.png','[]','2022-03-16 02:41:46','2022-03-16 02:41:46',NULL),(171,0,'2',9,'image/png',12300,'stores/2.png','[]','2022-03-16 02:41:47','2022-03-16 02:41:47',NULL),(172,0,'3',9,'image/png',10778,'stores/3.png','[]','2022-03-16 02:41:47','2022-03-16 02:41:47',NULL),(173,0,'4',9,'image/png',10771,'stores/4.png','[]','2022-03-16 02:41:47','2022-03-16 02:41:47',NULL),(174,0,'5',9,'image/png',13041,'stores/5.png','[]','2022-03-16 02:41:47','2022-03-16 02:41:47',NULL),(175,0,'6',9,'image/png',14006,'stores/6.png','[]','2022-03-16 02:41:47','2022-03-16 02:41:47',NULL),(176,0,'7',9,'image/png',5978,'stores/7.png','[]','2022-03-16 02:41:48','2022-03-16 02:41:48',NULL),(177,0,'8',9,'image/png',6586,'stores/8.png','[]','2022-03-16 02:41:48','2022-03-16 02:41:48',NULL),(178,0,'9',9,'image/png',6173,'stores/9.png','[]','2022-03-16 02:41:48','2022-03-16 02:41:48',NULL),(189,0,'1',12,'image/png',431894,'flash-sales/1.png','[]','2022-04-20 20:19:49','2022-04-20 20:19:49',NULL),(190,0,'2',12,'image/png',118543,'flash-sales/2.png','[]','2022-04-20 20:19:50','2022-04-20 20:19:50',NULL),(191,0,'3',12,'image/png',163085,'flash-sales/3.png','[]','2022-04-20 20:19:51','2022-04-20 20:19:51',NULL),(192,0,'4',12,'image/png',195017,'flash-sales/4.png','[]','2022-04-20 20:19:51','2022-04-20 20:19:51',NULL),(193,0,'5',12,'image/png',153833,'flash-sales/5.png','[]','2022-04-20 20:19:52','2022-04-20 20:19:52',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_parent_id_user_id_created_at_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'product-categories','product-categories',0,'2022-03-16 02:40:43','2022-03-16 02:40:43',NULL),(2,0,'products','products',0,'2022-03-16 02:40:49','2022-03-16 02:40:49',NULL),(3,0,'customers','customers',0,'2022-03-16 02:41:05','2022-03-16 02:41:05',NULL),(5,0,'sliders','sliders',0,'2022-03-16 02:41:13','2022-03-16 02:41:13',NULL),(6,0,'news','news',0,'2022-03-16 02:41:23','2022-03-16 02:41:23',NULL),(7,0,'promotion','promotion',0,'2022-03-16 02:41:33','2022-03-16 02:41:33',NULL),(8,0,'general','general',0,'2022-03-16 02:41:40','2022-03-16 02:41:40',NULL),(9,0,'stores','stores',0,'2022-03-16 02:41:45','2022-03-16 02:41:45',NULL),(12,0,'flash-sales','flash-sales',0,'2022-04-20 20:19:49','2022-04-20 20:19:49',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `media_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `location` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2022-03-16 02:41:49','2022-03-16 02:41:49'),(2,2,'header-navigation','2022-03-16 02:41:49','2022-03-16 02:41:49'),(3,6,'main-menu','2022-03-16 02:41:49','2022-03-16 02:41:49'),(4,7,'header-navigation','2022-03-16 02:41:49','2022-03-16 02:41:49');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `reference_id` int unsigned DEFAULT NULL,
  `reference_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `menu_nodes_index` (`parent_id`,`reference_id`,`reference_type`,`has_child`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',1,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(2,1,1,1,'Botble\\Page\\Models\\Page','',NULL,0,'Home 1',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(3,1,1,2,'Botble\\Page\\Models\\Page','/homepage-2',NULL,0,'Home 2',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(4,1,1,3,'Botble\\Page\\Models\\Page','/homepage-3',NULL,0,'Home 3',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(5,1,1,4,'Botble\\Page\\Models\\Page','/homepage-4',NULL,0,'Home 4',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(6,1,1,16,'Botble\\Page\\Models\\Page','/homepage-5',NULL,0,'Home 5',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(7,1,1,17,'Botble\\Page\\Models\\Page','/homepage-6',NULL,0,'Home 6',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(8,1,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',1,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(9,1,8,NULL,NULL,'/products',NULL,0,'Shop Grid - Full Width',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(10,1,8,NULL,NULL,'/products?layout=product-right-sidebar',NULL,0,'Shop Grid - Right Sidebar',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(11,1,8,NULL,NULL,'/products?layout=product-left-sidebar',NULL,0,'Shop Grid - Left Sidebar',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(12,1,8,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Products Of Category',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(13,1,0,NULL,NULL,'/stores',NULL,0,'Stores',NULL,'_self',1,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(14,1,13,NULL,NULL,'/stores',NULL,0,'Stores - Grid',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(15,1,13,NULL,NULL,'/stores?layout=stores-list',NULL,0,'Stores - List',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(16,1,13,NULL,NULL,'/stores/gopro',NULL,0,'Store - Detail',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(17,1,0,NULL,NULL,'/products/seeds-of-change-organic-quinoe',NULL,0,'Product',NULL,'_self',1,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(18,1,17,NULL,NULL,'/products/seeds-of-change-organic-quinoe',NULL,0,'Product Right Sidebar',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(19,1,17,NULL,NULL,'/products/all-natural-italian-style-chicken-meatballs',NULL,0,'Product Left Sidebar',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(20,1,17,NULL,NULL,'/products/angies-boomchickapop-sweet-salty-kettle-corn',NULL,0,'Product Full Width',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(21,1,0,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',1,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(22,1,21,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog Grid',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(23,1,21,13,'Botble\\Page\\Models\\Page','/blog-list',NULL,0,'Blog List',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(24,1,21,14,'Botble\\Page\\Models\\Page','/blog-big',NULL,0,'Blog Big',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(25,1,21,15,'Botble\\Page\\Models\\Page','/blog-wide',NULL,0,'Blog Wide',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(26,1,21,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Single Post',NULL,'_self',1,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(27,1,26,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Single Post Right Sidebar',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(28,1,26,NULL,NULL,'/blog/sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',NULL,0,'Single Post Left Sidebar',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(29,1,26,NULL,NULL,'/blog/the-top-2020-handbag-trends-to-know',NULL,0,'Single Post Full Width',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(30,1,26,NULL,NULL,'/blog/how-to-match-the-color-of-your-handbag-with-an-outfit',NULL,0,'Single Post with Product Listing',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(31,1,0,18,'Botble\\Page\\Models\\Page','/faq',NULL,0,'FAQ',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(32,1,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(33,2,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About Us',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(34,2,0,NULL,NULL,'/orders/tracking',NULL,0,'Order Tracking',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(35,3,0,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Men',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(36,3,0,2,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/clothing-beauty',NULL,0,'Women',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(37,3,0,3,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/pet-toy',NULL,0,'Accessories',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(38,3,0,4,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/baking-material',NULL,0,'Shoes',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(39,3,0,5,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/fresh-fruit',NULL,0,'Denim',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(40,3,0,6,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/wines-drinks',NULL,0,'Dress',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(41,4,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact Us',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(42,4,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About Us',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(43,4,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Cookie Policy',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(44,4,0,9,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(45,4,0,10,'Botble\\Page\\Models\\Page','/returns-exchanges',NULL,0,'Returns & Exchanges',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(46,4,0,11,'Botble\\Page\\Models\\Page','/shipping-delivery',NULL,0,'Shipping & Delivery',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(47,4,0,12,'Botble\\Page\\Models\\Page','/privacy-policy',NULL,0,'Privacy Policy',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(48,5,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(49,5,0,NULL,NULL,'#',NULL,0,'Affiliate',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(50,5,0,NULL,NULL,'#',NULL,0,'Career',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(51,5,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact us',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(52,6,0,NULL,NULL,'/',NULL,0,'Trang chủ',NULL,'_self',1,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(53,6,52,1,'Botble\\Page\\Models\\Page','',NULL,0,'Trang chủ 1',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(54,6,52,2,'Botble\\Page\\Models\\Page','/homepage-2',NULL,0,'Trang chủ 2',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(55,6,52,3,'Botble\\Page\\Models\\Page','/homepage-3',NULL,0,'Trang chủ 3',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(56,6,52,4,'Botble\\Page\\Models\\Page','/homepage-4',NULL,0,'Trang chủ 4',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(57,6,52,16,'Botble\\Page\\Models\\Page','/homepage-5',NULL,0,'Trang chủ 5',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(58,6,52,17,'Botble\\Page\\Models\\Page','/homepage-6',NULL,0,'Trang chủ 6',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(59,6,0,NULL,NULL,'/products',NULL,0,'Bán hàng',NULL,'_self',1,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(60,6,59,NULL,NULL,'/products',NULL,0,'Tất cả sản phẩm',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(61,6,59,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Danh mục sản phẩm',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(62,6,0,NULL,NULL,'/stores',NULL,0,'Cửa hàng',NULL,'_self',1,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(63,6,62,NULL,NULL,'/stores',NULL,0,'Cửa hàng - Grid',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(64,6,62,NULL,NULL,'/stores?layout=stores-list',NULL,0,'Cửa hàng - List',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(65,6,62,NULL,NULL,'/stores/gopro',NULL,0,'Cửa hàng - Detail',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(66,6,0,NULL,NULL,'#',NULL,0,'Sản phẩm',NULL,'_self',1,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(67,6,66,NULL,NULL,'/products/seeds-of-change-organic-quinoe',NULL,0,'Sản phẩm Sidebar phải',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(68,6,66,NULL,NULL,'/products/all-natural-italian-style-chicken-meatballs',NULL,0,'Sản phẩm Sidebar trái',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(69,6,66,NULL,NULL,'/products/angies-boomchickapop-sweet-salty-kettle-corn',NULL,0,'Sản phẩm full width',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(70,6,0,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức',NULL,'_self',1,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(71,6,70,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức Sidebar phải',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(72,6,70,13,'Botble\\Page\\Models\\Page','/blog-list',NULL,0,'Tin tức Sidebar trái',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(73,6,70,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Bài viết Sidebar phải',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(74,6,70,NULL,NULL,'/blog/sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',NULL,0,'Bài viết Sidebar trái',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(75,6,70,NULL,NULL,'/blog/the-top-2020-handbag-trends-to-know',NULL,0,'Bài viết Full Width',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(76,6,70,NULL,NULL,'/blog/how-to-match-the-color-of-your-handbag-with-an-outfit',NULL,0,'Bài viết kèm sản phẩm',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(77,6,0,18,'Botble\\Page\\Models\\Page','/faq',NULL,0,'FAQ',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(78,6,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(79,7,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Về Chúng Tôi',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(80,7,0,NULL,NULL,'/orders/tracking',NULL,0,'Theo Dõi Đơn Hàng',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(81,8,0,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Sữa',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(82,8,0,2,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/clothing-beauty',NULL,0,'Quần áo và làm đẹp',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(83,8,0,3,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/pet-toy',NULL,0,'Đồ chơi thú cưng',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(84,8,0,4,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/baking-material',NULL,0,'Nguyên liệu làm bánh',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(85,8,0,5,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/fresh-fruit',NULL,0,'Trái cây tươi',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(86,8,0,6,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/wines-drinks',NULL,0,'Rượu & Đồ uống',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(87,9,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(88,9,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Về chúng tôi',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(89,9,0,9,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Điều khoản & quy định',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(90,9,0,10,'Botble\\Page\\Models\\Page','/returns-exchanges',NULL,0,'Chính sách đổi trả',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(91,9,0,11,'Botble\\Page\\Models\\Page','/shipping-delivery',NULL,0,'Chính sách vận chuyển',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(92,9,0,12,'Botble\\Page\\Models\\Page','/privacy-policy',NULL,0,'Chính sách bảo mật',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(93,10,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'Về chúng tôi',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(94,10,0,NULL,NULL,'#',NULL,0,'Tiếp thị liên kết',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(95,10,0,NULL,NULL,'#',NULL,0,'Tuyển dụng',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(96,10,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2022-03-16 02:41:49','2022-03-16 02:41:49');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2022-03-16 02:41:49','2022-03-16 02:41:49'),(2,'Header menu','header-menu','published','2022-03-16 02:41:49','2022-03-16 02:41:49'),(3,'Product categories','product-categories','published','2022-03-16 02:41:49','2022-03-16 02:41:49'),(4,'Information','information','published','2022-03-16 02:41:49','2022-03-16 02:41:49'),(5,'Company','company','published','2022-03-16 02:41:49','2022-03-16 02:41:49'),(6,'Menu chính','menu-chinh','published','2022-03-16 02:41:49','2022-03-16 02:41:49'),(7,'Menu trên cùng','menu-tren-cung','published','2022-03-16 02:41:49','2022-03-16 02:41:49'),(8,'Product categories','danh-muc-san-pham','published','2022-03-16 02:41:49','2022-03-16 02:41:49'),(9,'Information','thong-tin','published','2022-03-16 02:41:49','2022-03-16 02:41:49'),(10,'Công ty','cong-ty','published','2022-03-16 02:41:49','2022-03-16 02:41:49');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'icon_image','[\"product-categories\\/icon-1.png\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2022-03-16 02:40:48','2022-03-16 02:40:48'),(2,'background_color','[\"#F2FCE4\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2022-03-16 02:40:48','2022-03-16 02:40:48'),(3,'icon_image','[\"product-categories\\/icon-2.png\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2022-03-16 02:40:48','2022-03-16 02:40:48'),(4,'background_color','[\"#FFFCEB\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2022-03-16 02:40:48','2022-03-16 02:40:48'),(5,'icon_image','[\"product-categories\\/icon-3.png\"]',3,'Botble\\Ecommerce\\Models\\ProductCategory','2022-03-16 02:40:48','2022-03-16 02:40:48'),(6,'background_color','[\"#ECFFEC\"]',3,'Botble\\Ecommerce\\Models\\ProductCategory','2022-03-16 02:40:48','2022-03-16 02:40:48'),(7,'icon_image','[\"product-categories\\/icon-4.png\"]',4,'Botble\\Ecommerce\\Models\\ProductCategory','2022-03-16 02:40:48','2022-03-16 02:40:48'),(8,'background_color','[\"#FEEFEA\"]',4,'Botble\\Ecommerce\\Models\\ProductCategory','2022-03-16 02:40:48','2022-03-16 02:40:48'),(9,'icon_image','[\"product-categories\\/icon-5.png\"]',5,'Botble\\Ecommerce\\Models\\ProductCategory','2022-03-16 02:40:48','2022-03-16 02:40:48'),(10,'background_color','[\"#FFF3EB\"]',5,'Botble\\Ecommerce\\Models\\ProductCategory','2022-03-16 02:40:48','2022-03-16 02:40:48'),(11,'icon_image','[\"product-categories\\/icon-6.png\"]',6,'Botble\\Ecommerce\\Models\\ProductCategory','2022-03-16 02:40:48','2022-03-16 02:40:48'),(12,'background_color','[\"#FFF3FF\"]',6,'Botble\\Ecommerce\\Models\\ProductCategory','2022-03-16 02:40:48','2022-03-16 02:40:48'),(13,'icon_image','[\"product-categories\\/icon-7.png\"]',7,'Botble\\Ecommerce\\Models\\ProductCategory','2022-03-16 02:40:48','2022-03-16 02:40:48'),(14,'background_color','[\"#F2FCE4\"]',7,'Botble\\Ecommerce\\Models\\ProductCategory','2022-03-16 02:40:48','2022-03-16 02:40:48'),(15,'icon_image','[\"product-categories\\/icon-8.png\"]',8,'Botble\\Ecommerce\\Models\\ProductCategory','2022-03-16 02:40:48','2022-03-16 02:40:48'),(16,'background_color','[\"#FFFCEB\"]',8,'Botble\\Ecommerce\\Models\\ProductCategory','2022-03-16 02:40:48','2022-03-16 02:40:48'),(17,'icon_image','[\"product-categories\\/icon-9.png\"]',9,'Botble\\Ecommerce\\Models\\ProductCategory','2022-03-16 02:40:48','2022-03-16 02:40:48'),(18,'background_color','[\"#ECFFEC\"]',9,'Botble\\Ecommerce\\Models\\ProductCategory','2022-03-16 02:40:48','2022-03-16 02:40:48'),(19,'icon_image','[\"product-categories\\/icon-10.png\"]',10,'Botble\\Ecommerce\\Models\\ProductCategory','2022-03-16 02:40:48','2022-03-16 02:40:48'),(20,'background_color','[\"#FEEFEA\"]',10,'Botble\\Ecommerce\\Models\\ProductCategory','2022-03-16 02:40:48','2022-03-16 02:40:48'),(21,'icon_image','[\"product-categories\\/icon-11.png\"]',11,'Botble\\Ecommerce\\Models\\ProductCategory','2022-03-16 02:40:48','2022-03-16 02:40:48'),(22,'background_color','[\"#FFF3EB\"]',11,'Botble\\Ecommerce\\Models\\ProductCategory','2022-03-16 02:40:48','2022-03-16 02:40:48'),(23,'icon_image','[\"product-categories\\/icon-12.png\"]',12,'Botble\\Ecommerce\\Models\\ProductCategory','2022-03-16 02:40:48','2022-03-16 02:40:48'),(24,'background_color','[\"#FFF3FF\"]',12,'Botble\\Ecommerce\\Models\\ProductCategory','2022-03-16 02:40:48','2022-03-16 02:40:48'),(25,'icon_image','[\"product-categories\\/icon-13.png\"]',13,'Botble\\Ecommerce\\Models\\ProductCategory','2022-03-16 02:40:48','2022-03-16 02:40:48'),(26,'background_color','[\"#F2FCE4\"]',13,'Botble\\Ecommerce\\Models\\ProductCategory','2022-03-16 02:40:48','2022-03-16 02:40:48'),(27,'icon_image','[\"product-categories\\/icon-14.png\"]',14,'Botble\\Ecommerce\\Models\\ProductCategory','2022-03-16 02:40:48','2022-03-16 02:40:48'),(28,'background_color','[\"#FFFCEB\"]',14,'Botble\\Ecommerce\\Models\\ProductCategory','2022-03-16 02:40:48','2022-03-16 02:40:48'),(29,'layout','[\"product-right-sidebar\"]',1,'Botble\\Ecommerce\\Models\\Product','2022-03-16 02:41:04','2022-03-16 02:41:04'),(30,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2022-03-16 02:41:04','2022-03-16 02:41:04'),(31,'layout','[\"product-left-sidebar\"]',2,'Botble\\Ecommerce\\Models\\Product','2022-03-16 02:41:04','2022-03-16 02:41:04'),(32,'is_popular','[\"1\"]',2,'Botble\\Ecommerce\\Models\\Product','2022-03-16 02:41:04','2022-03-16 02:41:04'),(33,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2022-03-16 02:41:04','2022-03-16 02:41:04'),(34,'layout','[\"product-full-width\"]',3,'Botble\\Ecommerce\\Models\\Product','2022-03-16 02:41:04','2022-03-16 02:41:04'),(35,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2022-03-16 02:41:04','2022-03-16 02:41:04'),(36,'is_popular','[\"1\"]',4,'Botble\\Ecommerce\\Models\\Product','2022-03-16 02:41:04','2022-03-16 02:41:04'),(37,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2022-03-16 02:41:04','2022-03-16 02:41:04'),(38,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2022-03-16 02:41:04','2022-03-16 02:41:04'),(39,'is_popular','[\"1\"]',6,'Botble\\Ecommerce\\Models\\Product','2022-03-16 02:41:04','2022-03-16 02:41:04'),(40,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2022-03-16 02:41:04','2022-03-16 02:41:04'),(41,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2022-03-16 02:41:04','2022-03-16 02:41:04'),(42,'is_popular','[\"1\"]',8,'Botble\\Ecommerce\\Models\\Product','2022-03-16 02:41:04','2022-03-16 02:41:04'),(43,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2022-03-16 02:41:04','2022-03-16 02:41:04'),(44,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2022-03-16 02:41:04','2022-03-16 02:41:04'),(45,'is_popular','[\"1\"]',10,'Botble\\Ecommerce\\Models\\Product','2022-03-16 02:41:04','2022-03-16 02:41:04'),(46,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2022-03-16 02:41:04','2022-03-16 02:41:04'),(47,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2022-03-16 02:41:04','2022-03-16 02:41:04'),(48,'is_popular','[\"1\"]',12,'Botble\\Ecommerce\\Models\\Product','2022-03-16 02:41:04','2022-03-16 02:41:04'),(49,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2022-03-16 02:41:04','2022-03-16 02:41:04'),(50,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2022-03-16 02:41:04','2022-03-16 02:41:04'),(51,'is_popular','[\"1\"]',14,'Botble\\Ecommerce\\Models\\Product','2022-03-16 02:41:04','2022-03-16 02:41:04'),(52,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2022-03-16 02:41:04','2022-03-16 02:41:04'),(53,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2022-03-16 02:41:04','2022-03-16 02:41:04'),(54,'is_popular','[\"1\"]',16,'Botble\\Ecommerce\\Models\\Product','2022-03-16 02:41:04','2022-03-16 02:41:04'),(55,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2022-03-16 02:41:04','2022-03-16 02:41:04'),(56,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2022-03-16 02:41:04','2022-03-16 02:41:04'),(57,'is_popular','[\"1\"]',18,'Botble\\Ecommerce\\Models\\Product','2022-03-16 02:41:04','2022-03-16 02:41:04'),(58,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2022-03-16 02:41:04','2022-03-16 02:41:04'),(59,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2022-03-16 02:41:04','2022-03-16 02:41:04'),(60,'is_popular','[\"1\"]',20,'Botble\\Ecommerce\\Models\\Product','2022-03-16 02:41:04','2022-03-16 02:41:04'),(61,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2022-03-16 02:41:04','2022-03-16 02:41:04'),(62,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2022-03-16 02:41:04','2022-03-16 02:41:04'),(63,'is_popular','[\"1\"]',22,'Botble\\Ecommerce\\Models\\Product','2022-03-16 02:41:04','2022-03-16 02:41:04'),(64,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2022-03-16 02:41:04','2022-03-16 02:41:04'),(65,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2022-03-16 02:41:04','2022-03-16 02:41:04'),(66,'is_popular','[\"1\"]',24,'Botble\\Ecommerce\\Models\\Product','2022-03-16 02:41:04','2022-03-16 02:41:04'),(67,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',24,'Botble\\Ecommerce\\Models\\Product','2022-03-16 02:41:04','2022-03-16 02:41:04'),(78,'simple_slider_style','[\"style-4\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-03-16 02:41:23','2022-03-16 02:41:23'),(79,'simple_slider_style','[\"style-2\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-03-16 02:41:23','2022-03-16 02:41:23'),(80,'simple_slider_style','[\"style-3\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-03-16 02:41:23','2022-03-16 02:41:23'),(81,'simple_slider_style','[\"style-1\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-03-16 02:41:23','2022-03-16 02:41:23'),(82,'simple_slider_style','[\"style-5\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-03-16 02:41:23','2022-03-16 02:41:23'),(83,'simple_slider_style','[\"style-6\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-03-16 02:41:23','2022-03-16 02:41:23'),(84,'simple_slider_style','[\"style-1\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-03-16 02:41:23','2022-03-16 02:41:23'),(85,'simple_slider_style','[\"style-4\"]',8,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-03-16 02:41:23','2022-03-16 02:41:23'),(86,'simple_slider_style','[\"style-2\"]',9,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-03-16 02:41:23','2022-03-16 02:41:23'),(87,'simple_slider_style','[\"style-3\"]',10,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-03-16 02:41:23','2022-03-16 02:41:23'),(88,'simple_slider_style','[\"style-1\"]',11,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-03-16 02:41:23','2022-03-16 02:41:23'),(89,'simple_slider_style','[\"style-5\"]',12,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-03-16 02:41:23','2022-03-16 02:41:23'),(90,'simple_slider_style','[\"style-6\"]',13,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-03-16 02:41:23','2022-03-16 02:41:23'),(91,'simple_slider_style','[\"style-1\"]',14,'Botble\\SimpleSlider\\Models\\SimpleSlider','2022-03-16 02:41:23','2022-03-16 02:41:23'),(92,'layout','[\"blog-post-right-sidebar\"]',1,'Botble\\Blog\\Models\\Post','2022-03-16 02:41:33','2022-03-16 02:41:33'),(93,'layout','[\"blog-post-left-sidebar\"]',2,'Botble\\Blog\\Models\\Post','2022-03-16 02:41:33','2022-03-16 02:41:33'),(94,'layout','[\"blog-post-full-width\"]',3,'Botble\\Blog\\Models\\Post','2022-03-16 02:41:33','2022-03-16 02:41:33'),(95,'layout','[\"blog-post-full-width\"]',4,'Botble\\Blog\\Models\\Post','2022-03-16 02:41:33','2022-03-16 02:41:33'),(96,'header_style','[\"header-style-5\"]',16,'Botble\\Page\\Models\\Page','2022-03-16 02:41:33','2022-03-16 02:41:33'),(97,'header_style','[\"header-style-5\"]',17,'Botble\\Page\\Models\\Page','2022-03-16 02:41:33','2022-03-16 02:41:33'),(98,'button_text','[\"Shop now\"]',1,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(99,'subtitle','[\"Everyday Fresh & \\nClean with Our \\nProducts\"]',1,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(100,'button_text','[\"Shop now\"]',2,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(101,'subtitle','[\"Make your Breakfast Healthy and Easy\"]',2,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(102,'button_text','[\"Shop now\"]',3,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(103,'subtitle','[\"The best Organic Products Online\"]',3,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(104,'button_text','[\"Shop now\"]',4,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(105,'subtitle','[\"Bring nature into your home\"]',4,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(106,'button_text','[\"Shop now\"]',5,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(107,'subtitle','[\"Delivered to your home\"]',5,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(108,'button_text','[\"Shop now\"]',6,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(109,'subtitle','[\"Save 17% <br \\/>on Oganic <br \\/>Juice\"]',6,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(110,'button_text','[\"Shop now\"]',7,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(111,'subtitle','[\"Everyday Fresh & Clean with Our Products\"]',7,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(112,'button_text','[\"Shop now\"]',8,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(113,'subtitle','[\"The best Organic Products Online\"]',8,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(114,'button_text','[\"Go to supplier\"]',9,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(115,'subtitle','[\"Everyday Fresh with\\n Our Products\"]',9,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(116,'button_text','[\"Go to supplier\"]',10,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(117,'subtitle','[\"100% guaranteed all\\n Fresh items\"]',10,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(118,'button_text','[\"Go to supplier\"]',11,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(119,'subtitle','[\"Special grocery sale\\n off this month\"]',11,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(120,'button_text','[\"Go to supplier\"]',12,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(121,'subtitle','[\"Enjoy 15% OFF for all\\n vegetable and fruit\"]',12,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(122,'vi_subtitle','[\"S\\u1ea1ch s\\u1ebd h\\u00e0ng ng\\u00e0y v\\u1edbi \\nc\\u00e1c s\\u1ea3n ph\\u1ea9m c\\u1ee7a \\nch\\u00fang t\\u00f4i\"]',1,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(123,'vi_button_text','[\"Mua ngay\"]',1,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(124,'vi_subtitle','[\"N\\u1eabu b\\u1eefa s\\u00e1ng c\\u1ee7a b\\u1ea1n l\\u00e0nh m\\u1ea1nh v\\u00e0 d\\u1ec5 d\\u00e0ng\"]',2,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(125,'vi_button_text','[\"Mua ngay\"]',2,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(126,'vi_subtitle','[\"C\\u00e1c s\\u1ea3n ph\\u1ea9m h\\u1eefu c\\u01a1 t\\u1ed1t nh\\u1ea5t tr\\u1ef1c tuy\\u1ebfn\"]',3,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(127,'vi_button_text','[\"Mua ngay\"]',3,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(128,'vi_subtitle','[\"Mang thi\\u00ean nhi\\u00ean v\\u00e0o ng\\u00f4i nh\\u00e0 c\\u1ee7a b\\u1ea1n\"]',4,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(129,'vi_button_text','[\"Mua ngay\"]',4,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(130,'vi_subtitle','[\"Giao t\\u1eadn nh\\u00e0\"]',5,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(131,'vi_button_text','[\"Mua ngay\"]',5,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(132,'vi_subtitle','[\"Ti\\u1ebft ki\\u1ec7m 17% <br \\/> khi mua N\\u01b0\\u1edbc \\u00e9p <br \\/> Oganic\"]',6,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(133,'vi_button_text','[\"Mua ngay\"]',6,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(134,'vi_subtitle','[\"T\\u01b0\\u01a1i v\\u00e0 S\\u1ea1ch h\\u00e0ng ng\\u00e0y v\\u1edbi c\\u00e1c s\\u1ea3n ph\\u1ea9m c\\u1ee7a ch\\u00fang t\\u00f4i\"]',7,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(135,'vi_button_text','[\"Shop now\"]',7,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(136,'vi_subtitle','[\"C\\u00e1c s\\u1ea3n ph\\u1ea9m h\\u1eefu c\\u01a1 t\\u1ed1t nh\\u1ea5t tr\\u1ef1c tuy\\u1ebfn\"]',8,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(137,'vi_button_text','[\"Shop now\"]',8,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(138,'vi_subtitle','[\"T\\u01b0\\u01a1i m\\u1edbi m\\u1ed7i ng\\u00e0y v\\u1edbi\\n c\\u00e1c s\\u1ea3n ph\\u1ea9m c\\u1ee7a ch\\u00fang t\\u00f4i\"]',9,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(139,'vi_button_text','[\"\\u0110i \\u0111\\u1ebfn nh\\u00e0 cung c\\u1ea5p\"]',9,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(140,'vi_subtitle','[\"100% \\u0111\\u1ea3m b\\u1ea3o t\\u1ea5t c\\u1ea3\\n c\\u00e1c m\\u1eb7t h\\u00e0ng t\\u01b0\\u01a1i\"]',10,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(141,'vi_button_text','[\"\\u0110i \\u0111\\u1ebfn nh\\u00e0 cung c\\u1ea5p\"]',10,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(142,'vi_subtitle','[\"Gi\\u1ea3m gi\\u00e1 h\\u00e0ng t\\u1ea1p h\\u00f3a\\n \\u0111\\u1eb7c bi\\u1ec7t trong th\\u00e1ng n\\u00e0y\"]',11,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(143,'vi_button_text','[\"\\u0110i \\u0111\\u1ebfn nh\\u00e0 cung c\\u1ea5p\"]',11,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(144,'vi_subtitle','[\"GI\\u1ea2M GI\\u00c1 15% cho t\\u1ea5t c\\u1ea3\\n rau v\\u00e0 tr\\u00e1i c\\u00e2y\"]',12,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(145,'vi_button_text','[\"\\u0110i \\u0111\\u1ebfn nh\\u00e0 cung c\\u1ea5p\"]',12,'Botble\\Ads\\Models\\Ads','2022-03-16 02:41:39','2022-03-16 02:41:39'),(146,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',1,'Botble\\Marketplace\\Models\\Store','2022-03-16 02:41:49','2022-03-16 02:41:49'),(147,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',2,'Botble\\Marketplace\\Models\\Store','2022-03-16 02:41:49','2022-03-16 02:41:49'),(148,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',3,'Botble\\Marketplace\\Models\\Store','2022-03-16 02:41:49','2022-03-16 02:41:49'),(149,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',4,'Botble\\Marketplace\\Models\\Store','2022-03-16 02:41:49','2022-03-16 02:41:49'),(150,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',5,'Botble\\Marketplace\\Models\\Store','2022-03-16 02:41:49','2022-03-16 02:41:49'),(171,'image','[\"flash-sales\\/1.png\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2022-04-20 20:19:52','2022-04-20 20:19:52'),(172,'image','[\"flash-sales\\/2.png\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2022-04-20 20:19:52','2022-04-20 20:19:52'),(173,'image','[\"flash-sales\\/3.png\"]',3,'Botble\\Ecommerce\\Models\\FlashSale','2022-04-20 20:19:52','2022-04-20 20:19:52'),(174,'image','[\"flash-sales\\/4.png\"]',4,'Botble\\Ecommerce\\Models\\FlashSale','2022-04-20 20:19:52','2022-04-20 20:19:52'),(175,'image','[\"flash-sales\\/5.png\"]',5,'Botble\\Ecommerce\\Models\\FlashSale','2022-04-20 20:19:52','2022-04-20 20:19:52'),(176,'vi_image','[\"flash-sales\\/1.png\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2022-04-20 20:19:52','2022-04-20 20:19:52'),(177,'vi_image','[\"flash-sales\\/2.png\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2022-04-20 20:19:52','2022-04-20 20:19:52'),(178,'vi_image','[\"flash-sales\\/3.png\"]',3,'Botble\\Ecommerce\\Models\\FlashSale','2022-04-20 20:19:52','2022-04-20 20:19:52'),(179,'vi_image','[\"flash-sales\\/4.png\"]',4,'Botble\\Ecommerce\\Models\\FlashSale','2022-04-20 20:19:52','2022-04-20 20:19:52'),(180,'vi_image','[\"flash-sales\\/5.png\"]',5,'Botble\\Ecommerce\\Models\\FlashSale','2022-04-20 20:19:52','2022-04-20 20:19:52');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_resets_table',1),(5,'2015_06_18_033822_create_blog_table',1),(6,'2015_06_29_025744_create_audit_history',1),(7,'2016_06_10_230148_create_acl_tables',1),(8,'2016_06_14_230857_create_menus_table',1),(9,'2016_06_17_091537_create_contacts_table',1),(10,'2016_06_28_221418_create_pages_table',1),(11,'2016_10_03_032336_create_languages_table',1),(12,'2016_10_05_074239_create_setting_table',1),(13,'2016_10_07_193005_create_translations_table',1),(14,'2016_11_28_032840_create_dashboard_widget_tables',1),(15,'2016_12_16_084601_create_widgets_table',1),(16,'2017_05_09_070343_create_media_tables',1),(17,'2017_05_18_080441_create_payment_tables',1),(18,'2017_07_11_140018_create_simple_slider_table',1),(19,'2017_10_24_154832_create_newsletter_table',1),(20,'2017_11_03_070450_create_slug_table',1),(21,'2018_07_09_221238_create_faq_table',1),(22,'2019_01_05_053554_create_jobs_table',1),(23,'2019_08_19_000000_create_failed_jobs_table',1),(24,'2019_11_18_061011_create_country_table',1),(25,'2020_03_05_041139_create_ecommerce_tables',1),(26,'2020_11_18_150916_ads_create_ads_table',1),(27,'2021_01_01_044147_ecommerce_create_flash_sale_table',1),(28,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',1),(29,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',1),(30,'2021_02_16_092633_remove_default_value_for_author_type',1),(31,'2021_02_18_073505_update_table_ec_reviews',1),(32,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',1),(33,'2021_03_10_025153_change_column_tax_amount',1),(34,'2021_03_20_033103_add_column_availability_to_table_ec_products',1),(35,'2021_03_27_144913_add_customer_type_into_table_payments',1),(36,'2021_04_28_074008_ecommerce_create_product_label_table',1),(37,'2021_05_24_034720_make_column_currency_nullable',1),(38,'2021_05_31_173037_ecommerce_create_ec_products_translations',1),(39,'2021_06_28_153141_correct_slugs_data',1),(40,'2021_07_06_030002_create_marketplace_table',1),(41,'2021_08_09_161302_add_metadata_column_to_payments_table',1),(42,'2021_08_17_105016_remove_column_currency_id_in_some_tables',1),(43,'2021_08_30_142128_add_images_column_to_ec_reviews_table',1),(44,'2021_09_01_115151_remove_unused_fields_in_ec_products',1),(45,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',1),(46,'2021_10_04_030050_add_column_created_by_to_table_ec_products',1),(47,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',1),(48,'2021_10_05_122616_add_status_column_to_ec_customers_table',1),(49,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',1),(50,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',1),(51,'2021_10_19_020859_update_metadata_field',1),(52,'2021_10_25_021023_fix-priority-load-for-language-advanced',1),(53,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',1),(54,'2021_11_23_071403_correct_languages_for_product_variations',1),(55,'2021_11_28_031808_add_product_tags_translations',1),(56,'2021_12_01_031123_add_featured_image_to_ec_products',1),(57,'2021_12_02_035301_add_ads_translations_table',1),(58,'2021_12_03_030600_create_blog_translations',1),(59,'2021_12_03_075608_create_page_translations',1),(60,'2021_12_03_082134_create_faq_translations',1),(61,'2021_12_03_084118_create_location_translations',1),(62,'2021_12_03_094518_migrate_old_location_data',1),(63,'2021_12_06_031304_update_table_mp_customer_revenues',1),(64,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',1),(65,'2022_01_01_033107_update_table_ec_shipments',1),(66,'2022_01_16_085908_improve_plugin_location',1),(67,'2022_02_16_042457_improve_product_attribute_sets',1),(68,'2022_03_22_075758_correct_product_name',2),(69,'2022_04_19_113334_add_index_to_ec_products',3),(70,'2022_04_19_113923_add_index_to_table_posts',3),(71,'2022_04_20_100851_add_index_to_media_table',3),(72,'2022_04_20_101046_add_index_to_menu_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned DEFAULT NULL,
  `order_id` int unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
INSERT INTO `mp_customer_revenues` VALUES (1,6,1,1798.00,0.00,1798.00,2555.20,'USD',NULL,'2022-04-20 08:19:56','2022-04-20 08:19:56',0,NULL),(2,9,4,172.80,0.00,172.80,1269.40,'USD',NULL,'2022-04-19 04:19:56','2022-04-19 04:19:56',0,NULL),(3,10,6,237.30,0.00,237.30,1597.70,'USD',NULL,'2022-04-20 06:19:56','2022-04-20 06:19:56',0,NULL),(4,2,7,365.80,0.00,365.80,1717.30,'USD',NULL,'2022-04-18 20:19:56','2022-04-18 20:19:56',0,NULL),(5,10,8,262.50,0.00,262.50,1835.00,'USD',NULL,'2022-04-18 14:19:56','2022-04-18 14:19:56',0,NULL),(6,10,11,137.50,0.00,137.50,2097.50,'USD',NULL,'2022-04-15 20:19:57','2022-04-15 20:19:57',0,NULL),(7,9,13,583.80,0.00,583.80,1442.20,'USD',NULL,'2022-04-16 04:19:57','2022-04-16 04:19:57',0,NULL),(8,2,14,685.70,0.00,685.70,2083.10,'USD',NULL,'2022-04-12 02:19:57','2022-04-12 02:19:57',0,NULL),(9,9,22,262.50,0.00,262.50,2026.00,'USD',NULL,'2022-04-18 22:19:57','2022-04-18 22:19:57',0,NULL),(10,2,25,140.80,0.00,140.80,2768.80,'USD',NULL,'2022-04-18 16:19:57','2022-04-18 16:19:57',0,NULL),(11,9,26,79.20,0.00,79.20,2288.50,'USD',NULL,'2022-03-31 14:19:57','2022-03-31 14:19:57',0,NULL),(12,6,29,130.90,0.00,130.90,4353.20,'USD',NULL,'2022-03-26 20:19:57','2022-03-26 20:19:57',0,NULL),(13,10,31,1305.10,0.00,1305.10,2235.00,'USD',NULL,'2022-04-18 04:19:58','2022-04-18 04:19:58',0,NULL),(14,2,34,1306.90,0.00,1306.90,2909.60,'USD',NULL,'2022-04-12 02:19:58','2022-04-12 02:19:58',0,NULL),(15,9,36,151.20,0.00,151.20,2367.70,'USD',NULL,'2022-03-21 00:19:58','2022-03-21 00:19:58',0,NULL),(16,6,38,130.90,0.00,130.90,4484.10,'USD',NULL,'2022-04-14 08:19:58','2022-04-14 08:19:58',0,NULL),(17,10,39,691.30,0.00,691.30,3540.10,'USD',NULL,'2022-03-25 04:19:58','2022-03-25 04:19:58',0,NULL),(18,9,42,223.20,0.00,223.20,2518.90,'USD',NULL,'2022-03-23 04:19:58','2022-03-23 04:19:58',0,NULL),(19,9,44,223.20,0.00,223.20,2742.10,'USD',NULL,'2022-03-25 14:19:58','2022-03-25 14:19:58',0,NULL),(20,10,49,245.30,0.00,245.30,4231.40,'USD',NULL,'2022-03-26 20:19:59','2022-03-26 20:19:59',0,NULL);
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bank_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
INSERT INTO `mp_customer_withdrawals` VALUES (1,2,0.00,1172.00,4216.50,'USD','','{\"name\":\"Mrs. Iva Harber Jr.\",\"number\":\"+14093752784\",\"full_name\":\"Dr. Jaime Flatley III\",\"description\":\"Easter Mante\"}',NULL,0,'pending',NULL,'2022-04-20 20:19:59','2022-04-20 20:19:59',NULL),(2,2,0.00,751.00,3044.50,'USD','','{\"name\":\"Mrs. Iva Harber Jr.\",\"number\":\"+14093752784\",\"full_name\":\"Dr. Jaime Flatley III\",\"description\":\"Easter Mante\"}',NULL,0,'pending',NULL,'2022-04-20 20:19:59','2022-04-20 20:19:59',NULL),(3,2,0.00,500.00,2293.50,'USD','','{\"name\":\"Mrs. Iva Harber Jr.\",\"number\":\"+14093752784\",\"full_name\":\"Dr. Jaime Flatley III\",\"description\":\"Easter Mante\"}',NULL,0,'pending',NULL,'2022-04-20 20:19:59','2022-04-20 20:19:59',NULL),(4,5,0.00,36.00,364.00,'USD','','{\"name\":\"Prof. Eudora Buckridge\",\"number\":\"+17345894364\",\"full_name\":\"Ophelia Koelpin\",\"description\":\"Ara Osinski\"}',NULL,0,'processing',NULL,'2022-04-20 20:19:59','2022-04-20 20:19:59',NULL),(5,5,0.00,45.00,328.00,'USD','','{\"name\":\"Prof. Eudora Buckridge\",\"number\":\"+17345894364\",\"full_name\":\"Ophelia Koelpin\",\"description\":\"Ara Osinski\"}',NULL,0,'processing',NULL,'2022-04-20 20:19:59','2022-04-20 20:19:59',NULL),(6,6,0.00,1282.00,4615.00,'USD','','{\"name\":\"Prof. Christophe Von III\",\"number\":\"+12408933224\",\"full_name\":\"Payton Lemke\",\"description\":\"Mr. Brannon Nitzsche I\"}',NULL,0,'pending',NULL,'2022-04-20 20:19:59','2022-04-20 20:19:59',NULL),(7,6,0.00,814.00,3333.00,'USD','','{\"name\":\"Prof. Christophe Von III\",\"number\":\"+12408933224\",\"full_name\":\"Payton Lemke\",\"description\":\"Mr. Brannon Nitzsche I\"}',NULL,0,'processing',NULL,'2022-04-20 20:20:00','2022-04-20 20:20:00',NULL),(8,9,0.00,925.00,2965.30,'USD','','{\"name\":\"Ms. Ophelia Abernathy DVM\",\"number\":\"+19088442074\",\"full_name\":\"Cassie O\'Connell\",\"description\":\"Payton Carter\"}',NULL,0,'completed',NULL,'2022-04-20 20:20:00','2022-04-20 20:20:00',NULL),(9,9,0.00,63.00,2040.30,'USD','','{\"name\":\"Ms. Ophelia Abernathy DVM\",\"number\":\"+19088442074\",\"full_name\":\"Cassie O\'Connell\",\"description\":\"Payton Carter\"}',NULL,0,'processing',NULL,'2022-04-20 20:20:00','2022-04-20 20:20:00',NULL),(10,9,0.00,204.00,1977.30,'USD','','{\"name\":\"Ms. Ophelia Abernathy DVM\",\"number\":\"+19088442074\",\"full_name\":\"Cassie O\'Connell\",\"description\":\"Payton Carter\"}',NULL,0,'processing',NULL,'2022-04-20 20:20:00','2022-04-20 20:20:00',NULL),(11,10,0.00,893.00,4476.70,'USD','','{\"name\":\"Prof. Dillan Lubowitz MD\",\"number\":\"+12488518094\",\"full_name\":\"Brianne Mayer\",\"description\":\"Dr. Ross Brekke\"}',NULL,0,'processing',NULL,'2022-04-20 20:20:00','2022-04-20 20:20:00',NULL),(12,10,0.00,1059.00,3583.70,'USD','','{\"name\":\"Prof. Dillan Lubowitz MD\",\"number\":\"+12488518094\",\"full_name\":\"Brianne Mayer\",\"description\":\"Dr. Ross Brekke\"}',NULL,0,'pending',NULL,'2022-04-20 20:20:00','2022-04-20 20:20:00',NULL),(13,10,0.00,105.00,2524.70,'USD','','{\"name\":\"Prof. Dillan Lubowitz MD\",\"number\":\"+12488518094\",\"full_name\":\"Brianne Mayer\",\"description\":\"Dr. Ross Brekke\"}',NULL,0,'completed',NULL,'2022-04-20 20:20:01','2022-04-20 20:20:01',NULL);
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int unsigned DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','oschmeler@example.com','+13312361532','168 Savanah Island Apt. 459','HK','Rhode Island','East Isac',2,'stores/1.png','Commodi in sed sit reprehenderit nisi a.','Cupiditate dolorem sit inventore voluptas laborum culpa omnis. Quas et dolorum incidunt. Quam nobis ducimus consequatur.','published',NULL,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(2,'Global Office','augustus.watsica@example.org','+15614469026','34389 Cummerata Parkway','LI','South Dakota','North Deron',5,'stores/2.png','Voluptatem et repellat dolore quaerat.','Molestias autem et consectetur porro odit quo earum exercitationem. Voluptatum est ducimus quo et.','published',NULL,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(3,'Young Shop','jamir00@example.net','+14636001390','48102 Lincoln Tunnel Apt. 396','LS','Montana','Kristianburgh',6,'stores/3.png','Corporis quibusdam nisi ipsum tenetur.','Distinctio at et dolor tenetur. Fugiat et ullam et maxime consequatur. Molestias possimus tempora illo modi et sunt repellendus ducimus.','published',NULL,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(4,'Global Store','katelynn.roberts@example.net','+14423060645','23439 Sanford Highway Apt. 423','TT','Arizona','Cassinside',9,'stores/4.png','In aut ut sit sed voluptas qui.','Aperiam quam aut consectetur tenetur impedit qui sapiente. Mollitia soluta est natus rerum.','published',NULL,'2022-03-16 02:41:49','2022-03-16 02:41:49'),(5,'Robert’s Store','raynor.skyla@example.org','+18706763345','401 Runolfsdottir Route','SR','Indiana','West Jeradmouth',10,'stores/5.png','Qui quo cumque quo in qui.','Aut omnis possimus et enim quia. Ea fugiat commodi repellat. Alias harum id unde voluptas qui.','published',NULL,'2022-03-16 02:41:49','2022-03-16 02:41:49');
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,1793.50,0.00,7311.50,'$2y$10$XIUFI0jHbg1p1CQt76IGVOGovSo58/dd0lQLvwEX7MR5F0/nJ7iVC','{\"name\":\"Mrs. Iva Harber Jr.\",\"number\":\"+14093752784\",\"full_name\":\"Dr. Jaime Flatley III\",\"description\":\"Easter Mante\"}','2022-03-16 02:41:48','2022-04-20 20:19:59'),(2,5,283.00,0.00,851.00,'$2y$10$Q7eEleIGir/ThcsL4/reuuF3R1.gILHNf.ZKJ3HuaTqpjnEhr3XEC','{\"name\":\"Prof. Eudora Buckridge\",\"number\":\"+17345894364\",\"full_name\":\"Ophelia Koelpin\",\"description\":\"Ara Osinski\"}','2022-03-16 02:41:48','2022-04-20 20:19:59'),(3,6,2519.00,0.00,9508.00,'$2y$10$5mmXAfJZGrPoIcoEAyaQuO3sTzBFD4C5stNqzyxWXhQuOQJW3OgG2','{\"name\":\"Prof. Christophe Von III\",\"number\":\"+12408933224\",\"full_name\":\"Payton Lemke\",\"description\":\"Mr. Brannon Nitzsche I\"}','2022-03-16 02:41:48','2022-04-20 20:20:00'),(4,9,1773.30,0.00,5109.30,'$2y$10$BQP4nzGLdod8nqq2ikl.g.SBDwXsMBCnb4O27XYYsYw4nsBlM2y9m','{\"name\":\"Ms. Ophelia Abernathy DVM\",\"number\":\"+19088442074\",\"full_name\":\"Cassie O\'Connell\",\"description\":\"Payton Carter\"}','2022-03-16 02:41:48','2022-04-20 20:20:00'),(5,10,2419.70,0.00,6349.70,'$2y$10$yV4ijNsEZoJgQEoMmHqgu.lA23cq.nQ3a2.x3FM9jSSSU96kcIJaK','{\"name\":\"Prof. Dillan Lubowitz MD\",\"number\":\"+12488518094\",\"full_name\":\"Brianne Mayer\",\"description\":\"Dr. Ross Brekke\"}','2022-03-16 02:41:49','2022-04-20 20:20:01');
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',0,NULL,'published','2022-03-16 02:41:33','2022-03-16 02:41:33'),(2,'Homepage 2','<div>[simple-slider key=\"home-slider-2\" ads_1=\"IZ6WU8KUALYH\" show_newsletter_form=\"yes\" cover_image=\"sliders/banner-1.png\"][/simple-slider]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div>',1,NULL,'homepage',0,NULL,'published','2022-03-16 02:41:33','2022-03-16 02:41:33'),(3,'Homepage 3','<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',0,NULL,'published','2022-03-16 02:41:33','2022-03-16 02:41:33'),(4,'Homepage 4','<div>[simple-slider key=\"home-slider-4\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',0,NULL,'published','2022-03-16 02:41:33','2022-03-16 02:41:33'),(5,'Blog','<p>---</p>',1,NULL,'blog-grid',0,NULL,'published','2022-03-16 02:41:33','2022-03-16 02:41:33'),(6,'Contact','<p>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</p><p>[our-offices][/our-offices]</p><p>[contact-form][/contact-form]</p>',1,NULL,'default',0,NULL,'published','2022-03-16 02:41:33','2022-03-16 02:41:33'),(7,'About us','<p>Alice, \'I\'ve often seen them at last, and they all quarrel so dreadfully one can\'t hear oneself speak--and they don\'t give birthday presents like that!\' But she went on, \'I must be really offended. \'We won\'t talk about wasting IT. It\'s HIM.\' \'I don\'t know of any that do,\' Alice said very politely, \'for I can\'t take LESS,\' said the Pigeon; \'but I haven\'t been invited yet.\' \'You\'ll see me there,\' said the others. \'Are their heads down and saying \"Come up again, dear!\" I shall be late!\' (when she.</p><p>Mock Turtle with a sigh: \'he taught Laughing and Grief, they used to say when I got up this morning, but I can\'t put it more clearly,\' Alice replied in a furious passion, and went on just as if it had made. \'He took me for his housemaid,\' she said this last remark. \'Of course they were\', said the Dormouse, who was sitting on a little more conversation with her face like the look of things at all, at all!\' \'Do as I was a little while, however, she went on, \'and most of \'em do.\' \'I don\'t think.</p><p>What WILL become of me?\' Luckily for Alice, the little golden key in the flurry of the same thing as \"I eat what I could say if I only wish it was,\' he said. (Which he certainly did NOT, being made entirely of cardboard.) \'All right, so far,\' said the Knave, \'I didn\'t know how to begin.\' He looked anxiously over his shoulder as he spoke, and added \'It isn\'t directed at all,\' said Alice: \'she\'s so extremely--\' Just then she remembered that she ought not to be listening, so she sat down again.</p><p>NOT be an advantage,\' said Alice, very much confused, \'I don\'t think--\' \'Then you should say what you mean,\' the March Hare moved into the wood for fear of their wits!\' So she called softly after it, never once considering how in the distance, and she thought of herself, \'I don\'t think they play at all what had become of me? They\'re dreadfully fond of beheading people here; the great puzzle!\' And she thought it would,\' said the sage, as he spoke, and added \'It isn\'t directed at all,\' said the.</p>',1,NULL,'right-sidebar',0,NULL,'published','2022-03-16 02:41:33','2022-03-16 02:41:33'),(8,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',0,NULL,'published','2022-03-16 02:41:33','2022-03-16 02:41:33'),(9,'Terms & Conditions','<p>THAT is--\"Take care of themselves.\"\' \'How fond she is only a pack of cards!\' At this moment the door with his nose Trims his belt and his buttons, and turns out his toes.\' [later editions continued as follows The Panther took pie-crust, and gravy, and meat, While the Owl had the dish as its share of the cattle in the air, mixed up with the glass table and the other ladder?--Why, I hadn\'t gone down that rabbit-hole--and yet--and yet--it\'s rather curious, you know, with oh, such long curly brown.</p><p>However, the Multiplication Table doesn\'t signify: let\'s try the patience of an oyster!\' \'I wish I hadn\'t begun my tea--not above a week or so--and what with the day and night! You see the earth takes twenty-four hours to turn into a tidy little room with a growl, And concluded the banquet--] \'What IS a Caucus-race?\' said Alice; \'but a grin without a cat! It\'s the most confusing thing I ask! It\'s always six o\'clock now.\' A bright idea came into Alice\'s head. \'Is that the Gryphon remarked.</p><p>I do wonder what I like\"!\' \'You might just as well. The twelve jurors were all locked; and when Alice had never heard before, \'Sure then I\'m here! Digging for apples, indeed!\' said the Duchess; \'and that\'s the queerest thing about it.\' \'She\'s in prison,\' the Queen left off, quite out of breath, and said to herself, and once she remembered trying to fix on one, the cook had disappeared. \'Never mind!\' said the King. On this the White Rabbit: it was too much overcome to do that,\' said Alice. \'I\'m.</p><p>Queen never left off when they arrived, with a smile. There was a bright idea came into Alice\'s head. \'Is that all?\' said the Queen in front of them, with her friend. When she got used to read fairy-tales, I fancied that kind of thing that would happen: \'\"Miss Alice! Come here directly, and get ready to ask any more HERE.\' \'But then,\' thought Alice, \'to speak to this last remark. \'Of course it was,\' the March Hare. Visit either you like: they\'re both mad.\' \'But I don\'t like the three.</p>',1,NULL,'default',0,NULL,'published','2022-03-16 02:41:33','2022-03-16 02:41:33'),(10,'Returns & Exchanges','<p>King very decidedly, and the White Rabbit with pink eyes ran close by her. There was exactly one a-piece all round. (It was this last remark that had fallen into the court, by the White Rabbit, trotting slowly back to the law, And argued each case with MINE,\' said the Mock Turtle. \'No, no! The adventures first,\' said the Lory. Alice replied thoughtfully. \'They have their tails in their mouths. So they went on again: \'Twenty-four hours, I THINK; or is it directed to?\' said one of its voice.</p><p>Alice, rather alarmed at the other birds tittered audibly. \'What I was going to dive in among the branches, and every now and then, and holding it to make herself useful, and looking at the cook, to see its meaning. \'And just as I\'d taken the highest tree in front of them, and considered a little, \'From the Queen. \'Never!\' said the King, \'and don\'t be nervous, or I\'ll have you executed on the top with its head, it WOULD twist itself round and get ready for your walk!\" \"Coming in a few minutes.</p><p>Majesty!\' the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice severely. \'What are you getting on now, my dear?\' it continued, turning to the Dormouse, who seemed to think that will be When they take us up and said, \'So you did, old fellow!\' said the Hatter. \'He won\'t stand beating. Now, if you like,\' said the Hatter, who turned pale and fidgeted. \'Give your evidence,\' said the one who got any advantage from the Queen shouted at the end.\' \'If you can\'t take.</p><p>I should understand that better,\' Alice said very humbly; \'I won\'t indeed!\' said the Queen. \'Their heads are gone, if it makes me grow smaller, I suppose.\' So she sat down at her with large eyes full of the way down one side and then raised himself upon tiptoe, put his mouth close to her: first, because the chimneys were shaped like the look of the guinea-pigs cheered, and was going to give the hedgehog a blow with its wings. \'Serpent!\' screamed the Pigeon. \'I can see you\'re trying to explain.</p>',1,NULL,'default',0,NULL,'published','2022-03-16 02:41:33','2022-03-16 02:41:33'),(11,'Shipping & Delivery','<p>Cat; and this he handed over to the Dormouse, without considering at all like the three gardeners, but she saw maps and pictures hung upon pegs. She took down a jar from one foot to the Duchess: \'what a clear way you can;--but I must be really offended. \'We won\'t talk about her any more questions about it, so she tried to beat time when I sleep\" is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must sugar my hair.\" As a duck with its arms and frowning at the sides of it.</p><p>A little bright-eyed terrier, you know, as we needn\'t try to find quite a chorus of voices asked. \'Why, SHE, of course,\' said the Hatter; \'so I can\'t tell you how it was looking up into a graceful zigzag, and was going to remark myself.\' \'Have you seen the Mock Turtle. \'She can\'t explain MYSELF, I\'m afraid, sir\' said Alice, seriously, \'I\'ll have nothing more to be sure, she had a consultation about this, and she hurried out of breath, and said to the tarts on the other bit. Her chin was.</p><p>Then she went slowly after it: \'I never was so large in the other: he came trotting along in a tone of this rope--Will the roof of the teacups as the door began sneezing all at once. The Dormouse slowly opened his eyes very wide on hearing this; but all he SAID was, \'Why is a raven like a mouse, That he met in the same age as herself, to see some meaning in it,\' said Alice, always ready to play croquet with the grin, which remained some time busily writing in his throat,\' said the Caterpillar.</p><p>Cat\'s head began fading away the moment she felt that this could not help thinking there MUST be more to be two people. \'But it\'s no use in knocking,\' said the Hatter. \'You might just as well as she left her, leaning her head through the doorway; \'and even if my head would go anywhere without a grin,\' thought Alice; \'I daresay it\'s a French mouse, come over with diamonds, and walked off; the Dormouse go on for some way, and the words came very queer indeed:-- \'\'Tis the voice of the water, and.</p>',1,NULL,'default',0,NULL,'published','2022-03-16 02:41:33','2022-03-16 02:41:33'),(12,'Privacy Policy','<p>Suppress him! Pinch him! Off with his knuckles. It was so much already, that it had been. But her sister was reading, but it was neither more nor less than no time to go, for the Dormouse,\' thought Alice; \'I can\'t explain MYSELF, I\'m afraid, sir\' said Alice, rather alarmed at the Caterpillar\'s making such a rule at processions; \'and besides, what would happen next. \'It\'s--it\'s a very interesting dance to watch,\' said Alice, feeling very glad she had never left off when they liked, so that her.</p><p>Alice: he had never before seen a rabbit with either a waistcoat-pocket, or a serpent?\' \'It matters a good deal frightened by this time.) \'You\'re nothing but the Hatter asked triumphantly. Alice did not wish to offend the Dormouse again, so violently, that she tipped over the jury-box with the Gryphon. \'--you advance twice--\' \'Each with a lobster as a partner!\' cried the Mock Turtle yawned and shut his eyes.--\'Tell her about the crumbs,\' said the Mock Turtle drew a long time together.\' \'Which.</p><p>Hatter replied. \'Of course not,\' said Alice very humbly: \'you had got its head impatiently, and walked off; the Dormouse fell asleep instantly, and neither of the country is, you see, Miss, this here ought to be sure; but I shall see it quite plainly through the neighbouring pool--she could hear the name \'Alice!\' CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice, jumping up and repeat something now. Tell her to speak again. The Mock Turtle went on just as I\'d taken the highest tree in the pool.</p><p>I know I have done just as she could not help bursting out laughing: and when Alice had learnt several things of this was his first speech. \'You should learn not to be rude, so she waited. The Gryphon sat up and down in a languid, sleepy voice. \'Who are YOU?\' said the Gryphon: \'I went to him,\' the Mock Turtle a little before she had read several nice little dog near our house I should be free of them at last, with a kind of serpent, that\'s all the same, the next verse.\' \'But about his toes?\'.</p>',1,NULL,'default',0,NULL,'published','2022-03-16 02:41:33','2022-03-16 02:41:33'),(13,'Blog List','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-list',0,NULL,'published','2022-03-16 02:41:33','2022-03-16 02:41:33'),(14,'Blog Big','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-big',0,NULL,'published','2022-03-16 02:41:33','2022-03-16 02:41:33'),(15,'Blog Wide','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-wide',0,NULL,'published','2022-03-16 02:41:33','2022-03-16 02:41:33'),(16,'Homepage 5','<div>[simple-slider key=\"home-slider-5\" ads_1=\"IZ6WU8KUALYJ\" ads_2=\"IZ6WU8KUALYK\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYL\" ads_2=\"IZ6WU8KUALYM\" ads_3=\"IZ6WU8KUALYN\" ads_4=\"IZ6WU8KUALYO\" style=\"style-5\"][/theme-ads]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',0,NULL,'published','2022-03-16 02:41:33','2022-03-16 02:41:33'),(17,'Homepage 6','<div>[big-banner cover_image=\"general/home-6.jpeg\" show_newsletter_form=\"yes\" number_display_featured_categories=\"4\" title=\"What are you looking for?\"][/big-banner]</div><div>[trending-products title=\"Trending items\" limit=\"20\"][/trending-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',0,NULL,'published','2022-03-16 02:41:33','2022-03-16 02:41:33'),(18,'Faq','<div>[faqs][/faqs]</div>',1,NULL,'default',0,NULL,'published','2022-03-16 02:41:33','2022-03-16 02:41:33');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
INSERT INTO `pages_translations` VALUES ('vi',1,'Trang chủ',NULL,'<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Bán chạy nhất hàng ngày\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',2,'Trang chủ 2',NULL,'<div>[simple-slider key=\"home-slider-2\" ads_1=\"IZ6WU8KUALYH\" show_newsletter_form=\"yes\" cover_image=\"sliders/banner-1.png\"][/simple-slider]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Bán chạy nhất hàng ngày\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div><div>[product-categories title=\"Mua sắm theo danh mục\"][/product-categories]</div>'),('vi',3,'Trang chủ 3',NULL,'<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Mua sắm theo danh mục\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',4,'Trang chủ 4',NULL,'<div>[simple-slider key=\"home-slider-4\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Mua sắm theo danh mục\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',5,'Tin tức',NULL,'<p>---</p>'),('vi',6,'Liên hệ',NULL,'<p>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</p><p>[our-offices][/our-offices]</p><p>[contact-form][/contact-form]</p>'),('vi',7,'Về chúng tôi',NULL,'<p>Alice in a coaxing tone, and everybody else. \'Leave off that!\' screamed the Pigeon. \'I\'m NOT a serpent, I tell you!\' said Alice. \'I\'m a--I\'m a--\' \'Well! WHAT are you?\' said the youth, \'one would hardly suppose That your eye was as steady as ever; Yet you turned a back-somersault in at the picture.) \'Up, lazy thing!\' said Alice, \'and if it makes me grow large again, for this time it all seemed quite natural to Alice severely. \'What are tarts made of?\' Alice asked in a deep voice, \'What are they.</p><p>Queen ordering off her knowledge, as there was not an encouraging tone. Alice looked at Alice. \'I\'M not a VERY good opportunity for showing off her head!\' the Queen had ordered. They very soon came upon a low voice. \'Not at first, but, after watching it a little nervous about this; \'for it might appear to others that what you were INSIDE, you might knock, and I shall never get to the baby, it was YOUR table,\' said Alice; \'living at the jury-box, and saw that, in her brother\'s Latin Grammar, \'A.</p><p>Indeed, she had brought herself down to her full size by this time, and was coming back to the other side. The further off from England the nearer is to give the hedgehog had unrolled itself, and began smoking again. This time Alice waited a little, half expecting to see it trying in a long, low hall, which was immediately suppressed by the way, was the Rabbit asked. \'No, I didn\'t,\' said Alice: \'she\'s so extremely--\' Just then she walked down the chimney?--Nay, I shan\'t! YOU do it!--That I.</p><p>Mouse, getting up and down looking for them, and was just in time to begin again, it was written to nobody, which isn\'t usual, you know.\' \'I don\'t see how the game began. Alice gave a little while, however, she went on again: \'Twenty-four hours, I THINK; or is it directed to?\' said one of the mushroom, and her eyes anxiously fixed on it, (\'which certainly was not much like keeping so close to her to carry it further. So she swallowed one of the lefthand bit. * * * * * * * * * * * * * * * * * *.</p>'),('vi',8,'Chính sách cookie',NULL,'<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>'),('vi',9,'Điều kiện và điều khoản',NULL,'<p>Digging for apples, indeed!\' said Alice, who felt ready to play croquet.\' The Frog-Footman repeated, in the way to change the subject,\' the March Hare,) \'--it was at the righthand bit again, and said, \'That\'s right, Five! Always lay the blame on others!\' \'YOU\'D better not do that again!\' which produced another dead silence. Alice was beginning to think that will be the right size, that it would make with the dream of Wonderland of long ago: and how she was in the distance. \'And yet what a.</p><p>Besides, SHE\'S she, and I\'m sure _I_ shan\'t be able! I shall never get to the heads of the mushroom, and crawled away in the middle, wondering how she would get up and repeat something now. Tell her to carry it further. So she went on eagerly: \'There is such a thing. After a while she remembered trying to find any. And yet you incessantly stand on your head-- Do you think, at your age, it is to France-- Then turn not pale, beloved snail, but come and join the dance. Would not, could not, would.</p><p>King said, with a little animal (she couldn\'t guess of what sort it was) scratching and scrambling about in the schoolroom, and though this was her turn or not. \'Oh, PLEASE mind what you\'re doing!\' cried Alice, quite forgetting in the sun. (IF you don\'t know where Dinn may be,\' said the Cat; and this was of very little use without my shoulders. Oh, how I wish you would seem to come out among the branches, and every now and then, \'we went to school in the air. \'--as far out to be a.</p><p>Alice, thinking it was impossible to say it out to sea!\" But the insolence of his Normans--\" How are you getting on?\' said Alice, always ready to make personal remarks,\' Alice said to Alice, and tried to say whether the blows hurt it or not. \'Oh, PLEASE mind what you\'re doing!\' cried Alice, with a melancholy tone. \'Nobody seems to be otherwise than what you mean,\' said Alice. \'Why not?\' said the Duchess, who seemed ready to make SOME change in my size; and as for the first verse,\' said the.</p>'),('vi',10,'Chính sách trả hàng',NULL,'<p>Alice, and sighing. \'It IS a Caucus-race?\' said Alice; \'living at the Caterpillar\'s making such a capital one for catching mice you can\'t be Mabel, for I know all the party went back to finish his story. CHAPTER IV. The Rabbit started violently, dropped the white kid gloves and the Queen\'s shrill cries to the Classics master, though. He was an old Crab took the cauldron of soup off the mushroom, and crawled away in the direction in which case it would be four thousand miles down, I think--\'.</p><p>Who would not stoop? Soup of the tail, and ending with the glass table as before, \'and things are \"much of a well--\' \'What did they live on?\' said the Queen, \'Really, my dear, and that is rather a hard word, I will just explain to you never even introduced to a lobster--\' (Alice began to cry again, for this time she had been (Before she had finished, her sister sat still just as well say,\' added the Dormouse, without considering at all a pity. I said \"What for?\"\' \'She boxed the Queen\'s voice.</p><p>Come on!\' So they began running about in the wood, \'is to grow larger again, and made another rush at Alice the moment she appeared; but she heard a little bottle on it, or at least one of them hit her in a coaxing tone, and everybody else. \'Leave off that!\' screamed the Gryphon. \'Well, I should understand that better,\' Alice said very humbly; \'I won\'t indeed!\' said Alice, a little startled by seeing the Cheshire Cat: now I shall see it trying in a low, trembling voice. \'There\'s more evidence.</p><p>Pigeon in a voice sometimes choked with sobs, to sing you a present of everything I\'ve said as yet.\' \'A cheap sort of knot, and then raised himself upon tiptoe, put his shoes off. \'Give your evidence,\' the King said, for about the reason of that?\' \'In my youth,\' said his father, \'I took to the voice of the trial.\' \'Stupid things!\' Alice thought to herself. \'Of the mushroom,\' said the King. \'I can\'t help it,\' said the King. \'Nothing whatever,\' said Alice. \'Exactly so,\' said Alice. \'Then you may.</p>'),('vi',11,'Chính sách vận chuyển',NULL,'<p>Hatter: \'it\'s very rude.\' The Hatter was out of a good opportunity for making her escape; so she felt sure it would be only rustling in the air. \'--as far out to the Queen. First came ten soldiers carrying clubs; these were all talking together: she made her feel very uneasy: to be rude, so she helped herself to some tea and bread-and-butter, and then turned to the table to measure herself by it, and yet it was done. They had not the smallest notice of them were animals, and some of them.</p><p>Dormouse crossed the court, \'Bring me the truth: did you manage to do next, when suddenly a White Rabbit put on your shoes and stockings for you now, dears? I\'m sure I have dropped them, I wonder?\' As she said to itself in a languid, sleepy voice. \'Who are YOU?\' Which brought them back again to the heads of the miserable Mock Turtle. \'Certainly not!\' said Alice to herself, and nibbled a little girl or a watch to take MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'You are,\' said.</p><p>Shark, But, when the race was over. Alice was not here before,\' said the Gryphon, \'that they WOULD go with the game,\' the Queen jumped up and saying, \'Thank you, sir, for your interesting story,\' but she saw in my time, but never ONE with such a dear little puppy it was!\' said Alice, looking down with her face brightened up again.) \'Please your Majesty,\' he began. \'You\'re a very poor speaker,\' said the King: \'leave out that it led into a large piece out of its mouth, and addressed her in such.</p><p>The Mock Turtle\'s heavy sobs. Lastly, she pictured to herself \'Now I can remember feeling a little ledge of rock, and, as they were IN the well,\' Alice said very politely, \'if I had to sing \"Twinkle, twinkle, little bat! How I wonder what you\'re talking about,\' said Alice. \'I mean what I say,\' the Mock Turtle went on, spreading out the verses to himself: \'\"WE KNOW IT TO BE TRUE--\" that\'s the jury-box,\' thought Alice, \'it\'ll never do to come before that!\' \'Call the first position in dancing.\'.</p>'),('vi',12,'Chính sách bảo mật',NULL,'<p>The Hatter opened his eyes. \'I wasn\'t asleep,\' he said to the law, And argued each case with MINE,\' said the Hatter, and here the conversation a little. \'\'Tis so,\' said Alice. \'Then you shouldn\'t talk,\' said the Mock Turtle to the jury, of course--\"I GAVE HER ONE, THEY GAVE HIM TWO--\" why, that must be getting home; the night-air doesn\'t suit my throat!\' and a crash of broken glass. \'What a curious croquet-ground in her hand, and Alice was a body to cut it off from: that he had to pinch it to.</p><p>Pigeon went on, \'What HAVE you been doing here?\' \'May it please your Majesty,\' the Hatter began, in a natural way again. \'I wonder if I might venture to go on with the Lory, with a sigh: \'he taught Laughing and Grief, they used to say.\' \'So he did, so he did,\' said the Gryphon, before Alice could see her after the rest waited in silence. At last the Mouse, turning to the jury, who instantly made a dreadfully ugly child: but it just at present--at least I mean what I should have liked teaching.</p><p>And it\'ll fetch things when you come to the jury. They were just beginning to end,\' said the Dormouse; \'--well in.\' This answer so confused poor Alice, \'it would be only rustling in the night? Let me see: four times five is twelve, and four times seven is--oh dear! I shall ever see you any more!\' And here poor Alice began in a tone of great dismay, and began picking them up again with a smile. There was no more of it at all. \'But perhaps it was only the pepper that had fluttered down from the.</p><p>I\'d only been the right size to do this, so that altogether, for the rest of the officers: but the tops of the officers: but the Mouse heard this, it turned a back-somersault in at the thought that it might injure the brain; But, now that I\'m perfectly sure I can\'t put it right; \'not that it was all finished, the Owl, as a last resource, she put them into a line along the course, here and there. There was not otherwise than what you had been broken to pieces. \'Please, then,\' said Alice, as she.</p>'),('vi',13,'Blog danh sách',NULL,'<p>[blog-posts paginate=\"12\"][/blog-posts]</p>'),('vi',14,'Blog Lớn',NULL,'<p>[blog-posts paginate=\"12\"][/blog-posts]</p>'),('vi',15,'Blog Rộng',NULL,'<p>[blog-posts paginate=\"12\"][/blog-posts]</p>'),('vi',16,'Trang chủ 5',NULL,'<div>[simple-slider key=\"home-slider-5\" ads_1=\"IZ6WU8KUALYJ\" ads_2=\"IZ6WU8KUALYK\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Sản phẩm phổ biến\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYL\" ads_2=\"IZ6WU8KUALYM\" ads_3=\"IZ6WU8KUALYN\" ads_4=\"IZ6WU8KUALYO\" style=\"style-5\"][/theme-ads]</div><div>[best-flash-sale title=\"Bán chạy nhất hàng ngày\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',17,'Trang chủ 6',NULL,'<div>[big-banner cover_image=\"general/home-6.jpeg\" show_newsletter_form=\"yes\" number_display_featured_categories=\"4\" title=\"Bạn đang tìm kiếm sản phẩm?\"][/big-banner]</div><div>[trending-products title=\"Các mặt hàng thịnh hành\" limit=\"20\"][/trending-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Ưu đãi trong ngày\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>'),('vi',18,'Câu hỏi thường gặp',NULL,'<div>[faqs][/faqs]</div>');
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` int unsigned DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',0,'NMNAMTEZD3','razorpay',NULL,1798.00,1,'completed','confirm',7,NULL,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'USD',0,'CENRI9P6MR','sslcommerz',NULL,59.40,2,'completed','confirm',7,NULL,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'USD',0,'0SGQRCPRWZ','bank_transfer',NULL,126.50,3,'pending','confirm',7,NULL,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54','Botble\\Ecommerce\\Models\\Customer',NULL),(4,'USD',0,'K6ACMS2WJE','paystack',NULL,172.80,4,'completed','confirm',4,NULL,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54','Botble\\Ecommerce\\Models\\Customer',NULL),(5,'USD',0,'NOLODPPY8C','paystack',NULL,381.30,5,'completed','confirm',4,NULL,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54','Botble\\Ecommerce\\Models\\Customer',NULL),(6,'USD',0,'67XI1J9IQN','paystack',NULL,237.30,6,'completed','confirm',4,NULL,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54','Botble\\Ecommerce\\Models\\Customer',NULL),(7,'USD',0,'9EP39MQGTQ','stripe',NULL,365.80,7,'completed','confirm',3,NULL,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54','Botble\\Ecommerce\\Models\\Customer',NULL),(8,'USD',0,'28XXEYYXX0','paystack',NULL,262.50,8,'completed','confirm',3,NULL,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54','Botble\\Ecommerce\\Models\\Customer',NULL),(9,'USD',0,'2JQBUTPVQF','paystack',NULL,262.50,9,'completed','confirm',3,NULL,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54','Botble\\Ecommerce\\Models\\Customer',NULL),(10,'USD',0,'V4RBAJIPPL','bank_transfer',NULL,619.00,10,'pending','confirm',7,NULL,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54','Botble\\Ecommerce\\Models\\Customer',NULL),(11,'USD',0,'W1AFK8GNFK','paypal',NULL,137.50,11,'completed','confirm',7,NULL,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54','Botble\\Ecommerce\\Models\\Customer',NULL),(12,'USD',0,'GXJ60BYALQ','cod',NULL,1429.10,12,'pending','confirm',8,NULL,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54','Botble\\Ecommerce\\Models\\Customer',NULL),(13,'USD',0,'RZSOQQRVOX','sslcommerz',NULL,583.80,13,'completed','confirm',8,NULL,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54','Botble\\Ecommerce\\Models\\Customer',NULL),(14,'USD',0,'OWH3L6HQXQ','stripe',NULL,685.70,14,'completed','confirm',8,NULL,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54','Botble\\Ecommerce\\Models\\Customer',NULL),(15,'USD',0,'XBXNVUDEY6','bank_transfer',NULL,583.80,15,'pending','confirm',4,NULL,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54','Botble\\Ecommerce\\Models\\Customer',NULL),(16,'USD',0,'F2CWIKSXVY','mollie',NULL,372.00,16,'completed','confirm',4,NULL,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54','Botble\\Ecommerce\\Models\\Customer',NULL),(17,'USD',0,'0PKJWVAFZL','sslcommerz',NULL,356.50,17,'completed','confirm',4,NULL,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54','Botble\\Ecommerce\\Models\\Customer',NULL),(18,'USD',0,'TNJ9E31PS9','cod',NULL,368.90,18,'pending','confirm',3,NULL,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54','Botble\\Ecommerce\\Models\\Customer',NULL),(19,'USD',0,'KVJQN2GAOF','razorpay',NULL,341.00,19,'completed','confirm',3,NULL,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54','Botble\\Ecommerce\\Models\\Customer',NULL),(20,'USD',0,'BBMSU6EUVS','paypal',NULL,273.00,20,'completed','confirm',3,NULL,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54','Botble\\Ecommerce\\Models\\Customer',NULL),(21,'USD',0,'ADXKDRR7A7','stripe',NULL,520.60,21,'completed','confirm',1,NULL,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54','Botble\\Ecommerce\\Models\\Customer',NULL),(22,'USD',0,'TCKQLCYXY0','sslcommerz',NULL,262.50,22,'completed','confirm',1,NULL,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54','Botble\\Ecommerce\\Models\\Customer',NULL),(23,'USD',0,'QTGQK8UWK9','stripe',NULL,356.50,23,'completed','confirm',1,NULL,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54','Botble\\Ecommerce\\Models\\Customer',NULL),(24,'USD',0,'UJGD8ILNJD','cod',NULL,137.50,24,'pending','confirm',4,NULL,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54','Botble\\Ecommerce\\Models\\Customer',NULL),(25,'USD',0,'SK4C1U3B8D','paypal',NULL,140.80,25,'completed','confirm',4,NULL,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54','Botble\\Ecommerce\\Models\\Customer',NULL),(26,'USD',0,'IYWUPHK5QB','razorpay',NULL,79.20,26,'completed','confirm',8,NULL,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54','Botble\\Ecommerce\\Models\\Customer',NULL),(27,'USD',0,'2CN1FTCQCN','paypal',NULL,247.80,27,'completed','confirm',8,NULL,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54','Botble\\Ecommerce\\Models\\Customer',NULL),(28,'USD',0,'UEK69GVFZV','paypal',NULL,126.50,28,'completed','confirm',8,NULL,NULL,'2022-04-20 20:19:54','2022-04-20 20:19:54','Botble\\Ecommerce\\Models\\Customer',NULL),(29,'USD',0,'ZEPDEMVORO','mollie',NULL,130.90,29,'completed','confirm',7,NULL,NULL,'2022-04-20 20:19:55','2022-04-20 20:19:55','Botble\\Ecommerce\\Models\\Customer',NULL),(30,'USD',0,'ULSM6COLO3','cod',NULL,356.50,30,'pending','confirm',7,NULL,NULL,'2022-04-20 20:19:55','2022-04-20 20:19:55','Botble\\Ecommerce\\Models\\Customer',NULL),(31,'USD',0,'S7XI3FWKEB','paystack',NULL,1305.10,31,'completed','confirm',4,NULL,NULL,'2022-04-20 20:19:55','2022-04-20 20:19:55','Botble\\Ecommerce\\Models\\Customer',NULL),(32,'USD',0,'DAZ3S6EX9B','paypal',NULL,223.20,32,'completed','confirm',4,NULL,NULL,'2022-04-20 20:19:55','2022-04-20 20:19:55','Botble\\Ecommerce\\Models\\Customer',NULL),(33,'USD',0,'DTVEPH3FO4','cod',NULL,356.50,33,'pending','confirm',4,NULL,NULL,'2022-04-20 20:19:55','2022-04-20 20:19:55','Botble\\Ecommerce\\Models\\Customer',NULL),(34,'USD',0,'ENJHWYR7HP','mollie',NULL,1306.90,34,'completed','confirm',3,NULL,NULL,'2022-04-20 20:19:55','2022-04-20 20:19:55','Botble\\Ecommerce\\Models\\Customer',NULL),(35,'USD',0,'2G7PGBLXU3','cod',NULL,262.50,35,'pending','confirm',3,NULL,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56','Botble\\Ecommerce\\Models\\Customer',NULL),(36,'USD',0,'KYYISSZZJ5','paystack',NULL,151.20,36,'completed','confirm',7,NULL,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56','Botble\\Ecommerce\\Models\\Customer',NULL),(37,'USD',0,'LHVDYEBFAX','razorpay',NULL,465.30,37,'completed','confirm',7,NULL,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56','Botble\\Ecommerce\\Models\\Customer',NULL),(38,'USD',0,'HNDS3FAID9','stripe',NULL,130.90,38,'completed','confirm',7,NULL,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56','Botble\\Ecommerce\\Models\\Customer',NULL),(39,'USD',0,'TBDRKDGHGP','mollie',NULL,691.30,39,'completed','confirm',8,NULL,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56','Botble\\Ecommerce\\Models\\Customer',NULL),(40,'USD',0,'1Y2KEIK6Y2','cod',NULL,262.50,40,'pending','confirm',8,NULL,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56','Botble\\Ecommerce\\Models\\Customer',NULL),(41,'USD',0,'QOPKHD8EBJ','bank_transfer',NULL,241.50,41,'pending','confirm',8,NULL,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56','Botble\\Ecommerce\\Models\\Customer',NULL),(42,'USD',0,'JKO7FRNGWY','razorpay',NULL,223.20,42,'completed','confirm',7,NULL,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56','Botble\\Ecommerce\\Models\\Customer',NULL),(43,'USD',0,'B3IKE5QCEB','cod',NULL,365.80,43,'pending','confirm',7,NULL,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56','Botble\\Ecommerce\\Models\\Customer',NULL),(44,'USD',0,'PTLLJ8PDD7','paypal',NULL,223.20,44,'completed','confirm',8,NULL,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56','Botble\\Ecommerce\\Models\\Customer',NULL),(45,'USD',0,'5GMCG5SFQW','mollie',NULL,132.00,45,'completed','confirm',8,NULL,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56','Botble\\Ecommerce\\Models\\Customer',NULL),(46,'USD',0,'HS1SNXSVLN','cod',NULL,130.90,46,'pending','confirm',8,NULL,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56','Botble\\Ecommerce\\Models\\Customer',NULL),(47,'USD',0,'JAXBSZGCCU','paypal',NULL,223.20,47,'completed','confirm',1,NULL,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56','Botble\\Ecommerce\\Models\\Customer',NULL),(48,'USD',0,'UWHVCFGDQG','paypal',NULL,676.90,48,'completed','confirm',1,NULL,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56','Botble\\Ecommerce\\Models\\Customer',NULL),(49,'USD',0,'RX6VJBO5LS','paystack',NULL,245.30,49,'completed','confirm',4,NULL,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56','Botble\\Ecommerce\\Models\\Customer',NULL),(50,'USD',0,'WXSCZJGYPD','mollie',NULL,962.80,50,'completed','confirm',3,NULL,NULL,'2022-04-20 20:19:56','2022-04-20 20:19:56','Botble\\Ecommerce\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,2,1),(2,4,1),(3,2,2),(4,3,2),(5,2,3),(6,3,3),(7,1,4),(8,4,4),(9,2,5),(10,3,5),(11,2,6),(12,3,6),(13,1,7),(14,4,7),(15,2,8),(16,4,8),(17,2,9),(18,4,9),(19,1,10),(20,4,10),(21,1,11),(22,3,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,1,2),(7,2,2),(8,3,2),(9,4,2),(10,5,2),(11,1,3),(12,2,3),(13,3,3),(14,4,3),(15,5,3),(16,1,4),(17,2,4),(18,3,4),(19,4,4),(20,5,4),(21,1,5),(22,2,5),(23,3,5),(24,4,5),(25,5,5),(26,1,6),(27,2,6),(28,3,6),(29,4,6),(30,5,6),(31,1,7),(32,2,7),(33,3,7),(34,4,7),(35,5,7),(36,1,8),(37,2,8),(38,3,8),(39,4,8),(40,5,8),(41,1,9),(42,2,9),(43,3,9),(44,4,9),(45,5,9),(46,1,10),(47,2,10),(48,3,10),(49,4,10),(50,5,10),(51,1,11),(52,2,11),(53,3,11),(54,4,11),(55,5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_author_id_author_type_created_at_index` (`status`,`author_id`,`author_type`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.png',822,NULL,'2022-03-16 02:41:33','2022-03-16 02:41:33'),(2,'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.png',1674,NULL,'2022-03-16 02:41:33','2022-03-16 02:41:33'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.png',1105,NULL,'2022-03-16 02:41:33','2022-03-16 02:41:33'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n[featured-products title=\"Shop The Look\" limit=\"6\"][/featured-products]\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.png',495,NULL,'2022-03-16 02:41:33','2022-03-16 02:41:33'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.png',873,NULL,'2022-03-16 02:41:33','2022-03-16 02:41:33'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.png',267,NULL,'2022-03-16 02:41:33','2022-03-16 02:41:33'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.png',1743,NULL,'2022-03-16 02:41:33','2022-03-16 02:41:33'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.png',985,NULL,'2022-03-16 02:41:33','2022-03-16 02:41:33'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.png',2422,NULL,'2022-03-16 02:41:33','2022-03-16 02:41:33'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.png',1546,NULL,'2022-03-16 02:41:33','2022-03-16 02:41:33'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.png',2227,NULL,'2022-03-16 02:41:33','2022-03-16 02:41:33');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
INSERT INTO `posts_translations` VALUES ('vi',1,'4 Lời khuyên của Chuyên gia về Cách Chọn Ví Nam Phù hợp','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',2,'Sexy Clutches: Cách Mua & Đeo Túi Clutch Thiết kế','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',3,'Xu hướng túi xách hàng đầu năm 2020 cần biết','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',4,'Cách Phối Màu Túi Xách Của Bạn Với Trang Phục','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',5,'Cách Chăm sóc Túi Da','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',6,'Chúng tôi đang nghiền ngẫm 10 xu hướng túi lớn nhất của mùa hè','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',7,'Những phẩm chất cần thiết của âm nhạc thành công cao','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',8,'9 điều tôi thích khi cạo đầu','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',9,'Tại sao làm việc theo nhóm thực sự biến giấc mơ thành công','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',10,'Thế giới phục vụ cho những người trung bình','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',11,'Các đương sự trên màn hình không phải là diễn viên','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n');
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `new_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `role_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"marketplace\",\"mollie\",\"newsletter\",\"payment\",\"paystack\",\"razorpay\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"translation\",\"faq\",\"location\"]',NULL,NULL),(2,'payment_cod_status','1',NULL,NULL),(3,'payment_bank_transfer_status','1',NULL,NULL),(4,'permalink-botble-blog-models-post','blog',NULL,NULL),(5,'permalink-botble-blog-models-category','blog',NULL,NULL),(6,'permalink-botble-blog-models-tag','tag',NULL,NULL),(7,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,NULL),(8,'payment_bank_transfer_description','Please send money to our bank account: ACB - 1990 404 19.',NULL,NULL),(9,'plugins_ecommerce_customer_new_order_status','0',NULL,NULL),(10,'plugins_ecommerce_admin_new_order_status','0',NULL,NULL),(11,'sale_popup_display_pages','[\"public.index\"]',NULL,NULL),(12,'admin_email','[]',NULL,NULL),(13,'time_zone','UTC',NULL,NULL),(14,'locale_direction','ltr',NULL,NULL),(15,'enable_send_error_reporting_via_email','0',NULL,NULL),(16,'login_screen_backgrounds','[]',NULL,NULL),(17,'admin_title','Laravel',NULL,NULL),(18,'rich_editor','ckeditor',NULL,NULL),(19,'enable_change_admin_theme','0',NULL,NULL),(20,'enable_cache','0',NULL,NULL),(21,'cache_time','10',NULL,NULL),(22,'cache_admin_menu_enable','0',NULL,NULL),(23,'google_site_verification','',NULL,NULL),(24,'cache_time_site_map','3600',NULL,NULL),(25,'show_admin_bar','1',NULL,NULL),(26,'enable_faq_schema','0',NULL,NULL),(27,'google_analytics','',NULL,NULL),(28,'analytics_view_id','',NULL,NULL),(29,'analytics_service_account_credentials','',NULL,NULL),(30,'newsletter_mailchimp_api_key','',NULL,NULL),(31,'newsletter_mailchimp_list_id','',NULL,NULL),(32,'newsletter_sendgrid_api_key','',NULL,NULL),(33,'newsletter_sendgrid_list_id','',NULL,NULL),(34,'enable_captcha','0',NULL,NULL),(35,'captcha_type','v2',NULL,NULL),(36,'captcha_hide_badge','0',NULL,NULL),(37,'captcha_site_key','',NULL,NULL),(38,'captcha_secret','',NULL,NULL),(39,'simple_slider_using_assets','1',NULL,NULL),(40,'locale','en',NULL,NULL),(41,'default_admin_theme','default',NULL,NULL),(42,'admin_locale_direction','ltr',NULL,NULL),(142,'language_hide_default','1',NULL,NULL),(143,'language_switcher_display','dropdown',NULL,NULL),(144,'language_display','all',NULL,NULL),(145,'language_hide_languages','[]',NULL,NULL),(146,'ecommerce_store_name','Nest',NULL,NULL),(147,'ecommerce_store_phone','18006268',NULL,NULL),(148,'ecommerce_store_address','North Link Building, 10 Admiralty Street',NULL,NULL),(149,'ecommerce_store_state','Singapore',NULL,NULL),(150,'ecommerce_store_city','Singapore',NULL,NULL),(151,'ecommerce_store_country','SG',NULL,NULL),(163,'theme','nest',NULL,NULL),(164,'admin_favicon','general/favicon.png',NULL,NULL),(165,'admin_logo','general/logo.png',NULL,NULL),(166,'theme-nest-site_title','Manamcart - Laravel Multipurpose eCommerce Script',NULL,NULL),(167,'theme-nest-copyright','Copyright © 2021 Manamcart all rights reserved. Powered by SHARIQQ.COM.',NULL,NULL),(168,'theme-nest-favicon','general/favicon.png',NULL,NULL),(169,'theme-nest-logo','general/logo.png',NULL,NULL),(170,'theme-nest-seo_og_image','general/open-graph-image.png',NULL,NULL),(171,'theme-nest-address','562 Wellington Road, Street 32, San Francisco',NULL,NULL),(172,'theme-nest-hotline','1900 - 888',NULL,NULL),(173,'theme-nest-phone','+01 2222 365 /(+91) 01 2345 6789',NULL,NULL),(174,'theme-nest-working_hours','10:00 - 18:00, Mon - Sat',NULL,NULL),(175,'theme-nest-homepage_id','1',NULL,NULL),(176,'theme-nest-blog_page_id','5',NULL,NULL),(177,'theme-nest-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(178,'theme-nest-cookie_consent_learn_more_url','http://nest.test/cookie-policy',NULL,NULL),(179,'theme-nest-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(180,'theme-nest-payment_methods','general/payment-methods.png',NULL,NULL),(181,'theme-nest-number_of_cross_sale_products_in_cart_page','4',NULL,NULL),(182,'theme-nest-mobile-header-message','<span>Grand opening, <strong>up to 15%</strong> off all items. Only <strong>3 days</strong> left</span>',NULL,NULL),(183,'theme-nest-blog_page_background','general/header-bg.png',NULL,NULL),(184,'theme-nest-blog_page_icon','general/category-1.png',NULL,NULL),(185,'theme-nest-image_in_login_page','general/login-1.png',NULL,NULL),(186,'theme-nest-number_of_products_per_page','12',NULL,NULL),(187,'theme-nest-preloader_enabled','yes',NULL,NULL),(188,'theme-nest-preloader_version','v2',NULL,NULL),(189,'theme-nest-preloader_image','general/loading.gif',NULL,NULL),(190,'theme-nest-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"general\\/facebook.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"general\\/twitter.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"general\\/instagram.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"general\\/pinterest.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"general\\/youtube.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]',NULL,NULL),(191,'theme-nest-header_messages','[[{\"key\":\"icon\",\"value\":\"fi-rs-bell\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-success\\\"> Trendy 25<\\/b> silver jewelry, save up 35% off today\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Shop now\"}],[{\"key\":\"icon\",\"value\":\"fi-rs-asterisk\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-danger\\\">Supper Value Deals<\\/b> - Save more with coupons\"},{\"key\":\"link\",\"value\":null},{\"key\":\"link_text\",\"value\":null}],[{\"key\":\"icon\",\"value\":\"fi-rs-angle-double-right\"},{\"key\":\"message\",\"value\":\"Get great devices up to 50% off\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"View details\"}]]',NULL,NULL),(192,'theme-nest-contact_info_boxes','[[{\"key\":\"name\",\"value\":\"Head Office\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"office@shariqq.com\"}],[{\"key\":\"name\",\"value\":\"Our Studio\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"studio@shariqq.com\"}],[{\"key\":\"name\",\"value\":\"Our Shop\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"shop@shariqq.com\"}]]',NULL,NULL),(193,'theme-nest-vi-font_text','Roboto Condensed',NULL,NULL),(194,'theme-nest-vi-copyright','Bản quyền © 2021 Manamcart tất cả quyền đã được bảo hộ. Phát triển bởi Botble.',NULL,NULL),(195,'theme-nest-vi-working_hours','10:00 - 18:00, Thứ Hai - Thứ Bảy',NULL,NULL),(196,'theme-nest-vi-cookie_consent_message','Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ',NULL,NULL),(197,'theme-nest-vi-cookie_consent_learn_more_url','http://nest.test/cookie-policy',NULL,NULL),(198,'theme-nest-vi-cookie_consent_learn_more_text','Chính sách cookie',NULL,NULL),(199,'theme-nest-vi-homepage_id','1',NULL,NULL),(200,'theme-nest-vi-blog_page_id','5',NULL,NULL),(201,'theme-nest-vi-header_messages','[[{\"key\":\"icon\",\"value\":\"fi-rs-bell\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-success\\\">Trang s\\u1ee9c b\\u1ea1c 25 <\\/b> th\\u1eddi th\\u01b0\\u1ee3ng, ti\\u1ebft ki\\u1ec7m \\u0111\\u1ebfn 35%\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Mua ngay\"}],[{\"key\":\"icon\",\"value\":\"fi-rs-asterisk\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-danger\\\">\\u01afu \\u0111\\u00e3i si\\u00eau gi\\u00e1 tr\\u1ecb <\\/b> - Ti\\u1ebft ki\\u1ec7m h\\u01a1n v\\u1edbi phi\\u1ebfu th\\u01b0\\u1edfng\"},{\"key\":\"link\",\"value\":null},{\"key\":\"link_text\",\"value\":null}],[{\"key\":\"icon\",\"value\":\"fi-rs-angle-double-right\"},{\"key\":\"message\",\"value\":\"Nh\\u1eadn c\\u00e1c s\\u1ea3n ph\\u1ea9m tuy\\u1ec7t v\\u1eddi gi\\u1ea3m gi\\u00e1 t\\u1edbi 50%\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Xem chi ti\\u1ebft\"}]]',NULL,NULL),(202,'theme-nest-vi-contact_info_boxes','[[{\"key\":\"name\",\"value\":\"Tr\\u1ee5 s\\u1edf ch\\u00ednh\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"office@shariqq.com\"}],[{\"key\":\"name\",\"value\":\"Gian h\\u00e0ng tr\\u01b0ng b\\u00e0y\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"studio@shariqq.com\"}],[{\"key\":\"name\",\"value\":\"C\\u1eeda h\\u00e0ng\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"shop@shariqq.com\"}]]',NULL,NULL),(203,'media_random_hash','ff524eeef69b1d365d4c62b08ae14e4a',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` int unsigned NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Don’t miss amazing<br /> grocery deals','sliders/1-1.png','/products','Sign up for the daily newsletter',1,'2022-03-16 02:41:23','2022-03-16 02:41:23'),(2,1,'Fresh Vegetables<br />\n										Big discount','sliders/1-2.png','/products','Save up to 50% off on your first order',2,'2022-03-16 02:41:23','2022-03-16 02:41:23'),(3,2,'Don’t miss amazing<br /> grocery deals','sliders/2-1.png','/products','Sign up for the daily newsletter',1,'2022-03-16 02:41:23','2022-03-16 02:41:23'),(4,2,'Fresh Vegetables<br />\n										Big discount','sliders/2-2.png','/products','Save up to 50% off on your first order',2,'2022-03-16 02:41:23','2022-03-16 02:41:23'),(5,3,'Don’t miss amazing<br /> grocery deals','sliders/3-1.png','/products','Sign up for the daily newsletter',1,'2022-03-16 02:41:23','2022-03-16 02:41:23'),(6,3,'Fresh Vegetables<br />\n										Big discount','sliders/3-2.png','/products','Save up to 50% off on your first order',2,'2022-03-16 02:41:23','2022-03-16 02:41:23'),(7,4,'Don’t miss amazing<br /> grocery deals','sliders/4-1.png','/products','Sign up for the daily newsletter',1,'2022-03-16 02:41:23','2022-03-16 02:41:23'),(8,4,'Fresh Vegetables<br />\n										Big discount','sliders/4-2.png','/products','Save up to 50% off on your first order',2,'2022-03-16 02:41:23','2022-03-16 02:41:23'),(9,5,'Don’t miss amazing<br /> grocery deals','sliders/5-1.png','/products','Sign up for the daily newsletter',1,'2022-03-16 02:41:23','2022-03-16 02:41:23'),(10,5,'Fresh Vegetables<br />\n										Big discount','sliders/5-2.png','/products','Save up to 50% off on your first order',2,'2022-03-16 02:41:23','2022-03-16 02:41:23'),(11,6,'Don’t miss amazing<br /> grocery deals','sliders/6-1.png','/products','Sign up for the daily newsletter',1,'2022-03-16 02:41:23','2022-03-16 02:41:23'),(12,7,NULL,'sliders/thumbnail-1.jpg',NULL,NULL,1,'2022-03-16 02:41:23','2022-03-16 02:41:23'),(13,7,NULL,'sliders/thumbnail-2.jpg',NULL,NULL,2,'2022-03-16 02:41:23','2022-03-16 02:41:23'),(14,7,NULL,'sliders/thumbnail-3.jpg',NULL,NULL,3,'2022-03-16 02:41:23','2022-03-16 02:41:23'),(15,7,NULL,'sliders/thumbnail-4.jpg',NULL,NULL,4,'2022-03-16 02:41:23','2022-03-16 02:41:23'),(16,7,NULL,'sliders/thumbnail-5.jpg',NULL,NULL,5,'2022-03-16 02:41:23','2022-03-16 02:41:23'),(17,7,NULL,'sliders/thumbnail-6.jpg',NULL,NULL,6,'2022-03-16 02:41:23','2022-03-16 02:41:23'),(18,8,'Đừng bỏ lỡ <br /> tuyệt vời giao dịch hàng tạp hóa','sliders/1-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2022-03-16 02:41:23','2022-03-16 02:41:23'),(19,8,'Rau tươi <br />Giảm giá lớn','sliders/1-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2022-03-16 02:41:23','2022-03-16 02:41:23'),(20,9,'Đừng bỏ lỡ <br /> tuyệt vời giao dịch hàng tạp hóa','sliders/2-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2022-03-16 02:41:23','2022-03-16 02:41:23'),(21,9,'Rau tươi <br />Giảm giá lớn','sliders/2-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2022-03-16 02:41:23','2022-03-16 02:41:23'),(22,10,'Đừng bỏ lỡ <br /> tuyệt vời giao dịch hàng tạp hóa','sliders/3-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2022-03-16 02:41:23','2022-03-16 02:41:23'),(23,10,'Rau tươi <br />Giảm giá lớn','sliders/3-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2022-03-16 02:41:23','2022-03-16 02:41:23'),(24,11,'Đừng bỏ lỡ <br /> tuyệt vời giao dịch hàng tạp hóa','sliders/4-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2022-03-16 02:41:23','2022-03-16 02:41:23'),(25,11,'Rau tươi <br />Giảm giá lớn','sliders/4-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2022-03-16 02:41:23','2022-03-16 02:41:23'),(26,12,'Đừng bỏ lỡ <br /> tuyệt vời giao dịch hàng tạp hóa','sliders/5-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2022-03-16 02:41:23','2022-03-16 02:41:23'),(27,12,'Rau tươi <br />Giảm giá lớn','sliders/5-2.png','/products','Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn',2,'2022-03-16 02:41:23','2022-03-16 02:41:23'),(28,13,'Đừng bỏ lỡ <br /> tuyệt vời giao dịch hàng tạp hóa','sliders/6-1.png','/products','Tiết kiệm hơn với mã giảm giá 70%',1,'2022-03-16 02:41:23','2022-03-16 02:41:23'),(29,14,NULL,'sliders/thumbnail-1.jpg',NULL,NULL,1,'2022-03-16 02:41:23','2022-03-16 02:41:23'),(30,14,NULL,'sliders/thumbnail-2.jpg',NULL,NULL,2,'2022-03-16 02:41:23','2022-03-16 02:41:23'),(31,14,NULL,'sliders/thumbnail-3.jpg',NULL,NULL,3,'2022-03-16 02:41:23','2022-03-16 02:41:23'),(32,14,NULL,'sliders/thumbnail-4.jpg',NULL,NULL,4,'2022-03-16 02:41:23','2022-03-16 02:41:23'),(33,14,NULL,'sliders/thumbnail-5.jpg',NULL,NULL,5,'2022-03-16 02:41:23','2022-03-16 02:41:23'),(34,14,NULL,'sliders/thumbnail-6.jpg',NULL,NULL,6,'2022-03-16 02:41:23','2022-03-16 02:41:23');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider 1','home-slider-1',NULL,'published','2022-03-16 02:41:23','2022-03-16 02:41:23'),(2,'Home slider 2','home-slider-2',NULL,'published','2022-03-16 02:41:23','2022-03-16 02:41:23'),(3,'Home slider 3','home-slider-3',NULL,'published','2022-03-16 02:41:23','2022-03-16 02:41:23'),(4,'Home slider 4','home-slider-4',NULL,'published','2022-03-16 02:41:23','2022-03-16 02:41:23'),(5,'Home slider 5','home-slider-5',NULL,'published','2022-03-16 02:41:23','2022-03-16 02:41:23'),(6,'Home slider 6','home-slider-6',NULL,'published','2022-03-16 02:41:23','2022-03-16 02:41:23'),(7,'Blog slider 1','blog-slider-1',NULL,'published','2022-03-16 02:41:23','2022-03-16 02:41:23'),(8,'Slider trang chủ 1','slider-trang-chu-1',NULL,'published','2022-03-16 02:41:23','2022-03-16 02:41:23'),(9,'Slider trang chủ 2','slider-trang-chu-2',NULL,'published','2022-03-16 02:41:23','2022-03-16 02:41:23'),(10,'Slider trang chủ 3','slider-trang-chu-3',NULL,'published','2022-03-16 02:41:23','2022-03-16 02:41:23'),(11,'Slider trang chủ 4','slider-trang-chu-4',NULL,'published','2022-03-16 02:41:23','2022-03-16 02:41:23'),(12,'Slider trang chủ 5','slider-trang-chu-5',NULL,'published','2022-03-16 02:41:23','2022-03-16 02:41:23'),(13,'Slider trang chủ 6','slider-trang-chu-6',NULL,'published','2022-03-16 02:41:23','2022-03-16 02:41:23'),(14,'Slider blog 1','slider-blog-1',NULL,'published','2022-03-16 02:41:23','2022-03-16 02:41:23');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'perxsion',1,'Botble\\Ecommerce\\Models\\Brand','brands','2022-03-16 02:40:43','2022-03-16 02:40:43'),(2,'hiching',2,'Botble\\Ecommerce\\Models\\Brand','brands','2022-03-16 02:40:43','2022-03-16 02:40:43'),(3,'kepslo',3,'Botble\\Ecommerce\\Models\\Brand','brands','2022-03-16 02:40:43','2022-03-16 02:40:43'),(4,'groneba',4,'Botble\\Ecommerce\\Models\\Brand','brands','2022-03-16 02:40:43','2022-03-16 02:40:43'),(5,'babian',5,'Botble\\Ecommerce\\Models\\Brand','brands','2022-03-16 02:40:43','2022-03-16 02:40:43'),(6,'valorant',6,'Botble\\Ecommerce\\Models\\Brand','brands','2022-03-16 02:40:43','2022-03-16 02:40:43'),(7,'pure',7,'Botble\\Ecommerce\\Models\\Brand','brands','2022-03-16 02:40:43','2022-03-16 02:40:43'),(8,'milks-and-dairies',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-03-16 02:40:48','2022-03-16 02:40:48'),(9,'clothing-beauty',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-03-16 02:40:48','2022-03-16 02:40:48'),(10,'pet-toy',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-03-16 02:40:48','2022-03-16 02:40:48'),(11,'baking-material',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-03-16 02:40:48','2022-03-16 02:40:48'),(12,'fresh-fruit',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-03-16 02:40:48','2022-03-16 02:40:48'),(13,'wines-drinks',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-03-16 02:40:48','2022-03-16 02:40:48'),(14,'fresh-seafood',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-03-16 02:40:48','2022-03-16 02:40:48'),(15,'fast-food',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-03-16 02:40:48','2022-03-16 02:40:48'),(16,'vegetables',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-03-16 02:40:48','2022-03-16 02:40:48'),(17,'bread-and-juice',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-03-16 02:40:48','2022-03-16 02:40:48'),(18,'cake-milk',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-03-16 02:40:48','2022-03-16 02:40:48'),(19,'coffee-teas',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-03-16 02:40:48','2022-03-16 02:40:48'),(20,'pet-foods',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-03-16 02:40:48','2022-03-16 02:40:48'),(21,'diet-foods',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-03-16 02:40:48','2022-03-16 02:40:48'),(22,'wallet',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-03-16 02:40:48','2022-03-16 02:40:48'),(23,'bags',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-03-16 02:40:48','2022-03-16 02:40:48'),(24,'shoes',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-03-16 02:40:48','2022-03-16 02:40:48'),(25,'clothes',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-03-16 02:40:48','2022-03-16 02:40:48'),(26,'hand-bag',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-03-16 02:40:48','2022-03-16 02:40:48'),(27,'seeds-of-change-organic-quinoe',1,'Botble\\Ecommerce\\Models\\Product','products','2022-03-16 02:41:04','2022-03-16 02:41:04'),(28,'all-natural-italian-style-chicken-meatballs',2,'Botble\\Ecommerce\\Models\\Product','products','2022-03-16 02:41:04','2022-03-16 02:41:04'),(29,'angies-boomchickapop-sweet-salty-kettle-corn',3,'Botble\\Ecommerce\\Models\\Product','products','2022-03-16 02:41:04','2022-03-16 02:41:04'),(30,'foster-farms-takeout-crispy-classic',4,'Botble\\Ecommerce\\Models\\Product','products','2022-03-16 02:41:04','2022-03-16 02:41:04'),(31,'blue-diamond-almonds-lightly',5,'Botble\\Ecommerce\\Models\\Product','products','2022-03-16 02:41:04','2022-03-16 02:41:04'),(32,'chobani-complete-vanilla-greek',6,'Botble\\Ecommerce\\Models\\Product','products','2022-03-16 02:41:04','2022-03-16 02:41:04'),(33,'canada-dry-ginger-ale-2-l-bottle',7,'Botble\\Ecommerce\\Models\\Product','products','2022-03-16 02:41:04','2022-03-16 02:41:04'),(34,'encore-seafoods-stuffed-alaskan',8,'Botble\\Ecommerce\\Models\\Product','products','2022-03-16 02:41:04','2022-03-16 02:41:04'),(35,'gortons-beer-battered-fish-fillets',9,'Botble\\Ecommerce\\Models\\Product','products','2022-03-16 02:41:04','2022-03-16 02:41:04'),(36,'haagen-dazs-caramel-cone-ice-cream',10,'Botble\\Ecommerce\\Models\\Product','products','2022-03-16 02:41:04','2022-03-16 02:41:04'),(37,'nestle-original-coffee-mate-coffee-creamer',11,'Botble\\Ecommerce\\Models\\Product','products','2022-03-16 02:41:04','2022-03-16 02:41:04'),(38,'naturally-flavored-cinnamon-vanilla-light-roast-coffee',12,'Botble\\Ecommerce\\Models\\Product','products','2022-03-16 02:41:04','2022-03-16 02:41:04'),(39,'pepperidge-farm-farmhouse-hearty-white-bread',13,'Botble\\Ecommerce\\Models\\Product','products','2022-03-16 02:41:04','2022-03-16 02:41:04'),(40,'organic-frozen-triple-berry-blend',14,'Botble\\Ecommerce\\Models\\Product','products','2022-03-16 02:41:04','2022-03-16 02:41:04'),(41,'oroweat-country-buttermilk-bread',15,'Botble\\Ecommerce\\Models\\Product','products','2022-03-16 02:41:04','2022-03-16 02:41:04'),(42,'foster-farms-takeout-crispy-classic-buffalo-wings',16,'Botble\\Ecommerce\\Models\\Product','products','2022-03-16 02:41:04','2022-03-16 02:41:04'),(43,'angies-boomchickapop-sweet-salty-kettle-corn',17,'Botble\\Ecommerce\\Models\\Product','products','2022-03-16 02:41:04','2022-03-16 02:41:04'),(44,'all-natural-italian-style-chicken-meatballs',18,'Botble\\Ecommerce\\Models\\Product','products','2022-03-16 02:41:04','2022-03-16 02:41:04'),(45,'simply-lemonade-with-raspberry-juice',19,'Botble\\Ecommerce\\Models\\Product','products','2022-03-16 02:41:04','2022-03-16 02:41:04'),(46,'perdue-simply-smart-organics-gluten-free',20,'Botble\\Ecommerce\\Models\\Product','products','2022-03-16 02:41:04','2022-03-16 02:41:04'),(47,'chen-watermelon',21,'Botble\\Ecommerce\\Models\\Product','products','2022-03-16 02:41:04','2022-03-16 02:41:04'),(48,'organic-cage-free-grade-a-large-brown-eggs',22,'Botble\\Ecommerce\\Models\\Product','products','2022-03-16 02:41:04','2022-03-16 02:41:04'),(49,'colorful-banana',23,'Botble\\Ecommerce\\Models\\Product','products','2022-03-16 02:41:04','2022-03-16 02:41:04'),(50,'signature-wood-fired-mushroom-and-caramelized',24,'Botble\\Ecommerce\\Models\\Product','products','2022-03-16 02:41:04','2022-03-16 02:41:04'),(51,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2022-03-16 02:41:33','2022-03-22 19:31:53'),(52,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2022-03-16 02:41:33','2022-03-22 19:31:53'),(53,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2022-03-16 02:41:33','2022-03-22 19:31:53'),(54,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2022-03-16 02:41:33','2022-03-22 19:31:53'),(55,'general',1,'Botble\\Blog\\Models\\Tag','tag','2022-03-16 02:41:33','2022-03-22 19:31:53'),(56,'design',2,'Botble\\Blog\\Models\\Tag','tag','2022-03-16 02:41:33','2022-03-22 19:31:53'),(57,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2022-03-16 02:41:33','2022-03-22 19:31:53'),(58,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2022-03-16 02:41:33','2022-03-22 19:31:53'),(59,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2022-03-16 02:41:33','2022-03-22 19:31:53'),(60,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2022-03-16 02:41:33','2022-03-22 19:31:53'),(61,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2022-03-16 02:41:33','2022-03-22 19:31:53'),(62,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2022-03-16 02:41:33','2022-03-22 19:31:53'),(63,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2022-03-16 02:41:33','2022-03-22 19:31:53'),(64,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2022-03-16 02:41:33','2022-03-22 19:31:53'),(65,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2022-03-16 02:41:33','2022-03-22 19:31:53'),(66,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2022-03-16 02:41:33','2022-03-22 19:31:53'),(67,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2022-03-16 02:41:33','2022-03-22 19:31:53'),(68,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2022-03-16 02:41:33','2022-03-22 19:31:53'),(69,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2022-03-16 02:41:33','2022-03-22 19:31:53'),(70,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2022-03-16 02:41:33','2022-03-22 19:31:53'),(71,'homepage',1,'Botble\\Page\\Models\\Page','','2022-03-16 02:41:33','2022-03-16 02:41:33'),(72,'homepage-2',2,'Botble\\Page\\Models\\Page','','2022-03-16 02:41:33','2022-03-16 02:41:33'),(73,'homepage-3',3,'Botble\\Page\\Models\\Page','','2022-03-16 02:41:33','2022-03-16 02:41:33'),(74,'homepage-4',4,'Botble\\Page\\Models\\Page','','2022-03-16 02:41:33','2022-03-16 02:41:33'),(75,'blog',5,'Botble\\Page\\Models\\Page','','2022-03-16 02:41:33','2022-03-16 02:41:33'),(76,'contact',6,'Botble\\Page\\Models\\Page','','2022-03-16 02:41:33','2022-03-16 02:41:33'),(77,'about-us',7,'Botble\\Page\\Models\\Page','','2022-03-16 02:41:33','2022-03-16 02:41:33'),(78,'cookie-policy',8,'Botble\\Page\\Models\\Page','','2022-03-16 02:41:33','2022-03-16 02:41:33'),(79,'terms-conditions',9,'Botble\\Page\\Models\\Page','','2022-03-16 02:41:33','2022-03-16 02:41:33'),(80,'returns-exchanges',10,'Botble\\Page\\Models\\Page','','2022-03-16 02:41:33','2022-03-16 02:41:33'),(81,'shipping-delivery',11,'Botble\\Page\\Models\\Page','','2022-03-16 02:41:33','2022-03-16 02:41:33'),(82,'privacy-policy',12,'Botble\\Page\\Models\\Page','','2022-03-16 02:41:33','2022-03-16 02:41:33'),(83,'blog-list',13,'Botble\\Page\\Models\\Page','','2022-03-16 02:41:33','2022-03-16 02:41:33'),(84,'blog-big',14,'Botble\\Page\\Models\\Page','','2022-03-16 02:41:33','2022-03-16 02:41:33'),(85,'blog-wide',15,'Botble\\Page\\Models\\Page','','2022-03-16 02:41:33','2022-03-16 02:41:33'),(86,'homepage-5',16,'Botble\\Page\\Models\\Page','','2022-03-16 02:41:33','2022-03-16 02:41:33'),(87,'homepage-6',17,'Botble\\Page\\Models\\Page','','2022-03-16 02:41:33','2022-03-16 02:41:33'),(88,'faq',18,'Botble\\Page\\Models\\Page','','2022-03-16 02:41:33','2022-03-16 02:41:33'),(89,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2022-03-16 02:41:49','2022-03-16 02:41:49'),(90,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2022-03-16 02:41:49','2022-03-16 02:41:49'),(91,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2022-03-16 02:41:49','2022-03-16 02:41:49'),(92,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2022-03-16 02:41:49','2022-03-16 02:41:49'),(93,'roberts-store',5,'Botble\\Marketplace\\Models\\Store','stores','2022-03-16 02:41:49','2022-03-16 02:41:49');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_backup`
--

DROP TABLE IF EXISTS `states_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_backup` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_backup`
--

LOCK TABLES `states_backup` WRITE;
/*!40000 ALTER TABLE `states_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` int NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User','','published','2022-03-16 02:41:33','2022-03-16 02:41:33'),(2,'Design',1,'Botble\\ACL\\Models\\User','','published','2022-03-16 02:41:33','2022-03-16 02:41:33'),(3,'Fashion',1,'Botble\\ACL\\Models\\User','','published','2022-03-16 02:41:33','2022-03-16 02:41:33'),(4,'Branding',1,'Botble\\ACL\\Models\\User','','published','2022-03-16 02:41:33','2022-03-16 02:41:33'),(5,'Modern',1,'Botble\\ACL\\Models\\User','','published','2022-03-16 02:41:33','2022-03-16 02:41:33');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
INSERT INTO `tags_translations` VALUES ('vi',1,'Chung',NULL),('vi',2,'Thiết kế',NULL),('vi',3,'Thời trang',NULL),('vi',4,'Thương hiệu',NULL),('vi',5,'Hiện đại',NULL);
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `locale` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4322 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@shariqq.com',NULL,'$2y$10$hmXtV1FhuUSaglZzQNgtbe78CtYRxW1aq9VgA1Qvemveke9SByAD6',NULL,'2022-03-16 02:41:33','2022-03-16 02:41:33','System','Admin','botble',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteInfoWidget','footer_sidebar','nest',0,'{\"id\":\"SiteInfoWidget\",\"name\":\"Site information\",\"about\":\"Awesome grocery store website template\",\"phone\":\"(+91) - 540-025-124553\",\"address\":\"5171 W Campbell Ave undefined Kent, Utah 53127 United States\",\"email\":\"sale@Nest.com\",\"working_hours\":\"10:00 - 18:00, Mon - Sat\"}','2022-03-16 02:41:40','2022-03-16 02:41:40'),(2,'CustomMenuWidget','footer_sidebar','nest',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}','2022-03-16 02:41:40','2022-03-16 02:41:40'),(3,'CustomMenuWidget','footer_sidebar','nest',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"product-categories\"}','2022-03-16 02:41:40','2022-03-16 02:41:40'),(4,'CustomMenuWidget','footer_sidebar','nest',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}','2022-03-16 02:41:40','2022-03-16 02:41:40'),(5,'InstallAppWidget','footer_sidebar','nest',3,'{\"id\":\"InstallAppWidget\",\"name\":\"Install App\",\"apps_description\":\"From App Store or Google Play\",\"ios_app_url\":\"#\",\"ios_app_image\":\"general\\/app-store.jpg\",\"android_app_url\":\"#\",\"android_app_image\":\"general\\/google-play.jpg\",\"payment_gateway_description\":\"Secured Payment Gateways\",\"payment_gateway_image\":\"general\\/payment-methods.png\"}','2022-03-16 02:41:40','2022-03-16 02:41:40'),(6,'BlogSearchWidget','primary_sidebar','nest',0,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2022-03-16 02:41:40','2022-03-16 02:41:40'),(7,'ProductCategoriesWidget','primary_sidebar','nest',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}','2022-03-16 02:41:40','2022-03-16 02:41:40'),(8,'TrendingProductsWidget','primary_sidebar','nest',2,'{\"id\":\"TrendingProductsWidget\",\"name\":\"Trending Now\",\"number_display\":4}','2022-03-16 02:41:40','2022-03-16 02:41:40'),(9,'GalleryWidget','primary_sidebar','nest',3,'{\"id\":\"GalleryWidget\",\"name\":\"Gallery\",\"slider_key\":\"slider-blog-1\"}','2022-03-16 02:41:40','2022-03-16 02:41:40'),(10,'TagsWidget','primary_sidebar','nest',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2022-03-16 02:41:40','2022-03-16 02:41:40'),(11,'AdsWidget','primary_sidebar','nest',5,'{\"id\":\"AdsWidget\",\"name\":\"Oganic\",\"ads_key\":\"IZ6WU8KUALYI\"}','2022-03-16 02:41:40','2022-03-16 02:41:40'),(12,'ProductCategoriesWidget','product_sidebar','nest',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}','2022-03-16 02:41:40','2022-03-16 02:41:40'),(13,'PriceFilterWidget','product_sidebar','nest',2,'{\"id\":\"PriceFilterWidget\",\"name\":\"Filter by price\"}','2022-03-16 02:41:40','2022-03-16 02:41:40'),(14,'NewProductsWidget','product_sidebar','nest',3,'{\"id\":\"NewProductsWidget\",\"name\":\"New products\"}','2022-03-16 02:41:40','2022-03-16 02:41:40'),(15,'AdsWidget','product_sidebar','nest',4,'{\"id\":\"AdsWidget\",\"name\":\"Oganic\",\"ads_key\":\"IZ6WU8KUALYI\"}','2022-03-16 02:41:40','2022-03-16 02:41:40'),(16,'NewsletterWidget','pre_footer_sidebar','nest',0,'{\"id\":\"NewsletterWidget\",\"title\":\"Stay home & get your daily <br \\/>needs from our shop\",\"subtitle\":\"Start Your Daily Shopping with <span>Nest Mart<\\/span>\",\"image\":\"general\\/newsletter-image.png\",\"background_image\":\"general\\/newsletter-background-image.png\"}','2022-03-16 02:41:40','2022-03-16 02:41:40'),(17,'SiteFeaturesWidget','pre_footer_sidebar','nest',1,'{\"id\":\"SiteFeaturesWidget\",\"title\":\"Site Features\",\"data\":{\"1\":{\"icon\":\"general\\/icon-1.png\",\"title\":\"Best prices & offers\",\"subtitle\":\"Orders $50 or more\"},\"2\":{\"icon\":\"general\\/icon-2.png\",\"title\":\"Free delivery\",\"subtitle\":\"24\\/7 amazing services\"},\"3\":{\"icon\":\"general\\/icon-3.png\",\"title\":\"Great daily deal\",\"subtitle\":\"When you sign up\"},\"4\":{\"icon\":\"general\\/icon-4.png\",\"title\":\"Wide assortment\",\"subtitle\":\"Mega Discounts\"},\"5\":{\"icon\":\"general\\/icon-5.png\",\"title\":\"Easy returns\",\"subtitle\":\"Within 30 days\"}}}','2022-03-16 02:41:40','2022-03-16 02:41:40'),(18,'SiteInfoWidget','footer_sidebar','nest-vi',0,'{\"id\":\"SiteInfoWidget\",\"name\":\"V\\u1ec1 ch\\u00fang t\\u00f4i\",\"about\":\"M\\u1eabu trang web c\\u1eeda h\\u00e0ng t\\u1ea1p h\\u00f3a tuy\\u1ec7t v\\u1eddi\",\"phone\":\"(+91) - 540-025-124553\",\"address\":\"5171 W Campbell Ave undefined Kent, Utah 53127 United States\",\"email\":\"sale@Nest.com\",\"working_hours\":\"10:00 - 18:00, Th\\u1ee9 2 - Th\\u1ee9 7\"}','2022-03-16 02:41:40','2022-03-16 02:41:40'),(19,'CustomMenuWidget','footer_sidebar','nest-vi',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"C\\u00f4ng ty\",\"menu_id\":\"cong-ty\"}','2022-03-16 02:41:40','2022-03-16 02:41:40'),(20,'CustomMenuWidget','footer_sidebar','nest-vi',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Danh m\\u1ee5c s\\u1ea3n ph\\u1ea9m\",\"menu_id\":\"danh-muc-san-pham\"}','2022-03-16 02:41:40','2022-03-16 02:41:40'),(21,'CustomMenuWidget','footer_sidebar','nest-vi',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Th\\u00f4ng tin\",\"menu_id\":\"thong-tin\"}','2022-03-16 02:41:40','2022-03-16 02:41:40'),(22,'BlogSearchWidget','primary_sidebar','nest-vi',0,'{\"id\":\"BlogSearchWidget\",\"name\":\"T\\u00ecm ki\\u1ebfm\"}','2022-03-16 02:41:40','2022-03-16 02:41:40'),(23,'BlogCategoriesWidget','primary_sidebar','nest-vi',1,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Danh m\\u1ee5c\"}','2022-03-16 02:41:40','2022-03-16 02:41:40'),(24,'RecentPostsWidget','primary_sidebar','nest-vi',2,'{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft g\\u1ea7n \\u0111\\u00e2y\"}','2022-03-16 02:41:40','2022-03-16 02:41:40'),(25,'TagsWidget','primary_sidebar','nest-vi',4,'{\"id\":\"TagsWidget\",\"name\":\"Tags ph\\u1ed5 bi\\u1ebfn\"}','2022-03-16 02:41:40','2022-03-16 02:41:40'),(26,'ProductCategoriesWidget','product_sidebar','nest-vi',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Danh m\\u1ee5c s\\u1ea3n ph\\u1ea9m\"}','2022-03-16 02:41:40','2022-03-16 02:41:40'),(27,'FeaturedProductsWidget','product_sidebar','nest-vi',2,'{\"id\":\"FeaturedProductsWidget\",\"name\":\"S\\u1ea3n ph\\u1ea9m n\\u1ed5i b\\u1eadt\"}','2022-03-16 02:41:40','2022-03-16 02:41:40'),(28,'FeaturedBrandsWidget','product_sidebar','nest-vi',3,'{\"id\":\"FeaturedBrandsWidget\",\"name\":\"Nh\\u00e0 cung c\\u1ea5p\"}','2022-03-16 02:41:40','2022-03-16 02:41:40'),(29,'NewsletterWidget','pre_footer_sidebar','nest-vi',0,'{\"id\":\"NewsletterWidget\",\"title\":\"\\u1ede nh\\u00e0 & \\u0111\\u00e1p \\u1ee9ng nhu c\\u1ea7u <br \\/> h\\u00e0ng ng\\u00e0y c\\u1ee7a b\\u1ea1n t\\u1eeb c\\u1eeda h\\u00e0ng c\\u1ee7a ch\\u00fang t\\u00f4i\",\"subtitle\":\"B\\u1eaft \\u0111\\u1ea7u mua s\\u1eafm v\\u1edbi <span>Nest Mart<\\/span>\",\"image\":\"general\\/newsletter-image.png\",\"background_image\":\"general\\/newsletter-background-image.png\"}','2022-03-16 02:41:40','2022-03-16 02:41:40'),(30,'SiteFeaturesWidget','pre_footer_sidebar','nest-vi',1,'{\"id\":\"SiteFeaturesWidget\",\"title\":\"Site Features\",\"data\":{\"1\":{\"icon\":\"general\\/icon-1.png\",\"title\":\"Gi\\u00e1 & \\u01b0u \\u0111\\u00e3i t\\u1ed1t nh\\u1ea5t\",\"subtitle\":\"Cho \\u0111\\u01a1n h\\u00e0ng t\\u1eeb $50\"},\"2\":{\"icon\":\"general\\/icon-2.png\",\"title\":\"Mi\\u1ec5n ph\\u00ed v\\u1eadn chuy\\u1ec3n\",\"subtitle\":\"D\\u1ecbch v\\u1ee5 tuy\\u1ec7t v\\u1eddi 24\\/7\"},\"3\":{\"icon\":\"general\\/icon-3.png\",\"title\":\"\\u01afu \\u0111\\u00e3i h\\u00e0ng ng\\u00e0y\",\"subtitle\":\"Khi b\\u1ea1n \\u0111\\u0103ng k\\u00fd\"},\"4\":{\"icon\":\"general\\/icon-4.png\",\"title\":\"Nhi\\u1ec1u m\\u1eb7t h\\u00e0ng\",\"subtitle\":\"Gi\\u1ea3m gi\\u00e1 c\\u1ef1c l\\u1edbn\"},\"5\":{\"icon\":\"general\\/icon-5.png\",\"title\":\"D\\u1ec5 d\\u00e0ng ho\\u00e0n tr\\u1ea3\",\"subtitle\":\"Trong v\\u00f2ng 30 ng\\u00e0y\"}}}','2022-03-16 02:41:40','2022-03-16 02:41:40');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-21 10:20:02