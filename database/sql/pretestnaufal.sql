-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: pretest_varnion
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

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
-- Table structure for table `barang`
--

DROP TABLE IF EXISTS `barang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barang` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kd_kategori` int(11) NOT NULL,
  `kd_satuan` varchar(255) NOT NULL,
  `kode` varchar(6) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `id_user_insert` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `barang_kode_unique` (`kode`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barang`
--

LOCK TABLES `barang` WRITE;
/*!40000 ALTER TABLE `barang` DISABLE KEYS */;
INSERT INTO `barang` VALUES (5,1,'unt','FD0A41','Barang Baru Di Edit',10,1,'2024-03-05 23:28:54','2024-03-05 23:28:54'),(7,2,'kg','80BAE1','barang baru',12,979,'2024-03-06 00:15:28','2024-03-06 00:15:28'),(8,3,'l','A5EDF4','barang baru',12,483,'2024-03-06 00:15:48','2024-03-06 00:15:48'),(9,2,'Unit','421BED','Baju Melayu',12,78,'2024-03-06 01:09:49','2024-03-06 01:09:49'),(10,2,'Unit','1DB870','Baju Melayu Baru',12,626,'2024-03-06 01:10:53','2024-03-06 01:10:53'),(11,1,'Unit','BDCF17','Samsung',12,909,'2024-03-06 01:14:19','2024-03-06 01:14:19');
/*!40000 ALTER TABLE `barang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
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
-- Table structure for table `hasil_response`
--

DROP TABLE IF EXISTS `hasil_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hasil_response` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `jenis_kelamin` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nama_jalan` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `angka_kurang` int(11) NOT NULL,
  `angka_lebih` int(11) NOT NULL,
  `profesi` char(255) NOT NULL,
  `plain_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`plain_json`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hasil_response`
--

LOCK TABLES `hasil_response` WRITE;
/*!40000 ALTER TABLE `hasil_response` DISABLE KEYS */;
INSERT INTO `hasil_response` VALUES (1,2,'Marie Mortensen','Præstbrovej','marie.mortensen@example.com',14,18,'A','{\"results\":[{\"gender\":\"female\",\"name\":{\"title\":\"Miss\",\"first\":\"Marie\",\"last\":\"Mortensen\"},\"location\":{\"street\":{\"number\":1755,\"name\":\"Pr\\u00e6stbrovej\"},\"city\":\"Aarhus N\",\"state\":\"Danmark\",\"country\":\"Denmark\",\"postcode\":67001,\"coordinates\":{\"latitude\":\"-43.0770\",\"longitude\":\"39.0139\"},\"timezone\":{\"offset\":\"+2:00\",\"description\":\"Kaliningrad, South Africa\"}},\"email\":\"marie.mortensen@example.com\",\"login\":{\"uuid\":\"a8182a01-a4f5-4f83-9ca1-4a69fbdba310\",\"username\":\"beautifulfish697\",\"password\":\"nacked\",\"salt\":\"t9w9FouU\",\"md5\":\"de081c3f10342eb779ea2b493dceb206\",\"sha1\":\"2824edfa37e69b3a82b2f299057bb1887811dc8c\",\"sha256\":\"5e6c0480855945ee8c883d9aaccaa41508cd0bd9606eaf11244e41cf4a239b60\"},\"dob\":{\"date\":\"1967-04-17T06:17:57.164Z\",\"age\":56},\"registered\":{\"date\":\"2013-09-19T22:48:56.243Z\",\"age\":10},\"phone\":\"78762009\",\"cell\":\"49101532\",\"id\":{\"name\":\"CPR\",\"value\":\"170467-7374\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/women\\/95.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/women\\/95.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/women\\/95.jpg\"},\"nat\":\"DK\"}],\"info\":{\"seed\":\"76994532d39bfe04\",\"results\":1,\"page\":1,\"version\":\"1.4\"}}','2024-03-05 08:01:58','2024-03-05 08:01:58'),(2,2,'Faustine Da Silva','Rue des Cuirassiers','faustine.dasilva@example.com',16,16,'A','{\"results\":[{\"gender\":\"female\",\"name\":{\"title\":\"Miss\",\"first\":\"Faustine\",\"last\":\"Da Silva\"},\"location\":{\"street\":{\"number\":8687,\"name\":\"Rue des Cuirassiers\"},\"city\":\"Rueil-Malmaison\",\"state\":\"Loiret\",\"country\":\"France\",\"postcode\":62676,\"coordinates\":{\"latitude\":\"-17.2013\",\"longitude\":\"28.8898\"},\"timezone\":{\"offset\":\"0:00\",\"description\":\"Western Europe Time, London, Lisbon, Casablanca\"}},\"email\":\"faustine.dasilva@example.com\",\"login\":{\"uuid\":\"6247dbc9-9cc7-439f-89fd-bc083b72e6d3\",\"username\":\"smallpanda813\",\"password\":\"woodland\",\"salt\":\"WVCoM9cI\",\"md5\":\"ddbda3e01bb44837cb7067a7c1f75529\",\"sha1\":\"5cc519e48ea76ea16cb7f8721d29a208ccdbda07\",\"sha256\":\"85a7f17552fff4debb0d26b92caa62ea7466dee709abcbbc51446a6acd02f152\"},\"dob\":{\"date\":\"1945-06-22T16:03:18.352Z\",\"age\":78},\"registered\":{\"date\":\"2012-10-07T01:45:34.541Z\",\"age\":11},\"phone\":\"04-41-84-81-11\",\"cell\":\"06-05-70-81-26\",\"id\":{\"name\":\"INSEE\",\"value\":\"2450530963927 31\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/women\\/20.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/women\\/20.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/women\\/20.jpg\"},\"nat\":\"FR\"}],\"info\":{\"seed\":\"db440acd19a07a30\",\"results\":1,\"page\":1,\"version\":\"1.4\"}}','2024-03-05 08:02:38','2024-03-05 08:02:38'),(3,2,'Aurore Adam','Avenue Debourg','aurore.adam@example.com',16,16,'A','{\"results\":[{\"gender\":\"female\",\"name\":{\"title\":\"Miss\",\"first\":\"Aurore\",\"last\":\"Adam\"},\"location\":{\"street\":{\"number\":4699,\"name\":\"Avenue Debourg\"},\"city\":\"Marseille\",\"state\":\"Haute-Vienne\",\"country\":\"France\",\"postcode\":77150,\"coordinates\":{\"latitude\":\"-17.8963\",\"longitude\":\"17.7342\"},\"timezone\":{\"offset\":\"+5:30\",\"description\":\"Bombay, Calcutta, Madras, New Delhi\"}},\"email\":\"aurore.adam@example.com\",\"login\":{\"uuid\":\"202b7076-b8de-47e7-b0eb-7f0aa946f016\",\"username\":\"sadkoala959\",\"password\":\"unknown\",\"salt\":\"GY5E4BTa\",\"md5\":\"6da56fd9f95794eaa089593600e71f22\",\"sha1\":\"c485e56d38f211a36b04d24781ca0674658e885e\",\"sha256\":\"3983032368a2e469e9b81594071bbc87afbbb1c74ace8b5257bc2e9b0e236863\"},\"dob\":{\"date\":\"1946-10-09T18:31:40.060Z\",\"age\":77},\"registered\":{\"date\":\"2015-10-06T13:56:16.782Z\",\"age\":8},\"phone\":\"04-24-90-04-94\",\"cell\":\"06-25-11-94-82\",\"id\":{\"name\":\"INSEE\",\"value\":\"2460987624730 47\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/women\\/63.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/women\\/63.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/women\\/63.jpg\"},\"nat\":\"FR\"}],\"info\":{\"seed\":\"b595a4533962e65c\",\"results\":1,\"page\":1,\"version\":\"1.4\"}}','2024-03-05 08:07:27','2024-03-05 08:07:27'),(4,2,'Vesna Peković','Lazara Komarčića ','vesna.pekovic@example.com',13,19,'A','{\"results\":[{\"gender\":\"female\",\"name\":{\"title\":\"Miss\",\"first\":\"Vesna\",\"last\":\"Pekovi\\u0107\"},\"location\":{\"street\":{\"number\":4491,\"name\":\"Lazara Komar\\u010di\\u0107a \"},\"city\":\"Se\\u010danj\",\"state\":\"Zaje\\u010dar\",\"country\":\"Serbia\",\"postcode\":47566,\"coordinates\":{\"latitude\":\"58.7950\",\"longitude\":\"23.7318\"},\"timezone\":{\"offset\":\"-7:00\",\"description\":\"Mountain Time (US & Canada)\"}},\"email\":\"vesna.pekovic@example.com\",\"login\":{\"uuid\":\"e81376bf-699a-45b1-aee6-901dd2fd2d70\",\"username\":\"heavymeercat116\",\"password\":\"technics\",\"salt\":\"JJOxSgO5\",\"md5\":\"312b7954d47dcc509b87e9846688cd9c\",\"sha1\":\"23af0a6f37bc28751c63125599e6c1581e5c1cc0\",\"sha256\":\"6c47dcc5f95cb216eba98cfeec88df26af0dcb79000e4c600564963101c5ec67\"},\"dob\":{\"date\":\"1950-05-13T15:01:23.534Z\",\"age\":73},\"registered\":{\"date\":\"2019-03-07T11:01:50.377Z\",\"age\":4},\"phone\":\"019-8184-034\",\"cell\":\"069-8027-188\",\"id\":{\"name\":\"SID\",\"value\":\"702256507\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/women\\/80.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/women\\/80.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/women\\/80.jpg\"},\"nat\":\"RS\"}],\"info\":{\"seed\":\"7a785dc3c35a14d5\",\"results\":1,\"page\":1,\"version\":\"1.4\"}}','2024-03-05 08:07:33','2024-03-05 08:07:33'),(5,2,'Juana Ozuna','Peatonal Querétaro','juana.ozuna@example.com',15,17,'E','{\"results\":[{\"gender\":\"female\",\"name\":{\"title\":\"Ms\",\"first\":\"Juana\",\"last\":\"Ozuna\"},\"location\":{\"street\":{\"number\":6570,\"name\":\"Peatonal Quer\\u00e9taro\"},\"city\":\"Indaparapeo\",\"state\":\"Ciudad de Mexico\",\"country\":\"Mexico\",\"postcode\":42792,\"coordinates\":{\"latitude\":\"21.5087\",\"longitude\":\"58.2822\"},\"timezone\":{\"offset\":\"-1:00\",\"description\":\"Azores, Cape Verde Islands\"}},\"email\":\"juana.ozuna@example.com\",\"login\":{\"uuid\":\"8ab6ab53-5f6e-4bad-9c2d-679f8563da73\",\"username\":\"ticklishgorilla512\",\"password\":\"bolitas\",\"salt\":\"0A5TOZ2X\",\"md5\":\"1add32aaf96323dda6b0f83ecf266bb4\",\"sha1\":\"dc3091b76dec8a981476d26c1c77170b01ac0d4a\",\"sha256\":\"c9b7c79788714995c301039222677583edfa0449a51d02a6ad4ea33cee6dd623\"},\"dob\":{\"date\":\"1977-11-15T13:29:19.632Z\",\"age\":46},\"registered\":{\"date\":\"2021-09-04T11:50:50.735Z\",\"age\":2},\"phone\":\"(634) 286 4297\",\"cell\":\"(664) 503 4757\",\"id\":{\"name\":\"NSS\",\"value\":\"07 70 68 7048 3\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/women\\/51.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/women\\/51.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/women\\/51.jpg\"},\"nat\":\"MX\"}],\"info\":{\"seed\":\"05b572faa8111984\",\"results\":1,\"page\":1,\"version\":\"1.4\"}}','2024-03-05 08:07:48','2024-03-05 08:07:48'),(6,1,'Akshay Saha','Carter Rd Promenade','akshay.saha@example.com',14,18,'B','{\"results\":[{\"gender\":\"male\",\"name\":{\"title\":\"Mr\",\"first\":\"Akshay\",\"last\":\"Saha\"},\"location\":{\"street\":{\"number\":161,\"name\":\"Carter Rd Promenade\"},\"city\":\"Nizamabad\",\"state\":\"Karnataka\",\"country\":\"India\",\"postcode\":66359,\"coordinates\":{\"latitude\":\"10.6114\",\"longitude\":\"-94.7844\"},\"timezone\":{\"offset\":\"+2:00\",\"description\":\"Kaliningrad, South Africa\"}},\"email\":\"akshay.saha@example.com\",\"login\":{\"uuid\":\"1c802a7a-3e7b-4109-af2e-8e51522b7169\",\"username\":\"blackwolf595\",\"password\":\"watson\",\"salt\":\"o5BQfbL4\",\"md5\":\"83d2f37fc9898dcecf365372643a5fa0\",\"sha1\":\"079bfca039f53b4e018727e0ab757b1b1e0bba02\",\"sha256\":\"75b3dfa319e8622137a8eb3c3e1fbc81616d0688f77defced40523f03f3ce8fa\"},\"dob\":{\"date\":\"1996-03-20T06:11:27.768Z\",\"age\":27},\"registered\":{\"date\":\"2008-12-26T20:25:07.631Z\",\"age\":15},\"phone\":\"7117403596\",\"cell\":\"7043869864\",\"id\":{\"name\":\"UIDAI\",\"value\":\"312907194175\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/men\\/8.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/men\\/8.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/men\\/8.jpg\"},\"nat\":\"IN\"}],\"info\":{\"seed\":\"c88cf9fd79238021\",\"results\":1,\"page\":1,\"version\":\"1.4\"}}','2024-03-05 08:07:56','2024-03-05 08:07:56'),(7,2,'Hedda Franken','Lindenweg','hedda.franken@example.com',15,17,'D','{\"results\":[{\"gender\":\"female\",\"name\":{\"title\":\"Mrs\",\"first\":\"Hedda\",\"last\":\"Franken\"},\"location\":{\"street\":{\"number\":8983,\"name\":\"Lindenweg\"},\"city\":\"Filderstadt\",\"state\":\"Sachsen\",\"country\":\"Germany\",\"postcode\":71655,\"coordinates\":{\"latitude\":\"-48.0672\",\"longitude\":\"113.5942\"},\"timezone\":{\"offset\":\"+5:45\",\"description\":\"Kathmandu\"}},\"email\":\"hedda.franken@example.com\",\"login\":{\"uuid\":\"636ce94c-aa2b-4a5d-8143-d0c338577667\",\"username\":\"bluesnake155\",\"password\":\"dean\",\"salt\":\"QlQQuYGe\",\"md5\":\"387178298e503ab2a8b0d2264f194d97\",\"sha1\":\"94d1ea34aaf8f5da3604e771199b5ab477de25d6\",\"sha256\":\"74973cd5f8845522b67ede21d68aec02a4784da0cfb3c793f84943e9557c3089\"},\"dob\":{\"date\":\"1987-11-21T00:01:01.328Z\",\"age\":36},\"registered\":{\"date\":\"2006-09-20T13:28:36.587Z\",\"age\":17},\"phone\":\"0534-4344548\",\"cell\":\"0173-3725034\",\"id\":{\"name\":\"SVNR\",\"value\":\"45 201187 F 699\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/women\\/19.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/women\\/19.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/women\\/19.jpg\"},\"nat\":\"DE\"}],\"info\":{\"seed\":\"1ef70f29bfa58808\",\"results\":1,\"page\":1,\"version\":\"1.4\"}}','2024-03-05 08:38:10','2024-03-05 08:38:10'),(8,1,'Alan Phillips','W Belt Line Rd','alan.phillips@example.com',16,16,'C','{\"results\":[{\"gender\":\"male\",\"name\":{\"title\":\"Mr\",\"first\":\"Alan\",\"last\":\"Phillips\"},\"location\":{\"street\":{\"number\":416,\"name\":\"W Belt Line Rd\"},\"city\":\"Launceston\",\"state\":\"Victoria\",\"country\":\"Australia\",\"postcode\":7651,\"coordinates\":{\"latitude\":\"-81.4674\",\"longitude\":\"-49.9285\"},\"timezone\":{\"offset\":\"+3:30\",\"description\":\"Tehran\"}},\"email\":\"alan.phillips@example.com\",\"login\":{\"uuid\":\"0b90d8d9-21a3-48d0-8771-dc63322031c4\",\"username\":\"lazybutterfly838\",\"password\":\"hoover\",\"salt\":\"jhNnG3ad\",\"md5\":\"db4c45cdff81e381e16e9865d04c4844\",\"sha1\":\"49048a6df8643411a8bcd2f746279f0ce020eff1\",\"sha256\":\"47a4a9983b2ea8f2421daf790b9fa17278509966585422103419a43a133c5113\"},\"dob\":{\"date\":\"1988-05-03T10:48:50.167Z\",\"age\":35},\"registered\":{\"date\":\"2010-03-09T01:57:05.236Z\",\"age\":13},\"phone\":\"01-1102-0725\",\"cell\":\"0454-277-174\",\"id\":{\"name\":\"TFN\",\"value\":\"241129145\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/men\\/19.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/men\\/19.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/men\\/19.jpg\"},\"nat\":\"AU\"}],\"info\":{\"seed\":\"1ab0050ceca86f1a\",\"results\":1,\"page\":1,\"version\":\"1.4\"}}','2024-03-05 08:38:12','2024-03-05 08:38:12'),(9,1,'Jacob Jørgensen','Rosenvænget','jacob.jorgensen@example.com',16,16,'D','{\"results\":[{\"gender\":\"male\",\"name\":{\"title\":\"Mr\",\"first\":\"Jacob\",\"last\":\"J\\u00f8rgensen\"},\"location\":{\"street\":{\"number\":4838,\"name\":\"Rosenv\\u00e6nget\"},\"city\":\"\\u00d8lstykke\",\"state\":\"Syddanmark\",\"country\":\"Denmark\",\"postcode\":62654,\"coordinates\":{\"latitude\":\"-40.5640\",\"longitude\":\"-28.5603\"},\"timezone\":{\"offset\":\"-10:00\",\"description\":\"Hawaii\"}},\"email\":\"jacob.jorgensen@example.com\",\"login\":{\"uuid\":\"5517afd9-033c-4bbc-b9ba-68c0a78a9220\",\"username\":\"redmouse452\",\"password\":\"megan\",\"salt\":\"cnnWTTVo\",\"md5\":\"5ca214dd3cc9797e12acb10492c69f87\",\"sha1\":\"42ea1f217dff2d98087e38255863e5700a9c809c\",\"sha256\":\"9aed8421b37feb4c75cd694eff77bd3825e1684d58c4895aa289bc2fbe674e5f\"},\"dob\":{\"date\":\"1974-02-19T18:17:58.738Z\",\"age\":50},\"registered\":{\"date\":\"2018-03-27T07:05:52.150Z\",\"age\":5},\"phone\":\"64565110\",\"cell\":\"95038299\",\"id\":{\"name\":\"CPR\",\"value\":\"190274-7000\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/men\\/2.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/men\\/2.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/men\\/2.jpg\"},\"nat\":\"DK\"}],\"info\":{\"seed\":\"4410f37375df5388\",\"results\":1,\"page\":1,\"version\":\"1.4\"}}','2024-03-05 08:38:13','2024-03-05 08:38:13'),(10,2,'Viktoria Eckl','Kiefernweg','viktoria.eckl@example.com',13,19,'A','{\"results\":[{\"gender\":\"female\",\"name\":{\"title\":\"Miss\",\"first\":\"Viktoria\",\"last\":\"Eckl\"},\"location\":{\"street\":{\"number\":9934,\"name\":\"Kiefernweg\"},\"city\":\"Tirschenreuth\",\"state\":\"Bremen\",\"country\":\"Germany\",\"postcode\":80315,\"coordinates\":{\"latitude\":\"-50.0799\",\"longitude\":\"156.9450\"},\"timezone\":{\"offset\":\"+10:00\",\"description\":\"Eastern Australia, Guam, Vladivostok\"}},\"email\":\"viktoria.eckl@example.com\",\"login\":{\"uuid\":\"f24ff7d4-ca80-4397-a06c-d30dea621e23\",\"username\":\"silverswan322\",\"password\":\"havana\",\"salt\":\"PFboLBjc\",\"md5\":\"7e2aff46a58c13c001a1fda9e72c6292\",\"sha1\":\"0738bcd363bbb15ea5f412d3649b0f616dd0e05f\",\"sha256\":\"0ae4b185cfc1908b52fc832c50bdcaef9d1bde6c520e986036435c32eccd64f0\"},\"dob\":{\"date\":\"1945-04-16T15:37:33.888Z\",\"age\":78},\"registered\":{\"date\":\"2019-04-21T13:46:12.774Z\",\"age\":4},\"phone\":\"0631-0912138\",\"cell\":\"0171-4423413\",\"id\":{\"name\":\"SVNR\",\"value\":\"61 160445 E 678\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/women\\/87.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/women\\/87.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/women\\/87.jpg\"},\"nat\":\"DE\"}],\"info\":{\"seed\":\"6848f6d5206a4227\",\"results\":1,\"page\":1,\"version\":\"1.4\"}}','2024-03-05 08:38:15','2024-03-05 08:38:15'),(11,2,'Ella Jørgensen','Elmegade','ella.jorgensen@example.com',13,19,'C','{\"results\":[{\"gender\":\"female\",\"name\":{\"title\":\"Miss\",\"first\":\"Ella\",\"last\":\"J\\u00f8rgensen\"},\"location\":{\"street\":{\"number\":187,\"name\":\"Elmegade\"},\"city\":\"Argerskov\",\"state\":\"Sj\\u00e6lland\",\"country\":\"Denmark\",\"postcode\":45835,\"coordinates\":{\"latitude\":\"-46.0248\",\"longitude\":\"99.2503\"},\"timezone\":{\"offset\":\"+4:30\",\"description\":\"Kabul\"}},\"email\":\"ella.jorgensen@example.com\",\"login\":{\"uuid\":\"353a021c-68e2-4c4d-9b6b-0ce928150f1b\",\"username\":\"silverbird813\",\"password\":\"gofish\",\"salt\":\"I4kYs2fS\",\"md5\":\"6a7c0c3e37f8ade1415975e1f0f23566\",\"sha1\":\"b7147161e327a74b251dd86375a18b6111e3cb8f\",\"sha256\":\"97ad6166ed1833ef2fbf9743264ef3c85048b7cba1ac96ac0616db2e52a5b93c\"},\"dob\":{\"date\":\"1995-06-13T04:42:06.275Z\",\"age\":28},\"registered\":{\"date\":\"2014-02-22T20:03:29.196Z\",\"age\":10},\"phone\":\"51309073\",\"cell\":\"21404207\",\"id\":{\"name\":\"CPR\",\"value\":\"120695-8760\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/women\\/15.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/women\\/15.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/women\\/15.jpg\"},\"nat\":\"DK\"}],\"info\":{\"seed\":\"df404ab9f89f12e0\",\"results\":1,\"page\":1,\"version\":\"1.4\"}}','2024-03-05 08:38:16','2024-03-05 08:38:16'),(12,2,'Amanda Nguyen','Herbert Road','amanda.nguyen@example.com',9,23,'E','{\"results\":[{\"gender\":\"female\",\"name\":{\"title\":\"Ms\",\"first\":\"Amanda\",\"last\":\"Nguyen\"},\"location\":{\"street\":{\"number\":9387,\"name\":\"Herbert Road\"},\"city\":\"Tralee\",\"state\":\"Fingal\",\"country\":\"Ireland\",\"postcode\":63419,\"coordinates\":{\"latitude\":\"-0.9365\",\"longitude\":\"81.9243\"},\"timezone\":{\"offset\":\"-9:00\",\"description\":\"Alaska\"}},\"email\":\"amanda.nguyen@example.com\",\"login\":{\"uuid\":\"0ae1f4e4-919b-4e35-953a-92675b1a152f\",\"username\":\"redmeercat217\",\"password\":\"charlott\",\"salt\":\"dJS3owKw\",\"md5\":\"d3cd69a3bee462d623276da1b305e191\",\"sha1\":\"9fc18c58120b8495525d9903575a84e0b98f850b\",\"sha256\":\"abd3762ea4d89a087d57b6fce6e113f3e34ce7914064851e09b7067c664e5264\"},\"dob\":{\"date\":\"1967-04-03T16:36:38.972Z\",\"age\":56},\"registered\":{\"date\":\"2011-04-26T22:39:00.957Z\",\"age\":12},\"phone\":\"061-160-3196\",\"cell\":\"081-683-5393\",\"id\":{\"name\":\"PPS\",\"value\":\"1150537T\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/women\\/34.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/women\\/34.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/women\\/34.jpg\"},\"nat\":\"IE\"}],\"info\":{\"seed\":\"d76cc6d07a07d128\",\"results\":1,\"page\":1,\"version\":\"1.4\"}}','2024-03-05 08:38:18','2024-03-05 08:38:18'),(13,2,'Serine Wiborg','Bestumstubben','serine.wiborg@example.com',16,16,'E','{\"results\":[{\"gender\":\"female\",\"name\":{\"title\":\"Ms\",\"first\":\"Serine\",\"last\":\"Wiborg\"},\"location\":{\"street\":{\"number\":6149,\"name\":\"Bestumstubben\"},\"city\":\"Ytre Enebakk\",\"state\":\"Tr\\u00f8ndelag\",\"country\":\"Norway\",\"postcode\":\"7465\",\"coordinates\":{\"latitude\":\"46.8829\",\"longitude\":\"109.0403\"},\"timezone\":{\"offset\":\"0:00\",\"description\":\"Western Europe Time, London, Lisbon, Casablanca\"}},\"email\":\"serine.wiborg@example.com\",\"login\":{\"uuid\":\"dfe791fe-fd82-40fc-b652-f45b0fe9089d\",\"username\":\"blackwolf377\",\"password\":\"drpepper\",\"salt\":\"3Hjc7W0x\",\"md5\":\"6beed3342ef6c8d1cc68457313cc394b\",\"sha1\":\"d3052a20db0187039d5e352566938b30367a0fd3\",\"sha256\":\"0ec9853e6075804fdd3500ece120bf5fc115904c54e56281cc3bd983d1a4ba01\"},\"dob\":{\"date\":\"1964-01-21T00:52:54.768Z\",\"age\":60},\"registered\":{\"date\":\"2016-12-13T20:38:24.933Z\",\"age\":7},\"phone\":\"89505583\",\"cell\":\"98734149\",\"id\":{\"name\":\"FN\",\"value\":\"21016400014\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/women\\/3.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/women\\/3.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/women\\/3.jpg\"},\"nat\":\"NO\"}],\"info\":{\"seed\":\"16178f03b75a95fb\",\"results\":1,\"page\":1,\"version\":\"1.4\"}}','2024-03-05 08:38:20','2024-03-05 08:38:20'),(14,2,'Eva Ouellet','Peel St','eva.ouellet@example.com',10,22,'D','{\"results\":[{\"gender\":\"female\",\"name\":{\"title\":\"Ms\",\"first\":\"Eva\",\"last\":\"Ouellet\"},\"location\":{\"street\":{\"number\":8338,\"name\":\"Peel St\"},\"city\":\"Alma\",\"state\":\"British Columbia\",\"country\":\"Canada\",\"postcode\":\"G3O 4X6\",\"coordinates\":{\"latitude\":\"-64.3346\",\"longitude\":\"70.0800\"},\"timezone\":{\"offset\":\"+4:30\",\"description\":\"Kabul\"}},\"email\":\"eva.ouellet@example.com\",\"login\":{\"uuid\":\"6bbadb02-acb9-43fb-a167-ed03285c0834\",\"username\":\"heavytiger838\",\"password\":\"gabriell\",\"salt\":\"WSMm8Sie\",\"md5\":\"f3c4bea0a1459bba3f3d1056787f2c91\",\"sha1\":\"014bcd6ead44280859b740a2709add41c6eb2c70\",\"sha256\":\"9761cf8f9c9945930664cd7aae5e0998c8d0d677de325cc128929a6d19bd78c8\"},\"dob\":{\"date\":\"1945-05-24T21:52:45.216Z\",\"age\":78},\"registered\":{\"date\":\"2007-03-02T14:41:44.818Z\",\"age\":17},\"phone\":\"N37 A51-2986\",\"cell\":\"G03 M23-1394\",\"id\":{\"name\":\"SIN\",\"value\":\"445651425\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/women\\/18.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/women\\/18.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/women\\/18.jpg\"},\"nat\":\"CA\"}],\"info\":{\"seed\":\"8c3b072dc5d80eee\",\"results\":1,\"page\":1,\"version\":\"1.4\"}}','2024-03-05 08:38:22','2024-03-05 08:38:22'),(15,2,'Yulianna Kononchuk','Prospekt Himikiv','yulianna.kononchuk@example.com',16,16,'C','{\"results\":[{\"gender\":\"female\",\"name\":{\"title\":\"Ms\",\"first\":\"Yulianna\",\"last\":\"Kononchuk\"},\"location\":{\"street\":{\"number\":3964,\"name\":\"Prospekt Himikiv\"},\"city\":\"Lubni\",\"state\":\"Mikolayivska\",\"country\":\"Ukraine\",\"postcode\":86713,\"coordinates\":{\"latitude\":\"79.4199\",\"longitude\":\"136.2019\"},\"timezone\":{\"offset\":\"+1:00\",\"description\":\"Brussels, Copenhagen, Madrid, Paris\"}},\"email\":\"yulianna.kononchuk@example.com\",\"login\":{\"uuid\":\"f6e76b88-de9c-421e-a21f-8e6f644ad5c0\",\"username\":\"whitelion893\",\"password\":\"baseball\",\"salt\":\"3JVkf6hl\",\"md5\":\"32ba0e29ef8dd7bb1ff6d5069c04def8\",\"sha1\":\"cd019e7a642ad226d75f5a365b29ce3e462e7cc8\",\"sha256\":\"ec599edbd3f9dd3a121d8d07e10096fa497a09eb46f898ba71887808f5222dd7\"},\"dob\":{\"date\":\"1967-04-13T06:11:58.027Z\",\"age\":56},\"registered\":{\"date\":\"2021-08-25T06:28:36.427Z\",\"age\":2},\"phone\":\"(068) G68-3803\",\"cell\":\"(097) D18-6428\",\"id\":{\"name\":\"\",\"value\":null},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/women\\/37.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/women\\/37.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/women\\/37.jpg\"},\"nat\":\"UA\"}],\"info\":{\"seed\":\"790263850eecd212\",\"results\":1,\"page\":1,\"version\":\"1.4\"}}','2024-03-05 08:38:23','2024-03-05 08:38:23'),(16,1,'Gael Tapia','Periférico Nuevo León','gael.tapia@example.com',16,16,'E','{\"results\":[{\"gender\":\"male\",\"name\":{\"title\":\"Mr\",\"first\":\"Gael\",\"last\":\"Tapia\"},\"location\":{\"street\":{\"number\":7367,\"name\":\"Perif\\u00e9rico Nuevo Le\\u00f3n\"},\"city\":\"Atongo de Abajo\",\"state\":\"Hidalgo\",\"country\":\"Mexico\",\"postcode\":83820,\"coordinates\":{\"latitude\":\"23.1151\",\"longitude\":\"-97.2507\"},\"timezone\":{\"offset\":\"+5:00\",\"description\":\"Ekaterinburg, Islamabad, Karachi, Tashkent\"}},\"email\":\"gael.tapia@example.com\",\"login\":{\"uuid\":\"5dabc06d-6460-43d2-b9bf-488abc44ae72\",\"username\":\"redzebra372\",\"password\":\"modem\",\"salt\":\"yrAbm3iC\",\"md5\":\"18c2dbf16907b84ae5361b24616b897b\",\"sha1\":\"49e72fe7ef7ee31c4fcc9673f2573028040564bf\",\"sha256\":\"315e5b093c3e953e8ac4d032062bd39637eecaa7c31ded0201d3067a55790da3\"},\"dob\":{\"date\":\"1973-02-17T02:26:48.923Z\",\"age\":51},\"registered\":{\"date\":\"2012-10-20T07:15:57.881Z\",\"age\":11},\"phone\":\"(677) 326 9415\",\"cell\":\"(618) 563 1888\",\"id\":{\"name\":\"NSS\",\"value\":\"43 16 59 4026 3\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/men\\/67.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/men\\/67.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/men\\/67.jpg\"},\"nat\":\"MX\"}],\"info\":{\"seed\":\"d0bc27ac2fbf4107\",\"results\":1,\"page\":1,\"version\":\"1.4\"}}','2024-03-05 08:38:24','2024-03-05 08:38:24'),(17,1,'Nereu Campos','Rua Principal','nereu.campos@example.com',11,21,'E','{\"results\":[{\"gender\":\"male\",\"name\":{\"title\":\"Mr\",\"first\":\"Nereu\",\"last\":\"Campos\"},\"location\":{\"street\":{\"number\":6151,\"name\":\"Rua Principal\"},\"city\":\"Catanduva\",\"state\":\"Minas Gerais\",\"country\":\"Brazil\",\"postcode\":33445,\"coordinates\":{\"latitude\":\"-77.0454\",\"longitude\":\"-170.7666\"},\"timezone\":{\"offset\":\"+9:30\",\"description\":\"Adelaide, Darwin\"}},\"email\":\"nereu.campos@example.com\",\"login\":{\"uuid\":\"b1e98374-0cbb-4771-bbc7-5014dc38d9d5\",\"username\":\"silverkoala415\",\"password\":\"piano\",\"salt\":\"dYUSDEhE\",\"md5\":\"e7dc458f158d76834dc0b02512afe41f\",\"sha1\":\"3372a510ec11601fa26206b7d4e9fb64dd2b989f\",\"sha256\":\"d7b4b762b3186453a1572da97c58c5e84a2c2b5301a31456c7756e0788b89702\"},\"dob\":{\"date\":\"1947-04-21T10:32:34.903Z\",\"age\":76},\"registered\":{\"date\":\"2003-07-03T10:46:52.997Z\",\"age\":20},\"phone\":\"(87) 1585-8336\",\"cell\":\"(50) 7927-3204\",\"id\":{\"name\":\"CPF\",\"value\":\"295.515.445-39\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/men\\/26.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/men\\/26.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/men\\/26.jpg\"},\"nat\":\"BR\"}],\"info\":{\"seed\":\"6303f3966b46c49e\",\"results\":1,\"page\":1,\"version\":\"1.4\"}}','2024-03-05 08:38:25','2024-03-05 08:38:25'),(18,1,'آرمین سهيلي راد','واعظی','armyn.shylyrd@example.com',12,20,'B','{\"results\":[{\"gender\":\"male\",\"name\":{\"title\":\"Mr\",\"first\":\"\\u0622\\u0631\\u0645\\u06cc\\u0646\",\"last\":\"\\u0633\\u0647\\u064a\\u0644\\u064a \\u0631\\u0627\\u062f\"},\"location\":{\"street\":{\"number\":2989,\"name\":\"\\u0648\\u0627\\u0639\\u0638\\u06cc\"},\"city\":\"\\u0634\\u0647\\u0631\\u06cc\\u0627\\u0631\",\"state\":\"\\u062e\\u0631\\u0627\\u0633\\u0627\\u0646 \\u0634\\u0645\\u0627\\u0644\\u06cc\",\"country\":\"Iran\",\"postcode\":80242,\"coordinates\":{\"latitude\":\"13.5005\",\"longitude\":\"-34.6821\"},\"timezone\":{\"offset\":\"+5:30\",\"description\":\"Bombay, Calcutta, Madras, New Delhi\"}},\"email\":\"armyn.shylyrd@example.com\",\"login\":{\"uuid\":\"16b4d95c-34d1-42d9-9afd-84aa13076bb6\",\"username\":\"yellowswan574\",\"password\":\"pamela\",\"salt\":\"os2gjZK2\",\"md5\":\"f7572d7d9ec53dd2a03d792002ad3937\",\"sha1\":\"9f7816b3bbef7a9b8e6e1a772dcc743e75f23b47\",\"sha256\":\"d77eeff206204085dcbed35007f640ec9919b157010896fbaaca846ebb17cd47\"},\"dob\":{\"date\":\"1959-06-06T20:51:18.545Z\",\"age\":64},\"registered\":{\"date\":\"2015-03-08T10:22:49.089Z\",\"age\":8},\"phone\":\"002-04377451\",\"cell\":\"0972-121-0291\",\"id\":{\"name\":\"\",\"value\":null},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/men\\/64.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/men\\/64.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/men\\/64.jpg\"},\"nat\":\"IR\"}],\"info\":{\"seed\":\"247d29ecd7f21bfe\",\"results\":1,\"page\":1,\"version\":\"1.4\"}}','2024-03-05 08:38:26','2024-03-05 08:38:26'),(19,1,'Lachlan Hughes','Karangahape Road','lachlan.hughes@example.com',15,17,'B','{\"results\":[{\"gender\":\"male\",\"name\":{\"title\":\"Mr\",\"first\":\"Lachlan\",\"last\":\"Hughes\"},\"location\":{\"street\":{\"number\":606,\"name\":\"Karangahape Road\"},\"city\":\"Lower Hutt\",\"state\":\"Auckland\",\"country\":\"New Zealand\",\"postcode\":83771,\"coordinates\":{\"latitude\":\"54.0468\",\"longitude\":\"-171.6425\"},\"timezone\":{\"offset\":\"-2:00\",\"description\":\"Mid-Atlantic\"}},\"email\":\"lachlan.hughes@example.com\",\"login\":{\"uuid\":\"9460660d-c45c-405d-88f8-6348fce59893\",\"username\":\"yellowleopard447\",\"password\":\"lian\",\"salt\":\"UqxVavYc\",\"md5\":\"e228c9baf195d62c82d1df98d15336f9\",\"sha1\":\"ab902ed30a05b0cc3a056b0ef0269ff030ef4030\",\"sha256\":\"ee9dbbe5adccfbeaf42bc9ec7fa6703f2f11483739d977339b8f6385b7a663f5\"},\"dob\":{\"date\":\"1957-11-05T05:27:23.990Z\",\"age\":66},\"registered\":{\"date\":\"2007-08-16T15:52:57.836Z\",\"age\":16},\"phone\":\"(978)-355-5190\",\"cell\":\"(488)-894-0563\",\"id\":{\"name\":\"\",\"value\":null},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/men\\/51.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/men\\/51.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/men\\/51.jpg\"},\"nat\":\"NZ\"}],\"info\":{\"seed\":\"bf4bf97e7118181f\",\"results\":1,\"page\":1,\"version\":\"1.4\"}}','2024-03-05 08:38:27','2024-03-05 08:38:27'),(20,2,'Robbin Bakelaar','Kanveldweg','robbin.bakelaar@example.com',16,16,'A','{\"results\":[{\"gender\":\"female\",\"name\":{\"title\":\"Ms\",\"first\":\"Robbin\",\"last\":\"Bakelaar\"},\"location\":{\"street\":{\"number\":5406,\"name\":\"Kanveldweg\"},\"city\":\"Bourtange\",\"state\":\"Drenthe\",\"country\":\"Netherlands\",\"postcode\":\"9015 IB\",\"coordinates\":{\"latitude\":\"30.9275\",\"longitude\":\"108.1917\"},\"timezone\":{\"offset\":\"-10:00\",\"description\":\"Hawaii\"}},\"email\":\"robbin.bakelaar@example.com\",\"login\":{\"uuid\":\"c0a18e10-93f8-4e81-ad5c-94fc2907a028\",\"username\":\"smalllion330\",\"password\":\"famous\",\"salt\":\"l7G4He52\",\"md5\":\"d59f463ac031e5e8329ffa2c71dacad3\",\"sha1\":\"a9d057a6904fa3a315d4d5a3173daaa37dfeec6b\",\"sha256\":\"90e312dea55ad9eba4b479af65365a1482a796a9f7ab596faa68a591c7b60da1\"},\"dob\":{\"date\":\"2001-02-06T20:07:30.461Z\",\"age\":23},\"registered\":{\"date\":\"2017-12-02T08:52:42.418Z\",\"age\":6},\"phone\":\"(060) 4601576\",\"cell\":\"(06) 61690039\",\"id\":{\"name\":\"BSN\",\"value\":\"58100740\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/women\\/15.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/women\\/15.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/women\\/15.jpg\"},\"nat\":\"NL\"}],\"info\":{\"seed\":\"14da41a5bd5be7e7\",\"results\":1,\"page\":1,\"version\":\"1.4\"}}','2024-03-05 08:38:28','2024-03-05 08:38:28'),(21,2,'Malou Andersen','Tranevej','malou.andersen@example.com',18,14,'A','{\"results\":[{\"gender\":\"female\",\"name\":{\"title\":\"Ms\",\"first\":\"Malou\",\"last\":\"Andersen\"},\"location\":{\"street\":{\"number\":3735,\"name\":\"Tranevej\"},\"city\":\"Viby Sj.\",\"state\":\"Midtjylland\",\"country\":\"Denmark\",\"postcode\":57793,\"coordinates\":{\"latitude\":\"-45.1444\",\"longitude\":\"168.8110\"},\"timezone\":{\"offset\":\"+9:00\",\"description\":\"Tokyo, Seoul, Osaka, Sapporo, Yakutsk\"}},\"email\":\"malou.andersen@example.com\",\"login\":{\"uuid\":\"90be5ef5-8364-429d-b422-1a03106cf2b2\",\"username\":\"blackbutterfly685\",\"password\":\"billy\",\"salt\":\"mxsiLZ0r\",\"md5\":\"e73ba200b7fcee7964cfd3b1de32c129\",\"sha1\":\"8e93ca7a4536c6af199c774d35b75d0247bbea91\",\"sha256\":\"ba701ad7b1d6b1c1a7f3ca2f459d6876c46c1054201c0790a443b9941040fb70\"},\"dob\":{\"date\":\"1946-07-28T17:51:21.189Z\",\"age\":77},\"registered\":{\"date\":\"2006-02-17T19:16:29.339Z\",\"age\":18},\"phone\":\"03891716\",\"cell\":\"93615724\",\"id\":{\"name\":\"CPR\",\"value\":\"280746-7773\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/women\\/11.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/women\\/11.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/women\\/11.jpg\"},\"nat\":\"DK\"}],\"info\":{\"seed\":\"99e8e4f450e08d1f\",\"results\":1,\"page\":1,\"version\":\"1.4\"}}','2024-03-05 08:38:29','2024-03-05 08:38:29'),(22,1,'Santiago Herrera','Avenida de Castilla','santiago.herrera@example.com',14,18,'A','{\"results\":[{\"gender\":\"male\",\"name\":{\"title\":\"Mr\",\"first\":\"Santiago\",\"last\":\"Herrera\"},\"location\":{\"street\":{\"number\":1297,\"name\":\"Avenida de Castilla\"},\"city\":\"Pozuelo de Alarc\\u00f3n\",\"state\":\"Castilla y Le\\u00f3n\",\"country\":\"Spain\",\"postcode\":93461,\"coordinates\":{\"latitude\":\"-35.8878\",\"longitude\":\"-84.8355\"},\"timezone\":{\"offset\":\"-4:00\",\"description\":\"Atlantic Time (Canada), Caracas, La Paz\"}},\"email\":\"santiago.herrera@example.com\",\"login\":{\"uuid\":\"e6421b5e-068e-468e-a856-157d1eec2db2\",\"username\":\"goldenkoala182\",\"password\":\"lexus\",\"salt\":\"byH6AH35\",\"md5\":\"1560333aadea7d11ed4e0710259ab706\",\"sha1\":\"7e70e457a66a27aba2a7150fce1a3f8e2538c9e5\",\"sha256\":\"a3e48f654bfcc67bdbfef6b083ac0762f2e1622d0477307052d3a6710fd18fb1\"},\"dob\":{\"date\":\"1963-12-09T08:24:38.839Z\",\"age\":60},\"registered\":{\"date\":\"2011-01-17T10:21:41.808Z\",\"age\":13},\"phone\":\"909-871-871\",\"cell\":\"657-293-239\",\"id\":{\"name\":\"DNI\",\"value\":\"81730529-C\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/men\\/84.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/men\\/84.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/men\\/84.jpg\"},\"nat\":\"ES\"}],\"info\":{\"seed\":\"d32eb281df699477\",\"results\":1,\"page\":1,\"version\":\"1.4\"}}','2024-03-05 08:38:30','2024-03-05 08:38:30'),(23,1,'محمدطاها جعفری','شهید علی باستانی','mhmdth.jaafry@example.com',19,13,'C','{\"results\":[{\"gender\":\"male\",\"name\":{\"title\":\"Mr\",\"first\":\"\\u0645\\u062d\\u0645\\u062f\\u0637\\u0627\\u0647\\u0627\",\"last\":\"\\u062c\\u0639\\u0641\\u0631\\u06cc\"},\"location\":{\"street\":{\"number\":5456,\"name\":\"\\u0634\\u0647\\u06cc\\u062f \\u0639\\u0644\\u06cc \\u0628\\u0627\\u0633\\u062a\\u0627\\u0646\\u06cc\"},\"city\":\"\\u0627\\u0631\\u0648\\u0645\\u06cc\\u0647\",\"state\":\"\\u062e\\u0648\\u0632\\u0633\\u062a\\u0627\\u0646\",\"country\":\"Iran\",\"postcode\":62212,\"coordinates\":{\"latitude\":\"19.7146\",\"longitude\":\"-112.8987\"},\"timezone\":{\"offset\":\"-10:00\",\"description\":\"Hawaii\"}},\"email\":\"mhmdth.jaafry@example.com\",\"login\":{\"uuid\":\"c0187159-c74d-43dd-8dd3-5e168e400e2e\",\"username\":\"smallduck421\",\"password\":\"skinny\",\"salt\":\"XEp1l12r\",\"md5\":\"311fc57e7fc6a48d6ec128a1e0d99807\",\"sha1\":\"3a80dd41856272291eaa34148dcbd4c63783e4ca\",\"sha256\":\"0a6d17d2eb84dfc61718cf481829065d6ffdb8255915ac7fd9caf1f75e217fcf\"},\"dob\":{\"date\":\"1997-02-05T11:31:02.964Z\",\"age\":27},\"registered\":{\"date\":\"2004-08-28T07:50:53.850Z\",\"age\":19},\"phone\":\"059-20081867\",\"cell\":\"0953-394-4187\",\"id\":{\"name\":\"\",\"value\":null},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/men\\/41.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/men\\/41.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/men\\/41.jpg\"},\"nat\":\"IR\"}],\"info\":{\"seed\":\"62d21366e73fb965\",\"results\":1,\"page\":1,\"version\":\"1.4\"}}','2024-03-05 08:38:32','2024-03-05 08:38:32'),(24,2,'Elaine Powell','Photinia Ave','elaine.powell@example.com',13,19,'B','{\"results\":[{\"gender\":\"female\",\"name\":{\"title\":\"Ms\",\"first\":\"Elaine\",\"last\":\"Powell\"},\"location\":{\"street\":{\"number\":4279,\"name\":\"Photinia Ave\"},\"city\":\"Scurry\",\"state\":\"Mississippi\",\"country\":\"United States\",\"postcode\":30738,\"coordinates\":{\"latitude\":\"87.5946\",\"longitude\":\"63.6926\"},\"timezone\":{\"offset\":\"+9:00\",\"description\":\"Tokyo, Seoul, Osaka, Sapporo, Yakutsk\"}},\"email\":\"elaine.powell@example.com\",\"login\":{\"uuid\":\"4bbd69d7-37f9-42ef-af2a-9a833af4ab6f\",\"username\":\"redlion668\",\"password\":\"blood\",\"salt\":\"B9Jl69N7\",\"md5\":\"280a378f41739e94f657faa759edda12\",\"sha1\":\"6a660d6b2c8122eb64b0a48631c44a6c641e663a\",\"sha256\":\"30fa7f416ffd10e20554b8700675ba29430c468e37a277a964cc60e2fbac8803\"},\"dob\":{\"date\":\"1975-01-24T12:21:56.480Z\",\"age\":49},\"registered\":{\"date\":\"2006-05-25T01:34:59.566Z\",\"age\":17},\"phone\":\"(792) 774-9103\",\"cell\":\"(844) 681-1544\",\"id\":{\"name\":\"SSN\",\"value\":\"603-72-1061\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/women\\/18.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/women\\/18.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/women\\/18.jpg\"},\"nat\":\"US\"}],\"info\":{\"seed\":\"19ffbc024c0f3500\",\"results\":1,\"page\":1,\"version\":\"1.4\"}}','2024-03-05 08:38:33','2024-03-05 08:38:33'),(25,1,'Pratyush Padmanabha','Gali Paranthe Wali','pratyush.padmanabha@example.com',10,22,'C','{\"results\":[{\"gender\":\"male\",\"name\":{\"title\":\"Mr\",\"first\":\"Pratyush\",\"last\":\"Padmanabha\"},\"location\":{\"street\":{\"number\":1251,\"name\":\"Gali Paranthe Wali\"},\"city\":\"Chinsurah\",\"state\":\"Odisha\",\"country\":\"India\",\"postcode\":28128,\"coordinates\":{\"latitude\":\"11.2212\",\"longitude\":\"-105.7141\"},\"timezone\":{\"offset\":\"+6:00\",\"description\":\"Almaty, Dhaka, Colombo\"}},\"email\":\"pratyush.padmanabha@example.com\",\"login\":{\"uuid\":\"bac243b3-f984-4a0a-845b-3f6bab6af4dd\",\"username\":\"goldenpanda285\",\"password\":\"dave\",\"salt\":\"7JFsPbNs\",\"md5\":\"a0f0528166b15d557f83f04d351e3756\",\"sha1\":\"74fa922524a391d3a08551d738e1de88479c9951\",\"sha256\":\"ff2c31dd2b76167cec3e57233f453cfa612bd6606598a7bf25d17b36c5c83a74\"},\"dob\":{\"date\":\"1998-12-30T21:49:14.447Z\",\"age\":25},\"registered\":{\"date\":\"2010-05-23T10:29:50.070Z\",\"age\":13},\"phone\":\"8736928847\",\"cell\":\"8961138114\",\"id\":{\"name\":\"UIDAI\",\"value\":\"968179719702\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/men\\/73.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/men\\/73.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/men\\/73.jpg\"},\"nat\":\"IN\"}],\"info\":{\"seed\":\"912feec9f3ea0182\",\"results\":1,\"page\":1,\"version\":\"1.4\"}}','2024-03-05 08:38:34','2024-03-05 08:38:34'),(26,1,'Abeer Dawangave','Rajpur Rd','abeer.dawangave@example.com',15,17,'E','{\"results\":[{\"gender\":\"male\",\"name\":{\"title\":\"Mr\",\"first\":\"Abeer\",\"last\":\"Dawangave\"},\"location\":{\"street\":{\"number\":8016,\"name\":\"Rajpur Rd\"},\"city\":\"Srikakulam\",\"state\":\"Rajasthan\",\"country\":\"India\",\"postcode\":80356,\"coordinates\":{\"latitude\":\"11.4886\",\"longitude\":\"-175.6306\"},\"timezone\":{\"offset\":\"-3:00\",\"description\":\"Brazil, Buenos Aires, Georgetown\"}},\"email\":\"abeer.dawangave@example.com\",\"login\":{\"uuid\":\"045cbecc-79c2-4093-99f2-c01bc6d6d176\",\"username\":\"whitedog777\",\"password\":\"mike123\",\"salt\":\"CMXidMmv\",\"md5\":\"fa7894f9f559d80a80e1605a62ab034f\",\"sha1\":\"fea1bc6c5fb4d4e14b524996dc4d04da539a99e9\",\"sha256\":\"311ba96fb466a87f0a239c4c9c41d01f6f7e4c36772083793b7b512cb65ba401\"},\"dob\":{\"date\":\"1947-09-26T15:10:49.611Z\",\"age\":76},\"registered\":{\"date\":\"2004-03-28T21:55:30.297Z\",\"age\":19},\"phone\":\"9384814334\",\"cell\":\"9510356060\",\"id\":{\"name\":\"UIDAI\",\"value\":\"765922618952\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/men\\/70.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/men\\/70.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/men\\/70.jpg\"},\"nat\":\"IN\"}],\"info\":{\"seed\":\"8cc2deaff3f8f204\",\"results\":1,\"page\":1,\"version\":\"1.4\"}}','2024-03-05 08:38:35','2024-03-05 08:38:35'),(27,2,'Alicia Lavoie','Regent Ave','alicia.lavoie@example.com',19,13,'D','{\"results\":[{\"gender\":\"female\",\"name\":{\"title\":\"Mrs\",\"first\":\"Alicia\",\"last\":\"Lavoie\"},\"location\":{\"street\":{\"number\":2877,\"name\":\"Regent Ave\"},\"city\":\"Notre Dame de Lourdes\",\"state\":\"Ontario\",\"country\":\"Canada\",\"postcode\":\"N7G 4F4\",\"coordinates\":{\"latitude\":\"-67.0412\",\"longitude\":\"23.0869\"},\"timezone\":{\"offset\":\"-7:00\",\"description\":\"Mountain Time (US & Canada)\"}},\"email\":\"alicia.lavoie@example.com\",\"login\":{\"uuid\":\"18824c9a-3b99-46b9-a090-7006d9dda5e4\",\"username\":\"angryladybug151\",\"password\":\"monk\",\"salt\":\"SJMyRK6a\",\"md5\":\"f79c0c776f02a3f9f944ff3bbaadb162\",\"sha1\":\"bfc137ef4bc0629e85392cbdda59ffb46e2df8e5\",\"sha256\":\"db24e71e5e1de6d37fe9ca15d9008e11e756f3e1718f06a9a6c069df54f69ee0\"},\"dob\":{\"date\":\"1945-12-25T03:27:07.685Z\",\"age\":78},\"registered\":{\"date\":\"2010-04-14T15:22:24.271Z\",\"age\":13},\"phone\":\"Q88 Q39-2730\",\"cell\":\"G09 T67-6853\",\"id\":{\"name\":\"SIN\",\"value\":\"238811921\"},\"picture\":{\"large\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/women\\/82.jpg\",\"medium\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/med\\/women\\/82.jpg\",\"thumbnail\":\"https:\\/\\/randomuser.me\\/api\\/portraits\\/thumb\\/women\\/82.jpg\"},\"nat\":\"CA\"}],\"info\":{\"seed\":\"9c8acc9a5d7b1b49\",\"results\":1,\"page\":1,\"version\":\"1.4\"}}','2024-03-05 12:13:04','2024-03-05 12:13:04');
/*!40000 ALTER TABLE `hasil_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jenis_kelamin`
--

DROP TABLE IF EXISTS `jenis_kelamin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jenis_kelamin` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jenis_kelamin`
--

LOCK TABLES `jenis_kelamin` WRITE;
/*!40000 ALTER TABLE `jenis_kelamin` DISABLE KEYS */;
INSERT INTO `jenis_kelamin` VALUES (1,'1','Laki-laki',NULL,NULL),(2,'2','Perempuan',NULL,NULL);
/*!40000 ALTER TABLE `jenis_kelamin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategori_barang`
--

DROP TABLE IF EXISTS `kategori_barang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategori_barang` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kode` varchar(3) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori_barang`
--

LOCK TABLES `kategori_barang` WRITE;
/*!40000 ALTER TABLE `kategori_barang` DISABLE KEYS */;
INSERT INTO `kategori_barang` VALUES (1,'elk','Elektronik','2024-03-06 00:30:31','2024-03-06 00:30:31'),(2,'pkn','Pakaian','2024-03-06 00:30:31','2024-03-06 00:30:31'),(3,'mkn','Makanan','2024-03-06 00:30:31','2024-03-06 00:30:31');
/*!40000 ALTER TABLE `kategori_barang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (29,'2014_10_12_000000_create_users_table',1),(30,'2014_10_12_100000_create_password_reset_tokens_table',1),(31,'2019_08_19_000000_create_failed_jobs_table',1),(32,'2019_12_14_000001_create_personal_access_tokens_table',1),(33,'2024_03_05_125706_create_hasil_response_table',1),(34,'2024_03_05_143507_create_jenis_kelamins_table',1),(35,'2024_03_05_144212_table_jenis_kelamin',1),(36,'2024_03_05_144348_create_profesis_table',1),(37,'2024_03_05_205745_create_barangs_table',2),(38,'2024_03_06_071908_create_kategori_barang_table',3),(39,'2024_03_06_072352_create_satuan_barang_table',4),(40,'2024_03_06_075806_table_barang_table',5);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (1,'App\\Models\\User',2,'authToken','21291b88ce94cc8ffc133f52b026adc1258b97861c0a8aa893b01120aa09d3c6','[\"*\"]',NULL,NULL,'2024-03-05 14:38:48','2024-03-05 14:38:48'),(2,'App\\Models\\User',2,'authToken','22a1456720ec77cd66dfba2bab69cdf26ba0f000d90a6fe350be55cdfe927e09','[\"*\"]',NULL,NULL,'2024-03-05 14:40:42','2024-03-05 14:40:42'),(3,'App\\Models\\User',2,'authToken','7012369fbd63a7d433fbda2ada67d7600eab23f00f95c9a8c42d3d7b93160d67','[\"*\"]',NULL,NULL,'2024-03-05 14:42:52','2024-03-05 14:42:52'),(4,'App\\Models\\User',2,'authToken','6ca40e1a52de2f0658a32cd93560482ba62bd953f25b7b71ab41d466920e8852','[\"*\"]',NULL,NULL,'2024-03-05 14:48:13','2024-03-05 14:48:13'),(5,'App\\Models\\User',2,'authToken','94ddb27a27516d373e156ad7c48b01171593c4a2fadea32f4f1644f03d15088e','[\"*\"]',NULL,NULL,'2024-03-05 14:49:24','2024-03-05 14:49:24'),(6,'App\\Models\\User',2,'authToken','c3bca46568981077ab0392eb590a3179953c0b176e8efeea3edf29fbf67a24de','[\"*\"]',NULL,NULL,'2024-03-05 14:54:51','2024-03-05 14:54:51'),(7,'App\\Models\\User',2,'authToken','69dd6bdd62a2154371d6b8918002a0ebde91f177e350b03990211367b8d0ff27','[\"*\"]',NULL,NULL,'2024-03-05 17:13:44','2024-03-05 17:13:44'),(8,'App\\Models\\User',2,'authToken','1b2b4cbc860bc7a1b3bdc052a7d921b837d779afa4f4a4cee1591013bcc9687b','[\"*\"]',NULL,NULL,'2024-03-05 17:15:10','2024-03-05 17:15:10'),(9,'App\\Models\\User',2,'authToken','9b4b8db7dc110e076f39c4db0e3f532cadb45a2e42e23c8041ab69a58ce00f29','[\"*\"]',NULL,NULL,'2024-03-05 17:19:20','2024-03-05 17:19:20'),(10,'App\\Models\\User',2,'authToken','d54aba158d837710604eec15f807a9b11432074b1506a49ef331eb21fd7c71f4','[\"*\"]',NULL,NULL,'2024-03-05 17:29:18','2024-03-05 17:29:18'),(11,'App\\Models\\User',2,'authToken','54ffc498648061b6266308ea1cb16df0610c92c5b5e247066d478756c88c7e47','[\"*\"]',NULL,NULL,'2024-03-05 17:30:19','2024-03-05 17:30:19');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesi`
--

DROP TABLE IF EXISTS `profesi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profesi` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) NOT NULL,
  `nama_profesi` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesi`
--

LOCK TABLES `profesi` WRITE;
/*!40000 ALTER TABLE `profesi` DISABLE KEYS */;
INSERT INTO `profesi` VALUES (1,'A','Petani',NULL,NULL),(2,'B','Teknisi',NULL,NULL),(3,'C','Guru',NULL,NULL),(4,'D','Nelayan',NULL,NULL),(5,'E','Seniman',NULL,NULL);
/*!40000 ALTER TABLE `profesi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `satuan_barang`
--

DROP TABLE IF EXISTS `satuan_barang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `satuan_barang` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kode` varchar(3) NOT NULL,
  `nama_satuan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `satuan_barang`
--

LOCK TABLES `satuan_barang` WRITE;
/*!40000 ALTER TABLE `satuan_barang` DISABLE KEYS */;
INSERT INTO `satuan_barang` VALUES (1,'unt','Unit','2024-03-06 00:31:28','2024-03-06 00:31:28'),(2,'kg','Kilogram','2024-03-06 00:31:28','2024-03-06 00:31:28'),(3,'l','Liter','2024-03-06 00:31:28','2024-03-06 00:31:28');
/*!40000 ALTER TABLE `satuan_barang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Naufal Puji Mahdy','naufal@mail.com',NULL,'$2y$12$nLs5e/oBxLciSIf2ByUFiujxX9.1MUQZwKE8kIYLRBSSQyuleabZu',NULL,'2024-03-05 14:15:12','2024-03-05 14:15:12'),(2,'wiwi','wiwi@mail.com',NULL,'$2y$12$.7JYJBj1STM0u6gp9617h.LKcoxgEW0hGg.zcIUuVoXKOfL8JjEaa',NULL,'2024-03-05 14:33:17','2024-03-05 14:33:17');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'pretest_varnion'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-06 15:25:32
