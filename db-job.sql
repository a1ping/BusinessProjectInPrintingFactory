/*
SQLyog Community v13.1.2 (64 bit)
MySQL - 10.4.14-MariaDB : Database - job
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`job` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `job`;

/*Table structure for table `accounts` */

DROP TABLE IF EXISTS `accounts`;

CREATE TABLE `accounts` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_fname` varchar(255) DEFAULT NULL,
  `a_lname` varbinary(255) DEFAULT NULL,
  `a_email` varchar(255) DEFAULT NULL,
  `a_password` varchar(255) DEFAULT NULL,
  `a_lp_status` int(5) DEFAULT 0,
  `a_level` int(5) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `a_address` varchar(255) DEFAULT NULL,
  `a_city` varchar(255) DEFAULT NULL,
  `a_description` text DEFAULT NULL,
  `a_zip` varbinary(255) DEFAULT NULL,
  `a_pic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

/*Data for the table `accounts` */

insert  into `accounts`(`a_id`,`a_fname`,`a_lname`,`a_email`,`a_password`,`a_lp_status`,`a_level`,`created_at`,`a_address`,`a_city`,`a_description`,`a_zip`,`a_pic`) values 
(12,'admin','admin','admin@live.com','admin',0,1,'2021-09-14 12:01:07',NULL,NULL,NULL,NULL,NULL),
(13,'customer','customer','customer1@live.com','customer1',0,1,'2021-09-14 12:26:24',NULL,NULL,NULL,NULL,NULL),
(14,'production','production','production@live.com','production',0,NULL,'2021-09-14 15:55:07','1','1','1','1','1631660030Screenshot_1.png'),
(15,'logistic','logistic','logistic@live.com','logistic',0,1,'2021-09-14 16:42:02',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `accounts_permission` */

DROP TABLE IF EXISTS `accounts_permission`;

CREATE TABLE `accounts_permission` (
  `ap_id` int(11) NOT NULL AUTO_INCREMENT,
  `ap_sales_person` int(11) DEFAULT 1,
  `ap_production` int(11) DEFAULT 0,
  `ap_logistic` int(11) DEFAULT 0,
  `ap_admin` int(11) DEFAULT 0,
  `ac_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ap_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `accounts_permission` */

insert  into `accounts_permission`(`ap_id`,`ap_sales_person`,`ap_production`,`ap_logistic`,`ap_admin`,`ac_id`) values 
(2,0,1,0,1,12),
(3,1,0,0,0,13),
(4,0,1,0,0,14),
(5,0,0,1,0,15);

/*Table structure for table `accounts_type` */

DROP TABLE IF EXISTS `accounts_type`;

CREATE TABLE `accounts_type` (
  `at_id` int(11) NOT NULL AUTO_INCREMENT,
  `at_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`at_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `accounts_type` */

insert  into `accounts_type`(`at_id`,`at_name`) values 
(1,'Sales Person'),
(2,'Production'),
(3,'Logistic'),
(4,'Administrator');

/*Table structure for table `delivery_method` */

DROP TABLE IF EXISTS `delivery_method`;

CREATE TABLE `delivery_method` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_method_type` int(11) DEFAULT NULL,
  `d_method_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `delivery_method` */

insert  into `delivery_method`(`d_id`,`d_method_type`,`d_method_name`) values 
(1,1,'Courier'),
(2,2,'Own Driver'),
(3,3,'Lorry Transport'),
(4,4,'Self Pickup');

/*Table structure for table `delivery_time` */

DROP TABLE IF EXISTS `delivery_time`;

CREATE TABLE `delivery_time` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_name` varchar(255) DEFAULT NULL,
  `d_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;

/*Data for the table `delivery_time` */

insert  into `delivery_time`(`d_id`,`d_name`,`d_time`) values 
(0,'0.00 am',0),
(1,'01.00 am',1),
(2,'02.00 am',2),
(3,'03.00 am',3),
(4,'04.00 am',4),
(5,'05.00 am',5),
(6,'06.00 am',6),
(7,'07.00 am',7),
(8,'08.00 am',8),
(9,'09.00 am',9),
(10,'10.00 am',10),
(11,'11.00 am',11),
(12,'12.00 am',12),
(13,'01.00 pm',1),
(14,'02.00 pm',2),
(15,'03.00 pm',3),
(16,'04.00 pm',4),
(17,'05.00 pm',5),
(18,'06.00 pm',6),
(19,'07.00 pm',7),
(20,'08.00 pm',8),
(21,'09.00 pm',9),
(22,'10.00 pm',10),
(23,'11.00 pm',11),
(24,'',NULL);

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `job` */

DROP TABLE IF EXISTS `job`;

CREATE TABLE `job` (
  `j_id` int(100) NOT NULL AUTO_INCREMENT,
  `j_job_title` varchar(255) DEFAULT NULL,
  `j_customer` varchar(255) DEFAULT NULL,
  `j_products` varchar(255) DEFAULT NULL,
  `j_description` text DEFAULT NULL,
  `j_quantity` int(10) DEFAULT NULL,
  `j_delivery_time` int(5) DEFAULT NULL,
  `j_remark` text DEFAULT NULL,
  `j_payment_status` int(5) DEFAULT NULL,
  `j_delivery_date` varchar(255) DEFAULT NULL,
  `j_amount` int(10) DEFAULT NULL,
  `j_delivery_method` int(5) DEFAULT NULL,
  `j_job_type` int(5) DEFAULT NULL,
  `j_job_status` int(5) DEFAULT 2,
  `j_order_date` varchar(255) DEFAULT NULL,
  `j_delivery_date2` int(11) DEFAULT NULL,
  `j_accounts_id` int(11) DEFAULT NULL,
  `j_job_prev_status` int(11) DEFAULT 2,
  `j_order_date2` int(11) DEFAULT NULL,
  `j_open_status` int(11) DEFAULT 0,
  `j_delivery_details` text DEFAULT NULL,
  `j_file_link1` blob DEFAULT NULL,
  `j_delivery_date3` varchar(255) DEFAULT NULL,
  `j_consignment_number` varchar(255) DEFAULT NULL,
  `j_serial_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`j_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4;

/*Data for the table `job` */

insert  into `job`(`j_id`,`j_job_title`,`j_customer`,`j_products`,`j_description`,`j_quantity`,`j_delivery_time`,`j_remark`,`j_payment_status`,`j_delivery_date`,`j_amount`,`j_delivery_method`,`j_job_type`,`j_job_status`,`j_order_date`,`j_delivery_date2`,`j_accounts_id`,`j_job_prev_status`,`j_order_date2`,`j_open_status`,`j_delivery_details`,`j_file_link1`,`j_delivery_date3`,`j_consignment_number`,`j_serial_number`) values 
(33,'sdf11','sdf11','dsf11','sdf11',32311,18,'sdfsdf11',2,'2021-10-06 06.00 pm',2,2,2,5,'2021-09-14',1633543200,13,4,1631577600,1,'fffffffffffff','511','09/28/2021','3234','PX1631664474'),
(34,'sdf1','sdf1','sdf1','sdf1',41,21,'sdf1',2,'2021-10-06 09.00 pm',NULL,2,2,2,'2021-09-15',1633554000,13,2,1631664000,1,NULL,'dsf1','09/29/2021',NULL,NULL);

/*Table structure for table `job_status` */

DROP TABLE IF EXISTS `job_status`;

CREATE TABLE `job_status` (
  `js_id` int(11) NOT NULL AUTO_INCREMENT,
  `js_name` varchar(255) DEFAULT NULL,
  `js_color` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`js_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `job_status` */

insert  into `job_status`(`js_id`,`js_name`,`js_color`) values 
(1,'On Hold','btn-danger'),
(2,'Ready to Print','btn-warning'),
(3,'In Progress','btn-success'),
(4,'Goods Ready','btn-info'),
(5,'Completed','btn-primary');

/*Table structure for table `job_type` */

DROP TABLE IF EXISTS `job_type`;

CREATE TABLE `job_type` (
  `jt_id` int(11) NOT NULL AUTO_INCREMENT,
  `jt_type` int(11) DEFAULT NULL,
  `jt_name` varchar(255) DEFAULT NULL,
  `jt_style` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`jt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `job_type` */

insert  into `job_type`(`jt_id`,`jt_type`,`jt_name`,`jt_style`) values 
(1,1,'Normal','btn-light'),
(2,2,'Urgent','btn-primary');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2019_08_19_000000_create_failed_jobs_table',1),
(4,'2019_12_14_000001_create_personal_access_tokens_table',1);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `payment_status` */

DROP TABLE IF EXISTS `payment_status`;

CREATE TABLE `payment_status` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_status` int(11) DEFAULT NULL,
  `p_name` varchar(255) DEFAULT NULL,
  `p_notification` varchar(255) DEFAULT NULL,
  `p_icon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `payment_status` */

insert  into `payment_status`(`p_id`,`p_status`,`p_name`,`p_notification`,`p_icon`) values 
(1,1,'Unpaid','btn-warning','fa-exclamation-triangle'),
(2,2,'Paid','btn-success','fa-check'),
(3,3,'Deposit','btn-info','fa-info-circle');

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

/*Table structure for table `settings` */

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_logo_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `settings` */

insert  into `settings`(`s_id`,`s_logo_url`) values 
(1,'1631668768logo.png');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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

/*Data for the table `users` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
