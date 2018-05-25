# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.2.14-MariaDB)
# Database: sentinel
# Generation Time: 2018-05-25 04:07:57 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table activations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `activations`;

CREATE TABLE `activations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`)
VALUES
	(1,1,'ScBT70KG0mrRDCGJ4THS4n5fUeZyQDjb',1,'2018-05-22 08:58:07','2018-05-22 08:50:41','2018-05-22 08:58:07'),
	(2,2,'2ZZnbUcGf9unJVCEZIXabobIueBEEQgA',0,NULL,'2018-05-23 03:05:51','2018-05-23 03:05:51'),
	(3,4,'79a0IaO1EE7MG4d7WZkqFOxRMMQoQeSo',0,NULL,'2018-05-23 03:07:55','2018-05-23 03:07:55'),
	(4,5,'JdFLLapS2eU8NUVsDfuoYTx4HvHCyEyv',0,NULL,'2018-05-23 03:09:26','2018-05-23 03:09:26'),
	(5,7,'nQbZLz5XJKSE2h604ugnZe0s3oBQwdaI',1,'2018-05-23 03:21:53','2018-05-23 03:17:45','2018-05-23 03:21:53'),
	(6,8,'fXtlCgCDl9pZAipsZULJFjUjdM5bRZuN',0,NULL,'2018-05-25 03:37:57','2018-05-25 03:37:57');

/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(3,'2014_07_02_230147_migration_cartalyst_sentinel',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table persistences
# ------------------------------------------------------------

DROP TABLE IF EXISTS `persistences`;

CREATE TABLE `persistences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `persistences_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `persistences` WRITE;
/*!40000 ALTER TABLE `persistences` DISABLE KEYS */;

INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`)
VALUES
	(4,7,'ztrMHqeQnIUgMiXK1siLQto4zJttGAka','2018-05-25 04:05:20','2018-05-25 04:05:20');

/*!40000 ALTER TABLE `persistences` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table reminders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `reminders`;

CREATE TABLE `reminders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `reminders` WRITE;
/*!40000 ALTER TABLE `reminders` DISABLE KEYS */;

INSERT INTO `reminders` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`)
VALUES
	(3,7,'PS6I8dB7RT5P5caSl4Es6ODuDRz8RFbo',1,'2018-05-25 03:09:35','2018-05-25 02:19:42','2018-05-25 03:09:35'),
	(4,8,'MC1cwi63P8DmM9TO4pzov5yyg8U4Vwj4',1,'2018-05-25 03:47:45','2018-05-25 03:46:38','2018-05-25 03:47:45');

/*!40000 ALTER TABLE `reminders` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table role_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `role_users`;

CREATE TABLE `role_users` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;

INSERT INTO `role_users` (`user_id`, `role_id`, `created_at`, `updated_at`)
VALUES
	(1,2,'2018-05-22 08:50:41','2018-05-22 08:50:41'),
	(2,2,'2018-05-23 03:05:51','2018-05-23 03:05:51'),
	(4,2,'2018-05-23 03:07:55','2018-05-23 03:07:55'),
	(5,2,'2018-05-23 03:09:26','2018-05-23 03:09:26'),
	(7,2,'2018-05-23 03:17:45','2018-05-23 03:17:45'),
	(8,2,'2018-05-25 03:37:57','2018-05-25 03:37:57');

/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `created_at`, `updated_at`)
VALUES
	(1,'admin','Admin',NULL,NULL,NULL),
	(2,'manager','Manager',NULL,NULL,NULL);

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table throttle
# ------------------------------------------------------------

DROP TABLE IF EXISTS `throttle`;

CREATE TABLE `throttle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `throttle_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `throttle` WRITE;
/*!40000 ALTER TABLE `throttle` DISABLE KEYS */;

INSERT INTO `throttle` (`id`, `user_id`, `type`, `ip`, `created_at`, `updated_at`)
VALUES
	(1,NULL,'global',NULL,'2018-05-23 03:36:04','2018-05-23 03:36:04'),
	(2,NULL,'ip','127.0.0.1','2018-05-23 03:36:04','2018-05-23 03:36:04'),
	(3,7,'user',NULL,'2018-05-23 03:36:04','2018-05-23 03:36:04'),
	(4,NULL,'global',NULL,'2018-05-23 03:38:27','2018-05-23 03:38:27'),
	(5,NULL,'ip','127.0.0.1','2018-05-23 03:38:27','2018-05-23 03:38:27'),
	(6,7,'user',NULL,'2018-05-23 03:38:27','2018-05-23 03:38:27');

/*!40000 ALTER TABLE `throttle` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `email`, `password`, `permissions`, `last_login`, `first_name`, `last_name`, `location`, `created_at`, `updated_at`)
VALUES
	(1,'davidwong187@yahoo.com','$2y$10$u1.h9WJfjbukts8iOz5cOOxGwsWWvIZqPNVAg/QTvvDSp78JJ19wO',NULL,NULL,'dav','wong','jakarta','2018-05-22 08:50:41','2018-05-22 08:50:41'),
	(2,'davidwong287@yahoo.com','$2y$10$PbcAtuedEXWliuzZUBqPg.CdR8y4fwcWi6zlsCSGrGtWVC/Fuak1e',NULL,NULL,'david','wong','jakarta','2018-05-23 03:05:50','2018-05-23 03:05:50'),
	(4,'davidwong387@yahoo.com','$2y$10$dzFLlqQdq4hNpuAJ5qW.teKY1DBkAYqBw24Y6syNo1BcUOxCVvlWS',NULL,NULL,'david','wong','jakarta','2018-05-23 03:07:55','2018-05-23 03:07:55'),
	(5,'davidwong487@yahoo.com','$2y$10$Rt.vQ9IkAF/f3eKVqw2qeuvRcI6Vuawn8lDQ8.qwjK9Gvtm362EFi',NULL,NULL,'david','womg','jakarta','2018-05-23 03:09:26','2018-05-23 03:09:26'),
	(7,'davidwong87@yahoo.com','$2y$10$Jy7zwvizVCqieI9YIjQX5O2f0N7INfSlrU8bJO5ECseHYT/KzmcR2',NULL,'2018-05-25 04:05:20','david','wong','jakarta','2018-05-23 03:17:45','2018-05-25 04:05:20'),
	(8,'emurazik@example.org','$2y$10$F2laAIp3SMndUkJ9.ZgZAOYPxAX5WMsEboNO7/UDEO0kPKFFygUv6',NULL,NULL,'david','wong','jakarta','2018-05-25 03:37:57','2018-05-25 03:47:45');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
