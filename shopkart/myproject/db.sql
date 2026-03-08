-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	8.0.17


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema django_joes
--

CREATE DATABASE IF NOT EXISTS django_joes;
USE django_joes;

--
-- Definition of table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_group`
--

/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;


--
-- Definition of table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_group_permissions`
--

/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;


--
-- Definition of table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_permission`
--

/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` (`id`,`name`,`content_type_id`,`codename`) VALUES 
 (1,'Can add log entry',1,'add_logentry'),
 (2,'Can change log entry',1,'change_logentry'),
 (3,'Can delete log entry',1,'delete_logentry'),
 (4,'Can view log entry',1,'view_logentry'),
 (5,'Can add permission',2,'add_permission'),
 (6,'Can change permission',2,'change_permission'),
 (7,'Can delete permission',2,'delete_permission'),
 (8,'Can view permission',2,'view_permission'),
 (9,'Can add group',3,'add_group'),
 (10,'Can change group',3,'change_group'),
 (11,'Can delete group',3,'delete_group'),
 (12,'Can view group',3,'view_group'),
 (13,'Can add user',4,'add_user'),
 (14,'Can change user',4,'change_user'),
 (15,'Can delete user',4,'delete_user'),
 (16,'Can view user',4,'view_user'),
 (17,'Can add content type',5,'add_contenttype'),
 (18,'Can change content type',5,'change_contenttype'),
 (19,'Can delete content type',5,'delete_contenttype'),
 (20,'Can view content type',5,'view_contenttype'),
 (21,'Can add session',6,'add_session'),
 (22,'Can change session',6,'change_session'),
 (23,'Can delete session',6,'delete_session'),
 (24,'Can view session',6,'view_session'),
 (25,'Can add catagory',7,'add_catagory'),
 (26,'Can change catagory',7,'change_catagory'),
 (27,'Can delete catagory',7,'delete_catagory'),
 (28,'Can view catagory',7,'view_catagory'),
 (29,'Can add product',8,'add_product'),
 (30,'Can change product',8,'change_product'),
 (31,'Can delete product',8,'delete_product'),
 (32,'Can view product',8,'view_product'),
 (33,'Can add cart',9,'add_cart'),
 (34,'Can change cart',9,'change_cart'),
 (35,'Can delete cart',9,'delete_cart'),
 (36,'Can view cart',9,'view_cart'),
 (37,'Can add favourite',10,'add_favourite'),
 (38,'Can change favourite',10,'change_favourite'),
 (39,'Can delete favourite',10,'delete_favourite'),
 (40,'Can view favourite',10,'view_favourite');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;


--
-- Definition of table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_user`
--

/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` (`id`,`password`,`last_login`,`is_superuser`,`username`,`first_name`,`last_name`,`email`,`is_staff`,`is_active`,`date_joined`) VALUES 
 (1,'pbkdf2_sha256$320000$H0nh7zLXHcs5DHlkdha57F$Eg9QJdhrzwi43ila0Ldtj+tGauxysECH7tUH+x5651s=','2022-07-10 11:32:18.899433',1,'joes','','','joes@gmail.com',1,1,'2022-07-08 18:44:29.302144'),
 (2,'pbkdf2_sha256$320000$bDDhYm4GleMESs94EwQ9gT$SAt+DPS5igyhNGHtaVQD4uqBslT4AsMXsk3Ud/dYEh4=',NULL,0,'Ram','','','ram@gmail.com',0,1,'2022-07-09 13:29:25.590228'),
 (3,'pbkdf2_sha256$320000$LPoNeq45YJ7xjSKMLc1RgL$4aM0Gj/aDLmTXh80OJXYD1YM77ger95k+40rkB4iB+s=',NULL,0,'Suresh','','','suresh@gmail.com',0,1,'2022-07-09 13:45:58.379708'),
 (4,'pbkdf2_sha256$320000$Kk0H0S8h8zuZU9RcLewU5o$pGbv0NJIgEOo+V6JGMlsRlMURakqs2kEyY1YEFeZkJw=',NULL,0,'Rakesh','','','rakesh@gmail.com',0,1,'2022-07-09 13:55:07.440893'),
 (5,'pbkdf2_sha256$320000$4eTDLpP2qGRMaYvh28KkzG$au7xJpBgW02BfIW0wvASa3UgevsJ3U0K6vN7DQkyUtg=','2022-07-10 10:58:31.320697',0,'sam','','','sam@gmail.com',0,1,'2022-07-10 03:50:44.633486'),
 (6,'pbkdf2_sha256$320000$keLmz6DZIONgMWBPXq8grS$WQ3Angmn+0go8pyR93dshAm7yjkbuLMQbrhRUzXCBVg=',NULL,0,'sara','','','sara@gmail.com',0,1,'2022-07-10 11:27:57.297895'),
 (7,'pbkdf2_sha256$320000$YoyzSoJRemxuxZljLzm3UM$fW19mcZXd1FAsdnGUippoSjD0DQthpLQ31eR0P2DeWA=','2022-07-10 11:31:03.503933',0,'tiya','','','tiya@gmail.com',0,1,'2022-07-10 11:30:49.255958');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;


--
-- Definition of table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_user_groups`
--

/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;


--
-- Definition of table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_user_user_permissions`
--

/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;


--
-- Definition of table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_admin_log`
--

/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` (`id`,`action_time`,`object_id`,`object_repr`,`action_flag`,`change_message`,`content_type_id`,`user_id`) VALUES 
 (1,'2022-07-08 18:52:18.461526','1','Mobiles',1,'[{\"added\": {}}]',7,1),
 (2,'2022-07-08 19:04:57.005496','1','REDMI 9i Sport',1,'[{\"added\": {}}]',8,1),
 (3,'2022-07-08 19:07:16.913740','2','Home',1,'[{\"added\": {}}]',7,1),
 (4,'2022-07-08 19:07:40.083302','3','Grocery',1,'[{\"added\": {}}]',7,1),
 (5,'2022-07-08 19:08:13.388413','4','Electronics',1,'[{\"added\": {}}]',7,1),
 (6,'2022-07-08 19:08:44.051754','5','Fasion',1,'[{\"added\": {}}]',7,1),
 (7,'2022-07-08 19:11:59.941231','2','realme Narzo 50A',1,'[{\"added\": {}}]',8,1),
 (8,'2022-07-08 19:23:41.294209','1','REDMI 9i Sport',2,'[]',8,1),
 (9,'2022-07-08 19:28:28.199933','164','LG TV',2,'[{\"changed\": {\"fields\": [\"Vendor\", \"Trending\"]}}]',8,1),
 (10,'2022-07-08 19:28:33.289390','166','Whirlpool 190 L',2,'[{\"changed\": {\"fields\": [\"Vendor\", \"Trending\"]}}]',8,1),
 (11,'2022-07-08 19:28:38.159789','140','boAt Aavante Bar',2,'[{\"changed\": {\"fields\": [\"Trending\"]}}]',8,1),
 (12,'2022-07-08 19:28:54.396810','134','boAt BassHeads 900',2,'[{\"changed\": {\"fields\": [\"Description\", \"Trending\"]}}]',8,1),
 (13,'2022-07-08 19:29:17.077083','137','HP V236w',2,'[{\"changed\": {\"fields\": [\"Name\", \"Trending\"]}}]',8,1),
 (14,'2022-07-08 19:29:25.981705','125','Maggi Noodles',2,'[{\"changed\": {\"fields\": [\"Trending\"]}}]',8,1),
 (15,'2022-07-09 03:45:39.340023','6','Books',1,'[{\"added\": {}}]',7,1),
 (16,'2022-07-09 05:21:27.186882','105','Digital Reprint Painting',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',8,1),
 (17,'2022-07-09 05:22:27.073976','102','limraz 3 Seater Sofa',2,'[{\"changed\": {\"fields\": [\"Name\", \"Description\"]}}]',8,1),
 (18,'2022-07-09 05:22:36.233693','102','limraz furniture Sofa',2,'[{\"changed\": {\"fields\": [\"Name\", \"Description\"]}}]',8,1),
 (19,'2022-07-09 05:22:57.858654','103','Opulent Seater Sofa',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',8,1),
 (20,'2022-07-09 05:23:13.892217','167','V-Guard Mini Stabilizer',2,'[{\"changed\": {\"fields\": [\"Name\", \"Vendor\", \"Description\"]}}]',8,1),
 (21,'2022-07-09 05:23:31.658321','174','WD Wired External Hard Disk',2,'[{\"changed\": {\"fields\": [\"Name\", \"Vendor\"]}}]',8,1),
 (22,'2022-07-09 05:23:42.193230','144','Printed Formal Shirt',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',8,1),
 (23,'2022-07-09 05:23:54.772157','110','Bean Filling',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',8,1),
 (24,'2022-07-09 05:23:59.733779','109','Buddha on Knee',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',8,1),
 (25,'2022-07-09 05:24:03.307482','108','Gold Art India Gold',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',8,1),
 (26,'2022-07-09 05:24:13.121957','106','Sleeping Pillow',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',8,1),
 (27,'2022-07-09 05:24:38.379746','168','SAMSUNG  Ceramic Heater',2,'[{\"changed\": {\"fields\": [\"Name\", \"Vendor\"]}}]',8,1),
 (28,'2022-07-09 05:24:39.810529','169','Sansui  Water Geyser',2,'[{\"changed\": {\"fields\": [\"Name\", \"Vendor\", \"Description\"]}}]',8,1),
 (29,'2022-07-09 05:24:45.088743','170','Hitachi 1.5 Ton AC',2,'[{\"changed\": {\"fields\": [\"Name\", \"Vendor\"]}}]',8,1),
 (30,'2022-07-09 05:25:10.067199','101','ASUS ZenFone',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',8,1),
 (31,'2022-07-09 05:25:20.480558','100','Nokia G21',2,'[{\"changed\": {\"fields\": [\"Name\", \"Description\"]}}]',8,1),
 (32,'2022-07-09 08:12:26.094952','175','HTML & CSS: The Complete Reference',1,'[{\"added\": {}}]',8,1),
 (33,'2022-07-09 09:41:41.081984','1','REDMI 9i Sport',2,'[{\"changed\": {\"fields\": [\"Quantity\"]}}]',8,1),
 (34,'2022-07-09 09:49:11.416980','89','POCO C31',2,'[{\"changed\": {\"fields\": [\"Description\", \"Trending\"]}}]',8,1),
 (35,'2022-07-09 10:18:25.673259','172','MILTON GO Electro Kettle',2,'[{\"changed\": {\"fields\": [\"Vendor\", \"Description\", \"Trending\"]}}]',8,1),
 (36,'2022-07-09 10:18:44.096213','175','HTML & CSS Book',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;


--
-- Definition of table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_content_type`
--

/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`,`app_label`,`model`) VALUES 
 (1,'admin','logentry'),
 (3,'auth','group'),
 (2,'auth','permission'),
 (4,'auth','user'),
 (5,'contenttypes','contenttype'),
 (6,'sessions','session'),
 (9,'shop','cart'),
 (7,'shop','catagory'),
 (10,'shop','favourite'),
 (8,'shop','product');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;


--
-- Definition of table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_migrations`
--

/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`,`app`,`name`,`applied`) VALUES 
 (1,'contenttypes','0001_initial','2022-07-08 18:42:25.926636'),
 (2,'auth','0001_initial','2022-07-08 18:42:26.938586'),
 (3,'admin','0001_initial','2022-07-08 18:42:27.353566'),
 (4,'admin','0002_logentry_remove_auto_add','2022-07-08 18:42:27.363544'),
 (5,'admin','0003_logentry_add_action_flag_choices','2022-07-08 18:42:27.375909'),
 (6,'contenttypes','0002_remove_content_type_name','2022-07-08 18:42:27.512458'),
 (7,'auth','0002_alter_permission_name_max_length','2022-07-08 18:42:27.621338'),
 (8,'auth','0003_alter_user_email_max_length','2022-07-08 18:42:27.651724'),
 (9,'auth','0004_alter_user_username_opts','2022-07-08 18:42:27.663728'),
 (10,'auth','0005_alter_user_last_login_null','2022-07-08 18:42:27.744370'),
 (11,'auth','0006_require_contenttypes_0002','2022-07-08 18:42:27.751368'),
 (12,'auth','0007_alter_validators_add_error_messages','2022-07-08 18:42:27.763368'),
 (13,'auth','0008_alter_user_username_max_length','2022-07-08 18:42:27.934755'),
 (14,'auth','0009_alter_user_last_name_max_length','2022-07-08 18:42:28.282297'),
 (15,'auth','0010_alter_group_name_max_length','2022-07-08 18:42:28.311272'),
 (16,'auth','0011_update_proxy_permissions','2022-07-08 18:42:28.327274'),
 (17,'auth','0012_alter_user_first_name_max_length','2022-07-08 18:42:28.437298'),
 (18,'sessions','0001_initial','2022-07-08 18:42:28.508295'),
 (19,'shop','0001_initial','2022-07-08 18:42:28.675180'),
 (20,'shop','0002_cart','2022-07-10 06:56:33.074071'),
 (21,'shop','0003_favourite','2022-07-10 11:06:00.845380');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;


--
-- Definition of table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_session`
--

/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;


--
-- Definition of table `shop_cart`
--

DROP TABLE IF EXISTS `shop_cart`;
CREATE TABLE `shop_cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_qty` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_cart_product_id_48b482ee_fk_shop_product_id` (`product_id`),
  KEY `shop_cart_user_id_27925ac6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `shop_cart_product_id_48b482ee_fk_shop_product_id` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`id`),
  CONSTRAINT `shop_cart_user_id_27925ac6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `shop_cart`
--

/*!40000 ALTER TABLE `shop_cart` DISABLE KEYS */;
INSERT INTO `shop_cart` (`id`,`product_qty`,`created_at`,`product_id`,`user_id`) VALUES 
 (1,1,'2022-07-10 09:33:26.395828',134,5),
 (3,1,'2022-07-10 09:40:06.415993',137,5),
 (4,2,'2022-07-10 11:31:44.963569',141,7);
/*!40000 ALTER TABLE `shop_cart` ENABLE KEYS */;


--
-- Definition of table `shop_catagory`
--

DROP TABLE IF EXISTS `shop_catagory`;
CREATE TABLE `shop_catagory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `shop_catagory`
--

/*!40000 ALTER TABLE `shop_catagory` DISABLE KEYS */;
INSERT INTO `shop_catagory` (`id`,`name`,`image`,`description`,`status`,`created_at`) VALUES 
 (1,'Mobiles','uploads/20220709002218ASUSROGPhone5.jpg','All Kinds of Mobiles',0,'2022-07-08 18:52:18.459526'),
 (2,'Home','uploads/20220709003716Buddha.jpg','All Home Products',0,'2022-07-08 19:07:16.912738'),
 (3,'Grocery','uploads/20220709003740Maggi.jpg','All Grocery Items',0,'2022-07-08 19:07:40.082302'),
 (4,'Electronics','uploads/20220709003813boAtBassHeadsWiredHeadset.jpg','All Electronics Items',0,'2022-07-08 19:08:13.387012'),
 (5,'Fasion','uploads/20220709003844Black-T-Shirt.jpg','All Men and Women Fasion',0,'2022-07-08 19:08:44.050388'),
 (6,'Books','uploads/20220709091539nooks.jpg','All Kinds of It Related Book',0,'2022-07-09 03:45:39.337997');
/*!40000 ALTER TABLE `shop_catagory` ENABLE KEYS */;


--
-- Definition of table `shop_favourite`
--

DROP TABLE IF EXISTS `shop_favourite`;
CREATE TABLE `shop_favourite` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_favourite_product_id_dc4d9f31_fk_shop_product_id` (`product_id`),
  KEY `shop_favourite_user_id_7375eacf_fk_auth_user_id` (`user_id`),
  CONSTRAINT `shop_favourite_product_id_dc4d9f31_fk_shop_product_id` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`id`),
  CONSTRAINT `shop_favourite_user_id_7375eacf_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `shop_favourite`
--

/*!40000 ALTER TABLE `shop_favourite` DISABLE KEYS */;
INSERT INTO `shop_favourite` (`id`,`created_at`,`product_id`,`user_id`) VALUES 
 (1,'2022-07-10 11:15:36.441829',89,5),
 (4,'2022-07-10 11:31:29.779630',147,7),
 (5,'2022-07-10 11:32:02.154689',93,7);
/*!40000 ALTER TABLE `shop_favourite` ENABLE KEYS */;


--
-- Definition of table `shop_product`
--

DROP TABLE IF EXISTS `shop_product`;
CREATE TABLE `shop_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `vendor` varchar(150) NOT NULL,
  `product_image` varchar(100) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `original_price` double NOT NULL,
  `selling_price` double NOT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `trending` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_product_category_id_14d7eea8_fk_shop_catagory_id` (`category_id`),
  CONSTRAINT `shop_product_category_id_14d7eea8_fk_shop_catagory_id` FOREIGN KEY (`category_id`) REFERENCES `shop_catagory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `shop_product`
--

/*!40000 ALTER TABLE `shop_product` DISABLE KEYS */;
INSERT INTO `shop_product` (`id`,`name`,`vendor`,`product_image`,`quantity`,`original_price`,`selling_price`,`description`,`status`,`trending`,`created_at`,`category_id`) VALUES 
 (1,'REDMI 9i Sport','Akshnav Online','uploads/20220709003456redmi_9i.jpg',0,9999,8799,'(Metallic Blue, 64 GB)  (4 GB RAM) Enjoy watching videos and plunge yourself into a world of entertainment with the Redmi 9i Sport’s 16.58-cm (6.53) big HD+ IPS display, which delivers rich details and vivid colours.',0,1,'2022-07-08 19:04:57.003522',1),
 (2,'realme Narzo 50A','Akshnav Online','uploads/20220709004159realme_Narzo_50.jpg',5,13999,12499,'(Oxygen Green, 128 GB)  (4 GB RAM) Equipped with a Helio G85 Gaming Processor, the realme Narzo 50A is a high-speed smartphone that lets you play intense games and binge-watch favourite shows. This smartphone features a 6000 mAh Battery and 18W Quick Charge for uninterrupted performance, and a 50 MP AI Triple Camera to click beautiful photos.',0,0,'2022-07-08 19:11:59.939221',1),
 (89,'POCO C31','Truenet Commerce','uploads/POCOC31.jpg',8,11999,7999,'(Shadow Gray, 64 GB)  (4 GB RAM) With two SIM card slots and a microSD card slot you can seamlessly enjoy uninterrupted connection and unrivalled storage.',0,1,'2022-07-08 19:04:57.003522',1),
 (90,'OPPO K10 5G','XONIGHT E-Commerce','uploads/OPPOK105G.jpg',4,25999,17499,' (Ocean Blue, 128 GB)  (8 GB RAM) Unleash your potential and achieve peak performance with the Oppo K10 5G that comes loaded with breathtaking features and keeps you amused constantly. With its slender design and intuitive style, you can flaunt this phone and enjoy the limelight owing to its stunning appearance. Moreover, powered by Dimensity 810 processor with a 6 nm architecture allows you to conveniently juggle between tasks and stay productive. Furthermore, the outstanding RAM Expansion technology offers up to 8 GB of RAM by temporarily delving into available storage space and using it as working memory. Furthermore, its 128 GB of internal storage enables you to save all that you want conveniently. Additionally, the 48 MP Main Camera with a 2 MP Depth Camera incorporated into this phone empowers you to capture enthralling photographs with a gentle tap.',0,0,'2022-07-08 19:04:57.003522',1),
 (91,'ASUS ROG Phone 5','Wizrob Fashion','uploads/ASUSROGPhone5.jpg',2,55999,49999,'(Black, 128 GB)  (8 GB RAM) Stylish, functional, and versatile, the ASUS ROG Phone 5 smartphone ensures that you can stay entertained and play games with ease. Its ergonomic design and AURA RGB lighting further enhance its aesthetic appeal, making it ideal for gaming-freaks who love to flaunt their devices. It features a powerful 5 nm Qualcomm Snapdragon 888 5G Mobile Platform which is capable of handling demanding tasks, such as gaming, browsing, multitasking and more. To top it off, this smartphone comes with a 6000 mAh battery that helps you play for long hours without having to charge it constantly.',0,0,'2022-07-08 19:04:57.003522',1),
 (92,'OPPO A12','XONIGHT E-Commerce','uploads/OPPOA12.jpg',3,10990,9990,'(Black, 32 GB)  (3 GB RAM) Flaunt this stylish and classy Oppo A12 smartphone in front of all your friends and be the envy of all eyes. It features an alluring 3D Diamond Blaze design, which further takes its look up by a notch. The 15.79 cm (6.22) display, with Blue Light Shield, offers an immersive viewing experience, while protecting your eyes from the harmful blue light. Also, you can quickly and securely unlock this phone and enjoy its amazing features with just a touch, thanks to the fingerprint sensor.',0,0,'2022-07-08 19:04:57.003522',1),
 (93,'MOTOROLA g31','\"\r\nTREASURE HAUL ONLINE\"','uploads/MOTOROLAg31.jpg',12,13999,10499,'(Baby Blue, 64 GB)  (4 GB RAM) you will not miss any details on the Motorola G31 mobile phone, as it comes with the 16.25 cm (6.4) AMOLED FHD screen with a Hole in the Display, thus making your intense-gaming session and movie-watching experience enjoyable and engaging. And, thanks to the brightness capacity of up to 700 nits and FHD+ resolution, you can enjoy sharp, crisp, and clear content on this every day.',0,0,'2022-07-08 19:04:57.003522',1),
 (94,'SAMSUNG Galaxy F22','MYTHANGLORYRetail','uploads/SAMSUNGGalaxyF22.jpg',3,16999,12499,'(Denim Blue, 128 GB)  (6 GB RAM) Bid goodbye to screen stuttering, poor display quality, and low-resolution photos by getting your hands on the Samsung Galaxy F22 smartphone. Featuring a 90 Hz refresh rate, HD+ sAMOLED display, and True 48 MP quad-rear camera, this smartphone is sure to be your ideal companion for entertainment, gaming, and communication. Whats more, its 6000 mAh battery ensures that a full charge can last for an entire day.',0,0,'2022-07-08 19:04:57.003522',1),
 (95,'APPLE iPhone 11','NGIVR RETAILS','uploads/APPLEiPhone11.jpg',19,54900,47999,'(Black, 128 GB) Contrast Ratio (Typical), True Tone Display, Wide Colour Display (P3), Haptic Touch, 625 nits Max Brightness (Typical), Fingerprint Resistant Oleophobic Coating, Support for Display of Multiple Languages and Characters Simultaneously',0,0,'2022-07-08 19:04:57.003522',1),
 (96,'vivo T1 44W','Flashtech Retail','uploads/vivoT144W.jpg',6,19990,14499,'(Starry Sky, 128 GB)  (4 GB RAM) Enjoy gaming thrills and capture your memorable moments with the Vivo T1 smartphone. This mobile phone is driven by a Snapdragon 680 processor so that you can get speeded up performance on this phone. Also, it comes with a 50 MP high-definition camera so that you can click sharp details even in low light conditions. And, thanks to the Funtouch OS 12, you can enjoy a smooth user experience.',0,0,'2022-07-08 19:04:57.003522',1),
 (97,'Infinix HOT 12 Play','Flashstar Commerce','uploads/InfinixHOT12Play.jpg',13,11999,8699,'(Daylight Green, 64 GB)  (4 GB RAM) The HOT 12 Play features a captivating 17.32 cm (6.82) HD+ Punch Hole display with a thin bezel and a 20:5:9 aspect ratio for a seamless visual experience. Furthermore, it has a screen-to-body ratio of 90.66 %, enabling corner-to-corner access to the display. Moreover, with 480 nits of brightness and a 1500:1 contrast ratio, it provides a significant picture quality.',0,0,'2022-07-08 19:04:57.003522',1),
 (98,'GIONEE Max Pro','BTPLD','uploads/GIONEEMaxPro.jpg',7,9999,6999,'(Blue, 32 GB)  (3 GB RAM) The Gionee Max Pro features a 6000 mAh battery to ensure that you get your fill of productivity and entertainment. Its 16.56cm (6.52) HD+ Full View Dew Drop Display gives you an expansive view and immersive experience while streaming content, gaming, video calling your loved ones, and more. You can stay connected at all times as this mobile phone offers up to 34 days of standby, 60 hours of calling, and much more.',0,0,'2022-07-08 19:04:57.003522',1),
 (99,'Honor 9N','IndiFlashMart','uploads/Honor9N.jpg',11,16500,13999,'From movies to mobile games, now enjoy a seamless viewing experience on this smartphone, thanks to its Honor Notch FullView 14.84 cm FHD+ Display (19:9 aspect ratio). It offers more screen space for a stunning visual experience. The 12-layer premium glass design on the rear, and the double-sided 2.5D curved glass lend the Honor 9N a sleek and an elegant look. Capture bright and beautiful selfies, even in dimly lit conditions with this phones 16 MP front camera. Take your photography-game up a notch with the 13+2 MP dual rear camera system. It comes with a professional-level bokeh mode for stunning photos. The Kirin 659 Octa-core 2.36 GHz processor of this phone ensures a lag-free, multitasking experience.',0,0,'2022-07-08 19:04:57.003522',1),
 (100,'Nokia G21','Wizrob Fashion','uploads/NokiaG21.jpg',19,14499,12999,'Video call, text, play games, or watch movies with the Nokia G21 smartphone that packs a range of exciting features. Equipped with a 50 MP triple camera set up and low-light sensors, this phone allows you to click stunning photos. And, with up to 3 days of battery life and 18 W fast charging feature, you can enjoy your life throughout the weekend. Moreover, the impressive 16.51 cm (6.5) display and 90 Hz refresh rate lets you experience stutter-free and sharp visuals.',0,0,'2022-07-08 19:04:57.003522',1),
 (101,'ASUS ZenFone','Truenet Commerce','uploads/ASUSZenFoneMaxM2.jpg',18,12999,15999,'A smartphone that comes loaded with a host of innovative features that will leave you wanting for more. It takes advantage of a 4000 mAh battery, an octa-core Qualcomm Snapdragon 632 processor and 3 GB of RAM to offer you a performance that commands respect.',0,0,'2022-07-08 19:04:57.003522',1),
 (102,'limraz furniture Sofa','SCIND','uploads/limraz_furniture.jpg',17,19000,8999,'Limraz Furniture Bring cohesive style to your group with this Trendy sofa Open concept bottom, display your favourite Things , Featuring a convenien perfect together an eco-friendly look or adding a dash of rustic appeal to your living room This posh piece adds a hint of glamour to your living room, which gives you a good comfort while seating on the sofa, it provides plenty of space for your decorating needs.',0,0,'2022-07-08 19:04:57.003522',2),
 (103,'Opulent Seater Sofa','GodrejInterio','uploads/one_Seater_Sofa.jpg',19,38500,31854,'The sofa frame is made up of plywood that undergoes multi-step treatment for protection against termites and bugs. Horizontal metal stiffeners are added to make the frame more robust (Finish Color - Beige & Black, Knock Down)',0,0,'2022-07-08 19:04:57.003522',2),
 (104,'Wall Clock','BigBangCreations','uploads/clock.jpg',20,1299,349,'This Wall Clock is a Unique design to decorate your wall offer a superlative way to place time on the wall. It is made of high quality material to ensure the accurate movement. Combined beauty and functionality, these decorative wall clocks are a wonderful for your home wall (Maroon, With Glass, Standard).',0,0,'2022-07-08 19:04:57.003522',2),
 (105,'Digital Reprint Painting','SAF','uploads/Digital_Reprint_Painting.jpg',10,399,189,'Set of 3 Panel Paintings Pasted on Thick MDF Board which is easy to install on wall, It’s a unique concept braught by SAF on Flipkart.com , All other Informations are mentioned on second Image with all descriptions. Kindly refere other Product Images listed.',0,0,'2022-07-08 19:04:57.003522',2),
 (106,'Sleeping Pillow','GMATPILLOW','uploads/Sleeping_Pillow.jpg',19,1594,399,'We are Manufacturer, Wholesaler and Trader of Polyester Wadding, Non Silicone Polyfill, Microfiber Cushion And Pillow, Non Woven Roll, Polyfill Sheet, Polyester Filled Cushion And Pillow, Silicone Polyfill, Non Woven Fabrics, Microfiber Polyfill and many more.We have achieved expertise in catering to the requirements of our clients exactly as per their needs. We emphasize on stringent quality standards in order to ensure that the products provided to our clients is always optimum to its level.',0,0,'2022-07-08 19:04:57.003522',2),
 (107,'Wallchiere Wall Lamp Without Bulb','Afast Enterprises','uploads/Wallchiere_Wall_Lamp_Without_Bulb.jpg',19,808,403,'Get Brilliant Lighting In Your Home By Decorating It With This Amazing Colorful Uplight Sconce Wall Lamp Light Brought To You By Afast . This Lamp Will Impress Anyone With Its Modern Design And Eye Catching Color. It Is Crafted By Professionals Using High Quality Glass And Wooden Material That Are Known For Their Durable And Versatile Traits. A Great Gifting Option, It Will Make Your Friends And Relatives Marvel At Your Taste In Home Decor Products. So Lighten Up Your Homes By Purchasing It At A Reasonable Price. This Lamp Is Also Designed For High Bright Light Out Put In Low Watt Input So It Produce Same Amount Of Light As A Normal One Lamp And Also Compatible With LED Bulb So Also Save Your Electricity Bill. It Can Use As A Night Lamp In Bad Room, Lobby, Porch Or As A Decorative Lamp In Drawing Room, Hall, Hotel, Restaurant, Or As A Lighting Lamp In Kitchen, Living Room, Kids Room ETC. This Lamp Quality Material Keep It In Working For A Long Life. More feature Easy To Installation, Easy To Change Bulb, And Easy To Use.',0,0,'2022-07-08 19:04:57.003522',2),
 (108,'Gold Art India Gold','GoldArtIndia','uploads/Gold_plated_Ganesha.jpg',2,1499,629,'Gold Art India Gold plated Ganesha idol with cream terracotta work',0,0,'2022-07-08 19:04:57.003522',2),
 (109,'Buddha on Knee','eCraftIndia','uploads/Buddha.jpg',13,899,199,'Everyone wants perfect peace of mind thats free from ignorance, greed, hatred and other afflictive states. Buddha has always been a great symbol of peace. So, what could be a better gift or a better option to bring home than the idol of Buddha. The idol is made of premium quality metal and has been designed beautifully. This statue has been enthusiastically handcrafted and colored by skilled artisans from the house of eCraftIndia using various conventional techniques.',0,0,'2022-07-08 19:04:57.003522',2),
 (110,'Bean Filling','StarBeanBags','uploads/Bean_Bag.jpg',1,4299,2299,'Lounge around in the comfort of Star Bean Bags. The Classic style is the evergreen bean bag style with an indulging comfort. With a soft leatherette fabric and premium stitching, its a classic must have for any home or office space. This is a ready to use, pre-assembled, filled bean bag filled with Star Beans. Just order it, open the package and its ready to use. 2.0 kg Star Refill Pack Beans have been filled into this.',0,0,'2022-07-08 19:04:57.003522',2),
 (111,'Wooden Tea table','PEDPIX ','uploads/Wooden_Tea_table.jpg',14,5999,2799,' The color of the product may vary slightly compared to the picture displayed on your screen. This is due to lighting, pixel quality and color settings',0,0,'2022-07-08 19:04:57.003522',2),
 (112,'arovemic Shoe','S . K Store','uploads/arovemic_Shoe_Stand.jpg',2,1499,535,'Stand DIY Plastic Shoe Portable Storage Organizer Plastic Collapsible Shoe Stand   Stand DIY Plastic Shoe Portable Storage Organizer Plastic Collapsible Shoe Stand   Smart , compact neat and intelligently designed shoe rack to extend maximum utalization of the space occupied. Made up of carbon steel offering maximum durability with non woven fabric outer coveringcomes up with 4 and 7 layers with maximum capacity of 12-21 shoes can be fixed perfectly.Easy to fold and store . Light weight and portable. comes up in attractive colours to match your home shades',0,0,'2022-07-08 19:04:57.003522',2),
 (113,'Stainless Steel Containers','Oliveware Official ','uploads/Oliveware_Teso_Pro_Lunch_Box.jpg',12,1950,1250,'Oliveware Teso Pro Lunch Box is made using only the best quality materials that are European Food Grade Virgin raw materials. Ideal for office executives and college students, 4 unique tight and spill proof containers that keep food and beverage fresh and crisp for hours. The Lunch box set contains 1x290ml, 1x450ml, 1x600ml Stainless Steel containers, with 1x130ml Plastic container and 1x750ml Stainless Steel Bottle, with 1 Steel fork and 1 Steel Spoon. The containers have air tight lids. This will prevent moisture from damaging your cooked food. These lids are also leak-proof so your food will not come out from the container even if its semi-liquid.',0,0,'2022-07-08 19:04:57.003522',2),
 (114,'Flamingo 500 ML  Steel Bottle ','placero international Pvt','uploads/vacuum_Insulated_Steel_Bottle.jpg',12,699,562,'The Pexpo Flamingo range of tri-ply vacuum insulated bottles are made in India three layers of BIS metals (304 stainless steel, aluminium, 304 stainless steel) & vacuum insulation between them. These bottles can keep your beverages hot & cold for more than 24 hours, when completely filled. Each Pexpo Electro thermo bottle passes BIS IS 17526 : 2021 standard for Indian flasks & International standards of EN 12546 of vacuum flasks & containers because of the proprietary tri-ply vacuum technology developed after years of research at Pexpo. The Pexpo Flamingo range is available in 3X durable colour coatings & comes with a flip-lid & a screwed cap which functions as a sip-cup. It also has an add-on jute bag which not looks trendy but makes it convinient to carry & use the bottle. The compact shape of the flask allows you to easily clean easily and maintain. The wide neck makes it easy to store ice-cubes which can be kept frozen for more than 48 hours.',0,0,'2022-07-08 19:04:57.003522',2),
 (115,'MILTON Eiffel 1000','Hamilton Housewares','uploads/milton_Insulated_HotColdFlask.jpg',12,415,354,'Milton Flasks Are Flasks With A Glass Refill On The Inside. These Flasks Are Desgined To Keep Your Beverages Hot Or Cold For Long Hours. This Range Of Flasks Comes In Various Innovative Designs And Sizes And Some Even Have A Cup Which Makes It Your Ideal Outdoor Companion.',0,0,'2022-07-08 19:04:57.003522',2),
 (116,'UV Water Purifie','OmniTechRetail','uploads/UVWater_Purifier_with_Copper_Charge_Technology.jpg',2,27990,21990,'Provide your family with safe and pure drinking water with the Pureit Copper+ RO Water Purifier. The Copper Charge Technology in this water purifier charges water with copper that is believed to offer various health benefits. This water purifier’s seven-stage RO + UV purification process eliminates harmful substances to dispense clean water. And, its storage capacity of up to 8 L ensures sufficient purified water for a medium to large family.',0,0,'2022-07-08 19:04:57.003522',2),
 (117,'Fortune Rice','SuperComNet','uploads/Fortune.jpg',16,215,178,'Fortune Rice Bran Health Oil is 100% Physically Refined Rice Bran Oil which is Rich in Gamma Oryzanol. It helps in reducing Bad Cholesterol & increases Good Cholesterol which is beneficial for your heart health. Along with Vitamin A/D/E it is rich in Natural Antioxidants which boosts immunity and gives many other health benefits to every member of the family.',0,0,'2022-07-08 19:04:57.003522',3),
 (118,'Basmati Rice','SuperComNet','uploads/INDIA_GATE_Dubar_Basmati_Rice.jpg',11,138,103,'India Gate Dubar Basmati Rice gives you the traditional taste of India. It embodies all the characteristics of true basmati rice.',0,0,'2022-07-08 19:04:57.003522',3),
 (119,'AASHIRVAAD Atta','SuperComNet','uploads/AASHIRVAAD_Superior_MP_Atta.jpg',9,540,443,'Aashirvaad Whole Wheat Atta is Indias No. 1 atta brand. 100% pure whole wheat atta with all its natural dietary fibres intact. It is directly sourced from a wide network of Indian rural farmers. The amber grains are heavy on the palm & they go through a 3-step cleaning process. The mechanised packaging ensures zero human contact & 100% safety.',0,0,'2022-07-08 19:04:57.003522',3),
 (120,'Tata Lite Iodized Salt','SuperComNet','uploads/Tata_Lite_Iodized_Salt.jpg',9,45,34,'With the Tata Lite Iodized salt, you can take the taste of your food up a notch. It features low sodium content. This salt is also enriched with other important and essential minerals to make your meals tasty.',0,0,'2022-07-08 19:04:57.003522',3),
 (121,'Sunfeast Bourbon Biscuit','SuperComNet','uploads/Sunfeast_Bourbon.jpg',2,35,28,'Bourbon Biscuits Cream Filled',0,0,'2022-07-08 19:04:57.003522',3),
 (122,'sprite PET Bottle','SuperComNet','uploads/sprite_PET_Bottle.jpg',16,40,32,'Let the lemon-flavour of the Sprite soft drink quench your thirst and refresh your taste buds instantly. This refreshing beverage complements meals, and it also gives you instant energy to sail through the hot summer days.',0,0,'2022-07-08 19:04:57.003522',3),
 (123,'GLUCON-D Energy Drink','SuperComNet','uploads/GLUCON-D_Energy_Drink.jpg',12,173,152,'Drink Glucon-D Energy Drink, and do not let the heat of summers dehydrate you and drain out your energy. This refreshing drink contains glucose powder, vitamins, and minerals to give you an instant boost of energy while Vitamin C enhances your mental alertness.',0,0,'2022-07-08 19:04:57.003522',3),
 (124,'Saffola Masala Oats','METHOMecom','uploads/Saffola_Masala_Oats.jpg',12,202,147,'Tailored specifically for the Indian palate, Saffola Masala Oats come in a wide variety of flavours, such as Curry and Pepper Masala, Masala and Coriander Masala, Veggie Twist Masala, Chinese Flavour Masala, and more. The Saffola Masala Oats is a quick fix for a tasty meal any time of the day.',0,0,'2022-07-08 19:04:57.003522',3),
 (125,'Maggi Noodles','SuperComNet','uploads/Maggi.jpg',20,18,16,'Satiate your taste buds with Maggi Special Masala noodles as it contains finely grounded and whole spices that are perfectly roasted to add a delectable taste to the noodles. The richness in iron makes it an awesome healthy snack.',0,1,'2022-07-08 19:04:57.003522',3),
 (126,'Kissan Peanut Butter','SuperComNet','uploads/Kissan_Peanut_Butter_Creamy.jpg',4,175,148,'Kissan Peanut Butter creamy with 100% real peanuts handpicked from the farms, is a rich source of protein. The ideal option for mothers looking for protein based food for their child. The product has no added colours and flavours.',0,0,'2022-07-08 19:04:57.003522',3),
 (127,'santoor Sandal & Turmeric Soap','SURICYBCOMBazaar','uploads/santoor_Sandal.jpg',2,444,355,'This pack of Santoor Sandal and Turmeric Soap brings together two ingredients which have been an essential part of the Indian skincare regimen for centuries now. Because of the antiseptic properties of sandalwood and turmeric, this soap not only cleans your skin, but also helps with getting rid of tan, curing itches, and detoxifying the skin.',0,0,'2022-07-08 19:04:57.003522',3),
 (128,'LUX Soft Glow Rose','SURICYBCOMBazaar','uploads/LUX.jpg',1,198,158,'New LUX Rose & Vitamin E soap gives moonlit glowing skin. The Lux Rose & Vitamin E soap bar adds a touch of glow to your skin and leaves it beautifully fragrant. Infused with 7 beauty ingredients, combining essence of aromatic French Rose known for its soothing and beauty enhancing benefits, and with Vitamin E know to moisturize and nourish skin',0,0,'2022-07-08 19:04:57.003522',3),
 (129,'Nestle Cerelac','SuperComNet','uploads/Nestle_Cerelac.jpg',18,298,275,'The Nestle Cerelac Multigrain Dal Veg Cereal is a complementary food ideal for babies between 12-24 months. Fortified with the goodness of cereal, milk, and vegetables, this veg cereal provides almost 59% of a baby’s daily protein requirement in just with two servings. Rich in iron, this multigrain cereal is also the source of up to 16 important nutrients, including vitamins and minerals, which are essential for your childs development.',0,0,'2022-07-08 19:04:57.003522',3),
 (130,'Scotch-Brite','MYTHANGLORYRetail','uploads/Scotch-Brite.jpg',14,40,28,'With the Scotch-Brite combo pack, your utensils will be cleaned of even the toughest stains. The scrubber is shaped to provide a handy grip so that you can easily clean your vessels. You can enjoy cleaning your vessels with the steel scrubber for a long time as it does not rust or break.',0,0,'2022-07-08 19:04:57.003522',3),
 (131,'Yardley London','SuperComNet','uploads/Yardley_London.jpg',14,209,123,'For the die hard lover of hills and mountains, rivers and canoes, forests and campfires, Yardley London brings a classic original fragrance in the form of the Yardley Adventure. The Yardley Adventure Deo Spray was conceived for the man who feels an inner proximity to nature and a perpetual willingness to set out on adventures to explore the unexplored. ',0,0,'2022-07-08 19:04:57.003522',3),
 (132,'realme Buds','TradePLFIPLecom','uploads/realmeBudsWireless.jpg',19,2499,1499,'11.2mm Bass Boost Driver | 17hrs Total Playback. Environmental Noise Cancellation | IPX4 Water Resistant. Multi Device Switch | 88ms Low Latency. Quick Charge (120mins playback in 10min charge). Magnetic Tips With Instant Connection.',0,0,'2022-07-08 19:04:57.003522',4),
 (133,'Noise Buds VS102','ERETTEMPENTERPRISE','uploads/WirelessBluetoothHeadset.jpg',10,2999,1299,'Stay entertained and enjoy impactful audio with the Noise Buds VS102 Earbuds. You can enjoy up to 3.5 hours of playback time on a single charge, which goes up to 14 hours with the handy charging case. Sporting a unique Flybird design, these earbuds look smart and stylish. Also, integrated with an 11 mm speaker driver, these earbuds ensure powerful and clear audio. Furthermore, a simple tap on these earbuds allows you to change the track, answer or reject calls, and even request voice assistance.',0,0,'2022-07-08 19:04:57.003522',4),
 (134,'boAt BassHeads 900','BUZZINDIA','uploads/boAtBassHeadsWiredHeadset.jpg',18,2490,799,'The boAt BassHeads 900 Super Extra Bass wired headset is a handsomely crafted, feather-light performer that lets you enjoy your favourite tunes with a punchy bass and crystal-clear sound. An amalgamation of style with performance, this headset’s powerful 40mm Neodymium drivers effectively reproduce sound in a balanced manner. Its ergonomic design provides maximum comfort for long hours of listening. It also comes with a built-in microphone',0,1,'2022-07-08 19:04:57.003522',4),
 (135,'NEFI D18','Sunlite International','uploads/UnisexsmartbandSmartwatch.jpg',5,2999,649,'TFT-LCD Display',0,0,'2022-07-08 19:04:57.003522',4),
 (136,'SanDisk Dual Drive','MTAILMODEECOM','uploads/SanDisk256GBOTGDrive.jpg',16,5000,2429,'USB 3.1|256 GB. Plastic. For Desktop Computer, Laptop, Mobile, Tablet. Color:Blue.',0,0,'2022-07-08 19:04:57.003522',4),
 (137,'HP V236w','MTAILMODEECOM','uploads/HP32GBPenDrive.jpg',1,750,475,'USB 2.0|32 GB. Metal. For Laptop, Desktop Computer. Color:Silver.',0,1,'2022-07-08 19:04:57.003522',4),
 (138,'Western Digital QD101 128 GB','ERETTEMPENTERPRISE','uploads/WesternDigital128GBMicroSDCard.jpg',13,2999,1629,'For Camera. Capacity: 128 GB. MicroSD Card. Class 10. Read Speed: 100 Mbps.',0,0,'2022-07-08 19:04:57.003522',4),
 (139,'SanDisk A1 64 GB MicroSD','IT-HUB','uploads/SanDisk64GBMicroSDCard.jpg',3,1300,749,'For Mobile. Capacity: 64 GB. MicroSD Card. Class 10. Read Speed: 120 MB/s.',0,0,'2022-07-08 19:04:57.003522',4),
 (140,'boAt Aavante Bar','SPLIPRLItech','uploads/boAtBassHeadsWiredHeadset.jpg',4,16990,7999,'Not a fan of big and bulky speakers? Well, then bring home this soundbar from boAt. Sleek and stunning to look at, this 2.1-channel soundbar boasts multiple connectivity options and it offers a powerful sound output of 120 watts, so you can enjoy listening to the music present on your personal devices in much better quality and clarity.',0,1,'2022-07-08 19:04:57.003522',4),
 (141,'SONY SA-D40 80 W','BUZZINDIA','uploads/SONYBluetoothHomeTheatre.jpg',20,9990,9487,'Experience a high-fidelity, thrilling, cinematic audio experience from the comfort of your couch by bringing home this Sony home audio speaker. Movies, videos, and music will get a new dimension, thanks to the 4.1 channel audio system. With Bluetooth connectivity, you can easily pair your device to this speaker, play your favorite tunes, and groove to the powerful sound.',0,0,'2022-07-08 19:04:57.003522',4),
 (142,'Canon PIXMA','OmniTechRetail','uploads/CanonColorPrinter.jpg',3,24800,23399,'USB, WiFi',0,0,'2022-07-08 19:04:57.003522',4),
 (143,'Color Block','helmont','uploads/Black-T-Shirt.jpg',1,999,269,'Mark your solid impressions with ours ultra-soft, super cool hooded t-shirt.',0,0,'2022-07-08 19:04:57.003522',5),
 (144,'Printed Formal Shirt','crush','uploads/Formal-Shirt.jpg',4,2499,499,'\"\r\nPure Cotton Fit\r\nSlim\"',0,0,'2022-07-08 19:04:57.003522',5),
 (145,'Self Design Banarasi ','finewear','uploads/Design-Banarasijpg.jpg',3,6499,799,'Dry Clean and Casual, Wedding',0,0,'2022-07-08 19:04:57.003522',5),
 (146,'Women Printed Viscose','dimonsher','uploads/Anarkali-Kurta.jpg',12,2999,444,'Festive & Party collections',0,0,'2022-07-08 19:04:57.003522',5),
 (147,'Solid Semi Stitched','angel trends','uploads/Lehenga-Choli.jpg',3,4399,980,'Nylon, Sequined Fabric, Nylon Net',0,0,'2022-07-08 19:04:57.003522',5),
 (148,'Women Kurta','amitsaini','uploads/Pure-Cotton.jpg',7,2299,551,'\"Pure Cotton \r\nKurta and Palazzo Set\"',0,0,'2022-07-08 19:04:57.003522',5),
 (149,'Chiffon Solid','premvati collection','uploads/Dupatta.jpg',12,999,249,'\"\r\nRegular Machine Wash, Dry in shade \r\nCasual\"',0,0,'2022-07-08 19:04:57.003522',5),
 (150,'Women Gown Green Dress','aawaristore','uploads/Gown.jpg',15,650,425,'\"Rayon Gown \r\nWomen\"',0,0,'2022-07-08 19:04:57.003522',5),
 (151,'Girls Party','liza girls','uploads/Party.jpg',11,999,404,'\"\r\nCold water wash \r\nWestern Wear \r\nDress\"',0,0,'2022-07-08 19:04:57.003522',5),
 (152,'Minnie Girls Midi','sonufashion','uploads/Midi.jpg',15,999,199,'he garment is also fully lined with cotton',0,0,'2022-07-08 19:04:57.003522',5),
 (153,'Boys Colorblock Cotton Jersey','x2o','uploads/T_Shirt.jpg',18,899,199,'The soft cotton fabric is ideal for evening wear as well as casual wear for boys and girls.',0,0,'2022-07-08 19:04:57.003522',5),
 (154,'Boys Festive','smartraho','uploads/Kurta.jpg ',3,999,269,'\"\r\nCotton Lyca Blend and \r\nKurta and Churidar Set\"',0,0,'2022-07-08 19:04:57.003522',5),
 (155,'Girls Casual Top Pan','cutiekins','uploads/Top_Pant.jpg',8,2498,901,'Polyester and cotton Casual Western Wear',0,0,'2022-07-08 19:04:57.003522',5),
 (156,'Boys Festive & Party Kurta','muskan fashion','uploads/Party_Kurta.jpg',3,3999,1234,'We select the best fabric and we are specialists in kids wear for boys.',0,0,'2022-07-08 19:04:57.003522',5),
 (157,'Boys Festive & Party ','evaandali','uploads/Pathani_Suit.jpg',20,1199,299,'\"\r\nCotton Blend Pathani Suit Set\"',0,0,'2022-07-08 19:04:57.003522',5),
 (158,'AGARO 38-Litre','\"\r\nVSRETAIL\"','uploads/Oven.jpg',8,5999,7999,'\"\r\nOpen your kitchen to a whole new world of easy and efficient cooking with AGARO Marvel 38L OTG\"',0,0,'2022-07-08 19:04:57.003522',2),
 (159,'FABER FWP C-GUARD 7','\"\r\nOmniTechRetail\"','uploads/Purifier.jpg',9,19990,8999,'The Faber FWP C-Guard Water Purifier fortifies your water with Vitamin C, which is believed to offer health benefits',0,0,'2022-07-08 19:04:57.003522',2),
 (160,'LIVPURE','\"\r\nOmniTechRetail\"','uploads/Livpure-.jpg',4,16490,11299,'\"\r\nThis Livpure water purifier is here to ensure that you get to drink safe and purified water.\"',0,0,'2022-07-08 19:04:57.003522',2),
 (161,'Preethi Cafe Zest','\"\r\nchefmart\"','uploads/Cafe-Zes.jpg',3,3070,2499,'The need for a good coffee machine is something that you just cannot afford to overlook',0,0,'2022-07-08 19:04:57.003522',2),
 (162,'USHA Armor','RetailNet','uploads/Iron.jpg',7,1009,587,'\"\r\nUshas compact dry iron, equipped with a fully covered body ergonomically designed to provide you with the best possible care for your clothes. \"',0,0,'2022-07-08 19:04:57.003522',2),
 (163,'BAJAJ  Heater Rod','\"\r\nGeoSales\"','uploads/Heater-.jpg',8,910,594,'Now you don’t need to brave the cold water in the winters to take a bath if you have this immersion rod from Bajaj at your disposal.',0,0,'2022-07-08 19:04:57.003522',2),
 (164,'LG TV','\"IWQNBecommerce\"','uploads/LG-Nanocell-.jpg',16,109990,63990,'\"\r\nNanocell 139 cm (55 inch) Ultra HD (4K) LED Smart WebOS TV  (55NANO73TPZ) Enjoy a larger-than-life viewing experience with the LG NanoCell TV.\"',0,1,'2022-07-08 19:04:57.003522',2),
 (165,'realme C11 2021','Vsretail','uploads/realme.jpg',8,7999,7499,'Get the photographer in you to light with realme  (Cool Blue, 32 GB)  (2 GB RAM)',0,0,'2022-07-08 19:04:57.003522',2),
 (166,'Whirlpool 190 L','\"IWQNBecommerce\"','uploads/Refrigerator.jpg',9,17200,13690,'Direct Cool Single Door 3 Star Refrigerator  (Solid Blue / Blue, WDE 205 CLS 3S BLUE) With this Whirlpool refrigerator experience a novel way of food and beverage storage.',0,1,'2022-07-08 19:04:57.003522',2),
 (167,'V-Guard Mini Stabilizer','VGuardIndustriesLtd','uploads/V-Guard.jpg',17,2290,1741,'for up to 82 cm (32\") Smart/LED TV + Set Top Box  (Black) This V-Guard Voltage Stabiliser is equipped with Built-in Thermal Overload Protection to ensure that your appliances don’t burn out due to excessive current consumption',0,0,'2022-07-08 19:04:57.003522',2),
 (168,'SAMSUNG  Ceramic Heater','\"OmniTechRetail\"','uploads/Machines.jpg',16,32190,23990,'\"\r\n 5 Star With Hygiene Steam and Ceramic Heater Fully Automatic Front Load with In-built Heater Silver  (WW60R20GLSS/TL) Whether your laundry is heavily stained or lightly soiled, the Samsung WW60R20GLSS/TL Washing Machine ensures that every piece of your garment is spotless.\"',0,0,'2022-07-08 19:04:57.003522',2),
 (169,'Sansui  Water Geyser','\"OmniTechRetail\"','uploads/Water-Geyser.jpg',9,5999,3199,'with Pipes (Azure, Cobalt Blue) Bathing, doing the dishes, or washing laundry during winters will not be painful tasks anymore with the Sansui Azure Instant Water Geyser in your home',0,0,'2022-07-08 19:04:57.003522',2),
 (170,'Hitachi 1.5 Ton AC','\"OmniTechRetail\"','uploads/AC-White-.jpg',18,34490,27999,'T - White  (RAW318HFDO, Copper Condenser) hanks to its handy timer with sophisticated startup, the Hitachi Kaze Plus 1.5 ton Air Conditioner lets you easily control its operations.',0,0,'2022-07-08 19:04:57.003522',2),
 (171,'Aquaguard Infinia 8.5 L RO ','OmniTechRetail','uploads/Aquasure.jpg',17,22000,13799,'\"UV + TA Water Purifier  (Black, Copper) this water purifier on the wall or set it down on the kitchen countertop as per your preference.\r\n\"',0,0,'2022-07-08 19:04:57.003522',2),
 (172,'MILTON GO Electro Kettle','\"RetailNet\"','uploads/MILTON-.jpg',20,1310,936,'1500 Electric Kettle  (1.5 L, Silver) electric kettle is a handy appliance that makes your work easy and less time-taking.',0,1,'2022-07-08 19:04:57.003522',4),
 (173,' Wireless Optical Mouse ','\"\r\nRetailNet\"','uploads/Mouse.jpg.jpg',10,999,499,'(2.4GHz Wireless, Bluetooth, Black and Grey) Improve your productivity in front of your computer with the Dell MS 116 Wired Optical Mouse that features an Optical LED Tracking with 1000 DPI and Wired Connectivity.',0,0,'2022-07-08 19:04:57.003522',4),
 (174,'WD Wired External Hard Disk','\"ERETTEMPENTERPRISE\"','uploads/Hard-Disk-.jpg',2,5400,3899,'Slim and lightweight, the WD Elements external hard disk drive enables you to store and carry all your favourite photos, movies, and other data, wherever',0,0,'2022-07-08 19:04:57.003522',4),
 (175,'HTML & CSS Book','Joes Company','uploads/20220709134226html.jpg',5,999,869,'The Definitive Guide to HTML & CSS--Fully Updated Written by a Web development expert, the fifth edition of this trusted resource has been thoroughly revised and reorganized to address HTML5, the revolutionary new Web standard. The book covers all the elements supported in today\'s Web browsers--from the standard',0,1,'2022-07-09 08:12:26.092956',6);
/*!40000 ALTER TABLE `shop_product` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
