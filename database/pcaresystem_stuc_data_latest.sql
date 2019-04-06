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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `addresses` */

insert  into `addresses`(`address_id`,`district_id`,`thana_id`,`location_id`,`post_code`,`latlong`,`created_at`,`updated_at`) values 
(1,1,1,1,'1207','23.9098,90.57','2019-04-02 00:35:17','2019-04-02 00:35:17');

/*Table structure for table `districts` */

DROP TABLE IF EXISTS `districts`;

CREATE TABLE `districts` (
  `district_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`district_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `districts` */

insert  into `districts`(`district_id`,`name`,`created_at`,`updated_at`) values 
(1,'Dhaka','2019-04-02 00:35:17','2019-04-02 00:35:17');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `locations` */

insert  into `locations`(`location_id`,`name`,`district_id`,`thana_id`,`created_at`,`updated_at`) values 
(1,'Adabor Bazar East ',1,1,'2019-04-02 00:35:17','2019-04-02 00:35:17');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `property` */

insert  into `property`(`p_id`,`ptype_id`,`psub_type_id`,`floor_no`,`unit_id`,`p_status`,`is_available`,`available_from`,`created_at`,`updated_at`) values 
(1,3,2,5,2,'UNOCCUPIED',1,'2019-04-02','2019-04-02 00:35:17','2019-04-02 00:35:17');

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

insert  into `property_details`(`p_id`,`name`,`size`,`decoration`,`facing`,`noof_room`,`noof_wash_room`,`description`,`address_id`,`image_url`,`noof_car_parking`,`created_at`,`updated_at`) values 
(1,'Flat 4B','2000sqft','furnished','south','3','3','Very Good For Living',1,NULL,'1','2019-04-02 00:35:17','2019-04-02 00:35:17');

/*Table structure for table `property_owner_maps` */

DROP TABLE IF EXISTS `property_owner_maps`;

CREATE TABLE `property_owner_maps` (
  `p_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `property_owner_maps` */

insert  into `property_owner_maps`(`p_id`,`owner_id`,`created_at`,`updated_at`) values 
(1,3,'2019-04-02 00:35:17','2019-04-02 00:35:17');

/*Table structure for table `property_sub_types` */

DROP TABLE IF EXISTS `property_sub_types`;

CREATE TABLE `property_sub_types` (
  `psub_type_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ptype_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`psub_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `property_sub_types` */

insert  into `property_sub_types`(`psub_type_id`,`name`,`ptype_id`,`created_at`,`updated_at`) values 
(1,'Shop',3,'2019-04-02 00:35:17','2019-04-02 00:35:17'),
(2,'Flat',3,'2019-04-02 00:45:11','2019-04-02 00:45:11'),
(3,'Field',1,'2019-04-02 02:33:21','2019-04-02 02:33:21');

/*Table structure for table `property_types` */

DROP TABLE IF EXISTS `property_types`;

CREATE TABLE `property_types` (
  `ptype_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(185) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ptype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `property_types` */

insert  into `property_types`(`ptype_id`,`name`,`description`,`created_at`,`updated_at`) values 
(1,'Land',NULL,'2019-04-02 00:35:17','2019-04-02 00:35:17'),
(2,'WaterBody',NULL,'2019-04-02 00:45:11','2019-04-02 00:45:11'),
(3,'Building',NULL,'2019-04-02 02:33:21','2019-04-02 02:33:21');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `rent_details` */

insert  into `rent_details`(`rent_details_id`,`monthly_rent`,`service_charge`,`agreement`,`agreement_file_url`,`initial_date`,`expire_date`,`advanced_amount`,`months_toadjust_advamount`,`advanced_amount_permonth`,`created_at`,`updated_at`) values 
(1,32000.50000,1000.00000,'This is the agreement between the Owner Md. X & the Tenant Md. Y','2019/April/05/54456565.pdf','2019-04-02','2022-01-01',50000.00000,2,25000.00000,'2019-04-02 00:35:17','2019-04-02 00:35:17');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `rent_histories` */

insert  into `rent_histories`(`rent_history_id`,`p_id`,`rent_details_id`,`manager_id`,`tenant_id`,`created_at`,`updated_at`) values 
(1,1,1,2,1,'2019-04-02 00:35:17','2019-04-02 00:35:17');

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

insert  into `rents`(`p_id`,`rent_details_id`,`status`,`manager_id`,`tenant_id`,`created_at`,`updated_at`) values 
(1,1,1,2,1,'2019-04-02 00:35:17','2019-04-02 00:35:17');

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `role_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `roles` */

insert  into `roles`(`role_id`,`name`,`created_at`,`updated_at`) values 
(1,'DEVELOPER','2019-04-02 00:35:17','2019-04-02 00:35:17'),
(2,'ADMIN','2019-04-02 00:45:11','2019-04-02 00:45:11'),
(3,'OWNER','2019-04-02 02:33:21','2019-04-02 02:33:21'),
(4,'MANAGER','2019-04-02 02:33:21','2019-04-02 02:33:21'),
(5,'TENANT','2019-04-02 02:33:21','2019-04-02 02:33:21');

/*Table structure for table `thanas` */

DROP TABLE IF EXISTS `thanas`;

CREATE TABLE `thanas` (
  `thana_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`thana_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `thanas` */

insert  into `thanas`(`thana_id`,`name`,`district_id`,`created_at`,`updated_at`) values 
(1,'Adabor',1,'2019-04-02 00:35:17','2019-04-02 00:35:17');

/*Table structure for table `user_roles` */

DROP TABLE IF EXISTS `user_roles`;

CREATE TABLE `user_roles` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `user_roles` */

insert  into `user_roles`(`user_id`,`role_id`,`created_at`,`updated_at`) values 
(1,3,'2019-04-02 00:35:17','2019-04-02 00:35:17');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`user_id`,`name`,`mobile`,`national_id`,`image_url`,`email`,`is_active`,`password`,`remember_token`,`created_at`,`updated_at`) values 
(1,'Abdur Rahman','01722669565','1981-5248-521756',NULL,'abdur@email.com',1,'$2y$10$DHBaSYvzKk7O97RUoROSP.pRrXA9G/Cq2FEMJeB2spW','3ZEsFKEw2ko6tzxdnXIzAdQUMze8UYV0q3RgzOqoMurXQZgauABMPCKjnQ1r','2019-04-01 08:19:48','2019-04-01 08:19:48'),
(2,'Fazlul Haque','01722644525','1991-5248-521456',NULL,'fazlul@email.com',1,'$2y$10$DHBaSYvzKkfds454d54RUoROSP.pRrXA9G/Cq2gdspW','NULL','2019-04-01 08:19:48','2019-04-01 08:19:48');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
