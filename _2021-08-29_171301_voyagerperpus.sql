-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: voyagerperpus
-- ------------------------------------------------------
-- Server version	8.0.26-0ubuntu0.21.04.3

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
-- Table structure for table `buku`
--

DROP TABLE IF EXISTS `buku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buku` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `jenis_buku` int unsigned DEFAULT NULL,
  `kode_isbn` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penulis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah_buku` int unsigned DEFAULT NULL,
  `previews_buku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buku`
--

/*!40000 ALTER TABLE `buku` DISABLE KEYS */;
INSERT INTO `buku` VALUES (1,2,'112232sds3','Buku2',NULL,'Adit',12,'[]','2021-08-29 02:21:00','2021-08-29 02:21:00'),(2,2,'123asr4','Buku1','buku/August2021/7I6MNfouq6ERB4sMEe7n.jpg','Andi',10,'[{\"download_link\":\"buku\\/August2021\\/H4hUiSx7vEkcbIlDAXVE.doc\",\"original_name\":\"Modul 1_Writing a report.doc\"}]','2021-08-29 02:26:40','2021-08-29 02:26:40');
/*!40000 ALTER TABLE `buku` ENABLE KEYS */;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_rows` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,NULL,1),(2,1,'name','text','Name',1,1,1,1,1,1,NULL,2),(3,1,'email','text','Email',1,1,1,1,1,1,NULL,3),(4,1,'password','password','Password',1,0,0,1,1,0,NULL,4),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,NULL,5),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,6),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,NULL,8),(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}',10),(10,1,'user_belongstomany_role_relationship','relationship','voyager::seeders.data_rows.roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),(11,1,'settings','hidden','Settings',0,0,0,0,0,0,NULL,12),(12,2,'id','number','ID',1,0,0,0,0,0,NULL,1),(13,2,'name','text','Name',1,1,1,1,1,1,NULL,2),(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(16,3,'id','number','ID',1,0,0,0,0,0,NULL,1),(17,3,'name','text','Name',1,1,1,1,1,1,NULL,2),(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(20,3,'display_name','text','Display Name',1,1,1,1,1,1,NULL,5),(21,1,'role_id','text','Role',1,1,1,1,1,1,NULL,9),(22,4,'id','text','Id',1,0,0,0,0,0,'{}',1),(23,4,'jenis_buku','text','Jenis Buku',0,1,1,1,1,1,'{}',2),(24,4,'limit_peminjaman','text','Limit Peminjaman',0,1,1,1,1,1,'{}',3),(25,4,'created_at','timestamp','Created At',0,0,0,1,0,1,'{}',4),(26,4,'updated_at','timestamp','Updated At',0,0,0,1,0,1,'{}',5),(27,5,'id','text','Id',1,0,0,0,0,0,'{}',1),(28,5,'jenis_buku','text','Jenis Buku',0,1,1,1,1,1,'{}',2),(29,5,'kode_isbn','text','Kode Isbn',0,1,1,1,1,1,'{}',3),(30,5,'judul','text','Judul',0,1,1,1,1,1,'{}',4),(31,5,'cover','image','Cover',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"100%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',5),(32,5,'penulis','text','Penulis',0,1,1,1,1,1,'{}',6),(33,5,'jumlah_buku','text','Jumlah Buku',0,1,1,1,1,1,'{}',7),(34,5,'previews_buku','file','Previews Buku',0,1,1,1,1,1,'{}',8),(35,5,'created_at','timestamp','Created At',0,0,0,1,0,1,'{}',9),(36,5,'updated_at','timestamp','Updated At',0,0,0,1,0,1,'{}',10),(37,5,'buku_belongsto_jenis_buku_relationship','relationship','jenis_buku',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\JenisBuku\",\"table\":\"jenis_buku\",\"type\":\"belongsTo\",\"column\":\"jenis_buku\",\"key\":\"id\",\"label\":\"jenis_buku\",\"pivot_table\":\"buku\",\"pivot\":\"0\",\"taggable\":\"0\"}',11),(38,6,'id','text','Id',1,0,0,0,0,0,'{}',1),(39,6,'kode_kelas','text','Kode Kelas',1,1,1,1,1,1,'{}',2),(40,6,'jurusan','text','Jurusan',1,1,1,1,1,1,'{}',3),(41,6,'nama_kelas','text','Nama Kelas',1,1,1,1,1,1,'{}',4),(42,6,'ruang_kelas','text','Ruang Kelas',0,1,1,1,1,1,'{}',5),(43,6,'created_at','timestamp','Created At',0,0,0,1,0,1,'{}',6),(44,6,'updated_at','timestamp','Updated At',0,0,0,1,0,1,'{}',7),(57,8,'id','text','Id',1,0,0,0,0,0,'{}',1),(58,8,'kelas','text','Kelas',0,1,1,1,1,1,'{}',2),(59,8,'nipd','text','Nipd',0,1,1,1,1,1,'{}',3),(60,8,'nisn','text','Nisn',0,1,1,1,1,1,'{}',4),(61,8,'nama_lengkap','text','Nama Lengkap',0,1,1,1,1,1,'{}',5),(62,8,'alamat','text_area','Alamat',0,1,1,1,1,1,'{}',6),(63,8,'status','select_dropdown','Status',0,1,1,1,1,1,'{\"default\":\"aktif\",\"options\":{\"aktif\":\"aktif\",\"pasif\":\"pasif\",\"keluar\":\"keluar\"}}',7),(64,8,'tahun_masuk','date','Tahun Masuk',0,1,1,1,1,1,'{}',8),(65,8,'tahun_lulus','date','Tahun Lulus',0,1,1,1,1,1,'{}',9),(66,8,'kode_siswa','text','Kode Siswa',0,1,1,1,1,1,'{}',10),(67,8,'created_at','timestamp','Created At',0,0,0,1,0,1,'{}',11),(68,8,'updated_at','timestamp','Updated At',0,0,0,1,0,1,'{}',12),(69,8,'siswa_belongsto_kela_relationship','relationship','kelas',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Kelas\",\"table\":\"kelas\",\"type\":\"belongsTo\",\"column\":\"kelas\",\"key\":\"id\",\"label\":\"nama_kelas\",\"pivot_table\":\"buku\",\"pivot\":\"0\",\"taggable\":\"0\"}',13),(70,9,'id','text','Id',1,0,0,0,0,0,'{}',1),(71,9,'siswa','text','Siswa',0,1,1,1,1,1,'{}',2),(72,9,'buku','text','Buku',0,1,1,1,1,1,'{}',3),(73,9,'petugas','text','Petugas',0,1,1,1,1,1,'{}',4),(74,9,'tanggal_pinjam','date','Tanggal Pinjam',0,1,1,1,1,1,'{}',5),(75,9,'jumlah_pinjam','text','Jumlah Pinjam',0,1,1,1,1,1,'{}',6),(76,9,'tanggal_kembali','date','Tanggal Kembali',0,1,1,1,1,1,'{}',7),(77,9,'keterangan','text_area','Keterangan',0,1,1,1,1,1,'{}',8),(78,9,'denda','text','Denda',0,1,1,1,1,1,'{}',9),(79,9,'created_at','timestamp','Created At',0,0,0,1,0,1,'{}',10),(80,9,'updated_at','timestamp','Updated At',0,0,0,1,0,1,'{}',11),(81,9,'main_transaction_belongsto_buku_relationship','relationship','buku',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Buku\",\"table\":\"buku\",\"type\":\"belongsTo\",\"column\":\"buku\",\"key\":\"id\",\"label\":\"judul\",\"pivot_table\":\"buku\",\"pivot\":\"0\",\"taggable\":\"0\"}',12),(82,9,'main_transaction_belongsto_siswa_relationship','relationship','siswa',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Siswa\",\"table\":\"siswa\",\"type\":\"belongsTo\",\"column\":\"siswa\",\"key\":\"id\",\"label\":\"nama_lengkap\",\"pivot_table\":\"buku\",\"pivot\":\"0\",\"taggable\":\"0\"}',13),(83,9,'main_transaction_belongsto_user_relationship','relationship','users',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"petugas\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"buku\",\"pivot\":\"0\",\"taggable\":\"0\"}',14);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','TCG\\Voyager\\Http\\Controllers\\VoyagerUserController','',1,0,NULL,'2021-08-29 02:03:13','2021-08-29 02:03:13'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2021-08-29 02:03:13','2021-08-29 02:03:13'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController','',1,0,NULL,'2021-08-29 02:03:13','2021-08-29 02:03:13'),(4,'jenis_buku','jenis-buku','Jenis Buku','Jenis Buku','voyager-documentation','App\\Models\\JenisBuku',NULL,NULL,NULL,1,1,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-08-29 02:13:07','2021-08-29 02:13:07'),(5,'buku','buku','Buku','Buku','voyager-book','App\\Models\\Buku',NULL,NULL,NULL,1,1,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-08-29 02:19:44','2021-08-29 02:20:48'),(6,'kelas','kelas','Kelas','Kelas','voyager-study','App\\Models\\Kelas',NULL,NULL,NULL,1,1,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-08-29 02:35:20','2021-08-29 02:35:20'),(8,'siswa','siswa','Siswa','Siswa','voyager-group','App\\Models\\Siswa',NULL,NULL,NULL,1,1,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-08-29 02:50:08','2021-08-29 02:52:27'),(9,'main_transaction','main-transaction','Main Transaction','Main Transaction','voyager-window-list','App\\Models\\MainTransaction',NULL,NULL,NULL,1,1,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-08-29 03:01:26','2021-08-29 03:03:44');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

--
-- Table structure for table `jenis_buku`
--

DROP TABLE IF EXISTS `jenis_buku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jenis_buku` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `jenis_buku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `limit_peminjaman` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jenis_buku`
--

/*!40000 ALTER TABLE `jenis_buku` DISABLE KEYS */;
INSERT INTO `jenis_buku` VALUES (1,'Pelajaran','1 Tahun','2021-08-29 02:13:29','2021-08-29 02:13:29'),(2,'Bacaan Novel','1 Minggu','2021-08-29 02:14:03','2021-08-29 02:14:03');
/*!40000 ALTER TABLE `jenis_buku` ENABLE KEYS */;

--
-- Table structure for table `kelas`
--

DROP TABLE IF EXISTS `kelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kelas` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `kode_kelas` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurusan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kelas` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruang_kelas` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kelas_kode_kelas_unique` (`kode_kelas`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kelas`
--

/*!40000 ALTER TABLE `kelas` DISABLE KEYS */;
INSERT INTO `kelas` VALUES (1,'A001','Rekayasa Perangkat Lunak','12 RPL 2','Ruang 24','2021-08-29 02:35:54','2021-08-29 02:35:54'),(2,'A002','Rekayasa Perangkat Lunak','11 RPL 3','Ruang 24','2021-08-29 02:36:30','2021-08-29 02:36:30'),(3,'A003','Broadcasting','12 BC 3','Ruang 14','2021-08-29 02:54:13','2021-08-29 02:54:13');
/*!40000 ALTER TABLE `kelas` ENABLE KEYS */;

--
-- Table structure for table `main_transaction`
--

DROP TABLE IF EXISTS `main_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_transaction` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `siswa` int unsigned DEFAULT NULL,
  `buku` int unsigned DEFAULT NULL,
  `petugas` int unsigned DEFAULT NULL,
  `tanggal_pinjam` datetime DEFAULT NULL,
  `jumlah_pinjam` int unsigned DEFAULT NULL,
  `tanggal_kembali` datetime DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `denda` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_transaction`
--

/*!40000 ALTER TABLE `main_transaction` DISABLE KEYS */;
INSERT INTO `main_transaction` VALUES (1,1,2,1,'2021-08-29 00:00:00',1,'2021-08-30 00:00:00',NULL,NULL,'2021-08-29 03:04:36','2021-08-29 03:04:36');
/*!40000 ALTER TABLE `main_transaction` ENABLE KEYS */;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2021-08-29 02:03:13','2021-08-29 02:03:13','voyager.dashboard',NULL),(2,1,'Media','','_self','voyager-images',NULL,NULL,5,'2021-08-29 02:03:13','2021-08-29 02:03:13','voyager.media.index',NULL),(3,1,'Users','','_self','voyager-person',NULL,NULL,3,'2021-08-29 02:03:13','2021-08-29 02:03:13','voyager.users.index',NULL),(4,1,'Roles','','_self','voyager-lock',NULL,NULL,2,'2021-08-29 02:03:13','2021-08-29 02:03:13','voyager.roles.index',NULL),(5,1,'Tools','','_self','voyager-tools',NULL,NULL,9,'2021-08-29 02:03:13','2021-08-29 02:03:13',NULL,NULL),(6,1,'Menu Builder','','_self','voyager-list',NULL,5,10,'2021-08-29 02:03:13','2021-08-29 02:03:13','voyager.menus.index',NULL),(7,1,'Database','','_self','voyager-data',NULL,5,11,'2021-08-29 02:03:13','2021-08-29 02:03:13','voyager.database.index',NULL),(8,1,'Compass','','_self','voyager-compass',NULL,5,12,'2021-08-29 02:03:13','2021-08-29 02:03:13','voyager.compass.index',NULL),(9,1,'BREAD','','_self','voyager-bread',NULL,5,13,'2021-08-29 02:03:13','2021-08-29 02:03:13','voyager.bread.index',NULL),(10,1,'Settings','','_self','voyager-settings',NULL,NULL,14,'2021-08-29 02:03:13','2021-08-29 02:03:13','voyager.settings.index',NULL),(11,1,'Hooks','','_self','voyager-hook',NULL,5,13,'2021-08-29 02:03:14','2021-08-29 02:03:14','voyager.hooks',NULL),(12,1,'Jenis Buku','','_self','voyager-documentation',NULL,NULL,15,'2021-08-29 02:13:07','2021-08-29 02:13:07','voyager.jenis-buku.index',NULL),(13,1,'Buku','','_self','voyager-book',NULL,NULL,16,'2021-08-29 02:19:44','2021-08-29 02:19:44','voyager.buku.index',NULL),(14,1,'Kelas','','_self','voyager-study',NULL,NULL,17,'2021-08-29 02:35:20','2021-08-29 02:35:20','voyager.kelas.index',NULL),(16,1,'Siswa','','_self','voyager-group',NULL,NULL,18,'2021-08-29 02:50:08','2021-08-29 02:50:08','voyager.siswa.index',NULL),(17,1,'Main Transaction','','_self','voyager-window-list',NULL,NULL,19,'2021-08-29 03:01:26','2021-08-29 03:01:26','voyager.main-transaction.index',NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2021-08-29 02:03:13','2021-08-29 02:03:13');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_voyager_user_fields',1),(4,'2016_01_01_000000_create_data_types_table',1),(5,'2016_05_19_173453_create_menu_table',1),(6,'2016_10_21_190000_create_roles_table',1),(7,'2016_10_21_190000_create_settings_table',1),(8,'2016_11_30_135954_create_permission_table',1),(9,'2016_11_30_141208_create_permission_role_table',1),(10,'2016_12_26_201236_data_types__add__server_side',1),(11,'2017_01_13_000000_add_route_to_menu_items_table',1),(12,'2017_01_14_005015_create_translations_table',1),(13,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(14,'2017_03_06_000000_add_controller_to_data_types_table',1),(15,'2017_04_21_000000_add_order_to_data_rows_table',1),(16,'2017_07_05_210000_add_policyname_to_data_types_table',1),(17,'2017_08_05_000000_add_group_to_settings_table',1),(18,'2017_11_26_013050_add_user_role_relationship',1),(19,'2017_11_26_015000_create_user_roles_table',1),(20,'2018_03_11_000000_add_user_settings',1),(21,'2018_03_14_000000_add_details_to_data_types_table',1),(22,'2018_03_16_000000_make_settings_value_nullable',1),(23,'2019_08_19_000000_create_failed_jobs_table',1),(24,'2019_12_14_000001_create_personal_access_tokens_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

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

/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission_role` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(27,3),(28,1),(28,3),(29,1),(29,3),(30,1),(30,3),(31,1),(31,3),(32,1),(32,3),(33,1),(33,3),(34,1),(34,3),(35,1),(35,3),(36,1),(36,3),(37,1),(37,3),(38,1),(38,3),(39,1),(39,3),(40,1),(40,3),(41,1),(41,3),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(52,3),(53,1),(53,3),(54,1),(54,3),(55,1),(55,3),(56,1),(56,3);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2021-08-29 02:03:13','2021-08-29 02:03:13'),(2,'browse_bread',NULL,'2021-08-29 02:03:13','2021-08-29 02:03:13'),(3,'browse_database',NULL,'2021-08-29 02:03:13','2021-08-29 02:03:13'),(4,'browse_media',NULL,'2021-08-29 02:03:14','2021-08-29 02:03:14'),(5,'browse_compass',NULL,'2021-08-29 02:03:14','2021-08-29 02:03:14'),(6,'browse_menus','menus','2021-08-29 02:03:14','2021-08-29 02:03:14'),(7,'read_menus','menus','2021-08-29 02:03:14','2021-08-29 02:03:14'),(8,'edit_menus','menus','2021-08-29 02:03:14','2021-08-29 02:03:14'),(9,'add_menus','menus','2021-08-29 02:03:14','2021-08-29 02:03:14'),(10,'delete_menus','menus','2021-08-29 02:03:14','2021-08-29 02:03:14'),(11,'browse_roles','roles','2021-08-29 02:03:14','2021-08-29 02:03:14'),(12,'read_roles','roles','2021-08-29 02:03:14','2021-08-29 02:03:14'),(13,'edit_roles','roles','2021-08-29 02:03:14','2021-08-29 02:03:14'),(14,'add_roles','roles','2021-08-29 02:03:14','2021-08-29 02:03:14'),(15,'delete_roles','roles','2021-08-29 02:03:14','2021-08-29 02:03:14'),(16,'browse_users','users','2021-08-29 02:03:14','2021-08-29 02:03:14'),(17,'read_users','users','2021-08-29 02:03:14','2021-08-29 02:03:14'),(18,'edit_users','users','2021-08-29 02:03:14','2021-08-29 02:03:14'),(19,'add_users','users','2021-08-29 02:03:14','2021-08-29 02:03:14'),(20,'delete_users','users','2021-08-29 02:03:14','2021-08-29 02:03:14'),(21,'browse_settings','settings','2021-08-29 02:03:14','2021-08-29 02:03:14'),(22,'read_settings','settings','2021-08-29 02:03:14','2021-08-29 02:03:14'),(23,'edit_settings','settings','2021-08-29 02:03:14','2021-08-29 02:03:14'),(24,'add_settings','settings','2021-08-29 02:03:14','2021-08-29 02:03:14'),(25,'delete_settings','settings','2021-08-29 02:03:14','2021-08-29 02:03:14'),(26,'browse_hooks',NULL,'2021-08-29 02:03:14','2021-08-29 02:03:14'),(27,'browse_jenis_buku','jenis_buku','2021-08-29 02:13:07','2021-08-29 02:13:07'),(28,'read_jenis_buku','jenis_buku','2021-08-29 02:13:07','2021-08-29 02:13:07'),(29,'edit_jenis_buku','jenis_buku','2021-08-29 02:13:07','2021-08-29 02:13:07'),(30,'add_jenis_buku','jenis_buku','2021-08-29 02:13:07','2021-08-29 02:13:07'),(31,'delete_jenis_buku','jenis_buku','2021-08-29 02:13:07','2021-08-29 02:13:07'),(32,'browse_buku','buku','2021-08-29 02:19:44','2021-08-29 02:19:44'),(33,'read_buku','buku','2021-08-29 02:19:44','2021-08-29 02:19:44'),(34,'edit_buku','buku','2021-08-29 02:19:44','2021-08-29 02:19:44'),(35,'add_buku','buku','2021-08-29 02:19:44','2021-08-29 02:19:44'),(36,'delete_buku','buku','2021-08-29 02:19:44','2021-08-29 02:19:44'),(37,'browse_kelas','kelas','2021-08-29 02:35:20','2021-08-29 02:35:20'),(38,'read_kelas','kelas','2021-08-29 02:35:20','2021-08-29 02:35:20'),(39,'edit_kelas','kelas','2021-08-29 02:35:20','2021-08-29 02:35:20'),(40,'add_kelas','kelas','2021-08-29 02:35:20','2021-08-29 02:35:20'),(41,'delete_kelas','kelas','2021-08-29 02:35:20','2021-08-29 02:35:20'),(47,'browse_siswa','siswa','2021-08-29 02:50:08','2021-08-29 02:50:08'),(48,'read_siswa','siswa','2021-08-29 02:50:08','2021-08-29 02:50:08'),(49,'edit_siswa','siswa','2021-08-29 02:50:08','2021-08-29 02:50:08'),(50,'add_siswa','siswa','2021-08-29 02:50:08','2021-08-29 02:50:08'),(51,'delete_siswa','siswa','2021-08-29 02:50:08','2021-08-29 02:50:08'),(52,'browse_main_transaction','main_transaction','2021-08-29 03:01:26','2021-08-29 03:01:26'),(53,'read_main_transaction','main_transaction','2021-08-29 03:01:26','2021-08-29 03:01:26'),(54,'edit_main_transaction','main_transaction','2021-08-29 03:01:26','2021-08-29 03:01:26'),(55,'add_main_transaction','main_transaction','2021-08-29 03:01:26','2021-08-29 03:01:26'),(56,'delete_main_transaction','main_transaction','2021-08-29 03:01:26','2021-08-29 03:01:26');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2021-08-29 02:03:13','2021-08-29 02:03:13'),(2,'user','Normal User','2021-08-29 02:03:13','2021-08-29 02:03:13'),(3,'petugas','petugas','2021-08-29 03:05:40','2021-08-29 03:08:08');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','Site Title','','text',1,'Site'),(2,'site.description','Site Description','Site Description','','text',2,'Site'),(3,'site.logo','Site Logo','','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID','','','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','','','image',5,'Admin'),(6,'admin.title','Admin Title','Voyager','','text',1,'Admin'),(7,'admin.description','Admin Description','Welcome to Voyager. The Missing Admin for Laravel','','text',2,'Admin'),(8,'admin.loader','Admin Loader','','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)','','','text',1,'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

--
-- Table structure for table `siswa`
--

DROP TABLE IF EXISTS `siswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `siswa` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `kelas` int unsigned DEFAULT NULL,
  `nipd` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nisn` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_lengkap` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_masuk` date DEFAULT NULL,
  `tahun_lulus` date DEFAULT NULL,
  `kode_siswa` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `siswa_kode_siswa_unique` (`kode_siswa`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siswa`
--

/*!40000 ALTER TABLE `siswa` DISABLE KEYS */;
INSERT INTO `siswa` VALUES (1,1,'12345','12345','Dzaki Ahnaf Z','Jalan ABC','aktif','2021-08-29','2021-08-29','25bc6v','2021-08-29 02:53:19','2021-08-29 02:53:19');
/*!40000 ALTER TABLE `siswa` ENABLE KEYS */;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'admin','admin@admin.com','users/default.png',NULL,'$2y$10$HkOEZ.ZQbcVNGO8o4hjAQOrbKeUEgPUVyFnFzRuVqguaJp0VCMPJK',NULL,NULL,'2021-08-29 02:04:27','2021-08-29 02:04:27'),(2,3,'Petugas','petugas@mail.com','users/default.png',NULL,'$2y$10$73vi.z5n83JeqReWq2IbVuTzt/VY4w2gLeqVoD1p9XrJMe0jGXxzG',NULL,'{\"locale\":\"en\"}','2021-08-29 03:06:40','2021-08-29 03:07:18'),(3,2,'demo','demo@e.com','users/default.png',NULL,'$2y$10$41mYyOBl0RbJeTo2Z9nK0uZoNxyD/5YHKfSuBRBJpnifyytdD9Yye',NULL,'{\"locale\":\"en\"}','2021-08-29 03:10:15','2021-08-29 03:10:15');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-29 17:13:22
