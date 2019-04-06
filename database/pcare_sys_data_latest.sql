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

/*Data for the table `addresses` */

insert  into `addresses`(`address_id`,`district_id`,`thana_id`,`location_id`,`post_code`,`latlong`,`created_at`,`updated_at`) values 
(1,1,1,1,'1207','23.9098,90.57','2019-04-02 00:35:17','2019-04-02 00:35:17');

/*Data for the table `districts` */

insert  into `districts`(`district_id`,`name`,`created_at`,`updated_at`) values 
(1,'Dhaka','2019-04-02 00:35:17','2019-04-02 00:35:17');

/*Data for the table `locations` */

insert  into `locations`(`location_id`,`name`,`district_id`,`thana_id`,`created_at`,`updated_at`) values 
(1,'Adabor Bazar East ',1,1,'2019-04-02 00:35:17','2019-04-02 00:35:17');

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

/*Data for the table `password_resets` */

/*Data for the table `property` */

insert  into `property`(`p_id`,`ptype_id`,`psub_type_id`,`floor_no`,`unit_id`,`p_status`,`is_available`,`available_from`,`created_at`,`updated_at`) values 
(1,3,2,5,2,'UNOCCUPIED',1,'2019-04-02','2019-04-02 00:35:17','2019-04-02 00:35:17');

/*Data for the table `property_details` */

insert  into `property_details`(`p_id`,`name`,`size`,`decoration`,`facing`,`noof_room`,`noof_wash_room`,`description`,`address_id`,`image_url`,`noof_car_parking`,`created_at`,`updated_at`) values 
(1,'Flat 4B','2000sqft','furnished','south','3','3','Very Good For Living',1,NULL,'1','2019-04-02 00:35:17','2019-04-02 00:35:17');

/*Data for the table `property_owner_maps` */

insert  into `property_owner_maps`(`p_id`,`owner_id`,`created_at`,`updated_at`) values 
(1,3,'2019-04-02 00:35:17','2019-04-02 00:35:17');

/*Data for the table `property_sub_types` */

insert  into `property_sub_types`(`psub_type_id`,`name`,`ptype_id`,`created_at`,`updated_at`) values 
(1,'Shop',3,'2019-04-02 00:35:17','2019-04-02 00:35:17'),
(2,'Flat',3,'2019-04-02 00:45:11','2019-04-02 00:45:11'),
(3,'Field',1,'2019-04-02 02:33:21','2019-04-02 02:33:21');

/*Data for the table `property_types` */

insert  into `property_types`(`ptype_id`,`name`,`description`,`created_at`,`updated_at`) values 
(1,'Land',NULL,'2019-04-02 00:35:17','2019-04-02 00:35:17'),
(2,'WaterBody',NULL,'2019-04-02 00:45:11','2019-04-02 00:45:11'),
(3,'Building',NULL,'2019-04-02 02:33:21','2019-04-02 02:33:21');

/*Data for the table `rent_details` */

insert  into `rent_details`(`rent_details_id`,`monthly_rent`,`service_charge`,`agreement`,`agreement_file_url`,`initial_date`,`expire_date`,`advanced_amount`,`months_toadjust_advamount`,`advanced_amount_permonth`,`created_at`,`updated_at`) values 
(1,32000.50000,1000.00000,'This is the agreement between the Owner Md. X & the Tenant Md. Y','2019/April/05/54456565.pdf','2019-04-02','2022-01-01',50000.00000,2,25000.00000,'2019-04-02 00:35:17','2019-04-02 00:35:17');

/*Data for the table `rent_histories` */

insert  into `rent_histories`(`rent_history_id`,`p_id`,`rent_details_id`,`manager_id`,`tenant_id`,`created_at`,`updated_at`) values 
(1,1,1,2,1,'2019-04-02 00:35:17','2019-04-02 00:35:17');

/*Data for the table `rents` */

insert  into `rents`(`p_id`,`rent_details_id`,`status`,`manager_id`,`tenant_id`,`created_at`,`updated_at`) values 
(1,1,1,2,1,'2019-04-02 00:35:17','2019-04-02 00:35:17');

/*Data for the table `roles` */

insert  into `roles`(`role_id`,`name`,`created_at`,`updated_at`) values 
(1,'DEVELOPER','2019-04-02 00:35:17','2019-04-02 00:35:17'),
(2,'ADMIN','2019-04-02 00:45:11','2019-04-02 00:45:11'),
(3,'OWNER','2019-04-02 02:33:21','2019-04-02 02:33:21'),
(4,'MANAGER','2019-04-02 02:33:21','2019-04-02 02:33:21'),
(5,'TENANT','2019-04-02 02:33:21','2019-04-02 02:33:21');

/*Data for the table `thanas` */

insert  into `thanas`(`thana_id`,`name`,`district_id`,`created_at`,`updated_at`) values 
(1,'Adabor',1,'2019-04-02 00:35:17','2019-04-02 00:35:17');

/*Data for the table `user_roles` */

insert  into `user_roles`(`user_id`,`role_id`,`created_at`,`updated_at`) values 
(1,3,'2019-04-02 00:35:17','2019-04-02 00:35:17');

/*Data for the table `users` */

insert  into `users`(`user_id`,`name`,`mobile`,`national_id`,`image_url`,`email`,`is_active`,`password`,`remember_token`,`created_at`,`updated_at`) values 
(1,'Abdur Rahman','01722669565','1981-5248-521756',NULL,'abdur@email.com',1,'$2y$10$DHBaSYvzKk7O97RUoROSP.pRrXA9G/Cq2FEMJeB2spW','3ZEsFKEw2ko6tzxdnXIzAdQUMze8UYV0q3RgzOqoMurXQZgauABMPCKjnQ1r','2019-04-01 08:19:48','2019-04-01 08:19:48'),
(2,'Fazlul Haque','01722644525','1991-5248-521456',NULL,'fazlul@email.com',1,'$2y$10$DHBaSYvzKkfds454d54RUoROSP.pRrXA9G/Cq2gdspW','NULL','2019-04-01 08:19:48','2019-04-01 08:19:48');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
