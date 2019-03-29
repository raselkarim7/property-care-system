/*
SQLyog Community v13.1.2 (64 bit)
MySQL - 10.1.38-MariaDB : Database - property_care_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`property_care_db` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `property_care_db`;

/*Table structure for table `addresses` */

DROP TABLE IF EXISTS `addresses`;

CREATE TABLE `addresses` (
  `address_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `district_id` int(11) NOT NULL,
  `thana_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `post_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latlong` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `addresses` */

/*Table structure for table `districts` */

DROP TABLE IF EXISTS `districts`;

CREATE TABLE `districts` (
  `district_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`district_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `districts` */

/*Table structure for table `locations` */

DROP TABLE IF EXISTS `locations`;

CREATE TABLE `locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` int(11) NOT NULL,
  `thana_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `locations` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2019_03_29_202441_create_roles_table',1),
(4,'2019_03_29_203028_create_property_types_table',1),
(5,'2019_03_29_204534_create_property_sub_types_table',1),
(6,'2019_03_29_210510_create_properties_table',1),
(7,'2019_03_29_212414_create_property_details_table',1),
(8,'2019_03_29_214059_create_addresses_table',1),
(9,'2019_03_29_214250_create_districts_table',1),
(10,'2019_03_29_214307_create_thanas_table',1),
(11,'2019_03_29_214324_create_locations_table',1),
(12,'2019_03_29_214355_create_user_roles_table',1),
(13,'2019_03_29_214424_create_property_owner_maps_table',1),
(14,'2019_03_29_214440_create_rents_table',1),
(15,'2019_03_29_214457_create_rent_details_table',1),
(16,'2019_03_29_214515_create_rent_histories_table',1);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `property` */

DROP TABLE IF EXISTS `property`;

CREATE TABLE `property` (
  `p_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ptype_id` int(11) NOT NULL,
  `psub_type_id` int(11) NOT NULL,
  `floor_no` int(11) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `p_status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT '1',
  `available_from` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `property` */

/*Table structure for table `property_details` */

DROP TABLE IF EXISTS `property_details`;

CREATE TABLE `property_details` (
  `p_id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `decoration` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facing` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noof_room` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noof_wash_room` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_id` int(11) NOT NULL,
  `image_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noof_car_parking` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `property_details` */

/*Table structure for table `property_owner_maps` */

DROP TABLE IF EXISTS `property_owner_maps`;

CREATE TABLE `property_owner_maps` (
  `p_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `property_owner_maps` */

/*Table structure for table `property_sub_types` */

DROP TABLE IF EXISTS `property_sub_types`;

CREATE TABLE `property_sub_types` (
  `psub_type_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ptype_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`psub_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `property_sub_types` */

/*Table structure for table `property_types` */

DROP TABLE IF EXISTS `property_types`;

CREATE TABLE `property_types` (
  `ptype_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(185) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ptype_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `property_types` */

/*Table structure for table `rent_details` */

DROP TABLE IF EXISTS `rent_details`;

CREATE TABLE `rent_details` (
  `rent_details_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `monthly_rent` double(20,5) NOT NULL,
  `service_charge` double(15,5) NOT NULL,
  `agreement` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `agreement_file_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_date` date NOT NULL,
  `expire_date` date NOT NULL,
  `advanced_amount` double(20,5) NOT NULL,
  `months_toadjust_advamount` int(11) NOT NULL,
  `advanced_amount_permonth` double(20,5) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`rent_details_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `rent_details` */

/*Table structure for table `rent_histories` */

DROP TABLE IF EXISTS `rent_histories`;

CREATE TABLE `rent_histories` (
  `rent_history_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `p_id` int(11) NOT NULL,
  `rent_details_id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`rent_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `rent_histories` */

/*Table structure for table `rents` */

DROP TABLE IF EXISTS `rents`;

CREATE TABLE `rents` (
  `p_id` int(11) NOT NULL,
  `rent_details_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `rents` */

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `role_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `roles` */

/*Table structure for table `thanas` */

DROP TABLE IF EXISTS `thanas`;

CREATE TABLE `thanas` (
  `thana_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`thana_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `thanas` */

/*Table structure for table `user_roles` */

DROP TABLE IF EXISTS `user_roles`;

CREATE TABLE `user_roles` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `user_roles` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `national_id` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `users_mobile_unique` (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
